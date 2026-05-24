# Ticket: Emulator requirements for the decomp verification harness

**Status:** Open (active direction)
**Created:** 2026-05-23
**Supersedes parts of:** concern 09 (the BizHawk tooling decisions)

## Description

After building a functioning BizHawk-based prototype of the autonomous
testing harness (recorder plugin, function tracker, headless launch
wrapper) we have enough hands-on experience to articulate what the
*ideal* emulator looks like for this project — and where BizHawk falls
short. This ticket captures those requirements and the decision to
migrate to a libmgba-direct Rust tool.

## What the harness actually needs

Stripped to the essentials, the verification loop is:

1. Run the ROM deterministically.
2. At every function entry: snapshot machine state (registers, stack
   pointer, stack window, EWRAM/IWRAM regions). Bucket by function.
3. At every function exit (LR-driven one-shot): snapshot again. Pair
   with entry.
4. Replay each captured entry state through the C reimplementation;
   compare the produced exit state byte-for-byte against the recorded
   ASM exit.

Everything else — GUI windows, movie file formats, controller mnemonic
tables, firmware databases, audio sync, menu items, "casual vs TAS"
profiles — is incidental complexity that we have to fight against to
get to the actual primitives.

## Lessons from the BizHawk prototype

Concrete problems we hit, in roughly the order we hit them:

1. **GUI-first design.** BizHawk is fundamentally a desktop application
   that grudgingly tolerates scripting. Headless recording required
   building a C# external-tool plugin, registering its SHA-512 in a
   trust list (case-sensitive, uppercase), using reflection to reach
   private MainForm fields, and bypassing `MainForm.StartNewMovie`
   because its `RebootCore()` call deadlocked the UI thread reentrantly.

2. **Multiple modal-dialog hazards under xvfb.** Each one had to be
   independently solved:
   - "Confirm Loading" untrusted-plugin dialog (trust list, case-fix).
   - "Confirm Load New ROM" follow-up (same trust mechanism).
   - "A BIOS is required for deterministic recordings" on movie load
     (still unsolved without a real GBA BIOS file).

3. **Three-layer scripting stack.** Lua (the public API) + C# plugin
   (for things Lua can't reach) + shell wrapper (for env vars, xvfb,
   timeouts). Each layer with its own quirks and a different way to
   handle errors.

4. **No public movie-record API.** `IMovieApi` exposes `Stop`, `Save`,
   `PlayFromStart` — but no `Record`. The only way to begin recording
   programmatically is via reflection into `MainForm.MovieSession`,
   `MovieService` constructors, `QueueNewMovie` + `RunQueuedMovie`,
   plus reflection-driven header field population for `GameName`,
   `Hash`, `EmulatorVersion`, `SyncSettingsJson` — none of which is
   API-stable across BizHawk versions.

5. **Performance ceiling.** With ~13K execution hooks armed, the
   function tracker plateaus at ~40 fps. The bottleneck is the
   managed↔native callback bridge firing once per executed instruction.
   Standalone mGBA does ~300+ fps unhooked, ~2.7 fps at 5K hooks (bloom
   filter saturation). Neither headless number gets close to "as fast
   as the host CPU can go," which is what we'd want for tight CI loops.

6. **Heavyweight dependency footprint.** 92 MB tarball, 150 MB
   extracted, plus Mono runtime, plus firmware DB, plus a 4000-line
   `config.ini`. Hard to drop into a CI container or reproduce
   exactly.

7. **Linux is a second-class citizen.** Quoting the BizHawk README:
   *"While the Linux port is about at parity, this remains a
   Windows-centric project. Please have patience as most of the dev
   team are on Windows."* Every quirk we hit (Mono 6.8 quirks,
   xvfb-vs-WinForms interactions, the GUI thread reentrancy bug) is
   downstream of this.

8. **Determinism is a special mode, not the default.** Recording goes
   through a "TAS profile" that forces `SkipBios=false`, which requires
   a real BIOS file, which triggers the modal we couldn't dismiss. For
   our use case there's no scenario where determinism is *optional*.

9. **No render-disable in the public API.** `client.frameskip(N)`
   exists but doesn't help when the bottleneck is per-instruction
   callback dispatch (measured: identical fps at frameskip=0 vs 9).
   The `InvisibleEmulation` flag referenced in `FakeMainFormForApi`
   isn't present in 2.11.1's real `MainForm`.

## Requirements for the ideal emulator

In priority order, biggest pain-removers first:

1. **The emulator is a library, not an application.** Linkable, called
   by our harness. No GUI assumption. The application form (if any) is
   a separate frontend that also happens to use the library.

2. **Hooks are O(1) and don't change the emulation loop.** Whether
   1 or 100,000 hooks are armed, the per-instruction cost is constant.
   The dispatch is a single hashtable lookup in native code with a
   direct function-pointer call on hit — no managed bridge, no
   step-mode switch, no per-call validation.

3. **Determinism is the only mode.** Same ROM + same inputs → bit-
   identical execution every time, no flags to flip, no profiles to
   switch. If the architecture demands a BIOS for determinism, the
   emulator can refuse to load without one — but it doesn't have *two*
   modes.

4. **Snapshots are a primitive, not a feature.** API:
   `bytes = core.snapshot(); core.restore(bytes)`. In-memory, no file
   I/O, no zip lumps, no version markers. Fast enough to call every
   function entry without becoming the bottleneck.

5. **Input is "set the button bits and step."** No mnemonic format, no
   `.bk2` zip, no controller definitions for axes the console doesn't
   have. The recording format is `[(frame, button_bits)...]` — a list
   of tuples in whatever serialization we like.

6. **Memory access is direct.** `core.read(addr, length) -> bytes`,
   backed by a `memcpy` from the host's view of guest memory. Bulk
   reads are O(length), not O(length × per-call-bridge-cost).

7. **One scripting layer.** One host language drives everything. No
   plugin DLLs, no `--open-ext-tool-dll`, no trust hashes, no shell
   wrappers for env vars and xvfb.

8. **Tiny dependency footprint.** Static binary or single shared
   library. < 50 MB total. Drops into a Docker container, runs in CI,
   reproducible across machines without firmware-DB juggling.

9. **Cycle-accurate enough.** mGBA-core accuracy is the accepted bar
   for GBA — wrap it, don't reimplement.

10. **Headless first.** Visible-display modes are an opt-in feature, not
    the default. The library has no implicit Qt/SDL/WinForms dependency.

## Mapping requirements to candidates

| | libmgba direct (Rust/C tool) | mgba-py | BizHawk | standalone mGBA |
|---|---|---|---|---|
| Library, not app | ✅ | ✅ | ❌ | ❌ |
| O(1) hooks, no mode switch | ✅ (own dispatcher on top) | ⚠ (libmgba's bloom filter applies) | ✅ but with bridge cost | ⚠ |
| Determinism default | ✅ | ✅ | ❌ ("TAS mode" required) | ✅ |
| Snapshot primitive | ✅ | ✅ | ❌ (zip-based file) | ✅ |
| Simple input | ✅ | ✅ | ❌ | ✅ |
| Direct memory | ✅ | ✅ | ⚠ (per-call API) | ✅ |
| One scripting layer | ✅ | ✅ (Python) | ❌ (Lua + C# + shell) | ✅ (Lua) |
| < 50 MB | ✅ | ✅ | ❌ (~250 MB) | ✅ (24 MB) |
| Headless first | ✅ | ✅ | ❌ | ❌ (Qt frontend) |
| mGBA-core accuracy | ✅ | ✅ | ✅ | ✅ |

## Decision

**Migrate to a Rust binary that links libmgba directly.**

Rationale:
- It's the only option that satisfies every requirement.
- mGBA's debugger module is exposed at the libmgba level — we can attach
  it directly and dodge the frontend-coupling bug (`emu:runFrame()`
  bypasses the debugger) that we hit with standalone mGBA.
- We can layer our *own* O(1) PC hash dispatcher on top of libmgba's
  per-instruction debugger callback, sidestepping the bloom-filter
  saturation issue we observed at 5K hooks.
- Rust gives us memory-safety on the binding layer while still allowing
  zero-overhead FFI to libmgba.
- mgba-py is a reasonable fallback if Rust setup becomes prohibitive,
  but the FFI-level control matters for the dispatcher.

What we give up by leaving BizHawk:
- The `.bk2` ecosystem (irrelevant — we don't need to share recordings
  with the TAS community for this project).
- BizHawk's broad emulator support (irrelevant — we only emulate GBA).
- The ability to GUI-debug interactively (we keep `bin/mgba-dev.appimage`
  on hand for one-off interactive sessions; the Rust tool is for
  automation).

## Migration plan

1. [x] Write design doc (this file).
2. [x] Remove BizHawk artifacts from the repo.
3. [x] Acquire `libmgba` via apt (`libmgba-dev` 0.10.2 from Ubuntu noble).
4. [x] Set up a Rust crate at `tools/bn6f-track/` with bindgen-generated
       FFI to libmgba.
5. [x] Smoke test: load `bn6f.gba`, run N frames, print R15. Deterministic
       across passes; **1280 fps** unhooked (22× realtime).
6. [x] Function tracker built. Achieved **98.2% parity with BizHawk**
       (325 of 331 common functions match exactly) at **226 fps with
       all 13554 hooks armed — 5.6× faster than BizHawk's 40 fps**.
       See "Implementation notes" below.
7. [x] Build the entry/exit pair recorder. **80% pairing achieved** —
       see "Pair recorder notes" below. Per-call LR captured at entry,
       matched against top-of-stack at return points.
8. [ ] Build the per-function replay harness.
9. [ ] Capture full register + memory state at entry/exit (for replay).

## Implementation notes (Rust function tracker)

The naive approach — register N libmgba breakpoints and let
`mDebuggerRunFrame` dispatch — collapses to 0.4 fps at 13K hooks
because libmgba's 256-bit bloom filter saturates at ~500 entries and
degrades to an O(N) linear scan per executed instruction (matches the
benchmark from the "Emulator-choice benchmark" section above).

The working approach uses libmgba's `DEBUGGER_CALLBACK` state with a
custom debugger's `custom` callback, and registers ZERO libmgba
breakpoints. The callback fires once per executed instruction; we do
our own O(1) `HashSet<u32>` lookup against the function-entry set.

Two subtleties in the per-instruction callback:

1. **Pipeline-adjusted PC.** `gprs[15]` after step is `current_instr +
   instructionLength` (mGBA's convention — matches what its own
   `checkBreakpoints` uses). We subtract `instructionLength` (4 ARM,
   2 Thumb) to recover the actual executing instruction. CPSR.T (bit
   5) distinguishes the modes.
2. **Branch-only counting.** Naive "true_pc in ENTRIES" counts every
   internal loop iteration whose body happens to sit at `entry + N`
   where `N` is a multiple that aligns under the pipeline offset.
   E.g., `start_clearMemory` (3-instruction loop) reported ~100K hits
   instead of 5. The fix is to track `LAST_TRUE_PC` and only count
   when `true_pc != last + instructionLength` (the branch case).
   Drops `start_clearMemory` from ~100K to exactly 5, matching BizHawk.

Outstanding discrepancies vs BizHawk baseline (6 functions out of 331):
- `sub_814E4CC` reports half (8964 vs 18180) — likely an interrupt
  handler where the IRQ vector and the function entry are the same
  address, so each invocation counts as one branch in our model but
  fires twice in BizHawk's per-PC dispatch.
- Four `EventFlag` helpers (`TestEventFlag`, `SetEventFlag`,
  `ClearEventFlag`, `ClearEventFlag2`) report slightly low — possibly
  Thumb-mode tail-calls that don't trigger our branch heuristic.
- One off-by-one on `CopyBytes` and off-by-two on `Sio32IDIntr` —
  noise-level.

These are acceptable for a verification harness: 98%+ exact match means
we can confidently use Rust as the parity oracle and investigate the
~5 outliers when porting code that touches them.

## Pair recorder notes

The tracker now distinguishes three counters per function:
- **hits** — total branch-into-entry events (matches BizHawk's count).
- **calls** — branches into entry whose source was *outside* the
  function body (real invocations, not loop iterations).
- **exits** — returns that pair with a captured entry.

Internal back-branches to entry (like `start_copyMemory`'s `bne
80001d8 <start_copyMemory>` from its own loop body) inflate `hits`
but not `calls`. We classify "internal" by precomputing each
function's bounds as `[entry, next_entry_in_sorted_order)`.

On real call, we read LR (with the Thumb bit masked) and push
`(ret_addr, fn_addr)` onto a per-thread stack. On every detected
branch, we check whether `true_pc == stack.top().ret_addr`; if so,
pop and credit `EXITS[fn_addr]`.

**Current parity:** 290 of 332 fired functions have `calls == exits`
("cleanly paired" = **87.3%**). The remaining 42 are mostly IRQ
handlers whose return path goes through BIOS code (addresses
`0x00000000`-`0x00003FFF`) before resuming the interrupted function.

Tail-call leaks (`b foo` instead of `bl foo`) used to dominate the
miss list but are now suppressed: before pushing an entry to PENDING
we inspect the source instruction via `core->busRead16/32` and only
push for genuine `bl` / Thumb-BL-Lo / BLX call instructions. ARM `bl`
is detected by `(insn >> 24) & 0xF == 0xB`; Thumb BL by the Lo-half
prefix `(val >> 11) == 0x1F`. This dropped the pending-leftover count
from ~10K to 2.

For IRQ handlers, the call/exit attribution is *backwards*: the
hardware-IRQ entry path doesn't show up as a `bl`, so we don't push
it; but our exit detector still pops the wrong stack frame when the
handler returns to the original code. Fixing this needs explicit IRQ
vector hooking (intercept on entry at the BIOS IRQ dispatch address).
Deferred until the per-function replay harness has a use case for it.

For now 87% pairing is enough to start the per-function replay harness
on the cleanly-paired set.

## Fixtures kept for parity-checking

- `tests/fixtures/baseline_test_fill_5s.txt` — BizHawk-era output (336
  functions fired in 300 frames). Historical reference.
- `tests/fixtures/baseline_test_fill_5s_rust.txt` — Rust tracker output
  (332 functions fired). Active parity baseline for the Rust harness.

---

*Captured 2026-05-23 after the BizHawk plugin prototype reached a
working but unsatisfying state. The decision was driven by accumulated
friction with BizHawk's GUI-centric design rather than any single
blocker; concern 09 documents the BizHawk-era design and is preserved
as history.*
