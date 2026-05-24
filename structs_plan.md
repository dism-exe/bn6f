# C struct migration plan

Context: the C-side conversions currently use raw pointer-arithmetic
on absolute addresses, e.g.

    #define eToolkit_GameStatePtr (*(u8 **)0x020093ECu)
    u32 *gs = eToolkit_GameStatePtr;
    u32 zenny = gs[0x5C / 4];

The asm side already has full struct layouts in `include/structs/*.inc`
(via the project's custom macro DSL: `ptr`, `u32`, `u8`, `struct_org`,
etc.), but no matching C struct definitions exist yet. `constants/headers/EWRAM.h`
already declares `#define eToolkit ((Toolkit*) 0x20093B0)` — but
`Toolkit` itself isn't a defined C type, so that header doesn't compile
in any current `.c` file.

This plan turns the existing untyped C into proper struct field
accesses. Done in four phases; the early phases are mechanical, the
later ones are sweeps.

The harness sees typed and untyped C as identical (same machine code),
so this is purely a readability / future-maintenance change. No
correctness risk.

---

## Phase A — generate `.h` files from `.inc` files (one-shot)

Write a converter `tools/struct_inc_to_h.py` (~100–200 lines of
Python). It reads each `include/structs/<Name>.inc` and emits a
matching `constants/headers/structs/<Name>.h`.

Input grammar (from existing `.inc` files, see `Toolkit.inc`,
`GameState.inc`, `RenderInfo.inc`, `S2001c04.inc`, `Palette20097a0.inc`,
`CutsceneState.inc`, etc.):

    .macro <name>_struct, label:req, struct_entry=..., set_struct_start_address=...
        \set_struct_start_address \label
        set_struct_label \struct_entry, \label
        u8  FieldA          // loc=0x0
        u8  FieldB          // loc=0x1
        struct_org 0x4
        u32 FieldC          // loc=0x4
        ptr FieldD          // loc=0x8
        u8_arr FieldE, 0x14 // loc=0xc
        u0  Size            // loc=0x20
        restore_struct_label
    .endm
    def_struct_offsets <name>_struct, oName

Output mapping:

    typedef struct {
        u8   FieldA;        // 0x00
        u8   FieldB;        // 0x01
        u8   _pad_0x02[2];  // synthesised from struct_org gaps
        u32  FieldC;        // 0x04
        void *FieldD;       // 0x08  (typed pointer — see Phase C)
        u8   FieldE[0x14];  // 0x0c
    } Name;
    /* Size = 0x20 */

Type map:
- `u8` → `u8`, `u16` → `u16`, `u32` → `u32`, `s8`/`s16`/`s32` likewise
- `ptr` → `void *` (refined in Phase C)
- `u8_arr X, N` → `u8 X[N]` (same for u16_arr, u32_arr)
- `u0 Name` → drop the field; emit a trailing `/* Name = 0xN */`
  comment marking it as a label-only constant
- `struct_org 0xN` → insert `u8 _pad_0xYY[Z];` from current offset to
  0xN if there's a gap
- `union` / `nextu` / `endu` → emit a C `union { ... } { ... };`

Naming: keep the asm naming convention (`Toolkit`, `GameState`,
`S2001c04`, `Palette20097a0` etc.) — don't try to rename.

Acceptance: every `.inc` file in `include/structs/` produces a
matching `.h` file that compiles in isolation when included from
a tiny test `.c` file. No `.c` consumer changes needed in Phase A.

## Phase B — wire up the globals

`constants/headers/EWRAM.h` already has the right pattern:

    #define eToolkit ((Toolkit*) 0x20093B0)
    #define eGameState ((GameState*) 0x2001B80)
    #define eCamera ((Camera*) 0x2009980)
    #define sSubmenu ((MenuControl*) 0x2009A30)

After Phase A those references resolve. The remaining work:

1. Audit `EWRAM.h` for *all* `#define e<X> ((<T>*) 0x...)` macros —
   make sure each `<T>` exists as a struct in the Phase A output.
2. Add a top-level `#include` umbrella so a C file can just write
   `#include "constants/headers/EWRAM.h"` and get every game-global
   typed pointer.
3. Decide where `Toolkit` etc. live — probably
   `constants/headers/structs/<Name>.h`, then `EWRAM.h` `#include`s
   them.
4. Add the same treatment for IWRAM-resident globals (`tupleArr_3002590`,
   `iObjectAttr3001150`, etc.) — they need a parallel `IWRAM.h`.

Acceptance: a fresh test `.c` file that does

    #include "constants/headers/EWRAM.h"
    void demo(void) {
        u32 t = eToolkit->S2001c04_Ptr->GameTimeFrames;
        eGameState->CurPETNavi = 0;
    }

compiles cleanly under the current `CCFLAGS = -O2 -mthumb-interwork`.

## Phase C — refine `void *` to concrete types

In Phase A, `ptr` fields are emitted as `void *` because the `.inc`
grammar doesn't say what they point to. Phase C does the obvious
substitutions, one struct field at a time:

    void *RenderInfoPtr        → RenderInfo *RenderInfoPtr
    void *GameStatePtr         → GameState *GameStatePtr
    void *S2001c04_Ptr         → S2001c04  *S2001c04_Ptr
    void *iBGTileIdBlocks_Ptr  → u32       *iBGTileIdBlocks_Ptr
    void *EventFlagsPtr        → u8        *EventFlagsPtr
    void *ChatboxPtr           → Chatbox   *ChatboxPtr

For unknown / generic pointer types, leave `void *`. Drive this
incrementally — refine whichever struct's pointers are needed for
the next batch of conversions.

Acceptance: each refinement compiles and `make verify` still passes.
(It should — pointer types are erased at runtime, the compiled code
is identical to the `void *` version.)

## Phase D — sweep `src/c/*.c`

Once A+B exist, replace the raw-pointer-arithmetic patterns in
existing `.c` files with the typed field accesses. The current
patterns map mechanically:

    *(u8  **)0x020093B8u  →  eToolkit->RenderInfoPtr
    *(u16 **)0x020093CCu  →  eToolkit->Unk200f3a0_Ptr
    *(u32 **)0x020093F0u  →  eToolkit->S2001c04_Ptr
    *(u32 **)0x020093ECu  →  eToolkit->GameStatePtr
    gs[0x5C / 4]          →  eToolkit->GameStatePtr->ProtectedZenny
    *(u16 *)(stats + 0x40) → stats->NaviHP   (where stats is typed)

Two ways to drive this:

- **Mechanical**: write a sed/python script that knows the macro→field
  mapping and rewrites src/c/*.c in bulk. Risk: introduces a "wall-of-
  diffs" PR. Easy to review per-file.
- **Lazy**: only sweep files touched by a new conversion. Slower but
  no big-bang risk.

I'd do lazy. Each new conversion replaces its own raw-pointer macros
with typed access, while a follow-up sweep can catch the rest later.

Acceptance: `src/c/*.c` no longer contains any `#define <X>
(*(<T> **)0x0200...)` macros — all global-pointer accesses go through
`eToolkit->X` style. `make verify` still passes.

---

## Suggested execution order

1. Phase A right now (script + first-pass `.h` files). Couple hours of
   focused script-writing.
2. Phase B immediately after (verify `EWRAM.h` resolves cleanly).
3. Phase C and D in parallel — refine pointer types as you migrate
   files. Don't try to finish C before starting D; the typed-pointer
   propagation IS the thing you want when sweeping anyway.

## Won't this conflict with the ongoing conversion work?

Phase A doesn't touch any `.c` file — safe to do in parallel.
Phase B touches only `constants/headers/EWRAM.h` and the new
`constants/headers/structs/*.h` files — won't collide with
`src/c/*.c` work.
Phases C+D touch `.c` files. Coordinate to avoid stomping on
in-flight conversions: do them in a sweep window or per-file as
you touch each function.

## Why bother doing this now, not "at end of project"?

Every conversion shipped with raw pointer dereferences is one more
file that needs a Phase D sweep later. Doing Phase A+B early means
all *new* conversions land in the typed style, so the eventual
sweep is smaller. Marginal cost now ≤ marginal cost later × N
remaining conversions.

It also unlocks a Ghidra-output upgrade: with proper struct types in
the project's `.h` files, Ghidra's "set datatype at offset" feature
can be wired up so its decompiled output starts emitting
`eToolkit->S2001c04_Ptr->GameTimeFrames` instead of
`*(int*)(r10 + 0x40)` — making the Ghidra pre-pass workflow
(see `token_todo.md` #1) substantially more useful.
