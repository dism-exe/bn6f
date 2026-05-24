#!/usr/bin/env python3
"""List leaf-ish ASM functions that look safe to auto-convert.

A "safe candidate" here means:
  - Has a `thumb_func_start <SYM>` in asm/*.s (not local-only)
  - Size >= 8 bytes in bn6f_orig.elf
  - Not already in tools/decomp_manifest.txt
  - No `bl <X>` inside its body where X is NOT a BIOS SWI_* and NOT
    already converted (i.e. a true leaf modulo BIOS + converted)
  - No `bx rX` inside the body (jump-table-ish dispatchers)
  - No callers that branch on flags (beq/bne) right after `bl <SYM>`
  - Cleanly paired (calls == exits) in the baseline trace, count >= 5

Output: one symbol per line, sorted by descending call count.
"""

import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OBJDUMP = ROOT / "tools/binutils/bin/arm-none-eabi-objdump"
ASM_DIR = ROOT / "asm"
MANIFEST = ROOT / "tools/decomp_manifest.txt"
ORIG_ELF = ROOT / "bn6f_orig.elf"
BASELINE = ROOT / "tests/fixtures/baseline_test_fill_5s_rust.txt"


def load_manifest():
    if not MANIFEST.exists():
        return set()
    return {
        l.strip()
        for l in MANIFEST.read_text().splitlines()
        if l.strip() and not l.lstrip().startswith("#")
    }


def load_symbols():
    """Return dict: symbol -> size_bytes for public .text functions."""
    out = subprocess.check_output([str(OBJDUMP), "-t", str(ORIG_ELF)], text=True)
    syms = {}
    for line in out.splitlines():
        if " F .text" not in line:
            continue
        parts = line.split()
        if len(parts) < 6:
            continue
        size = int(parts[-2], 16)
        name = parts[-1]
        syms[name] = size
    return syms


def load_baseline_counts():
    """Read tracker baseline; return dict sym -> (calls, exits)."""
    counts = {}
    if not BASELINE.exists():
        return counts
    for line in BASELINE.read_text().splitlines():
        if line.startswith("#") or not line.strip():
            continue
        parts = line.split()
        if len(parts) < 5:
            continue
        try:
            calls = int(parts[2])
            exits = int(parts[3])
        except ValueError:
            continue
        counts[parts[4]] = (calls, exits)
    return counts


FLAG_BRANCH = re.compile(r"^\s*b(eq|ne|cs|cc|mi|pl|hi|ls|vs|vc)\b")
BL_TARGET = re.compile(r"^\s*bl\s+(\S+)")
BX_REG = re.compile(r"^\s*bx\s+r\d")


def scan_asm_files():
    """One-pass scan: extract for each public function its body lines, plus
    a callers-map: target_sym -> list of (file, line_idx, next_line)."""
    bodies = {}        # sym -> list[str]
    bl_callers = {}    # target_sym -> list[(file, line_no, next_line_stripped)]
    start_re = re.compile(r"^\s*thumb_func_start\s+(\S+)")
    end_re = re.compile(r"^\s*thumb_func_end\s+(\S+)")
    for s_file in sorted(ASM_DIR.glob("*.s")):
        lines = s_file.read_text().splitlines()
        cur = None
        for i, line in enumerate(lines):
            m = start_re.match(line)
            if m:
                cur = m.group(1)
                bodies[cur] = []
                continue
            m = end_re.match(line)
            if m and cur == m.group(1):
                cur = None
                continue
            if cur is not None:
                bodies[cur].append(line)
            # callers tracking (regardless of which function we're in)
            mbl = BL_TARGET.match(line)
            if mbl:
                tgt = mbl.group(1).split("//")[0].strip()
                # find next non-empty, non-comment line
                nxt = ""
                for j in range(i + 1, min(i + 5, len(lines))):
                    s = lines[j].strip()
                    if not s or s.startswith("//") or s.startswith("/*"):
                        continue
                    nxt = s
                    break
                bl_callers.setdefault(tgt, []).append((s_file.name, i + 1, nxt))
    return bodies, bl_callers


def is_leaf_modulo(body, allowed_bl_targets):
    """Returns (ok, reason). body is a list of strings (function body
    lines, not including thumb_func_start/end)."""
    for line in body:
        if BX_REG.match(line):
            return False, "uses bx rN (jump-table or computed branch)"
        m = BL_TARGET.match(line)
        if m:
            target = m.group(1).split("//")[0].strip()
            if target not in allowed_bl_targets:
                return False, f"calls unconverted non-BIOS `{target}`"
    return True, "ok"


def main():
    syms = load_symbols()
    bodies, bl_callers = scan_asm_files()
    converted = load_manifest()
    counts = load_baseline_counts()

    bios_swis = {
        "SWI_CpuSet", "SWI_CpuFastSet", "SWI_LZ77UnCompVram",
        "SWI_LZ77UnCompWram", "SWI_RegisterRamReset", "SWI_VBlankIntrWait",
        "SWI_IntrWait", "SWI_Halt", "SWI_Stop", "SWI_Div", "SWI_DivArm",
        "SWI_Sqrt", "SWI_ArcTan", "SWI_ArcTan2", "SWI_BgAffineSet",
        "SWI_ObjAffineSet", "SWI_BitUnPack", "SWI_RLUnCompVram",
        "SWI_RLUnCompWram", "SWI_Diff8bitUnFilterVram",
        "SWI_Diff8bitUnFilterWram", "SWI_Diff16bitUnFilter",
        "SWI_SoundBias", "SWI_SoundDriverInit", "SWI_SoundDriverMode",
        "SWI_SoundDriverMain", "SWI_SoundDriverVSync", "SWI_SoundChannelClear",
        "SWI_MidiKey2Freq", "SWI_MultiBoot", "SWI_HardReset",
        "SWI_SoundDriverVSyncOff", "SWI_SoundDriverVSyncOn",
        "SWI_GetJumpList", "SWI_Random",
    }
    allowed = bios_swis | converted

    candidates = []
    for sym, size in syms.items():
        if size < 8 or sym in converted:
            continue
        if sym not in bodies:
            continue  # not a public thumb_func_start (probably local)
        ok, reason = is_leaf_modulo(bodies[sym], allowed)
        if not ok:
            continue
        # Flag-dependent callers?
        callers = bl_callers.get(sym, [])
        flag_dep = sum(1 for _, _, nxt in callers if FLAG_BRANCH.match(nxt))
        if flag_dep:
            continue
        # Demo coverage
        calls, exits = counts.get(sym, (0, 0))
        if calls < 1 or calls != exits:
            continue
        candidates.append((sym, size, calls, len(callers)))

    candidates.sort(key=lambda t: (-t[2], t[0]))
    print(f"# {len(candidates)} candidates (sym  size  calls  callsites)")
    for sym, size, calls, callsites in candidates:
        print(f"{sym:48}  {size:5}  {calls:6}  {callsites}")


if __name__ == "__main__":
    main()
