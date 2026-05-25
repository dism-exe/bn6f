# Hash-dedup entry snapshots

**Status:** implemented
**Impact:** ★★★ (high — dominant cost for input-driven sessions)
**Effort:** low

## Problem

A function called every frame with identical state (regs + EWRAM +
IWRAM) was being captured anew on every call up to `RECORD_PER_TARGET_CAP`
(50/target). For `verify-spam` (18600 frames + spam input), this filled
the cap with N copies of "same input, same expected output" pairs that
all test the same code path. Each duplicate cost: ~288 KB snapshot,
one isolated re-run for expected exit, one replay isolated re-run.

## Approach

In `custom_cb`, after `Snapshot::capture(core)`, hash
`(regs, ewram, iwram)` with SipHash and check against a per-target
`HashSet<u64>`. If the hash is already in the set, drop the entry and
increment a skip counter.

Savestate bytes intentionally excluded from the hash: they include
timer/scheduler/prefetch state that drifts every frame, which would
defeat dedup. The function's *view* at entry — what the C reimpl will
see — is regs + EWRAM + IWRAM.

## Implementation notes

- Default on. `--no-dedup` flag disables. Makefile knob `VERIFY_DEDUP=0`.
- Cap-50 now counts uniques (since dups never get pushed).
- Hash cost (~280 µs for 288 KB via SipHash) is on the same order as
  capture cost; capturing-then-hashing is fine.
- False-dedup risk: a function whose behavior depends on libmgba's
  internal state beyond what's in regs+memory (e.g. reads timer
  registers directly via MMIO) could theoretically have different exits
  for "same" inputs. Rare in game logic; haven't seen it.

## Results

Implemented in commit alongside the user's session. End-to-end timing
of `make verify-spam` was not re-measured at this commit because the
target was added before a working in-game state existed to measure
against; informal observation by the user during interactive testing
confirmed the dedup count was substantial (thousands skipped) and the
session-dir disk usage dropped accordingly.

If you re-measure later, populate this section with before/after wall
times and the `(N dropped by dedup)` line from the record-phase output.
