// 0x809f526
int sub_809F526()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // ST04_4
    int v5; // ST08_4
    int v6; // r2
    int result; // r0
    int v8; // [sp-1Ch] [bp-24h]
    int v9; // [sp-18h] [bp-20h]
    int v10; // [sp-14h] [bp-1Ch]
    int v11; // [sp-10h] [bp-18h]

    v1 = *(v0 + 96);
    if ( *v0 & 1 )
    {
        v2 = *(v0 + 36) + (*(v0 + 17) << 16);
        v3 = *(v0 + 40) + (*(v0 + 18) << 16);
        if ( *(v0 + 23) )
        {
            v4 = *(v0 + 36) + (*(v0 + 17) << 16);
            v5 = *(v0 + 40) + (*(v0 + 18) << 16);
            v6 = sub_8031612(v0 + 36) << 16;
            v2 = v4;
            v3 = v5;
        }
        else
        {
            v6 = *(v0 + 44);
        }
        v8 = v2;
        v9 = v3;
        v10 = v6 + (*(v0 + 19) << 16);
        v11 = *(v0 + 12);
        sub_80037AC(v2, v3, v10, v11);
        if ( !(v1 & 0x14) )
            sub_80037AC(v8, v9, v10, v11);
    }
    result = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    return result;
}


// 0x809f5b0
int sub_809F5B0()
{
    int v0; // r5
    int result; // r0

    if ( !(*(v0 + 96) & 4) )
        sub_80037AC(*(v0 + 48) + (*(v0 + 17) << 16), *(v0 + 52) + (*(v0 + 18) << 16), *(v0 + 56) + (*(v0 + 19) << 16), 2052);
    result = 0;
    *(v0 + 84) = 0;
    return result;
}


// 0x809f5fc
int sub_809F5FC()
{
    _BYTE *v0; // r5
    int result; // r0

    v0[29] = v0[9];
    v0[30] = v0[10];
    v0[8] = 8;
    result = 0;
    v0[9] = 0;
    *(v0 + 5) = 0;
    return result;
}


// 0x809f612
int sub_809F612()
{
    int v0; // r5
    int result; // r0

    *(v0 + 8) = 4;
    *(v0 + 9) = *(v0 + 29);
    *(v0 + 10) = *(v0 + 30);
    if ( !(*(v0 + 96) & 0x1002) )
    {
        sprite_setAnimation(*(v0 + 20));
        sprite_loadAnimationData();
    }
    result = 0;
    *(v0 + 24) = 0;
    return result;
}


// 0x809f638
signed int sub_809F638()
{
    int v0; // r5
    signed int result; // r0

    result = 0;
    if ( *(v0 + 84) & 0x50000 )
        result = 1;
    return result;
}


// 0x809f64c
// (u8 bitfield_arr[2]) -> u16
int __fastcall getBitfieldFromArr_809F64C(unsigned __int8 *a1)
{
    return (a1[1] << 8) | *a1;
}


// 0x809f656
// (void* a1) -> int
int __fastcall sub_809F656(unsigned __int8 *a1)
{
    return (a1[3] << 24) | *a1 | (a1[1] << 8) | (a1[2] << 16);
}


// 0x809f66c
char *__fastcall sub_809F66C(int a1)
{
    signed int v1; // r3
    char *v2; // r7

    v1 = 16;
    v2 = eOverworldNPCObjects;
    while ( v2[16] != a1 )
    {
        v2 += 216;
        if ( !--v1 )
            return 0;
    }
    return v2;
}


// 0x809f68c
unsigned int sub_809F68C()
{
    char *v0; // r3
    unsigned int result; // r0

    v0 = eOverworldNPCObjects;
    do
    {
        result = *(v0 + 20) & 0xFFFFFFFE;
        *(v0 + 20) = result;
        v0 += 216;
    }
    while ( v0 < byte_2006530 );
    return result;
}


// 0x809f904
int sub_809F904()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(v0 + 25) = 0;
    return result;
}


// 0x809f90c
char *sub_809F90C()
{
    char *result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(23, 8);
    if ( v1 )
    {
        result = byte_2000210;
        byte_2000210[0] = 0;
        dword_2000218 = 0;
    }
    return result;
}


// 0x809f922
int sub_809F922()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r6

    result = TestEventFlagFromImmediate(23, 8);
    if ( v2 )
    {
        v3 = byte_2000210[0];
        if ( byte_2000210[0] < 16 )
        {
            ++byte_2000210[0];
            *&byte_2000210[4 * v3 + 16] = v0;
        }
    }
    return result;
}


// 0x809f942
int sub_809F942()
{
    int v0; // r10
    int result; // r0
    char v2; // zf
    int v3; // r6
    _DWORD *v4; // r4
    int *i; // r7
    unsigned __int8 v6; // vf
    int v7; // r5
    int v8; // r0
    int v9; // r1
    int v10; // ST00_4

    result = TestEventFlagFromImmediate(23, 8);
    if ( v2 )
    {
        v3 = byte_2000210[0];
        v4 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
        for ( i = &dword_2000220; ; ++i )
        {
            v6 = __OFSUB__(v3--, 1);
            if ( (v3 < 0) ^ v6 )
                break;
            v7 = *i;
            if ( *(*i + 44) == v4[9] )
            {
                v8 = *(v7 + 36) - v4[7];
                v9 = *(v7 + 40) - v4[8];
                if ( v8 - v9 <= 2359296 && v8 - v9 >= -3670016 && v8 + v9 <= 1835008 && v8 + v9 >= -1835008 )
                {
                    v10 = *i;
                    sub_809F90C();
                    result = v10;
                    dword_2000218 = v10;
                    return result;
                }
            }
        }
        sub_809F90C();
        result = 0;
    }
    return result;
}


// 0x809f9be
void sub_809F9BE()
{
    ;
}


// 0x809f9c8
void __fastcall zeroFill_e2004348(int a1, int a2, int a3, int a4)
{
    int v4; // r10

    ZeroFillByEightWords(*(v4 + oToolkit_Unk2004348_Ptr), 0x480u, a3, a4);
}


// 0x809f9dc
int sub_809F9DC()
{
    int *i; // r4
    int *j; // r6
    int v2; // r7
    int *v3; // r5
    __int16 v4; // r12
    int v5; // r0
    __int64 v6; // r0
    __int16 v7; // r12
    int v9; // [sp-10h] [bp-28h]

    sub_809FD70();
    for ( i = &off_80A336C; *i != 1; i += 2 )
    {
        if ( *i )
        {
            for ( j = i[1]; ; ++j )
            {
                v2 = *j;
                if ( !*j )
                    break;
                v3 = &v9;
                ByteFill(&v9, 16, 0xFFu);
                while ( *v2 )
                {
                    if ( *v2 == 5 )
                    {
                        v5 = sub_809FBF2(5, *(v2 + 8));
                        v6 = sub_809FA68(*(v2 + 4), v5, &v9);
                        *v3 = BYTE4(v6);
                        v3 = (v3 + 1);
                        sub_809FACE(*(v2 + 2), v6, SBYTE4(v6));
                        ClearEventFlag(*(v2 + 2));
                        v4 = v7 + 1;
                    }
                    v2 += 12;
                }
                sub_809FDCE(*i, (j - i[1]) >> 2, v4);
            }
        }
    }
    return sub_809FDE0();
}


// 0x809fa68
__int64 __fastcall sub_809FA68(_BYTE *a1, int a2, unsigned __int8 *a3)
{
    unsigned __int8 *v3; // r5
    __int64 v4; // r6
    int v5; // r4
    _BYTE *v6; // r1
    int v7; // r4
    unsigned __int8 *i; // r0
    int v9; // r3
    char v10; // r3
    int v12; // [sp+0h] [bp-34h]

    v3 = a3;
    HIDWORD(v4) = a2;
    if ( a1 )
    {
        v5 = 0;
        while ( *a1 )
        {
            *(&v12 + v5++) = a1[1];
            a1 += 8;
        }
        a1 = sub_8000E3A(&v12, v5);
    }
    LODWORD(v4) = a1;
    v6 = HIDWORD(v4);
    v7 = 0;
    while ( *v6 )
    {
        for ( i = v3; ; ++i )
        {
            v9 = *i;
            if ( v9 == 255 )
                break;
            if ( v9 == v7 )
            {
                v10 = 0;
                goto LABEL_14;
            }
        }
        v10 = v6[1];
LABEL_14:
        *(&v12 + v7++) = v10;
        v6 += 8;
    }
    HIDWORD(v4) = sub_8000E3A(&v12, v7);
    return v4;
}


// 0x809face
_BYTE *__fastcall sub_809FACE(int a1, int a2, char a3)
{
    char v3; // ST04_1
    _BYTE *result; // r0
    char v5; // [sp+0h] [bp-1Ch]

    v3 = a3;
    result = sub_809FADE(a1);
    *result = v5;
    result[1] = v3;
    return result;
}


// 0x809fade
int __fastcall sub_809FADE(int a1)
{
    int v1; // r10

    return 2 * (a1 - 5120) + *(v1 + oToolkit_Unk2004348_Ptr);
}


// 0x809faf4
void sub_809FAF4()
{
    sub_809FB04();
    sub_809FB04();
}


// 0x809fb04
void sub_809FB04()
{
    _DWORD *v0; // r4
    unsigned __int8 **i; // r6
    unsigned __int8 *v2; // r7
    int v3; // r0
    int v4; // r0
    char v5; // r1

    while ( *v0 != 1 )
    {
        if ( *v0 )
        {
            for ( i = v0[1]; ; ++i )
            {
                v2 = *i;
                if ( !*i )
                    break;
                while ( 1 )
                {
                    v3 = *v2;
                    if ( !*v2 )
                        break;
                    if ( v3 != 5 )
                    {
                        v4 = sub_809FB4C(v3, *(v2 + 1), *(v2 + 2), *(v2 + 1));
                        sub_809FACE(*(v2 + 1), v4, v5);
                        ClearEventFlag(*(v2 + 1));
                    }
                    v2 += 12;
                }
            }
        }
        v0 += 2;
    }
}


// 0x809fb4c
int __fastcall sub_809FB4C(int a1, _BYTE *a2, _BYTE *a3, unsigned int a4)
{
    int v4; // r5
    _BYTE *v5; // r6
    _BYTE *v6; // r7
    _BYTE *v7; // ST04_4
    _BYTE *v8; // ST00_4
    _BYTE *v9; // r6
    _BYTE *v10; // r7
    char v11; // zf
    int v12; // r4
    int v13; // r6
    int v14; // r4
    char v15; // r7
    int v16; // r4
    int v17; // r0
    int v18; // r4
    unsigned __int8 *v20; // r0
    int v21; // r1

    v4 = a4;
    v5 = a2;
    v6 = a3;
    if ( a1 != 1 && a1 != 3 && (a1 == 2 || a1 == 4) )
    {
        v16 = 0;
        while ( *v5 )
        {
            ++v16;
            v5 += 8;
        }
        v17 = 0;
        if ( v16 <= 0 )
            v17 = v16 - 1;
        v13 = v17;
        v18 = 0;
        while ( *v6 )
        {
            ++v18;
            v6 += 8;
        }
        return v13;
    }
    v8 = a2;
    v7 = a3;
    TestEventFlag(a4);
    v9 = v8;
    v10 = v7;
    if ( !v11 )
    {
        v12 = 0;
        while ( *v9 )
        {
            ++v12;
            v9 += 8;
        }
        v13 = *sub_809FADE(v4) + 1;
        if ( v13 >= v12 )
            v13 = v12 - 1;
        v14 = 0;
        while ( *v10 )
        {
            ++v14;
            v10 += 8;
        }
        v15 = *(sub_809FADE(v4) + 1) + 1;
        return v13;
    }
    v20 = sub_809FADE(v4);
    v21 = v20[1];
    return *v20;
}


// 0x809fbf2
int __fastcall sub_809FBF2(int a1, int a2)
{
    return a2;
}


// 0x809fc1c
int __fastcall sub_809FC1C(int a1)
{
    int v1; // r10
    int v2; // r6
    int v3; // r7
    signed int v4; // r0
    char *v5; // r4
    unsigned __int8 *i; // r4
    int v7; // ST04_4
    int v8; // ST08_4
    unsigned __int8 *v9; // r0
    int v10; // ST00_4
    int v11; // r3

    v2 = a1;
    v3 = *(v1 + oToolkit_GameStatePtr);
    v4 = *(v3 + oGameState_MapGroup);
    if ( v4 >= 128 )
    {
        v4 -= 128;
        v5 = &off_80A336C;
    }
    else
    {
        v5 = byte_80A3360;
    }
    for ( i = *(*&v5[8 * v4 + 4] + 4 * *(v3 + oGameState_MapNumber)); *i; i += 12 )
    {
        if ( *(i + 1) == v2 )
        {
            v7 = *i;
            v8 = i[1];
            v9 = sub_809FADE(v2);
            v10 = *(i + 1) + 8 * *v9 + 2;
            v11 = *(sub_809FBF2(*i, *(i + 2)) + 8 * v9[1]);
            return sub_809FE36(v7);
        }
    }
    return 0;
}


// 0x809fc96
signed int __fastcall sub_809FC96(int a1)
{
    int v1; // r10
    int v2; // r6
    signed int v3; // r5
    int v4; // r0
    int v5; // r7
    signed int v6; // r0
    char *v7; // r4
    unsigned __int8 *i; // r4
    int v9; // r7
    int v10; // r0
    int v11; // r12
    int v12; // r4
    int v13; // r3
    int v14; // r3
    unsigned __int8 *v15; // r4
    signed int result; // r0
    int v17; // r1
    int v18; // r12
    int v19; // r2
    int v20; // r3
    int v21; // r4
    int v22; // r3
    int v23; // r3
    int v24; // r12
    int v25; // r2
    unsigned __int8 *v26; // r1
    int v27; // r0
    unsigned __int8 v28; // vf
    unsigned __int8 *v29; // r4
    int v30; // r1
    int v31; // r2
    int v32; // r3

    v2 = a1;
    v3 = 1;
    v4 = getPETNaviSelect();
    if ( sub_8013704(v4, 51) != 1 )
        v3 = 0;
    v5 = *(v1 + oToolkit_GameStatePtr);
    v6 = *(v5 + oGameState_MapGroup);
    if ( v6 >= 128 )
    {
        v6 -= 128;
        v7 = &off_80A336C;
    }
    else
    {
        v7 = byte_80A3360;
    }
    for ( i = *(*&v7[8 * v6 + 4] + 4 * *(v5 + oGameState_MapNumber)); ; i += 12 )
    {
        if ( !*i )
            return 255;
        if ( *(i + 1) == v2 )
            break;
    }
    v9 = sub_809FADE(v2);
    v10 = sub_809FBF2(*i, *(i + 2));
    if ( v11 == 5 && v3 )
    {
        v21 = v10;
        v22 = *(v9 + 1);
        sub_809FE44(v2);
        v25 = 0;
        while ( 1 )
        {
            v26 = (8 * v25 + v21);
            v27 = *v26;
            if ( v27 == 3 || v27 == 7 )
            {
                v28 = __OFSUB__(v23--, 1);
                if ( (v23 < 0) ^ v28 )
                    break;
            }
            if ( ++v25 >= 8 )
                v25 = 0;
        }
        v29 = (8 * v25 + v21);
        result = *(v26 + 1);
        v30 = v26[3];
        v31 = 10 * (*v29 - 1) + v24;
        v32 = *v29;
    }
    else
    {
        v12 = v10;
        v13 = *(v9 + 1);
        sub_809FE44(v2);
        v15 = (v12 + 8 * v14);
        result = *(v15 + 1);
        v17 = v15[3];
        v19 = 10 * (*v15 - 1) + v18;
        v20 = *v15;
    }
    return result;
}


// 0x809fd70
__int64 sub_809FD70()
{
    int *v0; // r4
    int *v1; // r7
    int v2; // r3
    int v3; // r0
    int *v4; // r1
    int v5; // ST04_4
    __int64 result; // r0
    int v7; // [sp-10h] [bp-44h]
    int v8; // [sp+0h] [bp-34h]

    byte_2000212 = 0;
    word_2000216 = 0;
    word_2000214 = 0;
    v0 = &v8;
    v1 = off_80A3428;
    v2 = 0;
    while ( *v1 )
    {
        *v0 = v1[2];
        v1 += 3;
        ++v2;
        v0 = (v0 + 1);
    }
    v3 = sub_8000E3A(&v8, v2);
    byte_2000213 = v3;
    v4 = &off_80A3428[3 * v3];
    word_2000214 = *v4;
    v5 = v4[1];
    ByteFill(&v7, 16, 0xFFu);
    result = sub_809FA68(0, v5, &v7);
    byte_2000212 = BYTE4(result);
    return result;
}


// 0x809fdce
int __fastcall sub_809FDCE(int a1, int a2, __int16 a3)
{
    int result; // r0

    result = a1 | (a2 << 8);
    if ( result == word_2000214 )
        word_2000216 = a3;
    return result;
}


// 0x809fde0
int sub_809FDE0()
{
    int result; // r0
    int v1; // r7
    int v2; // r4
    int v3; // r3
    int v4; // [sp-10h] [bp-24h]

    result = word_2000216;
    if ( word_2000216 )
    {
        ByteFill(&v4, 16, 0x20u);
        v1 = sub_8000E3A(&v4, word_2000216) + 1;
        v2 = *(*(&off_80A336C + 2 * (word_2000214 - 128) + 1) + 4 * HIBYTE(word_2000214));
        v3 = 0;
        while ( *v2 )
        {
            if ( *v2 == 5 && ++v3 == v1 )
            {
                result = *(v2 + 2);
                word_2000216 = *(v2 + 2);
                return result;
            }
            v2 += 12;
        }
        result = 0;
        word_2000216 = 0;
    }
    return result;
}


// 0x809fe36
int __fastcall sub_809FE36(int result)
{
    int v1; // r4

    if ( v1 == word_2000216 )
        ++result;
    return result;
}


// 0x809fe44
unsigned int __fastcall sub_809FE44(unsigned int result)
{
    int v1; // r4

    if ( result == word_2000216 )
    {
        result = 12 * byte_2000213;
        v1 = off_80A3428[result / 4 + 1];
    }
    return result;
}


// 0x809fe5e
int sub_809FE5E()
{
    __asm { SVC         6 }
    return chatbox_8045EFC(10 * word_2000214 + 16, HIBYTE(word_2000214), 0, 0);
}


// 0x809fe7a
int sub_809FE7A()
{
    return TestEventFlagFromImmediate(23, 64);
}


