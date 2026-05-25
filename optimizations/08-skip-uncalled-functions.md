# Skip RECORD for uncalled functions

**Status:** proposed
**Impact:** ★ (small with dedup already in place; bigger without)
**Effort:** medium (two-pass orchestration)

## Problem

During record, every function in `RECORD_TARGETS` that fires gets
a per-call check in `custom_cb` (already O(1) HashSet lookup) and
gets snapshot-captured if its entry hits. Functions in
`RECORD_TARGETS` that *never fire* in this session pay only the
HashSet-membership cost — that's cheap.

The other Claude proposed: run a cheap counting pass first, find
which manifest functions actually fire in this session, then only
record those.

## Approach

Two-pass orchestration:

1. **Hit-count pass:** `bn6f-track track` (already exists — main.rs
   line ~541) runs the demo with hooks for every symbol and dumps
   per-function call counts. Cheap because no snapshot capture.
2. **Filter:** keep only functions with `calls > 0` AND that are
   in `tools/decomp_manifest.txt` for this session.
3. **Record pass:** run `bn6f-track record` with that filtered
   target list.

Wire this into `make verify-spam` / `verify-state` / `verify-bk2`
as a pre-step.

## Implementation notes

- The current `custom_cb` already skips snapshot work for non-target
  functions (line 451: `let is_target = RECORD_TARGETS.with(...)`).
  So the "skip" doesn't save *callback* cost, only:
  - Snapshot capture (288 KB memcpy + hash) — but with dedup (see
    [01](01-hash-dedup-entries.md)), most of those would be dedup-skipped
    anyway.
  - One isolated re-run per captured entry for expected exit.
- For verify-spam where most manifest functions DO fire (it's spam
  input through main-loop code), the win is small.
- For verify-bk2 with scene-specific replays (e.g. battle-only), many
  manifest functions never execute — this is where the win lives.
- Doubles the emulation cost (one pass to count, one to record). Only
  worth it if the saved record-pass work outweighs the extra count-pass
  cost. Measure before committing.

## Results

_To fill in post-implementation._ Useful measurements per workload:

- `verify-spam`: marginal change expected.
- `verify-state battle/...`: substantial fn-count reduction expected
  (battle-only scene won't touch overworld code, etc.). Report total
  wall time before vs after.
- The break-even point (how many filtered-out functions before the
  two-pass cost pays for itself) is workload-specific.
