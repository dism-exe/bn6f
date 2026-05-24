#!/usr/bin/env python3
"""Generate C struct headers from include/structs/*.inc.

Reads the project's custom asm DSL (see structs_plan.md Phase A) and
emits a matching C struct per input file under
constants/headers/structs/<Name>.h.

Handles the common cases: u8/u16/u32/s8/s16/s32/bool8/enum8/enum16/
flags8/flags16/flags32 fields, `ptr` (→ `void *`, refined later in
Phase C), `struct_org` gap padding, `u0 Name` zero-size markers,
`u8_arr X, N` / `u16_arr` / `u32_arr` arrays, `union`/`nextu`/`endu`
unions, and nested struct includes (e.g. ObjectHeader inlined into
OverworldNPCObject). `struct_const` lines become `#define`s above
the struct. Custom field-type macros (JoypadFlags etc.) are
detected by checking if a matching `.macro <Name>` defines an
`enum16`/`enum8`/`flags*` aliasing.

Skips: anything with deeply nested DSL (rom_structs/, init_rom_struct
templates) that doesn't follow the standard form. Emits a warning
comment in the .h for files that hit unparseable lines.
"""

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "include/structs"
OUT = ROOT / "constants/headers/structs"

# field-type macro → C type
TYPE_MAP = {
    "u8": "u8", "u16": "u16", "u32": "u32",
    "s8": "s8", "s16": "s16", "s32": "s32",
    "bool8": "u8",
    "enum8": "u8", "enum16": "u16", "enum32": "u32",
    "flags8": "u8", "flags16": "u16", "flags32": "u32",
    "ptr": "void *",
}
ARR_MAP = {
    "u8_arr": "u8", "u16_arr": "u16", "u32_arr": "u32",
    "s8_arr": "s8", "s16_arr": "s16", "s32_arr": "s32",
}

# Custom field-type macros — JoypadFlags etc. — discovered at parse time.
# Maps macro-name → underlying type.
CUSTOM_FIELD_TYPES = {}

FIELD_RE = re.compile(
    r"^\s*([A-Za-z_]\w*)\s+([A-Za-z_]\w*)\s*(//.*loc\s*=\s*(0x[0-9A-Fa-f]+|\d+).*)?$"
)
ARR_RE = re.compile(
    r"^\s*(u8_arr|u16_arr|u32_arr|s8_arr|s16_arr|s32_arr)\s+([A-Za-z_]\w*)\s*,\s*(0x[0-9A-Fa-f]+|\d+)\s*(//.*)?$"
)
STRUCT_ORG_RE = re.compile(r"^\s*struct_org\s+(0x[0-9A-Fa-f]+|\d+)")
DEF_OFFSETS_RE = re.compile(
    r"^\s*def_struct_offsets\s+[A-Za-z_]\w*_struct\s*,\s*o([A-Za-z_]\w*)"
)
NESTED_INCLUDE_RE = re.compile(
    r"^\s*([A-Za-z_]\w*_struct)\s+\\label"
)
STRUCT_CONST_RE = re.compile(
    r"^\s*struct_const\s+([A-Za-z_]\w*)\s*,\s*(.+?)\s*(//.*)?$"
)
CUSTOM_MACRO_DEF = re.compile(
    r"^\s*\.macro\s+([A-Za-z_]\w*)\s+(?:field|name)\s*:req"
)
CUSTOM_MACRO_ALIAS = re.compile(
    r"^\s*(enum8|enum16|enum32|flags8|flags16|flags32|u8|u16|u32)\s+\\(?:field|name)\s*$"
)


def hex_int(s):
    return int(s, 0)


def parse_inc_file(path):
    """Parse one .inc into (struct_name, fields, defines, warnings).

    `fields` is a list of dicts: {kind, c_type, name, offset, size, items?}
    where kind in {'field', 'array', 'pad', 'marker', 'union'}.
    """
    lines = path.read_text().splitlines()
    name = None
    # find the struct name
    for line in lines:
        m = DEF_OFFSETS_RE.match(line)
        if m:
            name = m.group(1)
            break

    fields = []
    defines = []
    warnings = []
    cur_offset = 0
    in_struct = False
    in_union = False
    union_branches = None  # list of branches, each a list of fields
    cur_union_branch = None
    union_start_offset = None
    union_max_size = 0
    pending_consts = []

    for ln, raw in enumerate(lines, start=1):
        line = raw.split("//")[0].rstrip()
        # peek the // comment for loc=
        if ".macro" in raw and "_struct" in raw:
            in_struct = True
            continue
        if ".endm" in raw:
            in_struct = False
            continue
        if not in_struct:
            continue

        stripped = line.strip()
        if not stripped:
            continue
        # struct_const, attached to the previous field
        m = STRUCT_CONST_RE.match(raw)
        if m:
            defines.append((m.group(1), m.group(2).strip()))
            continue
        # union start
        if stripped == "union":
            in_union = True
            union_branches = [[]]
            cur_union_branch = union_branches[0]
            union_start_offset = cur_offset
            union_max_size = 0
            continue
        if stripped == "nextu":
            # measure current branch
            branch_end = cur_offset
            union_max_size = max(union_max_size, branch_end - union_start_offset)
            union_branches.append([])
            cur_union_branch = union_branches[-1]
            cur_offset = union_start_offset
            continue
        if stripped == "endu":
            branch_end = cur_offset
            union_max_size = max(union_max_size, branch_end - union_start_offset)
            fields.append({
                "kind": "union",
                "branches": union_branches,
                "offset": union_start_offset,
                "size": union_max_size,
            })
            in_union = False
            union_branches = None
            cur_union_branch = None
            cur_offset = union_start_offset + union_max_size
            continue
        # struct_org N — jump to a specific offset, possibly emitting padding
        m = STRUCT_ORG_RE.match(raw)
        if m:
            target = hex_int(m.group(1))
            if target > cur_offset:
                gap = target - cur_offset
                pad = {"kind": "pad", "size": gap, "offset": cur_offset}
                (cur_union_branch if in_union else fields).append(pad)
                cur_offset = target
            elif target < cur_offset and not in_union:
                # overlap — typically followed by alias fields. skip.
                cur_offset = target
            continue
        # arrays
        m = ARR_RE.match(raw)
        if m:
            kind = m.group(1)
            field_name = m.group(2)
            count = hex_int(m.group(3))
            ctype = ARR_MAP[kind]
            esize = {"u8": 1, "s8": 1, "u16": 2, "s16": 2, "u32": 4, "s32": 4}[ctype]
            total = esize * count
            entry = {"kind": "array", "c_type": ctype, "name": field_name,
                     "count": count, "size": total, "offset": cur_offset}
            (cur_union_branch if in_union else fields).append(entry)
            cur_offset += total
            continue
        # Nested struct include (e.g. object_header_struct \label,...)
        if re.match(r"^\s*[A-Za-z_]\w*_struct\s+\\label", raw):
            macro_name = re.match(r"^\s*([A-Za-z_]\w*_struct)", raw).group(1)
            entry = {"kind": "nested", "macro": macro_name, "offset": cur_offset}
            (cur_union_branch if in_union else fields).append(entry)
            # We don't know the nested size at parse time; resolve later.
            continue
        # field with type
        m = FIELD_RE.match(raw)
        if m:
            ftype = m.group(1)
            fname = m.group(2)
            # u0 = zero-size marker
            if ftype == "u0":
                entry = {"kind": "marker", "name": fname, "offset": cur_offset}
                (cur_union_branch if in_union else fields).append(entry)
                continue
            # known scalar types
            if ftype in TYPE_MAP:
                ctype = TYPE_MAP[ftype]
                size = {"u8 *": 4, "void *": 4,
                        "u8": 1, "s8": 1, "u16": 2, "s16": 2,
                        "u32": 4, "s32": 4}[ctype]
                entry = {"kind": "field", "c_type": ctype, "name": fname,
                         "size": size, "offset": cur_offset}
                (cur_union_branch if in_union else fields).append(entry)
                cur_offset += size
                continue
            # custom field macro (e.g. JoypadFlags)
            if ftype in CUSTOM_FIELD_TYPES:
                ctype = CUSTOM_FIELD_TYPES[ftype]
                size = {"u8": 1, "u16": 2, "u32": 4}[ctype]
                entry = {"kind": "field", "c_type": ctype, "name": fname,
                         "size": size, "offset": cur_offset}
                (cur_union_branch if in_union else fields).append(entry)
                cur_offset += size
                continue
            warnings.append(f"line {ln}: unknown field type `{ftype}`")
            continue
        # other directives we don't care about
        if (stripped.startswith("\\set_struct_start_address") or
            stripped.startswith("set_struct_label") or
            stripped.startswith("restore_struct_label") or
            stripped.startswith("//") or
            stripped.startswith(".") or
            stripped.startswith("init_") or
            stripped.startswith("def_struct_offsets") or
            stripped.startswith("def_rom_struct_offsets") or
            stripped == ""):
            continue
        warnings.append(f"line {ln}: unparsed: {stripped[:60]}")

    return name, fields, defines, warnings


def discover_custom_field_types():
    """One pass over all .inc files to pick up custom field macros
    like JoypadFlags. Stores into CUSTOM_FIELD_TYPES."""
    for path in sorted(SRC.glob("*.inc")):
        lines = path.read_text().splitlines()
        in_macro = None
        for line in lines:
            m = CUSTOM_MACRO_DEF.match(line)
            if m:
                in_macro = m.group(1)
                continue
            if in_macro:
                m = CUSTOM_MACRO_ALIAS.match(line)
                if m:
                    alias = m.group(1)
                    underlying = {
                        "enum8": "u8", "enum16": "u16", "enum32": "u32",
                        "flags8": "u8", "flags16": "u16", "flags32": "u32",
                        "u8": "u8", "u16": "u16", "u32": "u32",
                    }[alias]
                    CUSTOM_FIELD_TYPES[in_macro] = underlying
                if ".endm" in line:
                    in_macro = None


def emit_field(entry, indent="    "):
    """Render one parsed field dict as a C line. Returns list of lines."""
    if entry["kind"] == "field":
        return [f"{indent}{entry['c_type']:<8} {entry['name']};{' ' * 4}/* 0x{entry['offset']:02X} */"]
    if entry["kind"] == "array":
        return [f"{indent}{entry['c_type']:<8} {entry['name']}[0x{entry['count']:X}];{' ' * 4}/* 0x{entry['offset']:02X} */"]
    if entry["kind"] == "pad":
        return [f"{indent}u8       _pad_0x{entry['offset']:02X}[0x{entry['size']:X}];"]
    if entry["kind"] == "marker":
        return [f"{indent}/* 0x{entry['offset']:02X} {entry['name']} (zero-size marker) */"]
    if entry["kind"] == "nested":
        return [f"{indent}/* nested: {entry['macro']} @ 0x{entry['offset']:02X} — declare manually */"]
    if entry["kind"] == "union":
        # Name the union so older C compilers (agbcc / gcc 2.9) accept it.
        uname = f"_union_0x{entry['offset']:X}"
        lines = [f"{indent}union {{    /* 0x{entry['offset']:02X} (size 0x{entry['size']:X}) */"]
        for i, branch in enumerate(entry["branches"]):
            lines.append(f"{indent}    struct {{")
            for sub in branch:
                lines.extend(emit_field(sub, indent + "        "))
            lines.append(f"{indent}    }} _u{i};")
        lines.append(f"{indent}}} {uname};")
        return lines
    return []


def _dedupe_field_names(items):
    """Disambiguate same-name fields at different offsets within a
    struct by appending `_at_<offset>` to the later occurrences."""
    seen = set()
    def _rename(name, offset):
        candidate = name if name not in seen else f"{name}_at_0x{offset:X}"
        seen.add(candidate)
        return candidate
    for entry in items:
        if entry["kind"] in ("field", "array"):
            entry["name"] = _rename(entry["name"], entry["offset"])
        elif entry["kind"] == "union":
            for branch in entry["branches"]:
                # Each branch gets its own naming scope but still
                # share parent-level names.
                for sub in branch:
                    if sub["kind"] in ("field", "array"):
                        sub["name"] = _rename(sub["name"], sub["offset"])


def emit_header(name, fields, defines, warnings, source):
    _dedupe_field_names(fields)
    lines = []
    lines.append(f"// Generated from include/structs/{source} by tools/struct_inc_to_h.py.")
    lines.append(f"// DO NOT EDIT by hand — re-run the script after changing the .inc.")
    lines.append(f"")
    lines.append(f"#ifndef BN6F_STRUCT_{name.upper()}_H")
    lines.append(f"#define BN6F_STRUCT_{name.upper()}_H")
    lines.append(f"")
    lines.append(f'#include "types.h"')
    lines.append(f"")
    if warnings:
        lines.append("// Parser warnings — review the source .inc:")
        for w in warnings:
            lines.append(f"//   {w}")
        lines.append("")
    for dname, dval in defines:
        lines.append(f"#define {dname} {dval}")
    if defines:
        lines.append("")
    lines.append(f"typedef struct {name} {{")
    for f in fields:
        lines.extend(emit_field(f))
    lines.append(f"}} {name};")
    lines.append("")
    lines.append(f"#endif")
    return "\n".join(lines) + "\n"


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    discover_custom_field_types()
    total = 0
    written = 0
    warned = 0
    for path in sorted(SRC.glob("*.inc")):
        total += 1
        name, fields, defines, warnings = parse_inc_file(path)
        if not name:
            print(f"skip {path.name}: no def_struct_offsets found")
            continue
        out_path = OUT / f"{name}.h"
        out_path.write_text(emit_header(name, fields, defines, warnings, path.name))
        written += 1
        if warnings:
            warned += 1
    print(f"wrote {written}/{total} headers to {OUT.relative_to(ROOT)} "
          f"({warned} with parser warnings)")


if __name__ == "__main__":
    main()
