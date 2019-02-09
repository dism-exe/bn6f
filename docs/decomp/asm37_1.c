// 0x814187c
int __fastcall sub_814187C(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&byte_2001018, 0x10u, a3, a4);
    LOBYTE(dword_2001020) = 80;
    SetEventFlagFromImmediate(7, 0);
    return 0;
}


// 0x814189a
int __fastcall sub_814189A(int a1, int a2, int a3, int a4)
{
    sub_814187C(a1, a2, a3, a4);
    sub_81418F0();
    return 0;
}


// 0x81418aa
int sub_81418AA()
{
    BYTE1(dword_200101C) = 1;
    return 0;
}


// 0x81418b6
int sub_81418B6()
{
    BYTE1(dword_200101C) = 0;
    return 0;
}


// 0x81418c2
int sub_81418C2()
{
    BYTE2(dword_200101C) = 0;
    return 0;
}


// 0x81418ce
int sub_81418CE()
{
    BYTE2(dword_200101C) = 1;
    return 0;
}


// 0x81418da
char __fastcall sub_81418DA(char result, char a2)
{
    LOBYTE(dword_2001024) = result;
    BYTE1(dword_2001024) = a2;
    return result;
}


// 0x81418e4
int sub_81418E4()
{
    return BYTE2(dword_2001024);
}


// 0x81418f0
int sub_81418F0()
{
    int v0; // ST04_4
    int v1; // ST00_4
    int result; // r0

    v0 = sub_81420C8(0);
    v1 = sub_81420C8(1);
    result = sub_81420C8(2) + v1 + v0;
    BYTE2(dword_2001024) = result;
    return result;
}


// 0x8141914
signed int __fastcall sub_8141914(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    char *v5; // r4
    int v6; // r1
    signed int result; // r0

    v5 = &byte_8141958[8 * a4];
    v6 = a2 + *(v5 + 1);
    dword_200102C = a1 + *v5;
    dword_2001030 = v6;
    dword_2001034 = a3;
    HIBYTE(dword_2001028) = a4;
    LOWORD(dword_2001028) = *(*(v4 + oToolkit_GameStatePtr) + oGameState_MapGroup);
    BYTE2(dword_2001028) = 0;
    byte_2001038 = 12;
    byte_2001039 = 8;
    byte_200103A = -1;
    result = 255;
    byte_200103B = -1;
    return result;
}


// 0x81419a0
int sub_81419A0()
{
    int v0; // r10
    char v1; // zf
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3

    sub_8141AA8();
    if ( v1 )
    {
        if ( byte_2001013 )
        {
            byte_2001013 = 0;
            sub_80468BA();
            sub_80468C6(1, 0, 0);
            sub_80468C6(2, 1, 0);
        }
        sub_8046818();
        v2 = sub_8046854();
        sub_811E0BA(v2, v3, v4, v5);
        s_2011C50_ptr_1C_isNull();
        if ( v1 )
        {
            sub_809E462();
            if ( v1 )
            {
                IsPaletteFadeActive();
                if ( !v1 )
                {
                    chatbox_8045F3C(128);
                    if ( v1 )
                    {
                        if ( **(v0 + oToolkit_GameStatePtr) == 4 )
                        {
                            v6 = sub_8141AD2();
                            if ( v1 )
                                sub_8141A10(v6, v7, v8, v9);
                            else
                                sub_8141A70();
                        }
                    }
                }
            }
        }
    }
    return 0;
}


// 0x8141a10
int __fastcall sub_8141A10(int a1, int a2, int a3, int a4)
{
    _BYTE *v4; // r5
    int result; // r0
    int v6; // r0
    unsigned __int8 v7; // vf
    int v8; // r0
    int v9; // r0
    int v10; // r1
    char v11; // zf

    result = v4[13];
    if ( !v4[13] )
    {
        v4[11] = 2;
        v6 = v4[12];
        v7 = __OFSUB__(v6, 1);
        result = v6 - 1;
        v4[12] = result;
        if ( ((result < 0) ^ v7) | (result == 0) )
        {
            v4[12] = 0;
            v8 = v4[16];
            if ( !(((v8 < 0) ^ v7) | (v8 == 0)) )
            {
                v4[16] = v8 - 1;
                v4[12] = 30;
            }
            v9 = v4[16];
            if ( v9 == 39 )
            {
                result = v4[19];
                if ( v4[19] )
                    return result;
                v4[19] = 1;
                v10 = 5;
            }
            else if ( v9 == 19 )
            {
                result = v4[23];
                if ( v4[23] )
                    return result;
                v4[23] = 1;
                v10 = 6;
            }
            else
            {
                if ( v4[16] )
                    JUMPOUT(&loc_8141ACA);
                v10 = 7;
            }
            result = init_s_02011C50_8036E90(byte_808A128, v10, a3, a4);
            if ( !v11 )
                JUMPOUT(&loc_8141ABC);
        }
    }
    return result;
}


// 0x8141a70
int sub_8141A70()
{
    unsigned __int8 *v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0
    int v5; // r0
    int v6; // r0

    result = v0[13];
    if ( !v0[13] )
    {
        v0[19] = 0;
        v0[23] = 0;
        v0[12] = 30;
        v2 = v0[11];
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        v0[11] = result;
        if ( ((result < 0) ^ v3) | (result == 0) )
        {
            v4 = v0[17];
            v3 = __OFSUB__(v4, 1);
            v5 = v4 - 1;
            if ( !((v5 < 0) ^ v3) )
                v0[17] = v5;
            v6 = v0[16] + 1;
            if ( v6 > 80 )
            {
                result = 0;
                v0[17] = 0;
            }
            else
            {
                v0[16] = v6;
                result = 2;
                v0[11] = 2;
            }
        }
    }
    return result;
}


// 0x8141aa8
signed int sub_8141AA8()
{
    int v0; // r10
    char v1; // zf
    int i; // r6

    sub_811EBE0();
    if ( v1 )
    {
        for ( i = 0; *&byte_8141B08[i]; i += 2 )
        {
            if ( *&byte_8141B08[i] == *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) )
                return 0;
        }
    }
    return 1;
}


// 0x8141ad2
signed int sub_8141AD2()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    int i; // r6

    TestEventFlagFromImmediate(7, 1);
    if ( !v2 && !*(v0 + 17) )
    {
        for ( i = 0; *&byte_8141B08[i]; i += 2 )
        {
            if ( *&byte_8141B08[i] == *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) )
                return 0;
        }
    }
    return 1;
}


// 0x8141f7c
unsigned int sub_8141F7C()
{
    int v0; // r10
    unsigned __int8 *v1; // r1
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3
    char (**v7)[72]; // r7
    int v8; // r4
    int v9; // r0
    int v10; // r1
    int v11; // r2
    int v12; // r3
    signed int v13; // r0
    signed int v14; // r0
    int v15; // r2
    int v16; // r3
    int v18; // [sp-10h] [bp-24h]
    int v19; // [sp-Ch] [bp-20h]
    int v20; // [sp-8h] [bp-1Ch]
    int v21; // [sp-4h] [bp-18h]

    v1 = *(v0 + 60);
    v18 = 4 * v1[5];
    v19 = 4 * v1[13];
    v20 = v1[4];
    v21 = v1[12];
    TestEventFlagFromImmediate(7, 0);
    if ( !v2 || v20 != v21 || v18 != v19 )
    {
        ZeroFillByWord(&unk_2000BE0, 0x140u, v20, v21);
        sub_814189A(v3, v4, v5, v6);
    }
    v7 = (&off_8141B18)[sub_8142080()];
    v8 = 0;
    while ( *v7 )
    {
        v9 = sub_81420F0(v8);
        TestEventFlag(v9);
        if ( v2 )
            sub_80047E0(13, v10, v11, v12);
        ++v8;
        ++v7;
    }
    v13 = sub_8142080();
    sub_81418DA(*(&dword_8142044 + v13), 15);
    v14 = sub_8142080();
    sub_8003570(off_8141B24[v14]);
    TestEventFlagFromImmediate(7, 2);
    if ( !v2 )
    {
        init_s_02011C50_8036E90(byte_8089DF4, 0, v15, v16);
        ClearEventFlagFromImmediate(7, 2);
    }
    sub_809E3A2();
    if ( !v2 )
    {
        sub_8001172(84);
        reqBBS_setFlag_e17b0f7_8140A00();
    }
    return ClearEventFlagFromImmediate(7, 0);
}


// 0x814204c
void sub_814204C()
{
    ;
}


// 0x8142050
int __fastcall sub_8142050(int a1)
{
    int v1; // r4
    int result; // r0
    char (*v3)[72]; // r7

    v1 = a1;
    result = sub_8142080();
    v3 = (&off_8141B18)[result][v1];
    return result * 4;
}


// 0x8142068
int __fastcall sub_8142068(int a1)
{
    return 40 * a1;
}


// 0x8142072
int sub_8142072()
{
    sub_81418DA(0, 15);
    return 0;
}


// 0x8142080
signed int sub_8142080()
{
    int v0; // r10
    unsigned int i; // r6

    for ( i = 0; *&byte_81420A8[i]; i += 2 )
    {
        if ( *&byte_81420A8[i] == *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) )
            return i >> 1;
    }
    return 255;
}


// 0x81420b0
int sub_81420B0()
{
    return *(&dword_81420C4 + sub_8142080()) << 16;
}


// 0x81420c8
int __fastcall sub_81420C8(int a1)
{
    char *v1; // r7
    signed int v2; // r4
    int v3; // r6
    char v4; // zf

    v1 = &byte_8142120[4 * a1];
    v2 = 0;
    v3 = 0;
    while ( v2 < *(v1 + 1) )
    {
        TestEventFlag(*v1 + v2);
        if ( !v4 )
            ++v3;
        ++v2;
    }
    return v3;
}


// 0x81420f0
int __fastcall sub_81420F0(int a1)
{
    return *&byte_8142120[4 * sub_8142080()] + a1;
}


// 0x8142102
unsigned int sub_8142102()
{
    signed int v0; // r0

    v0 = sub_8142080();
    return ClearEventFlagRange(*&byte_8142120[4 * v0], *&byte_8142120[4 * v0 + 2], *&byte_8142120[4 * v0 + 2]);
}


// 0x8142134
int __fastcall sub_8142134(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&byte_2000784[4], 0x40u, a3, a4);
    SetEventFlagFromImmediate(7, 64);
    return 0;
}


// 0x814214e
int sub_814214E()
{
    byte_200078D = 0;
    return 0;
}


// 0x814215a
int sub_814215A()
{
    byte_200078D = 1;
    return 0;
}


// 0x8142166
char __fastcall sub_8142166(char result)
{
    byte_200078E = result;
    return result;
}


// 0x814216e
int sub_814216E()
{
    return byte_200078E;
}


// 0x8142178
int sub_8142178()
{
    return byte_200078E++ + 1;
}


// 0x8142184
int sub_8142184()
{
    return byte_200078E-- - 1;
}


// 0x8142190
int __fastcall sub_8142190(int a1)
{
    return byte_2000780[a1 + 16];
}


// 0x814219c
int sub_814219C()
{
    return dword_2000790 + BYTE1(dword_2000790) + BYTE2(dword_2000790) + HIBYTE(dword_2000790);
}


// 0x81421b2
signed int __fastcall sub_81421B2(int a1)
{
    int v1; // r1
    signed int result; // r0

    v1 = a1 + 16;
    result = byte_2000780[a1 + 16];
    if ( result >= 1 )
        byte_2000780[v1] = result-- - 1;
    return result;
}


// 0x81421c8
char __fastcall sub_81421C8(char result)
{
    byte_200078B[0] = result;
    return result;
}


// 0x81421d0
int sub_81421D0()
{
    return byte_200078B[0];
}


// 0x81421d8
char *sub_81421D8()
{
    return byte_2000798;
}


// 0x81421e0
int sub_81421E0()
{
    return *byte_2000798;
}


// 0x81421e8
signed int __fastcall sub_81421E8(int a1)
{
    char *v1; // r5
    int v2; // r4
    int v3; // r1

    v1 = byte_2000780;
    v2 = 0;
    while ( 1 )
    {
        v3 = *(v1 + 6);
        if ( !v3 )
            break;
        if ( a1 == v3 )
            return 1;
        v1 += 4;
    }
    return v2;
}


// 0x8142204
int __fastcall sub_8142204(int a1)
{
    int v1; // r1
    int result; // r0

    v1 = (*byte_20007A8)++;
    result = *(&dword_8142220 + a1);
    *&byte_2000780[4 * v1 + 44] = result;
    return result;
}


// 0x8142224
int sub_8142224()
{
    int v0; // r6
    int v1; // r4

    v0 = 0;
    v1 = *byte_20007A8 - 1;
    if ( *byte_20007A8 >= 1 )
    {
        --*byte_20007A8;
        v0 = *&byte_2000780[4 * v1 + 44];
    }
    return v0;
}


// 0x814223e
int sub_814223E()
{
    int result; // r0

    result = 0;
    *byte_20007A8 = 0;
    return result;
}


// 0x8142248
int sub_8142248()
{
    char v0; // zf

    sub_81422BE();
    if ( v0 )
    {
        if ( byte_2000783 )
        {
            byte_2000783 = 0;
            sub_80468BA();
            sub_80468C6(3, 0, 0);
        }
        sub_8046818();
        sub_8046854();
    }
    sub_8142C90();
    return 0;
}


// 0x814227a
int __fastcall sub_814227A(int a1)
{
    dword_2000790 = *&byte_8142294[4 * sub_81426CE()];
    return 0;
}


// 0x81422b4
int sub_81422B4()
{
    int result; // r0

    result = 0;
    dword_2000790 = 0;
    return result;
}


// 0x81422be
BOOL sub_81422BE()
{
    char v0; // zf
    signed int v1; // r4
    int v2; // r0
    BOOL result; // r0

    sub_811EBE0();
    result = 1;
    if ( v0 )
    {
        v1 = sub_81426CE();
        if ( v1 != 255 )
        {
            v2 = sub_81427CE();
            TestEventFlag(v2);
            if ( !v0 )
            {
                TestEventFlag(*&byte_81422F8[2 * v1]);
                if ( !v0 )
                    result = 0;
            }
        }
    }
    return result;
}


// 0x8142510
int sub_8142510()
{
    int v0; // r10
    int v1; // r0
    int result; // r0
    char v3; // zf
    signed int v4; // r6
    int v5; // r7
    char *v6; // r5
    int v7; // r4
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3
    int v12; // r2
    int v13; // r3

    SetEventFlagRangeFromImmediate(22, 80, 24);
    v1 = sub_81427CE();
    result = TestEventFlag(v1);
    if ( !v3 )
    {
        sub_814278C();
        v4 = 1;
        TestEventFlagFromImmediate(7, 64);
        if ( !v3 )
        {
            v4 = 0;
            sub_8142734();
        }
        sub_8142166(0);
        v5 = *(&off_814230C + sub_81426CE());
        v6 = byte_2006670;
        v7 = 0;
        while ( *v5 )
        {
            if ( !v4 )
            {
                *(v6 + 2) = *v5;
                v6[2] = *(v5 + 3);
                v6[3] = *(v5 + 2);
            }
            v8 = sub_81427A4(v7);
            TestEventFlag(v8);
            if ( v3 )
            {
                sub_80047E0(15, v9, v10, v11);
                sub_8142178();
                ClearEventFlag(v7 + 5712);
            }
            ++v7;
            v6 += 8;
            v5 += 4;
        }
        reqBBS_setFlag_e17b0f7_8140A00();
        sub_8036E86(33);
        TestEventFlagFromImmediate(0, 40);
        if ( v3 && sub_81426CE() < 6 )
            (loc_80353EA)();
        *(*(v0 + 60) + 21) = byte_8142610[sub_81426CE()];
        TestEventFlagFromImmediate(7, 68);
        if ( !v3 )
            init_s_02011C50_8036E90(byte_8089448, 0, v12, v13);
        ClearEventFlagFromImmediate(7, 64);
        ClearEventFlagFromImmediate(7, 66);
        ClearEventFlagFromImmediate(7, 67);
        ClearEventFlagFromImmediate(7, 70);
        result = ClearEventFlagFromImmediate(7, 71);
    }
    return result;
}


// 0x8142618
unsigned int sub_8142618()
{
    int v0; // r10
    int v1; // r0
    char v2; // zf
    char v3; // zf
    int v4; // r2
    int v5; // r3
    int v6; // r2
    int v7; // r3
    int v8; // r2
    int v9; // r3

    sub_8034C36();
    if ( v2 || (v1 = sub_81427CE(), TestEventFlag(v1), v2) )
    {
LABEL_13:
        ClearEventFlagFromImmediate(7, 66);
        ClearEventFlagFromImmediate(7, 67);
        goto LABEL_14;
    }
    TestEventFlagFromImmediate(7, 66);
    if ( !v2 )
    {
        TestEventFlagFromImmediate(7, 67);
        if ( v2 )
        {
            SetEventFlagFromImmediate(7, 67);
            goto LABEL_14;
        }
        sub_80357AE();
        if ( v3 )
            init_s_02011C50_8036E90(byte_8089554, 0, v4, v5);
        goto LABEL_13;
    }
    if ( *(*(v0 + 60) + 17) )
        SetEventFlagFromImmediate(7, 66);
LABEL_14:
    TestEventFlagFromImmediate(7, 70);
    if ( !v2 )
        init_s_02011C50_8036E90(byte_80893CC, 0, v6, v7);
    TestEventFlagFromImmediate(7, 71);
    if ( !v2 )
        init_s_02011C50_8036E90(&dword_8089128, 0, v8, v9);
    ClearEventFlagFromImmediate(7, 70);
    return ClearEventFlagFromImmediate(7, 71);
}


// 0x81426cc
void nullsub_37()
{
    ;
}


// 0x81426ce
signed int sub_81426CE()
{
    int v0; // r10
    unsigned int i; // r6

    for ( i = 0; *&byte_81426F8[i]; i += 2 )
    {
        if ( *&byte_81426F8[i] == *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) )
            return i >> 1;
    }
    return 255;
}


// 0x814270a
int sub_814270A()
{
    int v0; // r7
    int v1; // r4
    int v2; // r6
    unsigned __int8 v3; // vf
    char v4; // zf

    v0 = *&byte_8142774[2 * sub_81426CE()];
    v1 = sub_814278C();
    v2 = 0;
    while ( 1 )
    {
        v3 = __OFSUB__(v1--, 1);
        if ( (v1 < 0) ^ v3 )
            break;
        TestEventFlag(v0 + v1);
        if ( !v4 )
            ++v2;
    }
    return v2;
}


// 0x8142734
int sub_8142734()
{
    int v0; // r7
    int v1; // r2
    int v2; // r3
    int i; // r4
    unsigned __int8 v4; // vf
    int v5; // r0
    int result; // r0
    char v7; // zf

    v0 = *&byte_8142774[2 * sub_81426CE()];
    for ( i = sub_814278C(); ; ClearEventFlag(v0 + i) )
    {
        v4 = __OFSUB__(i--, 1);
        if ( (i < 0) ^ v4 )
            break;
    }
    ZeroFillByWord(byte_2006670, 0xA0u, v1, v2);
    v5 = sub_81427F2();
    result = TestEventFlag(v5);
    if ( !v7 )
        result = sub_814227A(result);
    return result;
}


// 0x814278c
int sub_814278C()
{
    return byte_814279C[sub_81426CE()];
}


// 0x81427a4
int __fastcall sub_81427A4(int a1)
{
    return *&byte_81427BC[2 * sub_81426CE()] + a1;
}


// 0x81427ce
int sub_81427CE()
{
    return *&byte_81427E0[2 * sub_81426CE()];
}


// 0x81427f2
int sub_81427F2()
{
    return *&byte_8142804[2 * sub_81426CE()];
}


// 0x8142816
int __fastcall sub_8142816(int a1, int a2)
{
    int v2; // ST00_4
    int v3; // ST04_4
    int v4; // r0
    int v5; // r1

    v2 = a1;
    v3 = a2;
    v4 = sub_814283C();
    return ((v4 + (v2 >> 16)) >> 5) + 128 + ((((v5 + (v3 >> 16)) >> 5) + 128) << 8);
}


// 0x814283c
int sub_814283C()
{
    char *v0; // r3
    int result; // r0
    int v2; // r1

    v0 = &byte_8142858[2 * sub_81426CE()];
    result = *v0;
    v2 = v0[1];
    return result;
}


// 0x8142868
int sub_8142868()
{
    __asm { SVC         6 }
    return (4112 - sub_814283C()) << 16;
}


// 0x8142896
unsigned int sub_8142896()
{
    int v0; // r1
    int v1; // ST00_4
    int v2; // ST04_4
    int v3; // r0
    int v4; // r1

    v1 = sub_8142868();
    v2 = v0;
    v3 = sub_8142868();
    return (((((calcAngle_800117C(v3 - v1, v2 - v4) + 16) >> 4) & 0xF) >> 1) - 1) & 7;
}


// 0x81428c2
char *__fastcall sub_81428C2(int a1)
{
    return &byte_2006670[8 * a1];
}


// 0x81428d4
int __fastcall sub_81428D4(int a1)
{
    int v1; // r4
    int v2; // r0
    int v4; // r7
    int v5; // r6
    int v6; // r7
    __int64 v7; // ST00_8
    int v8; // r0
    int v9; // r1
    int v10; // ST08_4
    int v11; // r0
    int v12; // r1

    v1 = sub_8142990();
    v2 = sub_809E2B8();
    if ( v2 & 1 )
        return sub_8142952(v1, v2, 1);
    v4 = (v2 + 1) & 7;
    v5 = sub_8142952(v1, (v2 - 1) & 7, 1);
    v6 = sub_8142952(v1, v4, 1);
    v7 = sub_809E1AE();
    v8 = sub_8142868();
    v10 = sub_80014D4(v8 - v7, v9 - HIDWORD(v7));
    v11 = sub_8142868();
    if ( sub_80014D4(v11 - v7, v12 - HIDWORD(v7)) > v10 )
        v6 = v5;
    return v6;
}


// 0x8142952
int __fastcall sub_8142952(unsigned int a1, int a2, int a3)
{
    return (a1 + byte_8142980[2 * a2] * a3) | (((a1 >> 8) + byte_8142980[2 * a2 + 1] * a3) << 8);
}


// 0x8142990
int sub_8142990()
{
    __int64 v0; // r0

    v0 = sub_809E1AE();
    return sub_8142816(v0, SHIDWORD(v0));
}


// 0x814299c
signed int __fastcall sub_814299C(unsigned int a1, unsigned int a2)
{
    signed int v2; // r7
    int v3; // r2
    int v4; // r3

    v2 = 0;
    v3 = (a1 >> 8) - (a2 >> 8);
    v4 = a1 - a2;
    if ( v3 < 0 )
        v3 = (a2 >> 8) - (a1 >> 8);
    if ( v4 < 0 )
        v4 = a2 - a1;
    if ( v3 + v4 <= 1 )
        v2 = 1;
    return v2;
}


// 0x81429ca
int sub_81429CA()
{
    char *v0; // r6
    int v1; // r2
    int v2; // r3
    unsigned int v3; // r4
    int v4; // r7
    int result; // r0
    char *i; // r7
    int v7; // r2

    v0 = sub_81421D8();
    ZeroFillByWord(v0, 0x10u, v1, v2);
    v3 = sub_8142990();
    v4 = *(&off_8142A1C + sub_81421D0());
    result = 2 * (sub_809E2B8() >> 1);
    for ( i = (v4 + result); ; i += 8 )
    {
        v7 = *i;
        if ( v7 == 127 )
            break;
        result = (v3 + v7) | (((v3 >> 8) + i[1]) << 8);
        *v0 = result;
        v0 += 4;
    }
    return result;
}


// 0x8142a84
int sub_8142A84()
{
    char *v0; // r5
    signed int v1; // r4
    int v2; // r6
    int v3; // r0
    char v4; // zf

    v0 = byte_2011EE0;
    v1 = 0;
    v2 = 0;
    do
    {
        v3 = sub_8142B28();
        if ( !v4 )
        {
            sub_81421E8(v3);
            if ( !v4 )
                ++v2;
        }
        v0 += 120;
        ++v1;
    }
    while ( v1 < 56 );
    return v2;
}


// 0x8142ab0
signed int sub_8142AB0()
{
    char *v0; // r5
    int v1; // r7
    int v2; // r4
    int v3; // r6

    v0 = byte_2006670;
    v1 = sub_81421E0();
    v2 = 0;
    v3 = 0;
    while ( !*(v0 + 2) || *(v0 + 2) != v1 )
    {
        v0 += 8;
        if ( ++v2 >= 20 )
            return v3;
    }
    return 1;
}


// 0x8142ada
int sub_8142ADA()
{
    char *v0; // r5
    signed int v1; // r4
    int v2; // r6
    int v3; // r0
    char v4; // zf

    v0 = byte_2006670;
    v1 = 0;
    v2 = 0;
    do
    {
        if ( *(v0 + 2) )
        {
            v3 = sub_8142990();
            sub_814299C(v3, *(v0 + 2));
            if ( !v4 )
                ++v2;
        }
        v0 += 8;
        ++v1;
    }
    while ( v1 < 20 );
    return v2;
}


// 0x8142b04
int __fastcall sub_8142B04(int a1)
{
    int v1; // r7
    char *v2; // r5
    signed int v3; // r4
    int v4; // r6
    int v5; // r0
    char v6; // zf

    v1 = a1;
    v2 = byte_2011EE0;
    v3 = 0;
    v4 = 0;
    do
    {
        v5 = sub_8142B28();
        if ( !v6 && v5 == v1 )
            ++v4;
        v2 += 120;
        ++v3;
    }
    while ( v3 < 56 );
    return v4;
}


// 0x8142b28
int sub_8142B28()
{
    int v0; // r5
    int v1; // r4
    int v2; // r2

    v1 = 0;
    if ( *v0 )
    {
        if ( *(v0 + 1) == 15 )
        {
            sub_809E1AE();
            if ( *(v0 + 20) == v2 )
                v1 = *(sub_81428C2(*(v0 + 4)) + 2);
        }
    }
    return v1;
}


// 0x8142b58
unsigned int sub_8142B58()
{
    char *v0; // r5
    signed int v1; // r4
    signed int v2; // r6
    int v3; // r1
    char *v4; // r5
    int v5; // r4
    int v6; // r0
    char v7; // zf
    int v8; // r1

    v0 = byte_2006670;
    v1 = 0;
    v2 = 255;
    do
    {
        if ( *(v0 + 2) && sub_81421E0() == *(v0 + 2) )
        {
            sub_8142990();
            v3 = *(v0 + 2);
            return sub_8142896();
        }
        v0 += 8;
        ++v1;
    }
    while ( v1 < 20 );
    v4 = byte_2006670;
    v5 = 0;
    while ( 1 )
    {
        if ( *(v4 + 2) )
        {
            v6 = sub_8142990();
            sub_814299C(v6, *(v4 + 2));
            if ( !v7 )
                break;
        }
        v4 += 8;
        if ( ++v5 >= 20 )
            return v2;
    }
    sub_8142990();
    v8 = *(v4 + 2);
    return sub_8142896();
}


// 0x8142bb6
int sub_8142BB6()
{
    char *v0; // r5
    signed int v1; // r4
    int result; // r0
    int v3; // r1
    int v4; // r2
    char v5; // zf
    int v6; // ST04_4
    int v7; // ST08_4
    int v8; // r0
    int v9; // r0
    int v10; // r1
    int v11; // r2

    v0 = byte_2006670;
    v1 = 0;
    do
    {
        result = *(v0 + 2);
        if ( *(v0 + 2) )
        {
            result = sub_81421E8(result);
            if ( !v5 )
            {
                v0[6] = 4;
                v6 = v3;
                v7 = v4;
                v8 = *(v0 + 2);
                v9 = sub_8142868();
                sub_8004822(19, v9, v10, v11);
                result = sound_play(109, v6, v7);
            }
        }
        v0 += 8;
        ++v1;
    }
    while ( v1 < 20 );
    return result;
}


// 0x8142bf4
void sub_8142BF4()
{
    JUMPOUT(&loc_8142BFE);
}


// 0x8142bfa
signed int sub_8142BFA()
{
    char *v0; // r5
    signed int v1; // r4
    signed int result; // r0
    int v3; // r0
    char v4; // zf

    v0 = byte_2006670;
    v1 = 0;
    do
    {
        result = *(v0 + 2);
        if ( *(v0 + 2) )
        {
            v3 = sub_8142990();
            result = sub_814299C(v3, *(v0 + 2));
            if ( !v4 )
                v0[6] = 12;
        }
        v0 += 8;
        ++v1;
    }
    while ( v1 < 20 );
    return result;
}


// 0x8142c20
int __fastcall sub_8142C20(int a1)
{
    char *v1; // r5
    signed int v2; // r4
    int v3; // r6

    v1 = byte_2006670;
    v2 = 0;
    v3 = 0;
    do
    {
        if ( *(v1 + 2) && v1[6] == a1 )
            ++v3;
        v1 += 8;
        ++v2;
    }
    while ( v2 < 20 );
    return v3;
}


// 0x8142c46
int __fastcall sub_8142C46(int a1)
{
    int v1; // r4
    int v2; // r0
    int v3; // r0
    unsigned __int8 v4; // vf
    int v5; // r4
    int v6; // r0
    __int64 v7; // r0
    int v8; // r2
    int v9; // r1
    int v10; // r2
    int v11; // r1
    int v12; // r2

    v1 = a1;
    v2 = getPETNaviSelect();
    v3 = sub_80010D4(v2);
    v4 = __OFSUB__(v3, v1);
    v5 = v3 - v1;
    if ( (v5 < 0) ^ v4 )
        v5 = 0;
    v6 = getPETNaviSelect();
    sub_80010EC(v6, v5);
    v7 = sub_809E1AE();
    sub_8004822(19, v7, SHIDWORD(v7), v8);
    sub_80302A8(1, 20);
    sound_play(107, v9, v10);
    return sound_play(268, v11, v12);
}


// 0x8142c90
void sub_8142C90()
{
    ;
}


// 0x8142c94
int sub_8142C94()
{
    return (loc_8000AC8)(dword_8619730, 100690944, &byte_420);
}


// 0x8142cb0
int sub_8142CB0()
{
    int v0; // r0

    v0 = sub_8142D58();
    return sub_8142DA0(v0) + *(dword_200BE7C + 8) + dword_200BE7C;
}


// 0x8142cc8
int __fastcall sub_8142CC8(int a1, int a2)
{
    int v2; // r4
    int v3; // r5
    int v4; // r6
    signed int v5; // r7
    signed int v6; // r7
    signed int v7; // r7
    int result; // r0

    v2 = eStruct200BE70;
    v3 = a1;
    v4 = *(&off_8142D44 + a2);
    *(a1 + 6) = *(v4 + 6);
    *(a1 + 8) = *(v4 + 8);
    v5 = 1;
    do
    {
        *(a1 + 2 * (v2 + v5)) = *(v4 + 2 * (v5 + 8));
        ++v5;
    }
    while ( v5 < 7 );
    v6 = 1;
    do
    {
        *(a1 + 2 * (2 * v2 + v6)) = *(v4 + 2 * (v6 + 16));
        ++v6;
    }
    while ( v6 < 7 );
    v7 = 3;
    do
    {
        result = *(v4 + 2 * (v7 + 24));
        *(v3 + 2 * (3 * v2 + v7++)) = result;
    }
    while ( v7 < 5 );
    return result;
}


// 0x8142d4c
void sub_8142D4C()
{
    sub_80307D8();
}


// 0x8142d58
int sub_8142D58()
{
    int v0; // r4
    int result; // r0
    int v2; // r4

    if ( byte_2000B48 < 128 )
    {
        v2 = 2 * (2 * (128 - byte_2000B48) * eStruct200BE70 - 4 * (128 - byte_2000B48));
        result = sub_8142DE6() + v2;
    }
    else
    {
        v0 = 2 * (2 * (byte_2000B48 - 128) * eStruct200BE70 - 4 * (byte_2000B48 - 128));
        result = sub_8142DE6() - v0;
    }
    return result;
}


// 0x8142da0
int __fastcall sub_8142DA0(int a1)
{
    int result; // r0

    if ( byte_2000B49 < 128 )
        result = a1 - 2 * (2 * (128 - byte_2000B49) * eStruct200BE70 + 4 * (128 - byte_2000B49));
    else
        result = a1 + 2 * (2 * (byte_2000B49 - 128) * eStruct200BE70 + 4 * (byte_2000B49 - 128));
    return result;
}


// 0x8142de6
int sub_8142DE6()
{
    int v0; // r10
    int v1; // r1
    signed int v2; // r1

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( *(v1 + oGameState_MapGroup) == 133 )
        v2 = 3;
    else
        v2 = *(v1 + 5);
    return *&byte_8142E0C[2 * v2];
}


// 0x8142ecc
int sub_8142ECC()
{
    int v0; // r10
    int v1; // r0
    char v2; // zf
    unsigned __int8 *v3; // r1
    char (*v4)[36]; // r7
    int v5; // r4
    int v6; // r0
    unsigned __int16 *v7; // r7
    int v8; // r4
    unsigned int v9; // r1
    char *v10; // r5
    signed int v11; // r4
    int v13; // [sp-10h] [bp-24h]
    int v14; // [sp-Ch] [bp-20h]
    int v15; // [sp-8h] [bp-1Ch]
    int v16; // [sp-4h] [bp-18h]

    v1 = sub_81430DC();
    TestEventFlag(v1);
    if ( v2 )
    {
        v3 = *(v0 + oToolkit_GameStatePtr);
        v13 = 4 * v3[oGameState_MapNumber];
        v14 = 4 * v3[oGameState_LastMapNumber];
        v15 = v3[oGameState_MapGroup];
        v16 = v3[oGameState_LastMapGroup];
        TestEventFlagFromImmediate(9, 96);
        if ( !v2 || v15 != v16 || v13 != v14 )
            sub_81431C6(v13, v14, v15, v16);
        v4 = off_8142E14[sub_8143088()];
        v5 = 0;
        while ( *v4 != 255 )
        {
            v6 = sub_81430B6(v5);
            TestEventFlag(v6);
            if ( v2 )
                sub_80047E0(22, *&(*v4)[2] << 16, *&(*v4)[4] << 16, *&(*v4)[6] << 16);
            ++v5;
            v4 = (v4 + 8);
        }
        sub_81433C2((*v4)[1]);
        v7 = *(&off_8142E1C + sub_8143088());
        v8 = 0;
        while ( *v7 != 255 )
        {
            sub_81430B6(v8);
            TestEventFlag(v9);
            if ( v2 )
                sub_80047E0(22, v7[1] << 16, v7[2] << 16, v7[3] << 16);
            ++v8;
            v7 += 4;
        }
        v10 = byte_2000D20;
        v11 = 0;
        do
        {
            if ( *v10 )
                sub_80047E0(24, 0, 0, 0);
            v10 += 20;
            ++v11;
        }
        while ( v11 < 8 );
        sub_81430F4();
        ClearEventFlagFromImmediate(9, 96);
    }
    return 0;
}


// 0x8142fc8
int sub_8142FC8()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    char v4; // zf
    char v5; // zf
    int v6; // r2
    int v7; // r3
    signed int v8; // r0
    int v9; // r2
    int v10; // r3

    sub_8034C36();
    if ( v4 )
        goto LABEL_20;
    v1 = sub_81430DC();
    TestEventFlag(v1);
    if ( !v4 )
        goto LABEL_20;
    sub_8143314();
    sub_8143248();
    TestEventFlagFromImmediate(9, 98);
    if ( v4 )
    {
        if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_11) )
        {
            sub_81433DA();
            if ( v4 )
                sound_play(105, v2, v3);
            else
                SetEventFlagFromImmediate(9, 98);
        }
    }
    else
    {
        TestEventFlagFromImmediate(9, 99);
        if ( v4 )
        {
            SetEventFlagFromImmediate(9, 99);
        }
        else
        {
            sub_80357AE();
            if ( v5 )
            {
                init_s_02011C50_8036E90(byte_808C2F0, 0, v6, v7);
                sub_81433F6(1);
            }
            ClearEventFlagFromImmediate(9, 98);
            ClearEventFlagFromImmediate(9, 99);
        }
    }
    sub_8143198();
    if ( v4 )
    {
        v8 = sub_8143088();
        init_s_02011C50_8036E90(*(&off_8143078 + v8), 0, v9, v10);
LABEL_20:
        ClearEventFlagFromImmediate(9, 98);
        ClearEventFlagFromImmediate(9, 99);
    }
    return 0;
}


// 0x8143088
signed int sub_8143088()
{
    int v0; // r10
    unsigned int i; // r6

    for ( i = 0; *&byte_81430B0[i]; i += 2 )
    {
        if ( *&byte_81430B0[i] == *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) )
            return i >> 1;
    }
    return 255;
}


// 0x81430b6
int __fastcall sub_81430B6(int a1)
{
    int v1; // r4
    char *v2; // r1
    int result; // r0
    int v4; // r1

    v1 = a1;
    v2 = &byte_81430D4[4 * sub_8143088()];
    result = *v2 + v1;
    v4 = *(v2 + 1) + v1;
    return result;
}


// 0x81430dc
int sub_81430DC()
{
    return *(&dword_81430F0 + sub_8143088());
}


// 0x81430f4
int sub_81430F4()
{
    unsigned __int8 *i; // r4

    reqBBS_setFlag_e17b0f7_8140A00();
    for ( i = *(&off_8143168 + sub_8143088()); *i; i += 8 )
    {
        dword_2011EA0[*i] = *(i + 1);
        SetEventFlag(*i + 5872);
    }
    return 0;
}


// 0x814312c
int sub_814312C()
{
    _BYTE *i; // r4

    reqBBS_clearFlag_8140A0C();
    for ( i = *(&off_8143168 + sub_8143088()); *i; i += 8 )
    {
        dword_2011EA0[*i] = 0;
        ClearEventFlag(*i + 5872);
    }
    return 0;
}


// 0x8143198
int sub_8143198()
{
    int v0; // r6
    int v1; // r7
    int v2; // r4
    char v3; // zf
    unsigned __int8 v4; // vf

    v0 = sub_81433CA();
    v1 = sub_81430B6(0);
    v2 = 0;
    do
    {
        TestEventFlag(v1);
        if ( !v3 )
            ++v2;
        ++v1;
        v4 = __OFSUB__(v0--, 1);
    }
    while ( !(((v0 < 0) ^ v4) | (v0 == 0)) );
    sub_81433CA();
    return v2;
}


// 0x81431c6
unsigned int __fastcall sub_81431C6(int a1, int a2, int a3, int a4)
{
    int v4; // r2
    int v5; // r3
    int v6; // r0
    int v7; // r1
    unsigned int v8; // r1

    sub_814339C(a1, a2, a3, a4);
    ZeroFillByWord(byte_2000D20, &loc_A0, v4, v5);
    v6 = sub_81430B6(0);
    ClearEventFlagRange(v6, v7, 8);
    sub_81430B6(0);
    return ClearEventFlagRange(v8, v8, 8);
}


// 0x81431f8
char *__fastcall sub_81431F8(int a1)
{
    return &byte_2000D20[20 * a1];
}


// 0x8143204
int __fastcall sub_8143204(int a1)
{
    char *v1; // r5
    int result; // r0

    v1 = sub_81431F8(a1);
    result = (change_20013F0_800151C() & 0x3F) + 30;
    *(v1 + 3) = result;
    return result;
}


// 0x8143220
int __fastcall sub_8143220(int a1)
{
    int v1; // r4
    char *v2; // r5

    v1 = a1;
    v2 = sub_81431F8(a1);
    *(v2 + 1) = (change_20013F0_800151C() & 0x3F) + 30;
    return sub_81432FA(v1, 1);
}


// 0x8143248
int sub_8143248()
{
    int v0; // r6
    char *v1; // r7
    int result; // r0
    int v3; // r4
    unsigned __int8 *v4; // r5

    v0 = 0;
    v1 = byte_2000D20;
    do
    {
        result = *v1;
        if ( *v1 )
        {
            v3 = v0 + 1;
            v4 = (v1 + 20);
            while ( 1 )
            {
                result = *v4;
                if ( *v4 )
                {
                    result = sub_80014D4(*(v4 + 2) - *(v1 + 2), *(v4 + 3) - *(v1 + 3));
                    if ( result < 393216 )
                        break;
                }
                v4 += 20;
                if ( ++v3 >= 8 )
                    goto LABEL_8;
            }
            result = sub_81432FA(v0, 2);
        }
LABEL_8:
        v1 += 20;
        ++v0;
    }
    while ( v0 < 8 );
    return result;
}


// 0x8143294
int sub_8143294()
{
    int v0; // r10
    int v1; // r4
    char *v2; // r5
    int result; // r0
    int v4; // r0
    int v5; // r1

    v1 = 0;
    v2 = byte_2000D20;
    do
    {
        result = *v2;
        if ( *v2 )
        {
            v4 = sub_80014D4(
                         *(v2 + 3) - *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 32),
                         *(v2 + 2) - *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 28));
            v5 = *v2;
            if ( v4 < 16384000 )
                v2[1] = 8;
            result = sub_81432FA(v1, 1);
        }
        v2 += 20;
        ++v1;
    }
    while ( v1 < 8 );
    return result;
}


// 0x81432d8
int sub_81432D8()
{
    int v0; // r6
    signed int v1; // r4
    char *v2; // r5

    v0 = 0;
    v1 = 0;
    v2 = byte_2000D20;
    do
    {
        if ( *v2 && *v2 == 3 )
            ++v0;
        v2 += 20;
        ++v1;
    }
    while ( v1 < 8 );
    return v0;
}


// 0x81432fa
int __fastcall sub_81432FA(int a1, char a2)
{
    char v2; // r4
    char *v3; // r0
    char *v4; // r5
    int result; // r0

    v2 = a2;
    v3 = sub_81431F8(a1);
    v4 = v3;
    result = *v3;
    if ( result != 3 )
        *v4 = v2;
    return result;
}


// 0x8143314
int sub_8143314()
{
    int v0; // r10
    char *v1; // r5
    int result; // r0
    char v3; // zf
    int v4; // r4
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r0

    v1 = byte_2000D20;
    result = sub_8143470();
    if ( v3 )
    {
        sub_814343A();
        v4 = 0;
        while ( 1 )
        {
            result = *v1;
            if ( !*v1 )
                break;
            v1 += 20;
            if ( ++v4 >= 6 )
                return result;
        }
        *v1 = 1;
        v1[1] = 0;
        *(v1 + 2) = change_20013F0_800151C();
        sub_8143204(v4);
        sub_8143220(v4);
        v5 = 2 * (change_20013F0_800151C() & 0xF0);
        v6 = *&byte_8006660[v5] << 16;
        v7 = *&byte_80065E0[v5] << 16;
        v8 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
        *(v1 + 2) = *(v8 + 28) - v6;
        *(v1 + 3) = *(v8 + 32) - v7;
        result = sub_80047E0(24, 0, 0, 0);
    }
    return result;
}


// 0x814339c
int __fastcall sub_814339C(int a1, int a2, int a3, int a4)
{
    int v4; // r2
    int v5; // r3

    sub_8003A64(2u, a2, a3, a4);
    ZeroFillByWord(&byte_2001018, 0x40u, v4, v5);
    sub_81433D2(5);
    sub_8143406();
    sub_814343A();
    return 0;
}


// 0x81433c2
char __fastcall sub_81433C2(char result)
{
    byte_2001018 = result;
    return result;
}


// 0x81433ca
int sub_81433CA()
{
    return byte_2001018;
}


// 0x81433d2
char __fastcall sub_81433D2(char result)
{
    byte_2001019 = result;
    return result;
}


// 0x81433da
int sub_81433DA()
{
    return byte_2001019;
}


// 0x81433e4
int __fastcall sub_81433E4(int result)
{
    int v1; // r1

    v1 = byte_2001019 + result;
    if ( v1 > 5 )
        LOBYTE(v1) = 5;
    byte_2001019 = v1;
    return result;
}


// 0x81433f6
signed int __fastcall sub_81433F6(signed int result)
{
    char v1; // r1

    v1 = byte_2001019 - result;
    if ( byte_2001019 < result )
        v1 = 0;
    byte_2001019 = v1;
    return result;
}


// 0x8143406
int sub_8143406()
{
    int result; // r0

    result = change_20013F0_800151C() & 3;
    byte_200101A = result;
    return result;
}


// 0x814343a
int sub_814343A()
{
    int v1; // [sp+0h] [bp-24h]

    ByteFill(&v1, 16, 0x20u);
    dword_200101C = *&byte_8143464[4 * sub_8000E3A(&v1, 3)];
    return 0;
}


// 0x8143470
int sub_8143470()
{
    int result; // r0

    result = dword_200101C - 1;
    if ( dword_200101C < 1 )
        result = 0;
    dword_200101C = result;
    return result;
}


// 0x8143482
int sub_8143482()
{
    char v0; // zf

    sub_81434BA();
    if ( v0 )
    {
        if ( byte_2001013 )
        {
            byte_2001013 = 0;
            sub_80468BA();
            sub_80468C6(8, 0, 0);
            sub_80468C6(9, 1, 0);
        }
        sub_8046818();
        sub_8046854();
    }
    return 0;
}


// 0x81434ba
BOOL sub_81434BA()
{
    char v0; // zf
    int v1; // r0
    BOOL result; // r0

    sub_811EBE0();
    result = 1;
    if ( v0 )
    {
        if ( sub_8143088() != 255 )
        {
            v1 = sub_81430DC();
            TestEventFlag(v1);
            if ( v0 )
                result = 0;
        }
    }
    return result;
}


// 0x8143978
int sub_8143978()
{
    int v0; // r10
    int v1; // r0
    char v2; // zf
    unsigned __int8 *v3; // r1
    unsigned __int8 *v4; // r7
    int v5; // r4
    int v6; // r0
    unsigned int v7; // r1
    unsigned int v8; // r6
    int v9; // r0
    int v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r2
    int v14; // r3
    int v16; // [sp-10h] [bp-24h]
    int v17; // [sp-Ch] [bp-20h]
    int v18; // [sp-8h] [bp-1Ch]
    int v19; // [sp-4h] [bp-18h]

    SetEventFlagRangeFromImmediate(22, 112, 48);
    v1 = sub_8143C18();
    TestEventFlag(v1);
    if ( v2 )
    {
        v3 = *(v0 + 60);
        v16 = 4 * v3[5];
        v17 = 4 * v3[13];
        v18 = v3[4];
        v19 = v3[12];
        TestEventFlagFromImmediate(13, 48);
        if ( !v2 || v18 != v19 || v16 != v17 )
            sub_8143C30(v16, v17, v18, v19);
        v4 = *(&off_8143804 + sub_8143B30());
        v5 = 0;
        while ( *v4 != 255 )
        {
            v6 = sub_8143B5E(v5);
            v8 = v7;
            TestEventFlag(v6);
            if ( v2 )
            {
                ClearEventFlag(v8);
                v9 = *(v4 + 1);
                v10 = sub_8143DBC();
                sub_80047E0(43, v10, v11, v12);
            }
            ++v5;
            v4 += 4;
        }
        sub_8143F58(v4[1]);
        sub_8143C88();
        sub_8143C62();
        TestEventFlagFromImmediate(13, 54);
        if ( !v2 )
        {
            init_s_02011C50_8036E90(byte_8093358, 0, v13, v14);
            sub_8143F38();
            ClearEventFlagFromImmediate(13, 54);
        }
        ClearEventFlagFromImmediate(13, 48);
        ClearEventFlagFromImmediate(13, 52);
        ClearEventFlagFromImmediate(13, 53);
    }
    return 0;
}


// 0x8143a54
int sub_8143A54()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    char v3; // zf
    char v4; // zf
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r2
    int v9; // r3
    signed int v10; // r0
    int v11; // r2
    int v12; // r3
    int result; // r0
    int v14; // r0
    int v15; // r2
    int v16; // r3

    sub_8034C36();
    if ( v3 )
        goto LABEL_24;
    v1 = sub_8143C18();
    TestEventFlag(v1);
    if ( !v3 )
        goto LABEL_24;
    TestEventFlagFromImmediate(13, 52);
    if ( v3 )
    {
        if ( *(*(v0 + 60) + 17) )
            SetEventFlagFromImmediate(13, 52);
    }
    else
    {
        TestEventFlagFromImmediate(13, 53);
        if ( v3 )
        {
            SetEventFlagFromImmediate(13, 53);
        }
        else
        {
            v5 = sub_80357AE();
            if ( v4 )
            {
                v6 = sub_8143DEA(v5);
                sub_8143EDC(v6);
                if ( !v3 )
                {
                    v7 = sub_8143EA4();
                    sub_8143BB0(v7);
                    if ( v3 )
                        init_s_02011C50_8036E90(byte_8092DE8, 0, v8, v9);
                    else
                        init_s_02011C50_8036E90(byte_80933B8, 0, v8, v9);
                }
            }
            ClearEventFlagFromImmediate(13, 52);
            ClearEventFlagFromImmediate(13, 53);
        }
    }
    if ( sub_8143D4C() == v2 )
    {
        v10 = sub_8143B30();
        init_s_02011C50_8036E90(dword_8143B1C[v10], 0, v11, v12);
        if ( !v3 )
            goto LABEL_24;
    }
    result = sub_8143F72();
    if ( v3 )
    {
        v14 = sub_8143B30();
        init_s_02011C50_8036E90(byte_809326C, v14, v15, v16);
LABEL_24:
        ClearEventFlagFromImmediate(13, 52);
        result = ClearEventFlagFromImmediate(13, 53);
    }
    return result;
}


// 0x8143b30
signed int sub_8143B30()
{
    int v0; // r10
    unsigned int i; // r6

    for ( i = 0; *&byte_8143B58[i]; i += 2 )
    {
        if ( *&byte_8143B58[i] == *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) )
            return i >> 1;
    }
    return 255;
}


// 0x8143b5e
int __fastcall sub_8143B5E(int a1)
{
    int v1; // r4
    int v2; // r3
    int result; // r0
    int v4; // r1

    v1 = a1;
    v2 = 2 * sub_8143B30();
    result = *(&dword_8143B7C + v2) + v1;
    v4 = *(&dword_8143B84 + v2) + v1;
    return result;
}


// 0x8143b88
int __fastcall sub_8143B88(int a1)
{
    int v1; // r4
    signed int v2; // r0
    int v3; // r1

    v1 = a1;
    v2 = sub_8143B30();
    v3 = *&(*off_814380C[v2])[2 * (v1 - *&byte_8143BF0[4 * v2])];
    return v1;
}


// 0x8143bb0
signed int __fastcall sub_8143BB0(int a1)
{
    int v1; // r4
    signed int v2; // r0
    char (*v3)[24]; // r7
    unsigned int v4; // r5
    int v5; // r0
    char v6; // zf

    v1 = a1;
    v2 = sub_8143B30();
    v3 = off_814380C[v2];
    v4 = *&byte_8143BF0[v2 * 4];
    while ( 1 )
    {
        v5 = *v3;
        if ( v5 == 0xFFFF )
            break;
        if ( *v3 && v5 == v1 )
        {
            TestEventFlag(v4);
            if ( v6 )
                return 1;
            return 0;
        }
        ++v4;
        v3 = (v3 + 2);
    }
    return 0;
}


// 0x8143bfc
int sub_8143BFC()
{
    return *&byte_8143C10[4 * sub_8143B30()];
}


// 0x8143c18
int sub_8143C18()
{
    return *(&dword_8143C2C + sub_8143B30());
}


// 0x8143c30
int __fastcall sub_8143C30(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r0

    sub_8143F20(a1, a2, a3, a4);
    v4 = sub_8143B5E(0);
    ClearEventFlagRange(v4, v5, 48);
    ClearEventFlagRangeFromImmediate(13, 152, 10);
    ClearEventFlagRangeFromImmediate(13, 162, 10);
    v6 = sub_8143BFC();
    return sub_8143F68(v6);
}


// 0x8143c62
unsigned int sub_8143C62()
{
    signed int v0; // r0

    v0 = sub_8143B30();
    sub_8030A60(*(&off_8143C80 + v0));
    return SetEventFlagFromImmediate(23, 33);
}


// 0x8143c88
int sub_8143C88()
{
    unsigned __int8 *i; // r4

    reqBBS_setFlag_e17b0f7_8140A00();
    SetEventFlagFromImmediate(1, 187);
    for ( i = *(&off_8143D0C + sub_8143B30()); *i; i += 8 )
    {
        dword_2011EA0[*i] = *(i + 1);
        SetEventFlag(*i + 5872);
    }
    return 0;
}


// 0x8143cc8
int sub_8143CC8()
{
    _BYTE *i; // r4

    reqBBS_clearFlag_8140A0C();
    ClearEventFlagFromImmediate(1, 187);
    for ( i = *(&off_8143D0C + sub_8143B30()); *i; i += 8 )
    {
        dword_2011EA0[*i] = 0;
        ClearEventFlag(*i + 5872);
    }
    return 0;
}


// 0x8143d4c
int sub_8143D4C()
{
    int v0; // r7
    int v1; // r4
    int v2; // r6
    int v3; // r0
    char v4; // zf

    v0 = sub_8143F60();
    v1 = 0;
    v2 = 0;
    do
    {
        v3 = sub_8143B5E(v1);
        TestEventFlag(v3);
        if ( !v4 )
            ++v2;
        ++v1;
    }
    while ( v1 < v0 );
    sub_8143F60();
    return v2;
}


// 0x8143d7a
int __fastcall sub_8143D7A(int a1, int a2)
{
    int v2; // ST00_4
    int v3; // ST04_4
    int v4; // r0
    int v5; // r1

    v2 = a1;
    v3 = a2;
    v4 = sub_8143D9E();
    return ((v4 + (v2 >> 16)) >> 5) + 128 + ((((v5 + (v3 >> 16)) >> 5) + 128) << 8);
}


// 0x8143d9e
int sub_8143D9E()
{
    char *v0; // r3
    int result; // r0
    int v2; // r1

    v0 = &dword_8143DB8 + 2 * sub_8143B30();
    result = *v0;
    v2 = v0[1];
    return result;
}


// 0x8143dbc
int sub_8143DBC()
{
    __asm { SVC         6 }
    return (4112 - sub_8143D9E()) << 16;
}


// 0x8143dea
int __fastcall sub_8143DEA(int a1)
{
    int v1; // r4
    int v2; // r0
    int v4; // r7
    int v5; // r6
    int v6; // r7
    __int64 v7; // ST00_8
    int v8; // r0
    int v9; // r1
    int v10; // ST08_4
    int v11; // r0
    int v12; // r1

    v1 = sub_8143EA4();
    v2 = sub_809E2B8();
    if ( v2 & 1 )
        return sub_8143E68(v1, v2, 1);
    v4 = (v2 + 1) & 7;
    v5 = sub_8143E68(v1, (v2 - 1) & 7, 1);
    v6 = sub_8143E68(v1, v4, 1);
    v7 = sub_809E1AE();
    v8 = sub_8143DBC();
    v10 = sub_80014D4(v8 - v7, v9 - HIDWORD(v7));
    v11 = sub_8143DBC();
    if ( sub_80014D4(v11 - v7, v12 - HIDWORD(v7)) > v10 )
        v6 = v5;
    return v6;
}


// 0x8143e68
int __fastcall sub_8143E68(unsigned int a1, int a2, int a3)
{
    return (a1 + byte_8143E94[2 * a2] * a3) | (((a1 >> 8) + byte_8143E94[2 * a2 + 1] * a3) << 8);
}


// 0x8143ea4
int sub_8143EA4()
{
    __int64 v0; // r0

    v0 = sub_809E1AE();
    return sub_8143D7A(v0, SHIDWORD(v0));
}


// 0x8143eb0
unsigned int sub_8143EB0()
{
    int v0; // r1
    int v1; // ST00_4
    int v2; // ST04_4
    int v3; // r0
    int v4; // r1

    v1 = sub_8143DBC();
    v2 = v0;
    v3 = sub_8143DBC();
    return (((((calcAngle_800117C(v3 - v1, v2 - v4) + 16) >> 4) & 0xF) >> 1) - 1) & 7;
}


// 0x8143edc
signed int __fastcall sub_8143EDC(int a1)
{
    int v1; // r6
    unsigned __int8 *v2; // r7
    int v3; // r4
    int v4; // r0
    char v5; // zf

    v1 = a1;
    v2 = *(&off_8143804 + sub_8143B30());
    v3 = 0;
    while ( *v2 != 255 )
    {
        v4 = sub_8143B5E(v3);
        TestEventFlag(v4);
        if ( v5 && *(v2 + 1) == v1 )
            return 1;
        ++v3;
        v2 += 4;
    }
    return 0;
}


// 0x8143f1c
void sub_8143F1C()
{
    ;
}


// 0x8143f20
int __fastcall sub_8143F20(int a1, int a2, int a3, int a4)
{
    int v4; // r2
    int v5; // r3

    sub_8003A64(5u, a2, a3, a4);
    ZeroFillByWord(&byte_2001018, 0x40u, v4, v5);
    return 0;
}


// 0x8143f38
int sub_8143F38()
{
    byte_2001019 = 1;
    return 0;
}


// 0x8143f58
int __fastcall sub_8143F58(int result)
{
    dword_2001020 = result;
    return result;
}


// 0x8143f60
int sub_8143F60()
{
    return dword_2001020;
}


// 0x8143f68
int __fastcall sub_8143F68(int result)
{
    dword_200101C = result;
    return result;
}


// 0x8143f72
int sub_8143F72()
{
    return dword_200101C;
}


// 0x8143f7c
int sub_8143F7C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 9);
    if ( !*(v0 + 9) )
    {
        result = dword_200101C - 1;
        if ( dword_200101C >= 1 )
            --dword_200101C;
    }
    return result;
}


// 0x8143f90
int sub_8143F90()
{
    int v0; // r4

    v0 = sub_8143F72();
    sub_8143BFC();
    __asm { SVC         6 }
    return 2621440 * v0;
}


// 0x8143faa
signed int sub_8143FAA()
{
    signed int result; // r0

    dword_2001024 = 0;
    dword_2001028 = 0;
    result = 0x2000;
    dword_200102C = 0x2000;
    return result;
}


// 0x8143fc4
int __fastcall sub_8143FC4(int a1, int a2, int a3)
{
    int result; // r0
    int v4; // r1

    if ( !dword_2001024 )
        sound_play(440, a2, a3);
    result = dword_2001024 + dword_2001028;
    v4 = dword_2001028 + dword_200102C;
    if ( dword_2001024 + dword_2001028 < 0 )
    {
        result = 0;
        v4 = -dword_2001028;
    }
    else if ( result >= 6553600 )
    {
        result = 6553600;
        v4 = -dword_2001028;
    }
    dword_2001024 = result;
    dword_2001028 = v4;
    return result;
}


// 0x8144010
int sub_8144010()
{
    int result; // r0
    signed int v1; // r1

    result = dword_2001024 >> 16;
    if ( dword_2001024 >> 16 < 0 )
    {
        result = 0;
    }
    else if ( result >= 100 )
    {
        result = 100;
    }
    v1 = 0;
    do
    {
        if ( result < byte_8144040[v1] )
            break;
        ++v1;
    }
    while ( v1 <= 4 );
    return result;
}


// 0x8144048
int sub_8144048()
{
    int v0; // r10
    char v1; // zf
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3

    sub_81440AE();
    if ( v1 )
    {
        if ( byte_2001013 )
        {
            byte_2001013 = 0;
            sub_80468BA();
            sub_80468C6(14, 0, 0);
            sub_80468C6(12, 1, 0);
            sub_80468C6(13, 2, 0);
        }
        sub_8046818();
        sub_8046854();
        v2 = sub_804691A(3);
        if ( !v1 )
            sub_811E744(v2, v3, v4, v5);
        IsPaletteFadeActive();
        if ( !v1 && **(v0 + oToolkit_GameStatePtr) == 4 )
            sub_8143F7C();
    }
    sub_8143F1C();
    return 0;
}


// 0x81440ae
BOOL sub_81440AE()
{
    char v0; // zf
    int v1; // r0
    BOOL result; // r0

    sub_811EBE0();
    result = 1;
    if ( v0 )
    {
        if ( sub_8143B30() != 255 )
        {
            v1 = sub_8143C18();
            TestEventFlag(v1);
            if ( v0 )
                result = 0;
        }
    }
    return result;
}


