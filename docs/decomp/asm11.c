// 0x8069038
unsigned int sub_8069038()
{
	int v0; // r5
	int v1; // r10
	int v2; // r4
	int v3; // r1
	int v4; // r2
	int v5; // r3

	*(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8068CCC + *(v0 + 5));
	sub_8069140();
	sub_803037C(*(v0 + 4), *(v0 + 5));
	sub_8030AA4(*(v0 + 4), *(v0 + 5));
	v2 = *(v0 + 5);
	camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
	sub_8030472();
	sub_80028D4(&eT4BattleObjects[4000], v3, v4, v5);
	uncompSprite_8002906(off_806909C[*(v0 + 5)]);
	chatbox_uncompBasedOnMap_803FD08();
	sub_80691FE();
	return sub_8034FB8();
}


// 0x80690c2
int __fastcall sub_80690C2(int a1, int a2)
{
	return LoadGFXAnims(off_80690D4[a2]);
}


// 0x8069140
void sub_8069140()
{
	int v0; // r10
	int v1; // r5
	void **v2; // r7
	int v3; // r0

	v1 = *(v0 + oToolkit_GameStatePtr);
	v2 = &off_8069178 + 4 * *(v1 + oGameState_MapNumber);
	SetBGScrollCallbacks(*v2, v2[1], v2[2]);
	v3 = GetRenderInfoLCDControl();
	SetRenderInfoLCDControl(v3 | v2[3]);
	LoadBGAnimData(off_80691AC[*(v1 + oGameState_MapNumber)]);
}


// 0x80691d4
int sub_80691D4()
{
	int v0; // r10

	return (*(&off_80691EC + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x80691f8
void nullsub_31()
{
	;
}


// 0x80691fa
void nullsub_32()
{
	;
}


// 0x80691fc
void nullsub_33()
{
	;
}


// 0x80691fe
int sub_80691FE()
{
	int v0; // r10

	return SpawnObjectsFromList(off_8069218[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


// 0x8069fe8
unsigned int sub_8069FE8()
{
	int v0; // r5
	int v1; // r10
	int v2; // r4
	int v3; // r1
	int v4; // r2
	int v5; // r3

	*(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_80698DC + *(v0 + 5));
	sub_806A120();
	sub_803037C(*(v0 + 4), *(v0 + 5));
	sub_8030AA4(*(v0 + 4), *(v0 + 5));
	v2 = *(v0 + 5);
	camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
	sub_8030472();
	sub_80028D4(&eT4BattleObjects[4000], v3, v4, v5);
	uncompSprite_8002906(off_806A04C[*(v0 + 5)]);
	chatbox_uncompBasedOnMap_803FD08();
	sub_806A1DE();
	return sub_8034FB8();
}


// 0x806a070
int __fastcall sub_806A070(int a1, int a2)
{
	return LoadGFXAnims(off_806A084[a2]);
}


// 0x806a120
void sub_806A120()
{
	int v0; // r10
	int v1; // r5
	void **v2; // r7
	int v3; // r0

	v1 = *(v0 + oToolkit_GameStatePtr);
	v2 = &off_806A158 + 4 * *(v1 + oGameState_MapNumber);
	SetBGScrollCallbacks(*v2, v2[1], v2[2]);
	v3 = GetRenderInfoLCDControl();
	SetRenderInfoLCDControl(v3 | v2[3]);
	LoadBGAnimData(off_806A18C[*(v1 + oGameState_MapNumber)]);
}


// 0x806a1b4
int sub_806A1B4()
{
	int v0; // r10

	return (*(&off_806A1CC + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x806a1d8
void nullsub_67()
{
	;
}


// 0x806a1da
void nullsub_68()
{
	;
}


// 0x806a1dc
void nullsub_69()
{
	;
}


// 0x806a1de
int sub_806A1DE()
{
	int v0; // r10

	return SpawnObjectsFromList(off_806A1F8[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


// 0x806aa00
unsigned int sub_806AA00()
{
	int v0; // r5
	int v1; // r10
	int v2; // r4
	int v3; // r1
	int v4; // r2
	int v5; // r3

	*(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_806A7AC + *(v0 + 5));
	sub_806AB94();
	sub_803037C(*(v0 + 4), *(v0 + 5));
	sub_8030AA4(*(v0 + 4), *(v0 + 5));
	v2 = *(v0 + 5);
	camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
	sub_8030472();
	sub_80028D4(&eT4BattleObjects[4000], v3, v4, v5);
	uncompSprite_8002906(off_806AA64[*(v0 + 5)]);
	chatbox_uncompBasedOnMap_803FD08();
	sub_806AD00();
	return sub_8034FB8();
}


// 0x806aaaa
int __fastcall sub_806AAAA(int a1, int a2)
{
	return LoadGFXAnims((&off_806AABC)[a2]);
}


// 0x806ab94
void sub_806AB94()
{
	int v0; // r10
	int v1; // r5
	void **v2; // r7
	int v3; // r0

	v1 = *(v0 + oToolkit_GameStatePtr);
	v2 = &off_806ABCC + 4 * *(v1 + oGameState_MapNumber);
	SetBGScrollCallbacks(*v2, v2[1], v2[2]);
	v3 = GetRenderInfoLCDControl();
	SetRenderInfoLCDControl(v3 | v2[3]);
	LoadBGAnimData(off_806AC20[*(v1 + oGameState_MapNumber)]);
}


// 0x806acc0
int sub_806ACC0()
{
	int v0; // r10

	return (*(&off_806ACD8 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x806acec
void sub_806ACEC()
{
	;
}


// 0x806acf0
void sub_806ACF0()
{
	;
}


// 0x806acf4
void sub_806ACF4()
{
	;
}


// 0x806acf8
void sub_806ACF8()
{
	;
}


// 0x806acfc
void sub_806ACFC()
{
	;
}


// 0x806ad00
int sub_806AD00()
{
	int v0; // r10

	return SpawnObjectsFromList(*(&off_806AD18 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)));
}


// 0x806c23c
unsigned int sub_806C23C()
{
	int v0; // r5
	int v1; // r10
	int v2; // r4
	int v3; // r1
	int v4; // r2
	int v5; // r3

	*(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_806BFF8[*(v0 + 5)];
	sub_806C35C();
	sub_803037C(*(v0 + 4), *(v0 + 5));
	sub_8030AA4(*(v0 + 4), *(v0 + 5));
	v2 = *(v0 + 5);
	camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
	sub_8030472();
	sub_80028D4(&eT4BattleObjects[4000], v3, v4, v5);
	uncompSprite_8002906(*(&off_806C2A0 + *(v0 + 5)));
	chatbox_uncompBasedOnMap_803FD08();
	sub_806C59C();
	return sub_8034FB8();
}


// 0x806c2e2
int __fastcall sub_806C2E2(int a1, int a2)
{
	return LoadGFXAnims(off_806C2F4[a2]);
}


// 0x806c35c
void sub_806C35C()
{
	int v0; // r10
	int v1; // r5
	void **v2; // r7
	int v3; // r0

	v1 = *(v0 + oToolkit_GameStatePtr);
	v2 = &off_806C394 + 4 * *(v1 + oGameState_MapNumber);
	SetBGScrollCallbacks(*v2, v2[1], v2[2]);
	v3 = GetRenderInfoLCDControl();
	SetRenderInfoLCDControl(v3 | v2[3]);
	LoadBGAnimData((&off_806C408)[*(v1 + oGameState_MapNumber)]);
}


// 0x806c4b0
int __fastcall sub_806C4B0(int a1, int a2)
{
	int v2; // r10
	int v3; // ST00_4
	int v4; // ST04_4

	v3 = a1;
	v4 = a2;
	SetEventFlagFromImmediate(0, 142);
	ClearEventFlagFromImmediate(0, 143);
	return (*(&off_806C4DC + *(*(v2 + oToolkit_GameStatePtr) + oGameState_MapNumber)))(v3, v4);
}


// 0x806c4f8
int __fastcall sub_806C4F8(int result, int a2)
{
	if ( result != 1 || a2 != 2 )
	{
		LoadGFXAnim(&off_806C1C4);
		result = SetEventFlagFromImmediate(22, 241);
	}
	return result;
}


// 0x806c514
int __fastcall sub_806C514(int result, int a2)
{
	if ( result || a2 )
	{
		ClearEventFlagFromImmediate(0, 142);
		result = SetEventFlagFromImmediate(0, 143);
	}
	return result;
}


// 0x806c532
unsigned int __fastcall sub_806C532(int a1, int a2)
{
	int v2; // r10
	unsigned int result; // r0

	if ( a1 != 3 || a2 != 2 || (result = *(*(v2 + oToolkit_GameStatePtr) + oGameState_Unk_3c)) != 0 )
	{
		ClearEventFlagFromImmediate(0, 142);
		result = SetEventFlagFromImmediate(0, 143);
	}
	return result;
}


// 0x806c55a
int __fastcall sub_806C55A(int result, int a2)
{
	if ( result != 4 || a2 != 1 )
	{
		ClearEventFlagFromImmediate(0, 142);
		result = SetEventFlagFromImmediate(0, 143);
	}
	return result;
}


// 0x806c578
int __fastcall sub_806C578(int result, int a2)
{
	if ( result != 5 || a2 != 1 )
	{
		ClearEventFlagFromImmediate(0, 142);
		result = SetEventFlagFromImmediate(0, 143);
	}
	return result;
}


// 0x806c59c
int sub_806C59C()
{
	int v0; // r10

	return SpawnObjectsFromList(*(&pt_806C5B4 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)));
}


