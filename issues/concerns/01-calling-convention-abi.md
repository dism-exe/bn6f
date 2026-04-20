# Ticket: Calling convention / ABI

**Status:** Open  
**Created:** 2025-03-12

## Description

The game uses **hand-written assembly** (not compiler-generated): prologues vary widely (`push {lr}`, `push {r7,lr}`, `push {r4-r7,lr}`, `push {r5,lr}`, etc.), registers are saved only when the author deemed it necessary, and there is **no single ABI**. C code must match the actual usage, or assembly wrappers at each trampoline must shuffle arguments and return values.

**Implicit register conventions** (agreed by convention, not a written ABI):

- **r10** — “Toolkit” / global context. Never passed as an argument; assumed to be in r10. Many functions do `mov r5, r10` then load GameState or other pointers from it.
- **r5** — Often used as “self” or current context:
  - GameState handlers, BattleState handlers, Overworld NPC, etc. are dispatched via jumptables; the target expects **r5 = self** (e.g. `GameState*`, `BattleState*`). The caller sets r5 (e.g. from r10) and branches; no argument in r0.
  - **SpawnBattleObjectCommon** returns the new object pointer in **r5** (not r0); comment in asm: `// returns: r5`, `// clobbers: r0, r1, r2, r3`.
  - **UpdateBattleObjectLinkedList**, **object_800372A**, and battle-object “methods” invoked via `bx r0` from RunBattleObjectLogic expect **r5 = current battle object**; callers leave r5 set from the previous call (e.g. SpawnBattleObjectCommon’s return).
- **Callee-saved rules are not followed consistently.** Example: `object_spawnType1` uses r5 (test then conditional call) but does not save/restore r5; under AAPCS r5 would be callee-saved. So either the project convention differs or callers are written knowing r5 may be clobbered.

**Implications for trampolines:** We must either (1) document and replicate these conventions in C (and any shared asm), or (2) use assembly wrappers at the boundary that save/restore as needed and map between C’s ABI (e.g. r0 return) and the game’s (e.g. r5 return, r5 = self).

## Solution / resolution

<!-- Fill in when we have an approach or fix -->

---

## Checklist

- [ ] Document actual calling convention used by the binary
- [ ] Decide: match in C vs assembly wrappers
- [ ] Implement and verify with at least one trampolined function
