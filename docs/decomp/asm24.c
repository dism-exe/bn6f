// 0x808befc
int __noreturn sub_808BEFC()
{
    sub_8005D88();
    return 0;
}


// 0x808c378
int sub_808C378()
{
    int v0; // r5
    _DWORD *v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r2
    unsigned int v5; // r1
    int v6; // r0
    int v7; // r0
    __int64 v9; // [sp-2Ch] [bp-40h]
    int v10; // [sp-24h] [bp-38h]

    v1 = (v0 + 112);
    if ( !*(v0 + 4) )
    {
        *(v0 + 4) = 1;
        *(v0 + 116) = 0;
        *(v0 + 124) = -1;
        *v1 = word_3C;
        *(v0 + 120) = 12;
    }
    v2 = *(v0 + 116);
    v3 = __OFSUB__(v2--, 1);
    *(v0 + 116) = v2;
    if ( ((v2 < 0) ^ v3) | (v2 == 0) )
    {
        *(v0 + 116) = 1;
        v9 = sub_809E1AE();
        v10 = v4 + 0x100000;
        do
            v5 = change_20013F0_800151C() >> 5;
        while ( v5 == *(v0 + 124) );
        *(v0 + 124) = v5;
        sub_80047E0(23, v9, SHIDWORD(v9), v10);
        v1 = (v0 + 112);
    }
    --*v1;
    v6 = v1[2];
    v3 = __OFSUB__(v6, 1);
    v7 = v6 - 1;
    if ( (v7 < 0) ^ v3 )
        sub_8143294();
    else
        v1[2] = v7;
    sub_80302A8(0, 1);
    return *v1;
}


// 0x808c644
int sub_808C644()
{
    int v0; // r10
    int v1; // r4
    signed int v2; // r4
    int v3; // r4
    int v4; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( *(v1 + oGameState_MapGroup) == 133 )
        v2 = 3;
    else
        v2 = *(v1 + 5);
    v3 = 16 * v2;
    v4 = *&byte_808C684[v3] << 16;
    v3 += 2;
    sub_809E188(v4, *&byte_808C684[v3] << 16, 0);
    v3 += 2;
    sub_809E2AE(*&byte_808C684[v3]);
    sub_809E13C(*&byte_808C684[v3 + 2]);
    return 0;
}


// 0x808ca68
int __fastcall sub_808CA68(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    char v5; // zf
    int v6; // r0
    int v7; // r2

    ZeroFillByWord(33557312, 0x98u, a3, a4);
    byte_2000B43 = 32;
    sub_808CC84();
    ClearEventFlagFromImmediate(9, 216);
    ClearEventFlagFromImmediate(9, 217);
    sub_8001172(0);
    v4 = TestEventFlagFromImmediate(9, 211);
    if ( v5 )
        sub_808CF50(v4);
    ClearEventFlagFromImmediate(9, 211);
    sub_8142C94();
    v6 = sub_808CBA0();
    if ( sub_808CF34(v6) != 1 )
        sub_808CE70();
    sub_808CE28();
    sound_8000672(31, 256, v7);
    return 0;
}


// 0x808cad4
int __fastcall sub_808CAD4(int a1)
{
    char v1; // zf

    sub_8142C94();
    SetEventFlagFromImmediate(9, 214);
    sub_808CBA0();
    TestEventFlagFromImmediate(9, 216);
    if ( !v1 )
    {
        SetEventFlagFromImmediate(9, 215);
        sub_808CBD8();
        reqBBS_setFlag_e17b0f7_8140A00();
        sub_8001172(3);
    }
    return 0;
}


// 0x808cb0c
void sub_808CB0C()
{
    int v0; // r10
    char v1; // zf
    int v2; // r2
    __int64 v3; // r0
    int v4; // r0
    int v5; // r0
    char *v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3

    TestEventFlagFromImmediate(9, 214);
    if ( !v1 )
    {
        sub_808D11C();
        TestEventFlagFromImmediate(9, 216);
        if ( v1 )
            return;
        if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) != 133 )
            sound_8000672(31, 315, v2);
    }
    sub_811EBE0();
    if ( v1 )
    {
        if ( !byte_2000B4C )
        {
            v3 = sub_809E1AE();
            word_2000B5A = WORD1(v3);
            word_2000B5C = HIWORD(v3);
            byte_2000B43 = 32;
        }
        v4 = byte_2000B43-- - 1;
        if ( !v4 )
        {
            sub_808CCAC(0);
            byte_2000B43 = 32;
        }
        v5 = sub_808CD04();
        if ( v1 )
        {
            ClearEventFlagFromImmediate(11, 241);
            if ( sub_808CFB8() == 1 )
                sub_808D108();
        }
        else
        {
            sub_808CD24(v5);
        }
        v6 = sub_808CC34();
        if ( v6 )
            init_s_02011C50_8036E90(v6, v7, v8, v9);
    }
}


// 0x808cba0
int sub_808CBA0()
{
    int v0; // r10
    signed int v1; // r6
    signed int v2; // r7
    int v3; // r0
    int result; // r0

    v1 = 0;
    v2 = 7;
    v3 = *(v0 + oToolkit_GameStatePtr);
    if ( *(v3 + oGameState_MapGroup) == 133 )
    {
        v2 = 12;
    }
    else if ( *(v3 + oGameState_MapNumber) )
    {
        v2 = 9;
    }
    do
    {
        result = sub_80047E0(16, 0, 0, 0);
        ++v1;
    }
    while ( v1 < v2 );
    return result;
}


// 0x808cbd8
int sub_808CBD8()
{
    int v0; // r10
    int v1; // r2

    sub_80047E0(17, 0, 0, 0);
    reqBBS_setFlag_e17b0f7_8140A00();
    sub_8001172(3);
    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) != 133 )
        sound_8000672(31, 315, v1);
    return 0;
}


// 0x808cc10
int sub_808CC10()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = *(v0 + 4);
    if ( result == 2 )
    {
        result = TestEventFlagFromImmediate(9, 216);
        if ( v2 )
            result = SetEventFlagFromImmediate(9, 216);
    }
    return result;
}


// 0x808cc34
char *sub_808CC34()
{
    char *v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(9, 212);
    if ( !v1 )
        return byte_808C930;
    sub_808CC10();
    if ( !v1 )
        return byte_808CA48;
    sub_808CF8C();
    if ( v1 )
    {
        sub_808CDC4();
        if ( !v1 )
            v0 = byte_808C74C;
    }
    else
    {
        v0 = byte_808C428;
        sub_808D084();
    }
    return v0;
}


// 0x808cc84
int sub_808CC84()
{
    _WORD *v0; // r5
    __int64 v1; // r0
    int result; // r0

    v1 = sub_809E1AE();
    result = v1 >> 16;
    SHIDWORD(v1) >>= 16;
    v0[11] = result;
    v0[12] = WORD2(v1);
    v0[13] = result;
    v0[14] = WORD2(v1);
    return result;
}


// 0x808cc98
int sub_808CC98()
{
    _WORD *v0; // r5
    __int64 v1; // r0
    int result; // r0

    v1 = sub_809E1AE();
    result = v1 >> 16;
    SHIDWORD(v1) >>= 16;
    v0[13] = result;
    v0[14] = WORD2(v1);
    v0[11] = result;
    v0[12] = WORD2(v1);
    return result;
}


// 0x808ccac
int __fastcall sub_808CCAC(int a1)
{
    int v1; // r5
    int v2; // r4
    __int64 v3; // r0
    int result; // r0
    int v5; // r1

    v2 = sub_809E2B8();
    v3 = sub_809E1AE();
    result = v3 >> 16;
    v5 = SHIDWORD(v3) >> 16;
    if ( v2 )
    {
        if ( v2 == 1 )
        {
            result += 24;
        }
        else if ( v2 == 2 )
        {
            result += 24;
            LOWORD(v5) = v5 + 24;
        }
        else if ( v2 == 3 )
        {
            LOWORD(v5) = v5 + 24;
        }
        else if ( v2 == 4 )
        {
            result -= 24;
            LOWORD(v5) = v5 + 24;
        }
        else
        {
            if ( v2 == 5 )
                result -= 24;
            if ( v2 == 6 )
                result -= 24;
            LOWORD(v5) = v5 - 24;
        }
    }
    else
    {
        result += 24;
        LOWORD(v5) = v5 - 24;
    }
    *(v1 + 26) = result;
    *(v1 + 28) = v5;
    return result;
}


// 0x808cd04
signed int sub_808CD04()
{
    signed int v0; // r4
    signed int v1; // r0

    v0 = 0;
    v1 = reqBBS_81409E4();
    if ( v1 >= 192 && v1 <= 204 )
    {
        byte_2000B45 = v1;
        v0 = 1;
    }
    return v0;
}


// 0x808cd24
int __fastcall sub_808CD24(int a1)
{
    unsigned int v1; // r4
    int result; // r0
    char v3; // zf
    int v4; // r1
    int v5; // r2

    v1 = *&(**(&off_808CD68 + sub_808D084()))[2 * (byte_2000B45 - 192)];
    result = TestEventFlag(v1);
    if ( v3 )
    {
        SetEventFlag(v1);
        result = TestEventFlagFromImmediate(11, 241);
        if ( v3 )
        {
            sound_play(212, v4, v5);
            result = SetEventFlagFromImmediate(11, 241);
        }
    }
    return result;
}


// 0x808cdc4
signed int sub_808CDC4()
{
    int v0; // r4
    signed int v1; // r8
    char (*v2)[24]; // r6
    int v3; // r7
    char v4; // zf
    int v5; // r1
    bool v6; // nf
    unsigned __int8 v7; // vf

    v0 = 0;
    v1 = sub_808D084();
    v2 = off_808CEBC[v1];
    v3 = 0;
    while ( 1 )
    {
        TestEventFlag(*&(*v2)[8 * v3]);
        if ( !v4 )
        {
            v5 = *&(*v2)[8 * v3 + 4];
            (TestEventFlagRange)(*&(*v2)[8 * v3 + 2]);
            if ( !v4 )
                break;
        }
        ++v3;
        if ( v1 < 3 )
        {
            v7 = __OFSUB__(v3, 3);
            v6 = v3 - 3 < 0;
        }
        else
        {
            v7 = __OFSUB__(v3, 4);
            v6 = v3 - 4 < 0;
        }
        if ( !(v6 ^ v7) )
            return v0;
    }
    return 1;
}


// 0x808ce28
int sub_808CE28()
{
    int v0; // r8
    signed int v1; // r8
    char (*v2)[24]; // r4
    int v3; // r7
    char v4; // zf
    bool v5; // nf
    unsigned __int8 v6; // vf
    int v8; // [sp-4h] [bp-18h]

    v8 = v0;
    v1 = sub_808D084();
    v2 = off_808CEBC[v1];
    v3 = 0;
    do
    {
        TestEventFlag(*&(*v2)[8 * v3]);
        if ( !v4 )
            ClearEventFlagRange(*&(*v2)[8 * v3 + 2], *&(*v2)[8 * v3 + 4], *&(*v2)[8 * v3 + 4]);
        ++v3;
        if ( v1 < 3 )
        {
            v6 = __OFSUB__(v3, 3);
            v5 = v3 - 3 < 0;
        }
        else
        {
            v6 = __OFSUB__(v3, 4);
            v5 = v3 - 4 < 0;
        }
    }
    while ( v5 ^ v6 );
    return v8;
}


// 0x808ce70
int sub_808CE70()
{
    int v0; // r8
    signed int v1; // r8
    char (*v2)[24]; // r4
    int v3; // r7
    bool v4; // nf
    unsigned __int8 v5; // vf
    int v7; // [sp-4h] [bp-18h]

    v7 = v0;
    v1 = sub_808D084();
    v2 = off_808CEBC[v1];
    v3 = 0;
    do
    {
        SetEventFlag(*&(*v2)[8 * v3]);
        ClearEventFlagRange(*&(*v2)[8 * v3 + 2], *&(*v2)[8 * v3 + 4], *&(*v2)[8 * v3 + 4]);
        ++v3;
        if ( v1 < 3 )
        {
            v5 = __OFSUB__(v3, 3);
            v4 = v3 - 3 < 0;
        }
        else
        {
            v5 = __OFSUB__(v3, 4);
            v4 = v3 - 4 < 0;
        }
    }
    while ( v4 ^ v5 );
    return v7;
}


// 0x808cf34
signed int __fastcall sub_808CF34(int a1)
{
    signed int v1; // r4
    signed int v2; // r0
    char v3; // zf

    v1 = 0;
    v2 = sub_808D084();
    TestEventFlag(*&byte_808CF84[2 * v2]);
    if ( !v3 )
        v1 = 1;
    return v1;
}


// 0x808cf50
unsigned int __fastcall sub_808CF50(int a1)
{
    int v1; // r4
    unsigned int result; // r0
    char v3; // zf

    v1 = 2 * sub_808D084();
    result = TestEventFlag(*&byte_808CF7C[v1]);
    if ( v3 )
        result = SetEventFlag(*&byte_808CF84[v1]);
    return result;
}


// 0x808cf8c
signed int sub_808CF8C()
{
    int v0; // r5
    int v1; // r10
    signed int v2; // r4
    char v3; // zf
    int v4; // r1

    v2 = 0;
    TestEventFlagFromImmediate(9, 217);
    if ( !v3 )
    {
        v4 = *(v1 + oToolkit_ChatboxPtr);
        *(v4 + 76) = *(v0 + 6);
        sound_play(290, v4, 76);
        v2 = 1;
    }
    return v2;
}


// 0x808cfb8
signed int sub_808CFB8()
{
    signed int v0; // r4
    __int64 v1; // r0
    int v2; // r0
    int v3; // r2
    char v4; // zf
    signed int v5; // r3
    int v6; // r0
    int v7; // r1
    int v8; // r2

    v0 = 0;
    v1 = sub_809E1AE();
    v2 = sub_808D034(v1, SHIDWORD(v1));
    word_2000B52 = v3;
    if ( v3 != word_2000B54 )
    {
        word_2000B54 = v3;
        sub_808D098(v2);
        if ( !v4 )
        {
            v0 = 1;
            if ( byte_2000B49 >= 113 && byte_2000B49 <= 144 )
            {
                v5 = 1 << (byte_2000B49 - 113);
                if ( dword_2000B60[byte_2000B48 - 114] & v5 )
                {
                    v6 = word_2000B46 + 1;
                    if ( v6 >= 0xFFFF )
                        LOWORD(v6) = -1;
                    word_2000B46 = v6;
                    sound_play(283, 0xFFFF, 4 * (byte_2000B48 - 114) + 32);
                    sound_play(105, v7, v8);
                    v0 = 2;
                }
                else
                {
                    dword_2000B60[byte_2000B48 - 114] |= v5;
                }
            }
        }
    }
    byte_2000B44 = v0;
    return v0;
}


// 0x808d034
int __fastcall sub_808D034(int a1, int a2)
{
    int v2; // r5
    int v3; // ST04_4
    int v4; // r1
    int result; // r0

    v3 = a2;
    result = ((sub_808D060(a1) + (a1 >> 16)) >> 5) + 128;
    *(v2 + 8) = result;
    *(v2 + 9) = ((v4 + (v3 >> 16)) >> 5) + -128;
    return result;
}


// 0x808d060
int __fastcall sub_808D060(int a1)
{
    char *v1; // r3
    int result; // r0
    int v3; // r1

    v1 = &byte_808D07C[2 * sub_808D084()];
    result = *v1;
    v3 = v1[1];
    return result;
}


// 0x808d084
signed int sub_808D084()
{
    int v0; // r10
    int v1; // r0
    signed int result; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( *(v1 + oGameState_MapGroup) == 133 )
        result = 3;
    else
        result = *(v1 + 5);
    return result;
}


// 0x808d098
signed int __fastcall __spoils<R0,R2,R3,R12> sub_808D098(signed int a1)
{
    signed int v1; // r6
    signed int v2; // r0
    int v3; // r4
    signed int v5; // [sp+0h] [bp-1Ch]
    signed int v6; // [sp+4h] [bp-18h]

    v5 = a1;
    v1 = 0;
    v2 = sub_808D084();
    if ( v2 == 3 )
    {
        if ( v6 <= byte_808D0FC[6] && v6 >= byte_808D0FC[7] )
            v1 = 1;
    }
    else
    {
        v3 = 2 * v2;
        if ( v5 < byte_808D0FC[2 * v2] )
        {
            if ( v3 == 2 )
            {
                v1 = 0;
                if ( v5 >= 114 && v6 >= byte_808D105[0] )
                    v1 = 1;
            }
        }
        else if ( v5 <= byte_808D0FC[v3 + 1] )
        {
            v1 = 1;
        }
    }
    return v1;
}


// 0x808d108
void sub_808D108()
{
    int v0; // r0

    v0 = sub_8142CB0();
    sub_8142CC8(v0, 0);
    sub_8142D4C();
}


// 0x808d11c
unsigned int sub_808D11C()
{
    int v0; // r6
    int v1; // r7
    int v2; // r0

    v0 = 0;
    v1 = 0;
    while ( 1 )
    {
        if ( dword_2000B60[v0] & (1 << v1) )
        {
            byte_2000B48 = v0 + 114;
            byte_2000B49 = v1 + 113;
            v2 = sub_8142CB0();
            sub_8142CC8(v2, 0);
            sub_8142D4C();
        }
        if ( ++v1 >= 31 )
        {
            v1 = 0;
            if ( ++v0 >= 30 )
                break;
        }
    }
    return ClearEventFlagFromImmediate(9, 214);
}


// 0x808d25c
int sub_808D25C()
{
    sub_8048F88();
    return 0;
}


