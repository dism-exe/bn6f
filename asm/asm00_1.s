
SpawnObjectJumptable:
	.word SpawnOWPlayerObject+1     // OBJECT_SPAWN_TYPE_OWPLAYER
	.word object_spawnType1+1       // OBJECT_SPAWN_TYPE_UNK_1
	.word SpawnOverworldNPCObject+1 // OBJECT_SPAWN_TYPE_OVERWORLD_NPC
	.word object_spawnType3+1       // OBJECT_SPAWN_TYPE_UNK_3
	.word object_spawnType4+1       // OBJECT_SPAWN_TYPE_UNK_4
	.word SpawnOverworldMapObject+1 // OBJECT_SPAWN_TYPE_OVERWORLD_MAP

FreeObjectJumptable:
	.word FreeOWPlayerObject+1
	.word object_freeMemory+1
	.word FreeOverworldNPCObject+1
	.word object_freeMemory+1
	.word object_freeMemory+1
	.word FreeOverworldMapObject+1
ObjectMemoryPointers:
	.word eOWPlayerObject
	.word eT1BattleObject0
	.word eOverworldNPCObjects
	.word eT3BattleObject0
	.word eT4BattleObject0
	.word eOverworldMapObjects
ActiveObjectBitfieldPointers:
	.word eActiveOWPlayerObjectBitfield
	.word eActiveT1BattleObjectsBitfield
	.word eActiveOverworldNPCObjectsBitfield
	.word eActiveT3BattleObjectsBitfield
	.word eActiveT4BattleObjectsBitfield
	.word eActiveOverworldMapObjectsBitfield
ObjectMemorySizes:
	.word oOWPlayerObject_Size
	.word oT1BattleObject_Size
	.word oOverworldNPCObject_Size
	.word oT3BattleObject_Size
	.word oT4BattleObject_Size
	.word oOverworldMapObject_Size
MaxAmountOfObjects:
	.word 1
	.word NUM_T1_BATTLE_OBJECTS
	.word NUM_OVERWORLD_NPC_OBJECTS
	.word NUM_T3_BATTLE_OBJECTS
	.word NUM_T4_BATTLE_OBJECTS
	.word NUM_OVERWORLD_MAP_OBJECTS

	thumb_local_start
sub_800318C:
	ldr r0, off_80031A4 // =eBattleObjectsLinkedListStart
	ldr r1, off_80031A8 // =eBattleObjectsLinkedListSentinel
	ldr r2, off_80031A0 // =eUnkBattleObjectLinkedList
	mov r3, #0
	str r3, [r2]
	str r3, [r0]
	str r1, [r0,#0x4] // (dword_2009384 - 0x2009380)
	str r0, [r1]
	str r3, [r1,#0x4] // (dword_2009AB4 - 0x2009ab0)
	mov pc, lr
	.balign 4, 0
off_80031A0: .word eUnkBattleObjectLinkedList
off_80031A4: .word eBattleObjectsLinkedListStart
off_80031A8: .word eBattleObjectsLinkedListSentinel
	thumb_func_end sub_800318C

	thumb_local_start
RunBattleObjectLogic:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	bl object_Clear3RAMBytes_800371A
	mov r0, #0
	str r0, [sp]
	ldr r7, .eBattleObjectsLinkedListStart_p
.processBattleObjectLoop
	ldr r7, [r7,#oBattleObject_LinkedList_Next] // linked list
	ldr r0, .eBattleObjectsLinkedListSentinel_p
	cmp r7, r0
	beq .reachedLinkedListSentinel
	ldr r0, .dword_200AF70_p
	str r7, [r0]
	mov r5, #0x10
	add r5, r5, r7
	ldrb r4, [r5,#oBattleObject_Flags]
	mov r6, r10
	ldr r6, [r6,#oToolkit_GameStatePtr]
	ldrb r0, [r6,#oGameState_BattlePaused]
	tst r0, r0
	beq .loc_80031DC
	mov r0, #4
	tst r4, r0
	beq .doneCurrentBattleObject
.loc_80031DC
	bl battle_isTimeStop
	beq .notInTimeStop
	mov r0, #0x10
	tst r4, r0
	beq .doneCurrentBattleObject
.notInTimeStop
	ldrb r0, [r5,#oBattleObject_Type]
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #2
	ldr r1, .BattleObjectFunctionJumptableTable_p
	ldr r0, [r0,r1]
	ldrb r1, [r5,#oBattleObject_Index]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	push {r7}
	mov lr, pc
	bx r0
	pop {r7}
.doneCurrentBattleObject
	bl object_800372A
	b .processBattleObjectLoop
.reachedLinkedListSentinel
	mov r0, #0
	ldr r1, .dword_200AF70_p
	str r0, [r1]
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0
.eBattleObjectsLinkedListStart_p: .word eBattleObjectsLinkedListStart
.eBattleObjectsLinkedListSentinel_p: .word eBattleObjectsLinkedListSentinel
.BattleObjectFunctionJumptableTable_p: .word .BattleObjectFunctionJumptableTable
.BattleObjectFunctionJumptableTable: // 8003220
	// a table of jumptable pointers. Index to an entry is derived from the
	// lower 4 bits of the 2nd (zero-indexed) member of the struct in the
	// linked list, starting from eBattleObjectsLinkedListStart. Index to an entry from the
	// read Jumptable pointer is derived from the first member of the struct
	.word NULL
	.word T1BattleObjectJumptable
	.word NULL
	.word T3BattleObjectJumptable
	.word T4BattleObjectJumptable
.dword_200AF70_p: .word eUnkBattleObjectLinkedList

	.word off_800323C
off_800323C: .word word_8003250
	.word word_8003258
	.word word_8003260
	.word word_8003268
	.word word_8003270
word_8003250: .hword 0x1B
DebugMsg_8003252: .asciz "P%02x"
word_8003258: .hword 0x1B
DebugMsg_800325A: .asciz "E%02x"
word_8003260: .hword 0x1B
DebugMsg_8003262: .asciz "M%02x"
word_8003268: .hword 0x1B
DebugMsg_800326A: .asciz "S%02x"
word_8003270: .hword 0x1B
DebugMsg_8003272: .asciz "F%02x"
	thumb_func_end RunBattleObjectLogic

	thumb_local_start
// clobbers: r0, r1, r2, r3
// returns: r5
SpawnBattleObjectCommon: // 8003278
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r1, [sp]
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #4
	ldr r1, off_80032CC // =dword_80032D0
	add r7, r0, r1
	ldr r1, [r7]
	mov r2, #1
	lsl r2, r2, #0x1f
	ldr r3, [r7,#8]
	ldrb r4, [r7,#0xc]
	ldr r5, [r7,#4]
	ldr r6, [r1]
loc_8003296:
	tst r6, r2
	beq loc_80032A6
	lsr r2, r2, #1
	add r5, r5, r4
	cmp r5, r3
	blt loc_8003296
	mov r5, #0
	b loc_80032C8
loc_80032A6:
	orr r6, r2
	str r6, [r1]
	add r5, #0x10
	mov r0, #4
	// memBlock
	add r0, r0, r5
	// size
	ldrb r1, [r7,#0xd]
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	ldrb r0, [r7,#0xe]
	strb r0, [r5]
	ldr r7, [sp]
	ldmia r7!, {r0-r4}
	strb r0, [r5,#oBattleObject_Index]
	str r1, [r5,#oBattleObject_X]
	str r2, [r5,#oBattleObject_Y]
	str r3, [r5,#oBattleObject_Z]
	str r4, [r5,#oBattleObject_Params]
loc_80032C8:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_80032CC: .word dword_80032D0
dword_80032D0:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

	.word eActiveT1BattleObjectsBitfield
	.word eT1BattleObject0_LinkedList
	.word eT1BattleObject0_LinkedList + oT1BattleObject_Size * NUM_T1_BATTLE_OBJECTS
	.byte oT1BattleObject_Size, oT1BattleObject_SizeWithoutSpriteDataAndLinkedList, 0x19
	.balign 4, 0

	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

	.word eActiveT3BattleObjectsBitfield
	.word eT3BattleObject0_LinkedList
	.word eT3BattleObject0_LinkedList + oT3BattleObject_Size * NUM_T3_BATTLE_OBJECTS
	.byte oT3BattleObject_Size, oT3BattleObject_SizeWithoutSpriteDataAndLinkedList, 0x9
	.balign 4, 0

	.word eActiveT4BattleObjectsBitfield
	.word eT4BattleObject0_LinkedList
	.word eT4BattleObject0_LinkedList + oT4BattleObject_Size * NUM_T4_BATTLE_OBJECTS
	.byte oT4BattleObject_Size, oT4BattleObject_SizeWithoutSpriteDataAndLinkedList, 0x19
	.balign 4, 0
	thumb_func_end SpawnBattleObjectCommon

	thumb_func_start object_spawnType1
object_spawnType1:
	push {r7,lr}
	sub sp, sp, #0x14
	mov r7, sp
	stmia r7!, {r0-r4}
	mov r0, #1
	mov r1, sp
	bl SpawnBattleObjectCommon
	tst r5, r5
	beq loc_8003338
	bl sub_8003400
loc_8003338:
	add sp, sp, #0x14
	pop {r7,pc}
	thumb_func_end object_spawnType1

	thumb_local_start
sub_800333C:
	push {r7,lr}
	sub sp, sp, #0x14
	mov r7, sp
	stmia r7!, {r0-r4}
	mov r0, #1
	mov r1, sp
	bl SpawnBattleObjectCommon
	tst r5, r5
	beq loc_8003354
	bl UpdateBattleObjectLinkedList
loc_8003354:
	add sp, sp, #0x14
	pop {r7,pc}
	thumb_func_end sub_800333C

	thumb_func_start object_spawnType3
object_spawnType3:
	push {r7,lr}
	sub sp, sp, #0x14
	mov r7, sp
	stmia r7!, {r0-r4}
	mov r0, #3
	mov r1, sp
	bl SpawnBattleObjectCommon
	tst r5, r5
	beq loc_8003370
	bl sub_8003400
loc_8003370:
	add sp, sp, #0x14
	pop {r7,pc}
	thumb_func_end object_spawnType3

	thumb_func_start sub_8003374
sub_8003374:
	push {r7,lr}
	sub sp, sp, #0x14
	mov r7, sp
	stmia r7!, {r0-r4}
	mov r0, #3
	mov r1, sp
	bl SpawnBattleObjectCommon
	tst r5, r5
	beq loc_800338C
	bl UpdateBattleObjectLinkedList
loc_800338C:
	add sp, sp, #0x14
	pop {r7,pc}
	thumb_func_end sub_8003374

	thumb_local_start
sub_8003390:
	push {r7,lr}
	sub sp, sp, #0x14
	mov r7, sp
	stmia r7!, {r0-r4}
	mov r0, #3
	mov r1, sp
	bl SpawnBattleObjectCommon
	tst r5, r5
	beq loc_80033A8
	bl sub_8003440
loc_80033A8:
	add sp, sp, #0x14
	pop {r7,pc}
	thumb_func_end sub_8003390

	thumb_func_start object_spawnType4
object_spawnType4:
	push {r7,lr}
	sub sp, sp, #0x14
	mov r7, sp
	stmia r7!, {r0-r4}
	mov r0, #4
	mov r1, sp
	bl SpawnBattleObjectCommon
	tst r5, r5
	beq loc_80033C4
	bl sub_8003400
loc_80033C4:
	add sp, sp, #0x14
	pop {r7,pc}
	thumb_func_end object_spawnType4

	thumb_local_start
sub_80033C8:
	push {r7,lr}
	sub sp, sp, #0x14
	mov r7, sp
	stmia r7!, {r0-r4}
	mov r0, #4
	mov r1, sp
	bl SpawnBattleObjectCommon
	tst r5, r5
	beq loc_80033E0
	bl UpdateBattleObjectLinkedList
loc_80033E0:
	add sp, sp, #0x14
	pop {r7,pc}
	thumb_func_end sub_80033C8

	thumb_func_start sub_80033E4
sub_80033E4:
	push {r7,lr}
	sub sp, sp, #0x14
	mov r7, sp
	stmia r7!, {r0-r4}
	mov r0, #4
	mov r1, sp
	bl SpawnBattleObjectCommon
	tst r5, r5
	beq loc_80033FC
	bl sub_8003440
loc_80033FC:
	add sp, sp, #0x14
	pop {r7,pc}
	thumb_func_end sub_80033E4

	thumb_local_start
sub_8003400:
	push {lr}
	mov r0, #oBattleObject_LinkedList_Size
	sub r0, r5, r0
	ldr r1, off_8003424 // =eUnkBattleObjectLinkedList
	ldr r1, [r1]
	cmp r0, r1 // is the previous battle object of eUnkBattleObjectLinkedList this battle object?
	beq .loc_800341E
	tst r1, r1 // is there a previous battle object for eUnkBattleObjectLinkedList?
	beq .loc_800341E
	// update the previous object pointer of this object to the previous object pointer in eUnkBattleObjectLinkedList
	str r1, [r0,#oBattleObject_LinkedList_Prev]

	// get the next object pointer of eUnkBattleObjectLinkedList
	ldr r2, [r1,#oUnkBattleObjectLinkedList_Next]

	// update the next object pointer of eUnkBattleObjectLinkedList to this battle object
	str r0, [r1,#oUnkBattleObjectLinkedList_Next]

	// update the next object pointer of this battle object to the next object pointer of eUnkBattleObjectLinkedList
	str r2, [r0,#oBattleObject_LinkedList_Next]

	// update the previous object pointer of the next battle object to this battle object
	str r0, [r2,#oBattleObject_LinkedList_Prev]
	b .done
.loc_800341E
	bl UpdateBattleObjectLinkedList
.done
	pop {pc}
	.balign 4, 0
off_8003424: .word eUnkBattleObjectLinkedList
	thumb_func_end sub_8003400

	thumb_local_start
UpdateBattleObjectLinkedList:
	mov r0, #oBattleObject_LinkedList_Size
	sub r0, r5, r0
	ldr r1, .eBattleObjectsLinkedListSentinel_p

	// get the pointer of the object created before this one
	ldr r2, [r1,#oBattleObjectsLinkedListSentinel_Prev]

	// update the next object pointer of the previous object
	str r0, [r2,#oBattleObject_LinkedList_Next]

	// update the prev object pointer of this object
	str r2, [r0,#oBattleObject_LinkedList_Prev]

	// update the next object pointer of this object to the sentinel
	str r1, [r0,#oBattleObject_LinkedList_Next]

	// update the previous object pointer of the sentinel to this object
	str r0, [r1,#oBattleObjectsLinkedListSentinel_Prev]
	mov pc, lr
	.balign 4, 0x00
.eBattleObjectsLinkedListSentinel_p: .word eBattleObjectsLinkedListSentinel
	thumb_func_end UpdateBattleObjectLinkedList

	thumb_local_start
// unused
sub_8003440:
	mov r0, #oBattleObject_LinkedList_Size
	sub r0, r5, r0
	ldr r1, .eBattleObjectsLinkedListStart_p
	ldr r2, [r1,#oBattleObjectsLinkedListStart_Next]
	str r0, [r1,#oBattleObjectsLinkedListStart_Next]
	str r2, [r0,#oBattleObject_LinkedList_Next]
	str r1, [r0,#oBattleObject_LinkedList_Prev]
	str r0, [r2,#oBattleObject_LinkedList_Prev]
	mov pc, lr
	.balign 4, 0x00
.eBattleObjectsLinkedListStart_p: .word eBattleObjectsLinkedListStart
	thumb_func_end sub_8003440

	thumb_func_start object_freeMemory
object_freeMemory:
	push {r5,lr}
	mov r1, #0
	strb r1, [r5,#oBattleObject_Flags]
	ldrb r1, [r5,#oBattleObject_Type]
	mov r2, #0xf
	and r1, r2
	lsl r1, r1, #2
	ldr r2, .ActiveObjectBitfieldPointers_p
	ldr r1, [r2,r1]
	ldrb r2, [r5,#oBattleObject_ListIndex]
	mov r3, #1
	lsl r3, r3, #31
	lsr r3, r2
	ldr r2, [r1]
	bic r2, r3
	str r2, [r1]
	mov r0, #oBattleObject_LinkedList_Size
	sub r0, r5, r0
	ldr r1, [r0,#oBattleObject_LinkedList_Prev]
	ldr r2, [r0,#oBattleObject_LinkedList_Next]
	str r2, [r1,#oBattleObject_LinkedList_Next]
	str r1, [r2,#oBattleObject_LinkedList_Prev]
	bl sprite_makeUnscalable
	pop {r5,pc}
	.balign 4, 0
.ActiveObjectBitfieldPointers_p: .word ActiveObjectBitfieldPointers
	thumb_func_end object_freeMemory

	thumb_local_start
InitializeStructsOfObjectType:
	push {r4,r7,lr}
	ldr r7, .ObjectInitializationTable_p
	lsl r1, r0, #4
	add r7, r7, r1 // ObjectInitializationTable + r0 * 16
	lsl r1, r0, #2
	ldr r4, .ActiveObjectBitfieldPointers_p
	// memBlock
	ldr r0, [r4,r1] // r0 = [ActiveObjectBitfieldPointers + r0 * 4]
	ldrb r1, [r7,#0xc] // r1 = ObjectInitializationTable[r0] + 0xc
	add r1, #0x1f
	lsr r1, r1, #5
	// sprite offset * 4
	lsl r1, r1, #2
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	// memBlock
	ldr r0, [r7]
	// size
	ldrh r1, [r7,#8]
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	ldr r0, [r7,#4]
	mov r1, #0
	ldrb r2, [r7,#0xa]
	ldrb r3, [r7,#0xc]
	ldrb r4, [r7,#0xb]
.loop
	strb r2, [r0,#2]
	strb r1, [r0,#3]
	add r0, r0, r4
	add r1, #1
	cmp r1, r3
	blt .loop
	pop {r4,r7,pc}
	.balign 4, 0
.ObjectInitializationTable_p: .word .ObjectInitializationTable
.ObjectInitializationTable:
	// word 1 is part of a linked list?
	// word 2 is the actual list of structs
	// byte 1 is struct offset part 2?
	// OWPlayer struct
	.word eOWPlayerObject, eOWPlayerObject
	.hword oOWPlayerObject_Size
	.byte oOWPlayerObject_SpriteData | OVERWORLD_PLAYER_OBJECT
	.byte oOWPlayerObject_Size, 1
	.balign 4, 0x00

	// type 1 battle objects
	.word eT1BattleObject0_LinkedList, eT1BattleObject0
	.hword NUM_T1_BATTLE_OBJECTS * oT1BattleObject_Size
	.byte oT1BattleObject_SpriteData | T1_BATTLE_OBJECT
	.byte oT1BattleObject_Size, NUM_T1_BATTLE_OBJECTS
	.balign 4, 0x00

	// NPC Structs
	.word eOverworldNPCObjects
	.word eOverworldNPCObjects
	.hword NUM_OVERWORLD_NPC_OBJECTS * oOverworldNPCObject_Size
	.byte oOverworldNPCObject_SpriteData | OVERWORLD_NPC_OBJECT
	.byte oOverworldNPCObject_Size, NUM_OVERWORLD_NPC_OBJECTS
	.balign 4, 0x00

	// type 3 battle objects
	.word eT3BattleObject0_LinkedList, eT3BattleObject0
	.hword NUM_T3_BATTLE_OBJECTS * oT3BattleObject_Size
	.byte oT3BattleObject_SpriteData | T3_BATTLE_OBJECT
	.byte oT3BattleObject_Size, NUM_T3_BATTLE_OBJECTS
	.balign 4, 0x00

	// type 4 battle objects
	.word eT4BattleObject0_LinkedList, eT4BattleObject0
	.hword NUM_T4_BATTLE_OBJECTS * oT4BattleObject_Size
	.byte oT4BattleObject_SpriteData | T4_BATTLE_OBJECT
	.byte oT4BattleObject_Size, NUM_T4_BATTLE_OBJECTS
	.balign 4, 0x00

	// map objects
	.word eOverworldMapObjects, eOverworldMapObjects
	.hword NUM_OVERWORLD_MAP_OBJECTS * oOverworldMapObject_Size
	.byte oOverworldMapObject_SpriteData | OVERWORLD_MAP_OBJECT
	.byte oOverworldMapObject_Size, NUM_OVERWORLD_MAP_OBJECTS
	.balign 4, 0x00

.ActiveObjectBitfieldPointers_p: .word ActiveObjectBitfieldPointers
	thumb_func_end InitializeStructsOfObjectType

	thumb_func_start InitializeOWPlayerObjectStruct
InitializeOWPlayerObjectStruct:
	push {lr}
	mov r0, #OVERWORLD_PLAYER_OBJECT
	bl InitializeStructsOfObjectType
	pop {pc}
	thumb_func_end InitializeOWPlayerObjectStruct

	thumb_local_start
InitializeT1BattleObjectStructs:
	push {lr}
	mov r0, #T1_BATTLE_OBJECT
	bl InitializeStructsOfObjectType
	pop {pc}
	thumb_func_end InitializeT1BattleObjectStructs

	thumb_local_start
InitializeT3BattleObjectStructs:
	push {lr}
	mov r0, #T3_BATTLE_OBJECT
	bl InitializeStructsOfObjectType
	pop {pc}
	thumb_func_end InitializeT3BattleObjectStructs

	thumb_local_start
InitializeT4BattleObjectStructs:
	push {lr}
	mov r0, #T4_BATTLE_OBJECT
	bl InitializeStructsOfObjectType
	pop {pc}
	thumb_func_end InitializeT4BattleObjectStructs

	thumb_func_start InitializeOverworldNPCObjectStructs
InitializeOverworldNPCObjectStructs:
	push {lr}
	mov r0, #OVERWORLD_NPC_OBJECT
	bl InitializeStructsOfObjectType
	pop {pc}
	thumb_func_end InitializeOverworldNPCObjectStructs

	thumb_func_start InitializeOverworldMapObjectStructs
InitializeOverworldMapObjectStructs:
	push {lr}
	mov r0, #OVERWORLD_MAP_OBJECT
	bl InitializeStructsOfObjectType
	pop {pc}
	thumb_func_end InitializeOverworldMapObjectStructs


	thumb_func_start SpawnObjectsFromList
SpawnObjectsFromList: // (void *a1) -> int
	push {r4-r7,lr}
	
	// void* vA1: r7
	// i: r4
	mov r7, r0
	mov r4, #0

.spawnObjectsLoop
	// vSpawnObjectJumpTable: r0
	// u8 v1: r1 = *vA1
	ldr r0, SpawnObjectJumptable_p // =SpawnObjectJumptable
	ldrb r1, [r7]

	cmp r1, #0xff // if v1 == 0xff
	beq .doneSpawningObjects

	// vCallBack: r6 = vSpawnObjectJumpTable[4*v1]
	lsl r1, r1, #2
	ldr r6, [r0,r1]
	
	push {r4,r7}

	ldrb r0, [r7,#1]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	ldr r3, [r7,#0xc]
	ldr r4, [r7,#0x10]

	// vCallBack(...) to spawn object into r5
	mov lr, pc
	bx r6
	
	pop {r4,r7}
	
	tst r5, r5
	beq .currentObjectFailedToSpawn

	// i++
	add r4, #1

.currentObjectFailedToSpawn
	add r7, #0x14

	b .spawnObjectsLoop

	// return i
.doneSpawningObjects
	mov r0, r4
	pop {r4-r7,pc}
	thumb_func_end SpawnObjectsFromList


	.set oStack_FreeObjectJumptable, 0x4
	.set oStack_ObjectMemoryPointers, 0x8
	.set oStack_ActiveObjectBitfieldPointers, 0xc
	.set oStack_ObjectMemorySizes, 0x10
	.set oStack_MaxAmountOfObjects, 0x14

	thumb_func_start FreeAllObjectsOfSpecifiedTypes
/* r0 - bitfield of which object types to free */
FreeAllObjectsOfSpecifiedTypes:
	push {r4-r7,lr}
	sub sp, sp, #0x18
	ldr r1, off_8003618 // =FreeObjectJumptable
	ldr r2, off_800361C // =ObjectMemoryPointers
	ldr r3, off_8003620 // =ActiveObjectBitfieldPointers
	ldr r4, off_8003624 // =ObjectMemorySizes
	ldr r5, off_8003628 // =MaxAmountOfObjects
.loop
	str r0, [sp]
	str r1, [sp,#oStack_FreeObjectJumptable]
	str r2, [sp,#oStack_ObjectMemoryPointers]
	str r3, [sp,#oStack_ActiveObjectBitfieldPointers]
	str r4, [sp,#oStack_ObjectMemorySizes]
	str r5, [sp,#oStack_MaxAmountOfObjects]
	// are there no more objects to free?
	tst r0, r0
	beq .doneFreeingObjects
	// test whether to free the current object type
	mov r1, #1
	tst r0, r1
	beq .skipObjectType
	// get the memory pointer of the object
	ldr r5, [sp,#oStack_ObjectMemoryPointers]
	ldr r5, [r5]
	// r7 - current object bit
	mov r7, #0x80
	lsl r7, r7, #0x18
	// r6 - current object index
	mov r6, #0
.freeAllObjectsOfTypeLoop
	ldr r0, [sp,#oStack_ActiveObjectBitfieldPointers]
	ldr r0, [r0]
	// get byte offset of bitfield
	lsr r1, r6, #5
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	// is the object active?
	tst r0, r7
	beq .objectNotActive
	// call free object routine
	ldr r0, [sp,#oStack_FreeObjectJumptable]
	ldr r0, [r0]
	mov lr, pc
	bx r0
.objectNotActive
	// current bit to test has to be rotated
	// because map objects have more than 32
	// slots allocated
	mov r0, #1
	ror r7, r0
	// read the size of the object...
	ldr r0, [sp,#oStack_ObjectMemorySizes]
	ldr r0, [r0]
	// ...and add it to the current object pointer
	// to get the next object
	add r5, r5, r0
	// increment current object index
	add r6, #1
	ldr r0, [sp,#oStack_MaxAmountOfObjects]
	ldr r0, [r0]
	// have we freed all objects yet?
	cmp r6, r0
	blt .freeAllObjectsOfTypeLoop
.skipObjectType
	// read current state
	ldr r0, [sp]
	ldr r1, [sp,#oStack_FreeObjectJumptable]
	ldr r2, [sp,#oStack_ObjectMemoryPointers]
	ldr r3, [sp,#oStack_ActiveObjectBitfieldPointers]
	ldr r4, [sp,#oStack_ObjectMemorySizes]
	ldr r5, [sp,#oStack_MaxAmountOfObjects]
	// shift to get the next value in the bitfield
	lsr r0, r0, #1
	// advance to the next element
	add r1, #4
	add r2, #4
	add r3, #4
	add r4, #4
	add r5, #4
	b .loop
.doneFreeingObjects
	add sp, sp, #0x18
	pop {r4-r7,pc}
	.balign 4, 0
off_8003618: .word FreeObjectJumptable
off_800361C: .word ObjectMemoryPointers
off_8003620: .word ActiveObjectBitfieldPointers
off_8003624: .word ObjectMemorySizes
off_8003628: .word MaxAmountOfObjects
	thumb_func_end FreeAllObjectsOfSpecifiedTypes

	thumb_func_start sub_800362C
sub_800362C:
	push {r4-r7,lr}
	mov r3, r10
	ldr r3, [r3,#oToolkit_CameraPtr]
	mov r2, #2
	ldrsh r1, [r0,r2]
	ldr r4, [r3,#oCamera_nextX_3c]
	asr r4, r4, #0x10
	sub r1, r1, r4
	ldr r6, off_8003690 // =eCamera+76
	ldrb r6, [r6]
	tst r6, r6
	beq loc_8003646
	neg r1, r1
loc_8003646:
	add r1, #0x78
	mov r2, #6
	ldrsh r6, [r0,r2]
	ldr r4, [r3,#oCamera_nextY_40]
	asr r4, r4, #0x10
	sub r6, r6, r4
	add r6, #0x50
	mov r2, #0xa
	ldrsh r4, [r0,r2]
	ldr r2, [r3,#oCamera_nextZ_44]
	asr r2, r2, #0x10
	sub r4, r4, r2
	sub r6, r6, r4
	mov r2, #0x20
	neg r2, r2
	cmp r1, r2
	blt loc_8003688
	mov r2, #0xf0
	add r2, #0x20
	cmp r1, r2
	bge loc_8003688
	mov r2, #0x20
	neg r2, r2
	cmp r6, r2
	blt loc_8003688
	mov r2, #0xa0
	add r2, #0x40
	cmp r6, r2
	bge loc_8003688
	mov r0, r1
	mov r1, r6
	mov r2, #1
	pop {r4-r7,pc}
loc_8003688:
	mov r0, #0xa0
	mov r1, #0x50
	mov r2, #0
	pop {r4-r7,pc}
	.balign 4, 0
off_8003690: .word eCamera+0x4C // eCamera.unk_4C
	thumb_func_end sub_800362C

	thumb_func_start sub_8003694
sub_8003694:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	push {r4,r5}
	mov r3, r10
	ldr r3, [r3,#oToolkit_CameraPtr]
	ldr r1, [r0]
	ldr r4, [r3,#0x3c]
	sub r1, r1, r4
	mov r8, r1
	ldr r6, [r0,#4]
	ldr r4, [r3,#0x40]
	sub r6, r6, r4
	add r1, r1, r6
	asr r1, r1, #0x10
	add r1, #0x78
	mov r2, r8
	sub r6, r6, r2
	asr r6, r6, #1
	mov r7, r6
	ldr r2, [r3,#0x44]
	mov r4, #0x80
	lsl r4, r4, #0x10
	add r2, r2, r4
	add r4, r2, r6
	asr r4, r4, #0x10
	mov r9, r4
	ldr r4, [r0,#8]
	sub r6, r6, r4
	ldr r2, [r3,#0x44]
	add r6, r6, r2
	asr r6, r6, #0x10
	add r6, #0x52
	mov r2, #0x20
	neg r2, r2
	cmp r1, r2
	blt loc_8003708
	mov r2, #0xf0
	add r2, #0x20
	cmp r1, r2
	bge loc_8003708
	mov r2, #0x20
	neg r2, r2
	cmp r6, r2
	blt loc_8003708
	mov r2, #0xa0
	add r2, #0x40
	cmp r6, r2
	bge loc_8003708
	mov r0, r1
	mov r1, r6
	mov r2, #1
	mov r3, r9
	add r3, #0x60
	pop {r4,r5}
	mov r8, r4
	mov r9, r5
	pop {r4-r7,pc}
loc_8003708:
	mov r0, r1
	mov r1, r6
	mov r2, #0
	mov r3, r9
	add r3, #0x60
	pop {r4,r5}
	mov r8, r4
	mov r9, r5
	pop {r4-r7,pc}
	thumb_func_end sub_8003694

	thumb_local_start
object_Clear3RAMBytes_800371A:
	mov r0, #0
	ldr r1, off_8003780 // =byte_2036778
	strb r0, [r1]
	ldr r1, off_8003784 // =dword_203CA7C
	strb r0, [r1]
	ldr r1, off_8003788 // =byte_2036830
	strb r0, [r1]
	mov pc, lr
	thumb_func_end object_Clear3RAMBytes_800371A

	thumb_local_start
object_800372A:
	ldrb r0, [r5,#oBattleObject_Type]
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #3
	ldr r1, .dword_800374C_p
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0,#4]
	ldrb r0, [r2]
	lsl r3, r0, #2
	str r5, [r1,r3]
	add r0, #1
	strb r0, [r2]
	mov pc, lr
	.balign 4, 0
.dword_800374C_p: .word object_PtrPairs_800374C
object_PtrPairs_800374C:
	.word 0x0, 0x0
	.word dword_2039A10, byte_2036778
	.word 0x0, 0x0
	.word dword_203A010, dword_203CA7C
	.word byte_203F750, byte_2036830
	.word 0x0, 0x0
SpawnObjectJumptable_p: .word SpawnObjectJumptable
off_8003780: .word byte_2036778
off_8003784: .word dword_203CA7C
off_8003788: .word byte_2036830
	thumb_func_end object_800372A

	thumb_func_start ZeroFillObjectInteractionAreas_800378C
ZeroFillObjectInteractionAreas_800378C: // () -> ()
	push {lr}
	// memBlock
	ldr r0, off_80037A0 // =eOWObjectInteractionAreas
	// size
	ldr r1, off_80037A4 // =0x280
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()

	ldr r0, off_80037A8 // =eNumOWObjectInteractionAreas
	mov r1, #0
	str r1, [r0]

	pop {pc}
	.balign 4, 0
off_80037A0: .word eOWObjectInteractionAreas
off_80037A4: .word 0x280
off_80037A8: .word eNumOWObjectInteractionAreas
	thumb_func_end ZeroFillObjectInteractionAreas_800378C

	thumb_func_start createOWObjectInteractionArea_80037ac
// something to do with interacting with npcs? maybe other objects too
// r0 - x coordinate
// r1 - y coordinate
// r2 - z coordinate
// r3 - radius, z coordinate reach?
// r4 - flags?
// r5 - flags?
// r6 - memory address to write success value
createOWObjectInteractionArea_80037ac:
	push {r7,lr}

	mov r7, #0x80
	lsl r7, r7, #8 // r7 = 0x8000

	add r0, r0, r7
	lsr r0, r0, #0x10

	add r1, r1, r7
	lsr r1, r1, #0x10

	lsl r1, r1, #0x10
	orr r1, r0

	add r2, r2, r7
	lsr r2, r2, #0x10

	lsl r3, r3, #0x10
	orr r2, r3

	ldr r7, =eNumOWObjectInteractionAreas
	ldr r0, [r7]
	cmp r0, #0x20
	blt .notFull
	pop {r7,pc}
.notFull
	mov r7, #oOWObjectInteractionArea_Size
	mul r7, r0
	ldr r0, =eOWObjectInteractionAreas
	add r7, r7, r0
	str r1, [r7,#oOWObjectInteractionArea_xyPacked_00]
	str r2, [r7,#oOWObjectInteractionArea_Z_Radius_ZReachAmount]
	str r4, [r7,#oOWObjectInteractionArea_Unk_08]
	str r5, [r7,#oOWObjectInteractionArea_Unk_0c]
	str r6, [r7,#oOWObjectInteractionArea_Unk_10]
	ldr r7, =eNumOWObjectInteractionAreas
	ldr r0, [r7]
	add r0, #1
	str r0, [r7]
	pop {r7,pc}
	.balign 4, 0
	.pool // 80037EC
	thumb_func_end createOWObjectInteractionArea_80037ac

	thumb_func_start checkOWObjectInteractions_80037f4
// something to do with interacting with npcs? maybe other objects too

// 1, 2, 3
// a, b, c

// 1 a = 1 unk0c, a unk08
checkOWObjectInteractions_80037f4:
	push {r5,lr}
	ldr r0, off_8003884 // =eNumOWObjectInteractionAreas
	ldr r0, [r0]
	cmp r0, #1
	ble loc_800387C
	ldr r5, off_8003888 // =eOWObjectInteractionAreas
	// let r6 = i
	mov r6, #0
loc_8003802:
	mov r0, #oOWObjectInteractionArea_Size
	mul r0, r6
	// r3 = &eOWObjectInteractionAreas[i]
	add r3, r5, r0
	// let r7 = j
	mov r7, #0
loc_800380A:
	cmp r6, r7
	beq loc_800386A
	// r3 = outer ow object
	// r4 = inner ow object
	mov r0, #oOWObjectInteractionArea_Size
	mul r0, r7
	add r4, r5, r0
	ldr r0, [r3,#oOWObjectInteractionArea_Unk_0c]
	ldr r1, [r4,#oOWObjectInteractionArea_Unk_08]
	tst r0, r1
	beq loc_800386A
	mov r0, r3
	mov r1, r4
	push {r3-r7}
	bl checkOWObjectInteractionAreasOverlap_8003894
	pop {r3-r7}
	tst r0, r0
	beq loc_800386A
	push {r7}
	ldr r0, [r3,#oOWObjectInteractionArea_Unk_0c]
	ldr r1, [r4,#oOWObjectInteractionArea_Unk_08]
	and r0, r1
	ldr r7, [r3,#oOWObjectInteractionArea_Unk_10]
	ldr r1, [r7]
	orr r0, r1
	str r0, [r7]
	ldr r0, [r3,#oOWObjectInteractionArea_Unk_08]
	ldr r1, dword_8003890 // =OW_OBJECT_INTERACTION_AREA_FLAG_0x200000
	tst r0, r1
	beq loc_800385C
	push {r0-r2}
	ldr r0, off_800388C // =eOWPlayerObject
	ldrh r1, [r4,#oOWObjectInteractionArea_X]
	mov r2, #oOWPlayerObject_Unk_72 // (word_2009FB2 - 0x2009f40)
	strh r1, [r0,r2]
	ldrh r1, [r4,#oOWObjectInteractionArea_Y]
	mov r2, #oOWPlayerObject_Unk_74 // (word_2009FB4 - 0x2009f40)
	strh r1, [r0,r2]
	ldrh r1, [r4,#oOWObjectInteractionArea_Z]
	mov r2, #oOWPlayerObject_Unk_76 // (word_2009FB6 - 0x2009f40)
	strh r1, [r0,r2]
	pop {r0-r2}
loc_800385C:
	ldr r1, [r4,#oOWObjectInteractionArea_Unk_0c]
	and r0, r1
	ldr r7, [r4,#oOWObjectInteractionArea_Unk_10]
	ldr r1, [r7]
	orr r0, r1
	str r0, [r7]
	pop {r7}
loc_800386A:
	add r7, #1
	ldr r0, off_8003884 // =eNumOWObjectInteractionAreas
	ldr r0, [r0]
	cmp r0, r7
	bgt loc_800380A
	add r6, #1
	cmp r0, r6
	beq loc_800387C
	b loc_8003802
loc_800387C
	mov r0, #0
	ldr r1, off_8003884 // =eNumOWObjectInteractionAreas
	str r0, [r1]
	pop {r5,pc}
	.balign 4, 0
off_8003884: .word eNumOWObjectInteractionAreas
off_8003888: .word eOWObjectInteractionAreas
off_800388C: .word eOWPlayerObject
dword_8003890: .word OW_OBJECT_INTERACTION_AREA_FLAG_0x200000
	thumb_func_end checkOWObjectInteractions_80037f4

	thumb_local_start
// check if two objects' interaction areas overlap?
checkOWObjectInteractionAreasOverlap_8003894:
	push {lr}
	// r2 = aX - bX
	mov r6, #oOWObjectInteractionArea_X
	ldrsh r2, [r0,r6]
	ldrsh r3, [r1,r6]
	sub r2, r2, r3

	// r3 = aY - bY
	mov r6, #oOWObjectInteractionArea_Y
	ldrsh r3, [r0,r6]
	ldrsh r4, [r1,r6]
	sub r3, r3, r4

	// r2 = r2 ** 2
	mov r5, r2
	mul r2, r5

	// r3 = r3 ** 2
	mov r5, r3
	mul r3, r5

	// r2 = r2 + r3
	add r2, r2, r3

	// r3 = (a6 + b6) ** 2
	ldrb r3, [r0,#oOWObjectInteractionArea_Radius]
	ldrb r4, [r1,#oOWObjectInteractionArea_Radius]
	add r3, r3, r4
	mov r4, r3
	mul r3, r4

	// if ((aX - bX)**2 + (aY - bY)**2 >= (a6 + b6) ** 2)
	//     return 0;
	// possibly checking whether object 1's interaction area intersects object 2's interaction area?
	cmp r2, r3
	blt .twoObjectsClose
	mov r0, #0
	pop {pc}
.twoObjectsClose
	mov r6, #oOWObjectInteractionArea_Z
	ldrsh r2, [r0,r6]
	ldrsh r3, [r1,r6]
	// compare A and B's Z coordinates
	cmp r2, r3
	blt .aZLessThanbZ
	// B is looking towards A

	// add Z reach amount
	ldrb r4, [r1,#oOWObjectInteractionArea_ZReachAmount]
	add r3, r3, r4

	// now try again
	cmp r2, r3
	ble .interactionSuccessful
	mov r0, #0
	pop {pc}
.aZLessThanbZ
	// A is looking towards B

	// add Z reach amount
	ldrb r4, [r0,#oOWObjectInteractionArea_ZReachAmount]
	add r2, r2, r4

	// now check if A can reach B, given the reach amount
	cmp r3, r2
	ble .interactionSuccessful
	mov r0, #0
	pop {pc}
.interactionSuccessful
	mov r0, #1
	pop {pc}
	.balign 4, 0
jt_80038E8: .word sub_8142248+1
	.word 0x0
	.word 0x0
	.word 0x1
	.word sub_808FEA4+1
	.word 0x0
	.word 0x0
	.word 0x1
	thumb_func_end checkOWObjectInteractionAreasOverlap_8003894

	thumb_local_start
Clear_eStruct2000780:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_80039F0 // =eScenarioEffectState2000780
	// size
	mov r1, #0x48
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {r4-r7,pc}
	thumb_func_end Clear_eStruct2000780

	thumb_func_start initScenarioEffect_8003914
initScenarioEffect_8003914:
	push {r4-r7,lr}
	ldr r5, off_80039F0 // =eScenarioEffectState2000780
	push {r0}
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x48
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {r0}
	strb r0, [r5,#0x1] // (byte_2000781 - 0x2000780)
	ldr r7, off_80039F4 // =jt_80038E8
	mov r1, #0x10
	ldrb r0, [r5,#0x1] // (byte_2000781 - 0x2000780)
	mul r0, r1
	add r7, r7, r0
	ldr r0, [r7,#8]
	str r0, [r5,#0x4] // (byte_2000784 - 0x2000780)
	ldr r0, [r7,#0xc]
	strb r0, [r5,#0x2] // (byte_2000782 - 0x2000780)
	mov r0, #1
	strb r0, [r5]
	strb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end initScenarioEffect_8003914

	thumb_func_start endScenarioEffectMaybe_8003940
endScenarioEffectMaybe_8003940:
	push {r4-r7,lr}
	ldr r5, off_80039F0 // =eScenarioEffectState2000780
	ldr r7, off_80039F4 // =jt_80038E8
	mov r1, #0x10
	ldrb r0, [r5,#0x1] // (byte_2000781 - 0x2000780)
	mul r0, r1
	add r7, r7, r0
	ldr r0, [r7,#4]
	tst r0, r0
	beq .noCustomEndFunction
	mov lr, pc
	bx r0
.noCustomEndFunction
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x48
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {r4-r7,pc}
	thumb_func_end endScenarioEffectMaybe_8003940

	thumb_func_start sub_8003962
sub_8003962:
	push {r4-r7,lr}
	ldr r5, off_80039F0 // =eScenarioEffectState2000780
	ldrb r0, [r5,#0x2] // (byte_2000782 - 0x2000780)
	tst r0, r0
	bne loc_8003974
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x48
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
loc_8003974:
	mov r0, #1
	strb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_8003962

	thumb_local_start
sub_800397A:
	push {r4-r7,lr}
	ldr r5, off_80039F0 // =eScenarioEffectState2000780
	mov r0, #1
	strb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_800397A

	thumb_func_start sub_8003984
sub_8003984:
	push {r4-r7,lr}
	ldr r5, off_80039F0 // =eScenarioEffectState2000780
	mov r0, #1
	ldrb r0, [r5]
	tst r0, r0
	beq locret_8003998
	mov r1, #0x80
	ldrb r0, [r5]
	orr r0, r1
	strb r0, [r5]
locret_8003998:
	pop {r4-r7,pc}
	thumb_func_end sub_8003984

	thumb_func_start sub_800399A
sub_800399A:
	push {r4-r7,lr}
	ldr r5, off_80039F0 // =eScenarioEffectState2000780
	mov r0, #1
	ldrb r0, [r5]
	mov r1, #0x7f
	and r0, r1
	strb r0, [r5]
	pop {r4-r7,pc}
	thumb_func_end sub_800399A

	thumb_local_start
sub_80039AA:
	push {r4-r7,lr}
	ldr r5, off_80039F0 // =eScenarioEffectState2000780
	ldrb r0, [r5]
	tst r0, r0
	beq locret_80039CA
	mov r1, #0x80
	tst r0, r1
	bne locret_80039CA
	ldr r7, off_80039F4 // =jt_80038E8
	mov r1, #0x10
	ldrb r0, [r5,#0x1] // (byte_2000781 - 0x2000780)
	mul r0, r1
	add r7, r7, r0
	ldr r0, [r7]
	mov lr, pc
	bx r0
locret_80039CA:
	pop {r4-r7,pc}
	thumb_func_end sub_80039AA

	thumb_func_start Is_eScenarioEffectState2000780_Initialized
Is_eScenarioEffectState2000780_Initialized:
	ldr r1, off_80039F0 // =eScenarioEffectState2000780
	ldrb r0, [r1]
	tst r0, r0
	mov pc, lr
	thumb_func_end Is_eScenarioEffectState2000780_Initialized

	thumb_func_start sub_80039D4
sub_80039D4:
	push {r4-r7,lr}
	mov r7, r0
	mov r4, #0
	bl Is_eScenarioEffectState2000780_Initialized
	beq loc_80039EA
	ldr r0, off_80039F0 // =eScenarioEffectState2000780
	ldrb r0, [r0,#0x1] // (byte_2000781 - 0x2000780)
	cmp r0, r7
	bne loc_80039EA
	mov r4, #1
loc_80039EA:
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0
off_80039F0: .word eScenarioEffectState2000780
off_80039F4: .word jt_80038E8
off_80039F8: .word sub_81419A0+1
	.word 0x0, 0x0
	.word 0x1, 0x0, 0x0
	.word 0xFFFFFFFF, 0x0
	.word sub_8143482+1
	.word 0x0, 0x0
	.word 0x1, 0x0, 0x0
	.word 0xFFFFFFFF, 0x0, 0x0, 0x0
	.word 0xFFFFFFFF, 0x0
	.word sub_8144048+1
	.word 0x0, 0x0
	.word 0x1
	thumb_func_end sub_80039D4

	thumb_local_start
sub_8003A58:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_8003B40 // =eStruct2001010
	// size
	mov r1, #0x48
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {r4-r7,pc}
	thumb_func_end sub_8003A58

	thumb_func_start initMinigameEffect_8003a64
initMinigameEffect_8003a64:
	push {r4-r7,lr}
	ldr r5, off_8003B40 // =eStruct2001010
	push {r0}
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x48
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {r0}
	strb r0, [r5,#0x1] // (byte_2001011 - 0x2001010)
	ldr r7, off_8003B44 // =off_80039F8
	mov r1, #0x10
	ldrb r0, [r5,#0x1] // (byte_2001011 - 0x2001010)
	mul r0, r1
	add r7, r7, r0
	ldr r0, [r7,#8]
	str r0, [r5,#0x4] // (dword_2001014 - 0x2001010)
	ldr r0, [r7,#0xc]
	strb r0, [r5,#0x2] // (byte_2001012 - 0x2001010)
	mov r0, #1
	strb r0, [r5]
	strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end initMinigameEffect_8003a64

	thumb_func_start endMinigameEffectMaybe_8003a90
endMinigameEffectMaybe_8003a90:
	push {r4-r7,lr}
	ldr r5, off_8003B40 // =eStruct2001010
	ldr r7, off_8003B44 // =off_80039F8
	mov r1, #0x10
	ldrb r0, [r5,#0x1] // (byte_2001011 - 0x2001010)
	mul r0, r1
	add r7, r7, r0
	ldr r0, [r7,#4]
	tst r0, r0
	beq .noCustomEndFunction
	mov lr, pc
	bx r0
.noCustomEndFunction
	mov r0, r5
	mov r1, #0x48
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {r4-r7,pc}
	thumb_func_end endMinigameEffectMaybe_8003a90

	thumb_func_start zeroFill_8003AB2
zeroFill_8003AB2:
	push {r4-r7,lr}
	ldr r5, off_8003B40 // =eStruct2001010
	ldrb r0, [r5,#0x2] // (byte_2001012 - 0x2001010)
	tst r0, r0
	bne loc_8003AC4
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x48
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
loc_8003AC4:
	mov r0, #1
	strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end zeroFill_8003AB2

	thumb_local_start
sub_8003ACA:
	push {r4-r7,lr}
	ldr r5, off_8003B40 // =eStruct2001010
	mov r0, #1
	strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end sub_8003ACA

	thumb_func_start sub_8003AD4
sub_8003AD4:
	push {r4-r7,lr}
	ldr r5, off_8003B40 // =eStruct2001010
	mov r0, #1
	ldrb r0, [r5]
	tst r0, r0
	beq locret_8003AE8
	mov r1, #0x80
	ldrb r0, [r5]
	orr r0, r1
	strb r0, [r5]
locret_8003AE8:
	pop {r4-r7,pc}
	thumb_func_end sub_8003AD4

	thumb_func_start sub_8003AEA
sub_8003AEA:
	push {r4-r7,lr}
	ldr r5, off_8003B40 // =eStruct2001010
	mov r0, #1
	ldrb r0, [r5]
	mov r1, #0x7f
	and r0, r1
	strb r0, [r5]
	pop {r4-r7,pc}
	thumb_func_end sub_8003AEA

	thumb_local_start
sub_8003AFA:
	push {r4-r7,lr}
	ldr r5, off_8003B40 // =eStruct2001010
	ldrb r0, [r5]
	tst r0, r0
	beq locret_8003B1A
	mov r1, #0x80
	tst r0, r1
	bne locret_8003B1A
	ldr r7, off_8003B44 // =off_80039F8
	mov r1, #0x10
	ldrb r0, [r5,#0x1] // (byte_2001011 - 0x2001010)
	mul r0, r1
	add r7, r7, r0
	ldr r0, [r7]
	mov lr, pc
	bx r0
locret_8003B1A:
	pop {r4-r7,pc}
	thumb_func_end sub_8003AFA

	thumb_func_start Is_eStruct2001010_Initialized
Is_eStruct2001010_Initialized:
	ldr r1, off_8003B40 // =eStruct2001010
	ldrb r0, [r1]
	tst r0, r0
	mov pc, lr
	thumb_func_end Is_eStruct2001010_Initialized

	thumb_local_start
sub_8003B24:
	push {r4-r7,lr}
	mov r7, r0
	mov r4, #0
	bl Is_eStruct2001010_Initialized
	beq loc_8003B3A
	ldr r0, off_8003B40 // =eStruct2001010
	ldrb r0, [r0,#0x1] // (byte_2001011 - 0x2001010)
	cmp r0, r7
	bne loc_8003B3A
	mov r4, #1
loc_8003B3A:
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0
off_8003B40: .word eStruct2001010
off_8003B44: .word off_80039F8
off_8003B48: .word owPlayer_main+1
	thumb_func_end sub_8003B24

	thumb_func_start SpawnOWPlayerObject
SpawnOWPlayerObject:
	push {r0-r4,lr}
	ldr r0, off_8003C90 // =eActiveOWPlayerObjectBitfield
	ldr r2, [r0]
	mov r1, #0x80
	lsl r1, r1, #0x18
	ldr r5, off_8003C94 // =eOWPlayerObject
	ldr r3, off_8003C98 // =eOWPlayerObjectEnd
loc_8003B5A:
	tst r2, r1
	beq loc_8003B68
	lsr r1, r1, #1
	add r5, #0xc8
	cmp r5, r3
	bge loc_8003B82
	b loc_8003B5A
loc_8003B68:
	orr r2, r1
	str r2, [r0]
	mov r0, #9
	strb r0, [r5]
	pop {r0-r4}
	strb r0, [r5,#1]
	str r1, [r5,#0x1c]
	str r2, [r5,#0x20]
	str r3, [r5,#0x24]
	str r4, [r5,#4]
	mov r0, #0
	str r0, [r5,#8]
	pop {pc}
loc_8003B82:
	mov r5, #0
	pop {r0-r4,pc}
	thumb_func_end SpawnOWPlayerObject

	thumb_func_start FreeOWPlayerObject
FreeOWPlayerObject:
	push {lr}
	mov r0, #0x80
	lsl r0, r0, #0x18
	ldrb r1, [r5,#oObjectHeader_ListIndex]
	lsr r0, r1
	ldr r1, off_8003C90 // =eActiveOWPlayerObjectBitfield
	ldr r2, [r1]
	bic r2, r0
	str r2, [r1]
	mov r1, #0
	strb r1, [r5,#oObjectHeader_Flags]
	bl sprite_makeUnscalable
	pop {pc}
	thumb_func_end FreeOWPlayerObject

	thumb_func_start TryUpdateEachOWPlayerObject_8003BA2
TryUpdateEachOWPlayerObject_8003BA2: // () -> ()
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	sub sp, sp, #8
	ldr r5, off_8003C94 // =eOWPlayerObject
	ldr r0, off_8003BF0 // =off_8003B48
	ldr r1, off_8003C98 // =eOWPlayerObjectEnd
	str r0, [sp]
	str r1, [sp,#4]

.forEachOWPlayerObject:

	mov r1, #OBJECT_FLAG_ACTIVE
	ldrb r0, [r5, #oObjectHeader_Flags]

  // branch if !OBJECT_FLAG_ACTIVE
	tst r0, r1
	beq .endcheck

  // branch if !BattlePaused
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r1, [r7,#oGameState_BattlePaused]
	tst r1, r1
	beq .update

  // branch if !OBJECT_FLAG_PAUSE_UPDATE
	mov r1, #OBJECT_FLAG_PAUSE_UPDATE
	tst r0, r1
	beq .endcheck

.update:
	ldr r0, [sp]
	ldrb r1, [r5,#0x1] // (byte_2009F41 - 0x2009f40)
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0

.endcheck:

	add r5, #oOWPlayerObject_Size
	ldr r0, [sp,#4]
	cmp r5, r0
	blt .forEachOWPlayerObject

	add sp, sp, #8
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_8003BF0: .word off_8003B48
	thumb_func_end TryUpdateEachOWPlayerObject_8003BA2

	thumb_func_start sub_8003BF4
sub_8003BF4:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	mov r0, #1
	mov r1, #0
	ldr r5, off_8003C94 // =eOWPlayerObject
loc_8003C04:
	ldrb r2, [r5]
	mov r3, #OBJECT_FLAG_VISIBLE
	tst r2, r3
	beq loc_8003C30
	push {r0,r1,r5}
	mov r0, r5
	add r0, #0x1c
	ldr r1, off_8003C68 // =sub_30061E8+1
	mov lr, pc
	bx r1
	mov r0, #0
	ldr r1, off_8003C64 // =sub_3006028+1
	mov lr, pc
	bx r1
	mov r0, #2
	mov r1, #0x60
	add r5, #0x90
	ldr r2, off_8003C6C // =sub_3006440+1
	mov lr, pc
	bx r2
	pop {r0,r1,r5}
	b loc_8003C4C
loc_8003C30:
	mov r4, r5
	add r4, #0x90
	mov r3, #0
	str r3, [r4,#0x24]
	mov r3, #1
	tst r2, r3
	beq loc_8003C4C
	push {r0,r1,r5}
	mov r0, r5
	add r0, #0x1c
	ldr r1, off_8003C68 // =sub_30061E8+1
	mov lr, pc
	bx r1
	pop {r0,r1,r5}
loc_8003C4C:
	add r1, #1
	add r5, #0xc8
	cmp r1, r0
	blt loc_8003C04
	mov r0, #0
	bl sub_80028C0
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_8003C64: .word sub_3006028+1
off_8003C68: .word sub_30061E8+1
off_8003C6C: .word sub_3006440+1
	thumb_func_end sub_8003BF4

	thumb_local_start
sub_8003C70:
	push {lr}
	mov r0, #0
	bl sub_80028C0
	pop {pc}
	thumb_func_end sub_8003C70

	thumb_local_start
sub_8003C7A:
	mov r0, #0
	ldr r3, off_8003C94 // =eOWPlayerObject
loc_8003C7E:
	mov r1, r3
	add r1, #0x90
	mov r2, #0
	str r2, [r1,#0x24]
	add r3, #0xc8
	add r0, #1
	cmp r0, #1
	blt loc_8003C7E
	mov pc, lr
	.balign 4, 0
off_8003C90: .word eActiveOWPlayerObjectBitfield
off_8003C94: .word eOWPlayerObject
off_8003C98: .word eOWPlayerObjectEnd
// JP: 0x8003c80
T1BattleObjectJumptable: .word t1_0x0_80B81EC+1 // 0x0
	.word t1_0x1_80B8210+1 // 0x1
	.word t1_0x2_80B85E0+1 // 0x2
	.word t1_0x3_80B88D0+1 // 0x3
	.word t1_0x4_80B8A18+1 // 0x4
	.word t1_0x5_tempAttackObject_80B8CD8+1 // 0x5
	.word t1_0x6_80B8EA0+1 // 0x6
	.word t1_0x7_80B9078+1 // 0x7
	.word t1_0x8_80B92B8+1 // 0x8
	.word t1_0x9_80B94BC+1 // 0x9
	.word t1_0xa_80B97C0+1 // 0xa
	.word t1_0xb_80B99C0+1 // 0xb
	.word t1_0xc_80B9C14+1 // 0xc
	.word t1_0xd_80B9F44+1 // 0xd
	.word t1_0xe_80BA364+1 // 0xe
	.word t1_0xf_80BA708+1 // 0xf
	.word t1_0x10_80BAA8C+1 // 0x10
	.word t1_0x0_80B81EC+1 // 0x11
	.word t1_0x0_80B81EC+1 // 0x12
	.word t1_0x13_80BAF50+1 // 0x13
	.word t1_0x14_80BB2A0+1 // 0x14
	.word t1_0x15_80BB608+1 // 0x15
	.word t1_0x16_80BB914+1 // 0x16
	.word t1_0x17_80BBB98+1 // 0x17
	.word t1_0x18_80BBF0C+1 // 0x18
	.word t1_0x19_80BC17C+1 // 0x19
	.word t1_0x1a_80BC4FC+1 // 0x1a
	.word t1_0x1b_80BC650+1 // 0x1b
	.word snakearmRelatedObject_80BC87C+1 // 0x1c
	.word t1_0x1d_80BCA04+1 // 0x1d
	.word t1_0x1e_80BCB50+1 // 0x1e
	.word dblHeroObject_t1_0x1f_80BCD14+1 // 0x1f
	.word t1_0x20_80BD388+1 // 0x20
	.word t1_0x21_80BDBA4+1 // 0x21
	.word snakearmRelatedObject_t1_0x22_80BE4D8+1 // 0x22
	.word t1_0x23_80BE798+1 // 0x23
	.word t1_0x24_80BF260+1 // 0x24
	.word t1_0x25_80BF6EC+1 // 0x25
	.word t1_0x26_80BFDFC+1 // 0x26
	.word t1_0x27_80BFF68+1 // 0x27
	.word t1_0x28_80C0178+1 // 0x28
	.word t1_0x29_80C0334+1 // 0x29
	.word t1_0x2a_80C04AC+1 // 0x2a
	.word t1_0x2b_80C065C+1 // 0x2b
	.word t1_0x2c_80C07BC+1 // 0x2c
	.word t1_0x2d_80C0E04+1 // 0x2d
	.word t1_0x2e_80C0F6C+1 // 0x2e
	.word t1_0x2f_80C11AC+1 // 0x2f
	.word t1_0x0_80B81EC+1 // 0x30
	.word t1_0x0_80B81EC+1 // 0x31
	.word t1_0x32_80C1570+1 // 0x32
	.word t1_0x33_80C1A10+1 // 0x33
	.word t1_0x34_80C2138+1 // 0x34
	.word t1_0x0_80B81EC+1 // 0x35
	.word t1_0x0_80B81EC+1 // 0x36
	.word t1_0x0_80B81EC+1 // 0x37
	.word t1_0x0_80B81EC+1 // 0x38
	.word t1_0x0_80B81EC+1 // 0x39
	.word t1_0x0_80B81EC+1 // 0x3a
	.word t1_0x0_80B81EC+1 // 0x3b
	.word t1_0x3c_80C26F0+1 // 0x3c
	.word t1_0x3d_80C2A78+1 // 0x3d
	.word t1_0x0_80B81EC+1 // 0x3e
	.word t1_0x0_80B81EC+1 // 0x3f
	.word t1_0x0_80B81EC+1 // 0x40
	.word t1_0x0_80B81EC+1 // 0x41
	.word t1_0x0_80B81EC+1 // 0x42
	.word t1_0x0_80B81EC+1 // 0x43
	.word t1_0x0_80B81EC+1 // 0x44
	.word t1_0x45_80C3000+1 // 0x45
	.word t1_0x0_80B81EC+1 // 0x46
	.word t1_0x0_80B81EC+1 // 0x47
	.word t1_0x0_80B81EC+1 // 0x48
	.word t1_0x0_80B81EC+1 // 0x49
	.word t1_0x0_80B81EC+1 // 0x4a
	.word t1_0x4b_80C3218+1 // 0x4b
	.word t1_0x4c_80C34E0+1 // 0x4c
	.word t1_0x4d_80C3734+1 // 0x4d
	.word t1_0x0_80B81EC+1 // 0x4e
	.word bassChipObject_80C3970+1 // 0x4f
	.word t1_0x50_80C3CE8+1 // 0x50
	.word t1_0x0_80B81EC+1 // 0x51
	.word t1_0x0_80B81EC+1 // 0x52
	.word t1_0x0_80B81EC+1 // 0x53
	.word t1_0x54_80C3EE0+1 // 0x54
	.word t1_0x55_80C40D8+1 // 0x55
	.word t1_0x56_80C4348+1 // 0x56
	.word t1_0x57_80C4530+1 // 0x57
	.word t1_0x58_80C46FC+1 // 0x58
	.word t1_0x0_80B81EC+1 // 0x59
	.word t1_0x0_80B81EC+1 // 0x5a
	.word t1_0x0_80B81EC+1 // 0x5b
	.word t1_0x0_80B81EC+1 // 0x5c
	.word t1_0x5d_80C4828+1 // 0x5d
	.word t1_0x5e_80C4B18+1 // 0x5e

	thumb_func_end sub_8003C7A

	thumb_local_start
sub_8003E18:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	ldr r6, off_8003EBC // =byte_2036778
	ldrb r6, [r6]
	ldr r7, off_8003EC0 // =dword_2039A10
loc_8003E28:
	sub r6, #1
	blt loc_8003E7A
	ldr r5, [r7]
	ldrb r2, [r5]
	mov r3, #2
	tst r2, r3
	beq loc_8003E5A
	push {r4,r6,r7}
	mov r0, r5
	add r0, #0x34
	ldr r1, off_8003E90 // =sub_30061E8+1
	mov lr, pc
	bx r1
	mov r0, #1
	ldr r1, off_8003E8C // =sub_3006028+1
	mov lr, pc
	bx r1
	mov r0, #2
	mov r1, #0x40
	add r5, #0x90
	ldr r2, off_8003E94 // =sub_3006440+1
	mov lr, pc
	bx r2
	pop {r4,r6,r7}
	b loc_8003E76
loc_8003E5A:
	mov r0, r5
	add r0, #0x90
	mov r3, #0
	str r3, [r0,#0x24]
	mov r3, #1
	tst r2, r3
	beq loc_8003E76
	push {r4,r6,r7}
	mov r0, r5
	add r0, #0x34
	ldr r1, off_8003E90 // =sub_30061E8+1
	mov lr, pc
	bx r1
	pop {r4,r6,r7}
loc_8003E76:
	add r7, #4
	b loc_8003E28
loc_8003E7A:
	mov r0, #1
	bl sub_80028C0
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_8003E8C: .word sub_3006028+1
off_8003E90: .word sub_30061E8+1
off_8003E94: .word sub_3006440+1
	thumb_func_end sub_8003E18

	thumb_func_start sub_8003E98
sub_8003E98:
	push {lr}
	mov r0, #1
	bl sub_80028C0
	pop {pc}
	mov r0, #0
	ldr r3, off_8003EB8 // =eT1BattleObject0
loc_8003EA6:
	mov r1, r3
	add r1, #oT1BattleObject_SpriteData
	mov r2, #0
	str r2, [r1,#0x24]
	add r3, #oT1BattleObject_Size
	add r0, #1
	cmp r0, #0x20
	blt loc_8003EA6
	mov pc, lr
	.balign 4, 0
off_8003EB8: .word eT1BattleObject0
off_8003EBC: .word byte_2036778
off_8003EC0: .word dword_2039A10
// JP: 0x8003ea8
T3BattleObjectJumptable: .word t3_0x0_80C4E58+1 // 0x0
	.word t3_0x1_80C50B8+1 // 0x1
	.word t3_0x2_80C51AC+1 // 0x2
	.word battle_t3id3_main_80c52b0+1 // 0x3
	.word t3_0x4_80C53C0+1 // 0x4
	.word t3_0x5_80C55B0+1 // 0x5
	.word t3_0x6_80C57C0+1 // 0x6
	.word t3_0x7_80C5A34+1 // 0x7
	.word t3_0x8_80C5BB0+1 // 0x8
	.word t3_0x9_80C5DDC+1 // 0x9
	.word t3_0xa_80C5F60+1 // 0xa
	.word t3_0xb_80C60A8+1 // 0xb
	.word t3_0x0_80C4E58+1 // 0xc
	.word t3_0x0_80C4E58+1 // 0xd
	.word t3_0xe_80C6280+1 // 0xe
	.word t3_0xf_80C6414+1 // 0xf
	.word cornfiestaRelatedObject_80C6580+1 // 0x10
	.word t3_0x11_80C67F8+1 // 0x11
	.word t3_0x12_80C6946+1 // 0x12
	.word t3_0x0_80C4E58+1 // 0x13
	.word t3_0x0_80C4E58+1 // 0x14
	.word t3_0x0_80C4E58+1 // 0x15
	.word t3_0x16_80C6B40+1 // 0x16
	.word t3_0x17_80C6DCC+1 // 0x17
	.word t3_0x18_80C7074+1 // 0x18
	.word t3_0x19_80C71A4+1 // 0x19
	.word t3_0x1a_80C740C+1 // 0x1a
	.word t3_0x1b_80C793C+1 // 0x1b
	.word t3_0x1c_80C7C18+1 // 0x1c
	.word t3_0x1d_80C7D78+1 // 0x1d
	.word t3_0x1e_80C7F40+1 // 0x1e
	.word t3_0x1f_80C8098+1 // 0x1f
	.word t3_0x20_80C81CC+1 // 0x20
	.word t3_0x21_80C8388+1 // 0x21
	.word t3_0x22_80C853C+1 // 0x22
	.word t3_0x23_80C86D8+1 // 0x23
	.word t3_0x24_80C882C+1 // 0x24
	.word t3_0x25_80C8AA4+1 // 0x25
	.word t3_0x26_80C8C74+1 // 0x26
	.word t3_0x27_80C8E08+1 // 0x27
	.word t3_0x28_80C8FFC+1 // 0x28
	.word t3_0x29_80C91A0+1 // 0x29
	.word battle_BDT_main_80c93cc+1 // 0x2a
	.word t3_0x2b_80C96A0+1 // 0x2b
	.word nullsub_101+1 // 0x2c
	.word nullsub_94+1 // 0x2d
	.word t3_0x2e_80C9824+1 // 0x2e
	.word t3_0x2f_80C9BC4+1 // 0x2f
	.word t3_0x30_80C9D00+1 // 0x30
	.word t3_0x31_80C9F78+1 // 0x31
	.word t3_0x32_80CA2A8+1 // 0x32
	.word t3_0x33_80CA544+1 // 0x33
	.word t3_0x34_80CA6B8+1 // 0x34
	.word t3_0x35_80CA938+1 // 0x35
	.word t3_0x36_80CAB68+1 // 0x36
	.word t3_0x37_80CAD28+1 // 0x37
	.word t3_0x38_80CAEF0+1 // 0x38
	.word t3_0x39_80CB0DC+1 // 0x39
	.word t3_0x3a_80CB284+1 // 0x3a
	.word t3_0x3b_80CB49C+1 // 0x3b
	.word t3_0x3c_80CB6F8+1 // 0x3c
	.word t3_0x3d_80CB900+1 // 0x3d
	.word t3_0x3e_80CBB44+1 // 0x3e
	.word t3_0x3f_80CC044+1 // 0x3f
	.word t3_0x40_80CC0E8+1 // 0x40
	.word t3_0x41_80CC4C4+1 // 0x41
	.word t3_0x42_80CC5A8+1 // 0x42
	.word t3_0x43_80CC76C+1 // 0x43
	.word t3_0x44_80CC944+1 // 0x44
	.word t3_0x45_80CCA40+1 // 0x45
	.word t3_0x46_80CCC48+1 // 0x46
	.word t3_0x47_80CCD70+1 // 0x47
	.word t3_0x48_80CCFDC+1 // 0x48
	.word t3_0x49_80CD2EC+1 // 0x49
	.word t3_0x4a_80CD4EC+1 // 0x4a
	.word t3_0x4b_80CD8EC+1 // 0x4b
	.word t3_0x4c_80CDD44+1 // 0x4c
	.word t3_0x4d_80CDF84+1 // 0x4d
	.word t3_0x4e_80CE118+1 // 0x4e
	.word t3_0x4f_80CE24C+1 // 0x4f
	.word t3_0x50_80CE530+1 // 0x50
	.word t3_0x51_80CE70C+1 // 0x51
	.word t3_0x52_80CE81C+1 // 0x52
	.word t3_0x53_80CEB00+1 // 0x53
	.word t3_0x54_80CEE78+1 // 0x54
	.word t3_0x55_80CF0D0+1 // 0x55
	.word t3_0x56_80CF3BE+1 // 0x56
	.word t3_0x57_80CF5C8+1 // 0x57
	.word t3_0x58_80CF7F0+1 // 0x58
	.word t3_0x59_80CF954+1 // 0x59
	.word t3_0x5a_80CFC08+1 // 0x5a
	.word t3_0x5b_80CFCF8+1 // 0x5b
	.word t3_0x5c_80CFEC4+1 // 0x5c
	.word t3_0x5d_80D00A0+1 // 0x5d
	.word t3_0x5e_80D0268+1 // 0x5e
	.word t3_0x5f_80D0394+1 // 0x5f
	.word t3_0x60_80D0500+1 // 0x60
	.word t3_0x61_80D0610+1 // 0x61
	.word t3_0x62_80D07CC+1 // 0x62
	.word t3_0x63_80D0AA8+1 // 0x63
	.word t3_0x64_80D0D7C+1 // 0x64
	.word t3_0x65_80D0F8C+1 // 0x65
	.word t3_0x66_80D1218+1 // 0x66
	.word t3_0x67_80D1514+1 // 0x67
	.word t3_0x68_80D17A4+1 // 0x68
	.word t3_0x69_80D18D8+1 // 0x69
	.word t3_0x6a_80D1A08+1 // 0x6a
	.word t3_0x6b_80D1B48+1 // 0x6b
	.word t3_0x6c_80D1C20+1 // 0x6c
	.word t3_0x6d_80D2034+1 // 0x6d
	.word t3_0x6e_80D2290+1 // 0x6e
	.word t3_0x6f_80D2460+1 // 0x6f
	.word t3_0x70_80D25D4+1 // 0x70
	.word t3_0x71_80D2A94+1 // 0x71
	.word t3_0x72_80D2BDC+1 // 0x72
	.word t3_0x73_80D2EBC+1 // 0x73
	.word riskyHoneyObject_80D30D0+1 // 0x74
	.word t3_0x75_80D34CC+1 // 0x75
	.word t3_0x76_80D385C+1 // 0x76
	.word t3_0x77_80D39BC+1 // 0x77
	.word t3_0x78_80D4088+1 // 0x78
	.word t3_0x79_80D4440+1 // 0x79
	.word t3_0x7a_80D46B8+1 // 0x7a
	.word t3_0x7b_80D4A28+1 // 0x7b
	.word t3_0x7c_80D4B68+1 // 0x7c
	.word t3_0x7d_80D4C84+1 // 0x7d
	.word t3_0x7e_80D5028+1 // 0x7e
	.word t3_0x7f_80D5138+1 // 0x7f
	.word t3_0x80_80D535C+1 // 0x80
	.word t3_0x81_80D5580+1 // 0x81
	.word dollThunderObject_80D5740+1 // 0x82
	.word t3_0x83_80D58B4+1 // 0x83
	.word t3_0x84_80D5ABC+1 // 0x84
	.word t3_0x85_80D5C48+1 // 0x85
	.word t3_0x86_80D5D54+1 // 0x86
	.word t3_0x87_80D5F08+1 // 0x87
	.word t3_0x88_80D622C+1 // 0x88
	.word t3_0x89_80D655C+1 // 0x89
	.word t3_0x8a_80D67EC+1 // 0x8a
	.word t3_0x8b_80D6924+1 // 0x8b
	.word t3_0x8c_80D6A20+1 // 0x8c
	.word t3_0x8d_80D6BD4+1 // 0x8d
	.word t3_0x8e_80D6D80+1 // 0x8e
	.word t3_0x8f_80D6EE0+1 // 0x8f
	.word t3_0x90_80D7068+1 // 0x90
	.word t3_0x91_80D7278+1 // 0x91
	.word t3_0x92_80D7400+1 // 0x92
	.word t3_0x93_80D75FC+1 // 0x93
	.word t3_0x94_80D7ACC+1 // 0x94
	.word t3_0x95_80D7DE4+1 // 0x95
	.word t3_0x96_80D807C+1 // 0x96
	.word t3_0x97_80D825C+1 // 0x97
	.word t3_0x98_80D8444+1 // 0x98
	.word t3_0x99_80D8620+1 // 0x99
	.word t3_0x9a_80D879C+1 // 0x9a
	.word airspinObject_80D88E0+1 // 0x9b
	.word t3_0x9c_80D8C5C+1 // 0x9c
	.word eraseBeamObject_80D8E10+1 // 0x9d
	.word t3_0x9e_80D8FC4+1 // 0x9e
	.word t3_0x9f_80D9154+1 // 0x9f
	.word t3_0xa0_80D9350+1 // 0xa0
	.word t3_0xa1_80D96A4+1 // 0xa1
	.word t3_0xa2_80D954C+1 // 0xa2
	.word t3_0xa3_80D984C+1 // 0xa3
	.word t3_0xa4_80D9A50+1 // 0xa4
	.word t3_0xa5_80D9D4C+1 // 0xa5
	.word t3_0xa6_80DA050+1 // 0xa6
	.word t3_0xa7_80DA470+1 // 0xa7
	.word t3_0xa8_80DA5FC+1 // 0xa8
	.word t3_0xa9_80DA80C+1 // 0xa9
	.word t3_0xaa_80DAA28+1 // 0xaa
	.word t3_0xab_80DACE4+1 // 0xab
	.word t3_0xac_80DAE94+1 // 0xac
	.word t3_0xad_80DB0E4+1 // 0xad
	.word t3_0xae_80DB304+1 // 0xae
	.word t3_0xaf_80DB570+1 // 0xaf
	.word t3_0xb0_80DB6A4+1 // 0xb0
	.word t3_0xb1_80DB8CC+1 // 0xb1
	.word t3_0xb2_80DB994+1 // 0xb2
	.word t3_0xb3_80DBB40+1 // 0xb3
	.word t3_0xb4_80DBCEC+1 // 0xb4
	.word t3_0xb5_80DBEE6+1 // 0xb5
	.word t3_0xb6_80DC0E8+1 // 0xb6
	.word t3_0xb7_80DC260+1 // 0xb7
	.word t3_0xb8_80DC3F8+1 // 0xb8
	.word t3_0xb9_80DC4FC+1 // 0xb9
	.word t3_0xba_80DC5F8+1 // 0xba
	.word t3_0xbb_80DC70C+1 // 0xbb
	.word t3_0xbc_80DCB1C+1 // 0xbc
	.word t3_0xbd_80DCCD4+1 // 0xbd
	.word t3_0xbe_80DCE38+1 // 0xbe
	.word t3_0xbf_80DCEF4+1 // 0xbf
	.word t3_0xc0_80DD0AC+1 // 0xc0
	.word t3_0xc1_80DD34C+1 // 0xc1
	.word t3_0xc2_80DD764+1 // 0xc2
	.word t3_0xc3_80DD940+1 // 0xc3
	.word t3_0xc4_80DDA84+1 // 0xc4
	.word t3_0xc5_80DDC10+1 // 0xc5
	.word t3_0xc6_80DDDF0+1 // 0xc6
	.word t3_0xc7_80DE000+1 // 0xc7
	.word t3_0xc8_80DE13C+1 // 0xc8
	.word t3_0xc9_80DE404+1 // 0xc9
	.word t3_0xca_80DE7F4+1 // 0xca
	.word sandwormObject_80DEA7C+1 // 0xcb
	.word t3_0xcc_80DEE60+1 // 0xcc
	.word t3_0xcd_80DF0A4+1 // 0xcd
	.word t3_0xce_80DF188+1 // 0xce
	.word t3_0xcf_80DF328+1 // 0xcf
	.word t3_0xd0_80DF4FC+1 // 0xd0
	.word t3_0xd1_80DF90C+1 // 0xd1
	.word t3_0xd2_80DFC38+1 // 0xd2
	.word t3_0xd3_80DFE40+1 // 0xd3
	.word t3_0xd4_80DFFB8+1 // 0xd4
	thumb_func_end sub_8003E98

	thumb_local_start
sub_8004218:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	ldr r6, off_80042C0 // =dword_203CA7C
	ldrb r6, [r6]
	ldr r7, off_80042C4 // =dword_203A010
loc_8004228:
	sub r6, #1
	blt loc_800427A
	ldr r5, [r7]
	ldrb r2, [r5]
	mov r3, #2
	tst r2, r3
	beq loc_800425A
	push {r4,r6,r7}
	mov r0, r5
	add r0, #0x34
	ldr r1, off_8004290 // =sub_30061E8+1
	mov lr, pc
	bx r1
	mov r0, #3
	ldr r1, off_800428C // =sub_3006028+1
	mov lr, pc
	bx r1
	mov r0, #2
	mov r1, #0x40
	add r5, #0x90
	ldr r2, off_8004294 // =sub_3006440+1
	mov lr, pc
	bx r2
	pop {r4,r6,r7}
	b loc_8004276
loc_800425A:
	mov r0, r5
	add r0, #0x90
	mov r3, #0
	str r3, [r0,#0x24]
	mov r3, #1
	tst r2, r3
	beq loc_8004276
	push {r4,r6,r7}
	mov r0, r5
	add r0, #0x34
	ldr r1, off_8004290 // =sub_30061E8+1
	mov lr, pc
	bx r1
	pop {r4,r6,r7}
loc_8004276:
	add r7, #4
	b loc_8004228
loc_800427A:
	mov r0, #3
	bl sub_80028C0
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_800428C: .word sub_3006028+1
off_8004290: .word sub_30061E8+1
off_8004294: .word sub_3006440+1
	thumb_func_end sub_8004218

	thumb_func_start sub_8004298
sub_8004298:
	push {lr}
	mov r0, #3
	bl sub_80028C0
	pop {pc}
	mov r0, #0x30
	ldr r3, off_80042BC // =eT3BattleObject0_LinkedList
	thumb_func_end sub_8004298

	thumb_local_start
sub_80042A6:
	mov r1, r3
	add r1, #0x90
	mov r2, #0
	str r2, [r1,#0x24] // (eT3BattleObject0+0xa4 - 0x203d060)
	add r3, #0xd8
	add r0, #1
	cmp r0, #0x20
	blt sub_80042A6
	mov pc, lr
	.word eT3BattleObject0
	.balign 4, 0
off_80042BC: .word eT3BattleObject0_LinkedList
off_80042C0: .word dword_203CA7C
off_80042C4: .word dword_203A010
// JP: 0x80042ac
T4BattleObjectJumptable: .word t4_0x0_80E0548+1 // 0x0
	.word t4_0x0_80E0548+1 // 0x1
	.word t4_0x2_80E0638+1 // 0x2
	.word t4_0x3_80E0710+1 // 0x3
	.word t4_0x4_80E0844+1 // 0x4
	.word nullsub_99+1 // 0x5
	.word t4_0x6_80E08FC+1 // 0x6
	.word t4_0x7_80E0AD4+1 // 0x7
	.word chargeShotChargeObject_80E0DF0+1 // 0x8
	.word t4_0x9_80E0FA0+1 // 0x9
	.word t4_0xa_80E10A4+1 // 0xa
	.word t4_0x0_80E0548+1 // 0xb
	.word t4_0xc_80E11FC+1 // 0xc
	.word t4_0x0_80E0548+1 // 0xd
	.word t4_0x0_80E0548+1 // 0xe
	.word t4_0xf_80E1520+1 // 0xf
	.word t4_0x10_80E17E8+1 // 0x10
	.word t4_0x11_80E19BC+1 // 0x11
	.word t4_0x12_80E1A90+1 // 0x12
	.word t4_0x13_80E1B48+1 // 0x13
	.word t4_0x14_80E1CF8+1 // 0x14
	.word t4_0x15_80E1D88+1 // 0x15
	.word t4_0x16_80E1E4C+1 // 0x16
	.word t4_0x0_80E0548+1 // 0x17
	.word t4_0x0_80E0548+1 // 0x18
	.word t4_0x19_80E2080+1 // 0x19
	.word t4_0x1a_80E21D8+1 // 0x1a
	.word t4_0x1b_80E225C+1 // 0x1b
	.word t4_0x1c_80E23A4+1 // 0x1c
	.word t4_0x1d_80E24E4+1 // 0x1d
	.word t4_0x1e_80E25D0+1 // 0x1e
	.word t4_0x1f_80E28A8+1 // 0x1f
	.word t4_0x20_80E2AE8+1 // 0x20
	.word t4_0x21_80E2B7C+1 // 0x21
	.word t4_0x22_80E2CA4+1 // 0x22
	.word t4_0x23_80E2E34+1 // 0x23
	.word t4_0x24_80E2F56+1 // 0x24
	.word t4_0x25_80E309C+1 // 0x25
	.word t4_0x26_80E3150+1 // 0x26
	.word t4_0x27_80E31D8+1 // 0x27
	.word t4_0x28_80E32B8+1 // 0x28
	.word t4_0x29_80E342C+1 // 0x29
	.word battleTrapObjectMaybe_80E34C0+1 // 0x2a
	.word t4_0x2b_80E35A4+1 // 0x2b
	.word t4_0x2c_80E3728+1 // 0x2c
	.word t4_0x2d_80E37F4+1 // 0x2d
	.word t4_0x2e_80E39A0+1 // 0x2e
	.word t4_0x2f_80E3AB8+1 // 0x2f
	.word t4_0x30_80E3B70+1 // 0x30
	.word t4_0x31_80E3D68+1 // 0x31
	.word t4_0x32_80E3FD0+1 // 0x32
	.word t4_0x33_80E40EC+1 // 0x33
	.word t4_0x34_80E4188+1 // 0x34
	.word t4_0x35_80E4344+1 // 0x35
	.word t4_0x36_80E440C+1 // 0x36
	.word t4_0x37_80E4634+1 // 0x37
	.word t4_0x38_80E46D8+1 // 0x38
	.word t4_0x39_80E47B4+1 // 0x39
	.word t4_0x3a_80E4848+1 // 0x3a
	.word t4_0x3b_80E4910+1 // 0x3b
	.word t4_0x3c_80E4A1C+1 // 0x3c
	.word t4_0x0_80E0548+1 // 0x3d
	.word t4_0x3e_80E4CB8+1 // 0x3e
	.word t4_0x3f_80E4DB0+1 // 0x3f
	.word t4_0x40_80E50C4+1 // 0x40
	.word t4_0x41_80E5244+1 // 0x41
	.word t4_0x42_80E5470+1 // 0x42
	.word t4_0x43_80E55C0+1 // 0x43
	.word t4_0x44_80E5710+1 // 0x44
	.word t4_0x45_80E5944+1 // 0x45
	.word t4_0x46_80E59E8+1 // 0x46
	.word locret_80E5B60+1 // 0x47
	.word t4_0x48_80E5C2C+1 // 0x48
	.word t4_0x49_80E5D44+1 // 0x49
	.word t4_0x4a_80E5E00+1 // 0x4a
	.word t4_0x4b_80E5ECC+1 // 0x4b
	.word t4_0x4c_80E5F9C+1 // 0x4c
	.word t4_0x4d_80E5FBC+1 // 0x4d
	.word t4_0x4e_80E6088+1 // 0x4e
	.word t4_0x4f_80E6254+1 // 0x4f
	.word t4_0x50_80E6480+1 // 0x50
	.word t4_0x51_80E655C+1 // 0x51
	.word t4_0x52_80E6758+1 // 0x52
	.word t4_0x53_80E680C+1 // 0x53
	.word t4_0x54_80E689C+1 // 0x54
	.word t4_0x55_80E6A90+1 // 0x55
	.word t4_0x56_80E6BDC+1 // 0x56
	.word t4_0x57_80E6E44+1 // 0x57
	.word t4_0x58_80E6F88+1 // 0x58
	.word t4_0x59_80E702C+1 // 0x59
	.word t4_0x5a_80E70C8+1 // 0x5a
	.word t4_0x5b_80E71C4+1 // 0x5b
	.word t4_0x5c_80E7260+1 // 0x5c
	.word t4_0x5d_80E74D4+1 // 0x5d
	.word t4_0x5e_80E7568+1 // 0x5e
	.word t4_0x5f_80E7624+1 // 0x5f
	.word t4_0x60_80E76F8+1 // 0x60
	.word t4_0x61_80E7788+1 // 0x61
	.word t4_0x62_80E78BC+1 // 0x62
	.word t4_0x63_80E795C+1 // 0x63
	.word t4_0x64_80E7ACC+1 // 0x64
	.word t4_0x65_80E7BFC+1 // 0x65
	.word type3Object_0xb6_80E7CCC+1 // 0x66
	.word t4_0x67_80E7DC4+1 // 0x67
	.word cornfiestaObject_80E7E9C+1 // 0x68
	.word t4_0x69_80E7F38+1 // 0x69
	.word dblHeroSetupObject_t4_0x6a_80E7FDC+1 // 0x6a
	.word t4_0x6b_80E807C+1 // 0x6b
	.word t4_0x6c_80E8138+1 // 0x6c
	.word t4_0x6d_80E81D8+1 // 0x6d
	.word t4_0x6e_80E8268+1 // 0x6e
	.word t4_0x6f_80E83B8+1 // 0x6f
	.word t4_0x70_80E857C+1 // 0x70
	.word t4_0x71_80E8688+1 // 0x71
	.word t4_0x72_80E8794+1 // 0x72
	.word t4_0x73_80E88A0+1 // 0x73
	.word t4_0x74_80E8938+1 // 0x74
	.word sunMoonObject_80E8A60+1 // 0x75
	.word t4_0x76_80E8B00+1 // 0x76
	.word t4_0x77_80E8DF0+1 // 0x77
	.word t4_0x78_80E8EE0+1 // 0x78
	.word t4_0x79_80E8FE0+1 // 0x79
	.word t4_0x0_80E0548+1 // 0x7a
	.word t4_0x0_80E0548+1 // 0x7b
	.word t4_0x7c_80E9120+1 // 0x7c
	.word t4_0x0_80E0548+1 // 0x7d
	.word t4_0x7e_80E91E4+1 // 0x7e
	.word t4_0x7f_80E9310+1 // 0x7f
	.word t4_0x80_80E9460+1 // 0x80
	.word t4_0x0_80E0548+1 // 0x81
	.word t4_0x0_80E0548+1 // 0x82
	.word t4_0x0_80E0548+1 // 0x83
	.word t4_0x84_80E9570+1 // 0x84
	.word t4_0x0_80E0548+1 // 0x85
	.word t4_0x0_80E0548+1 // 0x86
	.word t4_0x87_80E97F0+1 // 0x87
	.word t4_0x88_80E9994+1 // 0x88
	.word t4_0x89_80E9AF0+1 // 0x89
	.word t4_0x8a_80E9C88+1 // 0x8a
	.word t4_0x8b_80E9DF0+1 // 0x8b
	.word t4_0x8c_80EA010+1 // 0x8c
	.word t4_0x8d_80EA14C+1 // 0x8d
	.word t4_0x0_80E0548+1 // 0x8e
	.word t4_0x8f_80EA258+1 // 0x8f
	.word t4_0x90_80EA364+1 // 0x90
	.word t4_0x0_80E0548+1 // 0x91
	thumb_func_end sub_80042A6

	thumb_local_start
sub_8004510:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	ldr r6, off_80045B4 // =byte_2036830
	ldrb r6, [r6]
	ldr r7, off_80045B8 // =byte_203F750
loc_8004520:
	sub r6, #1
	blt loc_8004572
	ldr r5, [r7]
	ldrb r2, [r5]
	mov r3, #2
	tst r2, r3
	beq loc_8004552
	push {r4,r6,r7}
	mov r0, r5
	add r0, #0x34
	ldr r1, off_8004588 // =sub_30061E8+1
	mov lr, pc
	bx r1
	mov r0, #4
	ldr r1, off_8004584 // =sub_3006028+1
	mov lr, pc
	bx r1
	mov r0, #2
	mov r1, #0x40
	add r5, #0x80
	ldr r2, off_800458C // =sub_3006440+1
	mov lr, pc
	bx r2
	pop {r4,r6,r7}
	b loc_800456E
loc_8004552:
	mov r0, r5
	add r0, #0x80
	mov r3, #0
	str r3, [r0,#0x24]
	mov r3, #1
	tst r2, r3
	beq loc_800456E
	push {r4,r6,r7}
	mov r0, r5
	add r0, #0x34
	ldr r1, off_8004588 // =sub_30061E8+1
	mov lr, pc
	bx r1
	pop {r4,r6,r7}
loc_800456E:
	add r7, #4
	b loc_8004520
loc_8004572:
	mov r0, #4
	bl sub_80028C0
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_8004584: .word sub_3006028+1
off_8004588: .word sub_30061E8+1
off_800458C: .word sub_3006440+1
	thumb_func_end sub_8004510

	thumb_func_start sub_8004590
sub_8004590:
	push {lr}
	mov r0, #4
	bl sub_80028C0
	pop {pc}
	thumb_func_end sub_8004590

	thumb_local_start
dead_800459A:
	mov r0, #0
	ldr r3, off_80045B0 // =eT4BattleObject0
loc_800459E:
	mov r1, r3
	add r1, #0x80
	mov r2, #0
	str r2, [r1,#0x24]
	add r3, #0xc8
	add r0, #1
	cmp r0, #0x20
	blt loc_800459E
	mov pc, lr
	.balign 4, 0
off_80045B0: .word eT4BattleObject0
off_80045B4: .word byte_2036830
off_80045B8: .word byte_203F750
off_80045BC: .word npc_809E570+1
	thumb_func_end dead_800459A

	thumb_func_start SpawnOverworldNPCObject
SpawnOverworldNPCObject:
	push {r0-r4,lr}
	ldr r0, off_8004718 // =eActiveOverworldNPCObjectsBitfield
	ldr r2, [r0]
	mov r1, #0x80
	lsl r1, r1, #0x18
	ldr r5, off_800471C // =eOverworldNPCObjects
	ldr r3, off_8004720 // =byte_2006530
loc_80045CE:
	tst r2, r1
	beq loc_80045DC
	lsr r1, r1, #1
	add r5, #oOverworldNPCObject_Size
	cmp r5, r3
	bge loc_80045FE
	b loc_80045CE
loc_80045DC:
	orr r2, r1
	str r2, [r0]
	mov r0, #4
	// memBlock
	add r0, r0, r5
	mov r1, #0x4e
	lsl r1, r1, #1
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	mov r0, #(OBJECT_FLAG_ACTIVE | OBJECT_FLAG_STOP_SPRITE_UPDATE)
	strb r0, [r5]
	pop {r0-r4}
	strb r0, [r5,#oOverworldNPCObject_Index]
	str r1, [r5,#oOverworldNPCObject_X]
	str r2, [r5,#oOverworldNPCObject_Y]
	str r3, [r5,#oOverworldNPCObject_Z]
	str r4, [r5,#oOverworldNPCObject_MovementSpeed_MovementTimer_Undetected_06_Unk_07]
	pop {pc}
loc_80045FE:
	mov r5, #0
	pop {r0-r4,pc}
	thumb_func_end SpawnOverworldNPCObject

	thumb_func_start FreeOverworldNPCObject
FreeOverworldNPCObject:
	push {lr}
	mov r0, #0x80
	lsl r0, r0, #0x18
	ldrb r1, [r5,#oObjectHeader_ListIndex]
	lsr r0, r1
	ldr r1, off_8004718 // =eActiveOverworldNPCObjectsBitfield
	ldr r2, [r1]
	bic r2, r0
	str r2, [r1]
	mov r1, #0
	strb r1, [r5,#oObjectHeader_Flags]
	bl sprite_makeUnscalable
	pop {pc}
	thumb_func_end FreeOverworldNPCObject

// [break] continuously called
// [disable] - NPCs are no longer loaded, if they were already loaded, they are not interactable. Some are exceptions, like Central Robo Dog.
// - Scenes don't seem to load, either
	thumb_func_start TryUpdateEachOverworldNPCObject_800461E
TryUpdateEachOverworldNPCObject_800461E: // () -> ()
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}

  // return if EVENT_NPC_OBJECTS_DISABLED
	movflag EVENT_NPC_OBJECTS_DISABLED
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne .ret_800466C

	sub sp, sp, #8
	ldr r5, off_800471C // =eOverworldNPCObjects
	ldr r0, off_8004678 // =off_80045BC
	ldr r1, off_8004720 // =byte_2006530
	str r0, [sp]
	str r1, [sp,#4]

.forEachOverworldNPCObject_800463E:
	mov r1, #OBJECT_FLAG_ACTIVE
	ldrb r0, [r5,#oObjectHeader_Flags]

  // branch if !OBJECT_FLAG_ACTIVE
	tst r0, r1
	beq .endcheck_8004662

	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]

  // branch if !BattlePaused
	ldrb r1, [r7,#oGameState_BattlePaused]
	tst r1, r1
	beq .update_8004656

  // branch if !OBJECT_FLAG_PAUSE_UPDATE
	mov r1, #OBJECT_FLAG_PAUSE_UPDATE
	tst r0, r1
	beq .endcheck_8004662

.update_8004656:
	ldr r0, [sp]
	ldrb r1, [r5,#1]
	lsl r1, r1, #2
	// jumptable has only one entry
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0

.endcheck_8004662:

	add r5, #oOverworldNPCObject_Size
	ldr r0, [sp,#4]
	cmp r5, r0
	blt .forEachOverworldNPCObject_800463E

	add sp, sp, #8

.ret_800466C:

	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_8004678: .word off_80045BC
	thumb_func_end TryUpdateEachOverworldNPCObject_800461E

	thumb_func_start sub_800467C
sub_800467C:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	mov r0, #0x10
	mov r1, #0
	ldr r5, off_800471C // =eOverworldNPCObjects
loc_800468C:
	ldrb r2, [r5]
	mov r3, #2
	tst r2, r3
	beq loc_80046B8
	push {r0,r1,r5}
	mov r0, r5
	add r0, #0x24
	ldr r1, off_80046F0 // =sub_30061E8+1
	mov lr, pc
	bx r1
	mov r0, #2
	ldr r1, off_80046EC // =sub_3006028+1
	mov lr, pc
	bx r1
	mov r0, #2
	mov r1, #0x60
	add r5, #0xa0
	ldr r2, off_80046F4 // =sub_3006440+1
	mov lr, pc
	bx r2
	pop {r0,r1,r5}
	b loc_80046D4
loc_80046B8:
	mov r4, r5
	add r4, #0xa0
	mov r3, #0
	str r3, [r4,#0x24]
	mov r3, #1
	tst r2, r3
	beq loc_80046D4
	push {r0,r1,r5}
	mov r0, r5
	add r0, #0x24
	ldr r1, off_80046F0 // =sub_30061E8+1
	mov lr, pc
	bx r1
	pop {r0,r1,r5}
loc_80046D4:
	add r1, #1
	add r5, #0xd8
	cmp r1, r0
	blt loc_800468C
	mov r0, #2
	bl sub_80028C0
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_80046EC: .word sub_3006028+1
off_80046F0: .word sub_30061E8+1
off_80046F4: .word sub_3006440+1
	thumb_func_end sub_800467C

	thumb_local_start
sub_80046F8:
	push {lr}
	mov r0, #2
	bl sub_80028C0
	pop {pc}
	thumb_func_end sub_80046F8

	thumb_func_start sub_8004702
sub_8004702:
	mov r0, #0
	ldr r3, off_800471C // =eOverworldNPCObjects
loc_8004706:
	mov r1, r3
	add r1, #0xa0
	mov r2, #0
	str r2, [r1,#0x24]
	add r3, #0xd8
	add r0, #1
	cmp r0, #0x10
	blt loc_8004706
	mov pc, lr
	.balign 4, 0
off_8004718: .word eActiveOverworldNPCObjectsBitfield
off_800471C: .word eOverworldNPCObjects
off_8004720: .word byte_2006530
off_8004724: .word ho_80A4984+1
	.word sub_80A4A98+1
	.word sub_80A4BDC+1
	.word sub_80A51C4+1
	.word sub_80A5428+1
	.word sub_80A54F0+1
	.word sub_80A57AC+1
	.word sub_80A5AD4+1
	.word sub_80A6A16+1
	.word sub_80A6E98+1
	.word sub_80A72B4+1
	.word sub_80A77A8+1
	.word sub_80A781C+1
	.word sub_80A78B8+1
	.word sub_80A7C84+1
	.word sub_80A7D90+1
	.word sub_80A8208+1
	.word sub_80A8394+1
	.word sub_80A8654+1
	.word sub_80A8728+1
	.word sub_80A87F0+1
	.word 0x0
	.word sub_80A8870+1
	.word sub_80A89DC+1
	.word sub_80A8AB4+1
	.word 0x0
	.word sub_80A8E74+1
	.word sub_80A92B8+1
	.word sub_80A9430+1
	.word sub_80A9658+1
	.word sub_80A9824+1
	.word sub_80A98D4+1
	.word sub_80A9A0C+1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word sub_80A9B70+1
	.word 0x0
	.word sub_80A9D10+1
	.word sub_80A9ECC+1
	.word sub_80A9F58+1
	.word sub_80AA058+1
	.word sub_80AA140+1
	.word sub_80AA1E0+1
	.word sub_80AA2D8+1
	.word sub_80AA374+1
	thumb_func_end sub_8004702

	thumb_func_start SpawnOverworldMapObject
SpawnOverworldMapObject:
	push {r0-r4,r6,lr}
	mov r1, #0x80
	lsl r1, r1, #0x18
	ldr r5, off_80049D4 // =eOverworldMapObjects
	mov r6, #0
.findFreeMapObjectLoop
	ldr r0, off_80049D0 // =eActiveOverworldMapObjectsBitfield
	lsr r3, r6, #5
	lsl r3, r3, #2
	ldr r2, [r0,r3]
	tst r2, r1
	beq .foundFreeMapObject
	mov r2, #1
	ror r1, r2
	add r5, #oOverworldMapObject_Size
	add r6, #1
	cmp r6, #NUM_OVERWORLD_MAP_OBJECTS
	bge .noFreeMapObjects
	b .findFreeMapObjectLoop
.foundFreeMapObject
	orr r2, r1
	str r2, [r0,r3]
	mov r0, #OBJECT_FLAG_STOP_SPRITE_UPDATE | OBJECT_FLAG_ACTIVE
	strb r0, [r5,#oOverworldMapObject_Flags]
	pop {r0-r4,r6}
	strb r0, [r5,#oOverworldMapObject_Index]
	str r1, [r5,#oOverworldMapObject_X]
	str r2, [r5,#oOverworldMapObject_Y]
	str r3, [r5,#oOverworldMapObject_Z]
	str r4, [r5,#oOverworldMapObject_ObjectID]
	mov r0, #0
	str r0, [r5,#oOverworldMapObject_Unk_08]
	pop {pc}
.noFreeMapObjects
	mov r5, #0
	pop {r0-r4,r6,pc}
	thumb_func_end SpawnOverworldMapObject

	thumb_func_start sub_8004822
sub_8004822:
	push {r0-r4,r6,lr}
	ldr r5, off_80049DC // =eOverworldMapObject55
	mov r6, #0x37
loc_8004828:
	mov r2, #0x1f
	and r2, r6
	mov r1, #0x80
	lsl r1, r1, #0x18
	lsr r1, r2
	ldr r0, off_80049D0 // =eActiveOverworldMapObjectsBitfield
	lsr r3, r6, #5
	lsl r3, r3, #2
	ldr r2, [r0,r3]
	tst r2, r1
	beq loc_8004846
	sub r5, #0x78
	sub r6, #1
	blt loc_8004860
	b loc_8004828
loc_8004846:
	orr r2, r1
	str r2, [r0,r3]
	mov r0, #9
	strb r0, [r5]
	pop {r0-r4,r6}
	strb r0, [r5,#1]
	str r1, [r5,#0xc]
	str r2, [r5,#0x10]
	str r3, [r5,#0x14]
	str r4, [r5,#4]
	mov r0, #0
	str r0, [r5,#8]
	pop {pc}
loc_8004860:
	mov r5, #0
	pop {r0-r4,r6,pc}
	thumb_func_end sub_8004822

	thumb_local_start
sub_8004864:
	push {r0-r4,r6,lr}
	mov r1, #0x80
	lsl r1, r1, #0x18
	mov r6, #0x1f
	and r6, r5
	lsr r1, r6
	mov r6, r5
	ldr r5, off_80049D4 // =eOverworldMapObjects
	mov r3, #0x78
	mul r3, r6
	add r5, r5, r3
loc_800487A:
	ldr r0, off_80049D0 // =eActiveOverworldMapObjectsBitfield
	lsr r3, r6, #5
	lsl r3, r3, #2
	ldr r2, [r0,r3]
	tst r2, r1
	beq loc_8004894
	mov r2, #1
	ror r1, r2
	add r5, #0x78
	add r6, #1
	cmp r6, #0x38
	bge loc_80048AE
	b loc_800487A
loc_8004894:
	orr r2, r1
	str r2, [r0,r3]
	mov r0, #9
	strb r0, [r5]
	pop {r0-r4,r6}
	strb r0, [r5,#1]
	str r1, [r5,#0xc]
	str r2, [r5,#0x10]
	str r3, [r5,#0x14]
	str r4, [r5,#4]
	mov r0, #0
	str r0, [r5,#8]
	pop {pc}
loc_80048AE:
	mov r5, #0
	pop {r0-r4,r6,pc}
	thumb_func_end sub_8004864

	thumb_func_start FreeOverworldMapObject
FreeOverworldMapObject:
	push {lr}
	mov r0, #0x80
	lsl r0, r0, #0x18
	ldrb r1, [r5,#oOverworldMapObject_ListIndex]
	ror r0, r1
	ldr r2, off_80049D0 // =eActiveOverworldMapObjectsBitfield
	lsr r1, r1, #5
	lsl r1, r1, #2
	ldr r3, [r2,r1]
	bic r3, r0
	str r3, [r2,r1]
	mov r1, #0
	strb r1, [r5]
	bl sprite_makeUnscalable
	pop {pc}
	thumb_func_end FreeOverworldMapObject

	thumb_func_start TryUpdateEachOverworldMapObject_80048D2
TryUpdateEachOverworldMapObject_80048D2: // () -> ()
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}

  // return if EVENT_NON_NPC_ANIMATION_LOCKED
	movflag EVENT_NON_NPC_ANIMATION_LOCKED
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne .ret_8004920

	sub sp, sp, #8
	ldr r5, off_80049D4 // =eOverworldMapObjects
	ldr r0, off_800492C // =off_8004724
	ldr r1, off_80049D8 // =dword_2013920
	str r0, [sp]
	str r1, [sp,#4]

.ForEachOverworldMapObject_80048F2:

	mov r1, #OBJECT_FLAG_ACTIVE
	ldrb r0, [r5, #oObjectHeader_Flags]

  // branch if !OBJECT_FLAG_ACTIVE
	tst r0, r1
	beq .endcheck_8004916

	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]

  // branch if !BattlePaused
	ldrb r1, [r7,#oGameState_BattlePaused]
	tst r1, r1
	beq .loc_800490A

  // branch if !OBJECT_FLAG_PAUSE_UPDATE
	mov r1, #OBJECT_FLAG_PAUSE_UPDATE
	tst r0, r1
	beq .endcheck_8004916

.loc_800490A:
	ldr r0, [sp]
	ldrb r1, [r5,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0

.endcheck_8004916:

	add r5, #oOverworldMapObject_Size
	ldr r0, [sp,#4]
	cmp r5, r0
	blt .ForEachOverworldMapObject_80048F2
	add sp, sp, #8

.ret_8004920:
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_800492C: .word off_8004724
	.word dword_2013920
	thumb_func_end TryUpdateEachOverworldMapObject_80048D2

	thumb_func_start sub_8004934
sub_8004934:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	mov r0, #0x38
	mov r1, #0
	ldr r5, off_80049D4 // =eOverworldMapObjects
loc_8004944:
	ldrb r2, [r5]
	mov r3, #2
	tst r2, r3
	beq loc_8004970
	push {r0,r1,r5}
	mov r0, r5
	add r0, #0xc
	ldr r1, off_80049A8 // =sub_30061E8+1
	mov lr, pc
	bx r1
	mov r0, #5
	ldr r1, off_80049A4 // =sub_3006028+1
	mov lr, pc
	bx r1
	mov r0, #2
	mov r1, #0x60
	add r5, #0x40
	ldr r2, off_80049AC // =sub_3006440+1
	mov lr, pc
	bx r2
	pop {r0,r1,r5}
	b loc_800498C
loc_8004970:
	mov r4, r5
	add r4, #0x40
	mov r3, #0
	str r3, [r4,#0x24]
	mov r3, #1
	tst r2, r3
	beq loc_800498C
	push {r0,r1,r5}
	mov r0, r5
	add r0, #0xc
	ldr r1, off_80049A8 // =sub_30061E8+1
	mov lr, pc
	bx r1
	pop {r0,r1,r5}
loc_800498C:
	add r1, #1
	add r5, #0x78
	cmp r1, r0
	blt loc_8004944
	mov r0, #5
	bl sub_80028C0
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_80049A4: .word sub_3006028+1
off_80049A8: .word sub_30061E8+1
off_80049AC: .word sub_3006440+1
	thumb_func_end sub_8004934

	thumb_local_start
sub_80049B0:
	push {lr}
	mov r0, #5
	bl sub_80028C0
	pop {pc}
	thumb_func_end sub_80049B0

	thumb_local_start
sub_80049BA:
	mov r0, #0
	ldr r3, off_80049D4 // =eOverworldMapObjects
loc_80049BE:
	mov r1, r3
	add r1, #0x40
	mov r2, #0
	str r2, [r1,#0x24]
	add r3, #0x78
	add r0, #1
	cmp r0, #0x38
	blt loc_80049BE
	mov pc, lr
	.balign 4, 0
off_80049D0: .word eActiveOverworldMapObjectsBitfield
off_80049D4: .word eOverworldMapObjects
off_80049D8: .word dword_2013920
off_80049DC: .word eOverworldMapObject55
	thumb_func_end sub_80049BA

// END OF OBJECT CODE

	thumb_local_start
sub_80049E0:
	push {lr}
	ldr r0, off_8004D2C // =byte_2006848
	ldr r1, off_80049F4 // =0x400
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldr r0, off_8004D28 // =dword_2006C48
	ldr r1, off_8004D2C // =byte_2006848
	str r1, [r0]
	pop {pc}
	.balign 4, 0
off_80049F4: .word 0x400
	thumb_func_end sub_80049E0

	thumb_local_start
sub_80049F8:
	push {lr}
	pop {pc}
	thumb_func_end sub_80049F8

	thumb_local_start
sub_80049FC:
	push {r0-r7}
	sub sp, sp, #0x24
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	str r4, [sp,#0xc]
	str r5, [sp,#0x10]
	str r6, [sp,#0x14]
	str r7, [sp,#0x18]
	mov r7, #0
	str r7, [sp,#0x1c]
	mov r7, r8
	str r7, [sp,#0x20]
	ldr r5, off_8004B0C // =unk_2006C46
	mov r1, #0
	mov r8, r1
	ldr r1, off_8004D28 // =dword_2006C48
	ldr r1, [r1]
	cmp r1, r5
	bge loc_8004AB0
	ldrb r2, [r0]
	strb r2, [r1]
	add r0, #1
	add r1, #1
	ldrb r2, [r0]
	strb r2, [r1]
	add r0, #1
	add r1, #1
loc_8004A34:
	ldrb r2, [r0]
	mov r3, #0
	cmp r2, r3
	beq loc_8004AA6
	mov r3, #0xa
	cmp r2, r3
	bne loc_8004A4A
	mov r3, #0xfe
	strh r3, [r1]
	add r1, #2
	b loc_8004AA2
loc_8004A4A:
	mov r3, #0x20
	cmp r2, r3
	blt loc_8004AA2
	mov r3, #0x60
	cmp r2, r3
	bge loc_8004AA2
	cmp r1, r5
	bge loc_8004AA6
	mov r3, #0x25
	cmp r2, r3
	bne loc_8004A9C
	mov r3, #0
	mov r8, r3
loc_8004A64:
	add r0, #1
	ldrb r2, [r0]
	ldr r3, off_8004B10 // =byte_8004B14
loc_8004A6A:
	ldrb r4, [r3]
	cmp r4, #0
	beq loc_8004AA2
	cmp r2, r4
	beq loc_8004A78
	add r3, #1
	b loc_8004A6A
loc_8004A78:
	ldr r2, [sp,#0x1c]
	mov r4, r2
	add r4, #4
	str r4, [sp,#0x1c]
	add r2, sp
	ldr r2, [r2]
	ldr r4, off_8004B10 // =byte_8004B14
	sub r3, r3, r4
	lsl r3, r3, #2
	ldr r4, off_8004ABC // =off_8004AC0
	add r4, r4, r3
	ldr r4, [r4]
	lsr r3, r3, #2
	mov lr, pc
	bx r4
	cmp r4, #0
	beq loc_8004A64
	b loc_8004AA2
loc_8004A9C:
	sub r2, #0x20
	strh r2, [r1]
	add r1, #2
loc_8004AA2:
	add r0, #1
	b loc_8004A34
loc_8004AA6:
	mov r2, #0xff
	strh r2, [r1]
	add r1, #2
	ldr r0, off_8004D28 // =dword_2006C48
	str r1, [r0]
loc_8004AB0:
	ldr r7, [sp,#0x20]
	mov r8, r7
	add sp, sp, #0x24
	pop {r0-r7}
	pop {pc}
	.balign 4, 0
off_8004ABC: .word off_8004AC0
off_8004AC0: .word sub_8004B72+1
	.word sub_8004B72+1
	.word sub_8004BC8+1
	.word sub_8004BC8+1
	.word sub_8004C62+1
	.word sub_8004C62+1
	.word sub_8004CAE+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004CBE+1
	.word sub_8004CBE+1
off_8004B0C: .word unk_2006C46
off_8004B10: .word byte_8004B14
byte_8004B14: .byte 0x44, 0x64, 0x58, 0x78, 0x53, 0x73, 0x25, 0x30, 0x31
	.byte 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x42
	.byte 0x62, 0x0
	thumb_func_end sub_80049FC

	thumb_local_start
sub_8004B28:
	push {r4-r7,lr}
	ldr r4, off_8004D2C // =byte_2006848
	mov r7, #0xf2
	lsl r7, r7, #8
	add r7, #0xa0
	ldr r5, off_8004D28 // =dword_2006C48
	ldr r5, [r5]
	sub r5, r5, r4
	mov r2, #0
loc_8004B3A:
	cmp r5, #0
	beq loc_8004B6A
	ldrb r6, [r4]
	mov r0, r6
	ldrb r1, [r4,#1]
	add r4, #2
	sub r5, #2
loc_8004B48:
	ldrb r3, [r4]
	add r4, #2
	sub r5, #2
	cmp r3, #0xff
	beq loc_8004B3A
	cmp r3, #0xfe
	bne loc_8004B5C
	mov r0, r6
	add r1, #1
	b loc_8004B48
loc_8004B5C:
	push {r0-r7}
	add r3, r3, r7
	bl sub_800187C
	pop {r0-r7}
	add r0, #1
	b loc_8004B48
loc_8004B6A:
	ldr r4, off_8004D28 // =dword_2006C48
	ldr r1, off_8004D2C // =byte_2006848
	str r1, [r4]
	pop {r4-r7,pc}
	thumb_func_end sub_8004B28

	thumb_local_start
sub_8004B72:
	push {r0,r5-r7,lr}
	cmp r2, #0
	bge loc_8004B8E
	cmp r1, r5
	bge loc_8004B96
	push {r3}
	mov r3, #0xd
	strh r3, [r1]
	add r1, #2
	mov r3, #0
	mvn r3, r3
	eor r2, r3
	add r2, #1
	pop {r3}
loc_8004B8E:
	ldr r0, off_8004B9C // =byte_8004BA0
	mov r6, #0xa
	bl sub_8004BFC
loc_8004B96:
	mov r4, #1
	pop {r0,r5-r7,pc}
	.balign 4, 0
off_8004B9C: .word byte_8004BA0
byte_8004BA0: .byte 0x0, 0xCA, 0x9A, 0x3B, 0x0, 0xE1, 0xF5, 0x5, 0x80, 0x96
	.byte 0x98, 0x0, 0x40, 0x42, 0xF, 0x0, 0xA0, 0x86, 0x1, 0x0
	.byte 0x10, 0x27, 0x0, 0x0, 0xE8, 0x3, 0x0, 0x0, 0x64, 0x0
	.byte 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0
	thumb_func_end sub_8004B72

	thumb_local_start
sub_8004BC8:
	push {r0,r5-r7,lr}
	sub r3, #2
	ldr r0, off_8004BD8 // =dword_8004BDC
	mov r6, #8
	bl sub_8004BFC
	mov r4, #1
	pop {r0,r5-r7,pc}
	.balign 4, 0
off_8004BD8: .word dword_8004BDC
dword_8004BDC: .word 0x10000000, 0x1000000, 0x100000, 0x10000, 0x1000, 0x100
	.word 0x10, 0x1
	thumb_func_end sub_8004BC8

	thumb_local_start
sub_8004BFC:
	mov r7, r8
	cmp r7, #0
	beq loc_8004C06
	cmp r7, r6
	blt loc_8004C08
loc_8004C06:
	mov r7, r6
loc_8004C08:
	sub r6, r6, r7
	mov r8, r6
	mov r7, r3
loc_8004C0E:
	mov r3, #0
	ldr r4, [r0]
loc_8004C12:
	cmp r2, #0
	blt loc_8004C20
	cmp r2, r4
	blt loc_8004C2A
	sub r2, r2, r4
	add r3, #1
	b loc_8004C12
loc_8004C20:
	cmp r2, r4
	bge loc_8004C2A
	sub r2, r2, r4
	add r3, #1
	b loc_8004C12
loc_8004C2A:
	mov r6, r8
	cmp r6, #0
	beq loc_8004C36
	sub r6, #1
	mov r8, r6
	b loc_8004C5A
loc_8004C36:
	mov r6, #1
	and r6, r7
	bne loc_8004C44
	cmp r4, #1
	beq loc_8004C44
	cmp r3, #0
	beq loc_8004C5A
loc_8004C44:
	mov r6, #1
	orr r7, r6
	cmp r1, r5
	bge locret_8004C60
	ldr r6, off_8004D30 // =byte_8004D34
	add r6, r6, r3
	ldrb r3, [r6]
	sub r3, #0x20
	strh r3, [r1]
	mov r3, #0
	add r1, #2
loc_8004C5A:
	add r0, #4
	cmp r4, #1
	bne loc_8004C0E
locret_8004C60:
	mov pc, lr
	thumb_func_end sub_8004BFC

	thumb_local_start
sub_8004C62:
	push {r0,r5-r7,lr}
	mov r7, r8
	cmp r7, #0
	bne loc_8004C6E
	mov r6, #0xff
	mov r8, r6
loc_8004C6E:
	mov r6, r8
	cmp r6, #0
	beq loc_8004C8C
	sub r6, #1
	mov r8, r6
	ldrb r3, [r2]
	cmp r3, #0
	beq loc_8004C8C
	cmp r1, r5
	bge loc_8004C8C
	sub r3, #0x20
	strh r3, [r1]
	add r1, #2
	add r2, #1
	b loc_8004C6E
loc_8004C8C:
	mov r4, #1
	pop {r0,r5-r7,pc}
	thumb_func_end sub_8004C62

	thumb_local_start
sub_8004C90:
	ldr r2, [sp,#0x1c]
	sub r2, #4
	str r2, [sp,#0x1c]
	mov r3, #0
	mov r4, #0
loc_8004C9A:
	add r3, r8
	add r4, #1
	cmp r4, #0xa
	blt loc_8004C9A
	ldrb r4, [r0]
	sub r4, #0x30
	add r3, r3, r4
	mov r8, r3
	mov r4, #0
	mov pc, lr
	thumb_func_end sub_8004C90

	thumb_local_start
sub_8004CAE:
	ldr r2, [sp,#0x1c]
	sub r2, #4
	str r2, [sp,#0x1c]
	mov r3, #5
	strh r3, [r1]
	add r1, #2
	mov r4, #0
	mov pc, lr
	thumb_func_end sub_8004CAE

	thumb_local_start
sub_8004CBE:
	push {r0,r5-r7,lr}
	sub r3, #0x11
	mov r6, #0x20
	bl sub_8004CCC
	mov r4, #1
	pop {r0,r5-r7,pc}
	thumb_func_end sub_8004CBE

	thumb_local_start
sub_8004CCC:
	mov r7, r8
	cmp r7, #0
	beq loc_8004CD6
	cmp r7, r6
	blt loc_8004CD8
loc_8004CD6:
	mov r7, r6
loc_8004CD8:
	sub r6, r6, r7
	mov r8, r6
	mov r7, r3
	mov r4, #0x80
	lsl r4, r4, #0x18
loc_8004CE2:
	mov r3, #0
loc_8004CE4:
	tst r2, r4
	beq loc_8004CEE
	bic r2, r4
	add r3, #1
	b loc_8004CE4
loc_8004CEE:
	mov r6, r8
	cmp r6, #0
	beq loc_8004CFA
	sub r6, #1
	mov r8, r6
	b loc_8004D1E
loc_8004CFA:
	mov r6, #1
	and r6, r7
	bne loc_8004D08
	cmp r4, #1
	beq loc_8004D08
	cmp r3, #0
	beq loc_8004D1E
loc_8004D08:
	mov r6, #1
	orr r7, r6
	cmp r1, r5
	bge locret_8004D24
	ldr r6, off_8004D30 // =byte_8004D34
	add r6, r6, r3
	ldrb r3, [r6]
	sub r3, #0x20
	strh r3, [r1]
	mov r3, #0
	add r1, #2
loc_8004D1E:
	lsr r4, r4, #1
	cmp r4, #0
	bne loc_8004CE2
locret_8004D24:
	mov pc, lr
	.byte 0x0, 0x0
	.balign 4, 0
off_8004D28: .word dword_2006C48
off_8004D2C: .word byte_2006848
off_8004D30: .word byte_8004D34
byte_8004D34: .byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38
	.byte 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x0, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_8004CCC

/// breaks on reset
/// breaks on "Continue" via load_game_802F756
	thumb_func_start sub_8004D48
sub_8004D48:
	push {r4-r7,lr}

	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]

  // trigger EnterMap via cbGameState_80050EC
	mov r0, #0
	strb r0, [r5,#oGameState_SubsystemIndex]

	mov r0, #8
	strb r0, [r5,#oGameState_EnterMapFadeParam1]

	mov r0, #0x10
	strb r0, [r5,#oGameState_EnterMapFadeParam2]

	mov r0, #0
	strb r0, [r5,#oGameState_CoordInteractionValue]
	strb r0, [r5,#oGameState_Unk_03]
	strb r0, [r5,#oGameState_Unk_15]
	strb r0, [r5,#oGameState_BattlePaused]
	str r0, [r5,#oGameState_Unk_74]

	mov r0, #0x63
	strb r0, [r5,#oGameState_BGMusicIndicator]

	mov r0, #0
	strb r0, [r5,#oGameState_Unk_11]
	strb r0, [r5,#oGameState_Unk_10]
	ldr r1, off_8004DE4 // =byte_200F410
	strb r0, [r1]

	ldr r1, off_8004DE0 // =eStruct200ace0
	mov r0, #0
	strb r0, [r1]
	str r0, [r1,#0x18] // (dword_200ACF8 - 0x200ace0)
	str r0, [r1,#0x20] // (dword_200AD00 - 0x200ace0)

	mov r0, #0xff
	strb r0, [r1,#0x1c] // (byte_200ACFC - 0x200ace0)

	bl SetPlayerCanMoveEventFlag

	mov r0, #0
	ldr r1, off_8004DE8 // =eCamera+76
	strb r0, [r1]
	ldr r1, off_8004DEC // =dword_20096D0
	strb r0, [r1]

	bl sub_8004702

	movflag EVENT_1703
	bl ClearEventFlagFromImmediate

	movflag EVENT_171B
	bl ClearEventFlagFromImmediate

	movflag EVENT_EVENT_CUR_DIR_LOCKED
	bl ClearEventFlagFromImmediate

	movflag EVENT_172D
	bl ClearEventFlagFromImmediate

	bl sub_800399A
	bl sub_8003AEA
	bl sub_811EC00
	bl sub_800B110

	movflag EVENT_91
	bl ClearEventFlagFromImmediate

	bl sub_803C3E0
	beq loc_8004DDA

	movflag EVENT_91
	bl SetEventFlagFromImmediate
loc_8004DDA:
	bl sub_8048C98
	pop {r4-r7,pc}
	.balign 4, 0
off_8004DE0: .word eStruct200ace0
off_8004DE4: .word byte_200F410
off_8004DE8: .word eCamera+0x4C // eCamera.unk_4C
off_8004DEC: .word dword_20096D0
	thumb_func_end sub_8004D48

// Breaking on this pauses right on ^R on game boot
	thumb_func_start initNewGameData_8004DF0
initNewGameData_8004DF0:
	push {r4-r7,lr}

	mov r5, r10

	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r0, #0
	str r0, [r5,#oGameState_Ptr_20]

	mvn r0, r0
	strh r0, [r5,#oGameState_LastMapGroup]

	mov r0, #0
	str r0, [r5,#oGameState_ProtectedZenny]
	str r0, [r5,#oGameState_ProtectedBugfrags]
	str r0, [r5,#oGameState_Unk_74]

	mvn r0, r0
	str r0, [r5,#oGameState_Unk_6c]
	str r0, [r5,#oGameState_Unk_70]

	mov r1, r10

	ldr r1, [r1,#oToolkit_S2001c04_Ptr]
	mov r0, #0
	str r0, [r1,#0x18]

	mov r0, #1
	strb r0, [r1,#5]

	mov r0, #0
	strh r0, [r1,#0x12]
	strh r0, [r1,#0x14]
	str r0, [r1,#0x1c]
	str r0, [r5,#oGameState_CurBattleDataPtr]
	strh r0, [r1,#8]
	strh r0, [r1,#0xa]
	strh r0, [r1,#0xc]
	strh r0, [r1,#0x10]
	str r0, [r1]
	str r0, [r1,#0x30]

	mov r0, #0
	strb r0, [r5,#oGameState_Unk_02]
	str r0, [r1,#0x24]
	str r0, [r1,#0x28]

	mov r0, #0x63
	strb r0, [r1,#4]

	mov r0, #0
	strb r0, [r5,#oGameState_CurPETNavi]

	mov r0, #0
	strh r0, [r1,#0x16]

	mov r0, #0xff
	strb r0, [r5,#oGameState_Unk_12]

	bl sub_802F0C4

	bl encryption_initAll_8006d00

	bl sub_803CD74

	mov r0, #0
	strb r0, [r5,#oGameState_Unk_13]
	str r0, [r5,#0x78]

	bl sub_802F2C8
	bl sub_81284A4
	bl owPlayer_setS2000aa0_param0x0to0x2_with0x40_0x40_0x0_respectively_809e2c2
	bl SetDefaultOWPlayerNaviColorShader
	bl sub_809E304
	bl ZeroOWPlayerNaviPaletteIndex
	bl owPlayer_zeroS2000AA0Param0x4_809e312
	bl sub_809E3AA
	bl sub_809E3B2
	bl Clear_eStruct2000780
	bl sub_8003A58
	bl zeroFill_e2004348
	bl sub_809FAF4
	bl sub_809F9DC
	bl sub_8049CF8
	bl sub_804A17A
	bl sub_811FB78
	bl sub_8048C68

	movflag EVENT_PET_NAVI_ACTIVE
	bl SetEventFlagFromImmediate

	movflag EVENT_401
	bl SetEventFlagFromImmediate

	movflag EVENT_4E7
	mov r2, #2
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_46D
	bl SetEventFlagFromImmediate

	movflag EVENT_483
	bl SetEventFlagFromImmediate

	movflag EVENT_1
	mov r2, #3
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_4
	bl SetEventFlagFromImmediate

	movflag EVENT_6
	mov r2, #8
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_F
	mov r2, #2
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_5EE
	mov r2, #3
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_31
	mov r2, #2
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_3B
	mov r2, #3
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_72
	bl SetEventFlagFromImmediate

	movflag EVENT_73
	mov r2, #7
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_9F6
	mov r2, #9
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_87
	bl SetEventFlagFromImmediate

	movflag EVENT_89
	bl SetEventFlagFromImmediate

	movflag EVENT_87D
	bl SetEventFlagFromImmediate

	movflag EVENT_A99
	bl SetEventFlagFromImmediate

	movflag EVENT_BFD
	mov r2, #3
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_70
	bl SetEventFlagFromImmediate

	movflag EVENT_8A
	bl SetEventFlagFromImmediate

	movflag EVENT_CD7
	mov r2, #4
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_8C
	bl SetEventFlagFromImmediate

	movflag EVENT_CE6
	bl SetEventFlagFromImmediate

	movflag EVENT_FF9
	mov r2, #7
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_136
	bl SetEventFlagFromImmediate

	movflag EVENT_138
	mov r2, #2
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_13A
	bl SetEventFlagFromImmediate

	movflag EVENT_164
	mov r2, #0x19
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_7B
	bl SetEventFlagFromImmediate

	movflag EVENT_7F
	bl SetEventFlagFromImmediate

	movflag EVENT_81
	bl SetEventFlagFromImmediate

	movflag EVENT_18E
	mov r2, #9
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_86
	bl SetEventFlagFromImmediate

	movflag EVENT_1CE
	mov r2, #6
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_1001
	bl SetEventFlagFromImmediate

	movflag EVENT_68E
	bl SetEventFlagFromImmediate

	movflag EVENT_68F
	bl ClearEventFlagFromImmediate

	movflag EVENT_82
	mov r2, #2
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void

	movflag EVENT_85
	bl SetEventFlagFromImmediate

	bl clearSetFlags_80355a8

	movflag EVENT_38
	bl SetEventFlagFromImmediate

	movflag EVENT_39
	bl SetEventFlagFromImmediate

	movflag EVENT_11
	bl SetEventFlagFromImmediate

	mov r0, #0
	bl sub_80AA004

	mov r0, #0
	bl sub_80AA104

	bl sub_802D638

	bl sub_80356EC

	ldr r0, off_80050E4 // =0x100
	strh r0, [r5,#oGameState_MapGroup]
	str r0, [r5,#oGameState_SavedRealWorldMapId]
	str r0, [r5,#0x58]

	mov r0, #0
	strb r0, [r5,#oGameState_GameProgress]
	strb r0, [r5,#oGameState_Unk_07]
	strb r0, [r5,#oGameState_Unk_08]

	mov r0, #0
	str r0, [r5,#oGameState_PlayerX]
	str r0, [r5,#oGameState_SavedRealWorldX]
	str r0, [r5,#oGameState_SavedInternetX]
	str r0, [r5,#oGameState_PlayerY]
	str r0, [r5,#oGameState_SavedRealWorldY]
	str r0, [r5,#0x4c]
	str r0, [r5,#oGameState_PlayerZ]
	str r0, [r5,#oGameState_SavedRealWorldZ]
	str r0, [r5,#0x50]

	mov r0, #4
	str r0, [r5,#oGameState_FacingDirectionAfterWarp]
	str r0, [r5,#oGameState_SavedRealWorldFacingDirection]
	str r0, [r5,#0x54]

	bl initGameProgressBuffer_803532c

	bl sub_8021D36

	mov r0, r10

	// memBlock
	ldr r0, [r0,#oToolkit_S_Chip_2002178_Ptr]
	mov r1, #0x3c
	mov r2, #3
	mul r1, r2
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()

	bl zeroFill_e2002230

	ldr r0, off_80050E8 // =byte_80213AC
	mov r1, #0

	bl sub_8021AB4
	bl sub_81376E8
	bl sub_8137700
	bl sub_8137808
	bl sub_80133EC
	bl sub_813B768
	bl zeroFill_813B934
	bl sub_813C324
	bl sub_8121144
	bl sub_800AAF2
	bl sub_800AB22

	mov r0, #1
	bl sub_802E240

	bl reqBBS_813E616

	bl reqBBS_initMemory_813F9DA

	movflag EVENT_173A
	bl ClearEventFlagFromImmediate

	movflag EVENT_IN_SLIPRUN_STATE
	bl ClearEventFlagFromImmediate

	movflag EVENT_173E
	bl ClearEventFlagFromImmediate

	movflag EVENT_173F
	bl ClearEventFlagFromImmediate

	bl reqBBS_8140984

	pop {r4-r7,pc}
	.balign 4, 0
off_80050E4: .word 0x100
off_80050E8: .word byte_80213AC
	thumb_func_end initNewGameData_8004DF0

// () -> void
	thumb_func_start cbGameState_80050EC
cbGameState_80050EC:
	push {r4-r7,lr}
	ldr r0, GameStateJumptable_p // =GameStateJumptable
	mov r5, r10

	ldr r5, [r5,#oToolkit_GameStatePtr]

	ldrb r1, [r5,#oGameState_SubsystemIndex]
	ldr r0, [r0,r1]

	mov lr, pc
	bx r0

	bl GetRNG // () -> u32?
	bl GetRNGSecondary // () -> void

	pop {r4-r7,pc}
	.balign 4, 0
GameStateJumptable_p: .word GameStateJumptable
GameStateJumptable: 
	.word EnterMap+1 // (self: * GameState $r5) -> ()
	.word gamestate_OnMapUpdate_8005268+1 // (self: * GameState $r5) -> ()
	.word battle_80052D8+1 // (self: * GameState $r5) -> ()
	.word sub_8005360+1 // (self: * GameState $r5) -> ()
	.word sub_800536E+1 // (self: * GameState $r5) -> ()
	.word sub_80053E4+1 // (self: * GameState $r5) -> ()
	.word sub_8005462+1 // (self: * GameState $r5) -> ()
	.word sub_800555A+1 // (self: * GameState $r5) -> ()
	.word sub_8005642+1 // (self: * GameState $r5) -> ()
	.word sub_80056B8+1 // (self: * GameState $r5) -> ()
	.word sub_800572C+1 // (self: * GameState $r5) -> ()
	.word sub_80057A0+1 // (self: * GameState $r5) -> ()
	.word sub_80055CE+1 // (self: * GameState $r5) -> ()
	.word sub_8005814+1 // (self: * GameState $r5) -> ()
	.word sub_800585A+1 // (self: * GameState $r5) -> ()
	thumb_func_end cbGameState_80050EC

	thumb_local_start
EnterMap: // (self: * GameState $r5) -> ()
	push {lr}

  // return if IsScreenFadeActive
	bl IsScreenFadeActive // () -> zf
	bne .endif1
	pop {pc}
.endif1:

	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl InitializeOverworldMapObjectStructs
	bl copy_8002668
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl sub_802F0D8
	bl sub_802F0F4
	bl cutscene_8036EFE
	bl clearCutsceneScriptPosIfMagicValue0x1_8036F24
	bl sub_809F90C

	movflag EVENT_1731
	bl ClearEventFlagFromImmediate

	mov r0, #0
	bl sub_803F6B0

	bl sub_803F500

	bl RandomizeExtraToolkitPointers // () -> ?

  // if !EVENT_1741
	movflag EVENT_1741
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne .endif2

	bl reloadCurNaviStatBoosts_813c3ac

.endif2:

	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]

	bl sub_8000FAC

	bl sub_80355EC

	mov r0, #0
	bl sub_8001172

	mov r0, #0
	strb r0, [r5,#oGameState_Unk_15]
	strb r0, [r5,#oGameState_CoordInteractionValue]
	strb r0, [r5,#oGameState_Unk_03]
	str r0, [r5,#oGameState_Unk_68]

	movflag EVENT_1719
	bl ClearEventFlagFromImmediate

	movflag EVENT_NPC_OBJECTS_DISABLED
	bl ClearEventFlagFromImmediate

	movflag EVENT_NON_NPC_ANIMATION_LOCKED
	bl ClearEventFlagFromImmediate

	movflag EVENT_1700
	bl ClearEventFlagFromImmediate

	movflag EVENT_PET_DISABLED
	bl ClearEventFlagFromImmediate

	movflag EVENT_1739
	bl ClearEventFlagFromImmediate

	movflag EVENT_1732
	bl ClearEventFlagFromImmediate

	movflag EVENT_1BB
	bl ClearEventFlagFromImmediate

	bl sub_8033948

	ldr r0, off_8005264 // =0x1740
	bl SetRenderInfoLCDControl // (a_00: u16) -> ()

	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl LoadGFXAnimsForMapGroup // (map_group: u8, map_number: u8) -> ()

	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl map_8001708 // (map_group: u8, map_number: u8) -> ()

	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl map_8034B4C // (map_group: u8, map_number: u8) -> ()

	ldrb r0, [r5,#oGameState_MapGroup]
	bl EnterMap_RunMapGroupAsmFunction_8030A00

	movflag EVENT_IN_SLIPRUN_STATE
	bl ClearEventFlagFromImmediate

	movflag EVENT_173E
	bl ClearEventFlagFromImmediate

	movflag EVENT_173F
	bl ClearEventFlagFromImmediate

	ldrb r0, [r5,#oGameState_EnterMapFadeParam1]
	ldrb r1, [r5,#oGameState_EnterMapFadeParam2]
	bl SetScreenFade // (int a1, int a2) -> void

	mov r0, #8
	strb r0, [r5,#oGameState_EnterMapFadeParam1]

	mov r0, #0x10
	strb r0, [r5,#oGameState_EnterMapFadeParam2]

	mov r0, r10
	ldr r0, [r0,#oToolkit_Warp2011bb0_Ptr]
	mov r1, #0
	strb r1, [r0,#oWarp2011bb0_Unk_10]

  // trigger gamestate_OnMapUpdate_8005268 via cbGameState_80050EC
	mov r0, #4
	strb r0, [r5,#oGameState_SubsystemIndex]

	pop {pc}
	.balign 4, 0
off_8005264: .word 0x1740
	thumb_func_end EnterMap

// on load game, we trigger EnterMap, and then we stay here a long time
	thumb_local_start
gamestate_OnMapUpdate_8005268: // (self: * GameState $r5) -> ()
	push {lr}

	bl clearCutsceneScriptPosIfMagicValue0x1_8036F24

	bl cutscene_8034BB8

	mov r0, #0
	strb r0, [r5, #oGameState_CoordInteractionValue]

	bl ZeroFillObjectInteractionAreas_800378C // () -> ()

	bl TryUpdateEachOWPlayerObject_8003BA2 // () -> ()

	bl TryUpdateEachOverworldNPCObject_800461E // () -> ()

	bl TryUpdateEachOverworldMapObject_80048D2 // () -> ()

	bl sub_809F942 // () -> * nullable ?

	bl dispatch_80339CC // () -> ()

	bl sub_80039AA
	bl sub_8003AFA
	bl checkOWObjectInteractions_80037f4
	bl camera_802FFF4
	bl sub_8030580
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl sub_80058D0
	bl sub_8005A8C
	bl sub_8005B6A
	bl sub_8005AF4

	pop {pc}
	thumb_func_end gamestate_OnMapUpdate_8005268

	thumb_local_start
battle_80052D8: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl sub_803F530
	bne locret_800531A
	bl IsScreenFadeActive // () -> zf
	beq locret_800531A
	bl sub_800531C
locret_800531A:
	pop {pc}
	thumb_func_end battle_80052D8

	thumb_local_start
sub_800531C:
	push {lr}
	bl chatbox_8040818
	mov r0, #0x21 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8004702
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r0, #0xc
	strb r0, [r5,#oGameState_SubsystemIndex]
	ldr r0, [r5,#oGameState_CurBattleDataPtr]
	bl sub_80071D4
	ldr r0, off_8005358 // =eS2011800
	ldr r1, off_800535C // =0x2180
	mov r2, #0
	mvn r2, r2
	bl WordFill
	pop {pc}
	.balign 4, 0
off_8005358: .word eS2011800
off_800535C: .word 0x2180
	thumb_func_end sub_800531C

	thumb_local_start
sub_8005360: // (self: * GameState $r5) -> ()
	push {lr}
	bl battle_main_8007800
	bne locret_800536C
	mov r0, #0
	strb r0, [r5,#oGameState_SubsystemIndex]
locret_800536C:
	pop {pc}
	thumb_func_end sub_8005360

	thumb_local_start
sub_800536E: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_80053DA
	ldr r0, [r5,#oGameState_Unk_68]
	sub r0, #1
	blt loc_80053D2
	str r0, [r5,#oGameState_Unk_68]
	cmp r0, #0x29
	bne loc_80053BC
	mov r0, #0x72
	add r0, #0xff
	bl PlaySoundEffect
	b locret_80053DA
loc_80053BC:
	cmp r0, #0x9e
	bne locret_80053DA
	ldrb r0, [r5,#5]
	cmp r0, #1
	bgt locret_80053DA
	ldr r1, off_80053DC // =hword_80053E0
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	bl PlaySoundEffect
	b locret_80053DA
loc_80053D2:
	bl chatbox_8040818
	bl map_triggerEnterMapOnWarp_8005C04
locret_80053DA:
	pop {pc}
	.balign 4, 0
off_80053DC: .word hword_80053E0
hword_80053E0: .hword 0xE7, 0xEC
	thumb_func_end sub_800536E

	thumb_local_start
sub_80053E4: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_800545C
	bl chatbox_8040818
	mov r0, #0x25 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_80341AA
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #8
	strb r1, [r0]
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldr r0, word_8005460 // =0x40
	bl SetRenderInfoLCDControl // (a_00: u16) -> ()
locret_800545C:
	pop {pc}
	.balign 4, 0
word_8005460: .hword 0x40
	thumb_func_end sub_80053E4

// () -> void
	thumb_local_start
sub_8005462: // (self: * GameState $r5) -> ()
	push {r7,lr}
	ldr r7, off_8005520 // =ePETMenuData
	ldrb r0, [r7,#0x8] // (byte_200DF28 - 0x200df20)
	tst r0, r0
	bne loc_8005474
	mov r0, #1
	strb r0, [r7,#0x8] // (byte_200DF28 - 0x200df20)
	bl sub_811EC50
loc_8005474:
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	ldr r7, off_8005520 // =ePETMenuData
	ldrb r0, [r7,#0x1] // (byte_200DF21 - 0x200df20)
	cmp r0, #4
	bne loc_80054D6
	bl IsScreenFadeActive // () -> zf
	beq loc_80054D6
	bl copyMemory_8001850
	bl zeroFill_e2009740
	bl zeroFill_e200F3A0
	bl sub_811F6C0
	bl sub_8005524
	mov r0, #0x11
	bl TerminateGFXAnim
	bl sub_8046664 // () -> void
	bl chatbox_8040818
	b locret_800551C
loc_80054D6:
	bl ho_811ED1C // () -> void
	ldrb r0, [r7,#0x1] // (byte_200DF21 - 0x200df20)
	cmp r0, #4
	bne loc_80054EA
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	b locret_800551C
loc_80054EA:
	ldrb r0, [r7,#0x1] // (byte_200DF21 - 0x200df20)
	cmp r0, #8
	bne locret_800551C
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#0xe]
	bl sub_809E04C
	movflag EVENT_742
	bl ClearEventFlagFromImmediate
	movflag EVENT_743
	bl ClearEventFlagFromImmediate
	movflag EVENT_962
	bl ClearEventFlagFromImmediate
	movflag EVENT_963
	bl ClearEventFlagFromImmediate
locret_800551C:
	pop {r7,pc}
	.balign 4, 0
off_8005520: .word ePETMenuData
	thumb_func_end sub_8005462

	thumb_func_start sub_8005524
sub_8005524:
	push {lr}
	mov r0, #0x21 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #0x28
	strb r1, [r0]
	pop {pc}
	thumb_func_end sub_8005524

	thumb_local_start
sub_800555A: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_80055CC
	bl chatbox_8040818
	mov r0, #0x21 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #0x24
	strb r1, [r0]
locret_80055CC:
	pop {pc}
	thumb_func_end sub_800555A

	thumb_local_start
sub_80055CE: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_8005640
	bl chatbox_8040818
	mov r0, #0x21 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #0x44
	strb r1, [r0]
locret_8005640:
	pop {pc}
	thumb_func_end sub_80055CE

	thumb_local_start
sub_8005642: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_80056B4
	bl chatbox_8040818
	mov r0, #0x21 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #0x2c
	strb r1, [r0]
locret_80056B4:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8005642

	thumb_local_start
sub_80056B8: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_800572A
	bl chatbox_8040818
	mov r0, #0x21 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #0x34
	strb r1, [r0]
locret_800572A:
	pop {pc}
	thumb_func_end sub_80056B8

	thumb_local_start
sub_800572C: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_800579E
	bl chatbox_8040818
	mov r0, #0x21 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #0x3c
	strb r1, [r0]
locret_800579E:
	pop {pc}
	thumb_func_end sub_800572C

	thumb_local_start
sub_80057A0: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_8005812
	bl chatbox_8040818
	mov r0, #0x21 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #0x40
	strb r1, [r0]
locret_8005812:
	pop {pc}
	thumb_func_end sub_80057A0

	thumb_local_start
sub_8005814: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_8005858
	bl chatbox_8040818
	bl sub_811F6E0
	bl sub_8005524
locret_8005858:
	pop {pc}
	thumb_func_end sub_8005814

	thumb_local_start
sub_800585A: // (self: * GameState $r5) -> ()
	push {lr}
	bl dispatch_80339CC // () -> ()
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl IsScreenFadeActive // () -> zf
	beq locret_80058CC
	bl chatbox_8040818
	mov r0, #0x21 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #0x50
	strb r1, [r0]
locret_80058CC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_800585A

	thumb_local_start
sub_80058D0:
	push {r5,lr}

	mov r5, r10

	ldr r5, [r5,#oToolkit_GameStatePtr]

	ldrb r0, [r5,#oGameState_SubsystemIndex]

  // branch if gamestate_OnMapUpdate_8005268 not triggered
	cmp r0, #4
	bne .doNotCheckWarp

	bl sub_809E462
	bne .doNotCheckWarp

	bl sub_8005F28
	bne .doNotCheckWarp

	mov r0, #1
	bl TestPETMenuDataFlag
	bne .doNotCheckWarp

	bl IsScreenFadeActive // () -> zf
	beq .doNotCheckWarp

	bl IsCutsceneScriptNonNull // () -> !zf
	bne .doNotCheckWarp

	ldr r0, [r5,#oGameState_OverworldPlayerObjectPtr]
	add r0, #oOWPlayerObject_Coords
	bl checkCoordinateTrigger_8031a7a // (coords: * ?) -> ?

	mov r4, r1
	cmp r4, #1
	blt .doNotCheckWarp

	cmp r4, #0xf
	bgt .doNotCheckWarp

	ldr r1, off_8005940 // =EVENT_16F0
	add r1, r1, r4
	mov r0, r1
	bl TestEventFlag // (u16 flag) -> !zf
	bne .doNotCheckWarp

	mov r2, r10
	ldr r2, [r2,#oToolkit_Warp2011bb0_Ptr]

	mov r0, #1
	strb r0, [r2,#oWarp2011bb0_Unk_10]
	strb r4, [r2,#oWarp2011bb0_WarpIndex]

	mov r0, #0
	strb r0, [r2,#oWarp2011bb0_MapGroupTransitionType]

	ldr r2, [r2,#oWarp2011bb0_WarpDataPtr]
	mov r0, #oWarpData_Size
	sub r4, #1
	mul r4, r0
	add r2, r2, r4

	ldrb r0, [r2,#oWarpData_warpType_02]
	ldr r1, off_8005944 // =JumpTable8005948
	ldr r0, [r0,r1]

	mov lr, pc
	bx r0

.doNotCheckWarp
	pop {r5,pc}
	.balign 4, 0
off_8005940: .word EVENT_16F0
off_8005944: .word JumpTable8005948
JumpTable8005948: 
  // fade to black warp
  .word sub_800596C+1 // (self: * GameState $r5) -> ()
  // fade to white warp
	.word sub_8005990+1 // (self: * GameState $r5) -> ()
  // jack out anim, fade to black, fade from black, jack in anim, walk in direction
	.word sub_80059B4+1 // (self: * GameState $r5) -> ()
  // jack out anim, auto camera scroll to another area in the same map, jack in anim, walk in direction
	.word sub_80059D0+1 // (self: * GameState $r5) -> ()
  // jack out warp
	.word sub_80059EC+1 // (self: * GameState $r5) -> ()
  // levbus warp
	.word sub_8005A00+1 // (self: * GameState $r5) -> ()
  // underground warp
	.word sub_8005A0C+1 // (self: * GameState $r5) -> ()
  // todo check this one with sound. like 0x0, but has a delay + plays a hardcoded sound
	.word sub_8005A28+1 // (self: * GameState $r5) -> ()
  // same as above, but with a different delay
	.word sub_8005A50+1 // (self: * GameState $r5) -> ()
	thumb_func_end sub_80058D0

	thumb_local_start
sub_800596C: // (self: * GameState $r5) -> ()
	push {lr}

	movflag EVENT_1703
	bl SetEventFlagFromImmediate

	movflag EVENT_1738
	bl SetEventFlagFromImmediate

	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void

	bl sub_8035738

  // trigger sub_800536E via cbGameState_80050EC
	mov r0, #0x10
	strb r0, [r5,#oGameState_SubsystemIndex]

	pop {pc}
	thumb_func_end sub_800596C

	thumb_local_start
sub_8005990: // (self: * GameState $r5) -> ()
	push {lr}
	movflag EVENT_1703
	bl SetEventFlagFromImmediate

	movflag EVENT_1738
	bl SetEventFlagFromImmediate

	mov r0, #4
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void

	bl sub_8035738

  // trigger sub_800536E via cbGameState_80050EC
	mov r0, #0x10
	strb r0, [r5,#oGameState_SubsystemIndex]

	pop {pc}
	thumb_func_end sub_8005990

	thumb_local_start
sub_80059B4: // (self: * GameState $r5) -> ()
	push {lr}

	movflag EVENT_1703
	bl ClearEventFlagFromImmediate

	movflag EVENT_1738
	bl SetEventFlagFromImmediate

  // Disabling this causes warps like in Lan's HP to no longer interact (but they animate)
  // This reproduces in Lan's HP, but NOT RoboDogComp for example. Might be because it applies to HomePages
	ldr r0, off_8005A78 // =CutsceneScript_8098a02
	mov r1, #0
	bl StartCutscene // (script: *const (), param: u32) -> ()

	pop {pc}
	thumb_func_end sub_80059B4

	thumb_local_start
sub_80059D0: // (self: * GameState $r5) -> ()
	push {lr}
	movflag EVENT_1703
	bl SetEventFlagFromImmediate
	movflag EVENT_1738
	bl SetEventFlagFromImmediate

	ldr r0, off_8005A80 // =CutsceneScript_8098a78
	mov r1, #0
	bl StartCutscene // (script: *const (), param: u32) -> ()

	pop {pc}
	thumb_func_end sub_80059D0

	thumb_local_start
sub_80059EC: // (self: * GameState $r5) -> ()
	push {lr}
	movflag EVENT_1703
	bl ClearEventFlagFromImmediate

	ldr r0, off_8005A7C // =CutsceneScript_8098a2e
	mov r1, #0
	bl StartCutscene // (script: *const (), param: u32) -> ()

	pop {pc}
	thumb_func_end sub_80059EC

	thumb_local_start
sub_8005A00: // (self: * GameState $r5) -> ()
	push {lr}

	ldr r0, off_8005A84 // =CutsceneScript_809b5ad
	mov r1, #0
	bl StartCutscene // (script: *const (), param: u32) -> ()

	pop {pc}
	thumb_func_end sub_8005A00

	thumb_local_start
sub_8005A0C: // (self: * GameState $r5) -> ()
	push {lr}
	movflag EVENT_1703
	bl ClearEventFlagFromImmediate
	movflag EVENT_1738
	bl SetEventFlagFromImmediate

	ldr r0, off_8005A88 // =CutsceneScript_8098b1c
	mov r1, #0
	bl StartCutscene // (script: *const (), param: u32) -> ()

	pop {pc}
	thumb_func_end sub_8005A0C

	thumb_local_start
sub_8005A28: // (self: * GameState $r5) -> ()
	push {lr}

	movflag EVENT_1703
	bl SetEventFlagFromImmediate

	movflag EVENT_1738
	bl SetEventFlagFromImmediate

	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void

	bl sub_8035738

	mov r0, #0x3c
	str r0, [r5,#oGameState_Unk_68]

  // trigger sub_800536E via cbGameState_80050EC
	mov r0, #0x10
	strb r0, [r5,#oGameState_SubsystemIndex]

	pop {pc}
	thumb_func_end sub_8005A28

	thumb_local_start
sub_8005A50: // (self: * GameState $r5) -> ()
	push {lr}

	movflag EVENT_1703
	bl SetEventFlagFromImmediate

	movflag EVENT_1738
	bl SetEventFlagFromImmediate

	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void

	bl sub_8035738

	mov r0, #0xa0
	str r0, [r5,#oGameState_Unk_68]

  // trigger sub_800536E via cbGameState_80050EC
	mov r0, #0x10
	strb r0, [r5,#oGameState_SubsystemIndex]

	pop {pc}
	.balign 4, 0
off_8005A78: .word CutsceneScript_8098a02
off_8005A7C: .word CutsceneScript_8098a2e
off_8005A80: .word CutsceneScript_8098a78
off_8005A84: .word CutsceneScript_809b5ad
off_8005A88: .word CutsceneScript_8098b1c
	thumb_func_end sub_8005A50

	thumb_local_start
sub_8005A8C:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r0, [r5,#oGameState_SubsystemIndex]
	cmp r0, #4
	bne locret_8005AF2
	movflag EVENT_1717_PLAYER_ADVANCE_FORWARD
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne locret_8005AF2
	bl sub_809E462
	bne locret_8005AF2
	movflag EVENT_1700
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne locret_8005AF2
	movflag EVENT_173E
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne locret_8005AF2
	bl sub_8005F28
	bne locret_8005AF2
	mov r0, #1
	bl TestPETMenuDataFlag
	bne locret_8005AF2
	bl IsScreenFadeActive // () -> zf
	beq locret_8005AF2
	bl IsCutsceneScriptNonNull // () -> !zf
	bne locret_8005AF2
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_8005AF2
	bl sub_80AA4C0
	beq locret_8005AF2
	mov r1, #1
	bl StartBattle // (BattleSettings *r0Bt, bool r1) -> void
	mov r0, #0x2c
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
locret_8005AF2:
	pop {r5,pc}
	thumb_func_end sub_8005A8C

	thumb_local_start
sub_8005AF4:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r0, [r5,#oGameState_SubsystemIndex]
	cmp r0, #4
	bne locret_8005B68
	movflag EVENT_1717_PLAYER_ADVANCE_FORWARD
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne locret_8005B68
	movflag EVENT_IN_SLIPRUN_STATE
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne locret_8005B68
	bl sub_809E462
	bne locret_8005B68
	bl sub_8005F28
	bne locret_8005B68
	mov r0, #1
	bl TestPETMenuDataFlag
	bne loc_8005B64
	bl IsScreenFadeActive // () -> zf
	beq locret_8005B68
	bl IsCutsceneScriptNonNull // () -> !zf
	bne locret_8005B68
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_8005B68
	mov r0, #JOYPAD_START
	bl IsButtonPressed
	beq locret_8005B68
	movflag EVENT_PET_DISABLED
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne locret_8005B68
	mov r0, #SOUND_SELECT_79
	bl PlaySoundEffect
	bl updatePlayerGameState_800107A // () -> void
	bl sub_811EC10
	bl sub_8003962
	bl zeroFill_8003AB2
loc_8005B64:
	mov r0, #0x18
	strb r0, [r5,#oGameState_SubsystemIndex]
locret_8005B68:
	pop {r5,pc}
	thumb_func_end sub_8005AF4

	thumb_local_start
sub_8005B6A:
	push {r5,lr}
	pop {r5,pc}
	thumb_func_end sub_8005B6A

	thumb_local_start
sub_8005B6E:
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r0, [r5,#oGameState_SubsystemIndex]
	cmp r0, #4
	bne locret_8005BC6
	movflag EVENT_1717_PLAYER_ADVANCE_FORWARD
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne locret_8005BC6
	bl sub_809E462
	bne locret_8005BC6
	bl sub_8005F28
	bne locret_8005BC6
	mov r0, #1
	bl TestPETMenuDataFlag
	bne locret_8005BC6
	bl IsScreenFadeActive // () -> zf
	beq locret_8005BC6
	bl IsCutsceneScriptNonNull // () -> !zf
	bne locret_8005BC6
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_8005BC6
	movflag EVENT_1739
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne locret_8005BC6
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r1, [r0]
	ldrh r0, [r0,#2]
	mov r2, #4
	tst r0, r2
	beq locret_8005BC6
	bl sub_8005E86
locret_8005BC6:
	pop {r5,pc}
	thumb_func_end sub_8005B6E

// (BattleSettings *r0Bt, bool r1) -> void
	thumb_func_start StartBattle
StartBattle:
	push {r4-r7,lr}
	mov r7, r1
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r6, r10
	ldr r6, [r6,#oToolkit_S2001c04_Ptr]
	str r0, [r5,#oGameState_CurBattleDataPtr]
	bl GetBattleEffectsFromBattleSettings // () -> int
	ldr r1, dword_8005C00 // =0x4000
	tst r0, r1
	beq loc_8005BE4
	ldr r0, [r5,#oGameState_CurBattleDataPtr]
	str r0, [r6,#0x1c]
loc_8005BE4:
	ldrh r0, [r5,#oGameState_MapGroup]
	strh r0, [r5,#oGameState_LastMapGroup]
	tst r7, r7
	beq loc_8005BF0
	bl updatePlayerGameState_800107A // () -> void
loc_8005BF0:
	mov r0, #8
	strb r0, [r5,#oGameState_SubsystemIndex]
	bl musicGameState_8000784 // () -> void
	mov r0, #SOUND_BATTLE_START
	bl PlaySoundEffect
	pop {r4-r7,pc}
	.balign 4, 0
dword_8005C00: .word 0x4000
	thumb_func_end StartBattle

	thumb_func_start map_triggerEnterMapOnWarp_8005C04
map_triggerEnterMapOnWarp_8005C04:
	push {r4-r7,lr}

	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]

	mov r0, #0
	str r0, [r5,#oGameState_Ptr_20]

	mov r0, #0x25 
	bl FreeAllObjectsOfSpecifiedTypes

	mov r5, r10
	ldr r1, [r5,#oToolkit_Warp2011bb0_Ptr]
	ldr r0, [r1,#oWarp2011bb0_WarpDataPtr]
	mov r2, #oWarpData_Size
	ldrb r3, [r1,#oWarp2011bb0_WarpIndex]
	sub r3, #1
	mul r3, r2
	add r0, r0, r3
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()

	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]

	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl map_8001708 // (map_group: u8, map_number: u8) -> ()

	ldr r0, off_8005CE4 // =0x40
	bl SetRenderInfoLCDControl // (a_00: u16) -> ()

	mov r5, r10
	ldr r7, [r5,#oToolkit_Warp2011bb0_Ptr]
	ldr r5, [r5,#oToolkit_GameStatePtr]

	movflag EVENT_171B
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf

	bne .loc_8005C80

	ldrb r1, [r7,#oWarp2011bb0_MapGroup]
	ldrb r2, [r5,#oGameState_MapGroup]
	mov r3, #0x80
	mov r4, r1
	// r4 = unk_00 ^ mapGroup
	eor r4, r2

	// check transition from real world to internet or vice versa
	tst r4, r3
	beq .loc_8005C80

	// is the map to warp to is internet or real world?
	tst r1, r3
	bne .warpingToInternet // jump if warping to internet

	mov r6, #oGameState_SavedInternetCoords_FacingDirection_MapId

	b .gotSavedOWPlayerInfoOffset

.warpingToInternet
	mov r6, #oGameState_SavedRealWorldCoords_FacingDirection_MapId

.gotSavedOWPlayerInfoOffset
	ldr r0, [r5,#oGameState_OverworldPlayerObjectPtr]

	ldr r1, [r0,#oOWPlayerObject_X]
	ldr r2, [r0,#oOWPlayerObject_Y]
	ldr r3, [r0,#oOWPlayerObject_Z]

	ldrb r4, [r0,#oOWPlayerObject_FacingDirection]

	add r6, r6, r5

	str r1, [r6,#oSavedOWPlayerInfo_X]
	str r2, [r6,#oSavedOWPlayerInfo_Y]
	str r3, [r6,#oSavedOWPlayerInfo_Z]

	str r4, [r6,#oSavedOWPlayerInfo_FacingDirection]

	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #8
	orr r1, r0
	str r1, [r6,#oSavedOWPlayerInfo_MapId]

.loc_8005C80:
	movflag EVENT_171B
	bl ClearEventFlagFromImmediate

	ldrb r0, [r7,#oWarp2011bb0_MapGroupTransitionType]
	cmp r0, #MAP_GROUP_TRANSITION_TYPE_INTERNET_TO_REAL_WORLD
	beq .internetToRealWorld

	cmp r0, #MAP_GROUP_TRANSITION_TYPE_REAL_WORLD_TO_INTERNET
	beq .realWorldToInternet

	mov r1, #2
	strb r1, [r7,#oWarp2011bb0_Unk_10]
	ldr r1, [r7,#oWarp2011bb0_X]
	ldr r2, [r7,#oWarp2011bb0_Y]
	ldr r3, [r7,#oWarp2011bb0_Z]
	ldrb r4, [r7,#oWarp2011bb0_FacingDirection]
	ldrh r6, [r7,#oWarp2011bb0_MapId]

	b .gotWarpInfo

.internetToRealWorld
	ldr r1, [r5,#oGameState_SavedRealWorldX]
	ldr r2, [r5,#oGameState_SavedRealWorldY]
	ldr r3, [r5,#oGameState_SavedRealWorldZ]
	ldr r4, [r5,#oGameState_SavedRealWorldFacingDirection]
	ldr r6, [r5,#oGameState_SavedRealWorldMapId]
	b .gotWarpInfo

.realWorldToInternet
	ldr r1, [r5,#oGameState_SavedInternetX]
	ldr r2, [r5,#oGameState_SavedInternetY]
	ldr r3, [r5,#oGameState_SavedInternetZ]
	ldr r4, [r5,#oGameState_SavedInternetFacingDirection]
	ldr r6, [r5,#oGameState_SavedInternetMapId]

.gotWarpInfo
	str r1, [r5,#oGameState_PlayerX]
	str r2, [r5,#oGameState_PlayerY]
	str r3, [r5,#oGameState_PlayerZ]
	str r4, [r5,#oGameState_FacingDirectionAfterWarp]

	lsr r7, r6, #8
	mov r0, #0xff
	and r6, r0

  // trigger EnterMap via cbGameState_80050EC
  // Disabling this causes white screen after warp animation
	mov r1, #0
	strb r1, [r5,#oGameState_SubsystemIndex]

	ldrb r1, [r5,#oGameState_MapNumber]
	strb r1, [r5,#oGameState_LastMapNumber]
	ldrb r1, [r5,#oGameState_MapGroup]
	ldrb r2, [r5,#oGameState_LastMapGroup]
	strb r1, [r5,#oGameState_LastMapGroup]
	strb r6, [r5,#oGameState_MapGroup]
	strb r7, [r5,#oGameState_MapNumber]

	mov r7, r10
	ldr r7, [r7,#oToolkit_S2001c04_Ptr]

	mov r0, #0
	strh r0, [r7,#oS2001c04_Unk_12]

	strh r0, [r7,#oS2001c04_Unk_14]

	pop {r4-r7,pc}
	.balign 4, 0
off_8005CE4: .word 0x40
	thumb_func_end map_triggerEnterMapOnWarp_8005C04

	thumb_func_start subsystem_launchBBS
subsystem_launchBBS:
	push {r4-r7,lr}
	bl reqBBS_813E07C // (unk a1) ->
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrh r0, [r5,#oGameState_MapGroup]
	strh r0, [r5,#oGameState_LastMapGroup]
	bl updatePlayerGameState_800107A // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #0x1c
	strb r0, [r5,#oGameState_SubsystemIndex]
	pop {r4-r7,pc}
	thumb_func_end subsystem_launchBBS

	thumb_func_start subsystem_launchReqBBS
subsystem_launchReqBBS:
	push {r4-r7,lr}
	bl reqBBS_init_s_2005780
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrh r0, [r5,#oGameState_MapGroup]
	strh r0, [r5,#oGameState_LastMapGroup]
	bl updatePlayerGameState_800107A // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #0x30 
	strb r0, [r5,#oGameState_SubsystemIndex]
	pop {r4-r7,pc}
	thumb_func_end subsystem_launchReqBBS

	thumb_func_start subsystem_launchShop
subsystem_launchShop:
	push {r4-r7,lr}
	bl sub_8046CC8
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrh r0, [r5,#oGameState_MapGroup]
	strh r0, [r5,#oGameState_LastMapGroup]
	bl updatePlayerGameState_800107A // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r1, #0x20 
	strb r1, [r5,#oGameState_SubsystemIndex]
	pop {r4-r7,pc}
	thumb_func_end subsystem_launchShop

	thumb_func_start subsystem_launchChipTrader
subsystem_launchChipTrader:
	push {r4,r5,lr}
	mov r4, r0
	bl sub_8120A38
	add r0, r0, r1
	add r0, r0, r3
	cmp r0, r4
	bge loc_8005D5C
	mov r0, #1
	pop {r4,r5,pc}
loc_8005D5C:
	mov r0, r4
	bl sub_804A2CC
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldr r1, [r5,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r1,#0x1c]
	str r0, [r5,#oGameState_PlayerX]
	ldr r0, [r1,#0x20]
	str r0, [r5,#oGameState_PlayerY]
	ldr r0, [r1,#0x24]
	str r0, [r5,#oGameState_PlayerZ]
	ldrb r0, [r1,#0x10]
	str r0, [r5,#oGameState_FacingDirectionAfterWarp]
	mov r1, #0x24
	strb r1, [r5,#oGameState_SubsystemIndex]
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #0
	pop {r4,r5,pc}
	thumb_func_end subsystem_launchChipTrader

	thumb_func_start sub_8005D88
sub_8005D88:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r0, #0
	str r0, [r5,#oGameState_Ptr_20]
	mov r0, #0x25 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl sub_80385F0
	bl RandomizeExtraToolkitPointers // () -> ?
	bl reloadCurNaviStatBoosts_813c3ac
	pop {r4-r7,pc}
	thumb_func_end sub_8005D88

	thumb_local_start
sub_8005DBE:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r0, #0
	str r0, [r5,#oGameState_Ptr_20]
	mov r0, #0x25 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl sub_803FB28
	bl reloadCurNaviStatBoosts_813c3ac
	pop {r4-r7,pc}
	thumb_func_end sub_8005DBE

	thumb_local_start
dead_8005DF0:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r0, #0
	str r0, [r5,#oGameState_Ptr_20]
	mov r0, #0x25 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl sub_8138294
	bl reloadCurNaviStatBoosts_813c3ac
	pop {r4-r7,pc}
	thumb_func_end dead_8005DF0

	thumb_local_start
dead_8005E22:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r0, #0
	str r0, [r5,#oGameState_Ptr_20]
	mov r0, #0x25 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl sub_8038A9C
	bl reloadCurNaviStatBoosts_813c3ac
	pop {r4-r7,pc}
	thumb_func_end dead_8005E22

	thumb_local_start
dead_8005E54:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	mov r0, #0
	str r0, [r5,#oGameState_Ptr_20]
	mov r0, #0x25 
	bl FreeAllObjectsOfSpecifiedTypes
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl call_803D1AC // () -> void
	bl reloadCurNaviStatBoosts_813c3ac
	pop {r4-r7,pc}
	thumb_func_end dead_8005E54

	thumb_local_start
sub_8005E86:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrh r0, [r5,#oGameState_MapGroup]
	strh r0, [r5,#oGameState_LastMapGroup]
	bl updatePlayerGameState_800107A // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #0x28 
	strb r0, [r5,#oGameState_SubsystemIndex]
	pop {r4-r7,pc}
	thumb_func_end sub_8005E86

	thumb_func_start sub_8005EA2
sub_8005EA2:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrh r0, [r5,#oGameState_MapGroup]
	strh r0, [r5,#oGameState_LastMapGroup]
	bl updatePlayerGameState_800107A // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r1, #0x2c 
	strb r1, [r5,#oGameState_SubsystemIndex]
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_8005EA2

	thumb_func_start subsystem_launchMail
subsystem_launchMail:
	push {r4,r5,lr}
	bl sub_8127990
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldr r1, [r5,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r1,#0x1c]
	str r0, [r5,#oGameState_PlayerX]
	ldr r0, [r1,#0x20]
	str r0, [r5,#oGameState_PlayerY]
	ldr r0, [r1,#0x24]
	str r0, [r5,#oGameState_PlayerZ]
	ldrb r0, [r1,#0x10]
	str r0, [r5,#oGameState_FacingDirectionAfterWarp]
	mov r1, #0x34
	strb r1, [r5,#oGameState_SubsystemIndex]
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #0
	pop {r4,r5,pc}
	thumb_func_end subsystem_launchMail

	thumb_local_start
sub_8005EEC:
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_Warp2011bb0_Ptr]
	mov r3, #1
	strb r3, [r4,#oWarp2011bb0_Unk_10]
	add r3, r1, #1
	strb r3, [r4,#oWarp2011bb0_WarpIndex]
	str r0, [r4,#oWarp2011bb0_WarpDataPtr]
	strb r2, [r4,#oWarp2011bb0_MapGroupTransitionType]
	pop {r4-r7,pc}
	thumb_func_end sub_8005EEC

	thumb_func_start warp_setSubsystemIndexTo0x10AndOthers_8005f00
// just pure warp
warp_setSubsystemIndexTo0x10AndOthers_8005f00:
	push {r4-r7,lr}
	bl sub_8005EEC

  // trigger sub_800536E via cbGameState_80050EC
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	mov r0, #0x10
	strb r0, [r4,#oGameState_SubsystemIndex]

	bl sub_8035738
	pop {r4-r7,pc}
	thumb_func_end warp_setSubsystemIndexTo0x10AndOthers_8005f00

	thumb_func_start warp_setSubsystemIndexTo0x14AndOthers_8005f14
// warp with extra effects? e.g. jack in animation
warp_setSubsystemIndexTo0x14AndOthers_8005f14:
	push {r4-r7,lr}
	bl sub_8005EEC
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	mov r0, #0x14
	strb r0, [r4,#oGameState_SubsystemIndex]
	bl sub_8035738
	pop {r4-r7,pc}
	thumb_func_end warp_setSubsystemIndexTo0x14AndOthers_8005f14

	thumb_local_start
sub_8005F28:
	mov r0, r10
	ldr r0, [r0,#oToolkit_Warp2011bb0_Ptr]
	ldrb r1, [r0,#oWarp2011bb0_Unk_10]
	cmp r1, #0
	mov pc, lr
	thumb_func_end sub_8005F28

	thumb_func_start warp_8005f32
warp_8005f32:
	mov r3, r10
	ldr r3, [r3,#oToolkit_Warp2011bb0_Ptr]
	ldr r0, [r3,#oWarp2011bb0_WarpDataPtr]
	ldrb r1, [r3,#oWarp2011bb0_WarpIndex]
	sub r1, #1
	ldrb r2, [r3,#oWarp2011bb0_MapGroupTransitionType]
	mov pc, lr
	thumb_func_end warp_8005f32

	thumb_func_start sub_8005F40
sub_8005F40:
	push {r4-r7,lr}
	bl zeroFillVRAM // () -> ()
	bl ZeroFill_byte_3001960
	bl SetDummyBGScrollCallbacks
	bl zeroFill_e20094C0
	bl sub_80023A8
	bl zeroFill_e2009740
	bl zeroFill_e200F3A0
	bl zeroFill_80024A2
	bl renderInfo_8001788 // () -> ()
	bl renderInfo_80017A0 // () -> ()
	pop {r4-r7,pc}
	thumb_func_end sub_8005F40

	thumb_func_start sub_8005F6C
sub_8005F6C:
	push {r4-r7,lr}
	bl sub_802FDB0
	bl cleareMemory_802FF2C
	pop {r4-r7,pc}
	thumb_func_end sub_8005F6C

	thumb_local_start
sub_8005F78:
	push {r4-r7,lr}
	bl loc_802FDB4
	bl cleareMemory_802FF2C
	pop {r4-r7,pc}
	thumb_func_end sub_8005F78

	thumb_func_start sub_8005F84
sub_8005F84:
	push {r4-r7,lr}
	ldr r0, off_8005FB0 // =0x40
	bl SetRenderInfoLCDControl // (a_00: u16) -> ()
	bl sub_809F68C
	bl chatbox_8040818
	mov r0, #0x40
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #4
	strb r1, [r0]
	ldr r0, [r7,#oToolkit_GameStatePtr]
	mov r1, #0
	strb r1, [r0]
	mov r1, #8
	strb r1, [r0,#0x16]
	pop {r4-r7,pc}
	.balign 4, 0
off_8005FB0: .word 0x40
off_8005FB4: .word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_80064BE+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_80063C0+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	thumb_func_end sub_8005F84

off_8006040:
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x10,
		byte_0e: 0x8,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x10,
		byte_0e: 0x8,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x10,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x10,
		byte_0e: 0xc,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x9,
		byte_0d: 0xa,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x9,
		byte_0d: 0xa,
		byte_0e: 0xc,
		byte_0f: 0x4
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0xf,
		byte_0d: 0xd,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0xf,
		byte_0d: 0xd,
		byte_0e: 0xc,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0xf,
		byte_0d: 0xd,
		byte_0e: 0x8,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0xf,
		byte_0d: 0xd,
		byte_0e: 0x8,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x10,
		byte_0e: 0x8,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x10,
		byte_0e: 0x8,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPalette30018F0,
		unused_08: 0xff,
		byte_0c: 0x0,
		byte_0d: 0x1,
		byte_0e: 0x8,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPalette30018F0,
		unused_08: 0xff,
		byte_0c: 0x0,
		byte_0d: 0x1,
		byte_0e: 0x8,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x9,
		byte_0d: 0x0,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x9,
		byte_0d: 0x0,
		byte_0e: 0xc,
		byte_0f: 0x4
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x0,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x0,
		byte_0e: 0xc,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x1,
		byte_0d: 0x0,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x1,
		byte_0d: 0x0,
		byte_0e: 0xc,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x9,
		byte_0d: 0xa,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x9,
		byte_0d: 0xa,
		byte_0e: 0xc,
		byte_0f: 0x5
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001C80,
		unk_04_ptr: iPalette3001890,
		unused_08: 0xff,
		byte_0c: 0x5,
		byte_0d: 0x4,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001C80,
		unk_04_ptr: iPalette3001890,
		unused_08: 0xff,
		byte_0c: 0x5,
		byte_0d: 0x4,
		byte_0e: 0xc,
		byte_0f: 0x3
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0xe,
		byte_0d: 0xb,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0xe,
		byte_0d: 0xb,
		byte_0e: 0xc,
		byte_0f: 0x8
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0xe,
		byte_0d: 0xb,
		byte_0e: 0xc,
		byte_0f: 0x8
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPalette3001870,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x1,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPalette3001870,
		unused_08: 0xff,
		byte_0c: 0x10,
		byte_0d: 0x1,
		byte_0e: 0xc,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0xf,
		byte_0d: 0xf,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0xf,
		byte_0d: 0xf,
		byte_0e: 0xc,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x0,
		byte_0d: 0x10,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x0,
		byte_0d: 0x10,
		byte_0e: 0xc,
		byte_0f: 0x10
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x9,
		byte_0d: 0x0,
		byte_0e: 0xc,
		byte_0f: 0x0
	]
	fade_params_struct [
		unk_00_ptr: iPalette3001B60,
		unk_04_ptr: iPallete3001750,
		unused_08: 0xff,
		byte_0c: 0x9,
		byte_0d: 0x0,
		byte_0e: 0xc,
		byte_0f: 0x10
	]

// (int a1, int a2) -> void
	thumb_func_start SetScreenFade
SetScreenFade:
	mov r3, #0
	b loc_8006276
loc_8006274:
	mov r3, #0x20
loc_8006276:
	push {r5,lr}
	cmp r0, #0xff
	beq locret_80062C0
	ldr r5, off_80063BC // =eScreenFade 
	add r5, r5, r3
	push {r0,r1}
	mov r0, r3
	bl sub_8006330
	pop {r0,r1}
	strb r0, [r5,#1]
	ldr r2, off_80062C4 // =off_8006040
	lsl r0, r0, #2
	add r2, r2, r0
	ldr r0, [r2,#oFadeParams_Ptr_00]
	str r0, [r5,#0x10]
	ldr r0, [r2,#oFadeParams_Ptr_04]
	str r0, [r5,#0x14]
	ldrb r0, [r2,#oFadeParams_Unk_0c]
	strh r0, [r5,#0x18]
	ldrb r0, [r2,#oFadeParams_Unk_0d]
	strh r0, [r5,#0x1c]
	ldrb r0, [r2,#oFadeParams_Unk_0e]
	strh r0, [r5,#8]
	ldrb r0, [r2,#oFadeParams_Unk_0f]
	lsl r0, r0, #4
	strh r0, [r5,#0xa]
	mov r0, #1
	strb r0, [r5]
	mov r0, #1
	strb r0, [r5,#oScreenFade_Unk_03]
	mov r0, #0
	strb r0, [r5,#2]
	cmp r1, #0xff
	bne loc_80062BE
	add r1, #1
loc_80062BE:
	strh r1, [r5,#4]
locret_80062C0:
	pop {r5,pc}
	.balign 4, 0x00
off_80062C4: .word off_8006040
	thumb_func_end SetScreenFade

	thumb_func_start screenFade_80062C8
screenFade_80062C8:
	ldr r0, off_80063BC // =eScreenFade 
	ldrb r1, [r0,#0x3] // (byte_200A443 - 0x200a440)
	ldrb r0, [r0,#0x1] // (byte_200A441 - 0x200a440)
	mov pc, lr
	thumb_func_end screenFade_80062C8

	thumb_local_start
sub_80062D0:
	push {r5,lr}
	mov r0, #0
	b loc_80062DA
	thumb_func_end sub_80062D0

	thumb_local_start
sub_80062D6:
	push {r5,lr}
	mov r0, #0x20
loc_80062DA:
	ldr r5, off_80063BC // =eScreenFade 
	add r5, r5, r0
	bl sub_8006330
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x20
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {r5,pc}
	thumb_func_end sub_80062D6

	thumb_func_start sub_80062EC
sub_80062EC:
	push {lr}
	bl sub_80062D0
	bl sub_80062D6
	pop {pc}
	thumb_func_end sub_80062EC

// () -> zf
	thumb_func_start IsScreenFadeActive
IsScreenFadeActive:
	mov r3, #0
	b IsScreenFadeActive_common

	thumb_func_start isScreenFadeActive_80062FC
isScreenFadeActive_80062FC:
	mov r3, #oScreenFade_Size
IsScreenFadeActive_common:
	ldr r0, off_80063BC // =eScreenFade 
	add r0, r0, r3
	ldrb r0, [r0,#oScreenFade_Unk_03] // (byte_200A443 - 0x200a440)
	mov r1, #1
	cmp r0, r1
	mov pc, lr
	thumb_func_end IsScreenFadeActive
	thumb_func_end isScreenFadeActive_80062FC

	thumb_func_start subsystem_triggerTransition_800630A
subsystem_triggerTransition_800630A:
	push {r4-r7,lr}
	ldr r5, off_80063BC // =eScreenFade 
	mov r4, #0
loc_8006310:
	ldrb r0, [r5]
	mov r1, #1
	cmp r0, r1
	bne loc_8006322
	ldrb r2, [r5,#1]
	ldr r0, off_800632C // =off_8005FB4
	ldr r0, [r0,r2]
	mov lr, pc
	bx r0
loc_8006322:
	add r5, #0x20
	add r4, #1
	cmp r4, #2
	blt loc_8006310
	pop {r4-r7,pc}
	.balign 4, 0
off_800632C: .word off_8005FB4
	thumb_func_end subsystem_triggerTransition_800630A

	thumb_local_start
sub_8006330:
	push {r5,lr}
	ldr r5, off_80063BC // =eScreenFade
	add r5, r5, r0
	bl sub_800634C
	ldrb r0, [r5,#0xc]
	add r0, #0x12
	bl Terminate_ePalette20097a0_Transform
	ldrb r0, [r5,#0xc]
	add r0, #0x13
	bl Terminate_ePalette20097a0_Transform
	pop {r5,pc}
	thumb_func_end sub_8006330

	thumb_local_start
sub_800634C:
	push {r5,lr}
	ldr r5, off_80063BC // =eScreenFade
	add r5, r5, r0
	lsr r2, r0, #4
	strb r2, [r5,#0xc]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#0xd]
	pop {r5,pc}
	thumb_func_end sub_800634C

	thumb_local_start
sub_8006366:
	push {r4-r7,lr}
	ldrh r1, [r5,#6]
	ldrh r2, [r5,#4]
	ldrb r3, [r5,#2]
	mov r4, #1
	strb r4, [r5,#2]
	tst r3, r3
	beq loc_800637C
	sub r1, r1, r2
	bge loc_800637C
	mov r1, #0
loc_800637C:
	strh r1, [r5,#6]
	ldrh r2, [r5,#0xa]
	cmp r1, r2
	ble loc_80063B0
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr r1, r2
	orr r1, r3
	mov r6, r1
	ldrh r0, [r5,#8]
	ldrh r2, [r5,#0x18]
	ldrb r3, [r5,#0xc]
	add r3, #0x12
	ldr r4, [r5,#0x10]
	bl sub_8002378
	ldrh r0, [r5,#8]
	mov r1, r6
	ldrh r2, [r5,#0x1c]
	ldrb r3, [r5,#0xc]
	add r3, #0x13
	ldr r4, [r5,#0x14]
	bl sub_8002378
	pop {r4-r7,pc}
loc_80063B0:
	ldr r0, off_80063BC // =eScreenFade 
	sub r0, r5, r0
	bl sub_8006330
	pop {r4-r7,pc}
	.balign 4, 0
off_80063BC: .word eScreenFade
	thumb_func_end sub_8006366

	thumb_local_start
sub_80063C0:
	push {r4-r7,lr}
	ldrh r1, [r5,#6]
	ldrh r2, [r5,#4]
	ldrb r3, [r5,#2]
	mov r4, #1
	strb r4, [r5,#2]
	tst r3, r3
	beq loc_80063D6
	sub r1, r1, r2
	bge loc_80063D6
	mov r1, #0
loc_80063D6:
	strh r1, [r5,#6]
	ldrh r2, [r5,#0xa]
	cmp r1, r2
	ble loc_800640E
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr r1, r2
	orr r1, r3
	mov r6, r1
	ldrh r0, [r5,#8]
	ldrh r2, [r5,#0x18]
	ldrb r3, [r5,#0xc]
	add r3, #0x12
	ldr r4, [r5,#0x10]
	bl sub_8002378
	ldrh r0, [r5,#8]
	mov r1, r6
	ldrh r2, [r5,#0x1c]
	ldrb r3, [r5,#0xc]
	add r3, #0x13
	ldr r4, [r5,#0x14]
	bl sub_8002378
	bl sub_8006414
	pop {r4-r7,pc}
loc_800640E:
	bl sub_8006444
	pop {r4-r7,pc}
	thumb_func_end sub_80063C0

	thumb_local_start
sub_8006414:
	push {r4-r7,lr}
	ldr r4, [r5,#0x10]
	ldrh r0, [r5,#0x18]
	lsl r0, r0, #5
	add r4, r4, r0
	ldrh r0, [r5,#8]
	mov r1, r6
	mov r2, #2
	ldrb r3, [r5,#0xc]
	add r3, #0x14
	bl sub_8002378
	ldr r4, [r5,#0x14]
	ldrh r0, [r5,#0x1c]
	lsl r0, r0, #5
	add r4, r4, r0
	ldrh r0, [r5,#8]
	mov r1, r6
	mov r2, #4
	ldrb r3, [r5,#0xc]
	add r3, #0x15
	bl sub_8002378
	pop {r4-r7,pc}
	thumb_func_end sub_8006414

	thumb_local_start
sub_8006444:
	push {r6,lr}
	ldr r2, dword_8006474 // =0x10
	cmp r1, r2
	blt loc_800645E
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr r1, r2
	orr r1, r3
	mov r6, r1
	bl sub_8006414
	pop {r6,pc}
loc_800645E:
	ldr r0, off_8006478 // =eScreenFade 
	sub r0, r5, r0
	bl sub_800634C
	mov r0, #0x64
	mov r1, #0xff
	bl SetScreenFade // (int a1, int a2) -> void
	bl sub_800647C
	pop {r6,pc}
	.balign 4, 0
dword_8006474: .word 0x10
off_8006478: .word eScreenFade
	thumb_func_end sub_8006444

	thumb_local_start
sub_800647C:
	push {r4-r7,lr}
	ldrh r1, [r5,#6]
	ldrh r2, [r5,#4]
	add r1, r1, r2
	ldrh r2, [r5,#0xa]
	cmp r1, r2
	blt loc_8006490
	mov r0, #0
	strb r0, [r5,#3]
	mov r1, r2
loc_8006490:
	strh r1, [r5,#6]
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr r1, r2
	orr r1, r3
	mov r6, r1
	ldrh r0, [r5,#8]
	ldrh r2, [r5,#0x18]
	ldrb r3, [r5,#0xc]
	add r3, #0x12
	ldr r4, [r5,#0x10]
	bl sub_8002378
	ldrh r0, [r5,#8]
	mov r1, r6
	ldrh r2, [r5,#0x1c]
	ldrb r3, [r5,#0xc]
	add r3, #0x13
	ldr r4, [r5,#0x14]
	bl sub_8002378
	pop {r4-r7,pc}
	thumb_func_end sub_800647C

	thumb_local_start
sub_80064BE:
	push {r4-r7,lr}
	ldrh r1, [r5,#6]
	ldrh r2, [r5,#4]
	add r1, r1, r2
	mov r7, #0
	ldrh r2, [r5,#0xa]
	cmp r1, r2
	blt loc_80064D6
	mov r0, #0
	strb r0, [r5,#3]
	mov r7, #4
	mov r1, r2
loc_80064D6:
	strh r1, [r5,#6]
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr r1, r2
	orr r1, r3
	mov r6, r1
	ldrh r0, [r5,#8]
	ldrh r2, [r5,#0x18]
	ldrb r3, [r5,#0xc]
	add r3, #0x12
	ldr r4, [r5,#0x10]
	bl sub_8002378
	ldrh r0, [r5,#8]
	mov r1, r6
	ldrh r2, [r5,#0x1c]
	ldrb r3, [r5,#0xc]
	add r3, #0x13
	ldr r4, [r5,#0x14]
	bl sub_8002378
	ldr r0, off_800650C // =off_8006510
	ldr r0, [r0,r7]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0
off_800650C: .word off_8006510
off_8006510: .word sub_8006518+1
	.word sub_8006580+1
	thumb_func_end sub_80064BE

	thumb_local_start
sub_8006518:
	push {r4-r7,lr}
	mov r0, #0
	ldr r1, off_80065B8 // =byte_80065BC
	ldrb r2, [r5,#0xd]
	lsl r2, r2, #1
	ldrh r1, [r1,r2]
	mov r2, #0x10
	mov r3, #0x14
	ldr r4, [r5,#0x10]
	bl sub_8002378
	mov r0, #0
	ldr r1, off_80065B8 // =byte_80065BC
	ldrb r2, [r5,#0xd]
	lsl r2, r2, #1
	ldrh r1, [r1,r2]
	mov r2, #0x10
	mov r3, #0x15
	ldr r4, [r5,#0x14]
	bl sub_8002378
	ldr r0, off_80065B4 // =dword_20096D0
	mov r1, #0x40
	str r1, [r0]
	ldrb r0, [r5,#0xd]
	add r0, #1
	cmp r0, #0x10
	bge loc_8006552
	strb r0, [r5,#0xd]
loc_8006552:
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	mov r2, #0x40
	ldrh r1, [r0,#6]
	orr r1, r2
	strh r1, [r0,#6]
	ldrh r1, [r0,#8]
	orr r1, r2
	strh r1, [r0,#8]
	ldrh r1, [r0,#0xa]
	orr r1, r2
	strh r1, [r0,#0xa]
	ldrh r2, [r5,#6]
	lsr r2, r2, #4
	mov r1, #0
	orr r1, r2
	lsl r2, r2, #4
	lsl r2, r2, #4
	orr r1, r2
	lsl r2, r2, #4
	orr r1, r2
	strh r1, [r0,#2]
	pop {r4-r7,pc}
	thumb_func_end sub_8006518

	thumb_local_start
sub_8006580:
	push {r4-r7,lr}
	mov r0, #0x14
	bl Terminate_ePalette20097a0_Transform
	mov r0, #0x15
	bl Terminate_ePalette20097a0_Transform
	ldr r0, off_80065B4 // =dword_20096D0
	mov r1, #0
	str r1, [r0]
	strb r1, [r5,#0xd]
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	mov r2, #0x40
	ldrh r1, [r0,#6]
	bic r1, r2
	strh r1, [r0,#6]
	ldrh r1, [r0,#8]
	bic r1, r2
	strh r1, [r0,#8]
	ldrh r1, [r0,#0xa]
	bic r1, r2
	strh r1, [r0,#0xa]
	mov r1, #0
	strh r1, [r0,#2]
	pop {r4-r7,pc}
	.balign 4, 0
off_80065B4: .word dword_20096D0
off_80065B8: .word byte_80065BC
byte_80065BC: .byte 0x0, 0x10, 0x0, 0x18, 0x0, 0x20, 0x0, 0x28, 0x0, 0x30, 0x0, 0x38
	.byte 0x0, 0x40, 0x0, 0x48, 0x0, 0x50, 0x0, 0x58, 0x0, 0x60, 0x0, 0x68
	.byte 0x0, 0x70, 0x0, 0x78, 0x0, 0x7C, 0x0, 0x7C, 0x0, 0x7C, 0x0, 0x0
math_sinTable::
	.hword 0x0, 0x6, 0xc, 0x12
	.hword 0x19, 0x1f, 0x25, 0x2b
	.hword 0x31, 0x38, 0x3e, 0x44
	.hword 0x4a, 0x50, 0x56, 0x5c
	.hword 0x61, 0x67, 0x6d, 0x73
	.hword 0x78, 0x7e, 0x83, 0x88
	.hword 0x8e, 0x93, 0x98, 0x9d
	.hword 0xa2, 0xa7, 0xab, 0xb0
	.hword 0xb5, 0xb9, 0xbd, 0xc1
	.hword 0xc5, 0xc9, 0xcd, 0xd1
	.hword 0xd4, 0xd8, 0xdb, 0xde
	.hword 0xe1, 0xe4, 0xe7, 0xea
	.hword 0xec, 0xee, 0xf1, 0xf3
	.hword 0xf4, 0xf6, 0xf8, 0xf9
	.hword 0xfb, 0xfc, 0xfd, 0xfe
	.hword 0xfe, 0xff, 0xff, 0xff
math_cosTable:: .byte 0x0, 0x1, 0xFF, 0x0, 0xFF, 0x0, 0xFF, 0x0, 0xFE, 0x0, 0xFE, 0x0
	.byte 0xFD, 0x0, 0xFC, 0x0, 0xFB, 0x0, 0xF9, 0x0, 0xF8, 0x0, 0xF6, 0x0
	.byte 0xF4, 0x0, 0xF3, 0x0, 0xF1, 0x0, 0xEE, 0x0, 0xEC, 0x0, 0xEA, 0x0
	.byte 0xE7, 0x0, 0xE4, 0x0, 0xE1, 0x0, 0xDE, 0x0, 0xDB, 0x0, 0xD8, 0x0
	.byte 0xD4, 0x0, 0xD1, 0x0, 0xCD, 0x0, 0xC9, 0x0, 0xC5, 0x0, 0xC1, 0x0
	.byte 0xBD, 0x0, 0xB9, 0x0, 0xB5, 0x0, 0xB0, 0x0, 0xAB, 0x0, 0xA7, 0x0
	.byte 0xA2, 0x0, 0x9D, 0x0, 0x98, 0x0, 0x93, 0x0, 0x8E, 0x0, 0x88, 0x0
	.byte 0x83, 0x0, 0x7E, 0x0, 0x78, 0x0, 0x73, 0x0, 0x6D, 0x0, 0x67, 0x0
	.byte 0x61, 0x0, 0x5C, 0x0, 0x56, 0x0, 0x50, 0x0, 0x4A, 0x0, 0x44, 0x0
	.byte 0x3E, 0x0, 0x38, 0x0, 0x31, 0x0, 0x2B, 0x0, 0x25, 0x0, 0x1F, 0x0
	.byte 0x19, 0x0, 0x12, 0x0, 0xC, 0x0, 0x6, 0x0
byte_80066E0: .byte 0x0, 0x0, 0xFA, 0xFF, 0xF4, 0xFF, 0xEE, 0xFF, 0xE7, 0xFF
	.byte 0xE1, 0xFF, 0xDB, 0xFF, 0xD5, 0xFF, 0xCF, 0xFF, 0xC8, 0xFF
	.byte 0xC2, 0xFF, 0xBC, 0xFF, 0xB6, 0xFF, 0xB0, 0xFF, 0xAA, 0xFF
	.byte 0xA4, 0xFF, 0x9F, 0xFF, 0x99, 0xFF, 0x93, 0xFF, 0x8D, 0xFF
	.byte 0x88, 0xFF, 0x82, 0xFF, 0x7D, 0xFF, 0x78, 0xFF, 0x72, 0xFF
	.byte 0x6D, 0xFF, 0x68, 0xFF, 0x63, 0xFF, 0x5E, 0xFF, 0x59, 0xFF
	.byte 0x55, 0xFF, 0x50, 0xFF, 0x4B, 0xFF, 0x47, 0xFF, 0x43, 0xFF
	.byte 0x3F, 0xFF, 0x3B, 0xFF, 0x37, 0xFF, 0x33, 0xFF, 0x2F, 0xFF
	.byte 0x2C, 0xFF, 0x28, 0xFF, 0x25, 0xFF, 0x22, 0xFF, 0x1F, 0xFF
	.byte 0x1C, 0xFF, 0x19, 0xFF, 0x16, 0xFF, 0x14, 0xFF, 0x12, 0xFF
	.byte 0xF, 0xFF, 0xD, 0xFF, 0xC, 0xFF, 0xA, 0xFF, 0x8, 0xFF
	.byte 0x7, 0xFF, 0x5, 0xFF, 0x4, 0xFF, 0x3, 0xFF, 0x2, 0xFF
	.byte 0x2, 0xFF, 0x1, 0xFF, 0x1, 0xFF, 0x1, 0xFF, 0x0, 0xFF
	.byte 0x1, 0xFF, 0x1, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0x2, 0xFF
	.byte 0x3, 0xFF, 0x4, 0xFF, 0x5, 0xFF, 0x7, 0xFF, 0x8, 0xFF
	.byte 0xA, 0xFF, 0xC, 0xFF, 0xD, 0xFF, 0xF, 0xFF, 0x12, 0xFF
	.byte 0x14, 0xFF, 0x16, 0xFF, 0x19, 0xFF, 0x1C, 0xFF, 0x1F, 0xFF
	.byte 0x22, 0xFF, 0x25, 0xFF, 0x28, 0xFF, 0x2C, 0xFF, 0x2F, 0xFF
	.byte 0x33, 0xFF, 0x37, 0xFF, 0x3B, 0xFF, 0x3F, 0xFF, 0x43, 0xFF
	.byte 0x47, 0xFF, 0x4B, 0xFF, 0x50, 0xFF, 0x55, 0xFF, 0x59, 0xFF
	.byte 0x5E, 0xFF, 0x63, 0xFF, 0x68, 0xFF, 0x6D, 0xFF, 0x72, 0xFF
	.byte 0x78, 0xFF, 0x7D, 0xFF, 0x82, 0xFF, 0x88, 0xFF, 0x8D, 0xFF
	.byte 0x93, 0xFF, 0x99, 0xFF, 0x9F, 0xFF, 0xA4, 0xFF, 0xAA, 0xFF
	.byte 0xB0, 0xFF, 0xB6, 0xFF, 0xBC, 0xFF, 0xC2, 0xFF, 0xC8, 0xFF
	.byte 0xCF, 0xFF, 0xD5, 0xFF, 0xDB, 0xFF, 0xE1, 0xFF, 0xE7, 0xFF
	.byte 0xEE, 0xFF, 0xF4, 0xFF, 0xFA, 0xFF, 0x0, 0x0, 0x6, 0x0
	.byte 0xC, 0x0, 0x12, 0x0, 0x19, 0x0, 0x1F, 0x0, 0x25, 0x0
	.byte 0x2B, 0x0, 0x31, 0x0, 0x38, 0x0, 0x3E, 0x0, 0x44, 0x0
	.byte 0x4A, 0x0, 0x50, 0x0, 0x56, 0x0, 0x5C, 0x0, 0x61, 0x0
	.byte 0x67, 0x0, 0x6D, 0x0, 0x73, 0x0, 0x78, 0x0, 0x7E, 0x0
	.byte 0x83, 0x0, 0x88, 0x0, 0x8E, 0x0, 0x93, 0x0, 0x98, 0x0
	.byte 0x9D, 0x0, 0xA2, 0x0, 0xA7, 0x0, 0xAB, 0x0, 0xB0, 0x0
	.byte 0xB5, 0x0, 0xB9, 0x0, 0xBD, 0x0, 0xC1, 0x0, 0xC5, 0x0
	.byte 0xC9, 0x0, 0xCD, 0x0, 0xD1, 0x0, 0xD4, 0x0, 0xD8, 0x0
	.byte 0xDB, 0x0, 0xDE, 0x0, 0xE1, 0x0, 0xE4, 0x0, 0xE7, 0x0
	.byte 0xEA, 0x0, 0xEC, 0x0, 0xEE, 0x0, 0xF1, 0x0, 0xF3, 0x0
	.byte 0xF4, 0x0, 0xF6, 0x0, 0xF8, 0x0, 0xF9, 0x0, 0xFB, 0x0
	.byte 0xFC, 0x0, 0xFD, 0x0, 0xFE, 0x0, 0xFE, 0x0, 0xFF, 0x0
	.byte 0xFF, 0x0, 0xFF, 0x0, 0x0, 0x1, 0xFF, 0x0, 0xFF, 0x0
	.byte 0xFF, 0x0, 0xFE, 0x0, 0xFE, 0x0, 0xFD, 0x0, 0xFC, 0x0
	.byte 0xFB, 0x0, 0xF9, 0x0, 0xF8, 0x0, 0xF6, 0x0, 0xF4, 0x0
	.byte 0xF3, 0x0, 0xF1, 0x0, 0xEE, 0x0, 0xEC, 0x0, 0xEA, 0x0
	.byte 0xE7, 0x0, 0xE4, 0x0, 0xE1, 0x0, 0xDE, 0x0, 0xDB, 0x0
	.byte 0xD8, 0x0, 0xD4, 0x0, 0xD1, 0x0, 0xCD, 0x0, 0xC9, 0x0
	.byte 0xC5, 0x0, 0xC1, 0x0, 0xBD, 0x0, 0xB9, 0x0, 0xB5, 0x0
	.byte 0xB0, 0x0, 0xAB, 0x0, 0xA7, 0x0, 0xA2, 0x0, 0x9D, 0x0
	.byte 0x98, 0x0, 0x93, 0x0, 0x8E, 0x0, 0x88, 0x0, 0x83, 0x0
	.byte 0x7E, 0x0, 0x78, 0x0, 0x73, 0x0, 0x6D, 0x0, 0x67, 0x0
	.byte 0x61, 0x0, 0x5C, 0x0, 0x56, 0x0, 0x50, 0x0, 0x4A, 0x0
	.byte 0x44, 0x0, 0x3E, 0x0, 0x38, 0x0, 0x31, 0x0, 0x2B, 0x0
	.byte 0x25, 0x0, 0x1F, 0x0, 0x19, 0x0, 0x12, 0x0, 0xC, 0x0
	.byte 0x6, 0x0
	thumb_func_end sub_8006580

	thumb_func_start sub_80068E0
sub_80068E0:
	push {lr}
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	pop {pc}
	thumb_func_end sub_80068E0

	thumb_local_start
sub_80068E8:
	push {r4-r7,lr}
	b loc_80068F2
	thumb_func_end sub_80068E8

	thumb_func_start sub_80068EC
sub_80068EC:
	push {r4-r7,lr}
	ldr r4, off_8006908 // =unk_2008E80
	ldr r5, off_800690C // =0x500
loc_80068F2:
	ldr r7, off_800691C // =byte_20081B0
	strb r2, [r7,#0x1] // (byte_20081B1 - 0x20081b0)
	lsr r3, r3, #0x10
	strh r3, [r7,#0x2] // (word_20081B2 - 0x20081b0)
	str r0, [r7,#0x4] // (dword_20081B4 - 0x20081b0)
	str r1, [r7,#0x8] // (dword_20081B8 - 0x20081b0)
	str r4, [r7,#0xc] // (dword_20081BC - 0x20081b0)
	str r5, [r7,#0x10] // (dword_20081C0 - 0x20081b0)
	mov r0, #1
	strb r0, [r7]
	pop {r4-r7,pc}
	.balign 4, 0
off_8006908: .word unk_2008E80
off_800690C: .word 0x500
	thumb_func_end sub_80068EC

	thumb_func_start sub_8006910
sub_8006910:
	push {lr}
	ldr r1, off_800691C // =byte_20081B0
	mov r0, #0x80
	strb r0, [r1]
	pop {pc}
	.balign 4, 0x00
off_800691C: .word byte_20081B0
	thumb_func_end sub_8006910

	thumb_func_start sub_8006920
sub_8006920:
	push {r4-r7,lr}
	mov r4, r0
	ldr r5, off_8006B8C // =unk_20096A0
	mov r0, r5
	mov r1, #0x30
	ldr r2, off_8006988 // =ZeroFillByWord+1
	mov lr, pc
	bx r2
	mov r0, #0
	strh r0, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
	ldr r0, [r4]
	str r0, [r5,#0x8] // (dword_20096A8 - 0x20096a0)
	ldr r0, [r4,#4]
	str r0, [r5,#0x10] // (dword_20096B0 - 0x20096a0)
	ldr r0, [r4,#8]
	str r0, [r5,#0x14] // (dword_20096B4 - 0x20096a0)
	ldr r0, [r4,#0xc]
	str r0, [r5,#0x18] // (dword_20096B8 - 0x20096a0)
	ldr r0, [r4,#0x10]
	str r0, [r5,#0x1c] // (dword_20096BC - 0x20096a0)
	ldr r0, [r4,#0x14]
	str r0, [r5,#0x20] // (dword_20096C0 - 0x20096a0)
	ldr r0, [r4,#0x18]
	str r0, [r5,#0x24] // (dword_20096C4 - 0x20096a0)
	ldr r0, [r4,#0x1c]
	str r0, [r5,#0x28] // (dword_20096C8 - 0x20096a0)
	ldr r0, [r4,#0x20]
	str r0, [r5,#0x2c] // (dword_20096CC - 0x20096a0)
	ldr r0, [r4,#0x24]
	strb r0, [r5,#0x3] // (byte_20096A3 - 0x20096a0)
	ldr r0, off_8006B88 // =unk_2008980
	mov r1, #0xa0
	lsl r1, r1, #3
	mov r2, #0xa0
	bl sub_8006B94
	ldr r0, off_8006B88 // =unk_2008980
	ldr r1, off_8006980 // =Window0HorizontalDimensions
	mov r2, #4
	ldr r3, dword_8006984 // =0xa2600000
	ldr r4, off_800698C // =sub_80068EC+1
	mov lr, pc
	bx r4
	pop {r4-r7,pc}
	.balign 4, 0
off_8006980: .word Window0HorizontalDimensions
dword_8006984: .word 0xA2600000
off_8006988: .word ZeroFillByWord+1 // (mut_mem: *mut (), num_bytes: usize) -> ()
off_800698C: .word sub_80068EC+1
	thumb_func_end sub_8006920

	thumb_func_start sub_8006990
sub_8006990:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	ldr r5, off_8006B8C // =unk_20096A0
	mov r7, r10
	ldr r6, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r0, #0x3f
	strb r0, [r6,#8]
	mov r0, #0x17
	strb r0, [r6,#0xa]
	mov r0, r5
	add r0, #0x24
	ldr r1, off_8006A58 // =sub_8003694+1
	mov lr, pc
	bx r1
	tst r2, r2
	beq loc_80069D0
	ldrh r2, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
	cmp r2, #0xff
	bpl loc_80069D0
	push {r0-r2}
	bl sub_8006A6C
	pop {r0-r2}
	bl sub_8006B3A
	ldr r6, [r7,#oToolkit_Unk200f3a0_Ptr]
	strh r0, [r6]
	mov r0, #1
	strh r0, [r6,#4]
loc_80069D0:
	ldr r6, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0x48
	strb r0, [r6]
	mov r0, #0x37
	strb r0, [r6,#1]
	mov r0, #0x10
	strb r0, [r6,#3]
	ldr r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
	lsr r0, r0, #0x10
	strb r0, [r6,#2]
	ldr r0, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
	ldr r1, [r5,#0x8] // (dword_20096A8 - 0x20096a0)
	ldr r2, [r5,#0x14] // (dword_20096B4 - 0x20096a0)
	add r1, r1, r2
	ldr r3, [r5,#0x1c] // (dword_20096BC - 0x20096a0)
	cmp r1, r3
	bgt loc_80069F4
	str r1, [r5,#0x8] // (dword_20096A8 - 0x20096a0)
loc_80069F4:
	lsr r1, r1, #0x10
	add r0, r0, r1
	ldrb r3, [r5,#0x3] // (byte_20096A3 - 0x20096a0)
	cmp r0, r3
	bgt loc_8006A02
	str r0, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
	b loc_8006A04
loc_8006A02:
	str r3, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
loc_8006A04:
	ldr r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
	ldr r1, [r5,#0x10] // (dword_20096B0 - 0x20096a0)
	ldr r2, [r5,#0x18] // (dword_20096B8 - 0x20096a0)
	add r1, r1, r2
	ldr r3, [r5,#0x20] // (dword_20096C0 - 0x20096a0)
	cmp r1, r3
	bgt loc_8006A14
	str r1, [r5,#0x10] // (dword_20096B0 - 0x20096a0)
loc_8006A14:
	add r0, r0, r1
	ldrb r3, [r5,#0x3] // (byte_20096A3 - 0x20096a0)
	lsl r3, r3, #0x10
	cmp r0, r3
	bgt loc_8006A22
	str r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
	b loc_8006A24
loc_8006A22:
	str r3, [r5,#0xc] // (dword_20096AC - 0x20096a0)
loc_8006A24:
	ldr r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
	lsr r0, r0, #0x10
	cmp r0, #0x10
	blt loc_8006A32
	mov r0, #0x10
	lsl r0, r0, #0x10
	str r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
loc_8006A32:
	ldr r0, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
	cmp r0, #0xff
	blt loc_8006A44
	mov r0, #1
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
loc_8006A44:
	mov r0, #0
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.word dword_8006A54
	.balign 4, 0
dword_8006A54: .word 0xFFFF1FFF
off_8006A58: .word sub_8003694+1
	thumb_func_end sub_8006990

	thumb_func_start sub_8006A5C
sub_8006A5C:
	push {r4-r7,lr}
	ldr r0, off_8006A68 // =sub_8006910+1
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8006A68: .word sub_8006910+1
	thumb_func_end sub_8006A5C

	thumb_local_start
sub_8006A6C:
	push {r5,r7,lr}
	sub sp, sp, #8
	str r1, [sp]
	str r2, [sp,#4]
	mov r12, r0
	lsl r5, r2, #3
	sub r5, #8
	mov r8, r5
	mov r9, r2
	ldr r5, off_8006B88 // =unk_2008980
	sub r7, r1, r2
	mov r4, r1
	lsl r6, r1, #3
	lsl r3, r7, #0x10
	ble loc_8006AA6
	cmp r7, #0xa0
	bmi loc_8006A9C
	ldr r0, off_8006B88 // =unk_2008980
	mov r2, #0xa0
	lsl r1, r2, #3
	bl sub_8006B94
	add sp, sp, #8
	pop {r5,r7,pc}
loc_8006A9C:
	ldr r0, off_8006B88 // =unk_2008980
	mov r2, r7
	lsl r1, r2, #3
	bl sub_8006B94
loc_8006AA6:
	ldr r2, [sp,#4]
	mov r1, r9
	mov r0, r9
	mul r1, r0
	mov r0, r2
	mul r2, r0
	sub r0, r2, r1
	svc 8
	lsl r1, r7, #3
	mov r2, r12
	add r4, r0, r2
	lsl r4, r4, #0x10
	bmi loc_8006AD8
	lsr r4, r4, #0x10
	cmp r4, #0xf0
	bmi loc_8006AC8
	mov r4, #0xf0
loc_8006AC8:
	sub r3, r2, r0
	lsl r3, r3, #0x10
	bpl loc_8006AD2
	mov r3, #0
	b loc_8006ADC
loc_8006AD2:
	lsr r3, r3, #0x10
	cmp r3, #0xf0
	bmi loc_8006ADC
loc_8006AD8:
	mov r4, #0
	mov r3, #0xff
loc_8006ADC:
	lsl r0, r3, #8
	orr r0, r4
	lsl r1, r1, #0x10
	bmi loc_8006AF0
	lsr r1, r1, #0x10
	mov r3, #0xa0
	lsl r3, r3, #3
	cmp r1, r3
	bpl loc_8006AF0
	strh r0, [r5,r1]
loc_8006AF0:
	mov r1, r6
	mov r2, r8
	add r1, r1, r2
	lsl r1, r1, #0x10
	bmi loc_8006B06
	lsr r1, r1, #0x10
	mov r3, #0xa0
	lsl r3, r3, #3
	cmp r1, r3
	bpl loc_8006B06
	strh r0, [r5,r1]
loc_8006B06:
	sub r2, #8
	mov r8, r2
	mov r0, r9
	sub r0, #1
	mov r9, r0
	add r7, #1
	ldr r4, [sp]
	cmp r7, r4
	blt loc_8006AA6
	ldr r2, [sp,#4]
	add r7, r7, r2
	lsl r7, r7, #0x10
	lsr r7, r7, #0x10
	cmp r7, #0xa0
	bpl loc_8006B36
	lsl r3, r7, #3
	ldr r0, off_8006B88 // =unk_2008980
	add r0, r0, r3
	mov r1, #0xa0
	sub r1, r1, r7
	lsl r1, r1, #3
	mov r2, #0xa0
	bl sub_8006B94
loc_8006B36:
	add sp, sp, #8
	pop {r5,r7,pc}
	thumb_func_end sub_8006A6C

	thumb_local_start
sub_8006B3A:
	push {lr}
	mov r12, r0
	sub r4, r1, r2
	mov r3, #0
	mvn r3, r3
	eor r4, r3
	bmi loc_8006B82
	sub r1, r2, r4
	mov r4, r1
	mul r1, r4
	mov r0, r2
	mul r0, r2
	sub r0, r0, r1
	svc 8
	mov r2, r12
	add r4, r0, r2
	lsl r4, r4, #0x10
	bmi loc_8006B78
	bcs loc_8006B78
	lsr r4, r4, #0x10
	cmp r4, #0xf0
	bmi loc_8006B68
	mov r4, #0xf0
loc_8006B68:
	sub r3, r2, r0
	lsl r3, r3, #0x10
	bpl loc_8006B72
	mov r3, #0
	b loc_8006B7C
loc_8006B72:
	lsr r3, r3, #0x10
	cmp r3, #0xf0
	bmi loc_8006B7C
loc_8006B78:
	mov r4, #0
	mov r3, #0xff
loc_8006B7C:
	lsl r0, r3, #8
	orr r0, r4
	pop {pc}
loc_8006B82:
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
off_8006B88: .word unk_2008980
off_8006B8C: .word unk_20096A0
	.word byte_20081B0
	thumb_func_end sub_8006B3A

	thumb_local_start
sub_8006B94:
	push {r5,lr}
	add r3, r2, #1
	lsl r2, r2, #8
	orr r2, r3
	ldr r3, dword_8006BB4 // =0xffff0000
	orr r2, r3
	ldr r3, dword_8006BB8 // =0xffffff00
	ldr r5, off_8006BBC // =0x101
	sub r1, #4
loc_8006BA6:
	str r2, [r0,r1]
	sub r1, #4
	str r3, [r0,r1]
	sub r2, r2, r5
	sub r1, #4
	bpl loc_8006BA6
	pop {r5,pc}
	.balign 4, 0
dword_8006BB4: .word 0xFFFF0000
dword_8006BB8: .word 0xFFFFFF00
off_8006BBC: .word 0x101
	thumb_func_end sub_8006B94

	thumb_func_start SetPrimaryToolkitPointers
SetPrimaryToolkitPointers: // () -> ()
	push {lr}

	ldr r0, .ToolkitPointers_p // =ToolkitPointers
	ldr r1, .eToolkit_p // =eToolkit
	mov r2, #(ToolkitPointersEnd - ToolkitPointers) // (ToolkitPointersEnd+4 - ToolkitPointers)
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()

	ldr r0, .eToolkit_p // =eToolkit
	mov r10, r0

	pop {r0}
	bx r0

	.balign 4, 0
.eToolkit_p: .word eToolkit
.ToolkitPointers_p: .word ToolkitPointers
ToolkitPointers:
	.word i_joGameSubsysSel
	.word eJoypad
	.word eRenderInfo
	.word eCamera
	.word eCutsceneState
	.word eWarp2011bb0
	.word eBattleState
	.word unk_200F3A0
	.word unk_2009740
	.word iCurrFrame
	.word iBGTileIdBlocks
	.word eChatbox
	.word eCollisionData
	.word sSubmenu
	.word byte_200A220
ToolkitPointersEnd:
	thumb_func_end SetPrimaryToolkitPointers

	thumb_local_start
SetPrimaryToolkitPointersWrapper:
	push {lr}
	bl SetPrimaryToolkitPointers // () -> ()
	pop {r0}
	bx r0
	thumb_func_end SetPrimaryToolkitPointersWrapper

/// 8006C22
	thumb_func_start RandomizeExtraToolkitPointers
RandomizeExtraToolkitPointers: // () -> ?
	push {lr}
	push {r4-r7}

	bl GetRNG // () -> u32?

	// anti-cheat stuff? this block up to the copy
	// seems to do nothing due to the ands which zero
	// r5 was supposedly an offset to be added to the pointers
	// in eGameState
	mov r1, #0
	and r0, r1

  // let unused_zero: u32; 
	mov r4, r0

	ldr r5, ToolkitExtraPtrs_eUnusedExtraToolkitPtrsOffset_p // =eUnusedExtraToolkitPtrsOffset

	ldr r3, [r5]// read old offset value

  // let unused_zero_old: u32;
	mov r0, #0
	and r3, r0

	str r4, [r5]

  // let src: *const u32;
	ldr r0, ToolkitExtraPtrs_eToolkitExtraPtrsMemory_p
	add r0, r0, r3 // src

  // let mut_dest: *mut u32;
	ldr r1, ToolkitExtraPtrs_eToolkitExtraPtrsMemory_p
	add r1, r1, r4
	ldr r2, ToolkitExtraPtrs_ToolkitExtraPtrsMemorySize_p // =0x35bc
  
  // let size: u32;
	ldr r3, ToolkitExtraPtrs_copyWords_80014EC_p // =copyWords_80014EC+1

	mov lr, pc
	// copyWords_80014EC(&sGameState, &sGameState, 0x35BC);
	bx r3

	mov r0, r10
	mov r1, #(ToolkitPointersEnd - ToolkitPointers)
	add r0, r0, r1

	mov r1, #0
	ldr r2, ToolkitExtraPtrs_eToolkitExtraPtrsMemory_p
	ldr r3, [r5]
	add r2, r2, r3

	ldr r3, ToolkitExtraPtrsOffsets_p

.readjustToolkitExtraPtrsLoop
	// ToolkitExtraPtrsOffsets
	ldr r4, [r3,r1]
	// sGameState + offset
	add r4, r4, r2
	// store in eToolkit
	str r4, [r0,r1]
	add r1, #4

	cmp r1, #(ToolkitExtraPtrsOffsetsEnd - ToolkitExtraPtrsOffsets + 4)
	blt .readjustToolkitExtraPtrsLoop

	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end RandomizeExtraToolkitPointers

	thumb_func_start SetExtraToolkitPointers
SetExtraToolkitPointers:
	push {r4-r7,lr}
	ldr r5, ToolkitExtraPtrs_eUnusedExtraToolkitPtrsOffset_p
	mov r0, r10
	mov r1, #oToolkit_GameStatePtr
	add r0, r0, r1
	mov r1, #0
	ldr r2, ToolkitExtraPtrs_eToolkitExtraPtrsMemory_p // =eGameState
	ldr r3, [r5]
	mov r4, #0
	and r3, r4
	add r2, r2, r3
	ldr r3, ToolkitExtraPtrsOffsets_p // =ToolkitExtraPtrsOffsets
.copyToolkitExtraPtrsLoop
	ldr r4, [r3,r1]
	add r4, r4, r2
	str r4, [r0,r1]
	add r1, #4
	// reads extra garbageq
	cmp r1, #(ToolkitExtraPtrsOffsetsEnd - ToolkitExtraPtrsOffsets + 4)
	blt .copyToolkitExtraPtrsLoop
	pop {r4-r7,pc}
	.balign 4, 0

	// 8006C94
ToolkitExtraPtrs_eToolkitExtraPtrsMemory_p:	   .word eToolkitExtraPtrsMemory
ToolkitExtraPtrs_eUnusedExtraToolkitPtrsOffset_p: .word eUnusedExtraToolkitPtrsOffset
ToolkitExtraPtrs_ToolkitExtraPtrsMemorySize_p:	.word TOOLKIT_EXTRA_PTRS_MEMORY_SIZE
ToolkitExtraPtrs_copyWords_80014EC_p:			 .word copyWords_80014EC+1
	thumb_func_end SetExtraToolkitPointers

	// unused?
	.word eToolkit

ToolkitExtraPtrsOffsets_p: .word ToolkitExtraPtrsOffsets
ToolkitExtraPtrsOffsets: .word 0x0
	.word 0x84
	.word 0x108
	.word 0x5F8
	.word 0x6B0
	.word 0x15B4
	.word 0x1748
	.word 0x25CC
	.word 0x2610
	.word 0x279C
	.word 0x27B0
	.word 0x27B4
	.word 0x27B8
	.word 0x27C8
	.word 0x2C4C
	.word 0x2F0C
	.word 0x30A0
	.word 0x32A4
	.word 0x34A8
	.word 0x34B0
	.word 0x34B8
ToolkitExtraPtrsOffsetsEnd:

	thumb_local_start
encryption_initAll_8006d00:
	push {r4-r7,lr}
	ldr r5, off_8006E38 // =eUnusedExtraToolkitPtrsOffset
	ldr r4, [r5]
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	mov r0, #0
	and r4, r0
	str r4, [r5]
	bl GetRNG // () -> u32?
	str r0, [r5,#0x4] // (dword_2001064 - 0x2001060)
	mov r6, r10
	mov r0, #oToolkit_Unk2004a8c_Ptr
	ldr r6, [r6,r0]
	ldr r4, off_8006DC4 // =byte_20004E0
	ldr r7, off_8006DC8 // =0x200
loc_8006D24:
	sub r7, #1
	blt loc_8006D40
loc_8006D28:
	bl GetRNG // () -> u32?
	mov r1, #0xff
	and r0, r1
	mov r1, #0x6f
	eor r0, r1
	tst r0, r0
	beq loc_8006D28
	strb r0, [r4,r7]
	mvn r0, r0
	strb r0, [r6,r7]
	b loc_8006D24
loc_8006D40:
	mov r6, r10
	mov r0, #oToolkit_Unk2004c20_Ptr
	ldr r6, [r6,r0]
	ldr r4, off_8006DCC // =byte_20008A0
	ldr r7, dword_8006DD0 // =0x200
loc_8006D4A:
	sub r7, #1
	blt loc_8006D66
loc_8006D4E:
	bl GetRNG // () -> u32?
	mov r1, #0xff
	and r0, r1
	mov r1, #0x81
	eor r0, r1
	tst r0, r0
	beq loc_8006D4E
	strb r0, [r4,r7]
	mvn r0, r0
	strb r0, [r6,r7]
	b loc_8006D4A
loc_8006D66:
	mov r6, r10
	mov r0, #oToolkit_Unk2004e24_Ptr
	ldr r6, [r6,r0]
	ldr r4, off_8006DD4 // =byte_2001600
	ldr r7, dword_8006DD8 // =0x4
loc_8006D70:
	sub r7, #1
	blt loc_8006D8C
loc_8006D74:
	bl GetRNG // () -> u32?
	mov r1, #0xff
	and r0, r1
	mov r1, #0xfe
	eor r0, r1
	tst r0, r0
	beq loc_8006D74
	strb r0, [r4,r7]
	mvn r0, r0
	strb r0, [r6,r7]
	b loc_8006D70
loc_8006D8C:
	ldr r4, off_8006DDC // =dword_2000060
	ldr r6, off_8006DE0 // =dword_802412C
loc_8006D90:
	bl GetRNG // () -> u32?
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	eor r0, r6
	tst r0, r0
	beq loc_8006D90
	str r0, [r4]
	bl encryption_zenny_8006f54
	ldr r4, off_8006DE4 // =dword_20018B8
	ldr r6, off_8006DE8 // =loc_803ED90
loc_8006DA8:
	bl GetRNG // () -> u32?
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	eor r0, r6
	tst r0, r0
	beq loc_8006DA8
	str r0, [r4]
	bl encryption_bugfrags_8006fac
	bl anticheat_modCardsInit_8007036
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8006DC4: .word byte_20004E0
off_8006DC8: .word 0x200
off_8006DCC: .word byte_20008A0
dword_8006DD0: .word 0x200
off_8006DD4: .word byte_2001600
dword_8006DD8: .word 0x4
off_8006DDC: .word dword_2000060
off_8006DE0: .word dword_802412C
off_8006DE4: .word dword_20018B8
off_8006DE8: .word loc_803ED90
	thumb_func_end encryption_initAll_8006d00

	thumb_func_start sub_8006DEC
sub_8006DEC:
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldr r0, [r4,#oGameState_Unk_74]
	pop {r4-r7,pc}
	thumb_func_end sub_8006DEC

	thumb_func_start encryption_8006df6
encryption_8006df6:
	push {r4-r7,lr}
	ldr r7, off_8006E38 // =eUnusedExtraToolkitPtrsOffset
	ldr r7, [r7,#0x4] // (dword_2001064 - 0x2001060)
	sub r1, #1
loc_8006DFE:
	ldrb r3, [r0,r1]
	eor r3, r7
	strb r3, [r0,r1]
	sub r1, #1
	bge loc_8006DFE
	ldr r0, off_8006E38 // =eUnusedExtraToolkitPtrsOffset
	str r7, [r0,#0x4] // (dword_2001064 - 0x2001060)
	pop {r4-r7,pc}
	thumb_func_end encryption_8006df6

// (u8 *mem, int size) -> void
	thumb_func_start encryption_save_memSetFlags_8006E0E
encryption_save_memSetFlags_8006E0E:
	push {r4-r7,lr}
	ldr r7, off_8006E38 // =eUnusedExtraToolkitPtrsOffset
	ldr r7, [r7,#4]
	sub r1, #1
.memSetFlags_8006E16
	ldrb r3, [r0,r1]
	eor r3, r7
	strb r3, [r0,r1]
	sub r1, #1
	// while (a2_size >= 0);
	bge .memSetFlags_8006E16
	ldr r0, off_8006E38 // =eUnusedExtraToolkitPtrsOffset
	str r7, [r0,#4]
	pop {r4-r7,pc}
	thumb_func_end encryption_save_memSetFlags_8006E0E

	thumb_func_start encryption_8006e26
encryption_8006e26:
	push {r4-r7,lr}
	ldr r7, off_8006E38 // =eUnusedExtraToolkitPtrsOffset
loc_8006E2A:
	bl GetRNG // () -> u32?
	mvn r0, r0
	tst r0, r0
	beq loc_8006E2A
	str r0, [r7,#0x4] // (dword_2001064 - 0x2001060)
	pop {r4-r7,pc}
	.balign 4, 0
off_8006E38: .word eUnusedExtraToolkitPtrsOffset
	thumb_func_end encryption_8006e26

	thumb_func_start encryption_8006e3c
encryption_8006e3c:
	push {r1-r7,lr}
	ldr r5, off_8006E6C // =byte_20004E0
	mov r7, r10
	mov r1, #oToolkit_Unk2004a8c_Ptr
	ldr r7, [r7,r1]
	ldrb r1, [r5,r0]
	mov r2, #0x6f
	eor r1, r2
	strb r1, [r7,r0]
	pop {r1-r7,pc}
	thumb_func_end encryption_8006e3c

	thumb_func_start encryption_navicustMaybe_8006e50
encryption_navicustMaybe_8006e50:
	push {r1-r7,lr}
	ldr r5, off_8006E6C // =byte_20004E0
	mov r7, r10
	mov r1, #oToolkit_Unk2004a8c_Ptr
	ldr r7, [r7,r1]
	ldrb r1, [r5,r0]
	mov r2, #0x6f
	eor r1, r2
	ldrb r2, [r7,r0]
	cmp r1, r2 // (byte_20004E0[r0] ^ 0x6f) == (Unk2004a8c[r0])
	beq locret_8006E68
	mov r0, #1
locret_8006E68:
	pop {r1-r7,pc}
	.balign 4, 0
off_8006E6C: .word byte_20004E0
	thumb_func_end encryption_navicustMaybe_8006e50

// (int idx_20008A0) -> void
	thumb_func_start encryption_applyPack_8006e70
encryption_applyPack_8006e70:
	push {r1-r7,lr}
	ldr r5, off_8006EA0 // =byte_20008A0
	mov r7, r10
	mov r1, #oToolkit_Unk2004c20_Ptr // Toolkit.unk_2004C20
	ldr r7, [r7,r1]
	ldrb r1, [r5,r0]
	mov r2, #0x81
	eor r1, r2
	strb r1, [r7,r0]
	pop {r1-r7,pc}
	thumb_func_end encryption_applyPack_8006e70

	thumb_func_start encryption_testPack_8006e84
encryption_testPack_8006e84:
	push {r1-r7,lr}
	ldr r5, off_8006EA0 // =byte_20008A0
	mov r7, r10
	mov r1, #oToolkit_Unk2004c20_Ptr
	ldr r7, [r7,r1]
	ldrb r1, [r5,r0]
	mov r2, #0x81
	eor r1, r2
	ldrb r2, [r7,r0]
	cmp r1, r2
	beq locret_8006E9C
	mov r0, #1
locret_8006E9C:
	pop {r1-r7,pc}
	.balign 4, 0
off_8006EA0: .word byte_20008A0
	thumb_func_end encryption_testPack_8006e84

	thumb_func_start sub_8006EA4
sub_8006EA4:
	push {r1-r7,lr}
	mov r7, r0
	mov r4, r1
	bl encryption_testPack_8006e84
	bne loc_8006EE4
	cmp r4, #0xff
	beq loc_8006EE0
	// idx
	mov r0, r7
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r3, [r0]
	cmp r3, r4
	beq loc_8006ED2
	ldrb r3, [r0,#1]
	cmp r3, r4
	beq loc_8006ED2
	ldrb r3, [r0,#2]
	cmp r3, r4
	beq loc_8006ED2
	ldrb r3, [r0,#3]
	cmp r3, r4
	bne loc_8006EE4
loc_8006ED2:
	// idx
	mov r0, r7
	// searchItem
	mov r1, r4
	bl getOffsetToQuantityOfChipCodeMaybe_8021c7c // (int chip_idx, int searchItem, int off) -> void*
	ldrb r0, [r0]
	tst r0, r0
	beq loc_8006EE4
loc_8006EE0:
	mov r0, #0
	pop {r1-r7,pc}
loc_8006EE4:
	mov r0, #1
	pop {r1-r7,pc}
	thumb_func_end sub_8006EA4

// (int idx_8021DA8, int a2) -> bool
	thumb_local_start
validateChipCode_8006EE8:
	push {r1-r7,lr}
	mov r7, r0
	mov r4, r1
	bl encryption_testPack_8006e84
	bne loc_8006F1A
	cmp r4, #0xff
	beq loc_8006F16
	// idx
	mov r0, r7
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r3, [r0]
	cmp r3, r4
	beq loc_8006F16
	ldrb r3, [r0,#0x1] // ChipData.unk_01
	cmp r3, r4
	beq loc_8006F16
	ldrb r3, [r0,#0x2] // ChipData.unk_02
	cmp r3, r4
	beq loc_8006F16
	ldrb r3, [r0,#0x3] // ChipData.unk_03
	cmp r3, r4
	bne loc_8006F1A
loc_8006F16:
	mov r0, #0
	pop {r1-r7,pc}
loc_8006F1A:
	mov r0, #1
	pop {r1-r7,pc}
	thumb_func_end validateChipCode_8006EE8

	thumb_func_start sub_8006F1E
sub_8006F1E:
	push {r1-r7,lr}
	mov r7, r0
	mov r4, r1
	bl encryption_80070e6
	bne loc_8006F50
	cmp r4, #0xff
	beq loc_8006F4C
	// idx
	mov r0, r7
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r3, [r0]
	cmp r3, r4
	beq loc_8006F4C
	ldrb r3, [r0,#0x1] // ChipData.unk_01
	cmp r3, r4
	beq loc_8006F4C
	ldrb r3, [r0,#0x2] // ChipData.unk_02
	cmp r3, r4
	beq loc_8006F4C
	ldrb r3, [r0,#0x3] // ChipData.unk_03
	cmp r3, r4
	bne loc_8006F50
loc_8006F4C:
	mov r0, #0
	pop {r1-r7,pc}
loc_8006F50:
	mov r0, #1
	pop {r1-r7,pc}
	thumb_func_end sub_8006F1E

	thumb_func_start encryption_zenny_8006f54
encryption_zenny_8006f54:
	push {r0-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldr r0, [r4,#oGameState_ProtectedZenny]
	ldr r1, [r4,#oGameState_Unk_74]
	mov r2, #1
	tst r1, r2
	bne loc_8006F68
	mvn r1, r0
	str r1, [r4,#oGameState_Unk_6c]
loc_8006F68:
	ldr r1, off_8006FA8 // =dword_2000060
	ldr r1, [r1]
	eor r0, r1
	mov r1, r10
	mov r2, #oToolkit_Unk2005028_Ptr
	ldr r1, [r1,r2]
	str r0, [r1]
	pop {r0-r7,pc}
	thumb_func_end encryption_zenny_8006f54

	thumb_func_start encryption_zenny_8006f78
encryption_zenny_8006f78:
	push {r0-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldr r0, [r4,#oGameState_ProtectedZenny]
	ldr r1, [r4,#oGameState_Unk_6c]
	mvn r1, r1
	cmp r0, r1
	beq loc_8006F90
	ldr r1, [r4,#oGameState_Unk_74]
	mov r2, #1
	orr r1, r2
	str r1, [r4,#oGameState_Unk_74]
loc_8006F90:
	ldr r1, off_8006FA8 // =dword_2000060
	ldr r1, [r1]
	eor r0, r1
	mov r1, r10
	mov r2, #oToolkit_Unk2005028_Ptr
	ldr r1, [r1,r2]
	ldr r1, [r1]
	cmp r0, r1
	beq locret_8006FA4
	mov r0, #1
locret_8006FA4:
	pop {r0-r7,pc}
	.balign 4, 0
off_8006FA8: .word dword_2000060
	thumb_func_end encryption_zenny_8006f78

	thumb_func_start encryption_bugfrags_8006fac
encryption_bugfrags_8006fac:
	push {r0-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldr r0, [r4,#oGameState_ProtectedBugfrags]
	ldr r1, [r4,#oGameState_Unk_74]
	mov r2, #2
	tst r1, r2
	bne loc_8006FC0
	mvn r1, r0
	str r1, [r4,#oGameState_Unk_70]
loc_8006FC0:
	ldr r1, off_8007000 // =dword_20018B8
	ldr r1, [r1]
	eor r0, r1
	mov r1, r10
	mov r2, #oToolkit_Unk2005030_Ptr
	ldr r1, [r1,r2]
	str r0, [r1]
	pop {r0-r7,pc}
	thumb_func_end encryption_bugfrags_8006fac

	thumb_func_start encryption_bugfrags_8006fd0
encryption_bugfrags_8006fd0:
	push {r0-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldr r0, [r4,#oGameState_ProtectedBugfrags]
	ldr r1, [r4,#oGameState_Unk_70]
	mvn r1, r1
	cmp r0, r1
	beq loc_8006FE8
	ldr r1, [r4,#oGameState_Unk_74]
	mov r2, #2
	orr r1, r2
	str r1, [r4,#oGameState_Unk_74]
loc_8006FE8:
	ldr r1, off_8007000 // =dword_20018B8
	ldr r1, [r1]
	eor r0, r1
	mov r1, r10
	mov r2, #oToolkit_Unk2005030_Ptr
	ldr r1, [r1,r2]
	ldr r1, [r1]
	cmp r0, r1
	beq locret_8006FFC
	mov r0, #1
locret_8006FFC:
	pop {r0-r7,pc}
	.balign 4, 0
off_8007000: .word dword_20018B8
	thumb_func_end encryption_bugfrags_8006fd0

	thumb_local_start
anticheat_modCardsSet_8007004:
	push {r1-r7,lr}
	bl encryption_800708c
	ldr r5, off_8007088 // =byte_2000670
	mov r7, r10
	mov r1, #0x8c
	ldr r7, [r7,r1]
	ldrb r1, [r5,r0]
	mov r2, #0x8d
	eor r1, r2
	strb r1, [r7,r0]
	pop {r1-r7,pc}
	thumb_func_end anticheat_modCardsSet_8007004

	thumb_local_start
anticheat_modCardsUnset_800701c:
	push {r1-r7,lr}
	bl encryption_800708c
	ldr r5, off_8007088 // =byte_2000670
	mov r7, r10
	mov r1, #oToolkit_Unk2005038_Ptr
	ldr r7, [r7,r1]
	ldrb r1, [r5,r0]
	mov r2, #0x8d
	eor r1, r2
	mvn r1, r1
	strb r1, [r7,r0]
	pop {r1-r7,pc}
	thumb_func_end anticheat_modCardsUnset_800701c

	thumb_local_start
anticheat_modCardsInit_8007036:
	push {r1-r7,lr}
	mov r6, r10
	mov r0, #oToolkit_Unk2005038_Ptr
	ldr r6, [r6,r0]
	ldr r4, off_8007060 // =byte_2000670
	ldr r7, off_8007064 // =0x100
loc_8007042:
	sub r7, #1
	blt locret_800705E
loc_8007046:
	bl GetRNG // () -> u32?
	mov r1, #0xff
	and r0, r1
	mov r1, #0x8d
	eor r0, r1
	tst r0, r0
	beq loc_8007046
	strb r0, [r4,r7]
	mvn r0, r0
	strb r0, [r6,r7]
	b loc_8007042
locret_800705E:
	pop {r1-r7,pc}
	.balign 4, 0
off_8007060: .word byte_2000670
off_8007064: .word 0x100
	thumb_func_end anticheat_modCardsInit_8007036

	thumb_local_start
anticheat_modCardsTest_8007068:
	push {r1-r7,lr}
	bl encryption_800708c
	ldr r5, off_8007088 // =byte_2000670
	mov r7, r10
	mov r1, #oToolkit_Unk2005038_Ptr
	ldr r7, [r7,r1]
	ldrb r1, [r5,r0]
	mov r2, #0x8d
	eor r1, r2
	ldrb r2, [r7,r0]
	cmp r1, r2
	beq locret_8007084
	mov r0, #1
locret_8007084:
	pop {r1-r7,pc}
	.balign 4, 0
off_8007088: .word byte_2000670
	thumb_func_end anticheat_modCardsTest_8007068

	thumb_local_start
encryption_800708c:
	push {r1-r7,lr}
	ldr r7, off_80070A8 // =word_80070AC
	mov r4, #0
loc_8007092:
	ldrh r3, [r7]
	cmp r3, r0
	beq loc_80070A2
	add r7, #4
	add r4, #1
	cmp r4, #4
	blt loc_8007092
loc_80070A0:
	b loc_80070A0
loc_80070A2:
	ldrh r3, [r7,#2]
	add r0, r3, r1
	pop {r1-r7,pc}
	.balign 4, 0
off_80070A8: .word word_80070AC
word_80070AC: .hword 0x1000, 0x0, 0x1010, 0x50, 0x1020, 0xDC, 0x1040, 0xE6
	thumb_func_end encryption_800708c

	thumb_func_start encryption_80070bc
encryption_80070bc:
	push {r1-r7,lr}
	ldr r5, off_8007170 // =byte_2001600
	ldr r4, dword_8007174 // =EVENT_2020
	ldr r6, off_8007178 // =0x200
	mov r7, #0
loc_80070C6:
	mov r0, r4
	bl TestEventFlag // (u16 flag) -> !zf
	beq loc_80070DC
	mov r0, r10
	mov r1, #oToolkit_Unk2004e24_Ptr
	ldr r0, [r0,r1]
	ldrb r1, [r5,r7]
	mov r2, #0xfe
	eor r1, r2
	strb r1, [r0,r7]
loc_80070DC:
	add r4, #1
	add r7, #1
	cmp r7, r6
	blt loc_80070C6
	pop {r1-r7,pc}
	thumb_func_end encryption_80070bc

	thumb_func_start encryption_80070e6
encryption_80070e6:
	push {r1-r7,lr}
	push {r0}
	bl encryption_testPack_8006e84
	pop {r0}
	beq locret_8007108
	ldr r5, off_8007170 // =byte_2001600
	mov r7, r10
	mov r1, #oToolkit_Unk2004e24_Ptr
	ldr r7, [r7,r1]
	ldrb r1, [r5,r0]
	mov r2, #0xfe
	eor r1, r2
	ldrb r2, [r7,r0]
	cmp r1, r2
	beq locret_8007108
	mov r0, #1
locret_8007108:
	pop {r1-r7,pc}
	thumb_func_end encryption_80070e6

	thumb_func_start encryption_800710a
encryption_800710a:
	push {r1-r7,lr}
	ldr r4, dword_8007174 // =EVENT_2020
	ldr r6, off_8007178 // =0x200
	mov r7, #0
loc_8007112:
	mov r0, r4
	bl TestEventFlag // (u16 flag) -> !zf
	beq loc_8007122
	mov r0, r7
	bl encryption_80070e6
	bne loc_800716A
loc_8007122:
	add r4, #1
	add r7, #1
	cmp r7, r6
	blt loc_8007112
	ldr r4, off_800717C // =0x2220
	ldr r6, off_8007180 // =0x200
	mov r7, #0
loc_8007130:
	mov r0, r4
	bl TestEventFlag // (u16 flag) -> !zf
	beq loc_8007140
	mov r0, r7
	bl encryption_80070e6
	bne loc_800716A
loc_8007140:
	add r4, #1
	add r7, #1
	cmp r7, r6
	blt loc_8007130
	ldr r4, dword_8007184 // =EVENT_1E20
	ldr r6, off_8007188 // =0x200
	mov r7, #0
loc_800714E:
	mov r0, r4
	bl TestEventFlag // (u16 flag) -> !zf
	beq loc_800715E
	mov r0, r7
	bl encryption_testPack_8006e84
	bne loc_800716A
loc_800715E:
	add r4, #1
	add r7, #1
	cmp r7, r6
	blt loc_800714E
	mov r0, #0
	pop {r1-r7,pc}
loc_800716A:
	mov r0, #1
	pop {r1-r7,pc}
	.balign 4, 0
off_8007170: .word byte_2001600
dword_8007174: .word 0x2020
off_8007178: .word 0x200
off_800717C: .word 0x2220
off_8007180: .word 0x200
dword_8007184: .word 0x1E20
off_8007188: .word 0x200
	thumb_func_end encryption_800710a
// possible file boundary


	thumb_local_start
sub_800718C:
	ldr r1, off_80071BC // =flags32_20093A4
	ldr r1, [r1]
	tst r0, r1
	mov pc, lr
	thumb_func_end sub_800718C

	thumb_local_start
get_flags32_20093A4: // () -> flags32
	ldr r0, off_80071C0 // =flags32_20093A4
	ldr r0, [r0]
	mov pc, lr
	thumb_func_end get_flags32_20093A4

	thumb_local_start
set_flags32_20093A4: // (flags32 flags) -> void
	ldr r1, off_80071C4 // =flags32_20093A4
	ldr r2, [r1]
	orr r2, r0
	str r2, [r1]
	mov pc, lr
	thumb_func_end set_flags32_20093A4

	thumb_local_start
clear_flags32_20093A4: // (flags32 flags) -> void
	ldr r1, off_80071C8 // =flags32_20093A4
	ldr r2, [r1]
	bic r2, r0
	str r2, [r1]
	mov pc, lr
	thumb_func_end clear_flags32_20093A4

	thumb_local_start
assign_flags32_20093A4: // (flags32 val) -> void
	ldr r1, off_80071CC // =flags32_20093A4
	str r0, [r1]
	mov pc, lr
	thumb_func_end assign_flags32_20093A4

	thumb_func_start reset_flags32_20093A4
reset_flags32_20093A4: // () -> void
	ldr r1, off_80071D0 // =flags32_20093A4
	mov r0, #0
	str r0, [r1]
	mov pc, lr
off_80071BC: .word flags32_20093A4
off_80071C0: .word flags32_20093A4
off_80071C4: .word flags32_20093A4
off_80071C8: .word flags32_20093A4
off_80071CC: .word flags32_20093A4
off_80071D0: .word flags32_20093A4
	thumb_func_end reset_flags32_20093A4

	thumb_func_start sub_80071D4
sub_80071D4:
	push {r4,r5,r7,lr}
	mov r7, #0
	push {r0}
	// memBlock
	ldr r0, off_8007320 // =dword_2033000
	// size
	ldr r1, Word_8007324 // =0x6aa0
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	// memBlock
	ldr r0, off_8007328 // =unk_2039ADC
	ldr r1, off_800732C // =eNaviStats203CCE0
	// size
	sub r1, r1, r0
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	// memBlock
	ldr r0, off_8007330 // =byte_203CDA8
	ldr r1, dword_8007334 // =0x2040000
	// size
	sub r1, r1, r0
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	bl SetPrimaryToolkitPointersWrapper
	pop {r0}
	b loc_8007208
loc_80071FE:
	push {r4,r5,r7,lr}
	mov r7, #1
	b loc_8007208
loc_8007204:
	push {r4,r5,r7,lr}
	mov r7, #0
loc_8007208:
	mov r4, r0
	mov r5, r10
	ldr r5, [r5,#oToolkit_BattleStatePtr]
	// memBlock
	mov r0, r5
	// size
	mov r1, #0xf0
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	str r4, [r5,#oBattleState_BattleSettings]
	mov r0, #1
	strb r0, [r5,#oBattleState_Unk_0a]
	bl sub_8005F40
	bl sub_8005F78
	bl GetBattleMode
	cmp r0, #1
	beq loc_8007232
	bl sub_80027D4
	b loc_8007236
loc_8007232:
	bl sub_80027E4
loc_8007236:
	mov r0, #1
	bl set_flags32_20093A4 // (flags32 flags) -> void
	bl battle_clearEnemyFadeinList
	mov r0, #1
	strb r0, [r5,#oBattleState_Unk_1b]
	ldr r0, off_8007308 // =dword_2036820
	mov r1, #0x10
	bl ZeroFillByByte // (mut_mem: *mut (), num_bytes: usize) -> ()
	mov r0, r10
	ldr r0, [r0,#oToolkit_iBGTileIdBlocks_Ptr]
	mov r1, #8
	lsl r1, r1, #8
	add r0, r0, r1
	mov r1, #0x18
	lsl r1, r1, #8
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	mov r0, #0
	ldr r1, off_800730C // =eCamera+76
	strb r0, [r1]
	bl sub_800A01C
	bl sub_80075CA
	bl sub_8080D90
	bl sub_8080DA0
	bl sub_8007628
	bl sub_801FE00
	bl eStruct2038160_clearStruct
	bl sub_800ED00
	mov r0, #0
	bl sub_8013422
	mov r0, #1
	bl sub_8013422
	bl sub_800BF66
	bl sub_800A2F8
	bl sub_800A954
	bl sub_800AB70
	bl sub_802CE54
	bl sub_800A79C
	bl UnpauseBattle
	bl object_Clear3RAMBytes_800371A
	cmp r7, #2
	beq loc_80072BA
	bl sub_802DFFC
	b loc_80072BE
loc_80072BA:
	bl sub_802E014
loc_80072BE:
	bl sub_8021D08
	ldr r0, off_8007310 // =dword_20364C0
	ldr r1, Word_8007314 // =0x6014000
	str r1, [r0]
	mov r1, r0
	add r1, #8
	str r1, [r0,#0x4] // (dword_20364C4 - 0x20364c0)
	movflag EVENT_1733
	bl ClearEventFlagFromImmediate
	cmp r7, #1
	beq loc_80072E2
	movflag EVENT_1735
	bl ClearEventFlagFromImmediate
loc_80072E2:
	mov r0, #0
	bl eStruct200A008_setUnk04
	mov r0, #0
	bl eStruct200A008_setUnk06
	mov r0, #0
	bl eStruct200A008_setUnk00
	bl sub_800B75A
	mov r0, #0
	bl sub_802D08C
	mov r0, #1
	bl sub_802D08C
	pop {r4,r5,r7,pc}
	.balign 4, 0
off_8007308: .word dword_2036820
off_800730C: .word eCamera+0x4C // eCamera.unk_4C
off_8007310: .word dword_20364C0
Word_8007314: .word 0x6014000
	.word dword_2033000
	.word 0xD000
off_8007320: .word dword_2033000
Word_8007324: .word 0x6AA0
off_8007328: .word unk_2039ADC
off_800732C: .word eNaviStats203CCE0
off_8007330: .word byte_203CDA8
dword_8007334: .word 0x2040000
	thumb_func_end sub_80071D4

	thumb_local_start
sub_8007338:
	push {lr}
	bl sub_80303E8
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0xf0
	mov r4, #0
	bl camera_init_802FF4C // (player_x: u32, player_y: u32, player_z: u32, map_group: u8, map_number: u8) -> ()
	mov r0, #0
	bl camera_writeUnk03_14_80301b2
	pop {pc}
	.word 0x100000
	thumb_func_end sub_8007338

	thumb_local_start
sub_8007358:
	push {lr}
	ldr r0, [r5,#oBattleState_BattleSettings]
	ldr r0, [r0,#0xc]
	bl sub_8007368
	bl sub_80AA88C
	pop {pc}
	thumb_func_end sub_8007358

	thumb_local_start
sub_8007368:
	push {r6,lr}
	mov r6, r0
loc_800736C:
	ldrb r0, [r6]
	mov r1, #0xf0
	and r0, r1
	cmp r0, #0xf0
	beq loc_8007384
	lsr r0, r0, #2
	ldr r1, off_800739C // =off_80073A0
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	add r6, #4
	b loc_800736C
loc_8007384:
	ldrh r0, [r5,#oBattleState_Unk_04_05]
	strh r0, [r5,#oBattleState_Unk_12_13]
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	mov r0, #oBattleState_AliveBattleActors
	add r0, r0, r2
	mov r1, #oBattleState_BattleActors
	add r1, r1, r2
	mov r2, #0x20
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	pop {r6,pc}
	.balign 4, 0
off_800739C: .word off_80073A0
off_80073A0: .word sub_80073CC+1
	.word sub_80073E2+1
	.word sub_8007424+1
	.word sub_8007450+1
	.word nullsub_40+1
	.word nullsub_41+1
	.word sub_80074C8+1
	.word sub_80074DE+1
	.word sub_80074FA+1
	.word sub_800751C+1
	.word sub_800748A+1
	thumb_func_end sub_8007368

	thumb_local_start
sub_80073CC:
	push {lr}
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb r2, [r6]
	mov r3, #1
	and r2, r3
	bl sub_800753C
	pop {pc}
	thumb_func_end sub_80073CC

	thumb_local_start
sub_80073E2:
	push {r5,lr}
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r2, r1
	mov r1, r0
	ldrb r0, [r6,#2]
	ldrb r3, [r6,#3]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x14
	add r0, r0, r3
	ldrb r3, [r6]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1f
	mov r5, #0
	push {r1-r3}
	push {r0}
	bl GetBattleEffects // () -> int
	ldr r1, dword_8007420 // =0x8000 
	tst r0, r1
	pop {r0}
	bne loc_8007416
	bl sub_800EC80
loc_8007416:
	pop {r1-r3}
	bl dead_800768C
	pop {r5,pc}
	.balign 4, 0
dword_8007420: .word 0x8000
	thumb_func_end sub_80073E2

	thumb_local_start
sub_8007424:
	push {r4,lr}
	bl GetPositiveSignedRNG
	mov r1, #0xf
	svc 6
	ldrb r0, [r6,#2]
	mov r2, #0xf
	and r2, r0
	cmp r0, r1
	ble locret_800744E
	lsr r0, r0, #4
	bl sub_80DA9FE
	mov r4, r0
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r2, #0
	bl sub_80DA9DC
locret_800744E:
	pop {r4,pc}
	thumb_func_end sub_8007424

	thumb_local_start
sub_8007450:
	push {r4,r6,r7,lr}
	mov r7, #0xb8
	add r7, r7, r5
	ldr r0, [r7]
	tst r0, r0
	beq loc_8007464
	add r7, #4
	ldr r0, [r7]
	tst r0, r0
	bne locret_8007488
loc_8007464:
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bl object_getPanelParameters
	mov r1, #0x20
	and r0, r1
	lsr r4, r0, #5
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r2, #0
	mov r6, #0xc8
	bl sub_80D2430
	str r0, [r7]
locret_8007488:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8007450

	thumb_local_start
sub_800748A:
	push {r4,r6,r7,lr}
	mov r7, #0xb8
	add r7, r7, r5
	ldr r0, [r7]
	tst r0, r0
	beq loc_800749E
	add r7, #4
	ldr r0, [r7]
	tst r0, r0
	bne locret_80074C2
loc_800749E:
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bl object_getPanelParameters
	mov r1, #0x20
	and r0, r1
	lsr r4, r0, #5
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r2, #0
	mov r6, #0x64
	bl sub_80D85F0
	str r0, [r7]
locret_80074C2:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800748A

	thumb_local_start
nullsub_40:
	mov pc, lr
	thumb_func_end nullsub_40

	thumb_local_start
nullsub_41:
	mov pc, lr
	thumb_func_end nullsub_41

	thumb_local_start
sub_80074C8:
	push {r4,lr}
	mov r4, #1
	lsl r4, r4, #8
	ldrb r0, [r6,#2]
	add r4, r4, r0
	lsl r4, r4, #8
	ldrb r0, [r6,#3]
	add r4, r4, r0
	bl sub_80E5368
	pop {r4,pc}
	thumb_func_end sub_80074C8

	thumb_local_start
sub_80074DE:
	push {lr}
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r2, r1
	mov r1, r0
	ldrb r3, [r6,#2]
	lsr r4, r3, #7
	lsl r3, r3, #0x19
	lsr r3, r3, #0x16
	bl sub_80D8D5A
	pop {pc}
	thumb_func_end sub_80074DE

	thumb_local_start
sub_80074FA:
	push {r4,r6,lr}
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	push {r0,r1}
	bl object_getPanelDataOffset
	ldrb r2, [r0,#oPanelData_Alliance]
	pop {r0,r1}
	ldrb r3, [r6,#2]
	ldr r4, byte_80077F4 // =0x0
	add r4, r4, r3
	mov r6, #0xc8
	bl sub_80CFBC4
	pop {r4,r6,pc}
	thumb_func_end sub_80074FA

	thumb_local_start
sub_800751C:
	push {r4,r6,lr}
	ldrb r0, [r6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	push {r0,r1}
	bl object_getPanelDataOffset
	ldrb r2, [r0,#oPanelData_Alliance]
	pop {r0,r1}
	ldrb r3, [r6,#2]
	mov r4, #1
	ldr r6, byte_80077F8 // =0xc8
	bl sub_80D4FA6
	pop {r4,r6,pc}
	thumb_func_end sub_800751C

	thumb_local_start
sub_800753C:
	push {r4,r5,lr}
	push {r0-r2}
	mov r4, #0
	mov r0, #0
	bl object_spawnType1
	pop {r0-r2}
	tst r5, r5
	beq locret_80075C8
	strb r2, [r5,#oBattleObject_Alliance]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r5,#oBattleObject_PanelY]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	str r0, [r5,#oBattleObject_X]
	str r1, [r5,#oBattleObject_Y]
	mov r2, #0
	str r2, [r5,#oBattleObject_Z]
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #4
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	bl object_createAIData
	mov r4, r0
	tst r0, r0
	str r0, [r5,#oBattleObject_AIDataPtr]
	bne loc_800757E
	bl object_freeMemory
	pop {r4,r5,pc}
loc_800757E:
	mov r1, #2
	strb r1, [r0]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x29
	bl GetBattleNaviStatsByte
	add r0, #0xff
	add r0, #0xa1
	strh r0, [r5,#oBattleObject_NameID]
	bl modifyBattleStateBasedOnAliveBattleActorsAndUnkCond_8007778
	tst r0, r0
	bne loc_80075A2
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	bl sub_800ED80
	bl object_freeMemory
loc_80075A2:
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_80182B4
	ldrb r1, [r0]
	strb r1, [r4,#0x16]
	strb r1, [r4,#0x17]
	ldrb r1, [r0,#1]
	strb r1, [r4]
	ldrb r1, [r0,#2]
	strb r1, [r4,#1]
	ldrh r0, [r5,#oBattleObject_NameID]
	bl enemy_getStruct1
	ldrb r1, [r0,#2]
	strb r1, [r4,#3]
	mov r0, #0xff
	strb r0, [r4,#0xe]
	bl sub_80077D2
locret_80075C8:
	pop {r4,r5,pc}
	thumb_func_end sub_800753C

	thumb_local_start
sub_80075CA:
	push {r5,lr}
	// memBlock
	ldr r0, dword_8007624 // =0x6008000
	// size
	mov r1, #0x40
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	// memBlock
	ldr r0, dword_8007618 // =0x6008000
	// size
	mov r1, #0x40
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	// dataList
	ldr r0, dataList // =off_80075F0 
	bl QueueGFXTransfersInList // (u32 *dataRefs) -> void
	ldr r0, off_800761C // =dword_86DDBA0
	ldr r1, dword_8007620 // =0x6001460
	bl SWI_LZ77UnCompReadNormalWrite16bit
	pop {r5,pc}
	.balign 4, 0
dataList: .word off_80075F0
off_80075F0: .word dword_86E08F8
	.word unk_3001980
	.word 0x100
	.word dword_86E09F8
	.word palette_3001960
	.word 0x20
	.word dword_86E09F8
	.word byte_3001690
	.word 0x20
	.word 0x0
dword_8007618: .word 0x6008000
off_800761C: .word dword_86DDBA0
dword_8007620: .word 0x6001460
dword_8007624: .word 0x6008000
	thumb_func_end sub_80075CA

	thumb_local_start
sub_8007628:
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	ldr r1, off_8007654 // =word_800765C
loc_800762E:
	ldrh r2, [r1]
	cmp r2, #0xff
	beq loc_800763C
	ldrh r3, [r1,#2]
	strh r3, [r0,r2]
	add r1, #4
	b loc_800762E
loc_800763C:
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200f3a0_Ptr]
	ldr r1, off_8007658 // =word_8007672
loc_8007642:
	ldrh r2, [r1]
	cmp r2, #0xff
	beq locret_8007650
	ldrh r3, [r1,#2]
	strh r3, [r0,r2]
	add r1, #4
	b loc_8007642
locret_8007650:
	mov pc, lr
	.balign 4, 0
off_8007654: .word word_800765C
off_8007658: .word word_8007672
word_800765C: .hword 0x4
word_800765E: .hword 0x1C08
	.byte 0x6, 0x0, 0x3, 0x1D, 0x8, 0x0, 0x2, 0x1E, 0xA, 0x0, 0x0, 0x1F, 0x0, 0x0
	.byte 0x60, 0x7F, 0xFF, 0x0
word_8007672: .hword 0x0
word_8007674: .hword 0xF000
	.word 0xF0000002
	.word 0xA0000004
	.word 0xA0000006
	.word 0x3F3F0008
	.word 0x3F3F000A
	.hword 0xFF
	thumb_func_end sub_8007628

	thumb_local_start
dead_800768C:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	mov r4, #0
	str r4, [sp,#0x10]
	b loc_80076A8
	thumb_func_end dead_800768C

	thumb_local_start
dead_8007696:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	mov r4, #1
	str r4, [sp,#0x10]
	b loc_80076A8
	thumb_func_end dead_8007696

	thumb_func_start sub_80076A0
sub_80076A0:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	mov r4, #0
	str r4, [sp,#0x10]
loc_80076A8:
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	str r5, [sp,#0x14]
	ldr r0, [sp]
	bl sub_80182B4
	mov r7, r0
	ldr r0, [sp,#4]
	ldr r1, [sp,#8]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r3, #0
	mov r2, r1
	mov r1, r0
	mov r0, #0
	ldrb r4, [r7]
	bl object_spawnType1
	tst r5, r5
	bne loc_80076DA
	b loc_8007774
loc_80076DA:
	ldr r0, [sp,#0xc]
	strb r0, [r5,#oBattleObject_Alliance]
	bl object_createAIData
	str r0, [r5,#oBattleObject_AIDataPtr]
	mov r4, r0
	bne loc_80076EE
	bl object_freeMemory
	b loc_8007774
loc_80076EE:
	ldr r1, [sp,#0x10]
	strb r1, [r4,#2]
	strb r1, [r5,#oBattleObject_Param2]
	bl modifyBattleStateBasedOnAliveBattleActorsAndUnkCond_8007778
	tst r0, r0
	bne loc_8007708
	bl object_freeMemory
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	bl sub_800ED80
	b loc_8007774
loc_8007708:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #4
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldr r0, [sp]
	strh r0, [r5,#oBattleObject_NameID]
	ldr r0, [sp]
	bl sub_80182B4
	ldrb r1, [r0]
	strb r1, [r4,#0x16]
	strb r1, [r4,#0x17]
	ldrb r1, [r0,#1]
	strb r1, [r4]
	ldrb r1, [r0,#2]
	strb r1, [r4,#1]
	ldr r0, [sp]
	bl enemy_getStruct1
	ldrb r1, [r0,#2]
	strb r1, [r4,#3]
	ldr r0, [sp]
	bl enemy_getStruct2
	ldrh r1, [r0]
	mov r2, r1
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	strh r2, [r5,#oBattleObject_HP]
	strh r2, [r5,#oBattleObject_MaxHP]
	lsr r1, r1, #0xc
	strb r1, [r5,#oBattleObject_Element]
	ldrh r1, [r0,#4]
	strh r1, [r5,#oBattleObject_Damage]
	mov r0, #0xa
	strh r0, [r5,#oBattleObject_StaminaDamageCounterDisabler]
	ldr r0, [sp,#4]
	ldr r1, [sp,#8]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r5,#oBattleObject_PanelY]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	ldr r1, [sp,#0x14]
	str r1, [r4,#0x54]
	ldr r0, dword_80077FC // =0xffff
	strh r0, [r5,#oBattleObject_Chip]
	mov r0, #0xff
	strb r0, [r4,#0xe]
	ldr r0, [sp,#0x10]
	cmp r0, #0
	bne loc_8007772
	bl sub_80077D2
loc_8007772:
	mov r0, r5
loc_8007774:
	add sp, sp, #0x14
	pop {r4-r7,pc}
	thumb_func_end sub_80076A0

	thumb_local_start
modifyBattleStateBasedOnAliveBattleActorsAndUnkCond_8007778:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x10
	mul r1, r0
	add r1, #oBattleState_AliveBattleActors
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	add r3, r0, r1
	mov r1, #0
loc_800778A:
	ldr r2, [r3]
	tst r2, r2
	bne loc_80077A8
	str r5, [r3]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r2, [r1,#oAIData_Unk_02]
	cmp r2, #1
	beq loc_80077A4
	ldrb r1, [r5,#oBattleObject_Alliance]
	add r1, #4
	ldrb r2, [r0,r1]
	add r2, #1
	strb r2, [r0,r1]
loc_80077A4:
	mov r0, #1
	pop {pc}
loc_80077A8:
	add r3, #4
	add r1, #1
	cmp r1, #4
	blt loc_800778A
	mov r0, #0
	pop {pc}
	thumb_func_end modifyBattleStateBasedOnAliveBattleActorsAndUnkCond_8007778

	thumb_func_start RemoveGivenAliveBattleActorFromList
RemoveGivenAliveBattleActorFromList:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	add r1, #oBattleState_AlivePlayerActors
	mov r3, #0
loc_80077BE:
	ldr r2, [r1]
	cmp r2, r0
	bne loc_80077C8
	mov r2, #0
	str r2, [r1]
loc_80077C8:
	add r1, #4
	add r3, #1
	cmp r3, #8
	blt loc_80077BE
	pop {pc}
	thumb_func_end RemoveGivenAliveBattleActorFromList

	thumb_local_start
sub_80077D2:
	push {r4,r6,lr}
	ldrh r0, [r5,#oBattleObject_NameID]
	ldrh r1, [r5,#oBattleObject_AllianceAndDirectionFlip]
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	mov r2, #oBattleState_Unk_08
	add r2, r2, r1
	ldrb r4, [r3,r2]
	add r6, r4, #1
	strb r6, [r3,r2]
	add r4, r4, r4
	lsl r1, r1, #3
	add r1, #0x4c
	add r1, r1, r4
	strh r0, [r3,r1]
	pop {r4,r6,pc}
	.balign 4, 0x00
byte_80077F4: .byte 0x0, 0x0, 0x3, 0x0
byte_80077F8: .byte 0xC8, 0x0, 0xA8, 0x0
dword_80077FC: .word 0xFFFF
	thumb_func_end sub_80077D2

	thumb_func_start battle_main_8007800
battle_main_8007800:
	push {r4,r5,lr}
	bl sub_801FE6C
	bl sub_8020140
	mov r5, r10
	ldr r5, [r5,#oToolkit_BattleStatePtr]
	ldr r1, off_8007834 // =JumpTable8007838
	ldrb r0, [r5,#oBattleState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	ldr r0, [r5,#oBattleState_Unk_60]
	add r0, #1
	str r0, [r5,#oBattleState_Unk_60]
	bl GetBattleEffects // () -> int
	mov r4, r0
	bl sub_800A832
	mov r2, r1
	mov r1, r0
	ldrb r0, [r5,#oBattleState_Unk_0a]
	mov r3, r4
	tst r0, r0
	pop {r4,r5,pc}
	.balign 4, 0
off_8007834: .word JumpTable8007838
JumpTable8007838: .word sub_8007850+1
	.word battle_update_8007A44+1
	.word sub_8007B80+1
	.word sub_8007E62+1
	.word sub_8007F4E+1
	.word removed_8007FEA+1
	thumb_func_end battle_main_8007800

	thumb_local_start
sub_8007850:
	push {r4,lr}
	bl eStruct203F7D8_getUnk01
	mov r4, r0
	cmp r4, #4
	bne loc_80078C6
	ldr r1, off_800793C // =dword_200F3B0
	mov r0, #0xff
	str r0, [r1]
loc_8007862:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #4
	beq loc_8007872
	cmp r0, #8
	beq loc_8007872
	bl sub_81440D8 // static () -> void
loc_8007872:
	bl sub_801FE64
	mov r4, #5
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #4
	beq loc_8007884
	cmp r0, #8
	bne loc_8007898
loc_8007884:
	bl eStruct200BC30_getRef
	ldrb r0, [r0,#0xe]
	cmp r0, #8
	beq loc_8007892
	cmp r0, #2
	bne loc_8007898
loc_8007892:
	bl eStruct200FE00_setUnk04To15h
	mov r4, #9
loc_8007898:
	mov r0, r4
	bl setTwoStructs_800A840
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_00]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne locret_8007936
	movflag EVENT_1733
	bl SetEventFlagFromImmediate
	movflag EVENT_1735
	bl SetEventFlagFromImmediate
	b locret_8007936
loc_80078C6:
	cmp r4, #2
	beq loc_80078D6
	bl eStruct200BC30_getJumpOffset00
	mov r1, #0xc
	tst r0, r1
	bne loc_80078D6
	b loc_8007918
loc_80078D6:
	bl eStruct2038160_getBattleTerminate01
	cmp r0, #0
	beq loc_8007900
	mov r1, #9
	cmp r0, #1
	beq loc_80078EC
	mov r1, #0xa
	cmp r0, #1
	beq loc_80078EC
	b loc_80078EC
loc_80078EC:
	mov r0, r1
	bl setTwoStructs_800A840
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_00]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
	b locret_8007936
loc_8007900:
	mov r0, r4
	bl sub_801FEEE
	mov r0, #8
	and r4, r0
	bne locret_8007936
	ldr r1, off_8007938 // =off_8007940
	ldrb r0, [r5,#oBattleState_Unk_01]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,pc}
loc_8007918:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #4
	beq locret_8007936
	cmp r0, #8
	beq locret_8007936
	ldrh r0, [r5,#oBattleState_Unk_20]
	add r0, #1
	strh r0, [r5,#oBattleState_Unk_20]
	cmp r0, #0xb4
	blt locret_8007936
	ldr r1, off_800793C // =dword_200F3B0
	mov r0, #0xee
	str r0, [r1]
	b loc_8007862
locret_8007936:
	pop {r4,pc}
	.balign 4, 0
off_8007938: .word off_8007940
off_800793C: .word dword_200F3B0
off_8007940: .word sub_800794C+1
	.word sub_8007978+1
	.word sub_8007A0C+1
	thumb_func_end sub_8007850

	thumb_local_start
sub_800794C:
	push {lr}
	bl sub_800318C
	bl InitializeT1BattleObjectStructs
	bl InitializeT3BattleObjectStructs
	bl InitializeT4BattleObjectStructs
	bl sub_802E112
	bl sub_8007338
	bl sub_800A0C6
	bl sub_801BE70
	bl copy_8002668
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_01]
	pop {pc}
	thumb_func_end sub_800794C

	thumb_local_start
sub_8007978:
	push {lr}
	ldr r1, off_8007988 // =off_800798C
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8007988: .word off_800798C
off_800798C: .word sub_800799C+1
	.word sub_80079A8+1
	.word sub_80079D0+1
	.word sub_80079F0+1
	thumb_func_end sub_8007978

	thumb_local_start
sub_800799C:
	push {lr}
	bl sub_801FE24
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_02]
	pop {pc}
	thumb_func_end sub_800799C

	thumb_local_start
sub_80079A8:
	push {lr}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_80079B8
	mov r0, #0
	b loc_80079BC
loc_80079B8:
	bl sub_803DD60
loc_80079BC:
	strb r0, [r5,#oBattleState_Unk_0d]
	ldr r1, off_80079CC // =eCamera+76
	strb r0, [r1]
	bl sub_800B144
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_02]
	pop {pc}
	.balign 4, 0
off_80079CC: .word eCamera+0x4C // eCamera.unk_4C
	thumb_func_end sub_80079A8

	thumb_local_start
sub_80079D0:
	push {lr}
	ldr r0, dword_80079EC // =0x12345678
	bl sub_800B46C
	tst r0, r0
	beq locret_80079EA
	bl sub_800B460
	bl battle_copyStructsIncludingBattleStats_800b2d8
	mov r0, #0xc
	strb r0, [r5,#oBattleState_Unk_02]
	b locret_80079EA
locret_80079EA:
	pop {pc}
	.balign 4, 0
dword_80079EC: .word 0x12345678
	thumb_func_end sub_80079D0

	thumb_local_start
sub_80079F0:
	push {lr}
	bl GetBattlePanelColumnPattern
	mov r1, r0
	ldrb r0, [r5,#oBattleState_Unk_06]
	bl sub_800BF88
	bl sub_800A3E4
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
	thumb_func_end sub_80079F0

	thumb_local_start
sub_8007A0C:
	push {lr}
	bl sub_801986C
	bl sub_800C8F0
	bl sub_800318C
	bl panel_800BFC4
	ldr r0, off_8007A40 // =eS2011800
	bl initUncompSpriteState_80028d4 // (a0: *const ?) -> ()
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_8007A36
	ldr r0, [r5,#oBattleState_BattleSettings]
	ldr r0, [r0,#0xc]
	bl sub_80029A8
loc_8007A36:
	bl battle_clearEnemyFadeinList
	mov r0, #4
	str r0, [r5,#oBattleState_Unk_00]
	pop {pc}
	.balign 4, 0
off_8007A40: .word eS2011800
	thumb_func_end sub_8007A0C

	thumb_local_start
battle_update_8007A44:
	push {r4,lr}
	bl eStruct203F7D8_getUnk01
	cmp r0, #4
	bne loc_8007A6C
	bl eStruct200BC30_getRef
	ldrb r0, [r0,#0xe]
	cmp r0, #8
	bne loc_8007A5E
	bl eStruct200FE00_setUnk04To15h
	b loc_8007A62
loc_8007A5E:
	cmp r0, #2
	bne loc_8007A66
loc_8007A62:
	mov r1, #9
	b loc_8007A8E
loc_8007A66:
	mov r0, #0xc
	str r0, [r5,#oBattleState_Unk_00]
	b loc_8007B10
loc_8007A6C:
	mov r4, r0
	bl sub_801FEEE
	mov r0, #8
	and r0, r4
	bne loc_8007B10
	bl eStruct2038160_getBattleTerminate01
	cmp r0, #0
	beq loc_8007A9A
	mov r1, #9
	cmp r0, #1
	beq loc_8007A8E
	mov r1, #0xa
	cmp r0, #1
	beq loc_8007A8E
	b loc_8007A8E
loc_8007A8E:
	mov r0, r1
	bl setTwoStructs_800A840
	mov r0, #0x10
	str r0, [r5,#oBattleState_Unk_00]
	b loc_8007B10
loc_8007A9A:
	bl sub_800A01C
	bl GetBattleMode
	lsl r0, r0, #2
	ldr r1, off_8007B4C // =off_8007B50
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	bl RunBattleObjectLogic
	bl camera_802FFF4
	bl panel_800BFC4
	bl setChipsForPlayerObjects_800FDC0
	bl sub_801BEE0
	bl sub_802CEC8
	bl handleVariableDamageChip_800AEE8
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r0, [r7,#oGameState_BattlePaused]
	tst r0, r0
	bne loc_8007AF4
	bl battle_isTimeStop
	bne loc_8007AF0
	ldrb r0, [r5,#oBattleState_Unk_0e]
	add r0, #1
	cmp r0, #0x14
	blt loc_8007AE2
	mov r0, #0
loc_8007AE2:
	strb r0, [r5,#oBattleState_Unk_0e]
	ldrb r0, [r5,#oBattleState_Unk_16]
	add r0, #1
	cmp r0, #0xb4
	blt loc_8007AEE
	mov r0, #0
loc_8007AEE:
	strb r0, [r5,#oBattleState_Unk_16]
loc_8007AF0:
	bl sub_802CDFE
loc_8007AF4:
	mov r0, #0
	bl handleCustHPBug_80102AC
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8007B0A
	mov r0, #1
	bl handleCustHPBug_80102AC
loc_8007B0A:
	ldr r0, [r5,#oBattleState_Unk_64]
	add r0, #1
	str r0, [r5,#oBattleState_Unk_64]
loc_8007B10:
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003E18
	bl sub_8004218
	bl sub_8004510
	bl sub_800C5E0
	bl sub_801BF64
	bl sub_802E156
	bl sub_8003C70
	bl sub_80046F8
	bl sub_80049B0
	bl sub_8009FCC
	mov r0, #0xe0
	mov r1, #0x90
	bl sub_803C59C
	pop {r4,pc}
	.balign 4, 0
off_8007B4C: .word off_8007B50
off_8007B50: .word sub_8009158+1
	.word sub_8009158+1
	.word sub_8009158+1
	.word sub_8009158+1
	.word sub_8009158+1
	.word sub_8009158+1
	.word sub_800961C+1
	.word sub_80099A4+1
	.word sub_8009158+1
	.word sub_8009C94+1
	.word sub_8009158+1
	.word sub_8009158+1
	thumb_func_end battle_update_8007A44

	thumb_local_start
sub_8007B80:
	push {lr}
	ldr r1, off_8007B90 // =off_8007B94
	ldrb r0, [r5,#oBattleState_Unk_01]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_8007B90: .word off_8007B94
off_8007B94: .word sub_8007B9C+1
	.word sub_8007CA0+1
	thumb_func_end sub_8007B80

	thumb_local_start
sub_8007B9C:
	push {lr}
	bl sub_800A01C
	ldr r1, off_8007BC4 // =off_8007BC8
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl RunBattleObjectLogic
	bl panel_800BFC4
	bl sub_80027B4
	bl sub_800286C
	bl sub_800A01C
	pop {pc}
	.balign 4, 0
off_8007BC4: .word off_8007BC8
off_8007BC8: .word sub_8007BD0+1
	.word sub_8007BF0+1
	thumb_func_end sub_8007B9C

	thumb_local_start
sub_8007BD0:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8007BE2
	mov r0, #0xa
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8007BEE
loc_8007BE2:
	ldrh r0, [r5,#oBattleState_Unk_28]
	sub r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	bge locret_8007BEE
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8007BEE:
	pop {pc}
	thumb_func_end sub_8007BD0

	thumb_local_start
sub_8007BF0:
	push {lr}
	bl eStruct200BC30_getJumpOffset00
	ldr r1, off_8007C00 // =off_8007C04
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_8007C00: .word off_8007C04
off_8007C04: .word sub_8007C14+1
	.word sub_8007C50+1
	.word sub_8007C50+1
	.word sub_8007C14+1
	thumb_func_end sub_8007BF0

	thumb_local_start
sub_8007C14:
	push {lr}
	bl sub_801FE5E
	tst r0, r0
	beq loc_8007C44
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8007C2E
	bl sub_803DDA4
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8007C4C
loc_8007C2E:
	bl sub_803DE24
	tst r0, r0
	beq loc_8007C3C
	ldrb r0, [r4,#1]
	cmp r0, #2
	beq locret_8007C4C
loc_8007C3C:
	bl sub_81440D8 // static () -> void
	bl sub_801FE64
loc_8007C44:
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8007C4C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8007C14

	thumb_local_start
sub_8007C50:
	push {lr}
	bl GetBattleEffects // () -> int
	ldr r1, off_8007C9C // =0x400 
	tst r0, r1
	beq loc_8007C74
	bl sub_800A832
	cmp r0, #5
	beq loc_8007C74
	cmp r0, #9
	beq loc_8007C74
	cmp r0, #0xa
	beq loc_8007C74
	bl sub_800AF50
	tst r0, r0
	beq loc_8007C90
loc_8007C74:
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8007C84
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	bl sub_803C754
	b locret_8007C98
loc_8007C84:
	bl test0x200bc50_0x5_813D60C
	tst r0, r0
	bne locret_8007C98
	bl sub_801FE64
loc_8007C90:
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8007C98:
	pop {pc}
	.balign 4, 0
off_8007C9C: .word 0x400
	thumb_func_end sub_8007C50

	thumb_local_start
sub_8007CA0:
	push {r4,r6,r7,lr}
	bl musicGameState_8000784 // () -> void
	mov r4, r10
	ldr r4, [r4,#oToolkit_S2001c04_Ptr]
	mov r6, r10
	ldr r6, [r6,#oToolkit_MainJumptableIndexPtr]
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	bl GetBattleEffects // () -> int
	ldr r1, dword_8007FEC // =0x400 
	tst r0, r1
	beq loc_8007D06
	bl sub_800A832
	cmp r0, #5
	beq loc_8007D06
	cmp r0, #9
	beq loc_8007D06
	cmp r0, #0xa
	beq loc_8007D06
	bl sub_800AF50
	tst r0, r0
	bne loc_8007CF2
	bl SetDummyBGScrollCallbacks
	bl zeroFill_e20094C0
	bl sub_80023A8
	ldr r1, [r5,#oBattleState_Unk_18]
	push {r1}
	bl battleSettings_802D2B2 // () -> BattleSettings*
	bl loc_8007204
	pop {r1}
	str r1, [r5,#oBattleState_Unk_18]
	b locret_8007E60
loc_8007CF2:
	mov r1, #3
	cmp r0, #2
	beq loc_8007D00
	mov r1, #1
	cmp r0, #1
	beq loc_8007D00
	mov r1, #2
loc_8007D00:
	mov r0, r1
	bl setTwoStructs_800A840
loc_8007D06:
	bl sub_800A832
	cmp r0, #1
	bne loc_8007D1A
	ldr r1, off_8007FF0 // =dword_2000B30
	ldrh r2, [r1]
	cmp r2, #0x11
	bge loc_8007D1A
	add r2, #1
	strh r2, [r1]
loc_8007D1A:
	cmp r0, #5
	bne loc_8007D4E
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8007D2A
	b loc_8007E38
loc_8007D2A:
	mov r0, #0
	bl sub_803F4EC
	movflag EVENT_1733
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	beq loc_8007E38
	bl SetDummyBGScrollCallbacks
	bl zeroFill_e20094C0
	bl sub_80023A8
	ldr r0, [r5,#oBattleState_BattleSettings]
	bl loc_80071FE
	b locret_8007E60
loc_8007D4E:
	bl sub_800FAE0
	bl sub_800A86E
	bl GetBattleEffects // () -> int
	mov r1, #0x40 
	tst r0, r1
	beq loc_8007D72
	bl GetCurPETNavi // () -> u8
	mov r1, #0x40
	ldrh r2, [r5,#oBattleState_Unk_34]
	cmp r2, #0
	bne loc_8007D6E
	mov r2, #1
loc_8007D6E:
	bl SetCurPETNaviStatsHword
loc_8007D72:
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_8007DE4
	mov r2, #0x80
	ldr r1, dword_8007FF4 // =0x10000
	tst r0, r1
	bne loc_8007D8A
	ldrb r0, [r5,#oBattleState_Unk_0d]
	bl callPossiblyGetBattleEmotion_8015B54
loc_8007D8A:
	push {r2}
	bl GetCurPETNavi // () -> u8
	pop {r2}
	mov r1, #0xe
	bl SetCurPETNaviStatsByte // (int a1, int a2, int a3) -> void
	bl GetBattleEffects // () -> int
	mov r1, r0
	mov r0, #3
	ldr r2, dword_8007FF8 // =0x400000
	tst r1, r2
	bne loc_8007DC4
	ldrb r0, [r5,#oBattleState_Unk_0d]
	mov r1, #0x21
	bl GetBattleNaviStatsByte
	push {r0}
	ldrb r0, [r5,#oBattleState_Unk_0d]
	mov r1, #2
	bl sub_800AB3A
	cmp r0, #0
	pop {r0}
	bne loc_8007DC4
	cmp r0, #3
	bge loc_8007DC4
	add r0, #1
loc_8007DC4:
	push {r0}
	bl GetCurPETNavi // () -> u8
	pop {r2}
	mov r1, #0x21
	bl SetCurPETNaviStatsByte // (int a1, int a2, int a3) -> void
	bl sub_800A832
	cmp r0, #1
	bne loc_8007DDE
	bl sub_802C9B8
loc_8007DDE:
	mov r0, #0
	strh r0, [r4,#0x12]
	strh r0, [r4,#0x14]
loc_8007DE4:
	bl sub_800A832
	cmp r0, #2
	bne loc_8007E26
	bl GetBattleEffects // () -> int
	ldr r1, dword_8007FFC // =0x800000 
	tst r0, r1
	beq loc_8007DFE
	push {r0}
	bl SetCurNaviHPToFull
	pop {r0}
loc_8007DFE:
	ldr r1, off_8008000 // =0x1000
	tst r0, r1
	beq loc_8007E14
	push {r0}
	bl GetCurPETNavi // () -> u8
	mov r1, #0x21
	mov r2, #3
	bl SetCurPETNaviStatsByte // (int a1, int a2, int a3) -> void
	pop {r0}
loc_8007E14:
	ldr r1, dword_8008004 // =0x40000
	tst r0, r1
	beq loc_8007E26
	bl GetCurPETNavi // () -> u8
	mov r1, #0xe
	mov r2, #0x80
	bl SetCurPETNaviStatsByte // (int a1, int a2, int a3) -> void
loc_8007E26:
	bl GetBattleEffects // () -> int
	mov r1, #0x10
	tst r0, r1
	beq loc_8007E34
	bl SetCurNaviHPToFull
loc_8007E34:
	bl sub_802CA82
loc_8007E38:
	mov r0, #0
	strb r0, [r7,#oGameState_BattlePaused]
	bl zeroFill_e20097A0
	mov r0, #0x40
	bl SetRenderInfoLCDControl // (a_00: u16) -> ()
	bl sub_800A892
	mov r0, #1
	bl clear_flags32_20093A4 // (flags32 flags) -> void
	movflag EVENT_1722_BEAST_LINK_GATE_RELATED
	bl ClearEventFlagFromImmediate
	mov r0, #0
	strb r0, [r5,#oBattleState_Unk_0a]
	bl SetPrimaryToolkitPointers // () -> ()
locret_8007E60:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8007CA0

	thumb_local_start
sub_8007E62:
	push {lr}
	ldr r1, off_8007EA8 // =off_8007EAC
	ldrb r0, [r5,#oBattleState_Unk_01]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003E18
	bl sub_8004218
	bl sub_8004510
	bl sub_800C5E0
	bl sub_801BF64
	bl sub_802E156
	bl sub_8003C70
	bl sub_80046F8
	bl sub_80049B0
	bl sub_8009FCC
	ldr r1, off_8008008 // =eStruct203F7D8
	mov r0, #2
	strb r0, [r1,#0x1] // (eStruct203F7D8+1 - 0x203f7d8)
	pop {pc}
	.balign 4, 0
off_8007EA8: .word off_8007EAC
off_8007EAC: .word sub_8007EB8+1
	.word sub_8007F14+1
	.word sub_8007F2C+1
	thumb_func_end sub_8007E62

	thumb_local_start
sub_8007EB8:
	push {r4,lr}
	bl PauseBattle
	bl sub_81440D8 // static () -> void
	bl sub_801FE64
	ldr r0, dword_800800C // =0x280000
	bl sub_801BED6
	ldr r0, dword_800800C // =0x280000
	bl sub_801DACC
	mov r0, #5
	bl setTwoStructs_800A840
	bl sub_80062EC
	bl GetCurPETNavi // () -> u8
	mov r4, r0
	bl GetBattleEffects // () -> int
	ldr r1, dword_8008010 // =0x200000 
	tst r0, r1
	beq loc_8007EEE
	mov r4, #0
loc_8007EEE:
	mov r1, #8
	tst r0, r1
	bne loc_8007F04
	mov r1, #4
	mul r4, r1
	mov r1, #0x20
	tst r0, r1
	bne loc_8007F00
	add r4, #3
loc_8007F00:
	mov r1, r4
	b loc_8007F08
loc_8007F04:
	mov r1, #0x5c
	add r1, r1, r4
loc_8007F08:
	ldr r0, off_8008014 // =TextScriptCommError87370C0
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_01]
	pop {r4,pc}
	thumb_func_end sub_8007EB8

	thumb_local_start
sub_8007F14:
	push {lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_8007F2A
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_01]
locret_8007F2A:
	pop {pc}
	thumb_func_end sub_8007F14

	thumb_local_start
sub_8007F2C:
	push {lr}
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne locret_8007F4C
	bl musicGameState_8000784 // () -> void
	mov r0, #0x1a
	bl FreeAllObjectsOfSpecifiedTypes
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_00]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8007F4C:
	pop {pc}
	thumb_func_end sub_8007F2C

	thumb_local_start
sub_8007F4E:
	push {lr}
	bl sub_800A01C
	ldr r1, off_8007F98 // =off_8007F9C
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003E18
	bl sub_8004218
	bl sub_8004510
	bl sub_800C5E0
	bl sub_801BF64
	bl sub_802E156
	bl sub_8003C70
	bl sub_80046F8
	bl sub_80049B0
	bl sub_8009FCC
	ldr r1, off_8008018 // =eStruct203F7D8
	mov r0, #2
	strb r0, [r1,#0x1] // (eStruct203F7D8+1 - 0x203f7d8)
	pop {pc}
	.balign 4, 0
off_8007F98: .word off_8007F9C
off_8007F9C: .word sub_8007FA4+1
	.word sub_8007FD2+1
	thumb_func_end sub_8007F4E

	thumb_local_start
sub_8007FA4:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8007FC4
	bl PauseBattle
	bl sub_801FE64
	bl sub_80062EC
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
loc_8007FC4:
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne locret_8007FD0
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8007FD0:
	pop {pc}
	thumb_func_end sub_8007FA4

	thumb_local_start
sub_8007FD2:
	push {lr}
	bl test0x200bc50_0x5_813D60C
	tst r0, r0
	bne locret_8007FE8
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_00]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8007FE8:
	pop {pc}

	thumb_local_start
// non-existent
removed_8007FEA:
	thumb_func_end removed_8007FEA
	.balign 4, 0

dword_8007FEC: .word 0x400
off_8007FF0: .word dword_2000B30
dword_8007FF4: .word 0x10000
dword_8007FF8: .word 0x400000
dword_8007FFC: .word 0x800000
off_8008000: .word 0x1000
dword_8008004: .word 0x40000
off_8008008: .word eStruct203F7D8
dword_800800C: .word 0x280000
dword_8008010: .word 0x200000
off_8008014: .word TextScriptCommError87370C0
off_8008018: .word eStruct203F7D8
	thumb_func_end sub_8007FD2

	thumb_local_start
sub_800801C:
	push {r5,lr}
	ldr r5, off_8008060 // =dword_203CA70
	ldr r1, off_8008034 // =off_8008038
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_802DE5C
	ldrb r0, [r5,#0x4] // (byte_203CA74 - 0x203ca70)
	pop {r5,pc}
	.balign 4, 0
off_8008034: .word off_8008038
off_8008038: .word sub_800840C+1
	.word sub_8008064+1
	.word sub_80080D2+1
	.word sub_80081A4+1
	.word sub_800825A+1
	.word sub_80082DC+1
	.word sub_800834A+1
	.word sub_80083E4+1
	.word sub_8008452+1
	.word sub_8008492+1
off_8008060: .word dword_203CA70
	thumb_func_end sub_800801C

	thumb_local_start
sub_8008064:
	push {lr}
	mov r0, #0
	bl sub_8012DFC
	mov r0, #1
	bl sub_8012DFC
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80080B2
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
	bl sub_800A97A
	tst r0, r0
	beq loc_8008096
	mov r0, #0xa5
	lsl r0, r0, #2
	sub r0, #1
	strh r0, [r5,#0xa]
	mov r0, #0x10
	mov r1, #0
	b sub_80080AE
loc_8008096:
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_80080A6
	mov r0, #0
	mov r1, #0
	b sub_80080AE
loc_80080A6:
	mov r0, #0xc
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#oBattleState_Unk_07]
sub_80080AE:
	bl sub_801E792
loc_80080B2:
	bl sub_801E754
	cmp r0, #0
	bne locret_80080D0
	mov r0, #0xff
	mov r1, #0
	bl sub_801E724
	mov r0, #0xff
	lsl r0, r0, #8
	add r0, #0xff
	bl sub_801E0C8
	mov r0, #8
	str r0, [r5]
locret_80080D0:
	pop {pc}
	thumb_func_end sub_8008064

	thumb_local_start
sub_80080D2:
	push {lr}
	mov r0, #0
	bl sub_8012DFC
	mov r0, #1
	bl sub_8012DFC
	bl UnpauseBattle
	mov r0, #1
	bl battle_setFlags
	bl sub_800AE0C
	bl sub_800A6A6
	bl sub_800A97A
	tst r0, r0
	beq loc_80080FE
	bl sub_800AB7C
loc_80080FE:
	bl sub_800A152
	cmp r0, #1
	bne loc_8008122
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrh r0, [r1,#oBattleState_Unk_3a]
	cmp r0, #0
	beq loc_8008116
	bl sub_800AAD6
	b locret_80081A2
loc_8008116:
	ldrb r0, [r1,#oBattleState_Unk_18]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_18]
	mov r0, #0xc
	str r0, [r5]
	b locret_80081A2
loc_8008122:
	cmp r0, #2
	bne loc_8008136
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_19]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_19]
	mov r0, #0x10
	str r0, [r5]
	b locret_80081A2
loc_8008136:
	cmp r0, #7
	bne loc_8008140
	mov r0, #0x18
	str r0, [r5]
	b locret_80081A2
loc_8008140:
	bl sub_800A046
	cmp r0, #0xff
	beq loc_8008158
	strb r0, [r5,#5]
	bl PauseBattle
	mov r0, #0x1c
	str r0, [r5]
	bl sub_801E15C
	b locret_80081A2
loc_8008158:
	bl sub_800A8F8
	cmp r0, #0
	bne loc_8008168
	bl sub_800A1D0
	beq locret_80081A2
	b loc_800819A
loc_8008168:
	bl sub_800A244
	beq locret_80081A2
	push {r0}
	mov r1, #1
	tst r0, r1
	beq loc_8008184
	mov r0, #0
	bl sub_802E070
	ldrh r1, [r0,#0x28]
	ldr r2, off_80084D0 // =0x2900
	sub r1, r1, r2
	strh r1, [r0,#0x28]
loc_8008184:
	pop {r0}
	mov r1, #2
	tst r0, r1
	beq loc_800819A
	mov r0, #1
	bl sub_802E070
	ldrh r1, [r0,#0x28]
	ldr r2, off_80084D0 // =0x2900
	sub r1, r1, r2
	strh r1, [r0,#0x28]
loc_800819A:
	bl PauseBattle
	mov r0, #0x20
	str r0, [r5]
locret_80081A2:
	pop {pc}
	thumb_func_end sub_80080D2

	thumb_local_start
sub_80081A4:
	push {r4,r6,lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008232
	ldr r0, dword_80084D4 // =0xe4c53
loc_80081AE:
	bl sub_801DACC
	ldr r0, dword_80084D4 // =0xe4c53
	bl sub_801BED6
	bl sub_800A7E2
	bl sub_8014040
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r1, [r0,#oBattleState_Unk_0d]
	strb r1, [r0,#oBattleState_Unk_10]
	mov r0, #4
	strb r0, [r5,#3]
	ldr r1, dword_80084D8 // =0x173
	ldr r2, dword_80084DC // =0x17e
	bl sub_800A7A6
	tst r0, r0
	beq loc_80081DE
	mov r0, #0x66
	strh r0, [r5,#8]
	b loc_8008232
loc_80081DE:
	bl GetBattleMode
	cmp r0, #4
	beq loc_80081EE
	cmp r0, #5
	beq loc_80081EE
	cmp r0, #8
	bne loc_80081F4
loc_80081EE:
	mov r2, #SONG_WINNER_0
	mov r4, #0x5e
	b loc_8008206
loc_80081F4:
	bl GetBattleEffects // () -> int
	mov r4, #0x5e 
	mov r2, #0x19
	mov r1, #2
	tst r0, r1
	bne loc_8008206
	mov r2, #SONG_WINNER_1
	mov r4, #0x66
loc_8008206:
	mov r0, r2
	bl PlayMusic // (song: u8) -> ()
	strh r4, [r5,#8]
	mov r6, #4
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8008222
	bl sub_800A8D4
	mov r6, r0
	b loc_800822C
loc_8008222:
	bl sub_800A152
	cmp r0, #7
	bne loc_800822C
	mov r6, #0x14
loc_800822C:
	mov r0, r6
	bl sub_801E792
loc_8008232:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_8008258
	mov r0, #8
	ldrsh r0, [r5,r0]
	tst r0, r0
	bgt locret_8008258
	mov r0, #1
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #0
	bl eStruct200A008_setUnk02
locret_8008258:
	pop {r4,r6,pc}
	thumb_func_end sub_80081A4

	thumb_local_start
sub_800825A:
	push {r4,lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80082B4
	ldr r0, dword_80084D4 // =0xe4c53
	bl sub_801DACC
	ldr r0, dword_80084D4 // =0xe4c53
	bl sub_801BED6
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r1, [r0,#oBattleState_Unk_0d]
	mov r2, #1
	eor r1, r2
	strb r1, [r0,#oBattleState_Unk_10]
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_800828A
	mov r0, #SONG_LOSER
	bl PlayMusic // (song: u8) -> ()
loc_800828A:
	bl GetBattleEffects // () -> int
	mov r1, #2
	tst r0, r1
	bne loc_8008298
	mov r4, #0x66
	b loc_800829A
loc_8008298:
	mov r4, #0x5e
loc_800829A:
	strh r4, [r5,#8]
	bl sub_800A152
	mov r4, r0
	bl sub_800A8B2
	cmp r4, #7
	bne loc_80082AC
	mov r0, #0x18
loc_80082AC:
	bl sub_801E792
	mov r0, #4
	strb r0, [r5,#3]
loc_80082B4:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_80082DA
	mov r0, #8
	ldrsh r0, [r5,r0]
	tst r0, r0
	bgt locret_80082DA
	mov r0, #2
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #1
	bl eStruct200A008_setUnk02
locret_80082DA:
	pop {r4,pc}
	thumb_func_end sub_800825A

	thumb_local_start
sub_80082DC:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80082FE
	ldr r0, dword_80084D4 // =0xe4c53
	bl sub_801DACC
	ldr r0, dword_80084D4 // =0xe4c53
	bl sub_801BED6
	mov r0, #0x66
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0x1c
	bl sub_801E792
loc_80082FE:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_8008348
	ldrh r0, [r5,#8]
	tst r0, r0
	blt locret_8008348
	bl GetBattleEffects // () -> int
	ldr r1, off_80084E0 // =0x400 
	tst r0, r1
	beq loc_8008338
	bl sub_800AF50
	cmp r0, #0
	beq loc_8008338
	cmp r0, #2
	beq loc_8008338
	cmp r0, #1
	bne loc_8008332
	mov r0, #0xc
	str r0, [r5]
	b locret_8008348
loc_8008332:
	mov r0, #0x10
	str r0, [r5]
	b locret_8008348
loc_8008338:
	mov r0, #3
	bl setTwoStructs_800A840
	mov r0, #3
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	strb r0, [r5,#4]
locret_8008348:
	pop {pc}
	thumb_func_end sub_80082DC

	thumb_local_start
sub_800834A:
	push {lr}
	ldr r1, off_8008358 // =off_800835C
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_8008358: .word off_800835C
off_800835C: .word sub_8008364+1
	.word sub_800838A+1
	thumb_func_end sub_800834A

	thumb_local_start
sub_8008364:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008374
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008374:
	ldrh r0, [r5,#8]
	add r0, #1
	strh r0, [r5,#8]
	cmp r0, #0x3c
	blt locret_8008388
	ldr r0, off_80084E4 // =0x800
	bl sub_801DACC
	mov r0, #4
	strh r0, [r5,#2]
locret_8008388:
	pop {pc}
	thumb_func_end sub_8008364

	thumb_local_start
sub_800838A:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80083AE
	mov r0, #1
	bl sub_801055E
	push {r0}
	mov r0, #0
	bl sub_801055E
	mov r1, r0
	pop {r0}
	bl sub_802CB38
	mov r0, #4
	strb r0, [r5,#3]
	b locret_80083E2
loc_80083AE:
	bl sub_802CB78
	tst r0, r0
	bne locret_80083E2
	cmp r1, #1
	bne loc_80083CA
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_18]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_18]
	mov r0, #0xc
	str r0, [r5]
	b locret_80083E2
loc_80083CA:
	cmp r1, #2
	bne loc_80083DE
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_19]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_19]
	mov r0, #0x10
	str r0, [r5]
	b locret_80083E2
loc_80083DE:
	mov r0, #0x14
	str r0, [r5]
locret_80083E2:
	pop {pc}
	thumb_func_end sub_800838A

	thumb_local_start
sub_80083E4:
	push {lr}
	ldrb r0, [r5,#5]
	bl sub_800A07C
	tst r0, r0
	beq locret_8008400
	mov r0, #0x9f
	bl PlaySoundEffect
	mov r0, #8
	str r0, [r5]
	ldr r0, off_8008408 // =0x200
	bl sub_801DACC
locret_8008400:
	pop {pc}
	.balign 4, 0
	.word dword_2036820
off_8008408: .word 0x200
	thumb_func_end sub_80083E4

	thumb_local_start
sub_800840C:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008420
	ldr r0, off_80084E8 // =byte_203F558
	ldr r1, off_80084EC // =byte_203F658
	bl sub_80147E4
	mov r0, #4
	strb r0, [r5,#3]
loc_8008420:
	bl sub_801483C
	tst r0, r0
	bne locret_8008450
	ldrb r0, [r5,#2]
	tst r0, r0
	bne loc_8008438
	bl sub_801482C
	mov r0, #4
	strb r0, [r5,#2]
	pop {pc}
loc_8008438:
	mov r0, #0
	bl battle_findPlayer
	bl sub_8015A38
	mov r0, #1
	bl battle_findPlayer
	bl sub_8015A38
	mov r0, #4
	str r0, [r5]
locret_8008450:
	pop {pc}
	thumb_func_end sub_800840C

	thumb_local_start
sub_8008452:
	push {lr}
	bl GetBattleMode
	cmp r0, #5
	beq loc_8008462
	bl TestBattleFlag_0x40
	bne loc_800848C
loc_8008462:
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008484
	bl sub_802D6A0
	mov r0, #0
	bl battle_findPlayer
	bl sub_8015A16
	mov r0, #1
	bl battle_findPlayer
	bl sub_8015A16
	mov r0, #4
	strb r0, [r5,#3]
loc_8008484:
	bl sub_802D6C4
	tst r0, r0
	bne locret_8008490
loc_800848C:
	mov r0, #0x24
	str r0, [r5]
locret_8008490:
	pop {pc}
	thumb_func_end sub_8008452

	thumb_local_start
sub_8008492:
	push {lr}
	bl GetBattleMode
	cmp r0, #5
	beq loc_80084A2
	bl TestBattleFlag_0x40
	bne loc_80084BA
loc_80084A2:
	bl sub_801483C
	tst r0, r0
	bne locret_80084BE
	ldrb r0, [r5,#2]
	tst r0, r0
	bne loc_80084BA
	bl sub_801482C
	mov r0, #4
	strb r0, [r5,#2]
	pop {pc}
loc_80084BA:
	mov r0, #6
	strb r0, [r5,#4]
locret_80084BE:
	pop {pc}
	thumb_func_end sub_8008492

	thumb_local_start
sub_80084C0:
	push {r5,lr}
	// memBlock
	ldr r0, off_80084CC // =dword_203CA70
	// size
	mov r1, #0xc
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {r5,pc}
	.balign 4, 0
off_80084CC: .word dword_203CA70
off_80084D0: .word 0x2900
dword_80084D4: .word 0xE4C53
dword_80084D8: .word 0x173
dword_80084DC: .word 0x17E
off_80084E0: .word 0x400
off_80084E4: .word 0x800
off_80084E8: .word byte_203F558
off_80084EC: .word byte_203F658
	thumb_func_end sub_80084C0

	thumb_local_start
sub_80084F0:
	push {r5,lr}
	ldr r5, off_8008524 // =dword_203CA70
	ldr r1, off_8008504 // =off_8008508
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	ldrb r0, [r5,#0x4] // (byte_203CA74 - 0x203ca70)
	pop {r5,pc}
	.balign 4, 0
off_8008504: .word off_8008508
off_8008508: .word sub_8008528+1
	.word sub_800855E+1
	.word sub_8008664+1
	.word sub_8008764+1
	.word sub_80087D8+1
	.word sub_8008840+1
	.word sub_8008900+1
off_8008524: .word dword_203CA70
	thumb_func_end sub_80084F0

	thumb_local_start
sub_8008528:
	push {lr}
	mov r0, #0
	bl sub_8012DFC
	mov r0, #1
	bl sub_8012DFC
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008550
	mov r0, #0
	strb r0, [r5,#4]
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0
	mov r1, #0
	bl sub_801E792
loc_8008550:
	bl sub_801E754
	cmp r0, #0
	bne locret_800855C
	mov r0, #4
	str r0, [r5]
locret_800855C:
	pop {pc}
	thumb_func_end sub_8008528

	thumb_local_start
sub_800855E:
	push {lr}
	bl sub_80085FE
	mov r0, #0
	bl sub_8012DFC
	mov r0, #1
	bl sub_8012DFC
	bl UnpauseBattle
	mov r0, #1
	bl battle_setFlags
	bl sub_800AE0C
	bl sub_800A6A6
	bl sub_800A97A
	tst r0, r0
	beq loc_800858E
	bl sub_800AB7C
loc_800858E:
	bl sub_800A152
	cmp r0, #1
	bne loc_80085A6
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_18]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_18]
	mov r0, #8
	str r0, [r5]
	b locret_80085FC
loc_80085A6:
	cmp r0, #2
	bne loc_80085BA
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_19]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_19]
	mov r0, #0xc
	str r0, [r5]
	b locret_80085FC
loc_80085BA:
	cmp r0, #7
	bne loc_80085C4
	mov r0, #0x14
	str r0, [r5]
	b locret_80085FC
loc_80085C4:
	bl sub_800A046
	cmp r0, #0xff
	beq loc_80085DC
	strb r0, [r5,#5]
	bl PauseBattle
	mov r0, #0x18
	str r0, [r5]
	bl sub_801E15C
	b locret_80085FC
loc_80085DC:
	bl battle_isTimeStop
	bne loc_80085E8
	mov r0, #0xd
	bl sub_801DFB8
loc_80085E8:
	bl sub_800A21C
	cmp r0, #0
	beq locret_80085FC
	cmp r0, #1
	bne locret_80085FC
	bl PauseBattle
	mov r0, #0x14
	str r0, [r5]
locret_80085FC:
	pop {pc}
	thumb_func_end sub_800855E

	thumb_local_start
sub_80085FE:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_BattleStatePtr]
	mov r0, #oBattleState_AlivePlayerActors
	ldr r0, [r5,r0]
	mov r1, #oBattleState_AlivePlayerActors+4
	ldr r1, [r5,r1]
	ldrb r2, [r5,#oBattleState_Unk_04]
	bl sub_8008622
	mov r0, #oBattleState_AliveOpponentActors
	ldr r0, [r5,r0]
	mov r1, #oBattleState_AliveOpponentActors+4
	ldr r1, [r5,r1]
	ldrb r2, [r5,#oBattleState_Unk_05]
	bl sub_8008622
	pop {r5,pc}
	thumb_func_end sub_80085FE

	thumb_local_start
sub_8008622:
	push {lr}
	cmp r2, #2
	bge loc_8008630
	mov r2, #0
	cmp r0, #0
	bne locret_8008662
	b loc_800863A
loc_8008630:
	mov r2, #0
	cmp r0, #0
	beq loc_800863A
	cmp r1, #0
	bne loc_800864C
loc_800863A:
	push {r0-r2}
	ldr r0, dword_8008938 // =0x820080
	bl sub_801DACC
	ldr r0, dword_8008938 // =0x820080
	bl sub_801BED6
	pop {r0-r2}
	b loc_8008656
loc_800864C:
	ldrh r2, [r0,#0x24]
	ldrh r3, [r1,#0x24]
	cmp r2, r3
	blt loc_8008656
	mov r2, r3
loc_8008656:
	tst r0, r0
	beq loc_800865C
	strh r2, [r0,#0x24]
loc_800865C:
	tst r1, r1
	beq locret_8008662
	strh r2, [r1,#0x24]
locret_8008662:
	pop {pc}
	thumb_func_end sub_8008622

	thumb_local_start
sub_8008664:
	push {lr}
	ldr r1, off_8008674 // =off_8008678
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8008674: .word off_8008678
off_8008678: .word sub_8008688+1
	.word sub_80086F8+1
	.word sub_8008716+1
	.word sub_800873A+1
	thumb_func_end sub_8008664

	thumb_local_start
sub_8008688:
	push {r4,r6,lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne .loc_80086DC
	bl sub_800A84E
	mov r6, r0
	ldr r0, dword_800893C // =0x824c43
	bl sub_801DACC
	ldr r0, dword_800893C // =0x824c43
	bl sub_801BED6
	bl sub_800A7E2
	bl sub_8014040
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r1, [r0,#oBattleState_Unk_0d]
	strb r1, [r0,#oBattleState_Unk_10]
	mov r0, #4
	strb r0, [r5,#3]
	bl GetBattleEffects // () -> int
	mov r2, #0x19
	mov r4, #0x41 
	mov r1, #2
	tst r0, r1
	bne .loc_80086C8
	mov r2, #SONG_WINNER_1
	mov r4, #0x66
.loc_80086C8:
	cmp r6, #1
	bne .playSong
	mov r2, #SONG_ACDC_TOWN
.playSong:
	mov r0, r2
	bl PlayMusic // (song: u8) -> ()
	strh r4, [r5,#8]
	mov r0, #0x14
	bl sub_801E792
.loc_80086DC:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne .ret
	mov r0, #8
	ldrsh r0, [r5,r0]
	tst r0, r0
	bgt .ret
	mov r0, #0xc
	strh r0, [r5,#2]
.ret:
	pop {r4,r6,pc}
	thumb_func_end sub_8008688

	thumb_local_start
sub_80086F8:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008708
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008708:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_8008714
	mov r0, #8
	strh r0, [r5,#2]
locret_8008714:
	pop {pc}
	thumb_func_end sub_80086F8

	thumb_local_start
sub_8008716:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_800872C
	mov r0, #0x58
	bl sub_801E792
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_800872C:
	bl sub_801E754
	cmp r0, #0
	bne locret_8008738
	mov r0, #0xc
	strh r0, [r5,#2]
locret_8008738:
	pop {pc}
	thumb_func_end sub_8008716

	thumb_local_start
sub_800873A:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_800874A
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_800874A:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_8008762
	mov r0, #1
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #0
	bl eStruct200A008_setUnk02
locret_8008762:
	pop {pc}
	thumb_func_end sub_800873A

	thumb_local_start
sub_8008764:
	push {r4,lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80087B0
	ldr r0, dword_800893C // =0x824c43
	bl sub_801DACC
	ldr r0, dword_800893C // =0x824c43
	bl sub_801BED6
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r1, [r0,#oBattleState_Unk_0d]
	mov r2, #1
	eor r1, r2
	strb r1, [r0,#oBattleState_Unk_10]
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8008794
	mov r0, #SONG_LOSER
	bl PlayMusic // (song: u8) -> ()
loc_8008794:
	bl GetBattleEffects // () -> int
	mov r1, #2
	tst r0, r1
	bne loc_80087A2
	mov r4, #0x66
	b loc_80087A4
loc_80087A2:
	mov r4, #0x41
loc_80087A4:
	strh r4, [r5,#8]
	mov r0, #0x18
	bl sub_801E792
	mov r0, #4
	strb r0, [r5,#3]
loc_80087B0:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_80087D6
	mov r0, #8
	ldrsh r0, [r5,r0]
	tst r0, r0
	bgt locret_80087D6
	mov r0, #2
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #1
	bl eStruct200A008_setUnk02
locret_80087D6:
	pop {r4,pc}
	thumb_func_end sub_8008764

	thumb_local_start
sub_80087D8:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80087FA
	ldr r0, dword_800893C // =0x824c43
	bl sub_801DACC
	ldr r0, dword_800893C // =0x824c43
	bl sub_801BED6
	mov r0, #0x66
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0x1c
	bl sub_801E792
loc_80087FA:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_800883E
	ldrh r0, [r5,#8]
	tst r0, r0
	blt locret_800883E
	bl GetBattleEffects // () -> int
	ldr r1, off_8008940 // =0x400 
	tst r0, r1
	beq loc_8008834
	bl sub_800AF50
	cmp r0, #0
	beq loc_8008834
	cmp r0, #2
	beq loc_8008834
	cmp r0, #1
	bne loc_800882E
	mov r0, #8
	str r0, [r5]
	b locret_800883E
loc_800882E:
	mov r0, #0xc
	str r0, [r5]
	b locret_800883E
loc_8008834:
	mov r0, #3
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
locret_800883E:
	pop {pc}
	thumb_func_end sub_80087D8

	thumb_local_start
sub_8008840:
	push {lr}
	ldr r1, off_8008850 // =off_8008854
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0
off_8008850: .word off_8008854
off_8008854: .word sub_8008864+1
	.word sub_8008894+1
	.word sub_80088B2+1
	.word sub_80088D6+1
	thumb_func_end sub_8008840

	thumb_local_start
sub_8008864:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008886
	ldr r0, dword_800893C // =0x824c43
	bl sub_801DACC
	ldr r0, dword_800893C // =0x824c43
	bl sub_801BED6
	mov r0, #0x54
	bl sub_801E792
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008886:
	bl sub_801E754
	cmp r0, #0
	bne locret_8008892
	mov r0, #4
	strh r0, [r5,#2]
locret_8008892:
	pop {pc}
	thumb_func_end sub_8008864

	thumb_local_start
sub_8008894:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80088A4
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_80088A4:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_80088B0
	mov r0, #8
	strh r0, [r5,#2]
locret_80088B0:
	pop {pc}
	thumb_func_end sub_8008894

	thumb_local_start
sub_80088B2:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80088C8
	mov r0, #0x1c
	bl sub_801E792
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_80088C8:
	bl sub_801E754
	cmp r0, #0
	bne locret_80088D4
	mov r0, #0xc
	strh r0, [r5,#2]
locret_80088D4:
	pop {pc}
	thumb_func_end sub_80088B2

	thumb_local_start
sub_80088D6:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80088E6
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_80088E6:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_80088FE
	mov r0, #7
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #1
	bl eStruct200A008_setUnk02
locret_80088FE:
	pop {pc}
	thumb_func_end sub_80088D6

	thumb_local_start
sub_8008900:
	push {lr}
	ldrb r0, [r5,#5]
	bl sub_800A07C
	tst r0, r0
	beq locret_800891C
	mov r0, #0x9f
	bl PlaySoundEffect
	mov r0, #4
	str r0, [r5]
	ldr r0, off_8008924 // =0x200
	bl sub_801DACC
locret_800891C:
	pop {pc}
	.balign 4, 0
	.word dword_2036820
off_8008924: .word 0x200
	thumb_func_end sub_8008900

	thumb_local_start
sub_8008928:
	push {lr}
	// memBlock
	ldr r0, off_8008934 // =dword_203CA70
	// size
	mov r1, #0xc
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {pc}
	.balign 4, 0
off_8008934: .word dword_203CA70
dword_8008938: .word 0x820080
dword_800893C: .word 0x824C43
off_8008940: .word 0x400
	.word 0, 0
	.byte 0, 0, 0, 0
	thumb_func_end sub_8008928

	thumb_local_start
sub_8008950:
	push {r5,lr}
	ldr r5, off_8008988 // =dword_203CA70
	ldr r1, off_8008968 // =off_800896C
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_802DE5C
	ldrb r0, [r5,#0x4] // (byte_203CA74 - 0x203ca70)
	pop {r5,pc}
	.balign 4, 0
off_8008968: .word off_800896C
off_800896C: .word sub_800898C+1
	.word sub_80089CC+1
	.word sub_8008A7C+1
	.word sub_8008B7C+1
	.word sub_8008BF0+1
	.word sub_8008C58+1
	.word sub_8008D18+1
off_8008988: .word dword_203CA70
	thumb_func_end sub_8008950

	thumb_local_start
sub_800898C:
	push {lr}
	mov r0, #0
	bl sub_8012DFC
	mov r0, #1
	bl sub_8012DFC
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80089BE
	mov r0, #0
	strb r0, [r5,#4]
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
	bl sub_801DF0C
	mov r0, #0
	bl SetCustGauge
	mov r0, #0
	mov r1, #0
	bl sub_801E792
loc_80089BE:
	bl sub_801E754
	cmp r0, #0
	bne locret_80089CA
	mov r0, #4
	str r0, [r5]
locret_80089CA:
	pop {pc}
	thumb_func_end sub_800898C

	thumb_local_start
sub_80089CC:
	push {lr}
	mov r0, #0
	bl sub_8012DFC
	mov r0, #1
	bl sub_8012DFC
	bl UnpauseBattle
	mov r0, #1
	bl battle_setFlags
	bl sub_800AE0C
	bl sub_800A6A6
	bl sub_800A97A
	tst r0, r0
	beq loc_80089F8
	bl sub_800AB7C
loc_80089F8:
	bl sub_800A152
	cmp r0, #1
	bne loc_8008A16
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_18]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_18]
	ldr r0, dword_8008D50 // =0x4000
	bl SetCustGauge
	mov r0, #8
	str r0, [r5]
	b locret_8008A60
loc_8008A16:
	cmp r0, #2
	bne loc_8008A2A
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_19]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_19]
	mov r0, #0xc
	str r0, [r5]
	b locret_8008A60
loc_8008A2A:
	cmp r0, #7
	bne loc_8008A34
	mov r0, #0x14
	str r0, [r5]
	b locret_8008A60
loc_8008A34:
	bl sub_800A046
	cmp r0, #0xff
	beq loc_8008A4C
	strb r0, [r5,#5]
	bl PauseBattle
	mov r0, #0x18
	str r0, [r5]
	bl sub_801E15C
	b locret_8008A60
loc_8008A4C:
	bl sub_800A21C
	cmp r0, #0
	beq locret_8008A60
	cmp r0, #1
	bne locret_8008A60
	bl PauseBattle
	mov r0, #0x14
	str r0, [r5]
locret_8008A60:
	pop {pc}
	.word 0, 0, 0
	.balign 4, 0
	.word byte_8008A74
byte_8008A74: .byte 0x10, 0x0, 0x25, 0x33, 0x64, 0x0, 0x0, 0x0
	thumb_func_end sub_80089CC

	thumb_local_start
sub_8008A7C:
	push {lr}
	ldr r1, off_8008A8C // =off_8008A90
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8008A8C: .word off_8008A90
off_8008A90: .word sub_8008AA0+1
	.word sub_8008B10+1
	.word sub_8008B2E+1
	.word sub_8008B52+1
	thumb_func_end sub_8008A7C

	thumb_local_start
sub_8008AA0:
	push {r4,r6,lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008AF4
	bl sub_800A84E
	mov r6, r0
	ldr r0, dword_8008D54 // =0x4c43
	bl sub_801DACC
	ldr r0, dword_8008D54 // =0x4c43
	bl sub_801BED6
	bl sub_800A7E2
	bl sub_8014040
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r1, [r0,#oBattleState_Unk_0d]
	strb r1, [r0,#oBattleState_Unk_10]
	mov r0, #4
	strb r0, [r5,#3]
	bl GetBattleEffects // () -> int
	mov r2, #0x19
	mov r4, #0x41 
	mov r1, #2
	tst r0, r1
	bne loc_8008AE0
	mov r2, #SONG_WINNER_1
	mov r4, #0x66
loc_8008AE0:
	cmp r6, #1
	bne loc_8008AE6
	mov r2, #SONG_ACDC_TOWN
loc_8008AE6:
	mov r0, r2
	bl PlayMusic // (song: u8) -> ()
	strh r4, [r5,#8]
	mov r0, #0x14
	bl sub_801E792
loc_8008AF4:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_8008B0E
	mov r0, #8
	ldrsh r0, [r5,r0]
	tst r0, r0
	bgt locret_8008B0E
	mov r0, #0xc
	strh r0, [r5,#2]
locret_8008B0E:
	pop {r4,r6,pc}
	thumb_func_end sub_8008AA0

	thumb_local_start
sub_8008B10:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008B20
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008B20:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_8008B2C
	mov r0, #8
	strh r0, [r5,#2]
locret_8008B2C:
	pop {pc}
	thumb_func_end sub_8008B10

	thumb_local_start
sub_8008B2E:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008B44
	mov r0, #0x58
	bl sub_801E792
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008B44:
	bl sub_801E754
	cmp r0, #0
	bne locret_8008B50
	mov r0, #0xc
	strh r0, [r5,#2]
locret_8008B50:
	pop {pc}
	thumb_func_end sub_8008B2E

	thumb_local_start
sub_8008B52:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008B62
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008B62:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_8008B7A
	mov r0, #1
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #0
	bl eStruct200A008_setUnk02
locret_8008B7A:
	pop {pc}
	thumb_func_end sub_8008B52

	thumb_local_start
sub_8008B7C:
	push {r4,lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008BC8
	ldr r0, dword_8008D54 // =0x4c43
	bl sub_801DACC
	ldr r0, dword_8008D54 // =0x4c43
	bl sub_801BED6
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r1, [r0,#oBattleState_Unk_0d]
	mov r2, #1
	eor r1, r2
	strb r1, [r0,#oBattleState_Unk_10]
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8008BAC
	mov r0, #SONG_LOSER
	bl PlayMusic // (song: u8) -> ()
loc_8008BAC:
	bl GetBattleEffects // () -> int
	mov r1, #2
	tst r0, r1
	bne loc_8008BBA
	mov r4, #0x66
	b loc_8008BBC
loc_8008BBA:
	mov r4, #0x41
loc_8008BBC:
	strh r4, [r5,#8]
	mov r0, #0x18
	bl sub_801E792
	mov r0, #4
	strb r0, [r5,#3]
loc_8008BC8:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_8008BEE
	mov r0, #8
	ldrsh r0, [r5,r0]
	tst r0, r0
	bgt locret_8008BEE
	mov r0, #2
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #1
	bl eStruct200A008_setUnk02
locret_8008BEE:
	pop {r4,pc}
	thumb_func_end sub_8008B7C

	thumb_local_start
sub_8008BF0:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008C12
	ldr r0, dword_8008D54 // =0x4c43
	bl sub_801DACC
	ldr r0, dword_8008D54 // =0x4c43
	bl sub_801BED6
	mov r0, #0x66
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0x1c
	bl sub_801E792
loc_8008C12:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_8008C56
	ldrh r0, [r5,#8]
	tst r0, r0
	blt locret_8008C56
	bl GetBattleEffects // () -> int
	ldr r1, off_8008D58 // =0x400 
	tst r0, r1
	beq loc_8008C4C
	bl sub_800AF50
	cmp r0, #0
	beq loc_8008C4C
	cmp r0, #2
	beq loc_8008C4C
	cmp r0, #1
	bne loc_8008C46
	mov r0, #8
	str r0, [r5]
	b locret_8008C56
loc_8008C46:
	mov r0, #0xc
	str r0, [r5]
	b locret_8008C56
loc_8008C4C:
	mov r0, #3
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
locret_8008C56:
	pop {pc}
	thumb_func_end sub_8008BF0

	thumb_local_start
sub_8008C58:
	push {lr}
	ldr r1, off_8008C68 // =off_8008C6C
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8008C68: .word off_8008C6C
off_8008C6C: .word sub_8008C7C+1
	.word sub_8008CAC+1
	.word sub_8008CCA+1
	.word sub_8008CEE+1
	thumb_func_end sub_8008C58

	thumb_local_start
sub_8008C7C:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008C9E
	ldr r0, dword_8008D54 // =0x4c43
	bl sub_801DACC
	ldr r0, dword_8008D54 // =0x4c43
	bl sub_801BED6
	mov r0, #0x54
	bl sub_801E792
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008C9E:
	bl sub_801E754
	cmp r0, #0
	bne locret_8008CAA
	mov r0, #4
	strh r0, [r5,#2]
locret_8008CAA:
	pop {pc}
	thumb_func_end sub_8008C7C

	thumb_local_start
sub_8008CAC:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008CBC
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008CBC:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_8008CC8
	mov r0, #8
	strh r0, [r5,#2]
locret_8008CC8:
	pop {pc}
	thumb_func_end sub_8008CAC

	thumb_local_start
sub_8008CCA:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008CE0
	mov r0, #0x1c
	bl sub_801E792
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008CE0:
	bl sub_801E754
	cmp r0, #0
	bne locret_8008CEC
	mov r0, #0xc
	strh r0, [r5,#2]
locret_8008CEC:
	pop {pc}
	thumb_func_end sub_8008CCA

	thumb_local_start
sub_8008CEE:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008CFE
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008CFE:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_8008D16
	mov r0, #7
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #1
	bl eStruct200A008_setUnk02
locret_8008D16:
	pop {pc}
	thumb_func_end sub_8008CEE

	thumb_local_start
sub_8008D18:
	push {lr}
	ldrb r0, [r5,#5]
	bl sub_800A07C
	tst r0, r0
	beq locret_8008D34
	mov r0, #0x9f
	bl PlaySoundEffect
	mov r0, #4
	str r0, [r5]
	ldr r0, off_8008D3C // =0x200
	bl sub_801DACC
locret_8008D34:
	pop {pc}
	.balign 4, 0
	.word dword_2036820
off_8008D3C: .word 0x200
	thumb_func_end sub_8008D18

	thumb_local_start
sub_8008D40:
	push {lr}
	// memBlock
	ldr r0, off_8008D4C // =dword_203CA70
	// size
	mov r1, #0xc
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {pc}
	.balign 4, 0
off_8008D4C: .word dword_203CA70
dword_8008D50: .word 0x4000
dword_8008D54: .word 0x4C43
off_8008D58: .word 0x400
	.word 0x0
	thumb_func_end sub_8008D40

	thumb_local_start
sub_8008D60:
	push {r5,lr}
	ldr r5, off_8008D98 // =dword_203CA70
	ldr r1, off_8008D78 // =off_8008D7C
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_802DE5C
	ldrb r0, [r5,#0x4] // (byte_203CA74 - 0x203ca70)
	pop {r5,pc}
	.balign 4, 0
off_8008D78: .word off_8008D7C
off_8008D7C: .word sub_8008D9C+1
	.word sub_8008DDC+1
	.word sub_8008E7C+1
	.word sub_8008F7C+1
	.word sub_8008FF0+1
	.word sub_8009058+1
	.word sub_8009118+1
off_8008D98: .word dword_203CA70
	thumb_func_end sub_8008D60

	thumb_local_start
sub_8008D9C:
	push {lr}
	mov r0, #0
	bl sub_8012DFC
	mov r0, #1
	bl sub_8012DFC
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008DCE
	mov r0, #0
	strb r0, [r5,#4]
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
	bl sub_801DF0C
	mov r0, #0
	bl SetCustGauge
	mov r0, #0
	mov r1, #0
	bl sub_801E792
loc_8008DCE:
	bl sub_801E754
	cmp r0, #0
	bne locret_8008DDA
	mov r0, #4
	str r0, [r5]
locret_8008DDA:
	pop {pc}
	thumb_func_end sub_8008D9C

	thumb_local_start
sub_8008DDC:
	push {lr}
	mov r0, #0
	bl sub_8012DFC
	mov r0, #1
	bl sub_8012DFC
	bl UnpauseBattle
	mov r0, #1
	bl battle_setFlags
	bl sub_800AE0C
	bl sub_800A6A6
	bl sub_800A97A
	tst r0, r0
	beq loc_8008E08
	bl sub_800AB7C
loc_8008E08:
	bl sub_800A152
	cmp r0, #1
	bne loc_8008E20
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_18]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_18]
	mov r0, #8
	str r0, [r5]
	b locret_8008E6A
loc_8008E20:
	cmp r0, #2
	bne loc_8008E34
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_19]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_19]
	mov r0, #0xc
	str r0, [r5]
	b locret_8008E6A
loc_8008E34:
	cmp r0, #7
	bne loc_8008E3E
	mov r0, #0x14
	str r0, [r5]
	b locret_8008E6A
loc_8008E3E:
	bl sub_800A046
	cmp r0, #0xff
	beq loc_8008E56
	strb r0, [r5,#5]
	bl PauseBattle
	mov r0, #0x18
	str r0, [r5]
	bl sub_801E15C
	b locret_8008E6A
loc_8008E56:
	bl sub_800A21C
	cmp r0, #0
	beq locret_8008E6A
	cmp r0, #1
	bne locret_8008E6A
	bl PauseBattle
	mov r0, #0x14
	str r0, [r5]
locret_8008E6A:
	pop {pc}
	.word 0x0
	.word byte_8008E74
	.balign 4, 0
byte_8008E74: .byte 0x10, 0x0, 0x25, 0x33, 0x64, 0x0, 0x0, 0x0
	thumb_func_end sub_8008DDC

	thumb_local_start
sub_8008E7C:
	push {lr}
	ldr r1, off_8008E8C // =off_8008E90
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8008E8C: .word off_8008E90
off_8008E90: .word sub_8008EA0+1
	.word sub_8008F10+1
	.word sub_8008F2E+1
	.word sub_8008F52+1
	thumb_func_end sub_8008E7C

	thumb_local_start
sub_8008EA0:
	push {r4,r6,lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008EF4
	bl sub_800A84E
	mov r6, r0
	ldr r0, dword_8009150 // =0x4c43
	bl sub_801DACC
	ldr r0, dword_8009150 // =0x4c43
	bl sub_801BED6
	bl sub_800A7E2
	bl sub_8014040
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r1, [r0,#oBattleState_Unk_0d]
	strb r1, [r0,#oBattleState_Unk_10]
	mov r0, #4
	strb r0, [r5,#3]
	bl GetBattleEffects // () -> int
	mov r2, #0x19
	mov r4, #0x41
	mov r1, #2
	tst r0, r1
	bne loc_8008EE0
	mov r2, #0x1f
	mov r4, #0x66
loc_8008EE0:
	cmp r6, #1
	bne loc_8008EE6
	mov r2, #0x24
loc_8008EE6:
	mov r0, r2
	bl PlayMusic // (song: u8) -> ()
	strh r4, [r5,#8]
	mov r0, #0x14
	bl sub_801E792
loc_8008EF4:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_8008F0E
	mov r0, #8
	ldrsh r0, [r5,r0]
	tst r0, r0
	bgt locret_8008F0E
	mov r0, #0xc
	strh r0, [r5,#2]
locret_8008F0E:
	pop {r4,r6,pc}
	thumb_func_end sub_8008EA0

	thumb_local_start
sub_8008F10:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008F20
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008F20:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_8008F2C
	mov r0, #8
	strh r0, [r5,#2]
locret_8008F2C:
	pop {pc}
	thumb_func_end sub_8008F10

	thumb_local_start
sub_8008F2E:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008F44
	mov r0, #0x58
	bl sub_801E792
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008F44:
	bl sub_801E754
	cmp r0, #0
	bne locret_8008F50
	mov r0, #0xc
	strh r0, [r5,#2]
locret_8008F50:
	pop {pc}
	thumb_func_end sub_8008F2E

	thumb_local_start
sub_8008F52:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008F62
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_8008F62:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_8008F7A
	mov r0, #1
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #0
	bl eStruct200A008_setUnk02
locret_8008F7A:
	pop {pc}
	thumb_func_end sub_8008F52

	thumb_local_start
sub_8008F7C:
	push {r4,lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8008FC8
	ldr r0, dword_8009150 // =0x4c43
	bl sub_801DACC
	ldr r0, dword_8009150 // =0x4c43
	bl sub_801BED6
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r1, [r0,#oBattleState_Unk_0d]
	mov r2, #1
	eor r1, r2
	strb r1, [r0,#oBattleState_Unk_10]
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8008FAC
	mov r0, #SONG_LOSER
	bl PlayMusic // (song: u8) -> ()
loc_8008FAC:
	bl GetBattleEffects // () -> int
	mov r1, #2
	tst r0, r1
	bne loc_8008FBA
	mov r4, #0x66
	b loc_8008FBC
loc_8008FBA:
	mov r4, #0x41
loc_8008FBC:
	strh r4, [r5,#8]
	mov r0, #0x18
	bl sub_801E792
	mov r0, #4
	strb r0, [r5,#3]
loc_8008FC8:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_8008FEE
	mov r0, #8
	ldrsh r0, [r5,r0]
	tst r0, r0
	bgt locret_8008FEE
	mov r0, #2
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #1
	bl eStruct200A008_setUnk02
locret_8008FEE:
	pop {r4,pc}
	thumb_func_end sub_8008F7C

	thumb_local_start
sub_8008FF0:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8009012
	ldr r0, dword_8009150 // =0x4c43
	bl sub_801DACC
	ldr r0, dword_8009150 // =0x4c43
	bl sub_801BED6
	mov r0, #0x66
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0x1c
	bl sub_801E792
loc_8009012:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bl sub_801E754
	cmp r0, #0
	bne locret_8009056
	ldrh r0, [r5,#8]
	tst r0, r0
	blt locret_8009056
	bl GetBattleEffects // () -> int
	ldr r1, off_8009154 // =0x400 
	tst r0, r1
	beq loc_800904C
	bl sub_800AF50
	cmp r0, #0
	beq loc_800904C
	cmp r0, #2
	beq loc_800904C
	cmp r0, #1
	bne loc_8009046
	mov r0, #8
	str r0, [r5]
	b locret_8009056
loc_8009046:
	mov r0, #0xc
	str r0, [r5]
	b locret_8009056
loc_800904C:
	mov r0, #3
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
locret_8009056:
	pop {pc}
	thumb_func_end sub_8008FF0

	thumb_local_start
sub_8009058:
	push {lr}
	ldr r1, off_8009068 // =off_800906C
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009068: .word off_800906C
off_800906C: .word sub_800907C+1
	.word sub_80090AC+1
	.word sub_80090CA+1
	.word sub_80090EE+1
	thumb_func_end sub_8009058

	thumb_local_start
sub_800907C:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_800909E
	ldr r0, dword_8009150 // =0x4c43
	bl sub_801DACC
	ldr r0, dword_8009150 // =0x4c43
	bl sub_801BED6
	mov r0, #0x54
	bl sub_801E792
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_800909E:
	bl sub_801E754
	cmp r0, #0
	bne locret_80090AA
	mov r0, #4
	strh r0, [r5,#2]
locret_80090AA:
	pop {pc}
	thumb_func_end sub_800907C

	thumb_local_start
sub_80090AC:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80090BC
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_80090BC:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_80090C8
	mov r0, #8
	strh r0, [r5,#2]
locret_80090C8:
	pop {pc}
	thumb_func_end sub_80090AC

	thumb_local_start
sub_80090CA:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80090E0
	mov r0, #0x1c
	bl sub_801E792
	mov r0, #0
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_80090E0:
	bl sub_801E754
	cmp r0, #0
	bne locret_80090EC
	mov r0, #0xc
	strh r0, [r5,#2]
locret_80090EC:
	pop {pc}
	thumb_func_end sub_80090CA

	thumb_local_start
sub_80090EE:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80090FE
	mov r0, #0x1e
	strh r0, [r5,#8]
	mov r0, #4
	strb r0, [r5,#3]
loc_80090FE:
	ldrh r0, [r5,#8]
	sub r0, #1
	strh r0, [r5,#8]
	bgt locret_8009116
	mov r0, #7
	strb r0, [r5,#4]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	strb r0, [r1,#oGameState_Unk_14]
	mov r0, #1
	bl eStruct200A008_setUnk02
locret_8009116:
	pop {pc}
	thumb_func_end sub_80090EE

	thumb_local_start
sub_8009118:
	push {lr}
	ldrb r0, [r5,#5]
	bl sub_800A07C
	tst r0, r0
	beq locret_8009134
	mov r0, #0x9f
	bl PlaySoundEffect
	mov r0, #4
	str r0, [r5]
	ldr r0, off_800913C // =0x200
	bl sub_801DACC
locret_8009134:
	pop {pc}
	.balign 4, 0
	.word dword_2036820
off_800913C: .word 0x200
	thumb_func_end sub_8009118

	thumb_local_start
sub_8009140:
	push {lr}
	// memBlock
	ldr r0, off_800914C // =dword_203CA70
	// size
	mov r1, #0xc
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {pc}
	.balign 4, 0
off_800914C: .word dword_203CA70
dword_8009150: .word 0x4C43
off_8009154: .word 0x400
	thumb_func_end sub_8009140

	thumb_local_start
sub_8009158:
	push {lr}
	ldr r1, off_80091B8 // =off_80091BC
	ldrb r0, [r5,#oBattleState_Unk_01]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq locret_80091B6
	bl sub_80103EC
	ldrh r1, [r0,#oBattleObject_MaxHP]
	ldrh r0, [r0,#oBattleObject_HP]
	lsr r1, r1, #2
	cmp r0, r1
	bgt loc_800919A
	ldrh r0, [r5,#oBattleState_Unk_20]
	cmp r0, #0
	bne locret_80091B6
	mov r0, #1
	strh r0, [r5,#oBattleState_Unk_20]
	mov r0, #0x1f
	ldr r1, dword_80091E4 // =0xffff
	ldr r2, off_80091E8 // =0x100
	bl sound_800065A
	mov r0, #0x1f
	ldr r1, dword_80091EC // =0x11a
	bl sound_8000672
	b locret_80091B6
loc_800919A:
	ldrh r0, [r5,#oBattleState_Unk_20]
	cmp r0, #0
	beq locret_80091B6
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_20]
	mov r0, #0x1f
	ldr r1, dword_80091E4 // =0xffff
	mov r2, #0
	bl sound_800065A
	mov r0, #0x1f
	ldr r1, off_80091E8 // =0x100
	bl sound_8000672
locret_80091B6:
	pop {pc}
	.balign 4, 0
off_80091B8: .word off_80091BC
off_80091BC: .word sub_80091F0+1
	.word sub_80092A0+1
	.word sub_8009338+1
	.word sub_800938A+1
	.word sub_800945C+1
	.word sub_80094DA+1
	.word sub_800951E+1
	.word sub_8009552+1
	.word sub_8009594+1
	.word sub_80095C8+1
dword_80091E4: .word 0xFFFF
off_80091E8: .word 0x100
dword_80091EC: .word 0x11A
	thumb_func_end sub_8009158

	thumb_local_start
sub_80091F0:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009240
	bl GetBattleEffects // () -> int
	ldr r1, off_8009278 // =0x400 
	tst r0, r1
	bne loc_800920A
	ldr r1, [r5,#oBattleState_BattleSettings]
	ldrb r1, [r1,#5]
	strb r1, [r5,#oBattleState_Unk_1a]
	b loc_8009210
loc_800920A:
	ldrb r1, [r5,#oBattleState_Unk_1a]
	add r1, #1
	strb r1, [r5,#oBattleState_Unk_1a]
loc_8009210:
	bl sub_80E06F8
	bl sub_8007358
	bl PauseBattle
	bl sub_8014178
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_800922E
	mov r0, #0x15
	b loc_8009232
loc_800922E:
	ldr r0, [r5,#oBattleState_BattleSettings]
	ldrb r0, [r0,#2]
loc_8009232:
	cmp r0, #0x63
	beq loc_800923A
	bl PlayMusic // (song: u8) -> ()
loc_800923A:
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009276
loc_8009240:
	ldrb r0, [r5,#oBattleState_Unk_02]
	tst r0, r0
	bne loc_800924E
	bl sub_800927C
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_02]
loc_800924E:
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_8009276
	mov r0, #1
	bl sub_801DA48
	mov r0, #1
	bl sub_801BECC
	mov r4, #4
	movflag EVENT_1735
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	beq loc_8009270
	mov r4, #0x24
loc_8009270:
	strb r4, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009276:
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_8009278: .word 0x400
	thumb_func_end sub_80091F0

	thumb_local_start
sub_800927C:
	push {lr}
	ldr r0, off_800929C // =0x484
	bl sub_801BECC
	ldr r0, off_800929C // =0x484
	bl sub_801DA48
	bl sub_801E5F8
	bl sub_801DA24
	mov r0, #0
	mov r1, #0
	bl sub_801E0A0
	pop {pc}
	.balign 4, 0
off_800929C: .word 0x484
	thumb_func_end sub_800927C

	thumb_local_start
sub_80092A0:
	push {lr}
	ldr r1, off_80092B0 // =off_80092B4
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_80092B0: .word off_80092B4
off_80092B4: .word sub_80092C0+1
	.word sub_80092F0+1
	.word sub_8009314+1
	thumb_func_end sub_80092A0

	thumb_local_start
sub_80092C0:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_80092D8
	ldrb r1, [r5,#oBattleState_Unk_1a]
	tst r1, r1
	beq loc_80092E6
	mov r0, #0xa
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_80092EE
loc_80092D8:
	ldrh r0, [r5,#oBattleState_Unk_28]
	sub r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	bge locret_80092EE
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
loc_80092E6:
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_80092EE:
	pop {pc}
	thumb_func_end sub_80092C0

	thumb_local_start
sub_80092F0:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009306
	mov r0, #0
	ldrb r1, [r5,#oBattleState_Unk_1a]
	bl sub_801E792
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009312
loc_8009306:
	bl sub_801E754
	tst r0, r0
	bne locret_8009312
	mov r0, #8
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009312:
	pop {pc}
	thumb_func_end sub_80092F0

	thumb_local_start
sub_8009314:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009326
	mov r0, #0xa
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009336
loc_8009326:
	ldrh r0, [r5,#oBattleState_Unk_28]
	sub r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	bge locret_8009336
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009336:
	pop {pc}
	thumb_func_end sub_8009314

	thumb_local_start
sub_8009338:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	cmp r0, #0
	bne loc_800934E
	mov r0, #4
	bl sub_800A9CA
	mov r0, #1
	strb r0, [r5,#oBattleState_Unk_03]
	bl sub_8026840
loc_800934E:
	bl sub_8026A28
	cmp r0, #0
	beq locret_8009388
	cmp r0, #2
	bne loc_8009360
	bl sub_800AABC
	b locret_8009388
loc_8009360:
	mov r0, #0
	bl battle_findPlayer
	cmp r0, #0
	beq loc_8009370
	ldr r0, [r0,#oBattleObject_AIDataPtr]
	mov r1, #1
	strb r1, [r0,#oAIData_Unk_0f]
loc_8009370:
	mov r0, #1
	bl battle_findPlayer
	cmp r0, #0
	beq loc_8009380
	ldr r0, [r0,#oBattleObject_AIDataPtr]
	mov r1, #1
	strb r1, [r0,#oAIData_Unk_0f]
loc_8009380:
	mov r0, #0xc
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009388:
	pop {pc}
	thumb_func_end sub_8009338

	thumb_local_start
sub_800938A:
	push {r4,lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_800939A
	bl sub_80084C0
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
loc_800939A:
	bl sub_800801C
	bl someChipHandValidationHappensHere_800B090
	cmp r0, #6
	bne loc_80093B0
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
	b locret_800945A
loc_80093B0:
	cmp r0, #0
	beq locret_800945A
	push {r0}
	ldrb r0, [r5,#oBattleState_Unk_07]
	bl eStruct200A008_setUnk03
	pop {r0}
	cmp r0, #1
	bne loc_8009414
	mov r0, #1
	bl setTwoStructs_800A840
	bl sub_800AF84
	strb r0, [r5,#oBattleState_Unk_1e]
	bl eStruct200A008_setUnk00
	bl sub_800B6F2
	bl GetBattleMode
	mov r2, #0x18
	cmp r0, #4
	beq loc_8009454
	mov r2, #0x1c
	cmp r0, #5
	beq loc_8009454
	mov r2, #0x20
	cmp r0, #8
	beq loc_8009454
	bl GetBattleEffects // () -> int
	mov r1, #2
	tst r0, r1
	beq loc_8009452
	bl GetBattleEffects // () -> int
	mov r2, #0x10
	ldr r1, =0x400
	tst r0, r1
	beq loc_8009454
	push {r2}
	bl sub_800AF50
	tst r0, r0
	pop {r2}
	beq loc_8009452
	cmp r0, #2
	beq loc_8009452
	b loc_8009454
loc_8009414:
	cmp r0, #2
	bne loc_8009452
	mov r0, #2
	bl setTwoStructs_800A840
	bl sub_800AF84
	strb r0, [r5,#oBattleState_Unk_1e]
	bl eStruct200A008_setUnk00
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8009452
	mov r1, #2
	tst r0, r1
	beq loc_8009452
	mov r2, #0x10
	ldr r1, =0x400
	tst r0, r1
	beq loc_8009454
	push {r2}
	bl sub_800AF50
	tst r0, r0
	pop {r2}
	beq loc_8009452
	cmp r0, #2
	beq loc_8009452
	b loc_8009454
loc_8009452:
	mov r2, #0x14
loc_8009454:
	strb r2, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_800945A:
	pop {r4,pc}
	thumb_func_end sub_800938A

	thumb_local_start
sub_800945C:
	push {lr}
	ldr r1, off_800946C // =off_8009470
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_800946C: .word off_8009470
off_8009470: .word sub_8009478+1
	.word sub_80094B6+1
	thumb_func_end sub_800945C

	thumb_local_start
sub_8009478:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_800948E
	bl sub_800B428
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_80094B4
loc_800948E:
	ldr r0, =0x1f2f3f4f
	bl sub_800B46C
	tst r0, r0
	beq loc_80094A6
	bl sub_800B460
	bl sub_800B444
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
loc_80094A6:
	ldrh r0, [r5,#oBattleState_Unk_28]
	add r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	cmp r0, #0xb4
	ble locret_80094B4
	mov r0, #0xc
	str r0, [r5,#oBattleState_Unk_00]
locret_80094B4:
	pop {pc}
	thumb_func_end sub_8009478

	thumb_local_start
sub_80094B6:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_80094C8
	ldr r0, =unk_2035260
	bl sub_802C34E
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
loc_80094C8:
	bl sub_802BD60
	tst r0, r0
	bne locret_80094D8
	mov r0, #0x14
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_80094D8:
	pop {pc}
	thumb_func_end sub_80094B6

	thumb_local_start
sub_80094DA:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009508
	ldr r1, =0x173
	ldr r2, =0x17e
	bl sub_800A7A6
	cmp r0, #0
	beq loc_80094FA
	bl sub_800A832
	cmp r0, #1
	bne loc_80094FA
	mov r0, #4
	b loc_80094FC
loc_80094FA:
	mov r0, #0xc
loc_80094FC:
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_800951C
loc_8009508:
	bl IsScreenFadeActive // () -> zf
	beq locret_800951C
	bl musicGameState_8000784 // () -> void
	mov r0, #0x1a
	bl FreeAllObjectsOfSpecifiedTypes
	mov r0, #8
	str r0, [r5,#oBattleState_Unk_00]
locret_800951C:
	pop {pc}
	thumb_func_end sub_80094DA

	thumb_local_start
sub_800951E:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009534
	ldr r0, =TextScriptBattleTutFullSynchro
	mov r1, #0xa
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009550
loc_8009534:
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_8009550
	bl GetBattleEffects // () -> int
	mov r2, #0x10
	mov r1, #2
	tst r0, r1
	bne loc_800954A
	mov r2, #0x14
loc_800954A:
	strb r2, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009550:
	pop {pc}
	thumb_func_end sub_800951E

	thumb_local_start
sub_8009552:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009576
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	ldrb r0, [r2,#oBattleState_Unk_07]
	cmp r0, #1
	bgt loc_8009568
	mov r1, #0x10
	b loc_800956A
loc_8009568:
	mov r1, #0x20
loc_800956A:
	ldr r0, =TextScriptDadCybeastTut
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009592
loc_8009576:
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_8009592
	bl GetBattleEffects // () -> int
	mov r2, #0x10
	mov r1, #2
	tst r0, r1
	bne loc_800958C
	mov r2, #0x14
loc_800958C:
	strb r2, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009592:
	pop {pc}
	thumb_func_end sub_8009552

	thumb_local_start
sub_8009594:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_80095AA
	ldr r0, =TextScriptShukoCrossTut
	mov r1, #3
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_80095C6
loc_80095AA:
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_80095C6
	bl GetBattleEffects // () -> int
	mov r2, #0x10
	mov r1, #2
	tst r0, r1
	bne loc_80095C0
	mov r2, #0x14
loc_80095C0:
	strb r2, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_80095C6:
	pop {pc}
	thumb_func_end sub_8009594

	thumb_local_start
sub_80095C8:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_80095E4
	bl GetCurPETNavi // () -> u8
	mov r1, #0x73
	add r1, r1, r0
	ldr r0, =TextScriptCommError87370C0
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_80095F4
loc_80095E4:
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_80095F4
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_80095F4:
	pop {pc}
	.balign 4, 0x00
	.pool
	thumb_func_end sub_80095C8

	thumb_local_start
sub_800961C:
	push {lr}
	ldr r1, off_800962C // =off_8009630
	ldrb r0, [r5,#oBattleState_Unk_01]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_800962C: .word off_8009630
off_8009630: .word sub_8009658+1
	.word sub_8009734+1
	.word sub_80097CC+1
	.word sub_800980E+1
	.word sub_80098BC+1
	.word sub_800993A+1
	.word NULL
	.word NULL
	.word NULL
	.word sub_8009966+1
	thumb_func_end sub_800961C

	thumb_local_start
sub_8009658:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_80096A8
	bl GetBattleEffects // () -> int
	ldr r1, off_8009994 // =0x400 
	tst r0, r1
	bne loc_8009672
	ldr r1, [r5,#oBattleState_BattleSettings]
	ldrb r1, [r1,#5]
	strb r1, [r5,#oBattleState_Unk_1a]
	b loc_8009678
loc_8009672:
	ldrb r1, [r5,#oBattleState_Unk_1a]
	add r1, #1
	strb r1, [r5,#oBattleState_Unk_1a]
loc_8009678:
	bl sub_80E06F8
	bl sub_8007358
	bl PauseBattle
	bl sub_8014178
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8009696
	mov r0, #0x15
	b loc_800969A
loc_8009696:
	ldr r0, [r5,#oBattleState_BattleSettings]
	ldrb r0, [r0,#2]
loc_800969A:
	cmp r0, #0x63
	beq loc_80096A2
	bl PlayMusic // (song: u8) -> ()
loc_80096A2:
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_80096DE
loc_80096A8:
	ldrb r0, [r5,#oBattleState_Unk_02]
	tst r0, r0
	bne loc_80096B6
	bl sub_80096E0
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_02]
loc_80096B6:
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_80096DE
	mov r0, #1
	bl sub_801DA48
	mov r0, #1
	bl sub_801BECC
	mov r4, #4
	movflag EVENT_1735
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	beq loc_80096D8
	mov r4, #0x24
loc_80096D8:
	strb r4, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_80096DE:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8009658

	thumb_local_start
sub_80096E0:
	push {lr}
	ldr r0, off_8009700 // =0x404
	bl sub_801BECC
	ldr r0, off_8009700 // =0x404
	bl sub_801DA48
	bl sub_801DA24
	bl sub_801DF0C
	mov r0, #0
	bl SetCustGauge
	pop {pc}
	.balign 4, 0
off_8009700: .word 0x404
	thumb_func_end sub_80096E0

	thumb_local_start
sub_8009704:
	push {lr}
	mov r0, #0x80
	ldr r0, [r5,r0]
	mov r1, #0x84
	ldr r1, [r5,r1]
	bl sub_8009720
	mov r0, #0x90
	ldr r0, [r5,r0]
	mov r1, #0x94
	ldr r1, [r5,r1]
	bl sub_8009720
	pop {pc}
	thumb_func_end sub_8009704

	thumb_local_start
sub_8009720:
	cmp r0, #0
	beq locret_8009732
	cmp r1, #0
	beq locret_8009732
	ldr r2, [r0,#0x24]
	ldr r3, [r1,#0x24]
	add r2, r2, r3
	str r2, [r0,#0x24]
	str r2, [r1,#0x24]
locret_8009732:
	mov pc, lr
	thumb_func_end sub_8009720

	thumb_local_start
sub_8009734:
	push {lr}
	ldr r1, off_8009744 // =off_8009748
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009744: .word off_8009748
off_8009748: .word sub_8009754+1
	.word sub_8009784+1
	.word sub_80097A8+1
	thumb_func_end sub_8009734

	thumb_local_start
sub_8009754:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_800976C
	ldrb r1, [r5,#oBattleState_Unk_1a]
	tst r1, r1
	beq loc_800977A
	mov r0, #0xa
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009782
loc_800976C:
	ldrh r0, [r5,#oBattleState_Unk_28]
	sub r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	bge locret_8009782
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
loc_800977A:
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009782:
	pop {pc}
	thumb_func_end sub_8009754

	thumb_local_start
sub_8009784:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_800979A
	mov r0, #0
	ldrb r1, [r5,#oBattleState_Unk_1a]
	bl sub_801E792
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_80097A6
loc_800979A:
	bl sub_801E754
	tst r0, r0
	bne locret_80097A6
	mov r0, #8
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_80097A6:
	pop {pc}
	thumb_func_end sub_8009784

	thumb_local_start
sub_80097A8:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_80097BA
	mov r0, #0xa
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_80097CA
loc_80097BA:
	ldrh r0, [r5,#oBattleState_Unk_28]
	sub r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	bge locret_80097CA
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_80097CA:
	pop {pc}
	thumb_func_end sub_80097A8

	thumb_local_start
sub_80097CC:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	cmp r0, #0
	bne loc_80097E8
	mov r0, #4
	bl sub_800A9CA
	mov r0, #1
	strb r0, [r5,#oBattleState_Unk_03]
	bl sub_802A866
	mov r0, #1
	bl battle_setFlags
loc_80097E8:
	bl sub_802A87C
	cmp r0, #0
	beq locret_800980C
	cmp r0, #2
	bne loc_80097FA
	bl sub_800AABC
	b locret_800980C
loc_80097FA:
	mov r0, #4
	bl sub_800A9D6
	bl sub_8009704
	mov r0, #0xc
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_800980C:
	pop {pc}
	thumb_func_end sub_80097CC

	thumb_local_start
sub_800980E:
	push {r4,lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_800981E
	bl sub_8008928
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
loc_800981E:
	bl sub_80084F0
	bl someChipHandValidationHappensHere_800B090
	cmp r0, #0
	beq locret_80098BA
	push {r0}
	ldrb r0, [r5,#oBattleState_Unk_07]
	bl eStruct200A008_setUnk03
	pop {r0}
	cmp r0, #1
	bne loc_8009870
	mov r0, #1
	bl setTwoStructs_800A840
	bl sub_800AF84
	strb r0, [r5,#oBattleState_Unk_1e]
	bl eStruct200A008_setUnk00
	bl sub_800B6F2
	bl GetBattleEffects // () -> int
	mov r1, #2
	tst r0, r1
	beq loc_80098B2
	bl GetBattleEffects // () -> int
	mov r2, #0x10
	ldr r1, off_8009994 // =0x400
	tst r0, r1
	beq loc_80098B4
	push {r2}
	bl sub_800AF50
	tst r0, r0
	pop {r2}
	beq loc_80098B2
	b loc_80098B4
loc_8009870:
	cmp r0, #2
	bne loc_80098A8
	mov r0, #2
	bl setTwoStructs_800A840
	bl sub_800AF84
	strb r0, [r5,#oBattleState_Unk_1e]
	bl eStruct200A008_setUnk00
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_80098B2
	mov r1, #2
	tst r0, r1
	beq loc_80098B2
	ldr r1, off_8009994 // =0x400
	tst r0, r1
	beq loc_80098B4
	push {r2}
	bl sub_800AF50
	tst r0, r0
	pop {r2}
	beq loc_80098B2
	b loc_80098B4
loc_80098A8:
	cmp r0, #7
	bne loc_80098B2
	mov r0, #7
	bl setTwoStructs_800A840
loc_80098B2:
	mov r2, #0x14
loc_80098B4:
	strb r2, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_80098BA:
	pop {r4,pc}
	thumb_func_end sub_800980E

	thumb_local_start
sub_80098BC:
	push {lr}
	ldr r1, off_80098CC // =off_80098D0
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_80098CC: .word off_80098D0
off_80098D0: .word sub_80098D8+1
	.word sub_8009916+1
	thumb_func_end sub_80098BC

	thumb_local_start
sub_80098D8:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_80098EE
	bl sub_800B428
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009914
loc_80098EE:
	ldr r0, dword_8009998 // =0x1f2f3f4f
	bl sub_800B46C
	tst r0, r0
	beq loc_8009906
	bl sub_800B460
	bl sub_800B444
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
loc_8009906:
	ldrh r0, [r5,#oBattleState_Unk_28]
	add r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	cmp r0, #0xb4
	ble locret_8009914
	mov r0, #0xc
	str r0, [r5,#oBattleState_Unk_00]
locret_8009914:
	pop {pc}
	thumb_func_end sub_80098D8

	thumb_local_start
sub_8009916:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009928
	ldr r0, off_800999C // =unk_2035260
	bl sub_802C34E
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
loc_8009928:
	bl sub_802BD60
	tst r0, r0
	bne locret_8009938
	mov r0, #0x14
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009938:
	pop {pc}
	thumb_func_end sub_8009916

	thumb_local_start
sub_800993A:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009950
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009964
loc_8009950:
	bl IsScreenFadeActive // () -> zf
	beq locret_8009964
	bl musicGameState_8000784 // () -> void
	mov r0, #0x1a
	bl FreeAllObjectsOfSpecifiedTypes
	mov r0, #8
	str r0, [r5,#oBattleState_Unk_00]
locret_8009964:
	pop {pc}
	thumb_func_end sub_800993A

	thumb_local_start
sub_8009966:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8009982
	bl GetCurPETNavi // () -> u8
	mov r1, #0x73
	add r1, r1, r0
	ldr r0, off_80099A0 // =TextScriptCommError87370C0
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	mov r0, #4
	strb r0, [r5,#3]
	b locret_8009992
loc_8009982:
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_8009992
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8009992:
	pop {pc}
	.balign 4, 0
off_8009994: .word 0x400
dword_8009998: .word 0x1F2F3F4F
off_800999C: .word unk_2035260
off_80099A0: .word TextScriptCommError87370C0
	thumb_func_end sub_8009966

	thumb_local_start
sub_80099A4:
	push {lr}
	ldr r1, off_80099B4 // =off_80099B8
	ldrb r0, [r5,#oBattleState_Unk_01]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_80099B4: .word off_80099B8
off_80099B8: .word sub_80099E0+1
	.word sub_8009A88+1
	.word NULL
	.word sub_8009B20+1
	.word sub_8009BAC+1
	.word sub_8009C2A+1
	.word NULL
	.word NULL
	.word NULL
	.word sub_8009C56+1
	thumb_func_end sub_80099A4

	thumb_local_start
sub_80099E0:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009A30
	bl GetBattleEffects // () -> int
	ldr r1, off_8009C84 // =0x400 
	tst r0, r1
	bne loc_80099FA
	ldr r1, [r5,#oBattleState_BattleSettings]
	ldrb r1, [r1,#5]
	strb r1, [r5,#oBattleState_Unk_1a]
	b loc_8009A00
loc_80099FA:
	ldrb r1, [r5,#oBattleState_Unk_1a]
	add r1, #1
	strb r1, [r5,#oBattleState_Unk_1a]
loc_8009A00:
	bl sub_80E06F8
	bl sub_8007358
	bl PauseBattle
	bl sub_8014178
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8009A1E
	mov r0, #0x15
	b loc_8009A22
loc_8009A1E:
	ldr r0, [r5,#oBattleState_BattleSettings]
	ldrb r0, [r0,#2]
loc_8009A22:
	cmp r0, #0x63
	beq loc_8009A2A
	bl PlayMusic // (song: u8) -> ()
loc_8009A2A:
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009A66
loc_8009A30:
	ldrb r0, [r5,#oBattleState_Unk_02]
	tst r0, r0
	bne loc_8009A3E
	bl sub_8009A68
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_02]
loc_8009A3E:
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_8009A66
	mov r0, #1
	bl sub_801DA48
	mov r0, #1
	bl sub_801BECC
	mov r4, #4
	movflag EVENT_1735
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	beq loc_8009A60
	mov r4, #0x24
loc_8009A60:
	strb r4, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009A66:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80099E0

	thumb_local_start
sub_8009A68:
	push {lr}
	ldr r0, off_8009A84 // =0x404
	bl sub_801BECC
	ldr r0, off_8009A84 // =0x404
	bl sub_801DA48
	bl sub_801DA24
	mov r0, #0
	mov r1, #0
	bl sub_801E0A0
	pop {pc}
	.balign 4, 0
off_8009A84: .word 0x404
	thumb_func_end sub_8009A68

	thumb_local_start
sub_8009A88:
	push {lr}
	ldr r1, off_8009A98 // =off_8009A9C
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009A98: .word off_8009A9C
off_8009A9C: .word sub_8009AA8+1
	.word sub_8009AD8+1
	.word sub_8009AFC+1
	thumb_func_end sub_8009A88

	thumb_local_start
sub_8009AA8:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009AC0
	ldrb r1, [r5,#oBattleState_Unk_1a]
	tst r1, r1
	beq loc_8009ACE
	mov r0, #0xa
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009AD6
loc_8009AC0:
	ldrh r0, [r5,#oBattleState_Unk_28]
	sub r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	bge locret_8009AD6
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
loc_8009ACE:
	mov r0, #0xc
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009AD6:
	pop {pc}
	thumb_func_end sub_8009AA8

	thumb_local_start
sub_8009AD8:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009AEE
	mov r0, #0
	ldrb r1, [r5,#oBattleState_Unk_1a]
	bl sub_801E792
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009AFA
loc_8009AEE:
	bl sub_801E754
	tst r0, r0
	bne locret_8009AFA
	mov r0, #8
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009AFA:
	pop {pc}
	thumb_func_end sub_8009AD8

	thumb_local_start
sub_8009AFC:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009B0E
	mov r0, #0xa
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009B1E
loc_8009B0E:
	ldrh r0, [r5,#oBattleState_Unk_28]
	sub r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	bge locret_8009B1E
	mov r0, #0xc
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009B1E:
	pop {pc}
	thumb_func_end sub_8009AFC

	thumb_local_start
sub_8009B20:
	push {r4,lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009B30
	bl sub_8008D40
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
loc_8009B30:
	bl sub_8008950
	bl someChipHandValidationHappensHere_800B090
	cmp r0, #0
	beq locret_8009BAA
	push {r0}
	ldrb r0, [r5,#oBattleState_Unk_07]
	bl eStruct200A008_setUnk03
	pop {r0}
	cmp r0, #1
	bne loc_8009B60
	mov r0, #1
	bl setTwoStructs_800A840
	bl sub_800AF84
	strb r0, [r5,#oBattleState_Unk_1e]
	bl eStruct200A008_setUnk00
	bl sub_800B6F2
	b loc_8009BA2
loc_8009B60:
	cmp r0, #2
	bne loc_8009B98
	mov r0, #2
	bl setTwoStructs_800A840
	bl sub_800AF84
	strb r0, [r5,#oBattleState_Unk_1e]
	bl eStruct200A008_setUnk00
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8009BA2
	mov r1, #2
	tst r0, r1
	beq loc_8009BA2
	ldr r1, off_8009C84 // =0x400
	tst r0, r1
	beq loc_8009BA4
	push {r2}
	bl sub_800AF50
	tst r0, r0
	pop {r2}
	beq loc_8009BA2
	b loc_8009BA4
loc_8009B98:
	cmp r0, #7
	bne loc_8009BA2
	mov r0, #7
	bl setTwoStructs_800A840
loc_8009BA2:
	mov r2, #0x14
loc_8009BA4:
	strb r2, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009BAA:
	pop {r4,pc}
	thumb_func_end sub_8009B20

	thumb_local_start
sub_8009BAC:
	push {lr}
	ldr r1, off_8009BBC // =off_8009BC0
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009BBC: .word off_8009BC0
off_8009BC0: .word sub_8009BC8+1
	.word sub_8009C06+1
	thumb_func_end sub_8009BAC

	thumb_local_start
sub_8009BC8:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009BDE
	bl sub_800B428
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009C04
loc_8009BDE:
	ldr r0, dword_8009C88 // =0x1f2f3f4f
	bl sub_800B46C
	tst r0, r0
	beq loc_8009BF6
	bl sub_800B460
	bl sub_800B444
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
loc_8009BF6:
	ldrh r0, [r5,#oBattleState_Unk_28]
	add r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	cmp r0, #0xb4
	ble locret_8009C04
	mov r0, #0xc
	str r0, [r5,#oBattleState_Unk_00]
locret_8009C04:
	pop {pc}
	thumb_func_end sub_8009BC8

	thumb_local_start
sub_8009C06:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009C18
	ldr r0, off_8009C8C // =unk_2035260
	bl sub_802C34E
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
loc_8009C18:
	bl sub_802BD60
	tst r0, r0
	bne locret_8009C28
	mov r0, #0x14
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009C28:
	pop {pc}
	thumb_func_end sub_8009C06

	thumb_local_start
sub_8009C2A:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009C40
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009C54
loc_8009C40:
	bl IsScreenFadeActive // () -> zf
	beq locret_8009C54
	bl musicGameState_8000784 // () -> void
	mov r0, #0x1a
	bl FreeAllObjectsOfSpecifiedTypes
	mov r0, #8
	str r0, [r5,#oBattleState_Unk_00]
locret_8009C54:
	pop {pc}
	thumb_func_end sub_8009C2A

	thumb_local_start
sub_8009C56:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8009C72
	bl GetCurPETNavi // () -> u8
	mov r1, #0x73
	add r1, r1, r0
	ldr r0, off_8009C90 // =TextScriptCommError87370C0
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	mov r0, #4
	strb r0, [r5,#3]
	b locret_8009C82
loc_8009C72:
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_8009C82
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8009C82:
	pop {pc}
	.balign 4, 0
off_8009C84: .word 0x400
dword_8009C88: .word 0x1F2F3F4F
off_8009C8C: .word unk_2035260
off_8009C90: .word TextScriptCommError87370C0
	thumb_func_end sub_8009C56

	thumb_local_start
sub_8009C94:
	push {lr}
	ldr r1, off_8009CA4 // =off_8009CA8
	ldrb r0, [r5,#oBattleState_Unk_01]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009CA4: .word off_8009CA8
off_8009CA8: .word sub_8009CD0+1
	.word sub_8009D78+1
	.word sub_8009E10+1
	.word sub_8009E56+1
	.word sub_8009EE2+1
	.word sub_8009F5E+1
	.word NULL
	.word NULL
	.word NULL
	.word sub_8009F8A+1
	thumb_func_end sub_8009C94

	thumb_local_start
sub_8009CD0:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009D20
	bl GetBattleEffects // () -> int
	ldr r1, off_8009FB8 // =0x400 
	tst r0, r1
	bne loc_8009CEA
	ldr r1, [r5,#oBattleState_BattleSettings]
	ldrb r1, [r1,#5]
	strb r1, [r5,#oBattleState_Unk_1a]
	b loc_8009CF0
loc_8009CEA:
	ldrb r1, [r5,#oBattleState_Unk_1a]
	add r1, #1
	strb r1, [r5,#oBattleState_Unk_1a]
loc_8009CF0:
	bl sub_80E06F8
	bl sub_8007358
	bl PauseBattle
	bl sub_8014178
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8009D0E
	mov r0, #0x15
	b loc_8009D12
loc_8009D0E:
	ldr r0, [r5,#oBattleState_BattleSettings]
	ldrb r0, [r0,#2]
loc_8009D12:
	cmp r0, #0x63
	beq loc_8009D1A
	bl PlayMusic // (song: u8) -> ()
loc_8009D1A:
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009D56
loc_8009D20:
	ldrb r0, [r5,#oBattleState_Unk_02]
	tst r0, r0
	bne loc_8009D2E
	bl sub_8009D58
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_02]
loc_8009D2E:
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_8009D56
	mov r0, #1
	bl sub_801DA48
	mov r0, #1
	bl sub_801BECC
	mov r4, #4
	movflag EVENT_1735
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	beq loc_8009D50
	mov r4, #0x24
loc_8009D50:
	strb r4, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009D56:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8009CD0

	thumb_local_start
sub_8009D58:
	push {lr}
	ldr r0, off_8009D74 // =0x404
	bl sub_801BECC
	ldr r0, off_8009D74 // =0x404
	bl sub_801DA48
	bl sub_801DA24
	mov r0, #0
	mov r1, #0
	bl sub_801E0A0
	pop {pc}
	.balign 4, 0
off_8009D74: .word 0x404
	thumb_func_end sub_8009D58

	thumb_local_start
sub_8009D78:
	push {lr}
	ldr r1, off_8009D88 // =off_8009D8C
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009D88: .word off_8009D8C
off_8009D8C: .word sub_8009D98+1
	.word sub_8009DC8+1
	.word sub_8009DEC+1
	thumb_func_end sub_8009D78

	thumb_local_start
sub_8009D98:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009DB0
	ldrb r1, [r5,#oBattleState_Unk_1a]
	tst r1, r1
	beq loc_8009DBE
	mov r0, #0xa
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009DC6
loc_8009DB0:
	ldrh r0, [r5,#oBattleState_Unk_28]
	sub r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	bge locret_8009DC6
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
loc_8009DBE:
	mov r0, #8
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009DC6:
	pop {pc}
	thumb_func_end sub_8009D98

	thumb_local_start
sub_8009DC8:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009DDE
	mov r0, #0
	ldrb r1, [r5,#oBattleState_Unk_1a]
	bl sub_801E792
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009DEA
loc_8009DDE:
	bl sub_801E754
	tst r0, r0
	bne locret_8009DEA
	mov r0, #8
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009DEA:
	pop {pc}
	thumb_func_end sub_8009DC8

	thumb_local_start
sub_8009DEC:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009DFE
	mov r0, #0xa
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009E0E
loc_8009DFE:
	ldrh r0, [r5,#oBattleState_Unk_28]
	sub r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	bge locret_8009E0E
	mov r0, #0xc
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009E0E:
	pop {pc}
	thumb_func_end sub_8009DEC

	thumb_local_start
sub_8009E10:
	push {lr}
	ldr r1, off_8009E20 // =off_8009E24
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_8009E20: .word off_8009E24
off_8009E24: .word RunTextScriptDustManUndernetTut_8009E2C+1
	.word sub_8009E40+1
	thumb_func_end sub_8009E10

	thumb_local_start
RunTextScriptDustManUndernetTut_8009E2C:
	push {lr}
	mov r0, #0x90
	ldr r0, [r5,r0]
	ldrb r1, [r0,#4]
	ldr r0, off_8009FBC // =TextScriptDustManUndernetTut
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
	thumb_func_end RunTextScriptDustManUndernetTut_8009E2C

	thumb_local_start
sub_8009E40:
	push {lr}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	cmp r0, #0
	bne locret_8009E54
	mov r0, #0xc
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009E54:
	pop {pc}
	thumb_func_end sub_8009E40

	thumb_local_start
sub_8009E56:
	push {r4,lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009E66
	bl sub_8009140
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
loc_8009E66:
	bl sub_8008D60
	bl someChipHandValidationHappensHere_800B090
	cmp r0, #0
	beq locret_8009EE0
	push {r0}
	ldrb r0, [r5,#oBattleState_Unk_07]
	bl eStruct200A008_setUnk03
	pop {r0}
	cmp r0, #1
	bne loc_8009E96
	mov r0, #1
	bl setTwoStructs_800A840
	bl sub_800AF84
	strb r0, [r5,#oBattleState_Unk_1e]
	bl eStruct200A008_setUnk00
	bl sub_800B6F2
	b loc_8009ED8
loc_8009E96:
	cmp r0, #2
	bne loc_8009ECE
	mov r0, #2
	bl setTwoStructs_800A840
	bl sub_800AF84
	strb r0, [r5,#oBattleState_Unk_1e]
	bl eStruct200A008_setUnk00
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8009ED8
	mov r1, #2
	tst r0, r1
	beq loc_8009ED8
	ldr r1, off_8009FB8 // =0x400
	tst r0, r1
	beq loc_8009EDA
	push {r2}
	bl sub_800AF50
	tst r0, r0
	pop {r2}
	beq loc_8009ED8
	b loc_8009EDA
loc_8009ECE:
	cmp r0, #7
	bne loc_8009ED8
	mov r0, #7
	bl setTwoStructs_800A840
loc_8009ED8:
	mov r2, #0x14
loc_8009EDA:
	strb r2, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009EE0:
	pop {r4,pc}
	thumb_func_end sub_8009E56

	thumb_local_start
sub_8009EE2:
	push {lr}
	ldr r1, off_8009EF0 // =off_8009EF4
	ldrb r0, [r5,#oBattleState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_8009EF0: .word off_8009EF4
off_8009EF4: .word sub_8009EFC+1
	.word sub_8009F3A+1
	thumb_func_end sub_8009EE2

	thumb_local_start
sub_8009EFC:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009F12
	bl sub_800B428
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_28]
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009F38
loc_8009F12:
	ldr r0, dword_8009FC0 // =0x1f2f3f4f
	bl sub_800B46C
	tst r0, r0
	beq loc_8009F2A
	bl sub_800B460
	bl sub_800B444
	mov r0, #4
	strh r0, [r5,#oBattleState_Unk_02_03]
	pop {pc}
loc_8009F2A:
	ldrh r0, [r5,#oBattleState_Unk_28]
	add r0, #1
	strh r0, [r5,#oBattleState_Unk_28]
	cmp r0, #0xb4
	ble locret_8009F38
	mov r0, #0xc
	str r0, [r5,#oBattleState_Unk_00]
locret_8009F38:
	pop {pc}
	thumb_func_end sub_8009EFC

	thumb_local_start
sub_8009F3A:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009F4C
	ldr r0, off_8009FC4 // =unk_2035260
	bl sub_802C34E
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
loc_8009F4C:
	bl sub_802BD60
	tst r0, r0
	bne locret_8009F5C
	mov r0, #0x14
	strb r0, [r5,#oBattleState_Unk_01]
	mov r0, #0
	strh r0, [r5,#oBattleState_Unk_02_03]
locret_8009F5C:
	pop {pc}
	thumb_func_end sub_8009F3A

	thumb_local_start
sub_8009F5E:
	push {lr}
	ldrb r0, [r5,#oBattleState_Unk_03]
	tst r0, r0
	bne loc_8009F74
	mov r0, #0xc
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#oBattleState_Unk_03]
	b locret_8009F88
loc_8009F74:
	bl IsScreenFadeActive // () -> zf
	beq locret_8009F88
	bl musicGameState_8000784 // () -> void
	mov r0, #0x1a
	bl FreeAllObjectsOfSpecifiedTypes
	mov r0, #8
	str r0, [r5,#oBattleState_Unk_00]
locret_8009F88:
	pop {pc}
	thumb_func_end sub_8009F5E

	thumb_local_start
sub_8009F8A:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8009FA6
	bl GetCurPETNavi // () -> u8
	mov r1, #0x73
	add r1, r1, r0
	ldr r0, off_8009FC8 // =TextScriptCommError87370C0
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	mov r0, #4
	strb r0, [r5,#3]
	b locret_8009FB6
loc_8009FA6:
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_8009FB6
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8009FB6:
	pop {pc}
	.balign 4, 0
off_8009FB8: .word 0x400
off_8009FBC: .word TextScriptDustManUndernetTut
dword_8009FC0: .word 0x1F2F3F4F
off_8009FC4: .word unk_2035260
off_8009FC8: .word TextScriptCommError87370C0
	thumb_func_end sub_8009F8A

	thumb_local_start
sub_8009FCC:
	push {r5-r7,lr}
	ldr r6, off_8009FF4 // =byte_3000EA8
	ldr r6, [r6]
	ldr r7, off_8009FF0 // =dword_3002180
loc_8009FD4:
	tst r6, r6
	beq locret_8009FEE
	sub r6, #1
	ldr r0, [r7]
	ldr r1, [r7,#0x4] // (dword_3002184 - 0x3002180)
	ldr r2, [r7,#0x8] // (dword_3002188 - 0x3002180)
	ldr r3, [r7,#0xc] // (dword_300218C - 0x3002180)
	push {r6,r7}
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r6,r7}
	add r7, #0x10
	b loc_8009FD4
locret_8009FEE:
	pop {r5-r7,pc}
	.balign 4, 0
off_8009FF0: .word dword_3002180
off_8009FF4: .word byte_3000EA8
	thumb_func_end sub_8009FCC

	thumb_func_start sub_8009FF8
sub_8009FF8:
	push {r4,r6,r7,lr}
	ldr r6, off_800A018 // =byte_3000EA8
	ldr r4, [r6]
	ldr r7, off_800A014 // =dword_3002180
	lsl r4, r4, #4
	add r7, r7, r4
	str r0, [r7]
	str r1, [r7,#4]
	str r2, [r7,#8]
	str r3, [r7,#0xc]
	lsr r4, r4, #4
	add r4, #1
	str r4, [r6]
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_800A014: .word dword_3002180
off_800A018: .word byte_3000EA8
	thumb_func_end sub_8009FF8

	thumb_local_start
sub_800A01C:
	mov r0, #0
	ldr r1, off_800A024 // =byte_3000EA8
	str r0, [r1]
	mov pc, lr
off_800A024: .word byte_3000EA8
	thumb_func_end sub_800A01C

	thumb_local_start
PauseBattle:
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	mov r0, #1
	strb r0, [r1,#oGameState_BattlePaused]
	mov pc, lr
	thumb_func_end PauseBattle

	thumb_local_start
UnpauseBattle:
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	mov r0, #0
	strb r0, [r1,#oGameState_BattlePaused]
	mov pc, lr
	thumb_func_end UnpauseBattle

	thumb_func_start battle_isPaused
battle_isPaused:
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r0, [r1,#oGameState_BattlePaused]
	tst r0, r0
	mov pc, lr
	thumb_func_end battle_isPaused

	thumb_local_start
sub_800A046:
	push {lr}
	bl battle_isBattleOver
	mov r1, r0
	mov r0, #0xff
	tst r1, r1
	bne locret_800A076
	bl battle_isTimeStop
	mov r1, r0
	mov r0, #0xff
	tst r1, r1
	bne locret_800A076
	ldr r3, off_800A078 // =dword_2036820
	ldrh r1, [r3,#0x4] // (dword_2036824 - 0x2036820)
	mov r2, #8
	tst r1, r2
	beq loc_800A06E
	mov r0, #0
	pop {pc}
loc_800A06E:
	ldrh r1, [r3,#0xc] // (dword_203682C - 0x2036820)
	tst r1, r2
	beq locret_800A076
	mov r0, #1
locret_800A076:
	pop {pc}
	.balign 4, 0
off_800A078: .word dword_2036820
	thumb_func_end sub_800A046

	thumb_local_start
sub_800A07C:
	mov r2, #8
	mul r0, r2
	ldr r3, off_800A094 // =dword_2036820
	add r3, r3, r0
	ldrh r1, [r3,#4]
	mov r2, #8
	mov r0, #0
	tst r1, r2
	beq locret_800A090
	mov r0, #1
locret_800A090:
	mov pc, lr
	.balign 4, 0
off_800A094: .word dword_2036820
	thumb_func_end sub_800A07C

	thumb_func_start battle_isTimeStop
battle_isTimeStop:
	push {lr}
	bl battle_getFlags
	mov r1, #4
	and r0, r1
	pop {pc}
	thumb_func_end battle_isTimeStop

	thumb_func_start battle_isTimeStopPauseOrBattleFlags0x20_800a0a4
battle_isTimeStopPauseOrBattleFlags0x20_800a0a4:
	push {lr}
	bl battle_isTimeStop
	bne loc_800A0C2
	bl battle_isPaused
	tst r0, r0
	beq loc_800A0C2
	bl battle_getFlags
	mov r1, #0x20
	tst r0, r1
	bne loc_800A0C2
	mov r0, #0
	pop {pc}
loc_800A0C2:
	mov r0, #1
	pop {pc}
	thumb_func_end battle_isTimeStopPauseOrBattleFlags0x20_800a0a4

	thumb_local_start
sub_800A0C6:
	ldr r0, off_800A0F0 // =dword_2036820
	mov r1, #0
	str r1, [r0]
	str r1, [r0,#0x4] // (dword_2036824 - 0x2036820)
	add r0, #8
	str r1, [r0]
	str r1, [r0,#0x4] // (dword_203682C - 0x2036828)
	mov pc, lr
	thumb_func_end sub_800A0C6

	thumb_func_start sub_800A0D6
sub_800A0D6:
	lsl r0, r0, #3
	ldr r3, off_800A0F0 // =dword_2036820
	add r3, r3, r0
	ldrh r2, [r3,#2]
	strh r1, [r3,#2]
	mvn r0, r2
	and r0, r1
	strh r0, [r3,#4]
	mvn r0, r1
	and r2, r0
	strh r2, [r3,#6]
	mov pc, lr
	.byte 0, 0
off_800A0F0: .word dword_2036820
	thumb_func_end sub_800A0D6

	thumb_local_start
sub_800A0F4:
	mov r1, #8
	mul r0, r1
	ldr r1, off_800A100 // =dword_2036820
	add r0, r0, r1
	mov pc, lr
	.byte 0, 0
off_800A100: .word dword_2036820
	thumb_func_end sub_800A0F4

	thumb_func_start sub_800A104
sub_800A104:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_Unk_02]
	cmp r0, #0
	bne locret_800A11A
	ldrb r0, [r5,#oBattleObject_Alliance]
	add r0, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r2, [r1,r0]
	sub r2, #1
	strb r2, [r1,r0]
locret_800A11A:
	mov pc, lr
	thumb_func_end sub_800A104

	thumb_func_start relatedToIsBattleOver_800A11C
relatedToIsBattleOver_800A11C:
	ldrb r0, [r5,#oBattleObject_Alliance]
	add r0, #oBattleState_Unk_12
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r2, [r1,r0]
	sub r2, #1
	strb r2, [r1,r0]
	mov r2, #0
	add r1, #oBattleState_AliveBattleActors
loc_800A12E:
	ldr r0, [r1]
	cmp r0, r5
	bne loc_800A138
	mov r0, #0
	str r0, [r1]
loc_800A138:
	add r1, #4
	add r2, #1
	cmp r2, #8
	blt loc_800A12E
	mov pc, lr
	thumb_func_end relatedToIsBattleOver_800A11C

	thumb_local_start
sub_800A142:
	ldrb r0, [r5,#0x16]
	add r0, #0x12
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r2, [r1,r0]
	sub r2, #1
	strb r2, [r1,r0]
	mov pc, lr
	thumb_func_end sub_800A142

	thumb_func_start sub_800A152
sub_800A152:
	push {lr}
	bl battle_isTimeStop
	bne loc_800A18A
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r2, [r0,#oBattleState_Unk_0d]
	ldrb r1, [r0,#oBattleState_Unk_04]
	tst r1, r1
	bne loc_800A170
	mov r0, #2
	tst r2, r2
	beq locret_800A18C
	mov r0, #1
	b locret_800A18C
loc_800A170:
	ldrb r1, [r0,#oBattleState_Unk_05]
	tst r1, r1
	bne loc_800A180
	mov r0, #1
	tst r2, r2
	beq locret_800A18C
	mov r0, #2
	b locret_800A18C
loc_800A180:
	ldrb r1, [r0,#oBattleState_Unk_0b]
	tst r1, r1
	beq loc_800A18A
	mov r0, #7
	b locret_800A18C
loc_800A18A:
	mov r0, #0
locret_800A18C:
	pop {pc}
	thumb_func_end sub_800A152

	thumb_func_start battle_isBattleOver
battle_isBattleOver:
	mov r0, #1
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	ldrb r1, [r3,#oBattleState_Unk_12]
	tst r1, r1
	beq locret_800A1A8
	ldrb r1, [r3,#oBattleState_Unk_13]
	tst r1, r1
	beq locret_800A1A8
	ldrb r1, [r3,#oBattleState_Unk_0b]
	tst r1, r1
	bne locret_800A1A8
	mov r0, #0
locret_800A1A8:
	mov pc, lr
	thumb_func_end battle_isBattleOver

	thumb_local_start
sub_800A1AA:
	push {lr}
	bl battle_isTimeStop
	bne loc_800A1C8
	bl battle_isBattleOver
	tst r0, r0
	bne loc_800A1C8
	bl sub_800A70C
	ldr r1, off_800A1CC // =0x2d0
	cmp r0, r1
	blt loc_800A1C8
	mov r0, #1
	pop {pc}
loc_800A1C8:
	mov r0, #0
	pop {pc}
	.balign 4, 0
off_800A1CC: .word 0x2D0
	thumb_func_end sub_800A1AA

	thumb_local_start
sub_800A1D0:
	push {lr}
	bl battle_isTimeStop
	bne loc_800A218
	bl battle_isBattleOver
	tst r0, r0
	bne loc_800A218
	mov r0, #0
	mov r1, #0x2c
	bl GetBattleNaviStatsByte
	cmp r0, #0x17
	beq loc_800A200
	cmp r0, #0x18
	beq loc_800A200
	mov r0, #1
	mov r1, #0x2c
	bl GetBattleNaviStatsByte
	cmp r0, #0x17
	beq loc_800A200
	cmp r0, #0x18
	bne loc_800A20A
loc_800A200:
	bl battle_getFlags
	mov r1, #2
	tst r0, r1
	bne loc_800A214
loc_800A20A:
	bl battle_getFlags
	mov r1, #0x10
	tst r0, r1
	beq loc_800A218
loc_800A214:
	mov r0, #1
	pop {pc}
loc_800A218:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_800A1D0

	thumb_local_start
sub_800A21C:
	push {lr}
	bl battle_isTimeStop
	bne loc_800A23A
	bl battle_isBattleOver
	tst r0, r0
	bne loc_800A23A
	bl sub_801DFE4
	ldr r1, dword_800A240 // =0x4000
	cmp r0, r1
	bne loc_800A23A
	mov r0, #1
	pop {pc}
loc_800A23A:
	mov r0, #0
	pop {pc}
	.balign 4, 0
dword_800A240: .word 0x4000
	thumb_func_end sub_800A21C

	thumb_local_start
sub_800A244:
	push {lr}
	bl sub_800A8F8
	cmp r0, #1
	bne loc_800A296
	bl battle_isTimeStop
	bne loc_800A296
	bl battle_isBattleOver
	tst r0, r0
	bne loc_800A296
	mov r0, #0
	bl sub_802E070
	mov r1, #0x50
	ldrb r0, [r0,r1]
	push {r0}
	mov r0, #1
	bl sub_802E070
	mov r1, #0x50
	ldrb r1, [r0,r1]
	pop {r0}
	orr r0, r1
	bne loc_800A296
	mov r0, #0
	bl sub_800A29A
	push {r0}
	bl GetBattleEffects // () -> int
	mov r1, #8
	and r0, r1
	beq loc_800A290
	mov r0, #1
	bl sub_800A29A
loc_800A290:
	pop {r1}
	orr r0, r1
	pop {pc}
loc_800A296:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_800A244

	thumb_local_start
sub_800A29A:
	push {r4,lr}
	mov r4, r0
	bl sub_802E070
	ldrh r0, [r0,#0x28]
	ldr r1, off_800A2C8 // =0x2900
	cmp r0, r1
	blt loc_800A2C0
	mov r1, #8
	mul r1, r4
	add r1, #4
	ldr r2, off_800A2C4 // =dword_2036820
	ldrh r1, [r2,r1]
	ldr r2, off_800A2CC // =0x300
	tst r1, r2
	beq loc_800A2C0
	mov r0, #1
	lsl r0, r4
	b locret_800A2C2
loc_800A2C0:
	mov r0, #0
locret_800A2C2:
	pop {r4,pc}
	.balign 4, 0
off_800A2C4: .word dword_2036820
off_800A2C8: .word 0x2900
off_800A2CC: .word 0x300
	thumb_func_end sub_800A29A

	thumb_local_start
sub_800A2D0:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	strh r0, [r1,#oBattleState_Unk_32]
	mov pc, lr
	thumb_func_end sub_800A2D0

	thumb_func_start battle_setFlags
battle_setFlags:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrh r2, [r1,#oBattleState_Unk_32]
	orr r2, r0
	strh r2, [r1,#oBattleState_Unk_32]
	mov pc, lr
	thumb_func_end battle_setFlags

	thumb_func_start battle_clearFlags
battle_clearFlags:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrh r2, [r1,#oBattleState_Unk_32]
	bic r2, r0
	strh r2, [r1,#oBattleState_Unk_32]
	mov pc, lr
	thumb_func_end battle_clearFlags

	thumb_func_start battle_getFlags
// 0x2 - cust gauge full
// 0x4 - timestop
battle_getFlags:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrh r0, [r1,#oBattleState_Unk_32]
	mov pc, lr
	thumb_func_end battle_getFlags

	thumb_local_start
sub_800A2F8:
	push {r4,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_NaviStatsPtr]
	ldrh r0, [r4,#0x3e]
	mov r1, #0x64
	svc 6
	mov r1, #0x2b
	strb r0, [r4,r1]
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	ldr r1, [r3,#oBattleState_BattleSettings]
	ldrb r0, [r1,#3]
	strb r0, [r3,#oBattleState_Unk_0f]
	ldrb r0, [r1]
	strb r0, [r3,#oBattleState_Unk_06]
	pop {r4,pc}
	thumb_func_end sub_800A2F8

	thumb_local_start
sub_800A318:
	push {r4-r7,lr}
	mov r7, #0
	bl GetBattleEffects // () -> int
	mov r4, r0
	ldr r1, dword_800A564 // =0x200000
	tst r0, r1
	beq loc_800A32C
	ldr r0, off_800A568 // =unk_2039AA0
	b loc_800A33E
loc_800A32C:
	bl GetBattleMode
	lsl r0, r0, #2
	ldr r1, off_800A3DC // =dword_802137C
	ldr r0, [r1,r0]
	tst r0, r0
	bne loc_800A33E
	mov r0, r10
	ldr r0, [r0,#oToolkit_S_Chip_2002178_Ptr]
loc_800A33E:
	mov r1, r10
	ldr r1, [r1,#oToolkit_S_Chip_2002178_Ptr]
	cmp r0, r1
	bne loc_800A35C
	push {r0}
	bl GetCurPETNavi // () -> u8
	mov r1, #0x2d
	bl sub_800A540
	mov r2, #0x3c
	mul r2, r0
	pop {r0}
	// src
	add r0, r0, r2
	mov r7, #1
loc_800A35C:
	push {r0}
	// dest
	ldr r1, off_800A3E0 // =eBattleFolder
	// halfwordCount
	mov r2, #0x3c
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {r0}
	tst r7, r7
	bne loc_800A370
	bl sub_800A7EA
loc_800A370:
	mov r0, #0x80
	tst r0, r4
	beq locret_800A3D8
	mov r7, #0
	bl sub_800A4E0
	add r3, r0, r0
	cmp r0, #0xff
	beq loc_800A394
	ldr r0, off_800A3E0 // =eBattleFolder 
	ldrh r4, [r0]
	ldrh r5, [r0,r3]
	strh r5, [r0]
	strh r4, [r0,r3]
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	mov r7, #1
	strb r7, [r3,#0x17]
loc_800A394:
	mov r6, #0
	bl sub_800A506
	add r2, r0, r0
	add r3, r1, r1
	cmp r0, #0xff
	beq loc_800A3CE
	ldr r0, off_800A3E0 // =eBattleFolder 
	cmp r3, #0x38 
	beq loc_800A3B2
	ldrh r4, [r0,#0x38] // (word_203CDE8 - 0x203cdb0)
	ldrh r5, [r0,r2]
	strh r5, [r0,#0x38] // (word_203CDE8 - 0x203cdb0)
	strh r4, [r0,r2]
	b loc_800A3BC
loc_800A3B2:
	ldrh r4, [r0,#0x3a] // (byte_203CDEA - 0x203cdb0)
	ldrh r5, [r0,r2]
	strh r5, [r0,#0x3a] // (byte_203CDEA - 0x203cdb0)
	strh r4, [r0,r2]
	b loc_800A3C4
loc_800A3BC:
	ldrh r4, [r0,#0x3a] // (byte_203CDEA - 0x203cdb0)
	ldrh r5, [r0,r3]
	strh r5, [r0,#0x3a] // (byte_203CDEA - 0x203cdb0)
	strh r4, [r0,r3]
loc_800A3C4:
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	mov r6, #1
	mov r2, #0x44
	strb r6, [r3,r2]
loc_800A3CE:
	ldr r0, off_800A3E0 // =eBattleFolder
	mov r1, r7
	mov r2, r6
	bl sub_800A570
locret_800A3D8:
	pop {r4-r7,pc}
	.balign 4, 0
off_800A3DC: .word dword_802137C
off_800A3E0: .word eBattleFolder
	thumb_func_end sub_800A318

	thumb_local_start
sub_800A3E4:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	mov r0, #0xff
	str r0, [sp]
	str r0, [sp,#4]
	str r0, [sp,#8]
	mov r7, #0
	bl GetBattleEffects // () -> int
	mov r4, r0
	ldr r1, dword_800A564 // =0x200000
	tst r0, r1
	beq loc_800A402
	ldr r0, off_800A56C // =unk_2039AA0
	b loc_800A414
loc_800A402:
	bl GetBattleMode
	lsl r0, r0, #2
	ldr r1, off_800A4D8 // =dword_802137C
	ldr r0, [r1,r0]
	tst r0, r0
	bne loc_800A414
	mov r0, r10
	ldr r0, [r0,#oToolkit_S_Chip_2002178_Ptr]
loc_800A414:
	mov r1, r10
	ldr r1, [r1,#oToolkit_S_Chip_2002178_Ptr]
	cmp r0, r1
	bne loc_800A432
	push {r0}
	bl GetCurPETNavi // () -> u8
	mov r1, #0x2d
	bl sub_800A540
	mov r2, #0x3c
	mul r2, r0
	pop {r0}
	add r0, r0, r2
	mov r7, #1
loc_800A432:
	mov r6, r0
	mov r0, #0x80
	tst r0, r4
	beq loc_800A468
	bl sub_800A4E0
	add r1, r0, r0
	cmp r0, #0xff
	beq loc_800A44E
	str r1, [sp]
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	mov r1, #1
	strb r1, [r2,#oBattleState_Unk_17]
loc_800A44E:
	bl sub_800A506
	add r2, r0, r0
	add r3, r1, r1
	cmp r0, #0xff
	beq loc_800A468
	str r2, [sp,#4]
	str r3, [sp,#8]
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	mov r1, #1
	mov r3, #0x44
	strb r1, [r2,r3]
loc_800A468:
	mov r2, #0
	mov r3, #0
	ldr r0, [sp]
	cmp r0, #0xff
	beq loc_800A474
	mov r3, #2
loc_800A474:
	ldr r0, [sp]
	cmp r0, r2
	bne loc_800A482
	ldrh r0, [r6,r2]
	ldr r1, off_800A4DC // =eBattleFolder 
	strh r0, [r1]
	b loc_800A4A6
loc_800A482:
	ldr r0, [sp,#4]
	cmp r0, r2
	bne loc_800A490
	ldrh r0, [r6,r2]
	ldr r1, off_800A4DC // =eBattleFolder 
	strh r0, [r1,#0x38] // (word_203CDE8 - 0x203cdb0)
	b loc_800A4A6
loc_800A490:
	ldr r0, [sp,#8]
	cmp r0, r2
	bne loc_800A49E
	ldrh r0, [r6,r2]
	ldr r1, off_800A4DC // =eBattleFolder 
	strh r0, [r1,#0x3a] // (byte_203CDEA - 0x203cdb0)
	b loc_800A4A6
loc_800A49E:
	ldrh r0, [r6,r2]
	ldr r1, off_800A4DC // =eBattleFolder 
	strh r0, [r1,r3]
	add r3, #2
loc_800A4A6:
	add r2, #2
	cmp r2, #0x3c
	blt loc_800A474
	mov r0, r6
	tst r7, r7
	bne loc_800A4B6
	bl sub_800A7EA
loc_800A4B6:
	mov r0, #0x80
	tst r0, r4
	beq loc_800A4D2
	ldr r0, off_800A4DC // =eBattleFolder 
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	mov r3, #0x17
	ldrb r1, [r2,r3]
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	mov r3, #0x44
	ldrb r2, [r2,r3]
	bl sub_800A570
loc_800A4D2:
	add sp, sp, #0xc
	pop {r4-r7,pc}
	.balign 4, 0
off_800A4D8: .word dword_802137C
off_800A4DC: .word eBattleFolder
	thumb_func_end sub_800A3E4

	thumb_local_start
sub_800A4E0:
	push {r4,lr}
	bl GetBattleMode
	cmp r0, #1
	bne loc_800A4EE
	mov r0, #0xff
	b locret_800A504
loc_800A4EE:
	bl GetCurPETNavi // () -> u8
	mov r4, r0
	mov r1, #0x2d
	bl sub_800A540
	mov r1, #0x2e
	add r1, r1, r0
	mov r0, r4
	bl sub_800A540
locret_800A504:
	pop {r4,pc}
	thumb_func_end sub_800A4E0

	thumb_local_start
sub_800A506:
	push {r4,r6,lr}
	bl GetBattleMode
	cmp r0, #1
	bne loc_800A516
	mov r0, #0xff
	mov r1, #0xff
	b locret_800A53E
loc_800A516:
	bl GetCurPETNavi // () -> u8
	mov r4, r0
	mov r1, #0x2d
	bl sub_800A540
	lsl r6, r0, #1
	mov r1, #0x56
	add r1, r1, r6
	mov r0, r4
	bl sub_800A540
	mov r1, #0x57
	add r1, r1, r6
	push {r0}
	mov r0, r4
	bl sub_800A540
	mov r1, r0
	pop {r0}
locret_800A53E:
	pop {r4,r6,pc}
	thumb_func_end sub_800A506

	thumb_local_start
sub_800A540:
	push {r4,r6,lr}
	mov r6, r0
	mov r4, r1
	bl GetBattleEffects // () -> int
	ldr r1, dword_800A564 // =0x200000 
	tst r0, r1
	beq loc_800A558
	mov r1, r4
	bl GetNaviStats203CCE0Byte
	b locret_800A560
loc_800A558:
	mov r0, r6
	mov r1, r4
	bl GetCurPETNaviStatsByte // (int a1, int a2) -> u8
locret_800A560:
	pop {r4,r6,pc}
	.balign 4, 0
dword_800A564: .word 0x200000
off_800A568: .word unk_2039AA0
off_800A56C: .word unk_2039AA0
	thumb_func_end sub_800A540

	thumb_local_start
// eBattleFolder = some buffer
sub_800A570: // shuffle folder
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r7, r0
	mov r5, #0
	mov r6, #0
	mov r4, #0
loc_800A582:
	ldrh r0, [r7]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#0x7] // ChipData.elemIdx
	cmp r1, #2 // giga
	beq loc_800A59E
	add r1, r5, r5
	ldr r2, off_800A910 // =dword_2033000not giga
	ldrh r0, [r7]
	strh r0, [r2,r1]
	add r5, #1
	b loc_800A5A8
loc_800A59E:
	add r1, r6, r6
	ldr r2, off_800A914 // =word_2033040gigas
	ldrh r0, [r7]
	strh r0, [r2,r1]
	add r6, #1
loc_800A5A8:
	add r7, #2
	add r4, #1
	cmp r4, #0x1e
	blt loc_800A582
	ldr r0, off_800A918 // =dword_2033000
	mov r1, r5 // r5 = num non-gigas
	beq loc_800A5D2
	mov r2, r5
	ldr r3, [sp,#4]
	tst r3, r3
	beq loc_800A5C4
	ldr r0, dword_800A91C // =dword_2033000+2
// reg?
	sub r1, #1
	sub r2, #1
loc_800A5C4:
	ldr r3, [sp,#8]
	tst r3, r3
	beq loc_800A5CE
// tag?
	sub r1, #2
	sub r2, #2
loc_800A5CE:
	bl ShuffleHwordList_SecondaryRNG
loc_800A5D2:
	ldr r0, off_800A920 // =word_2033040
	mov r1, r6 // num gigas
	beq loc_800A634
	mov r2, r6
	bl ShuffleHwordList_SecondaryRNG
	bl GetBattleMode
	cmp r0, #1 // crossover
	beq loc_800A610
	mov r4, #0
loc_800A5E8:
// r5 = chips in main shuffled folder
	bl GetPositiveSignedRNGSecondary
	mov r1, #0xc
	neg r1, r1
	add r1, r1, r5
	svc 6
	mov r3, #0xa
	add r3, r3, r1
	ldr r0, off_800A924 // =dword_2033000
	mov r1, r5
	add r2, r4, r4
	ldr r7, off_800A928 // =word_2033040
	ldrh r2, [r7,r2]
// r0 = main shuffled folder ptr
// r1 = main shuffled folder len
// r2 = cur giga
// r3 = insertion index
	bl sub_800A672
	mov r5, r0
	add r4, #1
	cmp r4, r6
	blt loc_800A5E8
	b loc_800A634
loc_800A610:
	mov r4, #0
loc_800A612:
	bl GetPositiveSignedRNGSecondary
	mov r1, #0xb
	svc 6
	mov r3, #8
	add r3, r3, r1
	ldr r0, off_800A92C // =dword_2033000
	mov r1, r5
	add r2, r4, r4
	ldr r7, off_800A930 // =word_2033040
	ldrh r2, [r7,r2]
	bl sub_800A672
	mov r5, r0
	add r4, #1
	cmp r4, r6
	blt loc_800A612
loc_800A634:
	ldr r0, [sp,#8]
	tst r0, r0
	beq loc_800A664
	bl GetPositiveSignedRNGSecondary
	mov r1, #0x13
	svc 6
	mov r0, #1
	add r1, r1, r0
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	mov r2, #0x45
	strb r1, [r3,r2]
	lsl r1, r1, #1
	ldr r0, off_800A934 // =dword_2033000
	ldrh r3, [r0,#0x38] // (word_2033038 - 0x2033000)
	ldrh r4, [r0,r1]
	strh r4, [r0,#0x38] // (word_2033038 - 0x2033000)
	strh r3, [r0,r1]
	add r1, #2
	ldrh r3, [r0,#0x3a] // (word_203303A - 0x2033000)
	ldrh r4, [r0,r1]
	strh r4, [r0,#0x3a] // (word_203303A - 0x2033000)
	strh r3, [r0,r1]
loc_800A664:
	// src
	ldr r0, off_800A938 // =dword_2033000
	// dest
	ldr r1, [sp]
	// halfwordCount
	mov r2, #0x3c
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	add sp, sp, #0xc
	pop {r4-r7,pc}
	thumb_func_end sub_800A570

	thumb_local_start
// r0 = main shuffled folder ptr
// r1 = main shuffled folder len
// r2 = cur giga
// r3 = insertion index
sub_800A672:
	push {lr}
	sub sp, sp, #0x10
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	cmp r3, r1
	bgt .insertionIndexGreaterThanFolderLength
	// r2 = loop index
	sub r2, r1, #1
	// * 2 for halfword accesses
	add r3, r2, r2
	// r0 = last element of folder
	add r0, r0, r3
.folderShiftLoop
	ldr r3, [sp,#0xc]
	cmp r2, r3
 // are we at the insertion index?
	blt .stopFolderShift
	ldrh r3, [r0]
	strh r3, [r0,#2]
	sub r2, #1
	sub r0, #2
	b .folderShiftLoop
.stopFolderShift
	add r0, #2
	ldr r1, [sp,#8]
	strh r1, [r0]
	ldr r0, [sp,#4]
	add r0, #1
.insertionIndexGreaterThanFolderLength
	add sp, sp, #0x10
	pop {pc}
	thumb_func_end sub_800A672

	thumb_local_start
sub_800A6A6:
	push {lr}
	bl battle_isTimeStop
	bne locret_800A6D6
	bl battle_isPaused
	bne locret_800A6D6
	bl battle_isBattleOver
	bne locret_800A6D6
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_800A6D6
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldr r1, [r0,#oBattleState_Unk_40]
	add r1, #1
	ldr r2, dword_800A93C // =0x8c9f
	cmp r1, r2
	blt loc_800A6D4
	mov r1, r2
loc_800A6D4:
	str r1, [r0,#oBattleState_Unk_40]
locret_800A6D6:
	pop {pc}
	thumb_func_end sub_800A6A6

	thumb_local_start
sub_800A6D8:
	push {lr}
	bl battle_isTimeStop
	bne locret_800A702
	bl battle_isPaused
	bne locret_800A702
	bl battle_isBattleOver
	tst r0, r0
	bne locret_800A702
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_800A702
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrh r1, [r0,#0x38]
	add r1, #1
	strh r1, [r0,#0x38]
locret_800A702:
	pop {pc}
	thumb_func_end sub_800A6D8

	thumb_func_start sub_800A704
sub_800A704:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldr r0, [r0,#oBattleState_Unk_40]
	mov pc, lr
	thumb_func_end sub_800A704

	thumb_func_start sub_800A70C
sub_800A70C:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrh r0, [r0,#oBattleState_Unk_38]
	mov pc, lr
	thumb_func_end sub_800A70C

	thumb_local_start
sub_800A714:
	mov r1, #0
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	strh r1, [r0,#0x38]
	mov pc, lr
	thumb_func_end sub_800A714

// (int battleSettingsIdx) -> BattleSettings*
	thumb_func_start getBattleSettingsFromList0
getBattleSettingsFromList0:
	mov r1, #0x10
	mul r1, r0
	ldr r0, off_800A940 // =battleSettingsList0
	add r0, r0, r1
	mov pc, lr
	thumb_func_end getBattleSettingsFromList0

	thumb_func_start getBattleSettingsFromList1
getBattleSettingsFromList1: // (int battleSettingsIdx) -> BattleSettings*
	mov r1, #0x10
	mul r1, r0
	ldr r0, off_800A944 // =BattleSettingsList1
	add r0, r0, r1
	mov pc, lr
	thumb_func_end getBattleSettingsFromList1

	thumb_func_start isSameSubsystem_800A732
isSameSubsystem_800A732: // () -> !zf
	push {r4,lr}
	mov r4, #TRUE
	bl IsCurSubsystemInUse // () -> (bool, !zf)
	beq loc_800A748
	ldr r3, off_800A750 // =eStruct203F7D8
	ldrb r1, [r3,#0x1] // (eStruct203F7D8+1 - 0x203f7d8)
	mov r2, #2
	tst r1, r2
	bne loc_800A748
	mov r4, #FALSE
loc_800A748:
	mov r0, r4
	tst r0, r0
	pop {r4,pc}
	.balign 4, 0
off_800A750: .word eStruct203F7D8
	thumb_func_end isSameSubsystem_800A732

	thumb_local_start
sub_800A754:
	push {lr}
	push {r0}
	bl sub_800139A
	pop {r2}
	mov r1, #4
	tst r2, r2
	beq loc_800A766
	mov r1, #8
loc_800A766:
	tst r0, r1
	beq loc_800A76E
	mov r0, #1
	pop {pc}
loc_800A76E:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_800A754

	thumb_func_start sub_800A772
// lockout check?
sub_800A772:
	push {lr}
	push {r0}
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r0,#oAIData_ChipLockoutTimer]
	tst r1, r1
	pop {r0}
	bne loc_800A798
	push {r0}
	bl sub_800139A
	pop {r2}
	// test battlestate+oBattleState_Unk_5c
	// if player alliance: test 4
	// if opponent alliance: test 8
	// current knowledge says this is never unset
	mov r1, #4
	tst r2, r2
	beq loc_800A790
	mov r1, #8
loc_800A790:
	tst r0, r1
	beq loc_800A798
	mov r0, #1
	pop {pc}
loc_800A798:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_800A772

	thumb_local_start
sub_800A79C:
	push {lr}
	mov r0, #0xc
	bl sub_80013A2
	pop {pc}
	thumb_func_end sub_800A79C

	thumb_local_start
sub_800A7A6:
	push {r4-r7,lr}
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	add r6, #oBattleState_OpponentActors
	mov r3, #0
	mov r4, #0
loc_800A7B2:
	ldr r7, [r6,r3]
	cmp r7, #0
	beq loc_800A7C4
	ldrh r5, [r7,#oBattleObject_NameID]
	cmp r5, r1
	blt loc_800A7C4
	cmp r5, r2
	bgt loc_800A7C4
	add r4, #1
loc_800A7C4:
	add r3, #4
	cmp r3, #0x10
	blt loc_800A7B2
	mov r0, r4
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_800A7A6

	thumb_func_start IsCurSubsystemInUse
IsCurSubsystemInUse: // () -> (bool, !zf)
	mov r0, #FALSE
	// Flags20093A4 *v0 = *flags32_20093A4
	ldr r1, off_800A948 // =flags32_20093A4
	ldr r1, [r1]
	mov r2, #FLAGS_20093A4_CUR_SUBSYSTEM_IN_USE
	tst r1, r2
	beq loc_800A7DE
	mov r0, #TRUE
loc_800A7DE:
	tst r0, r0
	mov pc, lr
	thumb_func_end IsCurSubsystemInUse

	thumb_func_start sub_800A7E2
sub_800A7E2:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	mov pc, lr
	thumb_func_end sub_800A7E2

	thumb_local_start
sub_800A7EA:
	push {r4,r6,lr}
	mov r4, r0
	mov r6, #0
loc_800A7F0:
	ldrh r0, [r4]
	lsr r1, r0, #9
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r2, #0
	push {r0}
	bl encryption_applyPack_8006e70 // (int idx_20008A0) -> void
	pop {r0}
	add r4, #2
	add r6, #1
	cmp r6, #0x1e
	blt loc_800A7F0
	pop {r4,r6,pc}
	thumb_func_end sub_800A7EA

	thumb_local_start
sub_800A80C:
	push {r4,r5,lr}
	mov r4, r0
	mov r5, #0
loc_800A812:
	ldrh r0, [r4]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#7]
	cmp r0, #2
	beq loc_800A82E
	add r4, #2
	add r5, #1
	cmp r5, #0xa
	blt loc_800A812
	mov r0, #0
	pop {r4,r5,pc}
loc_800A82E:
	mov r0, #1
	pop {r4,r5,pc}
	thumb_func_end sub_800A80C

	thumb_func_start sub_800A832
sub_800A832:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_1f]
	lsr r1, r0, #4
	mov r2, #0xf
	and r0, r2
	mov pc, lr
	thumb_func_end sub_800A832

	thumb_local_start
setTwoStructs_800A840:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	strb r0, [r1,#oBattleState_Unk_1f]
	bl eStruct200A008_setBattleResult
	pop {pc}
	thumb_func_end setTwoStructs_800A840

	thumb_local_start
sub_800A84E:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_07]
	mov pc, lr
	thumb_func_end sub_800A84E

	thumb_func_start sub_800A856
sub_800A856:
	mov r0, #0
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	ldrb r1, [r3,#0x12]
	tst r1, r1
	bne loc_800A864
	add r0, #1
loc_800A864:
	ldrb r1, [r3,#0x13]
	tst r1, r1
	bne locret_800A86C
	add r0, #2
locret_800A86C:
	mov pc, lr
	thumb_func_end sub_800A856

	thumb_local_start
sub_800A86E:
	push {r4,r7,lr}
	mov r4, #0
	mov r7, r10
	ldr r7, [r7,#oToolkit_BattleStatePtr]
	add r7, #oBattleState_AliveBattleActors
loc_800A878:
	ldr r3, [r7]
	tst r3, r3
	beq loc_800A888
	ldr r2, [r3,#oBattleObject_AIDataPtr]
	ldrb r0, [r2,#oAIData_Unk_0e]
	cmp r0, #0xff
	beq loc_800A888
	ldrh r1, [r3,#oBattleObject_HP]
loc_800A888:
	add r7, #4
	add r4, #1
	cmp r4, #8
	blt loc_800A878
	pop {r4,r7,pc}
	thumb_func_end sub_800A86E

	thumb_local_start
sub_800A892:
	push {lr}
	bl GetBattleEffects // () -> int
	ldr r1, off_800A94C // =0x100 
	tst r0, r1
	beq locret_800A8B0
	mov r1, #8
	tst r0, r1
	bne locret_800A8B0
	bl sub_800A832
	cmp r0, #2
	bne locret_800A8B0
	bl sub_8005DBE
locret_800A8B0:
	pop {pc}
	thumb_func_end sub_800A892

	thumb_local_start
sub_800A8B2:
	push {lr}
	bl sub_800A7E2
	mov r1, #0x29
	bl GetBattleNaviStatsByte
	ldr r1, off_800A8C4 // =byte_800A8C8
	ldrb r0, [r0,r1]
	pop {pc}
	.balign 4, 0
off_800A8C4: .word byte_800A8C8
byte_800A8C8: .byte 0x8, 0x64, 0x68, 0x6C, 0x70, 0x74, 0x78, 0x7C, 0x80
	.byte 0x84, 0x88, 0x8C
	thumb_func_end sub_800A8B2

	thumb_local_start
sub_800A8D4:
	push {lr}
	bl sub_800A7E2
	mov r1, #0x29
	bl GetBattleNaviStatsByte
	ldr r1, off_800A8E8 // =byte_800A8EC
	ldrb r0, [r0,r1]
	pop {pc}
	.balign 4, 0
off_800A8E8: .word byte_800A8EC
byte_800A8EC:
	.byte 0x38, 0x90, 0x94, 0x98
	.byte 0x9C, 0xA0, 0xA4, 0xA8
	.byte 0xAC, 0xB0, 0xB4, 0xB8
	thumb_func_end sub_800A8D4

	thumb_func_start sub_800A8F8
sub_800A8F8:
	push {r4,lr}
	mov r4, #0
	bl TestBattleFlag_0x40
	beq loc_800A904
	mov r4, #1
loc_800A904:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_800A8F8

	thumb_func_start sub_800A908
sub_800A908:
	mov r0, #0
	ldr r1, off_800A950 // =dword_2000B30
	str r0, [r1]
	mov pc, lr
off_800A910: .word dword_2033000
off_800A914: .word word_2033040
off_800A918: .word dword_2033000
dword_800A91C: .word dword_2033000+2
off_800A920: .word word_2033040
off_800A924: .word dword_2033000
off_800A928: .word word_2033040
off_800A92C: .word dword_2033000
off_800A930: .word word_2033040
off_800A934: .word dword_2033000
off_800A938: .word dword_2033000
dword_800A93C: .word 0x8C9F
off_800A940: .word battleSettingsList0
off_800A944: .word BattleSettingsList1
off_800A948: .word flags32_20093A4
off_800A94C: .word 0x100
off_800A950: .word dword_2000B30
	thumb_func_end sub_800A908

	thumb_local_start
sub_800A954:
	push {lr}
	ldr r0, off_800ABF0 // =byte_20349C0
	bl sub_800A964
	ldr r0, off_800ABF4 // =byte_2034A10
	bl sub_800A964
	pop {pc}
	thumb_func_end sub_800A954

	thumb_local_start
sub_800A964:
	push {r4,lr}
	mov r4, r0
	// size
	mov r1, #0x50
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	// mem
	add r0, r4, #2
	// byteCount
	mov r1, #0xc
	// byte
	mov r2, #0xff
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	pop {r4,pc}
	thumb_func_end sub_800A964

	thumb_func_start sub_800A97A
sub_800A97A:
	push {lr}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_800A994
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	ldrb r1, [r3,#oBattleState_Unk_07]
	cmp r1, #0xf
	blt loc_800A994
	mov r0, #1
	pop {pc}
loc_800A994:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_800A97A

	thumb_func_start sub_800A998
sub_800A998:
	push {r4,lr}
	mov r2, r0
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	ldrb r1, [r3,#0xd]
	mov r0, #1
	eor r0, r1
	mov r1, #0x10
	mul r0, r1
	add r0, #oBattleState_AliveBattleActors
	add r3, r3, r0
	mov r0, #0
	mov r4, #0
loc_800A9B2:
	ldr r1, [r3]
	tst r1, r1
	beq loc_800A9BE
	ldrh r1, [r1,#oBattleObject_NameID]
	strh r1, [r2,r0]
	add r0, #2
loc_800A9BE:
	add r3, #4
	add r4, #1
	cmp r4, #4
	blt loc_800A9B2
	lsr r0, r0, #1
	pop {r4,pc}
	thumb_func_end sub_800A998

	thumb_local_start
sub_800A9CA:
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	ldrb r1, [r3,#oBattleState_Unk_11]
	orr r1, r0
	strb r1, [r3,#oBattleState_Unk_11]
	mov pc, lr
	thumb_func_end sub_800A9CA

	thumb_func_start sub_800A9D6
sub_800A9D6:
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	ldrb r1, [r3,#oBattleState_Unk_11]
	bic r1, r0
	strb r1, [r3,#oBattleState_Unk_11]
	mov pc, lr
	thumb_func_end sub_800A9D6

	thumb_func_start sub_800A9E2
sub_800A9E2:
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	add r0, #0x14
	ldrb r0, [r3,r0]
	mov pc, lr
	thumb_func_end sub_800A9E2

	thumb_func_start battle_networkInvert
battle_networkInvert:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r2, [r1,#oBattleState_Unk_0d]
	eor r0, r2
	mov pc, lr
	thumb_func_end battle_networkInvert

	thumb_local_start
battle_clearEnemyFadeinList:
	push {lr}
	mov r0, #0
	bl sub_800AAAE
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {pc}
	thumb_func_end battle_clearEnemyFadeinList

	thumb_func_start sub_800AA06
sub_800AA06:
	push {lr}
	bl sub_800AAAE
	mov r2, #0
	ldr r0, [r0]
	cmp r0, r5
	bne loc_800AA16
	mov r2, #1
loc_800AA16:
	mov r0, r2
	pop {pc}
	thumb_func_end sub_800AA06

	thumb_func_start sub_800AA1A
sub_800AA1A:
	push {r7,lr}
	bl sub_800AAAE
	mov r7, r0
	mov r0, #0
loc_800AA24:
	ldr r1, [r7,r0]
	cmp r1, r5
	beq loc_800AA38
	cmp r1, #0
	bne loc_800AA32
	str r5, [r7,r0]
	b loc_800AA3C
loc_800AA32:
	add r0, #4
	cmp r0, #0x20
	bne loc_800AA24
loc_800AA38:
	mov r0, #0
	pop {r7,pc}
loc_800AA3C:
	mov r0, #1
	pop {r7,pc}
	thumb_func_end sub_800AA1A

	thumb_func_start sub_800AA40
sub_800AA40:
	push {lr}
	push {r0}
	bl sub_800AAAE
	mov r3, r0
	mov r0, #0
loc_800AA4C:
	ldr r1, [r3,r0]
	cmp r1, r5
	bne loc_800AA56
	mov r1, #0
	str r1, [r3,r0]
loc_800AA56:
	add r0, #4
	cmp r0, #0x20
	bne loc_800AA4C
	pop {r0}
	bl sub_800AA64
	pop {pc}
	thumb_func_end sub_800AA40

	thumb_local_start
sub_800AA64:
	push {r4,lr}
	bl sub_800AAAE
	mov r3, r0
	mov r1, r3
	mov r4, #0x1c
	add r4, r4, r3
	mov r0, #0
loc_800AA74:
	ldr r0, [r3]
	cmp r0, #0
	beq loc_800AA7E
	str r0, [r1]
	add r1, #4
loc_800AA7E:
	add r3, #4
	cmp r3, r4
	bne loc_800AA74
	mov r0, #0
loc_800AA86:
	cmp r1, r4
	beq locret_800AA90
	str r0, [r1]
	add r1, #4
	b loc_800AA86
locret_800AA90:
	pop {r4,pc}
	thumb_func_end sub_800AA64

	thumb_func_start sub_800AA92
sub_800AA92:
	push {lr}
	bl sub_800AAAE
	mov r3, r0
	mov r0, #0
	mov r2, #0
loc_800AA9E:
	ldr r1, [r3,r2]
	cmp r1, #0
	beq loc_800AAA6
	add r0, #1
loc_800AAA6:
	add r2, #4
	cmp r2, #0x20
	blt loc_800AA9E
	pop {pc}
	thumb_func_end sub_800AA92

	thumb_local_start
sub_800AAAE:
	mov r1, #0x20
	mul r0, r1
	ldr r1, off_800AAB8 // =unk_2038170
	add r0, r0, r1
	mov pc, lr
off_800AAB8: .word unk_2038170
	thumb_func_end sub_800AAAE

	thumb_func_start sub_800AABC
sub_800AABC:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_BattleStatePtr]
	mov r0, #4
	bl setTwoStructs_800A840
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	mov r1, #0x14
	strb r1, [r0,#oBattleState_Unk_01]
	mov r1, #0
	strh r1, [r0,#oBattleState_Unk_02_03]
	pop {r5,pc}
	thumb_func_end sub_800AABC

	thumb_local_start
sub_800AAD6:
	push {r5,lr}
	bl sub_800AABC
	mov r5, r10
	ldr r5, [r5,#oToolkit_BattleStatePtr]
	mov r0, #2
	bl setTwoStructs_800A840
	pop {r5,pc}
	thumb_func_end sub_800AAD6

	thumb_func_start sub_800AAE8
sub_800AAE8:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	mov r0, #1
	strh r0, [r1,#oBattleState_Unk_3a]
	mov pc, lr
	thumb_func_end sub_800AAE8

	thumb_local_start
sub_800AAF2:
	push {lr}
	mov r0, #0
	bl sub_800AAFC
	pop {pc}
	thumb_func_end sub_800AAF2

	thumb_local_start
sub_800AAFC:
	push {r4,lr}
	mov r4, r0
	mov r1, #0x28
	mul r0, r1
	ldr r2, off_800ABF8 // =unk_20018C0
	add r0, r0, r2
	mov r2, #0
	mvn r2, r2
	bl WordFill
	mov r1, #0x28
	mul r4, r1
	ldr r0, off_800ABFC // =unk_2000260
	add r0, r0, r4
	mov r2, #0
	mvn r2, r2
	bl WordFill
	pop {r4,pc}
	thumb_func_end sub_800AAFC

	thumb_local_start
sub_800AB22:
	push {lr}
	ldr r0, off_800AC00 // =word_2000FA0
	mov r1, #0x1a
	bl ZeroFillByHalfword
	pop {pc}
	thumb_func_end sub_800AB22

	thumb_func_start sub_800AB2E
sub_800AB2E:
	mov r3, #0x10
	mul r0, r3
	ldr r3, off_800AC04 // =byte_203EAE0
	add r3, r3, r0
	strb r2, [r3,r1]
	mov pc, lr
	thumb_func_end sub_800AB2E

	thumb_func_start sub_800AB3A
sub_800AB3A:
	mov r3, #0x10
	mul r0, r3
	ldr r3, off_800AC08 // =byte_203EAE0
	add r3, r3, r0
	ldrb r0, [r3,r1]
	mov pc, lr
	thumb_func_end sub_800AB3A

	thumb_func_start sub_800AB46
sub_800AB46:
	mov r3, #0x10
	mul r0, r3
	ldr r3, off_800AC0C // =byte_203EAE0
	add r3, r3, r0
	ldrb r0, [r3,r1]
	add r0, r0, r2
	cmp r0, #0xff
	ble loc_800AB58
	mov r0, #0xff
loc_800AB58:
	strb r0, [r3,r1]
	mov pc, lr
	thumb_func_end sub_800AB46

	thumb_local_start
sub_800AB5C:
	mov r3, #0x10
	mul r0, r3
	ldr r3, off_800AC10 // =byte_203EAE0
	add r3, r3, r0
	ldrb r0, [r3,r1]
	sub r0, r0, r2
	bge loc_800AB6C
	mov r0, #0
loc_800AB6C:
	strb r0, [r3,r1]
	mov pc, lr
	thumb_func_end sub_800AB5C

	thumb_local_start
sub_800AB70:
	push {lr}
	// memBlock
	ldr r0, off_800AC14 // =byte_203EAE0
	// size
	mov r1, #0x20
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {pc}
	thumb_func_end sub_800AB70

	thumb_local_start
sub_800AB7C:
	push {r4,lr}
	ldr r4, off_800AC18 // =dword_203CA70
	bl battle_isPaused
	tst r0, r0
	bne loc_800ABAC
	bl battle_isTimeStop
	tst r0, r0
	bne loc_800ABAC
	bl battle_isBattleOver
	tst r0, r0
	bne loc_800ABB8
	ldrh r0, [r4,#0xa] // (word_203CA7A - 0x203ca70)
	cmp r0, #0x3c
	blt loc_800ABA4
	sub r0, #1
	strh r0, [r4,#0xa] // (word_203CA7A - 0x203ca70)
	b loc_800ABAC
loc_800ABA4:
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	mov r0, #1
	strb r0, [r2,#oBattleState_Unk_0b]
loc_800ABAC:
	ldrh r0, [r4,#0xa] // (word_203CA7A - 0x203ca70)
	mov r1, #0x3c
	svc 6
	bl sub_801E398
	pop {r4,pc}
loc_800ABB8:
	ldr r0, off_800AC1C // =0x800
	bl sub_801DACC
	ldr r0, off_800AC1C // =0x800
	bl sub_801BED6
	pop {r4,pc}
	thumb_func_end sub_800AB7C

	thumb_func_start sub_800ABC6
sub_800ABC6:
	push {r4,lr}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x10
	lsl r3, r3, #0x10
	add r2, r2, r3
	add r3, r3, r3
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	ldrb r4, [r4,#oBattleState_Unk_0d]
	lsl r4, r4, #8
	add r4, #0x46
	mov r0, #1
	bl spawn_t1_0x0_EffectObject
	mov r0, #0xa5
	bl PlaySoundEffect
	pop {r4,pc}
	.balign 4, 0
off_800ABF0: .word byte_20349C0
off_800ABF4: .word byte_2034A10
off_800ABF8: .word unk_20018C0
off_800ABFC: .word unk_2000260
off_800AC00: .word word_2000FA0
off_800AC04: .word byte_203EAE0
off_800AC08: .word byte_203EAE0
off_800AC0C: .word byte_203EAE0
off_800AC10: .word byte_203EAE0
off_800AC14: .word byte_203EAE0
off_800AC18: .word dword_203CA70
off_800AC1C: .word 0x800
	thumb_func_end sub_800ABC6

	thumb_local_start
sub_800AC20:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x14
	ldr r2, dword_800ADD8 // =0x18f
	cmp r0, #2
	bne loc_800AC2C
	mov r2, #0xf1
loc_800AC2C:
	str r0, [sp]
	str r2, [sp,#0x10]
	str r1, [sp,#0x14]
	mov r0, #0
	str r0, [sp,#4]
	ldr r0, [sp,#0x10]
	lsr r0, r0, #1
	str r0, [sp,#0x10]
	bcc loc_800AC6C
	bl sub_800A704
	bl memory_bcd_8000D84
	ldr r2, [sp]
	mov r1, #0xc
	mul r1, r2
	ldr r7, off_800ADD0 // =off_800ADDC
	add r7, r7, r1
	mov r2, #0
loc_800AC52:
	ldr r1, [r7]
	cmp r0, r1
	ble loc_800AC60
	add r7, #4
	add r2, #1
	cmp r2, #3
	blt loc_800AC52
loc_800AC60:
	ldr r1, [sp]
	lsl r1, r1, #2
	ldr r7, off_800ADD4 // =byte_800AE00
	add r7, r7, r1
	ldrb r0, [r7,r2]
	str r0, [sp,#4]
loc_800AC6C:
	ldr r0, [sp,#0x10]
	lsr r0, r0, #1
	str r0, [sp,#0x10]
	bcc loc_800AC90
	ldr r0, [sp,#0x14]
	mov r1, #3
	bl sub_800AB3A
	cmp r0, #4
	bge loc_800AC86
	neg r0, r0
	add r0, #1
	b loc_800AC8A
loc_800AC86:
	mov r0, #0
	sub r0, #3
loc_800AC8A:
	ldr r1, [sp,#4]
	add r1, r1, r0
	str r1, [sp,#4]
loc_800AC90:
	ldr r0, [sp,#0x10]
	lsr r0, r0, #1
	str r0, [sp,#0x10]
	bcc loc_800ACAE
	ldr r0, [sp,#0x14]
	mov r1, #4
	bl sub_800AB3A
	mov r1, #1
	cmp r0, #2
	ble loc_800ACA8
	mov r1, #0
loc_800ACA8:
	ldr r0, [sp,#4]
	add r0, r0, r1
	str r0, [sp,#4]
loc_800ACAE:
	ldr r0, [sp,#0x10]
	lsr r0, r0, #1
	str r0, [sp,#0x10]
	bcc loc_800ACC6
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_1b]
	sub r0, #1
	add r0, r0, r0
	ldr r1, [sp,#4]
	add r1, r1, r0
	str r1, [sp,#4]
loc_800ACC6:
	ldr r0, [sp,#0x10]
	lsr r0, r0, #1
	str r0, [sp,#0x10]
	bcc loc_800ACFE
	ldr r0, [sp,#0x14]
	bl battle_findPlayer
	tst r0, r0
	beq loc_800ACFE
	ldrh r2, [r0,#oBattleObject_HP]
	ldrh r3, [r0,#oBattleObject_MaxHP]
	mov r0, #0
	lsr r4, r3, #1
	cmp r2, r4
	blt loc_800ACF8
	mov r0, #1
	lsr r4, r3, #2
	lsr r1, r3, #1
	add r4, r4, r1
	cmp r2, r4
	blt loc_800ACF8
	mov r0, #2
	cmp r2, r3
	blt loc_800ACF8
	mov r0, #3
loc_800ACF8:
	ldr r1, [sp,#4]
	add r1, r1, r0
	str r1, [sp,#4]
loc_800ACFE:
	ldr r0, [sp,#0x10]
	lsr r0, r0, #1
	str r0, [sp,#0x10]
	bcc loc_800AD30
	ldr r0, [sp,#0x14]
	mov r1, #5
	bl sub_800AB3A
	mov r1, #0
	tst r0, r0
	beq loc_800AD2A
	cmp r0, #1
	bne loc_800AD1C
	mov r1, #1
	b loc_800AD28
loc_800AD1C:
	cmp r0, #4
	blt loc_800AD22
	mov r0, #3
loc_800AD22:
	mov r1, r0
	sub r1, #1
	add r1, r1, r1
loc_800AD28:
	neg r1, r1
loc_800AD2A:
	ldr r0, [sp,#4]
	add r0, r0, r1
	str r0, [sp,#4]
loc_800AD30:
	ldr r0, [sp,#0x10]
	lsr r0, r0, #1
	str r0, [sp,#0x10]
	bcc loc_800AD7E
	ldr r0, [sp,#0x14]
	bl battle_findPlayer
	tst r0, r0
	beq loc_800AD7E
	ldrh r6, [r0,#oBattleObject_MaxHP]
	ldr r0, [sp,#0x14]
	mov r1, #1
	eor r0, r1
	bl battle_findPlayer
	tst r0, r0
	beq loc_800AD7E
	ldrh r7, [r0,#oBattleObject_MaxHP]
	mov r4, #0
	sub r6, r6, r7
	bge loc_800AD5E
	mov r4, #1
	neg r6, r6
loc_800AD5E:
	mov r0, r6
	mov r1, #0x64
	svc 6
	cmp r0, #1
	ble loc_800AD72
	lsr r0, r0, #1
	lsl r0, r0, #1
	cmp r0, #4
	ble loc_800AD72
	mov r0, #4
loc_800AD72:
	tst r4, r4
	bne loc_800AD78
	neg r0, r0
loc_800AD78:
	ldr r1, [sp,#4]
	add r1, r1, r0
	str r1, [sp,#4]
loc_800AD7E:
	ldr r0, [sp,#0x10]
	lsr r0, r0, #1
	str r0, [sp,#0x10]
	bcc loc_800AD9E
	ldr r0, [sp,#0x14]
	mov r1, #8
	bl sub_800AB3A
	cmp r0, #0
	beq loc_800AD9E
	cmp r0, #3
	ble loc_800AD98
	mov r0, #3
loc_800AD98:
	ldr r1, [sp,#4]
	add r1, r1, r0
	str r1, [sp,#4]
loc_800AD9E:
	ldr r0, [sp,#0x10]
	lsr r0, r0, #1
	str r0, [sp,#0x10]
	bcc loc_800ADB8
	ldr r0, [sp,#0x14]
	mov r1, #0xb
	bl sub_800AB3A
	cmp r0, #0
	bne loc_800ADB8
	ldr r1, [sp,#4]
	add r1, #1
	str r1, [sp,#4]
loc_800ADB8:
	ldr r0, [sp,#4]
	tst r0, r0
	ble loc_800ADC6
	cmp r0, #0xb
	ble loc_800ADC8
	mov r0, #0xb
	b loc_800ADC8
loc_800ADC6:
	mov r0, #1
loc_800ADC8:
	str r0, [sp,#4]
	ldr r0, [sp,#4]
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_800ADD0: .word off_800ADDC
off_800ADD4: .word byte_800AE00
dword_800ADD8: .word 0x18F
off_800ADDC: .word 0x500
	.word 0x1200
	.word 0x3600
	.word 0x3000
	.word 0x4000, 0x5000, 0x3000, 0x4500, 0x10000
byte_800AE00:
	.byte 0x6, 0x5, 0x4, 0x3
	.byte 0xA, 0x8, 0x6, 0x4
	.byte 0xA, 0x8, 0x6, 0x4
	thumb_func_end sub_800AC20

	thumb_local_start
sub_800AE0C:
	push {r4,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	ldrb r0, [r4,#oBattleState_Unk_1c]
	ldrb r1, [r4,#oBattleState_Unk_1b]
	cmp r0, r1
	ble loc_800AE32
	strb r0, [r4,#oBattleState_Unk_1b]
	cmp r0, #2
	blt loc_800AE32
	push {r0}
	bl GetBattleMode
	cmp r0, #6
	pop {r0}
	beq loc_800AE32
	sub r0, #2
	bl sub_801E228
loc_800AE32:
	ldrb r0, [r4,#oBattleState_Unk_1d]
	tst r0, r0
	beq loc_800AE3E
	sub r0, #1
	strb r0, [r4,#oBattleState_Unk_1d]
	b locret_800AE42
loc_800AE3E:
	mov r0, #0
	strb r0, [r4,#oBattleState_Unk_1c]
locret_800AE42:
	pop {r4,pc}
	thumb_func_end sub_800AE0C

	thumb_func_start sub_800AE44
sub_800AE44:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_1c]
	add r0, #1
	strb r0, [r1,#oBattleState_Unk_1c]
	mov r0, #0xa
	strb r0, [r1,#oBattleState_Unk_1d]
	mov pc, lr
	thumb_func_end sub_800AE44

	thumb_func_start sub_800AE54
sub_800AE54:
	push {r4,r6,r7,lr}
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	lsl r2, r2, #1
	ldr r4, off_800AE88 // =dword_800AE8C
	add r4, r4, r2
	ldrb r2, [r4]
	add r3, r3, r2
	ldrb r2, [r4,#1]
loc_800AE66:
	ldr r4, [r3]
	tst r4, r4
	beq loc_800AE7C
	ldrb r6, [r4,#0x12]
	cmp r6, r0
	bne loc_800AE7C
	ldrb r6, [r4,#0x13]
	cmp r6, r1
	bne loc_800AE7C
	mov r0, r4
	pop {r4,r6,r7,pc}
loc_800AE7C:
	add r3, #4
	sub r2, #1
	bne loc_800AE66
	mov r0, #0
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_800AE88: .word dword_800AE8C
dword_800AE8C: .word 0x4900480
	thumb_func_end sub_800AE54

	thumb_func_start sub_800AE90
sub_800AE90:
	push {r5-r7,lr}
	push {r0,r1}
	mov r7, r10
	ldr r7, [r7,#oToolkit_CurFramePtr]
	ldrh r2, [r7]
	mov r3, #0xf
	and r2, r3
	bne loc_800AEA6
	mov r0, #0x91
	bl PlaySoundEffect
loc_800AEA6:
	pop {r0,r1}
	mov r2, #0x10
	add r2, r2, r0
	cmp r2, #0xff
	bcs locret_800AEE0
	mov r2, #0x10
	add r2, r2, r1
	cmp r2, #0xb0
	bcs locret_800AEE0
	mov r7, r10
	ldr r7, [r7,#oToolkit_CurFramePtr]
	ldrh r2, [r7]
	mov r3, #8
	and r2, r3
	lsr r2, r2, #1
	ldr r6, dword_800AEE4 // =0xd3ca
	add r6, r6, r2
	push {r0,r1,r6}
	mov r2, #0x40
	lsl r2, r2, #8
	orr r0, r2
	lsl r0, r0, #0x10
	orr r0, r1
	mov r1, r6
	mov r2, #0
	mov r3, #0
	bl sub_8009FF8
	pop {r0,r1,r6}
locret_800AEE0:
	pop {r5-r7,pc}
	.balign 4, 0
dword_800AEE4: .word 0xD3CA
	thumb_func_end sub_800AE90

	thumb_local_start
handleVariableDamageChip_800AEE8:
	push {r4-r6,lr}
	ldr r4, off_800B138 // =byte_20349C0
	ldrb r0, [r4]
	add r0, r0, r0
	add r0, #2
	add r5, r4, r0
	// idx
	ldrh r0, [r5]
	mov r6, r0
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #0x80
	tst r1, r2
	beq loc_800AF0E
	mov r0, r6
	mov r1, #0
	bl sub_80109A4
	strh r0, [r5,#0xc]
loc_800AF0E:
	add r4, #0x50
	ldrb r0, [r4]
	add r0, r0, r0
	add r0, #2
	add r5, r4, r0
	// idx
	ldrh r0, [r5]
	mov r6, r0
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #0x80
	tst r1, r2
	beq locret_800AF32
	mov r0, r6
	mov r1, #1
	bl sub_80109A4
	strh r0, [r5,#0xc]
locret_800AF32:
	pop {r4-r6,pc}
	thumb_func_end handleVariableDamageChip_800AEE8

	thumb_func_start sub_800AF34
sub_800AF34:
	push {lr}
	bl sub_800A8F8
	tst r0, r0
	bne loc_800AF46
	ldr r0, dword_800B13C // =0x4000
	bl SetCustGauge
	pop {pc}
loc_800AF46:
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldr r1, dword_800B140 // =0x1555
	bl sub_802E032
	pop {pc}
	thumb_func_end sub_800AF34

	thumb_local_start
sub_800AF50:
	push {r4,r5,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_BattleStatePtr]
	ldrb r0, [r5,#oBattleState_Unk_18]
	ldrb r1, [r5,#oBattleState_Unk_19]
	ldrb r2, [r5,#oBattleState_Unk_1a]
	neg r4, r2
	add r4, #3
	add r5, r1, r4
	cmp r0, r5
	bgt loc_800AF72
	add r5, r0, r4
	cmp r1, r5
	bgt loc_800AF76
	cmp r2, #3
	bge loc_800AF7C
	b loc_800AF80
loc_800AF72:
	mov r0, #1
	b locret_800AF82
loc_800AF76:
	mov r0, #1
	neg r0, r0
	b locret_800AF82
loc_800AF7C:
	mov r0, #2
	b locret_800AF82
loc_800AF80:
	mov r0, #0
locret_800AF82:
	pop {r4,r5,pc}
	thumb_func_end sub_800AF50

	thumb_local_start
sub_800AF84:
	push {lr}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_800AFA0
	mov r2, r0
	mov r0, #0
	mov r1, #0
	mov r3, #1
	tst r2, r3
	beq loc_800AFB4
	mov r0, #1
	b loc_800AFB4
loc_800AFA0:
	bl sub_800A832
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#oBattleState_Unk_0d]
	cmp r0, #1
	beq loc_800AFB2
	mov r2, #1
	eor r1, r2
loc_800AFB2:
	mov r0, #2
loc_800AFB4:
	bl sub_800AC20
	pop {pc}
	thumb_func_end sub_800AF84

	thumb_func_start sub_800AFBA
sub_800AFBA:
	push {r1-r7,lr}
	mov r4, r0
	mov r6, #0
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_800AFCC
	mov r6, #1
loc_800AFCC:
	bl TestBattleFlag_0x40
	orr r6, r0
	push {r6}
	lsr r0, r4, #9
	cmp r0, #0x1b
	beq loc_800B00C
	cmp r0, #0x1c
	beq loc_800B00C
	lsl r0, r4, #0x17
	lsr r0, r0, #0x17
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r6, [r0,#7]
	cmp r6, #1
	beq loc_800AFF0
	cmp r6, #2
	bne loc_800B00C
loc_800AFF0:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	mov r1, #0xa
	add r1, r1, r6
	bl GetBattleNaviStatsByte
	ldr r1, off_800B108 // =dword_20367E0
	ldrb r1, [r1,r6]
	cmp r1, r0
	ble loc_800B00C
	mov r0, #0
	cmp r0, #1
	b loc_800B01C
loc_800B00C:
	lsl r0, r4, #0x17
	lsr r0, r0, #0x17
	ldr r1, dword_800B104 // =0x19b
	cmp r0, r1
	bge loc_800B01C
	bl encryption_testPack_8006e84
	b loc_800B01E
loc_800B01C:
	cmp r0, r0
loc_800B01E:
	pop {r0}
	pop {r1-r7,pc}
	thumb_func_end sub_800AFBA

// (int a1) ->
	thumb_func_start tooManyGigasMegasAntiCheatHappensHere_800B022
tooManyGigasMegasAntiCheatHappensHere_800B022:
	push {r1-r7,lr}
	mov r4, r0
	mov r6, #0
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_800B034
	mov r6, #1
loc_800B034:
	bl TestBattleFlag_0x40
	orr r6, r0
	push {r6}
	lsr r0, r4, #9
	cmp r0, #0x1b
	beq loc_800B074
	cmp r0, #0x1c
	beq loc_800B074
	lsl r0, r4, #0x17
	lsr r0, r0, #0x17
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r6, [r0,#7]
	cmp r6, #1
	beq loc_800B058
	cmp r6, #2
	bne loc_800B074
loc_800B058:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	mov r1, #oNaviStats_MegaLevel - 1
	add r1, r1, r6
	bl GetBattleNaviStatsByte
	// game seems to actually keep track how many mega/giga chips you've used (or drawn?)
	// if you've used/drawn too much, then it'll replace the chip with an error chip
	ldr r1, off_800B108 // =dword_20367E0
	ldrb r1, [r1,r6]
	cmp r1, r0
	ble loc_800B074
	mov r0, #0
	cmp r0, #1
	b loc_800B08C
loc_800B074:
	lsr r1, r4, #9
	lsl r0, r4, #0x17
	lsr r0, r0, #0x17
	cmp r1, #0x1b
	bne loc_800B080
	mov r1, #0xff
loc_800B080:
	ldr r2, dword_800B104 // =0x19b
	cmp r0, r2
	blt loc_800B088
	mov r1, #0xff
loc_800B088:
	bl validateChipCode_8006EE8 // (int idx_8021DA8, int a2) -> bool
loc_800B08C:
	pop {r0}
	pop {r1-r7,pc}
	thumb_func_end tooManyGigasMegasAntiCheatHappensHere_800B022

	thumb_local_start
someChipHandValidationHappensHere_800B090:
	push {r0-r7,lr}
	mov r0, r8
	mov r1, r9
	push {r0,r1}
	bl TestBattleFlag_0x40
	cmp r0, #0
	bne loc_800B0FA
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	bl getBattleHandAddr_8010018
	mov r6, r0
	mov r9, r0
	ldrb r0, [r6]
	mov r8, r0
	lsl r0, r0, #1
	add r0, #2
	add r6, r6, r0
	ldrh r0, [r6]
	mov r4, r0
	mov r1, #0xff
	lsl r1, r1, #8
	add r1, #0xff
	cmp r0, r1
	beq loc_800B0FA
	mov r1, #0xff
	bl validateChipCode_8006EE8 // (int idx_8021DA8, int a2) -> bool
	bne loc_800B0F6
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r7, [r0,#0x7] // ChipData.elemIdx
	cmp r7, #1
	beq loc_800B0DE
	cmp r7, #2
	bne loc_800B0FA
loc_800B0DE:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	mov r1, #0xa
	add r1, r1, r7
	bl GetBattleNaviStatsByte
	mov r0, r9
	ldr r1, off_800B108 // =dword_20367E0
	ldrb r1, [r1,r7]
	cmp r1, r0
	blt loc_800B0FA
loc_800B0F6:
	ldr r0, dword_800B10C // =0x185
	strh r0, [r6]
loc_800B0FA:
	pop {r0,r1}
	mov r8, r0
	mov r9, r1
	pop {r0-r7,pc}
	.balign 4, 0
dword_800B104: .word 0x19B
off_800B108: .word dword_20367E0
dword_800B10C: .word 0x185
	thumb_func_end someChipHandValidationHappensHere_800B090

	thumb_local_start
sub_800B110:
	push {r4,lr}
	ldr r4, off_800B124 // =word_800B128
loc_800B114:
	// idx_20008A0
	ldrh r0, [r4]
	cmp r0, #0
	beq locret_800B122
	bl encryption_applyPack_8006e70 // (int idx_20008A0) -> void
	add r4, #2
	b loc_800B114
locret_800B122:
	pop {r4,pc}
	.balign 4, 0
off_800B124: .word word_800B128
word_800B128: .hword 0x195
	.hword 0x196
	.byte 0x97, 0x1, 0x98, 0x1, 0x99, 0x1, 0x9A, 0x1, 0x0, 0x0, 0x0, 0x0
off_800B138: .word byte_20349C0
dword_800B13C: .word 0x4000
dword_800B140: .word 0x1555
	thumb_func_end sub_800B110

	thumb_local_start
sub_800B144:
	push {r4,r6,lr}
	ldr r4, off_800B2BC // =dword_203CBE0
	ldr r0, off_800B2C0 // =ePrimaryRngSeed
	ldr r0, [r0]
	str r0, [r4,#0x4] // (dword_203CBE4 - 0x203cbe0)
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldr r0, [r0,#oBattleState_BattleSettings]
	str r0, [r4,#0x8] // (byte_203CBE8 - 0x203cbe0)
	bl GetBattleEffects // () -> int
	ldr r1, dword_800B2C4 // =0x200000 
	tst r0, r1
	bne loc_800B1F0
	bl GetBattleMode
	cmp r0, #1
	beq loc_800B1C8
	cmp r0, #2
	beq loc_800B1D2
	cmp r0, #3
	beq loc_800B1D2
	cmp r0, #4
	beq loc_800B1D2
	cmp r0, #5
	beq loc_800B220
	cmp r0, #8
	beq loc_800B220
	cmp r0, #7
	beq loc_800B1DC
	cmp r0, #9
	beq loc_800B1E6
	bl GetCurPETNavi // () -> u8
	bl GetNaviStatsAddrGivenCurPETNavi
	mov r1, #0xc
	add r1, r1, r4
	mov r6, r1
	mov r2, #0x64
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_800B1A8
	mov r0, #3
	mov r1, #0x21 // (byte_203CC0D - 0x203cbec)
	strb r0, [r6,r1]
loc_800B1A8:
	bl sub_800A8F8
	cmp r0, #0
	beq loc_800B242
	movflag EVENT_163
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	bne loc_800B242
	bl GetCurPETNavi // () -> u8
	cmp r0, #0
	bne loc_800B242
	mov r0, #0xc
	strb r0, [r6,#0x17] // (byte_203CC03 - 0x203cbec)
	b loc_800B242
loc_800B1C8:
	mov r0, #0xc
	add r0, r0, r4
	bl sub_80134C8
	b loc_800B242
loc_800B1D2:
	mov r0, #0xc
	add r0, r0, r4
	bl initNaviStats_WithDefaultStatsMaybe_8013438 // (void *struct) -> void
	b loc_800B242
loc_800B1DC:
	mov r0, #0xc
	add r0, r0, r4
	bl sub_8013554
	b loc_800B242
loc_800B1E6:
	mov r0, #0xc
	add r0, r0, r4
	bl sub_80135E8
	b loc_800B242
loc_800B1F0:
	mov r0, #0
	bl GetNaviStats203CCE0Addr
	mov r1, #0xc
	add r1, r1, r4
	mov r2, #0x64
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B2C8 // =0x474
	mov r1, #0x70
	add r1, r1, r4
	mov r2, #0x14
loc_800B208:
	strh r0, [r1]
	add r1, #2
	sub r2, #1
	bne loc_800B208
	mov r1, #0x98
	add r1, r1, r4
	mov r2, #0x14
loc_800B216:
	strh r0, [r1]
	add r1, #2
	sub r2, #1
	bne loc_800B216
	b loc_800B25A
loc_800B220:
	mov r0, #0xc
	add r0, r0, r4
	bl initNaviStats_WithDefaultStatsMaybe_8013438 // (void *struct) -> void
	mov r0, #0
	bl GetNaviStatsAddrGivenCurPETNavi
	mov r1, #0xc
	add r1, r1, r4
	ldrh r2, [r0,#0x3e]
	strh r2, [r1,#0x3e] // (word_203CC2A - 0x203cbec)
	ldr r2, [r0,#0x40]
	lsr r3, r2, #0x10
	lsl r2, r3, #0x10
	orr r2, r3
	str r2, [r1,#0x40] // (byte_203CC2C - 0x203cbec)
	b loc_800B242
loc_800B242:
	ldr r0, off_800B2CC // =unk_20018C0
	mov r1, #0x70
	add r1, r1, r4
	mov r2, #0x28
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B2D0 // =unk_2000260
	mov r1, #0x98
	add r1, r1, r4
	mov r2, #0x28
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
loc_800B25A:
	mov r0, #1
	bl sub_81209DC
	mov r2, #0xc8 // (byte_203CCA8 - 0x203cbe0)
	strb r0, [r4,r2]
	mov r2, #0xc9 // (byte_203CCA9 - 0x203cbe0)
	strb r1, [r4,r2]
	mov r0, #1
	bl sub_81209DC
	mov r2, #0xca // (byte_203CCAA - 0x203cbe0)
	strb r0, [r4,r2]
	mov r2, #0xcb // (byte_203CCAB - 0x203cbe0)
	strb r1, [r4,r2]
	mov r0, r10
	ldr r0, [r0,#oToolkit_EventFlagsPtr]
	ldr r1, off_800B440 // =0x3c4
	add r0, r0, r1
	mov r1, #0xcc
	add r1, r1, r4
	mov r2, #0x28
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	bl sub_8010D20
	mov r1, #0xf4 // (byte_203CCD4 - 0x203cbe0)
	str r0, [r4,r1]
	movflag EVENT_163
	bl TestEventFlagFromImmediate // (event_group_off: u8, byte_and_flag_off: u8) -> !zf
	beq loc_800B2A0
	bl sub_8121198
	b loc_800B2A2
loc_800B2A0:
	mov r0, #0xff
loc_800B2A2:
	mov r1, #0xc0 // (dword_203CCA0 - 0x203cbe0)
	str r0, [r4,r1]
	bl sub_803D0F4
	mov r1, #0xc4 // (dword_203CCA4 - 0x203cbe0)
	str r0, [r4,r1]
	ldr r0, dword_800B2D4 // =0x12345678
	str r0, [r4]
	mov r0, #0x3e
	bl sub_80200A4
	pop {r4,r6,pc}
	.balign 4, 0
off_800B2BC: .word dword_203CBE0
off_800B2C0: .word ePrimaryRngSeed
dword_800B2C4: .word 0x200000
off_800B2C8: .word 0x474
off_800B2CC: .word unk_20018C0
off_800B2D0: .word unk_2000260
dword_800B2D4: .word 0x12345678
	thumb_func_end sub_800B144

	thumb_local_start
battle_copyStructsIncludingBattleStats_800b2d8:
	push {r4,r5,lr}
	ldr r0, off_800B560 // =eBattleNaviStats203F4AC
	ldr r1, off_800B564 // =eBattleNaviStats0
	mov r2, #oNaviStats_Size
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B568 // =eBattleNaviStats203F4AC
	ldr r1, off_800B56C // =eBattleNaviStats203CB10
	mov r2, #oNaviStats_Size
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B570 // =eBattleNaviStats203F4AC
	ldr r1, off_800B574 // =eBattleNaviStats2034A60
	mov r2, #oNaviStats_Size
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B578 // =eBattleNaviStats203F4AC
	ldr r1, off_800B57C // =eBattleNaviStats203C9E4
	mov r2, #oNaviStats_Size
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_800B334
	ldr r0, off_800B580 // =byte_203F5AC
	ldr r1, off_800B584 // =eBattleNaviStats1
	mov r2, #oNaviStats_Size
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B588 // =byte_203F5AC
	ldr r1, off_800B58C // =eBattleNaviStats203CB74
	mov r2, #oNaviStats_Size
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B590 // =byte_203F5AC
	ldr r1, off_800B594 // =eBattleNaviStats2034AC4
	mov r2, #oNaviStats_Size
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B598 // =byte_203F5AC
	ldr r1, off_800B59C // =eBattleNaviStats203C980
	mov r2, #oNaviStats_Size
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
loc_800B334:
	ldr r0, off_800B5A0 // =byte_203F4A4
	ldr r0, [r0]
	ldr r1, off_800B5A4 // =ePrimaryRngSeed
	str r0, [r1]
	ldr r0, off_800B5A8 // =byte_203F510
	ldr r1, off_800B5AC // =byte_203EB00
	mov r2, #0x28
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B5B0 // =byte_203F610
	ldr r1, off_800B5B4 // =byte_203EB28
	mov r2, #0x28
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B5B8 // =byte_203F538
	ldr r1, off_800B5BC // =unk_2036790
	mov r2, #0x28
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B5C0 // =byte_203F638
	ldr r1, off_800B5C4 // =unk_20367B8
	mov r2, #0x28
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B5C8 // =dword_203F568
	ldr r0, [r0]
	ldr r1, off_800B5CC // =byte_203CA50
	str r0, [r1]
	ldr r0, off_800B5D0 // =byte_203F56C
	ldr r1, off_800B5D4 // =byte_203F66C
	ldr r2, off_800B5D8 // =unk_2036750
	bl sub_80AAB88
	ldr r2, off_800B5DC // =dword_203CDF0
	ldr r0, off_800B5E0 // =byte_203F594
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, off_800B5E4 // =byte_203F694
	ldr r0, [r0]
	str r0, [r2,#0x4] // (byte_203CDF4 - 0x203cdf0)
	ldr r2, off_800B5E8 // =dword_203CFA0
	ldr r0, off_800B5EC // =dword_203F560
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, off_800B5F0 // =dword_203F660
	ldr r0, [r0]
	str r0, [r2,#0x4] // (byte_203CFA4 - 0x203cfa0)
	ldr r2, off_800B5F4 // =dword_203F7E0
	ldr r0, off_800B5F8 // =dword_203F564
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, off_800B5FC // =byte_203F664
	ldr r0, [r0]
	str r0, [r2,#0x4] // (byte_203F7E4 - 0x203f7e0)
	pop {r4,r5,pc}
	thumb_func_end battle_copyStructsIncludingBattleStats_800b2d8

	thumb_func_start sub_800B3A2
sub_800B3A2:
	push {lr}
	ldr r0, off_800B600 // =byte_20366C0
	ldr r1, off_800B604 // =dword_203CBE4
	mov r2, #0x50
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, dword_800B608 // =0x56789123
	ldr r1, off_800B60C // =dword_203CBE0
	str r0, [r1]
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#0xd]
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	ldr r1, off_800B610 // =byte_203CC34
	mov r2, #0x64
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B614 // =byte_203CED0
	ldr r1, off_800B618 // =byte_203CC98
	mov r2, #0x10
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	mov r0, #0x32
	bl sub_80200A4
	pop {pc}
	thumb_func_end sub_800B3A2

	thumb_func_start transferBattleHandNaviStats_800B3D8
transferBattleHandNaviStats_800B3D8:
	push {r4,lr}
	ldr r4, off_800B61C // =byte_203F4A4
	ldrb r1, [r4]
	cmp r1, #0xff
	beq loc_800B3EC
	mov r0, r4
	ldr r1, off_800B620 // =byte_20349C0
	mov r2, #0x50
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
loc_800B3EC:
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_800B408
	ldr r4, off_800B624 // =byte_203F5A4
	ldrb r1, [r4]
	cmp r1, #0xff
	beq loc_800B408
	mov r0, r4
	ldr r1, off_800B628 // =byte_2034A10
	mov r2, #0x50
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
loc_800B408:
	ldr r0, off_800B62C // =byte_203F4F4
	ldr r1, off_800B630 // =eBattleNaviStats0
	mov r2, #0x64
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq locret_800B426
	ldr r0, off_800B634 // =byte_203F5F4
	ldr r1, off_800B638 // =eBattleNaviStats1
	mov r2, #0x64
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
locret_800B426:
	pop {r4,pc}
	thumb_func_end transferBattleHandNaviStats_800B3D8

	thumb_local_start
sub_800B428:
	push {lr}
	ldr r0, off_800B63C // =dword_203CBE4
	bl sub_802C8FA
	ldr r0, dword_800B640 // =0x1f2f3f4f
	ldr r1, off_800B644 // =dword_203CBE0
	str r0, [r1]
	mov r0, #4
	bl sub_80200A4
	pop {pc}
	.balign 4, 0
off_800B440: .word 0x3C4
	thumb_func_end sub_800B428

	thumb_local_start
sub_800B444:
	push {lr}
	ldr r0, off_800B648 // =byte_203F4A4
	ldr r1, off_800B64C // =unk_2035260
	mov r2, #0xc
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	ldr r0, off_800B650 // =byte_203F5A4
	ldr r1, off_800B654 // =unk_203526C
	mov r2, #0xc
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	bl sub_802C9EA
	pop {pc}
	thumb_func_end sub_800B444

	thumb_func_start sub_800B460
sub_800B460:
	mov r0, #0
	ldr r1, off_800B658 // =dword_203F4A0
	str r0, [r1]
	ldr r1, off_800B65C // =dword_203F5A0
	str r0, [r1]
	mov pc, lr
	thumb_func_end sub_800B460

	thumb_func_start sub_800B46C
sub_800B46C:
	mov r3, r0
	mov r0, #0
	ldr r1, off_800B660 // =dword_203F4A0
	ldr r1, [r1]
	ldr r2, off_800B664 // =dword_203F5A0
	ldr r2, [r2]
	cmp r1, r3
	bne locret_800B482
	cmp r2, r3
	bne locret_800B482
	mov r0, #1
locret_800B482:
	mov pc, lr
	thumb_func_end sub_800B46C

	thumb_local_start
sub_800B484:
	push {r4,lr}
	ldr r0, dword_800B668 // =0xf1f1f1f1
	ldr r1, off_800B66C // =dword_203CBE0
	str r0, [r1]
	ldr r0, off_800B670 // =byte_203F6D0
	ldr r1, off_800B674 // =dword_203CBE4
	mov r2, #0x3c
	bl CopyWords // (src: *const u32, mut_dest: *mut u32, size: u32) -> ()
	mov r0, #0x10
	bl sub_80200A4
	pop {r4,pc}
	thumb_func_end sub_800B484

	thumb_local_start
sub_800B49E:
	push {r6,r7,lr}
	mov r0, #0
	ldr r1, off_800B678 // =byte_203F4A4
	bl sub_802E45E
	mov r0, #1
	ldr r1, off_800B67C // =byte_203F5A4
	bl sub_802E45E
	pop {r6,r7,pc}
	thumb_func_end sub_800B49E

	thumb_local_start
sub_800B4B2:
	push {r4,r5,lr}
	mov r5, r1
	bl sub_800B4CE
	ldr r0, dword_800B680 // =0xa9b8c7d6
	ldr r1, off_800B684 // =dword_203CBE0
	str r0, [r1]
	ldr r1, off_800B688 // =dword_203CBE4
	str r4, [r1]
	str r5, [r1,#0x4] // (byte_203CBE8 - 0x203cbe4)
	mov r0, #3
	bl sub_80200A4
	pop {r4,r5,pc}
	thumb_func_end sub_800B4B2

	thumb_local_start
sub_800B4CE:
	push {lr}
	mov r4, r0
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	mov r1, #oBattleState_AliveOpponentActors
loc_800B4D8:
	ldr r2, [r0,r1]
	cmp r2, r4
	bne loc_800B4F0
	mov r4, r1
	cmp r1, #oBattleState_AliveOpponentActors
	bne locret_800B50C
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq locret_800B50C
	b loc_800B50A
loc_800B4F0:
	add r1, #4
	cmp r1, #oBattleState_Unk_c0
	bne loc_800B4D8
	mov r1, #oBattleState_Unk_a0
	mov r3, #8
loc_800B4FA:
	ldr r2, [r0,r1]
	cmp r2, r4
	bne loc_800B504
	mov r4, r1
	b locret_800B50C
loc_800B504:
	add r1, #4
	sub r3, #1
	bne loc_800B4FA
loc_800B50A:
	mov r4, #0
locret_800B50C:
	pop {pc}
	thumb_func_end sub_800B4CE

	thumb_local_start
sub_800B50E:
	push {lr}
	mov r0, #0
	bl sub_802E070
	ldr r1, off_800B68C // =byte_203F4A4
	ldr r2, [r1]
	mov r3, #0
	bl sub_800B548
	str r2, [r0,#0x44]
	ldr r2, [r1,#4]
	strb r2, [r0,#0xe]
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq locret_800B546
	mov r0, #1
	bl sub_802E070
	ldr r1, off_800B690 // =byte_203F5A4
	ldr r2, [r1]
	mov r3, #1
	bl sub_800B548
	str r2, [r0,#0x44]
	ldr r2, [r1,#4]
	strb r2, [r0,#0xe]
locret_800B546:
	pop {pc}
	thumb_func_end sub_800B50E

	thumb_local_start
sub_800B548:
	push {r0,r1,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	cmp r2, #0
	bne loc_800B55A
	mov r2, #oBattleState_AlivePlayerActors
	tst r3, r3
	bne loc_800B55A
	mov r2, #oBattleState_AliveOpponentActors
loc_800B55A:
	ldr r2, [r0,r2]
	pop {r0,r1,pc}
	.balign 4, 0
off_800B560: .word eBattleNaviStats203F4AC
off_800B564: .word eBattleNaviStats0
off_800B568: .word eBattleNaviStats203F4AC
off_800B56C: .word eBattleNaviStats203CB10
off_800B570: .word eBattleNaviStats203F4AC
off_800B574: .word eBattleNaviStats2034A60
off_800B578: .word eBattleNaviStats203F4AC
off_800B57C: .word eBattleNaviStats203C9E4
off_800B580: .word byte_203F5AC
off_800B584: .word eBattleNaviStats1
off_800B588: .word byte_203F5AC
off_800B58C: .word eBattleNaviStats203CB74
off_800B590: .word byte_203F5AC
off_800B594: .word eBattleNaviStats2034AC4
off_800B598: .word byte_203F5AC
off_800B59C: .word eBattleNaviStats203C980
off_800B5A0: .word byte_203F4A4
off_800B5A4: .word ePrimaryRngSeed
off_800B5A8: .word byte_203F510
off_800B5AC: .word byte_203EB00
off_800B5B0: .word byte_203F610
off_800B5B4: .word byte_203EB28
off_800B5B8: .word byte_203F538
off_800B5BC: .word unk_2036790
off_800B5C0: .word byte_203F638
off_800B5C4: .word unk_20367B8
off_800B5C8: .word dword_203F568
off_800B5CC: .word byte_203CA50
off_800B5D0: .word byte_203F56C
off_800B5D4: .word byte_203F66C
off_800B5D8: .word unk_2036750
off_800B5DC: .word dword_203CDF0
off_800B5E0: .word byte_203F594
off_800B5E4: .word byte_203F694
off_800B5E8: .word dword_203CFA0
off_800B5EC: .word dword_203F560
off_800B5F0: .word dword_203F660
off_800B5F4: .word dword_203F7E0
off_800B5F8: .word dword_203F564
off_800B5FC: .word byte_203F664
off_800B600: .word byte_20366C0
off_800B604: .word dword_203CBE4
dword_800B608: .word 0x56789123
off_800B60C: .word dword_203CBE0
off_800B610: .word byte_203CC34
off_800B614: .word byte_203CED0
off_800B618: .word byte_203CC98
off_800B61C: .word byte_203F4A4
off_800B620: .word byte_20349C0
off_800B624: .word byte_203F5A4
off_800B628: .word byte_2034A10
off_800B62C: .word byte_203F4F4
off_800B630: .word eBattleNaviStats0
off_800B634: .word byte_203F5F4
off_800B638: .word eBattleNaviStats1
off_800B63C: .word dword_203CBE4
dword_800B640: .word 0x1F2F3F4F
off_800B644: .word dword_203CBE0
off_800B648: .word byte_203F4A4
off_800B64C: .word unk_2035260
off_800B650: .word byte_203F5A4
off_800B654: .word unk_203526C
off_800B658: .word dword_203F4A0
off_800B65C: .word dword_203F5A0
off_800B660: .word dword_203F4A0
off_800B664: .word dword_203F5A0
dword_800B668: .word 0xF1F1F1F1
off_800B66C: .word dword_203CBE0
off_800B670: .word byte_203F6D0
off_800B674: .word dword_203CBE4
off_800B678: .word byte_203F4A4
off_800B67C: .word byte_203F5A4
dword_800B680: .word 0xA9B8C7D6
off_800B684: .word dword_203CBE0
off_800B688: .word dword_203CBE4
off_800B68C: .word byte_203F4A4
off_800B690: .word byte_203F5A4
	thumb_func_end sub_800B548

	thumb_local_start
sub_800B694:
	ldr r3, off_800B828 // =eOWPlayerObjectEnd
	ldr r0, dword_800B82C // =0xffff
	strh r0, [r3,#0x4] // (word_200A00C - 0x200a008)
	strh r0, [r3,#0x6] // (word_200A00E - 0x200a008)
	mov r0, #0
	strb r0, [r3]
	mov r0, #0
	strb r0, [r3,#0x1] // (byte_200A009 - 0x200a008)
	mov r0, #0
	strb r0, [r3,#0x2] // (byte_200A00A - 0x200a008)
	mov pc, lr
	thumb_func_end sub_800B694

	thumb_local_start
eStruct200A008_setBattleResult:
	ldr r1, off_800B830 // =eOWPlayerObjectEnd
	strb r0, [r1,#0x1] // (byte_200A009 - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_setBattleResult

	thumb_func_start eStruct200A008_getBattleResult
eStruct200A008_getBattleResult:
	ldr r1, off_800B834 // =eOWPlayerObjectEnd
	ldrb r0, [r1,#0x1] // (byte_200A009 - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_getBattleResult

	thumb_local_start
eStruct200A008_setUnk00:
	ldr r1, off_800B838 // =eOWPlayerObjectEnd
	strb r0, [r1]
	mov pc, lr
	thumb_func_end eStruct200A008_setUnk00

	thumb_local_start
eStruct200A008_getUnk00:
	ldr r1, off_800B83C // =eOWPlayerObjectEnd
	ldrb r0, [r1]
	mov pc, lr
	thumb_func_end eStruct200A008_getUnk00

	thumb_local_start
eStruct200A008_setUnk02:
	ldr r1, off_800B840 // =eOWPlayerObjectEnd
	strb r0, [r1,#0x2] // (byte_200A00A - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_setUnk02

	thumb_local_start
eStruct200A008_getUnk02:
	ldr r1, off_800B844 // =eOWPlayerObjectEnd
	ldrb r0, [r1,#0x2] // (byte_200A00A - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_getUnk02

	thumb_func_start eStruct200A008_setUnk04
eStruct200A008_setUnk04:
	ldr r1, off_800B848 // =eOWPlayerObjectEnd
	strh r0, [r1,#0x4] // (word_200A00C - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_setUnk04

	thumb_func_start eStruct200A008_getUnk04
eStruct200A008_getUnk04:
	ldr r1, off_800B84C // =eOWPlayerObjectEnd
	ldrh r0, [r1,#0x4] // (word_200A00C - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_getUnk04

	thumb_func_start eStruct200A008_setUnk06
eStruct200A008_setUnk06:
	ldr r1, off_800B850 // =eOWPlayerObjectEnd
	strh r0, [r1,#0x6] // (word_200A00E - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_setUnk06

	thumb_func_start eStruct200A008_getUnk06
eStruct200A008_getUnk06:
	ldr r1, off_800B854 // =eOWPlayerObjectEnd
	ldrh r0, [r1,#0x6] // (word_200A00E - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_getUnk06

	thumb_local_start
eStruct200A008_setUnk03:
	ldr r1, off_800B858 // =eOWPlayerObjectEnd
	strb r0, [r1,#0x3] // (byte_200A00B - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_setUnk03

	thumb_local_start
eStruct200A008_getUnk03:
	ldr r1, off_800B85C // =eOWPlayerObjectEnd
	ldrb r0, [r1,#0x3] // (byte_200A00B - 0x200a008)
	mov pc, lr
	thumb_func_end eStruct200A008_getUnk03

	thumb_local_start
sub_800B6F2:
	push {r4,r6,r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_BattleStatePtr]
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne locret_800B732
	ldr r1, dword_800B860 // =0x80000
	tst r0, r1
	bne locret_800B732
	bl sub_800A7E2
	mov r1, #1
	eor r0, r1
	add r1, r0, #4
	ldrb r6, [r7,r1]
	lsl r0, r0, #3
	add r0, #0x4c
	add r7, r7, r0
loc_800B71A:
	ldrh r0, [r7]
	ldr r1, off_800B864 // =0x100
	sub r0, r0, r1
	blt loc_800B72C
	ldr r1, off_800B868 // =0x300
	add r0, r0, r1
	mov r0, r0
	bl SetEventFlag
loc_800B72C:
	add r7, #2
	sub r6, #1
	bgt loc_800B71A
locret_800B732:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800B6F2

	thumb_func_start sub_800B734
sub_800B734:
	ldr r0, off_800B86C // =word_2000FA0
	mov r1, #1
	mov r3, #0
loc_800B73A:
	ldrh r2, [r0]
	add r3, r3, r2
	add r0, #2
	add r1, #1
	cmp r1, #0xd
	blt loc_800B73A
	mov r0, #0
	ldr r1, off_800B870 // =0x2a30
	cmp r3, r1
	bgt locret_800B758
	mov r0, #1
	ldr r1, off_800B874 // =0x1c20
	cmp r3, r1
	bgt locret_800B758
	mov r0, #2
locret_800B758:
	mov pc, lr
	thumb_func_end sub_800B734

	thumb_local_start
sub_800B75A:
	ldr r0, off_800B878 // =byte_203C960
	mov r1, #0xff
	strb r1, [r0]
	mov pc, lr
	thumb_func_end sub_800B75A

	thumb_local_start
sub_800B762:
	push {r4,r6,lr}
	lsl r4, r1, #1
	bl getBattleHandAddr_8010018
	ldr r6, dword_800B82C // =0xffff
	add r0, r0, r4
	add r1, r0, #2
loc_800B770:
	ldrh r2, [r1,#0xe]
	strh r2, [r0,#0xe]
	ldrh r2, [r1,#0x1a]
	strh r2, [r0,#0x1a]
	ldrh r2, [r1,#0x26]
	strh r2, [r0,#0x26]
	ldrh r2, [r1,#0x32]
	strh r2, [r0,#0x32]
	mov r3, #0x3e
	ldrb r2, [r1,r3]
	strb r2, [r0,r3]
	mov r3, #0x44
	ldrb r2, [r1,r3]
	strb r2, [r0,r3]
	ldrh r2, [r1,#2]
	strh r2, [r0,#2]
	add r0, #2
	add r1, #2
	cmp r2, r6
	bne loc_800B770
	pop {r4,r6,pc}
	thumb_func_end sub_800B762

	thumb_func_start sub_800B79A
sub_800B79A:
	push {lr}
	ldr r1, dword_800B87C // =0x122
	cmp r0, r1
	bgt locret_800B7B4
	ldr r1, off_800B880 // =0x11e
	cmp r0, r1
	blt locret_800B7B4
	sub r0, r0, r1
	ldr r1, off_800B7B8 // =off_800B7BC
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
locret_800B7B4:
	pop {pc}
	.balign 4, 0
off_800B7B8: .word off_800B7BC
off_800B7BC: .word sub_800B7D0+1
	.word sub_800B7E8+1
	.word sub_800B800+1
	.word nullsub_2+1
	.word sub_800B80E+1
	thumb_func_end sub_800B79A

	thumb_local_start
sub_800B7D0:
	push {lr}
	mov r1, #0x18
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r2, r0, #2
	cmp r2, #7
	ble loc_800B7E0
	mov r2, #7
loc_800B7E0:
	mov r1, #0x18
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	pop {pc}
	thumb_func_end sub_800B7D0

	thumb_local_start
sub_800B7E8:
	push {lr}
	mov r1, #0x18
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r2, r0, #1
	cmp r2, #7
	ble loc_800B7F8
	mov r2, #7
loc_800B7F8:
	mov r1, #0x18
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	pop {pc}
	thumb_func_end sub_800B7E8

	thumb_local_start
sub_800B800:
	push {lr}
	mov r1, #0x18
	mov r2, #7
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	pop {pc}
	thumb_func_end sub_800B800

	thumb_local_start
nullsub_2:
	mov pc, lr
	thumb_func_end nullsub_2

	thumb_local_start
sub_800B80E:
	push {lr}
	mov r1, #0x18
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r2, r0, #4
	cmp r2, #7
	ble loc_800B81E
	mov r2, #7
loc_800B81E:
	mov r1, #0x18
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	pop {pc}
	.balign 4, 0
off_800B828: .word eOWPlayerObjectEnd
dword_800B82C: .word 0xFFFF
off_800B830: .word eOWPlayerObjectEnd
off_800B834: .word eOWPlayerObjectEnd
off_800B838: .word eOWPlayerObjectEnd
off_800B83C: .word eOWPlayerObjectEnd
off_800B840: .word eOWPlayerObjectEnd
off_800B844: .word eOWPlayerObjectEnd
off_800B848: .word eOWPlayerObjectEnd
off_800B84C: .word eOWPlayerObjectEnd
off_800B850: .word eOWPlayerObjectEnd
off_800B854: .word eOWPlayerObjectEnd
off_800B858: .word eOWPlayerObjectEnd
off_800B85C: .word eOWPlayerObjectEnd
dword_800B860: .word 0x80000
off_800B864: .word 0x100
off_800B868: .word 0x300
off_800B86C: .word word_2000FA0
off_800B870: .word 0x2A30
off_800B874: .word 0x1C20
off_800B878: .word byte_203C960
dword_800B87C: .word 0x122
off_800B880: .word 0x11E
	thumb_func_end sub_800B80E

/*For debugging purposes, connect comment at any range!*/
