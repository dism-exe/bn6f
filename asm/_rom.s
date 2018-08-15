/*
This file specifies how all of the code and data files link together
to make the ROM. This file is compiled to define the whole ROM region.
*/

// assign section to be set to 0x08000000
.section .r__start, "ax"

start:
.include "asm/start.s"
main:
.include "asm/main.s"
asm00:
.include "asm/asm00.s"
.incbin "bin/bin00.bin"
asm01:
.include "asm/asm01.s"
.incbin "bin/bin01.bin"
asm02:
.include "asm/asm02.s"
.incbin "bin/bin02.bin"
asm03_0:
.include "asm/asm03_0.s"
chatbox:
.include "asm/chatbox.s"
asm03_1:
.include "asm/asm03_1.s"
.incbin "bin/bin03.bin"
asm04:
.include "asm/asm04.s"
.incbin "bin/bin04.bin"
asm05:
.include "asm/asm05.s"
.incbin "bin/bin05.bin"
asm06:
.include "asm/asm06.s"
.incbin "bin/bin06.bin"
asm07:
.include "asm/asm07.s"
.incbin "bin/bin07.bin"
asm08:
.include "asm/asm08.s"
.incbin "bin/bin08.bin"
asm09:
.include "asm/asm09.s"
.incbin "bin/bin09.bin"
asm10:
.include "asm/asm10.s"
.incbin "bin/bin10.bin"
asm11:
.include "asm/asm11.s"
.incbin "bin/bin11.bin"
asm12:
.include "asm/asm12.s"
.incbin "bin/bin12.bin"
asm13:
.include "asm/asm13.s"
.incbin "bin/bin13.bin"
asm14:
.include "asm/asm14.s"
.incbin "bin/bin14.bin"
asm15:
.include "asm/asm15.s"
.incbin "bin/bin15.bin"
asm16:
.include "asm/asm16.s"
.incbin "bin/bin16.bin"
asm17:
.include "asm/asm17.s"
.incbin "bin/bin17.bin"
asm18:
.include "asm/asm18.s"
.incbin "bin/bin18.bin"
asm19:
.include "asm/asm19.s"
.incbin "bin/bin19.bin"
asm20:
.include "asm/asm20.s"
.incbin "bin/bin20.bin"
asm21:
.include "asm/asm21.s"
.incbin "bin/bin21.bin"
asm22:
.include "asm/asm22.s"
.incbin "bin/bin22.bin"
asm23:
.include "asm/asm23.s"
.incbin "bin/bin23.bin"
asm24:
.include "asm/asm24.s"
.incbin "bin/bin24.bin"
asm25:
.include "asm/asm25.s"
.incbin "bin/bin25.bin"
asm26:
.include "asm/asm26.s"
.incbin "bin/bin26.bin"
asm27:
.include "asm/asm27.s"
.incbin "bin/bin27.bin"
asm28:
.include "asm/asm28.s"
.incbin "bin/bin28.bin"
asm29:
.include "asm/asm29.s"
.incbin "bin/bin29.bin"
asm30:
.include "asm/asm30.s"
.incbin "bin/bin30.bin"
asm31:
.include "asm/asm31.s"
.incbin "bin/bin31.bin"
asm32:
.include "asm/asm32.s"
.incbin "bin/bin32.bin"
asm33:
.include "asm/asm33.s"
.incbin "bin/bin33.bin"
asm34:
.include "asm/asm34.s"
.incbin "bin/bin34.bin"
asm35:
.include "asm/asm35.s"
.incbin "bin/bin35.bin"
asm36:
.include "asm/asm36.s"
.incbin "bin/bin36.bin"
asm37_0:
.include "asm/asm37_0.s"
reqBBS:
.include "asm/reqBBS.s"
asm37_1:
.include "asm/asm37_1.s"
.incbin "bin/bin37.bin"
asm38:
.include "asm/asm38.s"
bin38_0:
.incbin "bin/bin38_0.bin"
comp_86C9BD4:
.incbin "data/compressed/comp_86C9BD4.lz77"
bin38_1:
.incbin "bin/bin38_1.bin"
comp_86DD9B4:
.incbin "data/compressed/comp_86DD9B4.lz77"
bin38_2:
.incbin "bin/bin38_2.bin"
comp_86DDAD0:
.incbin "data/compressed/comp_86DDAD0.lz77"
bin38_3:
.incbin "bin/bin38_3.bin"


/**/
// include parts of the ROM not disassembled yet
// run 'make tail' if this label's location changes to re-compute bin/tail.bin
tail:
// .incbin "bin/tail.bin"
