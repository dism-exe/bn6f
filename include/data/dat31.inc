	.ifndef INC_DATA_DAT31
	.equ INC_DATA_DAT31, 0

/* Public Symbols */
	.global byte_810C35C
	.global byte_810C364
	.global byte_810C388
	.global off_810C6F0
	.global byte_810C8CC
	.global byte_810C8D4
	.global byte_810C8F8
	.global off_810CD60
	.global byte_810D008
	.global byte_810D010
	.global byte_810D034
	.global off_810D0F4
	.global byte_810D16C
	.global byte_810D174
	.global byte_810D198
	.global off_810D554
	.global byte_810D6F8
	.global byte_810D700
	.global byte_810D724
	.global off_810D910
	.global sub_810D940


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global GetPositiveSignedRNG2

	.include "asm/asm00_1.inc"
// .global sprite_getFrameParameters
// .global sub_800A704

	.include "asm/object.inc"
// .global object_getPanelParameters
// .global object_setPanelAlliance
// .global object_setPanelAllianceTimerLong
// .global object_checkPanelParameters
// .global object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
// .global object_setCoordinatesFromPanels // () -> void
// .global object_setPanelsFromCoordinates
// .global object_getFrontDirection // () -> int
// .global object_addHP
// .global object_canMove
// .global object_setCounterTime
// .global object_setInvulnerableTime
// .global sub_800EB08
// .global object_getEnemyByNameRange

	.include "asm/asm00_2.inc"
// .global sub_800ED90
// .global sub_800F322
// .global object_setAttack0
// .global object_exitAttackState
// .global sub_80126E4
// .global sub_8015C94
// .global sub_8015D80
// .global sub_8016380
// .global sub_80165B8
// .global sub_80165C2
// .global sub_80166AE
// .global sub_8016B02
// .global sub_8016B36
// .global sub_8016B72
// .global sub_8016CE8
// .global object_updateCollisionPanels
// .global object_clearCollisionRegion // () -> void
// .global object_setCollisionRegion
// .global sub_801A082
// .global object_setFlag1 // (int a1) -> void
// .global object_clearFlag // (int bitfield) -> void
// .global object_getFlag // () -> int
// .global object_reservePanel
// .global object_removePanelReserve
// .global sub_801DC7C
// .global sub_801DD34

	.include "asm/asm03_0.inc"
// .global sub_80302A8

	.include "asm/asm31.inc"
// .global sub_80C4072
// .global object_spawnCollisionRegion
// .global sub_80C5578
// .global sub_80CB8DE
// .global SpawnT4BattleObjectWithId0
// .global sub_80E532C
// .global sub_80E5410
// .global sub_8109630
// .global sub_8109660
// .global sub_81096FA
// .global sub_81097BA
// .global sub_8109804
// .global sub_8109952

	.include "asm/asm32.inc"
// .global sub_810D970
// .global sub_810D998
// .global sub_810DCCE


	.endif // INC_DATA_DAT31
