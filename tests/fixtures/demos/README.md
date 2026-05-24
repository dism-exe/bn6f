# Harness test cases

Each subfolder here is one **test case** — a named scene from the game
that `make verify-state` can replay against the converted ROM.

## Layout

```
tests/fixtures/demos/<NAME>/
    state.ss           required: mGBA savestate of the starting scene
    inputs.input       optional: joypad mask per frame (u16 little-endian)
    NOTES.md           optional: 1–3 line description of what this scene
                                 exercises and where you captured it from
```

`<NAME>` should be a slug — lowercase, dashes/underscores, no spaces.
Examples I can imagine adding: `acdc-overworld`, `battle-megaman-vs-virus`,
`chip-folder-menu`, `pet-menu-idle`, `bbs-request-screen`.

## How to add a test case

1. **Play to the scene** in mGBA, using your normal ROM (`bn6f.gba`
   with SHA1 matching `bn6f.sha1`).
2. **Save State** in the GUI (`File → Save State → Save State 1`, or
   `F1`). mGBA writes `bn6f.ss1` next to the ROM by default. Copy
   that into a new `tests/fixtures/demos/<NAME>/state.ss`.
3. (Optional) **Record inputs** from the same starting state. Today
   the harness reads a binary u16-per-frame format; if you have a
   BizHawk `.bk2` instead, drop it as `<NAME>/inputs.bk2` and ask
   me to convert. If you don't supply an input file, the harness
   just idles from the savestate for `STATE_FRAMES` frames (which is
   plenty for verifying functions that fire while *being in* a scene
   — overworld idle, paused menu, chatbox open, etc.).
4. **Write a NOTES.md** so future-us remembers what it tests:
   ```
   # acdc-overworld
   Captured: 2026-05-24, after 03_01_intro cutscene
   Player position: outside Lan's house
   Exercises: render_800172C per-frame, ProcessGFXAnims, CurFrame ticking,
              event flags read on overworld update
   ```
5. **Run it**:
   ```
   make verify-state STATE_NAME=acdc-overworld \
       STATE_FILE=tests/fixtures/demos/acdc-overworld/state.ss \
       STATE_INPUT=tests/fixtures/demos/acdc-overworld/inputs.input \
       STATE_FRAMES=600
   ```
   (Omit `STATE_INPUT=` if there's no input file.)

The recorded per-call fixtures land in
`tests/fixtures/calls/<NAME>/` (auto-generated, gitignored entries).
Future `make verify-state STATE_NAME=<NAME> ...` runs will overwrite
that directory cleanly — your `demos/<NAME>/` sources are never
touched.

## File-format notes

**`state.ss`** — raw libmgba savestate, exactly the bytes mGBA's GUI
writes when you hit Save State. Tied to a specific ROM SHA (the
harness will refuse to load a state that doesn't match the loaded
ROM). The harness's `bn6f-track record --state ...` also accepts our
own BNSS-wrapped `.entry.bin` files for testing, but for hand-curated
demos use the raw mGBA format.

**`inputs.input`** — binary, one little-endian `u16` per frame
representing the GBA joypad bitfield. See `tools/bn6f-track/src/main.rs`
`load_input_file` for the exact layout. If you want to author one by
hand, ask first — it's not human-readable. Better path: record a
BizHawk `.bk2` movie of the same scene and ask for conversion.

**`NOTES.md`** — freeform, just for humans.

## Why use this instead of `boot_idle`?

`boot_idle` is the auto-generated cold-boot demo (`make verify`).
It exercises early init, RNG, asset copies, render setup — all the
boring leaves we converted first. To catch bugs in code that only
runs during gameplay (battle engine, chip handling, navi stats,
event flags, save-data encryption, etc.), the harness needs to *be in*
those scenes when it records. That's what these demos are for.
