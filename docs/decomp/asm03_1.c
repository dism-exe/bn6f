// 0x8033948
int __fastcall sub_8033948(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r0

    ZeroFillByWord(&unk_2011E30, 0x10u, a3, a4);
    if ( *(*(v4 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
    {
        v5 = getPETNaviSelect();
        word_2011E38 = sub_80010D4(v5);
    }
    byte_2011E34 = 1;
    return sub_8033978();
}


// 0x8033978
int sub_8033978()
{
    int v0; // r10
    int result; // r0

    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
    {
        (loc_8000AC8)(byte_86C1F80, 100758016, &dword_340);
        result = (loc_8000AC8)(byte_86C1F20, byte_30016D0, 32);
    }
    else
    {
        (loc_8000AC8)(dword_86C0D20, 100758016, byte_100);
        result = sub_8033DA0(0);
    }
    return result;
}


// 0x80339cc
void sub_80339CC()
{
    int v0; // r10
    char v1; // zf
    int v2; // r4

    sub_811EBE0();
    if ( v1 )
    {
        if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
        {
            (*(&off_8033A4C + 2 * byte_2011E34))();
        }
        else
        {
            v2 = byte_2011E34;
            if ( byte_2011E34 )
            {
                v2 = 8 * byte_2011E34;
                TestEventFlagFromImmediate(23, 41);
                if ( !v1 || (TestEventFlagFromImmediate(23, 29), v1) )
                    v2 -= 4;
            }
            (*(&off_8033A1C + v2))();
        }
    }
}


// 0x8033a7c
void sub_8033A7C()
{
    ;
}


// 0x8033a80
void __noreturn sub_8033A80()
{
    sub_8033B80(0);
}


// 0x8033a96
void __noreturn sub_8033A96()
{
    sub_8033B80(0);
}


// 0x8033ab0
void __noreturn sub_8033AB0()
{
    sub_8033B80(0);
}


// 0x8033ac4
void __noreturn sub_8033AC4()
{
    sub_8033B80(0);
}


// 0x8033adc
void __noreturn sub_8033ADC()
{
    sub_8033B80(1);
}


// 0x8033af0
void __noreturn sub_8033AF0()
{
    sub_8033B80(1);
}


// 0x8033b08
void sub_8033B08()
{
    ;
}


// 0x8033b0c
void __noreturn sub_8033B0C()
{
    sub_8033E0C();
}


// 0x8033b1e
void __noreturn sub_8033B1E()
{
    sub_8033E0C();
}


// 0x8033b30
void __noreturn sub_8033B30()
{
    sub_8033E0C();
}


// 0x8033b46
void __noreturn sub_8033B46()
{
    sub_8033E0C();
}


// 0x8033b5c
void __noreturn sub_8033B5C()
{
    sub_8033E0C();
}


// 0x8033b6e
void __noreturn sub_8033B6E()
{
    sub_8033E0C();
}


// 0x8033b80
int __fastcall __noreturn sub_8033B80(int a1)
{
    int v1; // r5
    int result; // r0

    sub_802FE28((byte_8033BB8[24 * a1 + *(v1 + 5)] << 16) - 2147319805, 51088, 1, 0);
    result = *(v1 + 5) + 1;
    if ( result >= 24 )
        result = 0;
    *(v1 + 5) = result;
    return result;
}


// 0x8033be8
signed int sub_8033BE8()
{
    int v0; // r4
    char v1; // zf

    v0 = getPETNaviSelect();
    TestEventFlagFromImmediate(1, 99);
    if ( v1 )
    {
        notZero_eByte200AD04();
        if ( !v1 )
            v0 = 12;
    }
    (loc_8000AC4)(off_8033C24[v0], 100758400, byte_80);
    return sub_802FE28(1074921478, 51100, 1, 0);
}


// 0x8033c68
int sub_8033C68()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r0
    unsigned __int8 v5; // vf
    int result; // r0

    (loc_8000AC4)(off_8033D2C[*(v0 + 6)], 100758528, byte_100);
    sub_8033DA0(byte_8033CC4[*(v0 + 6)]);
    v1 = *(v0 + 6) + 1;
    if ( v1 >= 18 )
        LOBYTE(v1) = 0;
    *(v0 + 6) = v1;
    sub_802FE28(-2145959683, 51104, 1, 0);
    sub_802FE28(-1609089011, 51104, 1, 0);
    v4 = *(v0 + 7);
    v5 = __OFSUB__(v4, 1);
    result = v4 - 1;
    if ( ((result < 0) ^ v5) | (result == 0) )
    {
        sound_play(154, v2, v3);
        result = 96;
        *(v0 + 7) = 96;
    }
    else
    {
        *(v0 + 7) = result;
    }
    return result;
}


// 0x8033cf0
signed int sub_8033CF0()
{
    int v0; // r5
    int v1; // r0

    (loc_8000AC8)(off_8033D2C[*(v0 + 6)], 100758528, byte_100);
    v1 = *(v0 + 6) + 1;
    if ( v1 >= 18 )
        LOBYTE(v1) = 0;
    *(v0 + 6) = v1;
    sub_802FE28(-2145959683, 51104, 1, 0);
    return sub_802FE28(-1609089011, 51104, 1, 0);
}


// 0x8033d88
int __fastcall sub_8033D88(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    unsigned __int8 v5; // vf
    int result; // r0

    v4 = *(v3 + 7);
    v5 = __OFSUB__(v4, 1);
    result = v4 - 1;
    if ( ((result < 0) ^ v5) | (result == 0) )
    {
        sound_play(154, a2, a3);
        result = 96;
        *(v3 + 7) = 96;
    }
    else
    {
        *(v3 + 7) = result;
    }
    return result;
}


// 0x8033da0
int __fastcall sub_8033DA0(int a1)
{
    int v1; // r6
    int v2; // r4
    char v3; // zf

    v1 = a1;
    v2 = getPETNaviSelect();
    TestEventFlagFromImmediate(1, 99);
    if ( v3 )
    {
        notZero_eByte200AD04();
        if ( !v3 )
            v2 = 12;
    }
    return (loc_8000AC8)(&(*off_8033DD4[v2])[v1], byte_30016D0, 32);
}


// 0x8033e0c
signed int __noreturn sub_8033E0C()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    int v3; // r1
    int v4; // r0
    signed int v5; // r6
    int v6; // r0
    int v7; // r0
    unsigned int v8; // r1
    int v9; // r1
    int v10; // r2
    unsigned int v11; // r2
    signed int v12; // r8
    signed int v13; // r7
    int v14; // r0
    int v15; // r2
    int v16; // r0
    int v18; // [sp-Ch] [bp-14h]
    unsigned int v19; // [sp-8h] [bp-10h]
    signed int v20; // [sp-4h] [bp-Ch]

    TestEventFlagFromImmediate(23, 50);
    if ( v1 )
    {
        v2 = getPETNaviSelect();
        v3 = sub_80010D4(v2);
        v4 = *(v0 + 8);
        v5 = 0;
        if ( v3 != v4 )
        {
            if ( v3 > v4 )
            {
                v5 = 2;
                v4 += 4;
                if ( v4 >= v3 )
                    LOWORD(v4) = v3;
            }
            else
            {
                v5 = 1;
                v4 -= 4;
                if ( v4 < v3 )
                    LOWORD(v4) = v3;
            }
        }
        *(v0 + 8) = v4;
        v6 = getPETNaviSelect();
        v7 = sub_80010D4(v6);
        v9 = v8 >> 2;
        if ( v5 )
        {
            v10 = 32 * v5;
        }
        else
        {
            v10 = 32;
            if ( v7 > v9 )
                v10 = 0;
        }
        CopyByEightWords(&byte_86C1F20[v10], byte_30016D0, 0x20u);
    }
    v11 = sub_8000C00(*(v0 + 8));
    v12 = 0;
    v13 = 12;
    v14 = 8;
    do
    {
        v18 = v14;
        v19 = v11;
        v20 = v13;
        v15 = (v11 >> v13) & 0xF;
        v16 = (v14 << 16) | 0x8000;
        if ( v15 )
        {
            v12 = 1;
        }
        else if ( !v12 && v13 )
        {
            LOWORD(v15) = 11;
        }
        sub_802FE28(v16, 2 * v15 - 14446, 1, 0);
        v11 = v19;
        v14 = v18 + 8;
        v13 -= 4;
    }
    while ( v20 >= 4 );
    sub_802FE28(0x8000, 51088, 1, 0);
    return sub_802FE28(271089664, 51088, 1, 0);
}


// 0x8033ee8
int sub_8033EE8()
{
    char v0; // zf
    int result; // r0
    int v2; // r0

    TestEventFlagFromImmediate(23, 49);
    if ( !v0 || (result = s_2011C50_ptr_1C_isNull(), result <= 1) )
    {
        v2 = sub_811F290();
        renderTextGfx_8045F8C(byte_86CB360, v2, &unk_2027400, 100716544);
        CopyByEightWords(dword_86BEAE0, &unk_3001B20, 0x20u);
        result = copyTiles();
    }
    return result;
}


// 0x8033f80
signed int __fastcall sub_8033F80(int a1)
{
    int v1; // r4
    signed int result; // r0
    char v3; // zf

    v1 = a1;
    result = notZero_eByte200AD04();
    if ( !v3 )
    {
        (loc_8000AC8)(byte_86C1AA0, 100758912, 128);
        result = sub_802FE28(*&byte_8033FB4[4 * v1], 51116, 1, 0);
    }
    return result;
}


// 0x8033fc0
int __fastcall sub_8033FC0(int result, int a2, int a3)
{
    byte_2011E37 = 0;
    byte_2011E34 = result;
    if ( result == 3 )
        result = sound_play(155, 0, a3);
    return result;
}


// 0x8033fdc
int __fastcall sub_8033FDC(int a1)
{
    int v1; // r10
    char v2; // zf
    int v3; // r7
    int result; // r0

    sub_813C3AC();
    ClearEventFlagFromImmediate(23, 29);
    ClearEventFlagFromImmediate(23, 3);
    ClearEventFlagFromImmediate(1, 39);
    ClearEventFlagFromImmediate(23, 33);
    sub_809F9DC();
    sub_803CEB8();
    SetEventFlagFromImmediate(23, 36);
    ClearEventFlagFromImmediate(5, 223);
    SetEventFlagFromImmediate(6, 142);
    ClearEventFlagFromImmediate(6, 143);
    SetEventFlagFromImmediate(7, 64);
    ClearEventFlagFromImmediate(2, 37);
    TestEventFlagFromImmediate(2, 36);
    if ( v2 )
    {
        ClearEventFlagRangeFromImmediate(1, 42, 10);
        ClearEventFlagRangeFromImmediate(1, 142, 9);
    }
    else
    {
        SetEventFlagRangeFromImmediate(1, 142, 9);
    }
    sub_80141AC();
    sub_8015C32();
    sub_800A908();
    ClearEventFlagFromImmediate(23, 0);
    v3 = *(v1 + oToolkit_Unk2001c04_Ptr);
    *(v3 + 18) = 0;
    *(v3 + 20) = 0;
    sub_8001172(0);
    SetEventFlagFromImmediate(0, 121);
    ClearEventFlagFromImmediate(16, 6);
    ClearEventFlagFromImmediate(16, 9);
    ClearEventFlagFromImmediate(16, 10);
    ClearEventFlagFromImmediate(16, 28);
    ClearEventFlagRangeFromImmediate(1, 188, 12);
    ClearEventFlagRangeFromImmediate(1, 200, 6);
    SetEventFlagRangeFromImmediate(1, 206, 6);
    result = TestEventFlagFromImmediate(16, 8);
    if ( !v2 )
    {
        SetEventFlagFromImmediate(16, 28);
        SetEventFlagRangeFromImmediate(1, 200, 6);
        result = ClearEventFlagRangeFromImmediate(1, 206, 6);
    }
    return result;
}


// 0x80340f6
int sub_80340F6()
{
    int v0; // r10
    char v1; // zf
    int v2; // r0
    int v3; // r7

    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_GameProgress) == 128 )
        sub_8035354(0);
    TestEventFlagFromImmediate(1, 99);
    if ( v1 )
    {
        sub_80010C6();
        sub_80010BE(0);
        sub_8120DF0();
        sub_813C3AC();
        sub_80010C6();
    }
    else
    {
        sub_813C3AC();
    }
    TestEventFlagFromImmediate(23, 42);
    if ( v1 )
        SetEventFlagFromImmediate(23, 29);
    sub_803CEB8();
    v2 = *(v0 + oToolkit_Unk2001c04_Ptr);
    *(v2 + 36) = 0;
    *(v2 + 40) = 0;
    ClearEventFlagFromImmediate(23, 10);
    ClearEventFlagFromImmediate(23, 11);
    ClearEventFlagFromImmediate(23, 9);
    ClearEventFlagFromImmediate(4, 233);
    ClearEventFlagFromImmediate(5, 242);
    SetEventFlagFromImmediate(5, 223);
    sub_80351C8();
    ClearEventFlagFromImmediate(23, 33);
    ClearEventFlagFromImmediate(23, 0);
    v3 = *(v0 + oToolkit_Unk2001c04_Ptr);
    *(v3 + 18) = 0;
    *(v3 + 20) = 0;
    sub_80141AC();
    sub_8015C32();
    return sub_800A908();
}


// 0x80341aa
void __fastcall sub_80341AA(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&byte_2011A40, 0xCu, a3, a4);
}


// 0x80341b6
int ho_jackIn_80341B6()
{
    int v0; // r10
    void **v1; // r0

    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
        v1 = &off_80341E8;
    else
        v1 = &off_80341DC;
    return (*(v1 + byte_2011A40))();
}


// 0x80341f8
int sub_80341F8()
{
    _BYTE *v0; // r5
    int v1; // r1
    int v2; // r2

    *v0 = 4;
    sRender_08_setRenderingState(&byte_40);
    renderInfo_8001788();
    renderInfo_80017A0();
    return sound_bgmusic_play(15, v1, v2);
}


// 0x8034218
// () -> void
int ho_8034218()
{
    int v0; // r5
    int result; // r0

    (*(&jt_8034230 + *(v0 + 1)))();
    result = *(v0 + 8) + 1;
    *(v0 + 8) = result;
    return result;
}


// 0x803423c
signed int __fastcall sub_803423C(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r0
    int v11; // r0
    int v12; // r1
    int v13; // r2

    v5 = *v4;
    *v5 = 4;
    zeroFillVRAM(v5, 4, a3, a4);
    sub_800183C(v6, v7, v8, v9);
    sub_8006910();
    *(*(v4 + oToolkit_GameStatePtr) + 22) = 0;
    v10 = sub_8005C04();
    v11 = sub_8033FDC(v10);
    return musicGameState_8000784(v11, v12, v13);
}


// 0x8034268
// () -> void
int sub_8034268()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    v1 = sub_80015FC(9);
    zeroFillVRAM(v1, v2, v3, v4);
    sub_800183C(v5, v6, v7, v8);
    decompJackInAnimationGfx_8034314();
    sRender_08_setRenderingState(4929);
    *(v0 + 4) = &word_50;
    *(v0 + 8) = 0;
    engine_setScreeneffect(0, 4);
    *(v0 + 1) = 4;
    return sub_80343B0();
}


// 0x80342a4
int sub_80342A4()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    unsigned __int8 v3; // vf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        v2 = *(v0 + 4);
        v3 = __OFSUB__(v2--, 1);
        *(v0 + 4) = v2;
        if ( ((v2 < 0) ^ v3) | (v2 == 0) )
        {
            engine_setScreeneffect(4, 16);
            *(v0 + 1) = 8;
        }
    }
    return sub_80343B0();
}


// 0x80342c6
int sub_80342C6()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        *v0 = 8;
        v0[1] = 0;
    }
    return sub_80343B0();
}


// 0x80342dc
signed int sub_80342DC()
{
    _BYTE *v0; // r5
    signed int result; // r0

    result = 4;
    *v0 = 4;
    return result;
}


// 0x80342e4
signed int sub_80342E4()
{
    _BYTE *v0; // r5
    signed int result; // r0

    result = 8;
    *v0 = 8;
    return result;
}


// 0x80342ec
int __fastcall sub_80342EC(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r0

    v5 = *v4;
    *v5 = 4;
    zeroFillVRAM(v5, 4, a3, a4);
    sub_800183C(v6, v7, v8, v9);
    v10 = *(v4 + oToolkit_GameStatePtr);
    *(v10 + 22) = 0;
    *(v10 + 23) = 16;
    sub_8005C04();
    return sub_80340F6();
}


// 0x8034314
// [break] jack-in
void __cdecl decompJackInAnimationGfx_8034314()
{
    int v0; // r5

    decompAndCopyData(&initRefs_8034338);
    *(v0 + 3) = 0;
    *(v0 + 6) = 2;
    sub_8046664();
    sub_80465A0(byte_8034370);
}


// 0x80343b0
// () -> void
int sub_80343B0()
{
    int v0; // r5
    int v1; // r0
    char *v2; // r3
    int v3; // r1
    unsigned __int8 v4; // vf
    int v5; // r1

    v1 = *(v0 + 3);
    v2 = &off_8034400 + v1;
    v3 = *(v0 + 6);
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if ( ((v5 < 0) ^ v4) | (v5 == 0) )
    {
        if ( *(v2 + 3) )
        {
            v1 += 12;
            v2 = &off_8034400 + v1;
            v5 = *(&off_8034400 + v1 + 8);
        }
        else
        {
            LOBYTE(v1) = 0;
            LOWORD(v5) = 2;
        }
    }
    *(v0 + 3) = v1;
    *(v0 + 6) = v5;
    (loc_8000AC4)(*(v2 + 1), byte_3001960, 32);
    copyTiles();
    sub_80465BC();
    return sub_80465F8();
}


// 0x8034b4c
int __fastcall map_8034B4C(int a1, int a2)
{
    int v2; // r8
    int v3; // r9
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r2
    int v9; // r0
    int **v10; // r4
    int v11; // r0
    int v12; // r1
    int v13; // r2
    int v15; // [sp+0h] [bp-28h]
    int v16; // [sp+4h] [bp-24h]

    v15 = a1;
    v16 = a2;
    ZeroFillByWord(dword_2011EA0, 0x40u, v2, v3);
    sub_8036E44();
    v4 = sub_8035028();
    npc_80350A8(v4, v5, v6, v7);
    npc_getMapSpriteScriptOffsets();
    sub_803537C();
    sub_80353DA();
    v9 = v15;
    if ( v15 >= 128 )
    {
        v10 = &off_8034670;
        v9 = v15 - 128;
    }
    else
    {
        v10 = &off_80345E4;
    }
    v11 = sub_803600E(v10[2 * v9][v16], v10[2 * v9 + 1][v16], v8, 4 * v16);
    return sub_8036E78(v11, v12, v13);
}


// 0x8034bb8
int __fastcall sub_8034BB8(int a1)
{
    char v1; // zf
    void *v2; // r0
    int result; // r0

    s_2011C50_ptr_1C_isNull();
    if ( v1 )
    {
        sub_8036040();
        sub_809C968();
        sub_8034C6E();
        if ( !v1 )
        {
            v2 = sub_8034EF0();
            sub_8034F68(v2);
            npc_80350BC();
            sub_8034DB0();
            sub_8034CB6();
            sub_8034D7C();
            sub_8035274();
            sub_8035054();
            sub_8035084();
            sub_809CF2C();
        }
    }
    sub_8036064();
    result = s_2011C50_ptr_1C_isNull();
    if ( !v1 )
    {
        ho_803851C();
        ClearEventFlagFromImmediate(7, 66);
        ClearEventFlagFromImmediate(7, 67);
        ClearEventFlagFromImmediate(9, 98);
        result = ClearEventFlagFromImmediate(9, 99);
    }
    return result;
}


// 0x8034c36
BOOL sub_8034C36()
{
    char v0; // zf
    BOOL result; // r0

    IsPaletteFadeActive();
    result = 0;
    if ( !v0 )
    {
        TestEventFlagFromImmediate(23, 23);
        if ( v0 )
        {
            TestEventFlagFromImmediate(23, 61);
            if ( v0 )
            {
                sub_809E462();
                if ( v0 )
                {
                    chatbox_8045F3C(128);
                    if ( v0 )
                    {
                        s_2011C50_ptr_1C_isNull();
                        if ( v0 )
                            result = 1;
                    }
                }
            }
        }
    }
    return result;
}


// 0x8034c6e
BOOL sub_8034C6E()
{
    char v0; // zf
    BOOL result; // r0

    IsPaletteFadeActive();
    result = 0;
    if ( !v0 )
    {
        TestEventFlagFromImmediate(23, 23);
        if ( v0 )
        {
            sub_809E462();
            if ( v0 )
            {
                chatbox_8045F3C(128);
                if ( v0 )
                {
                    s_2011C50_ptr_1C_isNull();
                    if ( v0 )
                        result = 1;
                }
            }
        }
    }
    return result;
}


// 0x8034c9c
BOOL sub_8034C9C()
{
    char v0; // zf
    BOOL result; // r0

    TestEventFlagFromImmediate(23, 61);
    result = 0;
    if ( v0 )
    {
        s_2011C50_ptr_1C_isNull();
        if ( v0 )
            result = 1;
    }
    return result;
}


// 0x8034cb6
signed int sub_8034CB6()
{
    int v0; // r10
    char v1; // zf
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r7
    int *i; // r3
    int v7; // r6
    _DWORD *v8; // r7
    int v9; // r1
    int v10; // r2
    signed int v11; // r0
    int v12; // r1
    int v13; // r2
    unsigned __int8 v14; // vf
    int v15; // r0
    int v16; // r4
    int v17; // r3
    int v19; // [sp-Ch] [bp-20h]
    int v20; // [sp-8h] [bp-1Ch]
    int v21; // [sp-4h] [bp-18h]

    sub_8034C9C();
    if ( !v1 )
    {
        if ( byte_100 & *(*(v0 + oToolkit_JoypadPtr) + 2) )
        {
            TestEventFlagFromImmediate(23, 39);
            if ( v1 )
            {
                v5 = *(v0 + oToolkit_GameStatePtr);
                if ( *(v5 + oGameState_MapGroup) >= 128 )
                {
                    init_s_02011C50_8036E90(byte_80988E4, v2, v3, v4);
                }
                else
                {
                    for ( i = &dword_8034D6C; ; i += 2 )
                    {
                        v7 = 0;
                        if ( *i == 255 )
                            break;
                        if ( *i == *(v5 + oGameState_MapGroup) )
                        {
                            v7 = i[1];
                            break;
                        }
                    }
                    v8 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
                    v9 = v8[8];
                    v10 = v8[9];
                    v19 = v8[7];
                    v20 = v9;
                    v21 = v10 + v7;
                    v11 = sub_8031A7A(&v19);
                    v14 = __OFSUB__(v11, 64);
                    v15 = v11 - 64;
                    if ( !((v15 < 0) ^ v14) && v15 < 24 )
                    {
                        v16 = v15;
                        TestEventFlag(&loc_16D0 + v15);
                        if ( v1 )
                        {
                            v12 = *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_64) + v16);
                            if ( v12 != 255 )
                            {
                                init_s_02011C50_8036E90(byte_8098824, v12 | (v16 << 8), v13, v17);
                                return 0;
                            }
                        }
                    }
                    sound_play(105, v12, v13);
                }
            }
        }
    }
    return 1;
}


// 0x8034d7c
signed int sub_8034D7C()
{
    int v0; // r10
    char v1; // zf
    int v2; // r1
    int v3; // r2
    int v4; // r3

    sub_8034C9C();
    if ( v1 )
        return 1;
    if ( !(byte_200 & *(*(v0 + oToolkit_JoypadPtr) + 2)) )
        return 1;
    TestEventFlagFromImmediate(23, 40);
    if ( !v1 )
        return 1;
    init_s_02011C50_8036E90(byte_80991F4, v2, v3, v4);
    return 0;
}


// 0x8034db0
signed int sub_8034DB0()
{
    int v0; // r10
    int v1; // r1
    int v2; // r2
    int v3; // r3
    char v4; // zf
    unsigned int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    unsigned int v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    int v14; // r0
    int v15; // r1
    int v16; // r2
    int v17; // r3

    sub_8034C9C();
    if ( v4 )
        return 1;
    if ( word_200AC84 )
    {
        init_s_02011C50_8036E90(byte_809A8A8, v1, v2, v3);
        return 0;
    }
    if ( !*(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0e) )
        return 1;
    v6 = sub_8034E3C(word_200AC84, 0);
    if ( v4 )
    {
        v6 = sub_8034E88(v6, 0);
        if ( v4 )
        {
            init_s_02011C50_8036E90(byte_8099EA0, v7, v8, v9);
            return 0;
        }
    }
    v10 = sub_8034E3C(v6, 1);
    if ( v4 )
    {
        v10 = sub_8034E88(v10, 1);
        if ( v4 )
        {
            init_s_02011C50_8036E90(byte_809AA34, v11, v12, v13);
            return 0;
        }
    }
    v14 = sub_8034E3C(v10, 2);
    if ( !v4 )
        return 1;
    sub_8034E88(v14, 2);
    if ( !v4 )
        return 1;
    init_s_02011C50_8036E90(byte_809CAD8, v15, v16, v17);
    return 0;
}


// 0x8034e3c
int __fastcall sub_8034E3C(int a1, int a2)
{
    int v2; // r7
    int v3; // r2
    int v4; // r3

    v3 = 0;
    do
    {
        v4 = *&(**(&off_8034E64 + a2))[v3];
        if ( v4 == *(v2 + 4) )
            break;
        v3 += 2;
    }
    while ( v4 != 0xFFFF );
    return v3;
}


// 0x8034e88
unsigned int __fastcall sub_8034E88(unsigned int result, int a2)
{
    int v2; // r4
    unsigned int v3; // r6
    int v4; // r1
    int v5; // r2
    char v6; // zf

    v3 = result;
    v4 = 4 * a2;
    v5 = *(&off_8034EDC + v4);
    if ( v4 || (result != 6 || (result = TestEventFlagFromImmediate(14, 0), !v6)) && v3 != 10 )
    {
        result = v3 >> 1;
        if ( *(v5 + (v3 >> 1)) == v2 && v3 == 8 )
            result = TestEventFlagFromImmediate(0, 132);
    }
    return result;
}


// 0x8034ef0
void *sub_8034EF0()
{
    int v0; // r10
    void *result; // r0
    int v2; // r2
    int v3; // r3
    char v4; // zf
    int v5; // r4
    int v6; // r7
    signed int v7; // r6
    int v8; // r7
    int v9; // r4
    unsigned __int8 v10; // vf
    char (*(**v11)[2])[16]; // r1
    int v12; // r1

    result = sub_8034C9C();
    if ( !v4 )
    {
        v5 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0e);
        if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0e) )
        {
            v6 = *(v0 + oToolkit_GameStatePtr);
            v7 = *(v6 + oGameState_MapGroup);
            v8 = *(v6 + oGameState_MapNumber);
            if ( v7 == 150 && v8 == 1 )
            {
                result = (v5 - 96);
                if ( v5 >= 96 && result < 16 )
                {
                    result = (v5 - 80);
                    v9 = v5 - 80;
                    goto LABEL_14;
                }
            }
            v10 = __OFSUB__(v5, 240);
            v9 = v5 - 240;
            if ( !((v9 < 0) ^ v10) && v9 < 16 )
            {
                result = TestEventFlag(&loc_16C0 + v9);
                if ( v4 )
                {
                    if ( v7 < 128 )
                    {
                        v11 = &off_803461C;
                        goto LABEL_15;
                    }
LABEL_14:
                    v11 = &off_8034728;
                    v7 -= 128;
LABEL_15:
                    v12 = (*(*v11[v7])[v8])[v9];
                    if ( v12 != 255 )
                        result = init_s_02011C50_8036E90(byte_8098358, v12, v2, v3);
                    return result;
                }
            }
        }
    }
    return result;
}


// 0x8034f68
signed int __fastcall sub_8034F68(int a1)
{
    int v1; // r10
    signed int result; // r0
    char v3; // zf
    signed int v4; // r1
    signed int v5; // r4
    int v6; // r2
    int *v7; // r3

    result = s_2011C50_ptr_1C_isNull();
    if ( v3 )
    {
        result = sub_8031A7A(*(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 28);
        v5 = v4;
        if ( v4 >= 1 && v4 <= 15 )
        {
            result = TestEventFlag(&loc_16F0 + v4);
            if ( !v3 )
            {
                v7 = &dword_2011EA0[v5];
                result = *v7;
                if ( *v7 )
                    result = init_s_02011C50_8036E90(byte_8098384, *v7, v6, v7);
            }
        }
    }
    return result;
}


// 0x8034fb8
unsigned int sub_8034FB8()
{
    int v0; // r10
    unsigned __int8 *v1; // r4
    char v2; // zf
    char *v3; // r4
    int v4; // r1
    int v5; // r2
    int v6; // r3
    unsigned int result; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( (v1[oGameState_MapNumber] != v1[oGameState_LastMapNumber]
         || v1[oGameState_MapGroup] != v1[oGameState_LastMapGroup])
        && (TestEventFlagFromImmediate(23, 3), v2)
        && (s_2011C50_ptr_1C_isNull(), v2) )
    {
        v3 = byte_809895C;
        TestEventFlagFromImmediate(1, 39);
        if ( !v2 )
            v3 = byte_80989C1;
        init_s_02011C50_8036E90(v3, v4, v5, v6);
        ClearEventFlagFromImmediate(23, 3);
        result = ClearEventFlagFromImmediate(1, 39);
    }
    else
    {
        ClearEventFlagFromImmediate(23, 3);
        ClearEventFlagFromImmediate(23, 36);
        result = ClearEventFlagFromImmediate(1, 39);
    }
    return result;
}


// 0x8035028
unsigned int sub_8035028()
{
    int v0; // r10
    int v1; // r5
    unsigned int v2; // r1
    unsigned int result; // r0
    int v4; // r7
    int (__fastcall *v5)(_DWORD, unsigned int); // r6

    v1 = *(v0 + oToolkit_GameStatePtr);
    result = *(v1 + oGameState_Unk_44);
    v2 = result >> 8;
    result = result;
    v4 = *(v1 + oGameState_MapGroup);
    if ( v4 >= 128 )
    {
        v5 = *(&off_8034784 + v4 - 128);
        if ( v5 )
            result = v5(result, v2);
    }
    return result;
}


// 0x8035054
signed int sub_8035054()
{
    int v0; // r10
    char v1; // zf
    int v2; // r1
    int v3; // r2
    int v4; // r3

    sub_8034C9C();
    if ( v1 )
        return 1;
    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_12) == 255 )
        return 1;
    TestEventFlagFromImmediate(23, 26);
    if ( v1 )
        return 1;
    init_s_02011C50_8036E90(byte_809AE68, v2, v3, v4);
    return 0;
}


// 0x8035084
signed int sub_8035084()
{
    char v0; // zf
    int v1; // r0
    int v2; // r2
    int v3; // r3

    sub_8034C9C();
    if ( v0 )
        return 1;
    v1 = sub_8035756();
    if ( v0 )
        return 1;
    init_s_02011C50_8036E90(byte_8098BB8, v1, v2, v3);
    return 0;
}


// 0x80350a8
int __fastcall npc_80350A8(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    sub_809E064(a1, a2, a3, a4);
    return sub_80301B2(1, v4 + 28);
}


// 0x80350bc
signed int npc_80350BC()
{
    int v0; // r10
    char v1; // zf
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v6; // r4
    int v7; // r2
    int v8; // r3
    int v9; // r1

    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
    {
        sub_8034C9C();
        if ( !v1 )
        {
            TestEventFlagFromImmediate(23, 8);
            if ( !v1 )
            {
                init_s_02011C50_8036E90(byte_8099E04, v2, v3, v4);
                return 0;
            }
            v6 = *(v0 + oToolkit_Unk2001c04_Ptr);
            TestEventFlagFromImmediate(23, 10);
            if ( !v1 && !*(v6 + 36) )
            {
                ClearEventFlagFromImmediate(23, 10);
                v9 = 1;
LABEL_11:
                init_s_02011C50_8036E90(byte_8099DC0, v9, v7, v8);
                return 0;
            }
            TestEventFlagFromImmediate(23, 11);
            if ( !v1 && !*(v6 + 40) )
            {
                ClearEventFlagFromImmediate(23, 11);
                v9 = 0;
                goto LABEL_11;
            }
        }
    }
    return 1;
}


// 0x8035134
_DWORD *npc_getMapSpriteScriptOffsets()
{
    int v0; // r10
    _DWORD *result; // r0
    char v2; // zf
    int v3; // r3
    signed int v4; // r0
    char (*(***v5)[2])[58]; // r2

    result = TestEventFlagFromImmediate(23, 33);
    if ( v2 )
    {
        v3 = *(v0 + oToolkit_GameStatePtr);
        v4 = *(v3 + oGameState_MapGroup);
        if ( v4 >= 128 )
        {
            v5 = &NPCList_maps80;
            v4 -= 128;
        }
        else
        {
            v5 = &NPCList_maps00;
        }
        result = sub_8030A60(v5[v4][*(v3 + oGameState_MapNumber)]);
    }
    return result;
}


// 0x803516c
int npc_dead_803516C()
{
    int v0; // r10
    signed int v1; // r0
    void **v2; // r2

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup);
    if ( v1 >= 128 )
    {
        v2 = &off_803483C;
        v1 -= 128;
    }
    else
    {
        v2 = &off_8034654;
    }
    return (v2[v1])();
}


// 0x8035194
int sub_8035194()
{
    int v0; // r10
    int result; // r0

    result = *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup);
    if ( result >= 128 )
        result = (*(&off_8034898 + result - 128))();
    return result;
}


// 0x80351b4
_DWORD *sub_80351B4()
{
    return sub_8030A60(&dword_80351C4);
}


// 0x80351c8
unsigned int sub_80351C8()
{
    __int16 *i; // r4
    unsigned int result; // r0
    char v2; // zf

    for ( i = &word_80351EC; ; i += 2 )
    {
        result = *i;
        if ( !*i )
            break;
        TestEventFlag(result);
        if ( !v2 )
            SetEventFlag(i[1]);
    }
    return result;
}


// 0x803522e
unsigned int __fastcall sub_803522E(unsigned int result)
{
    __int16 *v1; // r4
    unsigned int v2; // r7
    int v3; // r1

    v1 = &word_8035250;
    v2 = result;
    while ( 1 )
    {
        v3 = *v1;
        if ( v3 == 255 )
            break;
        if ( v2 == v3 )
            result = SetEventFlag(v1[1]);
        v1 += 2;
    }
    return result;
}


// 0x8035274
int sub_8035274()
{
    int v0; // r10
    int result; // r0
    char v2; // zf
    int v3; // r7
    int v4; // r6
    __int16 *v5; // r4
    int *i; // r5
    int v7; // r2
    int v8; // r3

    result = sub_8034C9C();
    if ( !v2 )
    {
        result = TestEventFlagFromImmediate(23, 0);
        if ( v2 )
        {
            v3 = *(v0 + oToolkit_GameStatePtr);
            result = *(v3 + oGameState_MapGroup);
            if ( result >= 128 )
            {
                result = sub_8031A7A(*(v3 + oGameState_OverworldPlayerObjectPtr) + 28);
                v4 = result;
                if ( result >= 208 && result <= 239 )
                {
                    v5 = &word_80352DC;
                    for ( i = byte_803530C; ; ++i )
                    {
                        result = *v5;
                        if ( !*v5 )
                            break;
                        if ( result == v4 )
                        {
                            TestEventFlag(v5[1]);
                            if ( !v2 )
                            {
                                TestEventFlag(v5[2]);
                                if ( v2 )
                                    return init_s_02011C50_8036E90(byte_80990B8, *i, v7, v8);
                            }
                        }
                        v5 += 3;
                    }
                }
            }
        }
    }
    return result;
}


// 0x803532c
int sub_803532C()
{
    int v0; // r10
    char *v1; // r6
    char *v2; // r7
    signed int v3; // r3
    int v4; // r1
    int result; // r0

    v1 = &byte_8037694;
    v2 = byte_20010F0;
    v3 = 0;
    do
    {
        v4 = v1[1];
        *v2 = *v1;
        v1 += 2;
        ++v2;
        ++v3;
    }
    while ( v3 < 25 );
    result = 0;
    *(*(v0 + oToolkit_GameStatePtr) + oGameState_GameProgress) = 0;
    return result;
}


// 0x8035354
int __fastcall sub_8035354(int a1)
{
    int v1; // r10
    int result; // r0

    result = byte_20010F0[a1];
    *(*(v1 + oToolkit_GameStatePtr) + oGameState_GameProgress) = result;
    return result;
}


// 0x8035364
signed int __fastcall sub_8035364(int a1)
{
    int v1; // r10
    int v2; // r7
    signed int result; // r0

    v2 = *(v1 + oToolkit_GameStatePtr);
    byte_20010F0[a1] = *(v2 + oGameState_GameProgress);
    result = 255;
    *(v2 + oGameState_GameProgress) = -1;
    return result;
}


// 0x803537c
unsigned int sub_803537C()
{
    int v0; // r10
    __int16 *v1; // r4
    int v2; // r6
    unsigned int result; // r0
    char v4; // zf

    ClearEventFlagFromImmediate(0, 40);
    v1 = &word_80353B8;
    v2 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup);
    while ( 1 )
    {
        result = *v1;
        if ( !*v1 )
            break;
        if ( result == v2 )
        {
            TestEventFlag(v1[1]);
            if ( !v4 )
                return SetEventFlagFromImmediate(0, 40);
        }
        v1 += 2;
    }
    return result;
}


// 0x80353da
int sub_80353DA()
{
    char v0; // zf

    TestEventFlagFromImmediate(0, 40);
    if ( !v0 )
        sub_8002354(off_80353FC);
    return 0;
}


// 0x8035408
int sub_8035408()
{
    sub_8002354(&off_8035418);
    return 0;
}


// 0x8035424
int sub_8035424()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(0, 40);
    if ( !v1 )
    {
        result = sub_802D246();
        if ( !(result & 8) )
            result = sub_8002354(&off_8035448);
    }
    return result;
}


// 0x803553c
int __fastcall sub_803553C(int a1)
{
    char v1; // zf

    sub_80355A8();
    TestEventFlagFromImmediate(6, 123);
    if ( !v1 )
        SetEventFlagFromImmediate(6, 130);
    TestEventFlagFromImmediate(8, 86);
    if ( !v1 )
        SetEventFlagFromImmediate(8, 95);
    TestEventFlagFromImmediate(10, 68);
    if ( !v1 )
        SetEventFlagFromImmediate(10, 186);
    TestEventFlagFromImmediate(12, 109);
    if ( !v1 )
        SetEventFlagFromImmediate(12, 220);
    TestEventFlagFromImmediate(12, 167);
    if ( !v1 )
        SetEventFlagFromImmediate(12, 224);
    ClearEventFlagFromImmediate(1, 32);
    return 0;
}


// 0x80355a8
int sub_80355A8()
{
    ClearEventFlagFromImmediate(6, 130);
    ClearEventFlagFromImmediate(8, 95);
    ClearEventFlagFromImmediate(10, 186);
    ClearEventFlagFromImmediate(12, 220);
    ClearEventFlagFromImmediate(12, 224);
    SetEventFlagFromImmediate(1, 32);
    return 0;
}


// 0x80355de
char *__fastcall sub_80355DE(int a1)
{
    return &byte_80984C8[20 * a1];
}


// 0x80355ec
int sub_80355EC()
{
    int v0; // r10
    __int16 *v1; // r4
    int v2; // r7
    int v3; // r1

    v1 = &word_803562C;
    v2 = *(v0 + oToolkit_GameStatePtr);
    v3 = *(v2 + oGameState_MapGroup);
    if ( *(v2 + oGameState_MapGroup) >= 128 )
        v3 = *(v2 + oGameState_Unk_44);
    while ( *v1 != 255 )
    {
        if ( *v1 == v3 )
            return sub_80136F0(0, 34, 1);
        ++v1;
    }
    return sub_80136F0(0, 34, 0);
}


// 0x8035694
int __fastcall sub_8035694(int *a1)
{
    int v1; // r10
    int *v2; // r5
    char *i; // r7
    int result; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r1
    int v9; // r1

    v2 = a1;
    for ( i = byte_8034460; *i >= 0; i += 32 )
    {
        if ( *i == *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) )
        {
            result = *(i + 3);
            v5 = *v2;
            v6 = *(i + 4);
            v7 = *(i + 5);
            if ( v6 == v7 || v5 >= v6 && v5 <= v7 && (v8 = v2[1], v8 >= *(i + 6)) && v8 <= *(i + 7) )
            {
                v9 = v2[2];
                if ( v9 >= *(i + 1) && v9 <= *(i + 2) )
                    return result;
            }
        }
    }
    return sub_80318B0(v2);
}


// 0x80356ec
void __fastcall sub_80356EC(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&dword_2000DC0, byte_100, a3, a4);
}


// 0x80356f8
int __fastcall sub_80356F8(int result, int a2)
{
    int *v2; // r5
    int v3; // r4

    v2 = &dword_2000DC0;
    v3 = 0;
    while ( *v2 )
    {
        v2 += 2;
        if ( ++v3 >= 32 )
            return result;
    }
    v2[1] = result;
    *v2 = a2;
    return result;
}


// 0x8035714
int __fastcall sub_8035714(int result)
{
    int *v1; // r5
    int v2; // r4

    v1 = &dword_2000DC0;
    v2 = 0;
    while ( !*v1 || result != *(v1 + 6) )
    {
        v1 += 2;
        if ( ++v2 >= 32 )
            return result;
    }
    result = 0;
    v1[1] = 0;
    *v1 = 0;
    return result;
}


// 0x8035738
void sub_8035738()
{
    int *v0; // r5
    signed int v1; // r4

    v0 = &dword_2000DC0;
    v1 = 0;
    do
    {
        if ( v0[1] )
        {
            if ( *v0 < 1 )
                return;
            --*v0;
        }
        v0 += 2;
        ++v1;
    }
    while ( v1 < 32 );
}


// 0x8035756
int sub_8035756()
{
    int *v0; // r5
    signed int v1; // r4
    int v2; // r3
    int result; // r0

    v0 = &dword_2000DC0;
    v1 = 0;
    do
    {
        v2 = v0[1];
        if ( v2 )
        {
            v2 = *v0;
            if ( !*v0 )
            {
                result = v0[1];
                v0[1] = 0;
                *v0 = 0;
                return result;
            }
        }
        *v0 = v2;
        v0 += 2;
        ++v1;
    }
    while ( v1 < 32 );
    return 0;
}


// 0x803578c
_BYTE *sub_803578C()
{
    int v0; // r10
    _BYTE *result; // r0

    **v0 = 4;
    result = *(v0 + oToolkit_GameStatePtr);
    result[oGameState_MapGroup] = 0;
    result[oGameState_MapNumber] = 0;
    *result = 0;
    result[oGameState_GameProgress] = 101;
    result[oGameState_Unk_07] = 98;
    return result;
}


// 0x80357ae
signed int sub_80357AE()
{
    int v0; // r10
    signed int v1; // r3
    char *i; // r7
    char v3; // zf
    signed int result; // r0

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0e);
    if ( !*(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0e) )
        goto LABEL_12;
    for ( i = byte_80357F0; *i; ++i )
    {
        if ( *i == v1 )
            goto LABEL_12;
    }
    if ( v1 < 48 || v1 > 51 || (sub_809CA40(*(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0e)), v3) && sub_803CE28(44) )
        result = 1;
    else
LABEL_12:
        result = 0;
    return result;
}


// 0x8035920
int sub_8035920()
{
    return 0;
}


// 0x8035924
signed int sub_8035924()
{
    sub_80360C8();
    return 1;
}


// 0x8035932
signed int sub_8035932()
{
    int v0; // r4
    int v1; // r10
    int v2; // r0
    int v3; // r0
    int v4; // r1

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_GameProgress);
    sub_8036094();
    sub_8036094();
    if ( v3 < v4 || v3 > v0 )
        return 1;
    sub_80360C8();
    return 1;
}


// 0x8035962
signed int __fastcall sub_8035962(int a1)
{
    unsigned int v1; // r4
    int v2; // r5
    char v3; // zf

    sub_8036094();
    if ( v1 == 255 )
        sub_80360A8();
    else
        v1 = *(v2 + v1);
    TestEventFlag(v1);
    if ( !v3 )
        sub_80360C8();
    return 1;
}


// 0x8035992
signed int __fastcall sub_8035992(int a1)
{
    int v1; // r4
    char v2; // zf

    sub_8036094();
    sub_80360A8();
    (TestEventFlagRange)(v1);
    if ( !v2 )
        sub_80360C8();
    return 1;
}


// 0x80359be
signed int __fastcall sub_80359BE(int a1)
{
    unsigned int v1; // r4
    int v2; // r5
    char v3; // zf

    sub_8036094();
    if ( v1 == 255 )
        sub_80360A8();
    else
        v1 = *(v2 + v1);
    TestEventFlag(v1);
    if ( v3 )
        sub_80360C8();
    return 1;
}


// 0x80359ee
signed int __fastcall sub_80359EE(int a1)
{
    int v1; // r4
    char v2; // zf

    sub_8036094();
    sub_80360A8();
    (TestEventFlagRange)(v1);
    if ( v2 )
        sub_80360C8();
    return 1;
}


// 0x8035a1a
signed int __fastcall sub_8035A1A(int a1)
{
    int v1; // r4
    unsigned __int8 *v2; // r0
    _WORD *v3; // r0
    _DWORD *v4; // r0

    sub_80360C8();
    sub_80360C8();
    sub_8036094();
    if ( v1 == 1 )
    {
        sub_80360A8();
        if ( *v3 != 1 )
            return 1;
    }
    else if ( v1 == 2 )
    {
        sub_80360C8();
        if ( *v4 != 2 )
            return 1;
    }
    else
    {
        sub_8036094();
        if ( *v2 != v1 )
            return 1;
    }
    return 1;
}


// 0x8035a74
signed int __fastcall sub_8035A74(int a1)
{
    signed int v1; // r4
    signed int v2; // r0
    signed int v3; // r1

    sub_8036094();
    sub_803CE28(v1);
    sub_8036094();
    sub_8036094();
    if ( v2 < v3 || v2 > v1 )
        return 1;
    sub_80360C8();
    return 1;
}


// 0x8035aaa
signed int __fastcall sub_8035AAA(int a1)
{
    signed int v1; // r4
    int v2; // r1
    signed int v3; // r0
    signed int v4; // r1

    sub_8036094();
    if ( v1 == 255 )
    {
        sub_80360A8();
        sub_8021BD8(255);
    }
    else
    {
        sub_80360A8();
        sub_8021BC0(v1, v2);
    }
    sub_8036094();
    sub_8036094();
    if ( v3 < v4 || v3 > v1 )
        return 1;
    sub_80360C8();
    return 1;
}


// 0x8035afa
signed int sub_8035AFA()
{
    int v0; // r4
    int v1; // r10
    _DWORD *v2; // r3
    int v3; // r1
    int v4; // r4
    int v5; // r2
    int v6; // r0
    int v8; // [sp-Ch] [bp-10h]
    int v9; // [sp-8h] [bp-Ch]
    int v10; // [sp-4h] [bp-8h]

    sub_803609C();
    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    v3 = v2[8];
    v4 = v0 << 16;
    v5 = v2[9] + v4;
    v8 = v2[7];
    v9 = v3;
    v10 = v5;
    sub_8031A7A(&v8);
    sub_8036094();
    if ( v6 == v4 )
        sub_80360C8();
    return 1;
}


// 0x8035b44
signed int sub_8035B44()
{
    int v0; // r4
    int v1; // r10
    _DWORD *v2; // r3
    int v3; // r1
    int v4; // r4
    int v5; // r2
    int v6; // r0
    int v8; // [sp-Ch] [bp-10h]
    int v9; // [sp-8h] [bp-Ch]
    int v10; // [sp-4h] [bp-8h]

    sub_803609C();
    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    v3 = v2[8];
    v4 = v0 << 16;
    v5 = v2[9] + v4;
    v8 = v2[7];
    v9 = v3;
    v10 = v5;
    sub_8031A7A(&v8);
    sub_8036094();
    if ( v6 != v4 )
        sub_80360C8();
    return 1;
}


// 0x8035b8e
signed int sub_8035B8E()
{
    int v0; // r4
    int v1; // r10
    int v2; // r0
    int v3; // r0

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_0e);
    sub_8036094();
    if ( v3 == v0 )
        sub_80360C8();
    return 1;
}


// 0x8035bb2
signed int sub_8035BB2()
{
    int v0; // r4
    int v1; // r10
    int v2; // r0
    int v3; // r0

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_0e);
    sub_8036094();
    if ( v3 != v0 )
        sub_80360C8();
    return 1;
}


// 0x8035bd6
signed int sub_8035BD6()
{
    int v0; // r4
    int v1; // r10
    int v2; // r0
    int v3; // r0

    v2 = *(*(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 36);
    sub_80360B6();
    if ( v3 == v0 )
        sub_80360C8();
    return 1;
}


// 0x8035bfe
signed int sub_8035BFE()
{
    int v0; // r4
    int v1; // r10
    int v2; // r0
    int v3; // r0

    v2 = *(*(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 36);
    sub_80360B6();
    if ( v3 != v0 )
        sub_80360C8();
    return 1;
}


// 0x8035c26
signed int sub_8035C26()
{
    int v0; // r4
    int v1; // r10
    int v2; // r0
    int v3; // r0

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_44);
    sub_80360A8();
    if ( v3 == v0 )
        sub_80360C8();
    return 1;
}


// 0x8035c4a
signed int sub_8035C4A()
{
    int v0; // r4
    int v1; // r10
    int v2; // r0
    int v3; // r0

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_44);
    sub_80360A8();
    if ( v3 != v0 )
        sub_80360C8();
    return 1;
}


// 0x8035c6e
signed int __fastcall sub_8035C6E(int a1)
{
    int v1; // r4
    int v2; // r10
    int v3; // r1
    int v4; // r0
    int v5; // r1

    sub_8036094();
    v3 = *(v2 + oToolkit_GameStatePtr);
    v4 = *(v3 + oGameState_MapGroup);
    v5 = *(v3 + oGameState_LastMapGroup);
    if ( v1 != 1 )
    {
        if ( v4 == v5 )
            return 1;
LABEL_5:
        sub_80360C8();
        return 1;
    }
    if ( v4 == v5 )
        goto LABEL_5;
    return 1;
}


// 0x8035ca0
signed int sub_8035CA0()
{
    sub_8013704(0, 76);
    sub_80360C8();
    return 1;
}


// 0x8035cd6
signed int sub_8035CD6()
{
    int v0; // r4
    int v1; // r0

    sub_800B734();
    sub_8036094();
    if ( v1 == v0 )
        sub_80360C8();
    return 1;
}


// 0x8035cf8
signed int sub_8035CF8()
{
    int v0; // r4
    int v1; // r0

    sub_800B734();
    sub_8036094();
    if ( v1 != v0 )
        sub_80360C8();
    return 1;
}


// 0x8035d1a
signed int __fastcall sub_8035D1A(int a1)
{
    sub_80360C8();
    IsPaletteFadeActive();
    return 1;
}


// 0x8035d34
signed int __fastcall MapScriptCmd_jump_if_eStruct200a6a0_initialized(int a1)
{
    sub_80360C8();
    Is_eStruct200a6a0_Initialized();
    return 1;
}


// 0x8035d4e
signed int __fastcall MapScriptCmd_jump_if_in_pet_menu(int a1)
{
    sub_80360C8();
    sub_811EBE0();
    return 1;
}


// 0x8035d6a
signed int __fastcall sub_8035D6A(int a1)
{
    int v1; // r4
    int v2; // r5
    int v3; // r0
    int v4; // r1

    sub_8036094();
    if ( v1 == 255 )
    {
        sub_8036094();
        sub_8036094();
        v4 = 255;
    }
    else
    {
        v3 = *(v2 + v1);
        v4 = *(v2 + v1 + 1);
    }
    engine_setScreeneffect(v3, v4);
    return 1;
}


// 0x8035d98
signed int __fastcall sub_8035D98(int a1)
{
    char v1; // r4
    int v2; // r10
    int v3; // r1
    int v4; // r1
    int v5; // r1

    v3 = *(v2 + oToolkit_GameStatePtr);
    sub_8036094();
    *(v4 + oGameState_Unk_16) = v1;
    sub_8036094();
    *(v5 + oGameState_Unk_17) = v1;
    return 1;
}


// 0x8035db4
signed int __fastcall sub_8035DB4(int a1)
{
    unsigned int v1; // r4
    int v2; // r5

    sub_8036094();
    if ( v1 == 255 )
        sub_80360A8();
    else
        v1 = *(v2 + v1);
    SetEventFlag(v1);
    return 1;
}


// 0x8035dd6
signed int __fastcall sub_8035DD6(int a1)
{
    unsigned int v1; // r4
    int v2; // r5

    sub_8036094();
    if ( v1 == 255 )
        sub_80360A8();
    else
        v1 = *(v2 + v1);
    ClearEventFlag(v1);
    return 1;
}


// 0x8035df8
signed int __fastcall sub_8035DF8(int a1)
{
    unsigned int v1; // r4
    int v2; // r1

    sub_8036094();
    sub_80360A8();
    SetEventFlagRange(v1, v2, v2);
    return 1;
}


// 0x8035e16
signed int __fastcall sub_8035E16(int a1)
{
    unsigned int v1; // r4
    int v2; // r1

    sub_8036094();
    sub_80360A8();
    ClearEventFlagRange(v1, v2, v2);
    return 1;
}


// 0x8035e34
signed int __fastcall sub_8035E34(int a1)
{
    signed __int16 *v1; // r4
    signed int v2; // r0

    sub_80360C8();
    while ( 1 )
    {
        v2 = *v1;
        if ( v2 < 0 )
            break;
        SetEventFlag(v2);
        ++v1;
    }
    return 1;
}


// 0x8035e54
signed int __fastcall sub_8035E54(int a1)
{
    signed __int16 *v1; // r4
    signed int v2; // r0

    sub_80360C8();
    while ( 1 )
    {
        v2 = *v1;
        if ( v2 < 0 )
            break;
        ClearEventFlag(v2);
        ++v1;
    }
    return 1;
}


// 0x8035e74
signed int __fastcall sub_8035E74(int a1)
{
    void (*v1)(void); // r4

    sub_80360C8();
    sub_80360C8();
    v1();
    return 1;
}


// 0x8035e8e
signed int __fastcall sub_8035E8E(int a1)
{
    int v1; // r4
    int v2; // r1
    int v3; // r2
    int v4; // r3

    sub_80360C8();
    sub_80360C8();
    init_s_02011C50_8036E90(v1, v2, v3, v4);
    return 1;
}


// 0x8035eaa
signed int __fastcall sub_8035EAA(int a1)
{
    char v1; // r4
    _BYTE *v2; // r0

    sub_80360C8();
    sub_8036094();
    *v2 = v1;
    return 1;
}


// 0x8035ec2
signed int __fastcall sub_8035EC2(int a1)
{
    __int16 v1; // r4
    _WORD *v2; // r0

    sub_80360C8();
    sub_80360A8();
    *v2 = v1;
    return 1;
}


// 0x8035eda
signed int __fastcall sub_8035EDA(int a1)
{
    int v1; // r4
    _DWORD *v2; // r0

    sub_80360C8();
    sub_80360C8();
    *v2 = v1;
    return 1;
}


// 0x8035ef2
signed int sub_8035EF2()
{
    char v0; // r4
    int v1; // r10
    int v2; // r0
    _BYTE *v3; // r0

    v2 = *(v1 + oToolkit_GameStatePtr);
    sub_8036094();
    sub_8036094();
    *v3 = v0;
    return 1;
}


// 0x8035f0e
signed int sub_8035F0E()
{
    char v0; // r4
    int v1; // r10
    int v2; // r0
    _BYTE *v3; // r0

    v2 = *(v1 + oToolkit_Unk2001c04_Ptr);
    sub_8036094();
    sub_8036094();
    *v3 = v0;
    return 1;
}


// 0x8035f2a
signed int __fastcall sub_8035F2A(int a1)
{
    int v1; // r4

    sub_80360C8();
    sub_8001B1C(v1);
    return 1;
}


// 0x8035f3e
signed int __fastcall sub_8035F3E(int a1)
{
    int *v1; // r4

    sub_80360C8();
    sub_8002354(v1);
    return 1;
}


// 0x8035f52
signed int sub_8035F52()
{
    int v0; // r10
    int v1; // r1
    signed int v2; // r0
    int v3; // r1

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = *(v1 + oGameState_MapGroup);
    v3 = *(v1 + oGameState_MapNumber);
    map_8030A30(v2);
    sub_8035194();
    return 1;
}


// 0x8035f6a
signed int __fastcall sub_8035F6A(int a1)
{
    int v1; // r4
    int v2; // r4
    signed int result; // r0

    sub_8036094();
    if ( v1 == 255 )
    {
        v2 = 0;
        do
            sub_8001B6C(v2++);
        while ( v2 < 18 );
        result = 1;
    }
    else
    {
        sub_8001B6C(v1);
        result = 1;
    }
    return result;
}


// 0x8035f98
signed int __fastcall sub_8035F98(int a1)
{
    int v1; // r4
    int v2; // r5
    int v3; // r1
    int v4; // r2
    int v5; // r0

    sub_8036094();
    if ( v1 == 255 )
    {
        sub_8036094();
        v5 = 255;
    }
    else
    {
        v5 = *(v2 + v1);
    }
    sub_8033FC0(v5, v3, v4);
    return 1;
}


// 0x8035fba
signed int __fastcall sub_8035FBA(int a1)
{
    int v1; // r4
    int v2; // r5

    sub_8036094();
    if ( v1 == 1 )
    {
        *(v2 + 16) = 0;
    }
    else
    {
        sub_80360C8();
        *(v2 + 16) = v1;
    }
    return 1;
}


// 0x8035fde
signed int __fastcall sub_8035FDE(int a1)
{
    unsigned __int8 *v1; // r4

    sub_8036094();
    if ( v1 == &byte_0[1] )
    {
        sub_8036094();
        sub_80035A2(1u);
    }
    else
    {
        sub_80360C8();
        sub_8003570(v1);
    }
    return 1;
}


// 0x803600e
int __fastcall sub_803600E(unsigned __int8 *a1, int a2, int a3, int a4)
{
    unsigned __int8 *v4; // r4
    int v5; // r6
    void **v6; // r12
    int result; // r0
    char v8; // zf

    v4 = a1;
    v5 = a2;
    ZeroFillByWord(&unk_2011E60, 0x14u, a3, a4);
    dword_2011E68 = v4;
    dword_2011E6C = v5;
    v6 = &off_8035808;
    do
        result = (v6[*v4])();
    while ( !v8 );
    return result;
}


// 0x8036040
int sub_8036040()
{
    void **v0; // r12
    unsigned __int8 *v1; // r7
    int result; // r0
    char v3; // zf

    v0 = &off_8035808;
    v1 = dword_2011E6C;
    do
        result = (v0[*v1])();
    while ( !v3 );
    return result;
}


// 0x8036064
int sub_8036064()
{
    int result; // r0
    void **v1; // r12
    unsigned __int8 *v2; // r7
    char v3; // zf

    result = dword_2011E70;
    if ( dword_2011E70 )
    {
        v1 = &off_8035808;
        v2 = dword_2011E70;
        do
            result = (v1[*v2])();
        while ( !v3 );
    }
    return result;
}


// 0x8036094
void sub_8036094()
{
    int v0; // r6
    int v1; // r7
    int v2; // r4

    v2 = *(v1 + v0);
}


// 0x803609c
void sub_803609C()
{
    int v0; // r6
    int v1; // r7
    int v2; // r4

    v2 = *(v1 + v0);
}


// 0x80360a8
void sub_80360A8()
{
    int v0; // r6
    int v1; // r7
    int v2; // r4

    v2 = (*(v1 + v0 + 1) << 8) | *(v1 + v0);
}


// 0x80360b6
void sub_80360B6()
{
    int v0; // r6
    int v1; // r7
    int v2; // r4

    v2 = ((*(v1 + v0 + 1) << 8) | *(v1 + v0));
}


// 0x80360c8
// () -> void .spoils R4, R6
void sub_80360C8()
{
    int v0; // r6
    int v1; // r7
    int v2; // r4

    v2 = (((((*(v1 + v0 + 3) << 8) | *(v1 + v0 + 2)) << 8) | *(v1 + v0 + 1)) << 8) | *(v1 + v0);
}


// 0x8036e44
signed int sub_8036E44()
{
    int v0; // r10
    unsigned __int8 *v1; // r6
    int v2; // r4
    unsigned __int8 *i; // r7
    int v4; // r0
    signed int result; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = *(v0 + oToolkit_Unk2001c04_Ptr);
    for ( i = off_80360E4[v1[7]]; ; i += 8 )
    {
        v4 = *i;
        if ( v4 == 255 )
            break;
        if ( v4 == v1[4] )
        {
            result = *(*(i + 1) + v1[5]);
            *(v2 + 4) = result;
            return result;
        }
    }
    result = 99;
    *(v2 + 4) = 99;
    return result;
}


// 0x8036e78
int __fastcall sub_8036E78(int a1, int a2, int a3)
{
    int v3; // r10

    return sound_bgmusic_play(*(*(v3 + oToolkit_Unk2001c04_Ptr) + 4), a2, a3);
}


// 0x8036e86
char __fastcall sub_8036E86(char result)
{
    int v1; // r10

    *(*(v1 + oToolkit_Unk2001c04_Ptr) + 4) = result;
    return result;
}


// 0x8036e90
void *__fastcall init_s_02011C50_8036E90(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    _DWORD *v5; // r5
    int v6; // ST00_4
    void *result; // r0
    int v8; // [sp+4h] [bp-Ch]

    v5 = *(v4 + oToolkit_S2011c50_Ptr);
    v6 = a1;
    ZeroFillByWord(*(v4 + oToolkit_S2011c50_Ptr), 0x90u, a3, a4);
    v5[7] = v6;
    v5[offsetof(s_02011C50, unk_10)] = v6;
    v5[1] = v8;
    v5[8] = &dword_8037690;
    v5[9] = &dword_8037690;
    v5[0xA] = &dword_8037690;
    v5[offsetof(s_02011C50, unk_0C)] = &eDialogScript202DA04;
    result = &off_8036EC4;
    v5[offsetof(s_02011C50, unk_0D)] = &off_8036EC4;
    return result;
}


// 0x8036ed4
unsigned int sub_8036ED4()
{
    int v0; // r10
    _DWORD *v1; // r1
    int v2; // r1

    v1 = *(v0 + oToolkit_S2011c50_Ptr);
    v1[7] = 1;
    v1[8] = &dword_8037690;
    v1[9] = &dword_8037690;
    v1[0xA] = &dword_8037690;
    v1[offsetof(s_02011C50, pad_0E)] = 0;
    v2 = *(v0 + oToolkit_Unk2001c04_Ptr);
    *(v2 + offsetof(s_02011C50, unk_12)) = 0;
    *(v2 + 0x14) = 0;
    return ClearEventFlagFromImmediate(23, 49);
}


// 0x8036efe
unsigned int sub_8036EFE()
{
    int v0; // r10
    _DWORD *v1; // r1

    v1 = *(v0 + oToolkit_S2011c50_Ptr);
    v1[7] = 1;
    v1[8] = &dword_8037690;
    v1[9] = &dword_8037690;
    v1[0xA] = &dword_8037690;
    v1[offsetof(s_02011C50, pad_0E)] = 0;
    return ClearEventFlagFromImmediate(23, 49);
}


// 0x8036f24
int sub_8036F24()
{
    int v0; // r10
    int v1; // r1
    int result; // r0

    v1 = *(v0 + oToolkit_S2011c50_Ptr);
    result = *(v1 + offsetof(s_02011C50, ptr_1C));
    if ( result == 1 )
    {
        result = 0;
        *(v1 + offsetof(s_02011C50, ptr_1C)) = 0;
        *(v1 + offsetof(s_02011C50, unk_40)) = 0;
    }
    return result;
}


// 0x8036f36
// () -> zf
int s_2011C50_ptr_1C_isNull()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2011c50_Ptr) + offsetof(s_02011C50, ptr_1C));
}


// 0x8036f40
// () -> zf
int s_2011C50_8036F40()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2011c50_Ptr) + offsetof(s_02011C50, unk_40));
}


// 0x8036f58
int sub_8036F58()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2011c50_Ptr) + 64);
}


// 0x8036f70
signed int __fastcall sub_8036F70(int a1)
{
    int v1; // r10
    signed int v2; // r2

    v2 = 1;
    if ( *(*(v1 + oToolkit_S2011c50_Ptr) + 64) != a1 )
        v2 = 0;
    return v2;
}


// 0x8036f84
int sub_8036F84()
{
    int v0; // r10
    int result; // r0
    char v2; // zf

    result = IsPaletteFadeActive();
    if ( !v2 )
        result = *(*(v0 + oToolkit_JoypadPtr) + 2);
    return result;
}


// 0x8036f98
int __fastcall sub_8036F98(int a1)
{
    dword_2011BD0 = a1;
    dword_2011BD4 = 0;
    return sub_80301B2(0, &dword_2011BD0);
}


// 0x8036faa
int sub_8036FAA()
{
    int v0; // r10

    return sub_80301B2(1, *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 28);
}


// 0x8036fbc
int sub_8036FBC()
{
    int result; // r0
    int v1; // r1

    result = (*(&off_8036FDC + *dword_2011BD0))();
    dword_2011BD0 = v1;
    return result;
}


// 0x8037030
signed int __fastcall sub_8037030(int a1, int a2)
{
    int v2; // r10
    int v3; // r1
    int v4; // r1
    int v5; // r0
    _DWORD *v6; // r6
    int v7; // r2
    int v8; // r3

    sub_803746E(1, a2);
    sub_803746E(3, v3);
    v5 = sub_803746E(5, v4);
    v6 = *(v2 + oToolkit_CameraPtr);
    v6[12] = v7;
    v6[13] = v8;
    v6[14] = v5 << 12;
    return 1;
}


// 0x803705a
signed int __fastcall sub_803705A(int a1, int a2)
{
    int v2; // r5
    int v3; // r10
    _DWORD *v4; // r6
    int v5; // r1
    int v6; // r1
    int v7; // r0

    if ( !*(v2 + 6) )
    {
        *(v2 + 6) = 1;
        *(v2 + 4) = sub_8037460(1, a2);
    }
    v4 = *(v3 + oToolkit_CameraPtr);
    v4[12] += sub_803746E(3, a2) << 8;
    v4[13] += sub_803746E(5, v5) << 8;
    v4[14] += sub_803746E(7, v6) << 8;
    v7 = *(v2 + 4) - 1;
    *(v2 + 4) = v7;
    if ( v7 <= 0 )
        *(v2 + 6) = 0;
    return 1;
}


// 0x80370b4
int sub_80370B4()
{
    return 0;
}


// 0x80370b8
signed int __fastcall sub_80370B8(int a1, int a2)
{
    int v2; // r5
    int v3; // r2

    if ( !*(v2 + 6) )
    {
        *(v2 + 6) = 1;
        *(v2 + 4) = sub_8037460(1, a2);
    }
    v3 = *(v2 + 4) - 1;
    *(v2 + 4) = v3;
    if ( v3 < 0 )
        *(v2 + 6) = 0;
    return 1;
}


// 0x80370e4
signed int __fastcall sub_80370E4(int a1, int a2)
{
    __int16 v2; // r4
    int v3; // r1
    __int16 v4; // r0

    v2 = sub_803744C(2, a2);
    v4 = sub_803744C(1, v3);
    sub_80302A8(v4, v2);
    return 1;
}


// 0x8037104
signed int __fastcall sub_8037104(int a1, int a2)
{
    int v2; // r5
    int v3; // r10
    int *v4; // r6
    _DWORD *v5; // r7
    int v6; // r0
    int v7; // r2
    int v8; // r3
    int v9; // r1
    int v10; // r0
    int v11; // r2
    int v12; // r3
    int v13; // r1
    int v14; // r2
    int v15; // r3

    v4 = *(v3 + oToolkit_CameraPtr);
    v5 = *(*(v3 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    v6 = sub_8037162(a1, a2, v4[12], v5[7] - v4[12]);
    v4[12] = v8 + v7;
    v10 = sub_8037162(v6, v9, v4[13], v5[8] - v4[13]);
    v4[13] = v12 + v11;
    sub_8037162(v10, v13, v4[14], v5[9] - v4[14]);
    v4[14] = v15 + v14;
    if ( v4[12] != v5[7] || v4[13] != v5[8] || v4[14] != v5[9] )
        return 1;
    *(v2 + 6) = 0;
    *(v2 + 4) = 0;
    return 1;
}


// 0x8037162
int __fastcall sub_8037162(int a1, int a2, int a3, int a4)
{
    int result; // r0

    if ( a4 >= 0 )
        result = a4;
    else
        result = -a4;
    return result;
}


// 0x8037196
signed int __fastcall sub_8037196(int a1, int a2)
{
    int v2; // r5
    int v3; // r1
    int v4; // r1
    int v5; // r1
    __int16 v6; // r0
    int v11; // r2
    int v12; // r3
    int v13; // r4
    int v14; // r4
    int v15; // r4

    if ( !*(v2 + 6) )
    {
        *(v2 + 6) = 1;
        *(v2 + 20) = sub_803746E(1, a2) << 16;
        *(v2 + 24) = sub_803746E(3, v3) << 16;
        *(v2 + 28) = sub_803746E(5, v4) << 16;
        v6 = sub_8037460(7, v5);
        *(v2 + 4) = v6;
        __asm { SVC         6 }
        *(v2 + 32) = 0x4000;
        *(v2 + 4) = 0x4000 - v6;
        *(v2 + 8) = sub_80301D0();
        *(v2 + 16) = v11;
    }
    v12 = *(v2 + 4);
    v13 = *(v2 + 32);
    _VF = __OFSUB__(v12, v13);
    v14 = v12 - v13;
    if ( ((v14 < 0) ^ _VF) | (v14 == 0) )
    {
        sub_80301DC(*(v2 + 20), *(v2 + 24), *(v2 + 28));
        *(v2 + 6) = 0;
        *(v2 + 4) = 0;
    }
    else
    {
        *(v2 + 4) = v14;
        v15 = *&byte_80065E0[2 * (64 - (v14 >> 8))];
        sub_80301DC(
            ((*(v2 + 20) - *(v2 + 8)) >> 8) * v15 + *(v2 + 8),
            ((*(v2 + 24) - *(v2 + 12)) >> 8) * v15 + *(v2 + 12),
            ((*(v2 + 28) - *(v2 + 16)) >> 8) * v15 + *(v2 + 16));
    }
    return 1;
}


// 0x8037260
void __fastcall sub_8037260(int a1, int a2)
{
    int v2; // r5
    int v3; // r10
    _DWORD *v4; // r7
    int v5; // r1
    int v6; // r1

    if ( !*(v2 + 6) )
    {
        *(v2 + 6) = 1;
        v4 = *(*(v3 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
        *(v2 + 20) = (sub_803746E(1, a2) << 16) + v4[7];
        *(v2 + 24) = (sub_803746E(3, v5) << 16) + v4[8];
        *(v2 + 28) = (sub_803746E(5, v6) << 16) + v4[9];
        JUMPOUT(&loc_80371C2);
    }
    JUMPOUT(&loc_80371E8);
}


// 0x80372a2
void sub_80372A2()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    int v3; // r1

    if ( !*(v0 + 6) )
    {
        *(v0 + 6) = 1;
        v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
        sub_81421E0();
        *(v0 + 20) = sub_8142868();
        *(v0 + 24) = v3;
        *(v0 + 28) = *(v2 + 36);
        JUMPOUT(&loc_80371C2);
    }
    if ( *(v0 + 20) == *(v0 + 8) && *(v0 + 24) == *(v0 + 12) && *(v0 + 28) == *(v0 + 16) )
        JUMPOUT(&loc_8037242);
    JUMPOUT(&loc_80371E8);
}


// 0x80372ec
void sub_80372EC()
{
    int v0; // r5
    int v1; // r10
    _DWORD *v2; // r7
    int v3; // r1
    int v4; // r2

    if ( !*(v0 + 6) )
    {
        *(v0 + 6) = 1;
        v2 = *(*(v1 + oToolkit_S2011c50_Ptr) + 4);
        v3 = v2[4];
        v4 = v2[5];
        *(v0 + 20) = v2[3];
        *(v0 + 24) = v3;
        *(v0 + 28) = v4;
        JUMPOUT(&loc_80371C2);
    }
    if ( *(v0 + 20) == *(v0 + 8) && *(v0 + 24) == *(v0 + 12) && *(v0 + 28) == *(v0 + 16) )
        JUMPOUT(&loc_8037242);
    JUMPOUT(&loc_80371E8);
}


// 0x8037332
signed int __fastcall sub_8037332(int a1, int a2)
{
    int v2; // r4
    int v3; // r1
    int v4; // r0

    v2 = sub_803744C(1, a2);
    v4 = sub_8037480(2, v3);
    chatbox_runScript(v4, v2);
    return 1;
}


// 0x8037352
signed int sub_8037352()
{
    chatbox_8045F3C(128);
    return 1;
}


// 0x803736a
signed int __fastcall sub_803736A(int a1, int a2)
{
    int v2; // r0

    v2 = sub_8037480(1, a2);
    sub_8001B1C(v2);
    return 1;
}


// 0x8037380
signed int __fastcall sub_8037380(int a1, int a2)
{
    int v2; // r0

    v2 = sub_803744C(1, a2);
    sub_8001B6C(v2);
    return 1;
}


// 0x8037396
signed int __fastcall sub_8037396(int a1, int a2)
{
    int v2; // r4
    int v3; // r1
    int v4; // r0

    v2 = sub_803744C(2, a2);
    v4 = sub_803744C(1, v3);
    engine_setScreeneffect(v4, v2);
    return 1;
}


// 0x80373b6
signed int sub_80373B6()
{
    IsPaletteFadeActive();
    return 1;
}


// 0x80373cc
signed int __fastcall sub_80373CC(int a1, int a2)
{
    int v2; // r0

    v2 = sub_8037460(1, a2);
    SetEventFlag(v2);
    return 1;
}


// 0x80373e4
signed int __fastcall sub_80373E4(int a1, int a2)
{
    int v2; // r0

    v2 = sub_8037460(1, a2);
    ClearEventFlag(v2);
    return 1;
}


// 0x80373fc
signed int __fastcall sub_80373FC(int a1, int a2)
{
    int v2; // r4
    int v3; // r1
    int v4; // r0

    v2 = sub_803744C(2, a2);
    v4 = sub_803744C(1, v3);
    sub_800068A(v4, v2);
    return 1;
}


// 0x803741c
signed int __fastcall sub_803741C(int a1, int a2)
{
    int v2; // r0
    int v3; // r1
    int v4; // r2

    v2 = sub_8037460(1, a2);
    sound_bgmusic_play(v2, v3, v4);
    return 1;
}


// 0x8037432
signed int __fastcall sub_8037432(int a1, int a2)
{
    int v2; // r0

    v2 = sub_8037480(1, a2);
    sub_80301B2(1, v2);
    return 1;
}


// 0x803744c
int __fastcall sub_803744C(int a1, int a2)
{
    return *(a2 + a1);
}


// 0x8037454
int __fastcall sub_8037454(int a1, int a2)
{
    return *(a2 + a1);
}


// 0x8037460
int __fastcall sub_8037460(int a1, int a2)
{
    return (*(a2 + a1 + 1) << 8) | *(a2 + a1);
}


// 0x803746e
int __fastcall sub_803746E(int a1, int a2)
{
    return ((*(a2 + a1 + 1) << 8) | *(a2 + a1));
}


// 0x8037480
int __fastcall sub_8037480(int a1, int a2)
{
    return (((((*(a2 + a1 + 3) << 8) | *(a2 + a1 + 2)) << 8) | *(a2 + a1 + 1)) << 8) | *(a2 + a1);
}


// 0x80376c4
int sub_80376C4()
{
    char v0; // zf

    TestEventFlagFromImmediate(23, 65);
    if ( v0 )
        sub_813C3AC();
    sub_8036EFE();
    return 0;
}


// 0x80376dc
int sub_80376DC()
{
    char v0; // zf

    TestEventFlagFromImmediate(23, 65);
    if ( v0 )
        sub_813C3AC();
    sub_8036ED4();
    return 0;
}


// 0x80376f4
signed int sub_80376F4()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    char v3; // zf
    int v4; // r1
    int v5; // r0
    unsigned __int8 v6; // vf

    v2 = *(v1 + 18);
    sub_80385E0();
    if ( v3 )
    {
        sub_80385C0(*(v1 + 18));
        sub_8036094();
        if ( v0 == 255 )
            sub_8036094();
        else
            LOBYTE(v0) = *(v1 + v0);
        *(v1 + *(v1 + 18) + 12) = v0;
    }
    v4 = *(v1 + 18) + 12;
    v5 = *(v1 + v4);
    v6 = __OFSUB__(v5--, 1);
    *(v1 + v4) = v5;
    if ( !((v5 < 0) ^ v6) )
        return 0;
    sub_80385D0(*(v1 + 18));
    return 1;
}


// 0x8037740
signed int sub_8037740()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    char v3; // zf
    int v4; // r1
    int v5; // r0
    unsigned __int8 v6; // vf

    v2 = *(v1 + 18);
    sub_80385E0();
    if ( v3 )
    {
        sub_80385C0(*(v1 + 18) + 4);
        sub_8036094();
        if ( v0 == 255 )
            sub_80360A8();
        else
            LOWORD(v0) = *(v1 + v0);
        *(v1 + 2 * *(v1 + 18) + 20) = v0;
    }
    v4 = 2 * *(v1 + 18) + 20;
    v5 = *(v1 + v4);
    v6 = __OFSUB__(v5--, 1);
    *(v1 + v4) = v5;
    if ( !((v5 < 0) ^ v6) )
        return 0;
    sub_80385D0(*(v1 + 18) + 4);
    return 1;
}


// 0x8037790
BOOL sub_8037790()
{
    char v0; // r4
    char v1; // zf
    BOOL result; // r0

    sub_8036094();
    chatbox_8045F3C(v0 & 0x80);
    result = 1;
    if ( !v1 )
    {
        chatbox_8045F3C(v0 & 0x38);
        if ( v1 )
            result = 0;
    }
    return result;
}


// 0x80377b6
BOOL sub_80377B6()
{
    int v0; // r4

    sub_8036094();
    return sub_809E434() == v0;
}


// 0x80377d0
BOOL sub_80377D0()
{
    return sub_809E228() == 0;
}


// 0x80377e4
signed int sub_80377E4()
{
    char v0; // zf
    signed int result; // r0

    IsPaletteFadeActive();
    if ( v0 )
        result = 0;
    else
        result = 1;
    return result;
}


// 0x80377f6
BOOL sub_80377F6()
{
    int v0; // r5

    return *(v0 + 19) == 0;
}


// 0x8037808
BOOL sub_8037808()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r0

    sub_8036094();
    v2 = *(v1 + v0);
    sub_8036094();
    return v3 == v0;
}


// 0x8037826
BOOL sub_8037826()
{
    int v0; // r4
    int v1; // r5

    sub_8036094();
    return **(v1 + v0) == 17;
}


// 0x8037840
signed int sub_8037840()
{
    char v0; // zf
    signed int result; // r0

    Is_eStruct200a6a0_Initialized();
    if ( v0 )
        result = 1;
    else
        result = 0;
    return result;
}


// 0x8037852
signed int sub_8037852()
{
    char v0; // zf
    signed int result; // r0

    sub_811EBE0();
    if ( v0 )
        result = 1;
    else
        result = 0;
    return result;
}


// 0x8037866
signed int sub_8037866()
{
    unsigned int v0; // r4
    char v1; // zf
    signed int result; // r0

    sub_80360A8();
    TestEventFlag(v0);
    if ( v1 )
        result = 0;
    else
        result = 1;
    return result;
}


// 0x8037880
signed int sub_8037880()
{
    unsigned int v0; // r4
    char v1; // zf
    signed int result; // r0

    sub_80360A8();
    TestEventFlag(v0);
    if ( v1 )
        result = 1;
    else
        result = 0;
    return result;
}


// 0x803789a
signed int sub_803789A()
{
    char v0; // zf
    signed int result; // r0

    sub_80039CC();
    if ( v0 )
        result = 1;
    else
        result = 0;
    return result;
}


// 0x80378ac
signed int sub_80378AC()
{
    char v0; // zf
    signed int result; // r0

    sub_8003B1C();
    if ( v0 )
        result = 1;
    else
        result = 0;
    return result;
}


// 0x80378be
int sub_80378BE()
{
    return 0;
}


// 0x80378c2
signed int sub_80378C2()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    unsigned int v3; // r4

    sub_80360C8();
    sub_8036094();
    *(v1 + v0) = v2;
    v3 = (v0 - 28) >> 2;
    sub_80385D0(v3);
    sub_80385D0(v3 + 4);
    return 1;
}


// 0x80378ee
signed int sub_80378EE()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0

    sub_8036094();
    *(v1 + v0) = v2;
    return 1;
}


// 0x8037904
signed int sub_8037904()
{
    int v0; // r4
    int v1; // r5

    sub_80360C8();
    *(v1 + 56) = v0;
    return 1;
}


// 0x8037914
signed int sub_8037914()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r0

    sub_8036094();
    v2 = *(v1 + v0);
    sub_8036094();
    if ( v3 == v0 )
        sub_80360C8();
    return 1;
}


// 0x803793a
signed int sub_803793A()
{
    int v0; // r4

    sub_8036094();
    if ( eStruct200A008_getUnk01() == v0 )
        sub_80360C8();
    return 1;
}


// 0x803795c
signed int sub_803795C()
{
    int v0; // r4

    sub_8036094();
    if ( eStruct200A008_getUnk01() != v0 )
        sub_80360C8();
    return 1;
}


// 0x803797e
signed int sub_803797E()
{
    int v0; // r4

    sub_8036094();
    if ( getPETNaviSelect() == v0 )
        sub_80360C8();
    return 1;
}


// 0x80379a0
signed int sub_80379A0()
{
    int v0; // r4

    sub_8036094();
    if ( getPETNaviSelect() != v0 )
        sub_80360C8();
    return 1;
}


// 0x80379c2
signed int sub_80379C2()
{
    int v0; // r4

    sub_8036094();
    if ( sub_8000EE4() == v0 )
        sub_80360C8();
    return 1;
}


// 0x80379e4
signed int sub_80379E4()
{
    int v0; // r4

    sub_8036094();
    if ( sub_8000EE4() != v0 )
        sub_80360C8();
    return 1;
}


// 0x8037a06
signed int sub_8037A06()
{
    char v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r0
    _BYTE *v4; // r0

    sub_8036094();
    sub_8036094();
    v3 = *(v1 + v2);
    sub_8036094();
    *v4 = v0;
    return 1;
}


// 0x8037a2a
signed int sub_8037A2A()
{
    int v0; // r4
    int v1; // r5
    char v2; // r0

    sub_8036094();
    sub_8036094();
    *(v1 + v0) = v2;
    return 1;
}


// 0x8037a42
signed int sub_8037A42()
{
    int v0; // r4
    int v1; // r5

    sub_8036094();
    if ( v0 == 255 )
    {
        sub_8036094();
        chatbox_runScript(*(v1 + 48), 255);
    }
    else
    {
        chatbox_runScript(*(v1 + 48), *(v1 + v0));
    }
    return 1;
}


// 0x8037a70
signed int __fastcall sub_8037A70(int a1)
{
    chatbox_8040818();
    return 1;
}


// 0x8037a7c
signed int sub_8037A7C()
{
    int v0; // r4
    int v1; // r0

    sub_8036094();
    sub_8036094();
    if ( v0 == 1 )
        chatbox_clear_eFlags2009F38(v1);
    else
        chatbox_setFlags2009F38(v1);
    return 1;
}


// 0x8037aa0
signed int __fastcall sub_8037AA0(int a1)
{
    int v1; // r6

    v1 = 4 * chatbox_8045F4C() + 1;
    sub_80360C8();
    return 1;
}


// 0x8037ab6
signed int sub_8037AB6()
{
    signed int v0; // r4
    int v1; // r5
    signed int v2; // r0

    sub_80360C8();
    v2 = v0;
    if ( v0 < 0 )
        v2 = uncomp_8037AD0(v0);
    *(v1 + 48) = v2;
    return 1;
}


// 0x8037ad0
// (void *a1) -> void*
signed int __fastcall uncomp_8037AD0(signed int result)
{
    if ( result < 0 )
    {
        SWI_LZ77UnCompReadNormalWrite8bit(((2 * result) >> 1), &unk_2034A00);
        result = &eDialogScript2034A04;
    }
    return result;
}


// 0x8037aec
signed int __fastcall uncomp_8037AEC(signed int result)
{
    if ( result < 0 )
    {
        SWI_LZ77UnCompReadNormalWrite8bit(((2 * result) >> 1), &unk_2033400);
        result = &eDialogScript2033404;
    }
    return result;
}


// 0x8037b08
signed int sub_8037B08()
{
    int v0; // r4

    sub_8036094();
    (*(&off_8037B24 + v0))();
    return 1;
}


// 0x8037b6c
signed int sub_8037B6C()
{
    int v0; // r4
    int v1; // r5
    int v2; // r3
    void (__fastcall *v3)(int); // r3

    sub_8036094();
    v2 = *(&off_8037B9C + v0);
    sub_8036094();
    if ( v0 == 255 )
        sub_8036094();
    else
        v0 = *(v1 + v0);
    v3(v0);
    return 1;
}


// 0x8037bb4
signed int sub_8037BB4()
{
    signed int v0; // r4
    int v1; // r5
    char v2; // zf
    int v3; // r0
    unsigned __int8 v4; // vf

    sub_8036094();
    if ( v0 >= 8 && !*(v1 + 18) )
        return 0;
    sub_80385E0();
    if ( v2 )
    {
        sub_80385C0(8);
        sub_8036094();
        if ( v0 == 255 )
            sub_8036094();
        else
            v0 = *(v1 + v0);
        *(v1 + 16) = v0;
    }
    sub_80360B6();
    sub_80360B6();
    sub_80360B6();
    sub_8036094();
    (*(&off_8037C34 + v0))();
    v3 = *(v1 + 16);
    v4 = __OFSUB__(v3--, 1);
    *(v1 + 16) = v3;
    if ( !(((v3 < 0) ^ v4) | (v3 == 0)) )
        return 0;
    sub_80385D0(8);
    return 1;
}


// 0x8037c44
signed int sub_8037C44()
{
    int v0; // r4
    int v1; // r5
    char v2; // zf
    int v3; // r3
    int v4; // r0
    unsigned __int8 v5; // vf

    if ( !*(v1 + 18) )
        return 0;
    sub_809E2B8();
    sub_80385E0();
    if ( v2 )
    {
        sub_80385C0(8);
        sub_8036094();
        if ( v0 == 255 )
            sub_8036094();
        else
            v0 = *(v1 + v0);
        *(v1 + 16) = v0;
    }
    sub_80360B6();
    sub_809E1FA((v0 << 8) * byte_8037CB4[2 * v3], (v0 << 8) * byte_8037CB4[2 * v3 + 1], 0);
    v4 = *(v1 + 16);
    v5 = __OFSUB__(v4--, 1);
    *(v1 + 16) = v4;
    if ( !(((v4 < 0) ^ v5) | (v4 == 0)) )
        return 0;
    sub_80385D0(8);
    return 1;
}


// 0x8037cc4
signed int sub_8037CC4()
{
    int v0; // r4
    int v1; // r5
    __int16 v2; // r0

    sub_8036094();
    sub_8036094();
    if ( v0 != 255 )
        v2 = *(v1 + v0);
    sub_809E218(v2);
    return 1;
}


// 0x8037ce4
signed int sub_8037CE4()
{
    int v0; // r4

    sub_80360C8();
    sub_809E496(v0);
    return 1;
}


// 0x8037cf8
signed int sub_8037CF8()
{
    int v0; // r4
    int v1; // r5
    signed int result; // r0
    char v3; // zf
    char v4; // r0
    char v5; // r1
    int v6; // r0
    unsigned __int8 v7; // vf

    sub_8036094();
    if ( v0 )
    {
        if ( v0 == 1 )
        {
            sub_809E2C2();
            result = 1;
        }
        else
        {
            sub_80385E0();
            if ( v3 )
            {
                sub_80385C0(9);
                sub_8036094();
                *(v1 + 17) = v0;
            }
            sub_803609C();
            sub_803609C();
            sub_803609C();
            sub_809E2DC(v4, v5, v0);
            v6 = *(v1 + 17);
            v7 = __OFSUB__(v6--, 1);
            *(v1 + 17) = v6;
            if ( ((v6 < 0) ^ v7) | (v6 == 0) )
            {
                sub_80385D0(9);
                result = 1;
            }
            else
            {
                result = 0;
            }
        }
    }
    else
    {
        sub_8036094();
        sub_8036094();
        sub_8036094();
        (loc_809E2C8)();
        result = 1;
    }
    return result;
}


// 0x8037d80
signed int sub_8037D80()
{
    int v0; // r4
    signed int result; // r0

    sub_8036094();
    if ( v0 && v0 == 1 )
    {
        sub_809E2F4();
        result = 1;
    }
    else
    {
        sub_80360A8();
        (loc_809E2F6)(v0);
        result = 1;
    }
    return result;
}


// 0x8037dac
signed int sub_8037DAC()
{
    int v0; // r4
    int v1; // r5
    char v2; // r0

    sub_8036094();
    if ( v0 == 255 )
        sub_8036094();
    else
        v0 = *(v1 + v0);
    sub_8036094();
    if ( v0 )
        v2 += sub_809E2B8();
    sub_809E13C(v2);
    return 1;
}


// 0x8037de0
signed int sub_8037DE0()
{
    int v0; // r4
    char *v1; // r4

    sub_8036094();
    v1 = &eOverworldNPCObjects[216 * v0];
    (loc_809E1A4)(*(v1 + 9), *(v1 + 10), *(v1 + 11));
    sub_809E13C(v1[20]);
    sub_8036094();
    sub_809E2AE(v1);
    return 1;
}


// 0x8037e18
int sub_8037E18()
{
    int v0; // r4

    sub_8036094();
    return (*(&off_8037E38 + ((v0 & 0xF0u) >> 2)))(v0);
}


// 0x8037e4c
signed int sub_8037E4C()
{
    char v0; // r4
    int v1; // r5
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0

    sub_8036094();
    sub_80360A8();
    sub_80360A8();
    sub_80360A8();
    sub_80360C8();
    sub_80047E0(v5, v2 << 16, v3 << 16, v4 << 16);
    *(v1 + 4 * (v0 & 0xF) + 68) = v1 + 4 * (v0 & 0xF) + 68;
    return 1;
}


// 0x8037e96
signed int sub_8037E96()
{
    char v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3

    sub_809E1AE();
    sub_80360A8();
    sub_80360A8();
    sub_80360A8();
    sub_8036094();
    sub_80360C8();
    sub_80047E0(v2, v3, v4, v5);
    *(v1 + 4 * (v0 & 0xF) + 68) = v1 + 4 * (v0 & 0xF) + 68;
    return 1;
}


// 0x8037efa
signed int sub_8037EFA()
{
    char v0; // r4
    int v1; // r5
    int v2; // r4
    _DWORD *v3; // r5
    char *v4; // r4
    int v5; // ST00_4
    int v6; // ST04_4
    int v7; // ST08_4
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3

    v2 = 4 * (v0 & 0xF) + 68;
    v3 = (v1 + v2);
    sub_8036094();
    v4 = &eOverworldNPCObjects[216 * v2];
    v5 = *(v4 + 9);
    v6 = *(v4 + 10);
    v7 = *(v4 + 11);
    sub_80360A8();
    sub_80360A8();
    sub_80360A8();
    sub_8036094();
    sub_80360C8();
    sub_80047E0(v8, v9, v10, v11);
    *v3 = v3;
    return 1;
}


// 0x8037f6e
signed int sub_8037F6E()
{
    char v0; // r4
    int v1; // r5
    int v2; // r4
    int v3; // r5

    v2 = 4 * (v0 & 0xF) + 68;
    v3 = *(v1 + v2);
    if ( v3 )
    {
        *(v3 + v2) = 0;
        sub_80048B2();
    }
    return 1;
}


// 0x8037f90
signed int sub_8037F90()
{
    int v0; // r5
    signed int v1; // r4

    v1 = 68;
    do
    {
        if ( *(v0 + v1) )
        {
            *(v0 + v1) = 0;
            sub_80048B2();
        }
        v1 += 4;
    }
    while ( v1 <= 108 );
    return 1;
}


// 0x8037fb8
signed int sub_8037FB8()
{
    unsigned __int8 *v0; // r4
    signed int result; // r0

    sub_8036094();
    if ( v0 == &byte_0[1] )
    {
        sub_8036094();
        sub_80035A2(1u);
        result = 1;
    }
    else if ( v0 == &byte_0[2] )
    {
        sub_80360C8();
        sub_8030A60(&byte_0[2]);
        result = 1;
    }
    else if ( v0 == &byte_0[3] )
    {
        npc_getMapSpriteScriptOffsets();
        result = 1;
    }
    else if ( v0 == dword_4 )
    {
        npc_dead_803516C();
        result = 1;
    }
    else
    {
        if ( v0 == dword_4 + 1 )
        {
            sub_80351B4();
        }
        else
        {
            sub_80360C8();
            sub_8003570(v0);
        }
        result = 1;
    }
    return result;
}


// 0x8038028
signed int sub_8038028()
{
    void (*v0)(void); // r4
    char v1; // zf
    signed int result; // r0

    sub_80360C8();
    v0();
    if ( v1 )
        result = 1;
    else
        result = 0;
    return result;
}


// 0x8038040
signed int sub_8038040()
{
    int v0; // r4
    int v1; // r5
    char v2; // r3
    int v3; // r2
    int v4; // r0
    char v5; // r1
    signed int result; // r0
    int v7; // r0
    char v8; // r1
    int v9; // r0
    char v10; // r1
    char v11; // r2

    sub_8036094();
    if ( v0 & 0x40 )
    {
        v9 = sub_8005F32();
        sub_8005F00(v9, v10, v11);
        result = 1;
    }
    else if ( v0 & 0x20 )
    {
        sub_80360C8();
        *(v1 + 52) = v0;
        result = 1;
    }
    else
    {
        sub_80360C8();
        if ( v2 & 0x80 )
            v3 = *(v1 + 52);
        if ( v2 & 1 )
        {
            sub_8036094();
            sub_8005F14(v7, v8, v0);
        }
        else
        {
            sub_8036094();
            sub_8005F00(v4, v5, v0);
        }
        result = 1;
    }
    return result;
}


// 0x80380b4
signed int sub_80380B4()
{
    int v0; // r4
    int v1; // r1
    int v2; // r2

    sub_80360A8();
    sound_play(v0, v1, v2);
    return 1;
}


// 0x80380c8
signed int sub_80380C8()
{
    int v0; // r4
    int v1; // r1
    int v2; // r2
    int v3; // r0
    int v4; // r1
    int v5; // r2

    sub_80360B6();
    if ( v0 >= 0 )
    {
        sound_bgmusic_play(v0, v1, v2);
    }
    else
    {
        v3 = sub_8036E44();
        sub_8036E78(v3, v4, v5);
    }
    return 1;
}


// 0x80380ea
signed int sub_80380EA()
{
    int v0; // r4
    signed int v1; // r0
    int v2; // r1

    sub_80360A8();
    sub_8036094();
    sub_8036094();
    sub_80006A2(v1, v2, v0);
    return 1;
}


// 0x803810e
signed int sub_803810E()
{
    int v0; // r4
    int v1; // r10
    int v2; // r1

    sub_8036094();
    sub_8036094();
    sub_800068A(v0, v2);
    *(*(v1 + oToolkit_GameStatePtr) + oGameState_BGMusicIndicator) = 99;
    return 1;
}


// 0x8038132
signed int __fastcall sub_8038132(int a1, int a2, int a3)
{
    musicGameState_8000784(a1, a2, a3);
    return 1;
}


// 0x803813e
signed int sub_803813E()
{
    int v0; // r4
    int v1; // r0
    int v2; // r1

    sub_8036094();
    sub_8036094();
    sub_8036094();
    if ( v0 == 1 )
        sub_803CE08(v1, v2);
    else
        sub_803CD98(v1, v2);
    return 1;
}


// 0x803816a
signed int sub_803816A()
{
    int v0; // r4
    int v1; // r5

    sub_8036094();
    if ( v0 )
    {
        *(v1 + 60) = 0;
        sub_8036FAA();
        *(v1 + 19) = 0;
    }
    else
    {
        sub_80360C8();
        *(v1 + 60) = 0;
        sub_8036F98(0);
        *(v1 + 19) = 1;
    }
    return 1;
}


// 0x80381a0
signed int sub_80381A0()
{
    unsigned int v0; // r4
    int v1; // r10
    char *v2; // r0

    if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) < 128 )
    {
        sub_80141AC();
        sub_8015C32();
    }
    sub_80360A8();
    v2 = getBattleSettingsFromList0(v0);
    gameState_8005BC8(v2, 1);
    sub_80360A8();
    sub_803522E(v0);
    engine_setScreeneffect(44, 16);
    return 1;
}


// 0x80381e0
signed int __fastcall sub_80381E0(int a1, int a2)
{
    int v2; // r0

    v2 = sub_80AA5E4(a1, a2);
    gameState_8005BC8(v2, 1);
    engine_setScreeneffect(44, 16);
    return 1;
}


// 0x80381fa
signed int sub_80381FA()
{
    int v0; // r4
    int v1; // r0
    int v2; // r1
    int v3; // r3

    sub_80360C8();
    sub_80360C8();
    sub_80360C8();
    Initialize_eStruct200a6a0(v1, v2, v0, v3);
    return 1;
}


// 0x803821e
signed int __fastcall sub_803821E(int a1, int a2, int a3, int a4)
{
    sub_8002484(a1, a2, a3, a4);
    return 1;
}


// 0x803822a
signed int sub_803822A()
{
    __int16 v0; // r4
    __int16 v1; // r0

    sub_8036094();
    sub_8036094();
    sub_80302A8(v1, v0);
    return 1;
}


// 0x8038246
signed int sub_8038246()
{
    sub_8036094();
    return 1;
}


// 0x8038256
signed int sub_8038256()
{
    return 1;
}


// 0x803825e
signed int sub_803825E()
{
    return 1;
}


// 0x8038266
signed int sub_8038266()
{
    return 1;
}


// 0x803826e
signed int __noreturn sub_803826E()
{
    sub_8001974();
    return 1;
}


// 0x803827a
signed int sub_803827A()
{
    unsigned __int8 v0; // r4
    int v1; // r1
    int v2; // r2
    int v3; // r3

    sub_8036094();
    sub_8003914(v0, v1, v2, v3);
    return 1;
}


// 0x803828e
signed int __fastcall sub_803828E(int a1, int a2, int a3, int a4)
{
    sub_8003940(a1, a2, a3, a4);
    return 1;
}


// 0x803829a
signed int sub_803829A()
{
    unsigned __int8 v0; // r4
    int v1; // r1
    int v2; // r2
    int v3; // r3

    sub_8036094();
    sub_8003A64(v0, v1, v2, v3);
    return 1;
}


// 0x80382ae
signed int __fastcall sub_80382AE(int a1, int a2, int a3, int a4)
{
    sub_8003A90(a1, a2, a3, a4);
    return 1;
}


// 0x80382ba
signed int sub_80382BA()
{
    int v0; // r4
    unsigned int v1; // r0
    unsigned int v2; // r6
    unsigned __int8 v3; // vf

    sub_80360A8();
    sub_8036094();
    v2 = v1;
    do
    {
        reqBBS_813E5DC(v2++);
        v3 = __OFSUB__(v0--, 1);
    }
    while ( !(((v0 < 0) ^ v3) | (v0 == 0)) );
    return 1;
}


// 0x80382de
signed int sub_80382DE()
{
    int v0; // r4

    sub_80360A8();
    modifyToolkit_unk7C_using_2008A0(v0);
    return 1;
}


// 0x80382f2
signed int sub_80382F2()
{
    sub_80340F6();
    return 1;
}


// 0x80382fe
signed int sub_80382FE()
{
    int v0; // r4

    sub_80010C6();
    sub_8036094();
    sub_80010BE(v0);
    sub_8120DF0();
    sub_813C3AC();
    sub_803CEB8();
    return 1;
}


// 0x8038322
signed int sub_8038322()
{
    int v0; // r4
    unsigned int v1; // r0
    unsigned int v2; // r6
    unsigned __int8 v3; // vf

    sub_80360A8();
    sub_8036094();
    v2 = v1;
    do
    {
        sub_802F238(v2++);
        v3 = __OFSUB__(v0--, 1);
    }
    while ( !(((v0 < 0) ^ v3) | (v0 == 0)) );
    return 1;
}


// 0x8038346
signed int sub_8038346()
{
    int v0; // r4
    int v1; // r0

    sub_80360C8();
    sub_80360C8();
    sub_80356F8(v1, v0);
    return 1;
}


// 0x8038362
signed int sub_8038362()
{
    int v0; // r4

    sub_80360A8();
    sub_8036094();
    if ( v0 == 1 )
        sub_803D040();
    else
        sub_803CFF8();
    return 1;
}


// 0x8038386
signed int sub_8038386()
{
    int v0; // r4

    sub_80360A8();
    sub_8036094();
    if ( v0 == 1 )
        sub_803D0C8();
    else
        sub_803D080();
    return 1;
}


// 0x80383aa
signed int sub_80383AA()
{
    int v0; // r4
    int v1; // r0
    int v2; // r1
    int v3; // r2

    sub_80360A8();
    sub_8036094();
    sub_8036094();
    sub_8036094();
    if ( v0 == 1 )
        sub_8021B92(v1, v2, v3);
    else
        sub_8021AEE(v1, v2, v3);
    return 1;
}


// 0x80383de
signed int sub_80383DE()
{
    int v0; // r4
    int v1; // r0
    int v2; // r1
    int v3; // r2

    sub_80360A8();
    sub_8036094();
    sub_8036094();
    sub_8036094();
    if ( v0 == 1 )
        sub_803D128(v1, v2, v3);
    else
        sub_803D108(v1, v2, v3);
    return 1;
}


// 0x8038412
signed int sub_8038412()
{
    int v0; // r4
    int v1; // r3
    int v2; // r3

    sub_8036094();
    if ( v0 == 1 )
    {
        *(v1 + 16) = 0;
    }
    else
    {
        sub_80360C8();
        *(v2 + 16) = v0;
    }
    return 1;
}


// 0x803843c
signed int sub_803843C()
{
    int v0; // r4
    int v1; // r10
    int v2; // r2
    int v3; // r0

    v2 = *(v1 + oToolkit_GameStatePtr);
    sub_8036094();
    sub_8036094();
    if ( v0 )
        sub_8035354(v3);
    else
        sub_8035364(v3);
    return 1;
}


// 0x8038466
signed int sub_8038466()
{
    int v0; // r4
    int v1; // r0

    sub_8036094();
    if ( v0 )
        sub_80355A8();
    else
        sub_803553C(v1);
    return 1;
}


// 0x8038484
signed int sub_8038484()
{
    int v0; // r4
    unsigned int v1; // r0
    unsigned int v2; // r6
    unsigned __int8 v3; // vf

    sub_80360A8();
    sub_8036094();
    v2 = v1;
    do
    {
        reqBBS_813F9A0(v2++);
        v3 = __OFSUB__(v0--, 1);
    }
    while ( !(((v0 < 0) ^ v3) | (v0 == 0)) );
    return 1;
}


// 0x80384a8
signed int sub_80384A8()
{
    int v0; // r10
    char v1; // zf

    sub_803CE28(44);
    if ( v1 || !(*(*(v0 + oToolkit_JoypadPtr) + 2) & 1) )
        return 1;
    sub_80360C8();
    return 1;
}


// 0x80384d0
signed int sub_80384D0()
{
    sub_80141AC();
    return 1;
}


// 0x80384dc
signed int sub_80384DC()
{
    if ( reqBBS_getTotalPointsIndex() == 4 )
        sub_80360C8();
    return 1;
}


// 0x80384f8
signed int sub_80384F8()
{
    int v0; // r10

    *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup);
    sub_80360C8();
    return 1;
}


// 0x803851c
// () -> void
int ho_803851C()
{
    int v0; // r10
    int v1; // r5
    signed int v2; // r8
    void **v3; // r12
    unsigned __int8 *v4; // r7
    char v5; // zf
    signed int v6; // r0
    int result; // r0

    v1 = *(v0 + oToolkit_S2011c50_Ptr);
    *(v1 + 18) = 0;
    v2 = 28;
    do
    {
        v3 = &jt_big_803749C;
        v4 = *(v1 + v2);
        do
            (v3[*v4])();
        while ( !v5 );
        *(v1 + 18) = &byte_0[*(v1 + 18) + 1];
        v6 = v2;
        if ( *(v1 + v2) != 1 )
            *(v1 + v2) = v4;
        v2 += 4;
    }
    while ( v6 + 4 <= 40 );
    if ( *(v1 + 60) )
        *(v1 + 19) = sub_8036FBC();
    result = sub_8036F84();
    if ( !v5 )
    {
        result = *(v1 + 56);
        if ( result )
        {
            *(v1 + 28) = result;
            *(v1 + 56) = 0;
            sub_80385D0(0);
            sub_80385D0(1);
            sub_80385D0(2);
            sub_80385D0(3);
            sub_80385D0(4);
            sub_80385D0(5);
            sub_80385D0(6);
            result = sub_80385D0(7);
        }
    }
    return result;
}


// 0x80385c0
int __fastcall sub_80385C0(char a1)
{
    int v1; // r5
    int result; // r0

    result = *(v1 + 44) | (1 << a1);
    *(v1 + 44) = result;
    return result;
}


// 0x80385d0
int __fastcall sub_80385D0(char a1)
{
    int v1; // r5
    int result; // r0

    result = *(v1 + 44) & ~(1 << a1);
    *(v1 + 44) = result;
    return result;
}


// 0x80385e0
int sub_80385E0()
{
    int v0; // r5

    return *(v0 + 44);
}


// 0x80385f0
signed int __fastcall sub_80385F0(int a1, int a2, int a3, int a4)
{
    _BYTE **v4; // r10
    signed int result; // r0

    ZeroFillByWord(&byte_2011E40, 0x10u, a3, a4);
    result = 12;
    **v4 = 12;
    return result;
}


// 0x8038606
int sub_8038606()
{
    return (*(&off_8038620 + byte_2011E40))();
}


// 0x8038630
signed int __fastcall __noreturn sub_8038630(int a1)
{
    _BYTE *v1; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r1
    int v11; // r2
    signed int result; // r0

    chatbox_8040818();
    sub_80015FC(13);
    sRender_08_setRenderingState(4928);
    renderInfo_8001788();
    v2 = renderInfo_80017A0();
    sub_8005F40(v2, v3, v4, v5);
    sub_8005F6C();
    v6 = sub_80027C4();
    initGfx_80386CC(v6, v7, v8, v9);
    sub_80005F2(99, v10, v11);
    engine_setScreeneffect(8, 8);
    result = 4;
    *v1 = 4;
    return result;
}


// 0x8038674
int sub_8038674()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        *(v0 + 4) = &loc_B4;
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x803868c
int sub_803868C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    v2 = *(v0 + 4);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    if ( (result < 0) ^ v3 )
    {
        result = *(*(v1 + oToolkit_JoypadPtr) + 2);
        if ( result & 0xB )
        {
            engine_setScreeneffect(12, 8);
            result = 12;
            *v0 = 12;
        }
    }
    else
    {
        *(v0 + 4) = result;
    }
    return result;
}


// 0x80386b2
int sub_80386B2()
{
    int result; // r0
    char v1; // zf
    int v2; // r0

    result = IsPaletteFadeActive();
    if ( !v1 )
    {
        v2 = sRender_08_setRenderingState(&byte_40);
        result = (loc_803D1AC)(v2);
    }
    return result;
}


// 0x80386cc
void __fastcall initGfx_80386CC(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_800183C(v4, v5, v6, v7);
    decompAndCopyData(&initRefs_80386E4);
}


// 0x8038a9c
_BYTE *sub_8038A9C()
{
    _DWORD *v0; // r10
    int v1; // r3
    char v2; // r1
    _BYTE *result; // r0
    int v4; // r0

    sub_8000EE4();
    if ( (v2 & 0xF6) == 246 )
    {
        ZeroFillByWord(&byte_2011E40, 0x10u, 246, v1);
        result = *v0;
        **v0 = 12;
    }
    else
    {
        v4 = sRender_08_setRenderingState(&byte_40);
        result = (loc_803D1AC)(v4);
    }
    return result;
}


// 0x8038ad0
int cb_8038AD0()
{
    (*(&off_8038AF4 + byte_2011E40))();
    sub_8046818();
    sub_8046854();
    sub_80465BC();
    return sub_80465F8();
}


// 0x8038b04
void __fastcall __noreturn sub_8038B04(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3
    int v12; // r0
    int v13; // r1
    int v14; // r2
    int v15; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_80017E0(v4, v5, v6, v7);
    sub_800183C(v8, v9, v10, v11);
    sub_80015FC(20);
    sRender_08_setRenderingState(8000);
    renderInfo_8001788();
    v12 = renderInfo_80017A0();
    sub_8005F40(v12, v13, v14, v15);
    sub_8005F6C();
    sub_80027C4();
    decomp_initGfx_8038F30();
    sub_8038F74();
}


// 0x8038b64
int sub_8038B64()
{
    int v0; // r5

    return (*(&off_8038B78 + *(v0 + 1)))();
}


// 0x8038b80
int sub_8038B80()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        *(v0 + 1) = 4;
        *(v0 + 2) = 0;
        *(v0 + 4) = 120;
        result = 0;
        *(v0 + 6) = 0;
    }
    return result;
}


// 0x8038b9c
int sub_8038B9C()
{
    int v0; // r5

    return (*(&off_8038BB0 + *(v0 + 2)))();
}


// 0x8038bec
void *sub_8038BEC()
{
    int v0; // r5
    void *result; // r0

    result = (*(v0 + 4) - 1);
    *(v0 + 4) = result;
    if ( !result )
    {
        *(v0 + 2) = 4;
        *(v0 + 4) = 10;
        sub_8038FB4(*(v0 + 6));
        result = &loc_700;
        *(v0 + 8) = &loc_700;
    }
    return result;
}


// 0x8038c10
int sub_8038C10()
{
    int v0; // r5
    char *v1; // r0
    int v2; // r4
    int v3; // r0
    int v4; // r1
    int v5; // r0
    int v6; // r1
    int v7; // r0
    int v8; // r1
    int v9; // r1
    int v10; // r2
    signed int v11; // r0
    int result; // r0

    v1 = &byte_80[*(v0 + 8)];
    *(v0 + 8) = v1;
    v2 = v1;
    sub_811D66C(v1, 0);
    sub_811D66C(v2, 1);
    v3 = sub_811D66C(v2, 2);
    v5 = sub_811D634(v3, v4, 0);
    v7 = sub_811D634(v5, v6, 1);
    sub_811D634(v7, v8, 2);
    v11 = *(v0 + 4);
    if ( v11 == 9 )
    {
        sound_play(140, v9, v10);
        v11 = 9;
    }
    result = v11 - 1;
    *(v0 + 4) = result;
    if ( !result )
    {
        *(v0 + 2) = 8;
        sub_8039074();
        sub_8001B1C(byte_803875C);
        result = 4;
        *(v0 + 4) = 4;
    }
    return result;
}


// 0x8038c78
int sub_8038C78()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r4
    int v4; // r0
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r0
    int v9; // r1
    int v10; // r1
    int v11; // r2
    int result; // r0

    v1 = *(v0 + 8);
    if ( v1 <= 0 )
    {
        sub_811DBF0(0);
        sub_811DBF0(1);
        sub_811DBF0(2);
        v2 = 0;
    }
    else
    {
        v2 = v1 - &loc_C0;
        *(v0 + 8) = v2;
    }
    v3 = v2;
    sub_811D69C(v2, 0);
    sub_811D69C(v3, 1);
    v4 = sub_811D69C(v3, 2);
    v6 = sub_811D634(v4, v5, 0);
    v8 = sub_811D634(v6, v7, 1);
    sub_811D634(v8, v9, 2);
    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( !result )
    {
        *(v0 + 2) = 12;
        sound_play(119, v10, v11);
        sub_8039084(*(v0 + 6));
        result = 149;
        *(v0 + 4) = 149;
    }
    return result;
}


// 0x8038cf4
int sub_8038CF4()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r4
    int v4; // r0
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r0
    int v9; // r1
    int result; // r0
    int v11; // r0

    v1 = *(v0 + 8);
    if ( v1 <= 0 )
    {
        sub_811DBF0(0);
        sub_811DBF0(1);
        sub_811DBF0(2);
        v2 = 0;
    }
    else
    {
        v2 = v1 - &loc_C0;
        *(v0 + 8) = v2;
    }
    v3 = v2;
    sub_811D69C(v2, 0);
    sub_811D69C(v3, 1);
    v4 = sub_811D69C(v3, 2);
    v6 = sub_811D634(v4, v5, 0);
    v8 = sub_811D634(v6, v7, 1);
    sub_811D634(v8, v9, 2);
    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( !result )
    {
        v11 = *(v0 + 6) + 1;
        if ( v11 < 5 )
        {
            *(v0 + 6) = v11;
            *(v0 + 2) = 0;
            result = 10;
            *(v0 + 4) = 10;
        }
        else
        {
            sub_8046664();
            *(v0 + 2) = 16;
            result = 20;
            *(v0 + 4) = 20;
        }
    }
    return result;
}


// 0x8038d7c
void sub_8038D7C()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 4) - 1;
    *(v0 + 4) = v1;
    if ( !v1 )
    {
        *(v0 + 2) = 20;
        *(v0 + 4) = 46;
        sub_8039024();
    }
}


// 0x8038d94
int sub_8038D94()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( !result )
    {
        *(v0 + 4) = &loc_98;
        *(v0 + 2) = 24;
        result = sub_80468BA();
    }
    return result;
}


// 0x8038db0
int sub_8038DB0()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( !result )
    {
        *(v0 + 4) = 15;
        result = 28;
        *(v0 + 2) = 28;
    }
    return result;
}


// 0x8038de0
int __fastcall sub_8038DE0(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0

    result = *(v3 + 4) - 1;
    *(v3 + 4) = result;
    if ( !result )
    {
        sound_play(byte_100, a2, a3);
        sub_8001B1C(byte_803891C);
        sub_8001B1C(byte_80389AC);
        *(v3 + 4) = 46;
        result = 36;
        *(v3 + 2) = 36;
    }
    return result;
}


// 0x8038e14
int sub_8038E14()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( !result )
    {
        sub_8001B1C(byte_80387FC);
        sub_8001B1C(byte_803888C);
        sub_8046664();
        sub_80390D8();
        *(v0 + 2) = 40;
        result = 214;
        *(v0 + 4) = 214;
    }
    return result;
}


// 0x8038e48
int sub_8038E48()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( !result )
    {
        *(v0 + 4) = 4;
        result = 44;
        *(v0 + 2) = 44;
    }
    return result;
}


// 0x8038e5c
int sub_8038E5C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( !result )
    {
        sub_80390F8();
        *(v0 + 4) = &dword_2C + 1;
        result = 48;
        *(v0 + 2) = 48;
    }
    return result;
}


// 0x8038e78
int sub_8038E78()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( !result )
        sub_8039180();
    return result;
}


// 0x8038eac
int sub_8038EAC()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 4) - 1;
    *(v0 + 4) = v1;
    if ( !v1 )
        sub_8038F74();
    return sub_8039198();
}


// 0x8038edc
void sub_8038EDC()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0

    v2 = *(v0 + 4);
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if ( !((v4 < 0) ^ v3) )
        *(v0 + 4) = v4;
    if ( *(*(v1 + oToolkit_JoypadPtr) + 2) & 0x3FF )
    {
        engine_setScreeneffect(12, 8);
        *v0 = 8;
    }
    sub_8038F9C();
}


// 0x8038f0c
int sub_8038F0C()
{
    int result; // r0
    char v1; // zf

    sub_8039198();
    result = IsPaletteFadeActive();
    if ( !v1 )
    {
        (loc_803D1AC)(result);
        clear_e200AD04();
        sub_803E900();
        result = sRender_08_setRenderingState(&byte_40);
    }
    return result;
}


// 0x8038f30
// () -> void
void decomp_initGfx_8038F30()
{
    decompAndCopyData(&initRefs_8038F40);
}


// 0x8038f74
int __noreturn sub_8038F74()
{
    return renderTextGfx_8045F8C(dialogScript_873B9E0, 40, decomp_2013A00, 100683776);
}


// 0x8038f9c
int __noreturn sub_8038F9C()
{
    return copyTiles();
}


// 0x8038fb4
char *__fastcall sub_8038FB4(int a1)
{
    unsigned int v1; // r7
    int v2; // r4
    unsigned __int8 v3; // vf

    v1 = 8 * a1;
    v2 = 1;
    do
    {
        sub_8046670(58, v2, *&byte_8038FE4[4 * v2 + v1]);
        v3 = __OFSUB__(v2--, 1);
    }
    while ( !((v2 < 0) ^ v3) );
    return sub_8046670(58, 2, *&byte_8039010[v1 >> 1]);
}


// 0x8039024
void sub_8039024()
{
    int v0; // r4
    unsigned __int8 v1; // vf

    sub_8046670(58, 0, 1543);
    v0 = 4;
    do
    {
        sub_8046670(58, v0, *&byte_8039058[4 * (v0 - 1)]);
        v1 = __OFSUB__(v0--, 1);
    }
    while ( !(((v0 < 0) ^ v1) | (v0 == 0)) );
    SWI_LZ77UnCompReadNormalWrite8bit(comp_82E8470, &unk_201AA00);
}


// 0x8039074
char *sub_8039074()
{
    return sub_8046670(58, 3, 2);
}


// 0x8039084
char *__fastcall sub_8039084(int a1)
{
    int v1; // r4

    v1 = a1;
    sub_8046670(58, 4, *&byte_80390AC[4 * a1]);
    return sub_8046670(58, 5, *&byte_80390C4[4 * v1]);
}


// 0x80390d8
char *sub_80390D8()
{
    sub_8046670(58, 0, 8);
    return sub_8046670(58, 1, &byte_108);
}


// 0x80390f8
char *sub_80390F8()
{
    signed int v0; // r4
    char *result; // r0
    unsigned __int8 v2; // vf

    v0 = 4;
    do
    {
        sub_8046670(58, 2 * v0 + 3, *&byte_803913C[4 * v0]);
        result = sub_8046670(58, 2 * v0 + 2, *&byte_8039154[4 * v0]);
        if ( v0 == 1 )
            result = sub_8046670(58, 12, 1293);
        v2 = __OFSUB__(v0--, 1);
    }
    while ( !((v0 < 0) ^ v2) );
    return result;
}


// 0x803916c
char *sub_803916C()
{
    return sub_8046670(58, 6, 11);
}


// 0x8039180
int __noreturn sub_8039180()
{
    return copyTiles();
}


// 0x8039198
int sub_8039198()
{
    int v0; // r10
    int v1; // r3
    int result; // r0

    v1 = *(v0 + oToolkit_RenderInfoPtr);
    result = *(v1 + 20) - 9;
    *(v1 + 20) = result;
    return result;
}


// 0x8039570
signed int __fastcall sub_8039570(int a1, int a2, int a3, int a4)
{
    _BYTE **v4; // r10
    signed int result; // r0

    ZeroFillByWord(&byte_200A290, &loc_1B0, a3, a4);
    **v4 = 24;
    byte_200A2A4 = 0;
    byte_200A2A7 = 0;
    word_200A2B4 = 8;
    result = 11;
    word_200A2B6 = 11;
    return result;
}


// 0x80395a4
signed int cb_80395A4()
{
    signed int result; // r0
    char v1; // zf

    (*(&off_80395C8 + byte_200A290))();
    result = sub_800A7D0();
    if ( v1 )
        result = sub_803C59C(218, 2);
    return result;
}


// 0x80395e4
int __noreturn sub_80395E4()
{
    char *v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int v9; // r1
    int v10; // r2
    char v11; // r6
    int result; // r0
    char v13; // zf

    sub_803FA42();
    chatbox_8040818();
    sRender_08_setRenderingState(&byte_40);
    renderInfo_8001788();
    renderInfo_80017A0();
    v1 = sub_80015FC(17);
    v5 = sub_8005F40(v1, v2, v3, v4);
    copyData_803B216(v5, v6, v7, v8);
    sub_803BEC0();
    sub_803BA28();
    sub_80005F2(34, v9, v10);
    v11 = 8;
    result = sub_803C3E0();
    if ( v13 )
        v11 = 16;
    *v0 = v11;
    v0[1] = 0;
    return result;
}


// 0x8039630
int sub_8039630()
{
    int result; // r0
    int v1; // r1
    int v2; // r2
    int v3; // r3
    char v4; // zf
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int v9; // r0
    int v10; // r1
    int v11; // r2
    int v12; // r3

    result = IsPaletteFadeActive();
    if ( !v4 )
    {
        zeroFillVRAM(result, v1, v2, v3);
        sub_800183C(v5, v6, v7, v8);
        copyMemory_8001850();
        v9 = chatbox_8040818();
        sub_802F530(v9, v10, v11, v12);
        result = sRender_08_setRenderingState(&byte_40);
    }
    return result;
}


// 0x8039658
int sub_8039658()
{
    int v0; // r5

    (*(&off_8039674 + *(v0 + 1)))();
    sub_80465BC();
    return sub_80465F8();
}


// 0x8039694
signed int __fastcall __noreturn sub_8039694(int a1, int a2, int a3, int a4)
{
    _BYTE *v4; // r5
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
    signed int result; // r0

    v5 = sub_8005F40(a1, a2, a3, a4);
    sub_800183C(v5, v6, v7, v8);
    sRender_08_setRenderingState(8000);
    renderInfo_8001788();
    v9 = renderInfo_80017A0();
    cleareMemory_802FF2C(v9, v10, v11, v12);
    sub_80015FC(17);
    v13 = engine_setScreeneffect(8, 16);
    copyData_803B216(v13, v14, v15, v16);
    sub_803C2EC();
    sub_8046664();
    chatbox_8040818();
    v4[5] = 3;
    if ( v4[20] )
    {
        sub_803993A(v4[20]);
        sub_803BB2C(v4[20]);
        result = 4;
        v4[1] = 4;
    }
    else if ( v4[23] )
    {
        sub_803993A(v4[23]);
        sub_803BB2C(v4[4]);
        result = 8;
        v4[1] = 8;
    }
    else
    {
        v4[1] = 28;
        result = 0;
        v4[2] = 0;
    }
    return result;
}


// 0x803970c
void __noreturn sub_803970C()
{
    int v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        chatbox_8045F3C(8);
        if ( !v1 )
        {
            *(v0 + 20) = 0;
            sub_803BB2C(0);
            *(v0 + 1) = 8;
        }
    }
    sub_803B880();
}


// 0x8039734
void __noreturn sub_8039734()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    char v4; // zf
    signed int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r1
    int v9; // r2
    int v10; // r0

    v1 = IsPaletteFadeActive();
    if ( !v4 )
    {
        v5 = sub_803995C(v1, v2, v3);
        if ( v5 == 1 )
        {
            sound_play(104, v6, v7);
            engine_setScreeneffect(12, 16);
            *(v0 + 1) = 24;
        }
        else if ( v5 == 2 || v5 == 3 )
        {
            sound_play(103, v6, v7);
            v10 = *(v0 + 4);
            if ( v10 == 1 )
            {
                sound_play(103, v8, v9);
                engine_setScreeneffect(12, 16);
                *(v0 + 1) = 16;
            }
            else if ( v10 == 2 )
            {
                sound_play(103, v8, v9);
                engine_setScreeneffect(12, 16);
                *(v0 + 1) = 20;
            }
            else
            {
                engine_setScreeneffect(12, 16);
                *(v0 + 1) = 12;
            }
        }
    }
    sub_80397BC();
}


// 0x80397bc
void __noreturn sub_80397BC()
{
    sub_803B880();
}


// 0x80397dc
void __noreturn sub_80397DC()
{
    _BYTE *v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char v5; // zf

    v1 = IsPaletteFadeActive();
    if ( !v5 )
    {
        cleareMemory_802FF2C(v1, v2, v3, v4);
        *v0 = 12;
        v0[1] = 0;
    }
    sub_80397BC();
}


// 0x80397f6
void __noreturn sub_80397F6()
{
    _BYTE *v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char v5; // zf

    v1 = IsPaletteFadeActive();
    if ( !v5 )
    {
        cleareMemory_802FF2C(v1, v2, v3, v4);
        v0[8] = 0;
        v0[10] = 0;
        *v0 = 16;
        v0[1] = 0;
    }
    sub_80397BC();
}


// 0x8039816
void __noreturn sub_8039816()
{
    _BYTE *v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char v5; // zf

    v1 = IsPaletteFadeActive();
    if ( !v5 )
    {
        cleareMemory_802FF2C(v1, v2, v3, v4);
        *v0 = 20;
        v0[1] = 0;
    }
    sub_80397BC();
}


// 0x8039830
void __noreturn sub_8039830()
{
    _BYTE *v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char v5; // zf

    v1 = IsPaletteFadeActive();
    if ( !v5 )
    {
        cleareMemory_802FF2C(v1, v2, v3, v4);
        *v0 = 4;
    }
    sub_80397BC();
}


// 0x8039846
int sub_8039846()
{
    int v0; // r5

    return (*(&off_8039858 + *(v0 + 2)))();
}


// 0x8039864
signed int sub_8039864()
{
    int v0; // r5
    signed int result; // r0

    sRender_08_setRenderingState(4672);
    *(v0 + 23) = 1;
    sub_803BB7C(0);
    *(v0 + 44) = byte_80393A4;
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x8039888
int sub_8039888()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    char v3; // zf
    int v4; // r1
    int v5; // r2

    if ( *(*(v1 + oToolkit_JoypadPtr) + 2) & 4 || (result = sub_80398DC(), v3) )
    {
        engine_setScreeneffect(4, 255);
        sound_play(215, v4, v5);
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x80398b0
int sub_80398B0()
{
    _BYTE *v0; // r5
    int v1; // r0
    int result; // r0

    sRender_08_setRenderingState(8000);
    sub_803BB2C(v0[4]);
    v1 = sub_8046664();
    sub_803993A(v1);
    engine_setScreeneffect(0, 16);
    v0[1] = 8;
    result = 0;
    v0[2] = 0;
    return result;
}


// 0x80398dc
signed int sub_80398DC()
{
    int v0; // r5
    signed int v1; // r4
    int *v2; // r7
    int v3; // r1
    int v4; // r2
    char v5; // zf
    int v6; // r0

    v1 = 1;
    v2 = *(v0 + 44);
    sub_803BB80();
    if ( !v5 )
    {
        while ( 1 )
        {
            while ( 1 )
            {
                v6 = *v2;
                if ( *v2 )
                    break;
                sub_8046670(v2[1], v2[2], v2[3]);
                v2 += 4;
            }
            if ( v6 == 1 )
            {
                sub_803BB7C(v2[1]);
                v2 += 2;
                goto LABEL_13;
            }
            if ( v6 == 2 )
                break;
            if ( v6 == 3 )
            {
                engine_setScreeneffect(v2[1], v2[2]);
                v2 += 3;
            }
            else
            {
                if ( v6 != 4 )
                    break;
                sound_play(v2[1], v3, v4);
                v2 += 2;
            }
        }
        v1 = 0;
    }
LABEL_13:
    *(v0 + 44) = v2;
    return v1;
}


// 0x803993a
int __fastcall sub_803993A(int a1)
{
    int *v1; // r7
    int result; // r0

    v1 = &dword_80394CC;
    sub_8046664();
    while ( 1 )
    {
        result = *v1;
        if ( *v1 == 2 )
            break;
        sub_8046670(v1[1], v1[2], v1[3]);
        v1 += 4;
    }
    return result;
}


// 0x803995c
signed int __fastcall sub_803995C(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int v4; // r10
    __int16 v5; // r7
    int v6; // r4
    __int16 v7; // r7
    int v8; // r0
    unsigned __int8 v9; // vf
    int v10; // r0

    v3[6] = v3[4];
    v5 = *(*(v4 + oToolkit_JoypadPtr) + 2);
    v6 = 0;
    if ( v5 & 2 )
        return 1;
    if ( v5 & 1 )
        return 2;
    if ( v5 & 8 )
        return 3;
    v7 = *(*(v4 + oToolkit_JoypadPtr) + 4);
    if ( v7 & 0x40 )
    {
        sound_play(102, a2, a3);
        v8 = v3[4];
        v9 = __OFSUB__(v8--, 1);
        v3[4] = v8;
        if ( (v8 < 0) ^ v9 )
            v3[4] = v3[5] - 1;
    }
    else if ( v7 & 0x80 )
    {
        sound_play(102, a2, a3);
        v10 = v3[4] + 1;
        v3[4] = v10;
        if ( v10 >= v3[5] )
            v3[4] = 0;
    }
    return v6;
}


// 0x80399ce
int sub_80399CE()
{
    int v0; // r5

    (*(&off_80399E8 + *(v0 + 1)))();
    sub_803CB78();
    return sub_803C530();
}


// 0x8039a58
signed int sub_8039A58()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    signed int result; // r0

    sRender_08_setRenderingState(8000);
    renderInfo_8001788();
    renderInfo_80017A0();
    v1 = sub_80015FC(18);
    copyData_803B2E4(v1, v2, v3, v4);
    chatbox_8040818();
    sub_803BE30(2);
    sub_8046664();
    sub_80465A0(byte_8039390);
    sub_803C40C();
    sub_803C1A8(v0 + 240, v0 + 48, v0 + 256, v0 + 144);
    sub_803C320();
    sub_803C26A();
    result = 4;
    *(v0 + 1) = 4;
    return result;
}


// 0x8039ab8
int sub_8039AB8()
{
    int v0; // r5

    if ( sub_81465BC() )
    {
        *(v0 + 1) = 8;
    }
    else
    {
        sub_803C320();
        engine_setScreeneffect(8, 16);
        sub_803BB2C(19);
        *(v0 + 1) = 16;
    }
    return sub_803A1B0();
}


// 0x8039ae4
int sub_8039AE4()
{
    int v0; // r5
    char v1; // zf

    sub_813D648();
    if ( v1 )
    {
        *(v0 + 1) = 12;
    }
    else
    {
        engine_setScreeneffect(8, 16);
        sub_803BB2C(19);
        *(v0 + 1) = 16;
    }
    return sub_803A1B0();
}


// 0x8039b0a
int sub_8039B0A()
{
    int v0; // r5
    int v1; // r0

    sub_8146588();
    sub_814695C(v0 + 240);
    v1 = sub_803C418();
    sub_81469BC(v0 + 256, v1);
    if ( sub_81465BC() )
    {
        engine_setScreeneffect(8, 16);
        sub_803BB2C(10);
        *(v0 + 1) = 24;
    }
    else
    {
        sub_803C320();
        engine_setScreeneffect(8, 16);
        sub_803BB2C(19);
        *(v0 + 1) = 16;
    }
    return sub_803A1B0();
}


// 0x8039b60
int sub_8039B60()
{
    int v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        chatbox_8045F3C(8);
        if ( !v1 )
        {
            engine_setScreeneffect(12, 16);
            *(v0 + 1) = 20;
        }
    }
    return sub_803A1B0();
}


// 0x8039b82
int sub_8039B82()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        *v0 = 8;
        v0[1] = 0;
    }
    return sub_803A1B0();
}


// 0x8039b98
int sub_8039B98()
{
    int v0; // r5
    int v1; // r0
    char v2; // zf

    v1 = IsPaletteFadeActive();
    if ( !v2 )
    {
        sub_803A524(v1);
        if ( v2 )
        {
            sub_803C320();
            *(v0 + 1) = 28;
            sub_803BB7C(30);
            sub_803BB90(0);
        }
    }
    return sub_803A1B0();
}


// 0x8039bc0
int __fastcall sub_8039BC0(int a1)
{
    int v1; // r5
    int v2; // r10
    char v3; // zf

    sub_803A558(a1);
    if ( v3 )
    {
        sub_803BB80();
        if ( !v3 )
        {
            if ( *(*(v2 + oToolkit_JoypadPtr) + 2) & 2 )
            {
                sub_803C28A(104);
                *(v1 + 1) = 104;
            }
            else
            {
                chatbox_8045F3C(8);
                if ( !v3 )
                {
                    sub_803BB94();
                    if ( !v3 )
                    {
                        sub_803C558();
                        sub_803BB90(30);
                        sub_813D638();
                        if ( !v3 )
                        {
                            sub_803BB2C(11);
                            *(v1 + 1) = 32;
                        }
                    }
                }
            }
        }
    }
    return sub_803A1B0();
}


// 0x8039c14
int sub_8039C14()
{
    _BYTE *v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
    {
        v0[14] = 0;
        v0[11] = 0;
        v0[12] = 4;
        v0[1] = 36;
    }
    return sub_803A1B0();
}


// 0x8039c32
int sub_8039C32()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    char v4; // zf
    signed int v5; // r0

    v1 = sub_803CB00(1);
    sub_803A558(v1);
    if ( v4 )
    {
        sub_803CB18();
        if ( v4 )
        {
            sub_813D638();
            if ( v4 )
            {
                sub_803C320();
                *(v0 + 1) = 28;
                sub_803BB7C(30);
                sub_803BB90(0);
                sub_803BB2C(14);
            }
            else
            {
                v5 = sub_803A5F4(102, v2, v3);
                if ( !v4 )
                    (dword_8039C8C[v5])();
            }
        }
    }
    sub_803A104();
    return sub_803CB0C(1);
}


// 0x8039c9c
int sub_8039C9C()
{
    int v0; // r5
    char v1; // zf

    sub_803CB18();
    if ( v1 )
    {
        sub_803C28A(104);
        *(v0 + 1) = 96;
    }
    return 0;
}


// 0x8039cb4
signed int __fastcall sub_8039CB4(int a1)
{
    _BYTE *v1; // r5
    int v2; // r2
    int v3; // r1
    int v4; // r0
    __int64 v5; // r0
    __int64 v6; // ST00_8
    int v7; // r1
    int v8; // r2
    signed int result; // r0

    v2 = sub_813D638();
    v3 = v1[11];
    v4 = v1[14] + v3;
    if ( v4 >= v2 )
    {
        sound_play(105, v3, v2);
        result = 0;
    }
    else
    {
        LODWORD(v5) = sub_803C440(v4);
        v6 = v5;
        sub_803C150(v5, __PAIR__(&byte_202AF00, HIDWORD(v5)));
        sub_803C2AA(&byte_202AB00, &byte_202AF00, v6, SHIDWORD(v6));
        sub_803BB2C(12);
        v1[1] = 40;
        sound_play(103, v7, v8);
        result = 1;
    }
    return result;
}


// 0x8039d08
int __fastcall sub_8039D08(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf
    int v3; // r2
    int v4; // r1
    int v5; // r0
    char v6; // ST00_1

    sub_803A558(a1);
    if ( v2 )
    {
        chatbox_8045F3C(8);
        if ( !v2 )
        {
            if ( chatbox_8045F4C() || (v3 = sub_813D638(), v4 = v1[11], v5 = v1[14] + v4, v5 >= v3) )
            {
                sub_803BB2C(11);
                v1[1] = 48;
            }
            else
            {
                v6 = v1[14] + v4;
                sub_813D5C8(v5);
                v1[22] = v6;
                sub_803CB00(4);
                sub_803CB00(256);
                sub_803BB2C(13);
                v1[1] = 44;
            }
        }
    }
    return sub_803A104();
}


// 0x8039d66
int __fastcall sub_8039D66(int a1)
{
    int v1; // r5
    char v2; // zf

    sub_803A558(a1);
    if ( v2 )
    {
        sub_803CB18();
        if ( v2 )
        {
            sub_803CB18();
            if ( v2 )
            {
                sub_803A252();
                sub_803BB2C(11);
                *(v1 + 1) = 52;
            }
            else
            {
                *(v1 + 1) = 72;
            }
        }
    }
    return sub_803A104();
}


// 0x8039d9a
int __fastcall sub_8039D9A(int a1)
{
    int v1; // r5
    char v2; // zf

    sub_803A558(a1);
    if ( v2 )
    {
        chatbox_8045F3C(128);
        if ( v2 )
            *(v1 + 1) = 36;
    }
    return sub_803A104();
}


// 0x8039db4
int __fastcall sub_8039DB4(int a1)
{
    int v1; // r5
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r1
    int v7; // r2

    sub_803A558(a1);
    if ( !v2 )
    {
        if ( !sub_814656C() )
        {
            sub_803A25C();
            sub_803BB2C(15);
            *(v1 + 1) = 56;
        }
        return sub_803A104();
    }
    sub_803CB18();
    if ( !v2 )
    {
LABEL_8:
        *(v1 + 1) = 72;
        return sub_803A104();
    }
    sub_803C330();
    if ( !v2 )
    {
        sub_803C2A0();
        sub_803CB00(32);
        goto LABEL_8;
    }
    sub_803CB18();
    if ( !v2 )
    {
        sub_803CB0C(256);
        sub_8146CFC();
        sub_802D070(0);
        sub_8147B24();
        v3 = engine_setScreeneffect(44, 16);
        musicGameState_8000784(v3, v4, v5);
        sound_play(120, v6, v7);
        *(v1 + 1) = 60;
    }
    return sub_803A104();
}


// 0x8039e2c
int __fastcall sub_8039E2C(int a1)
{
    int v1; // r5
    char v2; // zf
    int v3; // r0

    sub_803A58C(a1);
    if ( !v2 )
    {
        chatbox_8045F3C(8);
        if ( !v2 )
        {
            sub_8146588();
            sub_814695C(v1 + 240);
            v3 = sub_803C418();
            sub_81469BC(v1 + 256, v3);
            if ( sub_81465BC() )
            {
                sub_803BB2C(10);
                *(v1 + 1) = 24;
            }
            else
            {
                sub_803C320();
                sub_803BB2C(19);
                *(v1 + 1) = 16;
            }
        }
    }
    return sub_803A104();
}


// 0x8039e80
int __fastcall sub_8039E80(int a1)
{
    char v1; // zf
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r0
    char *v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3

    sub_803C620();
    IsPaletteFadeActive();
    if ( !v1 )
    {
        chatbox_8040818();
        copyMemory_8001850();
        sub_8005F40(v2, v3, v4, v5);
        sub_8005F6C();
        v6 = sub_80027C4();
        sub_8006C22(v6);
        v7 = getBattleSettingsFromList0(0);
        sub_80071D4(v7, v8, v9, v10);
    }
    return sub_803A104();
}


// 0x8039eba
int sub_8039EBA()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // r1
    char v3; // r2
    char v4; // zf

    result = sub_8007800();
    if ( v4 )
    {
        v0[20] = v2;
        v0[21] = v3;
        result = 68;
        v0[1] = 68;
    }
    return result;
}


// 0x8039ecc
int sub_8039ECC()
{
    int v0; // r5

    (dword_8039EE4[*(v0 + 20)])();
    return sub_803F9E4();
}


// 0x8039f10
int sub_8039F10()
{
    int v0; // r5

    sub_803C3B6(1);
    return (loc_8039578)(*(v0 + 21) + 80);
}


// 0x8039f24
int sub_8039F24()
{
    int v0; // r5

    sub_803C3B6(0);
    return (loc_8039578)(*(v0 + 21) + 82);
}


// 0x8039f38
int sub_8039F38()
{
    sub_803C3B6(0);
    return (loc_8039578)(84);
}


// 0x8039f48
int sub_8039F48()
{
    sub_803C3B6(0);
    return (loc_8039578)(85);
}


// 0x8039f58
int sub_8039F58()
{
    return (loc_8039578)(86);
}


// 0x8039f62
int __fastcall sub_8039F62(int a1, int a2, int a3, int a4)
{
    return sub_803CCC0(a1, a2, a3, a4);
}


// 0x8039f6a
int __fastcall sub_8039F6A(int a1, int a2, int a3, int a4)
{
    return sub_803CB8C(sub_8039570, a2, a3, a4);
}


// 0x8039f78
int __fastcall sub_8039F78(int a1)
{
    int v1; // r5
    char v2; // zf
    int v3; // r1
    int v4; // r2
    int v5; // r4
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r1
    int v10; // r2
    signed int v12; // [sp-4h] [bp-18h]

    v12 = sub_803A58C(a1);
    sub_803CB18();
    if ( v2 )
    {
        if ( v12 )
        {
            sub_803A25C();
            sound_play(104, v3, v4);
            v5 = 15;
            sub_803CB18();
            if ( v2 )
            {
                v5 = 16;
                sub_803CB18();
                if ( v2 )
                    v5 = 17;
            }
            sub_803BB2C(v5);
            *(v1 + 1) = 76;
        }
    }
    else
    {
        sub_803CB0C(256);
        sub_8146CFC();
        sub_802D070(0);
        sub_8147B24();
        v6 = engine_setScreeneffect(44, 16);
        musicGameState_8000784(v6, v7, v8);
        sound_play(120, v9, v10);
        *(v1 + 1) = 60;
    }
    return sub_803A104();
}


// 0x8039fec
int sub_8039FEC()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0

    chatbox_8045F3C(8);
    if ( !v1 )
    {
        sub_8146588();
        sub_814695C(v0 + 240);
        v2 = sub_803C418();
        sub_81469BC(v0 + 256, v2);
        if ( sub_81465BC() )
        {
            sub_803BB2C(10);
            *(v0 + 1) = 24;
        }
        else
        {
            sub_803C320();
            sub_803BB2C(19);
            *(v0 + 1) = 16;
        }
    }
    return sub_803A104();
}


// 0x803a03a
int __fastcall sub_803A03A(int a1)
{
    int v1; // r5
    char v2; // zf

    sub_803A5DC(a1);
    if ( !v2 )
    {
        engine_setScreeneffect(12, 16);
        *(v1 + 1) = 84;
    }
    return sub_803A1B0();
}


// 0x803a054
int sub_803A054()
{
    char v0; // zf
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    IsPaletteFadeActive();
    if ( v0 )
        return sub_803A1B0();
    copyMemory_8001850();
    return sub_803CCC0(v1, v2, v3, v4);
}


// 0x803a06c
int __fastcall sub_803A06C(int a1)
{
    int v1; // r5
    char v2; // zf

    sub_803A58C(a1);
    if ( !v2 )
    {
        engine_setScreeneffect(12, 16);
        *(v1 + 1) = 92;
    }
    return sub_803A1B0();
}


// 0x803a086
int sub_803A086()
{
    char v0; // zf
    int v1; // r1
    int v2; // r2
    int v3; // r3

    IsPaletteFadeActive();
    if ( v0 )
        return sub_803A1B0();
    copyMemory_8001850();
    return sub_803CB8C(sub_8039570, v1, v2, v3);
}


// 0x803a0a4
int __fastcall sub_803A0A4(int a1)
{
    int v1; // r5
    char v2; // zf

    sub_803A58C(a1);
    if ( !v2 )
    {
        engine_setScreeneffect(12, 16);
        *(v1 + 1) = 100;
    }
    return sub_803A1B0();
}


// 0x803a0be
int sub_803A0BE()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        *v0 = 8;
        v0[1] = 0;
    }
    return sub_803A1B0();
}


// 0x803a0d4
int __fastcall sub_803A0D4(int a1)
{
    int v1; // r5
    char v2; // zf

    sub_803A58C(a1);
    if ( !v2 )
    {
        engine_setScreeneffect(12, 16);
        *(v1 + 1) = 108;
    }
    return sub_803A1B0();
}


// 0x803a0ee
int sub_803A0EE()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        *v0 = 8;
        v0[1] = 0;
    }
    return sub_803A1B0();
}


// 0x803a104
int sub_803A104()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    if ( !*(v0 + 24) || (result = sub_803A2A4(), !v2) )
        sub_803A214();
    return result;
}


// 0x803a186
void __noreturn sub_803A186()
{
    int v0; // r5
    int v1; // r4
    char v2; // zf

    v1 = 0;
    chatbox_8045F3C(128);
    if ( v2 )
        v1 = 1;
    sub_803BBA4(4, 32 * *(v0 + 14) + 33, v1);
}


// 0x803a1b0
int sub_803A1B0()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    if ( !*(v0 + 24) || (result = sub_803A2A4(), !v2) )
        sub_803A214();
    return result;
}


// 0x803a1d8
int sub_803A1D8()
{
    int v0; // r5
    int v1; // r6
    char *v2; // r0
    _BYTE *v3; // r1
    _BYTE *v4; // r7
    int v5; // r4
    int v6; // r4

    v2 = sub_803C458();
    v4 = v3;
    v5 = *(v0 + 36);
    sub_803B814(39, 32 * v1 + 35, 6, v2);
    v6 = *(v0 + 38);
    sub_803B814(123, 32 * v1 + 35, 7, v4);
    return sub_803A238(v1, 0);
}


// 0x803a214
void __noreturn sub_803A214()
{
    int v0; // r5
    int v1; // r4
    int v2; // r0

    v1 = *(v0 + 36);
    sub_803B814(67, 2, 10, (v0 + 240));
    v2 = sub_803C418();
    sub_803B9C0(26, 7, 4, v2);
}


// 0x803a238
int __fastcall sub_803A238(char a1, int a2)
{
    int result; // r0

    if ( a2 )
        result = sub_803C302(1 << a1);
    else
        result = sub_803C30C(1 << a1);
    return result;
}


// 0x803a252
int sub_803A252()
{
    int v0; // r5
    int result; // r0

    *(v0 + 24) = 1;
    result = 0;
    *(v0 + 2) = 0;
    return result;
}


// 0x803a25c
void sub_803A25C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7

    *(v0 + 24) = 0;
    sRender_08_setRenderingState(8000);
    sub_8001B6C(0);
    sub_8001B6C(1);
    sub_803B91C(4);
    sub_803B91C(5);
    v2 = *(v1 + oToolkit_RenderInfoPtr);
    *(v2 + 20) = 0;
    *(v2 + 24) = 0;
    CopyByEightWords(byte_87E672C, &unk_3001AE0, 0x20u);
}


// 0x803a2a4
int sub_803A2A4()
{
    int v0; // r5

    return (*(&off_803A2B8 + *(v0 + 2)))();
}


// 0x803a2cc
void __noreturn sub_803A2CC()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    _BYTE *v3; // r3

    chatbox_8045F3C(128);
    if ( v2 )
    {
        sRender_08_setRenderingState(32576);
        v3 = *(v1 + oToolkit_Unk200f3a0_Ptr);
        v3[1] = 0;
        v3[5] = 0;
        *v3 = -16;
        v3[4] = 97;
        v3[3] = 0;
        v3[7] = 64;
        v3[2] = -16;
        v3[6] = -95;
        v3[8] = 31;
        v3[9] = 31;
        v3[10] = 17;
        sub_8001B1C(byte_80392A8);
        *byte_3001960 = 10374;
        *(v0 + 2) = 4;
    }
    sub_803A186();
}


// 0x803a334
int __noreturn sub_803A334()
{
    _BYTE *v0; // r5
    int v1; // r10
    _BYTE *v2; // r3
    int v3; // r0

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    v2[5] += 48;
    v2[4] -= 48;
    v2[7] += 48;
    v3 = v2[6] - 48;
    v2[6] = v3;
    if ( v3 != 113 )
        sub_803A186();
    sub_803B91C(6);
    sub_80018D0(0, 0, 2, 0);
    sub_80018D0(0, 0, 3, 0);
    sub_803A422();
    v0[25] = 0;
    v0[27] = 0;
    v0[26] = 15;
    v0[2] = 8;
    return 0;
}


// 0x803a39c
int sub_803A39C()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r1
    int v4; // r2

    v1 = *(v0 + 26);
    v2 = __OFSUB__(v1--, 1);
    *(v0 + 26) = v1;
    if ( ((v1 < 0) ^ v2) | (v1 == 0) )
    {
        sub_8001B1C(byte_80392D8);
        sound_play(183, v3, v4);
        *(v0 + 2) = 12;
    }
    sub_803A422();
    return 0;
}


// 0x803a3c4
int sub_803A3C4()
{
    int v0; // r5
    int v1; // r10
    _BYTE *v2; // r3
    int v3; // r0

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    v2[5] -= 8;
    v2[4] += 8;
    v2[7] -= 8;
    v3 = v2[6] + 8;
    v2[6] = v3;
    if ( v3 == 145 )
    {
        sRender_08_setRenderingState(8000);
        sub_8001B1C(&off_8039308);
        sub_8001B1C(byte_8039350);
        *(v0 + 2) = 16;
    }
    sub_803A422();
    return 0;
}


// 0x803a410
void __noreturn sub_803A410()
{
    sub_803A422();
    sub_803A470();
}


// 0x803a422
int sub_803A422()
{
    int v0; // r5
    int v1; // r7
    signed int v2; // r7
    int result; // r0

    --*(v0 + 25);
    v1 = 0;
    do
    {
        sub_80018E0(*(v0 + 25), v1 + 4, 1, &word_202A204[32 * v1]);
        ++v1;
    }
    while ( v1 < 4 );
    v2 = 0;
    do
    {
        result = sub_80018E0(32 - *(v0 + 25), v2 + 12, 1, &word_202A604[32 * v2]);
        ++v2;
    }
    while ( v2 < 4 );
    return result;
}


// 0x803a470
int __noreturn sub_803A470()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    int v3; // r0

    v2 = *(v1 + oToolkit_RenderInfoPtr);
    v3 = *(v0 + 27) + 12;
    if ( v3 > 120 )
        LOBYTE(v3) = 120;
    *(v0 + 27) = v3;
    *(v2 + 20) = 8 - (v3 & 7);
    copyTiles();
    *(v2 + 24) = 8 - (-*(v0 + 27) & 7);
    return copyTiles();
}


// 0x803a4d0
void __noreturn sub_803A4D0()
{
    int v0; // r5
    int v1; // r4
    int v2; // r0

    v1 = *(v0 + 36);
    sub_803B814(8, 19, 6, (v0 + 240));
    v2 = sub_803C418();
    sub_803BA00(88, 24, 4, v2);
}


// 0x803a524
signed int __fastcall sub_803A524(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r4
    int v7; // r0
    int v8; // r1
    int v9; // r2
    signed int result; // r0

    v2 = sub_803C620();
    v6 = v2;
    if ( v3 || !v2 )
    {
        sub_8147F98(v2, v3, v4, v5);
        result = 0;
    }
    else
    {
        sub_813D978();
        v7 = *(&dword_803A554 + v6);
        *(v1 + 1) = v7;
        sub_8147F98(v7, v8, v9, &dword_803A554);
        result = 1;
    }
    return result;
}


// 0x803a558
signed int __fastcall sub_803A558(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r4
    int v4; // r1
    int v5; // r4
    signed int result; // r0

    v2 = sub_803C620();
    v3 = v2;
    if ( v4 || !v2 )
    {
        sub_8148214();
        result = 0;
    }
    else
    {
        sub_813D978();
        v5 = 2 * v3;
        *(v1 + 1) = dword_803A5C4[v5];
        (dword_803A5C4[v5 + 1])();
        sub_8148214();
        result = 1;
    }
    return result;
}


// 0x803a58c
signed int __fastcall sub_803A58C(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r1
    char v4; // zf

    v2 = sub_803C620();
    if ( !v3 )
    {
        if ( v2 == 1 )
        {
            *(v1 + 1) = &word_50;
            sub_813D750();
        }
        else
        {
            sub_813D60C();
            if ( v4 )
                return 1;
        }
    }
    sub_8148214();
    return 0;
}


// 0x803a5dc
signed int __fastcall sub_803A5DC(int a1)
{
    char v1; // zf

    sub_803C620();
    sub_813D60C();
    if ( v1 )
        return 1;
    sub_8148214();
    return 0;
}


// 0x803a5f4
signed int __fastcall sub_803A5F4(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int v4; // r10
    int v5; // r6
    __int16 v6; // r7
    signed int v7; // r4
    __int16 v8; // r7
    int v9; // r0
    unsigned __int8 v10; // vf
    int v11; // r0
    int v12; // r0
    int v13; // r1
    int v14; // r1

    v5 = a1;
    v3[13] = v3[11];
    v3[15] = v3[14];
    v6 = *(*(v4 + oToolkit_JoypadPtr) + 2);
    v7 = 0;
    if ( v6 & 2 )
    {
        v7 = 1;
    }
    else if ( v6 & 1 )
    {
        v7 = 2;
    }
    else if ( v6 & 8 )
    {
        v7 = 3;
    }
    else
    {
        v8 = *(*(v4 + oToolkit_JoypadPtr) + 4);
        if ( v8 & 0x40 )
        {
            v9 = v3[14];
            v10 = __OFSUB__(v9--, 1);
            v3[14] = v9;
            if ( (v9 < 0) ^ v10 )
            {
                v3[14] = 0;
                v11 = v3[11];
                v10 = __OFSUB__(v11--, 1);
                v3[11] = v11;
                if ( (v11 < 0) ^ v10 )
                    v3[11] = 0;
            }
        }
        else if ( v8 & 0x80 )
        {
            v12 = v3[14] + 1;
            v3[14] = v12;
            if ( v12 >= 4 )
            {
                v3[14] = 3;
                v13 = v3[11] + 1;
                v3[11] = v13;
                a3 = v3[12] - 3;
                if ( v13 >= a3 )
                {
                    a3 = v3[12] - 4;
                    v3[11] = a3;
                }
            }
        }
    }
    v14 = v3[15];
    if ( v3[14] != v14 || (v14 = v3[13], v3[11] != v14) )
        sound_play(v5, v14, a3);
    return v7;
}


// 0x803a690
int sub_803A690()
{
    int v0; // r5

    return (*(&off_803A6A4 + *(v0 + 1)))();
}


// 0x803a6e4
void __noreturn sub_803A6E4()
{
    _BYTE *v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    sRender_08_setRenderingState(8000);
    renderInfo_8001788();
    renderInfo_80017A0();
    v1 = sub_80015FC(19);
    copyData_803B3C8(v1, v2, v3, v4);
    engine_setScreeneffect(8, 16);
    v0[8] = 0;
    v0[18] = 0;
    v0[28] = 0;
    v0[29] = 0;
    v0[19] = 0;
    sub_803BEC0();
    v5 = sub_803BA28();
    sub_803A740(v5, v6, v7, v8);
    sub_803A752();
}


// 0x803a740
void __fastcall sub_803A740(int a1, int a2, int a3, int a4)
{
    signed int v4; // r4

    v4 = 4;
    do
        sub_803B522(v4++, a2, a3, a4);
    while ( v4 <= 9 );
}


// 0x803a752
int __noreturn sub_803A752()
{
    int v0; // r4
    int result; // r0

    v0 = 4;
    do
        result = sub_803B674(v0++);
    while ( v0 <= 15 );
    return result;
}


// 0x803a764
int __noreturn sub_803A764()
{
    int v0; // r4
    int result; // r0

    v0 = 29;
    do
        result = sub_803B674(v0++);
    while ( v0 <= 32 );
    return result;
}


// 0x803a776
int sub_803A776()
{
    int v0; // r4
    int result; // r0

    v0 = 16;
    do
        result = sub_803B674(v0++);
    while ( v0 <= 27 );
    return result;
}


// 0x803a788
int sub_803A788()
{
    int v0; // r4
    int result; // r0

    v0 = 33;
    do
        result = sub_803B674(v0++);
    while ( v0 <= 37 );
    return result;
}


// 0x803a79a
void __noreturn sub_803A79A()
{
    int v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        sub_803BB2C(20);
        sub_803BB7C(15);
        *(v0 + 1) = 8;
    }
    sub_803A820();
}


// 0x803a7b8
void __noreturn sub_803A7B8()
{
    int v0; // r1
    int v1; // r2
    int v2; // r3
    int v3; // r1
    int v4; // r2
    int v5; // r3

    sub_803BA64();
    sub_803BA74();
    sub_803BAE2(0);
    sub_803B522(10, v0, v1, v2);
    sub_803B674(38);
    sub_803B522(11, v3, v4, v5);
    sub_803B674(39);
    sub_803A8B4();
}


// 0x803a7ec
void __noreturn sub_803A7EC()
{
    int v0; // r1
    int v1; // r2
    int v2; // r3
    int v3; // r1
    int v4; // r2
    int v5; // r3

    sub_803BA64();
    sub_803BA74();
    sub_803BAE2(1);
    sub_803B522(10, v0, v1, v2);
    sub_803B674(38);
    sub_803B522(11, v3, v4, v5);
    sub_803B674(39);
    sub_803A8B4();
}


// 0x803a820
void sub_803A820()
{
    int v0; // r1
    int v1; // r2
    int v2; // r3
    int v3; // r1
    int v4; // r2
    int v5; // r3

    sub_803BA64();
    sub_803BA74();
    sub_803B522(10, v0, v1, v2);
    sub_803B674(38);
    sub_803B522(11, v3, v4, v5);
    sub_803B674(39);
    sub_803A8B4();
}


// 0x803a84e
int sub_803A84E()
{
    _BYTE *v0; // r5
    int result; // r0

    v0[30] = 1;
    v0[28] = 0;
    result = 0;
    v0[2] = 0;
    return result;
}


// 0x803a85c
signed int sub_803A85C()
{
    _BYTE *v0; // r5
    signed int result; // r0

    v0[30] = 1;
    v0[28] = 0;
    result = 4;
    v0[2] = 4;
    return result;
}


// 0x803a86a
int sub_803A86A()
{
    _BYTE *v0; // r5
    int result; // r0

    v0[31] = 1;
    v0[29] = 0;
    result = 0;
    v0[2] = 0;
    return result;
}


// 0x803a878
signed int sub_803A878()
{
    _BYTE *v0; // r5
    signed int result; // r0

    v0[31] = 1;
    v0[29] = 0;
    result = 4;
    v0[2] = 4;
    return result;
}


// 0x803a886
int __fastcall sub_803A886(int result, int a2)
{
    int v2; // r5
    int v3; // r2
    unsigned __int8 v4; // vf
    int v5; // r6
    int v6; // r6

    if ( *(v2 + result) )
    {
        v3 = *(v2 + a2);
        v4 = __OFSUB__(v3--, 1);
        *(v2 + a2) = v3;
        if ( ((v3 < 0) ^ v4) | (v3 == 0) )
        {
            v5 = *(v2 + result) + 1;
            *(v2 + result) = v5;
            v6 = 2 * v5;
            if ( (&off_803A910)[v6] )
            {
                *(v2 + a2) = *(&off_803A910 + v6 + 1);
            }
            else
            {
                *(v2 + result) = 0;
                *(v2 + a2) = 0;
            }
        }
    }
    return result;
}


// 0x803a8b4
int __noreturn sub_803A8B4()
{
    int v0; // r5
    char (**v1)[8]; // r3
    char (*v2)[8]; // r3

    sub_803A886(30, 28);
    v1 = &off_803A910;
    if ( !*(v0 + 2) )
        v1 = &off_803A960;
    v2 = v1[2 * *(v0 + 30)];
    return copyTiles();
}


// 0x803a8e2
int __noreturn sub_803A8E2()
{
    int v0; // r5
    char (**v1)[8]; // r3
    char (*v2)[8]; // r3

    sub_803A886(31, 29);
    v1 = &off_803A910;
    if ( !*(v0 + 2) )
        v1 = &off_803A960;
    v2 = v1[2 * *(v0 + 31)];
    return copyTiles();
}


// 0x803a9cc
void __noreturn sub_803A9CC()
{
    int v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
    {
        sub_803BB80();
        if ( !v1 )
            *(v0 + 1) = 12;
    }
    sub_803A820();
}


// 0x803a9e6
void __fastcall sub_803A9E6(int a1, int a2, int a3)
{
    signed int v3; // r0
    char v4; // zf

    v3 = sub_803AFC2(0, a2, a3);
    if ( !v4 )
        (dword_803AA0C[v3])();
    sub_803A7B8();
}


// 0x803aa24
int sub_803AA24()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2
    char v4; // zf

    result = sub_803C068(16, 48);
    if ( !v4 )
    {
        *(v0 + 19) = 0;
        sound_play(131, v2, v3);
        result = sub_803A84E();
    }
    return result;
}


// 0x803aa40
int __fastcall sub_803AA40(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    signed int v5; // r1

    v4 = *(v3 + 8);
    v5 = 0;
    if ( v4 != 63 )
    {
        v5 = 4;
        if ( v4 != 64 )
        {
            v5 = 8;
            if ( v4 != 60 )
            {
                v5 = 12;
                if ( v4 != 58 )
                {
                    v5 = 16;
                    if ( v4 != 59 )
                    {
                        v5 = 20;
                        if ( v4 != 61 )
                        {
                            v5 = 24;
                            if ( v4 != 62 )
                                v5 = 28;
                        }
                    }
                }
            }
        }
    }
    return (*(&off_803AA80 + v5))(*(&off_803AA80 + v5), v5, a3);
}


// 0x803aaa0
signed int sub_803AAA0()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf
    signed int result; // r0

    sub_803C248(48);
    if ( v3 )
    {
        sound_play(129, v1, v2);
        sub_803BB2C(22);
        sub_803C0F6(48, 112, 32);
        result = 24;
        *(v0 + 1) = 24;
    }
    else
    {
        sound_play(105, v1, v2);
        sub_803BB2C(20);
        result = 28;
        *(v0 + 1) = 28;
    }
    return result;
}


// 0x803aad8
signed int __fastcall sub_803AAD8(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r4
    char v5; // zf
    signed int result; // r0

    sound_play(129, a2, a3);
    v4 = 26;
    sub_803C3E0();
    if ( !v5 )
        v4 = 24;
    sub_803BB2C(v4);
    result = 16;
    *(v3 + 1) = 16;
    return result;
}


// 0x803aaf6
int __fastcall __noreturn sub_803AAF6(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0

    sound_play(128, a2, a3);
    v4 = *(v3 + 18) ^ 1;
    *(v3 + 18) = v4;
    if ( !v4 )
        sub_803A752();
    sub_803A776();
    return sub_803A788();
}


// 0x803ab20
int sub_803AB20()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    sub_803BFA0(0, 48, 16);
    if ( v3 )
        return sound_play(105, v1, v2);
    *(v0 + 19) = 32;
    sound_play(128, v1, v2);
    return sub_803A85C();
}


// 0x803ab46
int sub_803AB46()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    sub_803BFA0(1, 48, 16);
    if ( v3 )
        return sound_play(105, v1, v2);
    *(v0 + 19) = 32;
    sound_play(128, v1, v2);
    return sub_803A85C();
}


// 0x803ab6c
int __fastcall sub_803AB6C(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r1
    int v5; // r0
    int v6; // r1
    int v7; // r2

    v4 = *(v3 + 36);
    v5 = *(v3 + 16) + 1;
    if ( v5 > v4 )
        return sub_803ABDC(v5, v4, a3);
    *(v3 + 16) = v5;
    sub_803C040(16, 48);
    *(v3 + 19) = 0;
    return sound_play(128, v6, v7);
}


// 0x803ab94
int sub_803AB94()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    int v4; // r1
    int v5; // r2

    v1 = *(v0 + 16);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    if ( !((result < 0) ^ v2) )
    {
        *(v0 + 16) = result;
        sub_803C0BE(16, 48);
        *(v0 + 19) = 0;
        result = sound_play(128, v4, v5);
    }
    return result;
}


// 0x803abb4
signed int __fastcall sub_803ABB4(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r1

    v4 = *(v3 + 16);
    v5 = *(v3 + 36);
    if ( v4 >= v5 )
        return sub_803ABDC(v4, v5, a3);
    sound_play(129, v5, a3);
    *(v3 + 19) = 0;
    sub_803BF70(16, 48);
    return sub_803A85C();
}


// 0x803abdc
signed int __fastcall sub_803ABDC(int a1, int a2, int a3)
{
    int v3; // r5
    signed int result; // r0

    result = *(v3 + 8);
    if ( result != 63 )
    {
        sound_play(128, a2, a3);
        *(v3 + 19) = 0;
        result = 63;
        *(v3 + 8) = 63;
    }
    return result;
}


// 0x803abf4
signed int __fastcall sub_803ABF4(int a1, int a2, int a3)
{
    int v3; // r5
    signed int result; // r0

    sound_play(128, a2, a3);
    result = 63;
    *(v3 + 8) = 63;
    return result;
}


// 0x803ac02
void __noreturn sub_803AC02()
{
    int v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
    {
        if ( chatbox_8045F4C() )
        {
            *(v0 + 1) = 12;
        }
        else
        {
            engine_setScreeneffect(12, 16);
            *(v0 + 1) = 20;
        }
    }
    sub_803A820();
}


// 0x803ac2c
void __noreturn sub_803AC2C()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        sub_803BA28();
        sub_803C3E0();
        if ( v1 )
            *v0 = 4;
        else
            *v0 = 8;
        v0[1] = 0;
    }
    sub_803A820();
}


// 0x803ac56
void __noreturn sub_803AC56()
{
    int v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
    {
        if ( chatbox_8045F4C() )
            *(v0 + 1) = 12;
        else
            *(v0 + 1) = 32;
    }
    sub_803A820();
}


// 0x803ac78
void __noreturn sub_803AC78()
{
    _BYTE *v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
    {
        v0[19] = 0;
        sub_803C0BE(16, 48);
        v0[16] = sub_803C132(16, 48);
        v0[1] = 12;
    }
    sub_803A820();
}


// 0x803aca2
void __noreturn sub_803ACA2()
{
    int v0; // r5

    *(v0 + 8) = 0;
    *(v0 + 1) = 36;
    sub_803A820();
}


// 0x803acb2
void __noreturn sub_803ACB2()
{
    int v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
        *(v0 + 1) = 40;
    sub_803A820();
}


// 0x803acc6
void __fastcall sub_803ACC6(int a1, int a2, int a3)
{
    signed int v3; // r0
    char v4; // zf

    v3 = sub_803AFC2(0, a2, a3);
    if ( !v4 )
        (dword_803ACEC[v3])();
    sub_803A7EC();
}


// 0x803ad04
int sub_803AD04()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2
    char v4; // zf

    result = sub_803C068(17, 144);
    if ( !v4 )
    {
        *(v0 + 19) = 0;
        sound_play(131, v2, v3);
        result = sub_803A86A();
    }
    return result;
}


// 0x803ad20
int __fastcall sub_803AD20(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    signed int v5; // r1

    v4 = *(v3 + 8);
    v5 = 0;
    if ( v4 != 63 )
    {
        v5 = 4;
        if ( v4 != 64 )
        {
            v5 = 8;
            if ( v4 != 60 )
            {
                v5 = 12;
                if ( v4 != 58 )
                {
                    v5 = 16;
                    if ( v4 != 59 )
                    {
                        v5 = 20;
                        if ( v4 != 61 )
                        {
                            v5 = 24;
                            if ( v4 != 62 )
                                v5 = 28;
                        }
                    }
                }
            }
        }
    }
    return (*(&off_803AD60 + v5))(*(&off_803AD60 + v5), v5, a3);
}


// 0x803ad80
signed int sub_803AD80()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf
    signed int result; // r0

    sub_803C248(144);
    if ( v3 )
    {
        sound_play(129, v1, v2);
        sub_803BB2C(23);
        sub_803C0F6(144, 208, 32);
        result = 52;
        *(v0 + 1) = 52;
    }
    else
    {
        sound_play(105, v1, v2);
        sub_803BB2C(21);
        result = 56;
        *(v0 + 1) = 56;
    }
    return result;
}


// 0x803adb8
signed int __fastcall sub_803ADB8(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r4
    char v5; // zf
    signed int result; // r0

    sound_play(129, a2, a3);
    v4 = 27;
    sub_803C3E0();
    if ( !v5 )
        v4 = 25;
    sub_803BB2C(v4);
    *(v3 + 3) = 0;
    result = 44;
    *(v3 + 1) = 44;
    return result;
}


// 0x803adda
int __fastcall __noreturn sub_803ADDA(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0

    sound_play(128, a2, a3);
    v4 = *(v3 + 18) ^ 1;
    *(v3 + 18) = v4;
    if ( !v4 )
        sub_803A752();
    sub_803A776();
    return sub_803A788();
}


// 0x803ae04
int sub_803AE04()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    sub_803BFA0(0, 144, 17);
    if ( v3 )
        return sound_play(105, v1, v2);
    *(v0 + 19) = 32;
    sound_play(128, v1, v2);
    return sub_803A878();
}


// 0x803ae2a
int sub_803AE2A()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    sub_803BFA0(1, 144, 17);
    if ( v3 )
        return sound_play(105, v1, v2);
    *(v0 + 19) = 32;
    sound_play(128, v1, v2);
    return sub_803A878();
}


// 0x803ae50
int __fastcall sub_803AE50(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r1
    int v6; // r1
    int v7; // r2

    v4 = *(v3 + 17) + 1;
    v5 = *(v3 + 38);
    if ( v4 > v5 )
        return sub_803AEC0(v4, v5, a3);
    *(v3 + 17) = v4;
    sub_803C040(17, 144);
    *(v3 + 19) = 0;
    return sound_play(128, v6, v7);
}


// 0x803ae78
int sub_803AE78()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    int v4; // r1
    int v5; // r2

    v1 = *(v0 + 17);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    if ( !((result < 0) ^ v2) )
    {
        *(v0 + 17) = result;
        sub_803C0BE(17, 144);
        *(v0 + 19) = 0;
        result = sound_play(128, v4, v5);
    }
    return result;
}


// 0x803ae98
signed int __fastcall sub_803AE98(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r1

    v4 = *(v3 + 17);
    v5 = *(v3 + 38);
    if ( v4 >= v5 )
        return sub_803AEC0(v4, v5, a3);
    sound_play(129, v5, a3);
    *(v3 + 19) = 0;
    sub_803BF70(17, 144);
    return sub_803A878();
}


// 0x803aec0
signed int __fastcall sub_803AEC0(int a1, int a2, int a3)
{
    int v3; // r5
    signed int result; // r0

    result = *(v3 + 8);
    if ( result != 63 )
    {
        sound_play(128, a2, a3);
        *(v3 + 19) = 0;
        result = 63;
        *(v3 + 8) = 63;
    }
    return result;
}


// 0x803aed8
signed int __fastcall sub_803AED8(int a1, int a2, int a3)
{
    int v3; // r5
    signed int result; // r0

    sound_play(128, a2, a3);
    result = 63;
    *(v3 + 8) = 63;
    return result;
}


// 0x803aee6
void __noreturn sub_803AEE6()
{
    int v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
    {
        if ( *(v0 + 3) == 1 )
        {
            *(v0 + 1) = 12;
        }
        else if ( chatbox_8045F4C() )
        {
            *(v0 + 1) = 40;
        }
        else
        {
            engine_setScreeneffect(12, 16);
            *(v0 + 1) = 48;
        }
    }
    sub_803A820();
}


// 0x803af1c
void __noreturn sub_803AF1C()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        sub_803BA28();
        sub_803C3E0();
        if ( v1 )
            *v0 = 4;
        else
            *v0 = 8;
        v0[1] = 0;
    }
    sub_803A820();
}


// 0x803af46
void __noreturn sub_803AF46()
{
    int v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
    {
        if ( chatbox_8045F4C() )
        {
            *(v0 + 1) = 40;
        }
        else
        {
            engine_setScreeneffect(12, 16);
            *(v0 + 1) = 60;
        }
    }
    sub_803A820();
}


// 0x803af70
void __noreturn sub_803AF70()
{
    int v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
    {
        *(v0 + 19) = 0;
        sub_803C0BE(17, 144);
        *(v0 + 1) = 40;
    }
    sub_803A820();
}


// 0x803af90
void __noreturn sub_803AF90()
{
    _BYTE *v0; // r5
    char v1; // zf
    char v2; // r4

    IsPaletteFadeActive();
    if ( !v1 )
    {
        v2 = 0;
        sub_803C3E0();
        if ( !v1 )
            v2 = 1;
        v0[4] = v2;
        sub_803C40C();
        sub_803C3E8();
        sub_803C3D8();
        sub_803F9E4();
        *v0 = 8;
        v0[1] = 0;
    }
    sub_803A820();
}


// 0x803afc2
signed int __fastcall sub_803AFC2(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r7
    __int16 v6; // r3
    __int16 v7; // r7
    signed int v8; // r4
    signed int v9; // r3
    int v10; // r1

    *(v3 + 9) = *(v3 + 8);
    v5 = *(v4 + oToolkit_JoypadPtr);
    v6 = *(v5 + 2);
    v7 = *(v5 + 4);
    v8 = 0;
    if ( v7 & 2 )
    {
        v8 = 1;
    }
    else if ( v7 & 1 )
    {
        v8 = 2;
    }
    else if ( v6 & 8 )
    {
        v8 = 3;
    }
    else if ( v7 & 0x100 )
    {
        v8 = 4;
    }
    else if ( v7 & 0x200 )
    {
        v8 = 5;
    }
    else if ( v7 & 0xF0 )
    {
        v9 = 0;
        if ( !(v7 & 0x40) )
        {
            v9 = 1;
            if ( !(v7 & 0x80) )
            {
                v9 = 2;
                if ( !(v7 & 0x20) )
                    v9 = 3;
            }
        }
        *(v3 + 8) = (*off_803B054[a1])[4 * *(v3 + 8) + v9];
    }
    v10 = *(v3 + 9);
    if ( *(v3 + 8) != v10 )
        sound_play(127, v10, a3);
    return v8;
}


// 0x803b160
int sub_803B160()
{
    int v0; // r5

    return (*(&off_803B174 + *(v0 + 1)))();
}


// 0x803b184
signed int sub_803B184()
{
    int v0; // r5
    int v1; // r10
    _WORD *v2; // r3
    int v3; // r1
    int v4; // r2
    signed int result; // r0

    sRender_08_setRenderingState(8000);
    renderInfo_8001788();
    renderInfo_80017A0();
    sub_80015FC(20);
    v2 = *(v1 + oToolkit_RenderInfoPtr);
    v2[9] = 4;
    v2[11] = 4;
    v2[13] = 4;
    copyData_803B45C(4, v3, v4, v2);
    engine_setScreeneffect(8, 16);
    sub_803BB2C(90);
    result = 4;
    *(v0 + 1) = 4;
    return result;
}


// 0x803b1c4
int sub_803B1C4()
{
    int v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
        *(v0 + 1) = 8;
    return sub_803B518();
}


// 0x803b1d6
int sub_803B1D6()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    chatbox_8045F3C(8);
    if ( !v3 )
    {
        sound_play(104, v1, v2);
        engine_setScreeneffect(12, 16);
        *(v0 + 1) = 12;
    }
    return sub_803B518();
}


// 0x803b1f8
int sub_803B1F8()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        chatbox_8040818();
        v0[4] = 2;
        *v0 = 8;
        v0[1] = 0;
    }
    return sub_803B518();
}


// 0x803b216
int __fastcall copyData_803B216(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_800183C(v4, v5, v6, v7);
    copyMemory_8001850();
    decompAndCopyData(&initRefs_803B244);
    sub_803B91C(0);
    sub_803B91C(1);
    return sub_803B91C(2);
}


// 0x803b2e4
int __fastcall copyData_803B2E4(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int result; // r0

    zeroFillVRAM(a1, a2, a3, a4);
    sub_800183C(v5, v6, v7, v8);
    copyMemory_8001850();
    decompAndCopyData(&initRefs_803B310);
    sub_803B91C(4);
    sub_803B91C(5);
    result = 0;
    *(v4 + 24) = 0;
    return result;
}


// 0x803b3c8
int __fastcall copyData_803B3C8(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    _WORD *v9; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_800183C(v5, v6, v7, v8);
    copyMemory_8001850();
    decompAndCopyData(&initRefs_803B404);
    v9 = *(v4 + oToolkit_RenderInfoPtr);
    v9[11] -= 4;
    v9[10] -= 2;
    v9[13] -= 2;
    v9[12] -= 4;
    return sub_803B91C(3);
}


// 0x803b45c
int __fastcall copyData_803B45C(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_800183C(v4, v5, v6, v7);
    copyMemory_8001850();
    decompAndCopyData(&initRefs_803B490);
    sub_803B91C(7);
    sub_803B91C(8);
    sub_803B91C(9);
    return sub_803B91C(10);
}


// 0x803b518
int sub_803B518()
{
    return sub_803B91C(10);
}


// 0x803b522
void __fastcall sub_803B522(signed int a1, int a2, int a3, int a4)
{
    int v4; // r8
    int v5; // r10
    _DWORD *v6; // r7
    char *v7; // r7
    int v8; // r1
    int v9; // r2
    int v10; // r3
    int v11; // r4
    int v12; // r5
    int v13; // r7

    v6 = *(v5 + oToolkit_Unk200a220_Ptr);
    v6[2] = a2;
    v6[3] = a3;
    v6[4] = a4;
    v6[5] = v4;
    v7 = &byte_803B574[16 * a1];
    v8 = *v7 | (v7[3] << 16);
    v9 = *(v7 + 1);
    v10 = *(v7 + 3);
    v11 = v7[1];
    v12 = v7[2];
    v13 = *(v7 + 2);
    if ( a1 >= 10 )
        (loc_8045FE4)(byte_87E36F8, v8, v9, v10);
    else
        sub_8045FC6();
}


// 0x803b63c
int __fastcall sub_803B63C(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r10
    _DWORD *v6; // r7
    char (**v7)[3592]; // r7
    int v8; // r1
    int v9; // r2
    int v10; // r3
    int v11; // r4
    int v12; // r5
    int v13; // r7

    v6 = *(v5 + oToolkit_Unk200a220_Ptr);
    v6[2] = a2;
    v6[3] = a3;
    v6[4] = a4;
    v6[5] = v4;
    v7 = &off_803B66C + 3 * a1;
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 1);
    v12 = *(v7 + 2);
    v13 = *(v7 + 3);
    return renderTextGfx_8045F8C(byte_87E36F8, v8, v9, v10);
}


// 0x803b674
int __fastcall sub_803B674(int a1)
{
    unsigned __int8 *v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r4
    int v6; // r5

    v1 = &byte_803B6AC[8 * a1];
    sub_8001930(*v1, v1[2], v1[3], v1[4]);
    v2 = v1[5];
    v3 = v1[6];
    v4 = v1[7];
    v5 = 2 * v1[3];
    v6 = 2 * v1[4];
    return copyTiles();
}


// 0x803b814
signed int __fastcall sub_803B814(int a1, int a2, int a3, _BYTE *a4)
{
    int v4; // r4
    signed int result; // r0
    _BYTE *i; // r7
    unsigned __int8 v7; // vf
    int v8; // ST00_4
    int v9; // r2
    int v10; // [sp+4h] [bp-1Ch]
    unsigned int v11; // [sp+8h] [bp-18h]

    v10 = a2;
    result = &byte_420;
    v11 = (a3 << 12) | &byte_420;
    for ( i = a4; ; ++i )
    {
        v7 = __OFSUB__(v4, 1);
        if ( (--v4 < 0) ^ v7 )
            break;
        result = *i;
        if ( !*i )
            break;
        v8 = a2 + chatbox_8045ED0(algn_2027201[8 * byte_80391A8[result] + 1]);
        result = sub_802FE28((v9 << 16) | v10 | 0x40001000, v11 + 4 * byte_80391A8[*i], 2, 7);
    }
    return result;
}


// 0x803b880
void __noreturn sub_803B880()
{
    int v0; // r0
    unsigned int v1; // r0
    int v2; // r2

    v0 = sub_803C398();
    v1 = sub_8000C00(v0);
    v2 = (v1 >> 8) & 0xF;
    if ( v2 )
        sub_803B8F8(104, 80, v2);
    if ( v1 >> 4 )
        sub_803B8F8(112, 80, v1 >> 4);
    sub_803B8F8(120, 80, v1 & 0xF);
}


// 0x803b8f8
signed int __fastcall __noreturn sub_803B8F8(int a1, int a2, __int16 a3)
{
    return sub_802FE28((a1 << 16) | a2 | 0x9000, 2 * a3 - 16256, 0, 0);
}


// 0x803b91c
int __fastcall sub_803B91C(int a1)
{
    void **v1; // r3
    int v2; // r4
    int v3; // r5

    v1 = &off_803B93C + 3 * a1;
    v2 = *(v1 + 7);
    v3 = *(v1 + 8);
    return sub_8001890(*(v1 + 5), *(v1 + 6), *(v1 + 4), *v1);
}


// 0x803b9c0
signed int __fastcall __noreturn sub_803B9C0(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    unsigned int v5; // r5
    unsigned int v6; // r6
    signed int v7; // r7
    signed int result; // r0
    unsigned __int8 v9; // vf

    v4 = ((a1 << 16) | a2) + 4096;
    v5 = dword_414 | (a3 << 12);
    v6 = sub_8000C00(a4);
    v7 = 28;
    do
    {
        result = sub_802FE28(v4 + (v7 << 16), v5 + (v6 & 0xF), 2, 7);
        v6 >>= 4;
        v9 = __OFSUB__(v7, 7);
        v7 -= 7;
    }
    while ( !((v7 < 0) ^ v9) );
    return result;
}


// 0x803ba00
void __fastcall __noreturn sub_803BA00(int a1, int a2, int a3, int a4)
{
    sub_803B9C0(a1, a2, a3, a4);
}


// 0x803ba28
int sub_803BA28()
{
    int v0; // r5
    int result; // r0

    CopyBytes(&unk_2006778, v0 + 48, 32);
    CopyBytes(&unk_2006798, v0 + 144, 32);
    *(v0 + 16) = sub_803C132(16, 48);
    result = sub_803C132(17, 144);
    *(v0 + 17) = result;
    return result;
}


// 0x803ba64
int sub_803BA64()
{
    return sub_803BA84(48, 80, 32, 16);
}


// 0x803ba74
int sub_803BA74()
{
    return sub_803BA84(144, 176, 32, 17);
}


// 0x803ba84
signed int __fastcall sub_803BA84(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int i; // r4
    signed int result; // r0
    int v7; // r7
    int v8; // r6
    unsigned __int8 v9; // vf
    _BYTE *v10; // r1
    _BYTE *v11; // r1
    int v12; // [sp+0h] [bp-1Ch]
    int v13; // [sp+4h] [bp-18h]

    v12 = a2;
    v13 = a4;
    CopyBytes(a1 + v4, a2 + v4, a3);
    for ( i = 0; ; i += 2 )
    {
        result = *(v12 + v4 + i);
        if ( result == 230 )
            break;
    }
    v7 = v12 + v4;
    v8 = 2 * *(v4 + v13);
    while ( i > v8 )
    {
        v9 = __OFSUB__(i, 2);
        i -= 2;
        if ( (i < 0) ^ v9 )
            break;
        result = *(v7 + i);
        if ( result != 229 )
            break;
        v10 = (v7 + i);
        *v10 = -78;
        result = 229;
        v10[1] = -27;
    }
    while ( 1 )
    {
        v9 = __OFSUB__(i, 2);
        i -= 2;
        if ( (i < 0) ^ v9 )
            break;
        result = *(v7 + i);
        if ( result == 229 )
        {
            v11 = (v7 + i);
            *v11 = -78;
            result = 229;
            v11[1] = -27;
        }
    }
    return result;
}


// 0x803bae2
int __fastcall sub_803BAE2(int a1)
{
    int v1; // r5
    unsigned __int8 *v2; // r4
    char v3; // r0
    int result; // r0
    int v5; // r7
    int v6; // r4
    _BYTE *v7; // r1
    _BYTE *v8; // r7

    v2 = &dword_803BB28 + 2 * a1;
    v3 = *(v1 + 19) + 1;
    *(v1 + 19) = v3;
    result = v3 & 0x3F;
    if ( result < 32 )
    {
        v5 = v1 + *v2;
        v6 = 2 * *(v1 + v2[1]);
        if ( *(v5 + v6) == 230 )
        {
            v8 = (v5 + v6);
            *v8 = 37;
            result = 230;
            v8[1] = -26;
        }
        else
        {
            v7 = (v5 + v6);
            *v7 = -97;
            result = 229;
            v7[1] = -27;
        }
    }
    return result;
}


// 0x803bb2c
void __fastcall sub_803BB2C(int a1)
{
    unsigned __int8 **v1; // r10
    int v2; // r3
    int v3; // ST00_4
    signed int v4; // r0

    v2 = **v1;
    if ( v2 == 40 || v2 == 48 )
    {
        chatbox_runScript_803FD9C(dword_87F2A1C, a1);
    }
    else if ( v2 == 76 )
    {
        v3 = a1;
        v4 = sub_8123360();
        chatbox_runScript_803FD9C(*(&off_803BB74 + v4), v3);
    }
    else
    {
        chatbox_runScript_803FE74(byte_87E36F8, a1);
    }
}


// 0x803bb7c
int __fastcall sub_803BB7C(int result)
{
    int v1; // r5

    *(v1 + 40) = result;
    return result;
}


// 0x803bb80
signed int sub_803BB80()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r0

    v1 = *(v0 + 40);
    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if ( (v3 < 0) ^ v2 )
        return 1;
    *(v0 + 40) = v3;
    return 0;
}


// 0x803bb90
int __fastcall sub_803BB90(int result)
{
    int v1; // r5

    *(v1 + 44) = result;
    return result;
}


// 0x803bb94
signed int sub_803BB94()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r0

    v1 = *(v0 + 44);
    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if ( (v3 < 0) ^ v2 )
        return 1;
    *(v0 + 44) = v3;
    return 0;
}


// 0x803bba4
int __fastcall __noreturn sub_803BBA4(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r4
    int result; // r0

    v4 = a3;
    sub_802FE28(a2 | (a1 << 16) | 0x40001000, *&byte_803BBDC[2 * *(v3 + 7)] | 0x800, 2, 7);
    result = *(v3 + 7) + v4;
    if ( result >= 18 )
        result = 0;
    *(v3 + 7) = result;
    return result;
}


// 0x803bc7c
int __fastcall __noreturn sub_803BC7C(int a1)
{
    int v1; // r5
    signed int v2; // r1
    char *v3; // r4
    int v4; // r6
    int result; // r0

    v2 = *(v1 + 8);
    if ( a1 && v2 >= 60 )
        v2 += 5;
    v3 = &byte_803BD18[4 * v2];
    v4 = v3[1] | (*v3 << 16);
    sub_802FE28(v4 | 0x9000, *&byte_803BCE4[2 * *(v1 + 10)], 0, 0);
    sub_802FE28((v4 | 0x9000) + (v3[2] << 16), *&byte_803BCE4[2 * *(v1 + 10)] + 2, 0, 0);
    result = *(v1 + 10) + 1;
    if ( result >= 24 )
        result = 0;
    *(v1 + 10) = result;
    return result;
}


// 0x803be30
int __fastcall sub_803BE30(int a1)
{
    int *v1; // r0
    int v2; // r4
    int v3; // r6
    int v5; // [sp+4h] [bp-20h]
    int v6; // [sp+8h] [bp-1Ch]
    int v7; // [sp+Ch] [bp-18h]

    v1 = (&off_803BE8C + 4 * a1);
    v2 = *v1;
    v3 = v1[1];
    v5 = v1[1];
    v7 = v1[3];
    v6 = v1[2];
    while ( *(v2 + 2) != 230 )
    {
        sub_8045FD0(v2, 0, v3 + 0x2000, v6);
        v2 += 8;
        v3 += 128;
    }
    return (loc_8000AC8)(v5, v6, v7);
}


// 0x803bec0
void sub_803BEC0()
{
    void **i; // r6
    char *v1; // r4
    char *v2; // r7
    int v3; // r0
    char v4; // r1

    for ( i = &off_803BF18; ; i += 2 )
    {
        v1 = *i;
        if ( !*i )
            break;
        v2 = &byte_87E36F8[*&byte_87E36F8[2 * i[1]]];
        while ( 1 )
        {
            v3 = *v2;
            if ( v3 == 230 )
                break;
            if ( v3 == 228 )
            {
                *v1 = 2;
                v4 = v2[1];
                v1[2] = *v2;
                v1[3] = v4;
                v1[4] = -26;
                v2 += 2;
            }
            else
            {
                *v1 = 2;
                v1[2] = *v2;
                v1[3] = -27;
                v1[4] = -26;
                ++v2;
            }
            v1 += 8;
        }
        v1[2] = -26;
    }
}


// 0x803bf70
int __fastcall sub_803BF70(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    int result; // r0

    v3 = a1;
    *(2 * *(v2 + a1) + v2 + a2) = *(*(&off_803C208 + 4 * *(v2 + 18)) + 4 * *(v2 + 8) + 1);
    result = *(v2 + a1) + 1;
    *(v2 + v3) = result;
    return result;
}


// 0x803bfa0
int __fastcall sub_803BFA0(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r1
    unsigned __int16 *v6; // r0
    int v7; // r3
    int v8; // r0
    unsigned __int8 v9; // vf
    int v10; // r0
    unsigned __int16 *v11; // r7
    int v12; // r4

    v4 = a1;
    v5 = a2 + v3;
    v6 = (2 * *(v3 + a3) + v5);
    v7 = *v6;
    if ( v7 != 229 && *v6 && v7 != 230 )
        goto LABEL_6;
    v8 = *(v3 + a3);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if ( !((v10 < 0) ^ v9) )
    {
        v6 = (2 * v10 + v5);
LABEL_6:
        v11 = v6;
        v12 = *v6;
        sub_803BFE8(v6, off_803BFE0[v4]);
        return *v11;
    }
    return 0;
}


// 0x803bfe8
int __fastcall sub_803BFE8(unsigned __int16 *a1, unsigned __int8 *a2)
{
    unsigned __int16 *v2; // r6
    unsigned __int8 *i; // r7
    int result; // r0
    int v5; // r0

    v2 = a1;
    for ( i = a2; ; i += 2 )
    {
        result = *i;
        if ( result == 255 )
            break;
        v5 = sub_803C018(*(&off_803C208 + result), *v2);
        if ( v5 != 255 )
            return sub_803C034(v5, *(&off_803C208 + i[1]), v2);
    }
    return result;
}


// 0x803c018
signed int __fastcall sub_803C018(int a1, int a2)
{
    int v2; // r3

    v2 = 0;
    while ( *(a1 + 2) != 230 )
    {
        if ( a2 == *(a1 + 2) )
            return v2;
        ++v2;
        a1 += 8;
    }
    return 255;
}


// 0x803c034
int __fastcall sub_803C034(int a1, int a2, _WORD *a3)
{
    int result; // r0

    result = *(a2 + 8 * a1 + 2);
    *a3 = result;
    return result;
}


// 0x803c040
signed int __fastcall sub_803C040(signed int result, int a2)
{
    int v2; // r5
    int v3; // r4
    int v4; // r6
    unsigned __int8 *v5; // r3

    v3 = 0;
    v4 = 2 * *(v2 + result);
    v5 = (v2 + a2);
    while ( v3 < v4 )
    {
        result = *v5;
        if ( result == 230 )
            break;
        if ( result == 229 )
        {
            *v5 = 0;
            result = 229;
            v5[1] = -27;
        }
        v5 += 2;
        v3 += 2;
    }
    return result;
}


// 0x803c068
signed int __fastcall sub_803C068(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    int v4; // r7
    signed int v5; // r4
    unsigned __int8 *v6; // r0
    int v7; // r1
    int v8; // r0
    unsigned __int8 v9; // vf
    int v10; // r0
    int v11; // r0
    int v12; // r0

    v3 = a1;
    v4 = a2;
    v5 = 1;
    v6 = (2 * *(v2 + a1) + v2 + a2);
    v7 = *v6;
    if ( v7 != 229 && *v6 && v7 != 230 )
    {
        *v6 = 0;
        v6[1] = -27;
        sub_803C0BE(v3, v4);
        v11 = *(v2 + v3);
        v9 = __OFSUB__(v11, 1);
        v12 = v11 - 1;
        if ( (v12 < 0) ^ v9 )
            LOBYTE(v12) = 0;
        *(v2 + v3) = v12;
    }
    else
    {
        v8 = *(v2 + v3);
        v9 = __OFSUB__(v8, 1);
        v10 = v8 - 1;
        if ( (v10 < 0) ^ v9 )
        {
            LOBYTE(v10) = 0;
            v5 = 0;
        }
        *(v2 + v3) = v10;
        sub_803C0BE(v3, v4);
    }
    return v5;
}


// 0x803c0be
signed int __fastcall sub_803C0BE(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    int v4; // r3
    int i; // r4
    signed int result; // r0
    _BYTE *v7; // r1

    v3 = 2 * *(v2 + a1);
    v4 = v2 + a2;
    for ( i = 0; ; i += 2 )
    {
        result = *(v4 + i);
        if ( result == 230 )
            break;
    }
    while ( i >= v3 )
    {
        result = *(v4 + i);
        if ( result != 230 )
        {
            if ( *(v4 + i) && result != 229 )
                return result;
            v7 = (v4 + i);
            *v7 = -27;
            result = 229;
            v7[1] = -27;
        }
        i -= 2;
    }
    return result;
}


// 0x803c0f6
signed int __fastcall sub_803C0F6(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r4
    int v5; // r3
    int i; // r4
    signed int result; // r0
    _BYTE *v8; // r1

    v4 = a2;
    CopyBytes(a1 + v3, a2 + v3, a3);
    v5 = v3 + v4;
    for ( i = 0; ; i += 2 )
    {
        result = *(v5 + i);
        if ( result == 230 )
            break;
    }
    while ( i >= 0 )
    {
        result = *(v5 + i);
        if ( result != 230 )
        {
            if ( *(v5 + i) && result != 229 )
                return result;
            v8 = (v5 + i);
            *v8 = -27;
            result = 229;
            v8[1] = -27;
        }
        i -= 2;
    }
    return result;
}


// 0x803c132
int __fastcall sub_803C132(int a1, int a2)
{
    int v2; // r5
    int v3; // r4
    int v4; // r6
    unsigned __int8 *i; // r3
    int v6; // r0

    v3 = 0;
    v4 = 2 * *(v2 + a1);
    for ( i = (v2 + a2); ; i += 2 )
    {
        v6 = *i;
        if ( v6 == 230 || v6 == 229 )
            break;
        ++v3;
    }
    return v3;
}


// 0x803c150
int __fastcall sub_803C150(__int64 a1, __int64 a3)
{
    int v2; // r5
    __int64 v3; // ST00_8

    v3 = a3;
    sub_803C168(a1, *(v2 + 36), 0x20u);
    return sub_803C168(v3, *(v2 + 38), 0x20u);
}


// 0x803c168
int __fastcall sub_803C168(__int64 a1, int a2, unsigned int a3)
{
    __int64 v3; // ST00_8
    int v4; // ST08_4
    __int64 v5; // r0
    int v6; // r2
    unsigned __int8 v7; // vf

    v3 = a1;
    v4 = a2;
    HalfwordFill(SHIDWORD(a1), a3, 58853, 58624);
    *(HIDWORD(v3) + 2 * v4) = -26;
    v5 = v3;
    v6 = v4;
    do
    {
        if ( !*v5 )
            break;
        *HIDWORD(v5) = *&word_2026A02[8 * *v5];
        LODWORD(v5) = v5 + 1;
        HIDWORD(v5) += 2;
        v7 = __OFSUB__(v6--, 1);
    }
    while ( !(((v6 < 0) ^ v7) | (v6 == 0)) );
    return v5;
}


// 0x803c1a8
_DWORD *__fastcall sub_803C1A8(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    _DWORD *v5; // ST00_4
    _BYTE *v6; // ST04_4

    v5 = a3;
    v6 = a4;
    sub_803C1BC(a1, a2, *(v4 + 36));
    return sub_803C1BC(v5, v6, *(v4 + 38));
}


// 0x803c1bc
_DWORD *__fastcall sub_803C1BC(_DWORD *result, _BYTE *a2, int a3)
{
    int v3; // r3
    signed int v4; // r4
    int v5; // r6
    unsigned __int8 v6; // vf

    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    do
    {
        v3 = *a2;
        if ( v3 == 230 || v3 == 229 )
            break;
        if ( *a2 )
        {
            v4 = 0;
            while ( word_2026A02[v4] != 230 )
            {
                v5 = *&word_2026A02[v4];
                v4 += 8;
                if ( *a2 == v5 )
                    goto LABEL_10;
            }
        }
        v4 = 264;
LABEL_10:
        *result = (v4 >> 3) - 1;
        result = (result + 1);
        a2 += 2;
        v6 = __OFSUB__(a3--, 1);
    }
    while ( !(((a3 < 0) ^ v6) | (a3 == 0)) );
    return result;
}


// 0x803c248
signed int __fastcall sub_803C248(int a1)
{
    int v1; // r5
    unsigned __int8 *v2; // r3
    signed int v3; // r4
    int v4; // r0

    v2 = (v1 + a1);
    v3 = 1;
    while ( 1 )
    {
        v4 = *v2;
        v2 += 2;
        if ( v4 == 230 )
            break;
        if ( v4 != 229 && v4 )
            return 0;
    }
    return v3;
}


// 0x803c26a
int sub_803C26A()
{
    int v0; // r5

    ZeroFillByByte(v0 + 304, 16);
    return ZeroFillByByte(v0 + 336, 16);
}


// 0x803c28a
int __fastcall sub_803C28A(int a1)
{
    int v1; // r6
    int v2; // r1
    int v3; // r2

    v1 = a1;
    sub_813D978();
    sub_803CB00(8);
    return sound_play(v1, v2, v3);
}


// 0x803c2a0
int sub_803C2A0()
{
    return sub_803CB00(8);
}


// 0x803c2aa
int __fastcall sub_803C2AA(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r6
    int v6; // r7

    v4 = a2;
    v5 = a3;
    v6 = a4;
    CopyBytes(a1, &unk_200A400, 32);
    CopyBytes(v4, &unk_200A420, 32);
    CopyBytes(v5, &unk_200A3A0, 16);
    return CopyBytes(v6, &unk_200A3B0, 16);
}


// 0x803c2ec
void sub_803C2EC()
{
    ;
}


// 0x803c2f0
int sub_803C2F0()
{
    int v0; // r10
    int v1; // r3
    int result; // r0

    v1 = *(v0 + oToolkit_RenderInfoPtr);
    result = *(v1 + 20) + 10;
    *(v1 + 20) = result;
    return result;
}


// 0x803c2fe
void sub_803C2FE()
{
    ;
}


// 0x803c302
__int16 __fastcall sub_803C302(__int16 result)
{
    word_200A2B0 |= result;
    return result;
}


// 0x803c30c
__int16 __fastcall sub_803C30C(__int16 result)
{
    word_200A2B0 &= ~result;
    return result;
}


// 0x803c316
void sub_803C316()
{
    ;
}


// 0x803c320
int sub_803C320()
{
    int result; // r0

    result = 0;
    word_200A2B0 = 0;
    byte_200A2A6 = 0;
    return result;
}


// 0x803c330
BOOL sub_803C330()
{
    int v0; // r10
    char v1; // zf

    sub_803CB18();
    return v1 && *(*(v0 + oToolkit_JoypadPtr) + 2) & 2;
}


// 0x803c34e
void sub_803C34E()
{
    ;
}


// 0x803c352
int __fastcall sub_803C352(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&word_2006770, 0x48u, a3, a4);
    HalfwordFill(&unk_2006778, 0x20u, 58853, 58624);
    byte_2006788 = -26;
    HalfwordFill(&unk_2006798, 0x20u, 58853, 58624);
    byte_20067AE = -26;
    return sub_802D150();
}


// 0x803c398
int sub_803C398()
{
    signed __int16 v0; // r2
    signed __int16 v1; // r2

    v0 = word_2006774;
    if ( word_2006774 > 999 )
        v0 = 999;
    word_2006774 = v0;
    v1 = word_2006776;
    if ( word_2006776 > 999 )
        v1 = 999;
    word_2006776 = v1;
    return word_2006774;
}


// 0x803c3b6
int __fastcall sub_803C3B6(int result)
{
    int v1; // r2
    int v2; // r2

    v1 = word_2006774 + 1;
    if ( v1 > 999 )
        LOWORD(v1) = 999;
    word_2006774 = v1;
    v2 = word_2006776 + result;
    if ( v2 > 999 )
        LOWORD(v2) = 999;
    word_2006776 = v2;
    return result;
}


// 0x803c3d8
__int16 *sub_803C3D8()
{
    __int16 *result; // r0

    result = &word_2006770;
    byte_2006772 = 1;
    return result;
}


// 0x803c3e0
int sub_803C3E0()
{
    return byte_2006772;
}


// 0x803c3e8
int sub_803C3E8()
{
    CopyBytes(&unk_200A300, &unk_2006778, 32);
    return CopyBytes(&unk_200A360, &unk_2006798, 32);
}


// 0x803c40c
int sub_803C40C()
{
    int result; // r0

    result = change_20013F0_800151C();
    word_2006770 = result;
    return result;
}


// 0x803c418
int sub_803C418()
{
    _BYTE **v0; // r10
    int result; // r0

    result = word_2006770;
    if ( **v0 != 24 )
        result = sub_8049D7C();
    return result;
}


// 0x803c434
int __fastcall sub_803C434(int a1, int a2, int a3)
{
    int result; // r0

    result = 4 * a1;
    *(&unk_200A3C0 + result) = a2;
    *(&unk_200A3E0 + result) = a3;
    return result;
}


// 0x803c440
char *__fastcall sub_803C440(int a1)
{
    int v1; // r0
    int v2; // r1
    char *result; // r0

    v1 = 4 * a1;
    v2 = *(&unk_200A3E0 + v1);
    result = *(&unk_200A3C0 + v1);
    if ( !result )
        result = byte_803C46C;
    return result;
}


// 0x803c458
char *sub_803C458()
{
    return byte_803C46C;
}


// 0x803c48c
signed int sub_803C48C()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 254;
    sub_803CB18();
    if ( v1 )
    {
        v0 = 255;
        sub_803CB18();
        if ( !v1 )
            v0 = byte_200A2A6;
    }
    return v0;
}


// 0x803c4b0
int sub_803C4B0()
{
    return sub_803CB00(16);
}


// 0x803c4c0
void *sub_803C4C0()
{
    return &unk_2006778;
}


// 0x803c4dc
int sub_803C4DC()
{
    sub_813D978();
    return sub_803CB00(8);
}


// 0x803c4ec
int sub_803C4EC()
{
    sub_813D978();
    sub_803CB00(8);
    return sub_803CB00(128);
}


// 0x803c502
void sub_803C502()
{
    sub_803CB18();
}


// 0x803c514
signed int sub_803C514()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    sub_803CB18();
    if ( !v1 )
        v0 = 1;
    return v0;
}


// 0x803c530
signed int sub_803C530()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    sub_803CB18();
    if ( !v1 )
    {
        sub_8001B1C(&off_8039370);
        v0 = 1;
    }
    return v0;
}


// 0x803c558
int sub_803C558()
{
    sub_803C26A();
    return sub_81467A0();
}


// 0x803c564
int sub_803C564()
{
    return sub_803CB00(2);
}


// 0x803c570
int sub_803C570()
{
    return sub_803CB0C(2);
}


// 0x803c580
int sub_803C580()
{
    return sub_803CB00(64);
}


// 0x803c58c
int sub_803C58C()
{
    return sub_803CB0C(64);
}


// 0x803c59c
int __fastcall sub_803C59C(int a1, int a2)
{
    int result; // r0
    char v3; // zf
    unsigned int v4; // r0
    int v5; // r0
    int v6; // [sp+0h] [bp-1Ch]
    int v7; // [sp+4h] [bp-18h]

    v6 = a1;
    v7 = a2;
    sub_8146BF4();
    result = v6;
    if ( !v3 )
    {
        byte_200BC61 = sub_8146BB8() - 1;
        sub_802FE28(v7 | (v6 << 16) | 0x40000000, 58356, 0, 0);
        v4 = byte_200BC60++ + 1;
        v5 = (v4 >> 4) & 3;
        if ( v5 > byte_200BC61 )
        {
            v5 = 0;
            byte_200BC60 = 0;
        }
        result = (loc_8000AC8)(&dword_86A5300[32 * v5], 100761216, 128);
    }
    return result;
}


// 0x803c604
void sub_803C604()
{
    sub_803A104();
    sub_8049BC0();
}


// 0x803c612
int sub_803C612()
{
    return sub_803A1B0();
}


// 0x803c620
int sub_803C620()
{
    int result; // r0

    sub_803CB0C(2);
    sub_803CB0C(64);
    result = byte_200BC50;
    if ( byte_200BC50 )
        result = (dword_803C650[byte_200BC50])();
    return result;
}


// 0x803c6a8
signed __int64 sub_803C6A8()
{
    sub_813D9A0(&dword_34);
    sub_813D934(0);
    return 1LL;
}


// 0x803c6c0
signed __int64 sub_803C6C0()
{
    sub_813D978();
    sub_803CB00(8);
    sub_803CB00(128);
    return 4294967297LL;
}


// 0x803c6d8
__int64 sub_803C6D8()
{
    sub_814A828();
    sub_813D978();
    sub_803CB00(8);
    sub_803CB00(128);
    return 0LL;
}


// 0x803c6f4
signed __int64 sub_803C6F4()
{
    sub_813D9A0(51);
    return 1LL;
}


// 0x803c702
int sub_803C702()
{
    int v0; // r7

    return (*(&off_803C718 + *(v0 + 2)))();
}


// 0x803c720
__int64 sub_803C720()
{
    int v0; // r7

    *(v0 + 10) = 200;
    *(v0 + 2) = 1;
    return 0LL;
}


// 0x803c730
signed __int64 sub_803C730()
{
    int v0; // r7
    int v1; // r0

    v1 = *(v0 + 10) - 1;
    *(v0 + 10) = v1;
    if ( v1 )
        return 0LL;
    sub_813D9A0(9);
    *v0 = 0;
    return 1LL;
}


// 0x803c754
signed __int64 sub_803C754()
{
    _BYTE *v0; // r7

    sub_813D9A0(50);
    *v0 = 0;
    return 1LL;
}


// 0x803c76c
__int64 sub_803C76C()
{
    int v0; // r7

    sub_803CB00(2);
    sub_814665C();
    sub_814673C();
    *(v0 + 3) = 0;
    *(v0 + 10) = byte_12C;
    return 0LL;
}


// 0x803c790
__int64 sub_803C790()
{
    int v0; // r7

    (*(&off_803C7AC + *(v0 + 3)))();
    return 0LL;
}


// 0x803c7b4
int sub_803C7B4()
{
    int v0; // r7
    int result; // r0
    char v2; // zf

    result = sub_803CB44();
    if ( !v2 )
        result = sub_81467A0();
    if ( byte_2010288 )
    {
        result = sub_803CB24();
        if ( result != 255 )
        {
            *(v0 + 3) = 4;
            *(v0 + 10) = &loc_B4;
            result = sub_803CB00(64);
        }
    }
    return result;
}


// 0x803c7e8
void __fastcall sub_803C7E8(int a1)
{
    int v1; // r7
    int v2; // r0
    unsigned int v3; // r0
    int v4; // r0
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    v2 = sub_803CB24();
    if ( v2 != 255 )
    {
        if ( v2 != 254 && (v3 = sub_8146808(v2), v3 != 4) )
        {
            if ( !sub_8146888(v3) )
            {
                sub_813D934(0);
                *(v1 + 3) = 0;
                v5 = sub_8146CFC();
                sub_813DA84(v5, v6, v7, v8);
            }
        }
        else
        {
            sub_803CB00(64);
            v4 = *(v1 + 10) - 1;
            *(v1 + 10) = v4;
            if ( !v4 )
            {
                sub_813D978();
                sub_803CB00(8);
                sub_803CB00(128);
            }
        }
    }
}


// 0x803c83a
signed __int64 sub_803C83A()
{
    return 1LL;
}


// 0x803c842
__int64 sub_803C842()
{
    return 0LL;
}


// 0x803c84a
__int64 sub_803C84A()
{
    sub_81468F4();
    sub_814690C();
    return 0LL;
}


// 0x803c85c
__int64 sub_803C85C()
{
    sub_803CB00(2);
    return 0LL;
}


// 0x803c86a
int sub_803C86A()
{
    int v0; // r7

    return (*(&off_803C87C + *(v0 + 3)))();
}


// 0x803c888
signed __int64 sub_803C888()
{
    int v0; // r7

    dword_200AF94 = 4;
    dword_200AF8C = &unk_200FE70;
    if ( !sub_8146D40(&byte_200AF80) )
    {
        sub_803CB00(64);
        sub_803CB0C(2);
        *(v0 + 3) = 4;
    }
    return sub_803C90C();
}


// 0x803c8b4
signed __int64 __fastcall sub_803C8B4(int a1, int a2, int a3, int a4)
{
    sub_8146D98(&byte_200AF80, a2, a3, a4);
    if ( byte_200AF81 == 1 && *dword_200AF8C )
    {
        sub_8146E5C(&byte_200AF80, 1);
        sub_813D9A0(34);
        sub_813D934(0);
    }
    return sub_803C90C();
}


// 0x803c8e8
int __fastcall sub_803C8E8(int a1, int a2, int a3, int a4)
{
    int result; // r0

    sub_8146D98(&byte_200AF80, a2, a3, a4);
    if ( byte_200AF81 == 1 && *dword_200AF8C )
        result = sub_813D978();
    else
        result = sub_803C90C();
    return result;
}


// 0x803c90c
signed __int64 sub_803C90C()
{
    int v0; // r7
    char v2; // zf

    if ( !byte_2010280 || sub_8146938() )
        return 2LL;
    sub_803CB18();
    if ( !v2 )
    {
        sub_813D9A0(34);
        *(v0 + 3) = 8;
    }
    return 0LL;
}


// 0x803c94c
signed __int64 sub_803C94C()
{
    char v0; // zf

    sub_800A7D0();
    if ( v0 )
        sub_813D9A0(1);
    else
        sub_813D978();
    sub_813D934(0);
    return 1LL;
}


// 0x803c97c
signed __int64 sub_803C97C()
{
    int v0; // r4

    v0 = sub_8146918(byte_200AF84);
    if ( v0 < sub_814690C() )
        return 0LL;
    sub_813D978();
    return 2LL;
}


// 0x803c9a4
signed __int64 __fastcall sub_803C9A4(int a1)
{
    sub_813D978();
    sub_813D934(0);
    return 1LL;
}


// 0x803c9b6
__int64 sub_803C9B6()
{
    return 0LL;
}


// 0x803c9be
__int64 sub_803C9BE()
{
    int v0; // r7

    (*(&off_803C9D4 + *(v0 + 3)))();
    return 0LL;
}


// 0x803c9dc
void sub_803C9DC()
{
    int v0; // r7
    int v1; // r2
    int v2; // r3
    char v3; // zf

    sub_803CB18();
    if ( !v3 )
    {
        ZeroFillByWord(&byte_2010144, 0x10u, v1, v2);
        byte_2010144 = 1;
        byte_200AF90 = 4;
        dword_200AF88 = &byte_2010144;
        sub_8146D20();
        *(v0 + 3) = 4;
    }
}


// 0x803ca10
signed int sub_803CA10()
{
    signed int result; // r0

    sub_8146C20(&byte_200AF80);
    result = byte_200AF82;
    if ( !byte_200AF82 )
    {
        result = 1;
        byte_200AF85 = 1;
    }
    return result;
}


// 0x803ca2c
__int64 sub_803CA2C()
{
    int v0; // r7

    if ( byte_200AF85 )
    {
        sub_813D978();
        sub_803CB00(8);
    }
    else
    {
        (*(&off_803CA58 + *(v0 + 3)))();
    }
    return 0LL;
}


// 0x803ca64
signed int __fastcall sub_803CA64(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    signed int result; // r0

    ZeroFillByWord(&byte_2010144, 0x10u, a3, a4);
    byte_2010144 = 1;
    byte_200AF90 = 4;
    dword_200AF88 = &byte_2010144;
    if ( sub_8146D20() )
        sub_803CA90();
    result = 4;
    *(v4 + 3) = 4;
    return result;
}


// 0x803ca90
int sub_803CA90()
{
    int result; // r0

    sub_8146C20(&byte_200AF80);
    result = byte_200AF82;
    if ( !byte_200AF82 )
    {
        sub_813D978();
        result = sub_803CB00(8);
    }
    return result;
}


// 0x803cac4
char *__fastcall sub_803CAC4(int a1)
{
    char *result; // r0
    int v2; // r6
    int v3; // r4
    char *v4; // ST0C_4
    char *v5; // ST00_4

    result = sub_813D638();
    v2 = result;
    if ( result )
    {
        v3 = 0;
        do
        {
            v4 = sub_81466E4(v3);
            v5 = sub_8146714(v3);
            sub_803C434(v3, v4, v5);
            result = v5;
            ++v3;
            --v2;
        }
        while ( v2 );
    }
    return result;
}


// 0x803caf8
int sub_803CAF8()
{
    return dword_200BC5C;
}


// 0x803cb00
int __fastcall sub_803CB00(int result)
{
    dword_200BC5C |= result;
    return result;
}


// 0x803cb0c
int __fastcall sub_803CB0C(int result)
{
    dword_200BC5C &= ~result;
    return result;
}


// 0x803cb18
void sub_803CB18()
{
    ;
}


// 0x803cb24
signed int sub_803CB24()
{
    int v0; // r7
    signed int v1; // r4
    char v2; // zf

    v1 = 254;
    sub_803CB18();
    if ( v2 )
    {
        v1 = 255;
        sub_803CB18();
        if ( !v2 )
            v1 = *(v0 + 6);
    }
    return v1;
}


// 0x803cb44
signed int sub_803CB44()
{
    int v0; // r10
    signed int v1; // r4
    char v2; // zf

    sub_803CB0C(byte_200);
    v1 = 0;
    sub_803CB18();
    if ( !v2 && *(*(v0 + oToolkit_JoypadPtr) + 2) & 0x300 )
    {
        sub_803CB00(byte_200);
        v1 = 1;
    }
    return v1;
}


// 0x803cb78
char *sub_803CB78()
{
    char *result; // r0

    result = byte_200BC50;
    if ( byte_200BC50 == 7 )
        result = sub_803CAC4(7);
    return result;
}


// 0x803cb8c
signed int __fastcall sub_803CB8C(int a1, int a2, int a3, int a4)
{
    _BYTE **v4; // r10
    int v5; // r4
    signed int result; // r0

    v5 = a1;
    ZeroFillByWord(&byte_2008978, 8u, a3, a4);
    dword_200897C = v5;
    result = 28;
    **v4 = 28;
    return result;
}


// 0x803cba6
int cb_803CBA6()
{
    return (*(&off_803CBC0 + byte_2008978))();
}


// 0x803cbd0
void __fastcall __noreturn sub_803CBD0(int a1)
{
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    chatbox_8040818();
    sub_80015FC(21);
    sRender_08_setRenderingState(8000);
    renderInfo_8001788();
    v1 = renderInfo_80017A0();
    sub_8005F40(v1, v2, v3, v4);
    sub_8005F6C();
    v5 = sub_80027C4();
    copyData_803CC60(v5, v6, v7, v8);
}


// 0x803cc14
int sub_803CC14()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        sub_803CCB0(11);
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x803cc28
int sub_803CC28()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(8);
    if ( !v2 )
    {
        engine_setScreeneffect(12, 8);
        result = 12;
        *v0 = 12;
    }
    return result;
}


// 0x803cc40
int sub_803CC40()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        chatbox_8040818();
        sRender_08_setRenderingState(&byte_40);
        result = (*(v0 + 4))();
    }
    return result;
}


// 0x803cc60
int __fastcall __noreturn copyData_803CC60(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_800183C(v4, v5, v6, v7);
    decompAndCopyData(initRefs803CC88);
    return copyTiles();
}


// 0x803ccb0
void __fastcall sub_803CCB0(int a1)
{
    chatbox_runScript_803FD9C(dialogScript_873B9E0, a1);
}


// 0x803ccc0
signed int __fastcall sub_803CCC0(int a1, int a2, int a3, int a4)
{
    _BYTE **v4; // r10
    signed int result; // r0

    ZeroFillByWord(&byte_2009790, 8u, a3, a4);
    result = 32;
    **v4 = 32;
    return result;
}


// 0x803ccd6
int cb_803CCD6()
{
    return (*(&off_803CCF0 + byte_2009790))();
}


// 0x803ccfc
signed int __fastcall __noreturn sub_803CCFC(int a1)
{
    _BYTE *v1; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r1
    int v11; // r2
    signed int result; // r0

    chatbox_8040818();
    sub_80015FC(22);
    sRender_08_setRenderingState(8000);
    renderInfo_8001788();
    v2 = renderInfo_80017A0();
    sub_8005F40(v2, v3, v4, v5);
    sub_8005F6C();
    v6 = sub_80027C4();
    sub_803CD58(v6, v7, v8, v9);
    sub_80005F2(99, v10, v11);
    engine_setScreeneffect(8, 8);
    result = 4;
    *v1 = 4;
    return result;
}


// 0x803cd40
int sub_803CD40()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        sub_803CD64(10);
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x803cd54
void sub_803CD54()
{
    ;
}


// 0x803cd58
void __fastcall sub_803CD58(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_800183C(v4, v5, v6, v7);
}


// 0x803cd64
void __fastcall sub_803CD64(int a1)
{
    chatbox_runScript(dialogScript_873B9E0, a1);
}


// 0x803cd74
int __fastcall sub_803CD74(int a1, int a2, int a3, int a4)
{
    int v4; // r10

    ZeroFillByWord(*(v4 + oToolkit_Unk2003134_Ptr), byte_190, a3, a4);
    sub_803CDF8(117, 4);
    return sub_803CDF8(0, 1);
}


// 0x803cd98
signed int __fastcall sub_803CD98(signed int a1, int a2)
{
    Toolkit *toolkit; // r10
    _BYTE *v3; // r2
    signed int v4; // r6
    signed int v5; // r4
    signed int v6; // r3
    int v8; // [sp-4h] [bp-20h]
    signed int v9; // [sp+0h] [bp-1Ch]
    int v10; // [sp+4h] [bp-18h]
    int v11; // [sp+4h] [bp-18h]

    v9 = a1;
    v10 = a2;
    load_8006E3C(a1);
    v3 = toolkit->unk_2003134;
    v4 = 255;
    if ( v9 < 128 || v9 > 133 )
    {
        if ( v9 == 113 )
        {
            v4 = 2;
        }
        else if ( v9 >= 144 )
        {
            v4 = 9;
        }
    }
    else
    {
        v4 = v3[117];
    }
    v5 = v3[v9];
    v6 = 1;
    if ( v5 != v4 )
    {
        v6 = 0;
        v5 += v10;
        if ( v5 > v4 )
        {
            v6 = 2;
            LOBYTE(v5) = v4;
        }
    }
    v3[v9] = v5;
    v8 = v10;
    v11 = v6;
    if ( v9 == 113 )
        sub_813C3AC();
    sub_803CF3C(v11, v8);
    sub_803CFB0();
    return v11;
}


// 0x803cdf8
signed int __fastcall sub_803CDF8(signed int a1, int a2)
{
    int v2; // r10

    *(*(v2 + oToolkit_Unk2003134_Ptr) + a1) = 0;
    return sub_803CD98(a1, a2);
}


// 0x803ce08
signed int __fastcall sub_803CE08(int a1, int a2)
{
    int v2; // r10
    int v3; // r2
    int v4; // r4
    signed int v5; // r3
    unsigned __int8 v6; // vf

    v3 = *(v2 + oToolkit_Unk2003134_Ptr);
    v4 = *(v3 + a1);
    v5 = 1;
    if ( *(v3 + a1) )
    {
        v5 = 0;
        v6 = __OFSUB__(v4, a2);
        v4 -= a2;
        if ( (v4 < 0) ^ v6 )
        {
            v5 = 2;
            LOBYTE(v4) = v4 + a2;
        }
    }
    *(v3 + a1) = v4;
    return v5;
}


// 0x803ce28
int __fastcall sub_803CE28(signed int a1)
{
    int v1; // r10
    char v2; // zf
    int result; // r0
    signed int v4; // [sp+0h] [bp-8h]

    v4 = a1;
    sub_8006E50(a1);
    if ( v2 )
        result = *(*(v1 + oToolkit_Unk2003134_Ptr) + v4);
    else
        result = 0;
    return result;
}


// 0x803ce44
int sub_803CE44()
{
    int v0; // r10
    int result; // r0
    __int16 v2; // r7
    char v3; // zf
    int v4; // r0
    __int16 v5; // r7
    int v6; // r0
    int v7; // r0

    result = *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup);
    if ( result < 128 )
    {
        v2 = **(v0 + oToolkit_Unk2004334_Ptr) + sub_80137FE(0);
        sub_80137E6(0, 66, v2);
        result = TestEventFlagFromImmediate(23, 29);
        if ( !v3 )
        {
            sub_80137E6(0, 64, v2);
            result = getPETNaviSelect();
            if ( result )
            {
                v4 = getPETNaviSelect();
                v5 = sub_80137FE(v4);
                v6 = getPETNaviSelect();
                sub_80137E6(v6, 66, v5);
                v7 = getPETNaviSelect();
                result = sub_80137E6(v7, 64, v5);
            }
        }
    }
    return result;
}


// 0x803ceb8
int sub_803CEB8()
{
    int v0; // r0
    int v1; // r4
    __int16 v2; // r0

    v0 = getPETNaviSelect();
    v1 = v0;
    v2 = sub_80137FE(v0);
    sub_80137E6(v1, 64, v2);
    return 0;
}


// 0x803ced4
int sub_803CED4()
{
    int v0; // r10
    int v1; // r0
    int v2; // r4
    __int16 v3; // r0

    v1 = getPETNaviSelect();
    v2 = v1;
    v3 = sub_80137FE(v1);
    return sub_80137E6(v2, 66, **(v0 + oToolkit_Unk2004334_Ptr) + v3);
}


// 0x803cef8
int __fastcall sub_803CEF8(int a1)
{
    int v1; // r4
    __int16 v2; // r0

    v1 = a1;
    v2 = sub_80137FE(a1);
    return sub_80137E6(v1, 64, v2);
}


// 0x803cf10
int sub_803CF10()
{
    int v0; // r10
    int v1; // r4
    int v2; // r7

    v1 = getPETNaviSelect();
    v2 = **(v0 + oToolkit_Unk2004334_Ptr) + sub_80137FE(v1);
    if ( v2 < 1 )
        LOWORD(v2) = 1;
    return sub_80137E6(v1, 66, v2);
}


// 0x803cf3c
int __fastcall sub_803CF3C(int a1, int a2)
{
    int v2; // r4
    int v3; // r7
    char *v4; // r0
    int v5; // r6

    if ( v2 != 112 )
        JUMPOUT(&locret_803CFAE);
    v3 = 20 * a2;
    v4 = (sub_80137FE(0) + 20 * a2);
    if ( v4 > &byte_3E8 )
        v4 = &byte_3E8;
    v5 = v4;
    sub_80137E6(0, 62, v4);
    return sub_803CF74(v5, v3);
}


// 0x803cf74
int __fastcall sub_803CF74(int a1, int a2)
{
    int v2; // r7
    int v3; // r4
    int v4; // r7
    int result; // r0

    v2 = a2;
    v3 = getPETNaviSelect();
    sub_813C3AC();
    v4 = v2 + sub_80137FE(v3);
    sub_80137E6(v3, 64, v4);
    result = sub_80137FE(v3);
    if ( result < v4 )
        result = sub_80137E6(v3, 64, result);
    return result;
}


// 0x803cfb0
int sub_803CFB0()
{
    int v0; // r10
    int v1; // r0
    char v2; // r6
    int v3; // r0

    v1 = *(*(v0 + oToolkit_Unk2003134_Ptr) + 114)
         + 2 * *(*(v0 + oToolkit_Unk2003134_Ptr) + 115)
         + 3 * *(*(v0 + oToolkit_Unk2003134_Ptr) + 116)
         + 4;
    if ( v1 > 99 )
        LOBYTE(v1) = 99;
    v2 = v1;
    navicust_801379E(0, 9, v1);
    v3 = getPETNaviSelect();
    return navicust_801379E(v3, 9, v2);
}


// 0x803cff8
signed int sub_803CFF8()
{
    int v0; // r10
    int v1; // r0
    char v2; // zf
    int v3; // r2
    signed int v4; // r1
    signed int v5; // r3
    signed int result; // r0

    sub_8006F78();
    if ( !v2 )
        return 1;
    v3 = *(v0 + oToolkit_GameStatePtr);
    v4 = *(v3 + oGameState_ProtectedZenny);
    v5 = 1;
    if ( v4 != 999999 )
    {
        v5 = 0;
        v4 += v1;
        if ( v4 > 999999 )
        {
            v5 = 2;
            v4 = 999999;
        }
    }
    *(v3 + oGameState_ProtectedZenny) = v4;
    result = v5;
    sub_8006F54();
    return result;
}


// 0x803d02c
void sub_803D02C()
{
    int v0; // r10
    int v1; // r0
    char v2; // zf

    sub_8006F78();
    if ( v2 )
    {
        *(*(v0 + oToolkit_GameStatePtr) + oGameState_ProtectedZenny) = v1;
        sub_8006F54();
    }
}


// 0x803d040
signed int sub_803D040()
{
    int v0; // r10
    int v1; // r0
    char v2; // zf
    int v3; // r2
    int v4; // r1
    signed int v5; // r3
    unsigned __int8 v6; // vf
    signed int result; // r0

    sub_8006F78();
    if ( !v2 )
        return 2;
    v3 = *(v0 + oToolkit_GameStatePtr);
    v4 = *(v3 + oGameState_ProtectedZenny);
    v5 = 1;
    if ( v4 )
    {
        v5 = 0;
        v6 = __OFSUB__(v4, v1);
        v4 -= v1;
        if ( (v4 < 0) ^ v6 )
        {
            v5 = 2;
            v4 += v1;
        }
    }
    *(v3 + oGameState_ProtectedZenny) = v4;
    result = v5;
    sub_8006F54();
    return result;
}


// 0x803d06c
int sub_803D06C()
{
    int v0; // r10
    char v1; // zf
    int result; // r0

    sub_8006F78();
    if ( v1 )
        result = *(*(v0 + oToolkit_GameStatePtr) + oGameState_ProtectedZenny);
    else
        result = 0;
    return result;
}


// 0x803d080
signed int sub_803D080()
{
    int v0; // r10
    int v1; // r0
    char v2; // zf
    int v3; // r2
    signed int v4; // r1
    signed int v5; // r3
    signed int result; // r0

    sub_8006FD0();
    if ( !v2 )
        return 1;
    v3 = *(v0 + oToolkit_GameStatePtr);
    v4 = *(v3 + oGameState_ProtectedBugfrags);
    v5 = 1;
    if ( v4 != 9999 )
    {
        v5 = 0;
        v4 += v1;
        if ( v4 > 9999 )
        {
            v5 = 2;
            v4 = 9999;
        }
    }
    *(v3 + oGameState_ProtectedBugfrags) = v4;
    result = v5;
    sub_8006FAC();
    return result;
}


// 0x803d0b4
void sub_803D0B4()
{
    int v0; // r10
    int v1; // r0
    char v2; // zf

    sub_8006FD0();
    if ( v2 )
    {
        *(*(v0 + oToolkit_GameStatePtr) + oGameState_ProtectedBugfrags) = v1;
        sub_8006FAC();
    }
}


// 0x803d0c8
signed int sub_803D0C8()
{
    int v0; // r10
    int v1; // r0
    char v2; // zf
    int v3; // r2
    int v4; // r1
    signed int v5; // r3
    unsigned __int8 v6; // vf
    signed int result; // r0

    sub_8006FD0();
    if ( !v2 )
        return 2;
    v3 = *(v0 + oToolkit_GameStatePtr);
    v4 = *(v3 + oGameState_ProtectedBugfrags);
    v5 = 1;
    if ( v4 )
    {
        v5 = 0;
        v6 = __OFSUB__(v4, v1);
        v4 -= v1;
        if ( (v4 < 0) ^ v6 )
        {
            v5 = 2;
            v4 += v1;
        }
    }
    *(v3 + oGameState_ProtectedBugfrags) = v4;
    result = v5;
    sub_8006FAC();
    return result;
}


// 0x803d0f4
int sub_803D0F4()
{
    int v0; // r10
    char v1; // zf
    int result; // r0

    sub_8006FD0();
    if ( v1 )
        result = *(*(v0 + oToolkit_GameStatePtr) + oGameState_ProtectedBugfrags);
    else
        result = 0;
    return result;
}


// 0x803d108
signed int __fastcall sub_803D108(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r0

    v3 = a3;
    v4 = sub_803D148(a1, a2);
    return sub_803CD98(v4, v3);
}


// 0x803d118
signed int __fastcall sub_803D118(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r0

    v3 = a3;
    v4 = sub_803D148(a1, a2);
    return sub_803CDF8(v4, v3);
}


// 0x803d128
signed int __fastcall sub_803D128(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r0

    v3 = a3;
    v4 = sub_803D148(a1, a2);
    return sub_803CE08(v4, v3);
}


// 0x803d138
int __fastcall sub_803D138(int a1, int a2)
{
    int v2; // r0

    v2 = sub_803D148(a1, a2);
    return sub_803CE28(v2);
}


// 0x803d148
int __fastcall sub_803D148(int a1, int a2)
{
    int v2; // r6
    int v3; // r4
    int v4; // r5

    v2 = 0;
    v3 = a1 - 144;
    v4 = a2;
    while ( *(sub_813B780(v3 + v2) + 3) != v4 )
    {
        if ( ++v2 >= 4 )
            return 0;
    }
    return v3 + v2 + 144;
}


// 0x803d170
int __fastcall sub_803D170(int a1)
{
    int v1; // r0

    v1 = sub_803D180(a1);
    return sub_803CE28(v1);
}


// 0x803d180
int __fastcall sub_803D180(int a1)
{
    int v1; // r6
    int v2; // r4

    v1 = 0;
    v2 = a1 - 144;
    while ( !*(sub_813B780(v2 + v1) + 3) )
    {
        if ( ++v1 >= 4 )
            return 0;
    }
    return v2 + v1 + 144;
}


// 0x803d1a8
// () -> void
signed int __fastcall sub_803D1A8(int a1, int a2, int a3, int a4)
{
    _BYTE **v4; // r10
    signed int result; // r0

    ZeroFillByWord(&byte_2011800, 8u, a3, a4);
    byte_2011805 = 1;
    result = 16;
    **v4 = 16;
    return result;
}


// 0x803d1ca
int cb_803D1CA()
{
    (*(&off_803D1E4 + byte_2011800))();
    return sub_803E938();
}


// 0x803d1fc
void __noreturn sub_803D1FC()
{
    int v0; // r5
    int v1; // r4
    char *v2; // r0
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3

    sub_80015FC(14);
    v1 = 12;
    v2 = &byte_40;
    if ( *(v0 + 5) )
    {
        v1 = 4;
        v2 = &loc_C0;
    }
    sRender_08_setRenderingState(v2);
    renderInfo_8001788();
    renderInfo_80017A0();
    v3 = engine_setScreeneffect(v1, 255);
    sub_8005F40(v3, v4, v5, v6);
    sub_8005F6C();
    v7 = sub_80027C4();
    copyTileData_803D2B8(v7, v8, v9, v10);
}


// 0x803d24c
signed int sub_803D24C()
{
    _BYTE *v0; // r5
    int v1; // r0
    signed int result; // r0

    sRender_08_setRenderingState(8000);
    v1 = 8;
    if ( v0[5] )
        v1 = 0;
    engine_setScreeneffect(v1, 8);
    v0[4] = -76;
    result = 8;
    *v0 = 8;
    return result;
}


// 0x803d274
int sub_803D274()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        result = v0[4] - 1;
        v0[4] = result;
        if ( result <= 0 )
        {
            engine_setScreeneffect(12, 16);
            result = 12;
            *v0 = 12;
        }
    }
    return result;
}


// 0x803d298
int sub_803D298()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        result = 16;
        *v0 = 16;
    }
    return result;
}


// 0x803d2a6
int sub_803D2A6()
{
    int v0; // r0
    int v1; // r1
    int v2; // r2
    int v3; // r3

    v0 = sRender_08_setRenderingState(&byte_40);
    return sub_802F530(v0, v1, v2, v3);
}


// 0x803d2b8
int __fastcall __noreturn copyTileData_803D2B8(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_800183C(v4, v5, v6, v7);
    decompAndCopyData(initRefs803D2F0);
    copyTiles();
    return copyTiles();
}


// 0x803dcd8
int __fastcall sub_803DCD8(int result, __int16 a2, __int16 a3)
{
    *&sCamera.pad_6A[2] = result;
    *&sCamera.pad_59[1] = a2;
    *sCamera.pad_5E = a3;
    return result;
}


// 0x803dce8
int __fastcall sub_803DCE8(u32 a1, int a2, u8 a3, u8 a4)
{
    int v4; // r1

    sCamera.unk_70 = a1;
    sCamera.unk_74 = a1;
    sCamera.unk_53 = a3;
    sCamera.unk_52 = a4;
    v4 = 4 * a2;
    sCamera.unk_84 = (&off_803DC78)[v4];
    sCamera.unk_88 = *(&off_803DC78 + v4 + 1);
    sCamera.unk_8C = (&off_803DC78)[v4 + 1];
    sCamera.unk_50 = *(&off_803DC78 + 4 * v4 + 12);
    sCamera.unk_51 = sCamera.unk_50;
    sCamera.unk_55 = 0;
    sCamera.unk_58 = 0;
    sCamera.unk_68 = 0;
    sCamera.unk_60 = -1;
    sCamera.unk_62 = -1;
    sCamera.unk_64 = -1;
    sCamera.unk_66 = -1;
    ZeroFillByByte(sCamera.unk_88, a1);
    return ZeroFillByByte(sCamera.unk_8C, sCamera.unk_74);
}


// 0x803dd30
int __fastcall sub_803DD30(int a1)
{
    int v1; // r1
    int result; // r0

    v1 = eStruct200BC30_getJumpOffset00();
    if ( !v1 || (result = 0, v1 != 4) && (result = 1, v1 != 8) )
        result = dword_2009A18 & 3;
    return result;
}


// 0x803dd60
int __fastcall sub_803DD60(int a1)
{
    int v1; // r1
    int result; // r0

    v1 = eStruct200BC30_getJumpOffset00();
    if ( v1 )
    {
        result = 0;
        if ( v1 == 4 )
            return result;
        if ( v1 == 8 )
            return 1;
    }
    result = dword_2009A18 & 3;
    if ( dword_2009A18 & 3 )
        return 1;
    return result;
}


// 0x803dd8c
int sub_803DD8C()
{
    int result; // r0

    sCamera.unk_50 = 8;
    sCamera.unk_51 = 8;
    sCamera.unk_5C = 16;
    result = 0;
    sCamera.unk_58 = 0;
    return result;
}


// 0x803dda4
int sub_803DDA4()
{
    int result; // r0

    sCamera.unk_50 = 16;
    sCamera.unk_51 = 12;
    sCamera.unk_5C = 16;
    result = 0;
    sCamera.unk_58 = 0;
    return result;
}


// 0x803ddc0
signed int sub_803DDC0()
{
    signed int result; // r0

    sCamera.unk_50 = 8;
    result = 16;
    sCamera.unk_5C = 16;
    return result;
}


// 0x803ddd4
signed int sub_803DDD4()
{
    signed int v0; // r1

    v0 = 1;
    if ( *sCamera.pad_5E >= 2 )
        v0 = 0;
    return v0;
}


// 0x803ddec
signed int sub_803DDEC()
{
    signed int v0; // r4

    v0 = 1;
    if ( sCamera.unk_51 == 8 && sCamera.unk_50 == 8 )
    {
        if ( sub_803DFAC(dword_2009A18) & 0x7F )
        {
            if ( sCamera.unk_5C >= 8 )
                return v0;
            return 0;
        }
        if ( !sCamera.unk_5C )
            return 0;
    }
    return v0;
}


// 0x803de24
signed int sub_803DE24()
{
    signed int v0; // r4

    v0 = 1;
    if ( sCamera.unk_51 == 12 && sCamera.unk_50 == 16 )
    {
        if ( sub_803DFAC(dword_2009A18) & 0x7F )
        {
            if ( sCamera.unk_5C >= 8 )
                return v0;
            return 0;
        }
        if ( !sCamera.unk_5C )
            return 0;
    }
    return v0;
}


// 0x803de5c
u32 *sub_803DE5C()
{
    u32 *result; // r0

    result = &sJoystick.unk_14;
    sJoystick.unk_14 = 1;
    return result;
}


// 0x803de68
u32 *sub_803DE68()
{
    u32 *result; // r0

    result = &sJoystick.unk_14;
    sJoystick.unk_14 = 0;
    return result;
}


// 0x803de72
u32 sub_803DE72()
{
    u32 result; // r0

    result = sJoystick.unk_14;
    if ( sJoystick.unk_14 )
        result = sub_81445F8();
    return result;
}


// 0x803de88
void __fastcall sub_803DE88(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r2
    int v6; // r3
    int v7; // r2
    int v8; // r3

    v4 = a1;
    ZeroFillByHalfword(&sCamera.unk_50, 0x58u, a3, a4);
    ZeroFillByHalfword(&byte_200DD10, 0x10u, v5, v6);
    ZeroFillByHalfword(&unk_2009480, 0x40u, v7, v8);
    dword_2009A28 = v4;
}


// 0x803deac
int sub_803DEAC()
{
    return sub_8144240();
}


// 0x803deb4
signed int sub_803DEB4()
{
    signed int v0; // r6
    int v1; // r0
    char v2; // zf
    int v3; // r0
    int v5; // [sp-4h] [bp-18h]

    v0 = 1;
    dword_2009A18 = sub_8144250(sCamera.pad_56, &byte_200DD10, &unk_2009480);
    v5 = dword_2009A18;
    if ( sub_8144CE0() == 5 )
        return 4;
    v1 = sub_8144CE0();
    if ( v1 == 1 )
    {
        TestEventFlagFromImmediate(23, 47);
        if ( v2 || !sCamera.unk_5C )
            sCamera.pad_56[0] = 1;
        else
            --sCamera.unk_5C;
    }
    else if ( v1 == 2 )
    {
        if ( sCamera.pad_56[1] == 2 )
        {
            sCamera.pad_56[1] = -1;
        }
        else
        {
            sCamera.pad_56[1] = 2;
            sCamera.pad_56[0] = 1;
        }
    }
    sCamera.pad_54[0] = (v5 & 0x1C) >> 2;
    if ( v5 & 0x20 )
    {
        if ( ((v5 & 0x1Cu) >> 2) < 2 || !(v5 & 0x40) )
        {
            if ( v5 & 0x200000 )
                v0 = 4;
            goto LABEL_26;
        }
LABEL_18:
        v0 = sub_803E018(v5);
        if ( v0 == 2 )
        {
            v3 = sub_803E200();
            if ( v3 )
            {
                if ( v3 == 2 )
                {
                    v0 = 32;
                }
                else if ( v3 == 32 )
                {
                    v0 = 4;
                }
                else
                {
                    v0 = 8;
                }
            }
        }
        goto LABEL_26;
    }
    if ( v5 & 0x40 )
        goto LABEL_18;
LABEL_26:
    if ( v0 == 4 && sCamera.unk_55 )
        v0 = 4;
    return v0;
}


// 0x803dfac
signed int __fastcall sub_803DFAC(int a1)
{
    signed int v1; // r6

    v1 = 0;
    if ( a1 & 0x100 )
        v1 = 128;
    if ( a1 & 0x400000 )
        v1 |= 0x40u;
    if ( a1 & 0x20000 )
        v1 |= 2u;
    if ( a1 & 0x10000 )
        v1 |= 1u;
    if ( a1 & 0x40000 )
        v1 |= 4u;
    if ( a1 & 0x80000 )
        v1 |= 8u;
    if ( a1 & 0x100000 )
        v1 |= 0x10u;
    if ( a1 & 0x200000 )
        v1 |= 0x20u;
    return v1;
}


// 0x803e018
signed int __fastcall sub_803E018(int a1)
{
    int v1; // ST00_4
    char v2; // r0
    signed int v3; // r6
    signed __int64 v4; // r0

    v1 = a1;
    ho_803E114();
    v2 = sub_803DFAC(v1);
    if ( v2 & 0x7F )
        return 4;
    if ( v2 & 0x80 )
        return 8;
    v3 = 2;
    v4 = sub_803E7A4(4);
    if ( !HIDWORD(v4) )
        sub_803E7D8(v4);
    return v3;
}


// 0x803e114
int ho_803E114()
{
    int v0; // r8

    (*(&jt_803E138 + sCamera.unk_50))();
    return v0;
}


// 0x803e154
signed int sub_803E154()
{
    int v0; // r5
    int v1; // r7
    signed int result; // r0

    *(v0 + 4) = *(v1 + 28);
    *(v0 + 2) = *(v1 + 10);
    *(v0 + 12) = *(v1 + 68);
    *(v0 + 8) = *(v1 + 32);
    result = 96;
    *v0 = 96;
    return result;
}


// 0x803e16c
int sub_803E16C()
{
    int v0; // r7

    return (*(&off_803E180 + *(v0 + 2)))();
}


// 0x803e198
int sub_803E198()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    signed int v3; // r2

    result = *(v1 + 52);
    v3 = 0;
    do
    {
        *(v0 + v3) = *(result + v3);
        v3 += 2;
    }
    while ( v3 < 16 );
    return result;
}


// 0x803e1ac
int sub_803E1AC()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    signed int v3; // r2

    result = *(v1 + 52);
    v3 = 0;
    do
    {
        *(v0 + v3) = *(result + v3);
        v3 += 2;
    }
    while ( v3 < 16 );
    return result;
}


// 0x803e1c0
signed int sub_803E1C0()
{
    int v0; // r5
    int v1; // r7
    signed int result; // r0

    *(v0 + 2) = *(v1 + 10);
    *(v0 + 4) = *(v1 + 28);
    result = 98;
    *v0 = 98;
    return result;
}


// 0x803e1d0
signed int sub_803E1D0()
{
    int v0; // r5
    int v1; // r7
    signed int result; // r0

    *(v0 + 2) = *(v1 + 10);
    *(v0 + 4) = *(v1 + 28);
    result = 98;
    *(v0 + 8) = 98;
    return result;
}


// 0x803e1e0
int sub_803E1E0()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int result; // r0
    signed int v4; // r2

    v2 = *(v1 + 84) - 1;
    *(v1 + 84) = v2;
    if ( !v2 )
        *v1 = 4;
    result = *(v1 + 52);
    v4 = 0;
    do
    {
        *(v0 + v4) = 0;
        v4 += 2;
    }
    while ( v4 < 16 );
    return result;
}


// 0x803e200
int sub_803E200()
{
    sCamera.unk_55 = 1;
    return (*(&off_803E21C + sCamera.unk_51))();
}


// 0x803e234
int sub_803E234()
{
    int v0; // r6

    return (*(&off_803E248 + *(v0 + 2)))();
}


// 0x803e260
int sub_803E260()
{
    return 0;
}


// 0x803e268
int sub_803E268()
{
    return (*(&off_803E280 + byte_200F361))();
}


// 0x803e288
signed int sub_803E288()
{
    int v0; // r4
    unsigned __int16 *v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int v4; // r3
    unsigned __int8 v5; // zf
    char v6; // nf
    unsigned __int8 v7; // vf
    unsigned __int16 *v8; // r4
    int v9; // r2
    int v10; // r0
    unsigned __int16 *v11; // r4
    int v12; // r2
    int v13; // r1
    int v14; // r6
    __int16 v15; // r0
    int v16; // r3
    unsigned __int16 *v17; // r4
    int v18; // r2
    int v19; // r0
    int v21; // [sp+4h] [bp-10h]
    _BYTE *v22; // [sp+Ch] [bp-8h]

    v21 = v0;
    v22 = v2;
    sub_803E88C();
    if ( (v6 ^ v7) | v5 )
    {
        v8 = v1;
        v9 = v3;
        do
        {
            v10 = *v8;
            if ( v10 == 98 )
            {
                *v2 = 8;
                sub_803E89C();
                return 0;
            }
            if ( v10 != 96 )
                return 1;
            ++v8;
            v7 = __OFSUB__(v9--, 1);
        }
        while ( !(((v9 < 0) ^ v7) | (v9 == 0)) );
        v11 = v1;
        v12 = v3;
        v13 = v4;
        v14 = 0;
        while ( 1 )
        {
            v15 = *(v11 + v13);
            v16 = (*(&dword_803E344 + v14) & v15);
            if ( v16 != 0x2000 && v16 != 4096 )
                break;
            ++v11;
            v14 += 2;
            v7 = __OFSUB__(v12--, 1);
            if ( ((v12 < 0) ^ v7) | (v12 == 0) )
            {
                *(v21 + 4) = v15;
                v17 = v1;
                v18 = v3;
                while ( 1 )
                {
                    v19 = v17[8] | (v17[12] << 16);
                    if ( v19 != *(v22 + 7) && (v17[8] | (v17[12] << 16)) != 1112687178 )
                        break;
                    ++v17;
                    v7 = __OFSUB__(v18--, 1);
                    if ( ((v18 < 0) ^ v7) | (v18 == 0) )
                    {
                        *(v22 + 7) = 1;
                        return 0;
                    }
                }
                return 1;
            }
        }
    }
    return 1;
}


// 0x803e34c
signed int sub_803E34C()
{
    unsigned __int16 *v0; // r5
    int v1; // r6
    int v2; // r7
    unsigned __int16 *v3; // r4
    int v4; // r2
    int v5; // r0
    unsigned __int8 v6; // vf
    unsigned __int16 *v7; // r4
    int v8; // r2
    unsigned __int16 *v9; // r4
    int v10; // r2
    int v11; // r0
    char v12; // r0

    v3 = v0;
    v4 = v2;
    while ( 1 )
    {
        v5 = *v3;
        if ( v5 == 98 )
            break;
        if ( v5 != 96 )
            return 1;
        ++v3;
        v6 = __OFSUB__(v4--, 1);
        if ( ((v4 < 0) ^ v6) | (v4 == 0) )
        {
            v7 = v0;
            v8 = v2;
            while ( v7[4] & 0x1010 )
            {
                ++v7;
                v6 = __OFSUB__(v8--, 1);
                if ( ((v8 < 0) ^ v6) | (v8 == 0) )
                {
                    v9 = v0;
                    v10 = v2;
                    while ( 1 )
                    {
                        v11 = v9[8] | (v9[12] << 16);
                        if ( v11 != *(v1 + 28) && (v9[8] | (v9[12] << 16)) != 1112687178 )
                            break;
                        ++v9;
                        v6 = __OFSUB__(v10--, 1);
                        if ( ((v10 < 0) ^ v6) | (v10 == 0) )
                        {
                            *(v1 + 32) = v0[17] | (v0[21] << 16);
                            *(v1 + 64) = v0[25] | (v0[29] << 16);
                            v12 = *(v1 + 1) + 4;
                            *(v1 + 1) = v12;
                            *v1 = v12;
                            *(v1 + 14) = 2;
                            return 0;
                        }
                    }
                    return 1;
                }
            }
            return 1;
        }
    }
    *v1 = 8;
    sub_803E89C();
    return 0;
}


// 0x803e40c
int sub_803E40C()
{
    return (*(&off_803E424 + byte_200F361))();
}


// 0x803e428
signed int sub_803E428()
{
    int v0; // r5
    int v1; // r6
    int v2; // r7
    int v3; // r4
    int v4; // r7
    int v5; // r0
    int v6; // r4
    int v7; // r2
    int v8; // r1
    int v9; // r2
    char v10; // zf
    int v11; // r0
    int v12; // r4
    int v13; // r2
    int v14; // r1
    int v15; // r2
    int v16; // r3
    int v17; // r2
    int v18; // r1
    int v19; // r2
    int v20; // r0
    int v21; // r1
    int v22; // r3
    int v23; // r0
    int v24; // r1
    int v25; // r3
    int v27; // [sp+0h] [bp-28h]

    v27 = v2;
    v3 = 0;
    v4 = 0;
    while ( 1 )
    {
        v5 = sub_8144D04(v3);
        if ( v5 == 1 )
            ++v4;
        if ( !v5 )
            return 1;
        if ( ++v3 >= v27 )
        {
            if ( v4 == 2 )
            {
                v6 = v0;
                v7 = 0;
                while ( 1 )
                {
                    sub_803E78C(v7 + 1);
                    if ( !v10 )
                    {
                        v11 = *(v6 + v8);
                        if ( v11 == 98 )
                        {
                            *v1 = 8;
                            sub_803E89C();
                            goto LABEL_17;
                        }
                        if ( v11 != 96 )
                            break;
                    }
                    v6 += 2;
                    v7 = v9 + 1;
                    if ( v7 >= v27 )
                    {
                        v12 = v0;
                        v13 = 0;
                        while ( 1 )
                        {
                            sub_803E78C(v13 + 1);
                            if ( !v10 && (*(v12 + v14) | (*(v12 + v14 + v16) << 16)) != *(v1 + 28) )
                                break;
                            v12 += 2;
                            v13 = v15 + 1;
                            if ( v13 >= v27 )
                            {
                                v6 = v0;
                                v17 = 0;
LABEL_17:
                                while ( 1 )
                                {
                                    sub_803E78C(v17 + 1);
                                    if ( !v10 && *(v6 + v18) != *(v1 + 10) )
                                        break;
                                    v6 += 2;
                                    v17 = v19 + 1;
                                    if ( v17 >= v27 )
                                    {
                                        v20 = sub_803E8B4(v0);
                                        *(v1 + 32) = *(v20 + v21) | (*(v20 + v21 + v22) << 16);
                                        v23 = sub_803E8B4(v0);
                                        *(v1 + 64) = *(v23 + v24) | (*(v23 + v24 + v25) << 16);
                                        LOBYTE(v23) = *(v1 + 1) + 4;
                                        *(v1 + 1) = v23;
                                        *v1 = v23;
                                        *(v1 + 14) = 2;
                                        *(v1 + 28) = 0;
                                        *(v1 + 48) = 0;
                                        return 0;
                                    }
                                }
                                return 2;
                            }
                        }
                        return 1;
                    }
                }
            }
            return 1;
        }
    }
}


// 0x803e548
int sub_803E548()
{
    return (*(&off_803E560 + byte_200F361))();
}


// 0x803e564
int sub_803E564()
{
    int v0; // r6

    return (*(&off_803E578 + *(v0 + 2)))();
}


// 0x803e590
int sub_803E590()
{
    return 0;
}


// 0x803e598
signed int sub_803E598()
{
    int v0; // r5
    int v1; // r6
    _WORD *v2; // r5
    int v3; // r2
    int v4; // r1
    int v5; // r7
    int v6; // r5
    int v7; // r3
    unsigned __int8 v8; // vf

    if ( eStruct200F360 )
        return 0;
    v2 = (v0 + 2);
    if ( !byte_200F362 )
    {
        if ( *v2 != 97 )
            return 0;
        byte_200F362 = 1;
        dword_200F368 = 0;
        *(v1 + 40) = 0;
    }
    v3 = *(v1 + 56);
    v4 = 14;
    v5 = *(v1 + 40);
    v6 = (v2 + 4);
    do
    {
        sub_803E608(4, v4, v3);
        v6 += v7;
        v5 += 2;
        v8 = __OFSUB__(v4, 2);
        v4 -= 2;
    }
    while ( !(((v4 < 0) ^ v8) | (v4 == 0)) );
    *(v1 + 40) = v5;
    if ( v5 >= *(v1 + 32) )
    {
        if ( *(v1 + 64) != dword_200F368 )
        {
            *(v1 + 1) = 8;
            *(v1 + 14) = 4;
            return 32;
        }
        *(v1 + 1) = 8;
        *(v1 + 14) = 4;
    }
    return 0;
}


// 0x803e608
void __fastcall __spoils<R2,R3> sub_803E608(int a1, int a2, int a3)
{
    int v3; // r4
    unsigned __int8 *v4; // r5
    int v5; // r6
    int v6; // r7
    signed int v7; // r3
    int v8; // r0
    int v9; // r0

    v7 = 0;
    if ( !*(v5 + 40) )
        v8 = *v4;
    do
    {
        v9 = v4[v7];
        *(a3 + v6) = v9;
        *(v3 + 8) += v9;
        ++v6;
        ++v7;
    }
    while ( v7 < 2 );
}


// 0x803e628
signed int __fastcall sub_803E628(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    _WORD *v4; // r5
    int v5; // r0
    signed int v7; // r4
    int v8; // r2
    int v9; // r1
    int v10; // r7
    int v11; // r5
    int v12; // r3
    unsigned __int8 v13; // vf
    signed int v14; // r2

    v4 = sub_803E8B4(v2);
    v5 = byte_200F362;
    if ( !byte_200F362 )
    {
        if ( *v4 != 97 )
            return 0;
        byte_200F362 = 1;
        v5 = 0;
        dword_200F368 = 0;
        *(v3 + 40) = 0;
    }
    v7 = 56;
    if ( sub_803DD30(v5) )
        v7 = 60;
    v8 = *(v7 + v3);
    v9 = 14;
    v10 = *(v3 + 40);
    v11 = (v4 + 4);
    do
    {
        sub_803E608(4, v9, v8);
        v11 += v12;
        v10 += 2;
        v13 = __OFSUB__(v9, 2);
        v9 -= 2;
    }
    while ( !(((v9 < 0) ^ v13) | (v9 == 0)) );
    v14 = 0;
    *(v3 + 40) = v10;
    if ( v10 >= *(v3 + 32) )
    {
        if ( *(v3 + 64) != dword_200F368 )
            v14 = 32;
        *(v3 + 1) = 8;
        *(v3 + 14) = 4;
    }
    return v14;
}


// 0x803e69c
void sub_803E69C()
{
    JUMPOUT(&loc_803E6A4);
}


// 0x803e6a2
int sub_803E6A2()
{
    int v0; // r5
    _DWORD *v1; // r6
    int v2; // r1
    int v3; // r2
    char v4; // zf
    _WORD *v5; // r3
    _WORD *v6; // r4
    int v7; // r7
    unsigned __int8 v8; // vf
    int v10; // [sp+0h] [bp-24h]
    int v11; // [sp+4h] [bp-20h]
    int v12; // [sp+8h] [bp-1Ch]

    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
        sub_803E78C(++v10);
        if ( !v4 )
        {
            if ( v3 == 4 )
                v11 = v2;
            else
                v12 = v2;
        }
    }
    while ( v2 + 2 < 8 );
    v5 = v1[14];
    v6 = v1[15];
    v7 = v1[8];
    do
    {
        *v5 = *(v0 + v11);
        *v6 = *(v0 + v12);
        v0 += 8;
        ++v5;
        ++v6;
        v8 = __OFSUB__(v7, 2);
        v7 -= 2;
    }
    while ( !(((v7 < 0) ^ v8) | (v7 == 0)) );
    return 0;
}


// 0x803e6f8
int sub_803E6F8()
{
    int v0; // r5
    int v1; // r6
    int v2; // r7
    _WORD *v3; // r2
    char v4; // zf
    unsigned __int8 v5; // vf
    int v7; // [sp+0h] [bp-14h]

    v7 = 0;
    if ( *(v1 + 8) )
    {
LABEL_7:
        if ( *(v1 + 12) )
            --*(v1 + 12);
    }
    else
    {
        while ( 1 )
        {
            sub_803E78C(v7 + 1);
            if ( !v4 && *v3 != 98 )
                break;
            ++v7;
            v0 += 2;
            v5 = __OFSUB__(v2--, 1);
            if ( ((v2 < 0) ^ v5) | (v2 == 0) )
            {
                *(v1 + 8) = 1;
                goto LABEL_7;
            }
        }
    }
    return 0;
}


// 0x803e740
int sub_803E740()
{
    int v0; // r5
    int v1; // r6
    int v2; // r7
    int v3; // r2
    char v4; // zf
    unsigned __int8 v5; // vf
    int v7; // [sp+0h] [bp-14h]

    v7 = 0;
    if ( *(v1 + 8) )
    {
LABEL_7:
        if ( *(v1 + 12) )
            --*(v1 + 12);
    }
    else
    {
        while ( 1 )
        {
            sub_803E78C(v7 + 1);
            if ( !v4 && *(v3 + 32) != 98 )
                break;
            ++v7;
            v0 += 2;
            v5 = __OFSUB__(v2--, 1);
            if ( ((v2 < 0) ^ v5) | (v2 == 0) )
            {
                *(v1 + 8) = 1;
                goto LABEL_7;
            }
        }
    }
    return 0;
}


// 0x803e78c
void __fastcall sub_803E78C(int a1)
{
    sub_8144D04(a1 - 1);
}


// 0x803e7a4
signed __int64 __fastcall sub_803E7A4(int a1)
{
    int v1; // r7
    int v2; // r0
    signed __int64 result; // r0

    v1 = a1;
    v2 = *(&dword_803E7D4 + sub_803DD30(a1));
    if ( v2 == 255 )
        result = 0x100000000LL;
    else
        result = *&byte_2009940[8 * v1 + v2];
    return result;
}


// 0x803e7d8
int __fastcall sub_803E7D8(int result)
{
    _WORD *v1; // r7
    int v2; // r1

    if ( result != v1[10] )
    {
        v1[10] = result;
        v1[12] = 0;
    }
    v2 = v1[12];
    if ( v2 == 8 )
    {
        if ( v1[9] )
        {
            v1[9] = v1[8];
            v1[8] = result;
            result = 0;
            v1[11] = 0;
        }
        else
        {
            v1[11] = result;
            v1[8] = result;
            v1[9] = result;
        }
    }
    else
    {
        v1[12] = v2 + 1;
    }
    return result;
}


// 0x803e80c
void __spoils<R2,R3,R12> sub_803E80C()
{
    _BYTE *v0; // r6
    int v1; // r10
    int v2; // r2
    char v3; // zf

    sub_800A7D0();
    if ( !v3 && **(v1 + oToolkit_S2034880_Ptr) == 4 && !v2 )
        *v0 = 12;
}


// 0x803e828
void __fastcall __spoils<R2> sub_803E828(int a1, int a2, signed int a3)
{
    int v3; // r5
    signed int v4; // r1
    signed int v5; // r0

    v4 = *(v3 + 14);
    if ( v4 > 5 || (a3 = *(v3 + 15), a3 > 5) )
    {
        v5 = *(v3 + 14);
        if ( v4 < a3 )
            v5 = a3;
        dword_2009A24 = v5 + 8;
        sCamera.unk_50 = 12;
    }
}


// 0x803e850
void __fastcall __spoils<R2> sub_803E850(int a1, int a2, signed int a3)
{
    int v3; // r5
    signed int v4; // r1
    signed int v5; // r0
    int v6; // r0

    v4 = *(v3 + 14);
    if ( v4 > 5 || (a3 = *(v3 + 15), a3 > 5) )
    {
        v5 = *(v3 + 14);
        if ( v4 < a3 )
            v5 = a3;
        v6 = v5 + 8;
        if ( v6 < dword_2009A24 )
            v6 = dword_2009A24;
        dword_2009A24 = v6;
        sCamera.unk_50 = 12;
    }
}


// 0x803e880
int __fastcall sub_803E880(int result)
{
    *result = 8;
    *(result + 12) = 16;
    return result;
}


// 0x803e88c
int sub_803E88C()
{
    return sCamera.pad_54[0];
}


// 0x803e89c
int sub_803E89C()
{
    *sCamera.pad_5E = 0;
    sCamera.unk_51 = 8;
    return sub_803E880(&sCamera.unk_50);
}


// 0x803e8b4
int __fastcall sub_803E8B4(int a1)
{
    int v1; // r7
    int v2; // r6
    int v3; // r0
    char v4; // zf

    v1 = a1;
    v2 = 1;
    while ( 1 )
    {
        sub_803E78C(v2);
        if ( !v4 && sub_803DD30(v3) != v2 - 1 )
            break;
        if ( ++v2 > 4 )
            return v1;
    }
    v1 += 2 * (v2 - 1);
    return v1;
}


// 0x803e8dc
u32 sub_803E8DC()
{
    return sCamera.unk_74;
}


// 0x803e8e4
int sub_803E8E4()
{
    return sCamera.unk_50;
}


// 0x803e8f0
int sub_803E8F0()
{
    return 0;
}


// 0x803e8f8
u8 *sub_803E8F8()
{
    return &sCamera.unk_50;
}


// 0x803e900
signed int sub_803E900()
{
    signed int result; // r0

    ZeroFillByByte(&byte_200B1A0, 8);
    result = 180;
    byte_200B1A3 = -76;
    return result;
}


// 0x803e914
signed int sub_803E914()
{
    signed int result; // r0

    ZeroFillByByte(&byte_200B1A0, 8);
    result = 1;
    byte_200B1A3 = 1;
    return result;
}


// 0x803e928
int sub_803E928()
{
    return byte_200B1A0;
}


// 0x803e930
int sub_803E930()
{
    return 0;
}


// 0x803e938
int sub_803E938()
{
    int result; // r0
    char v1; // zf

    if ( byte_200B1A0 == 1 )
    {
        result = sub_803E978();
        if ( v1 )
        {
            result = 2;
            byte_200B1A0 = 2;
        }
    }
    else if ( byte_200B1A0 == 2 )
    {
        result = sub_803EA1C(2);
    }
    else
    {
        result = sub_803E964();
    }
    return result;
}


// 0x803e964
int sub_803E964()
{
    bool v0; // zf
    int result; // r0

    result = byte_200B1A3 - 1;
    v0 = byte_200B1A3-- == 1;
    if ( v0 )
    {
        result = 1;
        byte_200B1A0 = 1;
    }
    return result;
}


// 0x803e978
signed int sub_803E978()
{
    signed int v0; // r6
    char v1; // zf
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    signed int v6; // r4

    v0 = 1;
    sub_803E930();
    if ( v1 )
    {
        if ( !sub_813DA94() )
        {
            v2 = sub_813D60C();
            if ( v1 )
                return v0;
            if ( v2 == 1 )
            {
                sub_8149644();
                byte_200B1A2 = 1;
                return 0;
            }
            sub_8149644();
        }
        notZero_eByte200AD04();
        if ( !v1 || byte_200B1A1 )
        {
            v0 = 0;
            v6 = 1;
            sub_803F560();
            if ( !v1 )
            {
                v0 = 1;
                v6 = 0;
                if ( word_200AD06 )
                {
                    --word_200AD06;
                    return v0;
                }
                v0 = 0;
            }
            sub_803F4EC(v6);
            if ( v6 )
            {
                TestEventFlagFromImmediate(1, 227);
                if ( !v1 )
                {
                    SetEventFlagFromImmediate(0, 122);
                    ClearEventFlagFromImmediate(0, 123);
                }
            }
        }
        else
        {
            byte_200B1A1 = 1;
            clear_e200AD04();
            sub_803F6B0(0, v3, v4, v5);
            sub_803F50C();
        }
    }
    return v0;
}


// 0x803ea1c
int __fastcall sub_803EA1C(int a1)
{
    int result; // r0
    char v2; // zf

    result = notZero_eByte200AD04();
    if ( !v2 )
        result = sub_803F560();
    return result;
}


// 0x803ea2c
signed int sub_803EA2C()
{
    signed int result; // r0

    result = 0;
    if ( sCamera.unk_50 == 12 )
        result = 1;
    return result;
}


// 0x803ea40
int sub_803EA40()
{
    return byte_200BC32;
}


// 0x803ea48
char __fastcall sub_803EA48(char result)
{
    byte_200BC32 = result;
    return result;
}


// 0x803ea50
int sub_803EA50()
{
    return byte_200BC31;
}


// 0x803ea58
char __fastcall sub_803EA58(char result)
{
    byte_200BC31 = result;
    return result;
}


// 0x803ea60
// () -> u8
int eStruct200BC30_getJumpOffset00()
{
    return eStruct200BC30;
}


// 0x803ea68
int eStruct200BC30_getJumpOffset00_pushpop()
{
    return eStruct200BC30_getJumpOffset00();
}


// 0x803ea70
// (u8 val) -> void
char __fastcall eStruct200BC30_setJumpOffset00(char result)
{
    eStruct200BC30 = result;
    return result;
}


// 0x803ea78
int sub_803EA78()
{
    return (*(&JumpTable803EA8C + eStruct200BC30))();
}


// 0x803ea98
int *__fastcall sub_803EA98(int a1, int a2, int a3, int a4)
{
    int v4; // r2
    int v5; // r3
    int *result; // r0

    sub_803EFCC(a1, a2, a3, a4);
    ZeroFillByHalfword(&eStruct200F360, 0x20u, v4, v5);
    result = &dword_200F444;
    dword_200F444 = 42688;
    return result;
}


// 0x803eabc
int __fastcall sub_803EABC(int a1)
{
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    v1 = sub_8146CFC();
    sub_803EFCC(v1, v2, v3, v4);
    return sub_803EA58(1);
}


// 0x803ead0
int __fastcall sub_803EAD0(int a1)
{
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    v1 = sub_8146CFC();
    sub_803EFCC(v1, v2, v3, v4);
    return sub_803EA58(1);
}


// 0x803eae4
int sub_803EAE4()
{
    return (*(&off_803EAF8 + eStruct200BC30))();
}


// 0x803eb04
signed int sub_803EB04()
{
    signed int result; // r0

    result = sub_803DEB4();
    if ( result == 2 )
        result = sub_803ED1C(2);
    return result;
}


// 0x803eb14
signed int sub_803EB14()
{
    int v0; // r5
    signed int v1; // r4
    int v2; // r0
    int v3; // r1
    signed int result; // r0
    int v5; // ST00_4
    char v6; // zf

    v1 = 0;
    v2 = sub_803C620();
    if ( !v3 && v2 )
    {
        if ( v2 != 2 )
            *(v0 + 14) = 2;
        v1 = 4;
    }
    if ( *(v0 + 1) )
    {
        sub_8148884();
        if ( v1 == 4 )
            return 4;
    }
    else
    {
        sub_8146E78();
    }
    v5 = sub_803EBFC();
    sub_803EFA0();
    result = v5;
    if ( !v6 )
    {
        eStruct200BC30_getRef()[14] = 8;
        result = 4;
    }
    return result;
}


// 0x803eb60
signed int sub_803EB60()
{
    int v0; // r5
    signed int v1; // r4
    int v2; // r0
    int v3; // r1
    signed int result; // r0
    int v5; // ST00_4
    char v6; // zf

    v1 = 0;
    v2 = sub_803C620();
    if ( !v3 && v2 )
    {
        if ( v2 != 2 )
            *(v0 + 14) = 2;
        v1 = 4;
    }
    if ( *(v0 + 1) )
    {
        sub_8148FC0();
        if ( v1 == 4 )
            return 4;
    }
    else
    {
        sub_8147B3C();
    }
    v5 = sub_803EBFC();
    sub_803EFA0();
    result = v5;
    if ( !v6 )
    {
        eStruct200BC30_getRef()[14] = 8;
        result = 4;
    }
    return result;
}


// 0x803ebac
void __fastcall sub_803EBAC(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&eStruct200BC30, 0x20u, a3, a4);
}


// 0x803ebb8
int sub_803EBB8()
{
    return ZeroFillByByte(&byte_200BC32, 32);
}


// 0x803ebc8
void sub_803EBC8()
{
    int v0; // r2
    int v1; // r3
    int v2; // r0

    sub_803EF84(&dword_200B1B0);
    ZeroFillByWord(&eStruct200BC30, 0x20u, v0, v1);
    sub_803EF60(v2);
}


// 0x803ebe4
char __fastcall sub_803EBE4(char result)
{
    eStruct200BC30_JumpOffset05 = result;
    return result;
}


// 0x803ebec
int sub_803EBEC()
{
    return eStruct200BC30_JumpOffset05;
}


// 0x803ebf4
// () -> u8*
char *eStruct200BC30_getRef()
{
    return &eStruct200BC30;
}


// 0x803ebfc
int sub_803EBFC()
{
    return (*(&JumpTable803EC10 + eStruct200BC30_JumpOffset05))();
}


// 0x803ec1c
signed int sub_803EC1C()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0

    sub_803CB18();
    if ( !v1 )
    {
        if ( !sub_803F3A8() )
            *(v0 + 5) = 4;
        sub_803F06C();
        *sub_803EF7C() = 254;
        v2 = sub_803EF7C();
        sub_803F00C(v2, 0x10u);
    }
    return 1;
}


// 0x803ec54
signed int sub_803EC54()
{
    _BYTE *v0; // r5
    int v1; // r10
    signed int v2; // r7
    int v3; // r1
    int v4; // r0
    unsigned int v5; // r1
    signed int v6; // r0
    int v7; // r2
    int v8; // r4
    int v9; // r1
    _BYTE *v10; // r4
    int v11; // r0
    int v12; // t1
    int v13; // r0

    v2 = 8;
    sub_803F158();
    v0[9] = v3;
    if ( !v3 || v3 != 2 )
    {
        v2 = 2;
        sub_803E8DC();
        v4 = sub_803EF74();
        sub_803F118(v4, v5);
        sub_803EFFC();
    }
    v6 = sub_803F3D8();
    if ( v6 && v6 == 2 )
    {
        v8 = v7;
        if ( eStruct200BC30_getJumpOffset00() == 4 )
        {
            if ( v8 )
            {
                v2 |= 0x10u;
LABEL_20:
                v13 = sub_803EF7C();
                sub_803F00C(v13, 0x10u);
                return v2;
            }
        }
        else if ( !v8 )
        {
            v2 |= 0x10u;
            goto LABEL_20;
        }
    }
    sub_803F06C();
    if ( !v9 )
    {
        if ( v0[9] == 1 )
            return v2 | 0x10;
LABEL_16:
        v10 = sub_803EF7C();
        if ( sub_813D91C() )
        {
            LOBYTE(v11) = v0[8] + 1;
            v0[8] = v11;
        }
        else
        {
            v11 = (v0[7] + 1);
            v0[7] = v11;
        }
        v10[1] = v11;
        v12 = *(v1 + oToolkit_JoypadPtr);
        *v10 = -4;
        goto LABEL_20;
    }
    if ( v9 == 2 )
        goto LABEL_16;
    return v2 | 0x10;
}


// 0x803ecfc
int __fastcall sub_803ECFC(int a1)
{
    int v1; // r0

    *sub_803EF7C() = 254;
    v1 = sub_803EF7C();
    return sub_803F00C(v1, 0x10u);
}


// 0x803ed1c
signed int __fastcall sub_803ED1C(signed int a1)
{
    signed int v1; // r7
    int v2; // r0

    v1 = a1;
    v2 = (*(&off_803ED40 + eStruct200BC30_JumpOffset05))();
    if ( !eStruct200BC30_JumpOffset05 && v2 == 4 )
        v1 = 4;
    return v1;
}


// 0x803ed4c
signed int sub_803ED4C()
{
    int v0; // r4
    int v1; // r7
    int v2; // r0
    char *v3; // r4
    int v4; // r2
    int v5; // r1
    int v6; // r2
    char v7; // zf
    int v8; // r0
    int v9; // r2
    int v10; // r1
    int v11; // r2
    int v12; // r3
    int v13; // r0
    int v14; // r1
    int v15; // r3
    int v16; // r0
    int v17; // r1
    int v18; // r0
    int v19; // r1
    int v20; // r3
    int v22; // [sp+0h] [bp-28h]

    v22 = sCamera.pad_54[0];
    v0 = 0;
    v1 = 0;
    while ( 1 )
    {
        v2 = sub_8144D04(v0);
        if ( v2 == 1 )
            ++v1;
        if ( !v2 )
            break;
        if ( ++v0 >= v22 )
        {
            if ( v1 == 2 )
            {
                v3 = &unk_2009480;
                v4 = 0;
                while ( 1 )
                {
                    sub_803E78C(v4 + 1);
                    if ( !v7 )
                    {
                        v8 = *&v3[v5];
                        if ( v8 == 98 )
                        {
                            sCamera.unk_50 = 8;
                            sub_803E89C();
                            goto LABEL_13;
                        }
                        if ( v8 != 96 )
                            break;
                    }
                    v3 += 2;
                    v4 = v6 + 1;
                    if ( v4 >= v22 )
                    {
                        v3 = &unk_2009480;
                        v9 = 0;
LABEL_13:
                        while ( 1 )
                        {
                            sub_803E78C(v9 + 1);
                            if ( !v7 && (*&v3[v10] | (*&v3[v10 + v12] << 16)) != *&sCamera.pad_6A[2] )
                                goto LABEL_22;
                            v3 += 2;
                            v9 = v11 + 1;
                            if ( v9 >= v22 )
                            {
                                v13 = sub_803E8B4(&unk_2009480);
                                sCamera.unk_70 = *(v13 + v14) | (*(v13 + v14 + v15) << 16);
                                if ( sCamera.unk_70 != 2048 || sSubmenu.unk_00 == 12 )
                                {
                                    v16 = sub_803E8B4(&unk_2009480);
                                    if ( !(*(v16 + v17) & 0x1000) || sSubmenu.unk_00 == 12 )
                                    {
                                        v18 = sub_803E8B4(&unk_2009480);
                                        dword_2009A10 = *(v18 + v19) | (*(v18 + v19 + v20) << 16);
                                        sCamera.unk_51 += 4;
                                        sCamera.unk_50 = sCamera.unk_51;
                                        *sCamera.pad_5E = 2;
                                        *&sCamera.pad_78[8] = 0;
                                        sub_803EBE4(4);
                                        return 2;
                                    }
                                }
                                goto LABEL_22;
                            }
                        }
                    }
                }
            }
            break;
        }
    }
LABEL_22:
    sub_803EA48(2);
    return 4;
}


// 0x803ee98
int sub_803EE98()
{
    int v0; // r10
    char *v1; // r5
    int v2; // r1
    int v3; // r2
    char v4; // zf
    _WORD *v5; // r3
    _WORD *v6; // r4
    signed int v7; // r7
    signed int v8; // r2
    unsigned __int8 v9; // vf
    _BYTE *v10; // r4
    char *v11; // r0
    char *v12; // r1
    int result; // r0
    int v14; // [sp+0h] [bp-28h]
    int v15; // [sp+4h] [bp-24h]
    int v16; // [sp+8h] [bp-20h]

    v1 = &unk_2009480;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
        sub_803E78C(++v14);
        if ( !v4 )
        {
            if ( v3 == 4 )
                v15 = v2;
            else
                v16 = v2;
        }
    }
    while ( v2 + 2 < 8 );
    v5 = sCamera.unk_88;
    v6 = sCamera.unk_8C;
    v7 = sCamera.unk_70;
    do
    {
        *v5 = *&v1[v15];
        v8 = *&v1[v16];
        *v6 = v8;
        v1 += 8;
        ++v5;
        ++v6;
        v9 = __OFSUB__(v7, 2);
        v7 -= 2;
    }
    while ( !(((v7 < 0) ^ v9) | (v7 == 0)) );
    if ( (*sCamera.unk_88 & 0xFC) == 252 )
        sub_803E828(252, 252, v8);
    if ( (*sCamera.unk_8C & 0xFC) == 252 )
        sub_803E850(252, 252, v8);
    v10 = sub_803EF7C();
    v10[14] = sub_8144D18();
    v10[15] = sub_8144D24();
    v11 = eStruct200BC30_getRef();
    v12 = v11;
    *v10 = **(v0 + oToolkit_JoypadPtr) >> 8;
    result = v11[7] + 1;
    v12[7] = result;
    v10[1] = result;
    return result;
}


// 0x803ef48
char __fastcall sub_803EF48(char result)
{
    byte_200BC3D |= result;
    return result;
}


// 0x803ef54
int sub_803EF54()
{
    return byte_200BC3D;
}


// 0x803ef60
void __fastcall sub_803EF60(int a1)
{
    int v1; // r0
    int v2; // r2
    int v3; // r3

    v1 = sub_803EF7C();
    ZeroFillByEightWords(v1, byte_100, v2, v3);
}


// 0x803ef74
u32 sub_803EF74()
{
    return sCamera.unk_88;
}


// 0x803ef7c
u32 sub_803EF7C()
{
    return sCamera.unk_84;
}


// 0x803ef84
u32 __fastcall sub_803EF84(u32 result)
{
    sCamera.unk_84 = result;
    return result;
}


// 0x803ef90
void __fastcall sub_803EF90(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&unk_200F380, 4u, a3, a4);
}


// 0x803efa0
signed int sub_803EFA0()
{
    signed int v0; // r4
    int v1; // r7

    v0 = 1;
    v1 = 0;
    while ( word_2010420[v1] < dword_168 )
    {
        if ( ++v1 >= 4 )
            return 0;
    }
    return v0;
}


// 0x803efcc
void __fastcall sub_803EFCC(int a1, int a2, int a3, int a4)
{
    int v4; // r2
    int v5; // r3
    int v6; // r2
    int v7; // r3
    int v8; // r2
    int v9; // r3

    ZeroFillByWord(&byte_200AC20, 0x20u, a3, a4);
    ZeroFillByWord(&unk_2009AC0, 0x40u, v4, v5);
    ZeroFillByWord(byte_200BC70, byte_200, v6, v7);
    ZeroFillByWord(word_200A010, byte_200, v8, v9);
}


// 0x803effc
char *sub_803EFFC()
{
    char *result; // r0

    result = &byte_200AC20;
    byte_200AC27 = 1;
    return result;
}


// 0x803f004
int sub_803F004()
{
    return byte_200AC27;
}


// 0x803f00c
signed int __fastcall sub_803F00C(int a1, unsigned int a2)
{
    char v2; // r4
    signed int result; // r0

    v2 = byte_200AC20;
    CopyWords(a1, &unk_2009AC0 + 64 * byte_200AC20, a2);
    result = 7;
    byte_200AC20 = (v2 + 1) & 7;
    return result;
}


// 0x803f030
signed int __fastcall sub_803F030(int a1, unsigned int a2)
{
    if ( byte_200AC20 == byte_200AC22 )
        return 1;
    CopyWords(&unk_2009AC0 + 64 * byte_200AC22, a1, a2);
    return 0;
}


// 0x803f05c
int sub_803F05C()
{
    int result; // r0

    result = (byte_200AC22 + 1) & 7;
    byte_200AC22 = (byte_200AC22 + 1) & 7;
    return result;
}


// 0x803f06c
int sub_803F06C()
{
    int result; // r0

    result = byte_200AC20 - byte_200AC22;
    if ( byte_200AC20 <= byte_200AC22 && byte_200AC20 != byte_200AC22 )
        result += 8;
    return result;
}


// 0x803f090
void *sub_803F090()
{
    void *result; // r0

    result = &unk_2009AC0;
    byte_200AC22 = (byte_200AC22 - 1) & 7;
    return result;
}


// 0x803f0a4
int __fastcall sub_803F0A4(_BYTE *a1, unsigned int a2, int a3, int a4)
{
    unsigned int v4; // r6
    int v5; // r5
    _BYTE *v6; // ST00_4
    int v7; // r4
    int result; // r0

    v4 = a2;
    v5 = a3;
    if ( !*a1 || !a1[12] )
    {
        v6 = a1;
        sub_803EF48(1);
        a1 = v6;
    }
    v7 = *(v5 + 3);
    CopyByEightWords(a1, a4 + (v7 << 6), v4);
    *(v5 + 3) = (v7 + 1) & 7;
    result = *(v5 + 8) + 1;
    *(v5 + 8) = result;
    return result;
}


// 0x803f0e8
int __fastcall sub_803F0E8(int a1, int a2)
{
    int v2; // r7
    char v3; // r4
    _BYTE *v4; // r6
    int result; // r0

    v2 = a2;
    v3 = byte_200AC23;
    v4 = &byte_200BC70[64 * byte_200AC23];
    CopyWords(a1, v4, 0xCu);
    CopyWords(v2, (v4 + 12), 0xCu);
    byte_200AC23 = (v3 + 1) & 7;
    return result;
}


// 0x803f118
int __fastcall sub_803F118(int a1, unsigned int a2)
{
    unsigned int v2; // r6
    int v3; // r7
    char v4; // r4
    int result; // r0

    v2 = a2;
    v3 = a1;
    CopyWords(&byte_200BC70[64 * byte_200AC21], a1, a2);
    v4 = byte_200AC21;
    CopyWords(&byte_200BC70[64 * byte_200AC21 + 12], v3 + 16, v2);
    byte_200AC21 = (v4 + 1) & 7;
    return result;
}


// 0x803f158
int sub_803F158()
{
    int result; // r0

    result = byte_200AC23 - byte_200AC21;
    if ( byte_200AC23 <= byte_200AC21 && byte_200AC23 != byte_200AC21 )
        result += 8;
    return result;
}


// 0x803f17c
int __fastcall sub_803F17C(int a1)
{
    signed int v1; // r7
    signed int v2; // r2

    v1 = 32;
    v2 = 0;
    while ( *(a1 + v2) )
    {
        if ( *(a1 + v2) != 254 )
            return sub_803F1C0(a1, &word_200A010[32 * ((byte_200AC33 - 1) & 7)]);
        v2 += 12;
        if ( v2 > 12 )
            return v1;
    }
    return v1;
}


// 0x803f1c0
int __fastcall sub_803F1C0(int a1, int a2)
{
    int v2; // r7
    int v3; // r6
    int v4; // r4
    char v5; // r5
    signed int v6; // r2
    int v7; // r1
    int v8; // r0

    v2 = 0;
    v3 = a1;
    v4 = a2;
    v5 = 0;
    v6 = 1;
    do
    {
        v7 = *(v3 + v6);
        v8 = (*(v4 + v6) + 1) & 0xFF;
        if ( v8 != v7 )
        {
            if ( ((v8 - 1) & 0xFF) == v7 )
                v2 |= 4 << v5;
            else
                v2 |= 1 << v5;
        }
        ++v5;
        v6 += 12;
    }
    while ( v6 <= 13 );
    if ( *(v3 + 1) != *(v3 + 13) )
        v2 |= 0x10u;
    return v2;
}


// 0x803f214
signed int __fastcall sub_803F214(int a1, int a2, int a3)
{
    int v3; // r6
    int v4; // r0
    int v5; // r1
    bool v6; // nf
    unsigned __int8 v7; // vf
    int v8; // r0
    int v9; // r0
    int v10; // r1
    signed int result; // r0

    v3 = a1;
    if ( a3 )
    {
        v4 = *(a2 + 13);
        v5 = *(v3 + 1);
        v7 = __OFSUB__(v4, v5);
        v8 = v4 - v5;
        v6 = v8 < 0;
        if ( v8 )
            goto LABEL_6;
        return 0;
    }
    v9 = *(a2 + 1);
    v10 = *(v3 + 13);
    v7 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    v6 = v8 < 0;
    if ( !v8 )
        return 0;
LABEL_6:
    if ( v6 ^ v7 && v8 >= 7 )
        result = 2;
    else
        result = 1;
    return result;
}


// 0x803f26c
int __fastcall sub_803F26C(int a1)
{
    int v1; // r7
    int result; // r0
    _WORD *v3; // r6
    int v4; // r4
    int v5; // r0
    int v6; // r1
    int v7; // r4

    v1 = a1;
    if ( byte_200AC34 )
    {
        result = sub_803F460();
        if ( !result )
        {
            v3 = &word_200A010[32 * byte_200AC35];
            v4 = 0;
            if ( sub_803F1C0(v3, &byte_200BC70[64 * ((byte_200AC23 - 1) & 7)]) & 5 )
                v4 = 1;
            if ( sub_803F214(v1, v3, v4) )
            {
                v7 = (byte_200AC33 - 1) & 7;
                result = sub_803F1C0(&word_200A010[32 * v7], v1);
                if ( (result & 0xC) == 12 )
                    byte_200AC33 = v7;
            }
            else
            {
                if ( v4 )
                {
                    v5 = v1;
                    v6 = (v3 + 6);
                }
                else
                {
                    v5 = v3;
                    v6 = v1 + 12;
                }
                sub_803F0E8(v5, v6);
                if ( *(v1 + 1) == *(v1 + 13) )
                    sub_803F324();
                result = (byte_200AC35 + 1) & 7;
                byte_200AC35 = (byte_200AC35 + 1) & 7;
            }
        }
    }
    else
    {
        byte_200AC35 = byte_200AC33;
        result = 1;
        byte_200AC34 = 1;
    }
    return result;
}


// 0x803f324
int sub_803F324()
{
    int result; // r0

    result = byte_200AC34;
    if ( byte_200AC34 )
    {
        result = 0;
        byte_200AC34 = 0;
    }
    return result;
}


// 0x803f334
int __fastcall sub_803F334(int a1, unsigned int a2)
{
    _BYTE *v2; // r7
    unsigned int v3; // r6
    int v4; // r0
    int result; // r0

    v2 = a1;
    v3 = a2;
    v4 = sub_803F17C(a1);
    if ( v4 )
    {
        if ( v4 & 0x1C )
        {
            sub_803F26C(v2);
            result = sub_803F0A4(v2, v3, &unk_200AC30, word_200A010);
        }
        else
        {
            if ( v4 & 3 )
                sub_803EF48(2);
            result = sub_803F0A4(v2, v3, &unk_200AC30, word_200A010);
        }
    }
    else
    {
        sub_803F0A4(v2, v3, &byte_200AC20, byte_200BC70);
        sub_803F0A4(v2, v3, &unk_200AC30, word_200A010);
        result = sub_803F324();
    }
    return result;
}


// 0x803f3a8
signed int sub_803F3A8()
{
    int v0; // r7
    signed int v1; // r4

    v0 = 0;
    v1 = 1;
    while ( word_200A010[32 * byte_200AC33 + 6 * v0] == 254 )
    {
        if ( ++v0 >= 2 )
            return 0;
    }
    return v1;
}


// 0x803f3d8
signed int sub_803F3D8()
{
    signed int v0; // r4
    int v1; // r1
    _WORD *v2; // r6
    int v3; // r0
    int v4; // r1
    unsigned __int8 v5; // vf
    int v6; // r0

    v0 = 0;
    if ( byte_200AC34 )
    {
        v0 = 1;
        v1 = byte_200AC33 - byte_200AC35;
        if ( byte_200AC33 < byte_200AC35 )
            v1 += 8;
        if ( v1 >= 3 )
        {
            byte_200BC70[64 * ((byte_200AC21 - 1) & 7) + 1];
            HIBYTE(word_200A010[32 * byte_200AC35]);
            v2 = &word_200A010[32 * ((byte_200AC33 - 1) & 7)];
            v3 = *(v2 + 1);
            v4 = *(v2 + 13);
            v5 = __OFSUB__(v3, v4);
            v6 = v3 - v4;
            if ( (v6 < 0) ^ v5 )
                v6 = -v6;
            if ( v6 == 1 )
                v0 = 1;
            else
                v0 = 2;
        }
    }
    return v0;
}


// 0x803f460
signed int sub_803F460()
{
    int v0; // r5
    _WORD *v1; // r6
    _BYTE *v2; // r7
    int v3; // r0

    while ( 1 )
    {
        v1 = &word_200A010[32 * *(v0 + 5)];
        v2 = &byte_200BC70[64 * ((byte_200AC23 - 1) & 7)];
        if ( *(v1 + 1) == ((v2[1] + 1) & 0xFF) || *(v1 + 13) == ((v2[13] + 1) & 0xFF) )
            break;
        v3 = (*(v0 + 5) + 1) & 7;
        if ( v3 == *(v0 + 3) )
            return 1;
        *(v0 + 5) = v3;
    }
    return 0;
}


// 0x803f4c8
// () -> void
int clear_e200AD04()
{
    return ZeroFillByByte(&word_200AD04, 4);
}


// 0x803f4d4
char *sub_803F4D4()
{
    return &word_200AD04;
}


// 0x803f4ec
char __fastcall sub_803F4EC(char result)
{
    word_200AD04 = result;
    return result;
}


// 0x803f4f4
signed int sub_803F4F4()
{
    signed int result; // r0

    result = 1;
    byte_200AD05 = 1;
    return result;
}


// 0x803f500
signed int sub_803F500()
{
    signed int result; // r0

    result = 180;
    word_200AD06 = 180;
    return result;
}


// 0x803f50c
int *sub_803F50C()
{
    int *result; // r0

    result = &dword_78;
    word_200AD06 = &dword_78;
    return result;
}


// 0x803f524
int notZero_eByte200AD04()
{
    return word_200AD04;
}


// 0x803f530
int sub_803F530()
{
    int result; // r0
    bool v1; // zf
    char v2; // r4

    result = notZero_eByte200AD04();
    if ( !v1 )
    {
        v2 = 1;
        sub_803F560();
        if ( v1 || (v2 = 0, result = word_200AD06 - 1, v1 = word_200AD06 == 1, --word_200AD06, v1) )
            result = sub_803F4EC(v2);
    }
    return result;
}


// 0x803f560
signed int sub_803F560()
{
    int v0; // r4
    signed int v1; // r6
    signed int v2; // r0
    signed int v3; // r7

    v1 = 255;
    v2 = sub_803DEB4();
    if ( v2 == 2 )
    {
        if ( sub_813DB24(0, 1) != 255 )
        {
            v3 = 0;
            do
            {
                if ( sub_8144D04(v3) == 2 && (v3 == 1 || v3 == 3) )
                    v1 = 0;
                ++v0;
                ++v3;
            }
            while ( v3 < 4 );
        }
    }
    else if ( v2 != 4 )
    {
        v1 = 128;
    }
    return v1;
}


// 0x803f5b0
void sub_803F5B0()
{
    int v0; // r5
    signed int v1; // r2
    int v2; // r3

    if ( *(v0 + 12) & 8 && !(*(v0 + 12) & 0x10) )
    {
        v1 = 0;
        while ( 1 )
        {
            v2 = *&byte_803F5FC[v1];
            if ( v2 == *(v0 + 64) )
                break;
            v1 += 2;
            if ( v1 >= 26 )
                return;
        }
        if ( v2 - 295 != *(v0 + 62) )
        {
            *(v0 + 62) = v2 - 295;
            *(v0 + 12) |= 0x10u;
            *(v0 + 60) = 30;
        }
    }
}


// 0x803f618
__int16 __fastcall sub_803F618(__int16 result, int a2, int a3)
{
    *&byte_2009940[8 * a3 + 2 * a2] = result;
    return result;
}


// 0x803f62c
int sub_803F62C()
{
    int v0; // r5
    int result; // r0
    signed int v2; // r1

    result = 0;
    v2 = 13;
    do
    {
        if ( *(v0 + v2) == 1 )
            ++result;
        ++v2;
    }
    while ( v2 <= 16 );
    return result;
}


// 0x803f644
int sub_803F644()
{
    return sub_803F664();
}


// 0x803f664
int sub_803F664()
{
    return *byte_2009940;
}


// 0x803f674
__int64 sub_803F674()
{
    unsigned int v0; // r6
    __int64 v1; // r4
    int i; // r7
    int v3; // r0

    v0 = (dword_2009A18 & 0x1Cu) >> 2;
    v1 = 0LL;
    for ( i = 0; i != v0; ++i )
    {
        v3 = sub_8144D04(i);
        if ( v3 == 2 )
        {
            ++HIDWORD(v1);
        }
        else if ( v3 == 1 )
        {
            LODWORD(v1) = v1 + 1;
        }
    }
    return v1;
}


// 0x803f6b0
void __fastcall sub_803F6B0(int a1, int a2, int a3, int a4)
{
    ZeroFillByHalfword(&eStruct200F360, 0x20u, a3, a4);
    start_8000288();
}


// 0x803f6f4
unsigned int __fastcall sub_803F6F4(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r1
    int v6; // r2
    int v7; // r3

    v4 = a1;
    ZeroFillByHalfword(&eStruct200F360, 0x20u, a3, a4);
    sub_803DE88(0, v5, v6, v7);
    sub_803DCE8(0x10u, 2, 4u, 4u);
    (*byte_813DBC0)(0, 0, dword_803F734[v4]);
    sCamera.unk_5C = 60;
    return SetEventFlagFromImmediate(23, 47);
}


// 0x803f740
signed __int64 __fastcall sub_803F740(int a1)
{
    signed __int64 result; // r0

    if ( byte_803F774[sub_803DD30(a1)] == 255 )
        result = 0x100000000LL;
    else
        result = sCamera.unk_66;
    return result;
}


// 0x803f798
void sub_803F798()
{
    JUMPOUT(&loc_803F7A2);
}


// 0x803f79e
signed int sub_803F79E()
{
    int v0; // r10
    char v1; // zf
    int v2; // r0
    int v3; // r7
    signed int result; // r0
    int v5; // r4
    int v6; // [sp-4h] [bp-24h]

    sub_803FAB4();
    if ( v1 )
    {
        do
        {
            save_8006E26();
            sub_803F8B2();
            v2 = sub_803F894();
            sub_803FB04(v2);
            sub_8006DF6(&timer_2000000, 26384);
            v3 = 0;
            while ( 1 )
            {
                sub_814D954(&timer_2000000, 0xE000100, 26384);
                v6 = v3;
                if ( !sub_814D9C4(&timer_2000000, 234881280, 26384) )
                    break;
                ++v3;
                if ( v6 + 1 >= 3 )
                {
                    save_memSetFlags_8006E0E(&timer_2000000, 26384);
                    goto LABEL_7;
                }
            }
            save_memSetFlags_8006E0E(&timer_2000000, 26384);
            v5 = *(*(v0 + oToolkit_Unk2001c04_Ptr) + 104);
        }
        while ( sub_803F894() != v5 );
        SetEventFlagFromImmediate(23, 4);
        result = 0;
    }
    else
    {
LABEL_7:
        ClearEventFlagFromImmediate(23, 4);
        result = 1;
    }
    return result;
}


// 0x803f838
signed int sub_803F838()
{
    char v0; // zf
    signed int v1; // r4
    int v2; // r0

    sub_814D8F0(234881280, &timer_2000000, 26384);
    save_memSetFlags_8006E0E(&timer_2000000, 26384);
    sub_8006C6C();
    sub_803F8C4();
    if ( v0 && (sub_803F8F4(), v0) )
    {
        v1 = 0;
        v2 = SetEventFlagFromImmediate(23, 4);
    }
    else
    {
        v1 = 1;
        ClearEventFlagFromImmediate(23, 4);
        v2 = sub_8001514();
    }
    sub_8006C22(v2);
    return v1;
}


// 0x803f894
int sub_803F894()
{
    int v0; // r10
    int v1; // r7
    int v2; // r0
    signed int v3; // r2
    unsigned __int8 v4; // vf
    int result; // r0

    v1 = *(v0 + oToolkit_Unk2001c04_Ptr);
    *(v1 + 104) = 0;
    v2 = 0;
    v3 = 26383;
    do
    {
        v2 += *(&timer_2000000 + v3);
        v4 = __OFSUB__(v3--, 1);
    }
    while ( !((v3 < 0) ^ v4) );
    result = v2 + 24;
    *(v1 + 104) = result;
    return result;
}


// 0x803f8b2
int sub_803F8B2()
{
    int v0; // r10

    return CopyBytes("REXE6 F 20060110a US", *(v0 + oToolkit_Unk2001c04_Ptr) + 108, 20);
}


// 0x803f8c4
BOOL sub_803F8C4()
{
    int v0; // r10
    int v1; // r7
    int v2; // r6
    int v3; // r0
    signed int v4; // r2
    unsigned __int8 v5; // vf

    v1 = *(v0 + oToolkit_Unk2001c04_Ptr);
    v2 = *(v1 + 104);
    *(v1 + 104) = 0;
    v3 = 0;
    v4 = 26383;
    do
    {
        v3 += *(&timer_2000000 + v4);
        v5 = __OFSUB__(v4--, 1);
    }
    while ( !((v4 < 0) ^ v5) );
    return v3 + 24 != v2;
}


// 0x803f8f4
signed int sub_803F8F4()
{
    int v0; // r10
    signed int v1; // r2
    unsigned __int8 v2; // vf

    v1 = 19;
    while ( *(*(v0 + oToolkit_Unk2001c04_Ptr) + 108 + v1) == EXE6_InfoText_timestamp[v1] )
    {
        v2 = __OFSUB__(v1--, 1);
        if ( (v1 < 0) ^ v2 )
            return 0;
    }
    return 1;
}


// 0x803f918
signed int sub_803F918()
{
    signed int v0; // r1
    int v1; // r2
    unsigned __int8 v2; // vf
    int v3; // r7
    int v5; // [sp-4h] [bp-24h]

    CopyBytes("REXE6 F 20060110a US", byte_2006720, 20);
    v0 = dword_28;
    v1 = 0;
    *byte_2006714 = 0;
    while ( 1 )
    {
        v2 = __OFSUB__(v0--, 1);
        if ( (v0 < 0) ^ v2 )
            break;
        v1 += byte_2006710[v0];
    }
    *byte_2006714 = v1;
    v3 = 0;
    while ( 1 )
    {
        sub_814D954(byte_2006710, 0xE007E00, dword_28);
        v5 = v3;
        if ( !sub_814D9C4(byte_2006710, 234913280, dword_28) )
            break;
        ++v3;
        if ( v5 + 1 >= 3 )
        {
            ClearEventFlagFromImmediate(23, 46);
            return 1;
        }
    }
    SetEventFlagFromImmediate(23, 46);
    return 0;
}


// 0x803f976
signed int sub_803F976()
{
    int v0; // r2
    signed int v1; // r1
    int v2; // r2
    int v3; // r3
    unsigned __int8 v4; // vf

    sub_814D8F0(234913280, byte_2006710, dword_28);
    v0 = 0;
    while ( EXE6_InfoText_timestamp[v0] == byte_2006720[v0] )
    {
        if ( ++v0 >= 20 )
        {
            v1 = dword_28;
            v2 = 0;
            v3 = *byte_2006714;
            *byte_2006714 = 0;
            while ( 1 )
            {
                v4 = __OFSUB__(v1--, 1);
                if ( (v1 < 0) ^ v4 )
                    break;
                v2 += byte_2006710[v1];
            }
            if ( v2 == v3 )
            {
                SetEventFlagFromImmediate(23, 46);
                return 0;
            }
            break;
        }
    }
    ClearEventFlagFromImmediate(23, 46);
    return 1;
}


// 0x803f9e4
signed int sub_803F9E4()
{
    int *v0; // r1
    int v1; // r2
    unsigned __int8 v2; // vf
    int v3; // r7
    int v5; // [sp-4h] [bp-24h]

    CopyBytes("REXE6 F 20060110a US", byte_2006750, 20);
    v0 = &dword_78;
    v1 = 0;
    dword_2006744 = 0;
    while ( 1 )
    {
        v2 = __OFSUB__(v0, 1);
        v0 = (v0 - 1);
        if ( (v0 < 0) ^ v2 )
            break;
        v1 += *(&dword_2006740 + v0);
    }
    dword_2006744 = v1;
    v3 = 0;
    while ( 1 )
    {
        sub_814D954(&dword_2006740, 0xE007E80, &dword_78);
        v5 = v3;
        if ( !sub_814D9C4(&dword_2006740, 234913408, &dword_78) )
            break;
        ++v3;
        if ( v5 + 1 >= 3 )
        {
            ClearEventFlagFromImmediate(23, 55);
            return 1;
        }
    }
    SetEventFlagFromImmediate(23, 55);
    return 0;
}


// 0x803fa42
signed int sub_803FA42()
{
    int v0; // r2
    int *v1; // r1
    int v2; // r2
    int v3; // r3
    unsigned __int8 v4; // vf
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3

    sub_814D8F0(234913408, &dword_2006740, &dword_78);
    v0 = 0;
    while ( EXE6_InfoText_timestamp[v0] == byte_2006750[v0] )
    {
        if ( ++v0 >= 20 )
        {
            v1 = &dword_78;
            v2 = 0;
            v3 = dword_2006744;
            dword_2006744 = 0;
            while ( 1 )
            {
                v4 = __OFSUB__(v1, 1);
                v1 = (v1 - 1);
                if ( (v1 < 0) ^ v4 )
                    break;
                v2 += *(&dword_2006740 + v1);
            }
            if ( v2 == v3 )
            {
                SetEventFlagFromImmediate(23, 55);
                return 0;
            }
            break;
        }
    }
    v6 = ClearEventFlagFromImmediate(23, 55);
    sub_803C352(v6, v7, v8, v9);
    return 1;
}


// 0x803fab4
BOOL sub_803FAB4()
{
    int v0; // r7
    signed int v1; // r6
    int v3; // [sp-4h] [bp-18h]

    v0 = 0;
    v1 = 0;
    do
    {
        sub_803FAEE();
        sub_814D954(dword_20067C0, 0xE007F80, byte_80);
        v3 = v0;
        if ( !sub_814D9C4(dword_20067C0, 234913664, byte_80) )
            ++v1;
        ++v0;
    }
    while ( v3 + 1 < 3 );
    return v1 < 3;
}


// 0x803faee
int sub_803FAEE()
{
    signed int v0; // r7
    int result; // r0

    v0 = 0;
    do
    {
        result = change_20013F0_800151C();
        dword_20067C0[v0 / 4u] = result;
        v0 += 4;
    }
    while ( v0 < byte_80 );
    return result;
}


// 0x803fb04
void __fastcall sub_803FB04(int a1)
{
    dword_20067C0[0] = a1;
    sub_814D954(dword_20067C0, 0xE007F80, byte_80);
}


// 0x803fb28
_BYTE *__fastcall sub_803FB28(int a1, int a2, int a3, int a4)
{
    _DWORD *v4; // r10
    _BYTE *result; // r0

    ZeroFillByWord(&byte_200F348, 8u, a3, a4);
    result = *v4;
    **v4 = 20;
    return result;
}


// 0x803fb3c
int cb_803FB3C()
{
    (*(&off_803FB54 + byte_200F348))();
    return sub_803FC14();
}


// 0x803fb64
void __fastcall __noreturn sub_803FB64(int a1)
{
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    chatbox_8040818();
    v1 = sub_80015FC(15);
    copyTileData_803FC64(v1, v2, v3, v4);
}


// 0x803fb9c
int __fastcall sub_803FB9C(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0

    result = *(v3 + 4) - 1;
    *(v3 + 4) = result;
    if ( result )
    {
        if ( result == 175 )
            result = sound_bgmusic_play(27, 175, a3);
    }
    else
    {
        engine_setScreeneffect(12, 8);
        result = 8;
        *v3 = 8;
    }
    return result;
}


// 0x803fbc2
int sub_803FBC2()
{
    int result; // r0
    char v1; // zf
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3

    result = IsPaletteFadeActive();
    if ( !v1 )
    {
        v2 = sub_8006910();
        sub_802F530(v2, v3, v4, v5);
        clear_e200AD04();
        sub_803E914();
        result = sRender_08_setRenderingState(&byte_40);
    }
    return result;
}


// 0x803fbe8
signed __int64 sub_803FBE8()
{
    signed int v0; // r2
    signed __int64 result; // r0

    sub_80068EC(decomp_2013A00, &BG1X_Offset, 1, -1572864000);
    v0 = 0;
    result = 1374389534720LL;
    do
    {
        *&decomp_2013A00[v0] = 0;
        v0 += 2;
    }
    while ( v0 < 160 );
    return result;
}


// 0x803fc14
int sub_803FC14()
{
    int v0; // r10
    int v1; // r3
    int result; // r0
    signed int v3; // r4
    signed int v4; // r6
    int v5; // r7
    unsigned __int8 v6; // vf

    v1 = *(v0 + oToolkit_RenderInfoPtr);
    result = *(v1 + 16) - 4;
    *(v1 + 16) = result;
    v3 = 4;
    v4 = 0;
    v5 = 0;
    while ( 1 )
    {
        decomp_2013A00[v4] = result;
        ++v4;
        if ( v4 >= 160 )
            break;
        v6 = __OFSUB__(v3--, 1);
        if ( ((v3 < 0) ^ v6) | (v3 == 0) )
        {
            result = decomp_2013A00[v4] - byte_803FC50[v5];
            v3 = 8;
            if ( ++v5 > 20 )
                break;
        }
    }
    return result;
}


// 0x803fc64
int __fastcall __noreturn copyTileData_803FC64(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    sub_8005F40(a1, a2, a3, a4);
    sub_8005F6C();
    sub_80027C4();
    decompAndCopyData(initRefs803FCA4);
    sub_800183C(v4, v5, v6, v7);
    copyTiles();
    return copyTiles();
}


// 0x803fcf0
int __fastcall clearChatboxAndEvent(int a1, int a2, int a3, int a4)
{
    int v4; // r10

    ZeroFillByWord(*(v4 + oToolkit_ChatboxPtr), &dword_230, a3, a4);
    return chatbox_clear_eFlags2009F38(200);
}


