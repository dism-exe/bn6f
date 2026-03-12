# Ticket: Calling convention / ABI

**Status:** Open  
**Created:** 2025-03-12

## Description

Hand-written assembly may use a custom calling convention (which registers hold arguments, return value, caller vs callee-saved, stack alignment). C code must match, or small assembly wrappers at each trampoline are needed to shuffle arguments and return values so the rest of the game still works.

## Solution / resolution

<!-- Fill in when we have an approach or fix -->

---

## Checklist

- [ ] Document actual calling convention used by the binary
- [ ] Decide: match in C vs assembly wrappers
- [ ] Implement and verify with at least one trampolined function
