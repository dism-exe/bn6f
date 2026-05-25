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

- `<name>.input` — packed u16 LE per frame (matches `--input` parser)
- `<name>.ss`    — raw decompressed `Core.bin` bytes (BizHawk-wrapped,
  prefix is auto-stripped by bn6f-track's snapshot loader)
- `<name>.md`    — provenance + per-file usage notes

Pass `--no-state` to skip the savestate when you only want the input.

## Savestate loading (vendored libmgba 0.11)

bn6f-track links against the libmgba 0.11 we vendor under
`tools/libmgba/`.  Its savestate loader can read every mGBA savestate
version from 0.7 through 0.11 inclusive.  BizHawk's mGBAHawk wraps
the standard mGBA state with a 4-byte prefix; the loader sniffs the
header and strips it transparently, so the extracted `.ss` works
straight through `--state` with no manual conversion.

```
bn6f-track record bn6f.gba <frames> tools/function_symbols.txt \
    <session_dir> --input <name>.input --state <name>.ss \
    <addresses…>
```

Smoke-tested with `intro.bk2` over 60 frames of `ZeroFillByWord`:
50 / 50 pairs pass.

## Files

- `intro.bk2`                   — short opening sequence (~6.2k frames)
- `intro_to_end_tutorial.bk2`   — full tutorial playthrough (~16.4k frames)
