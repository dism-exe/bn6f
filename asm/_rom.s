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
pt_8031CC4:
.include "data/pt_8031CC4.s"
asm03_1:
.include "asm/asm03_1.s"
chatbox:
.include "asm/chatbox.s"
asm03_2:
.include "asm/asm03_2.s"
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
dat37:
.include "data/dat37.s"
asm38:
.include "asm/asm38.s"
dat38_0:
.include "data/dat38_0.s"
comp_8241EC4:
.incbin "data/compressed/comp_8241EC4.lz77"
comp_8242E94:
.incbin "data/compressed/comp_8242E94.lz77"
dat38_1:
.include "data/dat38_1.s"
comp_82455B0:
.incbin "data/compressed/comp_82455B0.lz77"
dat38_2:
.include "data/dat38_2.s"
comp_82489C8:
.incbin "data/compressed/comp_82489C8.lz77"
comp_82492FC:
.incbin "data/compressed/comp_82492FC.lz77"
comp_8249C7C:
.incbin "data/compressed/comp_8249C7C.lz77"
dat38_3:
.include "data/dat38_3.s"
comp_824D23C:
.incbin "data/compressed/comp_824D23C.lz77"
comp_824DC7C:
.incbin "data/compressed/comp_824DC7C.lz77"
dat38_4:
.include "data/dat38_4.s"
comp_8252558:
.incbin "data/compressed/comp_8252558.lz77"
dat38_5:
.include "data/dat38_5.s"
comp_8257994:
.incbin "data/compressed/comp_8257994.lz77"
comp_825859C:
.incbin "data/compressed/comp_825859C.lz77"
comp_8258FF8:
.incbin "data/compressed/comp_8258FF8.lz77"
comp_825A0D8:
.incbin "data/compressed/comp_825A0D8.lz77"
comp_825AD90:
.incbin "data/compressed/comp_825AD90.lz77"
comp_825B860:
.incbin "data/compressed/comp_825B860.lz77"
comp_825BFC4:
.incbin "data/compressed/comp_825BFC4.lz77"
dat38_6:
.include "data/dat38_6.s"
comp_825DFB4:
.incbin "data/compressed/comp_825DFB4.lz77"
dat38_7:
.include "data/dat38_7.s"
comp_8262CEC:
.incbin "data/compressed/comp_8262CEC.lz77"
comp_8263484:
.incbin "data/compressed/comp_8263484.lz77"
comp_82647E4:
.incbin "data/compressed/comp_82647E4.lz77"
dat38_8:
.include "data/dat38_8.s"
comp_82CED74:
.incbin "data/compressed/comp_82CED74.lz77"
comp_82D2AC8:
.incbin "data/compressed/comp_82D2AC8.lz77"
comp_82D6FE4:
.incbin "data/compressed/comp_82D6FE4.lz77"
comp_82DABC8:
.incbin "data/compressed/comp_82DABC8.lz77"
comp_82DD9A8:
.incbin "data/compressed/comp_82DD9A8.lz77"
comp_82E0114:
.incbin "data/compressed/comp_82E0114.lz77"
comp_82E4050:
.incbin "data/compressed/comp_82E4050.lz77"
comp_82E8470:
.incbin "data/compressed/comp_82E8470.lz77"
dat38_9:
.include "data/dat38_9.s"
comp_82FCA14:
.incbin "data/compressed/comp_82FCA14.lz77"
dat38_10:
.include "data/dat38_10.s"
comp_8333CC8:
.incbin "data/compressed/comp_8333CC8.lz77"
comp_8334B0C:
.incbin "data/compressed/comp_8334B0C.lz77"
comp_83353F4:
.incbin "data/compressed/comp_83353F4.lz77"
dat38_11:
.include "data/dat38_11.s"
comp_8338170:
.incbin "data/compressed/comp_8338170.lz77"
dat38_12:
.include "data/dat38_12.s"
comp_834FC40:
.incbin "data/compressed/comp_834FC40.lz77"
dat38_13:
.include "data/dat38_13.s"
comp_838B160:
.incbin "data/compressed/comp_838B160.lz77"
comp_838B438:
.incbin "data/compressed/comp_838B438.lz77"
dat38_14:
.include "data/dat38_14.s"
comp_83FDF7C:
.incbin "data/compressed/comp_83FDF7C.lz77"
dat38_15:
.include "data/dat38_15.s"
comp_840A4BC:
.incbin "data/compressed/comp_840A4BC.lz77"
comp_840AC00:
.incbin "data/compressed/comp_840AC00.lz77"
dat38_16:
.include "data/dat38_16.s"
comp_840F4F4:
.incbin "data/compressed/comp_840F4F4.lz77"
comp_84105EC:
.incbin "data/compressed/comp_84105EC.lz77"
comp_8410A18:
.incbin "data/compressed/comp_8410A18.lz77"
comp_84114E8:
.incbin "data/compressed/comp_84114E8.lz77"
comp_84119D0:
.incbin "data/compressed/comp_84119D0.lz77"
dat38_17:
.include "data/dat38_17.s"
comp_843A5AC:
.incbin "data/compressed/comp_843A5AC.lz77"
comp_843AE88:
.incbin "data/compressed/comp_843AE88.lz77"
comp_843B99C:
.incbin "data/compressed/comp_843B99C.lz77"
dat38_18:
.include "data/dat38_18.s"
comp_8495434:
.incbin "data/compressed/comp_8495434.lz77"
dat38_19:
.include "data/dat38_19.s"
comp_8499CF0:
.incbin "data/compressed/comp_8499CF0.lz77"
comp_849AAD0:
.incbin "data/compressed/comp_849AAD0.lz77"
dat38_20:
.include "data/dat38_20.s"
comp_84A03B8:
.incbin "data/compressed/comp_84A03B8.lz77"
comp_84A0920:
.incbin "data/compressed/comp_84A0920.lz77"
comp_84A0DCC:
.incbin "data/compressed/comp_84A0DCC.lz77"
comp_84A1458:
.incbin "data/compressed/comp_84A1458.lz77"
comp_84A1B14:
.incbin "data/compressed/comp_84A1B14.lz77"
comp_84A1E30:
.incbin "data/compressed/comp_84A1E30.lz77"
comp_84A225C:
.incbin "data/compressed/comp_84A225C.lz77"
comp_84A24CC:
.incbin "data/compressed/comp_84A24CC.lz77"
dat38_21:
.include "data/dat38_21.s"
comp_84A3708:
.incbin "data/compressed/comp_84A3708.lz77"
comp_84A3B44:
.incbin "data/compressed/comp_84A3B44.lz77"
comp_84A3E08:
.incbin "data/compressed/comp_84A3E08.lz77"
comp_84A40E0:
.incbin "data/compressed/comp_84A40E0.lz77"
comp_84A47F0:
.incbin "data/compressed/comp_84A47F0.lz77"
comp_84A4F0C:
.incbin "data/compressed/comp_84A4F0C.lz77"
comp_84A502C:
.incbin "data/compressed/comp_84A502C.lz77"
dat38_22:
.include "data/dat38_22.s"
comp_84A642C:
.incbin "data/compressed/comp_84A642C.lz77"
comp_84A6D14:
.incbin "data/compressed/comp_84A6D14.lz77"
comp_84A71A0:
.incbin "data/compressed/comp_84A71A0.lz77"
comp_84A74A4:
.incbin "data/compressed/comp_84A74A4.lz77"
comp_84A77A4:
.incbin "data/compressed/comp_84A77A4.lz77"
comp_84A7A14:
.incbin "data/compressed/comp_84A7A14.lz77"
comp_84A7FA4:
.incbin "data/compressed/comp_84A7FA4.lz77"
comp_84A8524:
.incbin "data/compressed/comp_84A8524.lz77"
dat38_23:
.include "data/dat38_23.s"
comp_84A8F68:
.incbin "data/compressed/comp_84A8F68.lz77"
comp_84A914C:
.incbin "data/compressed/comp_84A914C.lz77"
comp_84A96B8:
.incbin "data/compressed/comp_84A96B8.lz77"
dat38_24:
.include "data/dat38_24.s"
comp_84AA028:
.incbin "data/compressed/comp_84AA028.lz77"
comp_84AA640:
.incbin "data/compressed/comp_84AA640.lz77"
comp_84AAC80:
.incbin "data/compressed/comp_84AAC80.lz77"
comp_84AAE70:
.incbin "data/compressed/comp_84AAE70.lz77"
comp_84AAF18:
.incbin "data/compressed/comp_84AAF18.lz77"
dat38_25:
.include "data/dat38_25.s"
comp_84AE340:
.incbin "data/compressed/comp_84AE340.lz77"
dat38_26:
.include "data/dat38_26.s"
comp_84B42EC:
.incbin "data/compressed/comp_84B42EC.lz77"
dat38_27:
.include "data/dat38_27.s"
comp_84B5734:
.incbin "data/compressed/comp_84B5734.lz77"
dat38_28:
.include "data/dat38_28.s"
comp_84B6744:
.incbin "data/compressed/comp_84B6744.lz77"
dat38_29:
.include "data/dat38_29.s"
comp_84BADF8:
.incbin "data/compressed/comp_84BADF8.lz77"
comp_84BB07C:
.incbin "data/compressed/comp_84BB07C.lz77"
comp_84BB704:
.incbin "data/compressed/comp_84BB704.lz77"
comp_84BBA74:
.incbin "data/compressed/comp_84BBA74.lz77"
dat38_30:
.include "data/dat38_30.s"
comp_84BC4D0:
.incbin "data/compressed/comp_84BC4D0.lz77"
dat38_31:
.include "data/dat38_31.s"
comp_84BD3FC:
.incbin "data/compressed/comp_84BD3FC.lz77"
comp_84BD83C:
.incbin "data/compressed/comp_84BD83C.lz77"
dat38_32:
.include "data/dat38_32.s"
comp_84BE924:
.incbin "data/compressed/comp_84BE924.lz77"
comp_84BECDC:
.incbin "data/compressed/comp_84BECDC.lz77"
comp_84BEF4C:
.incbin "data/compressed/comp_84BEF4C.lz77"
comp_84BF174:
.incbin "data/compressed/comp_84BF174.lz77"
dat38_33:
.include "data/dat38_33.s"
comp_84C0150:
.incbin "data/compressed/comp_84C0150.lz77"
dat38_34:
.include "data/dat38_34.s"
comp_84C3C90:
.incbin "data/compressed/comp_84C3C90.lz77"
comp_84C3F54:
.incbin "data/compressed/comp_84C3F54.lz77"
comp_84C43AC:
.incbin "data/compressed/comp_84C43AC.lz77"
dat38_35:
.include "data/dat38_35.s"
comp_84C8DEC:
.incbin "data/compressed/comp_84C8DEC.lz77"
dat38_36:
.include "data/dat38_36.s"
comp_84CA1BC:
.incbin "data/compressed/comp_84CA1BC.lz77"
comp_84CA74C:
.incbin "data/compressed/comp_84CA74C.lz77"
comp_84CA9E8:
.incbin "data/compressed/comp_84CA9E8.lz77"
comp_84CAD70:
.incbin "data/compressed/comp_84CAD70.lz77"
comp_84CB0F4:
.incbin "data/compressed/comp_84CB0F4.lz77"
comp_84CB3A8:
.incbin "data/compressed/comp_84CB3A8.lz77"
comp_84CB638:
.incbin "data/compressed/comp_84CB638.lz77"
comp_84CB930:
.incbin "data/compressed/comp_84CB930.lz77"
comp_84CBC1C:
.incbin "data/compressed/comp_84CBC1C.lz77"
comp_84CBDE8:
.incbin "data/compressed/comp_84CBDE8.lz77"
comp_84CC308:
.incbin "data/compressed/comp_84CC308.lz77"
comp_84CC8AC:
.incbin "data/compressed/comp_84CC8AC.lz77"
comp_84CD83C:
.incbin "data/compressed/comp_84CD83C.lz77"
comp_84CDCE8:
.incbin "data/compressed/comp_84CDCE8.lz77"
comp_84CDE24:
.incbin "data/compressed/comp_84CDE24.lz77"
dat38_37:
.include "data/dat38_37.s"
comp_84CF9D8:
.incbin "data/compressed/comp_84CF9D8.lz77"
comp_84CFC7C:
.incbin "data/compressed/comp_84CFC7C.lz77"
comp_84D014C:
.incbin "data/compressed/comp_84D014C.lz77"
comp_84D230C:
.incbin "data/compressed/comp_84D230C.lz77"
comp_84D26BC:
.incbin "data/compressed/comp_84D26BC.lz77"
comp_84D2820:
.incbin "data/compressed/comp_84D2820.lz77"
comp_84D2A54:
.incbin "data/compressed/comp_84D2A54.lz77"
comp_84D3998:
.incbin "data/compressed/comp_84D3998.lz77"
dat38_38:
.include "data/dat38_38.s"
comp_84D4AC4:
.incbin "data/compressed/comp_84D4AC4.lz77"
comp_84D4CC8:
.incbin "data/compressed/comp_84D4CC8.lz77"
comp_84D4FF0:
.incbin "data/compressed/comp_84D4FF0.lz77"
comp_84D5764:
.incbin "data/compressed/comp_84D5764.lz77"
comp_84D5C94:
.incbin "data/compressed/comp_84D5C94.lz77"
comp_84D5DF0:
.incbin "data/compressed/comp_84D5DF0.lz77"
comp_84D6370:
.incbin "data/compressed/comp_84D6370.lz77"
comp_84D66B8:
.incbin "data/compressed/comp_84D66B8.lz77"
comp_84D6908:
.incbin "data/compressed/comp_84D6908.lz77"
comp_84D6BF0:
.incbin "data/compressed/comp_84D6BF0.lz77"
comp_84D6E50:
.incbin "data/compressed/comp_84D6E50.lz77"
comp_84D701C:
.incbin "data/compressed/comp_84D701C.lz77"
comp_84D77D8:
.incbin "data/compressed/comp_84D77D8.lz77"
comp_84D84E4:
.incbin "data/compressed/comp_84D84E4.lz77"
comp_84D9344:
.incbin "data/compressed/comp_84D9344.lz77"
comp_84D9954:
.incbin "data/compressed/comp_84D9954.lz77"
comp_84DA604:
.incbin "data/compressed/comp_84DA604.lz77"
comp_84DAD14:
.incbin "data/compressed/comp_84DAD14.lz77"
comp_84DB04C:
.incbin "data/compressed/comp_84DB04C.lz77"
comp_84DB1CC:
.incbin "data/compressed/comp_84DB1CC.lz77"
comp_84DB8F8:
.incbin "data/compressed/comp_84DB8F8.lz77"
comp_84DBD30:
.incbin "data/compressed/comp_84DBD30.lz77"
comp_84DC2B0:
.incbin "data/compressed/comp_84DC2B0.lz77"
comp_84DCBD8:
.incbin "data/compressed/comp_84DCBD8.lz77"
comp_84DD20C:
.incbin "data/compressed/comp_84DD20C.lz77"
comp_84DD40C:
.incbin "data/compressed/comp_84DD40C.lz77"
comp_84DDDB8:
.incbin "data/compressed/comp_84DDDB8.lz77"
comp_84DDF94:
.incbin "data/compressed/comp_84DDF94.lz77"
comp_84DE328:
.incbin "data/compressed/comp_84DE328.lz77"
comp_84DE598:
.incbin "data/compressed/comp_84DE598.lz77"
comp_84DE728:
.incbin "data/compressed/comp_84DE728.lz77"
comp_84DEFD8:
.incbin "data/compressed/comp_84DEFD8.lz77"
comp_84DF674:
.incbin "data/compressed/comp_84DF674.lz77"
dat38_39:
.include "data/dat38_39.s"
comp_84E00A0:
.incbin "data/compressed/comp_84E00A0.lz77"
dat38_40:
.include "data/dat38_40.s"
comp_84E0C4C:
.incbin "data/compressed/comp_84E0C4C.lz77"
dat38_41:
.include "data/dat38_41.s"
comp_857CCC8:
.incbin "data/compressed/comp_857CCC8.lz77"
comp_857D43C:
.incbin "data/compressed/comp_857D43C.lz77"
comp_857D63C:
.incbin "data/compressed/comp_857D63C.lz77"
dat38_42:
.include "data/dat38_42.s"
compFile_86C23A0:
.incbin "data/compressed/compFile_86C23A0.lz77"
comp_86C2E2C:
.incbin "data/compressed/comp_86C2E2C.lz77"
comp_86C33B4:
.incbin "data/compressed/comp_86C33B4.lz77"
comp_86C3528:
.incbin "data/compressed/comp_86C3528.lz77"
dat38_43:
.include "data/dat38_43.s"
comp_86C3E94:
.incbin "data/compressed/comp_86C3E94.lz77"
dat38_44:
.include "data/dat38_44.s"
comp_86C41D0:
.incbin "data/compressed/comp_86C41D0.lz77"
comp_86C4490:
.incbin "data/compressed/comp_86C4490.lz77"
comp_86C45A8:
.incbin "data/compressed/comp_86C45A8.lz77"
dat38_45:
.include "data/dat38_45.s"
compScripts_credits_86C4B58:
.incbin "data/scripts/compScripts_credits_86C4B58.lz77"
dat38_46:
.include "data/dat38_46.s"
comp_86C5190:
.incbin "data/compressed/comp_86C5190.lz77"
comp_86C526C:
.incbin "data/compressed/comp_86C526C.lz77"
dat38_47:
.include "data/dat38_47.s"
scripts_86C580C:
.incbin "data/scripts/scripts_86C580C.bin"
dat38_48:
.include "data/dat38_48.s"
comp_86C6B30:
.incbin "data/compressed/comp_86C6B30.lz77"
comp_86C6FD0:
.incbin "data/compressed/comp_86C6FD0.lz77"
comp_86C73D8:
.incbin "data/compressed/comp_86C73D8.lz77"
comp_86C7764:
.incbin "data/compressed/comp_86C7764.lz77"
comp_86C7980:
.incbin "data/compressed/comp_86C7980.lz77"
comp_86C7DCC:
.incbin "data/compressed/comp_86C7DCC.lz77"
comp_86C7E74:
.incbin "data/compressed/comp_86C7E74.lz77"
comp_86C7F70:
.incbin "data/compressed/comp_86C7F70.lz77"
comp_86C7F98:
.incbin "data/compressed/comp_86C7F98.lz77"
comp_86C8034:
.incbin "data/compressed/comp_86C8034.lz77"
comp_86C8054:
.incbin "data/compressed/comp_86C8054.lz77"
dat38_49:
.include "data/dat38_49.s"
comp_86C9148:
.incbin "data/compressed/comp_86C9148.lz77"
comp_86C9240:
.incbin "data/compressed/comp_86C9240.lz77"
comp_86C9274:
.incbin "data/compressed/comp_86C9274.lz77"
comp_86C9668:
.incbin "data/compressed/comp_86C9668.lz77"
dat38_50:
.include "data/dat38_50.s"
comp_86C96C0:
.incbin "data/compressed/comp_86C96C0.lz77"
comp_86C980C:
.incbin "data/compressed/comp_86C980C.lz77"
comp_86C9AA4:
.incbin "data/compressed/comp_86C9AA4.lz77"
dat38_51:
.include "data/dat38_51.s"
comp_86C9BD4:
.incbin "data/compressed/comp_86C9BD4.lz77"
comp_86C9C80:
.incbin "data/compressed/comp_86C9C80.lz77"
comp_86C9CE4:
.incbin "data/compressed/comp_86C9CE4.lz77"
comp_86C9D38:
.incbin "data/compressed/comp_86C9D38.lz77"
dat38_52:
.include "data/dat38_52.s"
comp_86CDCE4:
.incbin "data/compressed/comp_86CDCE4.lz77"
comp_86CDE2C:
.incbin "data/compressed/comp_86CDE2C.lz77"
comp_86CDEA8:
.incbin "data/compressed/comp_86CDEA8.lz77"
comp_86CE51C:
.incbin "data/compressed/comp_86CE51C.lz77"
comp_86CE63C:
.incbin "data/compressed/comp_86CE63C.lz77"
comp_86CE724:
.incbin "data/compressed/comp_86CE724.lz77"
comp_86CE77C:
.incbin "data/compressed/comp_86CE77C.lz77"
comp_86CE7D0:
.incbin "data/compressed/comp_86CE7D0.lz77"
comp_86CE8AC:
.incbin "data/compressed/comp_86CE8AC.lz77"
comp_86CE9E8:
.incbin "data/compressed/comp_86CE9E8.lz77"
comp_86CEAA8:
.incbin "data/compressed/comp_86CEAA8.lz77"
comp_86CEC3C:
.incbin "data/compressed/comp_86CEC3C.lz77"
dat38_53:
.include "data/dat38_53.s"
comp_86CF82C:
.incbin "data/compressed/comp_86CF82C.lz77"
dat38_54:
.include "data/dat38_54.s"
comp_86CFC64:
.incbin "data/compressed/comp_86CFC64.lz77"
comp_86CFCFC:
.incbin "data/compressed/comp_86CFCFC.lz77"
comp_86CFD1C:
.incbin "data/compressed/comp_86CFD1C.lz77"
dat38_55:
.include "data/dat38_55.s"
comp_86D471C:
.incbin "data/compressed/comp_86D471C.lz77"
comp_86D497C:
.incbin "data/compressed/comp_86D497C.lz77"
comp_86D4FC4:
.incbin "data/compressed/comp_86D4FC4.lz77"
comp_86D5070:
.incbin "data/compressed/comp_86D5070.lz77"
comp_86D5224:
.incbin "data/compressed/comp_86D5224.lz77"
comp_86D54F4:
.incbin "data/compressed/comp_86D54F4.lz77"
dat38_56:
.include "data/dat38_56.s"
comp_86D6974:
.incbin "data/compressed/comp_86D6974.lz77"
comp_86D6C70:
.incbin "data/compressed/comp_86D6C70.lz77"
comp_86D6D50:
.incbin "data/compressed/comp_86D6D50.lz77"
comp_86D6EE4:
.incbin "data/compressed/comp_86D6EE4.lz77"
comp_86D6F30:
.incbin "data/compressed/comp_86D6F30.lz77"
comp_86D737C:
.incbin "data/compressed/comp_86D737C.lz77"
comp_86D73D4:
.incbin "data/compressed/comp_86D73D4.lz77"
comp_86D7424:
.incbin "data/compressed/comp_86D7424.lz77"
comp_86D747C:
.incbin "data/compressed/comp_86D747C.lz77"
comp_86D74B0:
.incbin "data/compressed/comp_86D74B0.lz77"
dat38_57:
.include "data/dat38_57.s"
comp_86D8C80:
.incbin "data/compressed/comp_86D8C80.lz77"
dat38_58:
.include "data/dat38_58.s"
comp_86D91FC:
.incbin "data/compressed/comp_86D91FC.lz77"
comp_86D93E0:
.incbin "data/compressed/comp_86D93E0.lz77"
dat38_59:
.include "data/dat38_59.s"
comp_86D9C40:
.incbin "data/compressed/comp_86D9C40.lz77"
comp_86D9D10:
.incbin "data/compressed/comp_86D9D10.lz77"
comp_86DA1B8:
.incbin "data/compressed/comp_86DA1B8.lz77"
comp_86DA944:
.incbin "data/compressed/comp_86DA944.lz77"
dat38_60:
.include "data/dat38_60.s"
comp_86DB208:
.incbin "data/compressed/comp_86DB208.lz77"
comp_86DB9C4:
.incbin "data/compressed/comp_86DB9C4.lz77"
comp_86DBB0C:
.incbin "data/compressed/comp_86DBB0C.lz77"
dat38_62:
.include "data/dat38_62.s"
comp_86DBD94:
.incbin "data/compressed/comp_86DBD94.lz77"
dat38_63:
.include "data/dat38_63.s"
comp_86DC518:
.incbin "data/compressed/comp_86DC518.lz77"
comp_86DC688:
.incbin "data/compressed/comp_86DC688.lz77"
dat38_64:
.include "data/dat38_64.s"
comp_86DCCF0:
.incbin "data/compressed/comp_86DCCF0.lz77"
dat38_65:
.include "data/dat38_65.s"
comp_86DD328:
.incbin "data/compressed/comp_86DD328.lz77"
dat38_66:
.include "data/dat38_66.s"
comp_86DD9B4:
.incbin "data/compressed/comp_86DD9B4.lz77"
comp_86DDAD0:
.incbin "data/compressed/comp_86DDAD0.lz77"
dat38_67:
.include "data/dat38_67.s"
comp_86DDB44:
.incbin "data/compressed/comp_86DDB44.lz77"
comp_86DDB7C:
.incbin "data/compressed/comp_86DDB7C.lz77"
dat38_68:
.include "data/dat38_68.s"
scripts_fullSynchro_86F3F5C:
.incbin "data/scripts/scripts_fullSynchro_86F3F5C.bin"
scripts_dad_cybeastTut_86F4498:
.incbin "data/scripts/scripts_dad_cybeastTut_86F4498.bin"
scripts_shuko_crossTut_86F53CC:
.incbin "data/scripts/scripts_shuko_crossTut_86F53CC.bin"
dat38_69:
.include "data/dat38_69.s"
scripts_commErr_87370C0:
.incbin "data/scripts/scripts_commErr_87370C0.bin"
dat38_70:
.include "data/dat38_70.s"
comp_87E4500:
.incbin "data/compressed/comp_87E4500.lz77"
dat38_71:
.include "data/dat38_71.s"
comp_87E5020:
.incbin "data/compressed/comp_87E5020.lz77"
comp_87E50D4:
.incbin "data/compressed/comp_87E50D4.lz77"
dat38_72:
.include "data/dat38_72.s"
comp_87E5550:
.incbin "data/compressed/comp_87E5550.lz77"
comp_87E56A0:
.incbin "data/compressed/comp_87E56A0.lz77"
comp_87E57BC:
.incbin "data/compressed/comp_87E57BC.lz77"
dat38_73:
.include "data/dat38_73.s"
comp_87E674C:
.incbin "data/compressed/comp_87E674C.lz77"
comp_87E6840:
.incbin "data/compressed/comp_87E6840.lz77"
comp_87E6924:
.incbin "data/compressed/comp_87E6924.lz77"
comp_87E6980:
.incbin "data/compressed/comp_87E6980.lz77"
dat38_74:
.include "data/dat38_74.s"
comp_87E6BFC:
.incbin "data/compressed/comp_87E6BFC.lz77"
dat38_75:
.include "data/dat38_75.s"
comp_87F006C:
.incbin "data/compressed/comp_87F006C.lz77"
comp_87F0218:
.incbin "data/compressed/comp_87F0218.lz77"
dat38_76:
.include "data/dat38_76.s"
comp_87F0360:
.incbin "data/compressed/comp_87F0360.lz77"
comp_87F04D4:
.incbin "data/compressed/comp_87F04D4.lz77"
comp_87F0534:
.incbin "data/compressed/comp_87F0534.lz77"
comp_87F056C:
.incbin "data/compressed/comp_87F056C.lz77"
dat38_77:
.include "data/dat38_77.s"
comp_87F0664:
.incbin "data/compressed/comp_87F0664.lz77"
comp_87F0834:
.incbin "data/compressed/comp_87F0834.lz77"
comp_87F0C00:
.incbin "data/compressed/comp_87F0C00.lz77"
dat38_78:
.include "data/dat38_78.s"
comp_87F24FC:
.incbin "data/compressed/comp_87F24FC.lz77"
dat38_79:
.include "data/dat38_79.s"
comp_87F3370:
.incbin "data/compressed/comp_87F3370.lz77"
dat38_81:
.include "data/dat38_81.s"
comp_87F36A0:
.incbin "data/compressed/comp_87F36A0.lz77"
dat38_82:
.include "data/dat38_82.s"
comp_87F4394:
.incbin "data/compressed/comp_87F4394.lz77"
dat38_84:
.include "data/dat38_84.s"

/**/
// include parts of the ROM not disassembled yet (if any)
// run 'make tail' if this label's location changes to re-compute bin/tail.bin
tail:
// .incbin "bin/tail.bin"
