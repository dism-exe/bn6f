# Skip IRQ-isolation for pure functions

**Status:** proposed
**Impact:** ★ (small)
**Effort:** high (needs static analysis or annotation)

## Problem

`isolated_run_to` (`main.rs` ~line 946) runs each captured entry with
IRQs masked (`CPSR.I = 1`) to remove cycle-drift-driven IRQ
interleaving. Both record-side (expected exit) and replay-side
(actual exit) do this, so timing-sensitive code can't poison the
diff.

The cost: every isolated run is a full single-step loop from entry
to LR, capped at `MAX_STEPS = 1_000_000`. For short pure functions
this is fine; for long ones it adds up across N pairs × 2 passes
(record-expected + replay-actual).

## Approach

For functions provably "pure" (no MMIO, no timer reads, no IRQ
dependencies), we could:
1. Capture the natural exit during the main demo run (no isolation).
2. Skip the per-entry isolated re-run entirely.

That would cut the record-side expected-exit phase to zero for pure
functions, and (separately) shorten the replay verification.

## Implementation notes

- "Pure" is hard to prove without disassembly analysis. Conservative
  heuristics:
  - No `ldr`/`str` to addresses in `0x04000000–0x040003FE` (MMIO).
  - No `swi` (BIOS call).
  - No branch to known IRQ entry stubs.
- Could annotate via a manifest column (`tools/decomp_manifest.txt`
  gains a `pure` flag) and skip isolation for those.
- Risk: false-positive "pure" classification breaks the diff
  silently. The cost of a wrong call here is wasted debugging time
  on phantom mismatches.
- Strong overlap with optimization [03](03-parallelize-record-isolated-runs.md):
  if parallelization makes the isolation phase cheap, this becomes
  unnecessary. Do 03 first; revisit only if the residual isolation
  cost is still meaningful.

## Results

_To fill in post-implementation._ Likely deferred indefinitely
unless 03 doesn't deliver enough.
