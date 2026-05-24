#!/usr/bin/env python3
"""Promote local asm symbols to global (single colon -> double colon).

Usage:
  tools/promote_local.py <SYMBOL> [<SYMBOL> ...]

Each symbol defined as `<name>:` (file-local, agbasm convention) is
rewritten to `<name>::` (globally visible). Needed when a C file
under src/c/ references the symbol — local symbols don't reach the
linker's external symbol table.

The script only modifies *definition* sites (where the symbol appears
followed by `:` at column 0 or after whitespace). It doesn't touch
references.
"""

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ASM_DIR = ROOT / "asm"


def promote(symbol):
    """Find the definition line and change `:` to `::`. Returns True
    if a definition was found and rewritten."""
    # Definition line: `<name>:` possibly preceded by whitespace, with
    # optional inline comment. Reject `::` (already promoted) and lines
    # where `<name>` appears as just a reference (e.g. `ldr r0, sym`).
    def_re = re.compile(rf"^(\s*){re.escape(symbol)}:\s*(?://.*)?$")
    promoted_re = re.compile(rf"^\s*{re.escape(symbol)}::\s*(?://.*)?$")

    for s_file in sorted(ASM_DIR.glob("*.s")):
        lines = s_file.read_text().splitlines()
        changed = False
        for i, line in enumerate(lines):
            if promoted_re.match(line):
                print(f"  {s_file.name}:{i+1} already global ({symbol}::)")
                return True
            m = def_re.match(line)
            if m:
                lines[i] = f"{m.group(1)}{symbol}::"
                changed = True
                print(f"  {s_file.name}:{i+1} promoted {symbol}: -> {symbol}::")
                break
        if changed:
            s_file.write_text("\n".join(lines) + "\n")
            return True
    print(f"  {symbol}: definition not found in asm/*.s", file=sys.stderr)
    return False


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)
    ok = True
    for symbol in sys.argv[1:]:
        print(f"=== {symbol} ===")
        if not promote(symbol):
            ok = False
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
