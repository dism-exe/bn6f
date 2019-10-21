// 0x812c2c0
int sub_812C2C0()
{
    int v0; // r5
    int result; // r0

    (*(&off_812C2EC + *(v0 + 2)))();
    sub_80465BC();
    sub_80465F8();
    result = eStruct200BC30_getJumpOffset00();
    if ( result )
        result = sub_803C59C(0, 0);
    return result;
}


// 0x812c320
int sub_812C320()
{
    int v0; // r5
    int result; // r0
    char v2; // r4
    u8 *v3; // r6
    _BYTE *v4; // r0
    int v5; // r4
    unsigned int v6; // r3
    unsigned int v7; // r3
    char v8; // zf

    *(v0 + 27) = 0;
    *(v0 + 16) = 12;
    result = sub_803EAE4();
    if ( result == 4 )
        return sub_812D880();
    if ( result != 1 )
    {
        v2 = result;
        if ( !(result & 0x10) )
        {
            result = sub_81325CC();
            *(v0 + 38) = 0;
            *(result + 8) = 0;
            *(result + 10) = -292;
        }
        if ( !(v2 & 8) )
        {
            v3 = sub_803E8F8();
            v4 = sub_803EF74();
            result = sub_81323B0(v4);
            v5 = result;
            if ( result != -1 )
            {
                v6 = 8;
                while ( *(v5 + 4) == *(v3 + 7) )
                {
                    v7 = v6 >> 1;
                    if ( *(v5 + 2) != *(v3 + 5) || *(v5 + 10) != 65244 )
                        break;
                    v6 = v7 >> 1;
                    v5 += 16;
                    if ( v5 > result + 16 )
                    {
                        if ( !v6 )
                        {
                            result = IsPaletteFadeActive();
                            if ( !v8 )
                            {
                                *(v0 + 2) = 4;
                                *(v0 + 20) = 0;
                                *(v0 + 42) = -292;
                                sub_812D298();
                            }
                        }
                        return result;
                    }
                }
            }
        }
    }
    return result;
}


// 0x812c3bc
int sub_812C3BC()
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
    *(v0 + 42) = sub_812D854();
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812D880();
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
        if ( v2 & 8 )
        {
            if ( !eStruct200BC30_getJumpOffset00() )
                sub_812DA4C(4);
        }
        else
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
                        if ( v9 )
                            break;
                        if ( *(v7 + 10) > 46432 || *(v7 + 26) > 46432 )
                            goto LABEL_34;
                        v11 = sub_8132430(v7);
                        if ( v11 <= 2 )
                        {
                            sub_812DA60();
                            *(v0 + 27) |= 0x10u;
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
                            break;
                        }
                        if ( v11 == 255 )
                        {
LABEL_34:
                            IsPaletteFadeActive();
                            if ( !v15 )
                                sub_812D690();
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
                        break;
                    }
                }
            }
        }
    }
    sub_812D5A0();
    sub_812D3E4();
    return sub_812D4FC();
}


// 0x812c4e8
int sub_812C4E8()
{
    int v0; // r5

    return (*(&off_812C4FC + *(v0 + 3)))();
}


// 0x812c50c
int sub_812C50C()
{
    int v0; // r5
    int result; // r0
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
    result = sub_803EAE4();
    if ( result == 4 )
    {
        v10 = sub_812D880();
        goto LABEL_22;
    }
    if ( result == 1 )
        return result;
    v2 = result;
    if ( !(result & 0x10) )
    {
        v3 = sub_81325CC();
        *(v3 + 8) = *(v0 + 38);
        *(v3 + 10) = *(v0 + 42);
    }
    if ( v2 & 8 )
    {
        result = eStruct200BC30_getJumpOffset00();
        if ( !result )
            result = sub_812DA4C(8);
        return result;
    }
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
            if ( *(v6 + 10) > 46432 )
                break;
            v8 = v9 >> 1;
            v6 += 16;
        }
        while ( v6 <= v7 );
    }
    if ( !*(v0 + 3) )
        sub_812D4FC();
    result = IsPaletteFadeActive();
    if ( !v14 )
    {
        v10 = *(v0 + 3);
        if ( v10 == 4 )
        {
            *(v0 + 3) = 8;
            result = 4;
            *(v0 + 38) = 4;
            return result;
        }
LABEL_22:
        sub_812D8C8(v10, v11, v12, v13);
    }
    return result;
}


// 0x812c5d0
void sub_812C5D0()
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
    int v14; // r1
    int v15; // r2
    char v16; // zf
    u32 v17; // r0

    *(v0 + 16) = 19;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812D880();
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
        if ( v2 & 8 )
        {
            if ( !eStruct200BC30_getJumpOffset00() )
                sub_812DA4C(8);
        }
        else
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
                        if ( !*(v6 + 8) && *(v6 + 10) == 65243 )
                        {
                            chatbox_runScript_803FD9C_on_eTextScript201BA20(64);
                            sub_812DA60();
                            return;
                        }
                        if ( *(v6 + 8) != 4 || *(v6 + 10) > 13664 )
                            break;
                    }
                    v9 = v10 >> 1;
                    v6 += 16;
                    if ( v6 > v8 )
                    {
                        if ( !v9 )
                        {
                            v11 = sub_8132430(v7);
                            if ( v11 > 2 )
                            {
                                if ( v11 != 255 )
                                    sub_812D204();
                            }
                            else
                            {
                                v12 = v11;
                                chatbox_runScript_803FD9C_on_eTextScript201BA20(64);
                                *(v0 + 2) = 36;
                                *(v0 + 27) &= 0xEFu;
                                *(v0 + 16) = 4;
                                if ( v12 != 2 )
                                {
                                    v13 = 3;
                                    if ( *(v0 + 38) == 8 )
                                        v13 = 4;
                                    *(v0 + 16) = v13;
                                    *(v0 + 38) = 16;
                                }
                            }
                        }
                        break;
                    }
                }
            }
            JoypadKeyPressed();
            if ( !v16 )
            {
                PlaySoundEffect(131, v14, v15);
                engine_setScreeneffect(12, 16);
                *(v0 + 2) = 12;
                *(v0 + 20) = 0;
                *(v0 + 42) = -292;
                *(v0 + 38) = 0;
                v17 = sub_81325CC();
                *(v17 + 8) = *(v0 + 38);
                *(v0 + 42) = -292;
                *(v17 + 10) = -292;
            }
        }
    }
}


// 0x812c708
int sub_812C708()
{
    int v0; // r5
    int result; // r0
    char v2; // r4
    u32 v3; // r0
    u8 *v4; // r6
    _BYTE *v5; // r0
    int v6; // r7
    unsigned int v7; // r3
    unsigned int v8; // r3

    *(v0 + 16) = 19;
    result = sub_803EAE4();
    if ( result == 4 )
        return sub_812D880();
    if ( result != 1 )
    {
        v2 = result;
        if ( !(result & 0x10) )
        {
            v3 = sub_81325CC();
            *(v3 + 8) = *(v0 + 38);
            *(v3 + 10) = *(v0 + 42) & 0x7FFF;
        }
        if ( !(v2 & 8) || eStruct200BC30_getJumpOffset00() )
        {
            v4 = sub_803E8F8();
            v5 = sub_803EF74();
            result = sub_81323B0(v5);
            if ( result != -1 )
            {
                v6 = result + 16;
                v7 = 8;
                while ( *(result + 4) == *(v4 + 7) )
                {
                    v8 = v7 >> 1;
                    if ( *(result + 2) != *(v4 + 5) || *(result + 10) > 46432 )
                        break;
                    v7 = v8 >> 1;
                    result += 16;
                    if ( result > v6 )
                    {
                        if ( !v7 )
                        {
                            result = 8;
                            *(v0 + 3) = 8;
                        }
                        return result;
                    }
                }
            }
        }
        else
        {
            result = sub_812DA4C(8);
        }
    }
    return result;
}


// 0x812c7b4
int sub_812C7B4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r0
    int result; // r0
    char v5; // r4
    u8 *v6; // r6
    _BYTE *v7; // r0
    int v8; // r4
    int v9; // r7
    unsigned int v10; // r3
    unsigned int v11; // r3
    int v12; // r0
    char v13; // zf

    *(v0 + 16) = 19;
    v2 = *(v0 + 20);
    v3 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 2), 7, 1, v2);
    if ( v2 != v3 )
        *(v0 + 20) = v3;
    result = sub_803EAE4();
    if ( result == 4 )
        return sub_812D880();
    if ( result != 1 )
    {
        v5 = result;
        if ( !(result & 0x10) )
        {
            result = sub_81325CC();
            *(result + 8) = *(v0 + 38);
            *(result + 10) = *(v0 + 42);
        }
        if ( !(v5 & 8) )
        {
            v6 = sub_803E8F8();
            v7 = sub_803EF74();
            result = sub_81323B0(v7);
            v8 = result;
            if ( result != -1 )
            {
                v9 = result + 16;
                v10 = 8;
                while ( *(result + 4) == *(v6 + 7) )
                {
                    v11 = v10 >> 1;
                    if ( *(result + 2) != *(v6 + 5) )
                        break;
                    v10 = v11 >> 1;
                    result += 16;
                    if ( result > v9 )
                    {
                        if ( !v10 )
                        {
                            v12 = sub_8132430(v8);
                            result = sub_803DD60(v12);
                            if ( result )
                                v8 += 16;
                            if ( *(v8 + 10) == 65244 )
                            {
                                result = IsPaletteFadeActive();
                                if ( !v13 )
                                {
                                    engine_setScreeneffect(8, 16);
                                    sub_8046664();
                                    sub_812D528();
                                    sub_812D378();
                                }
                            }
                        }
                        return result;
                    }
                }
            }
        }
    }
    return result;
}


// 0x812c884
void sub_812C884()
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
    int v23; // r0
    signed int v24; // r0
    u32 v25; // r0
    int v26; // r0
    u32 v27; // r0

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
        sub_812D880();
    }
    else if ( v13 != 1 )
    {
        v14 = v13;
        if ( !(v13 & 0x10) )
        {
            v15 = sub_81325CC();
            *(v15 + 8) = *(v0 + 38);
            *(v15 + 10) = -293;
        }
        if ( v14 & 8 )
        {
            if ( !eStruct200BC30_getJumpOffset00() )
                sub_812DA4C(16);
        }
        else
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
                    if ( *(v18 + 2) != *(v16 + 5) )
                        return;
                    if ( *(v18 + 10) != 65243 )
                    {
                        v18 = eStruct200BC30_getJumpOffset00();
                        if ( !v18 )
                        {
                            v23 = *(v0 + 40) + 1;
                            *(v0 + 40) = v23;
                            if ( v23 >= 180 )
                            {
                                chatbox_runScript_803FD9C_on_eTextScript201BA20(64);
                                sub_812DA60();
                            }
                            return;
                        }
                    }
                    v21 = v22 >> 1;
                    v18 += 16;
                }
                while ( v18 <= v20 );
                if ( v21 )
                    return;
                v24 = sub_81324A8(v19);
                if ( v24 == 8 )
                {
LABEL_38:
                    engine_setScreeneffect(12, 16);
                    *(v0 + 2) = 20;
                    *(v0 + 3) = 0;
                    *(v0 + 20) = 0;
                    v27 = sub_81325CC();
                    *(v0 + 38) = 0;
                    *(v27 + 8) = 0;
                    *(v0 + 42) = -292;
                    *(v27 + 10) = -292;
                    return;
                }
                if ( v24 <= 2 )
                {
                    if ( v24 != 2 )
                    {
                        *(v0 + 2) = 8;
                        *(v0 + 3) = 12;
                        v25 = sub_81325CC();
                        *(v25 + 8) = 4;
                        *(v0 + 38) = 4;
                        *(v25 + 10) = *(v0 + 42);
                        v26 = sub_812D5D0(0, 3, 0);
                        *(v0 + 48) = sub_812D934(v26, 1);
                        sub_812D99C(1);
                        sub_812D91C();
                        return;
                    }
                    goto LABEL_38;
                }
                if ( v24 == 255 )
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
                    if ( v24 == 3 )
                        sub_811A940(1, 6);
                    if ( v24 == 4 )
                        sub_811A940(1, 6);
                }
            }
        }
    }
}


// 0x812ca68
int sub_812CA68()
{
    int v0; // r5

    return (*(&off_812CA7C + *(v0 + 3)))();
}


// 0x812ca84
int sub_812CA84()
{
    int v0; // r5
    int result; // r0
    char v2; // r4
    u8 *v3; // r6
    _BYTE *v4; // r0
    int v5; // r4
    int v6; // r7
    unsigned int v7; // r3
    unsigned int v8; // r3
    int v9; // r0
    char v10; // zf

    *(v0 + 16) = 19;
    result = sub_803EAE4();
    if ( result == 4 )
        return sub_812D880();
    if ( result != 1 )
    {
        v2 = result;
        if ( !(result & 0x10) )
        {
            result = sub_81325CC();
            *(result + 8) = *(v0 + 38);
            *(result + 10) = *(v0 + 42);
        }
        if ( !(v2 & 8) )
        {
            v3 = sub_803E8F8();
            v4 = sub_803EF74();
            result = sub_81323B0(v4);
            v5 = result;
            if ( result != -1 )
            {
                v6 = result + 16;
                v7 = 8;
                while ( *(result + 4) == *(v3 + 7) )
                {
                    v8 = v7 >> 1;
                    if ( *(result + 2) != *(v3 + 5) )
                        break;
                    v7 = v8 >> 1;
                    result += 16;
                    if ( result > v6 )
                    {
                        if ( !v7 )
                        {
                            v9 = v5;
                            if ( *(v5 + 10) == 65243 && (v9 = v5 + 16, *(v5 + 26) == 65243) )
                            {
                                result = sub_8132430(v5);
                                if ( result == 4 )
                                {
                                    *(v0 + 2) = 24;
                                    *(v0 + 20) = 0;
                                    result = 120;
                                    *(v0 + 40) = 120;
                                }
                            }
                            else
                            {
                                result = sub_803DD60(v9);
                                if ( result )
                                    v5 += 16;
                                if ( *(v5 + 10) == 65244 )
                                {
                                    result = IsPaletteFadeActive();
                                    if ( !v10 )
                                    {
                                        engine_setScreeneffect(8, 16);
                                        *(v0 + 3) = 4;
                                        sub_812D99C(0);
                                        sub_812D99C(1);
                                        sub_8046664();
                                        sub_812D528();
                                        sub_812D378();
                                    }
                                }
                            }
                        }
                        return result;
                    }
                }
            }
        }
    }
    return result;
}


// 0x812cb74
int sub_812CB74()
{
    int v0; // r5
    int result; // r0
    char v2; // r4
    u8 *v3; // r6
    _BYTE *v4; // r0
    int v5; // r4
    int v6; // r7
    unsigned int v7; // r3
    unsigned int v8; // r3
    int v9; // r0
    char v10; // zf

    *(v0 + 16) = 19;
    result = sub_803EAE4();
    if ( result == 4 )
        return sub_812D880();
    if ( result != 1 )
    {
        v2 = result;
        if ( !(result & 0x10) )
        {
            result = sub_81325CC();
            *(result + 8) = *(v0 + 38);
            *(result + 10) = *(v0 + 42);
        }
        if ( !(v2 & 8) )
        {
            v3 = sub_803E8F8();
            v4 = sub_803EF74();
            result = sub_81323B0(v4);
            v5 = result;
            if ( result != -1 )
            {
                v6 = result + 16;
                v7 = 8;
                while ( *(result + 4) == *(v3 + 7) )
                {
                    v8 = v7 >> 1;
                    if ( *(result + 2) != *(v3 + 5) )
                        break;
                    v7 = v8 >> 1;
                    result += 16;
                    if ( result > v6 )
                    {
                        if ( !v7 )
                        {
                            v9 = v5;
                            if ( *(v5 + 10) == 65243 && (v9 = v5 + 16, *(v5 + 26) == 65243) )
                            {
                                result = sub_8132430(v5);
                                if ( result == 4 )
                                {
                                    *(v0 + 2) = 24;
                                    *(v0 + 20) = 0;
                                    result = 60;
                                    *(v0 + 40) = 60;
                                }
                            }
                            else
                            {
                                result = sub_803DD60(v9);
                                if ( result )
                                    v5 += 16;
                                if ( *(v5 + 10) == 65244 )
                                {
                                    result = IsPaletteFadeActive();
                                    if ( !v10 )
                                    {
                                        *(v0 + 2) = 4;
                                        *(v0 + 20) = 0;
                                        result = sub_81325CC();
                                        *(v0 + 38) = 0;
                                        *(result + 8) = 0;
                                        *(v0 + 42) = -292;
                                        *(result + 10) = -292;
                                    }
                                }
                            }
                        }
                        return result;
                    }
                }
            }
        }
    }
    return result;
}


// 0x812cc44
int sub_812CC44()
{
    int v0; // r5
    int result; // r0
    char v2; // r4
    int v3; // ST00_4
    bool v4; // zf
    int v5; // r4
    int v6; // r0
    int v7; // r1
    __int16 v8; // r0
    int v9; // r0
    __int16 v10; // r0
    u8 *v11; // r6
    _BYTE *v12; // r0
    int v13; // r4
    unsigned int v14; // r3
    unsigned int v15; // r3
    int v16; // r1
    char v17; // r2

    *(v0 + 16) = 25;
    result = sub_803EAE4();
    if ( result == 4 )
        return sub_812D880();
    if ( result != 1 )
    {
        v2 = result;
        if ( !(result & 0x10) )
        {
            result = sub_81325CC();
            if ( v2 & 8 )
            {
                v3 = result;
                v4 = eStruct200BC30_getJumpOffset00() == 0;
                result = v3;
                if ( v4 )
                    return result;
            }
            v5 = result;
            v6 = *(v0 + 40) - 1;
            if ( *(v0 + 40) == 1 )
            {
                *(v0 + 38) = 32;
                *(v5 + 8) = 32;
                *(v5 + 10) = -292;
            }
            else
            {
                *(v0 + 40) = v6;
                if ( v6 == 50 )
                {
                    sub_811A968(6);
                    *(v0 + 46) = 0;
                }
                else if ( v6 < 50 )
                {
                    v7 = *(v0 + 46) + 8;
                    *(v0 + 46) = v7;
                    if ( v7 + 48 >= 192 )
                    {
                        v8 = sub_812D934(*(v0 + 44) & 0x1FF, 0);
                        *(v0 + 48) = v8;
                        sub_812D954(0);
                    }
                    sub_8119854(v7 + 48, 88, 0);
                    v9 = 192 - *(v0 + 46);
                    if ( v9 <= 48 )
                    {
                        v10 = sub_812D934(*(v0 + 42) & 0x1FF, 1);
                        *(v0 + 48) = v10;
                        sub_812D954(1);
                    }
                    sub_8119854(v9, 88, 3);
                }
                *(v0 + 38) = 0;
                *(v5 + 8) = 0;
                *(v5 + 10) = 0;
            }
        }
        v11 = sub_803E8F8();
        v12 = sub_803EF74();
        result = sub_81323B0(v12);
        v13 = result;
        if ( result != -1 )
        {
            v14 = 8;
            while ( *(v13 + 4) == *(v11 + 7) )
            {
                v15 = v14 >> 1;
                if ( *(v13 + 2) != *(v11 + 5) || *(v13 + 10) != 65244 )
                    break;
                v14 = v15 >> 1;
                v13 += 16;
                if ( v13 > result + 16 )
                {
                    if ( !v14 )
                    {
                        result = sub_81325C0(v13);
                        if ( result == 32 && v16 == 32 )
                        {
                            *(v0 + 2) = 44;
                            *(v0 + 12) = 0;
                            *(v0 + 3) = 0;
                            v17 = 30;
                            result = *(v0 + 42);
                            if ( result != *(v0 + 44) )
                                v17 = 28;
                            *(v0 + 16) = v17;
                        }
                    }
                    return result;
                }
            }
        }
    }
    return result;
}


// 0x812cd88
int sub_812CD88()
{
    int v0; // r5

    return (*(&off_812CD9C + *(v0 + 12)))();
}


// 0x812cdac
signed int sub_812CDAC()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r0
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r2
    signed int result; // r0

    v1 = *(v0 + 42);
    v2 = v1;
    v3 = v1 & 0x1FF;
    if ( v3 )
        TakeChips(v3, (v2 << 17) >> 26, 1);
    v4 = *(v0 + 44);
    v5 = v4;
    v6 = v4 & 0x1FF;
    if ( v6 )
        GiveChips(v6, (v5 << 17) >> 26, 1);
    sub_8120AB8();
    sub_803F798();
    chatbox_runScript_803FD9C_on_eTextScript201BA20(61);
    PlaySoundEffect(115, v7, v8);
    result = 8;
    *(v0 + 12) = 8;
    return result;
}


// 0x812cdf4
int sub_812CDF4()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r4
    int v4; // r6
    int v5; // r1
    int v6; // r2
    int v7; // r3

    result = chatbox_check_eFlags2009F38(8);
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


// 0x812ce28
int sub_812CE28()
{
    int v0; // r5

    (*(&off_812CE40 + *(v0 + 12)))();
    return sub_812DA3C();
}


// 0x812ce50
int sub_812CE50()
{
    int v0; // r5
    char v1; // zf
    int result; // r0
    int v3; // r4
    int v4; // r6
    int v5; // r1
    int v6; // r2
    int v7; // r3

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
        goto LABEL_8;
    result = chatbox_check_eFlags2009F38(8);
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
        sub_8149644();
        result = sub_8149568();
    }
    return result;
}


// 0x812cea4
int sub_812CEA4()
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
        v3 = eStruct200BC30_getJumpOffset00();
        if ( v3 )
        {
            sub_8149644();
            v3 = sub_8149568();
        }
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


// 0x812ceec
void sub_812CEEC()
{
    ;
}


// 0x812cef0
int sub_812CEF0()
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

    *(v0 + 42) = *(v0 + 20);
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812D880();
LABEL_22:
        sub_812D778();
        goto LABEL_24;
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
        if ( v2 & 8 )
        {
            if ( !eStruct200BC30_getJumpOffset00() )
            {
LABEL_23:
                sub_812D778();
                sub_812DA4C(32);
                goto LABEL_24;
            }
        }
        else
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
                        if ( v9 )
                            goto LABEL_23;
                        v11 = sub_8132430(v7);
                        if ( v11 <= 2 )
                        {
                            v12 = v11;
                            chatbox_runScript_803FD9C_on_eTextScript201BA20(64);
                            *(v0 + 2) = 36;
                            *(v0 + 27) |= 0x10u;
                            *(v0 + 16) = 4;
                            if ( v12 != 2 )
                            {
                                v13 = 3;
                                if ( *(v0 + 38) == 8 )
                                    v13 = 4;
                                *(v0 + 16) = v13;
                                *(v0 + 38) = 16;
                            }
                            goto LABEL_22;
                        }
                        if ( v11 != 255 )
                            goto LABEL_22;
                        sub_812D748();
                        goto LABEL_24;
                    }
                }
            }
        }
        goto LABEL_22;
    }
LABEL_24:
    sub_812D3E4();
    return sub_812D4FC();
}


// 0x812cfd4
int sub_812CFD4()
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
    int v10; // r1
    int v11; // r0
    int v12; // r1
    int v13; // r1
    int v14; // r1
    int v15; // r0
    int v16; // r1
    int result; // r0

    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812D880();
    }
    else if ( v1 != 1 )
    {
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            *(v0 + 10) = *(v0 + 42);
            *(v3 + 8) = *(v0 + 38);
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
                        goto LABEL_32;
                    v9 >>= 1;
                    if ( *(v6 + 2) == *(v4 + 5) )
                        v9 >>= 1;
                    v6 += 16;
                }
                while ( v6 <= v8 );
                if ( v9 )
                    goto LABEL_32;
                v10 = *(v0 + 38);
                if ( v10 == 16 )
                {
                    if ( sub_803DD60(v6) )
                    {
                        v11 = sub_81325C0(v7);
                        if ( v12 == 16 && (v11 == 16 || v11 == 8) )
                        {
LABEL_30:
                            *(v0 + 2) = 28;
                            *(v0 + 12) = 0;
                            *(v0 + 3) = 0;
                            goto LABEL_32;
                        }
                    }
                    else if ( sub_81325C0(v7) == 16 && (v13 == 16 || v13 == 8) )
                    {
                        goto LABEL_30;
                    }
                }
                else
                {
                    if ( v10 != 8 )
                        goto LABEL_32;
                    if ( sub_803DD60(v6) )
                    {
                        if ( sub_81325C0(v7) == 16 && v14 == 8 )
                            goto LABEL_30;
                    }
                    else
                    {
                        v15 = sub_81325C0(v7);
                        if ( v16 == 16 && v15 == 8 )
                            goto LABEL_30;
                    }
                }
            }
        }
    }
LABEL_32:
    result = 16;
    if ( *(v0 + 27) & 0x10 )
    {
        sub_812D3E4();
        result = sub_812D4FC();
    }
    return result;
}


// 0x812d0c0
int sub_812D0C0()
{
    int v0; // r5
    int result; // r0
    char v2; // r4
    u8 *v3; // r6
    _BYTE *v4; // r0
    int v5; // r7
    unsigned int v6; // r3
    unsigned int v7; // r3
    char v8; // zf

    *(v0 + 16) = 19;
    result = sub_803EAE4();
    if ( result == 4 )
        return sub_812D880();
    if ( result != 1 )
    {
        v2 = result;
        if ( !(result & 0x10) )
        {
            result = sub_81325CC();
            *(result + 8) = *(v0 + 38);
            *(result + 10) = 2048;
        }
        if ( !(v2 & 8) )
        {
            v3 = sub_803E8F8();
            v4 = sub_803EF74();
            result = sub_81323B0(v4);
            if ( result != -1 )
            {
                v5 = result + 16;
                v6 = 8;
                while ( *(result + 4) == *(v3 + 7) )
                {
                    v7 = v6 >> 1;
                    if ( *(result + 2) != *(v3 + 5) )
                        break;
                    v6 = v7 >> 1;
                    result += 16;
                    if ( result > v5 )
                    {
                        if ( !v6 )
                        {
                            result = chatbox_check_eFlags2009F38(8);
                            if ( !v8 )
                            {
                                chatbox_8040818();
                                engine_setScreeneffect(12, 16);
                                *(v0 + 2) = 20;
                                *(v0 + 3) = 0;
                                *(v0 + 20) = 0;
                                result = sub_81325CC();
                                *(v0 + 38) = 0;
                                *(result + 8) = 0;
                                *(v0 + 42) = -292;
                                *(result + 10) = -292;
                            }
                        }
                        return result;
                    }
                }
            }
        }
    }
    return result;
}


// 0x812d164
int sub_812D164()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char v5; // r4
    u32 v6; // r0
    int v7; // r0
    int result; // r0

    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812D880();
    }
    else if ( v1 != 1 )
    {
        v5 = v1;
        if ( !(v1 & 0x10) )
        {
            v6 = sub_81325CC();
            *(v6 + 8) = *(v0 + 38);
            *(v6 + 10) = *(v0 + 42);
        }
        v2 = 8;
        if ( !(v5 & 8) )
        {
            if ( *(v0 + 40) )
            {
                --*(v0 + 40);
            }
            else if ( sub_803E8E4() != 12 )
            {
                v7 = *(v0 + 31);
                if ( v7 == 16 )
                    *(v0 + 40) = 0;
                *(v0 + 2) = v7;
                chatbox_8040818();
            }
        }
    }
    result = *(v0 + 31);
    if ( result == 32 )
        sub_812D78C();
    if ( result == 8 )
    {
        result = *(v0 + 3);
        if ( result < 8 )
            sub_812D8C8(result, v2, v3, v4);
    }
    else if ( result != 16 )
    {
        sub_812D5A0();
        sub_812D3E4();
        result = sub_812D4FC();
    }
    return result;
}


// 0x812d204
void __noreturn sub_812D204()
{
    int v0; // r4
    int v1; // r5
    __int16 v2; // r6
    __int16 v3; // r7
    u32 v4; // r0
    int v5; // r0
    __int16 v6; // r0

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
    *(v1 + 2) = 16;
    *(v1 + 21) = 0;
    *(v1 + 3) = 0;
    *(v1 + 40) = 0;
    v5 = sub_812D5D0(*(v1 + 44), 3, 1);
    v6 = sub_812D934(v5, 1);
    *(v1 + 48) = v6;
    sub_812D954(1);
}


// 0x812d298
void __noreturn sub_812D298()
{
    int v0; // r10
    char *v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    _WORD *v6; // r0
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3

    v1 = sub_812D6F8();
    zeroFillVRAM();
    ZeroFill_byte_3001960(v2, v3, v4, v5);
    ZeroFillGFX30025c0();
    sub_80015FC(16);
    sub_8046664();
    chatbox_8040818();
    v6 = *(v0 + oToolkit_RenderInfoPtr);
    *v6 = 8000;
    v6[8] = 0;
    v6[9] = 0;
    v6[10] = 0;
    v6[11] = 0;
    v6[12] = 0;
    v6[13] = 0;
    v7 = ZeroFillByEightWords(v1, 128);
    sub_812D3A8(v7, v8, v9, v10);
    sub_812D310();
    sub_812D378();
}


// 0x812d310
void sub_812D310()
{
    sub_812AF3C();
    sub_812AF78();
    sub_812AF84();
    decompAndCopyData(byte_812D32C);
}


