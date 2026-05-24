# Context: GBA decompilation / trampoline project

Summary of conversation for continuity.

---

## Project goal

Decompile MMBN6F (Mega Man Battle Network 6 - Cybeast Falzar, `mmbn6f.gba`).
Replace hand-written assembly routines with C by **trampolining**: keep
original entry addresses, place a trampoline at each that long-calls the
C implementation elsewhere.

---

## Current state (2026-05-23)

**Build pipeline ready. Verification harness in progress (Rust + libmgba).**

A Phase 1 attempt that trampolined 11 spawn / linked-list functions to C
helpers was reverted because the resulting ROM did not boot. The C-build
pipeline itself was kept (the failure was in the trampoline logic or
unmodeled global state, not in the toolchain). No function will be
re-ported until the verification harness can confirm equivalence
mechanically.

A BizHawk-based prototype of the verification harness was built and
worked end-to-end (auto-recorder plugin + function tracker at ~40 fps
with 13K hooks), but the accumulated friction from BizHawk's GUI-centric
design — reflection into private APIs, modal dialogs under xvfb,
managed↔native callback bridge cost — led to the decision to migrate to
a libmgba-direct Rust binary. See
`issues/concerns/10-emulator-requirements.md` for the full requirements
analysis and decision rationale. The BizHawk design is preserved in
`issues/concerns/09-correctness-verification.md` as historical context.

### What is in place (the build pipeline)

- **Makefile**: build and verification targets.
  - `make all` (default) — links via `ld_script.ld`, runs SHA1 check.
    Byte-for-byte original ROM; continuous regression check on the
    ASM tree.
  - `make orig` — same `ld_script.ld`, writes `bn6f_orig.elf` for
    side-by-side comparison against the modified ELF.
  - `make decompile` — links via `ld_script_decompile.ld` and adds any
    C objects under `build/c/` via a `.c_code` section. No SHA check.
  - `make validate` — runs `tools/validate_asm.py` against
    `bn6f_orig.elf` and the current `bn6f.elf`.
  - `make function-symbols` — extracts function-entry symbols from
    `bn6f_orig.elf` into `tools/function_symbols.txt`.
  - `make track-build` — cargo builds the Rust tracker binary.
  - `make track` — runs the tracker against `bn6f.gba`.
  - C pipeline rules: `cpp → agbcc → arm-none-eabi-as` for each
    `src/c/*.c` (picked up via `$(wildcard)`).
- **ld_script.ld**: original, unmodified — produces SHA-matching ROM.
- **ld_script_decompile.ld**: adds `.c_code` section between `.data` and
  `.fill`, populated by `build/c/*.o(.text)` (wildcard) plus
  `tools/agbcc/lib/libgcc.a` for agbcc helpers. Wildcard means the
  section is empty when no C files exist.
- **src/c/types.h**: GBA type aliases (`u8`, `u16`, `u32`, `s8`, `s16`,
  `s32`, `bool8`).
- **tools/function_symbols.txt**: 13554 function-entry addresses
  extracted from `bn6f_orig.elf`. Consumed by the Rust tracker.
- **tools/validate_asm.py**: scaffold for ASM/C equivalence validation.
- **tools/bn6f-track/** (in progress): Rust binary linking `libmgba`
  for the verification harness. See concern 10 for the design.
- **bin/mgba-dev.appimage**: mGBA 0.11 dev build, kept around for
  one-off interactive GUI debugging. Not used by automation.

### Open work

1. **Verification harness Rust port** — replacing the BizHawk prototype
   with a direct libmgba binding. Concern 10.
2. **Concerns 01–08** were resolved relative to code that has since
   been reverted; worth re-reviewing when porting resumes.

### Key technical facts (carried over from prior attempt)

- **agbcc**: bare cc1 (GCC 2.95-based); no preprocessor. Must run
  `cpp -nostdinc -undef` first, then feed the `.i` file to agbcc.
- **Long-call pattern** (because C code is ~8 MB from trampolines,
  beyond BL range): `LDR r3, pool; MOV lr, pc; BX r3` — BX has
  unlimited range.
- **EWRAM globals** accessed via linker-resolved `extern`: symbols
  exported with `::` in `ewram.s`; agbcc emits PC-relative literal
  pool loads; linker fills in EWRAM addresses.

---

## Concerns directory (`issues/concerns/`)

- **01–08**: Resolved during the prior attempt. ABI/register
  conventions, global state mapping, interrupts, ROM-vs-RAM placement,
  trampoline sizing, multiple entry points, linker/patching, stack.
  Relative to reverted code — re-review when porting resumes.
- **09**: Correctness verification — original design discussion + the
  BizHawk prototype. Preserved as history; superseded by concern 10
  for the emulator-choice and harness-implementation parts.
- **10**: Emulator requirements + decision to migrate the harness to a
  Rust binary linking libmgba directly. Active direction.

---

*Updated 2026-05-23 after the BizHawk prototype reached working state
but with enough accumulated friction to motivate a libmgba-direct
rewrite. BizHawk artifacts removed from the repo; concerns 09 and 10
both kept as historical and active documentation respectively.*
