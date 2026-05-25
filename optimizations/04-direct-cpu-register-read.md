# Direct CPU register reads in custom_cb

**Status:** proposed
**Impact:** ★★ (medium — affects the per-instruction hot path)
**Effort:** medium (need to verify bindgen struct layout for libmgba 0.11)

## Problem

The per-instruction callback `custom_cb` (`main.rs` ~line 361) fires
for every executed Thumb/ARM instruction. On every call it reads PC
and CPSR via libmgba's `readRegister` function pointer:

```rust
let read = (*core).readRegister.unwrap_unchecked();
PC_REG.with(|name| {
    let _ = read(core, name.as_ptr(), &mut pc_i);
});
CPSR_REG.with(|name| {
    let _ = read(core, name.as_ptr(), &mut cpsr_i);
});
```

That's two indirect function-pointer calls + a name-based dispatch
inside libmgba per CPU step. For `verify-spam` (18600 frames × ~280K
cycles/frame ≈ 5 billion instructions emulated), this is multiplied a
*lot*.

## Approach

Read directly from the CPU struct fields the bindgen-generated bindings
should expose. For ARM7TDMI:

- `(*(*core).cpu).gprs[15]` for PC
- `(*(*core).cpu).cpsr.packed` for CPSR (or check whether bindgen
  exposes the bitfield struct; if not, read the raw `u32`)

This dodges both indirections per step.

## Implementation notes

- Need to verify what's actually exposed in
  `target/release/build/.../mgba_sys.rs`. The `mCore` struct stores
  `cpu` as `*mut c_void` historically; libmgba 0.11 may have changed
  this. If still `void*`, cast via the GBA-specific layout (`struct
  ARMCore`).
- The other Claude tried HW breakpoints to avoid the callback
  entirely and it was 10× slower (libmgba 0.11 linear-scans bps). This
  optimization is **orthogonal**: keep the callback, just make it
  cheaper.
- Be careful with the safety story — reading directly from the cpu
  struct is unsafe but no more so than `readRegister` itself.
- Micro-benchmark first: a 60-second `smoke 60000` before vs after
  should show whether this matters.

## Results

_To fill in post-implementation._ Compare baseline `smoke 60000` (or
similar long pure-emulation run with debugger attached — use `track`
mode which goes through `run_frames_debugged`) before vs after. Report
fps + total cycles emulated.
