#!/usr/bin/env python3
"""Print Ghidra's decompiled C for a function (cached on disk).

Usage:
  tools/ghidra_decomp.py <SYMBOL> [<SYMBOL> ...]

The cache is populated once by running:
  ~/tools/ghidra/support/analyzeHeadless build/ghidra-proj bn6f \\
      -import bn6f_orig.elf -overwrite \\
      -processor ARM:LE:32:v4t \\
      -scriptPath tools/ghidra_scripts \\
      -postScript DecompAllToFiles.java build/ghidra-decomp

This wrapper just cat's the per-symbol file. Use it instead of reading
the raw ASM block — but ALWAYS cross-check against the original ASM for
the categories Ghidra obscures (flag-dep epilogue, r4 leak, multi-return,
r10/r5 ambient, SVC). See memory: decomp-ghidra-workflow.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CACHE = ROOT / "build/ghidra-decomp"


def main():
    if len(sys.argv) < 2:
        print(f"usage: {sys.argv[0]} <SYMBOL> [<SYMBOL> ...]", file=sys.stderr)
        sys.exit(1)

    if not CACHE.exists():
        print(f"cache missing: {CACHE}", file=sys.stderr)
        print("  populate with: see header of tools/ghidra_decomp.py",
              file=sys.stderr)
        sys.exit(1)

    rc = 0
    for sym in sys.argv[1:]:
        f = CACHE / (sym + ".c")
        if not f.exists():
            print(f"=== {sym} === (no cached decompilation)", file=sys.stderr)
            rc = 1
            continue
        if len(sys.argv) > 2:
            print(f"=== {sym} ===")
        sys.stdout.write(f.read_text())
        sys.stdout.write("\n")
    sys.exit(rc)


if __name__ == "__main__":
    main()
