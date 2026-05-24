# Ticket: Correctness verification (ASM ↔ C equivalence)

**Status:** Open
**Created:** 2026-05-20

## Description

We need a way to confirm each C reimplementation behaves identically to the
ASM function it replaces, without building out a full QA framework for the
whole game. Trial-and-error play-testing scales poorly as Phase 2+ expands
beyond the three Phase 1 spawn helpers.

## Discussion

### Option A — Per-function differential harness (testing)

Build a small test ROM that calls both the original ASM (`sub_8003400`) and
the C version (`c_sub_8003400`) against a scratch copy of the touched globals
with the same crafted inputs, then `memcmp`s the result. Drive headlessly via
BizHawk Lua under `xvfb-run`; pass/fail in one command.

- **Pro:** fast per-function feedback; no game-play needed.
- **Con:** doesn't catch integration bugs (side effects on globals you didn't
  model, timing-sensitive paths).

### Option B — Bounded symbolic equivalence (formal)

Load `bn6f_orig.elf` and `bn6f.elf` in angr (or Triton / Binary Ninja).
Symbolically execute the original ASM and the C implementation with the same
symbolic initial state (registers + a modeled list in memory). Bound loops
to length N. Ask Z3: "is there any input where the resulting memory state
differs?" — UNSAT = proven equivalent up to N. Translation-validation style:
verify each pair once, no whole-ROM re-verification.

- **Pro:** for pure-ish leaf functions (linked-list ops, math, decoders),
  cheap and rigorous.
- **Con:** degrades on unbounded loops without invariants, heavy pointer
  aliasing, and functions touching lots of globals. Hand-written ASM here
  often touches scattered globals, so the audit cost ("enumerate every global
  read/written") is real. Note that enumeration is work you'd do anyway to
  write the C correctly — formal methods only make it rigorous, not new.

### Option C — Concrete differential with memory snapshot

In a test ROM, snapshot all of EWRAM+IWRAM, call original ASM, snapshot
again; reset state, call C version against the same starting snapshot, diff.
Any global the ASM touched shows up automatically — no enumeration step.

- **Pro:** scales naturally with messiness of the function; no manual global
  audit.
- **Con:** still need *inputs* — i.e. realistic starting state. Identifying
  "one situation each function is used in" by hand doesn't automate.

### Option D — Fuzz + hook-and-record (input generation, automated)

Two complementary input sources, neither of which requires identifying real
game scenarios by hand:

1. **Fuzz with structural constraints.** For leaf functions, "input" isn't a
   game scenario, it's whatever memory/registers the function reads.
   Generate random linked lists in a sandbox region (4-byte-aligned
   pointers, length 0..N, valid sentinel) and run both versions. Filter out
   inputs where the original ASM doesn't terminate cleanly — divergence on
   inputs the ASM was never designed for is a non-bug.

2. **Hook-and-record.** For functions reading scattered globals you don't
   fully understand: instrument BizHawk (Lua `event.on_bus_exec` on entry
   address) to dump full register state + dereferenced memory every time
   the function is naturally invoked during normal play. ~30 min of play
   harvests hundreds of real call sites; save as test vectors; replay is
   fully automated forever after. One-time human cost.

## Refined direction (after further discussion)

### Constraint: must be fully automatable

Option D.2 (hook-and-record during normal play) is **rejected** as the
primary corpus source because it requires manual gameplay per function.
That cost cannot be offloaded to an LLM agent and does not scale to the
hundreds of functions in the ROM.

The remaining options all need an *input source* that's realistic but
machine-generated.

### TAS-seeded corpus

Use a tool-assisted speedrun (TAS) movie as the source of game-state
diversity. A TAS is deterministic, exhaustive (or near-exhaustive — covers
huge swaths of the engine), and authored by a third party, so the human
cost approaches zero.

#### First idea (rejected): periodic save states + force-call

Sample save states at a regular cadence across the TAS, build one
universal corpus, then verify any function `F` by setting PC to `F`'s
entry from each save state and diffing end-state.

Problem: the save state has whatever registers and stack the game
happened to have at that frame, which is almost never what `F`'s caller
would set up. Most runs hit "garbage context" — both versions crash the
same way on nonsense input. That's still an equivalence check, but a
weak one: it verifies the C and ASM both fail identically on inputs the
function was never designed for, while telling us little about behavior
on real inputs. Rejected.

#### Adopted: entry/exit pair recording during TAS replay

During TAS playback, hook **every function entry address** in the symbol
table. On each hit, snapshot the entry state (registers, stack pointer,
stack bytes, EWRAM+IWRAM). Also hook the corresponding return; snapshot
exit state. Bucket all snapshots by function.

The result is a per-function corpus of concrete `(entry → exit)` pairs,
every one a real call site the game actually executed.

Verification of `c_F` becomes purely concrete:

1. For each `(entry, exit)` pair captured for `F`:
   - Set machine state to `entry`.
   - Run `c_F` to completion.
   - End-state must equal `exit` exactly.
2. All pairs must match.

This dissolves the problems the universal-corpus approach left open:

- **No garbage context.** Every entry is by construction a context the
  game actually produced.
- **No "same failure" semantics to define.** The ASM produced a specific
  concrete exit (return value, register file, memory diff) — or it
  didn't return. Either way, the recording captures it, and `c_F` must
  reproduce it exactly. Failure-mode equivalence is implicit.
- **No step-bound ambiguity.** Either `c_F` reaches the recorded exit
  state, or it doesn't.
- **No touched-memory enumeration up front.** Static snapshots of full
  RAM capture whatever the ASM read or wrote.

#### Storage and dedup

A function called 10K times during a TAS would naively produce ~800MB
of snapshots (80KB RAM per call). Two mitigations, in order of
preference:

1. **Dedup by entry-state hash.** Hash entry state; only store
   first-seen snapshots. For most functions, distinct states are a
   small fraction of total calls.
2. **Static-analyze the touched memory footprint.** Scan the ASM,
   identify read/write regions, snapshot only those bytes plus
   registers. Smaller per-call but more setup. Use only if dedup
   isn't enough.

Start with hash-dedup; fall back to footprint analysis if the corpus
actually blows up for some function.

#### Remaining limitation: TAS coverage

Functions the TAS never invokes — unused cutscenes, untaken story
paths, debug code, certain enemy AI branches — get zero corpus entries.
For those, fall back to:

- **Multiple TAS runs.** If a 100% TAS exists in addition to any%, use
  both. Different routes hit different code paths.
- **Fuzz-from-recorded-entry.** Take a TAS-captured entry state for `F`,
  perturb input fields, run both ASM and C, diff exit state. Probes
  behavior beyond what the TAS happened to exercise.
- **Bounded symbolic equivalence (angr).** Only for pure-leaf functions
  where it's cheap.

### Desync detection as a separate cheap signal

In parallel: run the same TAS through the decompile-ROM build and through
the SHA-matching `bn6f_orig.elf` build, capturing per-frame state on
both. Any divergence at frame F is a real bug (or a benign reorder to
whitelist). This is independent of the universal corpus and catches
problems mid-execution rather than only at function boundaries — gives a
fast "did I break something" signal during development.

### Layered verification stack

| Layer | What it proves | Cost | Scope |
|-------|---------------|------|-------|
| TAS frame diff vs orig | Whole-ROM behavior unchanged on TAS path | Cheap, runs in CI | All code touched by TAS |
| Entry/exit pair replay | Function `F` reproduces every real call site exactly | Per-function: seconds-to-minutes | Functions invoked during TAS |
| Fuzz-from-recorded-entry | Behavior coverage beyond TAS hits | Optional, per-function | Functions with low TAS coverage |
| Bounded symbolic equivalence (angr) | Proof of equivalence ∀ inputs ≤ N | One-off setup; cheap on pure leaves | Leaf / pure-ish functions only |

Build top-down: TAS frame diff first (catches obvious breakage), then
entry/exit pair harness, then fuzz layer, then formal proof
opportunistically.

### Input source decision

No published TAS exists for MMBN6F (Falzar). Investigation also showed:

- `.bk2` is the TASvideos community format (BizHawk's native movie
  format; wraps the mGBA core internally so emulation accuracy is
  unchanged from standalone mGBA).
- `.vbm` (VBA-rerecording) and `.mvl` (standalone mGBA) are also used in
  the wild but `.bk2` dominates published TAS submissions.
- A Cybeast Gregar TAS exists (Japanese, by "hnw" on Nico Nico) but is
  not directly usable: cart-specific bytes differ, replay would desync,
  and we'd have to chase down the movie file.
- No published MMBN6 TAS in any format on TASvideos.

**Decision:** seed the corpus with a self-recorded BizHawk `.bk2` demo
of MMBN6F gameplay. Bounded one-time manual cost (a few hours of
focused play touching main story, battles, menus, dialogue), native
format, zero conversion or desync risk. If a community TAS later
becomes available we can layer it in for additional coverage. This
replaces the earlier "find a published TAS" plan.

### Other caveats to validate before committing

- **Instrumentation must not desync** `.bk2` replay. BizHawk Lua hooks
  read state without perturbing timing, so should be fine, but worth
  verifying by running the demo with hooks armed and confirming
  completion to the same final frame.
- **Demo won't hit every function.** A single playthrough skips
  optional content, debug paths, untaken story branches, certain enemy
  AI branches. Fuzz-from-recorded-entry plus additional recorded demos
  fill these gaps.
- **Return-point identification.** Hooking function exit is harder than
  function entry — ARM/Thumb functions may have multiple `bx lr` /
  `pop {..., pc}` sites. Cleanest: install a one-shot
  `event.on_bus_exec` callback at the LR captured at entry (return-to
  address is determined per-call from the caller).
- **Harness self-validation.** Must feed the harness the original ASM as
  both "original" and "modified" sides and confirm it reports
  equivalence. Catches bugs in the recorder, diff logic, or replay
  before any real port is judged.
- **Execution-callback density.** Measured 2026-05-23; see
  "Emulator-choice benchmark" section below. Summary: BizHawk's
  per-hook dispatch is O(1) and stays flat (~51 fps) up to 5K armed
  hooks. mGBA standalone scales much worse (~2.7 fps at 5K) because
  its 256-bit bloom filter saturates and degrades to O(N) per
  instruction. BizHawk is the right choice for hook-everything-at-once
  replay.

### Emulator-choice benchmark (mGBA standalone vs BizHawk)

The earlier preference for BizHawk was based on API maturity and the
`.bk2` ecosystem; before committing to it, we benchmarked dispatch cost
against mGBA standalone (0.11 dev, AppImage). The question was whether
mGBA's bare C core could run the catalog harness meaningfully faster
than BizHawk's wrapped + .NET-interop core.

**Methodology.** For each emulator, arm N execute-callbacks at
addresses spaced through the ROM (`0x08000100 + i*0x100`), advance K
frames with `bn6f.gba` running, measure wall time. Both run headless
under `xvfb-run`. mGBA driven by `callbacks:add("frame", ...)`
because `emu:runFrame()` from script bypasses the debugger entirely
(see "Pitfall" below). BizHawk driven by `emu.frameadvance()` loop
inside Lua. Scripts: `tools/mgba_bench.lua`, `tools/bizhawk_bench.lua`.

**Results.**

| N hooks | mGBA fps | BizHawk fps |
|--------:|---------:|------------:|
|       0 |    >300* |          81 |
|     100 |    >300* |          53 |
|    1000 |     11.5 |          52 |
|    5000 |      2.7 |          51 |

`*` mGBA's `os.time()` has 1-second resolution; "<1 sec" results are
floor-bounded but actually much faster.

**Source-level explanation.**

- **mGBA** (`src/arm/debugger/debugger.c`): uses a 256-bit bloom filter
  (4 × 64-bit, hashed via `(pc >> (4j+1)) & 0x3F`) to short-circuit the
  breakpoint check. Below a few hundred hooks the bloom is effective and
  dispatch is essentially free. At ~1K hooks the bloom saturates and
  starts returning "maybe" for every executed PC, forcing the per-
  instruction O(N) linear scan of `ARMDebugBreakpointListSize`. At 5K
  hooks every instruction does ~5000 address comparisons.

- **BizHawk** (`MGBAMemoryCallbackSystem.RunExecCallback`): uses a
  `Dictionary<uint, MemoryCallbackDelegate>` keyed by PC. One managed
  callback per executed instruction does an O(1) hashtable lookup; if
  miss, returns immediately. Per-instruction cost is dominated by the
  managed↔native trampoline, ~12 ms/frame baseline, and is flat in N.

**Pitfall discovered:** mGBA's scripted `emu:runFrame()` calls
`mCore::runFrame` directly, which **does not consult the attached
debugger module** — so script-driven frame advances run with all
breakpoints inert. The bug surfaced as `fire_count = 0` in a sanity
test where breakpoints were registered at known-executing addresses but
never triggered. Workaround for mGBA: drive frames via
`callbacks:add("frame", fn)` and let the emulator's mainloop advance
frames; then breakpoints fire. Default mainloop is also throttled to
60 fps via `audioSync` + `videoSync` — must launch with
`-C videoSync=0 -C audioSync=0` to unthrottle. (BizHawk doesn't have
this issue: `emu.frameadvance` routes through the debugger correctly.)

**Implication for the catalog plan.** A 10-minute demo is 36000 frames.
At 5K simultaneously armed hooks:
- mGBA single-pass: 36000 / 2.7 = ~3.7 hours per replay.
- mGBA chunked (100 hooks/pass × 50 passes): ~50 min total best case.
- BizHawk single-pass: 36000 / 51 = ~12 min per replay.

BizHawk wins clearly. Chunking mGBA is engineering work that just
recovers a slower path. The earlier preference for BizHawk is upheld
on benchmark grounds in addition to API/ecosystem grounds.

### Tooling status

- `bin/BizHawk-2.11.1-linux-x64.tar.gz` — BizHawk 2.11.1 Linux release
  (92.6M, SHA256 `38c9c12287e337a0a6923fd527767c853457d61d71e7d8ad1a772d64ce8bc93f`).
  Wraps the mGBA core for GBA emulation, so accuracy is identical to
  standalone mGBA, but exposes the much more mature BizHawk Lua API
  (`event.on_bus_exec`, `event.on_bus_write`, `memory.read_*` with
  per-domain addressing for EWRAM/IWRAM/ROM, `savestate.save/load`,
  `emu.getregister("R0".."R15")`, `client.exit()`, `movie.*` for `.bk2`
  replay control).
- `bin/bizhawk/` — extracted dir, 150M, gitignored. Launcher:
  `bin/bizhawk/EmuHawkMono.sh [rom]`.
- Runtime deps: `mono-complete` (apt — stock Ubuntu 6.8.0 confirmed
  sufficient), `libopenal1`, `liblua5.4-0`, `lsb-release`. Headless
  usage: prefix with `xvfb-run -a`.
- `tools/bizhawk_probe.lua` — smoke test demonstrating the working
  pipeline (loads bn6f.gba, advances 240 frames, reads PC, exits).

## Checklist

- [x] Emulator with execution-hook + Lua API → `bin/BizHawk-2.11.1-linux-x64.tar.gz`
- [x] Smoke-test Lua scripting API actually works as documented →
      `tools/bizhawk_probe.lua` boots bn6f.gba, advances 240 frames,
      reads R15, exits cleanly under `xvfb-run`
- [x] Execution-callback density test → see "Emulator-choice
      benchmark" above. BizHawk holds ~51 fps at N=5K hooks (O(1)
      dictionary dispatch). mGBA standalone tested for comparison;
      collapses to 2.7 fps at N=5K (bloom filter saturation). BizHawk
      confirmed as the right choice.
- [x] BizHawk external-tool plugin for headless movie recording →
      `tools/MovieAutoRecord/`, `bin/bizhawk/ExternalTools/MovieAutoRecord.dll`,
      `make plugin` to rebuild. Sets `BIZHAWK_RECORD_TO=path.bk2` env
      var, plugin auto-starts a recording on launch, BizHawk finalizes
      the file on exit. `make record BK2=...` runs the full pipeline.
      Movie playback (`--movie=`) still requires a GBA BIOS due to
      BizHawk's deterministic-recording check — recording works
      fine without it.
- [ ] Record initial MMBN6F `.bk2` gameplay demo covering story, battles,
      menus, dialogue (one-time manual seed)
- [ ] Prototype BizHawk headless replay + per-frame state diff vs
      `bn6f_orig.elf` build (desync detector)
- [ ] Define entry/exit snapshot format (registers, SP, stack window,
      RAM regions, hashing scheme)
- [ ] Build entry-hook recorder: arm hooks at every function entry from
      the symbol table during TAS replay; dedup by entry-state hash
- [ ] Build exit-hook strategy: per-call one-shot `event.on_bus_exec`
      callback on entry-captured LR
- [ ] Build per-function replay harness: load entry state, run `c_F`,
      compare exit state to recording
- [ ] Harness self-validation: ASM-vs-ASM must report equivalence
- [ ] Optional: static touched-memory footprint analyzer (only if
      dedup-by-hash doesn't keep storage manageable)
- [ ] Optional: fuzz-from-recorded-entry for low-coverage functions
- [ ] Optional: angr-based bounded symbolic equivalence for pure-leaf
      functions
- [ ] Wire chosen pipeline into `make verify`

---

*Captured 2026-05-20 from design discussion. Iteratively refined the
same day: first dropping manual hook-and-record for being unautomatable,
then dropping the universal-save-state corpus for producing too much
garbage-context noise, then settling on TAS-driven entry/exit pair
recording. Updated 2026-05-23 to switch the emulator frontend from
standalone mGBA dev to BizHawk 2.11.1 (which wraps the same mGBA core
but has the more mature Lua API and the dominant TASvideos movie
format `.bk2`). Also 2026-05-23: benchmarked mGBA vs BizHawk dispatch
under high hook density (N=5K); BizHawk wins by ~19× because its O(1)
dictionary-based dispatch scales flat while mGBA's bloom filter
saturates and degrades to O(N) per instruction. See "Emulator-choice
benchmark" section.*
