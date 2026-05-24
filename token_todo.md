# Token-spend reduction TODO

Strategies for cutting AI token usage on the bn6f decomp workflow,
ordered by leverage. Identified during a meta-discussion about where
tokens were being burned in the existing per-function conversion
loop.

**Status (2026-05-24):**
- ✅ #2 / #7 done — response files for AS/LD; `make decompile` dropped
  from hundreds of lines to 3
- ✅ #3 done — `tools/function_card.py SYMBOL` emits a compact summary
- ✅ #4 done — objdump cache in find_decomp_candidates.py + wrap_decomp.py
- ✅ #5 done — `~/.claude/projects/.../memory/reference_struct_offsets.md`
  cheat sheet for Toolkit / GameState / sprite / chatbox / cutscene
- 🚧 #6 — current per-function PASS/FAIL output already ≤2 lines each;
  most of the bloat was elsewhere (`make decompile` lines)
- ⏳ #1 — decompiler pre-pass (needs tooling install)
- ⏳ #8 — batch-of-5–10 conversions per verify; happening informally already
- ⏳ #9 — struct .inc → JSON dump; superseded by #5 memory entry

---

## 1. Decompiler pre-pass (biggest win)

Run each candidate function through a decompiler (Ghidra, mgbadis,
retdec, or similar) and read the decompiled C-ish output instead of
the raw ASM block.

- ASM block is typically 15–40 lines per function (~500–1500 tokens).
- Decompiled output is typically 3–8 lines (~100 tokens).
- ~10x savings per function on the "understand the code" step.

Decomp output also happens to be close to the form we want to
produce, reducing the "translate semantics" step too.

**Catch**: decompilers don't know `r10 = eToolkit @ 0x020093B0` is a
project-wide convention. Output ends up with `*(int *)(r10 + 0x40)`
instead of `eToolkit->S2001c04_Ptr`. Mitigation: small
post-processing pass that rewrites `r10 + 0xXX` references using the
known Toolkit struct layout.

**Still need raw ASM for**: flag-dep callers, r4-leak side effects,
inline SVC, multi-return calling conventions. Those are rare; this is
the leaf majority.

---

## 2. Quieten `make verify` output (biggest single waste)

Every verify run dumps the full assembler command line — 5 KB+ of
`--defsym DECOMP_X=1 --defsym DECOMP_Y=1 ...` flags, growing linearly
with the manifest. That same blob ended up in the AI's context ~30
times in a single session.

Two ways to fix:

- **Filter**: pipe verify output through `sed 's/--defsym DECOMP_[^ ]* //g'`
  or `grep -vE 'defsym|^cpp|^tools/agbcc'`. Drops verify output to ~100
  lines.
- **Source fix**: switch the Makefile to a per-build response file
  (`@flags.txt`) so the long flag list never appears on the command
  line in the first place.

---

## 3. Pre-computed function "cards"

`tools/function_card.py SYMBOL` that prints a fixed-format summary:

```
sub_X @ 0x0800XXXX, 24 bytes, 4-aligned, calls=240
calls: ZeroFillByWord (converted), CopyHalfwords (converted)
uses: r10 → eToolkit.RenderInfoPtr
struct fields: oRenderInfo_Unk_02 (=2), oRenderInfo_Unk_0e (=14)
flag-dep callers: 0
pool labels: off_X (private)
literal pool start: offset 18
```

~10 lines per function instead of 5 separate AI-driven greps each
spilling 50+ lines of output.

---

## 4. Cache objdump symbol table

`wrap_decomp.py` and `find_decomp_candidates.py` shell out to objdump
on the 4 MB elf for every invocation. The output is stable until
`bn6f_orig.elf` is rebuilt. Cache as JSON keyed by elf mtime.

Doesn't save AI tokens directly, but speeds up each tool call so the
AI doesn't burn time waiting / re-prompting.

---

## 5. Use the persistent memory system for stable facts

Things repeatedly re-derived every session that should live in
`memory/` instead:

- `eToolkit = 0x020093B0` + the full offset table
  (JoypadPtr=0x4, RenderInfoPtr=0x8, ... S2001c04_Ptr=0x40, ...,
  NaviStatsPtr=0x74).
- `flag_enum` numeric values for common Flags20093A4 / EventFlag bits.
- Common struct sizes (Palette20097a0_Size=12, S2001c04_Size=0x84,
  GameState_Size=0x80, etc.).

One "MMBN6F struct cheatsheet" memory entry saves the re-lookup
tokens every time we touch an r10-using or struct-using function.

---

## 6. Compact harness diff output

Add a `--quiet` mode that emits one line per function:
```
PASS sub_X 240/240
FAIL sub_X 0/240 at offset 4 (expected 0xAA got 0xBB)
```
Reduces `make verify` reads from ~800 lines to ~90.

---

## 7. (Same root cause as 2 — `--defsym` Makefile parameter)

Move per-decomp flags out of the command line into a response file
or env var so they stop being echoed in build output.

---

## 8. Batch the per-function verify loop

One wrap → one verify cycle was needed during the unstable early
days of the harness. Now the patterns are stable; batches of 5–10
conversions per verify are safer and cheaper.

---

## 9. Don't read whole struct .inc files for one offset

Same pattern as (3) — generate a JSON dump of all struct field
offsets once, query it with a tiny script. ~50 tokens vs ~1000 per
.inc read.

---

## Priority pick

If shipping one thing: **#1 (decompiler pre-pass) + #2 (quiet
verify)** together. That alone probably halves per-function token
spend. Everything else is incremental.
