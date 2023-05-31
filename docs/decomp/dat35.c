// 0x812efe4
void sub_812EFE4()
{
	int v0; // r1
	char v1; // zf
	int v2; // r0

	getStructFrom2008450(6);
	if ( v1 )
	{
		v2 = *(v0 + 1);
		if ( v2 == 29 || v2 != 30 )
			sub_812EFD4();
	}
}


// 0x812f000
signed int __fastcall sub_812F000(char a1)
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


// 0x812f014
void sub_812F014()
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
}


// 0x812f094
int sub_812F094()
{
	int v0; // r5
	int result; // r0

	(*(&off_812F0C0 + *(v0 + 2)))();
	sub_80465BC();
	sub_80465F8();
	result = eStruct200BC30_getJumpOffset00();
	if ( result )
		result = sub_803C59C(0, 0);
	return result;
}


// 0x812f0f8
void sub_812F0F8()
{
	int v0; // r5
	int v1; // r0
	char v2; // r4
	u32 v3; // r0
	u8 *v4; // r6
	_BYTE *v5; // r0
	int v6; // r0
	int v7; // r4
	unsigned int v8; // r3
	unsigned int v9; // r3
	char v10; // zf

	*(v0 + 27) = 0;
	*(v0 + 16) = 12;
	v1 = sub_803EAE4();
	if ( v1 == 4 )
	{
		sub_8130424();
	}
	else if ( v1 != 1 )
	{
		v2 = v1;
		if ( !(v1 & 0x10) )
		{
			v3 = sub_81325CC();
			*(v0 + 38) = 0;
			*(v3 + 8) = 0;
			*(v3 + 10) = -292;
		}
		if ( !(v2 & 8) )
		{
			v4 = sub_803E8F8();
			v5 = sub_803EF74();
			v6 = sub_81323B0(v5);
			v7 = v6;
			if ( v6 != -1 )
			{
				v8 = 8;
				while ( *(v7 + 4) == *(v4 + 7) )
				{
					v9 = v8 >> 1;
					if ( *(v7 + 2) != *(v4 + 5) || *(v7 + 10) != 65244 )
						break;
					v8 = v9 >> 1;
					v7 += 16;
					if ( v7 > v6 + 16 )
					{
						if ( !v8 )
						{
							IsPaletteFadeActive();
							if ( !v10 )
							{
								*(v0 + 2) = 4;
								*(v0 + 20) = 0;
								*(v0 + 42) = -292;
								sub_8130084();
							}
						}
						return;
					}
				}
			}
		}
	}
}


// 0x812f190
void __noreturn sub_812F190()
{
	int v0; // r5
	int v1; // r0
	char v2; // r4
	u32 v3; // r0
	u8 *v4; // r6
	_BYTE *v5; // r0
	int v6; // r0
	int v7; // r4
	int v8; // r7
	unsigned int v9; // r3
	unsigned int v10; // r3
	int v11; // r0
	int v12; // r0
	char v13; // r1
	u32 v14; // r0
	char v15; // zf

	*(v0 + 16) = 12;
	*(v0 + 42) = sub_813040C();
	v1 = sub_803EAE4();
	if ( v1 == 4 )
	{
		sub_8130424();
		goto LABEL_27;
	}
	if ( v1 != 1 )
	{
		v2 = v1;
		if ( !(v1 & 0x10) )
		{
			v3 = sub_81325CC();
			*(v3 + 8) = *(v0 + 38);
			*(v3 + 10) = *(v0 + 42);
		}
		if ( !(v2 & 8) )
		{
			v4 = sub_803E8F8();
			v5 = sub_803EF74();
			v6 = sub_81323B0(v5);
			v7 = v6;
			if ( v6 != -1 )
			{
				v8 = v6 + 16;
				v9 = 8;
				do
				{
					if ( *(v6 + 4) != *(v4 + 7) )
						goto LABEL_27;
					v10 = v9 >> 1;
					if ( *(v6 + 2) != *(v4 + 5) )
						goto LABEL_27;
					v9 = v10 >> 1;
					v6 += 16;
				}
				while ( v6 <= v8 );
				if ( !v9 )
				{
					if ( *(v7 + 10) > 32771 || *(v7 + 26) > 32771 )
						goto LABEL_31;
					v11 = sub_8132430(v7);
					if ( v11 <= 2 )
					{
						sub_8130864();
						*(v0 + 73) = 4;
						*(v0 + 16) = 4;
						if ( v12 != 2 )
						{
							chatbox_runScript_803FD9C_on_eTextScript201BA20(64);
							v13 = 3;
							if ( *(v0 + 38) == 8 )
								v13 = 4;
							*(v0 + 16) = v13;
							*(v0 + 38) = 16;
						}
						goto LABEL_27;
					}
					if ( v11 == 255 )
					{
LABEL_31:
						IsPaletteFadeActive();
						if ( !v15 )
							sub_8130370();
					}
					else
					{
						if ( sub_803DD60(v11) )
							v7 += 16;
						if ( *(v7 + 10) != 65244 )
						{
							*(v0 + 2) = 8;
							*(v0 + 3) = 0;
							v14 = sub_81325CC();
							*(v0 + 38) = 2;
							*(v14 + 8) = 2;
							engine_setScreeneffect(12, 16);
						}
					}
				}
			}
		}
	}
LABEL_27:
	sub_813064C();
	JUMPOUT(loc_812F294);
}


// 0x812f2ac
int sub_812F2AC()
{
	int v0; // r5

	return (*(&off_812F2C0 + *(v0 + 3)))();
}


// 0x812f2d0
void sub_812F2D0()
{
	int v0; // r5
	int v1; // r0
	char v2; // r4
	u32 v3; // r0
	u8 *v4; // r6
	_BYTE *v5; // r0
	int v6; // r0
	int v7; // r7
	unsigned int v8; // r3
	unsigned int v9; // r3
	int v10; // r0
	int v11; // r1
	int v12; // r2
	int v13; // r3
	char v14; // zf

	*(v0 + 16) = 19;
	v1 = sub_803EAE4();
	if ( v1 == 4 )
	{
		sub_8130424();
LABEL_21:
		sub_8130464(v10, v11, v12, v13);
		sub_8130850();
		*(v0 + 3) = 4;
		engine_setScreeneffect(8, 16);
		return;
	}
	if ( v1 != 1 )
	{
		v2 = v1;
		if ( !(v1 & 0x10) )
		{
			v3 = sub_81325CC();
			*(v3 + 8) = *(v0 + 38);
			*(v3 + 10) = *(v0 + 42);
		}
		if ( !(v2 & 8) )
		{
			v4 = sub_803E8F8();
			v5 = sub_803EF74();
			v6 = sub_81323B0(v5);
			if ( v6 != -1 )
			{
				v7 = v6 + 16;
				v8 = 8;
				do
				{
					if ( *(v6 + 4) != *(v4 + 7) )
						break;
					v9 = v8 >> 1;
					if ( *(v6 + 2) != *(v4 + 5) )
						break;
					if ( !*(v6 + 8) )
						break;
					if ( *(v6 + 10) > 32771 )
						break;
					v8 = v9 >> 1;
					v6 += 16;
				}
				while ( v6 <= v7 );
			}
			IsPaletteFadeActive();
			if ( !v14 )
			{
				v10 = *(v0 + 3);
				if ( v10 == 4 )
				{
					*(v0 + 3) = 8;
					*(v0 + 38) = 4;
					return;
				}
				goto LABEL_21;
			}
			if ( !*(v0 + 3) )
			{
				sub_813064C();
				sub_8130810();
			}
		}
	}
}


// 0x812f390
void sub_812F390()
{
	int v0; // r5
	int v1; // r0
	char v2; // r4
	u32 v3; // r0
	u8 *v4; // r6
	_BYTE *v5; // r0
	int v6; // r0
	int v7; // r4
	int v8; // r7
	unsigned int v9; // r3
	unsigned int v10; // r3
	signed int v11; // r0
	signed int v12; // ST00_4
	char v13; // r1
	char v14; // zf
	u32 v15; // r0

	*(v0 + 16) = 19;
	v1 = sub_803EAE4();
	if ( v1 == 4 )
	{
		sub_8130424();
	}
	else if ( v1 != 1 )
	{
		v2 = v1;
		if ( !(v1 & 0x10) )
		{
			v3 = sub_81325CC();
			*(v3 + 8) = *(v0 + 38);
			*(v3 + 10) = *(v0 + 42) & 0x7FFF;
		}
		if ( !(v2 & 8) )
		{
			v4 = sub_803E8F8();
			v5 = sub_803EF74();
			v6 = sub_81323B0(v5);
			v7 = v6;
			if ( v6 != -1 )
			{
				v8 = v6 + 16;
				v9 = 8;
				while ( *(v6 + 4) == *(v4 + 7) )
				{
					v10 = v9 >> 1;
					if ( *(v6 + 2) != *(v4 + 5) )
						break;
					if ( *(v6 + 8) != 8 )
					{
						if ( *(v6 + 8) == 2 )
							return;
						if ( *(v6 + 8) != 4 || *(v6 + 10) > 3 )
							break;
					}
					v9 = v10 >> 1;
					v6 += 16;
					if ( v6 > v8 )
					{
						if ( v9 )
							break;
						v11 = sub_8132430(v7);
						if ( v11 <= 2 )
						{
							v12 = v11;
							chatbox_runScript_803FD9C_on_eTextScript201BA20(64);
							*(v0 + 73) = *(v0 + 2);
							*(v0 + 2) = 36;
							*(v0 + 22) = 0;
							*(v0 + 16) = 4;
							if ( v12 != 2 )
							{
								v13 = 3;
								if ( *(v0 + 38) == 8 )
									v13 = 4;
								*(v0 + 16) = v13;
								*(v0 + 38) = 16;
							}
							break;
						}
						if ( v11 == 255 )
							break;
						sub_812FFA0();
						return;
					}
				}
			}
			JoypadKeyPressed();
			if ( !v14 )
			{
				*(v0 + 2) = 12;
				*(v0 + 20) = 0;
				*(v0 + 3) = 0;
				*(v0 + 42) = -292;
				*(v0 + 38) = 0;
				v15 = sub_81325CC();
				*(v15 + 8) = *(v0 + 38);
				*(v0 + 42) = -292;
				*(v15 + 10) = -292;
			}
		}
	}
}


// 0x812f494
void sub_812F494()
{
	int v0; // r5
	int v1; // r0
	char v2; // r4
	u32 v3; // r0
	u8 *v4; // r6
	_BYTE *v5; // r0
	int v6; // r0
	int v7; // r7
	unsigned int v8; // r3
	unsigned int v9; // r3

	*(v0 + 16) = 19;
	v1 = sub_803EAE4();
	if ( v1 == 4 )
	{
		sub_8130424();
	}
	else if ( v1 != 1 )
	{
		v2 = v1;
		if ( !(v1 & 0x10) )
		{
			v3 = sub_81325CC();
			*(v3 + 8) = *(v0 + 38);
			*(v3 + 10) = *(v0 + 42) & 0x7FFF;
		}
		if ( !(v2 & 8) )
		{
			v4 = sub_803E8F8();
			v5 = sub_803EF74();
			v6 = sub_81323B0(v5);
			if ( v6 != -1 )
			{
				v7 = v6 + 16;
				v8 = 8;
				while ( *(v6 + 4) == *(v4 + 7) )
				{
					v9 = v8 >> 1;
					if ( *(v6 + 2) != *(v4 + 5) || *(v6 + 10) > 32771 )
						break;
					v8 = v9 >> 1;
					v6 += 16;
					if ( v6 > v7 )
					{
						if ( !v8 )
							*(v0 + 3) = 8;
						return;
					}
				}
			}
		}
	}
}


// 0x812f530
void sub_812F530()
{
	int v0; // r5
	int v1; // r10
	int v2; // r4
	int v3; // r0
	int v4; // r0
	char v5; // r4
	u32 v6; // r0
	u8 *v7; // r6
	_BYTE *v8; // r0
	int v9; // r0
	int v10; // r4
	int v11; // r7
	unsigned int v12; // r3
	unsigned int v13; // r3
	int v14; // r0
	char v15; // zf

	*(v0 + 16) = 19;
	v2 = *(v0 + 20);
	v3 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 2), 7, 1, v2);
	if ( v2 != v3 )
		*(v0 + 20) = v3;
	v4 = sub_803EAE4();
	if ( v4 == 4 )
	{
		sub_8130424();
	}
	else if ( v4 != 1 )
	{
		v5 = v4;
		if ( !(v4 & 0x10) )
		{
			v6 = sub_81325CC();
			*(v6 + 8) = *(v0 + 38);
			*(v6 + 10) = *(v0 + 42);
		}
		if ( !(v5 & 8) )
		{
			v7 = sub_803E8F8();
			v8 = sub_803EF74();
			v9 = sub_81323B0(v8);
			v10 = v9;
			if ( v9 != -1 )
			{
				v11 = v9 + 16;
				v12 = 8;
				while ( *(v9 + 4) == *(v7 + 7) )
				{
					v13 = v12 >> 1;
					if ( *(v9 + 2) != *(v7 + 5) )
						break;
					v12 = v13 >> 1;
					v9 += 16;
					if ( v9 > v11 )
					{
						if ( !v12 )
						{
							v14 = sub_8132430(v10);
							if ( v14 == 4 )
							{
								sub_813005C();
							}
							else
							{
								if ( sub_803DD60(v14) )
									v10 += 16;
								if ( *(v10 + 10) == 65244 )
								{
									if ( *(v0 + 3) )
									{
										IsPaletteFadeActive();
										if ( !v15 )
										{
											engine_setScreeneffect(8, 16);
											sub_8046664();
											sub_81301DC();
											sub_8130208();
											sub_813064C();
											sub_8130810();
											sub_81304EC();
											sub_813017C();
											*(v0 + 2) = 4;
										}
									}
									else
									{
										PlaySoundEffect(131, 65244, 65244);
										engine_setScreeneffect(12, 16);
										*(v0 + 3) = 1;
									}
								}
							}
						}
						return;
					}
				}
			}
		}
	}
}


// 0x812f628
void sub_812F628()
{
	int v0; // r5
	int v1; // r10
	int v2; // r2
	char v3; // zf
	int v4; // r0
	int v5; // r4
	int v6; // r0
	int v7; // r1
	int v8; // r2
	int v9; // r2
	signed __int16 v10; // r1
	int v11; // r0
	int v12; // r1
	int v13; // r0
	char v14; // r4
	u32 v15; // r0
	u8 *v16; // r6
	_BYTE *v17; // r0
	int v18; // r0
	int v19; // r4
	int v20; // r7
	unsigned int v21; // r3
	unsigned int v22; // r3
	signed int v23; // r0
	u32 v24; // r0
	u32 v25; // r0

	*(v0 + 16) = 22;
	if ( *(v0 + 3) )
	{
		JoypadKeyPressed();
		if ( !v3 )
		{
			*(v0 + 38) = 0;
			PlaySoundEffect(131, 0, v2);
		}
	}
	else
	{
		v4 = *(*(v1 + oToolkit_JoypadPtr) + 2);
		v5 = *(v0 + 21);
		sub_811FA0C();
		if ( v5 != v6 )
		{
			*(v0 + 21) = v6;
			goto LABEL_14;
		}
		JoypadKeyPressed();
		if ( v3 )
		{
			JoypadKeyPressed();
			if ( v3 )
				goto LABEL_14;
		}
		else
		{
			*(v0 + 21) = 1;
			PlaySoundEffect(131, v7, v8);
		}
		v10 = 4;
		if ( *(v0 + 21) )
			v10 = 8;
		*(v0 + 38) = v10;
		v11 = 129;
		v12 = *(v0 + 38);
		if ( v12 != 4 )
			v11 = 131;
		PlaySoundEffect(v11, v12, v9);
	}
LABEL_14:
	v13 = sub_803EAE4();
	if ( v13 == 4 )
	{
		sub_8130424();
		return;
	}
	if ( v13 != 1 )
	{
		v14 = v13;
		if ( !(v13 & 0x10) )
		{
			v15 = sub_81325CC();
			*(v15 + 8) = *(v0 + 38);
			*(v15 + 10) = -293;
		}
		if ( !(v14 & 8) )
		{
			v16 = sub_803E8F8();
			v17 = sub_803EF74();
			v18 = sub_81323B0(v17);
			v19 = v18;
			if ( v18 != -1 )
			{
				v20 = v18 + 16;
				v21 = 8;
				do
				{
					if ( *(v18 + 4) != *(v16 + 7) )
						return;
					v22 = v21 >> 1;
					if ( *(v18 + 2) != *(v16 + 5) || *(v18 + 10) != 65243 )
						return;
					v21 = v22 >> 1;
					v18 += 16;
				}
				while ( v18 <= v20 );
				if ( v21 )
					return;
				v23 = sub_81324A8(v19);
				if ( v23 == 8 )
				{
LABEL_31:
					engine_setScreeneffect(12, 16);
					*(v0 + 2) = 20;
					*(v0 + 3) = 0;
					*(v0 + 20) = 0;
					v25 = sub_81325CC();
					*(v0 + 38) = 0;
					*(v25 + 8) = 0;
					*(v0 + 42) = -292;
					*(v25 + 10) = -292;
					return;
				}
				if ( v23 <= 2 )
				{
					if ( v23 != 2 )
					{
						*(v0 + 2) = 8;
						*(v0 + 3) = 12;
						v24 = sub_81325CC();
						*(v24 + 8) = 4;
						*(v0 + 38) = 4;
						*(v24 + 10) = *(v0 + 42);
						sub_81302F4(128, 1);
						sub_81304A4();
						return;
					}
					goto LABEL_31;
				}
				if ( v23 == 255 )
				{
					if ( *(v0 + 3) == 4 )
					{
						*(v0 + 3) = 0;
						sub_811A940(0, 6);
					}
					sub_811A914(*(v0 + 21), 6);
				}
				else
				{
					if ( v23 == 3 )
						sub_811A940(1, 6);
					if ( v23 == 4 )
						sub_811A940(1, 6);
				}
			}
		}
	}
}


// 0x812f7c8
void sub_812F7C8()
{
	int v0; // r5
	int v1; // r0
	char v2; // r4
	u32 v3; // r0
	u8 *v4; // r6
	_BYTE *v5; // r0
	int v6; // r0
	int v7; // r7
	unsigned int v8; // r3
	unsigned int v9; // r3

	*(v0 + 16) = 22;
	v1 = sub_803EAE4();
	if ( v1 == 4 )
	{
		sub_8130424();
	}
	else if ( v1 != 1 )
	{
		v2 = v1;
		if ( !(v1 & 0x10) )
		{
			v3 = sub_81325CC();
			*(v3 + 8) = *(v0 + 38);
			*(v3 + 10) = -296;
		}
		if ( !(v2 & 8) )
		{
			v4 = sub_803E8F8();
			v5 = sub_803EF74();
			v6 = sub_81323B0(v5);
			if ( v6 != -1 )
			{
				v7 = v6 + 16;
				v8 = 8;
				while ( *(v6 + 4) == *(v4 + 7) )
				{
					v9 = v8 >> 1;
					if ( *(v6 + 2) != *(v4 + 5) || *(v6 + 10) != 65240 )
						break;
					v8 = v9 >> 1;
					v6 += 16;
					if ( v6 > v7 )
					{
						if ( !v8 )
						{
							sub_813068C();
							*(v0 + 2) = 52;
							chatbox_runScript_803FD9C_on_eTextScript201BA20(65);
						}
						return;
					}
				}
			}
		}
	}
}


// 0x812f858
void sub_812F858()
{
	int v0; // r5
	int v1; // r0
	char v2; // r4
	u8 *v3; // r6
	_BYTE *v4; // r0
	int v5; // r0
	int v6; // r4
	int v7; // r7
	unsigned int v8; // r3
	unsigned int v9; // r3

	*(v0 + 16) = 22;
	v1 = sub_803EAE4();
	if ( v1 == 4 )
	{
		sub_8130424();
	}
	else if ( v1 != 1 )
	{
		v2 = v1;
		if ( !(v1 & 0x10) )
			v1 = sub_81325CC();
		if ( !(v2 & 8) )
		{
			sub_81306F0(v1);
			v3 = sub_803E8F8();
			v4 = sub_803EF74();
			v5 = sub_81323B0(v4);
			v6 = v5;
			if ( v5 != -1 )
			{
				v7 = v5 + 16;
				v8 = 8;
				while ( *(v5 + 4) == *(v3 + 7) )
			    {
                    v9 = v8 >> 1;
                    if ( *(v5 + 2) != *(v3 + 5) || *(v5 + 10) != *(v0 + 46) + 65241 )
                        break;
                    v8 = v9 >> 1;
                    v5 += 16;
                    if ( v5 > v7 )
                    {
                        if ( !v8 )
                        {
                            *(v0 + 64) += 2;
                            ++*(v0 + 46);
                            sub_8130728(v6);
                        }
                        return;
                    }
                }
            }
        }
    }
}


// 0x812f904
int sub_812F904()
{
    int v0; // r5

    return (*(&off_812F918 + *(v0 + 3)))();
}


// 0x812f920
void sub_812F920()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u8 *v4; // r6
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r4
    int v8; // r7
    unsigned int v9; // r3
    unsigned int v10; // r3
    int v11; // r0
    char v12; // zf

    *(v0 + 16) = 19;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_8130424();
    }
    else if ( v1 != 1 )
    {
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            *(v3 + 8) = *(v0 + 38);
            *(v3 + 10) = *(v0 + 42);
        }
        if ( !(v2 & 8) )
        {
            v4 = sub_803E8F8();
            v5 = sub_803EF74();
            v6 = sub_81323B0(v5);
            v7 = v6;
            if ( v6 != -1 )
            {
                v8 = v6 + 16;
                v9 = 8;
                while ( *(v6 + 4) == *(v4 + 7) )
                {
                    v10 = v9 >> 1;
                    if ( *(v6 + 2) != *(v4 + 5) )
                        break;
                    v9 = v10 >> 1;
                    v6 += 16;
                    if ( v6 > v8 )
                    {
                        if ( !v9 )
                        {
                            v11 = v7;
                            if ( *(v7 + 10) == 65243 && (v11 = v7 + 16, *(v7 + 26) == 65243) )
                            {
                                if ( sub_8132430(v7) == 4 )
                                {
                                    *(v0 + 2) = 24;
                                    *(v0 + 20) = 0;
                                    *(v0 + 40) = 60;
                                }
                            }
                            else
                            {
                                if ( sub_803DD60(v11) )
                                    v7 += 16;
                                if ( *(v7 + 10) == 65244 )
                                {
                                    IsPaletteFadeActive();
                                    if ( !v12 )
                                    {
                                        engine_setScreeneffect(8, 16);
                                        *(v0 + 3) = 4;
                                        sub_8046664();
                                        sub_81301DC();
                                        sub_8130208();
                                        sub_8130250();
                                        sub_81304BC();
                                        sub_81304EC();
                                        sub_813017C();
                                    }
                                }
                            }
                        }
                        return;
                    }
                }
            }
        }
    }
}


// 0x812fa0c
void __fastcall __noreturn sub_812FA0C(int a1)
{
    int v1; // r5
    int v2; // r0
    char v3; // r4
    u32 v4; // r0
    u8 *v5; // r6
    _BYTE *v6; // r0
    int v7; // r0
    int v8; // r4
    int v9; // r7
    unsigned int v10; // r3
    unsigned int v11; // r3
    int v12; // r0
    char v13; // zf
    u32 v14; // r0

    sub_813064C();
    sub_8130810();
    *(v1 + 16) = 19;
    v2 = sub_803EAE4();
    if ( v2 == 4 )
    {
        sub_8130424();
    }
    else if ( v2 != 1 )
    {
        v3 = v2;
        if ( !(v2 & 0x10) )
        {
            v4 = sub_81325CC();
            *(v4 + 8) = *(v1 + 38);
            *(v4 + 10) = *(v1 + 42);
        }
        if ( !(v3 & 8) )
        {
            v5 = sub_803E8F8();
            v6 = sub_803EF74();
            v7 = sub_81323B0(v6);
            v8 = v7;
            if ( v7 != -1 )
            {
                v9 = v7 + 16;
                v10 = 8;
                while ( *(v7 + 4) == *(v5 + 7) )
                {
                    v11 = v10 >> 1;
                    if ( *(v7 + 2) != *(v5 + 5) )
                        break;
                    v10 = v11 >> 1;
                    v7 += 16;
                    if ( v7 > v9 )
                    {
                        if ( !v10 )
                        {
                            v12 = v8;
                            if ( *(v8 + 10) == 65243 && (v12 = v8 + 16, *(v8 + 26) == 65243) )
                            {
                                if ( sub_8132430(v8) == 4 )
                                {
                                    *(v1 + 2) = 24;
                                    *(v1 + 20) = 0;
                                    *(v1 + 40) = 60;
                                }
                            }
                            else
                            {
                                if ( sub_803DD60(v12) )
                                    v8 += 16;
                                if ( *(v8 + 10) == 65244 )
                                {
                                    IsPaletteFadeActive();
                                    if ( !v13 )
                                    {
                                        *(v1 + 2) = 4;
                                        *(v1 + 20) = 0;
                                        v14 = sub_81325CC();
                                        *(v1 + 38) = 0;
                                        *(v14 + 8) = 0;
                                        *(v1 + 42) = -292;
                                        *(v14 + 10) = -292;
                                    }
                                }
                            }
                        }
                        return;
                    }
                }
            }
        }
    }
}


// 0x812fae4
void sub_812FAE4()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u32 v4; // r4
    int v5; // r0
    int v6; // r1
    int v7; // r0
    int v8; // r0
    int v9; // r1
    signed __int16 v10; // r1
    u8 *v11; // r6
    _BYTE *v12; // r0
    int v13; // r0
    int v14; // r4
    unsigned int v15; // r3
    unsigned int v16; // r3
    int v17; // r0
    int v18; // r1
    char v19; // zf
    char v20; // r2

    *(v0 + 16) = 25;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_8130424();
        return;
    }
    if ( v1 != 1 )
    {
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            if ( v2 & 8 )
                return;
            v4 = v3;
            v5 = *(v0 + 40) - 1;
            if ( *(v0 + 40) == 1 )
            {
                if ( sub_8130780(0) || sub_8120DAC(v9) )
                    v10 = 8;
                else
                    v10 = 32;
                *(v0 + 38) = v10;
                *(v4 + 8) = v10;
                *(v4 + 10) = -292;
            }
            else
            {
                *(v0 + 40) = v5;
                if ( v5 == 50 )
                {
                    sub_811A968(6);
                    *(v0 + 46) = 0;
                }
                else if ( v5 < 50 )
                {
                    v6 = *(v0 + 46) + 8;
                    *(v0 + 46) = v6;
                    v7 = v6 + 64;
                    if ( v6 + 64 >= 176 )
                        v7 = 176;
                    sub_811AD18(v7, 68, 0);
                    v8 = 176 - *(v0 + 46);
                    if ( v8 <= 64 )
                        v8 = 64;
                    sub_811AD18(v8, 68, 1);
                }
                *(v0 + 38) = 0;
                *(v4 + 8) = 0;
                *(v4 + 10) = 0;
            }
        }
        v11 = sub_803E8F8();
        v12 = sub_803EF74();
        v13 = sub_81323B0(v12);
        v14 = v13;
        if ( v13 != -1 )
        {
            v15 = 8;
            while ( *(v14 + 4) == *(v11 + 7) )
            {
                v16 = v15 >> 1;
                if ( *(v14 + 2) != *(v11 + 5) || *(v14 + 10) != 65244 )
                    break;
                v15 = v16 >> 1;
                v14 += 16;
                if ( v14 > v13 + 16 )
                {
                    if ( !v15 )
                    {
                        v17 = sub_81325C0(v14);
                        if ( v17 == 8 || v18 == 8 )
                        {
                            sub_81307BC(v17);
                            if ( v19 )
                            {
                                chatbox_runScript_803FD9C_on_eTextScript201BA20(66);
                                *(v0 + 73) = *(v0 + 2);
                                *(v0 + 2) = 28;
                                *(v0 + 12) = 0;
                                *(v0 + 3) = 0;
                            }
                        }
                        else if ( v17 == 32 && v18 == 32 )
                        {
                            *(v0 + 2) = 44;
                            *(v0 + 12) = 0;
                            *(v0 + 3) = 0;
                            v20 = 30;
                            if ( *(v0 + 42) != *(v0 + 44) )
                                v20 = 28;
                            *(v0 + 16) = v20;
                        }
                    }
                    return;
                }
            }
        }
    }
}


// 0x812fc2c
int sub_812FC2C()
{
    int v0; // r5

    return (*(&off_812FC40 + *(v0 + 12)))();
}


// 0x812fc50
signed int sub_812FC50()
{
    int v0; // r5
    int v1; // r10
    signed int v2; // r0
    int v3; // r7
    signed int v4; // r6
    int v5; // r0
    int v6; // r1
    int v7; // r0
    void *v8; // r6
    char *v9; // r0
    signed int v10; // r6
    int v11; // r0
    int v12; // r1
    int v13; // r0
    int v14; // r4
    int v15; // r1
    int v16; // r2
    signed int result; // r0

    if ( *(v0 + 44) & 0x7FFF )
    {
        v2 = isFolderSlotInUse_81377EC(0x22u);
        if ( v2 == 3 )
        {
            v13 = *(v1 + oToolkit_Unk2001c04_Ptr);
            v14 = *(v13 + 5);
            *(&unk_20018EC + v14) = 38;
            *(v13 + 5) = v14 + 1;
            v7 = 60 * v14;
            v3 = *(v1 + oToolkit_S_Chip_2002178_Ptr) + 60 * v14;
        }
        else
        {
            *(&unk_20018EC + v2) = 38;
            v3 = *(v1 + oToolkit_S_Chip_2002178_Ptr) + 60 * v2;
            v4 = 0;
            do
            {
                v5 = split9BitsFromBitfield_8021AE0(*(v3 + v4));
                v7 = TakeChips(v5, v6, 1);
                v4 += 2;
            }
            while ( v4 < 60 );
        }
        v8 = &unk_202714C;
        if ( sub_803DD60(v7) )
            v8 = &unk_20270EC;
        CopyWords(v8 + 32, v3, 0x3Cu);
        v9 = sub_804A24C(2);
        CopyWords(v8, v9, 0x20u);
        v10 = 0;
        do
        {
            v11 = split9BitsFromBitfield_8021AE0(*(v3 + v10));
            GiveChips(v11, v12, 1);
            v10 += 2;
        }
        while ( v10 < 60 );
    }
    sub_803F798();
    PlaySoundEffect(115, v15, v16);
    chatbox_runScript_803FD9C_on_eTextScript201BA20(61);
    result = 8;
    *(v0 + 12) = 8;
    return result;
}


// 0x812fd10
int sub_812FD10()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r4
    int v4; // r6
    int v5; // r1
    int v6; // r2
    int v7; // r3

    result = chatbox_mask_eFlags2009F38(8);
    if ( !v2 )
    {
        v3 = eStruct200BC30_getJumpOffset00();
        v4 = sub_803EA50();
        sub_803EBAC(v4, v5, v6, v7);
        eStruct200BC30_setJumpOffset00(v3);
        sub_803EA58(v4);
        *(v0 + 12) = 12;
        result = engine_setScreeneffect(12, 16);
    }
    return result;
}


// 0x812fd44
int sub_812FD44()
{
    int v0; // r5

    (*(&off_812FD5C + *(v0 + 12)))();
    return sub_81307F4();
}


// 0x812fd6c
int sub_812FD6C()
{
    int v0; // r5
    char v1; // zf
    int result; // r0
    int v3; // r4
    int v4; // r6
    int v5; // r1
    int v6; // r2
    int v7; // r3

    chatbox_mask_eFlags2009F38(128);
    if ( v1 )
        goto LABEL_8;
    result = chatbox_mask_eFlags2009F38(8);
    if ( v1 )
        return result;
    if ( eStruct200BC30_getRef()[14] != 2 )
    {
LABEL_8:
        v3 = eStruct200BC30_getJumpOffset00();
        v4 = sub_803EA50();
        sub_803EBAC(v4, v5, v6, v7);
        eStruct200BC30_setJumpOffset00(v3);
        sub_803EA58(v4);
        *(v0 + 12) = 8;
        result = engine_setScreeneffect(12, 16);
    }
    else
    {
        *(v0 + 12) = 12;
        rfu_REQ_stopMode();
        result = rfu_waitREQComplete();
    }
    return result;
}


// 0x812fdc0
int sub_812FDC0()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        if ( eStruct200BC30_getJumpOffset00() )
        {
            rfu_REQ_stopMode();
            rfu_waitREQComplete();
        }
        sub_8130850();
        sub_8129248(v3, v4, v5, v6);
        sub_812B530();
        sub_8132614();
        *(v0 + 3) = 16;
        *(v0 + 30) = 0;
        ZeroFillByWord(dword_20251A0, 16);
        sub_812AFC8();
    }
    return result;
}


// 0x812fe0c
void sub_812FE0C()
{
    ;
}


// 0x812fe10
void __fastcall sub_812FE10(int a1)
{
    int v1; // r5
    int v2; // r0
    char v3; // r4
    u32 v4; // r0
    u8 *v5; // r6
    _BYTE *v6; // r0
    int v7; // r0
    int v8; // r4
    int v9; // r7
    unsigned int v10; // r3
    int v11; // r1
    int v12; // r0
    int v13; // r1
    int v14; // r1
    int v15; // r1
    int v16; // r0
    int v17; // r1

    sub_81307F4();
    v2 = sub_803EAE4();
    if ( v2 == 4 )
    {
        sub_8130424();
    }
    else if ( v2 != 1 )
    {
        v3 = v2;
        if ( !(v2 & 0x10) )
        {
            v4 = sub_81325CC();
            *(v1 + 10) = *(v1 + 42);
            *(v4 + 8) = *(v1 + 38);
        }
        if ( !(v3 & 8) )
        {
            v5 = sub_803E8F8();
            v6 = sub_803EF74();
            v7 = sub_81323B0(v6);
            v8 = v7;
            if ( v7 != -1 )
            {
                v9 = v7 + 16;
                v10 = 8;
                do
                {
                    if ( *(v7 + 4) != *(v5 + 7) )
                        return;
                    v10 >>= 1;
                    if ( *(v7 + 2) == *(v5 + 5) )
                        v10 >>= 1;
                    v7 += 16;
                }
                while ( v7 <= v9 );
                if ( v10 )
                    return;
                v11 = *(v1 + 38);
                if ( v11 == 16 )
                {
                    if ( sub_803DD60(v7) )
                    {
                        v12 = sub_81325C0(v8);
                        if ( v13 == 16 && (v12 == 16 || v12 == 8) )
                        {
LABEL_30:
                            *(v1 + 2) = 28;
                            *(v1 + 12) = 0;
                            *(v1 + 3) = 0;
                            return;
                        }
                    }
                    else if ( sub_81325C0(v8) == 16 && (v14 == 16 || v14 == 8) )
                    {
                        goto LABEL_30;
                    }
                }
                else
                {
                    if ( v11 != 8 )
                        return;
                    if ( sub_803DD60(v7) )
                    {
                        if ( sub_81325C0(v8) == 16 && v15 == 8 )
                            goto LABEL_30;
                    }
                    else
                    {
                        v16 = sub_81325C0(v8);
                        if ( v17 == 16 && v16 == 8 )
                            goto LABEL_30;
                    }
                }
            }
        }
    }
}


// 0x812fef0
void sub_812FEF0()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u8 *v4; // r6
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r7
    unsigned int v8; // r3
    unsigned int v9; // r3
    char v10; // zf
    u32 v11; // r0

    *(v0 + 16) = 19;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_8130424();
    }
    else if ( v1 != 1 )
    {
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            *(v3 + 8) = *(v0 + 38);
            *(v3 + 10) = 2048;
        }
        if ( !(v2 & 8) )
        {
            v4 = sub_803E8F8();
            v5 = sub_803EF74();
            v6 = sub_81323B0(v5);
            if ( v6 != -1 )
            {
                v7 = v6 + 16;
                v8 = 8;
                while ( *(v6 + 4) == *(v4 + 7) )
                {
                    v9 = v8 >> 1;
                    if ( *(v6 + 2) != *(v4 + 5) )
                        break;
                    v8 = v9 >> 1;
                    v6 += 16;
                    if ( v6 > v7 )
                    {
                        if ( !v8 )
                        {
                            chatbox_mask_eFlags2009F38(8);
                            if ( !v10 )
                            {
                                chatbox_8040818();
                                engine_setScreeneffect(12, 16);
                                *(v0 + 2) = 20;
                                *(v0 + 3) = 0;
                                *(v0 + 20) = 0;
                                v11 = sub_81325CC();
                                *(v0 + 38) = 0;
                                *(v11 + 8) = 0;
                                *(v0 + 42) = -292;
                                *(v11 + 10) = -292;
                            }
                        }
                        return;
                    }
                }
            }
        }
    }
}


// 0x812ffa0
u32 sub_812FFA0()
{
    int v0; // r4
    int v1; // r5
    __int16 v2; // r6
    __int16 v3; // r7
    u32 v4; // r0
    u32 result; // r0

    v2 = *(v0 + 10);
    v3 = *(v0 + 26);
    if ( sub_803DD60(v0 + 16) )
    {
        *(v1 + 42) = v3;
        *(v1 + 44) = v2;
    }
    else
    {
        *(v1 + 42) = v2;
        *(v1 + 44) = v3;
    }
    v4 = sub_81325CC();
    *(v4 + 10) = -293;
    *(v1 + 38) = 0;
    *(v4 + 8) = 0;
    *(v1 + 2) = 48;
    *(v1 + 21) = 0;
    *(v1 + 3) = 0;
    *(v1 + 46) = 0;
    result = *(v1 + 42);
    if ( result == *(v1 + 44) && !*(v1 + 42) )
    {
        sub_81302F4(*(v1 + 44), 1);
        *(v1 + 2) = 40;
        *(v1 + 3) = 0;
        chatbox_runScript_803FD9C_on_eTextScript201BA20(60);
        sub_8046696(6);
        *(v1 + 20) = 0;
        result = sub_81325CC();
        *(v1 + 38) = 0;
        *(result + 8) = 0;
        *(v1 + 42) = -292;
        *(result + 10) = -292;
    }
    return result;
}


