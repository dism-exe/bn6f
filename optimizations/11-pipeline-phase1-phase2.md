# Pipeline phase 1 (capture) and phase 2 (expected-exit)

**Status:** implemented
**Impact:** ★★★ (high — wall time becomes `max(phase1, phase2)` instead
of `phase1 + phase2`)
**Effort:** medium — depends on [03](03-parallelize-record-isolated-runs.md)
and [06](06-reuse-core-across-isolated-runs.md) being in place.

## Problem

Today the three record-mode phases run strictly sequentially:

1. Phase 1 — emulate the demo, capture all entries into a `Vec`.
2. Phase 2 — for each captured entry, isolated re-run on the oracle ROM
   to compute the expected exit.
3. (Replay — separate pass on the decompile ROM.)

Even after opt 3 parallelizes phase 2, phase 1's main thread sits idle
once it finishes, then phase 2's workers spin up. The wall time is
phase1 + phase2.

For `verify-spam`'s 18600 in-game frames, phase 1 dominates wall time
because the emulation itself is fixed-cost serial work. While phase 1 is
running, the rayon worker threads provisioned for phase 2 are doing
nothing — we have unused parallelism.

## Approach

As soon as phase 1 captures an entry in `custom_cb`, dispatch it to a
worker thread pool that immediately begins its phase-2 isolated run.
By the time phase 1 finishes its last frame, most phase-2 work is
already complete.

Sketch:

```rust
// One-time setup in record():
let (tx, rx) = crossbeam::bounded::<RecordedEntry>(64);   // backpressure
let workers: Vec<_> = (0..rayon::current_num_threads())
    .map(|_| {
        let rx = rx.clone();
        let rom = rom.to_string();
        let session_dir = session_dir.to_string();
        std::thread::spawn(move || worker_loop(rx, rom, session_dir))
    })
    .collect();

// custom_cb pushes captured entries into the channel instead of
// (or in addition to) the in-memory Vec.

// After phase 1's run_frames_debugged() returns, drop tx; workers
// drain remaining entries; join all.
```

Each worker:
- Pulls an entry off the channel.
- Calls `isolated_run_to` (reusing its thread-local core, post-opt-6).
- Writes `entry.bin` + `exit.delta.bin` to disk.
- Loops.

Wall time becomes `max(phase1_total, phase2_per_entry × N / cores)`.

## Implementation notes

- **Capture path runs inside libmgba's per-instruction callback.** That
  callback is hot — any non-trivial work there slows phase 1 itself.
  The dispatch needs to be cheap: a bounded channel send, ideally
  lock-free (`crossbeam::channel`). If workers can't keep up, the
  channel fills and the callback blocks the emulator thread — natural
  backpressure, but it means phase 1 stops being independent of phase 2
  cost.
- **Dedup state.** Today dedup uses a thread-local `HashMap` inside
  `custom_cb`. With phase 2 running concurrently, dedup must still
  happen on the capturing thread (so we don't ship duplicates over the
  channel). No change needed — the dedup check sits in front of the
  channel send.
- **Memory bound.** Snapshots are ~288 KB. A 64-slot channel is ~18 MB
  in-flight, which is fine. Drop the in-memory `Vec<RecordedEntry>` —
  entries stream through.
- **Order of seq numbers.** Today seq numbers are assigned in capture
  order via a serial pre-pass. With streaming, assign via an atomic
  counter per fn_addr (or send `(rec, seq)` tuples through the channel
  with seq computed at send time). Determinism: capture order is
  deterministic, but worker completion order isn't — the seq number
  must come from the capture side.
- **Failure handling.** Today failed isolated runs are eprintln'd
  inline. With workers, collect failures into a shared Vec (Mutex or
  channel back to main) and print at end.
- **Depends on opt 6.** Without thread-local Core reuse, each worker
  pays `Core::new` on every iteration. Possibly tolerable, but the
  shape of the win is best with opt 6 in place first.

## Results

Workload: `make verify` (300-frame boot_idle, 2220 pairs). Stacked on
top of opts 03 + 06.

| | wall time (mean of 3 runs) |
|---|---|
| Original baseline | 20.08s |
| After opt 03 | 12.22s |
| After opt 03 + 06 | 9.83s |
| After opt 03 + 06 + 11 | 8.72s |
| **Δ from 06** | **-1.11s (-11%)** |
| **Δ from original** | **-11.36s (-57%)** |

All 2220 pairs still PASS.

Implementation notes from the actual change:
- Channel: `std::sync::mpsc::sync_channel::<RecordedEntry>(64)`. No
  new crate dependency — bounded backpressure via std.
- Pump thread spawned via `std::thread::spawn`. Inside, drives
  `rx.into_iter().par_bridge().for_each(...)` so rayon's existing
  worker pool consumes captures concurrently.
- Capture-side state changes:
  - New thread-local `RECORD_PER_FN_COUNT` replaces the old
    `RECORD_ENTRIES.iter().filter().count()` linear scan in the cap
    check. (Was quadratic over the session; now O(1) per capture.)
  - New thread-local `RECORD_SENDER`. `custom_cb` sends through it
    when present; falls back to `RECORD_ENTRIES` when not (for
    callers that don't install a pump — e.g. `track` mode).
- Seq numbers assigned worker-side via `Arc<Mutex<HashMap<u32, usize>>>`.
  Worker-race order is non-deterministic across runs, but replay only
  needs uniqueness within a run, not cross-run stability.
- Per-fn directory creation guarded by `Arc<Mutex<HashSet<u32>>>` —
  one `create_dir_all` per fn_addr instead of per entry.

The 11% saving on `make verify` is modest because phase 1 here is
only ~0.4s (300 frames at ~750 fps), so the pipeline can only overlap
0.4s of phase 1 with phase 2. On `verify-spam` (18600 frames, ~25s
of phase 1) the overlap window is ~60× bigger, so the relative win
should be much larger there — but unmeasured at this commit. To
benchmark:

```bash
time make verify-spam     # against the new baseline (opts 3+6+11)
```

Backpressure: the bounded 64-slot channel never visibly blocked phase 1
during `make verify` — phase 2 keeps up easily. For `verify-spam` with
its denser capture rate this should be re-checked.
