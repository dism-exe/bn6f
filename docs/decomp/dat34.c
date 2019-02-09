// 0x812dae4
int sub_812DAE4()
{
    int v0; // r5
    int result; // r0

    (*(&off_812DB10 + *(v0 + 2)))();
    sub_80465BC();
    sub_80465F8();
    result = eStruct200BC30_getJumpOffset00();
    if ( result )
        result = sub_803C59C(0, 0);
    return result;
}


// 0x812db44
void sub_812DB44()
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
        sub_812ED58();
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
                                sub_812E9AC();
                            }
                        }
                        return;
                    }
                }
            }
        }
    }
}


// 0x812dbe0
void sub_812DBE0()
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
    char v12; // r1
    u32 v13; // r0
    char v14; // zf

    *(v0 + 16) = 12;
    *(v0 + 42) = sub_812ED34();
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812ED58();
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
                sub_812F000(4);
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
                        if ( *(v7 + 10) > 33100 || *(v7 + 26) > 33100 )
                            goto LABEL_34;
                        v11 = sub_8132430(v7);
                        if ( v11 <= 2 )
                        {
                            sub_812F014();
                            *(v0 + 22) = 1;
                            *(v0 + 16) = 4;
                            if ( v11 != 2 )
                            {
                                sub_8132280(64);
                                v12 = 3;
                                if ( *(v0 + 38) == 8 )
                                    v12 = 4;
                                *(v0 + 16) = v12;
                                *(v0 + 38) = 16;
                            }
                            break;
                        }
                        if ( v11 == 255 )
                        {
LABEL_34:
                            IsPaletteFadeActive();
                            if ( !v14 )
                                sub_812ECAC();
                        }
                        else
                        {
                            if ( sub_803DD60(v11) )
                                v7 += 16;
                            if ( *(v7 + 10) != 65244 )
                            {
                                *(v0 + 2) = 8;
                                *(v0 + 3) = 0;
                                v13 = sub_81325CC();
                                *(v0 + 38) = 2;
                                *(v13 + 8) = 2;
                                engine_setScreeneffect(12, 16);
                            }
                        }
                        break;
                    }
                }
            }
        }
    }
    sub_812EC04();
    sub_812EFD4();
}


// 0x812dd08
int sub_812DD08()
{
    int v0; // r5

    return (*(&off_812DD1C + *(v0 + 3)))();
}


// 0x812dd2c
int sub_812DD2C()
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
        sub_812ED58();
        goto LABEL_20;
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
    if ( v2 & 8 && !eStruct200BC30_getJumpOffset00() )
        return sub_812F000(8);
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
            if ( *(v6 + 10) > 33100 )
                break;
            v8 = v9 >> 1;
            v6 += 16;
        }
        while ( v6 <= v7 );
    }
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
LABEL_20:
        sub_812ED94(v10, v11, v12, v13);
    }
    return result;
}


// 0x812dde8
void sub_812DDE8()
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
        sub_812ED58();
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
        if ( !(v2 & 8) || eStruct200BC30_getJumpOffset00() )
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
                        if ( *(v6 + 8) != 4 || *(v6 + 10) > &dword_14C )
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
                                    sub_812E910();
                            }
                            else
                            {
                                v12 = v11;
                                sub_8132280(64);
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
                            }
                        }
                        break;
                    }
                }
            }
            sub_811F7EC();
            if ( !v16 )
            {
                sound_play(131, v14, v15);
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
        else
        {
            sub_812F000(8);
        }
    }
}


// 0x812df00
void sub_812DF00()
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
        sub_812ED58();
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
        if ( !(v2 & 8) || eStruct200BC30_getJumpOffset00() )
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
                    if ( *(v6 + 2) != *(v4 + 5) || *(v6 + 10) > 33100 )
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
        else
        {
            sub_812F000(8);
        }
    }
}


// 0x812dfac
void sub_812DFAC()
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
        sub_812ED58();
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
        if ( !(v5 & 8) || eStruct200BC30_getJumpOffset00() )
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
                            if ( sub_803DD60(v14) )
                                v10 += 16;
                            if ( *(v10 + 10) == 65244 )
                            {
                                IsPaletteFadeActive();
                                if ( !v15 )
                                {
                                    engine_setScreeneffect(8, 16);
                                    sub_812EE78(0);
                                    sub_812EF20();
                                }
                            }
                        }
                        return;
                    }
                }
            }
        }
        else
        {
            sub_812F000(12);
        }
    }
}


// 0x812e08c
void sub_812E08C()
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
        sub_811F7EC();
        if ( !v3 )
        {
            *(v0 + 38) = 0;
            sound_play(131, 0, v2);
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
        sub_811F7EC();
        if ( v3 )
        {
            sub_811F7EC();
            if ( v3 )
                goto LABEL_14;
        }
        else
        {
            *(v0 + 21) = 1;
            sound_play(131, v7, v8);
        }
        v10 = 4;
        if ( *(v0 + 21) )
            v10 = 8;
        *(v0 + 38) = v10;
        v11 = 129;
        v12 = *(v0 + 38);
        if ( v12 != 4 )
            v11 = 131;
        sound_play(v11, v12, v9);
    }
LABEL_14:
    v13 = sub_803EAE4();
    if ( v13 == 4 )
    {
        sub_812ED58();
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
                sub_812F000(16);
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
                        v23 = *(v0 + 40) + 1;
                        *(v0 + 40) = v23;
                        if ( v23 >= 180 )
                        {
                            sub_8132280(64);
                            sub_812F014();
                        }
                        return;
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
LABEL_37:
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
                        v26 = sub_812EC2C(144, 1, 4);
                        *(v0 + 48) = sub_812EDFC(v26, 1);
                        sub_812EE78(1);
                        sub_812EDE4();
                        return;
                    }
                    goto LABEL_37;
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


// 0x812e264
int sub_812E264()
{
    int v0; // r5

    return (*(&off_812E278 + *(v0 + 3)))();
}


// 0x812e280
void sub_812E280()
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
        sub_812ED58();
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
                                    *(v0 + 40) = 120;
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
                                        sub_812EE78(0);
                                        sub_812EE78(1);
                                        sub_8046664();
                                        sub_812EB88();
                                        sub_812EB78();
                                        sub_812EF20();
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


// 0x812e370
void sub_812E370()
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
    u32 v13; // r0

    *(v0 + 16) = 19;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812ED58();
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
                                        *(v0 + 2) = 4;
                                        *(v0 + 20) = 0;
                                        v13 = sub_81325CC();
                                        *(v0 + 38) = 0;
                                        *(v13 + 8) = 0;
                                        *(v0 + 42) = -292;
                                        *(v13 + 10) = -292;
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


// 0x812e440
void sub_812E440()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u32 v4; // ST00_4
    bool v5; // zf
    u32 v6; // r4
    int v7; // r0
    int v8; // r1
    __int16 v9; // r0
    int v10; // r1
    __int16 v11; // r0
    u8 *v12; // r6
    _BYTE *v13; // r0
    int v14; // r0
    int v15; // r4
    unsigned int v16; // r3
    unsigned int v17; // r3
    int v18; // r1
    char v19; // r2

    *(v0 + 16) = 25;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812ED58();
        return;
    }
    if ( v1 != 1 )
    {
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            if ( v2 & 8 )
            {
                v4 = v3;
                v5 = eStruct200BC30_getJumpOffset00() == 0;
                v3 = v4;
                if ( v5 )
                    return;
            }
            v6 = v3;
            v7 = *(v0 + 40) - 1;
            if ( *(v0 + 40) == 1 )
            {
                *(v0 + 38) = 32;
                *(v6 + 8) = 32;
                *(v6 + 10) = -292;
            }
            else
            {
                *(v0 + 40) = v7;
                if ( v7 == 50 )
                {
                    sub_811A968(6);
                    *(v0 + 46) = 0;
                }
                else if ( v7 < 50 )
                {
                    v8 = *(v0 + 46) + 8;
                    *(v0 + 46) = v8;
                    if ( v8 + 60 >= 180 )
                    {
                        v9 = sub_812EDFC(*(v0 + 44) & 0x7FFF, 0);
                        *(v0 + 48) = v9;
                        (loc_812EE38)(0);
                    }
                    sub_811BC24(v8 + 60, 68, 0);
                    v10 = *(v0 + 46);
                    if ( 180 - v10 <= 60 )
                    {
                        v11 = sub_812EDFC(*(v0 + 42) & 0x7FFF, 1);
                        *(v0 + 48) = v11;
                        (loc_812EE38)(1);
                    }
                    sub_811BC24(180 - v10, 68, 1);
                }
                *(v0 + 38) = 0;
                *(v6 + 8) = 0;
                *(v6 + 10) = 0;
            }
        }
        v12 = sub_803E8F8();
        v13 = sub_803EF74();
        v14 = sub_81323B0(v13);
        v15 = v14;
        if ( v14 != -1 )
        {
            v16 = 8;
            while ( *(v15 + 4) == *(v12 + 7) )
            {
                v17 = v16 >> 1;
                if ( *(v15 + 2) != *(v12 + 5) || *(v15 + 10) != 65244 )
                    break;
                v16 = v17 >> 1;
                v15 += 16;
                if ( v15 > v14 + 16 )
                {
                    if ( !v16 && sub_81325C0(v15) == 32 && v18 == 32 )
                    {
                        *(v0 + 2) = 44;
                        *(v0 + 12) = 0;
                        *(v0 + 3) = 0;
                        v19 = 30;
                        if ( *(v0 + 42) != *(v0 + 44) )
                            v19 = 28;
                        *(v0 + 16) = v19;
                    }
                    return;
                }
            }
        }
    }
}


// 0x812e584
int sub_812E584()
{
    int v0; // r5

    return (*(&off_812E598 + *(v0 + 12)))();
}


// 0x812e5a8
signed int sub_812E5A8()
{
    int v0; // r5
    int v1; // r0
    int v6; // ST00_4
    int *v7; // r0
    int v8; // r0
    int v9; // ST00_4
    int *v10; // r0
    int v11; // r1
    int v12; // r2
    signed int result; // r0

    v1 = *(v0 + 42) & 0x7FFF;
    if ( v1 != 144 )
    {
        __asm { SVC         6 }
        v6 = 4 * v1;
        v7 = sub_813B780(4 * v1 - 144);
        sub_803D128(v6, *(v7 + 67), 1);
    }
    v8 = *(v0 + 44) & 0x7FFF;
    if ( v8 != 144 )
    {
        __asm { SVC         6 }
        v9 = 4 * v8;
        v10 = sub_813B780(4 * v8 - 144);
        sub_803D108(v9, *(v10 + 67), 1);
    }
    sub_803F798();
    sub_8132280(61);
    sound_play(115, v11, v12);
    result = 8;
    *(v0 + 12) = 8;
    return result;
}


// 0x812e61c
int sub_812E61C()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    char v3; // r4
    int v4; // r0
    char v5; // r6
    int v6; // r1
    int v7; // r2
    int v8; // r3

    result = chatbox_8045F3C(8);
    if ( !v2 )
    {
        v3 = eStruct200BC30_getJumpOffset00();
        v4 = sub_803EA50();
        v5 = v4;
        sub_803EBAC(v4, v6, v7, v8);
        eStruct200BC30_setJumpOffset00(v3);
        sub_803EA58(v5);
        *(v0 + 12) = 12;
        result = engine_setScreeneffect(12, 16);
    }
    return result;
}


// 0x812e650
void sub_812E650()
{
    int v0; // r5

    (*(&off_812E668 + *(v0 + 12)))();
    sub_812EFE4();
}


// 0x812e678
int sub_812E678()
{
    int v0; // r5
    char v1; // zf
    int result; // r0
    char v3; // r4
    int v4; // r0
    char v5; // r6
    int v6; // r1
    int v7; // r2
    int v8; // r3

    chatbox_8045F3C(128);
    if ( v1 )
        goto LABEL_8;
    result = chatbox_8045F3C(8);
    if ( v1 )
        return result;
    if ( eStruct200BC30_getRef()[14] != 2 )
    {
LABEL_8:
        v3 = eStruct200BC30_getJumpOffset00();
        v4 = sub_803EA50();
        v5 = v4;
        sub_803EBAC(v4, v6, v7, v8);
        eStruct200BC30_setJumpOffset00(v3);
        sub_803EA58(v5);
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


// 0x812e6cc
int sub_812E6CC()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r2
    int v8; // r3

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
        ZeroFillByWord(dword_20251A0, 0x10u, v7, v8);
        sub_812AFC8();
    }
    return result;
}


// 0x812e714
void sub_812E714()
{
    ;
}


// 0x812e718
void sub_812E718()
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

    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812ED58();
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
                        return;
                    v9 >>= 1;
                    if ( *(v6 + 2) == *(v4 + 5) )
                        v9 >>= 1;
                    v6 += 16;
                }
                while ( v6 <= v8 );
                if ( v9 )
                    return;
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
                            return;
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
                        return;
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
}


// 0x812e7f4
void sub_812E7F4()
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
        sub_812ED58();
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
                            chatbox_8045F3C(8);
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


// 0x812e898
void sub_812E898()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    int v4; // r0

    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_812ED58();
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
            if ( *(v0 + 40) )
            {
                --*(v0 + 40);
            }
            else if ( sub_803E8E4() != 12 )
            {
                v4 = *(v0 + 31);
                if ( v4 == 16 )
                    *(v0 + 40) = 0;
                *(v0 + 2) = v4;
                chatbox_8040818();
            }
        }
    }
    if ( *(v0 + 31) == 4 )
    {
        sub_812EC04();
        sub_812EFD4();
    }
}


// 0x812e910
void __noreturn sub_812E910()
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
    v5 = sub_812EC2C(*(v1 + 44), 1, 4);
    v6 = sub_812EDFC(v5, 1);
    *(v1 + 48) = v6;
    (loc_812EE38)(1);
}


// 0x812e9ac
void __noreturn sub_812E9AC()
{
    int v0; // r10
    char *v1; // r0
    int v2; // r7
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
    _WORD *v14; // r0
    _BYTE *v15; // r0
    int v16; // r2
    int v17; // r3

    v1 = sub_812ED2C();
    v2 = v1;
    sub_80017AA(v1, v3, v4, v5);
    sub_80017E0(v6, v7, v8, v9);
    sub_800183C(v10, v11, v12, v13);
    sub_80015FC(16);
    sub_8046664();
    chatbox_8040818();
    v14 = *(v0 + oToolkit_RenderInfoPtr);
    *v14 = -16576;
    v14[8] = 0;
    v14[9] = 0;
    v14[10] = 0;
    v14[11] = 0;
    v14[12] = 0;
    v14[13] = 0;
    v15 = *(v0 + oToolkit_Unk200f3a0_Ptr);
    v15[8] = 47;
    v15[10] = 63;
    v15[1] = 16;
    v15[5] = 0;
    *v15 = -16;
    v15[4] = 14;
    ZeroFillByEightWords(v2, 0x80u, v16, v17);
    sub_812EAC4();
    sub_812EA44();
    sub_812EAAC();
}


// 0x812ea44
void sub_812EA44()
{
    sub_812AF3C();
    sub_812AF78();
    sub_812AF98();
    decompAndCopyData_8000B30(off_812EA60);
}


