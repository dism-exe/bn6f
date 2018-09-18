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
dat00:
.include "data/dat00.s"
asm01:
.include "asm/asm01.s"
dat01:
.include "data/dat01.s"
asm02:
.include "asm/asm02.s"
ChipDataArr_8021DA8:
.include "data/ChipDataArr_8021DA8.s"
dat02:
.include "data/dat02.s"
asm03_0:
.include "asm/asm03_0.s"
chatbox:
.include "asm/chatbox.s"
asm03_1:
.include "asm/asm03_1.s"
dat03:
.include "data/dat03.s"
asm04:
.include "asm/asm04.s"
dat04:
.include "data/dat04.s"
asm05:
.include "asm/asm05.s"
dat05:
.include "data/dat05.s"
asm06:
.include "asm/asm06.s"
dat06:
.include "data/dat06.s"
asm07:
.include "asm/asm07.s"
dat07:
.include "data/dat07.s"
asm08:
.include "asm/asm08.s"
dat08:
.include "data/dat08.s"
asm09:
.include "asm/asm09.s"
dat09:
.include "data/dat09.s"
asm10:
.include "asm/asm10.s"
dat10:
.include "data/dat10.s"
asm11:
.include "asm/asm11.s"
dat11:
.include "data/dat11.s"
asm12:
.include "asm/asm12.s"
dat12:
.include "data/dat12.s"
asm13:
.include "asm/asm13.s"
dat13:
.include "data/dat13.s"
asm14:
.include "asm/asm14.s"
dat14:
.include "data/dat14.s"
asm15:
.include "asm/asm15.s"
dat15:
.include "data/dat15.s"
asm16:
.include "asm/asm16.s"
dat16:
.include "data/dat16.s"
asm17:
.include "asm/asm17.s"
dat17:
.include "data/dat17.s"
asm18:
.include "asm/asm18.s"
dat18:
.include "data/dat18.s"
asm19:
.include "asm/asm19.s"
dat19:
.include "data/dat19.s"
asm20:
.include "asm/asm20.s"
dat20:
.include "data/dat20.s"
asm21:
.include "asm/asm21.s"
dat21:
.include "data/dat21.s"
asm22:
.include "asm/asm22.s"
dat22:
.include "data/dat22.s"
asm23:
.include "asm/asm23.s"
dat23:
.include "data/dat23.s"
asm24:
.include "asm/asm24.s"
dat24:
.include "data/dat24.s"
asm25:
.include "asm/asm25.s"
dat25:
.include "data/dat25.s"
asm26:
.include "asm/asm26.s"
dat26:
.include "data/dat26.s"
asm27:
.include "asm/asm27.s"
dat27:
.include "data/dat27.s"
asm28_0:
.include "asm/asm28_0.s"
npc:
.include "asm/npc.s"
asm28_1:
.include "asm/asm28_1.s"
dat28:
.include "data/dat28.s"
asm29:
.include "asm/asm29.s"
dat29:
.include "data/dat29.s"
asm30_0:
.include "asm/asm30_0.s"
BattleSettings:
.include "data/BattleSettings.s"
dat30:
.include "data/dat30.s"
asm31:
.include "asm/asm31.s"
dat31:
.include "data/dat31.s"
asm32:
.include "asm/asm32.s"
dat32:
.include "data/dat32.s"
asm33:
.include "asm/asm33.s"
dat33:
.include "data/dat33.s"
asm34:
.include "asm/asm34.s"
dat34:
.include "data/dat34.s"
asm35:
.include "asm/asm35.s"
dat35:
.include "data/dat35.s"
asm36:
.include "asm/asm36.s"
dat36:
.include "data/dat36.s"
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
comp_84E0C4C:
.incbin "data/compressed/comp_84E0C4C.lz77"
bin38_1:
.incbin "bin/bin38_1.bin"
compFile_86C23A0:
.incbin "data/compressed/compFile_86C23A0.lz77"
bin38_2:
.incbin "bin/bin38_2.bin"
comp_86C2E2C:
.incbin "data/compressed/comp_86C2E2C.lz77"
bin38_3:
.incbin "bin/bin38_3.bin"
comp_86C33B4:
.incbin "data/compressed/comp_86C33B4.lz77"
comp_86C3528:
.incbin "data/compressed/comp_86C3528.lz77"
bin38_4:
.incbin "bin/bin38_4.bin"
comp_86C3E94:
.incbin "data/compressed/comp_86C3E94.lz77"
bin38_5:
.incbin "bin/bin38_5.bin"
comp_86C41D0:
.incbin "data/compressed/comp_86C41D0.lz77"
bin38_6:
.incbin "bin/bin38_6.bin"
comp_86C4490:
.incbin "data/compressed/comp_86C4490.lz77"
bin38_7:
.incbin "bin/bin38_7.bin"
comp_86C45A8:
.incbin "data/compressed/comp_86C45A8.lz77"
bin38_8:
.incbin "bin/bin38_8.bin"
compScripts_credits_86C4B58:
.incbin "data/scripts/compScripts_credits_86C4B58.lz77"
bin38_9:
.incbin "bin/bin38_9.bin"
comp_86C5190:
.incbin "data/compressed/comp_86C5190.lz77"
bin38_10:
.incbin "bin/bin38_10.bin"
comp_86C526C:
.incbin "data/compressed/comp_86C526C.lz77"
bin38_11:
.incbin "bin/bin38_11.bin"
scripts_86C580C:
.incbin "data/scripts/scripts_86C580C.bin"
byte_86C67E4:
.incbin "bin/bin38_12.bin"
comp_86C73D8:
.incbin "data/compressed/comp_86C73D8.lz77"
bin38_13:
.incbin "bin/bin38_13.bin"
comp_86C7764:
.incbin "data/compressed/comp_86C7764.lz77"
bin38_14:
.incbin "bin/bin38_14.bin"
comp_86C7980:
.incbin "data/compressed/comp_86C7980.lz77"
bin38_15:
.incbin "bin/bin38_15.bin"
comp_86C8054:
.incbin "data/compressed/comp_86C8054.lz77"
bin38_16:
.incbin "bin/bin38_16.bin"
comp_86C9274:
.incbin "data/compressed/comp_86C9274.lz77"
comp_86C9668:
.incbin "data/compressed/comp_86C9668.lz77"
bin38_17:
.incbin "bin/bin38_17.bin"
comp_86C96C0:
.incbin "data/compressed/comp_86C96C0.lz77"
bin38_18:
.incbin "bin/bin38_18.bin"
comp_86C980C:
.incbin "data/compressed/comp_86C980C.lz77"
bin38_19:
.incbin "bin/bin38_19.bin"
comp_86C9BD4:
.incbin "data/compressed/comp_86C9BD4.lz77"
bin38_20:
.incbin "bin/bin38_20.bin"
comp_86C9CE4:
.incbin "data/compressed/comp_86C9CE4.lz77"
comp_86C9D38:
.incbin "data/compressed/comp_86C9D38.lz77"
bin38_21:
.incbin "bin/bin38_21.bin"
comp_86CE8AC:
.incbin "data/compressed/comp_86CE8AC.lz77"
bin38_22:
.incbin "bin/bin38_22.bin"
comp_86CE9E8:
.incbin "data/compressed/comp_86CE9E8.lz77"
bin38_23:
.incbin "bin/bin38_23.bin"
comp_86D6974:
.incbin "data/compressed/comp_86D6974.lz77"
bin38_24:
.incbin "bin/bin38_24.bin"
comp_86DA1B8:
.incbin "data/compressed/comp_86DA1B8.lz77"
bin38_25:
.incbin "bin/bin38_25.bin"
comp_86DBD94:
.incbin "data/compressed/comp_86DBD94.lz77"
dword_86DC2C4:
.incbin "bin/bin38_26.bin"
comp_86DD9B4:
.incbin "data/compressed/comp_86DD9B4.lz77"
bin38_27:
.incbin "bin/bin38_27.bin"
comp_86DDAD0:
.incbin "data/compressed/comp_86DDAD0.lz77"
bin38_28:
.incbin "bin/bin38_28.bin"
comp_86DDB44:
.incbin "data/compressed/comp_86DDB44.lz77"
bin38_29:
.incbin "bin/bin38_29.bin"
comp_86DDB7C:
.incbin "data/compressed/comp_86DDB7C.lz77"
bin38_30:
.incbin "bin/bin38_30.bin"
scripts_fullSynchro_86F3F5C:
.incbin "data/scripts/scripts_fullSynchro_86F3F5C.bin"
scripts_dad_cybeastTut_86F4498:
.incbin "data/scripts/scripts_dad_cybeastTut_86F4498.bin"
scripts_shuko_crossTut_86F53CC:
.incbin "data/scripts/scripts_shuko_crossTut_86F53CC.bin"
unk_86F5834:
.incbin "bin/bin38_31.bin"
scripts_commErr_87370C0:
.incbin "data/scripts/scripts_commErr_87370C0.bin"
aF_0:
.incbin "bin/bin38_32.bin"
comp_87E4500:
.incbin "data/compressed/comp_87E4500.lz77"
bin38_33:
.incbin "bin/bin38_33.bin"
comp_87E5020:
.incbin "data/compressed/comp_87E5020.lz77"
comp_87E50D4:
.incbin "data/compressed/comp_87E50D4.lz77"
bin38_34:
.incbin "bin/bin38_34.bin"
comp_87E5550:
.incbin "data/compressed/comp_87E5550.lz77"
bin38_35:
.incbin "bin/bin38_35.bin"
comp_87E56A0:
.incbin "data/compressed/comp_87E56A0.lz77"
bin38_36:
.incbin "bin/bin38_36.bin"
comp_87E57BC:
.incbin "data/compressed/comp_87E57BC.lz77"
bin38_37:
.incbin "bin/bin38_37.bin"
comp_87E674C:
.incbin "data/compressed/comp_87E674C.lz77"
comp_87E6840:
.incbin "data/compressed/comp_87E6840.lz77"
bin38_38:
.incbin "bin/bin38_38.bin"
comp_87E6924:
.incbin "data/compressed/comp_87E6924.lz77"
bin38_39:
.incbin "bin/bin38_39.bin"
comp_87E6980:
.incbin "data/compressed/comp_87E6980.lz77"
bin38_40:
.incbin "bin/bin38_40.bin"
comp_87E6BFC:
.incbin "data/compressed/comp_87E6BFC.lz77"
bin38_41:
.incbin "bin/bin38_41.bin"
comp_87F006C:
.incbin "data/compressed/comp_87F006C.lz77"
bin38_42:
.incbin "bin/bin38_42.bin"
comp_87F0218:
.incbin "data/compressed/comp_87F0218.lz77"
unk_87F0340:
.incbin "bin/bin38_43.bin"
comp_87F0360:
.incbin "data/compressed/comp_87F0360.lz77"
bin38_44:
.incbin "bin/bin38_44.bin"
comp_87F04D4:
.incbin "data/compressed/comp_87F04D4.lz77"
bin38_45:
.incbin "bin/bin38_45.bin"
comp_87F0534:
.incbin "data/compressed/comp_87F0534.lz77"
bin38_46:
.incbin "bin/bin38_46.bin"
comp_87F056C:
.incbin "data/compressed/comp_87F056C.lz77"
bin38_47:
.incbin "bin/bin38_47.bin"
comp_87F0664:
.incbin "data/compressed/comp_87F0664.lz77"
comp_87F0834:
.incbin "data/compressed/comp_87F0834.lz77"
bin38_48:
.incbin "bin/bin38_48.bin"
comp_87F0C00:
.incbin "data/compressed/comp_87F0C00.lz77"
bin38_49:
.incbin "bin/bin38_49.bin"
comp_87F3370:
.incbin "data/compressed/comp_87F3370.lz77"
bin38_50:
.incbin "bin/bin38_50.bin"
comp_87F36A0:
.incbin "data/compressed/comp_87F36A0.lz77"
bin38_51:
.incbin "bin/bin38_51.bin"
comp_87F4394:
.incbin "data/compressed/comp_87F4394.lz77"
dword_87F8EB0:
.incbin "bin/bin38_52.bin"

/**/
// include parts of the ROM not disassembled yet
// run 'make tail' if this label's location changes to re-compute bin/tail.bin
tail:
// .incbin "bin/tail.bin"
