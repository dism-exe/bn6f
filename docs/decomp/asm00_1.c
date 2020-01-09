// 0x800318c
char *sub_800318C()
{
	char *result; // r0

	result = eBattleObjectsLinkedListStart;
	*eUnkBattleObjectLinkedList_Prev = 0;
	*eBattleObjectsLinkedListStart = 0;
	*&eBattleObjectsLinkedListStart[4] = eBattleObjectsLinkedListSentinel;
	*eBattleObjectsLinkedListSentinel = eBattleObjectsLinkedListStart;
	*&eBattleObjectsLinkedListSentinel[4] = 0;
	return result;
}


// 0x80031ac
// () -> void
int RunBattleObjectLogic()
{
	Toolkit *tk; // r10
	char *v1; // r7
	char v2; // r4
	char zf; // zf
	int result; // r0

	object_Clear3RAMBytes_800371A();
	v1 = eBattleObjectsLinkedListStart;
	while ( 1 )
	{
		v1 = *(v1 + 1);
		if ( v1 == eBattleObjectsLinkedListSentinel )
			break;
		*eUnkBattleObjectLinkedList_Prev = v1;
		v2 = v1[16];
		if ( !tk->gamestate->unk_0A || v1[16] & 4 )
		{
			battle_isTimeStop();
			if ( zf || v2 & 0x10 )
				(*(BattleObjectFunctionJumptableTable[v1[18] & 0xF] + 4 * v1[17]))();
		}
		object_800372A();
	}
	result = 0;
	*eUnkBattleObjectLinkedList_Prev = 0;
	return result;
}


// 0x8003278
int __fastcall SpawnBattleObjectCommon(char a1, int *a2)
{
	int result; // r0
	char *v3; // r7
	unsigned int *v4; // r1
	unsigned int v5; // r2
	int v6; // r5
	unsigned int v7; // r6
	int v8; // r5
	int v9; // r1
	int v10; // r2
	int v11; // r3
	int v12; // r4
	int *v13; // [sp+0h] [bp-14h]

	v13 = a2;
	result = 16 * (a1 & 0xF);
	v3 = dword_80032D0 + result;
	v4 = *(dword_80032D0 + result);
	v5 = 2147483648;
	v6 = *(&dword_80032D0[1] + result);
	v7 = *v4;
	while ( v7 & v5 )
	{
		v5 >>= 1;
		v6 += *(&dword_80032D0[3] + result);
		if ( v6 >= *(&dword_80032D0[2] + result) )
			return result;
	}
	*v4 = v7 | v5;
	v8 = v6 + 16;
	ZeroFillByWord((v8 + 4), v3[13]);
	*v8 = v3[14];
	result = *v13;
	v9 = v13[1];
	v10 = v13[2];
	v11 = v13[3];
	v12 = v13[4];
	*(v8 + 1) = *v13;
	*(v8 + 52) = v9;
	*(v8 + 56) = v10;
	*(v8 + 60) = v11;
	*(v8 + 4) = v12;
	return result;
}


// 0x8003320
int *__fastcall object_spawnType1(int a1, int a2, int a3, int a4)
{
	int v4; // r4
	int v5; // r5
	int *result; // r0
	int v7; // [sp+0h] [bp-1Ch]
	int v8; // [sp+4h] [bp-18h]
	int v9; // [sp+8h] [bp-14h]
	int v10; // [sp+Ch] [bp-10h]
	int v11; // [sp+10h] [bp-Ch]

	v7 = a1;
	v8 = a2;
	v9 = a3;
	v10 = a4;
	v11 = v4;
	result = SpawnBattleObjectCommon(1, &v7);
	if ( v5 )
		result = sub_8003400();
	return result;
}


// 0x800333c
int *__fastcall sub_800333C(int a1, int a2, int a3, int a4)
{
	int v4; // r4
	int v5; // r5
	int *result; // r0
	int v7; // [sp+0h] [bp-1Ch]
	int v8; // [sp+4h] [bp-18h]
	int v9; // [sp+8h] [bp-14h]
	int v10; // [sp+Ch] [bp-10h]
	int v11; // [sp+10h] [bp-Ch]

	v7 = a1;
	v8 = a2;
	v9 = a3;
	v10 = a4;
	v11 = v4;
	result = SpawnBattleObjectCommon(1, &v7);
	if ( v5 )
		result = UpdateBattleObjectLinkedList();
	return result;
}


// 0x8003358
int *__fastcall object_spawnType3(int a1, int a2, int a3, int a4)
{
	int v4; // r4
	Battle *obj; // r5
	int *result; // r0
	int v7; // [sp+0h] [bp-1Ch]
	int v8; // [sp+4h] [bp-18h]
	int v9; // [sp+8h] [bp-14h]
	int v10; // [sp+Ch] [bp-10h]
	int v11; // [sp+10h] [bp-Ch]

	v7 = a1;
	v8 = a2;
	v9 = a3;
	v10 = a4;
	v11 = v4;
	result = SpawnBattleObjectCommon(3, &v7);
	if ( obj )
		result = sub_8003400();
	return result;
}


// 0x8003374
int *__fastcall sub_8003374(int a1, int a2, int a3, int a4)
{
	int v4; // r4
	int v5; // r5
	int *result; // r0
	int v7; // [sp+0h] [bp-1Ch]
	int v8; // [sp+4h] [bp-18h]
	int v9; // [sp+8h] [bp-14h]
	int v10; // [sp+Ch] [bp-10h]
	int v11; // [sp+10h] [bp-Ch]

	v7 = a1;
	v8 = a2;
	v9 = a3;
	v10 = a4;
	v11 = v4;
	result = SpawnBattleObjectCommon(3, &v7);
	if ( v5 )
		result = UpdateBattleObjectLinkedList();
	return result;
}


// 0x8003390
_DWORD *__fastcall sub_8003390(int a1, int a2, int a3, int a4)
{
	int v4; // r4
	int v5; // r5
	_DWORD *result; // r0
	int v7; // [sp+0h] [bp-1Ch]
	int v8; // [sp+4h] [bp-18h]
	int v9; // [sp+8h] [bp-14h]
	int v10; // [sp+Ch] [bp-10h]
	int v11; // [sp+10h] [bp-Ch]

	v7 = a1;
	v8 = a2;
	v9 = a3;
	v10 = a4;
	v11 = v4;
	result = SpawnBattleObjectCommon(3, &v7);
	if ( v5 )
		result = sub_8003440();
	return result;
}


// 0x80033ac
int *__usercall object_spawnType4@<R0>(Battle *obj@<R5>, int a1@<R0>, int a2@<R1>, int a3@<R2>, int a4@<R3>)
{
	int v5; // r4
	int *result; // r0
	int v7; // [sp+0h] [bp-1Ch]
	int v8; // [sp+4h] [bp-18h]
	int v9; // [sp+8h] [bp-14h]
	int v10; // [sp+Ch] [bp-10h]
	int v11; // [sp+10h] [bp-Ch]

	v7 = a1;
	v8 = a2;
	v9 = a3;
	v10 = a4;
	v11 = v5;
	result = SpawnBattleObjectCommon(4, &v7);
	if ( obj )
		result = sub_8003400();
	return result;
}


// 0x80033c8
int *__fastcall sub_80033C8(int a1, int a2, int a3, int a4)
{
	int v4; // r4
	int v5; // r5
	int *result; // r0
	int v7; // [sp+0h] [bp-1Ch]
	int v8; // [sp+4h] [bp-18h]
	int v9; // [sp+8h] [bp-14h]
	int v10; // [sp+Ch] [bp-10h]
	int v11; // [sp+10h] [bp-Ch]

	v7 = a1;
	v8 = a2;
	v9 = a3;
	v10 = a4;
	v11 = v4;
	result = SpawnBattleObjectCommon(4, &v7);
	if ( v5 )
		result = UpdateBattleObjectLinkedList();
	return result;
}


// 0x80033e4
_DWORD *__fastcall sub_80033E4(int a1, int a2, int a3, int a4)
{
	int v4; // r4
	int v5; // r5
	_DWORD *result; // r0
	int v7; // [sp+0h] [bp-1Ch]
	int v8; // [sp+4h] [bp-18h]
	int v9; // [sp+8h] [bp-14h]
	int v10; // [sp+Ch] [bp-10h]
	int v11; // [sp+10h] [bp-Ch]

	v7 = a1;
	v8 = a2;
	v9 = a3;
	v10 = a4;
	v11 = v4;
	result = SpawnBattleObjectCommon(4, &v7);
	if ( v5 )
		result = sub_8003440();
	return result;
}


// 0x8003400
int *sub_8003400()
{
	Battle *obj; // r5
	int *result; // r0
	int v2; // r1
	_DWORD *v3; // r2

	result = &obj[-1].extraVars[28];
	v2 = *eUnkBattleObjectLinkedList_Prev;
	if ( &obj[-1].extraVars[28] == *eUnkBattleObjectLinkedList_Prev || !*eUnkBattleObjectLinkedList_Prev )
		return UpdateBattleObjectLinkedList();
	*result = *eUnkBattleObjectLinkedList_Prev;
	v3 = *(v2 + 4);
	*(v2 + 4) = result;
	*&obj[-1].extraVars[32] = v3;
	*v3 = result;
	return result;
}


// 0x8003428
int *UpdateBattleObjectLinkedList()
{
	int v0; // r5
	int *result; // r0
	int v2; // r2

	result = (v0 - 16);
	v2 = *eBattleObjectsLinkedListSentinel;
	*(*eBattleObjectsLinkedListSentinel + 4) = v0 - 16;
	*result = v2;
	result[1] = eBattleObjectsLinkedListSentinel;
	*eBattleObjectsLinkedListSentinel = v0 - 16;
	return result;
}


// 0x8003440
_DWORD *sub_8003440()
{
	int v0; // r5
	_DWORD *result; // r0
	_DWORD *v2; // r2

	result = (v0 - 16);
	v2 = *&eBattleObjectsLinkedListStart[4];
	*&eBattleObjectsLinkedListStart[4] = result;
	result[1] = v2;
	*result = eBattleObjectsLinkedListStart;
	*v2 = v0 - 16;
	return result;
}


// 0x8003458
int object_freeMemory()
{
	_BYTE *v0; // r5
	int *v1; // r1
	int v2; // r1
	_DWORD *v3; // r2

	*v0 = 0;
	v1 = (&ActiveObjectBitfieldPointers)[v0[2] & 0xF];
	*v1 &= ~(0x80000000 >> v0[3]);
	v2 = *(v0 - 4);
	v3 = *(v0 - 3);
	*(v2 + 4) = v3;
	*v3 = v2;
	return sprite_makeUnscalable();
}


// 0x8003490
char *__fastcall InitializeStructsOfObjectType(int a1, int a2, int a3, int a4)
{
	char **v4; // r7
	char *result; // r0
	int v6; // r1
	char v7; // r2
	int v8; // r3
	int v9; // r4

	v4 = &ObjectInitializationTable[4 * a1];
	ZeroFillByWord((&ActiveObjectBitfieldPointers)[a1], 4 * ((*(v4 + 12) + 31) >> 5));
	ZeroFillByWord(*v4, *(v4 + 4));
	result = v4[1];
	v6 = 0;
	v7 = *(v4 + 10);
	v8 = *(v4 + 12);
	v9 = *(v4 + 11);
	do
	{
		result[2] = v7;
		result[3] = v6;
		result += v9;
		++v6;
	}
	while ( v6 < v8 );
	return result;
}


// 0x8003534
char *__fastcall InitializeOWPlayerObjectStruct(int a1, int a2, int a3, int a4)
{
	return InitializeStructsOfObjectType(0, a2, a3, a4);
}


// 0x800353e
char *__fastcall InitializeT1BattleObjectStructs(int a1, int a2, int a3, int a4)
{
	return InitializeStructsOfObjectType(1, a2, a3, a4);
}


// 0x8003548
char *__fastcall InitializeT3BattleObjectStructs(int a1, int a2, int a3, int a4)
{
	return InitializeStructsOfObjectType(3, a2, a3, a4);
}


// 0x8003552
char *__fastcall InitializeT4BattleObjectStructs(int a1, int a2, int a3, int a4)
{
	return InitializeStructsOfObjectType(4, a2, a3, a4);
}


// 0x800355c
char *__fastcall InitializeOverworldNPCObjectStructs(int a1, int a2, int a3, int a4)
{
	return InitializeStructsOfObjectType(2, a2, a3, a4);
}


// 0x8003566
char *__fastcall InitializeOverworldMapObjectStructs(int a1, int a2, int a3, int a4)
{
	return InitializeStructsOfObjectType(5, a2, a3, a4);
}


// 0x8003570
int __fastcall SpawnObjectsFromList(unsigned __int8 *a1)
{
	int v1; // r5
	unsigned __int8 *v2; // r7
	int v3; // r4
	int v4; // r1
	int v5; // r4
	int v7; // [sp-8h] [bp-1Ch]

	v2 = a1;
	v3 = 0;
	while ( 1 )
	{
		v4 = *v2;
		if ( v4 == 255 )
			break;
		v7 = v3;
		v5 = *(v2 + 4);
		(*(&SpawnObjectJumptable + v4))(v2[1], *(v2 + 1), *(v2 + 2), *(v2 + 3));
		v3 = v7;
		if ( v1 )
			v3 = v7 + 1;
		v2 += 20;
	}
	return v3;
}


// 0x80035a2
unsigned int __fastcall sub_80035A2(unsigned int result)
{
	void **v1; // r1
	char **v2; // r2
	int **v3; // r3
	int *v4; // r4
	int *i; // r5
	char *v6; // r5
	unsigned int v7; // r7
	int v8; // r6
	unsigned int v9; // [sp+0h] [bp-2Ch]
	void (**v10)(void); // [sp+4h] [bp-28h]
	char **v11; // [sp+8h] [bp-24h]
	int **v12; // [sp+Ch] [bp-20h]
	int *v13; // [sp+14h] [bp-18h]

	v1 = &FreeObjectJumptable;
	v2 = &ObjectMemoryPointers;
	v3 = &ActiveObjectBitfieldPointers;
	v4 = dword_800315C;
	for ( i = dword_8003174; ; i = v13 + 1 )
	{
		v9 = result;
		v10 = v1;
		v11 = v2;
		v12 = v3;
		v13 = i;
		if ( !result )
			break;
		if ( result & 1 )
		{
			v6 = *v2;
			v7 = 2147483648;
			v8 = 0;
			do
			{
				if ( (*v12)[v8 >> 5] & v7 )
					(*v10)();
				v7 = __ROR4__(v7, 1);
				v6 += *v4;
				++v8;
			}
			while ( v8 < *v13 );
		}
		result = v9 >> 1;
		v1 = (v10 + 1);
		v2 = v11 + 1;
		v3 = v12 + 1;
		++v4;
	}
	return result;
}


// 0x800362c
signed int __fastcall sub_800362C(signed __int16 *a1)
{
	int v1; // r10
	_DWORD *v2; // r3
	int v3; // r1
	int v4; // r1
	int v5; // r6
	signed int result; // r0

	v2 = *(v1 + oToolkit_CameraPtr);
	v3 = a1[1] - (v2[15] >> 16);
	if ( sCamera.unk_4C )
		v3 = (v2[15] >> 16) - a1[1];
	v4 = v3 + 120;
	v5 = a1[3] - (v2[16] >> 16) + 80 - (a1[5] - (v2[17] >> 16));
	if ( v4 < -32 || v4 >= 272 || v5 < -32 || v5 >= 224 )
		result = 160;
	else
		result = v4;
	return result;
}


// 0x8003694
int __fastcall sub_8003694(_DWORD *a1)
{
	int v1; // r10
	_DWORD *v2; // r3
	int v3; // r1
	int v4; // r8
	int v5; // r6
	int v6; // r1
	int v7; // r6
	int v8; // r9
	int v9; // r6
	int result; // r0

	v2 = *(v1 + oToolkit_CameraPtr);
	v3 = *a1 - v2[15];
	v4 = v3;
	v5 = a1[1] - v2[16];
	v6 = ((v3 + v5) >> 16) + 120;
	v7 = (v5 - v4) >> 1;
	v8 = (v2[17] + 0x800000 + v7) >> 16;
	v9 = ((v7 - a1[2] + v2[17]) >> 16) + 82;
	if ( v6 < -32 || v6 >= 272 || v9 < -32 || v9 >= 224 )
		result = v6;
	else
		result = v6;
	return result;
}


// 0x800371a
// () -> void
int object_Clear3RAMBytes_800371A()
{
	int result; // r0

	result = 0;
	byte_2036778 = 0;
	LOBYTE(dword_203CA7C) = 0;
	byte_2036830 = 0;
	return result;
}


// 0x800372a
// () -> void
int object_800372A()
{
	int v0; // r5
	int *v1; // r0
	int v2; // r1
	_BYTE *v3; // r2
	int v4; // r0
	int result; // r0

	v1 = &object_PtrPairs_800374C[2 * (*(v0 + oBattleObject_TypeAndSpriteOffset) & 0xF)];
	v2 = *v1;
	v3 = v1[1];
	v4 = *v3;
	*(v2 + 4 * v4) = v0;
	result = v4 + 1;
	*v3 = result;
	return result;
}


// 0x800378c
int *__fastcall sub_800378C(int a1, int a2, int a3, int a4)
{
	int *result; // r0

	ZeroFillByWord(eOWObjectInteractionAreas, dword_280);
	result = &eNumOWObjectInteractionAreas;
	eNumOWObjectInteractionAreas = 0;
	return result;
}


// 0x80037ac
int __fastcall createOWObjectInteractionArea_80037ac(int a1, int a2, int a3, int a4)
{
	unsigned int v4; // r4
	unsigned int v5; // r5
	unsigned int v6; // r6
	unsigned int v7; // r1
	unsigned int v8; // r2
	int result; // r0
	unsigned int *v10; // r7

	v7 = ((a2 + 0x8000) >> 16 << 16) | ((a1 + 0x8000) >> 16);
	v8 = ((a3 + 0x8000) >> 16) | (a4 << 16);
	result = eNumOWObjectInteractionAreas;
	if ( eNumOWObjectInteractionAreas < 32 )
	{
		v10 = &eOWObjectInteractionAreas[5 * eNumOWObjectInteractionAreas];
		*v10 = v7;
		v10[1] = v8;
		v10[2] = v4;
		v10[3] = v5;
		v10[4] = v6;
		result = eNumOWObjectInteractionAreas++ + 1;
	}
	return result;
}


// 0x80037f4
int checkOWObjectInteractions_80037f4()
{
	int v0; // r6
	signed __int16 *v1; // r3
	int v2; // r7
	signed int v3; // r0
	_DWORD *v4; // r4
	int v5; // r0
	int result; // r0
	signed __int16 *v7; // [sp-14h] [bp-1Ch]

	if ( eNumOWObjectInteractionAreas > 1 )
	{
		v0 = 0;
		do
		{
			v1 = &eOWObjectInteractionAreas[5 * v0];
			v2 = 0;
			do
			{
				if ( v0 != v2 )
				{
					if ( *(v1 + 3) & eOWObjectInteractionAreas[5 * v2 + 2] )
					{
						v7 = v1;
						v3 = checkOWObjectInteractionAreasOverlap_8003894(v1, &eOWObjectInteractionAreas[5 * v2]);
						v1 = v7;
						v4 = &eOWObjectInteractionAreas[5 * v2];
						if ( v3 )
						{
							**(v7 + 4) |= *(v7 + 3) & eOWObjectInteractionAreas[5 * v2 + 2];
							v5 = *(v7 + 2);
							if ( v5 & 0x200000 )
							{
								*&eOWPlayerObject[114] = *v4;
								*&eOWPlayerObject[116] = *(v4 + 1);
								*&eOWPlayerObject[118] = *(v4 + 2);
							}
							*v4[4] |= v5 & v4[3];
						}
					}
				}
				++v2;
			}
			while ( eNumOWObjectInteractionAreas > v2 );
			++v0;
		}
		while ( eNumOWObjectInteractionAreas != v0 );
	}
	result = 0;
	eNumOWObjectInteractionAreas = 0;
	return result;
}


// 0x8003894
signed int __fastcall checkOWObjectInteractionAreasOverlap_8003894(signed __int16 *a1, signed __int16 *a2)
{
	int v2; // r2
	int v3; // r5
	int v4; // r4
	int v6; // r2
	int v7; // r3

	v2 = *a1 - *a2;
	v3 = a1[1] - a2[1];
	v4 = *(a1 + 6) + *(a2 + 6);
	if ( v2 * v2 + v3 * v3 >= v4 * v4 )
		return 0;
	v6 = a1[2];
	v7 = a2[2];
	if ( v6 < v7 )
	{
		if ( v7 > v6 + *(a1 + 7) )
			return 0;
	}
	else if ( v6 > v7 + *(a2 + 7) )
	{
		return 0;
	}
	return 1;
}


// 0x8003908
void __fastcall sub_8003908()
{
	ZeroFillByWord(byte_2000780, 72);
}


// 0x8003914
signed int __fastcall initScenarioEffect_8003914(unsigned __int8 a1, int a2, int a3, int a4)
{
	unsigned __int8 v4; // ST00_1
	int v5; // r0
	signed int result; // r0

	v4 = a1;
	ZeroFillByWord(byte_2000780, 72);
	byte_2000781 = v4;
	v5 = 16 * v4;
	*byte_2000784 = *(&jt_80038E8 + v5 + 8);
	byte_2000782 = *(&jt_80038E8 + v5 + 12);
	result = 1;
	byte_2000780[0] = 1;
	byte_2000783 = 1;
	return result;
}


// 0x8003940
void __fastcall endScenarioEffectMaybe_8003940(int a1, int a2, int a3, int a4)
{
	void (*v4)(void); // r0

	v4 = *(&jt_80038E8 + 4 * byte_2000781 + 1);
	if ( v4 )
		v4();
	ZeroFillByWord(byte_2000780, 72);
}


// 0x8003962
void __fastcall sub_8003962()
{
	if ( !byte_2000782 )
		ZeroFillByWord(byte_2000780, 72);
	byte_2000783 = 1;
}


// 0x800397a
signed int sub_800397A()
{
	signed int result; // r0

	result = 1;
	byte_2000783 = 1;
	return result;
}


// 0x8003984
int sub_8003984()
{
	int result; // r0

	result = byte_2000780[0];
	if ( byte_2000780[0] )
	{
		result = byte_2000780[0] | 0x80;
		byte_2000780[0] |= 0x80u;
	}
	return result;
}


// 0x800399a
int sub_800399A()
{
	int result; // r0

	result = byte_2000780[0] & 0x7F;
	byte_2000780[0] &= 0x7Fu;
	return result;
}


// 0x80039aa
int sub_80039AA()
{
	int result; // r0

	result = byte_2000780[0];
	if ( byte_2000780[0] )
	{
		if ( !(byte_2000780[0] & 0x80) )
			result = (*(&jt_80038E8 + 4 * byte_2000781))();
	}
	return result;
}


// 0x80039cc
int sub_80039CC()
{
	return byte_2000780[0];
}


// 0x80039d4
signed int __fastcall sub_80039D4(int a1)
{
	int v1; // r7
	signed int v2; // r4
	char v3; // zf

	v1 = a1;
	v2 = 0;
	sub_80039CC();
	if ( !v3 && byte_2000781 == v1 )
		v2 = 1;
	return v2;
}


// 0x8003a58
void __fastcall sub_8003A58()
{
	ZeroFillByWord(&byte_2001010, 72);
}


// 0x8003a64
signed int __fastcall initMinigameEffect_8003a64(unsigned __int8 a1, int a2, int a3, int a4)
{
	unsigned __int8 v4; // ST00_1
	int v5; // r0
	signed int result; // r0

	v4 = a1;
	ZeroFillByWord(&byte_2001010, 72);
	byte_2001011 = v4;
	v5 = 16 * v4;
	dword_2001014 = *(&off_80039F8 + v5 + 8);
	byte_2001012 = *(&off_80039F8 + v5 + 12);
	result = 1;
	byte_2001010 = 1;
	byte_2001013 = 1;
	return result;
}


// 0x8003a90
void __fastcall endMinigameEffectMaybe_8003a90(int a1, int a2, int a3, int a4)
{
	void (*v4)(void); // r0

	v4 = *(&off_80039F8 + 4 * byte_2001011 + 1);
	if ( v4 )
		v4();
	ZeroFillByWord(&byte_2001010, 72);
}


// 0x8003ab2
void __fastcall zeroFill_8003AB2()
{
	if ( !byte_2001012 )
		ZeroFillByWord(&byte_2001010, 72);
	byte_2001013 = 1;
}


// 0x8003aca
signed int sub_8003ACA()
{
	signed int result; // r0

	result = 1;
	byte_2001013 = 1;
	return result;
}


// 0x8003ad4
int sub_8003AD4()
{
	int result; // r0

	result = byte_2001010;
	if ( byte_2001010 )
	{
		result = byte_2001010 | 0x80;
		byte_2001010 |= 0x80u;
	}
	return result;
}


// 0x8003aea
int sub_8003AEA()
{
	int result; // r0

	result = byte_2001010 & 0x7F;
	byte_2001010 &= 0x7Fu;
	return result;
}


// 0x8003afa
int sub_8003AFA()
{
	int result; // r0

	result = byte_2001010;
	if ( byte_2001010 )
	{
		if ( !(byte_2001010 & 0x80) )
			result = (*(&off_80039F8 + 4 * byte_2001011))();
	}
	return result;
}


// 0x8003b1c
int sub_8003B1C()
{
	return byte_2001010;
}


// 0x8003b24
signed int __fastcall sub_8003B24(int a1)
{
	int v1; // r7
	signed int v2; // r4
	char v3; // zf

	v1 = a1;
	v2 = 0;
	sub_8003B1C();
	if ( !v3 && byte_2001011 == v1 )
		v2 = 1;
	return v2;
}


// 0x8003b4c
int __fastcall SpawnOWPlayerObject(int result, int a2, int a3, int a4)
{
	unsigned int v4; // r1
	char *v5; // r5
	int v6; // [sp+4h] [bp-14h]
	int v7; // [sp+10h] [bp-8h]

	v4 = 2147483648;
	v5 = eOWPlayerObject;
	while ( eActiveOWPlayerObjectBitfield & v4 )
	{
		v4 >>= 1;
		v5 += 200;
		if ( v5 >= &eStruct200A008 )
			return result;
	}
	eActiveOWPlayerObjectBitfield |= v4;
	*v5 = 9;
	v5[1] = result;
	*(v5 + 7) = v6;
	*(v5 + 8) = a3;
	*(v5 + 9) = a4;
	*(v5 + 1) = v7;
	result = 0;
	*(v5 + 2) = 0;
	return result;
}


// 0x8003b86
int FreeOWPlayerObject()
{
	_BYTE *v0; // r5

	eActiveOWPlayerObjectBitfield &= ~(0x80000000 >> v0[3]);
	*v0 = 0;
	return sprite_makeUnscalable();
}


// 0x8003ba2
char *sub_8003BA2()
{
	Toolkit *tk; // r10
	NPC *player; // r5
	char *result; // r0

	player = eOWPlayerObject;
	do
	{
		if ( player->invisCollSwitch & 1 && (!tk->gamestate->unk_0A || player->invisCollSwitch & 4) )
			(*(&off_8003B48 + byte_0[player + 1]))();
		player = (player + 200);
		result = &eStruct200A008;
	}
	while ( player < &eStruct200A008 );
	return result;
}


// 0x8003bf4
int sub_8003BF4()
{
	signed int v0; // r0
	signed int v1; // r1
	char *v2; // r5
	char v3; // r2
	signed int v4; // ST00_4
	signed int v5; // ST04_4
	signed int v6; // ST00_4
	signed int v7; // ST04_4

	v0 = 1;
	v1 = 0;
	v2 = eOWPlayerObject;
	do
	{
		v3 = *v2;
		if ( *v2 & 2 )
		{
			v4 = v0;
			v5 = v1;
			sub_30061E8();
			sub_3006028(0);
			sub_3006440(2, 96);
			v0 = v4;
			v1 = v5;
		}
		else
		{
			*(v2 + 45) = 0;
			if ( v3 & 1 )
			{
				v6 = v0;
				v7 = v1;
				sub_30061E8();
				v0 = v6;
				v1 = v7;
			}
		}
		++v1;
		v2 += 200;
	}
	while ( v1 < v0 );
	return sub_80028C0(0);
}


// 0x8003c70
int sub_8003C70()
{
	return sub_80028C0(0);
}


// 0x8003c7a
signed int sub_8003C7A()
{
	signed int result; // r0
	char *v1; // r3

	result = 0;
	v1 = eOWPlayerObject;
	do
	{
		*(v1 + 45) = 0;
		v1 += 200;
		++result;
	}
	while ( result < 1 );
	return result;
}


// 0x8003e18
int sub_8003E18()
{
	int v0; // r6
	int *i; // r7
	unsigned __int8 v2; // vf
	char v3; // r2

	v0 = byte_2036778;
	for ( i = &dword_2039A10; ; ++i )
	{
		v2 = __OFSUB__(v0--, 1);
		if ( (v0 < 0) ^ v2 )
			break;
		v3 = **i;
		if ( **i & 2 )
		{
			sub_30061E8();
			sub_3006028(1);
			sub_3006440(2, 64);
		}
		else
		{
			*(*i + 180) = 0;
			if ( v3 & 1 )
				sub_30061E8();
		}
	}
	return sub_80028C0(1);
}


// 0x8003e98
int sub_8003E98()
{
	return sub_80028C0(1);
}


// 0x8004218
int sub_8004218()
{
	int v0; // r6
	int *i; // r7
	unsigned __int8 v2; // vf
	char v3; // r2

	v0 = dword_203CA7C;
	for ( i = &dword_203A010; ; ++i )
	{
		v2 = __OFSUB__(v0--, 1);
		if ( (v0 < 0) ^ v2 )
			break;
		v3 = **i;
		if ( **i & 2 )
		{
			sub_30061E8();
			sub_3006028(3);
			sub_3006440(2, 64);
		}
		else
		{
			*(*i + 180) = 0;
			if ( v3 & 1 )
				sub_30061E8();
		}
	}
	return sub_80028C0(3);
}


// 0x8004298
int sub_8004298()
{
	return sub_80028C0(3);
}


// 0x80042a6
signed int __fastcall sub_80042A6(signed int result, int a2, int a3, int a4)
{
	do
	{
		*(&dword_24 + a4 + 144) = 0;
		a4 += 216;
		++result;
	}
	while ( result < 32 );
	return result;
}


// 0x8004510
int sub_8004510()
{
	int v0; // r6
	char *i; // r7
	unsigned __int8 v2; // vf
	char v3; // r2

	v0 = byte_2036830;
	for ( i = byte_203F750; ; i += 4 )
	{
		v2 = __OFSUB__(v0--, 1);
		if ( (v0 < 0) ^ v2 )
			break;
		v3 = **i;
		if ( **i & 2 )
		{
			sub_30061E8();
			sub_3006028(4);
			sub_3006440(2, 64);
		}
		else
		{
			*(*i + 164) = 0;
			if ( v3 & 1 )
				sub_30061E8();
		}
	}
	return sub_80028C0(4);
}


// 0x8004590
int sub_8004590()
{
	return sub_80028C0(4);
}


// 0x800459a
signed int dead_800459A()
{
	signed int result; // r0
	char *v1; // r3

	result = 0;
	v1 = &eT4BattleObjects[16];
	do
	{
		*(v1 + 41) = 0;
		v1 += 200;
		++result;
	}
	while ( result < 32 );
	return result;
}


// 0x80045c0
void __fastcall SpawnOverworldNPCObject(int a1, int a2, int a3, int a4)
{
	unsigned int v4; // r1
	char *v5; // r5
	char v6; // [sp+0h] [bp-18h]
	int v7; // [sp+4h] [bp-14h]
	int v8; // [sp+8h] [bp-10h]
	int v9; // [sp+Ch] [bp-Ch]
	int v10; // [sp+10h] [bp-8h]

	v6 = a1;
	v7 = a2;
	v8 = a3;
	v9 = a4;
	v4 = 2147483648;
	v5 = eOverworldNPCObjects;
	while ( eActiveOverworldNPCObjectsBitfield & v4 )
	{
		v4 >>= 1;
		v5 += 216;
		if ( v5 >= byte_2006530 )
			return;
	}
	eActiveOverworldNPCObjectsBitfield |= v4;
	ZeroFillByWord(v5 + 4, 156);
	*v5 = 9;
	v5[1] = v6;
	*(v5 + 9) = v7;
	*(v5 + 10) = v8;
	*(v5 + 11) = v9;
	*(v5 + 1) = v10;
}


// 0x8004602
int FreeOverworldNPCObject()
{
	_BYTE *v0; // r5

	eActiveOverworldNPCObjectsBitfield &= ~(0x80000000 >> v0[3]);
	*v0 = 0;
	return sprite_makeUnscalable();
}


// 0x800461e
// [break] continuously called
// [disable] - NPCs are no longer loaded, if they were already loaded, they are not interactable. Some are exceptions, like Central Robo Dog.
// - Scenes don't seem to load, either
char *npc_800461E()
{
	Toolkit *tk; // r10
	char *result; // r0
	char notFlag; // zf
	NPC *npc; // r5

	result = TestEventFlagFromImmediate(23, 1);
	if ( notFlag )
	{
		npc = eOverworldNPCObjects;
		do
		{
			if ( npc->invisCollSwitch & 1 && (!tk->gamestate->unk_0A || npc->invisCollSwitch & 4) )
				(*(&off_80045BC + npc->unk_01))();
			npc = (npc + 216);
			result = byte_2006530;
		}
		while ( npc < byte_2006530 );
	}
	return result;
}


// 0x800467c
int sub_800467C()
{
	signed int v0; // r0
	signed int v1; // r1
	char *v2; // r5
	char v3; // r2
	signed int v4; // ST00_4
	signed int v5; // ST04_4
	signed int v6; // ST00_4
	signed int v7; // ST04_4

	v0 = 16;
	v1 = 0;
	v2 = eOverworldNPCObjects;
	do
	{
		v3 = *v2;
		if ( *v2 & 2 )
		{
			v4 = v0;
			v5 = v1;
			sub_30061E8();
			sub_3006028(2);
			sub_3006440(2, 96);
			v0 = v4;
			v1 = v5;
		}
		else
		{
			*(v2 + 49) = 0;
			if ( v3 & 1 )
			{
				v6 = v0;
				v7 = v1;
				sub_30061E8();
				v0 = v6;
				v1 = v7;
			}
		}
		++v1;
		v2 += 216;
	}
	while ( v1 < v0 );
	return sub_80028C0(2);
}


// 0x80046f8
int sub_80046F8()
{
	return sub_80028C0(2);
}


// 0x8004702
signed int sub_8004702()
{
	signed int result; // r0
	char *v1; // r3

	result = 0;
	v1 = eOverworldNPCObjects;
	do
	{
		*(v1 + 49) = 0;
		v1 += 216;
		++result;
	}
	while ( result < 16 );
	return result;
}


// 0x80047e0
int __fastcall SpawnOverworldMapObject(int result, int a2, int a3, int a4)
{
	unsigned int v4; // r1
	void **v5; // r5
	unsigned int v6; // r6
	unsigned int v7; // r3
	int v8; // r2
	void *v9; // [sp+4h] [bp-18h]
	int v10; // [sp+8h] [bp-14h]
	int v11; // [sp+Ch] [bp-10h]
	void *v12; // [sp+10h] [bp-Ch]

	v10 = a3;
	v11 = a4;
	v4 = 2147483648;
	v5 = &eOverworldMapObjects;
	v6 = 0;
	while ( 1 )
	{
		v7 = v6 >> 5;
		v8 = eActiveOverworldMapObjectsBitfield[v7];
		if ( !(v8 & v4) )
			break;
		v4 = __ROR4__(v4, 1);
		v5 += 30;
		if ( ++v6 >= 56 )
			return result;
	}
	eActiveOverworldMapObjectsBitfield[v7] = v8 | v4;
	*v5 = 9;
	*(v5 + 1) = result;
	v5[3] = v9;
	v5[4] = v10;
	v5[5] = v11;
	v5[1] = v12;
	result = 0;
	v5[2] = 0;
	return result;
}


// 0x8004822
int __fastcall sub_8004822(int result, int a2, int a3, int a4)
{
	char *v4; // r5
	signed int v5; // r6
	unsigned int v6; // r1
	unsigned int v7; // r3
	int v8; // r2
	unsigned __int8 v9; // vf
	int v10; // [sp+4h] [bp-18h]
	int v11; // [sp+8h] [bp-14h]
	int v12; // [sp+Ch] [bp-10h]
	int v13; // [sp+10h] [bp-Ch]

	v11 = a3;
	v12 = a4;
	v4 = &byte_20138A8;
	v5 = 55;
	while ( 1 )
	{
		v6 = 0x80000000 >> (v5 & 0x1F);
		v7 = v5 >> 5;
		v8 = eActiveOverworldMapObjectsBitfield[v7];
		if ( !(v8 & v6) )
			break;
		v4 -= 120;
		v9 = __OFSUB__(v5--, 1);
		if ( (v5 < 0) ^ v9 )
			return result;
	}
	eActiveOverworldMapObjectsBitfield[v7] = v8 | v6;
	*v4 = 9;
	v4[1] = result;
	*(v4 + 3) = v10;
	*(v4 + 4) = v11;
	*(v4 + 5) = v12;
	*(v4 + 1) = v13;
	result = 0;
	*(v4 + 2) = 0;
	return result;
}


// 0x8004864
int __fastcall sub_8004864(int result, int a2, int a3, int a4)
{
	unsigned int v4; // r5
	unsigned int v5; // r1
	unsigned int v6; // r6
	void **v7; // r5
	unsigned int v8; // r3
	int v9; // r2
	void *v10; // [sp+4h] [bp-18h]
	int v11; // [sp+8h] [bp-14h]
	int v12; // [sp+Ch] [bp-10h]
	void *v13; // [sp+10h] [bp-Ch]

	v11 = a3;
	v12 = a4;
	v5 = 0x80000000 >> (v4 & 0x1F);
	v6 = v4;
	v7 = &eOverworldMapObjects + 30 * v4;
	while ( 1 )
	{
		v8 = v6 >> 5;
		v9 = eActiveOverworldMapObjectsBitfield[v8];
		if ( !(v9 & v5) )
			break;
		v5 = __ROR4__(v5, 1);
		v7 += 30;
		if ( ++v6 >= 56 )
			return result;
	}
	eActiveOverworldMapObjectsBitfield[v8] = v9 | v5;
	*v7 = 9;
	*(v7 + 1) = result;
	v7[3] = v10;
	v7[4] = v11;
	v7[5] = v12;
	v7[1] = v13;
	result = 0;
	v7[2] = 0;
	return result;
}


// 0x80048b2
int FreeOverworldMapObject()
{
	_BYTE *v0; // r5

	eActiveOverworldMapObjectsBitfield[v0[3] >> 5] &= ~__ROR4__(2147483648, v0[3]);
	*v0 = 0;
	return sprite_makeUnscalable();
}


// 0x80048d2
int *sub_80048D2()
{
	Toolkit *tk; // r10
	int *result; // r0
	char flag; // zf
	void *sprite; // r5

	result = TestEventFlagFromImmediate(23, 2);
	if ( flag )
	{
		sprite = &eOverworldMapObjects;
		do
		{
			if ( *sprite & 1 && (!tk->gamestate->unk_0A || *sprite & 4) )
				(*(&JumpTable8004724 + *(sprite + 1)))();
			sprite = sprite + 120;
			result = &dword_2013920;
		}
		while ( sprite < &dword_2013920 );
	}
	return result;
}


// 0x8004934
int sub_8004934()
{
	signed int v0; // r0
	signed int v1; // r1
	void **structArr; // r5
	char v3; // r2
	signed int v4; // ST00_4
	signed int v5; // ST04_4
	signed int v6; // ST00_4
	signed int v7; // ST04_4

	v0 = 56;
	v1 = 0;
	structArr = &eOverworldMapObjects;
	do
	{
		v3 = *structArr;
		if ( *structArr & 2 )
		{
			v4 = v0;
			v5 = v1;
			sub_30061E8();
			sub_3006028(5);
			sub_3006440(2, 96);
			v0 = v4;
			v1 = v5;
		}
		else
		{
			structArr[25] = 0;
			if ( v3 & 1 )
			{
				v6 = v0;
				v7 = v1;
				sub_30061E8();
				v0 = v6;
				v1 = v7;
			}
		}
		++v1;
		structArr += 30;
	}
	while ( v1 < v0 );
	return sub_80028C0(5);
}


// 0x80049b0
int sub_80049B0()
{
	return sub_80028C0(5);
}


// 0x80049ba
signed int sub_80049BA()
{
	signed int result; // r0
	void **v1; // r3

	result = 0;
	v1 = &eOverworldMapObjects;
	do
	{
		v1[25] = 0;
		v1 += 30;
		++result;
	}
	while ( result < 56 );
	return result;
}


// 0x80049e0
int *__fastcall sub_80049E0(int a1, int a2, int a3, int a4)
{
	int *result; // r0

	ZeroFillByEightWords(&byte_2006848, &byte_400);
	result = &dword_2006C48;
	dword_2006C48 = &byte_2006848;
	return result;
}


// 0x80049f8
void sub_80049F8()
{
	;
}


// 0x80049fc
int __fastcall sub_80049FC(_BYTE *a1, int a2, int a3, int a4, int (__fastcall *a5)(_BYTE *, int, int, int))
{
	int v5; // r4
	int v6; // r5
	int v7; // r6
	int v8; // r7
	int v9; // r1
	_BYTE *v10; // r0
	_BYTE *v11; // r1
	_BYTE *v12; // r0
	_WORD *v13; // r1
	signed int v14; // r2
	char *i; // r3
	int v16; // r2
	unsigned int v17; // r3
	int (__cdecl *v18)(_BYTE *, _WORD *, _DWORD, unsigned int, int, int, int); // r4
	int v20; // [sp+0h] [bp-44h]
	int v21; // [sp+4h] [bp-40h]
	int v22; // [sp+8h] [bp-3Ch]
	int v23; // [sp+Ch] [bp-38h]
	int v24; // [sp+10h] [bp-34h]
	int v25; // [sp+14h] [bp-30h]
	int v26; // [sp+18h] [bp-2Ch]
	int v27; // [sp+1Ch] [bp-28h]
	_BYTE *v28; // [sp+24h] [bp-20h]
	int v29; // [sp+28h] [bp-1Ch]
	int v30; // [sp+2Ch] [bp-18h]
	int v31; // [sp+30h] [bp-14h]

	v28 = a1;
	v29 = a2;
	v30 = a3;
	v31 = a4;
	v20 = a2;
	v21 = a3;
	v22 = a4;
	v23 = v5;
	v24 = v6;
	v25 = v7;
	v26 = v8;
	v27 = 0;
	v9 = dword_2006C48;
	if ( dword_2006C48 < &unk_2006C46 )
	{
		*dword_2006C48 = *a1;
		v10 = a1 + 1;
		v11 = (v9 + 1);
		*v11 = *v10;
		v12 = v10 + 1;
		v13 = v11 + 1;
		while ( 1 )
		{
			v14 = *v12;
			if ( !*v12 )
				break;
			if ( v14 == 10 )
			{
				*v13 = 254;
				++v13;
			}
			else if ( v14 >= 32 && v14 < 96 )
			{
				if ( v13 >= &unk_2006C46 )
					break;
				if ( v14 == 37 )
				{
LABEL_10:
					++v12;
					for ( i = byte_8004B14; *i; ++i )
					{
						if ( *v12 == *i )
						{
							v16 = v27;
							v27 += 4;
							v17 = 4 * (i - byte_8004B14);
							v18 = *(&off_8004AC0 + v17);
							v12 = v18(v12, v13, *(&v20 + v16), v17 >> 2, v20, v21, v22);
				            if ( !v18 )
                                goto LABEL_10;
                            break;
                        }
                    }
                }
                else
                {
                    *v13 = v14 - 32;
                    ++v13;
                }
            }
            ++v12;
        }
        *v13 = 255;
        dword_2006C48 = (v13 + 1);
    }
    return a5(v28, v29, v30, v31);
}


// 0x8004b28
int __fastcall sub_8004B28(int result)
{
    char *v1; // r4
    int v2; // r5
    int v3; // r2
    int v4; // r6
    int v5; // r1
    int v6; // r3
    int v7; // ST00_4
    int v8; // ST04_4
    int v9; // ST08_4

    v1 = &byte_2006848;
    v2 = dword_2006C48 - &byte_2006848;
    v3 = 0;
    while ( v2 )
    {
        v4 = *v1;
        result = *v1;
        v5 = v1[1];
        v1 += 2;
        v2 -= 2;
        while ( 1 )
        {
            v6 = *v1;
            v1 += 2;
            v2 -= 2;
            if ( v6 == 255 )
                break;
            if ( v6 == 254 )
            {
                result = v4;
                ++v5;
            }
            else
            {
                v7 = result;
                v8 = v5;
                v9 = v3;
                sub_800187C(result, v5, v3, v6 - 3424);
                v5 = v8;
                v3 = v9;
                result = v7 + 1;
            }
        }
    }
    dword_2006C48 = &byte_2006848;
    return result;
}


// 0x8004b72
void __fastcall sub_8004B72(int a1, _WORD *a2, int a3, char a4)
{
    signed int v4; // r5

    if ( a3 < 0 )
    {
        if ( a2 >= v4 )
            return;
        *a2 = 13;
        ++a2;
        a3 = -a3;
    }
    sub_8004BFC(byte_8004BA0, a2, a3, a4);
}


// 0x8004bc8
void __fastcall sub_8004BC8(int a1, int a2, int a3, char a4)
{
    sub_8004BFC(dword_8004BDC, a2, a3, a4 - 2);
}


// 0x8004bfc
int *__fastcall sub_8004BFC(int *result, _WORD *a2, int a3, char a4)
{
    signed int v4; // r5
    int v5; // r6
    int v6; // r8
    int v7; // r7
    int v8; // r8
    char v9; // r7
    int v10; // r3
    int v11; // r4

    v7 = v6;
    if ( !v6 || v6 >= v5 )
        v7 = v5;
    v8 = v5 - v7;
    v9 = a4;
    do
    {
        v10 = 0;
        v11 = *result;
        while ( 1 )
        {
            while ( a3 >= 0 )
            {
                if ( a3 < v11 )
                    goto LABEL_11;
                a3 -= v11;
                ++v10;
            }
            if ( a3 >= v11 )
                break;
            a3 -= v11;
            ++v10;
        }
LABEL_11:
        if ( v8 )
        {
            --v8;
        }
        else if ( v9 & 1 || v11 == 1 || v10 )
        {
            v9 |= 1u;
            if ( a2 >= v4 )
                return result;
            *a2 = byte_8004D34[v10] - 32;
            ++a2;
        }
        ++result;
    }
    while ( v11 != 1 );
    return result;
}


// 0x8004c62
void __fastcall sub_8004C62(int a1, _WORD *a2, _BYTE *a3)
{
    signed int v3; // r5
    signed int v4; // r8

    if ( !v4 )
        v4 = 255;
    while ( v4 )
    {
        --v4;
        if ( !*a3 || a2 >= v3 )
            break;
        *a2 = *a3 - 32;
        ++a2;
        ++a3;
    }
}


// 0x8004c90
unsigned __int8 *__fastcall sub_8004C90(unsigned __int8 *result)
{
    int v1; // r8
    int v2; // r3
    signed int v3; // r4
    int v4; // r8

    v2 = 0;
    v3 = 0;
    do
    {
        v2 += v1;
        ++v3;
    }
    while ( v3 < 10 );
    v4 = v2 + *result - 48;
    return result;
}


// 0x8004cae
void __fastcall sub_8004CAE(int a1, _WORD *a2)
{
    *a2 = 5;
}


// 0x8004cbe
void __fastcall sub_8004CBE(int a1, _WORD *a2, int a3, char a4)
{
    sub_8004CCC(a1, a2, a3, a4 - 17);
}


// 0x8004ccc
void __fastcall sub_8004CCC(int a1, _WORD *a2, int a3, char a4)
{
    signed int v4; // r5
    int v5; // r6
    int v6; // r8
    int v7; // r7
    int v8; // r8
    char v9; // r7
    unsigned int v10; // r4
    int v11; // r3

    v7 = v6;
    if ( !v6 || v6 >= v5 )
        v7 = v5;
    v8 = v5 - v7;
    v9 = a4;
    v10 = 2147483648;
    do
    {
        v11 = 0;
        while ( a3 & v10 )
        {
            a3 &= ~v10;
            ++v11;
        }
        if ( v8 )
        {
            --v8;
        }
        else if ( v9 & 1 || v10 == 1 || v11 )
        {
            v9 |= 1u;
            if ( a2 >= v4 )
                return;
            *a2 = byte_8004D34[v11] - 32;
            ++a2;
        }
        v10 >>= 1;
    }
    while ( v10 );
}


// 0x8004d48
char *sub_8004D48()
{
    Toolkit *tk; // r10
    GameState *gs; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    char v6; // zf

    gs = tk->gamestate;
    gs->subSystemSelect = 0;
    gs->unk_16 = 8;
    gs->unk_17 = 16;
    gs->unk_0E = 0;
    gs->unk_03 = 0;
    gs->scriptOffIdx_LMsg_15 = 0;
    gs->unk_0A = 0;
    *gs->pad_74 = 0;
    gs->bgMusicIndicator = 99;
    gs->unk_11 = 0;
    gs->unk_10 = 0;
    byte_200F410 = 0;
    byte_200ACE0 = 0;
    dword_200ACF8 = 0;
    dword_200AD00 = 0;
    byte_200ACFC = -1;
    setEventFlag_809E098();
    sCamera.unk_4C = 0;
    LOBYTE(dword_20096D0) = 0;
    sub_8004702();
    ClearEventFlagFromImmediate(23, 3);
    ClearEventFlagFromImmediate(23, 27);
    ClearEventFlagFromImmediate(23, 21);
    ClearEventFlagFromImmediate(23, 45);
    sub_800399A();
    v2 = sub_8003AEA();
    sub_811EC00(v2, v3, v4, v5);
    sub_800B110();
    ClearEventFlagFromImmediate(0, 145);
    sub_803C3E0();
    if ( !v6 )
        SetEventFlagFromImmediate(0, 145);
    return sub_8048C98();
}


// 0x8004df0
void __cdecl reqBBS_init_8004DF0()
{
    int v0; // r2
    int v1; // r3
    int v2; // r10
    GameState *gs; // r5
    int v4; // r1
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int v9; // r0
    int v10; // r1
    int v11; // r2
    int v12; // r3
    int v13; // r0
    int v14; // r1
    int v15; // r2
    int v16; // r3
    int v17; // r0
    int v18; // r1
    int v19; // r2
    int v20; // r3
    int v21; // r0
    int v22; // r1
    int v23; // r2
    int v24; // r3
    int v25; // r0
    int v26; // r1
    int v27; // r2
    int v28; // r3

    gs = *(v2 + oToolkit_GameStatePtr);
    gs->unk_20 = 0;
    *&gs->unk_0C = -1;
    gs->protected_zennies = 0;
    gs->protected_bugFrags = 0;
    *gs->pad_74 = 0;
    gs->unk_6C = -1;
    gs->unk_70 = -1;
    v4 = *(v2 + oToolkit_Unk2001c04_Ptr);
    *(v4 + 24) = 0;
    *(v4 + 5) = 1;
    *(v4 + 18) = 0;
    *(v4 + 20) = 0;
    *(v4 + 28) = 0;
    gs->currBattleData = 0;
    *(v4 + 8) = 0;
    *(v4 + 10) = 0;
    *(v4 + 12) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    *(v4 + 48) = 0;
    gs->pad_02[oGameState_SubsystemIndex] = 0;
    *(v4 + 36) = 0;
    *(v4 + 40) = 0;
    *(v4 + 4) = 99;
    gs->PET_naviSelect = 0;
    *(v4 + 22) = 0;
    gs->unk_12 = -1;
    sub_802F0C4(255, v4, v0, v1);
    v9 = sub_8006D00(v5, v6, v7, v8);
    sub_803CD74(v9, v10, v11, v12);
    gs->pad_13[oGameState_SubsystemIndex] = 0;
    *&gs->pad_74[oGameState_MapGroup] = 0;
    sub_802F2C8();
    sub_81284A4();
    sub_809E2C2();
    sub_809E2F4();
    sub_809E304();
    sub_809E2FC();
    sub_809E312();
    sub_809E3AA();
    sub_809E3B2();
    sub_8003908();
    sub_8003A58();
    zeroFill_e2004348();
    sub_809FAF4();
    sub_809F9DC();
    sub_8049CF8();
    sub_804A17A();
    sub_811FB78();
    sub_8048C68();
    SetEventFlagFromImmediate(23, 29);
    SetEventFlagFromImmediate(4, 1);
    SetEventFlagRangeFromImmediate(4, 231, 2);
    SetEventFlagFromImmediate(4, 109);
    SetEventFlagFromImmediate(4, 131);
    SetEventFlagRangeFromImmediate(0, 1, 3);
    SetEventFlagFromImmediate(0, 4);
    SetEventFlagRangeFromImmediate(0, 6, 8);
    SetEventFlagRangeFromImmediate(0, 15, 2);
    SetEventFlagRangeFromImmediate(5, 238, 3);
    SetEventFlagRangeFromImmediate(0, 49, 2);
    SetEventFlagRangeFromImmediate(0, 59, 3);
    SetEventFlagFromImmediate(0, 114);
    SetEventFlagRangeFromImmediate(0, 115, 7);
    SetEventFlagRangeFromImmediate(9, 246, 9);
    SetEventFlagFromImmediate(0, 135);
    SetEventFlagFromImmediate(0, 137);
    SetEventFlagFromImmediate(8, 125);
    SetEventFlagFromImmediate(10, 153);
    SetEventFlagRangeFromImmediate(11, 253, 3);
    SetEventFlagFromImmediate(0, 112);
    SetEventFlagFromImmediate(0, 138);
    SetEventFlagRangeFromImmediate(12, 215, 4);
    SetEventFlagFromImmediate(0, 140);
    SetEventFlagFromImmediate(12, 230);
    SetEventFlagRangeFromImmediate(15, 249, 7);
    SetEventFlagFromImmediate(1, 54);
    SetEventFlagRangeFromImmediate(1, 56, 2);
    SetEventFlagFromImmediate(1, 58);
    SetEventFlagRangeFromImmediate(1, 100, 25);
    SetEventFlagFromImmediate(0, 123);
    SetEventFlagFromImmediate(0, 127);
    SetEventFlagFromImmediate(0, 129);
    SetEventFlagRangeFromImmediate(1, 142, 9);
    SetEventFlagFromImmediate(0, 134);
    SetEventFlagRangeFromImmediate(1, 206, 6);
    SetEventFlagFromImmediate(16, 1);
    SetEventFlagFromImmediate(6, 142);
    ClearEventFlagFromImmediate(6, 143);
    SetEventFlagRangeFromImmediate(0, 130, 2);
    SetEventFlagFromImmediate(0, 133);
    clearSetFlags_80355a8();
    SetEventFlagFromImmediate(0, 56);
    SetEventFlagFromImmediate(0, 57);
    SetEventFlagFromImmediate(0, 17);
    sub_80AA004(0);
    sub_80AA104(0);
    sub_802D638();
    sub_80356EC();
    *&gs->MapSelect = byte_100;
    gs->unk_44 = byte_100;
    *&gs->pad_48[oGameState_Unk_10] = byte_100;
    gs->gameProgress = 0;
    gs->unk_07 = 0;
    gs->unk_08 = 0;
    gs->player_x = 0;
    gs->unk_34 = 0;
    *gs->pad_48 = 0;
    gs->player_y = 0;
    gs->unk_38 = 0;
    *&gs->pad_48[oGameState_MapGroup] = 0;
    gs->unk_2C = 0;
    gs->unk_3C = 0;
    *&gs->pad_48[oGameState_Unk_08] = 0;
    gs->unk_30 = 4;
    gs->unk_40 = 4;
    *&gs->pad_48[oGameState_LastMapGroup] = 4;
    v13 = initGameProgressBuffer_803532c();
    sub_8021D36(v13, v14, v15, v16);
    ZeroFillByWord(*(v2 + oToolkit_S_Chip_2002178_Ptr), 180);
    zeroFill_e2002230();
    sub_8021AB4(byte_80213AC, 0);
    sub_81376E8();
    sub_8137700();
    sub_8137808();
    sub_80133EC();
    sub_813B768();
    zeroFill_813B934();
    v17 = sub_813C324();
    zeroFill_8121144(v17, v18, v19, v20);
    sub_800AAF2(v21, v22, v23, v24);
    sub_800AB22(v25, v26, v27, v28);
    sub_802E240(1);
    reqBBS_813E616();
    reqBBS_initMemory_813F9DA();
    ClearEventFlagFromImmediate(23, 58);
    ClearEventFlagFromImmediate(23, 61);
    ClearEventFlagFromImmediate(23, 62);
    ClearEventFlagFromImmediate(23, 63);
    reqBBS_8140984();
}


// 0x80050ec
// set R5 = &tk->gamestate
void __cdecl cbGameState_80050EC()
{
    Toolkit *tk; // r10

    (*(GameStateJumptable + tk->gamestate->subSystemSelect))();
    GetRNG2();
    GetRNG1();
}


// 0x8005148
int __fastcall EnterMap(int a1)
{
    Toolkit *tk; // r10
    int result; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    int v14; // r0
    int v15; // r1
    int v16; // r2
    int v17; // r3
    int v18; // r1
    int v19; // r2
    int v20; // r3
    char notScreeneffectAimating; // zf
    GameState *gs; // r5
    int v23; // r0
    int v24; // r1
    int v25; // r2
    int v26; // r3
    int v27; // r1

    result = IsPaletteFadeActive();
    if ( !notScreeneffectAimating )
    {
        sub_8005F40(result, v3, v4, v5);
        sub_8005F6C();
        v6 = sub_80027C4();
        InitializeOverworldMapObjectStructs(v6, v7, v8, v9);
        sub_8002668();
        zeroFill_80024A2();
        sub_8003962();
        zeroFill_8003AB2();
        sub_802F0D8(v10, v11, v12, v13);
        sub_802F0F4(v14, v15, v16, v17);
        sub_8036EFE();
        sub_8036F24();
        sub_809F90C();
        ClearEventFlagFromImmediate(23, 49);
        sub_803F6B0(0, v18, v19, v20);
        sub_803F500();
        RandomizeExtraToolkitPointers();
        TestEventFlagFromImmediate(23, 65);
        if ( notScreeneffectAimating )
            reloadCurNaviStatBoosts_813c3ac();
        gs = tk->gamestate;
        sub_8000FAC();
        sub_80355EC();
        sub_8001172(0);
        gs->scriptOffIdx_LMsg_15 = 0;
        gs->unk_0E = 0;
        gs->unk_03 = 0;
        gs->unk_68 = 0;
        ClearEventFlagFromImmediate(23, 25);
        ClearEventFlagFromImmediate(23, 1);
        ClearEventFlagFromImmediate(23, 2);
        ClearEventFlagFromImmediate(23, 0);
        ClearEventFlagFromImmediate(23, 7);
        ClearEventFlagFromImmediate(23, 57);
        ClearEventFlagFromImmediate(23, 50);
        v23 = ClearEventFlagFromImmediate(1, 187);
        sub_8033948(v23, v24, v25, v26);
        SetRenderInfoLCDControl(&loc_1740);
        v27 = gs->MapSubOffset;
        LoadGFXAnimsForMapGroup(gs->MapSelect);
        map_8001708(gs->MapSelect, gs->MapSubOffset);
        map_8034B4C(gs->MapSelect, gs->MapSubOffset);
        EnterMap_RunMapGroupAsmFunction_8030A00(gs->MapSelect);
        ClearEventFlagFromImmediate(23, 61);
        ClearEventFlagFromImmediate(23, 62);
        ClearEventFlagFromImmediate(23, 63);
        engine_setScreeneffect(gs->unk_16, gs->unk_17);
        gs->unk_16 = 8;
        gs->unk_17 = 16;
        *(tk->unk_2011BB0 + 16) = 0;
        result = 4;
        gs->subSystemSelect = 4;
    }
    return result;
}


// 0x8005268
void __usercall gamestate_8005268(GameState *gs@<R5>, int a1@<R0>)
{
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3

    sub_8036F24();
    sub_8034BB8(v2);
    gs->unk_0E = 0;
    sub_800378C(0, v3, v4, v5);
    sub_8003BA2();
    npc_800461E();
    sub_80048D2();
    sub_809F942();
    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    checkOWObjectInteractions_80037f4();
    sub_802FFF4();
    sub_8030580();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    sub_80058D0();
    sub_8005A8C();
    sub_8005B6A();
    sub_8005AF4();
}


// 0x80052d8
int __fastcall battle_80052D8(int a1)
{
    int result; // r0
    char v2; // zf

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = sub_803F530();
    if ( v2 )
    {
        result = IsPaletteFadeActive();
        if ( !v2 )
            sub_800531C(result);
    }
    return result;
}


// 0x800531c
void __fastcall __noreturn sub_800531C(int a1)
{
    int v1; // r10
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r5

    chatbox_8040818();
    sub_80035A2(0x21u);
    sub_8004702();
    zeroFill_80024A2();
    sub_8003962();
    zeroFill_8003AB2();
    RandomizeExtraToolkitPointers();
    v5 = *(v1 + oToolkit_GameStatePtr);
    *v5 = 12;
    sub_80071D4(*(v5 + oGameState_CurBattleDataPtr), v2, v3, v4);
}


// 0x8005360
int sub_8005360()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = battle_8007800();
    if ( v2 )
    {
        result = 0;
        *v0 = 0;
    }
    return result;
}


// 0x800536e
int __fastcall sub_800536E(int a1)
{
    int v1; // r5
    int result; // r0
    int v3; // r1
    int v4; // r2
    char v5; // zf
    int v6; // r0
    unsigned __int8 v7; // vf

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v5 )
    {
        v6 = *(v1 + 104);
        v7 = __OFSUB__(v6, 1);
        result = v6 - 1;
        if ( (result < 0) ^ v7 )
        {
            chatbox_8040818();
            result = sub_8005C04();
        }
        else
        {
            *(v1 + 104) = result;
            if ( result == 41 )
            {
                result = PlaySoundEffect(369, v3, v4);
            }
            else if ( result == 158 )
            {
                result = *(v1 + 5);
                if ( result <= 1 )
                    result = PlaySoundEffect(*(&dword_80053E0 + result), &dword_80053E0, v4);
            }
        }
    }
    return result;
}


// 0x80053e4
int __fastcall sub_80053E4(int a1)
{
    int v1; // r10
    int result; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    _BYTE *v8; // r0
    int v9; // r2
    int v10; // r3
    int v11; // r5

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v3 )
    {
        chatbox_8040818();
        v4 = sub_80035A2(0x25u);
        sub_80341AA(v4, v5, v6, v7);
        v8 = *v1;
        *v8 = 8;
        sub_8005F40(v8, 8, v9, v10);
        sub_8005F6C();
        sub_80027C4();
        zeroFill_80024A2();
        sub_8003962();
        zeroFill_8003AB2();
        RandomizeExtraToolkitPointers();
        reloadCurNaviStatBoosts_813c3ac();
        v11 = *(v1 + oToolkit_GameStatePtr);
        result = SetRenderInfoLCDControl(-1249902528);
    }
    return result;
}


// 0x8005462
// () -> void
int sub_8005462()
{
    _BYTE *v0; // r5
    char v1; // zf
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int result; // r0

    if ( !byte_200DF28 )
    {
        byte_200DF28 = 1;
        sub_811EC50();
    }
    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    if ( byte_200DF21 != 4 || (IsPaletteFadeActive(), v1) )
    {
        ho_811ED1C();
        if ( byte_200DF21 == 4 )
        {
            result = engine_setScreeneffect(12, 16);
        }
        else
        {
            result = byte_200DF21;
            if ( byte_200DF21 == 8 )
            {
                *v0 = 4;
                v0[14] = 0;
                sub_809E04C();
                ClearEventFlagFromImmediate(7, 66);
                ClearEventFlagFromImmediate(7, 67);
                ClearEventFlagFromImmediate(9, 98);
                result = ClearEventFlagFromImmediate(9, 99);
            }
        }
    }
    else
    {
        copyMemory_8001850();
        zeroFill_e2009740();
        zeroFill_e200F3A0();
        sub_811F6C0(v2, v3, v4, v5);
        sub_8005524();
        TerminateGFXAnim(17);
        sub_8046664();
        result = chatbox_8040818();
    }
    return result;
}


// 0x8005524
_BYTE *sub_8005524()
{
    _BYTE **v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    _BYTE *result; // r0

    sub_80035A2(0x21u);
    v1 = sub_8004702();
    sub_8005F40(v1, v2, v3, v4);
    sub_8005F6C();
    sub_80027C4();
    zeroFill_80024A2();
    sub_8003962();
    zeroFill_8003AB2();
    RandomizeExtraToolkitPointers();
    reloadCurNaviStatBoosts_813c3ac();
    result = *v0;
    **v0 = 40;
    return result;
}


// 0x800555a
_BYTE *__fastcall sub_800555A(int a1)
{
    int v1; // r10
    _BYTE *result; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r5

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v3 )
    {
        chatbox_8040818();
        sub_80035A2(0x21u);
        v4 = sub_8004702();
        sub_8005F40(v4, v5, v6, v7);
        sub_8005F6C();
        sub_80027C4();
        zeroFill_80024A2();
        sub_8003962();
        zeroFill_8003AB2();
        RandomizeExtraToolkitPointers();
        reloadCurNaviStatBoosts_813c3ac();
        v8 = *(v1 + oToolkit_GameStatePtr);
        result = *v1;
        **v1 = 36;
    }
    return result;
}


// 0x80055ce
_BYTE *__fastcall sub_80055CE(int a1)
{
    int v1; // r10
    _BYTE *result; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r5

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v3 )
    {
        chatbox_8040818();
        sub_80035A2(0x21u);
        v4 = sub_8004702();
        sub_8005F40(v4, v5, v6, v7);
        sub_8005F6C();
        sub_80027C4();
        zeroFill_80024A2();
        sub_8003962();
        zeroFill_8003AB2();
        RandomizeExtraToolkitPointers();
        reloadCurNaviStatBoosts_813c3ac();
        v8 = *(v1 + oToolkit_GameStatePtr);
        result = *v1;
        **v1 = 68;
    }
    return result;
}


// 0x8005642
_BYTE *__fastcall sub_8005642(int a1)
{
    int v1; // r10
    _BYTE *result; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r5

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v3 )
    {
        chatbox_8040818();
        sub_80035A2(0x21u);
        v4 = sub_8004702();
        sub_8005F40(v4, v5, v6, v7);
        sub_8005F6C();
        sub_80027C4();
        zeroFill_80024A2();
        sub_8003962();
        zeroFill_8003AB2();
        RandomizeExtraToolkitPointers();
        reloadCurNaviStatBoosts_813c3ac();
        v8 = *(v1 + oToolkit_GameStatePtr);
        result = *v1;
        **v1 = 44;
    }
    return result;
}


// 0x80056b8
_BYTE *__fastcall sub_80056B8(int a1)
{
    int v1; // r10
    _BYTE *result; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r5

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v3 )
    {
        chatbox_8040818();
        sub_80035A2(0x21u);
        v4 = sub_8004702();
        sub_8005F40(v4, v5, v6, v7);
        sub_8005F6C();
        sub_80027C4();
        zeroFill_80024A2();
        sub_8003962();
        zeroFill_8003AB2();
        RandomizeExtraToolkitPointers();
        reloadCurNaviStatBoosts_813c3ac();
        v8 = *(v1 + oToolkit_GameStatePtr);
        result = *v1;
        **v1 = 52;
    }
    return result;
}


// 0x800572c
_BYTE *__fastcall sub_800572C(int a1)
{
    int v1; // r10
    _BYTE *result; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r5

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v3 )
    {
        chatbox_8040818();
        sub_80035A2(0x21u);
        v4 = sub_8004702();
        sub_8005F40(v4, v5, v6, v7);
        sub_8005F6C();
        sub_80027C4();
        zeroFill_80024A2();
        sub_8003962();
        zeroFill_8003AB2();
        RandomizeExtraToolkitPointers();
        reloadCurNaviStatBoosts_813c3ac();
        v8 = *(v1 + oToolkit_GameStatePtr);
        result = *v1;
        **v1 = 60;
    }
    return result;
}


// 0x80057a0
_BYTE *__fastcall sub_80057A0(int a1)
{
    int v1; // r10
    _BYTE *result; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r5

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v3 )
    {
        chatbox_8040818();
        sub_80035A2(0x21u);
        v4 = sub_8004702();
        sub_8005F40(v4, v5, v6, v7);
        sub_8005F6C();
        sub_80027C4();
        zeroFill_80024A2();
        sub_8003962();
        zeroFill_8003AB2();
        RandomizeExtraToolkitPointers();
        reloadCurNaviStatBoosts_813c3ac();
        v8 = *(v1 + oToolkit_GameStatePtr);
        result = *v1;
        **v1 = 64;
    }
    return result;
}


// 0x8005814
_BYTE *__fastcall sub_8005814(int a1)
{
    _BYTE *result; // r0
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        v3 = chatbox_8040818();
        sub_811F6E0(v3, v4, v5, v6);
        result = sub_8005524();
    }
    return result;
}


// 0x800585a
_BYTE *__fastcall sub_800585A(int a1)
{
    int v1; // r10
    _BYTE *result; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r5

    sub_80339CC();
    sub_80039AA();
    sub_8003AFA();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    sub_8004934();
    sub_80024AE();
    result = IsPaletteFadeActive();
    if ( !v3 )
    {
        chatbox_8040818();
        sub_80035A2(0x21u);
        v4 = sub_8004702();
        sub_8005F40(v4, v5, v6, v7);
        sub_8005F6C();
        sub_80027C4();
        zeroFill_80024A2();
        sub_8003962();
        zeroFill_8003AB2();
        RandomizeExtraToolkitPointers();
        reloadCurNaviStatBoosts_813c3ac();
        v8 = *(v1 + oToolkit_GameStatePtr);
        result = *v1;
        **v1 = 80;
    }
    return result;
}


// 0x80058d0
void sub_80058D0()
{
    int v0; // r10
    int v1; // r5
    char v2; // zf
    signed int v3; // r1
    signed int v4; // r4
    int v5; // r2

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( *v1 == 4 )
    {
        sub_809E462();
        if ( v2 )
        {
            sub_8005F28();
            if ( v2 )
            {
                sub_811EBE0();
                if ( v2 )
                {
                    IsPaletteFadeActive();
                    if ( !v2 )
                    {
                        s_2011C50_ptr_1C_isNull();
                        if ( v2 )
                        {
                            checkCoordinateTrigger_8031a7a(*(v1 + oGameState_OverworldPlayerObjectPtr) + 28);
                            v4 = v3;
                            if ( v3 >= 1 && v3 <= 15 )
                            {
                                TestEventFlag(&loc_16F0 + v3);
                                if ( v2 )
                                {
                                    v5 = *(v0 + oToolkit_Unk2011bb0_Ptr);
                                    *(v5 + 16) = 1;
                                    *(v5 + 17) = v4;
                                    *(v5 + 18) = 0;
                                    (*(&off_8005948 + *(*(v5 + 20) + 16 * (v4 - 1) + 2)))();
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


// 0x800596c
signed int sub_800596C()
{
    _BYTE *v0; // r5
    signed int result; // r0

    SetEventFlagFromImmediate(23, 3);
    SetEventFlagFromImmediate(23, 56);
    engine_setScreeneffect(12, 16);
    sub_8035738();
    result = 16;
    *v0 = 16;
    return result;
}


// 0x8005990
signed int sub_8005990()
{
    _BYTE *v0; // r5
    signed int result; // r0

    SetEventFlagFromImmediate(23, 3);
    SetEventFlagFromImmediate(23, 56);
    engine_setScreeneffect(4, 16);
    sub_8035738();
    result = 16;
    *v0 = 16;
    return result;
}


// 0x80059b4
void *sub_80059B4()
{
    int v0; // r2
    int v1; // r3

    ClearEventFlagFromImmediate(23, 3);
    SetEventFlagFromImmediate(23, 56);
    return StartCutscene(CutsceneScript_8098a02, 0, v0, v1);
}


// 0x80059d0
void *sub_80059D0()
{
    int v0; // r2
    int v1; // r3

    SetEventFlagFromImmediate(23, 3);
    SetEventFlagFromImmediate(23, 56);
    return StartCutscene(CutsceneScript_8098a78, 0, v0, v1);
}


// 0x80059ec
void *sub_80059EC()
{
    int v0; // r2
    int v1; // r3

    ClearEventFlagFromImmediate(23, 3);
    return StartCutscene(CutsceneScript_8098a2e, 0, v0, v1);
}


// 0x8005a00
void *__fastcall sub_8005A00(int a1, int a2, int a3, int a4)
{
    return StartCutscene(CutsceneScript_809b5ad, 0, a3, a4);
}


// 0x8005a0c
void *sub_8005A0C()
{
    int v0; // r2
    int v1; // r3

    ClearEventFlagFromImmediate(23, 3);
    SetEventFlagFromImmediate(23, 56);
    return StartCutscene(CutsceneScript_8098b1c, 0, v0, v1);
}


// 0x8005a28
signed int sub_8005A28()
{
    int v0; // r5
    signed int result; // r0

    SetEventFlagFromImmediate(23, 3);
    SetEventFlagFromImmediate(23, 56);
    engine_setScreeneffect(12, 16);
    sub_8035738();
    *(v0 + 104) = 60;
    result = 16;
    *v0 = 16;
    return result;
}


// 0x8005a50
signed int sub_8005A50()
{
    int v0; // r5
    signed int result; // r0

    SetEventFlagFromImmediate(23, 3);
    SetEventFlagFromImmediate(23, 56);
    engine_setScreeneffect(12, 16);
    sub_8035738();
    *(v0 + 104) = 160;
    result = 16;
    *v0 = 16;
    return result;
}


// 0x8005a8c
void sub_8005A8C()
{
    int v0; // r10
    char v1; // zf
    int v2; // r0

    if ( **(v0 + oToolkit_GameStatePtr) == 4 )
    {
        TestEventFlagFromImmediate(23, 23);
        if ( v1 )
        {
            sub_809E462();
            if ( v1 )
            {
                TestEventFlagFromImmediate(23, 0);
                if ( v1 )
                {
                    TestEventFlagFromImmediate(23, 62);
                    if ( v1 )
                    {
                        sub_8005F28();
                        if ( v1 )
                        {
                            sub_811EBE0();
                            if ( v1 )
                            {
                                IsPaletteFadeActive();
                                if ( !v1 )
                                {
                                    s_2011C50_ptr_1C_isNull();
                                    if ( v1 )
                                    {
                                        chatbox_mask_eFlags2009F38(128);
                                        if ( v1 )
                                        {
                                            v2 = sub_80AA4C0();
                                            if ( !v1 )
                                            {
                                                gameState_8005BC8(v2, 1);
                                                engine_setScreeneffect(44, 16);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


// 0x8005af4
void sub_8005AF4()
{
    int v0; // r10
    _BYTE *v1; // r5
    char v2; // zf
    int v3; // r1
    int v4; // r2
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( *v1 == 4 )
    {
        TestEventFlagFromImmediate(23, 23);
        if ( v2 )
        {
            TestEventFlagFromImmediate(23, 61);
            if ( v2 )
            {
                sub_809E462();
                if ( v2 )
                {
                    sub_8005F28();
                    if ( v2 )
                    {
                        sub_811EBE0();
                        if ( v2 )
                        {
                            IsPaletteFadeActive();
                            if ( v2 )
                                return;
                            s_2011C50_ptr_1C_isNull();
                            if ( !v2 )
                                return;
                            chatbox_mask_eFlags2009F38(128);
                            if ( !v2 )
                                return;
                            JoypadKeyPressed();
                            if ( v2 )
                                return;
                            TestEventFlagFromImmediate(23, 7);
                            if ( !v2 )
                                return;
                            PlaySoundEffect(121, v3, v4);
                            updatePlayerGameState_800107A();
                            sub_811EC10(v5, v6, v7, v8);
                            sub_8003962();
                            zeroFill_8003AB2();
                        }
                        *v1 = 24;
                        return;
                    }
                }
            }
        }
    }
}


// 0x8005b6a
void sub_8005B6A()
{
    ;
}


// 0x8005b6e
int __fastcall sub_8005B6E(int a1, int a2, int a3, int a4, int a5, int (__fastcall *a6)(int, int))
{
    int v6; // r10
    int v7; // r0
    char v8; // zf
    unsigned __int16 *v9; // r0

    v7 = **(v6 + oToolkit_GameStatePtr);
    if ( v7 == 4 )
    {
        v7 = TestEventFlagFromImmediate(23, 23);
        if ( v8 )
        {
            v7 = sub_809E462();
            if ( v8 )
            {
                v7 = sub_8005F28();
                if ( v8 )
                {
                    sub_811EBE0();
                    if ( v8 )
                    {
                        v7 = IsPaletteFadeActive();
                        if ( !v8 )
                        {
                            v7 = s_2011C50_ptr_1C_isNull();
                            if ( v8 )
                            {
                                v7 = chatbox_mask_eFlags2009F38(128);
                                if ( v8 )
                                {
                                    v7 = TestEventFlagFromImmediate(23, 57);
                                    if ( v8 )
                                    {
                                        v9 = *(v6 + oToolkit_JoypadPtr);
                                        a2 = *v9;
                                        v7 = v9[1];
                                        if ( v7 & 4 )
                                            v7 = sub_8005E86();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return a6(v7, a2);
}


// 0x8005bc8
// (BattleSettings *r0Bt, bool r1) -> void
int __fastcall gameState_8005BC8(int a1, int a2)
{
    int v2; // r10
    int v3; // r7
    int v4; // r5
    int v5; // r6
    __int16 v6; // r0
    int v7; // r2
    int v8; // r1
    int v9; // r1
    int v10; // r2

    v3 = a2;
    v4 = *(v2 + oToolkit_GameStatePtr);
    v5 = *(v2 + oToolkit_Unk2001c04_Ptr);
    *(v4 + oGameState_CurBattleDataPtr) = a1;
    v6 = sub_802D254(a1);
    v8 = 0x4000;
    if ( v6 & 0x4000 )
        *(v5 + 28) = *(v4 + oGameState_CurBattleDataPtr);
    *(v4 + oGameState_LastMapGroup) = *(v4 + oGameState_MapGroup);
    if ( v3 )
        updatePlayerGameState_800107A();
    *v4 = 8;
    musicGameState_8000784(8, v8, v7);
    return PlaySoundEffect(120, v9, v10);
}


// 0x8005c04
int sub_8005C04()
{
    int *v0; // r10
    int v1; // r7
    int v2; // r5
    char v3; // zf
    oGameState v4; // r6
    int v5; // r0
    int v6; // r2
    int v7; // r3
    int v8; // r4
    _DWORD *v9; // r6
    int v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    int v14; // r4
    int v15; // r6
    int v16; // r2
    int v17; // r7
    int result; // r0

    *(v0[0xF] + oGameState_Unk_20) = 0;
    sub_80035A2(0x25u);
    CopyWords(*(v0[5] + 20) + 16 * (*(v0[5] + 17) - 1), v0[5], 0x10u);
    map_8001708(*(v0[0xF] + oGameState_MapGroup), *(v0[0xF] + oGameState_MapNumber));
    SetRenderInfoLCDControl(&byte_40);
    v1 = v0[5];
    v2 = v0[0xF];
    TestEventFlagFromImmediate(23, 27);
    if ( v3 && (*v1 ^ *(v2 + oGameState_MapGroup)) & 0x80 )
    {
        if ( *v1 & 0x80 )
            v4 = oGameState_SavedRealWorldCoords_FacingDirection_MapId;
        else
            v4 = oGameState_SavedInternetCoords_FacingDirection_MapId;
        v5 = *(v2 + oGameState_OverworldPlayerObjectPtr);
        v6 = *(v5 + 32);
        v7 = *(v5 + 36);
        v8 = *(v5 + 16);
        v9 = (v4 + v2);
        *v9 = *(v5 + 28);
        v9[1] = v6;
        v9[2] = v7;
        v9[3] = v8;
        v9[4] = (*(v2 + oGameState_MapNumber) << 8) | *(v2 + oGameState_MapGroup);
    }
    ClearEventFlagFromImmediate(23, 27);
    v10 = *(v1 + 18);
    if ( v10 == 1 )
    {
        v11 = *(v2 + oGameState_SavedRealWorldCoords_FacingDirection_MapId);
        v12 = *(v2 + oGameState_SavedRealWorldY);
        v13 = *(v2 + oGameState_SavedRealWorldZ);
        v14 = *(v2 + oGameState_SavedRealWorldFacingDirection);
        v15 = *(v2 + oGameState_SavedRealWorldMapId);
    }
    else if ( v10 == 2 )
    {
        v11 = *(v2 + oGameState_SavedInternetCoords_FacingDirection_MapId);
        v12 = *(v2 + (oGameState_SavedInternetCoords_FacingDirection_MapId|oGameState_MapGroup));
        v13 = *(v2 + (oGameState_SavedRealWorldFacingDirection|oGameState_Unk_10));
        v14 = *(v2 + (oGameState_SavedRealWorldMapId|oGameState_Unk_10));
        v15 = *(v2 + (oGameState_SavedInternetCoords_FacingDirection_MapId|oGameState_Unk_10));
    }
    else
    {
        *(v1 + 16) = 2;
        v11 = *(v1 + 4);
        v12 = *(v1 + 8);
        v13 = *(v1 + 12);
        v14 = *(v1 + 3);
        LOWORD(v15) = *v1;
    }
    *(v2 + oGameState_PlayerX) = v11;
    *(v2 + oGameState_PlayerY) = v12;
    *(v2 + oGameState_PlayerZ) = v13;
    *(v2 + oGameState_Unk_30) = v14;
    *v2 = 0;
    *(v2 + oGameState_LastMapNumber) = *(v2 + oGameState_MapNumber);
    v16 = *(v2 + oGameState_LastMapGroup);
    *(v2 + oGameState_LastMapGroup) = *(v2 + oGameState_MapGroup);
    *(v2 + oGameState_MapGroup) = v15;
    v17 = v0[oToolkit_S2011c50_Ptr];
    result = 0;
    *(v17 + 18) = 0;
    *(v17 + 20) = 0;
    return result;
}


// 0x8005ce8
signed int __fastcall subsystem_launchBBS(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r5
    signed int result; // r0

    reqBBS_813E07C(a1, a2, a3, a4);
    v5 = *(v4 + oToolkit_GameStatePtr);
    *(v5 + oGameState_LastMapGroup) = *(v5 + oGameState_MapGroup);
    updatePlayerGameState_800107A();
    engine_setScreeneffect(12, 16);
    result = 28;
    *v5 = 28;
    return result;
}


// 0x8005d08
signed int __fastcall subsystem_launchReqBBS(int a1)
{
    int v1; // r10
    int v2; // r5
    signed int result; // r0

    reqBBS_init_s_2005780(a1);
    v2 = *(v1 + oToolkit_GameStatePtr);
    *(v2 + oGameState_LastMapGroup) = *(v2 + oGameState_MapGroup);
    updatePlayerGameState_800107A();
    engine_setScreeneffect(12, 16);
    result = 48;
    *v2 = 48;
    return result;
}


// 0x8005d28
int __fastcall subsystem_launchShop(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r5
    int result; // r0

    sub_8046CC8(a1, a2, a3, a4);
    v5 = *(v4 + oToolkit_GameStatePtr);
    *(v5 + oGameState_LastMapGroup) = *(v5 + oGameState_MapGroup);
    updatePlayerGameState_800107A();
    result = engine_setScreeneffect(12, 16);
    *v5 = 32;
    return result;
}


// 0x8005d48
signed int __fastcall subsystem_launchChipTrader(int a1)
{
    int v1; // r10
    int v2; // r4
    __int64 v3; // r0
    int v4; // r2
    int v5; // r3
    int v7; // r5
    int v8; // r1

    v2 = a1;
    v3 = sub_8120A38();
    if ( v3 + HIDWORD(v3) + v5 < v2 )
        return 1;
    sub_804A2CC(v2, SHIDWORD(v3), v4, v5);
    v7 = *(v1 + oToolkit_GameStatePtr);
    v8 = *(v7 + oGameState_OverworldPlayerObjectPtr);
    *(v7 + oGameState_PlayerX) = *(v8 + 28);
    *(v7 + oGameState_PlayerY) = *(v8 + 32);
    *(v7 + oGameState_PlayerZ) = *(v8 + 36);
    *(v7 + oGameState_Unk_30) = *(v8 + 16);
    *v7 = 36;
    engine_setScreeneffect(12, 16);
    return 0;
}


// 0x8005d88
int sub_8005D88()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_20) = 0;
    v1 = sub_80035A2(0x25u);
    sub_8005F40(v1, v2, v3, v4);
    sub_8005F6C();
    sub_80027C4();
    zeroFill_80024A2();
    sub_8003962();
    zeroFill_8003AB2();
    sub_80385F0(v5, v6, v7, v8);
    RandomizeExtraToolkitPointers();
    return reloadCurNaviStatBoosts_813c3ac();
}


// 0x8005dbe
int __noreturn sub_8005DBE()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_20) = 0;
    v1 = sub_80035A2(0x25u);
    sub_8005F40(v1, v2, v3, v4);
    sub_8005F6C();
    sub_80027C4();
    zeroFill_80024A2();
    sub_8003962();
    zeroFill_8003AB2();
    sub_803FB28(v5, v6, v7, v8);
    return reloadCurNaviStatBoosts_813c3ac();
}


// 0x8005df0
int __noreturn dead_8005DF0()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_20) = 0;
    v1 = sub_80035A2(0x25u);
    sub_8005F40(v1, v2, v3, v4);
    sub_8005F6C();
    sub_80027C4();
    zeroFill_80024A2();
    sub_8003962();
    zeroFill_8003AB2();
    sub_8138294();
    return reloadCurNaviStatBoosts_813c3ac();
}


// 0x8005e22
int __noreturn dead_8005E22()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_20) = 0;
    v1 = sub_80035A2(0x25u);
    sub_8005F40(v1, v2, v3, v4);
    sub_8005F6C();
    sub_80027C4();
    zeroFill_80024A2();
    sub_8003962();
    zeroFill_8003AB2();
    sub_8038A9C();
    return reloadCurNaviStatBoosts_813c3ac();
}


// 0x8005e54
int __noreturn dead_8005E54()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_20) = 0;
    v1 = sub_80035A2(0x25u);
    sub_8005F40(v1, v2, v3, v4);
    sub_8005F6C();
    sub_80027C4();
    zeroFill_80024A2();
    sub_8003962();
    zeroFill_8003AB2();
    (loc_803D1AC)();
    return reloadCurNaviStatBoosts_813c3ac();
}


// 0x8005e86
signed int sub_8005E86()
{
    int v0; // r10
    int v1; // r5
    signed int result; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    *(v1 + oGameState_LastMapGroup) = *(v1 + oGameState_MapGroup);
    updatePlayerGameState_800107A();
    engine_setScreeneffect(12, 16);
    result = 40;
    *v1 = 40;
    return result;
}


// 0x8005ea2
int sub_8005EA2()
{
    int v0; // r10
    int v1; // r5
    int result; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    *(v1 + oGameState_LastMapGroup) = *(v1 + oGameState_MapGroup);
    updatePlayerGameState_800107A();
    result = engine_setScreeneffect(12, 16);
    *v1 = 44;
    return result;
}


// 0x8005ec0
int __fastcall subsystem_launchMail(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r5
    int v6; // r1

    sub_8127990(a1, a2, a3, a4);
    v5 = *(v4 + oToolkit_GameStatePtr);
    v6 = *(v5 + oGameState_OverworldPlayerObjectPtr);
    *(v5 + oGameState_PlayerX) = *(v6 + 28);
    *(v5 + oGameState_PlayerY) = *(v6 + 32);
    *(v5 + oGameState_PlayerZ) = *(v6 + 36);
    *(v5 + oGameState_Unk_30) = *(v6 + 16);
    *v5 = 52;
    engine_setScreeneffect(12, 16);
    return 0;
}


// 0x8005eec
int __fastcall sub_8005EEC(int result, char a2, char a3)
{
    int v3; // r10
    int v4; // r4

    v4 = *(v3 + oToolkit_Unk2011bb0_Ptr);
    *(v4 + 16) = 1;
    *(v4 + 17) = a2 + 1;
    *(v4 + 20) = result;
    *(v4 + 18) = a3;
    return result;
}


// 0x8005f00
void __fastcall sub_8005F00(int a1, char a2, char a3)
{
    int v3; // r10

    sub_8005EEC(a1, a2, a3);
    **(v3 + oToolkit_GameStatePtr) = 16;
    sub_8035738();
}


// 0x8005f14
void __fastcall sub_8005F14(int a1, char a2, char a3)
{
    int v3; // r10

    sub_8005EEC(a1, a2, a3);
    **(v3 + oToolkit_GameStatePtr) = 20;
    sub_8035738();
}


// 0x8005f28
int sub_8005F28()
{
    int v0; // r10
    int result; // r0
    int v2; // r1

    result = *(v0 + oToolkit_Unk2011bb0_Ptr);
    v2 = *(result + 16);
    return result;
}


// 0x8005f32
int sub_8005F32()
{
    int v0; // r10
    int v1; // r3
    int result; // r0
    int v3; // r1
    int v4; // r2

    v1 = *(v0 + oToolkit_Unk2011bb0_Ptr);
    result = *(v1 + 20);
    v3 = *(v1 + 17) - 1;
    v4 = *(v1 + 18);
    return result;
}


// 0x8005f40
void __fastcall sub_8005F40(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3

    zeroFillVRAM();
    ZeroFill_byte_3001960(v4, v5, v6, v7);
    SetDummyBGScrollCallbacks();
    zeroFill_e20094C0();
    sub_80023A8(v8, v9, v10, v11);
    zeroFill_e2009740();
    zeroFill_e200F3A0();
    zeroFill_80024A2();
    renderInfo_8001788();
    renderInfo_80017A0();
}


// 0x8005f6c
void sub_8005F6C()
{
    sub_802FDB0();
    cleareMemory_802FF2C();
}


// 0x8005f78
void sub_8005F78()
{
    (loc_802FDB4)();
    cleareMemory_802FF2C();
}


// 0x8005f84
_BYTE *sub_8005F84()
{
    int v0; // r10
    _BYTE *result; // r0

    SetRenderInfoLCDControl(&byte_40);
    sub_809F68C();
    chatbox_8040818();
    chatbox_clear_eFlags2009F38(64);
    **v0 = 4;
    result = *(v0 + oToolkit_GameStatePtr);
    *result = 0;
    result[22] = 8;
    return result;
}


// 0x8006270
// (int a1, int a2) -> void
int __fastcall engine_setScreeneffect(int result, int a2)
{
    int v2; // ST00_4
    int v3; // ST04_4
    signed __int16 v4; // r1
    void **v5; // r2

    if ( result != 255 )
    {
        v2 = result;
        v3 = a2;
        sub_8006330(0);
        v4 = v3;
        byte_200A441 = v2;
        v5 = &off_8006040 + v2;
        off_200A450 = *v5;
        off_200A454 = v5[1];
        word_200A458 = *(v5 + 12);
        word_200A45C = *(v5 + 13);
        word_200A448 = *(v5 + 14);
        word_200A44A = 16 * *(v5 + 15);
        byte_200A440[0] = 1;
        byte_200A443 = 1;
        result = 0;
        byte_200A442 = 0;
        if ( v3 == 255 )
            v4 = 256;
        word_200A444 = v4;
    }
    return result;
}


// 0x80062c8
int sub_80062C8()
{
    return byte_200A441;
}


// 0x80062d0
void sub_80062D0()
{
    JUMPOUT(&loc_80062DA);
}


// 0x80062d6
void sub_80062D6()
{
    sub_8006330(32);
    ZeroFillByWord(&byte_200A460, 32);
}


// 0x80062ec
void sub_80062EC()
{
    sub_80062D0();
    sub_80062D6();
}


// 0x80062f8
// () -> zf
int IsPaletteFadeActive()
{
    return byte_200A443;
}


// 0x800630a
int subsystem_triggerTransition_800630A()
{
    char *v0; // r5
    signed int v1; // r4
    int result; // r0

    v0 = byte_200A440;
    v1 = 0;
    do
    {
        result = *v0;
        if ( result == 1 )
            result = (*(&off_8005FB4 + v0[1]))();
        v0 += 32;
        ++v1;
    }
    while ( v1 < 2 );
    return result;
}


// 0x8006330
int __fastcall sub_8006330(int a1)
{
    char *v1; // r5

    v1 = &byte_200A440[a1];
    sub_800634C(a1);
    Terminate_ePalette20097a0_Transform(v1[12] + 18);
    return Terminate_ePalette20097a0_Transform(v1[12] + 19);
}


// 0x800634c
int __fastcall sub_800634C(unsigned int a1)
{
    char *v1; // r5
    int result; // r0

    v1 = &byte_200A440[a1];
    v1[12] = a1 >> 4;
    v1[3] = 0;
    *v1 = 0;
    result = 0;
    v1[2] = 0;
    v1[13] = 0;
    return result;
}


// 0x8006366
int sub_8006366()
{
    int v0; // r5
    unsigned int v1; // r1
    int v2; // r2
    int v3; // r3
    unsigned __int8 v4; // vf
    int v5; // r6
    int v6; // r4
    int v7; // r4

    v1 = *(v0 + 6);
    v2 = *(v0 + 4);
    v3 = *(v0 + 2);
    *(v0 + 2) = 1;
    if ( v3 )
    {
        v4 = __OFSUB__(v1, v2);
        v1 -= v2;
        if ( ((v1 & 0x80000000) != 0) ^ v4 )
            v1 = 0;
    }
    *(v0 + 6) = v1;
    if ( v1 <= *(v0 + 10) )
        return sub_8006330(v0 - byte_200A440);
    v5 = (v1 >> 4) | 32 * (v1 >> 4) | (v1 >> 4 << 10);
    v6 = *(v0 + 16);
    sub_8002378(*(v0 + 8), v5, *(v0 + 24), *(v0 + 12) + 18);
    v7 = *(v0 + 20);
    return sub_8002378(*(v0 + 8), v5, *(v0 + 28), *(v0 + 12) + 19);
}


// 0x80063c0
int __fastcall sub_80063C0(int a1)
{
    int v1; // r5
    unsigned int v2; // r1
    int v3; // r2
    int v4; // r3
    unsigned __int8 v5; // vf
    int v6; // r6
    int v7; // r4
    int v8; // r4

    v2 = *(v1 + 6);
    v3 = *(v1 + 4);
    v4 = *(v1 + 2);
    *(v1 + 2) = 1;
    if ( v4 )
    {
        v5 = __OFSUB__(v2, v3);
        v2 -= v3;
        if ( ((v2 & 0x80000000) != 0) ^ v5 )
            v2 = 0;
    }
    *(v1 + 6) = v2;
    if ( v2 <= *(v1 + 10) )
        return sub_8006444(a1, v2);
    v6 = (v2 >> 4) | 32 * (v2 >> 4) | (v2 >> 4 << 10);
    v7 = *(v1 + 16);
    sub_8002378(*(v1 + 8), v6, *(v1 + 24), *(v1 + 12) + 18);
    v8 = *(v1 + 20);
    sub_8002378(*(v1 + 8), v6, *(v1 + 28), *(v1 + 12) + 19);
    return sub_8006414();
}


// 0x8006414
int sub_8006414()
{
    int v0; // r5
    int v1; // r6
    int v2; // r4
    int v3; // r4

    v2 = *(v0 + 16) + 32 * *(v0 + 24);
    sub_8002378(*(v0 + 8), v1, 2, *(v0 + 12) + 20);
    v3 = *(v0 + 20) + 32 * *(v0 + 28);
    return sub_8002378(*(v0 + 8), v1, 4, *(v0 + 12) + 21);
}


// 0x8006444
int __fastcall sub_8006444(int a1, signed int a2)
{
    int v2; // r5

    if ( a2 >= 16 )
        return sub_8006414();
    sub_800634C(v2 - byte_200A440);
    engine_setScreeneffect(100, 255);
    return sub_800647C();
}


// 0x800647c
int sub_800647C()
{
    int v0; // r5
    unsigned int v1; // r1
    signed int v2; // r2
    int v3; // r6
    int v4; // r4
    int v5; // r4

    v1 = *(v0 + 6) + *(v0 + 4);
    v2 = *(v0 + 10);
    if ( v1 >= v2 )
    {
        *(v0 + 3) = 0;
        v1 = v2;
    }
    *(v0 + 6) = v1;
    v3 = (v1 >> 4) | 32 * (v1 >> 4) | (v1 >> 4 << 10);
    v4 = *(v0 + 16);
    sub_8002378(*(v0 + 8), v3, *(v0 + 24), *(v0 + 12) + 18);
    v5 = *(v0 + 20);
    return sub_8002378(*(v0 + 8), v3, *(v0 + 28), *(v0 + 12) + 19);
}


// 0x80064be
_WORD *sub_80064BE()
{
    int v0; // r5
    unsigned int v1; // r1
    signed int v2; // r7
    signed int v3; // r2
    int v4; // r6
    int v5; // r4
    int v6; // r4

    v1 = *(v0 + 6) + *(v0 + 4);
    v2 = 0;
    v3 = *(v0 + 10);
    if ( v1 >= v3 )
    {
        *(v0 + 3) = 0;
        v2 = 4;
        v1 = v3;
    }
    *(v0 + 6) = v1;
    v4 = (v1 >> 4) | 32 * (v1 >> 4) | (v1 >> 4 << 10);
    v5 = *(v0 + 16);
    sub_8002378(*(v0 + 8), v4, *(v0 + 24), *(v0 + 12) + 18);
    v6 = *(v0 + 20);
    sub_8002378(*(v0 + 8), v4, *(v0 + 28), *(v0 + 12) + 19);
    return (*(&off_8006510 + v2))();
}


// 0x8006518
_WORD *sub_8006518()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r4
    int v4; // r0
    _WORD *result; // r0

    v2 = *(v0 + 16);
    sub_8002378(0, *&byte_80065BC[2 * *(v0 + 13)], 16, 20);
    v3 = *(v0 + 20);
    sub_8002378(0, *&byte_80065BC[2 * *(v0 + 13)], 16, 21);
    dword_20096D0 = 64;
    v4 = *(v0 + 13) + 1;
    if ( v4 < 16 )
        *(v0 + 13) = v4;
    result = *(v1 + oToolkit_RenderInfoPtr);
    result[3] |= 0x40u;
    result[4] |= 0x40u;
    result[5] |= 0x40u;
    result[1] = (*(v0 + 6) >> 4) | (*(v0 + 6) >> 4 << 8) | (*(v0 + 6) >> 4 << 12);
    return result;
}


// 0x8006580
_WORD *sub_8006580()
{
    int v0; // r5
    int v1; // r10
    _WORD *result; // r0

    Terminate_ePalette20097a0_Transform(20);
    Terminate_ePalette20097a0_Transform(21);
    dword_20096D0 = 0;
    *(v0 + 13) = 0;
    result = *(v1 + oToolkit_RenderInfoPtr);
    result[3] &= 0xFFBFu;
    result[4] &= 0xFFBFu;
    result[5] &= 0xFFBFu;
    result[1] = 0;
    return result;
}


// 0x80068e0
void __fastcall sub_80068E0(int a1, int a2, unsigned int a3)
{
    CopyWords(a1, a2, a3);
}


// 0x80068e8
void sub_80068E8()
{
    JUMPOUT(&loc_80068F2);
}


// 0x80068ec
signed int __fastcall sub_80068EC(int a1, int a2, char a3, int a4)
{
    signed int result; // r0

    byte_20081B1 = a3;
    word_20081B2 = HIWORD(a4);
    dword_20081B4 = a1;
    dword_20081B8 = a2;
    dword_20081BC = &unk_2008E80;
    dword_20081C0 = &dword_500;
    result = 1;
    byte_20081B0 = 1;
    return result;
}


// 0x8006910
signed int sub_8006910()
{
    signed int result; // r0

    result = 128;
    byte_20081B0 = -128;
    return result;
}


// 0x8006920
signed int __fastcall sub_8006920(int *a1, int a2, int a3, int a4)
{
    int *v4; // r4

    v4 = a1;
    ZeroFillByWord(&unk_20096A0, 48);
    *&byte_20096A3[1] = 0;
    dword_20096AC = 0x20000;
    dword_20096A8 = *v4;
    dword_20096B0 = v4[1];
    dword_20096B4 = v4[2];
    dword_20096B8 = v4[3];
    dword_20096BC = v4[4];
    dword_20096C0 = v4[5];
    dword_20096C4 = v4[6];
    dword_20096C8 = v4[7];
    dword_20096CC = v4[8];
    *byte_20096A3 = v4[9];
    sub_8006B94(&unk_2008980, 1280, 160);
    return sub_80068EC(&unk_2008980, &Window0HorizontalDimensions, 4, -1570766848);
}


// 0x8006990
BOOL sub_8006990()
{
    int v0; // r10
    int v1; // r6
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // ST00_4
    int v6; // ST08_4
    int v7; // ST04_4
    __int16 v8; // r0
    _WORD *v9; // r6
    _BYTE *v10; // r6
    unsigned int v11; // r1
    int v12; // r1

    v1 = *(v0 + oToolkit_Unk200f3a0_Ptr);
    *(v1 + 8) = 63;
    *(v1 + 10) = 23;
    v2 = sub_8003694(&dword_20096C4);
    if ( v4 && *&byte_20096A3[1] - 255 < 0 )
    {
        v5 = v2;
        v7 = v3;
        v6 = *&byte_20096A3[1];
        sub_8006A6C(v2, v3, *&byte_20096A3[1]);
        v8 = sub_8006B3A(v5, v7, v6);
        v9 = *(v0 + oToolkit_Unk200f3a0_Ptr);
        *v9 = v8;
        v9[2] = 1;
    }
    v10 = *(v0 + oToolkit_Unk2009740_Ptr);
    *v10 = 72;
    v10[1] = 55;
    v10[3] = 16;
    v10[2] = BYTE2(dword_20096AC);
    v11 = dword_20096A8 + dword_20096B4;
    if ( dword_20096A8 + dword_20096B4 <= dword_20096BC )
        dword_20096A8 += dword_20096B4;
    if ( (*&byte_20096A3[1] + (v11 >> 16)) > byte_20096A3[0] )
        *&byte_20096A3[1] = byte_20096A3[0];
    else
        *&byte_20096A3[1] += v11 >> 16;
    v12 = dword_20096B0 + dword_20096B8;
    if ( dword_20096B0 + dword_20096B8 <= dword_20096C0 )
        dword_20096B0 += dword_20096B8;
    if ( dword_20096AC + v12 > byte_20096A3[0] << 16 )
        dword_20096AC = byte_20096A3[0] << 16;
    else
        dword_20096AC += v12;
    if ( (dword_20096AC >> 16) >= 16 )
        dword_20096AC = 0x100000;
    return *&byte_20096A3[1] >= 255;
}


// 0x8006a5c
signed int sub_8006A5C()
{
    return sub_8006910();
}


// 0x8006a6c
int __fastcall sub_8006A6C(int a1, int a2, int a3)
{
    int v3; // r12
    int v4; // r8
    int v5; // r9
    int v6; // r7
    int v7; // r6
    int result; // r0
    int v9; // r0
    int v14; // r4
    int v15; // r3
    int v16; // r0
    int v17; // r1
    int v18; // r1
    int v19; // r7
    int v20; // [sp+0h] [bp-14h]
    int v21; // [sp+4h] [bp-10h]

    v20 = a2;
    v21 = a3;
    v3 = a1;
    v4 = 8 * a3 - 8;
    v5 = a3;
    v6 = a2 - a3;
    v7 = 8 * a2;
    if ( (a2 - a3) << 16 <= 0 )
    {
        while ( 1 )
        {
LABEL_5:
            v9 = v21 * v21 - v5 * v5;
            __asm { SVC         8 }
            if ( (v9 + v3) & 0x8000 )
                goto LABEL_23;
            v14 = (v9 + v3) & 0xFFFF;
            if ( v14 - 240 >= 0 )
                v14 = 240;
            if ( (v3 - v9) & 0x8000 )
            {
                v15 = 0;
                goto LABEL_12;
            }
            v15 = (v3 - v9) & 0xFFFF;
            if ( v15 - 240 >= 0 )
            {
LABEL_23:
                v14 = 0;
                v15 = 255;
            }
LABEL_12:
            v16 = (v15 << 8) | v14;
            if ( !(v6 & 0x1000) )
            {
                v17 = 8 * v6 & 0xFFFF;
                if ( v17 - 1280 < 0 )
                    *(&unk_2008980 + v17) = v16;
            }
            if ( !((v7 + v4) & 0x8000) )
            {
                v18 = (v7 + v4) & 0xFFFF;
                if ( v18 - 1280 < 0 )
                    *(&unk_2008980 + v18) = v16;
            }
            v4 -= 8;
            result = v5-- - 1;
            if ( ++v6 >= v20 )
            {
                v19 = (v6 + v21) & 0xFFFF;
                if ( v19 - 160 < 0 )
                    result = sub_8006B94(&unk_2008980 + 8 * v19, 8 * (160 - v19), 160);
                return result;
            }
        }
    }
    if ( v6 - 160 < 0 )
    {
        sub_8006B94(&unk_2008980, 8 * v6, a2 - a3);
        goto LABEL_5;
    }
    return sub_8006B94(&unk_2008980, 1280, 160);
}


// 0x8006b3a
int __fastcall sub_8006B3A(int a1, int a2, int a3)
{
    int v3; // r12
    int v4; // r0
    int v9; // r4
    int v10; // r3

    v3 = a1;
    if ( a2 - a3 < 0 )
    {
        v4 = a3 * a3 - (a3 - ~(a2 - a3)) * (a3 - ~(a2 - a3));
        __asm { SVC         8 }
        if ( !((v4 + v3) & 0x8000) && !__CFSHL__(v4 + v3, 16) )
        {
            v9 = (v4 + v3) & 0xFFFF;
            if ( v9 - 240 >= 0 )
                v9 = 240;
            if ( (v3 - v4) & 0x8000 )
            {
                v10 = 0;
                return (v10 << 8) | v9;
            }
            v10 = (v3 - v4) & 0xFFFF;
            if ( v10 - 240 < 0 )
                return (v10 << 8) | v9;
        }
        v9 = 0;
        v10 = 255;
        return (v10 << 8) | v9;
    }
    return 0;
}


// 0x8006b94
int __fastcall sub_8006B94(int result, int a2, int a3)
{
    unsigned int v3; // r2
    int v4; // r1
    int v5; // r1

    v3 = (a3 << 8) | (a3 + 1) | 0xFFFF0000;
    v4 = a2 - 4;
    do
    {
        *(result + v4) = v3;
        v5 = v4 - 4;
        *(result + v5) = -256;
        v3 -= &byte_101;
        v4 = v5 - 4;
    }
    while ( v4 >= 0 );
    return result;
}


// 0x8006bc0
Toolkit *__usercall SetPrimaryToolkitPointers@<R10>()
{
    CopyWords(&ToolkitPointers, &eToolkit, 0x3Cu);
    return &eToolkit;
}


// 0x8006c18
int SetPrimaryToolkitPointersWrapper()
{
    int v1; // [sp+0h] [bp-4h]

    SetPrimaryToolkitPointers();
    return v1;
}


// 0x8006c22
void __cdecl RandomizeExtraToolkitPointers()
{
    Toolkit *tk; // r10
    signed int idx; // r1
    u8 *v2; // r2

    GetRNG2();
    eUnusedExtraToolkitPtrsOffset = 0;
    copyWords_80014EC(&eGameState, &eGameState, 0x35BC);
    idx = 0;
    v2 = &eGameState.subSystemSelect + eUnusedExtraToolkitPtrsOffset;
    do
    {
        *(&tk->gamestate + idx * 4) = &v2[ToolkitExtraPtrsOffsets[idx]];
        ++idx;
    }
    while ( idx < 22 );
}


// 0x8006c6c
int SetExtraToolkitPointers()
{
    int v0; // r10
    int result; // r0
    signed int v2; // r1

    result = v0 + 60;
    v2 = 0;
    do
    {
        *(result + v2 * 4) = &eGameState + ToolkitExtraPtrsOffsets[v2];
        ++v2;
    }
    while ( v2 < 22 );
    return result;
}


// 0x8006d00
int __fastcall sub_8006D00(int a1, int a2, int a3, int a4)
{
    Toolkit *tk; // r10
    int v5; // r0
    _BYTE *v6; // r6
    signed int i; // r7
    unsigned __int8 v8; // vf
    unsigned __int8 v9; // r0
    int v10; // r0
    _BYTE *v11; // r6
    signed int j; // r7
    unsigned __int8 v13; // r0
    int v14; // r0
    _BYTE *v15; // r6
    signed int k; // r7
    unsigned __int8 v17; // r0
    int v18; // r0
    int v19; // r0
    unsigned int v20; // r0
    int v21; // r0
    unsigned int v22; // r0

    ZeroFillByWord(&eUnusedExtraToolkitPtrsOffset, 128);
    eUnusedExtraToolkitPtrsOffset = 0;
    GetRNG2();
    dword_2001064 = v5;
    v6 = tk->unk_2004A8C;
    for ( i = byte_200; ; v6[i] = ~v10 )
    {
        v8 = __OFSUB__(i--, 1);
        if ( (i < 0) ^ v8 )
            break;
        do
        {
            GetRNG2();
            v10 = v9 ^ 0x6F;
        }
        while ( !v10 );
        byte_20004E0[i] = v10;
    }
    v11 = tk->unk_2004C20;
    for ( j = 512; ; v11[j] = ~v14 )
    {
        v8 = __OFSUB__(j--, 1);
        if ( (j < 0) ^ v8 )
            break;
        do
        {
            GetRNG2();
            v14 = v13 ^ 0x81;
        }
        while ( !v14 );
        byte_20008A0[j] = v14;
    }
    v15 = tk->unk_2004E24;
    for ( k = 4; ; v15[k] = ~v18 )
    {
        v8 = __OFSUB__(k--, 1);
        if ( (k < 0) ^ v8 )
            break;
        do
        {
            GetRNG2();
            v18 = v17 ^ 0xFE;
        }
        while ( !v18 );
        byte_2001600[k] = v18;
    }
    do
    {
        GetRNG2();
        v20 = v19 & 0xFFFFF ^ &dword_802412C;
    }
    while ( !v20 );
    dword_2000060 = v20;
    sub_8006F54();
    do
    {
        GetRNG2();
        v22 = v21 & 0xFFFFF ^ &loc_803ED90;
    }
    while ( !v22 );
    dword_20018B8 = v22;
    sub_8006FAC();
    return sub_8007036();
}


// 0x8006dec
int sub_8006DEC()
{
    int v0; // r10

    return *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_74);
}


// 0x8006df6
int *__fastcall sub_8006DF6(int a1, int a2)
{
    int v2; // r7
    int v3; // r1
    unsigned __int8 v4; // vf
    int *result; // r0

    v2 = dword_2001064;
    v3 = a2 - 1;
    do
    {
        *(a1 + v3) ^= v2;
        v4 = __OFSUB__(v3--, 1);
    }
    while ( !((v3 < 0) ^ v4) );
    result = &eUnusedExtraToolkitPtrsOffset;
    dword_2001064 = v2;
    return result;
}


// 0x8006e0e
// (u8 *mem, int size) -> void
int __cdecl save_memSetFlags_8006E0E(u8 *mem, int size)
{
    int v2; // r7
    int v3; // r1
    unsigned __int8 v4; // vf
    int result; // r0

    v2 = dword_2001064;
    v3 = size - 1;
    do
    {
        mem[v3] ^= v2;
        v4 = __OFSUB__(v3--, 1);
    }
    while ( !((v3 < 0) ^ v4) );
    result = &eUnusedExtraToolkitPtrsOffset;
    dword_2001064 = v2;
    return result;
}


// 0x8006e26
int save_8006E26()
{
    int v0; // r0
    int result; // r0

    do
    {
        GetRNG2();
        result = ~v0;
    }
    while ( !result );
    dword_2001064 = result;
    return result;
}


// 0x8006e3c
int __fastcall load_8006E3C(int result)
{
    int v1; // r10

    *(*(v1 + 120) + result) = byte_20004E0[result] ^ 0x6F;
    return result;
}


// 0x8006e50
signed int __fastcall sub_8006E50(signed int result)
{
    int v1; // r10

    if ( (byte_20004E0[result] ^ 0x6F) != *(*(v1 + 120) + result) )
        result = 1;
    return result;
}


// 0x8006e70
// (int idx_20008A0) -> void
int __fastcall modifyToolkit_unk7C_using_2008A0(int result)
{
    int v1; // r10

    *(*(v1 + offsetof(Toolkit, unk_2004C20)) + result) = byte_20008A0[result] ^ 0x81;
    return result;
}


// 0x8006e84
signed int __fastcall sub_8006E84(signed int result)
{
    int v1; // r10

    if ( (byte_20008A0[result] ^ 0x81) != *(*(v1 + 124) + result) )
        result = 1;
    return result;
}


// 0x8006ea4
BOOL __fastcall sub_8006EA4(signed int chipIdx, int a2)
{
    int vChipIdx; // r7
    int v3; // r4
    char v4; // zf
    unsigned __int8 *v5; // r0
    BOOL result; // r0

    vChipIdx = chipIdx;
    v3 = a2;
    sub_8006E84(chipIdx);
    result = 1;
    if ( v4 )
    {
        if ( v3 == 255
            || ((v5 = getChip8021DA8(vChipIdx), *v5 == v3) || v5[1] == v3 || v5[2] == v3 || v5[3] == v3)
            && *chip_8021C7C(vChipIdx, v3) )
        {
            result = 0;
        }
    }
    return result;
}


// 0x8006ee8
// (int idx_8021DA8, int a2) -> bool
BOOL __fastcall sub_8006EE8(signed int a1, int a2)
{
    int v2; // r7
    int v3; // r4
    char v4; // zf
    unsigned __int8 *v5; // r0
    BOOL result; // r0

    v2 = a1;
    v3 = a2;
    sub_8006E84(a1);
    result = 1;
    if ( v4 )
    {
        if ( v3 == 255
            || (v5 = getChip8021DA8(v2), *v5 == v3)
            || v5[offsetof(ChipData, unk_01)] == v3
            || v5[offsetof(ChipData, unk_02)] == v3
            || v5[offsetof(ChipData, unk_03)] == v3 )
        {
            result = 0;
        }
    }
    return result;
}


// 0x8006f1e
BOOL __fastcall sub_8006F1E(int a1, int a2)
{
    int v2; // r7
    int v3; // r4
    char v4; // zf
    unsigned __int8 *v5; // r0
    BOOL result; // r0

    v2 = a1;
    v3 = a2;
    sub_80070E6(a1);
    result = 1;
    if ( v4 )
    {
        if ( v3 == 255
            || (v5 = getChip8021DA8(v2), *v5 == v3)
            || v5[offsetof(ChipData, unk_01)] == v3
            || v5[offsetof(ChipData, unk_02)] == v3
            || v5[offsetof(ChipData, unk_03)] == v3 )
        {
            result = 0;
        }
    }
    return result;
}


// 0x8006f54
void sub_8006F54()
{
    int v0; // r10
    _DWORD *v1; // r4
    int v2; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = v1[oGameState_EnterMapFadeParam2];
    if ( !(v1[oGameState_CurBattleDataPtr|oGameState_PETNaviIndex] & 1) )
        v1[oGameState_OverworldPlayerObjectPtr|oGameState_Unk_03] = ~v2;
    **(v0 + 132) = v2 ^ dword_2000060;
}


// 0x8006f78
void sub_8006F78()
{
    int v0; // r10
    _DWORD *v1; // r4

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( v1[oGameState_EnterMapFadeParam2] != ~v1[oGameState_OverworldPlayerObjectPtr|oGameState_Unk_03] )
        v1[oGameState_CurBattleDataPtr|oGameState_PETNaviIndex] |= 1u;
    **(v0 + 132);
}


// 0x8006fac
void sub_8006FAC()
{
    int v0; // r10
    _DWORD *v1; // r4
    int v2; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = v1[oGameState_OverworldPlayerObjectPtr];
    if ( !(v1[oGameState_CurBattleDataPtr|oGameState_PETNaviIndex] & 2) )
        v1[oGameState_CurBattleDataPtr] = ~v2;
    **(v0 + 136) = v2 ^ dword_20018B8;
}


// 0x8006fd0
void sub_8006FD0()
{
    int v0; // r10
    _DWORD *v1; // r4

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( v1[oGameState_OverworldPlayerObjectPtr] != ~v1[oGameState_CurBattleDataPtr] )
        v1[oGameState_CurBattleDataPtr|oGameState_PETNaviIndex] |= 2u;
    **(v0 + 136);
}


// 0x8007004
int __fastcall sub_8007004(int a1, int a2)
{
    int v2; // r10
    int result; // r0

    result = sub_800708C(a1, a2);
    *(*(v2 + 140) + result) = byte_2000670[result] ^ 0x8D;
    return result;
}


// 0x800701c
int __fastcall sub_800701C(int a1, int a2)
{
    int v2; // r10
    int result; // r0

    result = sub_800708C(a1, a2);
    *(*(v2 + 140) + result) = ~(byte_2000670[result] ^ 0x8D);
    return result;
}


// 0x8007036
int sub_8007036()
{
    int v0; // r10
    int result; // r0
    int v2; // r6
    signed int i; // r7
    unsigned __int8 v4; // vf
    unsigned __int8 v5; // r0
    int v6; // r0

    result = 140;
    v2 = *(v0 + 140);
    for ( i = byte_100; ; *(v2 + i) = result )
    {
        v4 = __OFSUB__(i--, 1);
        if ( (i < 0) ^ v4 )
            break;
        do
        {
            GetRNG2();
            v6 = v5 ^ 0x8D;
        }
        while ( !v6 );
        byte_2000670[i] = v6;
        result = ~v6;
    }
    return result;
}


// 0x8007068
int __fastcall sub_8007068(int a1, int a2)
{
    int v2; // r10
    int result; // r0

    result = sub_800708C(a1, a2);
    if ( (byte_2000670[result] ^ 0x8D) != *(*(v2 + 140) + result) )
        result = 1;
    return result;
}


// 0x800708c
int __fastcall sub_800708C(int a1, int a2)
{
    __int16 *v2; // r7
    int v3; // r4

    v2 = &word_80070AC;
    v3 = 0;
    while ( *v2 != a1 )
    {
        v2 += 2;
        if ( ++v3 >= 4 )
        {
            while ( 1 )
                ;
        }
    }
    return v2[1] + a2;
}


// 0x80070bc
int sub_80070BC()
{
    int v0; // r10
    unsigned int v1; // r4
    signed int v2; // r7
    int result; // r0
    char v4; // zf

    v1 = 8224;
    v2 = 0;
    do
    {
        result = TestEventFlag(v1);
        if ( !v4 )
        {
            result = *(v0 + 128);
            *(result + v2) = byte_2001600[v2] ^ 0xFE;
        }
        ++v1;
        ++v2;
    }
    while ( v2 < 512 );
    return result;
}


// 0x80070e6
signed int __fastcall sub_80070E6(signed int a1)
{
    int v1; // r10
    signed int result; // r0
    char v3; // zf
    signed int v4; // [sp+0h] [bp-24h]

    v4 = a1;
    sub_8006E84(a1);
    result = v4;
    if ( !v3 && (byte_2001600[v4] ^ 0xFE) != *(*(v1 + 128) + v4) )
        result = 1;
    return result;
}


// 0x800710a
signed int sub_800710A()
{
    unsigned int v0; // r4
    signed int v1; // r7
    char v2; // zf
    unsigned int v3; // r4
    signed int v4; // r7
    unsigned int v5; // r4
    signed int v6; // r7

    v0 = 8224;
    v1 = 0;
    while ( 1 )
    {
        TestEventFlag(v0);
        if ( !v2 )
        {
            sub_80070E6(v1);
            if ( !v2 )
                break;
        }
        ++v0;
        if ( ++v1 >= 512 )
        {
            v3 = 8736;
            v4 = 0;
            while ( 1 )
            {
                TestEventFlag(v3);
                if ( !v2 )
                {
                    sub_80070E6(v4);
                    if ( !v2 )
                        break;
                }
                ++v3;
                if ( ++v4 >= 512 )
                {
                    v5 = 7712;
                    v6 = 0;
                    while ( 1 )
                    {
                        TestEventFlag(v5);
                        if ( !v2 )
                        {
                            sub_8006E84(v6);
                            if ( !v2 )
                                break;
                        }
                        ++v5;
                        if ( ++v6 >= 512 )
                            return 0;
                    }
                    return 1;
                }
            }
            return 1;
        }
    }
    return 1;
}


// 0x800718c
void sub_800718C()
{
    ;
}


// 0x8007194
int get_flags32_20093A4()
{
    return flags32_20093A4;
}


// 0x800719a
int __fastcall set_flags32_20093A4(int result)
{
    flags32_20093A4 |= result;
    return result;
}


// 0x80071a4
int __fastcall clear_flags32_20093A4(int result)
{
    flags32_20093A4 &= ~result;
    return result;
}


// 0x80071ae
int __fastcall assign_flags32_20093A4(int result)
{
    flags32_20093A4 = result;
    return result;
}


// 0x80071b4
int reset_flags32_20093A4()
{
    int result; // r0

    result = 0;
    flags32_20093A4 = 0;
    return result;
}


// 0x80071d4
char *__fastcall __noreturn sub_80071D4(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // ST00_4
    int v6; // r5
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    int v14; // r0
    int v15; // r1
    int v16; // r2
    int v17; // r0
    int v18; // r1
    int v19; // r2
    int v20; // r3
    int v21; // r1
    int v22; // r2
    int v23; // r3
    int v24; // r1
    int v25; // r2
    int v26; // r3
    int v27; // r0
    int v28; // r1
    int v29; // r2
    int v30; // r3
    int v31; // r0
    int v32; // r1
    int v33; // r2
    int v34; // r3
    int v35; // r0
    int v36; // r1
    int v37; // r2
    int v38; // r3
    int v39; // r0
    int v40; // r1
    int v41; // r2
    int v42; // r3
    int v43; // r0
    int v44; // r1
    int v45; // r2
    int v46; // r3
    int v47; // r0
    int v48; // r1
    int v49; // r2
    int v50; // r3

    v5 = a1;
    ZeroFillByWord(dword_2033000, 27296);
    ZeroFillByWord(&unk_2039ADC, 12804);
    ZeroFillByWord(byte_203CDA8, sub_3258);
    SetPrimaryToolkitPointersWrapper();
    v6 = *(v4 + oToolkit_S2034880_Ptr);
    ZeroFillByWord(*(v4 + oToolkit_S2034880_Ptr), 240);
    *(v6 + 60) = v5;
    *(v6 + 10) = 1;
    sub_8005F40(1, v7, v8, v9);
    sub_8005F78();
    if ( sub_802D234() == 1 )
        sub_80027E4();
    else
        sub_80027D4();
    set_flags32_20093A4(1);
    batle_clearEnemyFadeinList();
    *(v6 + 27) = 1;
    ZeroFillByByte(dword_2036820, 16);
    ZeroFillByEightWords((*(v4 + oToolkit_iBGTileIdBlocks_Ptr) + 2048), 6144);
    sCamera.unk_4C = 0;
    v10 = sub_800A01C();
    sub_80075CA(v10, v11, v12, v13);
    sub_8080D90();
    sub_8080DA0();
    v14 = sub_8007628();
    sub_801FE00(v14, v15, v16);
    eStruct2038160_clearStruct(v17, v18, v19, v20);
    sub_800ED00();
    sub_8013422(0, v21, v22, v23);
    v27 = sub_8013422(1, v24, v25, v26);
    sub_800BF66(v27, v28, v29, v30);
    v31 = sub_800A2F8();
    sub_800A954(v31, v32, v33, v34);
    sub_800AB70(v35, v36, v37, v38);
    sub_802CE54(v39, v40, v41, v42);
    sub_800A79C();
    sub_800A032();
    v43 = object_Clear3RAMBytes_800371A();
    v47 = sub_802DFFC(v43, v44, v45, v46);
    sub_8021D08(v47, v48, v49, v50);
    dword_20364C0 = 100745216;
    dword_20364C4 = &byte_20364C8;
    ClearEventFlagFromImmediate(23, 51);
    ClearEventFlagFromImmediate(23, 53);
    eStruct200A008_setUnk04(0);
    eStruct200A008_setUnk06(0);
    eStruct200A008_setUnk00(0);
    sub_800B75A();
    sub_802D08C(0);
    return sub_802D08C(1);
}


// 0x8007338
int sub_8007338()
{
    int v0; // r1

    sub_80303E8();
    camera_802FF4C(0, 0, 0, 240);
    return sub_80301B2(0, v0);
}


// 0x8007358
int sub_8007358()
{
    int v0; // r5

    sub_8007368(*(*(v0 + 60) + 12));
    return sub_80AA88C();
}


// 0x8007368
void __fastcall sub_8007368(_BYTE *a1)
{
    int v1; // r5
    int v2; // r10
    _BYTE *i; // r6
    unsigned int v4; // r0

    for ( i = a1; ; i += 4 )
    {
        v4 = *i & 0xF0;
        if ( v4 == 240 )
            break;
        (*(&off_80073A0 + (v4 >> 2)))();
    }
    *(v1 + 18) = *(v1 + 4);
    CopyWords(*(v2 + oToolkit_S2034880_Ptr) + 128, *(v2 + oToolkit_S2034880_Ptr) + 208, 0x20u);
}


// 0x80073cc
int sub_80073CC()
{
    _BYTE *v0; // r6

    return sub_800753C(v0[1] & 7, v0[1] >> 4, *v0 & 1, 1);
}


// 0x80073e2
void sub_80073E2()
{
    _BYTE *v0; // r6
    int v1; // r0
    int v2; // ST0C_4
    int v3; // [sp-10h] [bp-18h]

    v1 = v0[1];
    v2 = *v0 & 1;
    v3 = v0[2] + ((v0[3] << 8) & 0xFFF);
    if ( !(sub_802D246() & 0x8000) )
        sub_800EC80(v3);
    dead_800768C();
}


// 0x8007424
unsigned int sub_8007424()
{
    int v0; // r6
    unsigned int result; // r0

    GetPositiveSignedRNG2();
    __asm { SVC         6 }
    result = *(v0 + 2);
    if ( result > 15 )
    {
        sub_80DA9FE(result >> 4);
        result = sub_80DA9DC(*(v0 + 1) & 7, *(v0 + 1) >> 4, 0);
    }
    return result;
}


// 0x8007450
int sub_8007450()
{
    int v0; // r5
    int v1; // r6
    _DWORD *v2; // r7
    int result; // r0
    int v4; // r3

    v2 = (v0 + 184);
    if ( !*(v0 + 184) || (v2 = (v0 + 188), (result = *(v0 + 188)) == 0) )
    {
        object_getPanelParameters(*(v1 + 1) & 7, *(v1 + 1) >> 4);
        result = sub_80D2430((*(v1 + 1) & 7), *(v1 + 1) >> 4, 0, v4);
        *v2 = result;
    }
    return result;
}


// 0x800748a
int sub_800748A()
{
    int v0; // r5
    int v1; // r6
    _DWORD *v2; // r7
    int result; // r0
    int v4; // r3

    v2 = (v0 + 184);
    if ( !*(v0 + 184) || (v2 = (v0 + 188), (result = *(v0 + 188)) == 0) )
    {
        object_getPanelParameters(*(v1 + 1) & 7, *(v1 + 1) >> 4);
        result = sub_80D85F0(*(v1 + 1) & 7, *(v1 + 1) >> 4, 0, v4);
        *v2 = result;
    }
    return result;
}


// 0x80074c4
void nullsub_40()
{
    ;
}


// 0x80074c6
void nullsub_41()
{
    ;
}


// 0x80074c8
_BYTE *__fastcall sub_80074C8(int a1, int a2, int a3, int a4)
{
    int v4; // r6
    int v5; // r0
    int v6; // r4

    v5 = *(v4 + 3);
    v6 = ((*(v4 + 2) + 256) << 8) + v5;
    return sub_80E5368(v5, a2, a3, a4);
}


// 0x80074de
int sub_80074DE()
{
    int v0; // r6

    return sub_80D8D5A(*(v0 + 1) & 7, *(v0 + 1) & 7, *(v0 + 1) >> 4, 8 * *(v0 + 2) & 0x3FF);
}


// 0x80074fa
int sub_80074FA()
{
    int v0; // r6
    unsigned int v1; // r0
    char v2; // ST00_1
    int v3; // ST04_4
    char *v4; // r0

    v1 = *(v0 + 1);
    v2 = v1 & 7;
    v3 = v1 >> 4;
    v4 = object_getPanelDataOffset(v1 & 7, v1 >> 4);
    return sub_80CFBC4(v2, v3, v4[3], *(v0 + 2));
}


// 0x800751c
_BYTE *__noreturn sub_800751C()
{
    int v0; // r6
    unsigned int v1; // r0
    char v2; // ST00_1
    int v3; // ST04_4
    char *v4; // r0

    v1 = *(v0 + 1);
    v2 = v1 & 7;
    v3 = v1 >> 4;
    v4 = object_getPanelDataOffset(v1 & 7, v1 >> 4);
    return sub_80D4FA6(v2, v3, v4[3], *(v0 + 2));
}


// 0x800753c
int __fastcall sub_800753C(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0
    int v6; // r1
    char *v7; // r0
    char *v8; // r4
    char *v9; // r0
    char v10; // r1
    int v11; // [sp+0h] [bp-18h]
    char v12; // [sp+4h] [bp-14h]
    char v13; // [sp+8h] [bp-10h]

    v11 = a1;
    v12 = a2;
    v13 = a3;
    object_spawnType1(0, a2, a3, a4);
    result = v11;
    if ( v4 )
    {
        *(v4 + 22) = v13;
        *(v4 + 18) = v11;
        *(v4 + 19) = v12;
        *(v4 + 20) = v11;
        *(v4 + 21) = v12;
        *(v4 + 52) = object_getCoordinatesForPanels(v11);
        *(v4 + 56) = v6;
        *(v4 + 60) = 0;
        *v4 |= 4u;
        v7 = object_createAIData();
        v8 = v7;
        *(v4 + 88) = v7;
        if ( v7 )
        {
            *v7 = 2;
            *(v4 + 40) = sub_80136CC(*(v4 + 22), 41) + 416;
            if ( !sub_8007778() )
            {
                sub_800ED80(*(v4 + 88));
                object_freeMemory();
            }
            v9 = sub_80182B4(*(v4 + 40));
            v10 = *v9;
            v8[22] = *v9;
            v8[23] = v10;
            *v8 = v9[1];
            v8[1] = v9[2];
            v8[3] = (*enemy_getStruct1(*(v4 + 40)))[2];
            v8[14] = -1;
            result = sub_80077D2();
        }
        else
        {
            result = object_freeMemory();
        }
    }
    return result;
}


// 0x80075ca
void __fastcall sub_80075CA(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(0x6008000, 64);
    ZeroFillByWord(0x6008000, 64);
    decomp_initGfx_8000B8E(&off_80075F0);
    SWI_LZ77UnCompReadNormalWrite16bit(dword_86DDBA0, 0x6001460);
}


// 0x8007628
int sub_8007628()
{
    int v0; // r10
    int v1; // r0
    __int16 *i; // r1
    int v3; // r2
    int result; // r0
    __int16 *j; // r1
    int v6; // r2

    v1 = *(v0 + oToolkit_RenderInfoPtr);
    for ( i = &word_800765C; ; i += 2 )
    {
        v3 = *i;
        if ( v3 == 255 )
            break;
        *(v1 + v3) = i[1];
    }
    result = *(v0 + oToolkit_Unk200f3a0_Ptr);
    for ( j = &word_8007672; ; j += 2 )
    {
        v6 = *j;
        if ( v6 == 255 )
            break;
        *(result + v6) = j[1];
    }
    return result;
}


// 0x800768c
void dead_800768C()
{
    JUMPOUT(&loc_80076A8);
}


// 0x8007696
void dead_8007696()
{
    JUMPOUT(&loc_80076A8);
}


// 0x80076a0
int *__fastcall sub_80076A0(int a1, int a2, int a3, char a4)
{
    int v4; // r5
    int v5; // r10
    int v6; // r6
    char *v7; // r7
    int v8; // r0
    int v9; // r4
    int v10; // r1
    int *result; // r0
    char *v12; // r0
    char *v13; // r4
    char *v14; // r0
    char v15; // r1
    char *v16; // r0
    unsigned int v17; // r1
    __int16 v18; // r2
    int v19; // [sp+0h] [bp-28h]
    char v20; // [sp+4h] [bp-24h]
    char v21; // [sp+8h] [bp-20h]
    char v22; // [sp+Ch] [bp-1Ch]

    v6 = *(v5 + oToolkit_S2034880_Ptr);
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v7 = sub_80182B4(a1);
    v8 = object_getCoordinatesForPanels(v20);
    v9 = *v7;
    result = object_spawnType1(0, v8, v10, 0);
    if ( v4 )
    {
        *(v4 + 22) = v22;
        v12 = object_createAIData();
        *(v4 + 88) = v12;
        v13 = v12;
        if ( v12 )
        {
            v12[2] = 0;
            *(v4 + 5) = 0;
            if ( sub_8007778() )
            {
                *v4 |= 4u;
                *(v4 + 40) = v19;
                v14 = sub_80182B4(v19);
                v15 = *v14;
                v13[22] = *v14;
                v13[23] = v15;
                *v13 = v14[1];
                v13[1] = v14[2];
                v13[3] = (*enemy_getStruct1(v19))[2];
                v16 = enemy_getStruct2(v19);
                v17 = *v16;
                v18 = *v16 & 0xFFF;
                *(v4 + 36) = v18;
                *(v4 + 38) = v18;
                *(v4 + 14) = v17 >> 12;
                *(v4 + 44) = *(v16 + 2);
                *(v4 + 46) = 10;
                *(v4 + 18) = v20;
                *(v4 + 19) = v21;
                *(v4 + 20) = v20;
                *(v4 + 21) = v21;
                *(v13 + 21) = v4;
                *(v4 + 42) = -1;
                v13[14] = -1;
                sub_80077D2();
                result = v4;
            }
            else
            {
                object_freeMemory();
                result = sub_800ED80(*(v4 + 88));
            }
        }
        else
        {
            result = object_freeMemory();
        }
    }
    return result;
}


// 0x8007778
signed int sub_8007778()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    _DWORD *v3; // r3
    int v4; // r1

    v2 = *(v1 + oToolkit_S2034880_Ptr);
    v3 = (v2 + 16 * *(v0 + 22) + 128);
    v4 = 0;
    while ( *v3 )
    {
        ++v3;
        if ( ++v4 >= 4 )
            return 0;
    }
    *v3 = v0;
    if ( *(*(v0 + 88) + 2) != 1 )
        ++*(v2 + *(v0 + 22) + 4);
    return 1;
}


// 0x80077b4
int __fastcall sub_80077B4(int result)
{
    int v1; // r10
    _DWORD *v2; // r1
    signed int v3; // r3

    v2 = (*(v1 + oToolkit_S2034880_Ptr) + 128);
    v3 = 0;
    do
    {
        if ( *v2 == result )
            *v2 = 0;
        ++v2;
        ++v3;
    }
    while ( v3 < 8 );
    return result;
}


// 0x80077d2
int sub_80077D2()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r1
    int v4; // r3
    int v5; // r4

    result = *(v0 + 40);
    v3 = *(v0 + 22);
    v4 = *(v1 + oToolkit_S2034880_Ptr);
    v5 = *(v4 + v3 + 8);
    *(v4 + v3 + 8) = v5 + 1;
    *(v4 + 8 * v3 + 76 + 2 * v5) = result;
    return result;
}


// 0x8007800
// () -> zf
int battle_8007800()
{
    int v0; // r10
    int v1; // r0
    unsigned __int8 *v2; // r5

    sub_801FE6C();
    sub_8020140(v1);
    v2 = *(v0 + oToolkit_S2034880_Ptr);
    (*(&JumpTable8007838 + *v2))();
    ++*(v2 + 24);
    sub_802D246();
    sub_800A832();
    return v2[10];
}


// 0x8007850
int sub_8007850()
{
    int v0; // r5
    int v1; // r0
    int v2; // r4
    int v3; // r0
    char v4; // r4
    int v5; // r0
    int v6; // r0
    int result; // r0
    int v8; // r0
    char v9; // r1

    v1 = eStruct203F7D8_getUnk01();
    v2 = v1;
    if ( v1 == 4 )
    {
        dword_200F3B0 = 255;
LABEL_3:
        v3 = eStruct200BC30_getJumpOffset00();
        if ( v3 != 4 && v3 != 8 )
            sub_81440D8();
        sub_801FE64();
        v4 = 5;
        v5 = eStruct200BC30_getJumpOffset00();
        if ( v5 == 4 || v5 == 8 )
        {
            v6 = eStruct200BC30_getRef()[14];
            if ( v6 == 8 || v6 == 2 )
            {
                eStruct200FE00_setUnk04To15h();
                v4 = 9;
            }
        }
        setTwoStructs_800A840(v4);
        *v0 = 8;
        *(v0 + 1) = 4;
        *(v0 + 2) = 0;
        result = sub_802D246();
        if ( !(result & 8) )
        {
            SetEventFlagFromImmediate(23, 51);
            result = SetEventFlagFromImmediate(23, 53);
        }
        return result;
    }
    if ( v1 != 2 && !(eStruct200BC30_getJumpOffset00() & 0xC) )
    {
        result = eStruct200BC30_getJumpOffset00();
        if ( result == 4 )
            return result;
        if ( result == 8 )
            return result;
        result = *(v0 + 32) + 1;
        *(v0 + 32) = result;
        if ( result < 180 )
            return result;
        dword_200F3B0 = 238;
        goto LABEL_3;
    }
    v8 = eStruct2038160_getBattleTerminate01();
    if ( v8 )
    {
        v9 = 9;
        if ( v8 != 1 )
            v9 = 10;
        setTwoStructs_800A840(v9);
        *v0 = 8;
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
    }
    else
    {
        sub_801FEEE(v2);
        result = 8;
        if ( !(v2 & 8) )
            result = (*(&off_8007940 + *(v0 + 1)))();
    }
    return result;
}


// 0x800794c
signed int sub_800794C()
{
    int v0; // r5
    char *v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char *v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    char *v9; // r0
    int v10; // r1
    int v11; // r2
    int v12; // r3
    int *v13; // r0
    int v14; // r1
    int v15; // r2
    int v16; // r3
    signed int result; // r0

    v1 = sub_800318C();
    v5 = InitializeT1BattleObjectStructs(v1, v2, v3, v4);
    v9 = InitializeT3BattleObjectStructs(v5, v6, v7, v8);
    InitializeT4BattleObjectStructs(v9, v10, v11, v12);
    sub_802E112();
    sub_8007338();
    v13 = sub_800A0C6();
    sub_801BE70(v13, v14, v15, v16);
    sub_8002668();
    result = 4;
    *(v0 + 1) = 4;
    return result;
}


// 0x8007978
int sub_8007978()
{
    int v0; // r5

    return (*(&off_800798C + *(v0 + 2)))();
}


// 0x800799c
signed int __fastcall sub_800799C(int a1)
{
    int v1; // r5
    signed int result; // r0

    sub_801FE24(a1);
    result = 4;
    *(v1 + 2) = 4;
    return result;
}


// 0x80079a8
signed int __fastcall sub_80079A8(int a1)
{
    int v1; // r5
    int v2; // r0
    u8 v3; // r0
    signed int result; // r0

    v2 = sub_802D246();
    if ( v2 & 8 )
        v3 = sub_803DD60(v2);
    else
        v3 = 0;
    *(v1 + 13) = v3;
    sCamera.unk_4C = v3;
    sub_800B144();
    result = 8;
    *(v1 + 2) = 8;
    return result;
}


// 0x80079d0
int sub_80079D0()
{
    int v0; // r5
    int result; // r0

    result = sub_800B46C(305419896);
    if ( result )
    {
        sub_800B460();
        battle_copyStructsIncludingBattleStats_800b2d8();
        result = 12;
        *(v0 + 2) = 12;
    }
    return result;
}


// 0x80079f0
int sub_80079F0()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    v1 = sub_802D26A();
    sub_800BF88(*(v0 + 6), v1);
    sub_800A3E4();
    *(v0 + 1) = 8;
    result = 0;
    *(v0 + 2) = 0;
    return result;
}


// 0x8007a0c
void __fastcall __noreturn sub_8007A0C(int a1, int a2, int a3, int a4)
{
    sub_801986C(a1, a2, a3, a4);
    sub_800C8F0();
}


// 0x8007a44
// () -> void
int battle_8007A44()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r0
    char v4; // r1
    char v5; // r4
    int v6; // r0
    int v7; // r0
    char v8; // zf
    int v9; // r0
    int v10; // r0

    v2 = eStruct203F7D8_getUnk01();
    if ( v2 == 4 )
    {
        v3 = eStruct200BC30_getRef()[14];
        if ( v3 == 8 )
        {
            eStruct200FE00_setUnk04To15h();
.loc_8007A62:
            v4 = 9;
.loc_8007A8E:
            setTwoStructs_800A840(v4);
            *v0 = 16;
            goto .loc_8007B10;
        }
        if ( v3 == 2 )
            goto .loc_8007A62;
        *v0 = 12;
    }
    else
    {
        v5 = v2;
        sub_801FEEE(v2);
        if ( !(v5 & 8) )
        {
            v6 = eStruct2038160_getBattleTerminate01();
            if ( v6 )
            {
                v4 = 9;
                if ( v6 != 1 )
                    v4 = 10;
                goto .loc_8007A8E;
            }
            sub_800A01C();
            v7 = sub_802D234();
            (*(&JumpTable8007B50 + v7))();
            RunBattleObjectLogic();
            sub_802FFF4();
            sub_800BFC4();
            sub_800FDC0();
            sub_801BEE0();
            sub_802CEC8();
            chip_800AEE8();
            if ( !*(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_0a) )
            {
                battle_isTimeStop();
                if ( v8 )
                {
                    v9 = *(v0 + oBattleObject_Element) + 1;
                    if ( v9 >= 20 )
                        LOBYTE(v9) = 0;
                    *(v0 + oBattleObject_Element) = v9;
                    v10 = *(v0 + oBattleObject_Alliance) + 1;
                    if ( v10 >= 180 )
                        LOBYTE(v10) = 0;
                    *(v0 + 22) = v10;
                }
                sub_802CDFE();
            }
            sub_80102AC(0);
            if ( sub_802D246() & 8 )
                sub_80102AC(1);
            ++*(v0 + 100);
        }
    }
.loc_8007B10:
    sub_80027B4();
    sub_800286C();
    sub_8003E18();
    sub_8004218();
    sub_8004510();
    sub_800C5E0();
    sub_801BF64();
    sub_802E156();
    sub_8003C70();
    sub_80046F8();
    sub_80049B0();
    sub_8009FCC();
    return sub_803C59C(224, 144);
}


// 0x8007b80
int sub_8007B80()
{
    int v0; // r5

    return (*(&off_8007B94 + *(v0 + 1)))();
}


// 0x8007b9c
int sub_8007B9C()
{
    int v0; // r5

    sub_800A01C();
    (*(&off_8007BC8 + *(v0 + 2)))();
    RunBattleObjectLogic();
    sub_800BFC4();
    sub_80027B4();
    sub_800286C();
    return sub_800A01C();
}


// 0x8007bd0
int sub_8007BD0()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 3) )
    {
        v2 = *(v0 + 40);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 40) = result;
        if ( (result < 0) ^ v3 )
        {
            result = 4;
            *(v0 + 2) = 4;
        }
    }
    else
    {
        *(v0 + 40) = 10;
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8007bf0
int __fastcall sub_8007BF0(int a1)
{
    int v1; // r0

    v1 = eStruct200BC30_getJumpOffset00();
    return (*(&off_8007C04 + v1))();
}


// 0x8007c14
signed int sub_8007C14()
{
    int v0; // r4
    int v1; // r5
    signed int result; // r0

    if ( !sub_801FE5E() )
        goto LABEL_7;
    if ( !*(v1 + 3) )
    {
        sub_803DDA4();
        result = 4;
        *(v1 + 3) = 4;
        return result;
    }
    if ( !sub_803DE24() || (result = *(v0 + 1), result != 2) )
    {
        sub_81440D8();
        sub_801FE64();
LABEL_7:
        *(v1 + 1) = 4;
        result = 0;
        *(v1 + 2) = 0;
    }
    return result;
}


// 0x8007c50
int __fastcall sub_8007C50(int a1)
{
    int v1; // r5
    int v2; // r0
    int result; // r0

    if ( sub_802D246() & &byte_400 )
    {
        v2 = sub_800A832();
        if ( v2 != 5 && v2 != 9 && v2 != 10 && !sub_800AF50() )
            goto LABEL_10;
    }
    if ( !*(v1 + 3) )
    {
        *(v1 + 3) = 4;
        return sub_803C754();
    }
    result = sub_813D60C();
    if ( !result )
    {
        sub_801FE64();
LABEL_10:
        *(v1 + 1) = 4;
        result = 0;
        *(v1 + 2) = 0;
    }
    return result;
}


// 0x8007ca0
void __fastcall sub_8007CA0(int a1, int a2, int a3)
{
    int v3; // r5
    int *v4; // r10
    int v5; // r4
    int v6; // r6
    int v7; // r7
    int v8; // r0
    signed int v9; // r0
    int v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    int v14; // ST00_4
    BattleSettings *v15; // r0
    char v16; // r1
    int v17; // r0
    bool v18; // zf
    int v19; // r0
    int v20; // r1
    int v21; // r2
    int v22; // r3
    int v23; // r0
    __int16 v24; // r2
    int v25; // r0
    char v26; // r2
    char v27; // ST00_1
    int v28; // r0
    int v29; // r1
    char v30; // r0
    char v31; // ST00_1
    int v32; // r0
    int v33; // r0
    int v34; // ST00_4
    int v35; // ST00_4
    int v36; // r0
    int v37; // r0
    int v38; // r0
    int v39; // [sp-4h] [bp-14h]

    musicGameState_8000784(a1, a2, a3);
    v5 = v4[oToolkit_S2011c50_Ptr];
    v6 = *v4;
    v7 = v4[0xF];
    if ( sub_802D246() & 0x400 )
    {
        v8 = sub_800A832();
        if ( v8 != 5 && v8 != 9 && v8 != 10 )
        {
            v9 = sub_800AF50();
            if ( !v9 )
            {
                SetDummyBGScrollCallbacks();
                zeroFill_e20094C0();
                sub_80023A8(v10, v11, v12, v13);
                v14 = *(v3 + 24);
                v15 = battleSettings_802D2B2();
                (loc_8007204)(v15);
            }
            v16 = 3;
            if ( v9 != 2 )
            {
                v16 = 1;
                if ( v9 != 1 )
                    v16 = 2;
            }
            setTwoStructs_800A840(v16);
        }
    }
    v17 = sub_800A832();
    if ( v17 == 1 && dword_2000B30 < 17 )
        LOWORD(dword_2000B30) = dword_2000B30 + 1;
    if ( v17 == 5 )
    {
        if ( !(sub_802D246() & 8) )
        {
            sub_803F4EC(0);
            TestEventFlagFromImmediate(23, 51);
            if ( !v18 )
            {
                SetDummyBGScrollCallbacks();
                zeroFill_e20094C0();
                sub_80023A8(v19, v20, v21, v22);
                (loc_80071FE)(*(v3 + 60));
            }
        }
    }
    else
    {
        sub_800FAE0();
        sub_800A86E();
        if ( sub_802D246() & 0x40 )
        {
            v23 = getPETNaviSelect();
            v24 = *(v3 + 52);
            if ( !*(v3 + 52) )
                v24 = 1;
            SetField16ToSelectedS20047CCStruct(v23, 64, v24);
        }
        v25 = sub_802D246();
        if ( !(v25 & 8) )
        {
            v26 = -128;
            if ( !(v25 & 0x10000) )
                sub_8015B54(*(v3 + 13));
            v27 = v26;
            v28 = getPETNaviSelect();
            SetCurPETNaviStatsByte(v28, 14, v27);
            v29 = sub_802D246();
            v30 = 3;
            if ( !(v29 & 0x400000) )
            {
                v39 = sub_80136CC(*(v3 + 13), 33);
                v18 = sub_800AB3A(*(v3 + 13), 2) == 0;
                v30 = v39;
                if ( v18 && v39 < 3 )
                    v30 = v39 + 1;
            }
            v31 = v30;
            v32 = getPETNaviSelect();
            SetCurPETNaviStatsByte(v32, 33, v31);
            if ( sub_800A832() == 1 )
                sub_802C9B8();
            *(v5 + 18) = 0;
            *(v5 + 20) = 0;
        }
        if ( sub_800A832() == 2 )
        {
            v33 = sub_802D246();
            if ( v33 & 0x800000 )
            {
                v34 = v33;
                SetCurNaviHPToFull();
                v33 = v34;
            }
            if ( v33 & &loc_1000 )
            {
                v35 = v33;
                v36 = getPETNaviSelect();
                SetCurPETNaviStatsByte(v36, 33, 3);
                v33 = v35;
            }
            if ( v33 & 0x40000 )
            {
                v37 = getPETNaviSelect();
                SetCurPETNaviStatsByte(v37, 14, 128);
            }
        }
        if ( sub_802D246() & 0x10 )
            SetCurNaviHPToFull();
        sub_802CA82();
    }
    *(v7 + oGameState_Unk_0a) = 0;
    zeroFill_e20097A0();
    v38 = SetRenderInfoLCDControl(64);
    sub_800A892(v38);
    clear_flags32_20093A4(1);
    ClearEventFlagFromImmediate(23, 34);
    *(v3 + 10) = 0;
    SetPrimaryToolkitPointers();
}


// 0x8007e62
signed int sub_8007E62()
{
    int v0; // r5
    signed int result; // r0

    (*(&off_8007EAC + *(v0 + 1)))();
    sub_80027B4();
    sub_800286C();
    sub_8003E18();
    sub_8004218();
    sub_8004510();
    sub_800C5E0();
    sub_801BF64();
    sub_802E156();
    sub_8003C70();
    sub_80046F8();
    sub_80049B0();
    sub_8009FCC();
    result = 2;
    eStruct203F7D8[1] = 2;
    return result;
}


// 0x8007eb8
signed int sub_8007EB8()
{
    int v0; // r5
    int v1; // r4
    int v2; // r0
    int v3; // r4
    int v4; // r1
    signed int result; // r0

    sub_800A028();
    sub_81440D8();
    sub_801FE64();
    sub_801BED6(2621440);
    sub_801DACC(2621440);
    setTwoStructs_800A840(5);
    sub_80062EC();
    v1 = getPETNaviSelect();
    v2 = sub_802D246();
    if ( v2 & 0x200000 )
        v1 = 0;
    if ( v2 & 8 )
    {
        v4 = v1 + 92;
    }
    else
    {
        v3 = 4 * v1;
        if ( !(v2 & 0x20) )
            v3 += 3;
        v4 = v3;
    }
    chatbox_runScript(TextScriptCommError87370C0, v4);
    result = 4;
    *(v0 + 1) = 4;
    return result;
}


// 0x8007f14
int sub_8007F14()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_mask_eFlags2009F38(128);
    if ( v2 )
    {
        engine_setScreeneffect(12, 16);
        result = 8;
        *(v0 + 1) = 8;
    }
    return result;
}


// 0x8007f2c
int sub_8007F2C()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2

    result = IsPaletteFadeActive();
    if ( !result )
    {
        musicGameState_8000784(0, v2, v3);
        sub_80035A2(0x1Au);
        *v0 = 8;
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8007f4e
signed int __fastcall sub_8007F4E(int a1)
{
    int v1; // r5
    signed int result; // r0

    sub_800A01C();
    (*(&off_8007F9C + *(v1 + 2)))();
    sub_80027B4();
    sub_800286C();
    sub_8003E18();
    sub_8004218();
    sub_8004510();
    sub_800C5E0();
    sub_801BF64();
    sub_802E156();
    sub_8003C70();
    sub_80046F8();
    sub_80049B0();
    sub_8009FCC();
    result = 2;
    eStruct203F7D8[1] = 2;
    return result;
}


// 0x8007fa4
int sub_8007FA4()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_800A028();
        sub_801FE64();
        sub_80062EC();
        engine_setScreeneffect(12, 16);
        *(v0 + 3) = 4;
    }
    result = IsPaletteFadeActive();
    if ( !result )
    {
        result = 4;
        *(v0 + 2) = 4;
    }
    return result;
}


// 0x8007fd2
int __fastcall sub_8007FD2(int a1)
{
    int v1; // r5
    int result; // r0

    result = sub_813D60C();
    if ( !result )
    {
        *v1 = 8;
        *(v1 + 1) = 4;
        result = 0;
        *(v1 + 2) = 0;
    }
    return result;
}


// 0x800801c
int sub_800801C()
{
    int v0; // r0

    v0 = (*(&off_8008038 + dword_203CA70))();
    sub_802DE5C(v0);
    return byte_203CA74[0];
}


// 0x8008064
int sub_8008064()
{
    int v0; // r5
    int v1; // r10
    signed int v2; // r0
    int v3; // r1
    int result; // r0

    sub_8012DFC(0);
    sub_8012DFC(1);
    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
        if ( sub_800A97A(4) )
        {
            *(v0 + 10) = 659;
            v2 = 16;
            v3 = 0;
        }
        else if ( sub_802D246() & 8 )
        {
            v2 = 12;
            v3 = *(*(v1 + oToolkit_S2034880_Ptr) + 7);
        }
        else
        {
            v2 = 0;
            v3 = 0;
        }
        (sub_801E792)(v2, v3);
    }
    result = sub_801E754();
    if ( !result )
    {
        sub_801E724(255, 0);
        sub_801E0C8(0xFFFF);
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x80080d2
int sub_80080D2()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r0
    int v4; // r1
    int result; // r0
    signed int v6; // r0
    int v7; // r0
    char v8; // zf
    char *v9; // r0
    char *v10; // r0
    char v11; // [sp-4h] [bp-8h]

    sub_8012DFC(0);
    sub_8012DFC(1);
    sub_800A032();
    battle_setFlags(1);
    sub_800AE0C();
    v2 = sub_800A6A6();
    if ( sub_800A97A(v2) )
        sub_800AB7C();
    v3 = sub_800A152();
    switch ( v3 )
    {
        case 1:
            v4 = *(v1 + oToolkit_S2034880_Ptr);
            if ( *(v4 + 58) )
            {
                result = sub_800AAD6();
            }
            else
            {
                ++*(v4 + 24);
                result = 12;
                *v0 = 12;
            }
            break;
        case 2:
            ++*(*(v1 + oToolkit_S2034880_Ptr) + 25);
            result = 16;
            *v0 = 16;
            return result;
        case 7:
            result = 24;
            *v0 = 24;
            return result;
        default:
            v6 = sub_800A046();
            if ( v6 != 255 )
            {
                *(v0 + 5) = v6;
                sub_800A028();
                *v0 = 28;
                return sub_801E15C();
            }
            v7 = sub_800A8F8(255);
            if ( v7 )
            {
                result = sub_800A244(v7);
                if ( v8 )
                    return result;
                v11 = result;
                if ( result & 1 )
                {
                    v9 = sub_802E070(0);
                    *(v9 + 20) -= sub_2900;
                }
                if ( v11 & 2 )
                {
                    v10 = sub_802E070(1);
                    *(v10 + 20) -= sub_2900;
                }
            }
            else
            {
                result = sub_800A1D0();
                if ( v8 )
                    return result;
            }
            sub_800A028();
            result = 32;
            *v0 = 32;
            break;
    }
    return result;
}


// 0x80081a4
int sub_80081A4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r0
    int v4; // r1
    int v5; // r2
    signed __int16 v6; // r4
    char v7; // r0
    int v8; // r6
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(937043);
        sub_801BED6(937043);
        v2 = sub_800A7E2();
        sub_8014040(v2);
        *(*(v1 + oToolkit_S2034880_Ptr) + 16) = *(*(v1 + oToolkit_S2034880_Ptr) + 13);
        *(v0 + 3) = 4;
        if ( sub_800A7A6(4, 371, 382) )
        {
            *(v0 + 8) = 102;
        }
        else
        {
            v3 = sub_802D234();
            if ( v3 != 4 && v3 != 5 && v3 != 8 )
            {
                v7 = sub_802D246();
                v6 = 94;
                v5 = 25;
                v4 = 2;
                if ( !(v7 & 2) )
                {
                    v5 = 31;
                    v6 = 102;
                }
            }
            else
            {
                v5 = 25;
                v6 = 94;
            }
            PlaySong(v5, v4, v5);
            *(v0 + 8) = v6;
            v8 = 4;
            if ( sub_802D246() & 8 )
            {
                v8 = sub_800A8D4();
            }
            else if ( sub_800A152() == 7 )
            {
                v8 = 20;
            }
            (sub_801E792)(v8);
        }
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        result = *(v0 + 8);
        if ( result <= 0 )
        {
            *(v0 + 4) = 1;
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 1;
            result = eStruct200A008_setUnk02(0);
        }
    }
    return result;
}


// 0x800825a
int sub_800825A()
{
    int v0; // r5
    int v1; // r10
    int v2; // r2
    signed __int16 v3; // r4
    signed int v4; // r4
    int v5; // r0
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(937043);
        sub_801BED6(937043);
        *(*(v1 + oToolkit_S2034880_Ptr) + 16) = *(*(v1 + oToolkit_S2034880_Ptr) + 13) ^ 1;
        if ( sub_802D246() & 8 )
            PlaySong(26, 8, v2);
        if ( sub_802D246() & 2 )
            v3 = 94;
        else
            v3 = 102;
        *(v0 + 8) = v3;
        v4 = sub_800A152();
        v5 = sub_800A8B2();
        if ( v4 == 7 )
            v5 = 24;
        (sub_801E792)(v5);
        *(v0 + 3) = 4;
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        result = *(v0 + 8);
        if ( result <= 0 )
        {
            *(v0 + 4) = 2;
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 2;
            result = eStruct200A008_setUnk02(1);
        }
    }
    return result;
}


// 0x80082dc
int sub_80082DC()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r0
    signed int v4; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(937043);
        sub_801BED6(937043);
        *(v0 + 8) = 102;
        *(v0 + 3) = 4;
        (sub_801E792)(28);
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        v3 = *(v0 + 8);
        if ( sub_802D246() & &byte_400 && (v4 = sub_800AF50()) != 0 && v4 != 2 )
        {
            if ( v4 == 1 )
            {
                result = 12;
                *v0 = 12;
            }
            else
            {
                result = 16;
                *v0 = 16;
            }
        }
        else
        {
            setTwoStructs_800A840(3);
            result = 3;
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 3;
            *(v0 + 4) = 3;
        }
    }
    return result;
}


// 0x800834a
int sub_800834A()
{
    int v0; // r5

    return (*(&off_800835C + *(v0 + 2)))();
}


// 0x8008364
int sub_8008364()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = *(v0 + 8) + 1;
    *(v0 + 8) = result;
    if ( result >= 60 )
    {
        sub_801DACC(&loc_800);
        result = 4;
        *(v0 + 2) = 4;
    }
    return result;
}


// 0x800838a
int sub_800838A()
{
    int v0; // r5
    int v1; // r10
    int v2; // ST00_4
    int v3; // r0
    int result; // r0
    int v5; // r1

    if ( *(v0 + 3) )
    {
        result = sub_802CB78();
        if ( !result )
        {
            if ( v5 == 1 )
            {
                ++*(*(v1 + oToolkit_S2034880_Ptr) + 24);
                result = 12;
                *v0 = 12;
            }
            else if ( v5 == 2 )
            {
                ++*(*(v1 + oToolkit_S2034880_Ptr) + 25);
                result = 16;
                *v0 = 16;
            }
            else
            {
                result = 20;
                *v0 = 20;
            }
        }
    }
    else
    {
        v2 = sub_801055E(1);
        v3 = sub_801055E(0);
        sub_802CB38(v2, v3);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x80083e4
int sub_80083E4()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2

    result = sub_800A07C(*(v0 + 5));
    if ( result )
    {
        PlaySoundEffect(159, v2, v3);
        *v0 = 8;
        result = sub_801DACC(byte_200);
    }
    return result;
}


// 0x800840c
int sub_800840C()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    int v3; // r0

    if ( !*(v0 + 3) )
    {
        sub_80147E4(byte_203F558, byte_203F658);
        *(v0 + 3) = 4;
    }
    result = sub_801483C();
    if ( !result )
    {
        if ( *(v0 + 2) )
        {
            v2 = sub_80103BC(0);
            sub_8015A38(v2);
            v3 = sub_80103BC(1);
            sub_8015A38(v3);
            result = 4;
            *v0 = 4;
        }
        else
        {
            sub_801482C();
            result = 4;
            *(v0 + 2) = 4;
        }
    }
    return result;
}


// 0x8008452
int __fastcall sub_8008452(int a1)
{
    int v1; // r5
    char v2; // zf
    int v3; // r0
    int v4; // r0
    int result; // r0

    if ( sub_802D234() != 5 )
    {
        sub_802E09A();
        if ( !v2 )
            goto LABEL_10;
    }
    if ( !*(v1 + 3) )
    {
        sub_802D6A0();
        v3 = sub_80103BC(0);
        sub_8015A16(v3);
        v4 = sub_80103BC(1);
        sub_8015A16(v4);
        *(v1 + 3) = 4;
    }
    result = sub_802D6C4();
    if ( !result )
    {
LABEL_10:
        result = 36;
        *v1 = 36;
    }
    return result;
}


// 0x8008492
int __fastcall sub_8008492(int a1)
{
    int v1; // r5
    char v2; // zf
    int result; // r0

    if ( sub_802D234() != 5 )
    {
        sub_802E09A();
        if ( !v2 )
            goto LABEL_10;
    }
    result = sub_801483C();
    if ( result )
        return result;
    if ( *(v1 + 2) )
    {
LABEL_10:
        result = 6;
        *(v1 + 4) = 6;
    }
    else
    {
        sub_801482C();
        result = 4;
        *(v1 + 2) = 4;
    }
    return result;
}


// 0x80084c0
void __fastcall sub_80084C0(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&dword_203CA70, 12);
}


// 0x80084f0
int sub_80084F0()
{
    (*(&off_8008508 + dword_203CA70))();
    return byte_203CA74[0];
}


// 0x8008528
int sub_8008528()
{
    int v0; // r5
    int result; // r0

    sub_8012DFC(0);
    sub_8012DFC(1);
    if ( !*(v0 + 3) )
    {
        *(v0 + 4) = 0;
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
        (sub_801E792)(0, 0);
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 4;
        *v0 = 4;
    }
    return result;
}


// 0x800855e
int sub_800855E()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r0
    int result; // r0
    signed int v5; // r0
    char v6; // zf

    sub_80085FE();
    sub_8012DFC(0);
    sub_8012DFC(1);
    sub_800A032();
    battle_setFlags(1);
    sub_800AE0C();
    v2 = sub_800A6A6();
    if ( sub_800A97A(v2) )
        sub_800AB7C();
    v3 = sub_800A152();
    switch ( v3 )
    {
        case 1:
            ++*(*(v1 + oToolkit_S2034880_Ptr) + 24);
            result = 8;
            *v0 = 8;
            break;
        case 2:
            ++*(*(v1 + oToolkit_S2034880_Ptr) + 25);
            result = 12;
            *v0 = 12;
            break;
        case 7:
            result = 20;
            *v0 = 20;
            break;
        default:
            v5 = sub_800A046();
            if ( v5 == 255 )
            {
                battle_isTimeStop();
                if ( v6 )
                    sub_801DFB8(13);
                result = sub_800A21C();
                if ( result )
                {
                    if ( result == 1 )
                    {
                        sub_800A028();
                        result = 20;
                        *v0 = 20;
                    }
                }
            }
            else
            {
                *(v0 + 5) = v5;
                sub_800A028();
                *v0 = 24;
                result = sub_801E15C();
            }
            break;
    }
    return result;
}


// 0x80085fe
int sub_80085FE()
{
    int v0; // r10
    int v1; // r5

    v1 = *(v0 + oToolkit_S2034880_Ptr);
    sub_8008622(*(v1 + 128), *(v1 + 132), *(v1 + 4));
    return sub_8008622(*(v1 + 144), *(v1 + 148), *(v1 + 5));
}


// 0x8008622
int __fastcall sub_8008622(int result, int a2, signed int a3)
{
    int v3; // ST00_4
    int v4; // ST04_4
    signed int v5; // r2

    if ( a3 >= 2 )
    {
        if ( result && a2 )
        {
            v5 = *(result + 36);
            if ( v5 >= *(a2 + 36) )
                LOWORD(v5) = *(a2 + 36);
            goto LABEL_9;
        }
    }
    else if ( result )
    {
        return result;
    }
    v3 = result;
    v4 = a2;
    sub_801DACC(8519808);
    sub_801BED6(8519808);
    result = v3;
    a2 = v4;
    LOWORD(v5) = 0;
LABEL_9:
    if ( result )
        *(result + 36) = v5;
    if ( a2 )
        *(a2 + 36) = v5;
    return result;
}


// 0x8008664
int sub_8008664()
{
    int v0; // r5

    return (*(&off_8008678 + *(v0 + 2)))();
}


// 0x8008688
int sub_8008688()
{
    int v0; // r5
    int v1; // r10
    int v2; // r6
    int v3; // r0
    char v4; // r0
    int v5; // r2
    signed __int16 v6; // r4
    int result; // r0

    if ( !*(v0 + 3) )
    {
        v2 = sub_800A84E();
        sub_801DACC(8539203);
        sub_801BED6(8539203);
        v3 = sub_800A7E2();
        sub_8014040(v3);
        *(*(v1 + oToolkit_S2034880_Ptr) + 16) = *(*(v1 + oToolkit_S2034880_Ptr) + 13);
        *(v0 + 3) = 4;
        v4 = sub_802D246();
        v5 = 25;
        v6 = 65;
        if ( !(v4 & 2) )
        {
            v5 = 31;
            v6 = 102;
        }
        if ( v2 == 1 )
            v5 = 36;
        PlaySong(v5, 2, v5);
        *(v0 + 8) = v6;
        (sub_801E792)(20);
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        result = *(v0 + 8);
        if ( result <= 0 )
        {
            result = 12;
            *(v0 + 2) = 12;
        }
    }
    return result;
}


// 0x80086f8
int sub_80086F8()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v1 = *(v0 + 8);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x8008716
int sub_8008716()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        (sub_801E792)(88);
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 12;
        *(v0 + 2) = 12;
    }
    return result;
}


// 0x800873a
int sub_800873A()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v2 = *(v0 + 8);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        *(v0 + 4) = 1;
        *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 1;
        result = eStruct200A008_setUnk02(0);
    }
    return result;
}


// 0x8008764
int sub_8008764()
{
    int v0; // r5
    int v1; // r10
    int v2; // r2
    signed __int16 v3; // r4
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(8539203);
        sub_801BED6(8539203);
        *(*(v1 + oToolkit_S2034880_Ptr) + 16) = *(*(v1 + oToolkit_S2034880_Ptr) + 13) ^ 1;
        if ( sub_802D246() & 8 )
            PlaySong(26, 8, v2);
        if ( sub_802D246() & 2 )
            v3 = 65;
        else
            v3 = 102;
        *(v0 + 8) = v3;
        (sub_801E792)(24);
        *(v0 + 3) = 4;
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        result = *(v0 + 8);
        if ( result <= 0 )
        {
            *(v0 + 4) = 2;
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 2;
            result = eStruct200A008_setUnk02(1);
        }
    }
    return result;
}


// 0x80087d8
int sub_80087D8()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r0
    signed int v4; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(8539203);
        sub_801BED6(8539203);
        *(v0 + 8) = 102;
        *(v0 + 3) = 4;
        (sub_801E792)(28);
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        v3 = *(v0 + 8);
        if ( sub_802D246() & &byte_400 && (v4 = sub_800AF50()) != 0 && v4 != 2 )
        {
            if ( v4 == 1 )
            {
                result = 8;
                *v0 = 8;
            }
            else
            {
                result = 12;
                *v0 = 12;
            }
        }
        else
        {
            result = 3;
            *(v0 + 4) = 3;
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 3;
        }
    }
    return result;
}


// 0x8008840
int sub_8008840()
{
    int v0; // r5

    return (*(&off_8008854 + *(v0 + 2)))();
}


// 0x8008864
int sub_8008864()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(8539203);
        sub_801BED6(8539203);
        (sub_801E792)(84);
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 4;
        *(v0 + 2) = 4;
    }
    return result;
}


// 0x8008894
int sub_8008894()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v1 = *(v0 + 8);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x80088b2
int sub_80088B2()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        (sub_801E792)(28);
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 12;
        *(v0 + 2) = 12;
    }
    return result;
}


// 0x80088d6
int sub_80088D6()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v2 = *(v0 + 8);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        *(v0 + 4) = 7;
        *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 7;
        result = eStruct200A008_setUnk02(1);
    }
    return result;
}


// 0x8008900
int sub_8008900()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2

    result = sub_800A07C(*(v0 + 5));
    if ( result )
    {
        PlaySoundEffect(159, v2, v3);
        *v0 = 4;
        result = sub_801DACC(byte_200);
    }
    return result;
}


// 0x8008928
void __fastcall sub_8008928(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&dword_203CA70, 12);
}


// 0x8008950
int sub_8008950()
{
    int v0; // r0

    v0 = (*(&off_800896C + dword_203CA70))();
    sub_802DE5C(v0);
    return byte_203CA74[0];
}


// 0x800898c
int sub_800898C()
{
    int v0; // r5
    int result; // r0

    sub_8012DFC(0);
    sub_8012DFC(1);
    if ( !*(v0 + 3) )
    {
        *(v0 + 4) = 0;
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
        sub_801DF0C();
        sub_801DFA2(0);
        (sub_801E792)(0, 0);
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 4;
        *v0 = 4;
    }
    return result;
}


// 0x80089cc
int sub_80089CC()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r0
    int result; // r0
    signed int v5; // r0

    sub_8012DFC(0);
    sub_8012DFC(1);
    sub_800A032();
    battle_setFlags(1);
    sub_800AE0C();
    v2 = sub_800A6A6();
    if ( sub_800A97A(v2) )
        sub_800AB7C();
    v3 = sub_800A152();
    switch ( v3 )
    {
        case 1:
            ++*(*(v1 + oToolkit_S2034880_Ptr) + 24);
            sub_801DFA2(0x4000);
            result = 8;
            *v0 = 8;
            break;
        case 2:
            ++*(*(v1 + oToolkit_S2034880_Ptr) + 25);
            result = 12;
            *v0 = 12;
            break;
        case 7:
            result = 20;
            *v0 = 20;
            break;
        default:
            v5 = sub_800A046();
            if ( v5 == 255 )
            {
                result = sub_800A21C();
                if ( result )
                {
                    if ( result == 1 )
                    {
                        sub_800A028();
                        result = 20;
                        *v0 = 20;
                    }
                }
            }
            else
            {
                *(v0 + 5) = v5;
                sub_800A028();
                *v0 = 24;
                result = sub_801E15C();
            }
            break;
    }
    return result;
}


// 0x8008a7c
int sub_8008A7C()
{
    int v0; // r5

    return (*(&off_8008A90 + *(v0 + 2)))();
}


// 0x8008aa0
int sub_8008AA0()
{
    int v0; // r5
    int v1; // r10
    int v2; // r6
    int v3; // r0
    char v4; // r0
    int v5; // r2
    signed __int16 v6; // r4
    int result; // r0

    if ( !*(v0 + 3) )
    {
        v2 = sub_800A84E();
        sub_801DACC(19523);
        sub_801BED6(19523);
        v3 = sub_800A7E2();
        sub_8014040(v3);
        *(*(v1 + oToolkit_S2034880_Ptr) + 16) = *(*(v1 + oToolkit_S2034880_Ptr) + 13);
        *(v0 + 3) = 4;
        v4 = sub_802D246();
        v5 = 25;
        v6 = 65;
        if ( !(v4 & 2) )
        {
            v5 = 31;
            v6 = 102;
        }
        if ( v2 == 1 )
            v5 = 36;
        PlaySong(v5, 2, v5);
        *(v0 + 8) = v6;
        (sub_801E792)(20);
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        result = *(v0 + 8);
        if ( result <= 0 )
        {
            result = 12;
            *(v0 + 2) = 12;
        }
    }
    return result;
}


// 0x8008b10
int sub_8008B10()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v1 = *(v0 + 8);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x8008b2e
int sub_8008B2E()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        (sub_801E792)(88);
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 12;
        *(v0 + 2) = 12;
    }
    return result;
}


// 0x8008b52
int sub_8008B52()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v2 = *(v0 + 8);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        *(v0 + 4) = 1;
        *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 1;
        result = eStruct200A008_setUnk02(0);
    }
    return result;
}


// 0x8008b7c
int sub_8008B7C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r2
    signed __int16 v3; // r4
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(19523);
        sub_801BED6(19523);
        *(*(v1 + oToolkit_S2034880_Ptr) + 16) = *(*(v1 + oToolkit_S2034880_Ptr) + 13) ^ 1;
        if ( sub_802D246() & 8 )
            PlaySong(26, 8, v2);
        if ( sub_802D246() & 2 )
            v3 = 65;
        else
            v3 = 102;
        *(v0 + 8) = v3;
        (sub_801E792)(24);
        *(v0 + 3) = 4;
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        result = *(v0 + 8);
        if ( result <= 0 )
        {
            *(v0 + 4) = 2;
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 2;
            result = eStruct200A008_setUnk02(1);
        }
    }
    return result;
}


// 0x8008bf0
int sub_8008BF0()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r0
    signed int v4; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(19523);
        sub_801BED6(19523);
        *(v0 + 8) = 102;
        *(v0 + 3) = 4;
        (sub_801E792)(28);
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        v3 = *(v0 + 8);
        if ( sub_802D246() & &byte_400 && (v4 = sub_800AF50()) != 0 && v4 != 2 )
        {
            if ( v4 == 1 )
            {
                result = 8;
                *v0 = 8;
            }
            else
            {
                result = 12;
                *v0 = 12;
            }
        }
        else
        {
            result = 3;
            *(v0 + 4) = 3;
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 3;
        }
    }
    return result;
}


// 0x8008c58
int sub_8008C58()
{
    int v0; // r5

    return (*(&off_8008C6C + *(v0 + 2)))();
}


// 0x8008c7c
int sub_8008C7C()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(19523);
        sub_801BED6(19523);
        (sub_801E792)(84);
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 4;
        *(v0 + 2) = 4;
    }
    return result;
}


// 0x8008cac
int sub_8008CAC()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v1 = *(v0 + 8);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x8008cca
int sub_8008CCA()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        (sub_801E792)(28);
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 12;
        *(v0 + 2) = 12;
    }
    return result;
}


// 0x8008cee
int sub_8008CEE()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v2 = *(v0 + 8);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        *(v0 + 4) = 7;
        *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 7;
        result = eStruct200A008_setUnk02(1);
    }
    return result;
}


// 0x8008d18
int sub_8008D18()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2

    result = sub_800A07C(*(v0 + 5));
    if ( result )
    {
        PlaySoundEffect(159, v2, v3);
        *v0 = 4;
        result = sub_801DACC(byte_200);
    }
    return result;
}


// 0x8008d40
void __fastcall sub_8008D40(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&dword_203CA70, 12);
}


// 0x8008d60
int sub_8008D60()
{
    int v0; // r0

    v0 = (*(&off_8008D7C + dword_203CA70))();
    sub_802DE5C(v0);
    return byte_203CA74[0];
}


// 0x8008d9c
int sub_8008D9C()
{
    int v0; // r5
    int result; // r0

    sub_8012DFC(0);
    sub_8012DFC(1);
    if ( !*(v0 + 3) )
    {
        *(v0 + 4) = 0;
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
        sub_801DF0C();
        sub_801DFA2(0);
        (sub_801E792)(0, 0);
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 4;
        *v0 = 4;
    }
    return result;
}


// 0x8008ddc
int sub_8008DDC()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r0
    int result; // r0
    signed int v5; // r0

    sub_8012DFC(0);
    sub_8012DFC(1);
    sub_800A032();
    battle_setFlags(1);
    sub_800AE0C();
    v2 = sub_800A6A6();
    if ( sub_800A97A(v2) )
        sub_800AB7C();
    v3 = sub_800A152();
    switch ( v3 )
    {
        case 1:
            ++*(*(v1 + oToolkit_S2034880_Ptr) + 24);
            result = 8;
            *v0 = 8;
            break;
        case 2:
            ++*(*(v1 + oToolkit_S2034880_Ptr) + 25);
            result = 12;
            *v0 = 12;
            break;
        case 7:
            result = 20;
            *v0 = 20;
            break;
        default:
            v5 = sub_800A046();
            if ( v5 == 255 )
            {
                result = sub_800A21C();
                if ( result )
                {
                    if ( result == 1 )
                    {
                        sub_800A028();
                        result = 20;
                        *v0 = 20;
                    }
                }
            }
            else
            {
                *(v0 + 5) = v5;
                sub_800A028();
                *v0 = 24;
                result = sub_801E15C();
            }
            break;
    }
    return result;
}


// 0x8008e7c
int sub_8008E7C()
{
    int v0; // r5

    return (*(&off_8008E90 + *(v0 + 2)))();
}


// 0x8008ea0
int sub_8008EA0()
{
    int v0; // r5
    int v1; // r10
    int v2; // r6
    int v3; // r0
    char v4; // r0
    int v5; // r2
    signed __int16 v6; // r4
    int result; // r0

    if ( !*(v0 + 3) )
    {
        v2 = sub_800A84E();
        sub_801DACC(19523);
        sub_801BED6(19523);
        v3 = sub_800A7E2();
        sub_8014040(v3);
        *(*(v1 + oToolkit_S2034880_Ptr) + 16) = *(*(v1 + oToolkit_S2034880_Ptr) + 13);
        *(v0 + 3) = 4;
        v4 = sub_802D246();
        v5 = 25;
        v6 = 65;
        if ( !(v4 & 2) )
        {
            v5 = 31;
            v6 = 102;
        }
        if ( v2 == 1 )
            v5 = 36;
        PlaySong(v5, 2, v5);
        *(v0 + 8) = v6;
        (sub_801E792)(20);
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        result = *(v0 + 8);
        if ( result <= 0 )
        {
            result = 12;
            *(v0 + 2) = 12;
        }
    }
    return result;
}


// 0x8008f10
int sub_8008F10()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v1 = *(v0 + 8);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x8008f2e
int sub_8008F2E()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        (sub_801E792)(88);
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 12;
        *(v0 + 2) = 12;
    }
    return result;
}


// 0x8008f52
int sub_8008F52()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v2 = *(v0 + 8);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        *(v0 + 4) = 1;
        *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 1;
        result = eStruct200A008_setUnk02(0);
    }
    return result;
}


// 0x8008f7c
int sub_8008F7C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r2
    signed __int16 v3; // r4
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(19523);
        sub_801BED6(19523);
        *(*(v1 + oToolkit_S2034880_Ptr) + 16) = *(*(v1 + oToolkit_S2034880_Ptr) + 13) ^ 1;
        if ( sub_802D246() & 8 )
            PlaySong(26, 8, v2);
        if ( sub_802D246() & 2 )
            v3 = 65;
        else
            v3 = 102;
        *(v0 + 8) = v3;
        (sub_801E792)(24);
        *(v0 + 3) = 4;
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        result = *(v0 + 8);
        if ( result <= 0 )
        {
            *(v0 + 4) = 2;
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 2;
            result = eStruct200A008_setUnk02(1);
        }
    }
    return result;
}


// 0x8008ff0
int sub_8008FF0()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r0
    signed int v4; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(19523);
        sub_801BED6(19523);
        *(v0 + 8) = 102;
        *(v0 + 3) = 4;
        (sub_801E792)(28);
    }
    --*(v0 + 8);
    result = sub_801E754();
    if ( !result )
    {
        v3 = *(v0 + 8);
        if ( sub_802D246() & &byte_400 && (v4 = sub_800AF50()) != 0 && v4 != 2 )
        {
            if ( v4 == 1 )
            {
                result = 8;
                *v0 = 8;
            }
            else
            {
                result = 12;
                *v0 = 12;
            }
        }
        else
        {
            result = 3;
            *(v0 + 4) = 3;
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 3;
        }
    }
    return result;
}


// 0x8009058
int sub_8009058()
{
    int v0; // r5

    return (*(&off_800906C + *(v0 + 2)))();
}


// 0x800907c
int sub_800907C()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_801DACC(19523);
        sub_801BED6(19523);
        (sub_801E792)(84);
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 4;
        *(v0 + 2) = 4;
    }
    return result;
}


// 0x80090ac
int sub_80090AC()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v1 = *(v0 + 8);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x80090ca
int sub_80090CA()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        (sub_801E792)(28);
        *(v0 + 8) = 0;
        *(v0 + 3) = 4;
    }
    result = sub_801E754();
    if ( !result )
    {
        result = 12;
        *(v0 + 2) = 12;
    }
    return result;
}


// 0x80090ee
int sub_80090EE()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 8) = 30;
        *(v0 + 3) = 4;
    }
    v2 = *(v0 + 8);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v0 + 8) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        *(v0 + 4) = 7;
        *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_14) = 7;
        result = eStruct200A008_setUnk02(1);
    }
    return result;
}


// 0x8009118
int sub_8009118()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2

    result = sub_800A07C(*(v0 + 5));
    if ( result )
    {
        PlaySoundEffect(159, v2, v3);
        *v0 = 4;
        result = sub_801DACC(byte_200);
    }
    return result;
}


// 0x8009140
void __fastcall sub_8009140(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&dword_203CA70, 12);
}


// 0x8009158
int sub_8009158()
{
    int v0; // r5
    int result; // r0
    u32 v2; // r0
    int v3; // r2
    int v4; // r2

    (*(&off_80091BC + *(v0 + 1)))();
    result = sub_802D246();
    if ( result & 8 )
    {
        v2 = sub_80103EC();
        if ( *(v2 + 36) > (*(v2 + 38) >> 2) )
        {
            result = *(v0 + 32);
            if ( *(v0 + 32) )
            {
                *(v0 + 32) = 0;
                sub_800065A(31, 0xFFFF, 0);
                result = sound_8000672(31, byte_100, v4);
            }
        }
        else
        {
            result = *(v0 + 32);
            if ( !*(v0 + 32) )
            {
                *(v0 + 32) = 1;
                sub_800065A(31, 0xFFFF, byte_100);
                result = sound_8000672(31, 282, v3);
            }
        }
    }
    return result;
}


// 0x80091f0
unsigned int sub_80091F0()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2
    int v3; // r3
    int v4; // r1
    int v5; // r2
    int v6; // r0
    unsigned int result; // r0
    unsigned int v8; // r0
    unsigned __int8 v9; // cf
    char v10; // r4
    char v11; // zf

    if ( *(v0 + 3) )
    {
        if ( !*(v0 + 2) )
        {
            sub_800927C();
            *(v0 + 2) = 4;
        }
        v8 = sub_800139A();
        v9 = __CFSHR__(v8, 2);
        result = v8 >> 2;
        if ( v9 )
        {
            sub_801DA48(1);
            sub_801BECC(1);
            v10 = 4;
            TestEventFlagFromImmediate(23, 53);
            if ( !v11 )
                v10 = 36;
            *(v0 + 1) = v10;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        v1 = sub_802D246();
        if ( v1 & &byte_400 )
            v4 = *(v0 + 26) + 1;
        else
            v4 = *(*(v0 + 60) + 5);
        *(v0 + 26) = v4;
        sub_80E06F8(v1, v4, v2, v3);
        sub_8007358();
        sub_800A028();
        sub_8014178();
        if ( sub_802D246() & 8 )
            v6 = 21;
        else
            v6 = *(*(v0 + 60) + 2);
        if ( v6 != 99 )
            PlaySong(v6, 8, v5);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x800927c
int sub_800927C()
{
    sub_801BECC(&dword_484);
    sub_801DA48(&dword_484);
    sub_801E5F8();
    sub_801DA24();
    return sub_801E0A0(0, 0);
}


// 0x80092a0
int sub_80092A0()
{
    int v0; // r5

    return (*(&off_80092B4 + *(v0 + 2)))();
}


// 0x80092c0
int sub_80092C0()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 3) )
    {
        v2 = *(v0 + 40);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 40) = result;
        if ( (result < 0) ^ v3 )
        {
            result = 4;
            *(v0 + 2) = 4;
        }
    }
    else if ( *(v0 + 26) )
    {
        *(v0 + 40) = 10;
        result = 4;
        *(v0 + 3) = 4;
    }
    else
    {
        *(v0 + 1) = 8;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x80092f0
int sub_80092F0()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + 3) )
    {
        result = sub_801E754();
        if ( !result )
        {
            result = 8;
            *(v0 + 2) = 8;
        }
    }
    else
    {
        (sub_801E792)(0, *(v0 + 26));
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009314
int sub_8009314()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 3) )
    {
        v2 = *(v0 + 40);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 40) = result;
        if ( (result < 0) ^ v3 )
        {
            *(v0 + 1) = 8;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        *(v0 + 40) = 10;
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009338
int sub_8009338()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    int result; // r0
    u32 v5; // r0
    u32 v6; // r0

    if ( !*(v0 + 3) )
    {
        sub_800A9CA(4);
        *(v0 + 3) = 1;
        sub_8026840(1, v1, v2, v3);
    }
    result = sub_8026A28();
    if ( result )
    {
        if ( result == 2 )
        {
            result = sub_800AABC();
        }
        else
        {
            v5 = sub_80103BC(0);
            if ( v5 )
                *(*(v5 + 88) + 15) = 1;
            v6 = sub_80103BC(1);
            if ( v6 )
                *(*(v6 + 88) + 15) = 1;
            *(v0 + 1) = 12;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    return result;
}


// 0x800938a
void __fastcall sub_800938A(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r0
    char v10; // r2
    int v11; // r0
    signed int v12; // r0
    int v13; // r0
    int v14; // r0
    int v15; // r0
    signed int v16; // r0
    int v17; // [sp-4h] [bp-Ch]

    if ( !*(v4 + 3) )
    {
        sub_80084C0(*(v4 + 3), a2, a3, a4);
        *(v4 + 3) = 4;
    }
    sub_800801C();
    sub_800B090();
    if ( v5 == 6 )
    {
        *(v4 + 1) = 8;
        *(v4 + 2) = 0;
        return;
    }
    if ( v5 )
    {
        v17 = v5;
        eStruct200A008_setUnk03(*(v4 + 7));
        if ( v17 == 1 )
        {
            v6 = setTwoStructs_800A840(1);
            v7 = sub_800AF84(v6);
            *(v4 + 30) = v7;
            v8 = eStruct200A008_setUnk00(v7);
            sub_800B6F2(v8);
            v9 = sub_802D234();
            v10 = 24;
            if ( v9 == 4 )
                goto LABEL_22;
            v10 = 28;
            if ( v9 == 5 )
                goto LABEL_22;
            v10 = 32;
            if ( v9 == 8 )
                goto LABEL_22;
            if ( sub_802D246() & 2 )
            {
                v11 = sub_802D246();
                v10 = 16;
                if ( !(v11 & &byte_400) )
                    goto LABEL_22;
                v12 = sub_800AF50();
                v10 = 16;
                if ( v12 )
                {
                    if ( v12 != 2 )
                        goto LABEL_22;
                }
            }
        }
        else if ( v17 == 2 )
        {
            v13 = setTwoStructs_800A840(2);
            v14 = sub_800AF84(v13);
            *(v4 + 30) = v14;
            eStruct200A008_setUnk00(v14);
            v15 = sub_802D246();
            if ( v15 & 8 )
            {
                if ( v15 & 2 )
                {
                    v10 = 16;
                    if ( !(v15 & &byte_400) )
                        goto LABEL_22;
                    v16 = sub_800AF50();
                    v10 = 16;
                    if ( v16 )
                    {
                        if ( v16 != 2 )
                            goto LABEL_22;
                    }
                }
            }
        }
        v10 = 20;
LABEL_22:
        *(v4 + 1) = v10;
        *(v4 + 2) = 0;
    }
}


// 0x800945c
int sub_800945C()
{
    int v0; // r5

    return (*(&off_8009470 + *(v0 + 2)))();
}


// 0x8009478
int sub_8009478()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + 3) )
    {
        if ( sub_800B46C(523190095) )
        {
            sub_800B460();
            sub_800B444();
            result = 4;
            *(v0 + 2) = 4;
        }
        else
        {
            result = *(v0 + 40) + 1;
            *(v0 + 40) = result;
            if ( result > 180 )
            {
                result = 12;
                *v0 = 12;
            }
        }
    }
    else
    {
        sub_800B428();
        *(v0 + 40) = 0;
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x80094b6
int sub_80094B6()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_802C34E(&unk_2035260);
        *(v0 + 3) = 4;
    }
    result = sub_802BD60();
    if ( !result )
    {
        *(v0 + 1) = 20;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x80094da
signed int sub_80094DA()
{
    int v0; // r5
    int v1; // r0
    signed int result; // r0
    int v3; // r1
    int v4; // r2
    char v5; // zf

    if ( *(v0 + 3) )
    {
        result = IsPaletteFadeActive();
        if ( !v5 )
        {
            musicGameState_8000784(result, v3, v4);
            sub_80035A2(0x1Au);
            result = 8;
            *v0 = 8;
        }
    }
    else
    {
        if ( sub_800A7A6(*(v0 + 3), 371, 382) && sub_800A832() == 1 )
            v1 = 4;
        else
            v1 = 12;
        engine_setScreeneffect(v1, 16);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x800951e
int sub_800951E()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    char v3; // r0
    char v4; // r2

    if ( *(v0 + 3) )
    {
        result = chatbox_mask_eFlags2009F38(128);
        if ( v2 )
        {
            v3 = sub_802D246();
            v4 = 16;
            if ( !(v3 & 2) )
                v4 = 20;
            *(v0 + 1) = v4;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        chatbox_runScript(TextScriptBattleTutFullSynchro, 10);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009552
int sub_8009552()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    int result; // r0
    char v4; // zf
    char v5; // r0
    char v6; // r2

    if ( *(v0 + 3) )
    {
        result = chatbox_mask_eFlags2009F38(128);
        if ( v4 )
        {
            v5 = sub_802D246();
            v6 = 16;
            if ( !(v5 & 2) )
                v6 = 20;
            *(v0 + 1) = v6;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        if ( *(*(v1 + oToolkit_S2034880_Ptr) + 7) > 1 )
            v2 = 32;
        else
            v2 = 16;
        chatbox_runScript(TextScriptDadCybeastTut, v2);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009594
int sub_8009594()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    char v3; // r0
    char v4; // r2

    if ( *(v0 + 3) )
    {
        result = chatbox_mask_eFlags2009F38(128);
        if ( v2 )
        {
            v3 = sub_802D246();
            v4 = 16;
            if ( !(v3 & 2) )
                v4 = 20;
            *(v0 + 1) = v4;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        chatbox_runScript(TextScriptShukoCrossTut, 3);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x80095c8
int sub_80095C8()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    char v3; // zf

    if ( *(v0 + 3) )
    {
        result = chatbox_mask_eFlags2009F38(128);
        if ( v3 )
        {
            *(v0 + 1) = 4;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        v1 = getPETNaviSelect();
        chatbox_runScript(TextScriptCommError87370C0, v1 + 115);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x800961c
int sub_800961C()
{
    int v0; // r5

    return (*(&off_8009630 + *(v0 + 1)))();
}


// 0x8009658
unsigned int sub_8009658()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2
    int v3; // r3
    int v4; // r1
    int v5; // r2
    int v6; // r0
    unsigned int result; // r0
    unsigned int v8; // r0
    unsigned __int8 v9; // cf
    char v10; // r4
    char v11; // zf

    if ( *(v0 + 3) )
    {
        if ( !*(v0 + 2) )
        {
            sub_80096E0();
            *(v0 + 2) = 4;
        }
        v8 = sub_800139A();
        v9 = __CFSHR__(v8, 2);
        result = v8 >> 2;
        if ( v9 )
        {
            sub_801DA48(1);
            sub_801BECC(1);
            v10 = 4;
            TestEventFlagFromImmediate(23, 53);
            if ( !v11 )
                v10 = 36;
            *(v0 + 1) = v10;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        v1 = sub_802D246();
        if ( v1 & &byte_400 )
            v4 = *(v0 + 26) + 1;
        else
            v4 = *(*(v0 + 60) + 5);
        *(v0 + 26) = v4;
        sub_80E06F8(v1, v4, v2, v3);
        sub_8007358();
        sub_800A028();
        sub_8014178();
        if ( sub_802D246() & 8 )
            v6 = 21;
        else
            v6 = *(*(v0 + 60) + 2);
        if ( v6 != 99 )
            PlaySong(v6, 8, v5);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x80096e0
int sub_80096E0()
{
    sub_801BECC(dword_404);
    sub_801DA48(dword_404);
    sub_801DA24();
    sub_801DF0C();
    return sub_801DFA2(0);
}


// 0x8009704
int sub_8009704()
{
    int *v0; // r5

    sub_8009720(v0[32], v0[33]);
    return sub_8009720(v0[36], v0[37]);
}


// 0x8009720
int __fastcall sub_8009720(int result, int a2)
{
    int v2; // r2

    if ( result )
    {
        if ( a2 )
        {
            v2 = *(result + 36) + *(a2 + 36);
            *(result + 36) = v2;
            *(a2 + 36) = v2;
        }
    }
    return result;
}


// 0x8009734
int sub_8009734()
{
    int v0; // r5

    return (*(&off_8009748 + *(v0 + 2)))();
}


// 0x8009754
int sub_8009754()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 3) )
    {
        v2 = *(v0 + 40);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 40) = result;
        if ( (result < 0) ^ v3 )
        {
            result = 4;
            *(v0 + 2) = 4;
        }
    }
    else if ( *(v0 + 26) )
    {
        *(v0 + 40) = 10;
        result = 4;
        *(v0 + 3) = 4;
    }
    else
    {
        *(v0 + 1) = 8;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8009784
int sub_8009784()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + 3) )
    {
        result = sub_801E754();
        if ( !result )
        {
            result = 8;
            *(v0 + 2) = 8;
        }
    }
    else
    {
        (sub_801E792)(0, *(v0 + 26));
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x80097a8
int sub_80097A8()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 3) )
    {
        v2 = *(v0 + 40);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 40) = result;
        if ( (result < 0) ^ v3 )
        {
            *(v0 + 1) = 8;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        *(v0 + 40) = 10;
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x80097cc
int sub_80097CC()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_800A9CA(4);
        *(v0 + 3) = 1;
        sub_802A866();
        battle_setFlags(1);
    }
    result = sub_802A87C();
    if ( result )
    {
        if ( result == 2 )
        {
            result = sub_800AABC();
        }
        else
        {
            sub_800A9D6(4);
            sub_8009704();
            *(v0 + 1) = 12;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    return result;
}


// 0x800980e
void __fastcall sub_800980E(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r0
    char v10; // r2
    signed int v11; // r0
    int v12; // r0
    int v13; // r0
    int v14; // r0
    char v15; // ST00_1
    signed int v16; // r0
    int v17; // [sp-4h] [bp-Ch]

    if ( !*(v4 + 3) )
    {
        sub_8008928(*(v4 + 3), a2, a3, a4);
        *(v4 + 3) = 4;
    }
    sub_80084F0();
    sub_800B090();
    if ( v5 )
    {
        v17 = v5;
        eStruct200A008_setUnk03(*(v4 + 7));
        switch ( v17 )
        {
            case 1:
                v6 = setTwoStructs_800A840(1);
                v7 = sub_800AF84(v6);
                *(v4 + 30) = v7;
                v8 = eStruct200A008_setUnk00(v7);
                sub_800B6F2(v8);
                if ( sub_802D246() & 2 )
                {
                    v9 = sub_802D246();
                    v10 = 16;
                    if ( !(v9 & &byte_400) )
                        goto LABEL_18;
                    v11 = sub_800AF50();
                    v10 = 16;
                    if ( v11 )
                        goto LABEL_18;
                }
                break;
            case 2:
                v12 = setTwoStructs_800A840(2);
                v13 = sub_800AF84(v12);
                *(v4 + 30) = v13;
                eStruct200A008_setUnk00(v13);
                v14 = sub_802D246();
                if ( v14 & 8 )
                {
                    if ( v14 & 2 )
                    {
                        if ( !(v14 & &byte_400) )
                            goto LABEL_18;
                        v15 = v10;
                        v16 = sub_800AF50();
                        v10 = v15;
                        if ( v16 )
                            goto LABEL_18;
                    }
                }
                break;
            case 7:
                setTwoStructs_800A840(7);
                break;
        }
        v10 = 20;
LABEL_18:
        *(v4 + 1) = v10;
        *(v4 + 2) = 0;
    }
}


// 0x80098bc
int sub_80098BC()
{
    int v0; // r5

    return (*(&off_80098D0 + *(v0 + 2)))();
}


// 0x80098d8
int sub_80098D8()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + 3) )
    {
        if ( sub_800B46C(523190095) )
        {
            sub_800B460();
            sub_800B444();
            result = 4;
            *(v0 + 2) = 4;
        }
        else
        {
            result = *(v0 + 40) + 1;
            *(v0 + 40) = result;
            if ( result > 180 )
            {
                result = 12;
                *v0 = 12;
            }
        }
    }
    else
    {
        sub_800B428();
        *(v0 + 40) = 0;
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009916
int sub_8009916()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_802C34E(&unk_2035260);
        *(v0 + 3) = 4;
    }
    result = sub_802BD60();
    if ( !result )
    {
        *(v0 + 1) = 20;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x800993a
signed int sub_800993A()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r1
    int v3; // r2
    char v4; // zf

    if ( *(v0 + 3) )
    {
        result = IsPaletteFadeActive();
        if ( !v4 )
        {
            musicGameState_8000784(result, v2, v3);
            sub_80035A2(0x1Au);
            result = 8;
            *v0 = 8;
        }
    }
    else
    {
        engine_setScreeneffect(12, 16);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009966
int sub_8009966()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    char v3; // zf

    if ( *(v0 + 3) )
    {
        result = chatbox_mask_eFlags2009F38(128);
        if ( v3 )
        {
            *(v0 + 1) = 4;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        v1 = getPETNaviSelect();
        chatbox_runScript(TextScriptCommError87370C0, v1 + 115);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x80099a4
int sub_80099A4()
{
    int v0; // r5

    return (*(&off_80099B8 + *(v0 + 1)))();
}


// 0x80099e0
unsigned int sub_80099E0()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2
    int v3; // r3
    int v4; // r1
    int v5; // r2
    int v6; // r0
    unsigned int result; // r0
    unsigned int v8; // r0
    unsigned __int8 v9; // cf
    char v10; // r4
    char v11; // zf

    if ( *(v0 + 3) )
    {
        if ( !*(v0 + 2) )
        {
            sub_8009A68();
            *(v0 + 2) = 4;
        }
        v8 = sub_800139A();
        v9 = __CFSHR__(v8, 2);
        result = v8 >> 2;
        if ( v9 )
        {
            sub_801DA48(1);
            sub_801BECC(1);
            v10 = 4;
            TestEventFlagFromImmediate(23, 53);
            if ( !v11 )
                v10 = 36;
            *(v0 + 1) = v10;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        v1 = sub_802D246();
        if ( v1 & &byte_400 )
            v4 = *(v0 + 26) + 1;
        else
            v4 = *(*(v0 + 60) + 5);
        *(v0 + 26) = v4;
        sub_80E06F8(v1, v4, v2, v3);
        sub_8007358();
        sub_800A028();
        sub_8014178();
        if ( sub_802D246() & 8 )
            v6 = 21;
        else
            v6 = *(*(v0 + 60) + 2);
        if ( v6 != 99 )
            PlaySong(v6, 8, v5);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009a68
int sub_8009A68()
{
    sub_801BECC(dword_404);
    sub_801DA48(dword_404);
    sub_801DA24();
    return sub_801E0A0(0, 0);
}


// 0x8009a88
int sub_8009A88()
{
    int v0; // r5

    return (*(&off_8009A9C + *(v0 + 2)))();
}


// 0x8009aa8
int sub_8009AA8()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 3) )
    {
        v2 = *(v0 + 40);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 40) = result;
        if ( (result < 0) ^ v3 )
        {
            result = 4;
            *(v0 + 2) = 4;
        }
    }
    else if ( *(v0 + 26) )
    {
        *(v0 + 40) = 10;
        result = 4;
        *(v0 + 3) = 4;
    }
    else
    {
        *(v0 + 1) = 12;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8009ad8
int sub_8009AD8()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + 3) )
    {
        result = sub_801E754();
        if ( !result )
        {
            result = 8;
            *(v0 + 2) = 8;
        }
    }
    else
    {
        (sub_801E792)(0, *(v0 + 26));
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009afc
int sub_8009AFC()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 3) )
    {
        v2 = *(v0 + 40);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 40) = result;
        if ( (result < 0) ^ v3 )
        {
            *(v0 + 1) = 12;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        *(v0 + 40) = 10;
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009b20
void __fastcall sub_8009B20(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r0
    int v10; // r0
    int v11; // r0
    char v12; // r2
    char v13; // ST00_1
    signed int v14; // r0
    int v15; // [sp-4h] [bp-Ch]

    if ( !*(v4 + 3) )
    {
        sub_8008D40(*(v4 + 3), a2, a3, a4);
        *(v4 + 3) = 4;
    }
    sub_8008950();
    sub_800B090();
    if ( v5 )
    {
        v15 = v5;
        eStruct200A008_setUnk03(*(v4 + 7));
        switch ( v15 )
        {
            case 1:
                v6 = setTwoStructs_800A840(1);
                v7 = sub_800AF84(v6);
                *(v4 + 30) = v7;
                v8 = eStruct200A008_setUnk00(v7);
                sub_800B6F2(v8);
                break;
            case 2:
                v9 = setTwoStructs_800A840(2);
                v10 = sub_800AF84(v9);
                *(v4 + 30) = v10;
                eStruct200A008_setUnk00(v10);
                v11 = sub_802D246();
                if ( v11 & 8 )
                {
                    if ( v11 & 2 )
                    {
                        if ( !(v11 & &byte_400) )
                            goto LABEL_15;
                        v13 = v12;
                        v14 = sub_800AF50();
                        v12 = v13;
                        if ( v14 )
                            goto LABEL_15;
                    }
                }
                break;
            case 7:
                setTwoStructs_800A840(7);
                break;
        }
        v12 = 20;
LABEL_15:
        *(v4 + 1) = v12;
        *(v4 + 2) = 0;
    }
}


// 0x8009bac
int sub_8009BAC()
{
    int v0; // r5

    return (*(&off_8009BC0 + *(v0 + 2)))();
}


// 0x8009bc8
int sub_8009BC8()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + 3) )
    {
        if ( sub_800B46C(523190095) )
        {
            sub_800B460();
            sub_800B444();
            result = 4;
            *(v0 + 2) = 4;
        }
        else
        {
            result = *(v0 + 40) + 1;
            *(v0 + 40) = result;
            if ( result > 180 )
            {
                result = 12;
                *v0 = 12;
            }
        }
    }
    else
    {
        sub_800B428();
        *(v0 + 40) = 0;
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009c06
int sub_8009C06()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_802C34E(&unk_2035260);
        *(v0 + 3) = 4;
    }
    result = sub_802BD60();
    if ( !result )
    {
        *(v0 + 1) = 20;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8009c2a
signed int sub_8009C2A()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r1
    int v3; // r2
    char v4; // zf

    if ( *(v0 + 3) )
    {
        result = IsPaletteFadeActive();
        if ( !v4 )
        {
            musicGameState_8000784(result, v2, v3);
            sub_80035A2(0x1Au);
            result = 8;
            *v0 = 8;
        }
    }
    else
    {
        engine_setScreeneffect(12, 16);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009c56
int sub_8009C56()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    char v3; // zf

    if ( *(v0 + 3) )
    {
        result = chatbox_mask_eFlags2009F38(128);
        if ( v3 )
        {
            *(v0 + 1) = 4;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        v1 = getPETNaviSelect();
        chatbox_runScript(TextScriptCommError87370C0, v1 + 115);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009c94
int sub_8009C94()
{
    int v0; // r5

    return (*(&off_8009CA8 + *(v0 + 1)))();
}


// 0x8009cd0
unsigned int sub_8009CD0()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2
    int v3; // r3
    int v4; // r1
    int v5; // r2
    int v6; // r0
    unsigned int result; // r0
    unsigned int v8; // r0
    unsigned __int8 v9; // cf
    char v10; // r4
    char v11; // zf

    if ( *(v0 + 3) )
    {
        if ( !*(v0 + 2) )
        {
            sub_8009D58();
            *(v0 + 2) = 4;
        }
        v8 = sub_800139A();
        v9 = __CFSHR__(v8, 2);
        result = v8 >> 2;
        if ( v9 )
        {
            sub_801DA48(1);
            sub_801BECC(1);
            v10 = 4;
            TestEventFlagFromImmediate(23, 53);
            if ( !v11 )
                v10 = 36;
            *(v0 + 1) = v10;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        v1 = sub_802D246();
        if ( v1 & &byte_400 )
            v4 = *(v0 + 26) + 1;
        else
            v4 = *(*(v0 + 60) + 5);
        *(v0 + 26) = v4;
        sub_80E06F8(v1, v4, v2, v3);
        sub_8007358();
        sub_800A028();
        sub_8014178();
        if ( sub_802D246() & 8 )
            v6 = 21;
        else
            v6 = *(*(v0 + 60) + 2);
        if ( v6 != 99 )
            PlaySong(v6, 8, v5);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009d58
int sub_8009D58()
{
    sub_801BECC(dword_404);
    sub_801DA48(dword_404);
    sub_801DA24();
    return sub_801E0A0(0, 0);
}


// 0x8009d78
int sub_8009D78()
{
    int v0; // r5

    return (*(&off_8009D8C + *(v0 + 2)))();
}


// 0x8009d98
int sub_8009D98()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 3) )
    {
        v2 = *(v0 + 40);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 40) = result;
        if ( (result < 0) ^ v3 )
        {
            result = 4;
            *(v0 + 2) = 4;
        }
    }
    else if ( *(v0 + 26) )
    {
        *(v0 + 40) = 10;
        result = 4;
        *(v0 + 3) = 4;
    }
    else
    {
        *(v0 + 1) = 8;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8009dc8
int sub_8009DC8()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + 3) )
    {
        result = sub_801E754();
        if ( !result )
        {
            result = 8;
            *(v0 + 2) = 8;
        }
    }
    else
    {
        (sub_801E792)(0, *(v0 + 26));
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009dec
int sub_8009DEC()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 3) )
    {
        v2 = *(v0 + 40);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 40) = result;
        if ( (result < 0) ^ v3 )
        {
            *(v0 + 1) = 12;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        *(v0 + 40) = 10;
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009e10
int sub_8009E10()
{
    int v0; // r5

    return (*(&off_8009E24 + *(v0 + 2)))();
}


// 0x8009e2c
signed int RunTextScriptDustManUndernetTut_8009E2C()
{
    int v0; // r5
    signed int result; // r0

    chatbox_runScript(TextScriptDustManUndernetTut, *(*(v0 + 144) + 4));
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x8009e40
int sub_8009E40()
{
    int v0; // r5
    int result; // r0

    result = chatbox_mask_eFlags2009F38(128);
    if ( !result )
    {
        *(v0 + 1) = 12;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8009e56
void __fastcall sub_8009E56(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r0
    int v10; // r0
    int v11; // r0
    char v12; // r2
    char v13; // ST00_1
    signed int v14; // r0
    int v15; // [sp-4h] [bp-Ch]

    if ( !*(v4 + 3) )
    {
        sub_8009140(*(v4 + 3), a2, a3, a4);
        *(v4 + 3) = 4;
    }
    sub_8008D60();
    sub_800B090();
    if ( v5 )
    {
        v15 = v5;
        eStruct200A008_setUnk03(*(v4 + 7));
        switch ( v15 )
        {
            case 1:
                v6 = setTwoStructs_800A840(1);
                v7 = sub_800AF84(v6);
                *(v4 + 30) = v7;
                v8 = eStruct200A008_setUnk00(v7);
                sub_800B6F2(v8);
                break;
            case 2:
                v9 = setTwoStructs_800A840(2);
                v10 = sub_800AF84(v9);
                *(v4 + 30) = v10;
                eStruct200A008_setUnk00(v10);
                v11 = sub_802D246();
                if ( v11 & 8 )
                {
                    if ( v11 & 2 )
                    {
                        if ( !(v11 & &byte_400) )
                            goto LABEL_15;
                        v13 = v12;
                        v14 = sub_800AF50();
                        v12 = v13;
                        if ( v14 )
                            goto LABEL_15;
                    }
                }
                break;
            case 7:
                setTwoStructs_800A840(7);
                break;
        }
        v12 = 20;
LABEL_15:
        *(v4 + 1) = v12;
        *(v4 + 2) = 0;
    }
}


// 0x8009ee2
int sub_8009EE2()
{
    int v0; // r5

    return (*(&off_8009EF4 + *(v0 + 2)))();
}


// 0x8009efc
int sub_8009EFC()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + 3) )
    {
        if ( sub_800B46C(523190095) )
        {
            sub_800B460();
            sub_800B444();
            result = 4;
            *(v0 + 2) = 4;
        }
        else
        {
            result = *(v0 + 40) + 1;
            *(v0 + 40) = result;
            if ( result > 180 )
            {
                result = 12;
                *v0 = 12;
            }
        }
    }
    else
    {
        sub_800B428();
        *(v0 + 40) = 0;
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009f3a
int sub_8009F3A()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 3) )
    {
        sub_802C34E(&unk_2035260);
        *(v0 + 3) = 4;
    }
    result = sub_802BD60();
    if ( !result )
    {
        *(v0 + 1) = 20;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8009f5e
signed int sub_8009F5E()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r1
    int v3; // r2
    char v4; // zf

    if ( *(v0 + 3) )
    {
        result = IsPaletteFadeActive();
        if ( !v4 )
        {
            musicGameState_8000784(result, v2, v3);
            sub_80035A2(0x1Au);
            result = 8;
            *v0 = 8;
        }
    }
    else
    {
        engine_setScreeneffect(12, 16);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009f8a
int sub_8009F8A()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    char v3; // zf

    if ( *(v0 + 3) )
    {
        result = chatbox_mask_eFlags2009F38(128);
        if ( v3 )
        {
            *(v0 + 1) = 4;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        v1 = getPETNaviSelect();
        chatbox_runScript(TextScriptCommError87370C0, v1 + 115);
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x8009fcc
int sub_8009FCC()
{
    int v0; // r6
    signed int *v1; // r7
    int result; // r0

    v0 = *byte_3000EA8;
    v1 = dword_3002180;
    while ( v0 )
    {
        result = sub_802FE28(*v1, *(dword_4 + v1), *(&dword_8 + v1), *(&dword_C + v1));
        --v0;
        v1 += 4;
    }
    return result;
}


// 0x8009ff8
int __fastcall sub_8009FF8(int result, int a2, int a3, int a4)
{
    unsigned int v4; // r4
    int *v5; // r7

    v4 = 16 * *byte_3000EA8;
    v5 = &dword_3002180[4 * *byte_3000EA8];
    *v5 = result;
    v5[1] = a2;
    v5[2] = a3;
    v5[3] = a4;
    *byte_3000EA8 = (v4 >> 4) + 1;
    return result;
}


// 0x800a01c
// () -> void
int sub_800A01C()
{
    int result; // r0

    result = 0;
    *byte_3000EA8 = 0;
    return result;
}


// 0x800a028
signed int sub_800A028()
{
    int v0; // r10
    signed int result; // r0

    result = 1;
    *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0a) = 1;
    return result;
}


// 0x800a032
int sub_800A032()
{
    int v0; // r10
    int result; // r0

    result = 0;
    *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0a) = 0;
    return result;
}


// 0x800a03c
int battle_isPaused()
{
    int v0; // r10

    return *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0a);
}


// 0x800a046
signed int sub_800A046()
{
    signed int v0; // r1
    signed int result; // r0
    int v2; // r1

    v0 = battle_isBattleOver();
    result = 255;
    if ( !v0 )
    {
        v2 = battle_isTimeStop();
        result = 255;
        if ( !v2 )
        {
            if ( dword_2036824 & 8 )
            {
                result = 0;
            }
            else if ( dword_203682C & 8 )
            {
                result = 1;
            }
        }
    }
    return result;
}


// 0x800a07c
signed int __fastcall sub_800A07C(int a1)
{
    __int16 v1; // r1
    signed int result; // r0

    v1 = dword_2036820[2 * a1 + 1];
    result = 0;
    if ( v1 & 8 )
        result = 1;
    return result;
}


// 0x800a098
// () -> !zf
int battle_isTimeStop()
{
    return battle_getFlags() & 4;
}


// 0x800a0a4
BOOL battle_isTimeStopPauseOrBattleFlags0x20_800a0a4()
{
    char v0; // zf

    battle_isTimeStop();
    return !v0 || !battle_isPaused() || battle_getFlags() & 0x20;
}


// 0x800a0c6
int *sub_800A0C6()
{
    int *result; // r0

    dword_2036820[0] = 0;
    dword_2036824 = 0;
    result = &dword_2036828;
    dword_2036828 = 0;
    dword_203682C = 0;
    return result;
}


// 0x800a0d6
int __fastcall sub_800A0D6(int a1, int a2)
{
    int v2; // r0
    int *v3; // r3
    __int16 v4; // r2
    int result; // r0

    v2 = 2 * a1;
    v3 = &dword_2036820[v2];
    v4 = HIWORD(dword_2036820[v2]);
    *(v3 + 1) = a2;
    *(v3 + 2) = ~v4 & a2;
    result = ~a2;
    *(v3 + 3) = v4 & ~a2;
    return result;
}


// 0x800a0f4
int *__fastcall sub_800A0F4(int a1)
{
    return &dword_2036820[2 * a1];
}


// 0x800a104
int sub_800A104()
{
    int v0; // r5
    int v1; // r10
    int result; // r0

    result = *(*(v0 + 88) + 2);
    if ( !*(*(v0 + 88) + 2) )
    {
        result = *(v0 + 22) + 4;
        --*(*(v1 + oToolkit_S2034880_Ptr) + result);
    }
    return result;
}


// 0x800a11c
int sub_800A11C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    signed int v3; // r2
    int *v4; // r1
    int result; // r0

    v2 = *(v1 + oToolkit_S2034880_Ptr);
    --*(v2 + *(v0 + 22) + 18);
    v3 = 0;
    v4 = (v2 + 128);
    do
    {
        result = *v4;
        if ( *v4 == v0 )
        {
            result = 0;
            *v4 = 0;
        }
        ++v4;
        ++v3;
    }
    while ( v3 < 8 );
    return result;
}


// 0x800a142
int sub_800A142()
{
    int v0; // r5
    int v1; // r10
    int result; // r0

    result = *(v0 + 22) + 18;
    --*(*(v1 + oToolkit_S2034880_Ptr) + result);
    return result;
}


// 0x800a152
signed int sub_800A152()
{
    int v0; // r10
    char v1; // zf
    _BYTE *v2; // r0
    int v3; // r2
    signed int result; // r0

    battle_isTimeStop();
    if ( !v1 )
        return 0;
    v2 = *(v0 + oToolkit_S2034880_Ptr);
    v3 = v2[13];
    if ( v2[4] )
    {
        if ( v2[5] )
        {
            if ( v2[11] )
                return 7;
            return 0;
        }
        result = 1;
        if ( v3 )
            result = 2;
    }
    else
    {
        result = 2;
        if ( v3 )
            result = 1;
    }
    return result;
}


// 0x800a18e
signed int battle_isBattleOver()
{
    int v0; // r10
    signed int result; // r0
    _BYTE *v2; // r3

    result = 1;
    v2 = *(v0 + oToolkit_S2034880_Ptr);
    if ( v2[18] && v2[19] && !v2[11] )
        result = 0;
    return result;
}


// 0x800a1aa
BOOL sub_800A1AA()
{
    char v0; // zf

    battle_isTimeStop();
    return v0 && !battle_isBattleOver() && sub_800A70C() >= &dword_2D0;
}


// 0x800a1d0
BOOL sub_800A1D0()
{
    char v0; // zf
    int v1; // r0
    int v2; // r0
    BOOL result; // r0

    battle_isTimeStop();
    result = 0;
    if ( v0 && !battle_isBattleOver() )
    {
        if ( ((v1 = sub_80136CC(0, 44), v1 == 23) || v1 == 24 || (v2 = sub_80136CC(1, 44), v2 == 23) || v2 == 24)
            && battle_getFlags() & 2
            || battle_getFlags() & 0x10 )
        {
            result = 1;
        }
    }
    return result;
}


// 0x800a21c
BOOL sub_800A21C()
{
    char v0; // zf

    battle_isTimeStop();
    return v0 && !battle_isBattleOver() && sub_801DFE4() == 0x4000;
}


// 0x800a244
int __fastcall sub_800A244(int a1)
{
    char v1; // zf
    int v2; // ST00_4
    int v3; // r0
    signed int v5; // [sp-4h] [bp-8h]

    if ( sub_800A8F8(a1) != 1 )
        return 0;
    battle_isTimeStop();
    if ( !v1 )
        return 0;
    if ( battle_isBattleOver() )
        return 0;
    v2 = sub_802E070(0)[80];
    if ( v2 | sub_802E070(1)[80] )
        return 0;
    v5 = sub_800A29A(0);
    v3 = sub_802D246() & 8;
    if ( v3 )
        v3 = sub_800A29A(1);
    return v3 | v5;
}


// 0x800a29a
signed int __fastcall sub_800A29A(int a1)
{
    int v1; // r4
    signed int result; // r0

    v1 = a1;
    if ( *(sub_802E070(a1) + 20) >= sub_2900 && LOWORD(dword_2036820[2 * v1 + 1]) & byte_300 )
        result = 1 << v1;
    else
        result = 0;
    return result;
}


// 0x800a2d0
int __fastcall sub_800A2D0(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_S2034880_Ptr) + 50) = result;
    return result;
}


// 0x800a2d8
int __fastcall battle_setFlags(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_S2034880_Ptr) + 50) |= result;
    return result;
}


// 0x800a2e4
int __fastcall battle_clearFlags(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_S2034880_Ptr) + 50) &= ~result;
    return result;
}


// 0x800a2f0
int battle_getFlags()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2034880_Ptr) + 50);
}


// 0x800a2f8
int sub_800A2F8()
{
    int v0; // r10
    int v5; // r3
    unsigned __int8 *v6; // r1
    int result; // r0

    __asm { SVC         6 }
    *(*(v0 + oToolkit_S20047CC_Ptrs) + 43) = *(*(v0 + oToolkit_S20047CC_Ptrs) + 62);
    v5 = *(v0 + oToolkit_S2034880_Ptr);
    v6 = *(v5 + 60);
    *(v5 + 15) = v6[3];
    result = *v6;
    *(v5 + 6) = result;
    return result;
}


// 0x800a318
void __fastcall sub_800A318(int a1)
{
    int v1; // r10
    signed int v2; // r7
    int v3; // r0
    char v4; // r4
    u16 *v5; // r0
    u16 *v6; // ST00_4
    int v7; // r0
    int v8; // r7
    int v9; // r0
    int v10; // r3
    __int16 v11; // r4
    int v12; // r6
    signed int v13; // r0
    int v14; // r2
    int v15; // r1
    int v16; // r3
    __int16 v17; // r4
    __int16 v18; // r4
    __int16 v19; // r4
    u16 *v20; // [sp-4h] [bp-18h]

    v2 = 0;
    v3 = sub_802D246();
    v4 = v3;
    if ( v3 & 0x200000 )
    {
        v5 = &unk_2039AA0;
    }
    else
    {
        v5 = dword_802137C[sub_802D234()];
        if ( !v5 )
            v5 = *(v1 + oToolkit_S_Chip_2002178_Ptr);
    }
    if ( v5 == *(v1 + oToolkit_S_Chip_2002178_Ptr) )
    {
        v6 = v5;
        v7 = getPETNaviSelect();
        v5 = &v6[30 * sub_800A540(v7, 45)];
        v2 = 1;
    }
    v20 = v5;
    CopyHalfwords(v5, byte_203CDB0, 60);
    if ( !v2 )
        sub_800A7EA(v20);
    if ( v4 & 0x80 )
    {
        v8 = 0;
        v9 = sub_800A4E0(128);
        v10 = 2 * v9;
        if ( v9 != 255 )
        {
            v9 = byte_203CDB0;
            v11 = *byte_203CDB0;
            *byte_203CDB0 = *&byte_203CDB0[v10];
            *&byte_203CDB0[v10] = v11;
            v8 = 1;
            *(*(v1 + oToolkit_S2034880_Ptr) + 23) = 1;
        }
        v12 = 0;
        v13 = sub_800A506(v9);
        v14 = 2 * v13;
        v16 = 2 * v15;
        if ( v13 != 255 )
        {
            if ( v16 == 56 )
            {
                v18 = *byte_203CDEA;
                *byte_203CDEA = *&byte_203CDB0[v14];
                *&byte_203CDB0[v14] = v18;
            }
            else
            {
                v17 = word_203CDE8;
                word_203CDE8 = *&byte_203CDB0[v14];
                *&byte_203CDB0[v14] = v17;
                v19 = *byte_203CDEA;
                *byte_203CDEA = *&byte_203CDB0[v16];
                *&byte_203CDB0[v16] = v19;
            }
            v12 = 1;
            *(*(v1 + oToolkit_S2034880_Ptr) + 68) = 1;
        }
        sub_800A570(byte_203CDB0, v8, v12);
    }
}


// 0x800a3e4
void sub_800A3E4()
{
    int v0; // r10
    signed int v1; // r7
    int v2; // r0
    char v3; // r4
    _WORD *v4; // r0
    _WORD *v5; // ST00_4
    int v6; // r0
    _WORD *v7; // r6
    int v8; // r0
    signed int v9; // r0
    int v10; // r1
    signed int v11; // r2
    signed int v12; // r3
    int v13; // [sp+0h] [bp-20h]
    int v14; // [sp+4h] [bp-1Ch]
    int v15; // [sp+8h] [bp-18h]

    v13 = 255;
    v14 = 255;
    v15 = 255;
    v1 = 0;
    v2 = sub_802D246();
    v3 = v2;
    if ( v2 & 0x200000 )
    {
        v4 = &unk_2039AA0;
    }
    else
    {
        v4 = dword_802137C[sub_802D234()];
        if ( !v4 )
            v4 = *(v0 + oToolkit_S_Chip_2002178_Ptr);
    }
    if ( v4 == *(v0 + oToolkit_S_Chip_2002178_Ptr) )
    {
        v5 = v4;
        v6 = getPETNaviSelect();
        v4 = &v5[30 * sub_800A540(v6, 45)];
        v1 = 1;
    }
    v7 = v4;
    if ( v3 & 0x80 )
    {
        v8 = sub_800A4E0(128);
        if ( v8 != 255 )
        {
            v13 = 2 * v8;
            *(*(v0 + oToolkit_S2034880_Ptr) + 23) = 1;
        }
        v9 = sub_800A506(v8);
        if ( v9 != 255 )
        {
            v14 = 2 * v9;
            v15 = 2 * v10;
            *(*(v0 + oToolkit_S2034880_Ptr) + 68) = 1;
        }
    }
    v11 = 0;
    v12 = 0;
    if ( v13 != 255 )
        v12 = 2;
    do
    {
        if ( v13 == v11 )
        {
            *byte_203CDB0 = v7[v11 / 2u];
        }
        else if ( v14 == v11 )
        {
            word_203CDE8 = v7[v11 / 2u];
        }
        else if ( v15 == v11 )
        {
            *byte_203CDEA = v7[v11 / 2u];
        }
        else
        {
            *&byte_203CDB0[v12] = v7[v11 / 2u];
            v12 += 2;
        }
        v11 += 2;
    }
    while ( v11 < 60 );
    if ( !v1 )
        sub_800A7EA(v7);
    if ( v3 & 0x80 )
        sub_800A570(byte_203CDB0, *(*(v0 + oToolkit_S2034880_Ptr) + 23), *(*(v0 + oToolkit_S2034880_Ptr) + 68));
}


// 0x800a4e0
int __fastcall sub_800A4E0(int a1)
{
    int v2; // r0
    int v3; // r4
    int v4; // r0

    if ( sub_802D234() == 1 )
        return 255;
    v2 = getPETNaviSelect();
    v3 = v2;
    v4 = sub_800A540(v2, 45);
    return sub_800A540(v3, v4 + 46);
}


// 0x800a506
signed int __fastcall sub_800A506(int a1)
{
    int v2; // r4
    int v3; // r6
    int v4; // ST00_4

    if ( sub_802D234() == 1 )
        return 255;
    v2 = getPETNaviSelect();
    v3 = 2 * sub_800A540(v2, 45);
    v4 = sub_800A540(v2, v3 + 86);
    sub_800A540(v2, v3 + 87);
    return v4;
}


// 0x800a540
int __fastcall sub_800A540(int a1, int a2)
{
    int v2; // r6
    int v3; // r4
    int v4; // r0
    int result; // r0

    v2 = a1;
    v3 = a2;
    v4 = sub_802D246();
    if ( v4 & 0x200000 )
        result = GetNaviStats203CCE0Byte(v4, v3);
    else
        result = GetCurPETNaviStatsByte(v2);
    return result;
}


// 0x800a570
void __fastcall sub_800A570(__int16 *a1, int a2, int a3)
{
    int v3; // r10
    __int16 *v4; // r7
    int v5; // r5
    int v6; // r6
    signed int v7; // r4
    int *v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r4
    int v16; // r4
    __int16 v17; // r3
    __int16 v18; // r3
    __int16 *v19; // [sp+0h] [bp-20h]
    int v20; // [sp+4h] [bp-1Ch]
    int v21; // [sp+8h] [bp-18h]

    v19 = a1;
    v20 = a2;
    v21 = a3;
    v4 = a1;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
        if ( *(getChip8021DA8(*v4 & 0x1FF) + offsetof(ChipData, elemIdx)) == 2 )
            word_2033040[v6++] = *v4;
        else
            *(dword_2033000 + v5++) = *v4;
        ++v4;
        ++v7;
    }
    while ( v7 < 30 );
    v8 = dword_2033000;
    v9 = v5;
    if ( v5 )
    {
        v10 = v5;
        if ( v20 )
        {
            v8 = dword_2033000 + 2;
            v9 = v5 - 1;
            v10 = v5 - 1;
        }
        if ( v21 )
        {
            v9 -= 2;
            v10 -= 2;
        }
        sub_8000D12(v8, v9, v10);
    }
    if ( v6 )
    {
        sub_8000D12(word_2033040, v6, v6);
        if ( sub_802D234() == 1 )
        {
            v16 = 0;
            do
            {
                GetPositiveSignedRNG1();
                __asm { SVC         6 }
                v5 = sub_800A672(dword_2033000, v5, word_2033040[v16++], 19);
            }
            while ( v16 < v6 );
        }
        else
        {
            v11 = 0;
            do
            {
                GetPositiveSignedRNG1();
                __asm { SVC         6 }
                v5 = sub_800A672(dword_2033000, v5, word_2033040[v11++], v5 - 2);
            }
            while ( v11 < v6 );
        }
    }
    if ( v21 )
    {
        GetPositiveSignedRNG1();
        __asm { SVC         6 }
        *(*(v3 + oToolkit_S2034880_Ptr) + 69) = 20;
        v17 = word_2033038;
        word_2033038 = word_2033028;
        word_2033028 = v17;
        v18 = word_203303A;
        word_203303A = word_203302A;
        word_203302A = v18;
    }
    CopyHalfwords(dword_2033000, v19, 60);
}


// 0x800a672
int __fastcall sub_800A672(int result, int a2, __int16 a3, int a4)
{
    int v4; // r2
    _WORD *v5; // r0
    __int16 v6; // [sp+8h] [bp-Ch]

    v6 = a3;
    if ( a4 <= a2 )
    {
        v4 = a2 - 1;
        v5 = (result + 2 * (a2 - 1));
        while ( v4 >= a4 )
        {
            v5[1] = *v5;
            --v4;
            --v5;
        }
        v5[1] = v6;
        result = a2 + 1;
    }
    return result;
}


// 0x800a6a6
int sub_800A6A6()
{
    int v0; // r10
    int result; // r0
    char v2; // zf
    int v3; // r1

    result = battle_isTimeStop();
    if ( v2 )
    {
        result = battle_isPaused();
        if ( v2 )
        {
            result = battle_isBattleOver();
            if ( v2 )
            {
                result = battle_getFlags();
                if ( result & 1 )
                {
                    result = *(v0 + oToolkit_S2034880_Ptr);
                    v3 = *(result + 64) + 1;
                    if ( v3 >= 35999 )
                        v3 = 35999;
                    *(result + 64) = v3;
                }
            }
        }
    }
    return result;
}


// 0x800a6d8
int sub_800A6D8()
{
    int v0; // r10
    int result; // r0
    char v2; // zf

    result = battle_isTimeStop();
    if ( v2 )
    {
        result = battle_isPaused();
        if ( v2 )
        {
            result = battle_isBattleOver();
            if ( !result )
            {
                result = battle_getFlags();
                if ( result & 1 )
                {
                    result = *(v0 + oToolkit_S2034880_Ptr);
                    ++*(result + 56);
                }
            }
        }
    }
    return result;
}


// 0x800a704
int sub_800A704()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2034880_Ptr) + 64);
}


// 0x800a70c
int sub_800A70C()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2034880_Ptr) + 56);
}


// 0x800a714
int sub_800A714()
{
    int v0; // r10
    int result; // r0

    result = *(v0 + oToolkit_S2034880_Ptr);
    *(result + 56) = 0;
    return result;
}


// 0x800a71e
// (int battleSettingsIdx) -> BattleSettings*
char *__fastcall getBattleSettingsFromList0(int a1)
{
    return &battleSettingsList0[16 * a1];
}


// 0x800a728
// (int battleSettingsIdx) -> BattleSettings*
char *__fastcall getBattleSettingsFromList1(int a1)
{
    return &BattleSettingsList1[16 * a1];
}


// 0x800a732
// () -> zf
signed int isSameSubsystem_800A732()
{
    signed int v0; // r4
    char zf; // zf

    v0 = 1;
    IsCurSubsystemInUse();
    if ( !zf && !(eStruct203F7D8[1] & 2) )
        v0 = 0;
    return v0;
}


// 0x800a754
BOOL __fastcall sub_800A754(int a1)
{
    int v1; // ST00_4
    int v2; // r0
    signed int v3; // r1

    v1 = a1;
    v2 = sub_800139A();
    v3 = 4;
    if ( v1 )
        v3 = 8;
    return (v2 & v3) != 0;
}


// 0x800a772
signed int __fastcall sub_800A772(int a1)
{
    int v1; // r5
    int v2; // ST00_4
    int v3; // r0
    signed int v4; // r1
    signed int result; // r0

    if ( *(*(v1 + 88) + 25) )
        goto LABEL_9;
    v2 = a1;
    v3 = sub_800139A();
    v4 = 4;
    if ( v2 )
        v4 = 8;
    if ( !(v3 & v4) )
LABEL_9:
        result = 0;
    else
        result = 1;
    return result;
}


// 0x800a79c
int sub_800A79C()
{
    return sub_80013A2(12);
}


// 0x800a7a6
int __fastcall sub_800A7A6(int a1, int a2, int a3)
{
    int v3; // r10
    signed int v4; // r3
    int v5; // r4
    int v6; // r7
    int v7; // r5

    v4 = 0;
    v5 = 0;
    do
    {
        v6 = *(*(v3 + oToolkit_S2034880_Ptr) + 224 + v4);
        if ( v6 )
        {
            v7 = *(v6 + 40);
            if ( v7 >= a2 && v7 <= a3 )
                ++v5;
        }
        v4 += 4;
    }
    while ( v4 < 16 );
    return v5;
}


// 0x800a7d0
// () -> zf
int __cdecl IsCurSubsystemInUse()
{
    int result; // r0

    result = 0;
    if ( flags32_20093A4 & 1 )
        result = 1;
    return result;
}


// 0x800a7e2
int sub_800A7E2()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2034880_Ptr) + 13);
}


// 0x800a7ea
int __fastcall sub_800A7EA(_WORD *a1)
{
    _WORD *v1; // r4
    signed int v2; // r6
    int v3; // ST00_4
    int result; // r0

    v1 = a1;
    v2 = 0;
    do
    {
        v3 = *v1 & 0x1FF;
        modifyToolkit_unk7C_using_2008A0(v3);
        result = v3;
        ++v1;
        ++v2;
    }
    while ( v2 < 30 );
    return result;
}


// 0x800a80c
signed int __fastcall sub_800A80C(_WORD *a1)
{
    _WORD *v1; // r4
    int v2; // r5

    v1 = a1;
    v2 = 0;
    while ( *(getChip8021DA8(*v1 & 0x1FF) + 7) != 2 )
    {
        ++v1;
        if ( ++v2 >= 10 )
            return 0;
    }
    return 1;
}


// 0x800a832
int sub_800A832()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2034880_Ptr) + 31) & 0xF;
}


// 0x800a840
// (u8 a0) -> void
int __fastcall setTwoStructs_800A840(int a1)
{
    int v1; // r10

    *(*(v1 + oToolkit_S2034880_Ptr) + 31) = a1;
    return eStruct200A008_setBattleResult(a1);
}


// 0x800a84e
int sub_800A84E()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2034880_Ptr) + 7);
}


// 0x800a856
signed int sub_800A856()
{
    int v0; // r10
    signed int result; // r0
    int v2; // r3

    result = 0;
    v2 = *(v0 + oToolkit_S2034880_Ptr);
    if ( !*(v2 + 18) )
        result = 1;
    if ( !*(v2 + 19) )
        result += 2;
    return result;
}


// 0x800a86e
int sub_800A86E()
{
    int v0; // r10
    signed int v1; // r4
    int *v2; // r7
    int v3; // r3
    int result; // r0
    int v5; // r1

    v1 = 0;
    v2 = (*(v0 + oToolkit_S2034880_Ptr) + 128);
    do
    {
        v3 = *v2;
        if ( *v2 )
        {
            result = *(*(v3 + 88) + 14);
            if ( result != 255 )
                v5 = *(v3 + 36);
        }
        ++v2;
        ++v1;
    }
    while ( v1 < 8 );
    return result;
}


// 0x800a892
int __fastcall sub_800A892(int a1)
{
    int result; // r0

    result = sub_802D246();
    if ( result & byte_100 && !(result & 8) )
    {
        result = sub_800A832();
        if ( result == 2 )
            sub_8005DBE();
    }
    return result;
}


// 0x800a8b2
int sub_800A8B2()
{
    int v0; // r0

    v0 = sub_800A7E2();
    return byte_800A8C8[sub_80136CC(v0, 41)];
}


// 0x800a8d4
int sub_800A8D4()
{
    int v0; // r0

    v0 = sub_800A7E2();
    return byte_800A8EC[sub_80136CC(v0, 41)];
}


// 0x800a8f8
signed int __fastcall sub_800A8F8(int a1)
{
    signed int v1; // r4
    char v2; // zf

    v1 = 0;
    sub_802E09A();
    if ( !v2 )
        v1 = 1;
    return v1;
}


// 0x800a908
int sub_800A908()
{
    int result; // r0

    result = 0;
    dword_2000B30 = 0;
    return result;
}


// 0x800a954
void __fastcall sub_800A954(int a1, int a2, int a3, int a4)
{
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_800A964(byte_20349C0, a2, a3, a4);
    sub_800A964(byte_2034A10, v4, v5, v6);
}


// 0x800a964
void __fastcall sub_800A964(int a1, int a2, int a3, int a4)
{
    int v4; // r4

    v4 = a1;
    ZeroFillByWord(a1, 80);
    ByteFill((v4 + 2), 12, 0xFFu);
}


// 0x800a97a
BOOL __fastcall sub_800A97A(int a1)
{
    int v1; // r10

    return sub_802D246() & 8 && *(*(v1 + oToolkit_S2034880_Ptr) + 7) >= 15;
}


// 0x800a998
unsigned int __fastcall sub_800A998(int a1)
{
    int v1; // r10
    int v2; // r2
    int v3; // r3
    unsigned int v4; // r0
    signed int v5; // r4

    v2 = a1;
    v3 = *(v1 + oToolkit_S2034880_Ptr) + 16 * (*(*(v1 + oToolkit_S2034880_Ptr) + 13) ^ 1) + 128;
    v4 = 0;
    v5 = 0;
    do
    {
        if ( *v3 )
        {
            *(v2 + v4) = *(*v3 + 40);
            v4 += 2;
        }
        v3 += 4;
        ++v5;
    }
    while ( v5 < 4 );
    return v4 >> 1;
}


// 0x800a9ca
int __fastcall sub_800A9CA(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_S2034880_Ptr) + 17) |= result;
    return result;
}


// 0x800a9d6
int __fastcall sub_800A9D6(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_S2034880_Ptr) + 17) &= ~result;
    return result;
}


// 0x800a9e2
int __fastcall sub_800A9E2(int a1)
{
    int v1; // r10

    return *(*(v1 + oToolkit_S2034880_Ptr) + a1 + 20);
}


// 0x800a9ec
int __fastcall battle_networkInvert(int a1)
{
    Toolkit *tk; // r10

    return a1 ^ tk->s_2034880->unk_0D;
}


// 0x800a9f6
void batle_clearEnemyFadeinList()
{
    char *v0; // r0

    v0 = sub_800AAAE(0);
    ZeroFillByWord(v0, 128);
}


// 0x800aa06
signed int __fastcall sub_800AA06(int a1)
{
    int v1; // r5
    char *v2; // r0
    signed int v3; // r2

    v2 = sub_800AAAE(a1);
    v3 = 0;
    if ( *v2 == v1 )
        v3 = 1;
    return v3;
}


// 0x800aa1a
signed int __fastcall sub_800AA1A(int a1)
{
    int v1; // r5
    char *v2; // r7
    int v3; // r0
    int v4; // r1

    v2 = sub_800AAAE(a1);
    v3 = 0;
    do
    {
        v4 = *&v2[v3];
        if ( v4 == v1 )
            break;
        if ( !v4 )
        {
            *&v2[v3] = v1;
            return 1;
        }
        v3 += 4;
    }
    while ( v3 != 32 );
    return 0;
}


// 0x800aa40
int __fastcall sub_800AA40(int a1)
{
    int v1; // r5
    char *v2; // r3
    int v3; // r0
    int v5; // [sp+0h] [bp-8h]

    v5 = a1;
    v2 = sub_800AAAE(a1);
    v3 = 0;
    do
    {
        if ( *&v2[v3] == v1 )
            *&v2[v3] = 0;
        v3 += 4;
    }
    while ( v3 != 32 );
    return sub_800AA64(v5);
}


// 0x800aa64
int __fastcall sub_800AA64(int a1)
{
    char *v1; // r3
    char *v2; // r1
    int v3; // r4
    int result; // r0

    v1 = sub_800AAAE(a1);
    v2 = v1;
    v3 = (v1 + 28);
    do
    {
        if ( *v1 )
        {
            *v2 = *v1;
            v2 += 4;
        }
        v1 += 4;
    }
    while ( v1 != v3 );
    result = 0;
    while ( v2 != v3 )
    {
        *v2 = 0;
        v2 += 4;
    }
    return result;
}


// 0x800aa92
int __fastcall sub_800AA92(int a1)
{
    char *v1; // r3
    int result; // r0
    signed int v3; // r2

    v1 = sub_800AAAE(a1);
    result = 0;
    v3 = 0;
    do
    {
        if ( *&v1[v3] )
            ++result;
        v3 += 4;
    }
    while ( v3 < 32 );
    return result;
}


// 0x800aaae
char *__fastcall sub_800AAAE(int a1)
{
    return &byte_2038170[32 * a1];
}


// 0x800aabc
int sub_800AABC()
{
    int v0; // r10
    int v1; // r5
    int result; // r0

    v1 = *(v0 + oToolkit_S2034880_Ptr);
    setTwoStructs_800A840(4);
    result = *(v0 + oToolkit_S2034880_Ptr);
    *(result + 1) = 20;
    *(result + 2) = 0;
    return result;
}


// 0x800aad6
int sub_800AAD6()
{
    int v0; // r10
    int v1; // r5

    sub_800AABC();
    v1 = *(v0 + oToolkit_S2034880_Ptr);
    return setTwoStructs_800A840(2);
}


// 0x800aae8
signed int sub_800AAE8()
{
    int v0; // r10
    signed int result; // r0

    result = 1;
    *(*(v0 + oToolkit_S2034880_Ptr) + 58) = 1;
    return result;
}


// 0x800aaf2
void __fastcall sub_800AAF2(int unused, int a2, int a3, int a4)
{
    sub_800AAFC(0, a2, a3, a4);
}


// 0x800aafc
void __fastcall sub_800AAFC(int a1, int a2, int a3, int a4)
{
    int v4; // r4

    v4 = a1;
    WordFill(&unk_20018C0 + 40 * a1, 40, -1);
    WordFill(&unk_2000260 + 40 * v4, 40, -1);
}


// 0x800ab22
void __fastcall sub_800AB22(int unused, int unused_1, int a3, int a4)
{
    ZeroFillByHalfword(&word_2000FA0, 0x1Au, a3, a4);
}


// 0x800ab2e
int __fastcall sub_800AB2E(int a1, int a2, char a3)
{
    int result; // r0

    result = 16 * a1;
    byte_203EAE0[result + a2] = a3;
    return result;
}


// 0x800ab3a
int __fastcall sub_800AB3A(int a1, int a2)
{
    return byte_203EAE0[16 * a1 + a2];
}


// 0x800ab46
int __fastcall sub_800AB46(int a1, int a2, int a3)
{
    char *v3; // r3
    int result; // r0

    v3 = &byte_203EAE0[16 * a1];
    result = v3[a2] + a3;
    if ( result > 255 )
        result = 255;
    v3[a2] = result;
    return result;
}


// 0x800ab5c
int __fastcall sub_800AB5C(int a1, int a2, int a3)
{
    char *v3; // r3
    int v4; // r0
    unsigned __int8 v5; // vf
    int result; // r0

    v3 = &byte_203EAE0[16 * a1];
    v4 = v3[a2];
    v5 = __OFSUB__(v4, a3);
    result = v4 - a3;
    if ( (result < 0) ^ v5 )
        result = 0;
    v3[a2] = result;
    return result;
}


// 0x800ab70
void __fastcall sub_800AB70(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(byte_203EAE0, 32);
}


// 0x800ab7c
int sub_800AB7C()
{
    int v0; // r10

    if ( battle_isPaused() || battle_isTimeStop() )
    {
LABEL_7:
        __asm { SVC         6 }
        sub_801E398(word_203CA7A);
    }
    if ( !battle_isBattleOver() )
    {
        if ( word_203CA7A < 60 )
            *(*(v0 + oToolkit_S2034880_Ptr) + 11) = 1;
        else
            --word_203CA7A;
        goto LABEL_7;
    }
    sub_801DACC(&loc_800);
    return sub_801BED6(&loc_800);
}


// 0x800abc6
int __fastcall sub_800ABC6(int a1, int a2)
{
    Battle *v2; // r5
    int v3; // r10
    int v4; // r0
    int v5; // r1
    int v6; // r4
    int v7; // r1
    int v8; // r2

    v4 = object_getCoordinatesForPanels(a1);
    v6 = (*(*(v3 + oToolkit_S2034880_Ptr) + 13) << 8) + 70;
    SpawnT4BattleObjectWithId0(v2, 1, v4, v5 + 0x100000, 0x200000);
    return PlaySoundEffect(165, v7, v8);
}


// 0x800ac20
signed int __fastcall sub_800AC20(int a1, int a2)
{
    int v2; // r10
    unsigned int v3; // r2
    int v5; // r0
    int v6; // r0
    int **v7; // r7
    signed int v8; // r2
    int v10; // r0
    int v11; // r0
    int v12; // r0
    signed int v13; // r1
    int v14; // r0
    u32 v15; // r0
    int v16; // r2
    unsigned int v17; // r3
    signed int v18; // r0
    int v19; // r0
    int v20; // r1
    int v21; // r1
    u32 v22; // r0
    int v23; // r6
    u32 v24; // r0
    int v25; // r7
    signed int v26; // r4
    int v27; // r6
    int v28; // r0
    int v31; // r0
    int v32; // r0
    signed int result; // r0
    int v34; // [sp+0h] [bp-24h]
    signed int v35; // [sp+4h] [bp-20h]
    unsigned int v36; // [sp+10h] [bp-14h]
    unsigned int v37; // [sp+10h] [bp-14h]
    unsigned int v38; // [sp+10h] [bp-14h]
    unsigned int v39; // [sp+10h] [bp-14h]
    unsigned int v40; // [sp+10h] [bp-14h]
    unsigned int v41; // [sp+10h] [bp-14h]
    unsigned int v42; // [sp+10h] [bp-14h]
    unsigned int v43; // [sp+10h] [bp-14h]
    int v44; // [sp+14h] [bp-10h]

    v3 = 399;
    _VF = __OFSUB__(a1, 2);
    if ( a1 == 2 )
        v3 = 241;
    v34 = a1;
    v44 = a2;
    v35 = 0;
    v36 = v3 >> 1;
    if ( v3 & 1 )
    {
        v5 = sub_800A704();
        v6 = sub_8000D84(v5);
        v7 = &(&off_800ADDC)[3 * v34];
        v8 = 0;
        do
        {
            if ( v6 <= *v7 )
                break;
            ++v7;
            ++v8;
        }
        while ( v8 < 3 );
        _VF = __OFADD__(byte_800AE00, 4 * v34);
        v35 = byte_800AE00[4 * v34 + v8];
    }
    _CF = v36 & 1;
    v37 = v36 >> 1;
    if ( _CF )
    {
        v10 = sub_800AB3A(v44, 3);
        if ( v10 >= 4 )
            v11 = -3;
        else
            v11 = 1 - v10;
        _VF = __OFADD__(v35, v11);
        v35 += v11;
    }
    _CF = v37 & 1;
    v38 = v37 >> 1;
    if ( _CF )
    {
        v12 = sub_800AB3A(v44, 4);
        v13 = 1;
        if ( v12 > 2 )
            v13 = 0;
        _VF = __OFADD__(v35, v13);
        v35 += v13;
    }
    _CF = v38 & 1;
    v39 = v38 >> 1;
    if ( _CF )
    {
        v14 = 2 * (*(*(v2 + oToolkit_S2034880_Ptr) + 27) - 1);
        _VF = __OFADD__(v35, v14);
        v35 += v14;
    }
    _CF = v39 & 1;
    v40 = v39 >> 1;
    if ( _CF )
    {
        v15 = sub_80103BC(v44);
        if ( v15 )
        {
            v16 = *(v15 + 36);
            v17 = *(v15 + 38);
            v18 = 0;
            if ( v16 >= (v17 >> 1) )
            {
                v18 = 1;
                if ( v16 >= ((v17 >> 2) + (v17 >> 1)) )
                {
                    v18 = 2;
                    if ( v16 >= v17 )
                        v18 = 3;
                }
            }
            _VF = __OFADD__(v35, v18);
            v35 += v18;
        }
    }
    _CF = v40 & 1;
    v41 = v40 >> 1;
    if ( _CF )
    {
        v19 = sub_800AB3A(v44, 5);
        v20 = 0;
        if ( v19 )
        {
            if ( v19 == 1 )
            {
                v21 = 1;
            }
            else
            {
                if ( v19 >= 4 )
                    v19 = 3;
                v21 = 2 * (v19 - 1);
            }
            v20 = -v21;
        }
        _VF = __OFADD__(v35, v20);
        v35 += v20;
    }
    _CF = v41 & 1;
    v42 = v41 >> 1;
    if ( _CF )
    {
        v22 = sub_80103BC(v44);
        if ( v22 )
        {
            v23 = *(v22 + 38);
            v24 = sub_80103BC(v44 ^ 1);
            if ( v24 )
            {
                v25 = *(v24 + 38);
                v26 = 0;
                _VF = __OFSUB__(v23, v25);
                v27 = v23 - v25;
                if ( (v27 < 0) ^ _VF )
                {
                    v26 = 1;
                    v27 = -v27;
                }
                v28 = v27;
                __asm { SVC         6 }
                if ( v27 > 1 )
                {
                    v28 = 2 * (v27 >> 1);
                    if ( v28 > 4 )
                        v28 = 4;
                }
                if ( !v26 )
                    v28 = -v28;
                _VF = __OFADD__(v35, v28);
                v35 += v28;
            }
        }
    }
    _CF = v42 & 1;
    v43 = v42 >> 1;
    if ( _CF )
    {
        v31 = sub_800AB3A(v44, 8);
        _VF = 0;
        if ( v31 )
        {
            if ( v31 > 3 )
                v31 = 3;
            _VF = __OFADD__(v35, v31);
            v35 += v31;
        }
    }
    if ( v43 & 1 )
    {
        v32 = sub_800AB3A(v44, 11);
        _VF = 0;
        if ( !v32 )
            _VF = __OFADD__(v35++, 1);
    }
    result = v35;
    if ( ((v35 < 0) ^ _VF) | (v35 == 0) )
        return 1;
    if ( v35 > 11 )
        result = 11;
    return result;
}


// 0x800ae0c
int sub_800AE0C()
{
    int v0; // r10
    _BYTE *v1; // r4
    signed int v2; // r0
    int result; // r0
    signed int v4; // [sp-4h] [bp-Ch]

    v1 = *(v0 + oToolkit_S2034880_Ptr);
    v2 = v1[28];
    if ( v2 > v1[27] )
    {
        v1[27] = v2;
        if ( v2 >= 2 )
        {
            v4 = v2;
            if ( sub_802D234() != 6 )
                sub_801E228(v4 - 2);
        }
    }
    if ( v1[29] )
    {
        result = v1[29] - 1;
        v1[29] = result;
    }
    else
    {
        result = 0;
        v1[28] = 0;
    }
    return result;
}


// 0x800ae44
signed int sub_800AE44()
{
    int v0; // r10
    int v1; // r1
    signed int result; // r0

    v1 = *(v0 + oToolkit_S2034880_Ptr);
    ++*(v1 + 28);
    result = 10;
    *(v1 + 29) = 10;
    return result;
}


// 0x800ae54
int __fastcall sub_800AE54(int a1, int a2, int a3)
{
    int v3; // r10
    unsigned __int8 *v4; // r4
    int v5; // r3
    int v6; // r2
    int v7; // r4

    v4 = &dword_800AE8C + 2 * a3;
    v5 = *(v3 + oToolkit_S2034880_Ptr) + *v4;
    v6 = v4[1];
    do
    {
        v7 = *v5;
        if ( *v5 && *(v7 + 18) == a1 && *(v7 + 19) == a2 )
            return *v5;
        v5 += 4;
        --v6;
    }
    while ( v6 );
    return 0;
}


// 0x800ae90
int __fastcall sub_800AE90(int a1, int a2)
{
    int v2; // r10
    int result; // r0
    int v4; // [sp+0h] [bp-18h]
    int v5; // [sp+4h] [bp-14h]

    v4 = a1;
    if ( !(**(v2 + oToolkit_CurFramePtr) & 0xF) )
        PlaySoundEffect(145, a2, 0);
    result = v4;
    if ( (v4 + 16) < 0xFF && (v5 + 16) < 0xB0 )
    {
        sub_8009FF8(((v4 | 0x4000) << 16) | a2, ((**(v2 + oToolkit_CurFramePtr) & 8u) >> 1) + 54218, 0, 0);
        result = v4;
    }
    return result;
}


// 0x800aee8
char *chip_800AEE8()
{
    char *v0; // r5
    int v1; // r6
    char *v2; // r5
    int v3; // r6
    char *result; // r0

    v0 = &byte_20349C0[2 * byte_20349C0[0] + 2];
    v1 = *v0;
    if ( *(getChip8021DA8(v1) + 9) & 0x80 )
        *(v0 + 6) = sub_80109A4(v1, 0);
    v2 = &byte_2034A10[2 * byte_2034A10[0] + 2];
    v3 = *v2;
    result = getChip8021DA8(v3);
    if ( result[9] & 0x80 )
    {
        result = sub_80109A4(v3, 1);
        *(v2 + 6) = result;
    }
    return result;
}


// 0x800af34
int __fastcall sub_800AF34(int a1)
{
    int v1; // r5
    int result; // r0

    if ( sub_800A8F8(a1) )
        result = sub_802E032(*(v1 + 22), 5461);
    else
        result = sub_801DFA2(0x4000);
    return result;
}


// 0x800af50
signed int sub_800AF50()
{
    int v0; // r10
    unsigned __int8 *v1; // r5
    int v2; // r0
    int v3; // r1
    signed int v4; // r2

    v1 = *(v0 + oToolkit_S2034880_Ptr);
    v2 = v1[24];
    v3 = v1[25];
    v4 = v1[26];
    if ( v2 > v3 + 3 - v4 )
        return 1;
    if ( v3 > v2 + 3 - v4 )
        return -1;
    if ( v4 >= 3 )
        return 2;
    return 0;
}


// 0x800af84
signed int __fastcall sub_800AF84(int a1)
{
    int v1; // r10
    char v2; // r0
    char v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r0

    v2 = sub_802D246();
    if ( v2 & 8 )
    {
        v6 = sub_800A832();
        v5 = *(*(v1 + oToolkit_S2034880_Ptr) + 13);
        if ( v6 != 1 )
            v5 ^= 1u;
        v4 = 2;
    }
    else
    {
        v3 = v2;
        v4 = 0;
        v5 = 0;
        if ( v3 & 1 )
            v4 = 1;
    }
    return sub_800AC20(v4, v5);
}


// 0x800afba
int __fastcall sub_800AFBA(unsigned int a1)
{
    int v1; // r10
    unsigned int v2; // r4
    signed int v3; // r6
    int v4; // r6
    int v6; // [sp-4h] [bp-24h]

    v2 = a1;
    v3 = 0;
    if ( sub_802D246() & 8 )
        v3 = 1;
    v6 = v3 | sub_802E09A();
    if ( v2 >> 9 == 27
        || v2 >> 9 == 28
        || (v4 = *(getChip8021DA8(v2 & 0x1FF) + 7), v4 != 1) && v4 != 2
        || *(&dword_20367E0 + v4) <= sub_80136CC(*(*(v1 + oToolkit_S2034880_Ptr) + 13), v4 + 10) )
    {
        if ( (v2 & 0x1FF) < 411 )
            sub_8006E84(v2 & 0x1FF);
    }
    return v6;
}


// 0x800b022
// (int a1) ->
int __fastcall sub_800B022(unsigned int a1)
{
    int v1; // r10
    unsigned int v2; // r4
    signed int v3; // r6
    int v4; // r6
    unsigned __int64 v5; // r0
    int v7; // [sp-4h] [bp-24h]

    v2 = a1;
    v3 = 0;
    if ( sub_802D246() & 8 )
        v3 = 1;
    v7 = v3 | sub_802E09A();
    if ( v2 >> 9 == 27
        || v2 >> 9 == 28
        || (v4 = *(getChip8021DA8(v2 & 0x1FF) + 7), v4 != 1) && v4 != 2
        || *(&dword_20367E0 + v4) <= sub_80136CC(*(*(v1 + oToolkit_S2034880_Ptr) + 13), v4 + 10) )
    {
        v5 = v2 << 23;
        LODWORD(v5) = v2 & 0x1FF;
        if ( HIDWORD(v5) == 27 )
            HIDWORD(v5) = 255;
        if ( v5 >= 411 )
            HIDWORD(v5) = 255;
        sub_8006EE8(v5, SHIDWORD(v5));
    }
    return v7;
}


// 0x800b090
void sub_800B090()
{
    int v0; // r10
    char *v1; // r0
    signed int v2; // r9
    char *v3; // r6
    signed int v4; // r0
    int v5; // r4
    char v6; // zf
    int v7; // r7

    if ( !sub_802E09A() )
    {
        v1 = sub_8010018(*(*(v0 + oToolkit_S2034880_Ptr) + 13));
        v2 = v1;
        v3 = &v1[2 * *v1 + 2];
        v4 = *v3;
        v5 = v4;
        if ( v4 != 0xFFFF )
        {
            sub_8006EE8(v4, 255);
            if ( !v6
                || ((v7 = *(getChip8021DA8(v5) + offsetof(ChipData, elemIdx)), v7 == 1) || v7 == 2)
                && (sub_80136CC(*(*(v0 + oToolkit_S2034880_Ptr) + 13), v7 + 10), *(&dword_20367E0 + v7) >= v2) )
            {
                *v3 = 389;
            }
        }
    }
}


// 0x800b110
int sub_800B110()
{
    __int16 *i; // r4
    int result; // r0

    for ( i = &word_800B128; ; ++i )
    {
        result = *i;
        if ( !*i )
            break;
        modifyToolkit_unk7C_using_2008A0(result);
    }
    return result;
}


// 0x800b144
int sub_800B144()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0
    int v6; // r0
    signed int v7; // r0
    char v8; // zf
    char *v9; // r0
    char *v10; // r1
    signed int v11; // r2
    char *v12; // r1
    signed int v13; // r2
    int v14; // r0
    char v15; // r1
    char v16; // r1
    int v17; // r0

    dword_203CBE4 = eRngSeed20013F0;
    *byte_203CBE8 = *(*(v0 + oToolkit_S2034880_Ptr) + 60);
    if ( sub_802D246() & 0x200000 )
    {
        v9 = GetNaviStats203CCE0Addr(0);
        CopyWords(v9, &byte_203CBE8[4], 0x64u);
        v10 = byte_203CC50;
        v11 = 20;
        do
        {
            *v10 = dword_474;
            v10 += 2;
            --v11;
        }
        while ( v11 );
        v12 = byte_203CC78;
        v13 = 20;
        do
        {
            *v12 = dword_474;
            v12 += 2;
            --v13;
        }
        while ( v13 );
    }
    else
    {
        v1 = sub_802D234();
        switch ( v1 )
        {
            case 1:
                sub_80134C8(&byte_203CBE8[4], v2, v3, v4);
                break;
            case 2:
            case 3:
            case 4:
                initNaviStats_WithDefaultStatsMaybe_8013438(&byte_203CBE8[4], v2, v3, v4);
                break;
            case 5:
            case 8:
                initNaviStats_WithDefaultStatsMaybe_8013438(&byte_203CBE8[4], v2, v3, v4);
                v14 = sub_801401E(0);
                word_203CC2A = *(v14 + 62);
                *byte_203CC2C = (*(v14 + 64) >> 16 << 16) | (*(v14 + 64) >> 16);
                break;
            case 7:
                sub_8013554(&byte_203CBE8[4], v2, v3, v4);
                break;
            case 9:
                sub_80135E8(&byte_203CBE8[4], v2, v3, v4);
                break;
            default:
                v5 = getPETNaviSelect();
                v6 = sub_801401E(v5);
                CopyWords(v6, &byte_203CBE8[4], 0x64u);
                v7 = sub_802D246();
                if ( v7 & 8 )
                {
                    v7 = 3;
                    byte_203CC0D[0] = 3;
                }
                if ( sub_800A8F8(v7) )
                {
                    TestEventFlagFromImmediate(1, 99);
                    if ( v8 )
                    {
                        if ( !getPETNaviSelect() )
                            byte_203CC03[0] = 12;
                    }
                }
                break;
        }
        CopyWords(&unk_20018C0, byte_203CC50, 0x28u);
        CopyWords(&unk_2000260, byte_203CC78, 0x28u);
    }
    byte_203CCA8 = sub_81209DC(1);
    byte_203CCA9 = v15;
    byte_203CCAA = sub_81209DC(1);
    byte_203CCAB[0] = v16;
    CopyBytes(&dword_3C4 + *(v0 + oToolkit_Flags2001c88_Ptr), &byte_203CCAB[1], 40);
    *byte_203CCD4 = sub_8010D20();
    TestEventFlagFromImmediate(1, 99);
    if ( v8 )
        v17 = 255;
    else
        v17 = sub_8121198();
    dword_203CCA0 = v17;
    dword_203CCA4 = sub_803D0F4();
    dword_203CBE0[0] = 305419896;
    return sub_80200A4(62);
}


// 0x800b2d8
int battle_copyStructsIncludingBattleStats_800b2d8()
{
    int result; // r0

    CopyWords(eBattleNaviStats203F4AC, byte_203CE00, 0x64u);
    CopyWords(eBattleNaviStats203F4AC, eBattleNaviStats203CB10, 0x64u);
    CopyWords(eBattleNaviStats203F4AC, &eBattleNaviStats2034A60, 0x64u);
    CopyWords(eBattleNaviStats203F4AC, eBattleNaviStats203C9E4, 0x64u);
    if ( sub_802D246() & 8 )
    {
        CopyWords(byte_203F5AC, byte_203CE64, 0x64u);
        CopyWords(byte_203F5AC, eBattleNaviStats203CB74, 0x64u);
        CopyWords(byte_203F5AC, &eBattleNaviStats2034AC4, 0x64u);
        CopyWords(byte_203F5AC, eBattleNaviStats203C980, 0x64u);
    }
    eRngSeed20013F0 = *byte_203F4A4;
    CopyWords(byte_203F510, byte_203EB00, 0x28u);
    CopyWords(byte_203F610, byte_203EB28, 0x28u);
    CopyWords(byte_203F538, byte_2036790, 0x28u);
    CopyWords(byte_203F638, byte_20367B8, 0x28u);
    *byte_203CA50 = dword_203F568;
    sub_80AAB88(byte_203F56C, byte_203F66C, byte_2036750);
    dword_203CDF0[0] = *byte_203F594;
    *byte_203CDF4 = *byte_203F694;
    dword_203CFA0[0] = dword_203F560;
    *byte_203CFA4 = dword_203F660;
    dword_203F7E0[0] = dword_203F564;
    result = *byte_203F664;
    *byte_203F7E4 = *byte_203F664;
    return result;
}


// 0x800b3a2
int sub_800B3A2()
{
    int v0; // r10
    char *v1; // r0

    CopyWords(&byte_20366C0, &dword_203CBE4, 0x50u);
    dword_203CBE0[0] = 1450742051;
    v1 = sub_8013682(*(*(v0 + oToolkit_S2034880_Ptr) + 13));
    CopyWords(v1, byte_203CC34, 0x64u);
    CopyWords(&byte_203CED0, byte_203CC98, 0x10u);
    return sub_80200A4(50);
}


// 0x800b3d8
void __fastcall sub_800B3D8(int a1)
{
    if ( byte_203F4A4[0] != 255 )
        CopyWords(byte_203F4A4, byte_20349C0, 0x50u);
    if ( sub_802D246() & 8 && byte_203F5A4[0] != 255 )
        CopyWords(byte_203F5A4, byte_2034A10, 0x50u);
    CopyWords(byte_203F4F4, byte_203CE00, 0x64u);
    if ( sub_802D246() & 8 )
        CopyWords(byte_203F5F4, byte_203CE64, 0x64u);
}


// 0x800b428
int sub_800B428()
{
    sub_802C8FA(&dword_203CBE4);
    dword_203CBE0[0] = 523190095;
    return sub_80200A4(4);
}


// 0x800b444
char *sub_800B444()
{
    int v0; // r0

    CopyWords(byte_203F4A4, &unk_2035260, 0xCu);
    CopyWords(byte_203F5A4, &unk_203526C, 0xCu);
    return sub_802C9EA(v0);
}


// 0x800b460
int sub_800B460()
{
    int result; // r0

    result = 0;
    dword_203F4A0[0] = 0;
    dword_203F5A0[0] = 0;
    return result;
}


// 0x800b46c
signed int __fastcall sub_800B46C(int a1)
{
    int v1; // r3
    signed int result; // r0

    v1 = a1;
    result = 0;
    if ( dword_203F4A0[0] == v1 && dword_203F5A0[0] == v1 )
        result = 1;
    return result;
}


// 0x800b484
int sub_800B484()
{
    dword_203CBE0[0] = -235802127;
    CopyWords(byte_203F6D0, &dword_203CBE4, 0x3Cu);
    return sub_80200A4(16);
}


// 0x800b49e
void sub_800B49E()
{
    sub_802E45E(0, byte_203F4A4);
    sub_802E45E(1, byte_203F5A4);
}


// 0x800b4b2
int __fastcall sub_800B4B2(int a1, int a2)
{
    int v2; // r4
    int v3; // r5

    v3 = a2;
    sub_800B4CE(a1);
    dword_203CBE0[0] = -1447508010;
    dword_203CBE4 = v2;
    *byte_203CBE8 = v3;
    return sub_80200A4(3);
}


// 0x800b4ce
int __fastcall sub_800B4CE(int a1)
{
    int v1; // r10
    int v2; // r4
    int result; // r0
    signed int v4; // r1
    signed int v5; // r1
    signed int v6; // r3

    v2 = a1;
    result = *(v1 + oToolkit_S2034880_Ptr);
    v4 = 144;
    do
    {
        if ( *(result + v4) == v2 )
        {
            if ( v4 == 144 )
                result = sub_802D246();
            return result;
        }
        v4 += 4;
    }
    while ( v4 != 192 );
    v5 = 160;
    v6 = 8;
    do
    {
        if ( *(result + v5) == v2 )
            break;
        v5 += 4;
        --v6;
    }
    while ( v6 );
    return result;
}


// 0x800b50e
void sub_800B50E()
{
    char *v0; // r0
    int v1; // r0
    int v2; // r2
    int v3; // r1
    char *v4; // r0
    int v5; // r0
    int v6; // r2
    int v7; // r1

    v0 = sub_802E070(0);
    sub_800B548(v0, byte_203F4A4, *byte_203F4A4, 0);
    *(v1 + 68) = v2;
    *(v1 + 14) = *(v3 + 4);
    if ( sub_802D246() & 8 )
    {
        v4 = sub_802E070(1);
        sub_800B548(v4, byte_203F5A4, *byte_203F5A4, 1);
        *(v5 + 68) = v6;
        *(v5 + 14) = *(v7 + 4);
    }
}


// 0x800b548
void __fastcall sub_800B548(int a1, int a2, signed int a3, int a4)
{
    int v4; // r10
    int v5; // r2

    if ( !a3 )
    {
        a3 = 128;
        if ( !a4 )
            a3 = 144;
    }
    v5 = *(*(v4 + oToolkit_S2034880_Ptr) + a3);
}


// 0x800b694
int sub_800B694()
{
    int result; // r0

    word_200A00C = -1;
    word_200A00E = -1;
    eStruct200A008 = 0;
    byte_200A009 = 0;
    result = 0;
    byte_200A00A = 0;
    return result;
}


// 0x800b6aa
// (u8 unk01) -> void
int __fastcall eStruct200A008_setBattleResult(int result)
{
    byte_200A009 = result;
    return result;
}


// 0x800b6b0
// () -> u8
int eStruct200A008_getBattleResult()
{
    return byte_200A009;
}


// 0x800b6b6
// (u8 unk00) -> void
int __fastcall eStruct200A008_setUnk00(int result)
{
    eStruct200A008 = result;
    return result;
}


// 0x800b6bc
// () -> u8
int eStruct200A008_getUnk00()
{
    return eStruct200A008;
}


// 0x800b6c2
// (u8 unk02) -> void
int __fastcall eStruct200A008_setUnk02(int result)
{
    byte_200A00A = result;
    return result;
}


// 0x800b6c8
// () -> u8
int eStruct200A008_getUnk02()
{
    return byte_200A00A;
}


// 0x800b6ce
// (u16 unk04) -> void
int __fastcall eStruct200A008_setUnk04(int result)
{
    word_200A00C = result;
    return result;
}


// 0x800b6d4
// () -> u16
int eStruct200A008_getUnk04()
{
    return word_200A00C;
}


// 0x800b6da
// (u16 unk06) -> void
int __fastcall eStruct200A008_setUnk06(int result)
{
    word_200A00E = result;
    return result;
}


// 0x800b6e0
// () -> u16
int eStruct200A008_getUnk06()
{
    return word_200A00E;
}


// 0x800b6e6
// (u8 unk03) -> void
int __fastcall eStruct200A008_setUnk03(int result)
{
    byte_200A00B = result;
    return result;
}


// 0x800b6ec
// () -> u8
int eStruct200A008_getUnk03()
{
    return byte_200A00B;
}


// 0x800b6f2
int __fastcall sub_800B6F2(int a1)
{
    int v1; // r10
    int v2; // r7
    int result; // r0
    int v4; // r0
    int v5; // r6
    unsigned __int16 *v6; // r7
    int v7; // r0
    unsigned __int8 v8; // vf

    v2 = *(v1 + oToolkit_S2034880_Ptr);
    result = sub_802D246();
    if ( !(result & 8) && !(result & 0x80000) )
    {
        v4 = sub_800A7E2() ^ 1;
        v5 = *(v2 + v4 + 4);
        v6 = (v2 + 8 * v4 + 76);
        do
        {
            v7 = *v6;
            v8 = __OFSUB__(v7, byte_100);
            result = v7 - byte_100;
            if ( !((result < 0) ^ v8) )
                result = SetEventFlag(&byte_300[result]);
            ++v6;
            v8 = __OFSUB__(v5--, 1);
        }
        while ( !(((v5 < 0) ^ v8) | (v5 == 0)) );
    }
    return result;
}


// 0x800b734
signed int sub_800B734()
{
    __int16 *v0; // r0
    signed int v1; // r1
    signed int v2; // r3
    signed int result; // r0

    v0 = &word_2000FA0;
    v1 = 1;
    v2 = 0;
    do
    {
        v2 += *v0;
        ++v0;
        ++v1;
    }
    while ( v1 < 13 );
    result = 0;
    if ( v2 <= &loc_2A30 )
    {
        result = 1;
        if ( v2 <= &loc_1C20 )
            result = 2;
    }
    return result;
}


// 0x800b75a
char *sub_800B75A()
{
    char *result; // r0

    result = &byte_203C960;
    byte_203C960 = -1;
    return result;
}


// 0x800b762
char *__fastcall sub_800B762(int a1, int a2)
{
    char *result; // r0
    char *v3; // r1
    int v4; // r2

    result = &sub_8010018(a1)[2 * a2];
    v3 = result + 2;
    do
    {
        *(result + 7) = *(v3 + 7);
        *(result + 13) = *(v3 + 13);
        *(result + 19) = *(v3 + 19);
        *(result + 25) = *(v3 + 25);
        result[62] = v3[62];
        result[68] = v3[68];
        v4 = *(v3 + 1);
        *(result + 1) = v4;
        result += 2;
        v3 += 2;
    }
    while ( v4 != 0xFFFF );
    return result;
}


// 0x800b79a
signed int __fastcall sub_800B79A(signed int result)
{
    if ( result <= 290 && result >= &word_11E )
        result = (*(&off_800B7BC + result - &word_11E))();
    return result;
}


// 0x800b7d0
char *__fastcall sub_800B7D0(int a1)
{
    int v1; // r0
    char v2; // r2

    v1 = sub_8013774(a1, 24);
    v2 = v1 + 2;
    if ( v1 + 2 > 7 )
        v2 = 7;
    return sub_8013754(v1, 24, v2);
}


// 0x800b7e8
char *__fastcall sub_800B7E8(int a1)
{
    int v1; // r0
    char v2; // r2

    v1 = sub_8013774(a1, 24);
    v2 = v1 + 1;
    if ( v1 + 1 > 7 )
        v2 = 7;
    return sub_8013754(v1, 24, v2);
}


// 0x800b800
char *__fastcall sub_800B800(int a1)
{
    return sub_8013754(a1, 24, 7);
}


// 0x800b80c
void nullsub_2()
{
    ;
}


// 0x800b80e
char *__fastcall sub_800B80E(int a1)
{
    int v1; // r0
    char v2; // r2

    v1 = sub_8013774(a1, 24);
    v2 = v1 + 4;
    if ( v1 + 4 > 7 )
        v2 = 7;
    return sub_8013754(v1, 24, v2);
}


// 0x800b884
char *__fastcall sub_800B884(int a1)
{
    char *result; // r0
    char v2; // [sp+0h] [bp-8h]

    result = sub_800BF5C(a1);
    result[1] = v2;
    return result;
}


// 0x800b892
int __fastcall sub_800B892(int a1)
{
    return sub_800BF5C(a1)[1];
}


// 0x800b89c
char *__fastcall sub_800B89C(int a1)
{
    char *result; // r0

    result = sub_800BF5C(a1);
    result[1] = 0;
    *(result + 2) = 0;
    return result;
}


// 0x800b8ac
char *__fastcall sub_800B8AC(char a1)
{
    char v1; // r4
    char *result; // r0

    v1 = a1;
    *sub_800BF5C(0) = a1;
    result = sub_800BF5C(1);
    *result = v1;
    return result;
}


// 0x800b8c2
signed int __fastcall sub_800B8C2(int a1)
{
    int v1; // ST00_4
    int v2; // r1
    signed int result; // r0

    v1 = a1;
    v2 = *sub_800BF5C(a1);
    result = 0;
    if ( v2 == v1 )
        result = 1;
    return result;
}


// 0x800b8d8
signed int __fastcall sub_800B8D8(int a1)
{
    int v1; // ST00_4
    int v2; // r1
    signed int result; // r0

    v1 = a1;
    v2 = sub_800BF5C(a1)[3];
    result = 0;
    if ( v2 == v1 )
        result = 1;
    return result;
}


// 0x800b8ee
int __fastcall sub_800B8EE(int a1)
{
    Battle *v1; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r1
    int v5; // r2

    v2 = object_getCoordinatesForPanels(3 * (a1 ^ 1) + 2);
    SpawnT4BattleObjectWithId0(v1, v2, v2, v3, 7864320);
    return PlaySoundEffect(165, v4, v5);
}


// 0x800b916
signed int object_timefreezeBegin()
{
    Battle *obj; // r5
    signed int result; // r0

    if ( !battle_networkInvert(obj->Alliance) )
        sub_801DACC(64);
    if ( sub_800B8D8(obj->Alliance) )
        battle_setFlags(4);
    dword_200F3B8[obj->Alliance] = 0;
    result = 4;
    obj->currState = 4;
    return result;
}


// 0x800b94c
int object_dimScreen()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 11) )
    {
        engine_setScreeneffect(60, 4);
        *(v0 + 32) = 0;
        *(v0 + 11) = 4;
    }
    ++*(v0 + 32);
    result = IsPaletteFadeActive();
    if ( !result )
    {
        *(v0 + 9) += 4;
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x800b97e
int sub_800B97E()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 11) )
    {
        engine_setScreeneffect(120, 128);
        *(v0 + 32) = 0;
        *(v0 + 11) = 4;
    }
    ++*(v0 + 32);
    result = IsPaletteFadeActive();
    if ( !result )
    {
        *(v0 + 9) += 4;
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x800b9b0
char *object_drawChipName()
{
    int v0; // r5
    char *result; // r0
    unsigned __int8 *v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r1
    int v6; // r2
    int v7; // r0
    char *v8; // r0
    int v9; // [sp-Ch] [bp-10h]
    int v10; // [sp-8h] [bp-Ch]
    int v11; // [sp-4h] [bp-8h]

    if ( *(v0 + 11) )
    {
        result = sub_801E754();
        if ( !result )
        {
            if ( sub_800B8C2(*(v0 + 22)) || (v7 = sub_800B892(*(v0 + 22) ^ 1)) == 0 || v7 == 5 )
            {
                sub_800B884(*(v0 + 22));
                v8 = sub_800BF5C(*(v0 + 22));
                if ( v8[2] || *(*(v8 + 3) + 36) )
                {
                    *(v0 + 9) += 4;
                    result = 0;
                    *(v0 + 10) = 0;
                }
                else
                {
                    *(v0 + 9) += 8;
                    result = 0;
                    *(v0 + 10) = 0;
                }
            }
            else
            {
                result = sub_800B884(*(v0 + 22));
            }
        }
    }
    else
    {
        sub_800B884(*(v0 + 22));
        result = sub_800B892(*(v0 + 22) ^ 1);
        if ( result == &byte_0[3] || !result )
        {
            sub_801BED6(0x10000);
            sub_801DACC(0x10000);
            v2 = getChip8021DA8(*(v0 + 48));
            v3 = 0;
            v4 = 0;
            if ( __CFSHR__(v2[9], 2) )
            {
                v3 = *(v0 + 44);
                v4 = *(v0 + 50);
            }
            v9 = *(v0 + 48);
            v10 = v3;
            v11 = v4;
            if ( battle_networkInvert(*(v0 + 22)) )
                (sub_801E792)(80, v10, v11, v9);
            else
                (sub_801E792)(76, v10, v11, v9);
            PlaySoundEffect(371, v5, v6);
            result = dword_4;
            *(v0 + 11) = 4;
        }
    }
    return result;
}


// 0x800ba8a
char *sub_800BA8A()
{
    int v0; // r5
    char *result; // r0
    unsigned __int8 *v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r1
    int v6; // r2
    int v7; // r0
    int v8; // [sp-Ch] [bp-10h]
    int v9; // [sp-8h] [bp-Ch]
    int v10; // [sp-4h] [bp-8h]

    if ( *(v0 + 11) )
    {
        if ( battle_networkInvert(*(v0 + 22)) )
            result = sub_801E754();
        else
            result = sub_801E754();
        if ( !result )
        {
            if ( sub_800B8C2(*(v0 + 22)) || (v7 = sub_800B892(*(v0 + 22) ^ 1)) == 0 || v7 == 5 )
            {
                sub_800B884(*(v0 + 22));
                if ( *(*(sub_800BF5C(*(v0 + 22)) + 3) + 36) )
                {
                    if ( *(v0 + 48) - 221 <= 0x3B && sub_802CE78(*(v0 + 22) ^ 1) == 186 )
                    {
                        *(v0 + 9) -= 4;
                        result = 0;
                        *(v0 + 10) = 0;
                    }
                    else
                    {
                        *(v0 + 9) += 4;
                        result = 0;
                        *(v0 + 10) = 0;
                    }
                }
                else
                {
                    dword_200F3B8[*(v0 + 22)] = 1;
                    *(v0 + 9) += 8;
                    result = 0;
                    *(v0 + 10) = 0;
                }
            }
            else
            {
                result = sub_800B884(*(v0 + 22));
            }
        }
    }
    else if ( sub_800B892(*(v0 + 22)) == 4
                 || (sub_800B884(*(v0 + 22)), result = sub_800B892(*(v0 + 22) ^ 1), result == &byte_0[3])
                 || !result )
    {
        sub_801BED6(0x10000);
        sub_801DACC(0x10000);
        v2 = getChip8021DA8(*(v0 + 48));
        v3 = 0;
        v4 = 0;
        if ( __CFSHR__(v2[9], 2) )
        {
            v3 = *(v0 + 44);
            v4 = *(v0 + 50);
        }
        v8 = *(v0 + 48);
        v9 = v3;
        v10 = v4;
        if ( battle_networkInvert(*(v0 + 22)) )
            (sub_801E792)(80, v9, v10, v8);
        else
            (sub_801E792)(76, v9, v10, v8);
        PlaySoundEffect(371, v5, v6);
        result = dword_4;
        *(v0 + 11) = 4;
    }
    return result;
}


// 0x800bba8
char *sub_800BBA8()
{
    int v0; // r5
    char *result; // r0
    unsigned __int8 *v2; // r0
    int v3; // r1
    int v4; // r2
    char *v5; // ST00_4
    int v6; // ST04_4
    int v7; // ST08_4
    bool v8; // zf
    char *v9; // r0
    int v10; // r1
    int v11; // r2
    int v12; // r1
    int v13; // r2
    int v14; // r0

    if ( *(v0 + 11) )
    {
        result = sub_801E754();
        if ( !result )
        {
            if ( sub_800B8C2(*(v0 + 22)) || (v14 = sub_800B892(*(v0 + 22) ^ 1)) == 0 || v14 == 5 )
            {
                sub_800B884(*(v0 + 22));
                if ( *(*(sub_800BF5C(*(v0 + 22)) + 3) + 36) )
                    *(v0 + 9) += 4;
                else
                    *(v0 + 9) += 8;
                result = 0;
                *(v0 + 10) = 0;
            }
            else
            {
                result = sub_800B884(*(v0 + 22));
            }
        }
    }
    else
    {
        sub_800B884(*(v0 + 22));
        result = sub_800B892(*(v0 + 22) ^ 1);
        if ( result == &byte_0[3] || !result )
        {
            sub_801BED6(0x10000);
            sub_801DACC(0x10000);
            v2 = getChip8021DA8(*(v0 + 48));
            v3 = 0;
            v4 = 0;
            if ( __CFSHR__(v2[9], 2) )
            {
                v3 = *(v0 + 44);
                v4 = *(v0 + 50);
            }
            v5 = *(v0 + 48);
            v6 = v3;
            v7 = v4;
            v8 = battle_networkInvert(*(v0 + 22)) == 0;
            v9 = v5;
            v10 = v6;
            v11 = v7;
            if ( v8 )
            {
                if ( *(v0 + 7) == 1 )
                {
                    v9 = byte_171;
                    v10 = 0;
                    v11 = 0;
                }
                (sub_801E792)(76, v10, v11, v9);
            }
            else
            {
                (sub_801E792)(80, 0, 0, byte_171);
            }
            PlaySoundEffect(371, v12, v13);
            result = dword_4;
            *(v0 + 11) = 4;
        }
    }
    return result;
}


// 0x800bc88
int object_undimScreen()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    if ( *(v0 + 11) )
    {
LABEL_5:
        result = IsPaletteFadeActive();
        if ( result )
            return result;
        goto LABEL_6;
    }
    v1 = sub_800B892(*(v0 + 22) ^ 1);
    if ( v1 == 5 || !v1 )
    {
        engine_setScreeneffect(56, 4);
        *(v0 + 11) = 4;
        goto LABEL_5;
    }
LABEL_6:
    result = 8;
    *(v0 + 8) = 8;
    return result;
}


// 0x800bcc0
int sub_800BCC0()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    if ( *(v0 + 11) )
    {
LABEL_5:
        result = IsPaletteFadeActive();
        if ( result )
            return result;
        goto LABEL_6;
    }
    v1 = sub_800B892(*(v0 + 22) ^ 1);
    if ( v1 == 5 || !v1 )
    {
        engine_setScreeneffect(116, 128);
        *(v0 + 11) = 4;
        goto LABEL_5;
    }
LABEL_6:
    result = 8;
    *(v0 + 8) = 8;
    return result;
}


// 0x800bcf6
int sub_800BCF6()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    if ( !*(v0 + 11) )
    {
        v1 = sub_800B892(*(v0 + 22) ^ 1);
        if ( v1 != 5 && v1 )
            engine_setScreeneffect(60, byte_100);
        else
            engine_setScreeneffect(132, 16);
        *(v0 + 11) = 4;
    }
    result = IsPaletteFadeActive();
    if ( !result )
    {
        result = 8;
        *(v0 + 8) = 8;
    }
    return result;
}


