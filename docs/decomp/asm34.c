// 0x812d378
void __noreturn sub_812D378()
{
	copyTiles(0, 0, 1, &unk_201D620, 30, dword_14);
	copyTiles(-30, 2, 1, &unk_201DB20, 60, &dword_10 + 1);
}


// 0x812d3a8
signed int __fastcall sub_812D3A8(int a1, int a2, int a3, int a4)
{
	int v4; // r7
	int v5; // r10
	int v6; // r2
	int v7; // r3
	int v8; // r0
	int v9; // r1
	signed int result; // r0

	ZeroFillByEightWords(word_2023FA0, 32);
	sub_8120A88();
	v8 = sub_811FE7C(&unk_2023FC0, 1, v6, v7) + 1;
	*(v4 + 40) = v8;
	sub_8120018(&unk_2023FC0, v8, 5, 4);
	v9 = *(v5 + oToolkit_Unk2001c04_Ptr);
	*(v9 + 2) = 5;
	result = 4;
	*(v9 + 3) = 4;
	return result;
}


// 0x812d3e4
int sub_812D3E4()
{
	char *v0; // r7

	v0 = sub_812D6F8();
	sub_8120194(*(v0 + 23), word_2023FA0, &unk_202DFA0);
	copyTiles(3, 4, 2, &unk_202DFA0, 8, &dword_C + 2);
	sub_8120390(*(v0 + 23), word_2023FA0, &unk_202E080, byte_812C288);
	copyTiles(1, 4, 2, &unk_202E080, 2, &dword_C + 2);
	sub_81203E4(*(v0 + 23), word_2023FA0, &unk_202E0B8, &dword_35C | 0x9000);
	copyTiles(11, 4, 2, &unk_202E0B8, 2, &dword_C + 2);
	sub_8120458(*(v0 + 23), word_2023FA0, &unk_202E0F0, 41494);
	copyTiles(13, 4, 2, &unk_202E0F0, 1, &dword_C + 2);
	sub_81204C4(*(v0 + 23), word_2023FA0, byte_202E10C, 33615);
	copyTiles(14, 4, 2, byte_202E10C, 2, &dword_C + 2);
	sub_8120618(*(v0 + 23), word_2023FA0, byte_202E144, 41472);
	copyTiles(16, 4, 2, byte_202E144, 2, &dword_C + 2);
	return sub_812D5EC();
}


// 0x812d4fc
int sub_812D4FC()
{
	sub_812D6F8();
	sub_812D600(2, 32, 42, 19);
	return sub_812D9F0();
}


// 0x812d528
void sub_812D528()
{
	JUMPOUT(&loc_812D532);
}


// 0x812d52e
int sub_812D52E()
{
	int result; // r0
	char v1; // zf

	result = getStructFrom2008450(0);
	if ( v1 )
		result = sub_812D56C(&byte_812C258, 0, 48);
	return result;
}


// 0x812d54c
int sub_812D54C()
{
	int result; // r0
	char v1; // zf

	result = getStructFrom2008450(3);
	if ( v1 )
		result = sub_812D56C(byte_812C268, 3, 192);
	return result;
}


// 0x812d56c
int __fastcall sub_812D56C(void *a1, int a2, int a3)
{
	int v3; // r7
	int v4; // r6
	int v5; // r4
	int result; // r0
	int v7; // r1
	char v8; // zf
	int v9; // r5
	int v10; // [sp+0h] [bp-18h]

	v10 = a3;
	v4 = a2;
	v5 = a2 + 2;
	sub_80465A0(a1);
	do
	{
		result = getStructFrom2008450(v4);
		if ( !v8 )
		{
			if ( !v4 )
				v3 = v7;
			v9 = v7;
			result = sprite_setCoordinates(v10, 88);
			*(v9 + 20) = v3;
		}
		++v4;
	}
	while ( v4 <= v5 );
	return result;
}


// 0x812d5a0
int sub_812D5A0()
{
	char *v0; // r5
	int v1; // r2

	v0 = sub_812D6F8();
	v1 = *&word_2023FA0[16 * (*(v0 + 21) + *(v0 + 23)) + 14];
	return sub_811980C((v1 << 16) >> 23, v1 & 0x7F, 0, *(v0 + 21) + *(v0 + 23));
}


// 0x812d5d0
int __fastcall sub_812D5D0(int a1, int a2, int a3)
{
	int v3; // r4

	v3 = a1 & 0x1FF;
	sub_811980C(a1 & 0x1FF, (a1 << 17) >> 26, a2, a3);
	return v3;
}


// 0x812d5ec
int sub_812D5EC()
{
	sub_812D6F8();
	return sub_8119854(198, 88, 0);
}


// 0x812d600
int __fastcall sub_812D600(int a1, int a2, int a3, int a4)
{
	int *v4; // r4
	int v5; // r5
	unsigned int v6; // r7
	int v7; // r0
	int v8; // r2
	unsigned int v9; // ST14_4
	int v10; // r0
	int v11; // r1
	int result; // r0
	int v13; // [sp+8h] [bp-28h]

	v13 = a4;
	v7 = a1 << 16;
	if ( a3 )
		v8 = *(v5 + a3);
	else
		v8 = 0;
	v9 = *(v5 + a4);
	v10 = sub_811FAF4(v7 | (a2 + 16 * v8), v6, v9 & 0xF, v4);
	v11 = (v9 >> 4) - 1;
	if ( v9 >> 4 == 1 )
		*(v5 + v13) = sub_8120CC8(v10, &dword_8129180);
	result = *(v5 + v13) & 0xF | 16 * v11;
	*(v5 + v13) = result;
	return result;
}


// 0x812d668
int sub_812D668()
{
	sub_812D6F8();
	return sub_812D600(164, 32, 52, 21);
}


// 0x812d690
void sub_812D690()
{
	int v0; // r5
	int v1; // r10
	int v2; // r0
	char v3; // zf
	int v4; // r2
	int v5; // r1
	int v6; // r0

	if ( *(sub_812D6F8() + 20) )
	{
		v2 = *(v0 + 38);
		if ( v2 == 4 )
			return;
		if ( v2 == 8 )
			return;
		sub_812D700();
		if ( !v3 )
			return;
		sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 7u, 0, 10);
	}
	isJoystickIRQActive();
	if ( !v3 )
		goto LABEL_17;
	isJoystickIRQActive();
	if ( v3 )
		return;
	v5 = 4;
	if ( *(v0 + 17) )
	{
LABEL_17:
		*(v0 + 27) |= 1u;
		v5 = 8;
	}
	*(v0 + 38) = v5;
	v6 = 129;
	if ( v5 != 4 )
		v6 = 131;
	sound_play(v6, v5, v4);
}


// 0x812d6f8
char *sub_812D6F8()
{
	return &eT4BattleObjects[3872];
}


// 0x812d700
void sub_812D700()
{
	int v0; // r5
	char *v1; // r7
	int v2; // r1
	int v3; // r2
	char v4; // zf
	int v5; // r0

	v1 = sub_812D6F8();
	isJoystickIRQActive();
	if ( !v4 || *(v0 + 2) == 32 && (isJoystickIRQActive(), !v4) )
	{
		v5 = *(v0 + 2);
		if ( v5 == 32 )
		{
			*(v0 + 2) = v1[13];
			sound_play(131, v2, v3);
		}
		else
		{
			v1[13] = v5;
			*(v0 + 2) = 32;
			*(v1 + 26) = 0;
			sound_play(129, v2, v3);
		}
	}
}


// 0x812d748
void sub_812D748()
{
	int v0; // r10
	char *v1; // r7
	char v2; // zf

	v1 = sub_812D6F8();
	sub_812D700();
	if ( v2 )
	{
		sub_812D7A4();
		if ( v2 )
			*(v1 + 26) = sub_811FA22(*(*(v0 + oToolkit_JoypadPtr) + 4), 7, 1, *(v1 + 26));
		sub_812D78C();
	}
}


// 0x812d778
int sub_812D778()
{
	int v0; // r5
	int result; // r0

	result = *(v0 + 2);
	if ( result == 32 )
		sub_812D78C();
	return result;
}


// 0x812d78c
void __noreturn sub_812D78C()
{
	copyTiles(21, 2, 0, &unk_20227A0, 8, &dword_10 + 1);
	JUMPOUT(locret_812D79E);
}


// 0x812d7a4
signed int sub_812D7A4()
{
	int v0; // r10
	char *v1; // r5
	int v2; // r1
	int v3; // r2
	char v4; // zf
	int v5; // r0
	int v6; // r2
	int v7; // r3
	int v8; // r3

	v1 = sub_812D6F8();
	isJoystickIRQActive();
	if ( v4 )
		return 0;
	sound_play(129, v2, v3);
	v5 = *(v0 + oToolkit_Unk2001c04_Ptr);
	v6 = *(v1 + 26);
	v7 = *(v5 + 2);
	*(v5 + 2) = v6;
	if ( v6 == v7 )
		v8 = *(v5 + 3) ^ 4;
	else
		v8 = byte_30069A0[v6] ^ 4;
	*(v5 + 3) = v8;
	if ( *(v1 + 20) != 1 )
	{
		sub_8120018(&unk_2023FC0, *(v1 + 20) - 1, v6, v8);
		sub_812D5A0();
	}
	return 1;
}


// 0x812d814
char *sub_812D814()
{
	char *result; // r0
	int v1; // r1
	int v2; // r1

	result = sub_812D6F8();
	v1 = *(result + 27);
	if ( v1 )
	{
		v2 = v1 - 1;
		*(result + 27) = v2;
		if ( !v2 )
		{
			chatbox_8040818();
			result = 0;
		}
	}
	return result;
}


// 0x812d830
char *sub_812D830()
{
	char *result; // r0
	int v1; // r1

	result = sub_812D6F8();
	v1 = *(result + 27);
	return result;
}


// 0x812d83c
void sub_812D83C()
{
	int v0; // r5

	if ( !*(v0 + 108) )
	{
		*(v0 + 108) = byte_64;
		chatbox_runScript_803FD9C_on_eTextScript201BA20(65);
	}
}


// 0x812d854
int sub_812D854()
{
	char *v0; // r0
	unsigned int v1; // r0

	v0 = sub_812D6F8();
	v1 = word_2023FA0[16 * (*(v0 + 23) + *(v0 + 21)) + 14];
	return ((v1 & 0x7F) << 9) | (v1 >> 7) | 0x8000;
}


// 0x812d880
int sub_812D880()
{
	_BYTE *v0; // r5
	int v1; // r1
	int result; // r0

	if ( sub_80062C8() == 12 )
		engine_setScreeneffect(8, 16);
	v0[22] = v0[2];
	v0[2] = 28;
	v0[12] = 0;
	v0[3] = 0;
	if ( !(v0[27] & 1) )
	{
		if ( eStruct200BC30_getRef()[14] == 2 )
			v1 = 48;
		chatbox_runScript_803FD9C_on_eTextScript201BA20(v1);
	}
	result = v0[22];
	if ( v0[22] )
		result = sub_8120AB8();
	return result;
}


// 0x812d8c8
void __fastcall __noreturn sub_812D8C8(int a1, int a2, int a3, int a4)
{
	int v4; // r5
	int v5; // r0

	ZeroFillGFX30025c0();
	sub_8046664();
	copyTiles(0, 0, 1, &dword_201E420, 30, dword_14);
	sub_812D52E();
	v5 = sub_812D5D0(*(v4 + 42), 0, 0);
	sub_812D934(v5, 0);
	sub_812D954(0);
}


// 0x812d91c
void sub_812D91C()
{
	sub_80465A0(byte_812C278);
}


// 0x812d934
int __fastcall sub_812D934(int a1, int a2)
{
	return sub_8120228(a1, 4 * a2, *(&off_812D94C + a2));
}


// 0x812d954
void __fastcall __noreturn sub_812D954(int a1)
{
	int v1; // r5
	int v2; // r0
	int v3; // r1
	int v4; // ST00_4

	v2 = 4 * a1;
	if ( v2 )
		v3 = 8 - *(v1 + 48);
	v4 = *(&off_812D9D4 + v2);
	sub_80018D0(*&byte_812D9E0[v2], *&byte_812D9E0[v2 + 8], 2, 0);
	JUMPOUT(loc_812D988);
}


// 0x812d99c
void __fastcall sub_812D99C(int a1)
{
	int v1; // r5
	int v2; // r0
	int v3; // r3
	int v4; // r1

	v2 = 4 * a1;
	v3 = *(&off_812D9D4 + v2);
	if ( v2 )
		v4 = 8 - *(v1 + 48);
	sub_80018D0(*&byte_812D9E0[v2], *&byte_812D9E0[v2 + 8], 2, 0);
}


// 0x812d9f0
int sub_812D9F0()
{
	sub_812D6F8();
	return sub_812DA08(146, 28, 40, 46);
}


// 0x812da08
signed int __fastcall sub_812DA08(int a1, int a2, int a3, int a4)
{
	int v4; // r5

	return sub_811FA98((a1 << 16) | a2, 0x20002u, *(v4 + a3), *(v4 + a4));
}


// 0x812da3c
int sub_812DA3C()
{
	int result; // r0
	char v1; // zf

	result = getStructFrom2008450(6);
	if ( v1 )
		result = sub_812D4FC();
	return result;
}


// 0x812da4c
signed int __fastcall sub_812DA4C(char a1)
{
	int v1; // r5
	signed int result; // r0

	*(v1 + 31) = a1;
	*(v1 + 2) = 48;
	chatbox_runScript_803FD9C_on_eTextScript201BA20(65);
	result = 240;
	*(v1 + 40) = 240;
	return result;
}


// 0x812da60
void sub_812DA60()
{
	_BYTE *v0; // r5

	if ( sub_80062C8() == 12 )
		engine_setScreeneffect(8, 16);
	if ( eStruct200BC30_getJumpOffset00() )
		sub_803C754();
	else
		sub_81440D8();
	v0[2] = 28;
	v0[12] = 0;
	v0[3] = 0;
	sub_8120AB8();
}


