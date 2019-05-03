// 0x808f810
signed int __fastcall sub_808F810(int a1)
{
    int v1; // r0
    signed int v2; // r4
    char v3; // zf

    v1 = reqBBS_setFlag_e17b0f7_8140A00();
    v2 = byte_2000312;
    if ( byte_2000312 <= 0 )
    {
        byte_2000321 = -1;
        sub_808FA7C();
        v1 = sub_809E254();
        byte_2000312 = ++v2;
    }
    if ( v2 > 1 )
    {
        if ( v2 <= 2 )
        {
            v1 = sub_808FA8C();
            byte_2000312 = v2 + 1;
        }
        sub_808F9C4(v1);
        if ( v3 )
        {
            byte_2000312 = 0;
            sub_809E188(word_2000322 << 16, dword_2000324 << 16, 0x400000);
            sub_809E13C(byte_200031F);
            sub_809E2AE(byte_2000320);
            sub_808FD64();
            return 0;
        }
    }
    else
    {
        sub_808F9C4(v1);
        if ( v3 )
        {
            sub_809E248();
            byte_2000312 = v2 + 1;
            sub_809E188(word_2000322 << 16, dword_2000324 << 16, 0x400000);
            sub_809E13C(byte_200031F);
            sub_809E2AE(byte_2000320);
            sub_808F8AC();
        }
    }
    return 1;
}


// 0x808f8ac
void __noreturn sub_808F8AC()
{
    int v0; // r10
    Battle *v1; // r5
    __int64 v2; // r0

    (loc_809E314)(3);
    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    sprite_load(v1, 128, 28, 108);
    sprite_setAnimation(v1, v1->futurePanelX);
    sprite_loadAnimationData(v1);
    sprite_noShadow(v1);
    sprite_update(v1);
    (loc_809E2FE)(byte_200032C);
    v2 = sub_809E1AE();
    sub_809E188(v2, SHIDWORD(v2), 0x400000);
    sub_809E23C();
    (loc_809E306)(4);
}


// 0x808f900
signed int __fastcall sub_808F900(int a1)
{
    signed int v1; // r4
    char v2; // zf

    v1 = byte_2000312;
    if ( byte_2000312 <= 0 )
    {
        byte_2000321 = -1;
        ClearEventFlagFromImmediate(11, 228);
        ClearEventFlagFromImmediate(11, 229);
        sub_808FA7C();
        a1 = sub_809E254();
        byte_2000312 = ++v1;
    }
    if ( v1 <= 1 )
    {
        a1 = sub_808F9C4(a1);
        if ( !v2 )
            return 1;
        byte_2000312 = ++v1;
    }
    if ( v1 <= 2 )
    {
        sub_808FA84();
        sub_809E2FC();
        sub_808FF9C();
        sub_808F990();
    }
    sub_808F9C4(a1);
    if ( v2 )
    {
        sub_809E248();
        byte_2000312 = 0;
        sub_809E3B2();
        sub_809E188(word_2000322 << 16, dword_2000324 << 16, 0x400000);
        sub_809E13C(byte_200031F);
        sub_809E2AE(byte_2000320);
        reqBBS_clearFlag_8140A0C();
        return 0;
    }
    return 1;
}


// 0x808f990
void __noreturn sub_808F990()
{
    int v0; // r10
    Battle *v1; // r5

    sub_809E230();
    sub_809E304();
    sub_809E312();
    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    sprite_load(v1, 128, 24, 55);
    sprite_setAnimation(v1, v1->futurePanelX);
    sprite_loadAnimationData(v1);
    sprite_noShadow(v1);
    sprite_update(v1);
}


// 0x808f9c4
signed int __fastcall sub_808F9C4(int a1)
{
    signed int v1; // r4
    __int64 v2; // r6
    __int64 v3; // r0
    int v4; // r0
    int v5; // r1
    int v6; // r0

    v1 = 0;
    sub_808FA38(a1);
    v3 = sub_809E1AE();
    v2 = v3;
    HIDWORD(v3) = word_2000322 << 16;
    if ( v3 != HIDWORD(v3) )
    {
        if ( v3 > SHIDWORD(v3) )
        {
            if ( v3 - HIDWORD(v3) < 0x10000 )
                goto LABEL_8;
            v4 = v3 - 0x10000;
            v1 = 1;
        }
        else
        {
            if ( HIDWORD(v3) - v3 < 0x10000 )
                goto LABEL_8;
            v4 = v3 + 0x10000;
            v1 = 1;
        }
        LODWORD(v2) = v4;
    }
LABEL_8:
    v5 = dword_2000324 << 16;
    if ( HIDWORD(v2) != dword_2000324 << 16 )
    {
        if ( SHIDWORD(v2) > v5 )
        {
            if ( HIDWORD(v2) - v5 >= 0x10000 )
            {
                v6 = HIDWORD(v2) - 0x10000;
                v1 = 1;
                goto LABEL_14;
            }
        }
        else if ( v5 - HIDWORD(v2) >= 0x10000 )
        {
            v6 = HIDWORD(v2) + 0x10000;
            v1 = 1;
LABEL_14:
            HIDWORD(v2) = v6;
            goto LABEL_15;
        }
    }
LABEL_15:
    sub_809E188(v2, SHIDWORD(v2), 0x400000);
    return v1;
}


// 0x808fa38
int __fastcall sub_808FA38(int a1)
{
    __int64 v1; // r0
    int result; // r0
    char v3; // r4

    v1 = sub_809E1AE();
    LODWORD(v1) = (word_2000322 << 16) - v1;
    HIDWORD(v1) = (dword_2000324 << 16) - HIDWORD(v1);
    result = sub_800118A(v1);
    if ( result )
    {
        result = byte_808FA74[result];
        v3 = result;
        if ( result != byte_2000321 )
        {
            result = sub_809E13C(result);
            byte_2000321 = v3;
        }
    }
    return result;
}


// 0x808fa7c
void sub_808FA7C()
{
    JUMPOUT(&loc_808FA90);
}


// 0x808fa84
void sub_808FA84()
{
    JUMPOUT(&loc_808FA90);
}


// 0x808fa8c
char *sub_808FA8C()
{
    int v0; // r10
    int v1; // r4
    signed int v2; // r4
    char *result; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( *(v1 + oGameState_MapGroup) == 133 )
        v2 = 3;
    else
        v2 = *(v1 + 5);
    result = &(**(&off_808FB08 + v2))[6 * byte_200031E];
    word_2000322 = *result;
    LOWORD(dword_2000324) = *(result + 1);
    byte_200031F = result[4];
    byte_2000320 = result[5];
    return result;
}


// 0x808fb18
void __noreturn sub_808FB18()
{
    int v0; // r0

    ClearEventFlagFromImmediate(11, 228);
    v0 = ClearEventFlagFromImmediate(11, 229);
    sub_808FBA0(v0);
    sub_809E2FC();
    sub_808F990();
}


// 0x808fb4c
signed int sub_808FB4C()
{
    char v0; // zf

    TestEventFlagFromImmediate(11, 231);
    if ( v0 )
        return 1;
    ClearEventFlagFromImmediate(11, 231);
    return 0;
}


// 0x808fb68
signed int __fastcall sub_808FB68(int a1)
{
    __int64 v1; // r0
    int v2; // r2
    int v3; // r2
    int v4; // r1
    int v5; // r2
    signed int result; // r0

    v1 = sub_809E1AE();
    v3 = v2 - 0x40000;
    if ( v3 > 0 )
    {
        sub_809E188(v1, SHIDWORD(v1), v3);
        result = 1;
    }
    else
    {
        sub_809E188(v1, SHIDWORD(v1), 0);
        sub_809E230();
        reqBBS_clearFlag_8140A0C();
        sub_809E3B2();
        PlaySoundEffect(430, v4, v5);
        result = 0;
    }
    return result;
}


// 0x808fba0
int __fastcall sub_808FBA0(int a1)
{
    int v1; // r1
    int v2; // r2
    int v3; // r3

    sub_809E1AE();
    sub_809E2B8();
    return SpawnOverworldMapObject(27, v1, v2, v3);
}


// 0x808fbc0
int __fastcall sub_808FBC0(int a1, int a2)
{
    sub_80301B2(0, a2);
    sub_80301DC(*(&unk_2000310 + byte_200031C + 32) << 16, *(&unk_2000310 + byte_200031C + 35) << 16, 0x400000);
    return 0;
}


// 0x808fbec
int __fastcall sub_808FBEC(int a1, int a2)
{
    int v2; // r10
    int v3; // r0
    signed int v4; // r1

    sub_80301B2(0, a2);
    v3 = *(v2 + oToolkit_GameStatePtr);
    if ( *(v3 + oGameState_MapGroup) == 133 )
        v4 = 3;
    else
        v4 = *(v3 + oGameState_MapNumber);
    sub_80301DC(*&byte_808FC24[4 * v4] << 16, *&byte_808FC24[4 * v4 + 2] << 16, 0);
    return 0;
}


// 0x808fce4
int __fastcall sub_808FCE4(int a1, int a2, int a3, int a4)
{
    sub_8003940(1, a2, a3, a4);
    return 0;
}


// 0x808fcf0
int __fastcall sub_808FCF0(int a1)
{
    int v1; // r2

    byte_2000328 = byte_808FD14[sub_809E2B8()];
    HIBYTE(dword_2000324) = 15;
    PlaySoundEffect(107, byte_808FD14, v1);
    return 0;
}


// 0x808fd1c
signed int sub_808FD1C()
{
    bool v0; // zf
    __int64 v1; // r0

    v0 = HIBYTE(dword_2000324) == 1;
    --HIBYTE(dword_2000324);
    if ( v0 )
        return 0;
    v1 = sub_809E1AE();
    switch ( byte_2000328 )
    {
        case 1:
            LODWORD(v1) = v1 + 0x80000;
            break;
        case 3:
            HIDWORD(v1) += 0x80000;
            break;
        case 5:
            LODWORD(v1) = v1 - 0x80000;
            break;
        default:
            HIDWORD(v1) -= 0x80000;
            break;
    }
    sub_809E188(v1, SHIDWORD(v1), 0x400000);
    return 1;
}


// 0x808fd64
int sub_808FD64()
{
    int v0; // r10
    int v1; // r0
    signed int v2; // r1

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( *(v1 + oGameState_MapGroup) == 133 )
        v2 = 3;
    else
        v2 = *(v1 + oGameState_MapNumber);
    sub_809E3C4(
        *&byte_808FD98[8 * v2] << 16,
        *&byte_808FD98[8 * v2 + 2] << 16,
        *&byte_808FD98[8 * v2 + 4] << 16,
        *&byte_808FD98[8 * v2 + 6] << 16);
    return 0;
}


// 0x808fdc0
int sub_808FDC0()
{
    int v0; // r0
    int v1; // r1
    int v2; // r2
    int v3; // r3
    char v4; // zf
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int v9; // r1
    int v10; // r2
    int v11; // r3

    v0 = TestEventFlagFromImmediate(11, 251);
    if ( v4 )
    {
        ZeroFillByWord(&unk_2000310, 96);
        sub_808FE64(v5, v6, v7, v8);
        byte_2000314 = -1;
        dword_2000330 = 255;
        byte_2000318 = 1;
        BYTE2(dword_2000324) = 3;
        ClearEventFlagRangeFromImmediate(11, 244, 7);
        ClearEventFlagRangeFromImmediate(11, 233, 6);
        ClearEventFlagFromImmediate(11, 242);
        v0 = SetEventFlagFromImmediate(11, 224);
    }
    sub_808FE64(v0, v1, v2, v3);
    sub_808FED8();
    sub_808FF9C();
    sub_808FF30();
    sub_808FF70();
    sub_8003914(1u, v9, v10, v11);
    sub_809003C();
    return 0;
}


// 0x808fe34
int sub_808FE34()
{
    char v0; // zf

    TestEventFlagFromImmediate(11, 251);
    if ( v0 )
        ZeroFillByWord(&unk_2000310, 96);
    dword_2000330 = 255;
    sub_808FF9C();
    sub_809003C();
    sub_809032C();
    return 0;
}


// 0x808fe64
int __fastcall sub_808FE64(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(byte_2011B30, 128);
    return 0;
}


// 0x808fe74
void *sub_808FE74()
{
    void *result; // r0
    char v1; // zf
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3

    result = IsPaletteFadeActive();
    if ( !v1 )
    {
        sub_809019C();
        if ( v1 )
        {
            v2 = sub_809005C();
            if ( !v1 )
                sub_80900C8(v2);
        }
        result = sub_8090104();
        if ( result )
            result = init_s_02011C50_8036E90(result, v3, v4, v5);
    }
    return result;
}


// 0x808fea4
int sub_808FEA4()
{
    int v0; // r10
    int result; // r0
    int v2; // r1

    result = *(v0 + oToolkit_GameStatePtr);
    v2 = *(result + oGameState_MapGroup);
    if ( v2 == 131 || v2 == 133 && *(result + oGameState_MapNumber) == 2 )
    {
        sub_808FF44();
        result = byte_2000315;
        if ( !byte_2000315 )
        {
            sub_8046818();
            result = sub_8046854();
        }
    }
    return result;
}


// 0x808fed8
int sub_808FED8()
{
    int v0; // r7
    int v1; // r6

    v0 = sub_808FF00();
    v1 = 0;
    do
    {
        SpawnOverworldMapObject(26, 0, 0, 0x400000);
        ++v1;
    }
    while ( v1 < v0 );
    return 0;
}


// 0x808ff00
int sub_808FF00()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r1
    int v4; // r4
    char v5; // zf

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 133 )
        v3 = 3;
    else
        v3 = *(v2 + oGameState_MapNumber);
    v4 = *(&dword_808FF2C + v3);
    *(v0 + 10) = v4;
    TestEventFlagFromImmediate(11, 251);
    if ( v5 )
        *(v0 + 11) = v4;
    return v4;
}


// 0x808ff30
int sub_808FF30()
{
    sub_80468BA();
    sub_80468C6(0, 0, 0);
    return 0;
}


// 0x808ff44
signed int sub_808FF44()
{
    int v0; // r5
    char v1; // zf
    signed int result; // r0

    sub_811EBE0();
    if ( v1 )
    {
        result = *(v0 + 5);
        if ( *(v0 + 5) )
        {
            sub_80468BA();
            sub_80468C6(0, 0, 0);
            result = 0;
            *(v0 + 5) = 0;
        }
    }
    else
    {
        result = 1;
        *(v0 + 5) = 1;
    }
    return result;
}


// 0x808ff70
int sub_808FF70()
{
    signed int v0; // r4
    int result; // r0

    v0 = 0;
    do
    {
        result = SpawnOverworldMapObject(28, 0, 0, 0);
        ++v0;
    }
    while ( v0 < 7 );
    return result;
}


// 0x808ff8c
signed int sub_808FF8C()
{
    int v0; // r5
    signed int result; // r0

    result = 0;
    if ( !*(v0 + 32) )
        result = 1;
    return result;
}


// 0x808ff9c
int sub_808FF9C()
{
    int v0; // r5
    int v1; // r0
    char v2; // r3
    char v3; // r6
    int v4; // r1

    v1 = sub_808FFC0();
    v3 = v2;
    SpawnOverworldMapObject(27, v1, v4, 0x400000);
    *(v0 + 5) = v3;
    return 0;
}


// 0x808ffc0
int sub_808FFC0()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r0
    char *v4; // r4
    int result; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 133 )
        v3 = 3;
    else
        v3 = *(v2 + 5);
    v4 = &(**(&off_808FFF4 + v3))[8 * *(v0 + 14)];
    result = *v4 << 16;
    v6 = *(v4 + 1) << 16;
    v7 = v4[4];
    v8 = v4[6];
    return result;
}


// 0x8090004
signed int sub_8090004()
{
    int v0; // r5
    signed int v1; // r4
    signed int v2; // r0

    v1 = 0;
    v2 = reqBBS_81409E4();
    if ( v2 >= 112 && v2 <= 121 )
    {
        *(v0 + 14) = v2 - 112;
        v1 = 1;
    }
    return v1;
}


// 0x8090020
signed int sub_8090020()
{
    signed int v0; // r4
    int v1; // r5
    signed int v2; // r0

    v2 = reqBBS_81409E4();
    if ( v2 >= 96 && v2 <= 105 )
    {
        *(v1 + 14) = v2 - 96;
        v0 = 1;
    }
    return v0;
}


// 0x809003c
int sub_809003C()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(11, 228);
    if ( !v1 )
    {
        (loc_809E306)(4);
        sub_8001172(3);
        result = reqBBS_setFlag_e17b0f7_8140A00();
    }
    return result;
}


// 0x809005c
signed int sub_809005C()
{
    int v0; // r5
    int v1; // r10
    signed int v2; // r4
    char v3; // zf
    int v4; // r0
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int v9; // r0

    v2 = 0;
    TestEventFlagFromImmediate(11, 228);
    if ( !v3 )
    {
        sub_808FF8C();
        if ( !v3 )
        {
            if ( *(v0 + 6) < 250 && (v4 = **(v1 + oToolkit_JoypadPtr) & 1) != 0 )
            {
                sub_8090308(v4);
                if ( !v3 )
                {
                    v9 = *(v0 + 8) - 1;
                    *(v0 + 8) = v9;
                    if ( !v9 )
                    {
                        *(v0 + 8) = 5;
                        v2 = 1;
                    }
                }
            }
            else
            {
                *(v0 + 8) = 1;
                if ( *(v0 + 6) )
                {
                    *(v0 + 6) = 0;
                    ClearEventFlagFromImmediate(11, 229);
                    ClearEventFlagFromImmediate(23, 7);
                    v5 = ClearEventFlagFromImmediate(23, 57);
                    sub_808FE64(v5, v6, v7, v8);
                }
            }
        }
    }
    return v2;
}


// 0x80900c8
unsigned int __fastcall sub_80900C8(int a1)
{
    int v1; // r5
    __int64 v2; // r0
    int v3; // r2
    __int16 v4; // r4

    v2 = sub_809E1AE();
    v4 = *(v1 + 6);
    SpawnOverworldMapObject(29, v2 + 32, HIDWORD(v2) - 32, v3 - 32);
    *(v1 + 6) = v4 + 1;
    SetEventFlagFromImmediate(11, 229);
    SetEventFlagFromImmediate(23, 7);
    return SetEventFlagFromImmediate(23, 57);
}


// 0x8090104
char *sub_8090104()
{
    _BYTE *v0; // r5
    char *v1; // r4
    char v2; // zf
    int v3; // r0

    v1 = 0;
    sub_8090004();
    if ( !v2 )
        return byte_808F668;
    sub_8090020();
    if ( !v2 )
        return byte_808F67C;
    sub_80902DC();
    if ( v2 )
    {
        sub_808FF8C();
        if ( !v2 && (TestEventFlagFromImmediate(11, 242), v2) )
        {
            v1 = byte_808F728;
        }
        else
        {
            TestEventFlagFromImmediate(11, 230);
            if ( v2 )
            {
                sub_80901EC();
                if ( v2 )
                {
                    if ( !v0[11] )
                    {
                        v0[11] = -1;
                        v1 = byte_808F788;
                    }
                }
                else
                {
                    v1 = byte_808F748;
                }
            }
            else
            {
                v3 = v0[22] - 1;
                v0[22] = v3;
                if ( v3 )
                {
                    v0[28] = 3 - v3;
                    (loc_809E2FE)();
                    v1 = byte_808F6EC;
                }
                else
                {
                    v0[14] = 0;
                    v0[22] = 3;
                    v1 = byte_808F690;
                }
            }
        }
    }
    return v1;
}


// 0x809019c
signed int sub_809019C()
{
    int v0; // r5
    signed int v1; // r6
    char v2; // zf
    int v3; // r4
    int v4; // r0

    v1 = 0;
    TestEventFlagFromImmediate(11, 232);
    if ( !v2 )
    {
        v3 = 0;
        do
        {
            sub_809022C(v3);
            if ( !v2 )
            {
                TestEventFlag(*&byte_8090226[2 * v3]);
                if ( v2 )
                {
                    v1 = 1;
                    SetEventFlag(*&byte_8090220[2 * v3]);
                    v4 = *(v0 + 11) - 1;
                    *(v0 + 11) = v4;
                    if ( !v4 )
                        break;
                }
            }
            ++v3;
        }
        while ( v3 < *(v0 + 10) );
    }
    return v1;
}


// 0x80901ec
signed int sub_80901EC()
{
    int v0; // r5
    signed int v1; // r6
    int v2; // r4
    char v3; // zf

    v1 = 0;
    v2 = 0;
    *(v0 + 12) = 0;
    while ( 1 )
    {
        TestEventFlag(*&byte_8090220[2 * v2]);
        if ( !v3 )
            break;
        if ( ++v2 >= 3 )
            return v1;
    }
    v1 = 1;
    *(v0 + 12) = v2;
    return v1;
}


// 0x809022c
signed int __fastcall sub_809022C(int a1)
{
    int v1; // r5
    int v2; // r8
    int v3; // r7
    int v4; // r0
    int v5; // r1
    signed int v6; // r3
    int v7; // r2
    int v8; // r4
    signed int v9; // r1
    int v10; // r1
    signed int v11; // r4
    signed int v12; // r0
    signed int result; // r0

    v2 = a1;
    v3 = 0;
    *(v1 + 9) = 0;
    do
    {
        if ( *(v1 + 2 * v2 + 64) - 20 <= *&byte_2011B30[2 * v3] )
        {
            v4 = *(v1 + 2 * v2 + 70);
            v5 = *&byte_2011B30[2 * v3 + 60];
            v6 = 0;
            if ( v4 == v5 )
                v6 = 2;
            if ( v4 <= v5 )
                v6 = 1;
            v7 = v3 + 1;
            v8 = 24;
            v9 = *(v1 + 6);
            if ( v9 < 25 )
                v8 = v9 - 1;
            if ( v3 >= v8 )
                v7 = 0;
            v10 = *&byte_2011B30[2 * v7 + 60];
            v11 = 0;
            if ( v4 == v10 )
                v11 = 2;
            if ( v4 <= v10 )
                v11 = 1;
            if ( v6 != v11 || v6 == 2 )
                ++*(v1 + 9);
        }
        v12 = *(v1 + 6);
        if ( v12 >= 25 )
            v12 = 25;
        ++v3;
    }
    while ( v3 < v12 );
    result = 0;
    if ( *(v1 + 9) & 1 )
        result = 1;
    return result;
}


// 0x80902dc
int sub_80902DC()
{
    int v0; // r10
    int v1; // r0
    signed int v2; // r1

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( *(v1 + oGameState_MapGroup) == 133 )
        v2 = 3;
    else
        v2 = *(v1 + oGameState_MapNumber);
    return TestEventFlag(*&byte_8090300[2 * v2]);
}


// 0x8090308
signed int __fastcall sub_8090308(int a1)
{
    int v1; // r10
    signed int v2; // r4

    v2 = 1;
    if ( sub_809E1AE() == *(*(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 40) )
        v2 = 0;
    return v2;
}


// 0x809032c
int sub_809032C()
{
    int v0; // r1
    int v1; // r2
    int v2; // r3
    char v3; // zf

    sub_80039D4(1);
    if ( !v3 )
        sub_8003940(1, v0, v1, v2);
    return 0;
}


