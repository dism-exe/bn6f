# Frameskip / headless rendering

**Status:** implemented (inconclusive — no measurable speedup on
workloads tested)
**Impact:** ★★★ (predicted — actual unverified)
**Effort:** low

## Problem

`Core::new` allocates a 256×160×4 video buffer and `setVideoBuffer`s
it. Every call to `mDebuggerRunFrame` runs the full GBA PPU pipeline:
per-scanline rendering of all four BG layers, sprite compositing for
all six display modes, blending, mosaic. The buffer gets filled. We
never look at it.

## Approach

Set `core.opts.frameskip = 9` before `mCoreLoadConfig`. libmgba's
`_GBACoreLoadConfig` (`gba/core.c:362`) propagates this into
`gba->video.frameskip`, and `gba/video.c:183, 213` gate
`drawScanline` and `finishFrame` on `frameskipCounter <= 0`. With
frameskip=9, the renderer runs 1 frame in 10.

Game timing is **unaffected**: frameskip gates only the rendering
path, not VBlank IRQ, vcount ticking, or game-side frame callbacks.

## Implementation notes

- **Order matters.** Setting `opts.frameskip` *after* `mCoreLoadConfig`
  is a no-op — the opts→video propagation happens *during* LoadConfig,
  not on reset. First attempt did this and saw zero effect.
- The config-key path (`mCoreConfigSetIntValue(config, "frameskip", 9)`)
  also doesn't work in libmgba 0.11 — that key isn't mapped into
  `opts.frameskip` by the generic config-map step we can call from the
  binding. Direct field write is the path that works.
- Controllable via `BN6F_TRACK_FRAMESKIP` env var (default 9, set to 0
  to disable).

## Results

**Workloads measured (no speedup):**

| Workload | frameskip=0 | frameskip=9 |
|---|---|---|
| `smoke 3000` (BIOS-bound) | 727–744 fps | 728–759 fps |
| `smoke 20000` (BIOS-bound, PC stuck at 0x3A8) | 752 fps | 753 fps |
| `make verify` (300 frames boot_idle, 2220 pairs) | 20.06s | 20.52s |

**Why no measurable savings on tested workloads:** in all three cases
the game is in early-boot territory where `DISPCNT.forced-blank` is
set, meaning the PPU isn't doing per-scanline work even at frameskip=0.
There is nothing for frameskip to skip.

**Workload that would actually exercise the PPU and validate this:**
`make verify-spam` (18600 frames, deep into the game with rendering
active). Not yet measured because of test-iteration latency. To
benchmark:

```bash
time BN6F_TRACK_FRAMESKIP=0 make verify-spam
time make verify-spam        # default frameskip=9
```

If the second is materially faster, this opt is real and we keep it
on. If not, it's a no-op and we can revert (the change is two lines).
The downside of leaving frameskip=9 on by default is zero — no path
reads the video buffer — so until measured otherwise the default
stays on.
