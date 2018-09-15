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
asm00_0:
.include "asm/asm00_0.s"
sprite:
.include "asm/sprite.s"
asm00_1:
.include "asm/asm00_1.s"
object:
.include "asm/object.s"
asm00_2:
.include "asm/asm00_2.s"
off_801ECB4:
.incbin "bin/bin00.bin"
asm01:
.include "asm/asm01.s"
dword_8020354:
.incbin "bin/bin01.bin"
asm02:
.include "asm/asm02.s"
ChipDataArr_8021DA8:
.include "data/ChipDataArr_8021DA8.s"
bin02:
.incbin "bin/bin02.bin"
asm03_0:
.include "asm/asm03_0.s"
chatbox:
.include "asm/chatbox.s"
asm03_1:
.include "asm/asm03_1.s"
dword_804CFBC:
.incbin "bin/bin03.bin"
asm04:
.include "asm/asm04.s"
dword_804E74C:
.incbin "bin/bin04.bin"
asm05:
.include "asm/asm05.s"
dword_8052834:
.incbin "bin/bin05.bin"
asm06:
.include "asm/asm06.s"
dword_80596F4:
.incbin "bin/bin06.bin"
asm07:
.include "asm/asm07.s"
dword_805E01C:
.incbin "bin/bin07.bin"
asm08:
.include "asm/asm08.s"
dword_8060474:
.incbin "bin/bin08.bin"
asm09:
.include "asm/asm09.s"
dword_8062BFC:
.incbin "bin/bin09.bin"
asm10:
.include "asm/asm10.s"
dword_8067DF8:
.incbin "bin/bin10.bin"
asm11:
.include "asm/asm11.s"
dword_806C5D0:
.incbin "bin/bin11.bin"
asm12:
.include "asm/asm12.s"
dword_806DD2C:
.incbin "bin/bin12.bin"
asm13:
.include "asm/asm13.s"
dword_8070034:
.incbin "bin/bin13.bin"
asm14:
.include "asm/asm14.s"
dword_8072BCC:
.incbin "bin/bin14.bin"
asm15:
.include "asm/asm15.s"
dword_8075614:
.incbin "bin/bin15.bin"
asm16:
.include "asm/asm16.s"
dword_8077EA4:
.incbin "bin/bin16.bin"
asm17:
.include "asm/asm17.s"
dword_80794AC:
.incbin "bin/bin17.bin"
asm18:
.include "asm/asm18.s"
dword_807AAFC:
.incbin "bin/bin18.bin"
asm19:
.include "asm/asm19.s"
dword_807D024:
.incbin "bin/bin19.bin"
asm20:
.include "asm/asm20.s"
dword_807EEB8:
.incbin "bin/bin20.bin"
asm21:
.include "asm/asm21.s"
dword_80813F8:
.incbin "bin/bin21.bin"
asm22:
.include "asm/asm22.s"
dword_80871D8:
.incbin "bin/bin22.bin"
asm23:
.include "asm/asm23.s"
bin23:
.incbin "bin/bin23.bin"
asm24:
.include "asm/asm24.s"
bin24:
.incbin "bin/bin24.bin"
asm25:
.include "asm/asm25.s"
bin25:
.incbin "bin/bin25.bin"
asm26:
.include "asm/asm26.s"
bin26:
.incbin "bin/bin26.bin"
asm27:
.include "asm/asm27.s"
bin27:
.incbin "bin/bin27.bin"
asm28_0:
.include "asm/asm28_0.s"
npc:
.include "asm/npc.s"
asm28_1:
.include "asm/asm28_1.s"
bin28:
.incbin "bin/bin28.bin"
asm29:
.include "asm/asm29.s"
dword_80AAEA8:
.incbin "bin/bin29.bin"
asm30:
.include "asm/asm30_0.s"
BattleSettings:
.include "data/BattleSettings.s"
off_80B1B7C:
.incbin "bin/bin30.bin"
asm31:
.include "asm/asm31.s"
dword_810C35C:
.incbin "bin/bin31.bin"
asm32:
.include "asm/asm32.s"
dword_8121270:
.incbin "bin/bin32.bin"
asm33:
.include "asm/asm33.s"
dword_812C258:
.incbin "bin/bin33.bin"
asm34:
.include "asm/asm34.s"
dword_812DA94:
.incbin "bin/bin34.bin"
asm35:
.include "asm/asm35.s"
bin35:
.incbin "bin/bin35.bin"
asm36:
.include "asm/asm36.s"
dword_8138944:
.incbin "bin/bin36.bin"
asm37_0:
.include "asm/asm37_0.s"
reqBBS:
.include "asm/reqBBS.s"
asm37_1:
.include "asm/asm37_1.s"
bin37:
.incbin "bin/bin37.bin"
asm38:
.include "asm/asm38.s"
bin38_0:
.incbin "bin/bin38_0.bin"
compFile_86C23A0:
.incbin "data/compressed/compFile_86C23A0.lz77"
bin38_1:
.incbin "bin/bin38_1.bin"
comp_86C2E2C:
.incbin "data/compressed/comp_86C2E2C.lz77"
bin38_2:
.incbin "bin/bin38_2.bin"
comp_86C33B4:
.incbin "data/compressed/comp_86C33B4.lz77"
bin38_3:
.incbin "bin/bin38_3.bin"
comp_86C9BD4:
.incbin "data/compressed/comp_86C9BD4.lz77"
bin38_4:
.incbin "bin/bin38_4.bin"
comp_86C9D38:
.incbin "data/compressed/comp_86C9D38.lz77"
bin38_5:
.incbin "bin/bin38_5.bin"
comp_86D6974:
.incbin "data/compressed/comp_86D6974.lz77"
bin38_6:
.incbin "bin/bin38_6.bin"
comp_86DD9B4:
.incbin "data/compressed/comp_86DD9B4.lz77"
bin38_7:
.incbin "bin/bin38_7.bin"
comp_86DDAD0:
.incbin "data/compressed/comp_86DDAD0.lz77"
bin38_8:
.incbin "bin/bin38_8.bin"
comp_86DDB44:
.incbin "data/compressed/comp_86DDB44.lz77"
bin38_9:
.incbin "bin/bin38_9.bin"
comp_86DDB7C:
.incbin "data/compressed/comp_86DDB7C.lz77"
bin38_10:
.incbin "bin/bin38_10.bin"
comp_87F3370:
.incbin "data/compressed/comp_87F3370.lz77"
bin38_11:
.incbin "bin/bin38_11.bin"
comp_87F36A0:
.incbin "data/compressed/comp_87F36A0.lz77"
bin38_12:
.incbin "bin/bin38_12.bin"
comp_87F4394:
.incbin "data/compressed/comp_87F4394.lz77"
dword_87F8EB0:
.incbin "bin/bin38_13.bin"

/**/
// include parts of the ROM not disassembled yet
// run 'make tail' if this label's location changes to re-compute bin/tail.bin
tail:
// .incbin "bin/tail.bin"
