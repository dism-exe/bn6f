/*
This file specifies how all of the code and data files link together
to make the ROM. This file is compiled to define the whole ROM region.
*/
	.include "include/macros.inc"
	.include "constants/constants.inc"

    .text
	
	.syntax divided

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
ChipDataArr:
.include "data/ChipDataArr.s"
asm03_0:
.include "asm/asm03_0.s"
spritePointers_8031CC4:
.include "data/spritePointers_8031CC4.s"
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
LibsFileLabel:
.include "asm/libs.s"
dat37:
.include "data/dat37.s"

.global IWRAMRoutines
IWRAMRoutines:
IWRAMRoutinesROMLocation:
.global IWRAMRoutinesROMLocation

