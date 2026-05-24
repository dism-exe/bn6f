#!/usr/bin/env python3
"""Fixed-format one-screen summary of a function — the info you'd
otherwise gather via 5 separate greps + .inc reads.

  ./tools/function_card.py <SYMBOL>

Emits in <100 tokens what the AI was burning ~50 lines per query
finding out: address, size, alignment, calls/exits, call graph
(converted vs not), r10/r5 usage hints, flag-dep caller count,
literal pool labels.
"""

import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OBJDUMP = ROOT / "tools/binutils/bin/arm-none-eabi-objdump"
ORIG_ELF = ROOT / "bn6f_orig.elf"
ASM_DIR = ROOT / "asm"
MANIFEST = ROOT / "tools/decomp_manifest.txt"
DEFAULT_BASELINE = ROOT / "tests/fixtures/baseline_spam.txt"


def _objdump_lines():
    """Cached objdump -t output."""
    cache = ROOT / "build/objdump_t.txt"
    mtime_cache = ROOT / "build/objdump_t.mtime"
    elf_mtime = ORIG_ELF.stat().st_mtime if ORIG_ELF.exists() else 0
    if cache.exists() and mtime_cache.exists():
        try:
            if float(mtime_cache.read_text()) == elf_mtime:
                return cache.read_text().splitlines()
        except ValueError:
            pass
    out = subprocess.check_output([str(OBJDUMP), "-t", str(ORIG_ELF)], text=True)
    cache.parent.mkdir(parents=True, exist_ok=True)
    cache.write_text(out)
    mtime_cache.write_text(str(elf_mtime))
    return out.splitlines()


def load_manifest():
    if not MANIFEST.exists():
        return set()
    return {l.strip() for l in MANIFEST.read_text().splitlines()
            if l.strip() and not l.lstrip().startswith("#")}


def find_body(symbol):
    """Return (file, start_idx, end_idx, lines) for the function."""
    start_re = re.compile(rf"^\s*thumb_func_start\s+{re.escape(symbol)}\s*$")
    end_re = re.compile(rf"^\s*thumb_func_end\s+{re.escape(symbol)}\s*$")
    for s_file in sorted(ASM_DIR.glob("*.s")):
        lines = s_file.read_text().splitlines()
        for i, line in enumerate(lines):
            if start_re.match(line):
                for j in range(i + 1, len(lines)):
                    if end_re.match(lines[j]):
                        return s_file, i, j, lines
    return None, None, None, None


def find_callers(symbol):
    """Return [(file, line_no, next_non_blank)] for every `bl symbol`."""
    bl_re = re.compile(rf"^\s*bl\s+{re.escape(symbol)}\b")
    callers = []
    for s_file in sorted(ASM_DIR.glob("*.s")):
        lines = s_file.read_text().splitlines()
        for i, line in enumerate(lines):
            if bl_re.match(line):
                nxt = ""
                for j in range(i + 1, min(i + 6, len(lines))):
                    s = lines[j].strip()
                    if s and not s.startswith("//") and not s.startswith("/*"):
                        nxt = s
                        break
                callers.append((s_file.name, i + 1, nxt))
    return callers


def parse_addr_size(symbol):
    for line in _objdump_lines():
        parts = line.split()
        if len(parts) >= 6 and parts[-1] == symbol and " F .text" in line:
            return int(parts[0], 16), int(parts[-2], 16)
    return None, None


def baseline_counts(symbol, baseline_path):
    if not baseline_path.exists():
        return None, None
    for line in baseline_path.read_text().splitlines():
        if line.startswith("#") or not line.strip():
            continue
        parts = line.split()
        if len(parts) >= 5 and parts[4] == symbol:
            try:
                return int(parts[2]), int(parts[3])
            except ValueError:
                return None, None
    return None, None


FLAG_BRANCH = re.compile(r"^\s*b(eq|ne|cs|cc|mi|pl|hi|ls|vs|vc)\b")
BL_TARGET = re.compile(r"^\s*bl\s+(\S+)")
BX_REG = re.compile(r"^\s*bx\s+r\d")
R10_RE = re.compile(r"\br10\b|\bsl\b")
R5_RE = re.compile(r"\br5\b")
LABEL_RE = re.compile(r"^([A-Za-z_.][\w.]*):{1,2}\s*(//.*)?$")


def main():
    if len(sys.argv) < 2:
        print(f"usage: {sys.argv[0]} <SYMBOL> [baseline]", file=sys.stderr)
        sys.exit(1)
    sym = sys.argv[1]
    baseline = Path(sys.argv[2]) if len(sys.argv) > 2 else DEFAULT_BASELINE

    addr, size = parse_addr_size(sym)
    if addr is None:
        print(f"{sym}: not found in bn6f_orig.elf as a .text function "
              "(rebuild orig?)", file=sys.stderr)
        sys.exit(1)
    align = "4-aligned" if (addr % 4) == 0 else "2-aligned"

    converted = load_manifest()
    in_manifest = sym in converted

    s_file, start, end, lines = find_body(sym)
    if s_file is None:
        print(f"{sym}: no thumb_func_start in asm/*.s (local?)", file=sys.stderr)
        sys.exit(1)

    body = lines[start + 1:end]

    bl_targets = []
    for line in body:
        m = BL_TARGET.match(line)
        if m:
            t = m.group(1).split("//")[0].strip()
            bl_targets.append(t)
    has_bx = any(BX_REG.match(l) for l in body)
    uses_r10 = any(R10_RE.search(l) for l in body)
    uses_r5 = any(R5_RE.search(l) for l in body)

    pool_labels = []
    for line in body:
        m = LABEL_RE.match(line)
        if m:
            pool_labels.append(m.group(1))

    callers = find_callers(sym)
    flag_dep = sum(1 for _, _, nxt in callers if FLAG_BRANCH.match(nxt))
    calls, exits = baseline_counts(sym, baseline)

    print(f"{sym} @ 0x{addr:08X}, {size} bytes, {align}"
          + (f" — IN MANIFEST" if in_manifest else ""))
    if calls is not None:
        paired = "paired" if calls == exits else f"UNPAIRED (exits={exits})"
        print(f"  baseline ({baseline.name}): calls={calls} ({paired})")
    else:
        print(f"  baseline ({baseline.name}): no entry")
    print(f"  source: {s_file.name}:{start + 1}-{end + 1}")
    if uses_r10 or uses_r5:
        hints = []
        if uses_r10:
            hints.append("r10 (ambient Toolkit*)")
        if uses_r5:
            hints.append("r5 (ambient sprite/chatbox*)")
        print(f"  ambient regs: {', '.join(hints)}")
    if has_bx:
        print(f"  ⚠ uses `bx rN` (computed branch — not a candidate)")
    if bl_targets:
        conv = [t for t in bl_targets if t in converted]
        unconv = [t for t in bl_targets if t not in converted and not t.startswith("SWI_")]
        bios = [t for t in bl_targets if t.startswith("SWI_")]
        if conv:
            print(f"  bl converted ({len(conv)}): {', '.join(sorted(set(conv)))}")
        if bios:
            print(f"  bl BIOS ({len(bios)}): {', '.join(sorted(set(bios)))}")
        if unconv:
            print(f"  ⚠ bl UNCONVERTED ({len(unconv)}): "
                  f"{', '.join(sorted(set(unconv)))}")
    print(f"  callsites: {len(callers)} (flag-dep: {flag_dep})")
    if pool_labels:
        print(f"  inline labels: {', '.join(pool_labels)}")

    # Optional inline Ghidra decomp (if cache is populated).
    ghidra_cache = ROOT / "build/ghidra-decomp" / (sym + ".c")
    if ghidra_cache.exists():
        print("\n--- ghidra (first-pass aid; always cross-check ASM) ---")
        print(ghidra_cache.read_text().rstrip())


if __name__ == "__main__":
    main()
