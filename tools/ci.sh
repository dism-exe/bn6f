#!/usr/bin/env bash
# ci.sh — single CI entrypoint for the decomp verification pipeline.
#
# Run this in CI (GH Actions, GitLab, etc.) or locally as a pre-commit.
# Returns non-zero on any failure. Each phase prints a banner so the
# failing one is obvious from the log.
#
# Phases:
#   1. make all        — SHA-matching original build (catches accidental
#                        edits to the ASM tree).
#   2. make decompile  — modified ROM build (catches C compile errors or
#                        broken trampolines).
#   3. make verify     — per-call (entry, exit) state diff for every
#                        function listed in DECOMP_FN_ADDRS.
#
# Tools required on the host: arm-none-eabi-as/ld (already in tools/binutils),
# agbcc, mono-complete (legacy; no longer used by verify but other rules
# touch it), libmgba-dev + libclang-dev (for the Rust track build), rustc/cargo.

set -euo pipefail

cd "$(dirname "$0")/.."
ROOT=$(pwd)

banner() {
    echo
    echo "================================================================"
    echo "  $*"
    echo "================================================================"
}

t0=$(date +%s)

banner "Phase 1: make all — SHA-match original ROM"
make all

banner "Phase 2: make decompile — build with C-decompiled functions"
make decompile

banner "Phase 3: make verify — per-call state diff vs oracle"
make verify

t1=$(date +%s)
echo
echo "================================================================"
echo "  ✓ all phases passed in $((t1 - t0))s"
echo "================================================================"
