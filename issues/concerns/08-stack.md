# Ticket: Stack for C

**Status:** Open  
**Created:** 2025-03-12

## Description

C functions require a valid stack. For testing we can use a stack in emulator-only memory that the game does not use. We must set the stack pointer (at startup or on each trampoline entry) to that region and ensure it is large enough and does not overlap game RAM/ROM.

## Solution / resolution

<!-- Fill in when we have an approach or fix -->

---

## Checklist

- [ ] Pick stack region (e.g. high IWRAM or emulator “extra” RAM)
- [ ] Set SP once at startup or per-trampoline as needed
- [ ] Verify size and no overlap with game memory map
