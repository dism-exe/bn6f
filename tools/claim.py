#!/usr/bin/env python3
"""Claim function names to avoid two agents picking the same one.

Usage:
  tools/claim.py <agent_name> <symbol> [<symbol> ...]   # claim
  tools/claim.py --list                                  # show all claims
  tools/claim.py --release <symbol> [<symbol> ...]       # mark done (caller verifies via manifest)

Claims live in tools/claims.txt, one line per claim, sorted alphabetically
so concurrent commits from different worktrees rarely conflict:

  <symbol>\t<agent>\t<utc-iso-timestamp>

Workflow:
  1. Before starting a function, run `tools/claim.py <agent> <sym>`. If it
     fails (already claimed), pick a different one.
  2. After landing the conversion (manifest line added, verify passing),
     run `tools/claim.py --release <sym>` to remove the claim — the
     manifest itself is the durable record from then on.

Race notes:
  - Claims are advisory; git is the real serializer. Before claiming,
    rebase your worktree onto main so you see recent claims.
  - Symbols already in tools/decomp_manifest.txt are auto-rejected
    (someone already finished them — don't redo).
"""

import argparse
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CLAIMS = ROOT / "tools/claims.txt"
MANIFEST = ROOT / "tools/decomp_manifest.txt"


def read_claims():
    if not CLAIMS.exists():
        return {}
    d = {}
    for line in CLAIMS.read_text().splitlines():
        if not line.strip() or line.lstrip().startswith("#"):
            continue
        parts = line.split("\t")
        if len(parts) >= 3:
            d[parts[0]] = (parts[1], parts[2])
    return d


def read_manifest():
    if not MANIFEST.exists():
        return set()
    return {
        l.strip() for l in MANIFEST.read_text().splitlines()
        if l.strip() and not l.lstrip().startswith("#")
    }


def write_claims(claims):
    """Write claims sorted by symbol so concurrent edits in different
    worktrees stay merge-friendly."""
    header = (
        "# Active function claims (advisory — git is the real serializer).\n"
        "# Format: <symbol>\\t<agent>\\t<utc>\n"
        "# Remove entries via `tools/claim.py --release <sym>` once landed.\n"
    )
    body = "".join(
        f"{sym}\t{agent}\t{ts}\n"
        for sym, (agent, ts) in sorted(claims.items())
    )
    CLAIMS.write_text(header + body)


def cmd_claim(agent, symbols):
    claims = read_claims()
    done = read_manifest()
    ok = []
    rejected = []
    for s in symbols:
        if s in done:
            rejected.append((s, "already in manifest"))
            continue
        if s in claims and claims[s][0] != agent:
            rejected.append((s, f"claimed by {claims[s][0]} at {claims[s][1]}"))
            continue
        claims[s] = (agent, time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()))
        ok.append(s)
    write_claims(claims)
    for s in ok:
        print(f"claimed: {s}")
    for s, why in rejected:
        print(f"rejected: {s} ({why})", file=sys.stderr)
    return 0 if not rejected else 1


def cmd_release(symbols):
    claims = read_claims()
    removed = []
    missing = []
    for s in symbols:
        if s in claims:
            del claims[s]
            removed.append(s)
        else:
            missing.append(s)
    write_claims(claims)
    for s in removed:
        print(f"released: {s}")
    for s in missing:
        print(f"not held: {s}", file=sys.stderr)
    return 0


def cmd_list():
    claims = read_claims()
    if not claims:
        print("(no active claims)")
        return 0
    width = max(len(s) for s in claims)
    for sym in sorted(claims):
        agent, ts = claims[sym]
        print(f"{sym:<{width}}  {agent}  {ts}")
    return 0


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    g = ap.add_mutually_exclusive_group()
    g.add_argument("--list", action="store_true", help="show active claims")
    g.add_argument("--release", action="store_true", help="release listed symbols")
    ap.add_argument("rest", nargs="*", help="agent + symbols, or symbols for --release")
    args = ap.parse_args()

    if args.list:
        sys.exit(cmd_list())
    if args.release:
        if not args.rest:
            ap.error("--release needs at least one symbol")
        sys.exit(cmd_release(args.rest))
    if len(args.rest) < 2:
        ap.error("usage: claim.py AGENT SYM [SYM ...]")
    sys.exit(cmd_claim(args.rest[0], args.rest[1:]))


if __name__ == "__main__":
    main()
