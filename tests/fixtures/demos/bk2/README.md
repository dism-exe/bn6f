# BizHawk BK2 movies

This directory holds .bk2 movie files captured in BizHawk's mGBAHawk
core, plus their extracted artefacts for use by `bn6f-track`.

## What's a BK2 file?

A self-contained zip with:

- `Header.txt`        — metadata (game / platform / BIOS hash)
- `Input Log.txt`     — one line per frame in BizHawk's text format
- `Core.bin.zst`      — zstd-compressed mGBAHawk savestate (frame 0)
- `SyncSettings.json` — sync options that were active during recording
- `Framebuffer.bmp`   — visual reference (the last rendered frame)

Frame-0 + savestate + per-frame input is enough to replay the whole
recording, so a single .bk2 is a portable, hash-pinned demo source.

## Extracting

```
tools/bk2_extract.py path/to/movie.bk2 [--out-prefix tests/fixtures/demos/<cat>/<name>]
```

Writes three siblings next to `--out-prefix` (or alongside the .bk2 if
omitted):

- `<name>.input` — packed u16 LE per frame (the format bn6f-track's
  `--input` already understands)
- `<name>.ss`    — raw decompressed `Core.bin` bytes
- `<name>.md`    — provenance + usage notes derived from the bk2's
  `Header.txt`

Pass `--no-state` to skip the savestate when you only want the input.

## Savestate compatibility caveat

BizHawk 2.11+ ships an mGBA fork whose savestate format is one version
ahead of the libmgba 0.10 we link against — so `mCoreLoadStateNamed`
rejects the `.ss` we extract.  `bk2_extract.py` sniffs the header and
prints a `NOTE:` when this is the case.

Workaround: pretend the bk2 is "from boot" by skipping `--state` —
the input log is still meaningful from frame 0 because the BK2's
SkipBios setup just hops past the BIOS animation, and most input
streams stay valid against a fresh boot too.  Concretely:

```
bn6f-track record bn6f.gba <frames> tools/function_symbols.txt \
    <session_dir> --input <name>.input <addresses…>
```

verified against the .ss-less path with the included `intro.bk2`:
145/145 ZeroFillByWord / ZeroFillByEightWords / IsScreenFadeActive
pairs over the first 600 frames.

## Files

- `intro.bk2`                   — short opening sequence (~6.2k frames)
- `intro_to_end_tutorial.bk2`   — full tutorial playthrough (~16.4k frames)
