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


def get_size_and_addr(symbol):
    if not ORIG_ELF.exists():
        die(f"missing {ORIG_ELF.relative_to(ROOT)} — run `make orig` first")
    out = subprocess.check_output([str(OBJDUMP), "-t", str(ORIG_ELF)], text=True)
    for line in out.splitlines():
        # Format: ADDR FLAGS SECTION SIZE NAME
        parts = line.split()
        if len(parts) >= 6 and parts[-1] == symbol and " F .text" in line:
            return int(parts[-2], 16), int(parts[0], 16)
    die(f"symbol `{symbol}` not found in {ORIG_ELF.name} as a .text function")


def trampoline_bytes_for(addr):
    """The trampoline expands to `ldr r3, =X+1; bx r3; .pool`. The .pool
    directive enforces 4-byte alignment before emitting the literal —
    for a 2-aligned (not 4-aligned) function start, that means 2 extra
    bytes of pad before the literal, so the trampoline is 10 bytes
    rather than 8."""
    return 10 if (addr & 2) else 8


def find_function_block(symbol):
    """Return (path, start_idx, end_idx) for the `thumb_func_start <sym>`
    .. `thumb_func_end <sym>` block. Indices are 0-based line numbers."""
    start_re = re.compile(rf"^\s*thumb_func_start\s+{re.escape(symbol)}\s*$")
    end_re = re.compile(rf"^\s*thumb_func_end\s+{re.escape(symbol)}\s*$")
    for s_file in sorted(ASM_DIR.glob("*.s")):
        lines = s_file.read_text().splitlines()
        for i, line in enumerate(lines):
            if start_re.match(line):
                for j in range(i + 1, len(lines)):
                    if end_re.match(lines[j]):
                        return s_file, lines, i, j
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
    function — those would become dangling when the function body is
    replaced with a trampoline."""
    label_re = re.compile(r"^([A-Za-z_.][\w.]*):\s*(//.*)?$")
    pool_labels = []
    for i in range(start_idx + 1, end_idx):
        m = label_re.match(lines[i])
        if m:
            name = m.group(1)
            # Skip the function's own label and any local code-flow labels
            if name == symbol:
                continue
            pool_labels.append(name)
    if not pool_labels:
        return []
    # For each pool label, count refs outside this function's body
    shared = []
    for pname in pool_labels:
        ref_re = re.compile(rf"\b{re.escape(pname)}\b")
        external_refs = 0
        for s_file in sorted(ASM_DIR.glob("*.s")):
            file_lines = s_file.read_text().splitlines()
            for ln_idx, ln in enumerate(file_lines):
                if not ref_re.search(ln):
                    continue
                # Skip the definition itself
                if ln.strip().startswith(f"{pname}:"):
                    continue
                # Skip references inside the same function
                if s_file == path and start_idx <= ln_idx <= end_idx:
                    continue
                external_refs += 1
        if external_refs > 0:
            shared.append((pname, external_refs))
    return shared


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


def wrap(symbol, pad_override=None, c_func=None):
    size, addr = get_size_and_addr(symbol)
    tramp = trampoline_bytes_for(addr)
    pad = pad_override if pad_override is not None else size - tramp
    if pad < 0:
        die(f"{symbol}: size {size:#x} < {tramp} bytes — too small for an {tramp}-byte trampoline (addr {addr:#010x})")

    target = c_func if c_func else f"{symbol}_c"

    path, lines, start, end = find_function_block(symbol)
    if already_wrapped(lines, start):
        die(f"{symbol}: appears already wrapped (.ifndef on a preceding line)")

    # Audit literal pool sharing
    shared_pool = audit_pool_sharing(path, lines, start, end, symbol)
    if shared_pool:
        print(f"ERROR: {symbol}'s literal pool is shared with other functions:", file=sys.stderr)
        for pname, refs in shared_pool[:5]:
            print(f"  {pname} (used in {refs} place(s) outside this function)", file=sys.stderr)
        print(f"  Trampolining would remove the pool and break those callers.", file=sys.stderr)
        print(f"  Manually move the pool out of the .ifndef block, or skip this function.", file=sys.stderr)
        sys.exit(3)

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
    before = [f"{indent}.ifndef DECOMP_{symbol}"]
    after = [
        f"{indent}.else",
        f"{indent}thumb_func_start {symbol}",
        f"{symbol}:",
        f"{indent}decomp_trampoline {target}, {pad}",
        f"{indent}thumb_func_end {symbol}",
        f"{indent}.endif",
    ]

    new_lines = lines[:start] + before + lines[start:end + 1] + after + lines[end + 1:]
    path.write_text("\n".join(new_lines) + "\n")

    added = append_manifest(symbol)
    suffix = " (added to manifest)" if added else " (already in manifest)"
    print(f"wrapped {symbol} in {path.name}: addr={addr:#010x} size={size:#x} tramp={tramp} pad={pad} -> {target}{suffix}")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("symbol", help="ASM symbol name (e.g. ByteFill)")
    ap.add_argument("--pad", type=int, default=None,
                    help="override computed pad (default: size - 8)")
    ap.add_argument("--c-func", default=None,
                    help="C trampoline target (default: <symbol>_c)")
    ap.add_argument("--force-flagdep", action="store_true",
                    help="proceed despite flag-dependent callers")
    args = ap.parse_args()
    wrap(args.symbol, args.pad, args.c_func)


if __name__ == "__main__":
    main()
