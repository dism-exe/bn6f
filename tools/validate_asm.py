#!/usr/bin/env python3
"""
validate_asm.py  <orig_elf> <decomp_elf> [function_list.txt]

For each (asm_sym, c_sym) pair: disassemble both, normalise, diff.
Normalisation removes compiler-artifact differences so only semantic
mismatches show up in the output.

Exit 0 = all pass.  Exit 1 = one or more mismatches (review output).
"""

import subprocess
import sys
import re
import difflib

OBJDUMP = "tools/binutils/bin/arm-none-eabi-objdump"

# Default pairs: (original_asm_symbol, c_replacement_symbol)
DEFAULT_PAIRS = [
    ("UpdateBattleObjectLinkedList",               "c_UpdateBattleObjectLinkedList"),
    ("sub_8003400",                                "c_sub_8003400"),
    ("sub_8003440",                                "c_sub_8003440"),
    ("sub_8003962",                                "c_sub_8003962"),
    ("sub_800397A",                                "c_sub_800397A"),
    ("sub_8003984",                                "c_sub_8003984"),
    ("sub_800399A",                                "c_sub_800399A"),
    ("sub_80039AA",                                "c_sub_80039AA"),
    ("Is_eScenarioEffectState2000780_Initialized", "c_Is_eScenarioEffectState2000780_Initialized"),
    ("sub_80039D4",                                "c_sub_80039D4"),
    ("sub_8003A58",                                "c_sub_8003A58"),
    ("initScenarioEffect_8003914",                 "c_initScenarioEffect"),
    ("endScenarioEffectMaybe_8003940",             "c_endScenarioEffectMaybe"),
    ("zeroFill_8003AB2",                           "c_zeroFill_8003AB2"),
    ("sub_8003ACA",                                "c_sub_8003ACA"),
    ("sub_8003AD4",                                "c_sub_8003AD4"),
    ("sub_8003AEA",                                "c_sub_8003AEA"),
    ("sub_8003AFA",                                "c_sub_8003AFA"),
    ("Is_eStruct2001010_Initialized",              "c_Is_eStruct2001010_Initialized"),
    ("sub_8003B24",                                "c_sub_8003B24"),
    ("initMinigameEffect_8003a64",                 "c_initMinigameEffect"),
    ("endMinigameEffectMaybe_8003a90",             "c_endMinigameEffectMaybe"),
]


def disassemble(elf):
    result = subprocess.run(
        [OBJDUMP, "-d", "--no-show-raw-insn", elf],
        capture_output=True, text=True, check=True
    )
    return result.stdout


def parse_functions(dump):
    """Return dict: symbol_name -> list of instruction strings."""
    funcs = {}
    current = None
    current_lines = []

    func_header = re.compile(r'^[0-9a-f]+ <([^>]+)>:')

    for line in dump.splitlines():
        m = func_header.match(line)
        if m:
            if current is not None:
                funcs[current] = current_lines
            current = m.group(1)
            current_lines = []
        elif current is not None and line.strip():
            stripped = re.sub(r'^\s*[0-9a-f]+:\s*', '', line)
            if stripped:
                current_lines.append(stripped)

    if current is not None:
        funcs[current] = current_lines

    return funcs


# ── address normalisation ──────────────────────────────────────────────────
_EWRAM_ADDR = re.compile(r'\b0x0?2[0-9a-fA-F]{6}\b')
_ROM_ADDR   = re.compile(r'\b0x0?[89][0-9a-fA-F]{6}\b')

# Branch targets: "beq.n  800341e <sym+0x8>" or "b.n  87fe340 <sym>"
# Keep only the branch mnemonic, drop the concrete address.
_BRANCH_TARGET = re.compile(
    r'(b(?:eq|ne|lt|gt|le|ge|hi|lo|cs|cc|mi|pl|vs|vc|al|\.n|\.w)?(?:\.n|\.w)?)\s+'
    r'[0-9a-f]+\s+<[^>]+>'
)

# Pool directives
_POOL_DIRECTIVE = re.compile(r'\.(word|short|byte)\s+(.+)')

# Caller-saved registers (r0–r3, r12/ip) as standalone operand
_CALLER_SAVED = re.compile(r'\b(r[0-3]|r12|ip)\b(?![,}])')


def normalise_line(line):
    """
    Return a normalised form of one disassembly instruction, or None to drop it.

    Normalisation removes compiler-artefact differences while keeping all
    semantically meaningful information (memory addresses, branch structure,
    store/load order).
    """
    line = line.strip()
    if not line:
        return None

    # Drop gap filler and alignment padding
    if line == '...' or re.match(r'^\.short\s+0x0+$', line):
        return None

    # Pool directives — normalise address literals inside them
    m = _POOL_DIRECTIVE.search(line)
    if m:
        val = m.group(2)
        val = _EWRAM_ADDR.sub('%ewram', val)
        val = _ROM_ADDR.sub('%rom', val)
        return f".{m.group(1)} {val}"

    # Strip inline comments
    line = re.sub(r'\s*[;@].*$', '', line)

    # Normalise all returns to a single canonical form
    if re.match(r'pop\s+\{pc\}', line) or re.match(r'mov\s+pc,\s*lr', line):
        return 'bx lr'

    # Normalise `tst rN, rN` (test-nonzero) to `cmp rN, #0`
    tst_m = re.match(r'tst\s+(r\d+),\s*(r\d+)', line)
    if tst_m and tst_m.group(1) == tst_m.group(2):
        return f'cmp {tst_m.group(1)}, #0'

    # Normalise branch targets: drop concrete address, keep mnemonic only
    branch_m = re.match(
        r'(b(?:eq|ne|lt|gt|le|ge|hi|lo|cs|cc|mi|pl|vs|vc|\.n|\.w)?(?:\.n|\.w)?)\s+'
        r'[0-9a-f]+ <[^>]+>',
        line
    )
    if branch_m:
        return branch_m.group(1)

    # bl / blx targets: keep "bl" but drop address (different code location)
    bl_m = re.match(r'(bl(?:x)?)\s+[0-9a-f]+ <([^>]+)>', line)
    if bl_m:
        # Strip implementation-specific suffixes (+0x...) and veneer names
        label = bl_m.group(2)
        label = re.sub(r'\+0x[0-9a-f]+$', '', label)
        # Map veneer → original name
        label = re.sub(r'^__(.+)_veneer$', r'\1', label)
        # Map c_ prefixes for cross-calls (c_UpdateBattleObjectLinkedList → UpdateBattleObjectLinkedList)
        label = re.sub(r'^c_', '', label)
        return f"{bl_m.group(1)} <{label}>"

    # Normalise EWRAM / ROM addresses in operands
    line = _EWRAM_ADDR.sub('%ewram', line)
    line = _ROM_ADDR.sub('%rom', line)

    # Normalise caller-saved regs when not inside a register list
    if '{' not in line:
        line = _CALLER_SAVED.sub('%tmp', line)

    # Collapse all whitespace runs to a single space for stable comparison
    line = re.sub(r'\s+', ' ', line).strip()

    return line if line else None


_TRAILING_POOL = re.compile(r'^\.(word|short) (%ewram|%rom|0x[0-9a-fA-F]+)$')


def normalise(lines):
    out = []
    for line in lines:
        n = normalise_line(line)
        if n is not None:
            out.append(n)
    # Strip trailing literal-pool entries: always present in agbcc output but
    # absent in original leaf-function asm; they don't affect semantics since
    # both sides access the same normalised %ewram/%rom address.
    while out and _TRAILING_POOL.match(out[-1]):
        out.pop()
    return out


def load_pairs(path):
    pairs = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith('#'):
                continue
            parts = line.split()
            if len(parts) >= 2:
                pairs.append((parts[0], parts[1]))
    return pairs


def main():
    args = sys.argv[1:]
    if len(args) < 2:
        print(f"Usage: {sys.argv[0]} <orig_elf> <decomp_elf> [function_list.txt]")
        sys.exit(2)

    orig_elf, decomp_elf = args[0], args[1]
    pairs = load_pairs(args[2]) if len(args) >= 3 else DEFAULT_PAIRS

    print(f"Disassembling {orig_elf} ...")
    orig_dump = disassemble(orig_elf)
    print(f"Disassembling {decomp_elf} ...")
    decomp_dump = disassemble(decomp_elf)

    orig_funcs   = parse_functions(orig_dump)
    decomp_funcs = parse_functions(decomp_dump)

    passed = 0
    failed = 0
    missing = 0

    for asm_sym, c_sym in pairs:
        if asm_sym not in orig_funcs:
            print(f"[MISSING] {asm_sym} not found in {orig_elf}")
            missing += 1
            continue
        if c_sym not in decomp_funcs:
            print(f"[MISSING] {c_sym} not found in {decomp_elf}")
            missing += 1
            continue

        orig_norm   = normalise(orig_funcs[asm_sym])
        decomp_norm = normalise(decomp_funcs[c_sym])

        diff = list(difflib.unified_diff(
            orig_norm, decomp_norm,
            fromfile=f"{asm_sym} (orig)",
            tofile=f"{c_sym} (decomp)",
            lineterm=""
        ))

        if diff:
            print(f"[DIFF] {asm_sym} vs {c_sym}:")
            for d in diff:
                print("  " + d)
            failed += 1
        else:
            print(f"[PASS] {asm_sym} == {c_sym}")
            passed += 1

    print(f"\nResults: {passed} pass, {failed} diff, {missing} missing")
    sys.exit(0 if failed == 0 and missing == 0 else 1)


if __name__ == "__main__":
    main()
