# Parallelize record-side isolated runs

**Status:** implemented
**Impact:** ★★★ (high — serial→parallel on the dominant phase)
**Effort:** low (mechanical, mirrors existing replay pattern)

## Problem

After the emulation pass captures entry snapshots, the record phase
runs an isolated re-execution of each entry on the *oracle* ROM to
compute the "expected exit" state. This loop is sequential (`main.rs`,
roughly the `for rec in entries { isolated_run_to(...) }` block).

For `verify-spam` with dedup keeping ~hundreds-to-thousands of unique
entries, this is the dominant phase of `make verify-spam` — and it's
single-threaded while the box has many idle cores.

The replay phase **already** parallelizes the same kind of work:

```rust
// main.rs ~line 1035
use rayon::prelude::*;
let results: Vec<_> = seqs.par_iter()
    .map(|seq| { ... isolated_run_to ... })
    .collect();
```

Each `isolated_run_to` is independent: fresh `Core::new(rom)`, no
shared mutable state. Trivially parallel.

## Approach

Lift the same `par_iter` pattern from replay into the record-side
loop. Each iteration:
- Reads `rec` (immutable owned data).
- Writes one entry file + one exit-delta file to disk (filesystem
  handles parallel `create_dir_all` + writes fine).
- Increments shared counters (`wrote`, `failed`, `per_fn_counter`).

The per-fn sequence-number assignment (`per_fn_counter`) needs to be
done deterministically — either pre-assign seq numbers before the
parallel map, or use an atomic counter. Pre-assignment is cleaner: do
one serial pass over `entries` to assign `(rec, seq)` tuples, then
`par_iter` over those.

## Implementation notes

- `rayon` is already a dep (used by replay).
- File I/O is fine in parallel — `fs::create_dir_all` is idempotent,
  separate files per task.
- The "failed" eprintln messages will be interleaved by thread order.
  Acceptable, or collect failures and report at end.
- The expected speedup is roughly `min(unique_entries, ncpu)` times
  the sequential phase. For a 16-core box and ≥16 unique entries,
  expect ~10–14× on this phase alone (some overhead from libmgba
  startup per worker).

## Results

Workload: `make verify` (300-frame boot_idle, 2220 pairs across the
manifest). Box has 16 cores.

| | wall time (mean of 3 runs) |
|---|---|
| Before | 20.08s |
| After  | 12.22s |
| **Δ**  | **-7.86s (-39%)** |

All 2220 pairs still PASS — no behavioral regressions.

Implementation notes from the actual change:
- Serial pre-pass over `entries` assigns `(rec, name, seq, fn_dir)`
  tuples deterministically and creates the per-fn directories
  up-front (so workers don't race on `create_dir_all`).
- The parallel phase uses `par_iter().for_each(...)` with atomic
  `wrote`/`failed` counters.
- No rayon tuning needed — default thread pool (= num_cpus) is fine.

The 39% wall-clock saving for `make verify` overstates the
isolated-phase improvement (build + replay are unchanged), but it's
the right end-to-end number for "what does the user see". On
`verify-spam` where phase 2 is a larger fraction of wall time, the
relative win should be even bigger.
