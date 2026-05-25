# Reuse libmgba core across isolated runs

**Status:** implemented
**Impact:** ★ (small — overhead in setup, not the dominant cost)
**Effort:** low

## Problem

`isolated_run_to` builds a fresh `Core::new(rom)` per entry. That
pays:
- `mCoreFind` + `init` (parses ROM header, sets up structs)
- `setVideoBuffer` allocation
- `mCoreLoadFile` (re-reads the ROM file)
- `mCoreConfigInit` + `mCoreLoadConfig` + reset

…per entry. Replay does this O(pairs) times, and record-side does it
O(unique-entries) times. The savestate-load in `restore()` resets
most of the world anyway, so most of `Core::new`'s work is wasted on
the second-and-later use.

## Approach

Once optimization 03 is in (parallel isolated runs via rayon), each
worker thread can hold its own thread-local `Core` and reuse it
across iterations. Per-iteration cost becomes just the savestate
restore + step-to-LR.

Pseudocode:

```rust
thread_local! {
    static CORE: RefCell<Option<Core>> = RefCell::new(None);
}

fn isolated_run_to(rom: &str, entry: &Snapshot, target: u32) -> ... {
    CORE.with(|c| {
        let mut c = c.borrow_mut();
        if c.is_none() {
            *c = Some(Core::new(rom).expect(...));
        }
        let core = c.as_mut().unwrap();
        entry.restore(core.raw);
        // step until pc == target ...
    })
}
```

## Implementation notes

- Caveat: `Core` holds raw pointers from libmgba. The struct is `!Send`
  in the safe sense, but thread-local storage keeps it on one thread,
  so this is fine.
- ROM path is fixed for a given verify run — no need to re-parse.
- This becomes meaningful only with optimization 03 in place. Standalone,
  the savings are small (Core::new is fast relative to the actual
  emulation work).
- Watch the `_video_buf: Vec<u8>` lifetime — it lives in Core, and
  libmgba holds a pointer to it via setVideoBuffer. Keeping Core
  alive in the thread-local keeps the buffer alive too. ✓.

## Results

Workload: `make verify` (300-frame boot_idle, 2220 pairs across the
manifest). Stacked on top of opt 03.

| | wall time (mean of 3 runs) |
|---|---|
| Original baseline | 20.08s |
| After opt 03 | 12.22s |
| After opt 03 + 06 | 9.83s |
| **Δ from 03** | **-2.39s (-20%)** |
| **Δ from original** | **-10.25s (-51%)** |

All 2220 pairs still PASS.

Implementation notes from the actual change:
- `HashMap<String, Core>` keyed by ROM path, since phase 2 (oracle) and
  phase 3 (decompile) hit the same rayon worker thread within a single
  process. A given worker may need *two* Cores over its lifetime.
- Bounded leak: ≤ (num_cpus × 2) Cores leaked at process exit. libmgba
  deinit not invoked; for one-shot CLI process that's fine.
- The Core's raw pointer field needed to be captured into a local
  before the closure body, so the borrow-checker is happy with reading
  `raw` while holding `pool.get_mut(rom)`.

The 2.4s saved on top of opt 03 is consistent with `Core::new`'s
"parse ROM + mCoreLoadFile + init + reset" being ~1ms per call,
amortized over the 4440 isolated runs (2220 record-side + 2220
replay).
