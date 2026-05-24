# Multi-agent coordination

This repo supports multiple Claude (or human) contributors working on
decomp in parallel. The shape:

```
master                ← merge target, must always pass `make verify`
├─ agent1-work        ← Agent 1's branch + worktree
├─ agent2-work        ← Agent 2's branch + worktree
└─ ...
```

Each agent works in its own `git worktree`, on its own branch, then
merges/rebases back to master. The infrastructure here keeps merges
mostly conflict-free.

## Setup (one-time per agent)

```bash
git worktree add ../bn6f-agent1 -b agent1-work master
cd ../bn6f-agent1
# work happens here; this dir has its own bn6f.elf, rom.o, etc.
```

When done with the worktree:
```bash
cd /home/alex/Code/bn/bn6f       # back to main worktree
git worktree remove ../bn6f-agent1
```

## Coordination rules

### 1. File-locality ownership
Pre-divide candidates by which `asm/*.s` file they live in. **No two
agents touch the same asm file in the same session.** Hot files like
`asm00_0.s` and `asm03_1_1.s` are dense with candidates and *will*
produce textual merge conflicts if shared.

Suggested splits when running multiple agents:
- Agent A: `asm00_*` (boot, init, main loop, RNG, asset copy)
- Agent B: `asm03_*` (battle engine, cutscene)
- Agent C: `asm3[1-7].s`, `chatbox.s` (menus, UI)
- Agent D: `sprite.s`, `ow_player.s`, `map_script_cutscene.s` (overworld)

### 2. Sorted manifest
`tools/decomp_manifest.txt` is kept **alphabetically sorted**. New
entries go in their lexical position, not at the end. This eliminates
the most common cross-agent merge conflict.

When in doubt, re-sort:
```bash
python3 -c "import pathlib,re; p=pathlib.Path('tools/decomp_manifest.txt'); ls=p.read_text().splitlines(); h=[]; e=[]; ih=True
for l in ls:
    if ih and (not l.strip() or l.lstrip().startswith('#')): h.append(l); continue
    ih=False
    if l.strip() and not l.lstrip().startswith('#'): e.append(l.strip())
p.write_text('\n'.join(h).rstrip()+'\n\n'+'\n'.join(sorted(set(e)))+'\n')"
```

`wrap_decomp.py` doesn't yet auto-insert in sorted order — it
appends. After running `wrap_decomp.py`, optionally re-sort the
manifest with the snippet above. Future improvement: make
wrap_decomp.py respect sort order.

### 3. Claim before working
```bash
tools/claim.py my-agent-name FunctionA FunctionB FunctionC
```

This appends to `tools/claims.txt`, an advisory ledger of who's
working on what. The tool refuses to claim:
- symbols already in `tools/decomp_manifest.txt` (someone finished them)
- symbols claimed by a different agent

After landing a conversion (manifest line added, verify passes),
release the claim:
```bash
tools/claim.py --release FunctionA
```

The manifest itself becomes the durable record from that point on.

To see what everyone's working on:
```bash
tools/claim.py --list
```

Claims are sorted by symbol, same merge-friendly story as the manifest.

### 4. `make verify` is the merge gate
Before merging back to master, ALWAYS run `make verify` (or
`make verify-state STATE_NAME=...` for scene-specific demos). A
conversion that breaks an existing function is the worst-case
failure mode in parallel work. The harness catches it.

### 5. Rebase often
Each agent should `git fetch && git rebase origin/master` at least
once per work session, more often if multiple agents are active.
Smaller divergence = smaller conflicts.

### 6. Don't touch shared infrastructure unannounced
- `Makefile`
- `include/macros/function.inc`
- `tools/wrap_decomp.py`, `tools/find_decomp_candidates.py`, `tools/claim.py`
- `tools/decomp_manifest.txt` formatting (entries are fine)
- `tools/bn6f-track/`

If you need to change one of these, coordinate first (in a commit
message that other agents will see at next rebase, or as an explicit
sync point). Concurrent edits to these files break everyone.

## Agent prompt template

When spinning up a new agent, brief it with:
1. Its name (e.g. `agent-asm03`)
2. Its file-ownership set (e.g. "only touch asm03_*.s and src/c/*.c
   you create yourself")
3. Its branch + worktree path
4. Reminder to: `claim.py` → wrap → write C → `make verify` →
   release → commit
5. How many functions to convert before stopping (probably 5-10 per
   batch so reviews stay small)

See `token_todo.md` and `structs_plan.md` for the kinds of work
agents can self-direct.
