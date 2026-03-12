# Ticket: Multiple entry points

**Status:** Open  
**Created:** 2025-03-12

## Description

One logical “function” might be called from several addresses, or the same code might be used as both a subroutine and part of a main loop. We may need several trampolines that all land in the same C function, perhaps with different arguments or a “mode” flag.

## Solution / resolution

<!-- Fill in when we have an approach or fix -->

---

## Checklist

- [ ] Identify routines with multiple call sites or dual use
- [ ] Design C API (single function + mode/context vs multiple wrappers)
- [ ] Add trampolines for each entry point and verify behaviour
