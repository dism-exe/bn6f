# Ticket: Global state and reentrancy

**Status:** Open  
**Created:** 2025-03-12

## Description

Original code may treat specific registers or memory locations as globals. C must see the same state. That may mean mapping C globals to fixed addresses (e.g. via `volatile` pointers or linker sections), or having the trampoline load/store that state into C-visible variables before and after the C call.

## Solution / resolution

<!-- Fill in when we have an approach or fix -->

---

## Checklist

- [ ] Identify which globals/registers the assembly relies on
- [ ] Choose mapping strategy (linker sections vs trampoline load/store)
- [ ] Verify no reentrancy issues (e.g. same routine called from IRQ and main)
