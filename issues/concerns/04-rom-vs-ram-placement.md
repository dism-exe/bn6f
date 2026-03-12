# Ticket: ROM vs RAM (where C code lives)

**Status:** Open  
**Created:** 2025-03-12

## Description

Trampoline targets must live in executable RAM (e.g. IWRAM or EWRAM). Original ROM addresses only need to hold the jump to the trampoline; the C-backed code itself cannot execute from ROM in the usual GBA setup.

## Solution / resolution

<!-- Fill in when we have an approach or fix -->

---

## Checklist

- [ ] Choose region(s) for C code (IWRAM/EWRAM, size limits)
- [ ] Configure linker so C implementations are placed in RAM
- [ ] Ensure trampoline branches target correct addresses
