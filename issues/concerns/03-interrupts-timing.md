# Ticket: Interrupts and timing

**Status:** Open  
**Created:** 2025-03-12

## Description

If original routines run with interrupts disabled or under strict timing, C versions may change timing and break assumptions (e.g. VBlank, DMA, or cycle-counted code). Need to check whether any trampolined functions sit on critical paths.

## Solution / resolution

<!-- Fill in when we have an approach or fix -->

---

## Checklist

- [ ] List functions that touch IRQ enable/disable or timing-sensitive behaviour
- [ ] Measure or reason about timing impact of C replacements
- [ ] Add guards or tests if needed (e.g. keep IRQ state, avoid C in hot paths)
