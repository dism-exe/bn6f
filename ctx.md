# Context: GBA decompilation / trampoline project

Summary of conversation for continuity.

---

## Project goal

- Decompile a GBA game written in hand-written assembly.
- Replace assembly routines with C by **trampolining**: keep original entry addresses, jump to new C implementations elsewhere.
- Keep address space the same. Main concern identified: C needs a stack (e.g. in emulator-only RAM for testing).

---

## Concerns directory

Created `concerns/` with one ticket-style `.md` per hurdle:

1. **01-calling-convention-abi.md** — Calling convention / ABI
2. **02-global-state-reentrancy.md** — Global state and reentrancy
3. **03-interrupts-timing.md** — Interrupts and timing
4. **04-rom-vs-ram-placement.md** — Where C code lives (ROM vs RAM)
5. **05-trampoline-size.md** — Size of trampoline (branch only)
6. **06-multiple-entry-points.md** — Multiple entry points into same logic
7. **07-linker-build-patching.md** — Linker and build / patching
8. **08-stack.md** — Stack for C

Each has Status, Description, Solution (to fill when resolved), and a checklist. **Do not update 01 until we have a workable solution.**

---

## Calling convention / ABI (01) — discussion

- **AAPCS:** ARM Architecture Procedure Call Standard; standard C ABI (r0–r3 args, r0 return, callee-saved regs, etc.).
- **IWRAM and Thumb/ARM:** RAM isn’t “Thumb” or “ARM”; the **CPU mode** (T bit) is. Code we put in IWRAM is built as Thumb or ARM; the branch to our code must match.
- **Hand-written asm:** Likely no C-style convention → use **assembly wrappers** at the boundary; C keeps one consistent ABI.
- **Save-all-registers approach:** Possible: save all GPRs, call C, then restore. But we must **not** restore the return-value register(s), or copy C’s return (r0/r1) into whatever reg(s) the game expects. Otherwise we clobber the return value.
- **Identifying return regs:** Still required. Save-all avoids knowing *argument* mapping (we can pass a pointer to saved state) but we still need to know which reg(s) hold the return value. So we’re doing convention analysis either way; knowing the full convention allows a **minimal** wrapper (only move args/return and save/restore callee-saved we clobber).

---

## Example: `object_spawnType1` (asm00_1.s)

- **Args (in):** r0–r4 (five words), r5 (sixth input, flag for whether to call `sub_8003400`).
- **Return:** Void in registers (no return-value reg).
- **Flow:** Prologue (push r7,lr; sub sp #0x14; mov r7, sp; stmia r7!, {r0-r4}). Call `SpawnBattleObjectCommon(1, sp)`. If r5 != 0, call `sub_8003400`. Epilogue (add sp #0x14; pop {r7,pc}).
- **r7:** We don’t assume the caller used r7 as a frame pointer. We save r7 and lr so we can restore them; **this function** then uses r7 to hold `sp` (base of its stack frame).
- **Recovery of r0–r4:** They are not loaded back into regs here. They’re passed by pointer to `SpawnBattleObjectCommon` (r1 = sp); the callee reads them from memory if needed.

**Assembly syntax (push):** `push {r7,lr}` pushes the listed registers onto the **stack** (in order by register number), and updates SP. So “save to stack.”

**Comment fixes applied:** Save “to stack”; “base of active stack frame” (not “block”); r7 comment: “save r7 and lr; we will use r7 to hold sp” (no claim about caller’s use of r7).

---

## File touched

- `bn6f/asm/asm00_1.s` — Comments added/updated for `object_spawnType1` (line range ~250–263): per-line comments, block comments for prologue / call / optional call / epilogue, and the clarifications above.

---

*Generated as context file from conversation.*
