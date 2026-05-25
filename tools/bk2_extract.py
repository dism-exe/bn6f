#!/usr/bin/env python3
"""bk2_extract.py — pull bn6f-track-ready artefacts out of a BizHawk BK2.

A BK2 is a zip with:
  - `Header.txt`        : metadata (game, platform, BIOS hash, …)
  - `Input Log.txt`     : one frame per line in mGBA's text input format
  - `Core.bin.zst`      : zstd-compressed mGBA core savestate (frame 0)
  - …plus framebuffer/comments/subtitles we don't care about

It's self-contained: the savestate inside is what the movie starts
from, so a BK2 alone is enough to replay.  This tool extracts:

  <out>.ss        — raw mGBA savestate (decompressed Core.bin)
  <out>.input     — binary frame buttons (one u16 per frame),
                    matching tools/bn6f-track's existing format

Usage:
  tools/bk2_extract.py PATH/TO/movie.bk2  [--out-prefix tests/fixtures/demos/.../name]

If --out-prefix is omitted, files land next to the bk2 with its stem.
"""

import argparse
import struct
import sys
import zipfile
from pathlib import Path

try:
    import zstandard as zstd
    HAVE_ZSTD_PY = True
except ImportError:
    HAVE_ZSTD_PY = False

# GBA KEYINPUT bit layout (1=pressed in our .input format; KEYINPUT
# register itself is the inverted view but that's the harness's
# problem, not ours).
BTN_A      = 1 << 0
BTN_B      = 1 << 1
BTN_SELECT = 1 << 2
BTN_START  = 1 << 3
BTN_RIGHT  = 1 << 4
BTN_LEFT   = 1 << 5
BTN_UP     = 1 << 6
BTN_DOWN   = 1 << 7
BTN_R      = 1 << 8
BTN_L      = 1 << 9

# BK2 LogKey order (after the 4 tilt columns + 1 light-sensor column,
# which we discard):
#   Up | Down | Left | Right | Start | Select | B | A | L | R | Power
# We ignore Power.  Each column is a single character: the column's
# letter if pressed, '.' otherwise.
BK2_BUTTON_ORDER = [
    ("U", BTN_UP),
    ("D", BTN_DOWN),
    ("L", BTN_LEFT),
    ("R", BTN_RIGHT),
    ("S", BTN_START),
    ("s", BTN_SELECT),
    ("B", BTN_B),
    ("A", BTN_A),
    ("l", BTN_L),  # shoulder L
    ("r", BTN_R),  # shoulder R
    (".", 0),      # Power — ignored
]


def parse_input_log(text: str) -> list[int]:
    """Convert a BK2 Input Log.txt body into a list of u16 frame buttons."""
    frames: list[int] = []
    in_body = False
    for line in text.splitlines():
        line = line.rstrip("\r")
        if not in_body:
            if line == "[Input]":
                in_body = True
            continue
        if line == "[/Input]":
            break
        if not (line.startswith("|") and line.endswith("|")):
            continue
        inner = line[1:-1]
        # Strip the 4 tilt columns + light sensor: they come before
        # the buttons, separated by commas, then the buttons follow
        # the final comma as a single character cell per button.
        # Example: |    0,    0,    0,    0,....S.B....|
        if "," in inner:
            buttons = inner.split(",")[-1]
        else:
            buttons = inner
        if len(buttons) < len(BK2_BUTTON_ORDER):
            print(f"warn: short button cell {buttons!r}", file=sys.stderr)
            frames.append(0)
            continue
        bits = 0
        for ch, mask in zip(buttons, BK2_BUTTON_ORDER):
            expected_letter, expected_mask = mask
            if ch == ".":
                continue
            # Either matches the expected letter (case-sensitive for
            # the L/l, R/r, S/s distinctions) or is the start-of-press
            # marker.  BizHawk uses the exact letter from LogKey so
            # the strict match is what we want.
            if ch == expected_letter:
                bits |= expected_mask
            else:
                # Unknown — could be Power.  Skip silently.
                pass
        frames.append(bits)
    return frames


def write_input_file(frames: list[int], path: Path):
    with path.open("wb") as f:
        for v in frames:
            # bn6f-track reads u16 LE, but the existing files are
            # u16 LE padded to 4 bytes — match that for compat.
            f.write(struct.pack("<HH", v & 0xFFFF, 0))


def decompress_zst(data: bytes) -> bytes:
    if HAVE_ZSTD_PY:
        return zstd.ZstdDecompressor().decompress(data)
    # Fall back to system `zstd -d` via stdin/stdout.
    import subprocess
    return subprocess.check_output(
        ["zstd", "-d", "--stdout", "-q"], input=data
    )


def extract(bk2_path: Path, out_prefix: Path, skip_state: bool) -> None:
    with zipfile.ZipFile(bk2_path) as zf:
        header = zf.read("Header.txt").decode("utf-8", errors="replace")
        input_log = zf.read("Input Log.txt").decode("utf-8", errors="replace")
        core_zst = zf.read("Core.bin.zst") if not skip_state else None

    frames = parse_input_log(input_log)

    base = out_prefix
    state_path = base.parent / (base.name + ".ss")
    input_path = base.parent / (base.name + ".input")
    md_path    = base.parent / (base.name + ".md")

    out_prefix.parent.mkdir(parents=True, exist_ok=True)

    state_note = ""
    if core_zst is not None:
        core = decompress_zst(core_zst)
        state_path.write_bytes(core)
        # Sniff the savestate version: standard libmgba savestate starts
        # with a u32 little-endian "version magic" (0x01000007 for the
        # libmgba 0.10 that bn6f-track currently links against). BizHawk's
        # mGBAHawk emits its own format with an extra 4-byte prefix and
        # bumped version (0x01000009 in 2.11.x). Flag the mismatch so the
        # user knows the .ss won't load directly.
        if len(core) >= 4:
            v_at_0 = struct.unpack("<I", core[:4])[0]
            v_at_4 = struct.unpack("<I", core[4:8])[0] if len(core) >= 8 else 0
            # libmgba's GBASavestate starts with magic 0x010000XX where
            # XX is the format version (libmgba 0.10 emits 7).  BizHawk's
            # mGBAHawk prepends a 4-byte header so the magic shifts to
            # offset 4 and the version is bumped (9 in 2.11.x).
            looks_like_bizhawk = (
                (v_at_0 & 0xFFFFFF00) != 0x01000000
                and (v_at_4 & 0xFFFFFF00) == 0x01000000
            )
            if looks_like_bizhawk:
                state_note = (
                    "  NOTE: looks like a BizHawk-format mGBA state — our "
                    "libmgba 0.10 won't load it directly.  Use the .input "
                    "file with a fresh boot instead (omit --state)."
                )
        print(f"ok: wrote {state_path}  ({len(core)} bytes){state_note}")
    else:
        print(f"-- skipped {state_path} (--no-state)")

    write_input_file(frames, input_path)
    md_path.write_text(
        f"# Generated from {bk2_path.name}\n\n"
        f"- Frames: {len(frames)}\n"
        f"- Source: BK2 (BizHawk)\n"
        f"- Savestate: "
        + ("written (may need format conversion)" if core_zst else "skipped")
        + "\n\n"
        f"## Header\n\n```\n{header.strip()}\n```\n\n"
        "## Usage\n\n"
        "If you have a compatible savestate run:\n\n"
        "```\n"
        f"bn6f-track record bn6f.gba <frames> tools/function_symbols.txt \\\n"
        f"    <out_dir> --input {input_path.name} --state {state_path.name} \\\n"
        "    <addresses…>\n"
        "```\n\n"
        "Without the savestate (fresh boot), the input log is applied from\n"
        "frame 0 of game execution — the input timing won't be cycle-\n"
        "identical to the original BK2 run but most BK2 inputs are valid\n"
        "from boot too:\n\n"
        "```\n"
        f"bn6f-track record bn6f.gba <frames> tools/function_symbols.txt \\\n"
        f"    <out_dir> --input {input_path.name} <addresses…>\n"
        "```\n"
    )
    print(f"ok: wrote {input_path}  ({len(frames)} frames)")
    print(f"ok: wrote {md_path}")


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("bk2", type=Path, help="path to the .bk2 file")
    ap.add_argument(
        "--out-prefix",
        type=Path,
        default=None,
        help=(
            "output basename (no extension); .ss/.input/.md are written "
            "alongside.  Defaults to the bk2's directory + stem."
        ),
    )
    ap.add_argument(
        "--no-state",
        action="store_true",
        help="don't extract Core.bin.zst — only write .input + .md",
    )
    args = ap.parse_args()
    if not args.bk2.exists():
        print(f"error: not found: {args.bk2}", file=sys.stderr)
        return 2
    out_prefix = args.out_prefix or args.bk2.with_suffix("")
    extract(args.bk2, out_prefix, args.no_state)
    return 0


if __name__ == "__main__":
    sys.exit(main())
