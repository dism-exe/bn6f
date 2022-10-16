// 0x800bd34
int object_timefreezeEnd()
{
    int v0; // r5
    int result; // r0
    char *v2; // r0
    int v3; // r1

    if ( *(v0 + 11) )
        return object_freeMemory();
    sub_800B884(*(v0 + 22));
    result = sub_800B892(*(v0 + 22) ^ 1);
    if ( result == 5 || !result )
    {
        if ( sub_800B8D8(*(v0 + 22)) )
        {
            v2 = sub_800BF5C(*(v0 + 22) ^ 1);
            v3 = *(v2 + 2);
            if ( v3 )
            {
                *(v3 + 8) = 8;
                *(v3 + 11) = 4;
            }
            *(v2 + 3) = 0;
            sub_800B89C(*(v0 + 22) ^ 1);
            battle_clearFlags(4);
        }
        sub_800B884(*(v0 + 22));
        sub_800B89C(*(v0 + 22));
        *(sub_800BF5C(*(v0 + 22)) + 3) = 0;
        result = object_freeMemory();
    }
    return result;
}


// 0x800bdb2
int sub_800BDB2()
{
    int v0; // r5

    return (*(&off_800BDC4 + *(v0 + 10)))();
}


// 0x800bdd0
signed int sub_800BDD0()
{
    int v0; // r5
    signed int result; // r0

    if ( *(v0 + 48) - 221 <= 0x3B && sub_802CE78(*(v0 + 22) ^ 1) == 186 )
    {
        sub_800B884(*(v0 + 22));
        sub_800ABC6(*(v0 + 18), *(v0 + 19));
        result = 4;
        *(v0 + 10) = 4;
    }
    else
    {
        *(v0 + 9) += 4;
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x800be0c
int sub_800BE0C()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( *(v0 + 11) )
    {
        v2 = *(v0 + 32);
        v3 = __OFSUB__(v2, 1);
        result = v2 - 1;
        *(v0 + 32) = result;
        if ( (result < 0) ^ v3 )
        {
            result = 8;
            *(v0 + 10) = 8;
        }
    }
    else
    {
        *(v0 + 32) = 30;
        result = 4;
        *(v0 + 11) = 4;
    }
    return result;
}


// 0x800be2c
int sub_800BE2C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int result; // r0
    char v4; // r0
    int v5; // r3
    char v6; // r4
    int v7; // r3

    if ( *(v0 + 11) )
    {
        result = sub_801E754();
        if ( !result )
        {
            sub_800B89C(*(v0 + 22));
            v4 = *(v0 + 22) ^ 1;
            *(v0 + 22) = v4;
            sub_800B8AC(v4);
            sub_800B884(*(v0 + 22));
            v5 = *(sub_800BF5C(*(v0 + 22)) + 2);
            if ( v5 )
            {
                *(v5 + 8) = 8;
                *(v5 + 11) = 4;
            }
            v6 = *(v0 + 22);
            sub_800BF5C(0)[3] = v6;
            sub_800BF5C(1)[3] = v6;
            sub_802CE78(*(v0 + 22));
            if ( v7 )
            {
                *(v0 + 18) = *(v7 + 18);
                *(v0 + 76) = v7;
            }
            sub_802CEA6(*(v0 + 22));
            *(v0 + 9) += 4;
            result = 0;
            *(v0 + 10) = 0;
        }
    }
    else
    {
        if ( battle_networkInvert(*(v0 + 22) ^ 1) )
            (sub_801E792)(80, 0, 0, 186);
        else
            (sub_801E792)(76, 0, 0, 186);
        PlaySoundEffect(371, v1, v2);
        result = 4;
        *(v0 + 11) = 4;
    }
    return result;
}


// 0x800beda
BOOL sub_800BEDA()
{
    int v0; // r5
    char *v1; // r0
    int v2; // r2
    char *v3; // r0
    BOOL result; // r0

    v1 = sub_800BF5C(*(v0 + 22));
    v2 = *(v1 + 3);
    result = 0;
    if ( (!v2 || v2 == v0) && (!v1[1] || v1[1] == 3) )
    {
        v3 = sub_800BF5C(*(v0 + 22) ^ 1);
        if ( !v3[2] && v3[1] == 2 )
            result = 1;
    }
    return result;
}


// 0x800bf16
char *__fastcall sub_800BF16(int a1, char a2, int a3)
{
    int v3; // r5
    int v4; // ST00_4
    char v5; // r4
    char *result; // r0
    int v7; // r3
    char v8; // [sp+4h] [bp-10h]
    int v9; // [sp+8h] [bp-Ch]

    v4 = a1;
    v8 = a2;
    v9 = a3;
    v5 = a1;
    sub_800BF5C(0)[3] = a1;
    sub_800BF5C(1)[3] = v5;
    sub_800B8AC(v4);
    result = sub_800BF5C(v4);
    v7 = *(result + 2);
    if ( v7 )
    {
        *(v7 + 8) = 8;
        *(v7 + 11) = 4;
    }
    result[2] = v8;
    *(result + 2) = v9;
    *(result + 3) = v3;
    result[1] = 1;
    return result;
}


// 0x800bf5c
char *__fastcall sub_800BF5C(int a1)
{
    return &byte_203CF00[80 * a1];
}


// 0x800bf66
void __fastcall sub_800BF66(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(byte_203CF00, 160);
}


// 0x800bf88
signed int __fastcall sub_800BF88(int a1, unsigned int a2)
{
    signed int result; // r0

    sub_800C4BC(a1, a2);
    *byte_203CB04 = 140;
    byte_2036742 = 0;
    byte_2036744 = 0;
    byte_2036746 = 0;
    byte_2036748 = 0;
    byte_203674A = 0;
    byte_203674C = 0;
    byte_2036743 = 14;
    byte_2036745 = 13;
    byte_2036747 = 12;
    byte_2036749 = 11;
    byte_203674B = 10;
    result = 9;
    byte_203674D = 9;
    return result;
}


// 0x800bfc4
int sub_800BFC4()
{
    int result; // r0
    char v1; // zf

    result = battle_isPaused();
    if ( !result )
    {
        result = battle_isTimeStop();
        if ( v1 )
            sub_800C746();
    }
    return result;
}


// 0x800c01c
void __fastcall sub_800C01C(int a1, int a2, signed int a3, int a4)
{
    int v4; // r10
    int v5; // r6
    int v6; // r4
    int v7; // r3
    char *v8; // r6

    v5 = *(v4 + oToolkit_S2034880_Ptr);
    v6 = *(v5 + 13);
    if ( *(v5 + 13) && a3 >= 11 )
    {
        if ( a3 == 12 )
            a3 = 11;
        else
            a3 = 12;
    }
    v7 = a4 ^ v6;
    v8 = byte_800C08C;
    if ( a3 != 255 )
        v8 = &byte_86DFA98[32 * (6 * a3 + 3 * v7 + a2 - 1)];
    iCopyBackgroundTiles(byte_800C0AA[8 * v6 + a1], 3 * a2 + 6, 2, v8, 5, 3);
}


// 0x800c0ba
void __fastcall __noreturn sub_800C0BA(int a1, int a2, int a3)
{
    int v3; // r10

    CopyBackgroundTiles(byte_800C0AA[8 * *(*(v3 + oToolkit_S2034880_Ptr) + 13) + a1], 3 * a2 + 6, 2, off_800C0F4[a3], 5, &byte_0[3]);
}


// 0x800c100
void __fastcall __noreturn sub_800C100(int a1, int a2, int a3)
{
    int v3; // r10
    int v4; // r4

    v4 = *(*(v3 + oToolkit_S2034880_Ptr) + 13);
    CopyBackgroundTiles(byte_800C182[8 * v4 + a1], 3 * a2 + 6, 2, &byte_86E0498[32 * (a3 ^ v4)], 5, &byte_0[1]);
}


// 0x800c138
void __fastcall __noreturn sub_800C138(int a1, int a2)
{
    int v2; // r10

    CopyBackgroundTiles(byte_800C182[8 * *(*(v2 + oToolkit_S2034880_Ptr) + 13) + a1], 3 * a2 + 6, 2, byte_800C178, 5, &byte_0[1]);
}


// 0x800c192
void sub_800C192()
{
    int *i; // r7
    unsigned __int8 *v1; // r6
    int v2; // r4
    int v3; // r2
    unsigned __int8 v4; // vf
    int v5; // r1
    int v6; // r2
    int *v7; // r2

    for ( i = off_800C1DC; ; ++i )
    {
        v1 = *i;
        if ( !*i )
            break;
        v2 = v1[2];
        v3 = byte_2036740[v2];
        v4 = __OFSUB__(v3--, 1);
        byte_2036740[v2] = v3;
        if ( ((v3 < 0) ^ v4) | (v3 == 0) )
        {
            v5 = *v1;
            v6 = byte_2036740[v5] + 1;
            if ( v6 >= v1[1] )
                v6 = 0;
            byte_2036740[v5] = v6;
            v7 = &v1[8 * v6 + 8];
            byte_2036740[v2] = v7[1];
            CopyByEightWords(*v7, *(v1 + 1), 0x20u);
        }
    }
}


// 0x800c380
void __fastcall sub_800C380(int a1, int a2)
{
    int v2; // r7
    int v3; // r4
    int v4; // r5
    int v5; // r0
    __int16 v6; // r1
    __int16 v7; // r1
    __int16 v8; // r1
    __int16 v9; // r1
    int v10; // r1
    char v11; // r2
    int v12; // r0
    signed int v13; // r2
    int v14; // r1
    char v15; // r2

    v3 = a1;
    v4 = a2;
    v5 = *(v2 + 2);
    if ( *(v2 + 2) )
    {
        switch ( v5 )
        {
            case 1:
                *(v2 + 18) = &loc_708;
                v10 = *(v2 + 14) - 1;
                *(v2 + 14) = v10;
                if ( !v10 )
                {
                    *(v2 + 2) = 2;
                    object_updatePanelParameters(v3, v4);
                }
                v11 = 1;
                if ( v10 <= 60 )
                {
                    if ( __CFSHR__(v10, 2) )
                        v11 = 2;
                }
                *(v2 + 6) = v11;
                break;
            case 3:
                sub_800C488(3);
                *(v2 + 14) = v6;
                *(v2 + 18) = &loc_708;
                v12 = *(v2 + 24);
                if ( v12 & 0xF800000 && !(v12 & 0x100000) && !(object_getPanelParameters(v3, v4) & 0xF880080) )
                {
                    *(v2 + 2) = 1;
                    object_updatePanelParameters(v3, v4);
                }
                break;
            case 8:
                sub_800C488(8);
                *(v2 + 14) = v7;
                *(v2 + 18) = &loc_708;
                v13 = 140;
                if ( *(v2 + 10) > 3 )
                    v13 = 70;
                if ( *byte_203CB04 == v13 )
                    sub_80C5B76(*(v2 + 10), *(v2 + 11), 0, 0);
                break;
            default:
                if ( v5 < 9 || v5 > 12 )
                {
                    sub_800C488(v5);
                    *(v2 + 14) = v9;
                    *(v2 + 18) = &loc_708;
                }
                else
                {
                    sub_800C488(v5);
                    *(v2 + 14) = v8;
                    v14 = *(v2 + 18) - 1;
                    *(v2 + 18) = v14;
                    if ( !v14 )
                    {
                        *(v2 + 2) = 2;
                        object_updatePanelParameters(v3, v4);
                    }
                    v15 = *(v2 + 2);
                    if ( v14 <= 60 && __CFSHR__(v14, 2) )
                        v15 = 2;
                    *(v2 + 6) = v15;
                }
                break;
        }
    }
}


// 0x800c488
void __fastcall sub_800C488(int a1)
{
    sub_802D234();
}


// 0x800c4bc
int __fastcall sub_800C4BC(int a1, unsigned int a2)
{
    char *v2; // r0
    char *v3; // r7
    signed int v4; // r4
    int v5; // r1
    int v6; // r5
    int v7; // r4
    char *v8; // r7
    BOOL v9; // r0
    int v10; // r1
    char *v11; // r0
    char v12; // r1
    int v13; // r0
    __int16 v14; // r1
    char *v16; // [sp+0h] [bp-1Ch]
    unsigned int v17; // [sp+4h] [bp-18h]

    v17 = a2;
    v16 = sub_800C6D6(a1);
    v2 = sub_800C8C2(0);
    ZeroFillByWord(v2, 64);
    v3 = sub_800C8C2(0);
    v4 = 0;
    do
    {
        LOBYTE(v5) = -1;
        if ( (v4 - 1) <= 5 )
            v5 = (v17 >> (v4 - 1)) & 1;
        *v3 = v5;
        v3 += 8;
        ++v4;
    }
    while ( v4 < 8 );
    ZeroFillByWord(byte_2039AE0, &dword_500);
    v6 = 0;
    do
    {
        v7 = 0;
        do
        {
            v8 = sub_800C6E0(v7, v6);
            *v8 = byte_800C590[8 * v6 + v7];
            v9 = object_isValidPanel(v7, v6);
            LOBYTE(v10) = 0;
            if ( v9 )
                v10 = (*&v16[4 * (v6 - 1)] >> 4 * (v7 - 1)) & 0xF;
            v8[2] = v10;
            v8[6] = v10;
            v11 = sub_800C8C2(v7);
            v12 = *v11;
            v8[3] = *v11;
            v8[4] = v12;
            v8[7] = v12;
            v13 = byte_800C5B8[8 * v6 + v7];
            v8[12] = v13;
            v8[10] = v7;
            v8[11] = v6;
            sub_800C488(v13);
            *(v8 + 7) = v14;
            *(v8 + 9) = &loc_708;
            ++v7;
        }
        while ( v7 < 8 );
        ++v6;
    }
    while ( v6 < 5 );
    return sub_800C67C();
}


// 0x800c5e0
int sub_800C5E0()
{
    char *v0; // r7
    signed int v1; // r6
    int v2; // r4
    int v3; // r5
    int result; // r0
    char v5; // zf
    int v6; // r0
    int v7; // r2

    sub_800C192();
    v0 = byte_2039AE0;
    v1 = 0;
    do
    {
        v2 = v0[10];
        v3 = v0[11];
        result = object_isValidPanel(v2, v3);
        if ( !v5 )
        {
            if ( !*v0 )
            {
                sub_800C01C(v2, v3, 255, 0);
                v7 = v0[7];
                sub_800C138(v0[10], v0[11] + 1);
            }
            if ( v0[13] )
            {
                v0[13] = 0;
                sub_800C01C(v2, v3, v0[8], v0[9]);
            }
            else
            {
                v6 = v0[1];
                if ( v0[1] )
                {
                    v0[1] = 0;
                    sub_800C0BA(v2, v3, v6 - 1);
                }
                sub_800C01C(v2, v3, v0[6], v0[7]);
            }
            result = v0[12];
            if ( v0[12] )
                sub_800C100(v2, v3 + 1, v0[7]);
        }
        v0 += 32;
        ++v1;
    }
    while ( v1 < 40 );
    return result;
}


// 0x800c67c
signed int sub_800C67C()
{
    char *v0; // r7
    int v1; // r4
    int v2; // ST00_4
    signed int v3; // r0
    char v4; // r1
    signed int result; // r0
    int v6; // [sp+0h] [bp-20h]
    int v7; // [sp+4h] [bp-1Ch]

    v0 = &byte_203F6B0;
    v6 = 1;
    v7 = 6;
    v1 = 1;
    while ( v6 < v7 )
    {
        v2 = *(&v6 + 2 * (1 - v1));
        v3 = sub_800C84A(*(&v6 + 2 * (1 - v1)), v1);
        v0[2] = v3;
        v0[3] = v4;
        *v0 = (v3 - 1) * v1 + v2;
        v0[1] = -v1;
        *(&v6 + 2 * (1 - v1)) += v3 * v1;
        v1 = -v1;
        v0 += 4;
    }
    result = 255;
    *v0 = -1;
    return result;
}


// 0x800c6d6
char *__fastcall sub_800C6D6(int a1)
{
    return &byte_800D730[12 * a1];
}


// 0x800c6e0
char *__fastcall sub_800C6E0(int a1, int a2)
{
    return &byte_2039AE0[32 * (a1 + 8 * a2)];
}


// 0x800c6f0
__int64 __fastcall __noreturn sub_800C6F0(int a1)
{
    __int64 v1; // r6
    int v2; // r4
    int v3; // r5
    char *v4; // r0
    int v6; // [sp+0h] [bp-1Ch]
    int v7; // [sp+4h] [bp-18h]

    v1 = 0LL;
    v2 = a1;
    v3 = 1;
    v6 = 0;
    v7 = 0;
    do
    {
        v4 = object_getPanelDataOffset(v2, v3);
        if ( v4 )
        {
            if ( v4[3] != v4[4] )
            {
                LODWORD(v1) = v1 + 1;
                v6 |= 1 << v3;
                if ( !(*(v4 + 5) & 0xF880080) )
                {
                    ++HIDWORD(v1);
                    v7 |= 1 << v3;
                }
            }
        }
        ++v3;
    }
    while ( v3 <= 3 );
    return v1;
}


// 0x800c746
void __noreturn sub_800C746()
{
    sub_800C6F0(1);
}


// 0x800c81e
int __fastcall sub_800C81E(int result, unsigned int a2, char a3)
{
    int v3; // r4
    int v4; // r5
    char v5; // r6
    unsigned int v6; // r7
    char v7; // cf
    char *v8; // r0

    v3 = result;
    v4 = 1;
    v5 = a3;
    v6 = a2 >> 1;
    do
    {
        v7 = v6 & 1;
        v6 >>= 1;
        if ( v7 )
        {
            v8 = sub_800C6E0(result, v4);
            v8[3] = v5;
            v8[16] = 90;
            object_updatePanelParameters(v3, v4);
        }
        ++v4;
    }
    while ( v6 );
    return result;
}


// 0x800c84a
signed int __fastcall sub_800C84A(int a1, int a2)
{
    int v2; // r4
    int v3; // r5
    char *v4; // r0
    int v5; // r3
    char *v6; // r0
    signed int v7; // r6

    v2 = a1;
    v3 = a2;
    v4 = sub_800C8C2(a1);
    v5 = *v4;
    v6 = &v4[8 * v3];
    v7 = 1;
    while ( (v2 - 1) <= 5 && *v6 == v5 )
    {
        ++v7;
        v6 += 8 * v3;
        v2 += v3;
    }
    return v7;
}


// 0x800c878
void __fastcall __noreturn sub_800C878(unsigned int a1, char a2)
{
    unsigned int v2; // r7
    unsigned __int8 *v3; // r6
    char v4; // cf
    char *v5; // r7

    v2 = a1 >> 1;
    v3 = byte_2034010;
    while ( 1 )
    {
        v3 += 8;
        if ( !v2 )
            break;
        v4 = v2 & 1;
        v2 >>= 1;
        if ( v4 )
        {
            v3[1] = 1;
            *(v3 + 3) = 0;
            *v3 = a2;
        }
    }
    v5 = sub_800C6E0(0, 0);
    v5[4] = *sub_800C8C2(0);
    object_updatePanelParameters(0, 0);
}


// 0x800c8c2
char *__fastcall sub_800C8C2(int a1)
{
    return &byte_2034010[8 * a1];
}


// 0x800c8f0
void __noreturn sub_800C8F0()
{
    sub_800C918();
}


// 0x800c8f8
int __fastcall object_getPanelParameters(int a1, int a2)
{
    char *v2; // r0
    int result; // r0

    v2 = object_getPanelDataOffset(a1, a2);
    if ( v2 )
        result = *(v2 + 5);
    else
        result = 0;
    return result;
}


// 0x800c90a
char *__fastcall object_getPanelDataOffset(int a1, int a2)
{
    return _object_getPanelDataOffset(a1, a2);
}


// 0x800c918
char *__noreturn sub_800C918()
{
    return sub_30078C8();
}


// 0x800c928
char *__fastcall __noreturn object_updatePanelParameters(int a1, int a2)
{
    return _object_updatePanelParameters(a1, a2);
}


// 0x800c938
signed int __fastcall __noreturn object_crackPanel(int a1, int a2)
{
    char *v2; // r0
    int v3; // r1
    int v4; // r1
    int v6; // r1

    v2 = object_getPanelDataOffset(a1, a2);
    if ( !v2 )
        return 0;
    v3 = *(v2 + 5);
    if ( !(v3 & 0x10) )
        return 0;
    if ( !(v3 & 0x40) )
    {
        v4 = ((v3 | 0x40) & 0xFFFFC0F0) + 3;
        *(v2 + 5) = v4;
        v2[2] = 3;
        v2[6] = 3;
        PlaySoundEffect(151, v4, 3);
        return 1;
    }
    if ( v3 & 0xF880080 )
        return 0;
    v6 = (v3 & 0xFFFFC0A0) + 1;
    *(v2 + 5) = v6;
    v2[2] = 1;
    v2[6] = 1;
    PlaySoundEffect(151, v6, 1);
    return 1;
}


// 0x800c998
signed int __fastcall __noreturn object_crackPanelDup1(int a1, int a2)
{
    char *v2; // r0
    int v3; // r1
    int v4; // r1
    int v6; // r1

    v2 = object_getPanelDataOffset(a1, a2);
    if ( !v2 )
        return 0;
    v3 = *(v2 + 5);
    if ( !(v3 & 0x10) )
        return 0;
    if ( !(v3 & 0x40) )
    {
        v4 = ((v3 | 0x40) & 0xFFFFC0F0) + 3;
        *(v2 + 5) = v4;
        v2[2] = 3;
        v2[6] = 3;
        PlaySoundEffect(151, v4, 3);
        return 1;
    }
    if ( v3 & 0xF880080 )
        return 0;
    v6 = (v3 & 0xFFFFC0A0) + 1;
    *(v2 + 5) = v6;
    v2[2] = 1;
    v2[6] = 1;
    PlaySoundEffect(151, v6, 1);
    return 1;
}


// 0x800c9f8
signed int __fastcall __noreturn object_breakPanel(int a1, int a2)
{
    char *v2; // r0
    int v3; // r1
    int v4; // r1

    v2 = object_getPanelDataOffset(a1, a2);
    if ( !v2 )
        return 0;
    v3 = *(v2 + 5);
    if ( !(v3 & 0x10) || v3 & 0xF880080 )
        return 0;
    v4 = (v3 & 0xFFFFC0A0) + 1;
    *(v2 + 5) = v4;
    v2[2] = 1;
    v2[6] = 1;
    PlaySoundEffect(151, v4, 1);
    return 1;
}


// 0x800ca34
signed int __fastcall __noreturn object_breakPanel_dup1(int a1, int a2)
{
    char *v2; // r0
    int v3; // r1
    int v4; // r1
    int v6; // r1

    v2 = object_getPanelDataOffset(a1, a2);
    if ( v2 )
    {
        v3 = *(v2 + 5);
        if ( v3 & 0x10 )
        {
            if ( !(v3 & 0xF080080) )
            {
                v4 = (v3 & 0xFFFFC0A0) + 1;
                *(v2 + 5) = v4;
                v2[2] = 1;
                v2[6] = 1;
                PlaySoundEffect(151, v4, 1);
                return 1;
            }
            v6 = ((v3 | 0x40) & 0xFFFFC0F0) + 3;
            *(v2 + 5) = v6;
            v2[2] = 3;
            v2[6] = 3;
            PlaySoundEffect(151, v6, 3);
        }
    }
    return 0;
}


// 0x800ca8c
signed int __fastcall __noreturn object_breakPanel_dup2(int a1, int a2)
{
    char *v2; // r0
    int v3; // r1
    int v4; // r1
    int v6; // r1

    v2 = object_getPanelDataOffset(a1, a2);
    if ( !v2 )
        return 0;
    v3 = *(v2 + 5);
    if ( !(v3 & 0x10) )
        return 0;
    if ( v3 & 0xF880080 )
    {
        v6 = ((v3 | 0x40) & 0xFFFFC0F0) + 3;
        *(v2 + 5) = v6;
        v2[2] = 3;
        v2[6] = 3;
        PlaySoundEffect(151, v6, 3);
    }
    else
    {
        v4 = (v3 & 0xFFFFC0A0) + 1;
        *(v2 + 5) = v4;
        v2[2] = 1;
        v2[6] = 1;
        PlaySoundEffect(151, v4, 1);
    }
    return 1;
}


// 0x800cae8
signed int __fastcall __noreturn object_breakPanel_dup3(int a1, int a2)
{
    char *v2; // r0
    int v3; // r1
    int v4; // r1
    int v6; // r1

    v2 = object_getPanelDataOffset(a1, a2);
    if ( !v2 )
        return 0;
    v3 = *(v2 + 5);
    if ( !(v3 & 0x10) )
        return 0;
    if ( v3 & 0xF880080 )
    {
        v6 = ((v3 | 0x40) & 0xFFFFC0F0) + 3;
        *(v2 + 5) = v6;
        v2[2] = 3;
        v2[6] = 3;
        PlaySoundEffect(151, v6, 3);
    }
    else
    {
        v4 = (v3 & 0xFFFFC0A0) + 1;
        *(v2 + 5) = v4;
        v2[2] = 1;
        v2[6] = 1;
        PlaySoundEffect(151, v4, 1);
    }
    return 1;
}


// 0x800cb44
signed int __fastcall __noreturn object_breakPanelLoud(int a1, int a2)
{
    char *v2; // r0
    int v3; // r1
    int v4; // r1
    int v6; // r1

    v2 = object_getPanelDataOffset(a1, a2);
    if ( !v2 )
        return 0;
    v3 = *(v2 + 5);
    if ( !(v3 & 0x10) )
        return 0;
    if ( v3 & 0xF880080 )
    {
        v6 = ((v3 | 0x40) & 0xFFFFC0F0) + 3;
        *(v2 + 5) = v6;
        v2[2] = 3;
        v2[6] = 3;
        PlaySoundEffect(218, v6, 3);
    }
    else
    {
        v4 = (v3 & 0xFFFFC0A0) + 1;
        *(v2 + 5) = v4;
        v2[2] = 1;
        v2[6] = 1;
        PlaySoundEffect(218, v4, 1);
    }
    return 1;
}


// 0x800cba0
signed int __fastcall __noreturn object_panel_setPoison(int a1, int a2)
{
    char *v2; // r0
    int v3; // r1
    int v4; // r1

    v2 = object_getPanelDataOffset(a1, a2);
    if ( !v2 )
        return 0;
    v3 = *(v2 + 5);
    if ( !(v3 & 0x10) )
        return 0;
    v4 = v3 & 0xFFFFC0A0 | &off_114;
    *(v2 + 5) = v4;
    v2[2] = 4;
    v2[6] = 4;
    PlaySoundEffect(144, v4, 4);
    return 1;
}


// 0x800cbd8
char *__fastcall object_highlightPanel(__int64 a1)
{
    char *result; // r0
    char isValidPanel; // zf
    __int64 v3; // [sp+0h] [bp-Ch]

    v3 = a1;
    object_isValidPanel(a1, SHIDWORD(a1));
    result = v3;
    if ( !isValidPanel )
    {
        result = object_getPanelDataOffset(v3, SHIDWORD(v3));
        result[1] = 1;
    }
    return result;
}


// 0x800cbee
char *__fastcall object_highlightPanelBlue(__int64 a1)
{
    char *result; // r0
    char v2; // zf
    __int64 v3; // [sp+0h] [bp-Ch]

    v3 = a1;
    object_isValidPanel(a1, SHIDWORD(a1));
    result = v3;
    if ( !v2 )
    {
        result = object_getPanelDataOffset(v3, SHIDWORD(v3));
        if ( result[1] != 1 )
            result[1] = 2;
    }
    return result;
}


// 0x800cc0a
char *__fastcall __noreturn object_setPanelType(int a1, int a2, signed int a3)
{
    return _object_setPanelType(a1, a2, a3);
}


// 0x800cc14
char *__fastcall __noreturn object_setPanelAlliance(int a1, int a2, char a3)
{
    int v3; // r4
    int v4; // r5
    char v5; // r6
    char *result; // r0

    v3 = a1;
    v4 = a2;
    v5 = a3;
    result = object_getPanelDataOffset(a1, a2);
    if ( result[2] )
    {
        result[3] = v5;
        *(result + 8) = 0;
        object_updatePanelParameters(v3, v4);
    }
    return result;
}


// 0x800cc36
unsigned __int8 *__fastcall object_setPanelAllianceTimerLong(int a1)
{
    int v1; // r1
    unsigned __int8 *result; // r0

    v1 = 8 * a1;
    result = byte_2034010;
    *&byte_2034010[v1 + 6] = &loc_708;
    return result;
}


// 0x800cc44
unsigned __int8 *__fastcall object_setPanelAllianceTimerShort(int a1)
{
    int v1; // r1
    unsigned __int8 *result; // r0

    v1 = 8 * a1;
    result = byte_2034010;
    *&byte_2034010[v1 + 6] = 1;
    return result;
}


// 0x800cc52
char *__fastcall __noreturn object_setPanelTypeBlink(int a1, int a2, char a3, char a4)
{
    char v4; // ST00_1
    char v5; // ST04_1
    char *result; // r0

    v4 = a3;
    v5 = a4;
    result = object_getPanelDataOffset(a1, a2);
    result[13] = 1;
    result[8] = v4;
    result[9] = v5;
    return result;
}


// 0x800cc66
BOOL object_isCurrentPanelValid()
{
    int v0; // r5

    return object_isValidPanel(*(v0 + 18), *(v0 + 19));
}


// 0x800cc72
BOOL __fastcall object_isValidPanel(int a1, int a2)
{
    return (a1 - 1) < 6 && (a2 - 1) < 3;
}


// 0x800cc86
BOOL __fastcall object_checkPanelParameters(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r0

    v4 = a3;
    v5 = a4;
    v6 = object_getPanelParameters(a1, a2);
    return v6 && !(v6 & v5) && (v6 & v4) == v4;
}


// 0x800cca6
int __noreturn object_isCurrentPanelSolid()
{
    int v0; // r5

    return object_isPanelSolid(*(v0 + 18), *(v0 + 19));
}


// 0x800ccb2
int __fastcall object_isPanelSolid(int a1, int a2)
{
    return object_getPanelParameters(a1, a2) & 0x10;
}


// 0x800ccbe
int object_highlightCurrentCollisionPanels()
{
    int v0; // r5

    return object_highlightPanelRegion(*(*(v0 + 84) + 10), *(*(v0 + 84) + 11), *(*(v0 + 84) + 1), *(v0 + 22) ^ *(v0 + 23));
}


// 0x800ccd4
int __fastcall object_highlightPanelRegion(int a1, int a2, int a3, unsigned int a4)
{
    int v4; // ST08_4
    char *i; // r4
    int result; // r0
    __int64 v7; // r0
    int v8; // [sp+0h] [bp-1Ch]
    int v9; // [sp+4h] [bp-18h]
    int v10; // [sp+Ch] [bp-10h]

    v8 = a1;
    v9 = a2;
    v4 = a3;
    v10 = object_getFlipDirection(a4, a4 >> 8);
    for ( i = *(&off_8019B78 + v4); ; i += 2 )
    {
        result = *i;
        if ( result == 127 )
            break;
        LODWORD(v7) = v8 + v10 * *i;
        HIDWORD(v7) = i[1] + v9;
        object_highlightPanel(v7);
    }
    return result;
}


// 0x800cd20
char *__fastcall object_highlightPanelRegionBlue(int a1, int a2, int a3, unsigned int a4)
{
    char *i; // r4
    char *result; // r0
    __int64 v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r6
    int v11; // r4
    int v12; // [sp-8h] [bp-28h]
    int v13; // [sp-4h] [bp-24h]
    int v14; // [sp+0h] [bp-20h]
    int v15; // [sp+4h] [bp-1Ch]
    int v16; // [sp+8h] [bp-18h]
    int v17; // [sp+Ch] [bp-14h]

    v14 = a1;
    v15 = a2;
    v16 = a3;
    if ( a3 & 0x80 )
    {
        v7 = 8 * a3 & 0x3FF;
        v8 = *&byte_8019C34[v7];
        v9 = *&byte_8019C34[v7 + 4];
        v10 = 1;
        do
        {
            v11 = 1;
            do
            {
                v12 = v8;
                v13 = v9;
                result = object_checkPanelParameters(v11, v10, v8, v9);
                v8 = v12;
                v9 = v13;
                if ( result )
                {
                    result = object_highlightPanelBlue(__PAIR__(v10, v11));
                    v8 = v12;
                    v9 = v13;
                }
                ++v11;
            }
            while ( v11 <= 6 );
            ++v10;
        }
        while ( v10 <= 3 );
    }
    else
    {
        v17 = object_getFlipDirection(a4, a4 >> 8);
        for ( i = *(&off_8019B78 + v16); ; i += 2 )
        {
            result = *i;
            if ( result == &off_7C + 3 )
                break;
            LODWORD(v6) = v14 + v17 * *i;
            HIDWORD(v6) = i[1] + v15;
            object_highlightPanelBlue(v6);
        }
    }
    return result;
}


// 0x800cdb4
int __fastcall __noreturn object_dead_getPanelsTypeAllianceCount(int a1, int a2)
{
    char *v2; // r0
    int v4; // [sp+0h] [bp-18h]
    int v5; // [sp+4h] [bp-14h]
    int v6; // [sp+8h] [bp-10h]
    int v7; // [sp+Ch] [bp-Ch]
    int v8; // [sp+10h] [bp-8h]

    v6 = a1;
    v7 = a2;
    v8 = 0;
    v4 = 1;
    v5 = 1;
    while ( 1 )
    {
        v2 = object_getPanelDataOffset(v4, v5);
        if ( v2[3] == v7 && v2[2] == v6 )
            ++v8;
        if ( ++v4 > 6 )
        {
            v4 = 1;
            if ( ++v5 > 3 )
                break;
        }
    }
    return v8;
}


// 0x800ce04
int __fastcall __noreturn object_dead_getPanelsTypeCount(int a1)
{
    int v1; // r4
    int v2; // r5
    int v3; // r6
    int v4; // r7

    v1 = a1;
    v2 = 0;
    v3 = 1;
    v4 = 1;
    while ( 1 )
    {
        if ( object_getPanelDataOffset(v3, v4)[2] == v1 )
            ++v2;
        if ( ++v3 > 6 )
        {
            v3 = 1;
            if ( ++v4 > 3 )
                break;
        }
    }
    return v2;
}


// 0x800ce32
char *__fastcall __noreturn object_hidePanel(int a1, int a2)
{
    char *result; // r0

    result = object_getPanelDataOffset(a1, a2);
    if ( result )
        *result = 0;
    return result;
}


// 0x800ce42
char *__fastcall __noreturn object_showPanel(int a1, int a2)
{
    char *result; // r0

    result = object_getPanelDataOffset(a1, a2);
    if ( result )
        *result = 1;
    return result;
}


// 0x800ce64
int __fastcall object_getPanelsExceptCurrentFilterred(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r1
    int v6; // r0
    int v7; // ST0C_4
    int v8; // r4
    int v9; // r6
    int v11; // [sp+0h] [bp-24h]
    int v12; // [sp+4h] [bp-20h]
    int v13; // [sp+8h] [bp-1Ch]
    int v14; // [sp+10h] [bp-14h]
    int v15; // [sp+14h] [bp-10h]

    v5 = 3;
    do
    {
        v6 = 6;
        do
        {
            v11 = v6;
            v12 = v5;
            v13 = a3;
            v7 = a4;
            v8 = object_getPanelParameters(v6, v5);
            v5 = v12;
            a3 = v13;
            a4 = v7;
            v9 = v14;
            if ( !(v8 & v7) && (v8 & v13) == v13 && (v11 != *(v4 + 18) || v12 != *(v4 + 19)) )
            {
                *(v15 + v14) = 16 * v12 | v11;
                v9 = v14 + 1;
            }
            v6 = v11 - 1;
        }
        while ( v11 != 1 );
        v5 = v12 - 1;
    }
    while ( v12 != 1 );
    return v9;
}


// 0x800cea0
int __fastcall __noreturn object_getPanelsFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // r1
    int v5; // r0
    int v6; // ST0C_4
    int v7; // r4
    int v8; // r6
    int v10; // [sp+0h] [bp-24h]
    int v11; // [sp+4h] [bp-20h]
    int v12; // [sp+8h] [bp-1Ch]
    int v13; // [sp+10h] [bp-14h]
    int v14; // [sp+14h] [bp-10h]

    v4 = 3;
    do
    {
        v5 = 6;
        do
        {
            v10 = v5;
            v11 = v4;
            v12 = a3;
            v6 = a4;
            v7 = object_getPanelParameters(v5, v4);
            v4 = v11;
            a3 = v12;
            a4 = v6;
            v8 = v13;
            if ( !(v7 & v6) && (v7 & v12) == v12 )
            {
                *(v14 + v13) = 16 * v11 | v10;
                v8 = v13 + 1;
            }
            v5 = v10 - 1;
        }
        while ( v10 != 1 );
        v4 = v11 - 1;
    }
    while ( v11 != 1 );
    return v8;
}


// 0x800ced0
int __fastcall object_getRandomPanelFromCurrentColumn(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r1
    int *v5; // r2
    int result; // r0
    int v7; // ST00_4
    int v12; // [sp+0h] [bp-1Ch]
    int v13; // [sp+4h] [bp-18h]

    v12 = a2;
    v4 = 8 * *(v3 + 22);
    v5 = (a3 + v4);
    if ( !v4 )
        a1 = 7 - a1;
    result = object_getPanelsInColumnIgnoreRowFiltered(a1, v12, *v5, v5[1]);
    if ( result )
    {
        v7 = result;
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v13 + v7) & 7;
    }
    return result;
}


// 0x800cf14
int __fastcall object_getPanelsInColumnIgnoreRowFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // r6
    int v6; // r4
    int v7; // r1
    int v8; // ST08_4
    int v9; // ST0C_4
    bool v10; // zf
    int v12; // [sp-10h] [bp-1Ch]
    int v13; // [sp-Ch] [bp-18h]

    v5 = 0;
    v6 = a2;
    v7 = 1;
    do
    {
        if ( v7 != v6 )
        {
            v12 = a1;
            v13 = v7;
            v8 = a3;
            v9 = a4;
            v10 = object_checkPanelParameters(a1, v7, a3, a4) == 0;
            a1 = v12;
            v7 = v13;
            a3 = v8;
            a4 = v9;
            if ( !v10 )
            {
                *(v4 + v5++) = v12 | 16 * v13;
                a1 = v12;
                v7 = v13;
            }
        }
        ++v7;
    }
    while ( v7 <= 3 );
    return v5;
}


// 0x800cf42
int __fastcall object_getPanelsInRowIgnoreColumnFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // r6
    int v6; // r4
    int v7; // r0
    int v8; // ST08_4
    int v9; // ST0C_4
    bool v10; // zf
    int v12; // [sp-10h] [bp-1Ch]
    int v13; // [sp-Ch] [bp-18h]

    v5 = 0;
    v6 = a1;
    v7 = 1;
    do
    {
        if ( v7 != v6 )
        {
            v12 = v7;
            v13 = a2;
            v8 = a3;
            v9 = a4;
            v10 = object_checkPanelParameters(v7, a2, a3, a4) == 0;
            v7 = v12;
            a2 = v13;
            a3 = v8;
            a4 = v9;
            if ( !v10 )
            {
                *(v4 + v5++) = v12 | 16 * v13;
                v7 = v12;
                a2 = v13;
            }
        }
        ++v7;
    }
    while ( v7 <= 6 );
    return v5;
}


// 0x800cf70
int __fastcall object_getPanelsIgnoreRowFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // r6
    int v6; // r4
    int v7; // r0
    int v8; // r1
    int v9; // ST08_4
    int v10; // ST0C_4
    bool v11; // zf
    int v12; // r1
    int v14; // [sp-10h] [bp-1Ch]
    int v15; // [sp-Ch] [bp-18h]

    v5 = 0;
    v6 = a1;
    v7 = 1;
    do
    {
        if ( v7 != v6 )
        {
            v8 = 1;
            do
            {
                v14 = v7;
                v15 = v8;
                v9 = a3;
                v10 = a4;
                v11 = object_checkPanelParameters(v7, v8, a3, a4) == 0;
                v7 = v14;
                v12 = v15;
                a3 = v9;
                a4 = v10;
                if ( !v11 )
                {
                    *(v4 + v5++) = v14 | 16 * v15;
                    v7 = v14;
                    v12 = v15;
                }
                v8 = v12 + 1;
            }
            while ( v8 <= 3 );
        }
        ++v7;
    }
    while ( v7 <= 6 );
    return v5;
}


// 0x800cfa6
int __fastcall object_getPanelsIgnoreColumnFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // r6
    int v6; // r4
    int v7; // r1
    int v8; // r0
    int v9; // ST08_4
    int v10; // ST0C_4
    bool v11; // zf
    int v12; // r0
    int v14; // [sp-10h] [bp-1Ch]
    int v15; // [sp-Ch] [bp-18h]

    v5 = 0;
    v6 = a1;
    v7 = 1;
    do
    {
        if ( v7 != v6 )
        {
            v8 = 1;
            do
            {
                v14 = v8;
                v15 = v7;
                v9 = a3;
                v10 = a4;
                v11 = object_checkPanelParameters(v8, v7, a3, a4) == 0;
                v12 = v14;
                v7 = v15;
                a3 = v9;
                a4 = v10;
                if ( !v11 )
                {
                    *(v4 + v5++) = v14 | 16 * v15;
                    v12 = v14;
                    v7 = v15;
                }
                v8 = v12 + 1;
            }
            while ( v8 <= 6 );
        }
        ++v7;
    }
    while ( v7 <= 3 );
    return v5;
}


// 0x800cfdc
int __fastcall object_getPanelsInColumnFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // r4
    int v6; // r5
    int v7; // r6
    int v9; // [sp+0h] [bp-1Ch]
    int v10; // [sp+4h] [bp-18h]

    v5 = a1;
    v6 = 1;
    v7 = 0;
    v9 = a3;
    v10 = a4;
    do
    {
        if ( object_checkPanelParameters(v5, v6, v9, v10) )
            *(v4 + v7++) = v5 | 16 * v6;
        ++v6;
    }
    while ( v6 <= 3 );
    return v7;
}


// 0x800d012
int __fastcall object_getPanelsInRowFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // r4
    int v6; // r5
    int v7; // r6
    int v9; // [sp+0h] [bp-1Ch]
    int v10; // [sp+4h] [bp-18h]

    v5 = 1;
    v6 = a1;
    v7 = 0;
    v9 = a3;
    v10 = a4;
    do
    {
        if ( object_checkPanelParameters(v5, v6, v9, v10) )
            *(v4 + v7++) = v5 | 16 * v6;
        ++v5;
    }
    while ( v5 <= 6 );
    return v7;
}


// 0x800d048
signed int object_getEnemyPlayerPanelY()
{
    int v0; // r5
    u32 v1; // r0
    u32 v2; // r1
    signed int result; // r0

    v1 = battle_findPlayer(*(v0 + 22) ^ 1);
    v2 = v1;
    if ( !v1 )
        return *(v0 + 19);
    result = *(v1 + 19);
    if ( result < 1 || result > 3 )
        result = *(v2 + 21);
    return result;
}


// 0x800d06a
int object_getEnemyPlayerPanels()
{
    unsigned __int8 *v0; // r5
    u32 v1; // r0
    int v2; // r1
    int result; // r0
    int v4; // r1

    v1 = battle_findPlayer(v0[22] ^ 1);
    if ( v1 )
    {
        v2 = *(v1 + 19);
        result = *(v1 + 18);
    }
    else
    {
        result = v0[18];
        v4 = v0[19];
    }
    return result;
}


// 0x800d086
int __fastcall object_getClosestPanelMatchingRowFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // ST00_4
    int v5; // ST04_4
    int v6; // ST08_4
    int v7; // ST0C_4
    int v8; // r5
    int v9; // r1
    int v10; // r2
    int v11; // r3
    int v12; // r0
    bool v13; // zf
    int result; // r0
    int v15; // ST00_4
    int v16; // [sp+0h] [bp-1Ch]
    int v17; // [sp+4h] [bp-18h]
    int v18; // [sp+8h] [bp-14h]
    int v19; // [sp+Ch] [bp-10h]

    v4 = a1;
    v5 = a2;
    v6 = a3;
    v7 = a4;
    v8 = -object_getAllianceDirection(a1);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = -5 * v4 + 6;
    while ( 1 )
    {
        v16 = v12;
        v17 = v9;
        v18 = v10;
        v19 = v11;
        v13 = object_checkPanelParameters(v12, v9, v10, v11) == 0;
        result = v16;
        if ( !v13 )
            break;
        v15 = v16 + v8;
        v13 = object_isValidPanel(v15, v17) == 0;
        v12 = v15;
        v9 = v17;
        v10 = v18;
        v11 = v19;
        if ( v13 )
            return 0;
    }
    return result;
}


// 0x800d0bc
int __fastcall __noreturn object_getFirstPanelInDirectionFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    bool v5; // zf
    int result; // r0
    int v7; // ST00_4
    int v8; // [sp+0h] [bp-14h]
    int v9; // [sp+4h] [bp-10h]
    int v10; // [sp+8h] [bp-Ch]
    int v11; // [sp+Ch] [bp-8h]

    while ( 1 )
    {
        v8 = a1;
        v9 = a2;
        v10 = a3;
        v11 = a4;
        v5 = object_checkPanelParameters(a1, a2, a3, a4) == 0;
        result = v8;
        if ( !v5 )
            break;
        v7 = v8 + v4;
        v5 = object_isValidPanel(v7, v9) == 0;
        a1 = v7;
        a2 = v9;
        a3 = v10;
        a4 = v11;
        if ( v5 )
            return 0;
    }
    return result;
}


// 0x800d0dc
int __fastcall object_getFirstPanelInDirectionWithinDistanceFiltered(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r6
    bool v6; // zf
    int result; // r0
    unsigned __int8 v8; // vf
    int v9; // [sp+0h] [bp-14h]
    int v10; // [sp+4h] [bp-10h]
    int v11; // [sp+8h] [bp-Ch]
    int v12; // [sp+Ch] [bp-8h]

    while ( 1 )
    {
        v9 = a1;
        v10 = a2;
        v11 = a3;
        v12 = a4;
        v6 = object_checkPanelParameters(a1, a2, a3, a4) == 0;
        result = v9;
        if ( !v6 )
            break;
        v8 = __OFSUB__(v5--, 1);
        if ( !(((v5 < 0) ^ v8) | (v5 == 0)) )
        {
            v6 = object_isValidPanel(v9 + v4, v10) == 0;
            a1 = v9 + v4;
            a2 = v10;
            a3 = v11;
            a4 = v12;
            if ( !v6 )
                continue;
        }
        return 0;
    }
    return result;
}


// 0x800d100
int __fastcall object_getFirstPanelInDirectionFilteredDup1(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    bool v5; // zf
    int result; // r0
    int v7; // ST04_4
    int v8; // [sp+0h] [bp-14h]
    int v9; // [sp+4h] [bp-10h]
    int v10; // [sp+8h] [bp-Ch]
    int v11; // [sp+Ch] [bp-8h]

    while ( 1 )
    {
        v8 = a1;
        v9 = a2;
        v10 = a3;
        v11 = a4;
        v5 = object_checkPanelParameters(a1, a2, a3, a4) == 0;
        result = v8;
        if ( !v5 )
            break;
        v7 = v9 + v4;
        v5 = object_isValidPanel(v8, v7) == 0;
        a1 = v8;
        a2 = v7;
        a3 = v10;
        a4 = v11;
        if ( v5 )
            return 0;
    }
    return result;
}


// 0x800d120
int __fastcall __noreturn sub_800D120(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r6
    int v6; // ST00_4
    bool v7; // zf
    int result; // r0
    int v9; // [sp+0h] [bp-24h]
    int v10; // [sp+4h] [bp-20h]
    int v11; // [sp+8h] [bp-1Ch]
    int v12; // [sp+Ch] [bp-18h]
    int v13; // [sp+10h] [bp-14h]

    v5 = a1;
    v13 = a1;
    do
    {
        v9 = a1;
        v10 = a2;
        v11 = a3;
        v12 = a4;
        if ( object_checkPanelParameters(a1, a2, a3, a4) )
            v5 = v9;
        v6 = v9 + v4;
        v7 = object_isValidPanel(v6, v10) == 0;
        a1 = v6;
        a2 = v10;
        a3 = v11;
        a4 = v12;
    }
    while ( !v7 );
    if ( v13 == v5 )
        result = 0;
    else
        result = v5;
    return result;
}


// 0x800d15a
int __fastcall __noreturn sub_800D15A(int result, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r7
    int v6; // ST04_4
    bool v7; // zf
    int v8; // [sp+0h] [bp-24h]
    int v9; // [sp+4h] [bp-20h]
    int v10; // [sp+8h] [bp-1Ch]
    int v11; // [sp+Ch] [bp-18h]
    int v12; // [sp+14h] [bp-10h]

    v5 = a2;
    v12 = a2;
    do
    {
        v8 = result;
        v9 = a2;
        v10 = a3;
        v11 = a4;
        if ( object_checkPanelParameters(result, a2, a3, a4) )
            v5 = v9;
        v6 = v9 + v4;
        v7 = object_isValidPanel(v8, v6) == 0;
        result = v8;
        a2 = v6;
        a3 = v10;
        a4 = v11;
    }
    while ( !v7 );
    if ( v12 == v5 )
        result = 0;
    return result;
}


// 0x800d190
signed int __fastcall __noreturn sub_800D190(int a1, int a2, int a3, int a4)
{
    signed int v4; // r4
    int v5; // r0
    signed int result; // r0
    signed int i; // r1
    unsigned __int8 v8; // [sp+0h] [bp-1Ch]
    int v9; // [sp+4h] [bp-18h]
    int v10; // [sp+8h] [bp-14h]
    int v11; // [sp+Ch] [bp-10h]
    int v12; // [sp+10h] [bp-Ch]

    v11 = a1;
    v9 = a3;
    v10 = a4;
    v12 = 1;
    v4 = 0;
    do
    {
        v5 = object_getClosestPanelMatchingRowFiltered(v11, v12, v9, v10);
        if ( v5 )
            *(&v8 + v4++) = v5;
        ++v12;
    }
    while ( v12 <= 3 );
    if ( !v4 )
        return 0;
    result = v8;
    for ( i = 1; i < v4; ++i )
    {
        if ( v11 )
        {
            if ( *(&v8 + i) <= result )
                result = *(&v8 + i);
        }
        else if ( *(&v8 + i) >= result )
        {
            result = *(&v8 + i);
        }
    }
    return result;
}


// 0x800d1f0
int __fastcall sub_800D1F0(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // ST04_4
    int v6; // r6
    int v7; // r0
    char *v8; // r0
    int v10; // [sp+0h] [bp-28h]
    int v11; // [sp+8h] [bp-20h]
    int v12; // [sp+Ch] [bp-1Ch]
    int v13; // [sp+10h] [bp-18h]
    int v14; // [sp+14h] [bp-14h]
    int v15; // [sp+18h] [bp-10h]
    int v16; // [sp+1Ch] [bp-Ch]

    v10 = a1;
    v5 = a2;
    v11 = a3;
    v12 = a4;
    v6 = 0;
    v13 = -object_getFlipDirection(a1, a2);
    v7 = -5 * (v10 ^ v5);
    v14 = v7 + 6;
    v15 = v7 + 6;
    v16 = 1;
    do
    {
        while ( 1 )
        {
            v8 = object_getPanelDataOffset(v15, v16);
            if ( !v8 )
                goto LABEL_7;
            if ( v8[3] == v10 )
                break;
            v15 += v13;
        }
        if ( object_checkPanelParameters(v15, v16, v11, v12) )
            *(v4 + v6++) = v15 | 16 * v16;
LABEL_7:
        v15 = v14;
        ++v16;
    }
    while ( v16 <= 3 );
    return v6;
}


// 0x800d270
int __fastcall sub_800D270(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r7
    int v6; // r6
    char *v7; // r0
    char *v8; // r0
    int v10; // [sp+0h] [bp-28h]
    int v11; // [sp+8h] [bp-20h]
    int v12; // [sp+Ch] [bp-1Ch]
    int v13; // [sp+10h] [bp-18h]
    int v14; // [sp+14h] [bp-14h]
    int v15; // [sp+18h] [bp-10h]
    int v16; // [sp+1Ch] [bp-Ch]

    v10 = a1;
    v11 = a3;
    v12 = a4;
    v6 = 0;
    v13 = -object_getFlipDirection(a1, a2);
    v14 = *(v4 + 18);
    v15 = *(v4 + 18);
    v16 = 1;
    do
    {
        while ( 1 )
        {
            v7 = object_getPanelDataOffset(v15, v16);
            if ( !v7 )
                goto LABEL_10;
            if ( v7[3] != v10 )
                break;
            v15 -= v13;
        }
        while ( 1 )
        {
            v8 = object_getPanelDataOffset(v15, v16);
            if ( !v8 )
                break;
            if ( v8[3] == v10 )
            {
                if ( object_checkPanelParameters(v15, v16, v11, v12) )
                    *(v5 + v6++) = v15 | 16 * v16;
                break;
            }
            v15 += v13;
        }
LABEL_10:
        v15 = v14;
        ++v16;
    }
    while ( v16 <= 3 );
    return v6;
}


// 0x800d300
int __fastcall sub_800D300(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r7
    int v6; // r6
    char *v7; // r0
    int v8; // r0
    signed int v9; // r1
    char *v10; // r0
    int v12; // [sp+0h] [bp-28h]
    int v13; // [sp+8h] [bp-20h]
    int v14; // [sp+Ch] [bp-1Ch]
    int v15; // [sp+10h] [bp-18h]
    int v16; // [sp+14h] [bp-14h]
    int v17; // [sp+18h] [bp-10h]
    int v18; // [sp+1Ch] [bp-Ch]

    v12 = a1;
    v13 = a3;
    v14 = a4;
    v6 = 0;
    v15 = -object_getFlipDirection(a1, a2);
    v16 = *(v4 + 18);
    v17 = *(v4 + 18);
    v18 = 1;
    do
    {
        while ( 1 )
        {
            v7 = object_getPanelDataOffset(v17, v18);
            if ( !v7 )
                goto LABEL_13;
            if ( v7[3] != v12 )
                break;
            v17 -= v15;
        }
        v8 = object_getPanelParameters(v17, v18);
        v9 = 25165824;
        if ( v12 )
            v9 = 41943040;
        if ( !(v8 & v9) )
        {
            while ( 1 )
            {
                v10 = object_getPanelDataOffset(v17, v18);
                if ( !v10 )
                    break;
                if ( v10[3] == v12 )
                {
                    if ( object_checkPanelParameters(v17, v18, v13, v14) )
                        *(v5 + v6++) = v17 | 16 * v18;
                    break;
                }
                v17 += v15;
            }
        }
LABEL_13:
        v17 = v16;
        ++v18;
    }
    while ( v18 <= 3 );
    return v6;
}


// 0x800d3a6
int __fastcall sub_800D3A6(int a1, int a2, int a3, int a4)
{
    char *v4; // r4
    int v5; // r7
    int v6; // r0
    int v8; // [sp+18h] [bp-28h]
    int v9; // [sp+1Ch] [bp-24h]
    int v10; // [sp+20h] [bp-20h]
    int v11; // [sp+24h] [bp-1Ch]
    int v12; // [sp+28h] [bp-18h]
    int v13; // [sp+2Ch] [bp-14h]
    int v14; // [sp+30h] [bp-10h]
    int v15; // [sp+34h] [bp-Ch]

    v9 = a1;
    v10 = a2;
    v11 = a3;
    v12 = a4;
    v8 = object_getEnemyDirection();
    v13 = 0;
    while ( 1 )
    {
        v6 = *v4;
        if ( v6 == 127 )
            break;
        v14 = v6 * v8 + v9;
        v15 = v4[1] + v10;
        if ( object_checkPanelParameters(v14, v15, v11, v12) )
            *(v5 + v13++) = v14 | 16 * v15;
        v4 += 2;
    }
    return v13;
}


// 0x800d3fe
int __fastcall object_getPanelRegion(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r6
    int v6; // r7
    char *v7; // r4
    int v8; // r6
    int v9; // r0
    int v11; // [sp+0h] [bp-28h]
    int v12; // [sp+4h] [bp-24h]
    int v13; // [sp+8h] [bp-20h]
    int v14; // [sp+Ch] [bp-1Ch]
    int v15; // [sp+10h] [bp-18h]
    int v16; // [sp+14h] [bp-14h]
    int v17; // [sp+18h] [bp-10h]

    v11 = a1;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v7 = *(&off_8019B78 + v4);
    v15 = object_getAllianceDirection(v5);
    v8 = 0;
    while ( 1 )
    {
        v9 = *v7;
        if ( v9 == 127 )
            break;
        v16 = v9 * v15 + v11;
        v17 = v7[1] + v12;
        if ( object_checkPanelParameters(v16, v17, v13, v14) )
            *(v6 + v8++) = v16 | 16 * v17;
        v7 += 2;
    }
    return v8;
}


// 0x800d45c
int __fastcall sub_800D45C(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r6
    int v6; // r1
    int v7; // r0
    int v8; // r4
    int v9; // r4
    int v10; // ST0C_4
    int v11; // r4
    int v13; // [sp-18h] [bp-24h]
    int v14; // [sp-14h] [bp-20h]
    int v15; // [sp-10h] [bp-1Ch]
    int v16; // [sp-4h] [bp-10h]

    v5 = 0;
    v6 = 3;
    do
    {
        v7 = 6;
        do
        {
            v8 = *(v4 + 18) - v7 + 1;
            if ( v8 < 0 || v8 > 2 || (v9 = *(v4 + 19) - v6 + 1, v9 < 0) || v9 > 2 )
            {
                v13 = v7;
                v14 = v6;
                v15 = a3;
                v10 = a4;
                v11 = object_getPanelParameters(v7, v6);
                v7 = v13;
                v6 = v14;
                a3 = v15;
                a4 = v10;
                if ( !(v11 & v10) && (v11 & v15) == v15 )
                    *(v16 + v5++) = 16 * v14 | v13;
            }
            --v7;
        }
        while ( v7 );
        --v6;
    }
    while ( v6 );
    return v5;
}


// 0x800d4ac
int sub_800D4AC()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int result; // r0
    int v4; // r1

    v1 = *(*(v0 + 88) + 120);
    if ( v1 )
    {
        v2 = *(v1 + 19);
        result = *(v1 + 18);
    }
    else
    {
        result = *(v0 + 18);
        v4 = *(v0 + 19);
    }
    return result;
}


// 0x800d4c2
int object_getEdgePanelMatchingRow()
{
    unsigned __int8 *v0; // r5

    return sub_800D4D0(v0[22], v0[23], v0[19]);
}


// 0x800d4d0
int __fastcall sub_800D4D0(int a1, int a2, int a3)
{
    int v3; // ST04_4
    int result; // r0
    int v5; // [sp+0h] [bp-1Ch]
    int v6; // [sp+Ch] [bp-10h]

    v5 = a1;
    v3 = a2;
    v6 = a3;
    object_getFlipDirection(a1, a2);
    result = sub_800D53C(v6, v5, v3);
    if ( result )
        object_getFirstPanelInDirectionFiltered(result, v6, *&byte_800D52C[8 * v5], *&byte_800D52C[8 * v5 + 4]);
    return result;
}


// 0x800d53c
int __fastcall sub_800D53C(int a1, int a2, int a3)
{
    char v3; // zf
    int v5; // [sp+0h] [bp-18h]
    int v6; // [sp+4h] [bp-14h]
    int v7; // [sp+8h] [bp-10h]
    int i; // [sp+10h] [bp-8h]

    v6 = a1;
    v7 = a2;
    v5 = -5 * (a3 ^ a2) + 6;
    for ( i = -object_getFlipDirection(a2, a3); ; v5 += i )
    {
        object_isValidPanel(v5, v6);
        if ( v3 )
            break;
        if ( object_getPanelDataOffset(v5, v6)[3] != v7 )
            return v5;
    }
    return 0;
}


// 0x800d58c
void __noreturn sub_800D58C()
{
    sub_800D5BA();
}


// 0x800d5ba
void __noreturn sub_800D5BA()
{
    Battle *v0; // r5
    int v1; // r6
    int v2; // r7
    char v3; // zf

    v1 = v0->panelX;
    v2 = v0->Alliance;
    object_getFrontDirection(v0);
    while ( 1 )
    {
        object_isValidPanel(v1, 1);
        if ( !v3 )
            break;
        v1 = v0->panelX;
        object_getFrontDirection(v0);
    }
    sub_800D5F0(v1, v2);
}


// 0x800d5f0
int __fastcall __noreturn sub_800D5F0(int a1, int a2)
{
    int v2; // r4
    int v3; // r5
    int v4; // r6
    int v5; // r7
    char *v6; // r0

    v2 = a2;
    v3 = 0;
    v4 = a1;
    v5 = 1;
    do
    {
        v6 = object_getPanelDataOffset(v4, v5);
        if ( v6 && v6[3] != v2 )
            ++v3;
        ++v5;
    }
    while ( v5 <= 3 );
    return v3;
}


// 0x800d618
char *__fastcall __noreturn sub_800D618(int a1, int a2, int a3)
{
    int v3; // r4
    char *result; // r0
    int v5; // r1
    int v6; // r2

    v3 = a3;
    result = object_getPanelDataOffset(a1, a2);
    if ( result )
    {
        v5 = result[4];
        v6 = result[3];
        result = 0;
        if ( v5 != v6 && v5 == v3 )
            result = byte_0 + 1;
    }
    return result;
}


// 0x800d636
BOOL __fastcall sub_800D636(int a1, int a2)
{
    int v2; // r4
    int v3; // r5
    BOOL result; // r0

    result = 1;
    if ( byte_2034010[8 * a1] == a2 )
    {
        v2 = a1;
        v3 = a2;
        if ( !sub_800D6CC(a1 - 1, a2) && !sub_800D6CC(v2 + 1, v3) )
            result = 0;
    }
    return result;
}


// 0x800d668
signed int __fastcall sub_800D668(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r7
    int v7; // [sp+0h] [bp-20h]
    signed int v8; // [sp+8h] [bp-18h]

    v7 = a1;
    v3 = a2;
    v4 = a3;
    v8 = 0;
    if ( byte_2034010[8 * a1] != a3 )
        return 1;
    v5 = 1;
    while ( 1 )
    {
        if ( object_isValidPanel(v7 + v5, v3) )
            sub_800D618(v7 + v5, v3, v4);
        if ( v8 )
            break;
        v5 = -v5;
        v8 = 1;
    }
    return 0;
}


// 0x800d6cc
signed int __fastcall sub_800D6CC(int a1, int a2)
{
    int v2; // r6
    int v3; // r4
    int v4; // r5
    char *v5; // r0

    v2 = byte_2034010[8 * a1];
    if ( v2 == a2 )
    {
        v3 = a1;
        v4 = 1;
        while ( 1 )
        {
            v5 = object_getPanelDataOffset(v3, v4);
            if ( !v5 || v5[3] != v2 )
                break;
            if ( ++v4 > 3 )
                return 1;
        }
    }
    return 0;
}


// 0x800d700
int __fastcall sub_800D700(int a1, int a2)
{
    int v2; // r4
    int v3; // r5
    int v4; // r6
    int v5; // r7

    v2 = 0;
    v3 = a2;
    v4 = a1;
    v5 = 1;
    do
    {
        if ( object_getPanelDataOffset(v4, v5)[3] == v3 )
            ++v2;
        ++v5;
    }
    while ( v5 <= 3 );
    return v2;
}


// 0x800e24c
int convertBattleObjectXYToPanelXY_800E24C()
{
    int v0; // r5
    int v1; // r1

    v1 = *(v0 + 56);
    return convertXYToPanelXY_800E258(*(v0 + 52));
}


// 0x800e258
int __fastcall convertXYToPanelXY_800E258(int a1)
{
    __asm
    {
        SVC         6
        SVC         6
    }
    return (a1 >> 16) + 160;
}


// 0x800e276
// (int a1, int a2) -> (int n1, int n2)
int __fastcall object_getCoordinatesForPanels(char a1)
{
    return 2621440 * a1 - 9175040;
}


// 0x800e29c
// () -> void
int __usercall object_setCoordinatesFromPanels@<R0>(Battle *obj@<R5>)
{
    int v1; // r1
    int result; // r0
    u32 v3; // r1

    v1 = obj->panelY;
    result = object_getCoordinatesForPanels(obj->panelX);
    obj->x = result;
    obj->y = v3;
    return result;
}


// 0x800e2ac
int __usercall object_setPanelsFromCoordinates@<R0>(Battle *obj@<R5>)
{
    u32 v1; // r1
    u32 v2; // r2
    int result; // r0
    u8 v4; // r1

    v1 = obj->y;
    v2 = obj->z;
    result = convertXYToPanelXY_800E258(obj->x);
    obj->panelX = result;
    obj->panelY = v4;
    return result;
}


// 0x800e2c0
int object_getEnemyDirection()
{
    int v0; // r5

    return object_getAllianceDirection(*(v0 + 22));
}


// 0x800e2c2
int __fastcall object_getAllianceDirection(int a1)
{
    return 1 - 2 * a1;
}


// 0x800e2ca
// () -> int
int __usercall object_getFrontDirection@<R0>(Battle *obj@<R5>)
{
    return object_getFlipDirection(obj->Alliance, obj->directionFlip);
}


// 0x800e2ce
// (int a1, int a2) -> int
int __fastcall object_getFlipDirection(int a1, int a2)
{
    return 1 - 2 * (a1 ^ a2);
}


// 0x800e2d8
void __usercall object_subtractHP(Battle *obj@<R5>, int amt@<R0>)
{
    int HP; // r1
    unsigned __int8 vf; // vf
    int v4; // r1

    HP = obj->HP;
    vf = __OFSUB__(HP, amt);
    v4 = HP - amt;
    if ( (v4 < 0) ^ vf )
        LOWORD(v4) = 0;                                                         // game over!
    obj->HP = v4;
}


// 0x800e2ec
int __usercall object_addHP@<R0>(Battle *obj@<R5>, int inc@<R0>)
{
    int newHP; // r1
    int maxHP; // r0

    newHP = obj->HP + inc;
    maxHP = obj->maxHP;
    if ( newHP > maxHP )
        LOWORD(newHP) = obj->maxHP;
    obj->HP = newHP;
    return maxHP;
}


// 0x800e2fc
signed int __usercall sub_800E2FC@<R0>(Battle *obj@<R5>, int HP@<R0>, int a2@<R1>)
{
    int vHP; // r6
    int v4; // r3
    int v5; // r1
    int v6; // r2
    signed int result; // r0
    int v8; // r0

    vHP = HP;
    if ( a2 && sub_802CE78(obj->Alliance ^ 1) == 189 )
    {
        v8 = sub_80E37D2(obj->panelX, obj->panelY, 0, v4);
        sub_800BF16(obj->Alliance, 1, v8);
        sub_800ABC6(obj->panelX, obj->panelY);
        sub_802CEA6(obj->Alliance ^ 1);
        result = 1;
    }
    else
    {
        object_addHP(obj, vHP);
        SpawnT4BattleObjectWithId0(obj, &obj->vx, obj->x, obj->y, obj->z);
        PlaySoundEffect(138, v5, v6);
        result = 0;
    }
    return result;
}


// 0x800e360
signed int __fastcall sub_800E360(int a1, int a2)
{
    Battle *v2; // r5
    int v3; // r6
    int v4; // r3
    signed int result; // r0
    int v6; // r0

    v3 = a1;
    if ( a2 && sub_802CE78(v2->Alliance ^ 1) == 189 )
    {
        v6 = sub_80E37D2(v2->panelX, v2->panelY, 0, v4);
        sub_800BF16(v2->Alliance, 1, v6);
        sub_800ABC6(v2->panelX, v2->panelY);
        sub_802CEA6(v2->Alliance ^ 1);
        result = 1;
    }
    else
    {
        object_addHP(v2, v3);
        SpawnT4BattleObjectWithId0(v2, &v2->vx, v2->x, v2->y, v2->z);
        result = 0;
    }
    return result;
}


// 0x800e3be
int sub_800E3BE()
{
    int v0; // r5
    unsigned __int16 *v1; // r3
    signed int v2; // r1
    int result; // r0
    unsigned __int8 v4; // vf
    int v5; // r3
    int v6; // r1

    v1 = (*(v0 + 84) + 130);
    v2 = 5;
    result = 0;
    do
    {
        result += *v1;
        ++v1;
        v4 = __OFSUB__(v2--, 1);
    }
    while ( !(((v2 < 0) ^ v4) | (v2 == 0)) );
    v5 = *(v0 + 84);
    *(v5 + v2 + 128) = result;
    v6 = *(v5 + 140);
    return result;
}


// 0x800e3de
unsigned int __noreturn object_calculateFinalDamage1()
{
    int v0; // r5
    int v1; // r4
    char v2; // r4
    _WORD *v3; // r3
    signed int v4; // r1
    unsigned int v5; // r0
    unsigned int v6; // r2
    unsigned __int8 v7; // vf
    unsigned int result; // r0

    v1 = *(v0 + 84);
    v2 = 0;
    if ( object_getPanelDataOffset(*(v0 + 18), *(v0 + 19))[2] == 5 )
        v2 = 1;
    v3 = (*(v0 + 84) + 130);
    v4 = 5;
    v5 = 0;
    do
    {
        v6 = (*v3 + (1 << v2) - 1) >> v2;
        *v3 = v6;
        v5 += v6;
        ++v3;
        v7 = __OFSUB__(v4--, 1);
    }
    while ( !(((v4 < 0) ^ v7) | (v4 == 0)) );
    result = sub_802CE10(v5);
    *(*(v0 + 84) + 128) = result;
    return result;
}


// 0x800e420
int __noreturn object_calculateFinalDamage2()
{
    int v0; // r5
    int v1; // r4
    signed int v2; // r4
    _WORD *v3; // r3
    signed int v4; // r1
    int result; // r0
    unsigned int v6; // r2
    unsigned __int8 v7; // vf

    v1 = *(v0 + 84);
    v2 = 0;
    if ( object_getPanelDataOffset(*(v0 + 18), *(v0 + 19))[2] == 5 )
        v2 = 1;
    v3 = (*(v0 + 84) + 130);
    v4 = 5;
    result = 0;
    do
    {
        v6 = (*v3 + v2) >> v2;
        *v3 = v6;
        result += v6;
        ++v3;
        v7 = __OFSUB__(v4--, 1);
    }
    while ( !(((v4 < 0) ^ v7) | (v4 == 0)) );
    *(*(v0 + 84) + 128) = result;
    return result;
}


// 0x800e456
// () -> int
int __usercall object_getFlip@<R0>(Battle *obj@<R5>)
{
    return obj->Alliance ^ obj->directionFlip;
}


// 0x800e45e
__int64 sub_800E45E()
{
    return sub_800E468();
}


// 0x800e468
__int64 sub_800E468()
{
    unsigned __int8 *v0; // r5
    int v1; // r1
    char v2; // zf
    __int64 result; // r0
    __int64 v4; // [sp+4h] [bp-14h]

    LODWORD(v4) = sub_800E498(v0[15]);
    HIDWORD(v4) = v1;
    sub_800E5AC(v4 + v0[18], v1 + v0[19]);
    if ( v2 )
        result = 0LL;
    else
        result = v4;
    return result;
}


// 0x800e498
int __fastcall sub_800E498(int a1)
{
    int v1; // r5

    return (*(&off_800E4B0 + a1))(*(*(v1 + 84) + 12));
}


// 0x800e500
int __noreturn sub_800E500()
{
    int v0; // r5
    char *v1; // r0
    signed int v2; // r0
    char *v3; // r3
    int result; // r0
    int v5; // r1
    int v6; // r2

    v1 = object_getPanelDataOffset(*(v0 + 18), *(v0 + 19));
    if ( !v1 )
        return 0;
    v2 = v1[2];
    if ( v2 < 9 || v2 > 12 )
        return 0;
    v3 = &byte_800E538[4 * (v2 - 9)];
    result = *v3;
    v5 = v3[1];
    v6 = v3[2];
    return result;
}


// 0x800e5ac
BOOL __fastcall sub_800E5AC(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    int v4; // r7
    char v5; // zf
    char v6; // r0
    signed int v7; // r2
    int *v8; // r1

    v3 = a1;
    v4 = a2;
    object_isValidPanel(a1, a2);
    if ( v5 )
        return 0;
    v6 = object_getFlag();
    v7 = 0;
    if ( v6 & 0x10 )
        v7 = 16;
    v8 = &byte_800E660[8 * *(v2 + 22) + v7];
    return object_checkPanelParameters(v3, v4, *v8, v8[1]);
}


// 0x800e5e2
BOOL __fastcall object_canMove(int a1)
{
    return (object_getFlag() & 0x5040) == 0;
}


// 0x800e5fc
BOOL __fastcall sub_800E5FC(int a1)
{
    return (object_getFlag() & &loc_1040) == 0;
}


// 0x800e618
BOOL __fastcall sub_800E618(int a1, int a2)
{
    unsigned __int8 *v2; // r5
    int v3; // r6
    int v4; // r7
    char v5; // zf
    signed int v6; // r0
    int *v7; // r1

    v3 = a1;
    v4 = a2;
    object_isValidPanel(a1, a2);
    if ( v5 )
        return 0;
    if ( object_getFlag() & 0x10 || (object_isPanelSolid(v2[18], v2[19]), v5) )
        v6 = 16;
    else
        v6 = 0;
    v7 = &byte_800E660[8 * v2[22] + v6];
    return object_checkPanelParameters(v3, v4, *v7, v7[1]);
}


// 0x800e680
BOOL __fastcall sub_800E680(int a1, int a2)
{
    unsigned __int8 *v2; // r5
    int v3; // r6
    int v4; // r7
    char v5; // zf
    signed int v6; // r0
    int *v7; // r1

    v3 = a1;
    v4 = a2;
    object_isValidPanel(a1, a2);
    if ( v5 )
        return 0;
    if ( object_getFlag() & 0x10 || (object_isPanelSolid(v2[18], v2[19]), v5) )
        v6 = 16;
    else
        v6 = 0;
    v7 = &byte_800E6C8[8 * v2[22] + v6];
    return object_checkPanelParameters(v3, v4, *v7, v7[1]);
}


// 0x800e6e8
signed int __fastcall sub_800E6E8(int a1, int a2, int a3)
{
    signed int v3; // r3

    v3 = 0;
    if ( a1 > a2 )
    {
        if ( a3 > a2 && a3 <= a1 )
            v3 = 1;
    }
    else if ( a3 > a1 && a3 <= a2 )
    {
        v3 = 1;
    }
    return v3;
}


// 0x800e708
signed int __fastcall sub_800E708(int a1, int a2, int a3)
{
    signed int v3; // r3

    v3 = 0;
    if ( a1 == a3 || a2 == a3 )
        return 1;
    if ( a1 > a2 )
    {
        if ( a3 < a2 || a3 > a1 )
            return v3;
        return 1;
    }
    if ( a3 > a1 && a3 <= a2 )
        v3 = 1;
    return v3;
}


// 0x800e730
int sub_800E730()
{
    int v0; // r5
    int v1; // r6
    int result; // r0
    char v3; // zf
    int v4; // r0
    unsigned __int8 v5; // vf
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
    int v18; // r0
    int v19; // r0
    int v20; // r1
    int v21; // r2
    int v22; // r3
    int v23; // r0
    int v24; // [sp+0h] [bp-14h]

    v24 = object_getFlag2();
    v1 = *(v0 + 84);
    result = battle_isPaused();
    if ( !v3 )
        return result;
    v4 = *(v1 + 28);
    v5 = __OFSUB__(v4--, 1);
    *(v1 + 28) = v4;
    if ( ((v4 < 0) ^ v5) | (v4 == 0) )
    {
        object_clearFlag(&loc_800);
        object_clearFlag2(8);
        *(v1 + 28) = 0;
    }
    else
    {
        if ( v24 & 8 )
        {
            object_clearFlag2(136);
            if ( !*(v0 + 92) )
                *(v0 + 92) = *(v0 + 8);
            *(v0 + 9) = 4;
            *(v0 + 10) = 0;
            *(v1 + 30) = 0;
            *(v1 + 42) = 0;
            *(v1 + 44) = 0;
        }
        object_clearFlag(-2147385344);
        if ( !(object_getFlag() & &loc_800) )
        {
            object_setFlag1(&loc_800);
            if ( !*(v0 + 92) )
                *(v0 + 92) = *(v0 + 8);
            *(v0 + 9) = 4;
            *(v0 + 10) = 0;
        }
    }
    v6 = *(v1 + 42);
    v5 = __OFSUB__(v6--, 1);
    *(v1 + 42) = v6;
    if ( ((v6 < 0) ^ v5) | (v6 == 0) )
    {
        object_clearFlag(0x10000);
        *(v1 + 42) = 0;
    }
    else
    {
        if ( v24 & 0x10000 )
        {
            object_clearFlag2(196736);
            if ( !*(v0 + 92) )
                *(v0 + 92) = *(v0 + 8);
            *(v0 + 9) = 6;
            *(v0 + 10) = 0;
            *(v1 + 30) = 0;
            *(v1 + 28) = 0;
            *(v1 + 44) = 0;
        }
        object_clearFlag(-2147450880);
        if ( !(object_getFlag() & 0x10000) )
        {
            object_setFlag1(0x10000);
            if ( !*(v0 + 92) )
                *(v0 + 92) = *(v0 + 8);
            *(v0 + 9) = 6;
            *(v0 + 10) = 0;
            if ( *(v1 + 88) )
                goto LABEL_29;
            sub_80E9BDC(0, v7, v8, v9);
        }
    }
    v10 = *(v1 + 44);
    v5 = __OFSUB__(v10--, 1);
    *(v1 + 44) = v10;
    if ( ((v10 < 0) ^ v5) | (v10 == 0) )
    {
        object_clearFlag(2147483648);
        *(v1 + 44) = 0;
        *(v1 + 96) = 0;
        goto LABEL_38;
    }
LABEL_29:
    if ( v24 & 0x20000 )
    {
        object_clearFlag2(131200);
        if ( !*(v0 + 92) )
            *(v0 + 92) = *(v0 + 8);
        *(v0 + 9) = 7;
        *(v0 + 10) = 0;
        *(v1 + 30) = 0;
        *(v1 + 28) = 0;
        *(v1 + 42) = 0;
    }
    object_clearFlag(0x8000);
    if ( object_getFlag() >= 0 )
    {
        object_setFlag1(2147483648);
        if ( !*(v0 + 92) )
            *(v0 + 92) = *(v0 + 8);
        *(v0 + 9) = 7;
        *(v0 + 10) = 0;
        if ( *(v1 + 96) )
            goto LABEL_41;
        sub_80E4B34(0, v11, v12, v13);
    }
LABEL_38:
    v14 = *(v1 + 30);
    v5 = __OFSUB__(v14--, 1);
    *(v1 + 30) = v14;
    if ( !(((v14 < 0) ^ v5) | (v14 == 0)) )
    {
LABEL_41:
        if ( v24 & 0x80 )
        {
            object_clearFlag2(196744);
            *(v1 + 28) = 0;
            *(v1 + 42) = 0;
            *(v1 + 44) = 0;
        }
        object_setFlag1(0x8000);
        object_clearFlag(-2147416064);
        if ( !*(v1 + 72) )
            sub_80E09EE(0, v15, v16, v17);
        goto LABEL_45;
    }
    object_clearFlag(0x8000);
    object_clearFlag2(128);
    *(v1 + 30) = 0;
    *(v1 + 72) = 0;
LABEL_45:
    v18 = *(v1 + 34);
    v5 = __OFSUB__(v18--, 1);
    *(v1 + 34) = v18;
    if ( ((v18 < 0) ^ v5) | (v18 == 0) )
    {
        object_clearFlag(0x4000);
        *(v1 + 34) = 0;
    }
    else if ( v24 & 0x40 )
    {
        object_clearFlag2(64);
        object_setFlag1(0x4000);
    }
    v19 = *(v1 + 32);
    v5 = __OFSUB__(v19--, 1);
    *(v1 + 32) = v19;
    if ( ((v19 < 0) ^ v5) | (v19 == 0) )
    {
        object_clearFlag(&loc_2000);
        *(v1 + 32) = 0;
        *(v1 + 76) = 0;
    }
    else if ( v24 & 0x20 )
    {
        object_clearFlag2(32);
        object_setFlag1(&loc_2000);
        if ( !*(v1 + 76) )
            sub_80E09EE(0, v20, v21, v22);
    }
    v23 = *(v1 + 40);
    v5 = __OFSUB__(v23--, 1);
    *(v1 + 40) = v23;
    if ( !(((v23 < 0) ^ v5) | (v23 == 0)) )
        return object_setFlag1(8);
    object_clearFlag(8);
    result = 0;
    *(v1 + 40) = 0;
    return result;
}


// 0x800e994
signed int __fastcall sub_800E994(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r0
    int v6; // r1

    v5 = a1 - a3;
    v6 = a2 - a4;
    if ( v5 < 2 && v6 < 2 )
    {
        if ( v6 < 2 || v5 == 0 )
        {
            if ( v6 < 2 )
            {
                if ( !v6 )
                {
                    if ( v4 )
                        return 4;
                    return 3;
                }
            }
            else if ( v6 < 2 || v6 == 0 )
            {
                if ( v6 >= 2 )
                    return 0;
                if ( !v5 )
                    return 1;
            }
            else if ( !v5 )
            {
                return 2;
            }
        }
        else if ( !v6 )
        {
            if ( !v4 )
                return 4;
            return 3;
        }
    }
    return 5;
}


// 0x800e9dc
int __fastcall object_setCounterTime(int result)
{
    int v1; // r5
    int v2; // ST00_4
    bool v3; // zf

    if ( **(v1 + 88) != 2 || (v2 = result, v3 = (sub_802D246() & 8) == 0, result = v2, !v3) )
        *(*(v1 + 84) + 13) = result;
    return result;
}


// 0x800e9fa
void sub_800E9FA()
{
    int v0; // r5
    int v1; // r2
    int v2; // r3

    object_clearFlag2(197118);
    ZeroFillByHalfword(*(v0 + 84) + 128, 0xEu, v1, v2);
}


// 0x800ea0e
void sub_800EA0E()
{
    int v0; // r5
    int v1; // r2
    int v2; // r3

    object_clearFlag2(197118);
    ZeroFillByHalfword(*(v0 + 84) + 128, 0xEu, v1, v2);
}


// 0x800ea22
int sub_800EA22()
{
    int v0; // r5
    int v1; // r2
    __int16 v2; // r1
    signed int v3; // r3
    int result; // r0

    object_clearFlag2(196846);
    v1 = *(v0 + 84);
    *v1 = 0;
    v2 = *(v1 + 128);
    v3 = 130;
    do
    {
        v2 -= *(v1 + v3);
        result = 0;
        *(v1 + v3) = 0;
        v3 += 2;
    }
    while ( v3 != 140 );
    *(v1 + 140) = 0;
    *(v1 + 128) = v2;
    return result;
}


// 0x800ea4e
int sub_800EA4E()
{
    int v0; // r5
    int v1; // r2
    int v2; // r1
    signed int v3; // r3
    int result; // r0

    object_clearFlag2(197118);
    v1 = *(v0 + 84);
    *v1 = 0;
    v2 = *(v1 + 128);
    v3 = 130;
    do
    {
        v2 -= *(v1 + v3);
        result = 0;
        *(v1 + v3) = 0;
        v3 += 2;
    }
    while ( v3 != 140 );
    *(v1 + 142) = 0;
    if ( v2 && v2 >= 0 )
    {
        *(v1 + 128) = v2;
    }
    else
    {
        result = *(v0 + 84);
        *(result + 128) = 1;
        *(result + 130) = 1;
    }
    return result;
}


// 0x800ea90
signed int sub_800EA90()
{
    int v0; // r5
    int v1; // r2
    int v2; // r1
    int v3; // r4
    signed int v4; // r3
    unsigned int v5; // r0
    signed int result; // r0

    v1 = *(v0 + 84);
    v2 = *(v1 + 128);
    v3 = *(v1 + 128);
    v4 = 130;
    do
    {
        v5 = (*(v1 + v4) + 1) >> 1;
        v2 -= v5;
        *(v1 + v4) = v5;
        v4 += 2;
    }
    while ( v4 != 140 );
    *(v1 + 128) = v2;
    result = 0;
    if ( v2 == v3 )
        result = 1;
    return result;
}


// 0x800eaba
int sub_800EABA()
{
    return object_clearFlag2(197118);
}


// 0x800eac4
int sub_800EAC4()
{
    int v0; // r5
    int v1; // r2
    int result; // r0

    v1 = *(v0 + 84);
    result = *(v1 + 132);
    *(v1 + 132) = 0;
    *(v1 + 128) -= result;
    return result;
}


// 0x800eada
int sub_800EADA()
{
    int v0; // r5
    int v1; // r2
    int v2; // r3
    int result; // r0

    object_clearFlag2(197118);
    ZeroFillByHalfword(*(v0 + 84) + 128, 0xEu, v1, v2);
    result = *(v0 + 84);
    *(result + 44) = 0;
    *(result + 28) = 0;
    return result;
}


// 0x800eaf6
void sub_800EAF6()
{
    ;
}


// 0x800eafa
int __fastcall object_setInvulnerableTime(__int16 a1)
{
    int v1; // r5

    *(*(v1 + 84) + 40) = a1;
    return object_setFlag1(8);
}


// 0x800eb08
int sub_800EB08()
{
    int v0; // r5

    *(*(v0 + 84) + 40) = 0;
    return object_clearFlag(8);
}


// 0x800eb18
int __fastcall sub_800EB18(__int16 a1)
{
    int v1; // r5

    *(*(v1 + 84) + 34) = a1;
    return object_setFlag1(0x4000);
}


// 0x800eb26
int sub_800EB26()
{
    int v0; // r5
    int v1; // r3
    int result; // r0

    v1 = *(v0 + 84);
    result = *(v1 + 112);
    if ( result & 0x40 )
    {
        result = *(v1 + 17);
        if ( result < 96 || result > 101 )
        {
            *(v1 + 17) = 18;
            object_setFlag2(0x4000);
            result = object_clearFlag2(6);
        }
    }
    return result;
}


// 0x800eb4e
int sub_800EB4E()
{
    int v0; // r5
    int v1; // r4
    int result; // r0

    v1 = *(v0 + 84);
    result = *(v1 + 112);
    if ( result & 0x40 )
    {
        *(v1 + 17) = 18;
        object_setFlag2(0x4000);
        result = object_clearFlag2(6);
    }
    return result;
}


// 0x800eb6c
BOOL __fastcall sub_800EB6C(int a1)
{
    int v1; // r10
    int v2; // r4
    int v4; // [sp+0h] [bp-10h]

    v2 = *(v1 + oToolkit_S2034880_Ptr);
    v4 = a1;
    return !battle_networkInvert(a1) || !battle_findPlayer(v4 ^ 1) || !(object_getFlag() & 0x2000);
}


// 0x800eb9e
Battle *object_spawnHiteffect()
{
    int v0; // r5
    Battle *result; // r0
    int v2; // r2
    char v3; // zf
    int v4; // r1
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    result = battle_isPaused();
    if ( v3 )
    {
        result = *(*(v0 + 84) + 112);
        if ( result & 0x20000 )
        {
            PlaySoundEffect(110, 0x20000, v2);
            v4 = *(v0 + 52);
            v5 = sub_801BDDE(0xFu);
            result = sub_80E08C4(v5, v6, v7, v8);
        }
    }
    return result;
}


// 0x800ebd4
int __fastcall object_getEnemyByNameRange(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r10
    int *v5; // r4
    signed int v6; // r3
    int v7; // r5
    int v8; // r7
    int v9; // r6

    v5 = (*(v4 + oToolkit_S2034880_Ptr) + 16 * a4 + 128);
    v6 = 0;
    v7 = 0;
    do
    {
        v8 = *v5;
        if ( *v5 )
        {
            v9 = *(v8 + 40);
            if ( v9 >= a2 && v9 <= a3 )
            {
                *a1 = v8;
                ++a1;
                ++v7;
            }
        }
        ++v5;
        ++v6;
    }
    while ( v6 < 4 );
    return v7;
}


// 0x800ec08
int __fastcall sub_800EC08(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r10
    int *v5; // r4
    signed int v6; // r3
    int v7; // r5
    int v8; // r7
    int v9; // r6

    v5 = (*(v4 + oToolkit_S2034880_Ptr) + 16 * a4 + 208);
    v6 = 0;
    v7 = 0;
    do
    {
        v8 = *v5;
        if ( *v5 )
        {
            v9 = *(v8 + 40);
            if ( v9 >= a2 && v9 <= a3 )
            {
                *a1 = v8;
                ++a1;
                ++v7;
            }
        }
        ++v5;
        ++v6;
    }
    while ( v6 < 4 );
    return v7;
}


// 0x800ec3c
int sub_800EC3C()
{
    return object_setFlag2(0x8000);
}


// 0x800ec48
void __fastcall sub_800EC48(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int *v5; // r3
    int v6; // r2
    int v7; // r3

    v5 = (a4 + 8 * *(v4 + 22));
    v6 = *v5;
    v7 = v5[1];
}


// 0x800ec56
signed __int64 __fastcall sub_800EC56(signed int a1)
{
    int *v1; // r2

    v1 = TextScriptVirusChipNames;
    if ( a1 > 255 )
        v1 = TextScriptNaviChipNames;
    return __PAIR__(a1, v1) & 0xFFFFFFFFFFLL;
}


// 0x800ec66
_DWORD *sub_800EC66()
{
    int v0; // r10
    _DWORD *result; // r0

    result = (*(v0 + oToolkit_S2034880_Ptr) + 148);
    if ( *result )
    {
        result = (*(v0 + oToolkit_S2034880_Ptr) + 152);
        if ( *result )
            result = 0;
    }
    return result;
}


// 0x800ec80
int __fastcall sub_800EC80(int a1)
{
    int v1; // r7
    signed int v2; // r0
    char *v3; // r0
    signed int v4; // r1
    int v5; // r7
    int v7; // [sp+0h] [bp-14h]

    v7 = a1;
    v1 = sub_8000E30();
    v2 = sub_8014150();
    if ( v2 > v1 )
        v1 = v2;
    v3 = sub_80182B4(v7);
    if ( v3[1] == 2 )
        return v7;
    if ( v3[1] )
        return v7;
    v4 = *v3;
    if ( v4 >= 5 )
        return v7;
    v5 = 2 * v1;
    if ( v5 > 5 - v4 )
        v5 = 5 - v4;
    return v7 + v5;
}


// 0x800ed00
int sub_800ED00()
{
    _DWORD *v0; // r0
    unsigned int v1; // r1
    signed int v2; // r2
    int result; // r0

    v0 = &eAIData;
    v1 = 2147483648;
    v2 = 0;
    do
    {
        v0[31] = v1;
        v0 += 64;
        v1 >>= 1;
        ++v2;
    }
    while ( v2 < 8 );
    result = 0;
    *eUsedAIDataBitfield = 0;
    return result;
}


// 0x800ed2c
char *object_createAIData()
{
    char *v0; // r0
    unsigned int v1; // r1
    int v2; // r4
    char *v4; // r4

    v0 = &eAIData;
    v1 = 2147483648;
    v2 = 0;
    while ( *eUsedAIDataBitfield & v1 )
    {
        if ( ++v2 < 8 )
        {
            v0 += 256;
            v1 >>= 1;
            if ( v1 )
                continue;
        }
        return 0;
    }
    *eUsedAIDataBitfield |= v1;
    v4 = v0;
    ZeroFillByWord(v0, 124);
    ZeroFillByWord(v4 + 128, 32);
    ZeroFillByWord(v4 + 160, 80);
    return v4;
}


