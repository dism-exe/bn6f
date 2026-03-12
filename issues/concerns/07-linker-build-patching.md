# Ticket: Linker and build / patching

**Status:** Open  
**Created:** 2025-03-12

## Description

We need a way to place the new C code at fixed addresses (or in a known region) and to generate the correct branch instructions from the original addresses to those new locations. That usually means linker scripts plus a small script or table that patches the ROM with the right branch encodings.

## Solution / resolution

<!-- Fill in when we have an approach or fix -->

---

## Checklist

- [ ] Linker script: C code in chosen RAM region, symbols for trampoline targets
- [ ] Build produces a table or script of (original_address → branch_to_address)
- [ ] Patch step (or emulator hook) applies branches into the ROM/binary
