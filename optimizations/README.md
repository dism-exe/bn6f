# bn6f-track optimizations

Tracking ideas to speed up the verification harness (`bn6f-track` +
`make verify*`). One file per idea. Format:

- **Status:** proposed | implemented | abandoned
- **Impact / Effort:** rough sizing pre-implementation
- **Results:** filled in post-implementation with before/after wall-clock
  numbers and what workload was measured

| # | Title | Status |
|---|---|---|
| 01 | [Hash-dedup entry snapshots](01-hash-dedup-entries.md) | implemented |
| 02 | [Frameskip headless rendering](02-frameskip-headless.md) | implemented (inconclusive) |
| 03 | [Parallelize record-side isolated runs](03-parallelize-record-isolated-runs.md) | **implemented** (-39% on `make verify`) |
| 04 | [Direct CPU register reads in custom_cb](04-direct-cpu-register-read.md) | proposed |
| 05 | [Compress stored snapshots](05-compress-snapshots.md) | proposed |
| 06 | [Reuse libmgba core across isolated runs](06-reuse-core-across-isolated-runs.md) | **implemented** (-20% on top of opt 03, -51% from original) |
| 07 | [Parallelize bk2 replays](07-parallelize-bk2-replays.md) | proposed |
| 08 | [Skip RECORD for uncalled functions](08-skip-uncalled-functions.md) | proposed |
| 09 | [Skip IRQ-isolation for pure functions](09-skip-irq-isolation-for-pure-fns.md) | proposed |
| 10 | [Disable rendering entirely](10-disable-rendering-entirely.md) | proposed (supersedes 02) |
| 11 | [Pipeline phase 1 (capture) and phase 2 (expected-exit)](11-pipeline-phase1-phase2.md) | **implemented** (-11% on top of 03+06, -57% from original) |
