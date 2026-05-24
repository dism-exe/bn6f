#!/usr/bin/env python3
"""Wrap an ASM function in DECOMP_<sym> trampoline guards.

Usage:
  tools/wrap_decomp.py <SYMBOL> [--pad N] [--c-func NAME]

What it does:
  1. Looks up the function size in bn6f_orig.elf (objdump -t).
  2. Finds `thumb_func_start <SYMBOL>` / `thumb_func_end <SYMBOL>` in
     asm/*.s.
  3. Wraps the block in `.ifndef DECOMP_<SYMBOL>` / `.else` /
     `decomp_trampoline <SYMBOL>_c, <PAD>` / `.endif`.
  4. Appends <SYMBOL> to tools/decomp_manifest.txt.
  5. Audits callers (`bl <SYMBOL>`) for flag-dependent return
     conventions (beq/bne immediately after the call). Warns loudly
     if found — the harness can't catch those.

The C file (src/c/<snake>.c) is the caller's responsibility; this
script only does the asm-side wiring.
"""

import argparse
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OBJDUMP = ROOT / "tools/binutils/bin/arm-none-eabi-objdump"
ASM_DIR = ROOT / "asm"
MANIFEST = ROOT / "tools/decomp_manifest.txt"
ORIG_ELF = ROOT / "bn6f_orig.elf"


def die(msg):
    print(f"wrap_decomp: {msg}", file=sys.stderr)
    sys.exit(1)


_objdump_cache = None

def _objdump_lines():
    """Return cached objdump -t output (as lines). Keyed by elf mtime
    in build/objdump_t.txt so cross-invocation calls don't re-shell out."""
    global _objdump_cache
    if _objdump_cache is not None:
        return _objdump_cache
    import json
    cache = ROOT / "build/objdump_t.txt"
    mtime_cache = ROOT / "build/objdump_t.mtime"
    elf_mtime = ORIG_ELF.stat().st_mtime if ORIG_ELF.exists() else 0
    if cache.exists() and mtime_cache.exists():
        try:
            if float(mtime_cache.read_text()) == elf_mtime:
                _objdump_cache = cache.read_text().splitlines()
                return _objdump_cache
        except ValueError:
            pass
    out = subprocess.check_output([str(OBJDUMP), "-t", str(ORIG_ELF)], text=True)
    cache.parent.mkdir(parents=True, exist_ok=True)
    cache.write_text(out)
    mtime_cache.write_text(str(elf_mtime))
    _objdump_cache = out.splitlines()
    return _objdump_cache


def get_size_and_addr(symbol):
    if not ORIG_ELF.exists():
        die(f"missing {ORIG_ELF.relative_to(ROOT)} — run `make orig` first")
    for line in _objdump_lines():
        # Format: ADDR FLAGS SECTION SIZE NAME
        parts = line.split()
        if len(parts) >= 6 and parts[-1] == symbol and " F .text" in line:
            return int(parts[-2], 16), int(parts[0], 16)
    die(f"symbol `{symbol}` not found in {ORIG_ELF.name} as a .text function")


def trampoline_bytes_for(addr, r3safe=False):
    """Trampoline size in bytes.
    Standard `ldr r3, =X+1; bx r3; .pool`:
      - 4-aligned start: 8 bytes
      - 2-aligned start: 10 bytes (.pool inserts a 2-byte balign pad)
    r3-safe variant `push r0; ldr r0; mov r12, r0; pop r0; bx r12; .pool`:
      - 2-aligned start: 14 bytes
      - 4-aligned start: 16 bytes (10 code bytes leave us 2-aligned,
        so .pool inserts a 2-byte balign pad)
    """
    if r3safe:
        return 16 if (addr & 2) == 0 else 14
    return 10 if (addr & 2) else 8


def find_function_block(symbol, from_label=None):
    """Return (path, lines, start_idx, end_idx) for the function block.
    If from_label is given, start_idx points to that interior label
    rather than the `thumb_func_start` line — used for multi-entry
    functions where only the shared tail should be replaced."""
    start_re = re.compile(rf"^\s*thumb_func_start\s+{re.escape(symbol)}\s*$")
    end_re = re.compile(rf"^\s*thumb_func_end\s+{re.escape(symbol)}\s*$")
    for s_file in sorted(ASM_DIR.glob("*.s")):
        lines = s_file.read_text().splitlines()
        for i, line in enumerate(lines):
            if start_re.match(line):
                for j in range(i + 1, len(lines)):
                    if end_re.match(lines[j]):
                        # Standard case: wrap the whole block.
                        if from_label is None:
                            return s_file, lines, i, j
                        # Multi-entry: search for the label between [i,j].
                        label_re = re.compile(rf"^\s*{re.escape(from_label)}\s*:\s*(//.*)?$")
                        for k in range(i + 1, j):
                            if label_re.match(lines[k]):
                                return s_file, lines, k, j
                        die(f"{s_file.name}: label `{from_label}` not found inside {symbol}")
                die(f"{s_file.name}: `thumb_func_start {symbol}` has no `thumb_func_end`")
    die(f"no `thumb_func_start {symbol}` in asm/*.s (is the symbol public? `thumb_local_start` isn't supported)")


def already_wrapped(lines, start_idx):
    """Look up from start_idx for a `.ifndef DECOMP_*` within ~3 lines."""
    for k in range(start_idx - 1, max(start_idx - 4, -1), -1):
        s = lines[k].strip()
        if s.startswith(".ifndef DECOMP_"):
            return True
        if s and not s.startswith("//") and not s.startswith("/*"):
            return False
    return False


def audit_pool_sharing(path, lines, start_idx, end_idx, symbol):
    """Find labels defined inside the function's body (literal pool
    entries) and report any that are referenced from outside the
    function (either by another asm function or by a C file under
    src/c/). Returns list of (label_name, external_ref_count, line_idx)."""
    label_re = re.compile(r"^([A-Za-z_.][\w.]*):{1,2}\s*(//.*)?$")
    pool_labels = []
    for i in range(start_idx + 1, end_idx):
        m = label_re.match(lines[i])
        if m:
            name = m.group(1)
            if name == symbol:
                continue
            pool_labels.append((name, i))
    if not pool_labels:
        return []
    shared = []
    csrc_dir = ROOT / "src/c"
    csrc_files = sorted(csrc_dir.glob("*.c")) if csrc_dir.exists() else []
    for pname, pline in pool_labels:
        ref_re = re.compile(rf"\b{re.escape(pname)}\b")
        external_refs = 0
        for s_file in sorted(ASM_DIR.glob("*.s")):
            file_lines = s_file.read_text().splitlines()
            for ln_idx, ln in enumerate(file_lines):
                if not ref_re.search(ln):
                    continue
                # Skip the definition itself (`pname:` or `pname::`).
                stripped = ln.strip()
                if stripped.startswith(f"{pname}:") or stripped.startswith(f"{pname}::"):
                    continue
                if s_file == path and start_idx <= ln_idx <= end_idx:
                    continue
                external_refs += 1
        # Also check C files — when a converted function's C version
        # references a label defined inside the function's pool, the
        # .else trampoline branch would elide it.
        for c_file in csrc_files:
            if ref_re.search(c_file.read_text()):
                external_refs += 1
        if external_refs > 0:
            shared.append((pname, external_refs, pline))
    return shared


def find_pool_start(lines, start_idx, end_idx, pool_label_lines):
    """Return the line index where the function's literal pool starts.
    Pool start is the earliest of:
      - the first pool label (e.g. `off_X:`),
      - the `.balign` directive immediately preceding it.
    """
    if not pool_label_lines:
        return None
    first_label_line = min(pool_label_lines)
    # Walk back to absorb any preceding .balign / .align directives
    k = first_label_line - 1
    while k > start_idx:
        s = lines[k].strip()
        if s.startswith(".balign") or s.startswith(".align"):
            first_label_line = k
            k -= 1
            continue
        if not s or s.startswith("//") or s.startswith("/*"):
            k -= 1
            continue
        break
    return first_label_line


def lookup_symbol_addr(name):
    """Look up any symbol's address (global or local) in the .text section."""
    for line in _objdump_lines():
        parts = line.split()
        if len(parts) >= 2 and parts[-1] == name and ".text" in line:
            return int(parts[0], 16)
    return None


def pool_offset_from_function_start(symbol, pool_label):
    """Look up the pool label's address in bn6f_orig.elf and return the
    offset from the function's address. Matches local symbols too."""
    fn_addr = None
    pool_addr = None
    for line in _objdump_lines():
        parts = line.split()
        if len(parts) < 2:
            continue
        # Last token is the symbol name; first is the address.
        name = parts[-1]
        if name == symbol and ".text" in line:
            fn_addr = int(parts[0], 16)
        elif name == pool_label and ".text" in line:
            pool_addr = int(parts[0], 16)
        if fn_addr is not None and pool_addr is not None:
            break
    if fn_addr is None or pool_addr is None:
        die(f"could not resolve {symbol} or {pool_label} in {ORIG_ELF.name} (fn={fn_addr}, pool={pool_addr})")
    return pool_addr - fn_addr


def audit_callers(symbol):
    """Grep all `bl <SYMBOL>` sites; report any where the immediately
    next non-empty line is `beq/bne/bcs/bcc/bmi/bpl/bhi/bls`. Those
    callers depend on flags-on-return, which the harness can't verify."""
    flag_branches = re.compile(r"^\s*b(eq|ne|cs|cc|mi|pl|hi|ls|vs|vc)\b")
    hits = []
    pattern = re.compile(rf"^\s*bl\s+{re.escape(symbol)}\b")
    for s_file in sorted(ASM_DIR.glob("*.s")):
        lines = s_file.read_text().splitlines()
        for i, line in enumerate(lines):
            if pattern.match(line):
                # Find next non-empty, non-comment line
                for j in range(i + 1, min(i + 5, len(lines))):
                    nxt = lines[j].strip()
                    if not nxt or nxt.startswith("//") or nxt.startswith("/*"):
                        continue
                    if flag_branches.match(lines[j]):
                        hits.append((s_file.name, i + 1, lines[j].strip()))
                    break
    return hits


def append_manifest(symbol):
    entries = []
    if MANIFEST.exists():
        entries = [
            l.strip()
            for l in MANIFEST.read_text().splitlines()
            if l.strip() and not l.lstrip().startswith("#")
        ]
    if symbol in entries:
        return False
    with MANIFEST.open("a") as f:
        f.write(symbol + "\n")
    return True


def wrap(symbol, pad_override=None, c_func=None, from_label=None, r3safe=False):
    size, addr = get_size_and_addr(symbol)

    # When wrapping from an interior label (multi-entry prelude case),
    # adjust the "effective function" to start at the label.
    if from_label is not None:
        label_addr = lookup_symbol_addr(from_label)
        if label_addr is None:
            die(f"{from_label}: address not found in {ORIG_ELF.name}")
        effective_size = (addr + size) - label_addr
        effective_addr = label_addr
        addr = effective_addr
        size = effective_size

    tramp = trampoline_bytes_for(addr, r3safe=r3safe)
    pad = pad_override if pad_override is not None else size - tramp
    if pad < 0:
        die(f"{symbol}: size {size:#x} < {tramp} bytes — too small for an {tramp}-byte trampoline (addr {addr:#010x})")

    target = c_func if c_func else f"{symbol}_c"
    macro_name = "decomp_trampoline_r3safe" if r3safe else "decomp_trampoline"

    path, lines, start, end = find_function_block(symbol, from_label=from_label)
    if already_wrapped(lines, start):
        die(f"{symbol}: appears already wrapped (.ifndef on a preceding line)")

    # Audit literal pool sharing — if shared, emit a "keep the pool in
    # both branches" rewrite so the pool stays addressable from the
    # functions that depend on it.
    shared_pool = audit_pool_sharing(path, lines, start, end, symbol)
    pool_lines = None
    pool_offset = 0
    if shared_pool:
        first_pool_label = min(shared_pool, key=lambda t: t[2])[0]
        first_pool_addr = lookup_symbol_addr(first_pool_label)
        if first_pool_addr is None:
            die(f"could not resolve pool label {first_pool_label}")
        # Compute pool offset relative to the *wrap start* (which is
        # `addr`, already reassigned to from_label's address when
        # --from-label was used).
        pool_offset = first_pool_addr - addr
        pool_start_line = find_pool_start(lines, start, end, [pl[2] for pl in shared_pool])
        # Capture pool content: from pool_start_line up to (but not
        # including) the `thumb_func_end` line.
        pool_lines = lines[pool_start_line:end]
        # Recompute pad: from trampoline-end to pool-start should match
        # the original offset of the pool.
        pad = pool_offset - tramp
        if pad < 0:
            die(f"{symbol}: pool starts at offset {pool_offset} but trampoline is {tramp} bytes")

    # Audit callers for flag-dependence
    flag_callers = audit_callers(symbol)
    if flag_callers:
        print(f"WARNING: {symbol} has flag-dependent callers (the harness can't verify these):", file=sys.stderr)
        for fname, lineno, branch in flag_callers[:5]:
            print(f"  {fname}:{lineno}  next: {branch}", file=sys.stderr)
        if len(flag_callers) > 5:
            print(f"  ... and {len(flag_callers) - 5} more", file=sys.stderr)
        print(f"  -> rerun with --force-flagdep if you've verified the C version preserves the flag.", file=sys.stderr)
        if "--force-flagdep" not in sys.argv:
            sys.exit(2)

    indent = "\t"
    if from_label is not None:
        # Multi-entry: only the shared tail is wrapped. The
        # thumb_func_start, preludes, and thumb_func_end stay outside
        # the .ifndef. The .else branch emits just the trampoline (and
        # optionally the pool), no thumb_func_start/end.
        before = [f"{indent}.ifndef DECOMP_{symbol}"]
        if pool_lines is not None:
            after = [
                f"{indent}.else",
                f"{indent}// Literal pool kept in both branches (shared with other fns).",
                f"{from_label}:",
                f"{indent}{macro_name} {target}, {pad}",
            ]
            after.extend(pool_lines)
            after.append(f"{indent}.endif")
        else:
            after = [
                f"{indent}.else",
                f"{from_label}:",
                f"{indent}{macro_name} {target}, {pad}",
                f"{indent}.endif",
            ]
        new_lines = lines[:start] + before + lines[start:end] + after + lines[end:]
    elif pool_lines is not None:
        before = [f"{indent}.ifndef DECOMP_{symbol}"]
        after = [
            f"{indent}.else",
            f"{indent}// Literal pool is shared with other functions — keep it",
            f"{indent}// in both branches so its labels stay at the same address.",
            f"{indent}thumb_func_start {symbol}",
            f"{symbol}:",
            f"{indent}{macro_name} {target}, {pad}",
        ]
        after.extend(pool_lines)
        after.extend([
            f"{indent}thumb_func_end {symbol}",
            f"{indent}.endif",
        ])
        new_lines = lines[:start] + before + lines[start:end + 1] + after + lines[end + 1:]
    else:
        before = [f"{indent}.ifndef DECOMP_{symbol}"]
        after = [
            f"{indent}.else",
            f"{indent}thumb_func_start {symbol}",
            f"{symbol}:",
            f"{indent}{macro_name} {target}, {pad}",
            f"{indent}thumb_func_end {symbol}",
            f"{indent}.endif",
        ]
        new_lines = lines[:start] + before + lines[start:end + 1] + after + lines[end + 1:]
    path.write_text("\n".join(new_lines) + "\n")

    added = append_manifest(symbol)
    suffix = " (added to manifest)" if added else " (already in manifest)"
    pool_note = f" pool-shared (kept in both branches)" if pool_lines is not None else ""
    print(f"wrapped {symbol} in {path.name}: addr={addr:#010x} size={size:#x} tramp={tramp} pad={pad} -> {target}{suffix}{pool_note}")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("symbol", help="ASM symbol name (e.g. ByteFill)")
    ap.add_argument("--pad", type=int, default=None,
                    help="override computed pad (default: size - 8)")
    ap.add_argument("--c-func", default=None,
                    help="C trampoline target (default: <symbol>_c)")
    ap.add_argument("--force-flagdep", action="store_true",
                    help="proceed despite flag-dependent callers")
    ap.add_argument("--from-label", default=None,
                    help="for multi-entry functions: wrap from this interior "
                         "label instead of from thumb_func_start (the prelude "
                         "before the label stays unchanged)")
    ap.add_argument("--r3safe", action="store_true",
                    help="use the r3-preserving trampoline (14-16 bytes vs 8-10) "
                         "for functions that take 4 args (r0..r3 all in use)")
    args = ap.parse_args()
    wrap(args.symbol, args.pad, args.c_func, from_label=args.from_label, r3safe=args.r3safe)


if __name__ == "__main__":
    main()
