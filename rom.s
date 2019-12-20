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
SpritePointersList:
	.include "data/SpritePointersList.s"
asm03_1:
	.include "asm/asm03_1_0.s"
map_script_cutscene:
	.include "asm/map_script_cutscene.s"
asm03_1_1:
	.include "asm/asm03_1_1.s"
chatbox:
	.include "asm/chatbox.s"
asm03_2:
	.include "asm/asm03_2.s"
	
	.include "maps/ACDCTown/warps_gfx_anims.s"
	.include "maps/ACDCTown/loader.s"
	.include "maps/ACDCTown/data.s"
asm04:
	.include "maps/CentralTown/warps_gfx_anims.s"
	.include "maps/CentralTown/loader.s"
	.include "maps/CentralTown/data.s"
asm05:
	.include "maps/CyberAcademy/warps_gfx_anims.s"
	.include "maps/CyberAcademy/loader.s"
	.include "maps/CyberAcademy/data.s"
asm06:
	.include "maps/SeasideTown/warps_gfx_anims.s"
	.include "maps/SeasideTown/loader.s"
	.include "maps/SeasideTown/data.s"
asm07:
	.include "maps/GreenTown/warps_gfx_anims.s"
	.include "maps/GreenTown/loader.s"
	.include "maps/GreenTown/data.s"
asm08:
	.include "maps/SkyTown/warps_gfx_anims.s"
	.include "maps/SkyTown/loader.s"
	.include "maps/SkyTown/data.s"
asm09:
	.include "maps/ExpoSite/warps_gfx_anims.s"
	.include "maps/ExpoSite/loader.s"
	.include "maps/ExpoSite/data.s"
asm10:
	.include "maps/RobotControlComp/warps_gfx_anims.s"
	.include "maps/RobotControlComp/loader.s"
	.include "maps/RobotControlComp/data.s"

	.include "maps/AquariumComp/warps_gfx_anims.s"
	.include "maps/AquariumComp/loader.s"
	.include "maps/AquariumComp/data.s"

	.include "maps/JudgeTreeComp/warps_gfx_anims.s"
	.include "maps/JudgeTreeComp/loader.s"
	.include "maps/JudgeTreeComp/data.s"

	.include "maps/MrWeatherComp/warps_gfx_anims.s"
	.include "maps/MrWeatherComp/loader.s"
	.include "maps/MrWeatherComp/data.s"

	.include "maps/PavilionComp/warps_gfx_anims.s"
	.include "maps/PavilionComp/loader.s"
	.include "maps/PavilionComp/data.s"

	.include "maps/HomePages/warps_gfx_anims.s"
	.include "maps/HomePages/loader.s"
	.include "maps/HomePages/data.s"

	.include "maps/Comps1/warps_gfx_anims.s"
	.include "maps/Comps1/loader.s"
	.include "maps/Comps1/data.s"

	.include "maps/Comps2/warps_gfx_anims.s"
	.include "maps/Comps2/loader.s"
	.include "maps/Comps2/data.s"

	.include "maps/CentralArea/warps_gfx_anims.s"
	.include "maps/CentralArea/loader.s"
	.include "maps/CentralArea/data.s"

	.include "maps/SeasideArea/warps_gfx_anims.s"
	.include "maps/SeasideArea/loader.s"
	.include "maps/SeasideArea/data.s"

	.include "maps/GreenArea/warps_gfx_anims.s"
	.include "maps/GreenArea/loader.s"
	.include "maps/GreenArea/data.s"

	.include "maps/Underground/warps_gfx_anims.s"
	.include "maps/Underground/loader.s"
	.include "maps/Underground/data.s"

	.include "maps/SkyACDCArea/warps_gfx_anims.s"
	.include "maps/SkyACDCArea/loader.s"
	.include "maps/SkyACDCArea/data.s"

	.include "maps/Undernet/warps_gfx_anims.s"
	.include "maps/Undernet/loader.s"
	.include "maps/Undernet/data.s"

	.include "maps/GraveyardImmortalArea/warps_gfx_anims.s"
	.include "maps/GraveyardImmortalArea/loader.s"
	.include "maps/GraveyardImmortalArea/data.s"

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
ow_player:
	.include "asm/ow_player.s"
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

