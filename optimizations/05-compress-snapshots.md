# Compress stored snapshots

**Status:** proposed
**Impact:** ★★ (medium — disk + replay-load time, not record-emulation)
**Effort:** low

## Problem

Each entry snapshot on disk is ~288 KB (256 KB EWRAM + 32 KB IWRAM +
some KB savestate + 72 B regs). Even after dedup, `verify-spam`
sessions can have thousands of pairs → multi-GB session dirs.

Effect on wall time:
- **Record side:** filesystem writes — usually fine on a modern SSD.
- **Replay side:** every pair gets `fs::read` of the entry +
  exit-delta files before its isolated run. With thousands of files,
  this adds up. Page-cache helps after the first run, not the first.
- **Repo / git / backups:** multi-GB session dirs are awkward (they
  shouldn't be committed, but they're noisy in `du`).

## Approach

Wrap `Snapshot::write_to` and `Snapshot::read_from` in a zstd
encode/decode layer. Game RAM is mostly zeros + small structs, which
compresses 4–8× at zstd level 1 (which has near-memcpy throughput on
modern CPUs). EWRAM specifically often has huge zero runs.

Suggested API:
- `Snapshot::write_to_compressed(path)` / `read_from_compressed(path)`
- Switch the file extension (`.entry.bin` → `.entry.bin.zst`) so old
  and new sessions are distinguishable; or detect via magic bytes on
  read.

## Implementation notes

- Add `zstd` crate. It links a tiny static lib; not invasive.
- Level 1 is the right choice: ~500 MB/s encode, ~1.5 GB/s decode,
  similar ratio to higher levels on this kind of data.
- Compression cost on record side is < memcpy of the same buffer, so
  no record-side slowdown to worry about.
- Replay-side decode is fast enough that it's net-positive vs disk
  read of larger uncompressed files on any modern disk.
- ExitDelta files (`*.exit.delta.bin`) are already deltas — smaller
  than entry files. Worth compressing too but smaller absolute win.

## Results

_To fill in post-implementation._ Useful measurements:

- Total `tests/fixtures/calls/spam_start10s_b5m/` size: before/after.
- `make verify-spam` wall time: before/after. The replay phase's
  pair-load time should drop; record phase should be roughly equal.
- Mean compression ratio across the entry files.
