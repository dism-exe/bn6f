# Generated from intro.bk2

- Frames: 6239
- Source: BK2 (BizHawk)
- Savestate: written (may need format conversion)

## Header

```
MovieVersion BizHawk v2.0.0
Author default user
StartsFromSavestate True
Core mGBA
Platform GBA
emuVersion Version 2.11.1
OriginalEmuVersion Version 2.11.1
GameName Mega Man Battle Network 6 - Cybeast Falzar (USA)
SHA1 0676ECD4D58A976AF3346CAEBB44B9B6489AD099
GBA_Firmware_Bios 300C20DF6731A33952DED8C436F7F186D25D3492
```

## Usage

If you have a compatible savestate run:

```
bn6f-track record bn6f.gba <frames> tools/function_symbols.txt \
    <out_dir> --input intro.input --state intro.ss \
    <addresses…>
```

Without the savestate (fresh boot), the input log is applied from
frame 0 of game execution — the input timing won't be cycle-
identical to the original BK2 run but most BK2 inputs are valid
from boot too:

```
bn6f-track record bn6f.gba <frames> tools/function_symbols.txt \
    <out_dir> --input intro.input <addresses…>
```
