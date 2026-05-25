# Parallelize bk2 replays

**Status:** proposed
**Impact:** ★★★ (high — for `make verify-bk2` specifically)
**Effort:** low

## Problem

`make verify-bk2` (Makefile target around line 363) loops every
`tests/fixtures/demos/bk2/*.bk2` and runs `verify-state` for each
**sequentially** via a shell `for` loop. Each `verify-state`
invocation is its own bn6f-track process working on a disjoint
session-dir — fully independent.

Even though each individual `verify-state` already parallelizes its
*internal* replay phase via rayon, the outer loop bottlenecks the
whole target to (sum of single-bk2 times), which can be 7+ minutes
end-to-end if you have multiple long bk2s.

## Approach

Replace the serial shell `for` loop with `xargs -P $(nproc)` or
`make -j`. The bk2 enumerations write to distinct session dirs
(`tests/fixtures/calls/bk2/$STEM`) and distinct stdout, so no
serialization needed.

Quick xargs version:

```makefile
verify-bk2: track-build $(FN_SYMS)
	@find $(DEMOS_ROOT)/bk2 -name '*.bk2' -printf '%f\n' \
	  | sed 's/\.bk2$$//' \
	  | xargs -P $(shell nproc) -I{} \
	      $(MAKE) --no-print-directory verify-state STATE_NAME=bk2/{}
```

(Frames-from-input-size computation moves into `verify-state`'s
auto-resolver, where it can stay.)

## Implementation notes

- Each parallel `verify-state` spawns its own `bn6f-track` process,
  and each of those internally uses rayon. On a 16-core box with
  2 bk2s running in parallel, that's 8 threads × 2 = 16 — fine.
  But on 32 cores with 8 bk2s, you'd get 256 threads competing,
  which is bad. Solve by clamping the outer `-P` to something like
  `$(shell echo $$(($$(nproc) / 4)))` so each inner replay gets ~4
  cores. Tune by measurement.
- Memory: each `record` phase keeps captured entry snapshots in
  memory (~288 KB × thousands). Running N in parallel uses N times
  the memory. For verify-bk2's currently-2 bk2s this is fine;
  reassess if many more bk2s get added.
- The make output interleaves. The existing per-bk2 banner is enough
  to disambiguate, but rendering becomes garbled. Mitigate with
  `$(MAKE) -j1 verify-state ... > $(LOG_FILE) 2>&1` per worker, or
  use `xargs --process-slot-var` to pin each to a file, or just
  accept the interleaving.

## Results

_To fill in post-implementation._ Useful measurements:

- `time make verify-bk2` before vs after.
- For each individual bk2, `time make verify-state STATE_NAME=bk2/X`
  should be unchanged. The win is purely from running them
  concurrently.
- Note the other Claude's earlier observation: verify-bk2 went from
  ~45s (snapshot-style replays) to ~7.5 min when bk2s were added.
  Parallelism is the most likely path back to a tolerable number.
