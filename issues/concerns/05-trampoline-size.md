# Ticket: Size of trampoline

**Status:** Open  
**Created:** 2025-03-12

## Description

At each original address we only have room for a short jump (ARM: 4 bytes; Thumb: 2 or 4). If the original routine was longer, we must either overwrite the whole routine with a single jump or jump from the first instruction and leave the rest unused (or repurpose carefully).

## Solution / resolution

<!-- Fill in when we have an approach or fix -->

---

## Checklist

- [ ] Confirm branch encoding size (Thumb vs ARM, range)
- [ ] For each replacement: ensure overwrite is safe (no shared bytes with neighbours)
- [ ] Document or automate patching of original bytes with branch to C
