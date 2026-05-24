# Harness test cases

Each entry under this tree is one **test case** — a named scene from
the game that `make verify-state` can replay against the converted
ROM.

## Layout

Tests are grouped by category. Within a category, each test is a
flat `<name>.ss` + `<name>.input` + `<name>.md` triple by default.
A test that outgrows three files (e.g. needs alternate inputs,
screenshots, comparison dumps) graduates to its own subfolder.

```
tests/fixtures/demos/
    boot/                              ← category folder
        cold-boot.ss                   ← flat test
        cold-boot.input                ← optional input replay
        cold-boot.md                   ← freeform notes
    overworld/
        acdc-house.ss
        acdc-house.md
        acdc-square.ss
        sci-lab.ss
        sci-lab.input
    battle/
        megaman-vs-virus.ss            ← flat
        megaman-vs-virus.input
        chaud-vs-megaman/              ← graduated to folder
            state.ss
            inputs.input
            NOTES.md
    menu/
        chip-folder.ss
        navi-stats.ss
    network/
        bbs-list.ss
```

**Categories** (add new ones freely): `boot`, `overworld`, `battle`,
`menu`, `network`. Pick whichever matches the dominant code path the
scene exercises.

**Test name** is the path-relative slug — `battle/megaman-vs-virus`
or `overworld/acdc-house`. Use lowercase + dashes, no spaces.

## How to add a test

### Capture

1. Play to the scene in mGBA, using your normal `bn6f.gba` (SHA1
   matching `bn6f.sha1`).
2. `File → Save State → Save State 1` (or `F1`). mGBA writes
   `bn6f.ss1` next to the ROM.
3. Copy it into the right category folder:
   ```
   cp bn6f.ss1 tests/fixtures/demos/battle/megaman-vs-virus.ss1
   ```
   Any extension is fine (`.ss`, `.ss1`, `.ss5` — `make verify-state`
   accepts all of them). Pick whatever's convenient.

### Optional: input replay

Today the harness reads a binary u16-per-frame file. If you record
inputs in BizHawk (`.bk2`), drop it as `<name>.bk2` and ask for
conversion. If no input file is present the harness just idles from
the savestate for `STATE_FRAMES` frames — fine for verifying functions
that fire while *being in* a scene.

### Optional: notes

Drop a `<name>.md` next to the savestate documenting what the scene
is and what it tests:

```markdown
# battle/megaman-vs-virus

Captured: 2026-05-24, ACDCTown_01 random encounter
Player: MegaMan v1, full HP, no chips queued
Exercises: battle engine main loop, virus AI tick,
           sub_8000E3A weighted-random selector, GFXAnimStates ticking
```

### Run

```
make verify-state STATE_NAME=battle/megaman-vs-virus
```

Optional overrides:
- `STATE_FRAMES=900` — emulate more / fewer frames after loading the
  savestate (default 600).
- `STATE_FILE=...` — bypass the auto-resolver and point at a state
  file outside the tree (one-offs, throwaway scenes).
- `STATE_INPUT=...` — same for the input file.

The recorded per-call fixtures land in `tests/fixtures/calls/<NAME>/`
(auto-generated, gitignored entry snapshots, committed exit deltas).
The harness rebuilds that directory cleanly each run; your demo
sources are never touched.

### Listing

```
make list-demos
```
prints every test the harness can find, e.g.
```
battle/megaman-vs-virus
boot/cold-boot
overworld/acdc-house
```

## Graduating a test to its own folder

If one test needs more than the standard three files (multiple input
variants, screenshots, reference dumps, expected-output JSON,
whatever), move it into its own subfolder:

```
mv tests/fixtures/demos/battle/megaman-vs-virus.ss \
   tests/fixtures/demos/battle/megaman-vs-virus/state.ss
mv tests/fixtures/demos/battle/megaman-vs-virus.input \
   tests/fixtures/demos/battle/megaman-vs-virus/inputs.input
mkdir -p tests/fixtures/demos/battle/megaman-vs-virus
# now add whatever extra files you want inside the folder
```

The harness auto-detects which style is in use — folder mode is tried
first, flat mode is the fallback. No other config needed.

## Why use this instead of `boot_idle`?

`boot_idle` is the auto-generated cold-boot demo (`make verify`). It
exercises early init, RNG, asset copies, render setup — all the boring
leaves we converted first. To catch bugs in code that only runs during
gameplay (battle engine, chip handling, navi stats, event flags,
save-data encryption, network), the harness needs to *be in* those
scenes when it records. That's what these demos are for.
