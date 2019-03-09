// 0x813b768
int sub_813B768()
{
    int v0; // r10

    **(v0 + oToolkit_Unk2004334_Ptr) = 0;
    return ZeroFillByByte(*(v0 + oToolkit_Unk200431c_Ptr), 16);
}


// 0x813b780
int *__fastcall sub_813B780(int a1)
{
    return &StructArr_813944C[4 * a1];
}


// 0x813b790
void *__fastcall sub_813B790(int a1)
{
    return sub_813B7A0(a1, byte_20096D8);
}


// 0x813b7a0
void *__fastcall sub_813B7A0(int a1, int a2)
{
    int v2; // r6
    int v3; // r4
    int *v4; // r7
    signed int v5; // r2
    char v6; // zf
    int v7; // r7

    v2 = a2;
    v3 = a1;
    v4 = sub_813B780(a1);
    TestEventFlag(v3 + 9824);
    if ( !v6 )
        v5 = 3;
    v7 = v4[v5];
    (*(&off_813B7D4 + v2))();
    return &unk_2009F00;
}


// 0x813b7ec
int sub_813B7EC()
{
    int v0; // r4
    int v1; // r7

    return CopyBytes(v1, v0, 49);
}


// 0x813b7fc
int sub_813B7FC()
{
    int v0; // r4
    unsigned __int8 *v1; // r7
    signed int v2; // r5
    signed int v3; // r6
    int result; // r0
    unsigned __int8 v5; // vf

    v2 = 6;
    do
    {
        v3 = 0;
        do
        {
            result = *v1;
            *(v0 + v2 + v3) = result;
            ++v1;
            v3 += 7;
        }
        while ( v3 < 49 );
        v5 = __OFSUB__(v2--, 1);
    }
    while ( !((v2 < 0) ^ v5) );
    return result;
}


// 0x813b818
int sub_813B818()
{
    int v0; // r4
    unsigned __int8 *v1; // r7
    signed int v2; // r5
    signed int v3; // r6
    int result; // r0
    unsigned __int8 v5; // vf

    v2 = 42;
    do
    {
        v3 = 6;
        do
        {
            result = *v1;
            *(v0 + v2 + v3) = result;
            ++v1;
            v5 = __OFSUB__(v3--, 1);
        }
        while ( !((v3 < 0) ^ v5) );
        v5 = __OFSUB__(v2, 7);
        v2 -= 7;
    }
    while ( !((v2 < 0) ^ v5) );
    return result;
}


// 0x813b830
int sub_813B830()
{
    int v0; // r4
    unsigned __int8 *v1; // r7
    signed int v2; // r5
    signed int v3; // r6
    int result; // r0
    unsigned __int8 v5; // vf

    v2 = 0;
    do
    {
        v3 = 42;
        do
        {
            result = *v1;
            *(v0 + v2 + v3) = result;
            ++v1;
            v5 = __OFSUB__(v3, 7);
            v3 -= 7;
        }
        while ( !((v3 < 0) ^ v5) );
        ++v2;
    }
    while ( v2 < 7 );
    return result;
}


// 0x813b84c
__int64 __fastcall sub_813B84C(int a1)
{
    char *v1; // r7
    signed int v2; // r1
    signed int v3; // r4
    signed int v4; // r0
    signed int v5; // r2
    signed int v6; // r6
    char *v7; // r7
    signed int v8; // r1
    signed int v9; // r4
    signed int v10; // r0
    signed int v11; // r2
    signed int v12; // r6
    unsigned __int8 v13; // vf
    char *v14; // r7
    signed int v15; // r1
    signed int v16; // r4
    signed int v17; // r0
    signed int v18; // r2
    signed int v19; // r6
    char *v20; // r7
    signed int v21; // r1
    signed int v22; // r4
    signed int v23; // r0
    signed int v24; // r2
    signed int v25; // r6
    char *v27; // [sp+0h] [bp-28h]
    __int64 v28; // [sp+4h] [bp-24h]

    v1 = sub_813B790(a1);
    v27 = v1;
    v2 = 0;
    v3 = 7;
    do
    {
        v4 = 0;
        v5 = 0;
        v6 = 0;
        do
        {
            if ( v1[v4] )
                v6 = 1;
            if ( !v6 )
                ++v5;
            ++v4;
        }
        while ( v4 < 7 );
        if ( v5 <= v3 )
            v3 = v5;
        v1 += 7;
        ++v2;
    }
    while ( v2 < 7 );
    LODWORD(v28) = v3;
    v7 = v27;
    v8 = 0;
    v9 = 7;
    do
    {
        v10 = 6;
        v11 = 0;
        v12 = 0;
        do
        {
            if ( v7[v10] )
                v12 = 1;
            if ( !v12 )
                ++v11;
            v13 = __OFSUB__(v10--, 1);
        }
        while ( !((v10 < 0) ^ v13) );
        if ( v11 <= v9 )
            v9 = v11;
        v7 += 7;
        ++v8;
    }
    while ( v8 < 7 );
    HIDWORD(v28) = v9;
    v14 = v27;
    v15 = 0;
    v16 = 7;
    do
    {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        do
        {
            if ( v14[v17] )
                v19 = 1;
            if ( !v19 )
                ++v18;
            v17 += 7;
        }
        while ( v17 < 49 );
        if ( v18 <= v16 )
            v16 = v18;
        ++v14;
        ++v15;
    }
    while ( v15 < 7 );
    v20 = v27;
    v21 = 0;
    v22 = 7;
    do
    {
        v23 = 42;
        v24 = 0;
        v25 = 0;
        do
        {
            if ( v20[v23] )
                v25 = 1;
            if ( !v25 )
                ++v24;
            v13 = __OFSUB__(v23, 7);
            v23 -= 7;
        }
        while ( !((v23 < 0) ^ v13) );
        if ( v24 <= v22 )
            v22 = v24;
        ++v20;
        ++v21;
    }
    while ( v21 < 7 );
    return v28;
}


// 0x813b920
int __fastcall sub_813B920(int result)
{
    byte_20096D8 = result;
    return result;
}


// 0x813b928
int sub_813B928()
{
    return byte_20096D8;
}


// 0x813b934
void __fastcall zeroFill_813B934()
{
    Toolkit *tk; // r10

    ZeroFillByWord(tk->unk_2004190, &byte_188);
    ZeroFillByWord(tk->unk_200414C, 64);
}


// 0x813b950
int __fastcall sub_813B950(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // ST04_4
    int v6; // ST08_4
    char *v7; // r7
    int result; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r6
    signed int v12; // r5
    signed int v13; // r3
    int v14; // [sp+0h] [bp-24h]
    int v15; // [sp+4h] [bp-20h]

    v14 = a1 + 1;
    v5 = a3;
    v6 = a4;
    v7 = sub_813B790(a2);
    result = v14;
    v9 = v5 - 3;
    v10 = v6 - 3;
    v11 = *(v4 + oToolkit_Unk200414c_Ptr) + 7 * (v6 - 3) + v5 - 3;
    v12 = 0;
    do
    {
        v13 = 0;
        v15 = v9;
        if ( v10 >= 0 && v10 < 7 )
        {
            do
            {
                if ( v9 >= 0 && v9 < 7 )
                {
                    if ( v7[v13] )
                        *(v11 + v13) = v14;
                }
                ++v9;
                ++v13;
            }
            while ( v13 < 7 );
        }
        v9 = v15;
        v11 += 7;
        v7 += 7;
        ++v10;
        ++v12;
    }
    while ( v12 < 7 );
    return result;
}


// 0x813b9b4
int __fastcall sub_813B9B4(int a1, int a2)
{
    int v2; // r10

    return *(*(v2 + oToolkit_Unk200414c_Ptr) + a1 + 7 * a2);
}


// 0x813b9c4
int __fastcall sub_813B9C4(int a1)
{
    int v1; // r10
    int v2; // r3
    signed int v3; // r1
    int result; // r0

    v2 = *(v1 + oToolkit_Unk200414c_Ptr);
    v3 = 0;
    result = a1 + 1;
    do
    {
        if ( *(v2 + v3) == result )
            *(v2 + v3) = 0;
        ++v3;
    }
    while ( v3 < 49 );
    return result;
}


// 0x813b9e0
char (*__fastcall sub_813B9E0(int a1))[225]
{
    return off_813B9F0[a1];
}


// 0x813b9fc
int __fastcall sub_813B9FC(int a1)
{
    int v1; // r10

    return 8 * a1 + *(v1 + oToolkit_Unk2004190_Ptr);
}


// 0x813ba08
int __fastcall sub_813BA08(unsigned __int16 a1, char a2, char a3, char a4)
{
    char v4; // r4
    int v5; // r10
    unsigned __int16 *v6; // r7
    int v7; // r1
    int result; // r0
    unsigned __int16 v9; // [sp+0h] [bp-28h]
    char v10; // [sp+4h] [bp-24h]

    v9 = a1;
    v10 = a2;
    v6 = *(v5 + oToolkit_Unk2004190_Ptr);
    v7 = 0;
    while ( 1 )
    {
        result = *v6;
        if ( !*v6 )
            break;
        v6 += 4;
        if ( ++v7 >= 49 )
            return result;
    }
    *v6 = v9;
    *(v6 + 3) = v10;
    *(v6 + 4) = a3;
    *(v6 + 5) = a4;
    *(v6 + 6) = v4;
    return v7;
}


// 0x813ba48
int __fastcall sub_813BA48(int a1)
{
    int v1; // r10
    int v2; // r3
    int result; // r0

    v2 = *(v1 + oToolkit_Unk2004190_Ptr) + 8 * a1;
    result = 0;
    *v2 = 0;
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;
    return result;
}


// 0x813ba64
void sub_813BA64()
{
    int v0; // r10

    CopyWords(*(v0 + oToolkit_Unk200414c_Ptr), &eTextScript201BA00, 0x40u);
    CopyWords(*(v0 + oToolkit_Unk2004190_Ptr), byte_201BA40, &byte_188);
}


// 0x813ba80
void sub_813BA80()
{
    int v0; // r10

    CopyWords(&eTextScript201BA00, *(v0 + oToolkit_Unk200414c_Ptr), 0x40u);
    CopyWords(byte_201BA40, *(v0 + oToolkit_Unk2004190_Ptr), &byte_188);
}


// 0x813baa8
void sub_813BAA8()
{
    int v0; // r10

    CopyWords(*(v0 + oToolkit_Unk200414c_Ptr), byte_201BC40, 0x40u);
    CopyWords(*(v0 + oToolkit_Unk2004190_Ptr), byte_201BC80, &byte_188);
}


// 0x813bac4
void sub_813BAC4()
{
    int v0; // r10

    CopyWords(byte_201BC40, *(v0 + oToolkit_Unk200414c_Ptr), 0x40u);
    CopyWords(byte_201BC80, *(v0 + oToolkit_Unk2004190_Ptr), &byte_188);
}


// 0x813baec
int __fastcall sub_813BAEC(int a1, int a2, int a3, int a4)
{
    int result; // r0
    char v5; // zf
    int v6; // [sp+0h] [bp-14h]
    int v7; // [sp+4h] [bp-10h]
    int v8; // [sp+8h] [bp-Ch]
    int v9; // [sp+Ch] [bp-8h]

    v6 = a1;
    v7 = a2;
    v8 = a3;
    v9 = a4;
    sub_813BB00(a1, a2, a3, a4);
    result = v6;
    if ( v5 )
        result = sub_813BB68(v6, v7, v8, v9);
    return result;
}


// 0x813bb00
signed int __fastcall sub_813BB00(int a1, int a2, int a3, int a4)
{
    int v4; // ST04_4
    int v5; // ST08_4
    int v6; // ST0C_4
    char *v7; // r7
    int v8; // r1
    signed int v9; // r2
    signed int result; // r0
    signed int v11; // r3
    signed int v12; // [sp+10h] [bp-18h]

    v4 = a2;
    v5 = a3;
    v6 = a4;
    v12 = 1;
    v7 = sub_813B790(a1);
    v8 = v4 + v5 + 2 + 15 * (v6 + 2);
    v9 = 0;
    result = 1;
    do
    {
        v11 = 0;
        do
        {
            if ( v7[v11] )
            {
                if ( !*(v8 + v11) )
                    goto LABEL_10;
                if ( *(v8 + v11) != 3 )
                    v12 = 0;
            }
            ++v11;
        }
        while ( v11 < 7 );
        v7 += 7;
        v8 += 15;
        ++v9;
    }
    while ( v9 < 7 );
    result = 0;
LABEL_10:
    if ( v12 )
        result = 1;
    return result;
}


// 0x813bb68
signed int __fastcall sub_813BB68(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // ST0C_4
    char *v6; // r7
    int v7; // r2
    int v8; // r6
    int v9; // r5
    int v10; // r1
    int v11; // r3
    int v13; // [sp+8h] [bp-20h]

    v13 = a3;
    v5 = a4;
    v6 = sub_813B790(a1);
    v7 = v5 - 3;
    v8 = *(v4 + oToolkit_Unk200414c_Ptr) + 7 * (v5 - 3) + v13 - 3;
    v9 = 0;
    while ( 1 )
    {
        v10 = v13 - 3;
        v11 = 0;
        if ( v7 >= 0 && v7 < 7 )
            break;
LABEL_10:
        v8 += 7;
        v6 += 7;
        ++v7;
        if ( ++v9 >= 7 )
            return 0;
    }
    while ( v10 < 0 || v10 >= 7 || !v6[v11] || !*(v8 + v11) )
    {
        ++v10;
        if ( ++v11 >= 7 )
            goto LABEL_10;
    }
    return 1;
}


// 0x813bbd4
int sub_813BBD4()
{
    int v0; // r10
    int v1; // r7

    v1 = *(v0 + oToolkit_Unk200431c_Ptr);
    ZeroFillByByte(*(v0 + oToolkit_Unk200431c_Ptr), 16);
    ZeroFillByByte(&unk_2006CF8, 49);
    ZeroFillByByte(&unk_2006C88, 49);
    ZeroFillByByte(&unk_2006CC0, 49);
    sub_813BC1C(v1);
    sub_813BC98(v1);
    sub_813BD24();
    sub_813BE8C();
    sub_813BEA8();
    return sub_813C584(v1);
}


// 0x813bc1c
int __fastcall sub_813BC1C(int a1)
{
    int v1; // r6
    int v2; // r5
    int result; // r0
    signed int v4; // r4
    int *v5; // r0
    int *v6; // r7
    int v7; // r0
    _BYTE *v8; // r7
    unsigned __int8 v9; // vf
    int v10; // [sp+0h] [bp-38h]
    int v11; // [sp+4h] [bp-34h]
    int v12; // [sp+8h] [bp-30h]
    int v13; // [sp+Ch] [bp-2Ch]
    int v14; // [sp+10h] [bp-28h]
    int v15; // [sp+14h] [bp-24h]
    int v16; // [sp+18h] [bp-20h]
    int v17; // [sp+1Ch] [bp-1Ch]
    int *v18; // [sp+20h] [bp-18h]

    v17 = a1;
    v10 = 255;
    v11 = 255;
    v12 = 255;
    v13 = 255;
    v14 = 255;
    v15 = 255;
    v16 = 255;
    v1 = 6;
    v2 = 0;
    do
    {
        result = sub_813B9B4(v1, 3);
        v18 = (&v10 + v2);
        v4 = 0;
        do
        {
            if ( result == *(&v10 + v4) )
                goto LABEL_13;
            v4 += 4;
        }
        while ( v4 < 28 );
        if ( result )
        {
            *(&v10 + v2) = result;
            result = *sub_813B9FC(result - 1);
            if ( result )
            {
                v5 = sub_813B780(result);
                v6 = v5;
                v7 = *(v5 + 1);
                if ( v7 != 2 )
                {
                    if ( v7 != 1 )
                    {
                        v8 = &unk_2006CF8;
                        goto LABEL_12;
                    }
                    ++*(v17 + *(v6 + 4));
                }
                v8 = &unk_2006CC0;
LABEL_12:
                result = *v18;
                v8[v1] = *v18;
                goto LABEL_13;
            }
        }
LABEL_13:
        v2 += 4;
        v9 = __OFSUB__(v1--, 1);
    }
    while ( !((v1 < 0) ^ v9) );
    return result;
}


// 0x813bc98
int __fastcall sub_813BC98(int a1)
{
    int v1; // r6
    int v2; // r5
    int v3; // r6
    int result; // r0
    signed int v5; // r4
    int *v6; // r0
    int *v7; // r7
    _BYTE *v8; // r7
    int v9; // r6
    int v10; // [sp+0h] [bp-34h]
    int v11; // [sp+1Ch] [bp-18h]

    v11 = a1;
    v1 = 0;
    v2 = 0;
    do
    {
        *(&v10 + v2) = sub_813B9B4(v1, 3) - 1;
        v2 += 4;
        ++v1;
    }
    while ( v1 < 7 );
    v3 = 0;
    do
    {
        result = v3;
        v5 = 0;
        while ( v3 != *(&v10 + v5) )
        {
            v5 += 4;
            if ( v5 >= 28 )
            {
                result = *sub_813B9FC(v3);
                if ( result )
                {
                    v6 = sub_813B780(result);
                    v7 = v6;
                    result = *(v6 + 1);
                    if ( result == 2 || result )
                    {
                        v8 = &unk_2006C88 + v3;
                        v9 = v3 + 1;
                        *v8 = v9;
                        v3 = v9 - 1;
                    }
                    else
                    {
                        result = v11;
                        ++*(v11 + *(v7 + 4));
                    }
                }
                break;
            }
        }
        ++v3;
    }
    while ( v3 < 49 );
    return result;
}


// 0x813bd0c
void sub_813BD0C()
{
    ;
}


// 0x813bd10
void sub_813BD10()
{
    ;
}


// 0x813bd14
void sub_813BD14()
{
    ;
}


// 0x813bd24
int sub_813BD24()
{
    int v0; // r8
    int v1; // r6
    unsigned __int8 *v2; // r0
    unsigned __int8 *v3; // r7
    int v4; // r0

    v1 = 0;
    do
    {
        ZeroFillByByte(byte_2006C50, 49);
        v2 = sub_813B9FC(v1);
        v3 = v2;
        v4 = *v2;
        if ( v4 )
        {
            sub_813BD90(v4, v3[3] - 1, v3[4], v3[5]);
            sub_813BD90(*v3, v3[3] + 1, v3[4], v3[5]);
            sub_813BD90(*v3, v3[3], v3[4] - 1, v3[5]);
            sub_813BD90(*v3, v3[3], v3[4] + 1, v3[5]);
            sub_813BE38(*v3);
        }
        ++v1;
    }
    while ( v1 < 49 );
    return v0;
}


// 0x813bd90
_BYTE *__fastcall sub_813BD90(int a1, int a2, int a3, int a4)
{
    int v4; // r6
    _BYTE *v5; // r8
    int v6; // r10
    int v7; // ST04_4
    int v8; // ST08_4
    char *v9; // r7
    int v10; // r1
    int v11; // r2
    int v12; // r6
    int v13; // r5
    signed int v14; // r3
    int v15; // r0
    int v16; // r1
    char *v17; // r4
    char v18; // r0
    int v19; // r1
    int v21; // [sp+Ch] [bp-28h]
    _BYTE *v22; // [sp+10h] [bp-24h]
    int v23; // [sp+14h] [bp-20h]
    int v24; // [sp+18h] [bp-1Ch]
    int v25; // [sp+1Ch] [bp-18h]

    v7 = a2;
    v8 = a3;
    v21 = v4 + 1;
    v22 = v5;
    v9 = sub_813B7A0(a1, a4);
    v10 = v7 - 3;
    v11 = v8 - 3;
    v12 = *(v6 + oToolkit_Unk200414c_Ptr) + 7 * (v8 - 3) + v7 - 3;
    v13 = 0;
    do
    {
        v14 = 0;
        v24 = v10;
        v25 = v13;
        if ( v11 >= 0 && v11 < 7 )
        {
            do
            {
                if ( v10 >= 0 && v10 < 7 )
                {
                    if ( v9[v14] )
                    {
                        v15 = *(v12 + v14);
                        if ( *(v12 + v14) )
                        {
                            v23 = v10;
                            v16 = 0;
                            v17 = byte_2006C50;
                            if ( v21 != v15 )
                            {
                                while ( *v17 != v15 )
                                {
                                    ++v17;
                                    if ( ++v16 >= 49 )
                                    {
                                        sub_813C624(v15, v23, v11);
                                        if ( !v19 )
                                            *v22++ = v18;
                                        break;
                                    }
                                }
                            }
                            v10 = v23;
                        }
                    }
                }
                ++v10;
                ++v14;
            }
            while ( v14 < 7 );
        }
        v10 = v24;
        v12 += 7;
        v9 += 7;
        ++v11;
        ++v13;
    }
    while ( v25 + 1 < 7 );
    return v22;
}


// 0x813be38
int __fastcall sub_813BE38(int a1)
{
    int v1; // r6
    int v2; // r10
    int v3; // r4
    signed int v4; // r6
    int result; // r0
    int *v6; // r0
    int *v7; // r7
    int v8; // [sp+0h] [bp-18h]

    v8 = v1;
    v3 = *(sub_813B780(a1) + 3);
    v4 = 0;
    do
    {
        result = byte_2006C50[v4];
        if ( byte_2006C50[v4] )
        {
            if ( --result != v8 )
            {
                result = *sub_813B9FC(result);
                if ( result )
                {
                    v6 = sub_813B780(result);
                    v7 = v6;
                    result = *(v6 + 3);
                    if ( result == v3 )
                    {
                        result = *(v2 + oToolkit_Unk200431c_Ptr);
                        ++*(result + *(v7 + 4));
                    }
                }
            }
        }
        ++v4;
    }
    while ( v4 < 49 );
    return result;
}


// 0x813be8c
int sub_813BE8C()
{
    int v0; // r6
    int result; // r0

    v0 = 0;
    do
        result = *sub_813B9FC(v0++);
    while ( v0 < 49 );
    return result;
}


// 0x813bea8
int sub_813BEA8()
{
    int v0; // r10
    int v1; // r6
    signed int v2; // r5
    int v3; // r0
    int v4; // r0
    int v5; // r1
    int result; // r0

    ByteFill(byte_2006D30, 49, 0xFFu);
    v1 = 0;
    v2 = 0;
    do
    {
        v3 = *sub_813B9FC(v1);
        if ( v3 )
        {
            v4 = *(sub_813B780(v3) + 3);
            v5 = 0;
            while ( byte_2006D30[v5] != v4 )
            {
                if ( ++v5 >= 49 )
                {
                    byte_2006D30[v2++] = v4;
                    break;
                }
            }
        }
        ++v1;
    }
    while ( v1 < 49 );
    result = *(v0 + oToolkit_Unk200431c_Ptr);
    if ( v2 > 4 )
    {
        if ( v2 == 5 )
            ++*(result + 11);
        else
            *(result + 12) += 2;
    }
    return result;
}


// 0x813bf0c
signed int __fastcall sub_813BF0C(int a1)
{
    int v1; // r10
    signed int result; // r0

    result = *(*(v1 + oToolkit_Unk200431c_Ptr) + a1);
    if ( result > 3 )
        result = 3;
    return result;
}


// 0x813bf1c
signed int sub_813BF1C()
{
    signed int v0; // r6
    char v1; // zf

    v0 = 1;
    TestEventFlagFromImmediate(23, 32);
    if ( v1 )
        v0 = 0;
    return v0;
}


// 0x813bf60
signed int __fastcall sub_813BF60(int a1, int a2, int a3)
{
    int v3; // ST04_4
    int v4; // ST08_4
    char *v5; // r7
    int v6; // r1
    int v7; // r2
    int v8; // r5
    int v9; // r3
    int v11; // [sp-4h] [bp-20h]

    v3 = a2;
    v4 = a3;
    v5 = sub_813B790(a1);
    v6 = v3 - 3;
    v7 = v4 - 3;
    v8 = 0;
    while ( 1 )
    {
        v9 = 0;
        v11 = v6;
        if ( v7 >= 0 && v7 < 7 )
            break;
LABEL_10:
        v6 = v11;
        v5 += 7;
        ++v7;
        if ( ++v8 >= 7 )
            return 0;
    }
    while ( v6 < 0 || v6 >= 7 || !v5[v9] || v7 != 3 )
    {
        ++v6;
        if ( ++v9 >= 7 )
            goto LABEL_10;
    }
    return 1;
}


// 0x813bfb8
signed int __fastcall sub_813BFB8(int a1, int a2, int a3)
{
    int v3; // ST04_4
    int v4; // ST08_4
    char *v5; // r7
    int v6; // r1
    int v7; // r2
    int v8; // r5
    int v9; // r3
    int v11; // [sp-4h] [bp-20h]

    v3 = a2;
    v4 = a3;
    v5 = sub_813B790(a1);
    v6 = v3 - 3;
    v7 = v4 - 3;
    v8 = 0;
    while ( 1 )
    {
        v9 = 0;
        v11 = v6;
        if ( v7 >= 0 && v7 < 7 )
            break;
LABEL_13:
        v6 = v11;
        v5 += 7;
        ++v7;
        if ( ++v8 >= 7 )
            return 0;
    }
    while ( v6 < 0 || v6 >= 7 || !v5[v9] || v6 >= 1 && v6 <= 4 && v7 >= 1 && v7 <= 4 )
    {
        ++v6;
        if ( ++v9 >= 7 )
            goto LABEL_13;
    }
    return 1;
}


// 0x813c020
int sub_813C020()
{
    int v0; // r10

    return ZeroFillByByte(*(v0 + oToolkit_Unk200431c_Ptr), 16);
}


// 0x813c030
// () -> void
void __cdecl sub_813C030()
{
    int v0; // r5
    signed int v1; // r6
    char *v2; // r7
    signed int v3; // r4

    v0 = 148;
    v1 = 1;
    do
    {
        v2 = &StructArr_813944C[16 * v1] + 3;
        v3 = 0;
        do
        {
            if ( v2[v3] )
                sub_803D108(v0, v2[v3], 9);
            v3 += 16;
        }
        while ( v3 < 64 );
        ++v1;
        v0 += 4;
    }
    while ( v0 < &dword_14C );
}


// 0x813c06c
int __fastcall sub_813C06C(int a1, int a2, int a3)
{
    int v3; // r10
    int v4; // r2
    char *v5; // r5
    int v6; // r6
    signed int v7; // r4
    int result; // r0
    unsigned __int16 *v9; // r0
    int *v10; // r7
    int v11; // r1
    int v12; // r1
    signed __int16 v13; // r1
    int v14; // ST00_4
    int v15; // r1
    int v16; // r1
    _WORD *v17; // r2
    int v18; // [sp-8h] [bp-28h]
    int v19; // [sp-4h] [bp-24h]
    signed __int16 v20; // [sp-4h] [bp-24h]
    __int16 v21; // [sp-4h] [bp-24h]
    char *v22; // [sp+0h] [bp-20h]
    int v23; // [sp+4h] [bp-1Ch]
    int v24; // [sp+8h] [bp-18h]

    v23 = a3;
    v4 = 14 * a3;
    v5 = &byte_813C188[v4];
    v22 = &byte_813C1A4[v4];
    v24 = sub_813B9B4(a1, a2);
    v6 = *(v3 + oToolkit_Unk200414c_Ptr);
    v7 = 0;
    do
    {
        result = *(v6 + v7);
        if ( result == v24 && *(v6 + v7) )
        {
            v9 = sub_813B9FC(result - 1);
            v10 = sub_813B780(*v9);
            v19 = 2 * *(v10 + 3);
            sub_813C4A8();
            if ( *(v11 + v7) )
            {
                v12 = *&v5[v19];
                if ( v12 == 16706 || v12 == 20964 )
                {
                    v13 = 28437;
                    if ( !v23 )
                        v13 = 23185;
                }
                else
                {
                    v13 = 21038;
                    if ( !v23 )
                        v13 = 13763;
                }
                v14 = v19;
                v20 = v13;
                sub_813C4C8();
                result = v14;
                if ( *(v15 + v7) )
                    word_30019E0[*(v15 + v7)] = v20;
            }
            else
            {
                v18 = v19;
                v21 = *&v5[v19];
                sub_813C4C8();
                result = v18;
                if ( *(v16 + v7) )
                {
                    v17 = &word_30019E0[*(v16 + v7)];
                    *v17 = v21;
                    v17[1] = v21;
                    if ( *(v10 + 1) )
                        v17[1] = *&v22[v18];
                }
            }
        }
        ++v7;
    }
    while ( v7 < 49 );
    return result;
}


// 0x813c1c0
int __fastcall sub_813C1C0(int a1)
{
    int v1; // r10
    int v2; // r0
    char *v3; // r5
    int v4; // r6
    signed int v5; // r4
    int v6; // r0
    int *v7; // r7
    int *v8; // r0
    int v9; // r1
    int v10; // r1
    signed int v11; // r1
    int v12; // r1
    int result; // r0
    int v14; // r1
    _WORD *v15; // r2
    unsigned __int64 v16; // [sp-8h] [bp-24h]
    int v17; // [sp-8h] [bp-24h]
    int v18; // [sp-4h] [bp-20h]
    __int16 v19; // [sp-4h] [bp-20h]
    char *v20; // [sp+0h] [bp-1Ch]
    int v21; // [sp+4h] [bp-18h]

    v21 = a1;
    v2 = 14 * a1;
    v3 = &byte_813C2EC[v2];
    v20 = &byte_813C308[v2];
    v4 = *(v1 + oToolkit_Unk200414c_Ptr);
    v5 = 0;
    do
    {
        v6 = *(v4 + v5);
        if ( *(v4 + v5) )
        {
            v8 = sub_813B9FC(v6 - 1);
            v7 = v8;
            v6 = *v8;
            if ( v6 )
            {
                v7 = sub_813B780(v6);
                v6 = *(v7 + 3);
            }
        }
        else
        {
            v7 = &byte_813C2A0;
        }
        v18 = 2 * v6;
        sub_813C4A8();
        if ( *(v9 + v5) )
        {
            v10 = *&v3[v18];
            if ( v10 == 16706 || v10 == 20964 )
            {
                v11 = 28437;
                if ( !v21 )
                    v11 = 23185;
            }
            else
            {
                v11 = 16810;
                if ( !v21 )
                    v11 = 14696;
            }
            v16 = __PAIR__(v11, v18);
            sub_813C4C8();
            result = v16;
            if ( *(v12 + v5) )
                word_30019E0[*(v12 + v5)] = WORD2(v16);
        }
        else
        {
            v17 = v18;
            v19 = *&v3[v18];
            sub_813C4C8();
            result = v17;
            if ( *(v14 + v5) )
            {
                v15 = &word_30019E0[*(v14 + v5)];
                *v15 = v19;
                v15[1] = v19;
                if ( *(v7 + 1) )
                    v15[1] = *&v20[v17];
            }
        }
        ++v5;
    }
    while ( v5 < 49 );
    return result;
}


// 0x813c324
int sub_813C324()
{
    return ZeroFillByByte(&unk_2000090, 8);
}


// 0x813c334
int __fastcall sub_813C334(unsigned int a1, int a2)
{
    int v2; // r10
    int v3; // r6
    int v4; // r2
    int v5; // r1
    unsigned int v6; // r2
    char v7; // zf
    int v8; // r1
    int v9; // r2

    v3 = a2;
    if ( *(*(v2 + oToolkit_JoypadPtr) + 2) && a2 != 10 )
    {
        v4 = byte_813B522[10 * (a1 >> 2) + a2];
        if ( v4 != 255 && *(*(v2 + oToolkit_JoypadPtr) + 2) & *&byte_813C3A4[v4] )
        {
            v3 = a2 + 1;
            if ( a2 == 9 )
            {
                TestEventFlag(4 * (a1 >> 2) + 9824);
                if ( v7 )
                    SetEventFlagRange(v6, v5, 4);
                else
                    ClearEventFlagRange(v6, v5, 4);
                PlaySoundEffect(139, v8, v9);
            }
        }
        else
        {
            v3 = 0;
        }
    }
    return v3;
}


// 0x813c3ac
int sub_813C3AC()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char v5; // zf
    int result; // r0
    __int16 v7; // r0
    int v8; // r0
    __int16 v9; // r7
    int v10; // r0
    int v11; // r4
    int v12; // r0
    int v13; // r4
    int v14; // r0
    int v15; // r0

    if ( !getPETNaviSelect() )
    {
        sub_813C458();
        v1 = TestEventFlagFromImmediate(1, 99);
        if ( !v5 )
            sub_8121154(v1, v2, v3, v4);
    }
    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
    {
        v11 = sub_80137FE(0);
        if ( sub_80137FE(0) > v11 )
            sub_80137E6(0, 64, v11);
        v12 = getPETNaviSelect();
        v13 = sub_80137FE(v12);
        v14 = getPETNaviSelect();
        result = sub_80137FE(v14);
        if ( result > v13 )
        {
            v15 = getPETNaviSelect();
            result = sub_80137E6(v15, 64, v13);
        }
    }
    else
    {
        result = TestEventFlagFromImmediate(23, 29);
        if ( !v5 )
        {
            v7 = sub_80137FE(0);
            sub_80137E6(0, 64, v7);
            v8 = getPETNaviSelect();
            v9 = sub_80137FE(v8);
            v10 = getPETNaviSelect();
            result = sub_80137E6(v10, 64, v9);
        }
    }
    return result;
}


// 0x813c458
int sub_813C458()
{
    int v0; // r4

    sub_813BBD4();
    sub_8136C24();
    v0 = getPETNaviSelect();
    sub_80010BE(0);
    sub_813C678();
    ClearEventFlagFromImmediate(23, 13);
    sub_813C684();
    sub_813CBCC();
    sub_80010BE(v0);
    return sub_803CE44();
}


// 0x813c490
signed int sub_813C490()
{
    signed int v0; // r4

    v0 = 0;
    if ( sub_80137B6(0) == 1 )
        v0 = 1;
    return v0;
}


// 0x813c4a8
int sub_813C4A8()
{
    int result; // r0
    void *v1; // r1

    result = sub_803CE28(113);
    v1 = pt_813C4BC[result];
    return result * 4;
}


// 0x813c4c8
int sub_813C4C8()
{
    int result; // r0
    char (*v1)[52]; // r1

    result = sub_803CE28(113);
    v1 = off_813C4DC[result];
    return result * 4;
}


// 0x813c584
int __fastcall sub_813C584(int a1)
{
    int v1; // r7
    int v2; // r5
    int v3; // r6
    int v4; // r0
    int v5; // r0
    int v6; // r7
    signed int v7; // r6
    int v8; // r4
    int v9; // r0
    int i; // r4
    int result; // r0
    unsigned __int16 *v12; // r0
    int v13; // r1
    int v14; // [sp+0h] [bp-18h]

    v14 = a1;
    ZeroFillByByte(byte_2006D68, 49);
    ZeroFillByByte(byte_2006DA0, 49);
    v1 = 0;
    v2 = 0;
    do
    {
        v3 = 0;
        do
        {
            v4 = sub_803CE28(113);
            if ( (*sub_813B9E0(v4))[15 * (v1 + 5) + 5 + v3] == 3 )
            {
                v5 = sub_813B9B4(v3, v1);
                if ( v5 )
                    byte_2006D68[v2++] = v5;
            }
            ++v3;
        }
        while ( v3 < 7 );
        ++v1;
    }
    while ( v1 < 7 );
    v6 = 0;
    v7 = 1;
    do
    {
        v8 = 0;
        while ( 1 )
        {
            v9 = byte_2006D68[v8];
            if ( v9 == v7 )
                break;
            if ( ++v8 >= 49 )
                goto LABEL_13;
        }
        byte_2006DA0[v6++] = v9;
LABEL_13:
        ++v7;
    }
    while ( v7 < 49 );
    for ( i = 0; ; ++i )
    {
        result = byte_2006DA0[i];
        if ( !byte_2006DA0[i] )
            break;
        v12 = sub_813B9FC(result - 1);
        v13 = *(sub_813B780(*v12) + 4);
        ++*(v14 + v13);
    }
    return result;
}


// 0x813c624
void __fastcall sub_813C624(int a1, int a2, int a3)
{
    int v3; // r1

    v3 = byte_813C640[7 * a3 + a2];
}


// 0x813c678
int sub_813C678()
{
    int v0; // r10
    int result; // r0

    result = 0;
    **(v0 + oToolkit_Unk2004334_Ptr) = 0;
    return result;
}


// 0x813c684
int sub_813C684()
{
    int v0; // r7
    signed int v1; // r6
    _WORD *v2; // r0
    unsigned int v3; // r4
    int *v4; // r0
    int v5; // r1
    int v6; // r2
    unsigned __int8 v7; // vf
    signed int v8; // r6
    _WORD *v9; // r0
    signed int v10; // r6
    _WORD *v11; // r0

    ZeroFillByByte(byte_2006DD8, 8);
    v1 = 6;
    sub_813BD0C();
    do
    {
        if ( *(v0 + v1) )
        {
            v2 = sub_813B9FC(*(v0 + v1) - 1);
            v3 = *v2;
            if ( *v2 )
            {
                v4 = sub_813B780(*v2);
                v5 = *v4;
                if ( *v4 )
                {
                    byte_2006DD8[v1] = v5;
                    v6 = v1 + 1;
                    while ( v5 != byte_2006DD8[v6] )
                    {
                        if ( ++v6 >= 8 )
                            goto LABEL_8;
                    }
                }
                else
                {
LABEL_8:
                    (*(&navicust_jt_NCPs + (v3 >> 2)))();
                }
            }
        }
        v7 = __OFSUB__(v1--, 1);
    }
    while ( !((v1 < 0) ^ v7) );
    v8 = 0;
    sub_813BD10();
    do
    {
        if ( *(v0 + v8) )
        {
            v9 = sub_813B9FC(*(v0 + v8) - 1);
            if ( *v9 )
                (*(&navicust_jt_NCPs + (*v9 >> 2)))();
        }
        ++v8;
    }
    while ( v8 < 49 );
    v10 = 0;
    sub_813BD14();
    do
    {
        if ( *(v0 + v10) )
        {
            v11 = sub_813B9FC(*(v0 + v10) - 1);
            if ( *v11 )
                (*(&navicust_jt_NCPs + (*v11 >> 2)))();
        }
        ++v10;
    }
    while ( v10 < 49 );
    sub_803CED4();
    return sub_813CEA0();
}


// 0x813c808
void sub_813C808()
{
    ;
}


// 0x813c80c
int navicust_NCP_SuperArmor()
{
    return navicust_801379E(0, 35, 1);
}


// 0x813c81c
int navicust_NCP_Custom1()
{
    int v0; // r0
    char v1; // r2

    v0 = sub_80137B6(0);
    v1 = v0 + 1;
    if ( v0 + 1 > 8 )
        v1 = 8;
    return navicust_801379E(0, 10, v1);
}


// 0x813c838
int navicust_NCP_Custom2()
{
    int v0; // r0
    char v1; // r2

    v0 = sub_80137B6(0);
    v1 = v0 + 2;
    if ( v0 + 2 > 8 )
        v1 = 8;
    return navicust_801379E(0, 10, v1);
}


// 0x813c854
int navicust_NCP_MegFldr1()
{
    int v0; // r0
    char v1; // r2

    v0 = sub_80137B6(0);
    v1 = v0 + 1;
    if ( v0 + 1 > 10 )
        v1 = 10;
    return navicust_801379E(0, 11, v1);
}


// 0x813c870
int navicust_NCP_MegFldr2()
{
    int v0; // r0
    char v1; // r2

    v0 = sub_80137B6(0);
    v1 = v0 + 2;
    if ( v0 + 2 > 10 )
        v1 = 10;
    return navicust_801379E(0, 11, v1);
}


// 0x813c88c
int navicust_GigFldr1()
{
    int v0; // r0
    char v1; // r2

    v0 = sub_80137B6(0);
    v1 = v0 + 1;
    if ( v0 + 1 > 10 )
        v1 = 10;
    return navicust_801379E(0, 12, v1);
}


// 0x813c8a8
int navicust_NCP_FstBarr()
{
    return navicust_801379E(0, 6, 1);
}


// 0x813c8b8
int navicust_NCP_Shield()
{
    return navicust_801379E(0, 7, 59);
}


// 0x813c8c8
int navicust_NCP_Reflect()
{
    return navicust_801379E(0, 7, 139);
}


// 0x813c8d8
int navicust_NCP_AntiDmg()
{
    return navicust_801379E(0, 7, 61);
}


// 0x813c8e8
int navicust_NCP_FlotShoe()
{
    return navicust_801379E(0, 27, 1);
}


// 0x813c8f8
int navicust_NCP_AirShoes()
{
    return navicust_801379E(0, 28, 1);
}


// 0x813c908
int navicust_NCP_UnderSht()
{
    return navicust_801379E(0, 29, 1);
}


// 0x813c918
int navicust_NCP_ChpShufl()
{
    return navicust_801379E(0, 96, 1);
}


// 0x813c928
int navicust_NCP_NumbrOpn()
{
    return navicust_801379E(0, 97, 1);
}


// 0x813c938
int navicust_NCP_SneakRun()
{
    return navicust_801379E(0, 30, 1);
}


// 0x813c948
int navicust_NCP_OilBody()
{
    return navicust_801379E(0, 39, 2);
}


// 0x813c95c
int navicust_NCP_Fish()
{
    return navicust_801379E(0, 39, 4);
}


// 0x813c970
int navicust_NCP_Battery()
{
    return navicust_801379E(0, 39, 8);
}


// 0x813c984
int navicust_NCP_Jungle()
{
    return navicust_801379E(0, 39, 16);
}


// 0x813c998
int navicust_NCP_Collect()
{
    char v0; // r0

    v0 = sub_80137B6(0);
    return navicust_801379E(0, 38, v0 | 2);
}


// 0x813c9b0
int navicust_NCP_Millions()
{
    return navicust_801379E(0, 51, 1);
}


// 0x813c9c0
int navicust_NCP_Humor()
{
    return navicust_801379E(0, 37, 1);
}


// 0x813c9d0
int navicust_NCP_Poem()
{
    return navicust_801379E(0, 95, 1);
}


// 0x813c9e0
int navicust_NCP_SlipRunr()
{
    return navicust_801379E(0, 53, 1);
}


// 0x813c9f0
int navicust_NCP_AutoHeal()
{
    return navicust_801379E(0, 54, 1);
}


// 0x813ca00
int navicust_NCP_BustPack()
{
    int v0; // r0
    char v1; // r2
    int v2; // r0
    char v3; // r2
    int v4; // r0
    char v5; // r2

    v0 = sub_80137B6(0);
    v1 = v0 + 3;
    if ( v0 + 3 > 4 )
        v1 = 4;
    navicust_801379E(0, 1, v1);
    v2 = sub_80137B6(0);
    v3 = v2 + 3;
    if ( v2 + 3 > 4 )
        v3 = 4;
    navicust_801379E(0, 2, v3);
    v4 = sub_80137B6(0);
    v5 = v4 + 3;
    if ( v4 + 3 > 4 )
        v5 = 4;
    return navicust_801379E(0, 3, v5);
}


// 0x813ca4c
int navicust_NCP_BodyPack()
{
    navicust_NCP_SuperArmor();
    navicust_NCP_FlotShoe();
    navicust_NCP_AirShoes();
    return navicust_NCP_UnderSht();
}


// 0x813ca60
int navicust_NCP_FldrPak1()
{
    navicust_NCP_MegFldr1();
    return navicust_NCP_Custom1();
}


// 0x813ca6c
int navicust_NCP_FldrPak2()
{
    navicust_NCP_MegFldr2();
    return navicust_NCP_Custom2();
}


// 0x813ca78
int navicust_NCP_BugStop()
{
    return navicust_801379E(0, 31, 1);
}


// 0x813ca88
int navicust_NCP_Rush()
{
    char v0; // r0

    v0 = sub_80137B6(0);
    return navicust_801379E(0, 13, v0 | 1);
}


// 0x813caa4
int navicust_NCP_Beat()
{
    char v0; // r0

    v0 = sub_80137B6(0);
    return navicust_801379E(0, 13, v0 | 2);
}


// 0x813cac0
int navicust_NCP_Tango()
{
    char v0; // r0

    v0 = sub_80137B6(0);
    return navicust_801379E(0, 13, v0 | 4);
}


// 0x813cadc
int navicust_NCP_AttackPlus1()
{
    int v0; // r0
    char v1; // r2

    v0 = sub_80137B6(0);
    v1 = v0 + 1;
    if ( v0 + 1 > 4 )
        v1 = 4;
    return navicust_801379E(0, 1, v1);
}


// 0x813caf8
int navicust_NCP_SpeedPlus1()
{
    int v0; // r0
    char v1; // r2

    v0 = sub_80137B6(0);
    v1 = v0 + 1;
    if ( v0 + 1 > 4 )
        v1 = 4;
    return navicust_801379E(0, 2, v1);
}


// 0x813cb14
int navicust_NCP_ChargePlus1()
{
    int v0; // r0
    char v1; // r2

    v0 = sub_80137B6(0);
    v1 = v0 + 1;
    if ( v0 + 1 > 4 )
        v1 = 4;
    return navicust_801379E(0, 3, v1);
}


// 0x813cb30
int navicust_NCP_AttckMAX()
{
    return navicust_801379E(0, 1, 4);
}


// 0x813cb40
int navicust_NCP_SpeedMAX()
{
    return navicust_801379E(0, 2, 4);
}


// 0x813cb50
int navicust_NCP_ChargMAX()
{
    return navicust_801379E(0, 3, 4);
}


// 0x813cb60
_WORD *navicust_NCP_HPPlus50()
{
    int v0; // r10
    _WORD *result; // r0

    result = *(v0 + oToolkit_Unk2004334_Ptr);
    *result += 50;
    return result;
}


// 0x813cb70
_WORD *navicust_NCP_HPPlus100()
{
    int v0; // r10
    _WORD *result; // r0

    result = *(v0 + oToolkit_Unk2004334_Ptr);
    *result += 100;
    return result;
}


// 0x813cb80
_WORD *navicust_NCP_HPPlus200()
{
    int v0; // r10
    _WORD *result; // r0

    result = *(v0 + oToolkit_Unk2004334_Ptr);
    *result += 200;
    return result;
}


// 0x813cb90
_WORD *navicust_NCP_HPPlus300()
{
    int v0; // r10
    _WORD *result; // r0

    result = *(v0 + oToolkit_Unk2004334_Ptr);
    *result = &byte_12C[*result];
    return result;
}


// 0x813cba4
_WORD *navicust_NCP_HPPlus400()
{
    int v0; // r10
    _WORD *result; // r0

    result = *(v0 + oToolkit_Unk2004334_Ptr);
    *result = &byte_190[*result];
    return result;
}


// 0x813cbb8
_WORD *navicust_NCP_HPPlus500()
{
    int v0; // r10
    _WORD *result; // r0

    result = *(v0 + oToolkit_Unk2004334_Ptr);
    *result = &byte_1F4[*result];
    return result;
}


// 0x813cbcc
int sub_813CBCC()
{
    int result; // r0
    int v1; // r6
    void (*v2)(void); // r1

    ClearEventFlagFromImmediate(23, 32);
    if ( sub_813C490() == 1 )
        return sub_813C020();
    v1 = 1;
    do
    {
        result = sub_813BF0C(v1);
        if ( result )
        {
            result = 4 * result + 16 * v1;
            v2 = *&byte_813CC18[result];
            if ( v2 )
            {
                v2();
                result = SetEventFlagFromImmediate(23, 32);
            }
        }
        ++v1;
    }
    while ( v1 < 16 );
    return result;
}


// 0x813cce8
void sub_813CCE8()
{
    ;
}


// 0x813ccec
int sub_813CCEC()
{
    return navicust_801379E(0, 49, 1);
}


// 0x813ccfc
void sub_813CCFC()
{
    ;
}


// 0x813cd00
int sub_813CD00()
{
    return navicust_801379E(0, 36, 1);
}


// 0x813cd10
void sub_813CD10()
{
    ;
}


// 0x813cd14
int sub_813CD14()
{
    int v0; // r0
    int v1; // r1

    v0 = sub_813CD3E();
    return sub_813CD4C(v0, v1, 2);
}


// 0x813cd22
int sub_813CD22()
{
    int v0; // r0
    int v1; // r1

    v0 = sub_813CD3E();
    return sub_813CD4C(v0, v1, 3);
}


// 0x813cd30
int sub_813CD30()
{
    int v0; // r0
    int v1; // r1

    v0 = sub_813CD3E();
    return sub_813CD4C(v0, v1, 4);
}


// 0x813cd3e
int sub_813CD3E()
{
    return navicust_801379E(0, 18, 3);
}


// 0x813cd4c
int __fastcall sub_813CD4C(int a1, int a2, char a3)
{
    return navicust_801379E(0, 19, a3);
}


// 0x813cd58
void sub_813CD58()
{
    ;
}


// 0x813cd5c
int __fastcall sub_813CD5C(int a1, int a2)
{
    return sub_813CD7A(a1, a2, 4);
}


// 0x813cd66
int __fastcall sub_813CD66(int a1, int a2)
{
    return sub_813CD7A(a1, a2, 3);
}


// 0x813cd70
int __fastcall sub_813CD70(int a1, int a2)
{
    return sub_813CD7A(a1, a2, 2);
}


// 0x813cd7a
int __fastcall sub_813CD7A(int a1, int a2, char a3)
{
    return navicust_801379E(0, 99, a3);
}


// 0x813cd88
void sub_813CD88()
{
    ;
}


// 0x813cd8c
int sub_813CD8C()
{
    return navicust_801379E(0, 40, 1);
}


// 0x813cd9c
void sub_813CD9C()
{
    ;
}


// 0x813cda0
int sub_813CDA0()
{
    return navicust_801379E(0, 38, 1);
}


// 0x813cdb0
void sub_813CDB0()
{
    ;
}


// 0x813cdb4
int sub_813CDB4()
{
    return sub_813CDD8();
}


// 0x813cdc0
int sub_813CDC0()
{
    return sub_813CDD8();
}


// 0x813cdcc
int sub_813CDCC()
{
    return sub_813CDD8();
}


// 0x813cdd8
int sub_813CDD8()
{
    char v0; // r4
    char v1; // r6

    navicust_801379E(0, 20, v0);
    return navicust_801379E(0, 21, v1);
}


// 0x813cdf0
void sub_813CDF0()
{
    ;
}


// 0x813cdf4
int sub_813CDF4()
{
    return navicust_801379E(0, 13, 255);
}


// 0x813ce04
void sub_813CE04()
{
    ;
}


// 0x813ce08
int sub_813CE08()
{
    return sub_813CE26();
}


// 0x813ce12
int sub_813CE12()
{
    return sub_813CE26();
}


// 0x813ce1c
int sub_813CE1C()
{
    return sub_813CE26();
}


// 0x813ce26
int sub_813CE26()
{
    char v0; // r4
    char v1; // r0

    v1 = sub_80137B6(0);
    navicust_801379E(0, 24, v1 + v0);
    return navicust_801379E(0, 22, 3);
}


// 0x813ce48
void sub_813CE48()
{
    ;
}


// 0x813ce4c
int __fastcall sub_813CE4C(int a1, int a2)
{
    return sub_813CE6A(a1, a2, 3);
}


// 0x813ce56
int __fastcall sub_813CE56(int a1, int a2)
{
    return sub_813CE6A(a1, a2, 2);
}


// 0x813ce60
int __fastcall sub_813CE60(int a1, int a2)
{
    return sub_813CE6A(a1, a2, 1);
}


// 0x813ce6a
int __fastcall sub_813CE6A(int a1, int a2, char a3)
{
    return navicust_801379E(0, 98, a3);
}


// 0x813ce78
void sub_813CE78()
{
    ;
}


// 0x813ce7c
int sub_813CE7C()
{
    return navicust_801379E(0, 26, 9);
}


// 0x813ce8c
void sub_813CE8C()
{
    ;
}


// 0x813ce90
int sub_813CE90()
{
    return navicust_801379E(0, 26, 10);
}


// 0x813cea0
// () -> void
int sub_813CEA0()
{
    int v0; // r10
    int v1; // r7
    int v2; // r0
    int v3; // r6
    int result; // r0
    int v5; // r0
    int v6; // [sp+0h] [bp-18h]

    v1 = sub_80137B6(0);
    v2 = sub_80137B6(0);
    v6 = v2;
    v3 = v2 + 46;
    result = sub_80137B6(0);
    if ( result != 255 )
    {
        v5 = split9BitsFromBitfield_8021AE0(*(2 * result + 60 * v6 + *(v0 + oToolkit_S_Chip_2002178_Ptr)));
        result = *(getChip8021DA8(v5) + 8);
        if ( result > v1 )
            result = navicust_801379E(0, v3, 255);
    }
    return result;
}


// 0x813cef8
int __fastcall sub_813CEF8(char a1)
{
    char v1; // r4
    int v2; // r0
    int v3; // r1

    v1 = a1;
    v2 = navicust_801379E(0, 18, 3);
    return sub_813CD4C(v2, v3, v1);
}


// 0x813cf10
int sub_813CF10()
{
    return sub_813CDD8();
}


// 0x813cf1c
int __fastcall sub_813CF1C(char a1)
{
    return navicust_801379E(0, 22, a1);
}


// 0x813cf2c
int __fastcall sub_813CF2C(__int16 a1)
{
    return sub_80137E6(0, 84, a1);
}


// 0x813cf3c
int sub_813CF3C()
{
    return navicust_801379E(0, 36, 1);
}


// 0x813cf4c
int __fastcall sub_813CF4C(int a1)
{
    int v1; // r4
    int v2; // r3
    char v3; // r2

    v1 = a1;
    v2 = sub_80137B6(0);
    v3 = v2 + v1;
    if ( v2 + v1 > 7 )
        v3 = 7;
    return navicust_801379E(0, 24, v3);
}


// 0x813cf6c
int __fastcall sub_813CF6C(int a1)
{
    int v1; // r4
    int v2; // r3
    char v3; // r2

    v1 = a1;
    v2 = sub_80137B6(0);
    v3 = v2 + v1;
    if ( v2 + v1 > 7 )
        v3 = 7;
    return navicust_801379E(0, 25, v3);
}


// 0x813cf8c
int __fastcall sub_813CF8C(char a1)
{
    return navicust_801379E(0, 26, a1);
}


// 0x813d41c
signed int __fastcall sub_813D41C(int a1)
{
    char *v1; // r7
    int v2; // r5
    signed int v3; // r2
    char v4; // zf
    int v5; // r1
    int v6; // r2
    int v7; // r3
    signed int result; // r0

    v1 = &byte_813CF9C;
    v2 = 0;
LABEL_2:
    if ( *v1 == 255 )
        return 0;
    v3 = 0;
    do
    {
        if ( v1[v3 + 4] != byte_813D410[*(a1 + v3)] )
        {
            ++v2;
            v1 += 12;
            goto LABEL_2;
        }
        ++v3;
    }
    while ( v3 < 8 );
    TestEventFlag(v2 + 9760);
    if ( !v4 )
        return 2;
    SetEventFlag(v2 + 9760);
    result = 1;
    v5 = *v1;
    v6 = *(v1 + 1);
    v7 = v1[1];
    return result;
}


// 0x813d48c
signed int __fastcall sub_813D48C(int a1)
{
    int v1; // r2
    int v2; // r3
    unsigned __int8 v3; // vf
    int v4; // r2
    signed int v5; // r7
    char (*v6)[108]; // r4
    char v7; // r0
    int v9; // [sp+0h] [bp-18h]

    v9 = a1;
    v1 = sub_802D15E();
    v2 = *(&dword_813D4FC + v9);
    v3 = __OFSUB__(v1, v2);
    v4 = v1 - v2;
    if ( (v4 < 0) ^ v3 )
        return 0;
    sub_802D158(v4);
    v5 = 1;
    v6 = off_813D4E4[v9];
    GetRNG2();
    (*(&off_813D4D4 + byte_813D500[v7 & 0xF]))();
    return v5;
}


// 0x813d510
__int64 sub_813D510()
{
    int v0; // r4
    char v1; // r0
    int v2; // r6
    int i; // r3
    unsigned __int8 *v4; // r5
    int v5; // r0
    unsigned __int8 *v6; // r7
    char v7; // r0
    int v8; // r6
    __int64 v10; // [sp-10h] [bp-24h]

    GetRNG2();
    v2 = v1 & 0xF;
    for ( i = 0; ; ++i )
    {
        v4 = (v0 + 12 * i);
        v5 = *v4;
        if ( v5 == 255 )
            break;
        if ( !*v4 )
        {
            v5 = v4[4];
            if ( v5 > v2 )
                break;
        }
    }
    LODWORD(v10) = v5;
    HIDWORD(v10) = *v4;
    v6 = getChip8021DA8(*(v4 + 1));
    GetRNG2();
    v8 = v7 & 3;
    while ( v6[v8] == 255 )
    {
        if ( ++v8 > 0 )
            v8 = 0;
    }
    return v10;
}


// 0x813d568
int sub_813D568()
{
    int v0; // r4
    char v1; // r0
    int v2; // r6
    int i; // r3
    unsigned __int8 *v4; // r5
    int result; // r0
    int v6; // r1
    int v7; // r2

    GetRNG2();
    v2 = v1 & 0xF;
    for ( i = 0; ; ++i )
    {
        v4 = (v0 + 12 * i);
        result = *v4;
        if ( result == 255 )
            break;
        if ( result == 1 )
        {
            result = v4[4];
            if ( result > v2 )
                break;
        }
    }
    v6 = *v4;
    v7 = *(v4 + 1);
    return result;
}


// 0x813d598
int sub_813D598()
{
    int v0; // r4
    char v1; // r0
    int v2; // r6
    int i; // r3
    unsigned __int8 *v4; // r5
    int result; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    GetRNG2();
    v2 = v1 & 0xF;
    for ( i = 0; ; ++i )
    {
        v4 = (v0 + 12 * i);
        result = *v4;
        if ( result == 255 )
            break;
        if ( result == 2 )
        {
            result = v4[4];
            if ( result > v2 )
                break;
        }
    }
    v6 = *v4;
    v7 = *(v4 + 1);
    v8 = v4[1];
    return result;
}


// 0x813d5c8
int __fastcall sub_813D5C8(int result)
{
    byte_200BC56 = result;
    return result;
}


// 0x813d5d0
int sub_813D5D0()
{
    return byte_200BC56;
}


// 0x813d5dc
int sub_813D5DC()
{
    return sub_814692C();
}


// 0x813d5e8
int __fastcall sub_813D5E8(int result)
{
    unk_200AF85 |= result;
    return result;
}


// 0x813d60c
int sub_813D60C()
{
    return byte_200BC55;
}


// 0x813d61c
int sub_813D61C()
{
    int result; // r0

    result = 0;
    byte_200BC55 = 0;
    return result;
}


// 0x813d62c
int __fastcall sub_813D62C(int result)
{
    byte_200BC55 = result;
    return result;
}


// 0x813d638
int sub_813D638()
{
    return byte_2009470;
}


// 0x813d648
int sub_813D648()
{
    return sub_8149718();
}


// 0x813d66c
int sub_813D66C()
{
    return sub_8147B3C();
}


// 0x813d6dc
char *sub_813D6DC()
{
    char *result; // r0
    int v1; // r1

    result = sub_802D064(0);
    v1 = (result << 16) | result[12] | (result[14] << 8);
    return result;
}


// 0x813d6f4
char *sub_813D6F4()
{
    char *result; // r0
    signed int v1; // r2
    int v2; // r1
    unsigned __int8 v3; // vf

    result = sub_802D064(0);
    v1 = 3;
    v2 = 0;
    do
    {
        v2 = 16 * v2 | result[v1];
        v3 = __OFSUB__(v1--, 1);
    }
    while ( !((v1 < 0) ^ v3) );
    return result;
}


// 0x813d714
char *sub_813D714()
{
    char *result; // r0
    int v1; // r1

    result = sub_802D064(0);
    v1 = *(result + 10) | (result[17] << 16);
    return result;
}


// 0x813d750
char *sub_813D750()
{
    char *result; // r0

    result = &byte_200BC50;
    word_200BC58 = 11;
    return result;
}


// 0x813d760
char *sub_813D760()
{
    char *result; // r0

    result = &byte_200BC50;
    byte_200BC55 = 0;
    return result;
}


// 0x813d78c
int __fastcall sub_813D78C(int a1, int a2)
{
    int result; // r0

    result = *&byte_813D7A0[4 * a1];
    *(a2 + 28) |= result;
    return result;
}


// 0x813d7b8
int __fastcall sub_813D7B8(int a1)
{
    int v1; // r7
    signed int v2; // r0
    int result; // r0

    v1 = a1;
    sub_802D064(0);
    v2 = *(v1 + 1);
    if ( v2 > 20 )
        return sub_813D5E8(1);
    (*(&off_813D7E8 + v2))();
    result = 0;
    unk_200AF81 = 0;
    return result;
}


// 0x813d804
unsigned int sub_813D804()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    _BYTE *v3; // r2
    unsigned int result; // r0
    signed int v5; // r3

    *(v0 + 13) = *(v1 + 4);
    v2 = *(v1 + 4) >> 8;
    *(v0 + 15) = v2;
    v3 = (v2 + 16);
    result = *(v1 + 4) >> 16;
    v5 = 4;
    do
    {
        *v3 += result & 0xF;
        result >>= 4;
        ++v3;
        --v5;
    }
    while ( v5 );
    return result;
}


// 0x813d838
signed int sub_813D838()
{
    int v0; // r5
    signed int result; // r0

    result = 2;
    *(v0 + 28) |= 2u;
    return result;
}


// 0x813d848
unsigned int sub_813D848()
{
    int v0; // r5
    int v1; // r7
    unsigned int result; // r0
    signed int v3; // r3

    *(v0 + 28) |= 8u;
    result = *(v1 + 4);
    *(v0 + 9) = BYTE2(result) & 1;
    result = result;
    v3 = 4;
    do
    {
        *(v0 + v3++) += result & 0xF;
        result >>= 4;
    }
    while ( result );
    return result;
}


// 0x813d87c
signed int sub_813D87C()
{
    int v0; // r5
    signed int result; // r0

    result = 32;
    *(v0 + 28) |= 0x20u;
    return result;
}


// 0x813d88c
int sub_813D88C()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    *(v0 + 28) |= byte_80;
    result = *(v1 + 4);
    *(v0 + 18) = BYTE2(result) & 3;
    result = result;
    *(v0 + 24) = result;
    return result;
}


// 0x813d8ac
int sub_813D8AC()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    *(v0 + 28) |= byte_200;
    result = *(v1 + 4) & 3;
    *(v0 + 11) = result;
    return result;
}


// 0x813d8c4
u8 *sub_813D8C4()
{
    u8 *result; // r0

    result = &sCamera.unk_50;
    dword_2009A28 = 4;
    return result;
}


// 0x813d8d0
int sub_813D8D0()
{
    return sub_803CB00(16);
}


// 0x813d90c
int __fastcall sub_813D90C(int result)
{
    byte_200BC57 = result;
    return result;
}


// 0x813d91c
int sub_813D91C()
{
    return byte_200BC51;
}


// 0x813d924
int *sub_813D924()
{
    int *result; // r0

    result = &dword_214;
    if ( !byte_200BC57 )
        result = dword_28 + 3;
    return result;
}


// 0x813d934
int __fastcall sub_813D934(int result)
{
    int v1; // r2

    v1 = byte_200BC50;
    byte_200BC50 = result;
    if ( result != v1 )
    {
        result = 0;
        byte_200BC52 = 0;
        byte_200BC53 = 0;
        byte_200BC54 = 0;
        word_200BC5A = 0;
    }
    return result;
}


// 0x813d94c
signed int __fastcall sub_813D94C(int a1)
{
    signed int v1; // r2

    v1 = 0;
    if ( byte_200BC50 != a1 )
        v1 = 1;
    return v1;
}


// 0x813d960
void __cdecl sub_813D960()
{
    char v0; // r4

    v0 = byte_200BC57;
    ZeroFillByWord(&byte_200BC50, 16);
    byte_200BC57 = v0;
}


// 0x813d978
int sub_813D978()
{
    word_200BC58 = 9;
    return sub_813D934(0);
}


// 0x813d98c
signed int sub_813D98C()
{
    signed int result; // r0

    sub_813D978();
    result = 4;
    byte_200BC3E = 4;
    return result;
}


// 0x813d9a0
int __fastcall sub_813D9A0(int result)
{
    word_200BC58 = result;
    return result;
}


// 0x813d9ac
int sub_813D9AC()
{
    int result; // r0

    (*(&off_813D9D4 + byte_200BC51))();
    result = sub_813D9F4();
    if ( result != 4 )
        result = sub_8146B70();
    return result;
}


// 0x813d9dc
__int16 *sub_813D9DC()
{
    sub_8148884();
    return sub_813DAF4();
}


// 0x813d9e8
__int16 *sub_813D9E8()
{
    sub_8148FC0();
    return sub_813DAF4();
}


// 0x813d9f4
signed int sub_813D9F4()
{
    signed int v0; // r4

    v0 = 2;
    if ( byte_20101B4 > 1 )
        v0 = 4;
    return v0;
}


// 0x813da0c
void sub_813DA0C()
{
    eStruct203F7D8[1] = 2;
    if ( eStruct203F7D8[0] )
    {
        eStruct203F7D8[1] = sub_813D9AC();
    }
    else
    {
        CopyWords(&eStruct2036780, &unk_20399F0, 0x10u);
        CopyWords(&eStruct2036780, &unk_2039A00, 0x10u);
    }
}


// 0x813da84
void __fastcall sub_813DA84(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&byte_2010290, 16);
}


// 0x813da94
signed int sub_813DA94()
{
    signed int v0; // r4

    v0 = 1;
    if ( byte_200BC52 != 8 )
    {
        (*(&off_813DAB8 + byte_200BC52))();
        v0 = 0;
    }
    return v0;
}


// 0x813dac0
void sub_813DAC0()
{
    start_800027C();
}


// 0x813dadc
int sub_813DADC()
{
    int v0; // r5
    int v1; // r4
    char v2; // zf

    v1 = 1;
    sub_813D648();
    if ( !v2 )
        v1 = 2;
    *(v0 + 2) = 8;
    return sub_813D62C(v1);
}


// 0x813daf4
__int16 *sub_813DAF4()
{
    int v0; // r10
    __int16 *result; // r0

    result = &eStruct2036780;
    eStruct2036780 = **(v0 + oToolkit_JoypadPtr);
    HIWORD(dword_2036788) = eStruct2036780;
    return result;
}


// 0x813db24
u32 __fastcall sub_813DB24(int a1, int a2)
{
    int v2; // r7
    char v3; // r0
    char v4; // zf
    signed int v5; // r5
    u32 v6; // r6
    int v7; // r0
    int v8; // r1
    u32 v9; // r6
    int v10; // r0
    int v11; // r1
    u32 result; // r0
    int v13; // [sp+4h] [bp-18h]

    v13 = a2;
    v2 = 4 * a1;
    v3 = sub_803DD30(4 * a1);
    if ( !v4 )
        v3 = 1;
    eStruct200F360 = v3;
    v5 = 0;
    do
    {
        v6 = sCamera.unk_8C;
        if ( !v5 )
            v6 = sCamera.unk_88;
        if ( *v6 == 1112683845 )
        {
            v7 = *(v6 + 4);
            v8 = *&byte_813DBAC[v2];
        }
        ++v5;
    }
    while ( v5 < 2 );
    v9 = sCamera.unk_8C;
    if ( eStruct200F360 )
        v9 = sCamera.unk_88;
    if ( *v9 != 1112683845 )
        goto LABEL_19;
    v10 = *(v9 + 4);
    v11 = *&byte_813DBAC[v2];
    if ( v13 )
    {
        v10 &= 0xFF00u;
        v11 = *&byte_813DBAC[v2] & 0xFF00;
    }
    if ( v10 != v11 )
LABEL_19:
        result = 255;
    else
        result = v9;
    return result;
}


