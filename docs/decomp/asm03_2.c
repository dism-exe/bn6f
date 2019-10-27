// 0x8045f8c
int __fastcall renderTextGfx_8045F8C(void *dialogScript, int a2, int a3, int a4)
{
    Toolkit *tk; // r10

    *(tk->unk_200A220 + 16) = dialogScript;
    return sub_3006B94(dialogScript + *(dialogScript + a2), sub_3006B94, a3, a4);
}


// 0x8045fbc
void sub_8045FBC()
{
    JUMPOUT(&loc_8045FEE);
}


// 0x8045fc6
void sub_8045FC6()
{
    JUMPOUT(&loc_8045FEE);
}


// 0x8045fd0
int __fastcall sub_8045FD0(int a1, unsigned int a2, int a3, int a4)
{
    Toolkit *tk; // r10
    int v5; // ST1C_4
    _BYTE *v6; // r2

    v5 = a3;
    v6 = tk->unk_200A220;
    v6[3] = 1;
    v6[4] = 1;
    *(v6 + 14) = *(dword_3006B84 + (a2 >> 16));
    sub_8046154((a1 + *(a1 + (2 * a2 & 0x1FFFF))), sub_8046154, v5, a4);
    return dword_200A25C;
}


// 0x8046038
signed int __fastcall sub_8046038(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r8
    int v7; // r9
    int v8; // r7
    char *v9; // r6
    signed int result; // r0
    int v11; // r1
    signed int v12; // r12
    int v13; // [sp-1Ch] [bp-28h]
    int v14; // [sp-18h] [bp-24h]
    int v15; // [sp-14h] [bp-20h]

    v6 = a3;
    v15 = a3;
    v7 = a4;
    v8 = v4;
    v14 = v4;
    v9 = &byte_80460BC[8 * a1];
    result = 0x40000000;
    v11 = *v9;
    v13 = *v9;
    do
    {
        do
        {
            sub_802FE28(result | (v4 << 16) | v5, v11 | (v9[5] << 10), v9[4], v9[6]);
            v8 += 16;
            v4 = v8;
            result = v12;
            LOWORD(v11) = v13 + 4;
            v13 += 4;
            --v6;
        }
        while ( v6 > 0 );
        v5 += 16;
        v4 = v14;
        v8 = v14;
        v6 = v15;
        --v7;
    }
    while ( v7 > 0 );
    return result;
}


// 0x8046154
int __fastcall sub_8046154(unsigned __int8 *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r6
    u32 *v7; // r7
    Toolkit *tk; // r10
    void *v9; // r1
    int v10; // r4
    unsigned __int8 *v11; // r6
    int v12; // r1
    unsigned __int8 *v13; // r0
    signed int v14; // r3
    int v15; // r1
    int v16; // r0
    int v17; // r0

    v9 = tk->unk_200A220;
    v10 = 8 * v4;
    *v9 = v10;
    *(v9 + 2) = v5;
    *(v9 + 6) = v6;
    *(v9 + 1) = 0;
    *(v9 + 7) = 0;
    *(v9 + 13) = 0;
    *(v9 + 12) = 0;
    *(v9 + 8) = a3;
    *(v9 + 9) = v7;
    *(v9 + 15) = 0;
    v11 = a1;
    FillByEightWords(a3, v10 * 16 * v5, *(v9 + 14));
    ZeroFillByEightWords(v7, v12);
    v13 = v11;
    v14 = 1;
    while ( v14 )
    {
        v15 = *v13;
        if ( v15 < 229 )
        {
            if ( v15 == 228 )
            {
                sub_80461D0(v13, v13[1] + 228);
                v13 = (v17 + 2);
            }
            else
            {
                sub_80461D0(v13, v15);
                v13 = (v16 + 1);
            }
        }
        else
        {
            v13 = (*(&JumpTable80460F4 + v15 - 229))();
        }
    }
    return sub_8046290();
}


// 0x80461d0
void __fastcall sub_80461D0(int a1, int a2)
{
    int *v2; // r8
    int v3; // r9
    _DWORD *v4; // r7
    int v5; // r3
    char v6; // r10
    signed int v7; // r6
    int v8; // r3
    unsigned int v9; // r2
    unsigned int v10; // r1
    unsigned __int8 v11; // vf
    int v12; // [sp-Ch] [bp-18h]

    v12 = dword_200A258;
    v2 = (4 * (dword_200A23C >> 5) + dword_200A240);
    v3 = dword_200A23C & 0x1F;
    v4 = (96 * a2 + dword_200A238);
    v5 = (*off_8046284[byte_200A223])[a2];
    dword_200A25C += v5;
    v5 *= 4;
    dword_200A23C += v5;
    v6 = 64 - v5;
    v7 = 11;
    v8 = v5 + v3;
    do
    {
        v9 = ((v4[1] + v12) << v6) >> v6 >> (32 - v3);
        v10 = (((v4[1] + v12) << v6) >> v6 << v3) | ((*v4 + v12) >> (32 - v3));
        *v2 = ((*v4 + v12) << v3) | ((*v2 << (32 - v3)) >> (32 - v3));
        if ( v8 > 32 )
        {
            v2[1] = v10;
            if ( v8 - 32 > 32 )
                v2[2] = v9;
        }
        v4 += 2;
        v2 = (v2 + byte_200A220[0]);
        v11 = __OFSUB__(v7--, 1);
    }
    while ( !((v7 < 0) ^ v11) );
}


// 0x8046290
int sub_8046290()
{
    unsigned int v0; // r1
    unsigned int v1; // r9
    int v2; // r2
    _DWORD *v3; // r7
    int v4; // r5
    int v5; // r12
    _DWORD *v6; // r6
    signed int v7; // r3
    _DWORD *v8; // r8
    signed int v9; // r4
    _DWORD *v10; // r6
    _DWORD *v11; // r6
    _DWORD *v12; // r6
    unsigned __int8 v13; // vf
    int v14; // r7
    int v16; // [sp-14h] [bp-1Ch]
    int v17; // [sp-10h] [bp-18h]

    v17 = byte_200A222;
    v0 = byte_200A220[0];
    v1 = byte_200A220[0] >> 3;
    v2 = 2 * byte_200A220[0];
    v3 = dword_200A244;
    v4 = 0;
    v5 = 0;
    v16 = dword_200A240;
    do
    {
        while ( 1 )
        {
            v6 = (v16 + v4);
            if ( !v1 )
                break;
            --v1;
            v7 = 2;
            do
            {
                v8 = v6;
                v9 = 2;
                do
                {
                    *v3 = *v6;
                    v3[1] = *(v6 + v0);
                    v10 = (v6 + v2);
                    v3[2] = *v10;
                    v3[3] = *(v10 + v0);
                    v11 = (v10 + v2);
                    v3[4] = *v11;
                    v3[5] = *(v11 + v0);
                    v12 = (v11 + v2);
                    v3[6] = *v12;
                    v3[7] = *(v12 + v0);
                    v6 = v8 + 1;
                    v3 += 8;
                    ++v8;
                    v13 = __OFSUB__(v9--, 1);
                }
                while ( !(((v9 < 0) ^ v13) | (v9 == 0)) );
                v6 += 2 * v0 - 2;
                --v7;
            }
            while ( v7 > 0 );
            v4 += 8;
        }
        ++v5;
        v16 += 16 * v0;
        v4 = 0;
        v1 = v0 >> 3;
    }
    while ( v5 != v17 );
    v14 = v3 - dword_200A244;
    if ( !byte_200A224 )
        (loc_8000AC8)();
    return v14;
}


// 0x804634c
int __fastcall sub_804634C(int a1)
{
    return sub_8046356(a1);
}


// 0x8046356
int __fastcall sub_8046356(int a1)
{
    unsigned int v1; // r7
    unsigned __int8 v2; // vf
    _DWORD *v3; // r7
    int v4; // r6
    unsigned int v5; // r4
    int v6; // r1
    signed int v7; // r3
    int v8; // r4

    v1 = 4 * (dword_200A23C >> 5);
    v2 = __OFADD__(v1, dword_200A240);
    v3 = (v1 + dword_200A240);
    v4 = dword_200A23C & 0x1F;
    v5 = dword_200A258 >> (dword_200A23C & 0x1F) << (dword_200A23C & 0x1F);
    v6 = byte_200A220[0];
    v7 = 11;
    do
    {
        if ( !(((v4 < 0) ^ v2) | (v4 == 0)) )
            *v3 |= v5;
        v3 = (v3 + v6);
        v2 = __OFSUB__(v7--, 1);
    }
    while ( !((v7 < 0) ^ v2) );
    v8 = byte_200A221++ + 1;
    dword_200A23C = 112 * byte_200A220[0] * v8;
    return a1 + 1;
}


// 0x80463a0
int __fastcall sub_80463A0(int a1)
{
    unsigned int v1; // r8
    signed int v2; // r7
    int v3; // r1
    int v4; // r3
    int v5; // r3
    signed int v6; // r7
    int v7; // r0
    int v8; // ST04_4
    int v9; // r3
    int v10; // r0
    int v11; // r3
    int v12; // r0
    int v13; // r1
    int v14; // r0
    int v15; // ST08_4
    int v17; // [sp+0h] [bp-18h]
    int v18; // [sp+Ch] [bp-Ch]

    v17 = a1;
    v1 = sub_8000C00(*&byte_200A220[4 * *(a1 + 1) + 8]);
    v2 = sub_8000C5C(v1);
    v3 = 4 * (v2 - 1);
    v4 = *(v17 + 2);
    if ( v4 >= 128 )
    {
        v11 = v4 - 128 - v2;
        v12 = 0;
        if ( v11 >= 64 )
        {
            v11 -= 64;
            v12 = 1;
        }
        while ( v11 > 0 )
            sub_80461D0(v12, v12);
        v13 = 4 * (v2 - 1);
        v18 = v17;
        v14 = 15;
        do
        {
            v15 = v13;
            sub_80461D0(v14, ((v1 >> v13) & v14) + 1);
            v13 = v15 - 4;
        }
        while ( v15 >= 4 );
    }
    else
    {
        v5 = v4 - v2;
        v6 = 0;
        if ( v5 >= 64 )
            v6 = 1;
        v18 = v17;
        v7 = 15;
        do
        {
            v8 = v3;
            sub_80461D0(v7, ((v1 >> v3) & v7) + 1);
            v3 = v8 - 4;
        }
        while ( v8 >= 4 );
        v10 = v6;
        while ( v9 > 0 )
            sub_80461D0(v10, v10);
    }
    return v18 + 3;
}


// 0x8046450
int __fastcall sub_8046450(int a1)
{
    return (dword_8046464[*(a1 + 1)])();
}


// 0x804657c
// () -> void
void __cdecl sub_804657C()
{
    char *v0; // r5
    signed int v1; // r7

    ZeroFillByWord(eStructArr2008450, dword_528);
    v0 = eStructArr2008450;
    v1 = 0;
    do
    {
        v0[2] = 32;
        v0[3] = v1;
        v0 += 88;
        ++v1;
    }
    while ( v1 < 15 );
}


// 0x80465a0
// (void *a1) -> void
void __cdecl sub_80465A0(void *a1)
{
    char *v1; // ST00_4

    while ( *a1 != 255 )
    {
        v1 = a1;
        sub_8046670(*a1, *(a1 + 1), *(a1 + 1));
        a1 = v1 + 4;
    }
}


// 0x80465bc
int sub_80465BC()
{
    char *v0; // r5
    signed int v1; // r7
    int result; // r0

    v0 = eStructArr2008450;
    v1 = 0;
    do
    {
        result = *v0;
        if ( result & 1 )
            result = (*(&JumpTable804646C + v0[1]))();
        v0 += 88;
        ++v1;
    }
    while ( v1 < 15 );
    return result;
}


// 0x80465f8
// () -> void
int sub_80465F8()
{
    char *v0; // r5
    signed int v1; // r7
    int result; // r0
    char v3; // r0
    char v4; // [sp-10h] [bp-30h]

    v0 = eStructArr2008450;
    v1 = 0;
    do
    {
        result = *v0;
        if ( result & 2 )
        {
            v4 = *v0;
            sub_80466D8();
            v3 = v4;
            if ( !(v4 & 0x40) )
            {
                if ( !(v4 & 0x80) )
                {
                    sub_8002818();
                    v3 = v4;
                }
                if ( v3 & 0x20 )
                    sub_8002874();
            }
            sub_8002694(0, 0);
        }
        v0 += 88;
        ++v1;
    }
    while ( v1 < 15 );
    return result;
}


// 0x8046664
// () -> void
void __cdecl sub_8046664()
{
    sub_80466AA();
    sub_804657C();
}


// 0x8046670
char *__fastcall sub_8046670(char a1, int a2, int a3)
{
    int v3; // r1
    char *v4; // r5

    v3 = 88 * a2;
    v4 = &eStructArr2008450[v3];
    v4[1] = a1;
    *v4 = 9;
    *(v4 + 1) = a3;
    *(v4 + 2) = 0;
    return &eStructArr2008450[v3];
}


// 0x804668a
int sub_804668A()
{
    _BYTE *v0; // r5

    *v0 = 0;
    return sprite_makeUnscalable();
}


// 0x8046696
int __fastcall sub_8046696(int a1)
{
    eStructArr2008450[88 * a1] = 0;
    return sprite_makeUnscalable();
}


// 0x80466aa
// () -> void
int sub_80466AA()
{
    char *v0; // r5
    signed int v1; // r7
    int result; // r0

    v0 = eStructArr2008450;
    v1 = 0;
    do
    {
        result = *v0;
        if ( *v0 )
            result = sub_804668A();
        v0 += 88;
        ++v1;
    }
    while ( v1 < 15 );
    return result;
}


// 0x80466c4
int __fastcall getStructFrom2008450(int a1)
{
    return eStructArr2008450[88 * a1];
}


// 0x80466d8
signed int sub_80466D8()
{
    int v0; // r5
    int v1; // r12
    signed int v2; // r0
    signed int v3; // r8
    signed int v4; // r0
    signed int v5; // r9
    signed int result; // r0
    unsigned __int8 *v7; // r2
    int v8; // r7
    unsigned int v9; // r4
    int v10; // r3
    int v11; // r3
    int v12; // r3
    int v13; // r3
    char v14; // r3
    char v15; // r3
    char v16; // r3

    v1 = *(v0 + 14);
    v2 = 0;
    if ( *(v0 + 19) & 0x10 )
        v2 = 1;
    v3 = v2;
    v4 = 0;
    if ( *(v0 + 19) & 0x20 )
        v4 = 1;
    v5 = v4;
    result = *(*(v0 + 28) + 12);
    v7 = (*(*(v0 + 24) + result + 4 * **(v0 + 32)) + *(v0 + 24) + result);
    v8 = 0;
    v9 = 2147483648;
    while ( *v7 != 255 )
    {
        v10 = v7[1];
        if ( v3 )
            v10 = -v10;
        v11 = v10 + *(v0 + 12);
        result = -64;
        if ( v11 >= -64 )
        {
            result = 305;
            if ( v11 < 305 )
            {
                v12 = v7[2];
                if ( v5 )
                    v12 = -v12;
                v13 = v12 + v1;
                result = -32;
                if ( v13 >= -32 )
                {
                    result = 193;
                    if ( v13 < 193 )
                        v8 |= v9;
                }
            }
        }
        v1 = *(v0 + 14);
        v9 >>= 1;
        v7 += 5;
    }
    v14 = *(v0 + 3);
    if ( *(v0 + 3) & 4 )
    {
        v16 = v14 & 0xF5;
        if ( v8 )
            v16 |= 0xAu;
    }
    else
    {
        v15 = v14 & 0xF7;
        if ( v8 & 0x7FFFFFFF )
            v15 |= 8u;
        v16 = v15 & 0xFD;
        if ( v8 )
            v16 |= 2u;
    }
    *(v0 + 3) = v16;
    *(v0 + 40) = v8;
    return result;
}


// 0x80467d8
void __cdecl sub_80467D8()
{
    char *v0; // r5
    signed int v1; // r7

    ZeroFillByWord(byte_2011860, &loc_1B8);
    v0 = byte_2011860;
    v1 = 0;
    do
    {
        v0[2] = 32;
        v0[3] = v1;
        v0 += 88;
        ++v1;
    }
    while ( v1 < 5 );
}


// 0x80467fc
unsigned __int8 *__fastcall sub_80467FC(unsigned __int8 *result)
{
    unsigned __int8 *v1; // ST00_4

    while ( *result != 255 )
    {
        v1 = result;
        sub_80468C6(*result, result[1], *(result + 1));
        result = v1 + 4;
    }
    return result;
}


// 0x8046818
int sub_8046818()
{
    char *v0; // r5
    signed int v1; // r7
    int result; // r0

    v0 = byte_2011860;
    v1 = 0;
    do
    {
        result = *v0;
        if ( result & 1 )
            result = (*(&off_804679C + v0[1]))();
        v0 += 88;
        ++v1;
    }
    while ( v1 < 5 );
    return result;
}


// 0x8046854
int sub_8046854()
{
    char *v0; // r5
    signed int v1; // r7
    int result; // r0
    char v3; // r0
    char v4; // [sp-Ch] [bp-2Ch]

    v0 = byte_2011860;
    v1 = 0;
    do
    {
        result = *v0;
        if ( result & 2 )
        {
            v4 = *v0;
            sub_804692C();
            v3 = v4;
            if ( !(v4 & 0x40) )
            {
                if ( !(v4 & 0x80) )
                {
                    sub_8002818();
                    v3 = v4;
                }
                if ( v3 & 0x20 )
                    sub_8002874();
            }
            sub_8002694(0, 0);
        }
        v0 += 88;
        ++v1;
    }
    while ( v1 < 5 );
    return result;
}


// 0x80468ba
void sub_80468BA()
{
    sub_8046900();
    sub_80467D8();
}


// 0x80468c6
char *__fastcall sub_80468C6(char a1, int a2, int a3)
{
    int v3; // r1
    char *v4; // r5

    v3 = 88 * a2;
    v4 = &byte_2011860[v3];
    v4[1] = a1;
    *v4 = 9;
    *(v4 + 1) = a3;
    *(v4 + 2) = 0;
    return &byte_2011860[v3];
}


// 0x80468e0
int sub_80468E0()
{
    _BYTE *v0; // r5

    *v0 = 0;
    return sprite_makeUnscalable();
}


// 0x80468ec
int __fastcall sub_80468EC(int a1)
{
    byte_2011860[88 * a1] = 0;
    return sprite_makeUnscalable();
}


// 0x8046900
int sub_8046900()
{
    char *v0; // r5
    signed int v1; // r7
    int result; // r0

    v0 = byte_2011860;
    v1 = 0;
    do
    {
        result = *v0;
        if ( *v0 )
            result = sub_80468E0();
        v0 += 88;
        ++v1;
    }
    while ( v1 < 5 );
    return result;
}


// 0x804691a
int __fastcall sub_804691A(int a1)
{
    return byte_2011860[88 * a1];
}


// 0x804692c
signed int sub_804692C()
{
    int v0; // r5
    int v1; // r12
    signed int v2; // r0
    signed int v3; // r8
    signed int v4; // r0
    signed int v5; // r9
    signed int result; // r0
    unsigned __int8 *v7; // r2
    int v8; // r7
    unsigned int v9; // r4
    int v10; // r3
    int v11; // r3
    int v12; // r3
    int v13; // r3
    char v14; // r3
    char v15; // r3
    char v16; // r3

    v1 = *(v0 + 14);
    v2 = 0;
    if ( *(v0 + 19) & 0x10 )
        v2 = 1;
    v3 = v2;
    v4 = 0;
    if ( *(v0 + 19) & 0x20 )
        v4 = 1;
    v5 = v4;
    result = *(*(v0 + 28) + 12);
    v7 = (*(*(v0 + 24) + result + 4 * **(v0 + 32)) + *(v0 + 24) + result);
    v8 = 0;
    v9 = 2147483648;
    while ( *v7 != 255 )
    {
        v10 = v7[1];
        if ( v3 )
            v10 = -v10;
        v11 = v10 + *(v0 + 12);
        result = -64;
        if ( v11 >= -64 )
        {
            result = 305;
            if ( v11 < 305 )
            {
                v12 = v7[2];
                if ( v5 )
                    v12 = -v12;
                v13 = v12 + v1;
                result = -32;
                if ( v13 >= -32 )
                {
                    result = 193;
                    if ( v13 < 193 )
                        v8 |= v9;
                }
            }
        }
        v1 = *(v0 + 14);
        v9 >>= 1;
        v7 += 5;
    }
    v14 = *(v0 + 3);
    if ( *(v0 + 3) & 4 )
    {
        v16 = v14 & 0xF5;
        if ( v8 )
            v16 |= 0xAu;
    }
    else
    {
        v15 = v14 & 0xF7;
        if ( v8 & 0x7FFFFFFF )
            v15 |= 8u;
        v16 = v15 & 0xFD;
        if ( v8 )
            v16 |= 2u;
    }
    *(v0 + 3) = v16;
    *(v0 + 40) = v8;
    return result;
}


// 0x8046cc8
int __fastcall sub_8046CC8(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r4
    int v6; // r1
    int result; // r0

    v5 = a1;
    ZeroFillByWord(&byte_2011C10, 52);
    byte_2011C14 = v5;
    dword_2011C2C = &dword_8046B98[4 * v5];
    dword_2011C34 = &reqBBS_requestInfo_textOffsets;
    v6 = *(v4 + oToolkit_GameStatePtr);
    result = *(v6 + oGameState_MapGroup);
    *(v6 + oGameState_LastMapGroup) = result;
    return result;
}


// 0x8046cf8
int ShopControl()
{
    return (*(&off_8046D1C + byte_2011C10))();
}


// 0x8046d4c
void __noreturn sub_8046D4C()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r1
    int v6; // r2
    int v7; // r3
    __int16 v8; // r0

    v1 = sub_8048DF8(*(v0 + 4), byte_2019A00, &byte_201AE00);
    copyData_804747C(v1, v2, v3, v4);
    uncomp_80471F8();
    v8 = sub_8047B88(0, v5, v6, v7);
    *(v0 + 18) = v8;
    sub_804754C();
}


// 0x8046ddc
void __noreturn sub_8046DDC()
{
    _BYTE *v0; // r5
    int v1; // r0

    v1 = v0[8] + 2;
    v0[8] = v1;
    if ( v1 >= 21 )
    {
        v0[8] = 21;
        *v0 = 8;
    }
    sub_8047134();
}


// 0x8046df8
void __fastcall __noreturn sub_8046DF8(int a1, int a2, int a3)
{
    sub_8047950(a1, a2, a3);
    sub_8047134();
}


// 0x8046e06
void __noreturn sub_8046E06()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    int v3; // r0
    int v4; // r0

    chatbox_check_eFlags2009F38(8);
    if ( !v1 )
    {
        v2 = *(v0 + 40);
        sub_8047366();
        if ( v1 )
        {
            v3 = *(v0 + 8) - 2;
            *(v0 + 8) = v3;
            if ( v3 <= 0 )
            {
                *(v0 + 8) = 0;
                v4 = *(v0 + 10) + 1;
                *(v0 + 10) = v4;
                if ( v4 >= 16 )
                {
                    *(v0 + 10) = 0;
                    *v0 = 16;
                    engine_setScreeneffect(12, 12);
                }
            }
        }
    }
    sub_8047134();
}


// 0x8046e48
void __fastcall __noreturn sub_8046E48(int a1)
{
    sub_8047134();
}


// 0x8046e84
void __fastcall __noreturn sub_8046E84(int a1)
{
    sub_8047134();
}


// 0x8046ed2
void __fastcall __noreturn sub_8046ED2(int a1)
{
    sub_8047134();
}


// 0x8047028
void __fastcall __noreturn sub_8047028(int a1)
{
    sub_8047134();
}


// 0x8047050
void __fastcall __noreturn sub_8047050(int a1)
{
    sub_8047134();
}


// 0x8047066
void __fastcall __noreturn sub_8047066(int a1)
{
    sub_8047134();
}


// 0x804709c
void __fastcall __noreturn sub_804709C(int a1)
{
    sub_8047134();
}


// 0x8047134
void __noreturn sub_8047134()
{
    int v0; // r0
    int v1; // r1
    int v2; // r2
    int v3; // r1
    int v4; // r2
    char v5; // zf
    int v6; // [sp+0h] [bp-18h]

    call_sub_3005EBA(0, 0, 2, 0);
    sub_80465BC();
    sub_80465F8();
    v0 = sub_81179AE();
    sub_80473E6(v0, v1, v2);
    if ( v5 && !*(v6 + 14) )
    {
        if ( !*(v6 + 13) )
            sub_804758C();
        *(v6 + 13) = 0;
        *(v6 + 18) = sub_8047B88(0, v3, v4, 0);
    }
    sub_8047CB6();
    sub_8047CEC();
    sub_8047594(*(v6 + 24), byte_2019A00);
}


// 0x80471f8
void uncomp_80471F8()
{
    int v0; // r5

    SWI_LZ77UnCompReadNormalWrite8bit(*(*(v0 + 28) + 4), &unk_2029A00);
    SWI_LZ77UnCompReadNormalWrite8bit(comp_873DE4C, eDecomp202BA00);
    SWI_LZ77UnCompReadNormalWrite8bit(comp_873ECC8, &byte_202DA00);
}


// 0x804722c
signed int __fastcall sub_804722C(signed int result, int a2, __int16 a3)
{
    int v3; // r5
    int v4; // r10

    if ( !*(v3 + 5) )
        result = sub_802FE28((result << 16) | a2, *&byte_8047268[2 * (**(v4 + oToolkit_CurFramePtr) & 0x1F)] + 2 * a3, 0, 1);
    return result;
}


// 0x80472e8
signed int __fastcall __noreturn sub_80472E8(int a1, int a2, int a3)
{
    return sub_802FE28(a2 | (a1 << 16) | 0x40000000, *&byte_8047318[2 * a3], 0, 0);
}


// 0x804733c
void __fastcall sub_804733C(int a1)
{
    int v1; // r5
    int v2; // r4
    unsigned __int8 v3; // r0

    v2 = a1;
    do
        GetPositiveSignedRNG2();
    while ( !v3 );
    *(v1 + 48) = ~(((v2 + v3) << 8) | (v3 >> 4 << 28) | v3 & 0xF ^ (v3 >> 4));
}


// 0x8047366
void sub_8047366()
{
    ;
}


// 0x8047384
void __fastcall sub_8047384(int a1, int a2)
{
    int v2; // r5
    int v3; // r9
    _DWORD *v4; // r7
    int v5; // r4
    char *v6; // r7
    int v7; // r1
    char v8; // zf
    int v9; // r1

    v3 = a2;
    v4 = *(v2 + 28);
    if ( *v4 == 2 )
    {
        sub_8006F1E(a1, a2);
        if ( !v8 )
        {
LABEL_5:
            ZeroFillByWord(byte_2019A00, 128);
            word_2011C22 = 0;
            *(v2 + 14) = 1;
            return;
        }
    }
    else
    {
        v5 = v4[3];
        v6 = &byte_8047DA0[*(*(v2 + 28) + 8)];
        v7 = *(v6 + 1);
        sub_804743C(a1);
        if ( !v8 )
            goto LABEL_5;
        v9 = v6[4];
        sub_8047456(v3);
        if ( !v8 )
            goto LABEL_5;
    }
}


// 0x80473e6
signed int __fastcall sub_80473E6(int a1, int a2, int a3)
{
    int v3; // r5
    _DWORD *v4; // r7
    int v5; // r3
    int v6; // r4
    char *v7; // r6
    char *v8; // r7
    int v9; // r1
    char v10; // zf
    int v11; // r1

    v4 = *(v3 + 28);
    if ( *v4 == 2 )
        return 0;
    v5 = 0;
    v6 = v4[3];
    v7 = byte_2019A00;
    while ( 1 )
    {
        if ( *v7 )
        {
            v8 = &byte_8047DA0[*(*(v3 + 28) + 8)];
            v9 = *(v8 + 1);
            sub_804743C(*(v7 + 1));
            if ( !v10 )
                break;
            v11 = v8[4];
            sub_8047456(v7[4]);
            if ( !v10 )
                break;
        }
        v7 += 8;
        if ( ++v5 >= v6 )
            return 0;
    }
    ZeroFillByWord(byte_2019A00, 128);
    word_2011C22 = 0;
    return 1;
}


// 0x804743c
int __fastcall sub_804743C(int result)
{
    int v1; // r4
    int v2; // r7
    int v3; // r3

    v3 = 0;
    do
    {
        if ( result == *(v2 + 2) )
            break;
        v2 += 8;
        ++v3;
    }
    while ( v3 < v1 );
    return result;
}


// 0x8047456
int __fastcall sub_8047456(int result)
{
    int v1; // r4
    int v2; // r7
    int v3; // r3

    v3 = 0;
    do
    {
        if ( result == *(v2 + 4) )
            break;
        v2 += 8;
        ++v3;
    }
    while ( v3 < v1 );
    return result;
}


// 0x804747c
void __fastcall copyData_804747C(int a1, int a2, int a3, int a4)
{
    ZeroFillGFX30025c0();
    sub_8046664();
    decompAndCopyData(off_8047494);
}


// 0x804754c
int __noreturn sub_804754C()
{
    int v0; // r5
    int v1; // r10

    CopyByEightWords(byte_2017204, *(v1 + oToolkit_iBGTileIdBlocks_Ptr) + 2048, 0x800u);
    return renderTextGfx_8045F8C(*(v0 + 36), 16, &unk_2015E00, 100671488);
}


// 0x804758c
int __noreturn sub_804758C()
{
    return sub_80478D4();
}


// 0x8047594
void __fastcall __noreturn sub_8047594(int a1, int a2)
{
    unsigned __int8 *v2; // r7
    int v3; // r3
    int v4; // r3
    int v5; // r4
    int v6; // r0
    unsigned int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r4
    int v11; // r0
    unsigned int v12; // r1

    v2 = (a2 + 8 * a1);
    v3 = *v2;
    if ( v3 == 1 )
        sub_804760E(0, *(v2 + 1));
    if ( v3 == 2 )
    {
        v4 = v2[1];
        v5 = v2[5];
        sub_8047CFA(0, *(v2 + 1), v2[4]);
        sub_8047664(v6, v7, v8, v9);
    }
    if ( v3 == 3 )
    {
        v10 = v2[5];
        sub_8047CFA(0, *(v2 + 1), v2[4]);
        sub_8047708(v11, v12);
    }
    sub_8047760(0);
}


// 0x804760e
void __fastcall __noreturn sub_804760E(int a1, int a2)
{
    int v2; // [sp+0h] [bp-18h]
    int v3; // [sp+4h] [bp-14h]

    renderTextGfx_8045F8C(byte_873D9FC, a2, &eDecompBuffer2013A00[512 * a1], (a1 << 10) + 100697088);
    renderTextGfx_8045F8C(*(v3 + 36), 16, &unk_2013C00 + v2, v2 + 100697600);
}


// 0x8047664
void __fastcall __noreturn sub_8047664(int a1, unsigned int a2, int a3, int a4)
{
    int v4; // ST08_4
    int v5; // r3
    char v6; // zf
    unsigned int v7; // [sp+0h] [bp-24h]
    int v8; // [sp+4h] [bp-20h]
    int v9; // [sp+Ch] [bp-18h]

    v7 = a2;
    v8 = a3;
    v4 = a4;
    renderTextGfx_8045F8C(*(&off_80476E4 + (a2 >> 8)), a2, &eDecompBuffer2013A00[512 * a1], (a1 << 10) + 100697088);
    if ( v4 )
    {
        v5 = v8;
        if ( MEMORY[0x4E3A020] == 2 )
        {
            TestEventFlag(v7 + 7712);
            v5 = v8;
            if ( v6 )
            {
                TestEventFlag(v7 + 9248);
                v5 = v8;
                if ( v6 )
                    v5 = 27;
            }
        }
    }
    else
    {
        v5 = 27;
    }
    renderTextGfx_8045F8C(byte_86EF71C, v5, &unk_2013C00 + v9, v9 + 100697600);
}


// 0x8047708
void __fastcall __noreturn sub_8047708(int a1, unsigned int a2)
{
    int v2; // [sp+0h] [bp-18h]
    int v3; // [sp+4h] [bp-14h]

    renderTextGfx_8045F8C(byte_873EA50, a2 >> 2, &eDecompBuffer2013A00[512 * a1], (a1 << 10) + 100697088);
    renderTextGfx_8045F8C(*(v3 + 36), 16, &unk_2013C00 + v2, v2 + 100697600);
}


// 0x8047760
void __fastcall __noreturn sub_8047760(int a1)
{
    int v1; // r5

    renderTextGfx_8045F8C(*(v1 + 36), 16, &eDecompBuffer2013A00[512 * a1], (a1 << 10) + 100697088);
}


// 0x8047790
void __fastcall __noreturn sub_8047790(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r5
    int v5; // r10
    int v6; // r7
    int v7; // r3
    int v8; // r0
    int v9; // r4
    int v10; // r1
    void *v11; // r0
    int v12; // r1
    int v13; // r6
    void *v14; // ST00_4
    int v15; // ST04_4
    char v16; // zf
    int v17; // [sp+0h] [bp-14h]

    v6 = 8 * v3;
    v17 = a3;
    sub_8047CDC();
    v9 = v8 << 10;
    *(*(v5 + oToolkit_Unk200a220_Ptr) + 8) = v10;
    v11 = *(v4 + 36);
    v12 = 15;
    v13 = **(v4 + 28);
    if ( v13 == 1 )
        v12 = 13;
    if ( v13 == 2 && v6 && (v14 = *(v4 + 36), v15 = v12, TestEventFlag(v7 + 9248), v11 = v14, v12 = v15, v16) )
    {
        v12 = 16;
    }
    else if ( !v17 )
    {
        v12 = 17;
    }
    renderTextGfx_8045F8C(v11, v12, &unk_2013C40 + v9, v9 + 100697664);
}


// 0x8047800
void __noreturn sub_8047800()
{
    int v0; // r5

    CopyBackgroundTiles(*(v0 + 8) - 21, 0, 2, eTileIds2018A04, 21, &dword_C);
    CopyBackgroundTiles(*(v0 + 8) - 19, 1, 0, byte_202F800, 18, &dword_8 + 2);
}


// 0x8047834
void sub_8047834()
{
    int v0; // r5
    char *v1; // r7
    int v2; // r3

    if ( *(v0 + 5) )
    {
        v1 = &byte_2019A00[8 * (*(v0 + 20) + *(v0 + 24))];
        v2 = *v1;
        if ( v2 == 2 )
        {
            sub_80478B8();
            sub_80465A0(byte_8046B74);
            sub_811980C(*(v1 + 1), v1[4], 0, 0);
            sub_8119854(120, 80, 0);
            chatbox_runScript(eTextScript202BA04, 127);
        }
        else if ( v2 == 1 )
        {
            chatbox_runScript(eTextScript202BA04, *(v1 + 1));
            sub_80478B8();
        }
        else
        {
            chatbox_runScript(eTextScript202DA04, *(v1 + 1) >> 2);
            sub_80478B8();
            sub_80465A0(byte_8046B84);
        }
    }
}


// 0x80478b8
int sub_80478B8()
{
    sub_8046696(0);
    sub_8046696(1);
    sub_8046696(2);
    return sub_8046696(3);
}


// 0x80478d4
int sub_80478D4()
{
    int v0; // r5
    int v1; // r10
    u16 *v2; // r3
    int v3; // r1

    v2 = &unk_2019404;
    if ( **(v0 + 28) != 1 )
        v2 = &unk_2019204;
    CopyBackgroundTiles(42 - *(v0 + 8), 0, 2, v2, 9, dword_4 + 1);
    CopyBackgroundTiles(43 - *(v0 + 8), 2, 0, byte_8046B58, 7, &byte_0[2]);
    v3 = 14;
    if ( **(v0 + 28) == 1 )
        v3 = 13;
    *(*(v1 + oToolkit_Unk200a220_Ptr) + 8) = *(v0 + 40);
    return renderTextGfx_8045F8C(*(v0 + 36), v3, byte_2015A00, 100705280);
}


// 0x8047950
signed int __fastcall sub_8047950(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r4
    __int16 v6; // r0
    int v7; // r1
    int v8; // r0
    __int16 v9; // r7
    int v10; // r0
    unsigned __int8 v11; // vf
    int v12; // r0
    int v13; // r0
    int v14; // r0
    signed int v15; // r1
    int v16; // r0
    int v17; // r1
    int v18; // r1
    int v19; // r1
    signed int result; // r0

    *(v3 + 26) = *(v3 + 24);
    *(v3 + 22) = *(v3 + 20);
    v5 = **(v3 + 28);
    v6 = *(*(v4 + oToolkit_JoypadPtr) + 2);
    if ( v6 & 2 )
    {
        v7 = *(v3 + 5);
        if ( !*(v3 + 5) )
        {
            sub_8047A80();
            goto LABEL_37;
        }
        goto LABEL_7;
    }
    if ( !*(v3 + 18) )
        goto LABEL_37;
    if ( v5 != 2 )
    {
        v7 = 256;
        if ( *(*(v4 + oToolkit_JoypadPtr) + 2) & 0x100 )
        {
LABEL_7:
            PlaySoundEffect(102, v7, a3);
            v8 = *(v3 + 5) ^ 0xFF;
            *(v3 + 5) = ~*(v3 + 5);
            if ( !v8 )
            {
                chatbox_runScript(*(v3 + 36), 1);
                sub_80478B8();
            }
            *(v3 + 13) = -1;
            goto LABEL_37;
        }
    }
    if ( !*(v3 + 18) )
        goto LABEL_37;
    if ( v6 & 1 )
    {
        v7 = *(v3 + 5);
        if ( !*(v3 + 5) )
        {
            sub_8047A96();
            goto LABEL_37;
        }
        goto LABEL_7;
    }
    v9 = *(*(v4 + oToolkit_JoypadPtr) + 4);
    if ( v9 & 0x40 )
    {
        v10 = *(v3 + 20);
        v11 = __OFSUB__(v10--, 1);
        *(v3 + 20) = v10;
        if ( (v10 < 0) ^ v11 )
        {
            *(v3 + 20) = 0;
            v12 = *(v3 + 24);
            v11 = __OFSUB__(v12--, 1);
            *(v3 + 24) = v12;
            if ( (v12 < 0) ^ v11 )
                *(v3 + 24) = 0;
        }
    }
    else if ( *(v3 + 18) > 5 && v5 == 2 && *(*(v4 + oToolkit_JoypadPtr) + 4) & 0x200 )
    {
        v13 = *(v3 + 24);
        v11 = __OFSUB__(v13, 5);
        v13 -= 5;
        *(v3 + 24) = v13;
        if ( (v13 < 0) ^ v11 )
            *(v3 + 24) = 0;
    }
    else if ( v9 & 0x80 )
    {
        v14 = *(v3 + 20) + 1;
        *(v3 + 20) = v14;
        v15 = *(v3 + 18);
        a3 = 5;
        if ( v15 > 5 )
            v15 = 5;
        if ( v14 >= v15 )
        {
            v16 = v15 - 1;
            *(v3 + 20) = v15 - 1;
            v17 = *(v3 + 24) + 1;
            *(v3 + 24) = v17;
            a3 = *(v3 + 18) - v16;
            if ( v17 >= a3 )
                *(v3 + 24) = --a3;
        }
    }
    else if ( *(v3 + 18) > 5 && v5 == 2 )
    {
        if ( *(*(v4 + oToolkit_JoypadPtr) + 4) & 0x100 )
        {
            v18 = *(v3 + 24) + 5;
            *(v3 + 24) = v18;
            a3 = *(v3 + 18) - 5;
            if ( v18 >= a3 )
                *(v3 + 24) = a3;
        }
    }
LABEL_37:
    v19 = *(v3 + 22);
    if ( *(v3 + 20) != v19 || (result = *(v3 + 24), v19 = *(v3 + 26), result != v19) )
    {
        PlaySoundEffect(102, v19, a3);
        result = 255;
        *(v3 + 13) = -1;
    }
    return result;
}


// 0x8047a80
int sub_8047A80()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2

    *v0 = 20;
    chatbox_runScript(*(v0 + 36), 2);
    return PlaySoundEffect(104, v1, v2);
}


// 0x8047a96
void sub_8047A96()
{
    int v0; // r5
    char *v1; // r7
    int v2; // r4
    int v3; // r1
    int v4; // r1
    int v5; // r0
    int v6; // r1
    int v7; // r1
    int v8; // r2
    char v9; // zf
    int v10; // r1
    int v11; // r2
    int v12; // r7
    int v13; // r6

    v1 = &byte_2019A00[8 * (*(v0 + 20) + *(v0 + 24))];
    *(v0 + 32) = v1;
    v2 = *(v1 + 1);
    if ( *v1 == 3 )
        v2 += 144;
    v3 = *(v1 + 3);
    sub_8047CDC();
    chatbox_8045EFC(v2, v1[4], v4, v4);
    if ( **(v0 + 28) != 2 )
    {
        v5 = *v1;
        v6 = *(v1 + 1);
        sub_8047CA0();
        if ( !v9 )
        {
            PlaySoundEffect(105, v7, v8);
            return;
        }
        v10 = 5;
        v11 = *v1;
        if ( v11 != 2 )
        {
            v10 = 4;
            if ( v11 != 1 )
                v10 = 11;
        }
        v12 = v10;
        *v0 = 24;
        *(v0 + 7) = 0;
        goto LABEL_20;
    }
    v13 = v1[1];
    v12 = 5;
    *v0 = 24;
    *(v0 + 7) = 0;
    TestEventFlag(v2 + 7712);
    if ( v9 )
    {
        TestEventFlag(v2 + 9248);
        if ( v9 )
        {
            v12 = 24;
            *(v0 + 6) = 27;
            sub_8048F68(v2);
            if ( !v9 )
            {
                v12 = 26;
                *(v0 + 6) = 27;
            }
            *v0 = 36;
            *(v0 + 1) = 24;
            if ( !v13 )
            {
                v12 = 25;
                *(v0 + 6) = 28;
                *(v0 + 1) = 28;
                sub_8048F68(v2);
                if ( !v9 )
                {
                    v12 = 26;
                    *(v0 + 6) = 29;
                }
                goto LABEL_21;
            }
            goto LABEL_20;
        }
    }
    if ( v13 )
    {
LABEL_20:
        PlaySoundEffect(103, v10, v11);
        goto LABEL_21;
    }
    v12 = 28;
    *v0 = 28;
LABEL_21:
    chatbox_runScript(*(v0 + 36), v12);
}


// 0x8047b88
int __fastcall sub_8047B88(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    _DWORD *v6; // r7
    int v7; // r5
    unsigned __int8 *v8; // r7
    unsigned __int8 *v9; // r6
    int v10; // r1
    int v11; // r2
    int v12; // r3
    int v13; // r4
    int v14; // r0
    int v15; // r1
    bool v16; // zf
    char *v17; // r7
    int result; // r0
    int v19; // r1
    int v20; // r5
    char *v21; // r7
    _WORD *v22; // r6
    int v23; // r4
    int v24; // r0
    int v25; // r3
    int v26; // r1
    int v27; // r0
    char v28; // r0
    char *v29; // r7
    int v30; // r1
    int v31; // [sp-Ch] [bp-20h]
    int v32; // [sp-8h] [bp-1Ch]
    int v33; // [sp-4h] [bp-18h]

    ZeroFillByWord(byte_2019A00, 128);
    v6 = *(v4 + 28);
    if ( *v6 == 2 )
    {
        v20 = v6[3];
        v21 = &byte_201AE00;
        v22 = &unk_20199F8;
        v23 = 0;
        do
        {
            v24 = *(v21 + 1);
            sub_8047CA8();
            if ( v16 )
            {
                v22 += 4;
                *v22 = *v21;
                v26 = *(v21 + 1);
                v22[1] = v26;
                *(v22 + 4) = v21[4];
                *(v22 + 5) = v21[5];
                v22[3] = *(v21 + 3);
                v27 = v21[1];
                *(v22 + 1) = v27;
                if ( v26 == v25 && v27 != 255 )
                {
                    v28 = v27 - 1;
                    v21[1] = v28;
                    *(v22 + 1) = v28;
                }
            }
            v21 += 8;
            ++v23;
        }
        while ( v23 < v20 );
        v29 = byte_2019A00;
        result = 0;
        v30 = 0;
        do
        {
            if ( *(v29 + 1) )
                ++result;
            v29 += 8;
            ++v30;
        }
        while ( v30 < v20 );
    }
    else
    {
        v7 = v6[3];
        v8 = (v6[2] + *(v5 + oToolkit_Unk20032c8_Ptr));
        v9 = &unk_20199F8;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        do
        {
            if ( *v8 && v8[1] && (*v8 != v10 || *(v8 + 1) != v11 || v8[4] != v12) )
            {
                v31 = v10;
                v32 = v11;
                v33 = v12;
                v14 = *v8;
                v15 = *(v8 + 1);
                sub_8047CB0();
                v10 = v31;
                v11 = v32;
                v12 = v33;
                if ( v16 )
                {
                    v16 = getPETNaviSelect() == 0;
                    v10 = v31;
                    v11 = v32;
                    v12 = v33;
                    if ( v16 || *v8 != 1 || *(v8 + 1) != 112 )
                    {
                        v9 += 8;
                        *v9 = *v8;
                        v9[1] = v8[1];
                        *(v9 + 1) = *(v8 + 1);
                        v9[4] = v8[4];
                        v9[5] = v8[5];
                        *(v9 + 3) = *(v8 + 3);
                        v10 = *v9;
                        v11 = *(v9 + 1);
                        v12 = v9[4];
                    }
                }
            }
            v8 += 8;
            ++v13;
        }
        while ( v13 < v7 );
        v17 = byte_2019A00;
        result = 0;
        v19 = 0;
        do
        {
            if ( v17[1] )
                ++result;
            v17 += 8;
            ++v19;
        }
        while ( v19 < v7 );
    }
    return result;
}


// 0x8047ca0
int sub_8047CA0()
{
    return 0;
}


// 0x8047ca8
int sub_8047CA8()
{
    return 0;
}


// 0x8047cb0
int sub_8047CB0()
{
    return 0;
}


// 0x8047cb6
int sub_8047CB6()
{
    unsigned __int16 *v0; // r5
    int result; // r0

    result = v0[9];
    if ( result <= 4 )
    {
        if ( v0[9] )
        {
            if ( --result <= v0[10] )
                v0[10] = result;
        }
    }
    else if ( result < v0[12] + 5 )
    {
        result -= 5;
        v0[12] = result;
    }
    return result;
}


// 0x8047cdc
void sub_8047CDC()
{
    int v0; // r5

    **(v0 + 28);
}


// 0x8047cec
void sub_8047CEC()
{
    CopyWords(byte_80469F0, byte_202F800, dword_168);
}


// 0x8047cfa
void __fastcall sub_8047CFA(int a1, signed int a2, int a3)
{
    __int16 v3; // r4
    int v4; // r6
    int v5; // r6
    int v6; // r0
    int v7; // r6
    signed __int16 v8; // r2
    char *v9; // r7
    int v10; // r3
    signed int v11; // r0
    signed int v12; // r3
    signed int v13; // r0

    if ( v4 )
    {
        v5 = a1;
        if ( sub_803D138(a2 + 144, a3) )
            return;
        v6 = v5;
    }
    else
    {
        v7 = a1;
        if ( GetChipCountOfCode(a2, a3) )
            return;
        v6 = v7;
    }
    v8 = 12288;
    if ( v6 & 1 )
        v8 = 0x4000;
    v9 = &byte_202F800[72 * v6];
    v10 = 0;
    v11 = 0;
    do
    {
        *&v9[v10] = (*&v9[v10] & 0xFFF | v8) + (v3 << 13);
        v10 += 2;
        ++v11;
    }
    while ( v11 < 10 );
    v12 = 36;
    v13 = 0;
    do
    {
        *&v9[v12] = (*&v9[v12] & 0xFFF | v8) + (v3 << 13);
        v12 += 2;
        ++v13;
    }
    while ( v13 < 10 );
}


// 0x8047d84
char *sub_8047D84()
{
    return &byte_2019A00[8 * (word_2011C24 + word_2011C28)];
}


// 0x8048c24
signed int __fastcall sub_8048C24(int a1)
{
    int v1; // r10
    int *v2; // r2
    int v3; // r4
    int v4; // r2
    int v5; // r0
    int v6; // ST00_4
    bool v7; // zf
    int v9; // [sp-8h] [bp-1Ch]

    v2 = &dword_8046B98[4 * a1];
    v3 = v2[3];
    v4 = v2[2] + *(v1 + oToolkit_Unk20032c8_Ptr);
    v5 = 0;
    do
    {
        if ( *(v4 + 1) )
        {
            v6 = v5;
            v9 = v4;
            v7 = getPETNaviSelect() == 0;
            v5 = v6;
            v4 = v9;
            if ( v7 || *v9 != 1 || *(v9 + 2) != 112 )
                return 1;
        }
        v4 += 8;
        ++v5;
    }
    while ( v5 < v3 );
    return 0;
}


// 0x8048c68
void *__fastcall sub_8048C68()
{
    Toolkit *tk; // r10
    void *result; // r0
    char *v2; // r1
    signed int v3; // r2
    unsigned __int8 v4; // vf
    void *v5; // ST00_4
    char *v6; // ST04_4
    signed int v7; // ST08_4

    ZeroFillByWord(tk->unk_20032C8, 3712);
    result = byte_8047DA0;
    v2 = tk->unk_20032C8;
    v3 = 3712;
    while ( 1 )
    {
        v4 = __OFSUB__(v3, 8);
        v3 -= 8;
        if ( (v3 < 0) ^ v4 )
            break;
        if ( *(result + 1) )
        {
            v5 = result;
            v6 = v2;
            v7 = v3;
            CopyBytes(result, v2, 8);
            result = v5;
            v2 = v6;
            v3 = v7;
        }
        result = result + 8;
        v2 += 8;
    }
    return result;
}


// 0x8048c98
char *sub_8048C98()
{
    int v0; // r10
    char *result; // r0
    int v2; // r1
    signed int v3; // r2
    unsigned __int8 v4; // vf

    result = byte_8047DA0;
    v2 = *(v0 + oToolkit_Unk20032c8_Ptr);
    v3 = 3712;
    while ( 1 )
    {
        v4 = __OFSUB__(v3, 8);
        v3 -= 8;
        if ( (v3 < 0) ^ v4 )
            break;
        if ( result[1] )
        {
            *v2 = *result;
            *(v2 + 2) = *(result + 1);
            *(v2 + 4) = result[4];
            *(v2 + 6) = *(result + 3);
        }
        result += 8;
        v2 += 8;
    }
    return result;
}


// 0x8048ccc
int __fastcall sub_8048CCC(int a1, unsigned __int8 *a2)
{
    int v2; // r10
    unsigned __int8 *v3; // r6
    int *v4; // r7
    int v5; // r5
    int v6; // r8
    int result; // r0
    int v8; // r1
    unsigned __int8 *v9; // r7
    int v10; // r4
    int v11; // r1
    _BYTE *v12; // r7
    int v13; // ST00_4

    v3 = a2;
    v4 = &dword_8046B98[4 * a1];
    v5 = v4[3];
    v6 = v4[2] + *(v2 + oToolkit_Unk20032c8_Ptr);
    result = 0;
    do
    {
        if ( *v3 )
        {
            v8 = 0;
            v9 = v6;
            do
            {
                if ( *v9 && *v3 == *v9 && *(v3 + 1) == *(v9 + 1) && v3[4] == v9[4] )
                {
                    v10 = v9[1] + v3[1];
                    if ( v10 > 255 )
                        LOBYTE(v10) = -1;
                    v9[1] = v10;
                    goto LABEL_16;
                }
                v9 += 8;
                ++v8;
            }
            while ( v8 < v5 );
            v11 = 0;
            v12 = v6;
            while ( *v12 )
            {
                v12 += 8;
                if ( ++v11 >= v5 )
                    goto LABEL_16;
            }
            v13 = result;
            CopyBytes(v3, v12, 8);
            result = v13;
        }
LABEL_16:
        v3 += 8;
        ++result;
    }
    while ( result < v5 );
    return result;
}


// 0x8048d60
int __fastcall sub_8048D60(int a1, int a2)
{
    int v2; // r10
    int v3; // r6
    int v4; // r7
    __int64 v5; // r0
    int v6; // r4

    v3 = a2;
    LODWORD(v5) = 16 * a1;
    v4 = *(&dword_8046B98[2] + v5) + *(v2 + oToolkit_Unk20032c8_Ptr);
    v5 = v5;
    while ( !*v4 || v3 != *(v4 + 2) )
    {
        v4 += 8;
        if ( ++HIDWORD(v5) >= *(&dword_8046B98[3] + v5) )
            return v5;
    }
    v6 = *(v4 + 1) + 1;
    if ( v6 > 255 )
        LOBYTE(v6) = -1;
    *(v4 + 1) = v6;
    return v5;
}


// 0x8048d9c
int __fastcall sub_8048D9C(int a1)
{
    int v1; // r10

    return dword_8046B98[4 * a1 + 2] + *(v1 + oToolkit_Unk20032c8_Ptr);
}


// 0x8048dae
signed int __fastcall sub_8048DAE(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r0
    unsigned __int8 *v6; // r7
    int v7; // r6
    int v8; // r4

    v5 = 4 * a1;
    v6 = (dword_8046B98[v5 + 2] + *(v4 + oToolkit_Unk20032c8_Ptr));
    v7 = 0;
    while ( 1 )
    {
        if ( *v6 )
        {
            if ( *v6 == a2 && *(v6 + 1) == a3 && v6[4] == a4 )
            {
                v8 = v6[1];
                if ( v8 > 0 )
                    break;
            }
        }
        v6 += 8;
        if ( ++v7 >= dword_8046B98[v5 + 3] )
            return 0;
    }
    if ( v8 != 255 )
        v6[1] = v8 - 1;
    return 1;
}


// 0x8048df8
int __fastcall sub_8048DF8(int a1, int a2, unsigned __int8 *a3)
{
    int v3; // r10
    int *v4; // r7
    int result; // r0
    int v6; // r4
    int v7; // r7
    int v8; // r5
    unsigned __int8 *v9; // r6
    int v10; // r4
    int v11; // r8
    int v12; // r9
    unsigned __int8 *v13; // r4
    char v14; // zf
    unsigned __int16 *v15; // r0
    int v16; // r12
    int v17; // r0
    char v18; // r1
    int v19; // r4
    int v20; // r4

    v4 = &dword_8046B98[4 * a1];
    result = *v4;
    v6 = v4[3];
    v7 = v4[2] + *(v3 + oToolkit_Unk20032c8_Ptr);
    if ( result == 2 )
    {
        v8 = a2;
        v9 = a3;
        v10 = 16 * v6;
        v11 = a2 + v10;
        ZeroFillByWord(a2, v10);
        v12 = &v9[v10];
        ZeroFillByWord(v9, v10);
        while ( *v7 )
        {
            v13 = v9;
            TestEventFlag(*(v7 + 2) + 7712);
            if ( v14 )
            {
                TestEventFlag(*(v7 + 2) + 8224);
                if ( v14 )
                {
                    TestEventFlag(*(v7 + 2) + 8736);
                    if ( v14 )
                        v13 = v8;
                }
            }
            v15 = getChip8021DA8(*(v7 + 2));
            v17 = &v13[8 * (v15[14] + v16)];
            *v17 = *v7;
            *(v17 + 1) = *(v7 + 1);
            *(v17 + 2) = *(v7 + 2);
            *(v17 + 4) = *(v7 + 4);
            v18 = 0;
            if ( !v16 )
                v18 = 1;
            *(v17 + 5) = v18;
            *(v17 + 6) = *(v7 + 6);
            v7 += 8;
        }
        do
        {
            if ( !*v8 )
            {
                v19 = v8 + 8;
                while ( !*v19 )
                {
                    v19 += 8;
                    if ( v19 >= v11 )
                        goto LABEL_21;
                }
                *v8 = *v19;
                *(v8 + 1) = *(v19 + 1);
                *(v8 + 2) = *(v19 + 2);
                *(v8 + 4) = *(v19 + 4);
                *(v8 + 5) = *(v19 + 5);
                *(v8 + 6) = *(v19 + 6);
                *v19 = 0;
                *(v19 + 1) = 0;
                *(v19 + 2) = 0;
                *(v19 + 4) = 0;
                *(v19 + 5) = 0;
                *(v19 + 6) = 0;
            }
            v8 += 8;
        }
        while ( v8 < v11 );
        do
        {
LABEL_21:
            result = *v9;
            if ( !*v9 )
            {
                v20 = (v9 + 8);
                while ( !*v20 )
                {
                    v20 += 8;
                    if ( v20 >= v12 )
                        return result;
                }
                *v9 = *v20;
                v9[1] = *(v20 + 1);
                *(v9 + 1) = *(v20 + 2);
                v9[4] = *(v20 + 4);
                v9[5] = *(v20 + 5);
                *(v9 + 3) = *(v20 + 6);
                *v20 = 0;
                *(v20 + 1) = 0;
                *(v20 + 2) = 0;
                *(v20 + 4) = 0;
                *(v20 + 5) = 0;
                *(v20 + 6) = 0;
            }
            v9 += 8;
        }
        while ( v9 < v12 );
    }
    return result;
}


// 0x8048f68
int __fastcall sub_8048F68(int result)
{
    __int16 *i; // r1

    for ( i = &word_8048BE0; *i && result != *i; ++i )
        ;
    return result;
}


// 0x8048f88
int sub_8048F88()
{
    return sub_8048CCC(4, byte_8048BE4);
}


// 0x8048f9c
signed int __fastcall sub_8048F9C(__int16 a1, int a2, int a3, int a4)
{
    _BYTE **v4; // r10
    __int16 v5; // r4
    signed int result; // r0

    v5 = a1;
    ZeroFillByWord(&byte_200A290, &loc_1B0);
    **v4 = 48;
    word_200A2B2 = v5;
    word_200A2B4 = 8;
    result = 10;
    word_200A2B6 = 10;
    return result;
}


// 0x8048fc4
int sub_8048FC4()
{
    return byte_200A290;
}


// 0x8048fd4
signed int cb_8048FD4()
{
    signed int result; // r0
    char v1; // zf

    (*(&off_8048FF8 + byte_200A290))();
    result = sub_800A7D0();
    if ( v1 )
        result = sub_803C59C(218, 2);
    return result;
}


// 0x804900c
int sub_804900C()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char v5; // zf
    int result; // r0

    chatbox_8040818();
    sRender_08_setRenderingState(&byte_40);
    renderInfo_8001788();
    renderInfo_80017A0();
    v1 = sub_80015FC(17);
    sub_8005F40(v1, v2, v3, v4);
    sub_803BEC0();
    sub_8049CBC();
    sub_8049D42();
    if ( v5 || *(v0 + 34) )
    {
        *v0 = 12;
        result = 0;
        *(v0 + 1) = 0;
    }
    else
    {
        *v0 = 8;
        result = 0;
        *(v0 + 1) = 0;
    }
    return result;
}


// 0x8049058
int sub_8049058()
{
    int result; // r0
    char v1; // zf

    result = IsPaletteFadeActive();
    if ( !v1 )
    {
        zeroFillVRAM();
        ZeroFillGFX30025c0();
        copyMemory_8001850();
        chatbox_8040818();
        sRender_08_setRenderingState(&byte_40);
        sub_811F758();
    }
    return result;
}


// 0x8049080
char *sub_8049080()
{
    int v0; // r5

    (*(&off_8049098 + *(v0 + 1)))();
    return sub_803CB78();
}


// 0x8049104
signed int sub_8049104()
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
    sub_80015FC(18);
    sub_8046664();
    copyData_8049AAC(v1, v2, v3, v4);
    chatbox_8040818();
    sub_803BE30(2);
    sub_8049D70();
    sub_803C1A8(v0 + 240, v0 + 48, v0 + 256, v0 + 144);
    sub_803C320();
    sub_803C26A();
    result = 4;
    *(v0 + 1) = 4;
    return result;
}


// 0x8049158
int sub_8049158()
{
    int v0; // r5

    *(v0 + 1) = 8;
    return sub_803A1B0();
}


// 0x8049164
int sub_8049164()
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


// 0x804918a
int __fastcall sub_804918A(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r0

    sub_8146588();
    sub_814695C(v1 + 240);
    v2 = sub_8049D7C();
    v3 = sub_81469BC(v1 + 256, v2);
    sub_8132664(v3);
    engine_setScreeneffect(8, 16);
    sub_803BB2C(10);
    *(v1 + 1) = 24;
    return sub_803A1B0();
}


// 0x80491c4
int sub_80491C4()
{
    int v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        chatbox_check_eFlags2009F38(8);
        if ( !v1 )
        {
            engine_setScreeneffect(12, 16);
            *(v0 + 1) = 20;
        }
    }
    return sub_803A1B0();
}


// 0x80491e6
int sub_80491E6()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        *v0 = 4;
        v0[1] = 0;
    }
    return sub_803A1B0();
}


// 0x80491fc
int sub_80491FC()
{
    int v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        sub_803C320();
        *(v0 + 1) = 28;
        sub_803BB7C(30);
        sub_803BB90(0);
    }
    return sub_803A1B0();
}


// 0x804921e
int sub_804921E()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf

    sub_803BB80();
    if ( !v2 )
    {
        if ( *(*(v1 + oToolkit_JoypadPtr) + 2) & 2 )
        {
            if ( !(sub_803CAF8() & 8) )
                sub_803C28A(131);
        }
        else
        {
            chatbox_check_eFlags2009F38(8);
            if ( !v2 )
            {
                sub_803BB94();
                if ( !v2 )
                {
                    sub_803C558();
                    sub_803BB90(30);
                    sub_813D638();
                    if ( !v2 )
                    {
                        sub_803BB2C(11);
                        *(v0 + 1) = 32;
                    }
                }
            }
        }
    }
    return sub_803A1B0();
}


// 0x8049272
int sub_8049272()
{
    _BYTE *v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        v0[14] = 0;
        v0[11] = 0;
        v0[12] = 4;
        v0[1] = 36;
    }
    return sub_803A1B0();
}


// 0x8049290
void sub_8049290()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf
    signed int v4; // r0

    sub_803CB00(1);
    sub_803CB18();
    if ( v3 )
    {
        sub_813D638();
        if ( v3 )
        {
            sub_803C320();
            *(v0 + 1) = 28;
            sub_803BB7C(30);
            sub_803BB90(0);
            sub_803BB2C(14);
        }
        else
        {
            v4 = sub_803A5F4(127, v1, v2);
            if ( !v3 )
                (dword_80492E4[v4])();
        }
    }
    sub_803A104();
    sub_8049BC0();
}


// 0x80492f4
int sub_80492F4()
{
    int v0; // r5
    char v1; // zf

    sub_803CB18();
    if ( v1 )
    {
        sub_803C28A(131);
        *(v0 + 1) = 92;
    }
    return 0;
}


// 0x804930c
signed int __fastcall sub_804930C(int a1)
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
        PlaySoundEffect(105, v3, v2);
        result = 0;
    }
    else
    {
        LODWORD(v5) = sub_803C440(v4);
        v6 = v5;
        sub_803C150(v5, __PAIR__(byte_202AF00, HIDWORD(v5)));
        sub_803C2AA(byte_202AB00, byte_202AF00, v6, SHIDWORD(v6));
        sub_803BB2C(12);
        v1[1] = 40;
        PlaySoundEffect(129, v7, v8);
        result = 1;
    }
    return result;
}


// 0x8049360
void sub_8049360()
{
    _BYTE *v0; // r5
    char v1; // zf
    int v2; // r2
    int v3; // r1
    int v4; // r0
    char v5; // ST00_1

    chatbox_check_eFlags2009F38(8);
    if ( !v1 )
    {
        if ( chatbox_8045F4C() || (v2 = sub_813D638(), v3 = v0[11], v4 = v0[14] + v3, v4 >= v2) )
        {
            sub_803BB2C(11);
            v0[1] = 48;
        }
        else
        {
            v5 = v0[14] + v3;
            sub_813D5C8(v4);
            v0[22] = v5;
            sub_803CB00(4);
            sub_803CB00(256);
            sub_803BB2C(13);
            v0[1] = 44;
        }
    }
    sub_803A104();
    sub_8049BC0();
}


// 0x80493bc
void sub_80493BC()
{
    int v0; // r5
    char v1; // zf

    sub_803CB18();
    if ( !v1 )
        goto LABEL_10;
    sub_803CB18();
    if ( !v1 )
    {
LABEL_9:
        *(v0 + 1) = 60;
        goto LABEL_10;
    }
    sub_803C330();
    if ( !v1 )
    {
        sub_803C2A0();
        sub_803CB00(32);
        goto LABEL_9;
    }
    sub_803CB18();
    if ( !v1 )
        *(v0 + 1) = 68;
LABEL_10:
    sub_803A104();
    sub_8049BC0();
}


// 0x80493fe
void sub_80493FE()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
        *(v0 + 1) = 36;
    sub_803A104();
    sub_8049BC0();
}


// 0x8049416
void sub_8049416()
{
    int v0; // r5
    char v1; // zf

    sub_8049680();
    if ( !v1 )
    {
        if ( !sub_814656C() )
        {
            sub_803BB2C(15);
            *(v0 + 1) = 56;
        }
        goto LABEL_11;
    }
    sub_803CB18();
    if ( !v1 )
    {
LABEL_8:
        *(v0 + 1) = 60;
        goto LABEL_11;
    }
    sub_803C330();
    if ( !v1 )
    {
        sub_803C2A0();
        sub_803CB00(32);
        goto LABEL_8;
    }
    sub_803CB18();
    if ( !v1 )
    {
        sub_8132648();
        sub_8148D24();
        *(v0 + 1) = 68;
    }
LABEL_11:
    sub_803A104();
    sub_8049BC0();
}


// 0x804946e
void sub_804946E()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    int v3; // r0

    sub_80496B4();
    if ( !v1 )
    {
        chatbox_check_eFlags2009F38(8);
        if ( !v1 )
        {
            sub_8146588();
            sub_814695C(v0 + 240);
            v2 = sub_8049D7C();
            v3 = sub_81469BC(v0 + 256, v2);
            sub_8132664(v3);
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
    }
    sub_803A104();
    sub_8049BC0();
}


// 0x80494ca
void sub_80494CA()
{
    sub_803A104();
    sub_8049BC0();
}


// 0x80494d6
int sub_80494D6()
{
    return sub_81291D8();
}


// 0x80494de
void sub_80494DE()
{
    int v0; // r5
    char v1; // zf
    int v2; // r1
    int v3; // r2
    int v4; // r4

    sub_803CB18();
    if ( v1 )
    {
        sub_813D60C();
        if ( v1 )
        {
            PlaySoundEffect(131, v2, v3);
            v4 = 15;
            sub_803CB18();
            if ( v1 )
            {
                v4 = 16;
                sub_803CB18();
                if ( v1 )
                    v4 = 17;
            }
            sub_803BB2C(v4);
            *(v0 + 1) = 64;
        }
    }
    else
    {
        sub_803CB0C(256);
        *(v0 + 1) = 68;
    }
    sub_803A104();
    sub_8049BC0();
}


// 0x804952c
void sub_804952C()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    int v3; // r0

    chatbox_check_eFlags2009F38(8);
    if ( !v1 )
    {
        sub_8146588();
        sub_814695C(v0 + 240);
        v2 = sub_8049D7C();
        v3 = sub_81469BC(v0 + 256, v2);
        sub_8132664(v3);
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
    sub_803A104();
    sub_8049BC0();
}


// 0x8049582
int sub_8049582()
{
    int v0; // r5
    char v1; // zf

    sub_8049704();
    if ( !v1 )
    {
        engine_setScreeneffect(12, 16);
        *(v0 + 1) = 80;
    }
    return sub_803A1B0();
}


// 0x804959c
int sub_804959C()
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


// 0x80495b4
int sub_80495B4()
{
    int v0; // r5
    char v1; // zf

    sub_80496B4();
    if ( !v1 )
    {
        engine_setScreeneffect(12, 16);
        *(v0 + 1) = 88;
    }
    return sub_803A1B0();
}


// 0x80495ce
int sub_80495CE()
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


// 0x80495ec
int sub_80495EC()
{
    int v0; // r5
    char v1; // zf

    sub_80496B4();
    if ( !v1 )
    {
        engine_setScreeneffect(12, 16);
        *(v0 + 1) = 96;
    }
    return sub_803A1B0();
}


// 0x8049606
int sub_8049606()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        *v0 = 4;
        v0[1] = 0;
    }
    return sub_803A1B0();
}


// 0x804961c
int sub_804961C()
{
    int v0; // r5
    char v1; // zf

    sub_80496B4();
    if ( !v1 )
    {
        engine_setScreeneffect(12, 16);
        *(v0 + 1) = 104;
    }
    return sub_803A1B0();
}


// 0x8049636
int sub_8049636()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        *v0 = 4;
        v0[1] = 0;
    }
    return sub_803A1B0();
}


// 0x804964c
signed int sub_804964C()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r4
    int v6; // r0
    int v7; // r1
    int v8; // r2
    signed int result; // r0

    v1 = sub_803C620();
    v5 = v1;
    if ( v2 || !v1 )
    {
        sub_8147F98(v1, v2, v3, v4);
        result = 0;
    }
    else
    {
        sub_813D978();
        v6 = *(&dword_804967C + v5);
        *(v0 + 1) = v6;
        sub_8147F98(v6, v7, v8, &dword_804967C);
        result = 1;
    }
    return result;
}


// 0x8049680
signed int sub_8049680()
{
    int v0; // r5
    int v1; // r0
    int v2; // r4
    int v3; // r1
    int v4; // r4
    signed int result; // r0

    v1 = sub_803C620();
    v2 = v1;
    if ( v3 || !v1 )
    {
        sub_8148224();
        result = 0;
    }
    else
    {
        sub_813D978();
        v4 = 2 * v2;
        *(v0 + 1) = dword_80496EC[v4];
        (dword_80496EC[v4 + 1])();
        sub_8148224();
        result = 1;
    }
    return result;
}


// 0x80496b4
signed int sub_80496B4()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    char v3; // zf

    v1 = sub_803C620();
    if ( !v2 )
    {
        if ( v1 == 1 )
        {
            *(v0 + 1) = &byte_4C;
            sub_813D750();
        }
        else
        {
            sub_813D60C();
            if ( v3 )
                return 1;
        }
    }
    sub_8148224();
    return 0;
}


// 0x8049704
signed int sub_8049704()
{
    char v0; // zf

    sub_803C620();
    sub_813D60C();
    if ( v0 )
        return 1;
    sub_8148224();
    return 0;
}


// 0x804971c
int sub_804971C()
{
    int v0; // r5

    return (*(&off_8049730 + *(v0 + 1)))();
}


// 0x8049770
void __noreturn sub_8049770()
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
    sub_80015FC(19);
    sub_8046664();
    copyData_8049A18(v1, v2, v3, v4);
    engine_setScreeneffect(8, 16);
    v0[8] = 0;
    v0[18] = 0;
    v0[28] = 0;
    v0[29] = 0;
    v0[19] = 0;
    sub_803BEC0();
    v5 = sub_8049CBC();
    sub_803A740(v5, v6, v7, v8);
    sub_803A752();
}


// 0x80497d0
void __noreturn sub_80497D0()
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


// 0x80497ee
void __noreturn sub_80497EE()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        sub_803BB80();
        if ( !v1 )
            *(v0 + 1) = 12;
    }
    sub_803A820();
}


// 0x8049808
void __fastcall sub_8049808(int a1, int a2, int a3)
{
    signed int v3; // r0
    char v4; // zf

    v3 = sub_803AFC2(0, a2, a3);
    if ( !v4 )
        (dword_804982C[v3])();
    sub_803A7B8();
}


// 0x8049844
void __noreturn sub_8049844()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
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


// 0x804986e
void __noreturn sub_804986E()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        sub_8049CBC();
        *v0 = 4;
        v0[1] = 0;
    }
    sub_803A820();
}


// 0x8049888
void __noreturn sub_8049888()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        if ( chatbox_8045F4C() )
            *(v0 + 1) = 12;
        else
            *(v0 + 1) = 32;
    }
    sub_803A820();
}


// 0x80498aa
void __noreturn sub_80498AA()
{
    _BYTE *v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        v0[19] = 0;
        sub_803C0BE(16, 48);
        v0[16] = sub_803C132(16, 48);
        v0[1] = 12;
    }
    sub_803A820();
}


// 0x80498d4
void __noreturn sub_80498D4()
{
    int v0; // r5

    *(v0 + 8) = 0;
    *(v0 + 1) = 36;
    sub_803A820();
}


// 0x80498e4
void __noreturn sub_80498E4()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
        *(v0 + 1) = 40;
    sub_803A820();
}


// 0x80498f8
void __fastcall sub_80498F8(int a1, int a2, int a3)
{
    signed int v3; // r0
    char v4; // zf

    v3 = sub_803AFC2(0, a2, a3);
    if ( !v4 )
        (dword_804991C[v3])();
    sub_803A7EC();
}


// 0x8049934
void __noreturn sub_8049934()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
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


// 0x804996a
void __noreturn sub_804996A()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        sub_8049CBC();
        *v0 = 4;
        v0[1] = 0;
    }
    sub_803A820();
}


// 0x8049984
void __noreturn sub_8049984()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
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


// 0x80499ae
void __noreturn sub_80499AE()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        *(v0 + 19) = 0;
        sub_803C0BE(17, 144);
        *(v0 + 1) = 40;
    }
    sub_803A820();
}


// 0x80499ce
void __noreturn sub_80499CE()
{
    int v0; // r5
    char v1; // zf
    char v2; // r4

    IsPaletteFadeActive();
    if ( !v1 )
    {
        v2 = 0;
        sub_8049D42();
        if ( !v1 )
            v2 = 1;
        *(v0 + 4) = v2;
        sub_8049D70();
        sub_8049D4A();
        sub_8049D3A();
        sub_803F79E();
        zeroFillVRAM();
        ZeroFillGFX30025c0();
        copyMemory_8001850();
        sRender_08_setRenderingState(&byte_40);
        chatbox_8040818();
        sub_811F758();
    }
    sub_803A820();
}


// 0x8049a18
int __fastcall copyData_8049A18(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    _WORD *v5; // r3

    zeroFillVRAM();
    ZeroFillGFX30025c0();
    copyMemory_8001850();
    decompAndCopyData(&initRefs_8049A54);
    v5 = *(v4 + oToolkit_RenderInfoPtr);
    v5[11] -= 4;
    v5[10] -= 2;
    v5[13] -= 2;
    v5[12] -= 4;
    return sub_803B91C(3);
}


// 0x8049aac
int __fastcall copyData_8049AAC(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0

    zeroFillVRAM();
    ZeroFillGFX30025c0();
    copyMemory_8001850();
    decompAndCopyData(byte_8049AD8);
    sub_803B91C(4);
    sub_803B91C(5);
    result = 0;
    *(v4 + 24) = 0;
    return result;
}


// 0x8049bc0
void sub_8049BC0()
{
    signed int v0; // r4
    char v1; // zf
    int v2; // r1
    unsigned int v3; // r0
    int v4; // r6
    unsigned int v5; // r7

    v0 = 0;
    do
    {
        sub_803C316();
        if ( !v1 && v0 < sub_813D638() )
        {
            sub_803C440(v0);
            v3 = sub_8146738(v2);
            v4 = v3 & 0xF;
            v5 = v3 >> 4;
            CopyWords(off_8049C84[v4], off_8049C70[v0], 0x20u);
            sub_802FE28(32 * v0 + 1074855968, (byte_8049C58[v4] + 2864) | (*(&dword_8049C68 + v0) << 12), 2, 0);
            (loc_8000AC8)(&eTextScript202BA04[512 * v5], (v0 << 9) + 100756992, 512);
            sub_8132A50(166, 32 * v0 + 19, 1, 16 * v0 + 880);
        }
        ++v0;
    }
    while ( v0 < 4 );
}


// 0x8049cbc
int sub_8049CBC()
{
    int v0; // r5
    int result; // r0

    CopyBytes(&unk_2001808, v0 + 48, 32);
    CopyBytes(&unk_2001828, v0 + 144, 32);
    *(v0 + 16) = sub_803C132(16, 48);
    result = sub_803C132(17, 144);
    *(v0 + 17) = result;
    return result;
}


// 0x8049cf8
void *__fastcall sub_8049CF8()
{
    void *result; // r0

    ZeroFillByWord(&word_2001800, 72);
    HalfwordFill(&unk_2001808, 0x20u, 58853, 58624);
    byte_2001818 = -26;
    HalfwordFill(&unk_2001828, 0x20u, 58853, 58624);
    result = &unk_2001828;
    byte_200183C = -26;
    return result;
}


// 0x8049d3a
__int16 *sub_8049D3A()
{
    __int16 *result; // r0

    result = &word_2001800;
    byte_2001802 = 1;
    return result;
}


// 0x8049d42
int sub_8049D42()
{
    return byte_2001802;
}


// 0x8049d4a
int sub_8049D4A()
{
    CopyBytes(&unk_200A300, &unk_2001808, 32);
    return CopyBytes(&unk_200A360, &unk_2001828, 32);
}


// 0x8049d70
int sub_8049D70()
{
    int result; // r0

    GetRNG2();
    word_2001800 = result;
    return result;
}


// 0x8049d7c
int sub_8049D7C()
{
    return word_2001800;
}


// 0x8049d82
void *sub_8049D82()
{
    return &unk_2001808;
}


// 0x8049d98
void sub_8049D98()
{
    sub_803BEC0();
}


// 0x8049da0
_DWORD *__fastcall sub_8049DA0(_DWORD *a1, _DWORD *a2)
{
    _DWORD *v2; // ST00_4

    v2 = a2;
    sub_803C1BC(a1, &unk_2001808, 8);
    return sub_803C1BC(v2, &unk_2001828, 10);
}


// 0x8049dc4
int __fastcall sub_8049DC4(__int64 a1, __int64 a2)
{
    __int64 v2; // ST00_8

    v2 = a2;
    sub_803C168(a1, 8, 0x20u);
    return sub_803C168(v2, 10, 0x20u);
}


// 0x8049ddc
signed int __fastcall sub_8049DDC(__int16 a1, int a2, int a3, int a4)
{
    _BYTE **v4; // r10
    __int16 v5; // r4
    signed int result; // r0

    v5 = a1;
    ZeroFillByWord(&byte_200A290, &loc_1B0);
    **v4 = 76;
    word_200A2B2 = v5;
    word_200A2B4 = 8;
    result = 1;
    word_200A2B6 = 1;
    return result;
}


// 0x8049e04
int cb_8049E04()
{
    return (*(&off_8049E18 + byte_200A290))();
}


// 0x8049e28
int __noreturn sub_8049E28()
{
    _BYTE *v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int result; // r0

    chatbox_8040818();
    sRender_08_setRenderingState(&byte_40);
    renderInfo_8001788();
    renderInfo_80017A0();
    v1 = sub_80015FC(17);
    sub_8005F40(v1, v2, v3, v4);
    sub_803BEC0();
    sub_804A14C();
    *v0 = 8;
    result = 0;
    v0[1] = 0;
    return result;
}


// 0x8049e5c
int sub_8049E5C()
{
    int result; // r0
    char v1; // zf

    result = IsPaletteFadeActive();
    if ( !v1 )
    {
        zeroFillVRAM();
        ZeroFillGFX30025c0();
        copyMemory_8001850();
        chatbox_8040818();
        sRender_08_setRenderingState(&byte_40);
        result = sub_8123408();
    }
    return result;
}


// 0x8049e84
int sub_8049E84()
{
    int v0; // r5

    return (*(&off_8049E98 + *(v0 + 1)))();
}


// 0x8049ebc
void __noreturn sub_8049EBC()
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
    sub_80015FC(19);
    sub_8046664();
    copyData_804A0AC(v1, v2, v3, v4);
    engine_setScreeneffect(8, 16);
    v0[8] = 0;
    v0[28] = 0;
    v0[29] = 0;
    v0[19] = 0;
    v0[18] = 0;
    sub_803BEC0();
    v5 = sub_804A14C();
    sub_803A740(v5, v6, v7, v8);
    sub_803A752();
}


// 0x8049f20
void __noreturn sub_8049F20()
{
    int v0; // r4

    v0 = 41;
    do
        sub_803B674(v0++);
    while ( v0 <= 44 );
}


// 0x8049f32
void __noreturn sub_8049F32()
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
    sub_8049F70();
}


// 0x8049f50
void __noreturn sub_8049F50()
{
    int v0; // r1
    int v1; // r2
    int v2; // r3

    sub_803BA64();
    sub_803BAE2(0);
    sub_803B522(10, v0, v1, v2);
    sub_803B674(40);
    sub_803A8B4(1);
}


// 0x8049f70
void __noreturn sub_8049F70()
{
    int v0; // r1
    int v1; // r2
    int v2; // r3

    sub_803BA64();
    sub_803B522(10, v0, v1, v2);
    sub_803B674(40);
    sub_803A8B4(1);
}


// 0x8049f8a
void __noreturn sub_8049F8A()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        sub_803BB80();
        if ( !v1 )
            *(v0 + 1) = 12;
    }
    sub_8049F70();
}


// 0x8049fa4
void __fastcall sub_8049FA4(int a1, int a2, int a3)
{
    signed int v3; // r0
    char v4; // zf

    v3 = sub_803AFC2(1, a2, a3);
    if ( !v4 )
        (dword_8049FC8[v3])();
    sub_8049F50();
}


// 0x8049fe0
void __noreturn sub_8049FE0()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
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
    sub_8049F70();
}


// 0x804a00a
void __noreturn sub_804A00A()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        sub_804A14C();
        *v0 = 4;
        v0[1] = 0;
    }
    sub_8049F70();
}


// 0x804a024
void __noreturn sub_804A024()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        if ( chatbox_8045F4C() )
        {
            *(v0 + 1) = 12;
        }
        else
        {
            engine_setScreeneffect(12, 16);
            *(v0 + 1) = 32;
        }
    }
    sub_8049F70();
}


// 0x804a04e
void __noreturn sub_804A04E()
{
    _BYTE *v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        v0[19] = 0;
        sub_803C0BE(16, 48);
        v0[16] = sub_803C132(16, 48);
        v0[1] = 12;
    }
    sub_8049F70();
}


// 0x804a078
int sub_804A078()
{
    int v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( v1 )
        sub_8049F70();
    sub_804A230(*(v0 + 34));
    zeroFillVRAM();
    ZeroFillGFX30025c0();
    copyMemory_8001850();
    sRender_08_setRenderingState(&byte_40);
    chatbox_8040818();
    return sub_8123408();
}


// 0x804a0ac
int __fastcall copyData_804A0AC(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    _WORD *v5; // r3

    zeroFillVRAM();
    ZeroFillGFX30025c0();
    copyMemory_8001850();
    decompAndCopyData(byte_804A0E8);
    v5 = *(v4 + oToolkit_RenderInfoPtr);
    v5[11] -= 4;
    v5[10] -= 2;
    v5[13] -= 2;
    v5[12] -= 4;
    return sub_803B91C(3);
}


// 0x804a14c
int sub_804A14C()
{
    int v0; // r5
    int result; // r0

    CopyBytes(&unk_2001850 + byte_804A178[*(v0 + 34)], v0 + 48, 32);
    result = sub_803C132(16, 48);
    *(v0 + 16) = result;
    return result;
}


// 0x804a17a
void *__fastcall sub_804A17A()
{
    void *result; // r0

    ZeroFillByWord(&unk_2001850, 96);
    HalfwordFill(&unk_2001850, 0x20u, 58853, 58624);
    sub_804A1FC(0, &unk_2001850);
    byte_2001860 = -26;
    HalfwordFill(&algn_2001861[15], 0x20u, 58853, 58624);
    sub_804A1FC(1, &algn_2001861[15]);
    result = &algn_2001861[15];
    byte_2001880 = -26;
    return result;
}


// 0x804a1d0
char *__fastcall sub_804A1D0(int a1)
{
    int v1; // r7
    char *result; // r0

    v1 = a1;
    HalfwordFill(&algn_2001881[15], 0x20u, 58853, 58624);
    sub_804A1FC(v1, &algn_2001881[15]);
    result = &algn_2001881[15];
    byte_20018A0 = -26;
    return result;
}


// 0x804a1fc
signed int __fastcall sub_804A1FC(int a1, _BYTE *a2)
{
    unsigned __int8 *v2; // r4
    signed int result; // r0

    v2 = TextScriptFolderNames + *(TextScriptFolderNames + a1);
    while ( 1 )
    {
        result = *v2;
        if ( result < 228 )
        {
            *a2 = result;
            ++v2;
            goto LABEL_8;
        }
        if ( result == 228 )
        {
            *a2 = -28;
            a2[1] = v2[1];
            v2 += 2;
            goto LABEL_8;
        }
        if ( result == 230 )
            return result;
LABEL_8:
        a2 += 2;
    }
}


// 0x804a230
int __fastcall sub_804A230(int a1)
{
    return CopyBytes(&unk_200A300, &unk_2001850 + *(&dword_804A25C + a1), 32);
}


// 0x804a24c
char *__fastcall sub_804A24C(int a1)
{
    return &unk_2001850 + *(&dword_804A25C + a1);
}


// 0x804a2cc
void __fastcall sub_804A2CC(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // ST00_4

    v5 = a1;
    sub_804A2E8(a1, a2, a3, a4);
    dword_200ACB0 = v5;
    *(*(v4 + oToolkit_GameStatePtr) + oGameState_LastMapGroup) = *(*(v4 + oToolkit_GameStatePtr) + oGameState_MapGroup);
    sub_8046664();
}


// 0x804a2e8
void __fastcall sub_804A2E8(int a1, int a2, int a3, int a4)
{
    int v4; // r10

    ZeroFillByWord(&eS200AC80, 88);
    ZeroFillByWord(*(v4 + oToolkit_SubmenuPtr), 128);
}


// 0x804a304
int __noreturn ChipTraderControl()
{
    int v0; // r8

    (*(&JumpOffset804A33C + sSubmenu.unk_00))();
    sub_80465BC();
    sub_80465F8();
    sub_804AFB8();
    sub_804AFE4();
    GetRNG2();
    return v0;
}


// 0x804a360
void __fastcall __noreturn sub_804A360(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r2
    int v11; // r3
    int v12; // r0
    int v13; // r1

    zeroFillVRAM();
    ZeroFill_byte_3001960(v6, v7, v8, v9);
    ZeroFillGFX30025c0();
    sub_80015FC(16);
    sub_8046664();
    ZeroFillByWord(word_202A020, &dword_3C0);
    sub_8120A88();
    v12 = sub_811FE7C(&unk_202A3E0, 1, v10, v11);
    *(v4 + 40) = v12;
    sub_8120018(&unk_202A3E0, v12, 5, 4);
    v13 = *(v5 + oToolkit_Unk2001c04_Ptr);
    *(v13 + 2) = 5;
    *(v13 + 3) = 4;
    sub_804A61C();
}


// 0x804a3fc
void __noreturn sub_804A3FC()
{
    MenuControl *menu; // r5
    Toolkit *tk; // r10
    char zf; // zf
    int v3; // r1
    int v4; // r2

    IsPaletteFadeActive();
    if ( !zf )
    {
        menu->unk_03 = 0;
        sub_804AAA4();
        if ( !zf || (sub_804AAD0(), !zf) )
LABEL_11:
            sub_804A8F4();
        JoypadKeyPressed();
        if ( !zf )
        {
            PlaySoundEffect(156, v3, v4);
            menu->unk_00 = 24;
            menu->jo_01 = 0;
            goto LABEL_11;
        }
        menu->unk_03 = 4;
        sub_804AB10();
    }
    if ( menu->unk_28 )
        sub_811F7F8(tk->joystick->keyPress, 7u, 0, 10);
    goto LABEL_11;
}


// 0x804a460
void __fastcall __noreturn sub_804A460(int a1)
{
    sub_804A8F4();
}


// 0x804a4d4
int sub_804A4D4()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( !v1 )
    {
        chatbox_check_eFlags2009F38(32);
        if ( !v1 )
        {
            if ( chatbox_8045F4C() )
            {
                *v0 = 4;
                *(v0 + 3) = 0;
                sub_804AF20(*(v0 + 30));
            }
            else
            {
                *v0 = 16;
                engine_setScreeneffect(12, 16);
            }
        }
    }
    sub_804AA58();
    return 0;
}


// 0x804a514
void __fastcall __noreturn sub_804A514(int a1)
{
    int v1; // r5
    int v2; // r10
    char v3; // zf

    sub_804AAD0();
    if ( !v3 )
    {
        sub_804AA58();
        sub_804A8F4();
    }
    sub_804AE04();
    if ( v3 )
        *(v1 + 52) = sub_811FA22(*(*(v2 + oToolkit_JoypadPtr) + 4), 7, 1, *(v1 + 52));
    sub_804AE50();
}


// 0x804a54c
int sub_804A54C()
{
    int v0; // r5

    (*(&off_804A564 + *(v0 + 1)))();
    return sub_804AA58();
}


// 0x804a574
int sub_804A574()
{
    int v0; // r5
    int v1; // r2
    int result; // r0

    v1 = *(&unk_202A3E0 + 8 * (*(v0 + 42) + *(v0 + 46)) + 7);
    sub_811980C((v1 << 16) >> 23, v1 & 0x7F, 0, 0);
    sub_8119854(-40, 88, 0);
    *(v0 + 1) = 4;
    result = 0;
    *(v0 + 24) = 0;
    return result;
}


// 0x804a5b4
int sub_804A5B4()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 24) + 16;
    if ( v1 > 40 )
    {
        *(v0 + 1) = 8;
        v1 = 40;
    }
    *(v0 + 24) = v1;
    return sub_8119854(v1, 88, 0);
}


// 0x804a5d4
void sub_804A5D4()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    JoypadKeyPressed();
    if ( !v3 )
    {
        *(v0 + 1) = 12;
        PlaySoundEffect(158, v1, v2);
    }
}


// 0x804a5ec
int sub_804A5EC()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 24) - 16;
    if ( v1 < -40 )
    {
        sub_811980C(0, 0, 0, 0);
        *v0 = 4;
        v1 = -40;
    }
    *(v0 + 24) = v1;
    return sub_8119854(v1, 88, 0);
}


// 0x804a61c
void __noreturn sub_804A61C()
{
    int v0; // r6
    int v1; // r7
    char (*v2)[32]; // r0
    int v3; // r7
    int v4; // r1
    signed int v5; // r1

    v0 = 0;
    v1 = 0;
    do
    {
        v2 = *(&off_804A69C + v1);
        v3 = v1 + 4;
        v4 = *(&off_804A69C + v3);
        v1 = v3 + 4;
        *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
        v0 += 4;
        v5 = 0;
        do
        {
            *(&unk_20096E0 + v0) = *(&off_804A69C + v1);
            v0 += 4;
            v1 += 4;
            ++v5;
        }
        while ( v5 < 2 );
    }
    while ( v1 < 64 );
    *(&unk_20096E0 + v0) = 0;
    decompAndCopyData(&unk_20096E0);
    decompAndCopyData(&initRefs_804A6E4);
    CopyBackgroundTiles(0, 0, 1, &unk_2020A20, 30, dword_14);
    CopyBackgroundTiles(-30, 2, 1, &unk_201CA20, 60, &dword_10 + 1);
    CopyBackgroundTiles(19, 2, 1, &unk_2035C8C, 11, &dword_10 + 1);
}


// 0x804a7c0
void __noreturn menuCopyBackgroundTiles_804A7C0()
{
    MenuControl *menu; // r5

    sub_81200EC(menu->unk_2E, &unk_202A3E0, eTileIds20345FC);
    CopyBackgroundTiles(3, 4, 2, eTileIds20345FC, 8, &dword_C + 2);
    sub_8120390(menu->unk_2E, &unk_202A3E0, eTileIds20346DC, byte_804A264);
    CopyBackgroundTiles(1, 4, 2, eTileIds20346DC, 2, &dword_C + 2);
    sub_81203E4(menu->unk_2E, &unk_202A3E0, eTileIds2034714, &dword_35C | 0xA000);
    CopyBackgroundTiles(11, 4, 2, eTileIds2034714, 2, &dword_C + 2);
    sub_8120458(menu->unk_2E, &unk_202A3E0, eTileIds203474C, 45590);
    CopyBackgroundTiles(13, 4, 2, eTileIds203474C, 1, &dword_C + 2);
    sub_81204C4(menu->unk_2E, &unk_202A3E0, eTileIds2034768, 37711);
    CopyBackgroundTiles(14, 4, 2, eTileIds2034768, 2, &dword_C + 2);
    sub_8120618(menu->unk_2E, &unk_202A3E0, eTileIds20347A0, byte_200 | 0xB000);
    CopyBackgroundTiles(16, 4, 2, eTileIds20347A0, 2, &dword_C + 2);
}


// 0x804a8f4
void __noreturn sub_804A8F4()
{
    int v0; // r5
    int v1; // r7
    signed int v2; // r5

    v1 = v0;
    sub_81200EC(*(v0 + 36), word_202A020, &unk_2034458);
    v2 = dword_200ACB0;
    if ( dword_200ACB0 > 7 )
        v2 = 7;
    CopyBackgroundTiles(20, 4, 2, &unk_2034458, 8, 2 * v2);
    sub_8120458(*(v1 + 36), word_202A020, &unk_20345A8, 45590);
    CopyBackgroundTiles(28, 4, 2, &unk_20345A8, 1, &dword_C + 2);
}


// 0x804a970
int sub_804A970()
{
    int v0; // r5
    __int16 *v1; // r7
    int v2; // r6
    int v3; // r4
    int result; // r0

    v1 = word_202A020;
    v2 = *(v0 + 30);
    v3 = 0;
    do
    {
        TakeChips(*(v1 + 7) << 16 >> 23, *(v1 + 7) & 0x7F, 1);
        result = sub_8048D60(9, *v1);
        v1 += 16;
        ++v3;
    }
    while ( v3 < v2 );
    return result;
}


// 0x804a9a0
int sub_804A9A0()
{
    return sub_804A9F0(0, 32, 42, 19);
}


// 0x804a9c4
int sub_804A9C4()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 36);
    if ( *(v0 + 36) )
        result = sub_804A9F0(-16, 32, 0, 18);
    return result;
}


// 0x804a9f0
int __fastcall sub_804A9F0(int a1, int a2, int a3, int a4)
{
    int *v4; // r4
    int v5; // r5
    int v6; // r0
    int v7; // r2
    unsigned int v8; // ST14_4
    int v9; // r0
    int v10; // r1
    int result; // r0
    int v12; // [sp+8h] [bp-1Ch]

    v12 = a4;
    v6 = a1 << 16;
    if ( a3 )
        v7 = *(v5 + a3);
    else
        v7 = 0;
    v8 = *(v5 + a4);
    v9 = sub_811FAF4(v6 | (a2 + 16 * v7), 0x20002u, v8 & 0xF, v4);
    v10 = (v8 >> 4) - 1;
    if ( v8 >> 4 == 1 )
        *(v5 + v12) = sub_8120CC8(v9, &dword_804A2AC);
    result = *(v5 + v12) & 0xF | 16 * v10;
    *(v5 + v12) = result;
    return result;
}


// 0x804aa58
int sub_804AA58()
{
    return sub_804AA74(146, 28, 40, 46);
}


// 0x804aa74
int __fastcall sub_804AA74(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    return sub_811FA98((a1 << 16) | a2, 0x20002u, *(v4 + a3), *(v4 + a4));
}


// 0x804aaa4
void sub_804AAA4()
{
    MenuControl *menu; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    JoypadKeyPressed();
    if ( !v3 )
    {
        if ( *&menu->unk_1E )
        {
            sub_804AF20(*&menu->unk_1E);
        }
        else
        {
            PlaySoundEffect(104, v1, v2);
            menu->unk_00 = 8;
            engine_setScreeneffect(12, 16);
        }
    }
}


// 0x804aad0
void sub_804AAD0()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    JoypadKeyPressed();
    if ( !v3 || *v0 == 20 && (JoypadKeyPressed(), !v3) )
    {
        if ( *v0 == 20 )
        {
            *v0 = 4;
            PlaySoundEffect(131, v1, v2);
        }
        else
        {
            *v0 = 20;
            *(v0 + 52) = 0;
            PlaySoundEffect(129, v1, v2);
        }
    }
}


// 0x804ab10
signed int sub_804AB10()
{
    unsigned __int8 *v0; // r5
    signed int v1; // r6
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2

    v1 = 0;
    JoypadKeyPressed();
    if ( !v2 )
    {
        v1 = 1;
        v3 = (v0[3] >> 2) + 1;
        v0[68] = v3;
        sub_804AB4C(v3);
        v0[69] = v0[68];
        sub_804AB6C();
        PlaySoundEffect(129, v4, v5);
    }
    return v1;
}


// 0x804ab4c
int __fastcall sub_804AB4C(int result)
{
    int v1; // r4
    int v2; // r5
    __int16 v3; // r1
    __int16 v4; // r2

    v3 = *(v2 + 42);
    v4 = *(v2 + 46);
    if ( result == 1 )
    {
        v3 = *(v2 + 32);
        v4 = *(v2 + 36);
    }
    *(v2 + 64) = result;
    *(v2 + 60) = v3;
    *(v2 + 62) = v4;
    *(v2 + v1 + 2) = v3 + v4;
    return result;
}


// 0x804ab6c
int sub_804AB6C()
{
    int v0; // r5
    int *v1; // r1
    __int16 *v2; // r7
    int v3; // r2
    int v4; // r7
    char *v5; // r1
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int v9; // r1
    int v10; // r7
    unsigned int v11; // r2
    unsigned int v12; // r6
    int v13; // r0
    int v14; // r6
    int v15; // r1
    int v16; // r2
    int v17; // r3
    int v18; // r0
    int v19; // r1
    int v20; // r3
    int v21; // r2
    int v22; // r2
    int v23; // r1
    int v24; // r2
    int v25; // r3
    int v26; // r0
    int result; // r0

    v1 = dword_804ACB0;
    v2 = dword_804ACB0[*(v0 + 68)];
    v3 = *(v0 + 70);
    if ( word_202A020 == v2 )
    {
        v4 = &v2[16 * v3];
        if ( *(v4 + 20) )
        {
            if ( !sub_804AD60(*(v4 + 28)) )
            {
                v5 = &unk_202A3E0 + 32 * *(v0 + 40);
                *(v4 + 22) = 1;
                CopyByEightWords(v4, v5, 0x20u);
                ++*(v0 + 40);
            }
            ZeroFillByEightWords(v4, 32);
            *(v0 + 23) = sub_804ACC8(*(v0 + 30), v6, v7, v8);
            v9 = *(v0 + 30);
            sub_804ADD0();
        }
        else
        {
            PlaySoundEffect(105, dword_804ACB0, v3);
        }
    }
    else
    {
        v10 = &v2[16 * v3];
        v11 = *(v10 + 20);
        v12 = v11 >> 16;
        if ( v11 >> 16 )
        {
            v1 = 0;
            v11 = 32 * dword_200ACB0;
            while ( *(word_202A020 + v1) )
            {
                v1 += 8;
                if ( v1 >= v11 )
                    goto LABEL_11;
            }
            v13 = *(v0 + 30) + 1;
            *(v0 + 30) = v13;
            if ( v13 > 7 )
                *(v0 + 36) = v13 - 7;
            v14 = v12 - 1;
            if ( v14 )
            {
                *(v10 + 20) = (v14 << 16) | *(v10 + 20) & 0xFFFF;
                CopyByEightWords(v10, word_202A020 + v1, 0x20u);
                *(v0 + 23) = sub_804ACC8(*(v0 + 30), v23, v24, v25);
                sub_804ADD0();
            }
            else
            {
                CopyByEightWords(v10, word_202A020 + v1, 0x20u);
                *(v0 + 23) = sub_804ACC8(*(v0 + 30), v15, v16, v17);
                v18 = v10 + 32;
                v19 = v10;
                v20 = *(v0 + 46) + *(v0 + 42);
                v21 = *(v0 + 40) - 1;
                *(v0 + 40) = v21;
                v22 = v21 - v20;
                if ( !v22 )
                    sub_804AD98();
                sub_804ADE0(v18, v19, v22, v20);
                sub_804ADB0();
                sub_804ADD0();
            }
            if ( dword_200ACB0 <= *(v0 + 30) )
            {
                v26 = 2;
                if ( dword_200ACB0 != 3 )
                    v26 = 8;
                sub_804AF10(v26);
                *v0 = 12;
            }
        }
        else
        {
LABEL_11:
            PlaySoundEffect(105, v1, v11);
        }
    }
    *(v0 + 60) = 0x7FFF;
    *(v0 + 68) = 0;
    result = 0;
    *(v0 + 72) = 0;
    return result;
}


// 0x804acc8
int __fastcall sub_804ACC8(int a1, int a2, int a3, int a4)
{
    __int16 *v4; // r7
    __int16 *v5; // r5
    int v6; // r4
    int v7; // r0
    __int16 *v8; // r7
    int v9; // r4
    int v11; // [sp+0h] [bp-18h]

    v11 = 0;
    v4 = word_202A020;
    v5 = &word_202A020[16 * a1];
    ZeroFillByEightWords(byte_20343E0, &dword_78);
    do
    {
        v6 = 0;
        v7 = *v4;
        if ( *v4 )
        {
            ++v11;
            while ( *&byte_20343E0[v6] )
            {
                if ( v7 == *&byte_20343E0[v6] )
                {
                    ++*&byte_20343E0[v6 + 2];
                    goto LABEL_9;
                }
                v6 += 4;
            }
            *&byte_20343E0[v6] = v7;
            byte_20343E0[v6 + 2] = 1;
        }
LABEL_9:
        v4 += 16;
    }
    while ( v4 < v5 );
    v8 = word_202A020;
    do
    {
        v9 = 0;
        if ( v8[10] )
        {
            while ( *&byte_20343E0[v9] && v8[10] != *&byte_20343E0[v9] )
                v9 += 4;
            *(v8 + 5) = (*&byte_20343E0[v9 + 2] << 16) | *(v8 + 5) & 0xFFFF;
        }
        v8 += 16;
    }
    while ( v8 < v5 );
    return v11;
}


// 0x804ad60
signed int __fastcall sub_804AD60(int a1)
{
    int v1; // r5
    signed int v2; // r4
    _WORD *v3; // r7
    char *v4; // r2
    int v5; // r7

    v2 = 0;
    if ( *(v1 + 40) )
    {
        v3 = &unk_202A3E0;
        v4 = &unk_202A3E0 + 32 * *(v1 + 40);
        do
        {
            if ( !v3[10] )
                break;
            if ( a1 == v3[14] )
            {
                v5 = (v3 + 1);
                a1 = *(v5 + 20) + 1;
                *(v5 + 20) = a1;
                v3 = (v5 - 2);
                v2 = 1;
            }
            v3 += 16;
        }
        while ( v3 < v4 );
    }
    return v2;
}


// 0x804ad98
void sub_804AD98()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r0
    int v4; // r0
    int v5; // r0

    v1 = *(v0 + 42);
    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if ( (v3 < 0) ^ v2 )
    {
        v4 = *(v0 + 46);
        v2 = __OFSUB__(v4, 1);
        v5 = v4 - 1;
        if ( !((v5 < 0) ^ v2) )
            *(v0 + 46) = v5;
    }
    else
    {
        *(v0 + 42) = v3;
    }
}


// 0x804adb0
void sub_804ADB0()
{
    unsigned __int16 *v0; // r5
    signed int v1; // r1
    int v2; // r0
    __int16 v3; // r1

    v1 = v0[20];
    if ( v1 >= 7 )
    {
        v2 = v0[23] + 7;
        if ( v2 > v1 )
        {
            v3 = v2 - v1;
            v0[23] -= v3;
            v0[21] += v3;
        }
    }
}


// 0x804add0
_BYTE *sub_804ADD0()
{
    int v0; // r10
    _BYTE *result; // r0

    result = *(v0 + oToolkit_Unk2001c04_Ptr);
    *result = -1;
    result[2] = -1;
    return result;
}


// 0x804ade0
void __fastcall sub_804ADE0(int a1, int a2, int a3, int a4)
{
    u32 *v4; // r4
    int v5; // r6

    v4 = a2;
    v5 = a3;
    if ( a3 )
    {
        CopyByEightWords(a1, a2, 32 * a3);
        v4 += 8 * v5;
    }
    ZeroFillByEightWords(v4, 32);
}


// 0x804ae04
void sub_804AE04()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    int v3; // r2
    char v4; // zf
    int v5; // r0
    int v6; // r2
    int v7; // r3
    int v8; // r3

    JoypadKeyPressed();
    if ( !v4 )
    {
        PlaySoundEffect(129, v2, v3);
        v5 = *(v1 + oToolkit_Unk2001c04_Ptr);
        v6 = *(v0 + 52);
        v7 = *(v5 + 2);
        *(v5 + 2) = v6;
        if ( v6 == v7 )
            v8 = *(v5 + 3) ^ 4;
        else
            v8 = *(v6 + 50358688) ^ 4;
        *(v5 + 3) = v8;
        sub_8120018(&unk_202A3E0, *(v0 + 40), v6, v8);
    }
}


// 0x804ae50
void __noreturn sub_804AE50()
{
    CopyBackgroundTiles(21, 2, 0, &unk_203486C, 8, &dword_10 + 1);
}


// 0x804ae68
int sub_804AE68()
{
    int v0; // r5
    unsigned int v1; // ST00_4
    int v2; // r0
    int v3; // r1
    int result; // r0

    v1 = *(v0 + 21);
    v2 = sub_811FAF4((16 * *(v0 + 52) + 32) | 0xA40000, 2u, v1 & 0xF, byte_804A29C);
    v3 = (v1 >> 4) - 1;
    if ( v1 >> 4 == 1 )
        *(v0 + 21) = sub_8120CC8(v2, &dword_804A2AC);
    result = *(v0 + 21) & 0x15 | 16 * v3;
    *(v0 + 21) = result;
    return result;
}


// 0x804aec4
signed int __fastcall sub_804AEC4(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int v4; // r10
    int v5; // r0
    int v6; // r1
    int v7; // r2
    signed int result; // r0

    if ( a1 )
    {
        *(*(v4 + oToolkit_ChatboxPtr) + 76) = a2;
        if ( a3 == 5 )
        {
            v5 = 16;
        }
        else
        {
            v5 = 7;
            if ( a3 == 1 )
                v5 = 6;
        }
    }
    else if ( a3 == 5 )
    {
        v5 = 15;
    }
    else if ( a3 )
    {
        if ( a3 == 1 )
            v5 = 4;
        else
            v5 = 5;
    }
    else
    {
        v5 = 3;
    }
    sub_804AF10(v5);
    PlaySoundEffect(105, v6, v7);
    v3[13] = v3[3];
    result = 8;
    v3[2] = 8;
    return result;
}


// 0x804af10
void __fastcall sub_804AF10(int a1)
{
    chatbox_runScript_803FD78(TextScriptChipTrader86C580C, a1);
}


// 0x804af20
int __fastcall sub_804AF20(signed int a1)
{
    int v1; // r5
    signed int v2; // r7
    int v3; // r0
    int v4; // r2
    int result; // r0
    int v6; // r1

    v2 = a1;
    if ( a1 <= 7 )
    {
        *(v1 + 32) = a1 - 1;
        *(v1 + 36) = 0;
    }
    else
    {
        *(v1 + 36) = a1 - 7;
        *(v1 + 32) = 6;
    }
    v3 = (*(v1 + 3) >> 2) + 1;
    *(v1 + 68) = v3;
    sub_804AB4C(v3);
    *(v1 + 69) = *(v1 + 68);
    sub_804AB6C();
    --*(v1 + 30);
    if ( v2 > 7 )
        --*(v1 + 36);
    result = dword_200ACB0 - 1;
    v6 = *(v1 + 30);
    if ( dword_200ACB0 - 1 != v6 )
        result = PlaySoundEffect(131, v6, v4);
    return result;
}


// 0x804af84
int sub_804AF84()
{
    int v0; // r7
    int v1; // r6
    int result; // r0
    int v3; // r1
    char v4; // zf
    int v5; // r5

    sub_80465A0(byte_804A2B0);
    v1 = 0;
    do
    {
        result = getStructFrom2008450(v1);
        if ( !v4 )
        {
            if ( !v1 )
                v0 = v3;
            v5 = v3;
            result = sprite_setCoordinates(-40, 88);
            *(v5 + 20) = v0;
        }
        ++v1;
    }
    while ( v1 < 3 );
    return result;
}


// 0x804afb8
void sub_804AFB8()
{
    sub_81202FC(10, word_2034814, 11, 12);
    CopyBackgroundTiles(1, 2, 2, word_2034814, 20, &byte_0[2]);
}


// 0x804afe4
int sub_804AFE4()
{
    int v0; // r5

    sub_8117084(*(v0 + 30), dword_200ACB0, 3);
    return sub_8116FDC(&loc_CC, 27, 3);
}


// 0x804bd00
void sub_804BD00()
{
    int v0; // r1
    int v1; // r2
    int v2; // r3
    int v3; // r0
    int v4; // r0
    int v5; // r1
    unsigned __int8 *v6; // r0
    int v7; // r2
    int v8; // r3
    char v9; // zf
    signed int v10; // [sp-8h] [bp-1Ch]
    int v11; // [sp-4h] [bp-18h]

    dword_200ACCC = sub_804BFF0();
    dword_200ACD0 = v0;
    if ( sub_804BD7C(&dword_804B008, 2) )
        goto LABEL_3;
    while ( !sub_804BDB4(dword_200ACCC, algn_200ACB4) )
    {
LABEL_3:
        if ( sub_804BE1C(dword_200ACCC, algn_200ACB4, v1, v2) )
            break;
    }
    v3 = sub_804BD7C(dword_200ACD0, 5);
    v4 = sub_804BE88(off_804B018[v3], algn_200ACB4, v3);
    v10 = v4;
    v11 = v5;
    v6 = getChip8021DA8(v4);
    sub_804BEEC(v10, v11, v6[5]);
    if ( v9 )
        sub_804BF94(dword_200ACCC, v11, v7, v8);
    else
        sub_804BF18(v10, v11, dword_200ACCC);
}


// 0x804bd7c
int __fastcall sub_804BD7C(int a1, int a2)
{
    int v2; // ST08_4
    int v3; // r7
    int v4; // r1
    int v9; // r2
    int v10; // r0
    int v12; // [sp+0h] [bp-10h]

    v12 = a1;
    v2 = a2;
    GetRNG2();
    v3 = v2 - 1;
    v4 = 0;
    do
    {
        v4 += *(v12 + v3);
        _VF = __OFSUB__(v3--, 1);
    }
    while ( !((v3 < 0) ^ _VF) );
    __asm { SVC         6 }
    v9 = 0;
    v10 = 0;
    while ( 1 )
    {
        v10 += *(v12 + v9);
        if ( v10 >= v4 )
            break;
        ++v9;
    }
    return v9;
}


// 0x804bdb4
unsigned int __fastcall sub_804BDB4(_WORD *a1, _DWORD *a2)
{
    int v2; // r5
    _DWORD *v3; // r8
    _WORD *v4; // r9
    _WORD *v5; // r6
    int *v6; // r7
    int v7; // r3
    int v8; // r3
    char v9; // zf
    int v10; // r2
    unsigned int result; // r0
    int v12; // [sp-10h] [bp-18h]
    int v13; // [sp-Ch] [bp-14h]

    *a2 = 0;
    a2[1] = 0;
    v3 = a2;
    v4 = a1;
    ZeroFillByWord(dword_2035800, 4096);
    v5 = v4;
    v6 = dword_2035800;
    v7 = 0;
    while ( *v5 )
    {
        v12 = *v5;
        v13 = v7;
        TestEventFlag(v12 + 7712);
        v8 = v13;
        if ( !v9 )
        {
            *v6 = v12;
            *(v6 + 2) = v13;
            v10 = *(getChip8021DA8(v12) + 5);
            ++*(v3 + v10);
            v8 = v13;
            *(v6 + 3) = v10;
            ++v6;
        }
        v7 = v8 + 1;
        v5 += 3;
    }
    result = (v6 - dword_2035800) >> 2;
    *(v2 + 72) = result;
    return result;
}


// 0x804be1c
unsigned int __fastcall sub_804BE1C(_WORD *a1, _DWORD *a2, int a3, int a4)
{
    int v4; // r5
    _DWORD *v5; // r8
    _WORD *v6; // r9
    int v7; // r3
    _WORD *v8; // r6
    int *v9; // r7
    int v10; // r3
    char v11; // zf
    int v12; // r2
    unsigned int result; // r0
    int v14; // [sp-10h] [bp-20h]
    int v15; // [sp-Ch] [bp-1Ch]

    *a2 = 0;
    a2[1] = 0;
    v5 = a2;
    v6 = a1;
    ZeroFillByWord(dword_2035800, 4096);
    v8 = v6;
    v9 = dword_2035800;
    while ( *v8 )
    {
        v14 = *v8;
        v15 = v7;
        TestEventFlag(v14 + 7712);
        v10 = v15;
        if ( v11 )
        {
            *v9 = v14;
            *(v9 + 2) = v15;
            v12 = *(getChip8021DA8(v14) + 5);
            ++*(v5 + v12);
            v10 = v15;
            *(v9 + 3) = v12;
            ++v9;
        }
        v7 = v10 + 1;
        v8 += 3;
    }
    result = (v9 - dword_2035800) >> 2;
    *(v4 + 72) = result;
    return result;
}


// 0x804be88
int __fastcall sub_804BE88(int a1, int a2, int a3)
{
    int v3; // r5
    int i; // r7
    int v5; // r8
    int v6; // r0
    int v7; // r2
    int *v8; // r6
    int *v9; // r7
    int *v14; // r7
    int result; // r0
    int v16; // r1

    for ( i = 0; !*(a2 + *(a1 + i)); ++i )
        ;
    v5 = *(a1 + i);
    ZeroFillByWord(dword_2034800, 4096);
    v6 = *(v3 + 72);
    v7 = 0;
    v8 = dword_2035800;
    v9 = dword_2034800;
    do
    {
        if ( *(v8 + 3) == v5 )
        {
            *v9 = *v8;
            ++v9;
            ++v7;
        }
        ++v8;
        _VF = __OFSUB__(v6--, 1);
    }
    while ( !(((v6 < 0) ^ _VF) | (v6 == 0)) );
    *(v3 + 72) = v7;
    GetRNG2();
    __asm { SVC         6 }
    v14 = &dword_2034800[*(v3 + 72)];
    result = *v14;
    v16 = *(v14 + 2);
    return result;
}


// 0x804beec
signed int __fastcall sub_804BEEC(signed int a1, int a2, signed int a3)
{
    int v3; // r0
    signed int result; // r0

    if ( a3 < 3 )
        goto LABEL_9;
    v3 = GetTotalChipCount(a1);
    if ( v3 >= 4 )
        v3 = 4;
    if ( sub_804BD7C(off_804B048[v3], 2) )
LABEL_9:
        result = 1;
    else
        result = 0;
    return result;
}


// 0x804bf18
void __fastcall sub_804BF18(signed int a1, int a2, unsigned __int16 *a3)
{
    int v3; // r5
    unsigned __int16 *v4; // r7
    int v5; // r2
    int v6; // r3
    int v7; // r4
    int v8; // r1
    signed int v9; // ST00_4
    bool v10; // zf
    int v11; // r1
    int v12; // r1
    char v13; // [sp-14h] [bp-20h]
    int v14; // [sp-10h] [bp-1Ch]
    int v15; // [sp-Ch] [bp-18h]
    int v16; // [sp-8h] [bp-14h]

    while ( *a3 != a1 )
        a3 += 3;
    v4 = a3;
    v5 = 2;
    v6 = 0;
    v7 = 0;
    do
    {
        v8 = *(v4 + v5);
        if ( v8 == 255 )
            break;
        v9 = a1;
        v13 = *(v4 + v5);
        v14 = v5;
        v15 = v6;
        v10 = GetChipCountOfCode(a1, v8) == 0;
        a1 = v9;
        v6 = v15;
        if ( v10 )
        {
            *(v3 + v7++ + 64) = v13;
        }
        else
        {
            *(v3 + v15 + 56) = v13;
            v6 = v15 + 1;
        }
        v5 = v14 + 1;
    }
    while ( v14 + 1 <= 5 );
    v16 = v6;
    if ( sub_804BD7C(byte_804B068, 2) )
    {
        if ( v16 )
        {
LABEL_11:
            v11 = *(v3 + sub_804BD7C(byte_804B06A, v16) + 56);
            return;
        }
    }
    else if ( !v7 )
    {
        goto LABEL_11;
    }
    v12 = *(v3 + sub_804BD7C(byte_804B06A, v7) + 64);
}


// 0x804bf94
int __fastcall sub_804BF94(__int16 *a1, int a2, int a3, int a4)
{
    int v4; // r5
    __int16 *v5; // r8
    __int16 *v6; // r6
    int *v7; // r7
    __int16 v8; // r0
    signed int v9; // r1
    int v10; // r3
    int *v15; // r7
    int result; // r0
    int v17; // r1

    v5 = a1;
    ZeroFillByWord(dword_2035800, 4096);
    v6 = v5;
    v7 = dword_2035800;
    while ( 1 )
    {
        v8 = *v6;
        if ( !*v6 )
            break;
        v9 = 2;
        do
        {
            v10 = *(v6 + v9);
            if ( v10 == 255 )
                break;
            *v7 = v8;
            *(v7 + 2) = v10;
            ++v7;
            ++v9;
        }
        while ( v9 <= 5 );
        v6 += 3;
    }
    *(v4 + 72) = (v7 - dword_2035800) >> 2;
    GetRNG2();
    __asm { SVC         6 }
    v15 = &dword_2035800[*(v4 + 72)];
    result = *v15;
    v17 = *(v15 + 2);
    return result;
}


// 0x804bff0
int sub_804BFF0()
{
    int v0; // r10
    int *v1; // r2
    signed int v2; // r3
    int result; // r0
    int v4; // r1

    v1 = &off_804C01C;
    v2 = 0;
    while ( 1 )
    {
        result = *v1;
        if ( *v1 == ((*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) << 8) | *(*(v0 + oToolkit_GameStatePtr)
                                                                                                                                                                 + oGameState_MapNumber)) )
            break;
        v1 += 3;
        v2 += 12;
        if ( v2 >= 60 )
            return result;
    }
    result = v1[1];
    v4 = v1[2];
    return result;
}


// 0x804c058
int sub_804C058()
{
    int v0; // r5

    return (*(&off_804C06C + *(v0 + 16)))();
}


// 0x804c074
unsigned int sub_804C074()
{
    int v0; // r10
    _WORD *v1; // r1
    unsigned int result; // r0

    ClearEventFlagFromImmediate(4, 254);
    v1 = *(v0 + oToolkit_RenderInfoPtr);
    result = *v1 & ~&byte_400;
    *v1 = result;
    return result;
}


// 0x804c08c
void sub_804C08C()
{
    _BYTE *v0; // r5
    int v1; // r10
    _WORD *v2; // r1
    _BYTE *v3; // r1
    char v4; // zf

    (loc_8000AC8)(byte_869D76C, 100715520, &loc_C0);
    (loc_8000AC8)(byte_869D74C, byte_3001B00, 32);
    v2 = *(v1 + oToolkit_RenderInfoPtr);
    v2[4] = 7689;
    v2[11] = 0;
    v2[10] = 0;
    v3 = *(v1 + oToolkit_Unk2009740_Ptr);
    *v3 = 68;
    v3[1] = 59;
    v3[2] = 0;
    v3[3] = 16;
    v0[20] = 10;
    v0[19] = 0;
    v0[21] = 0;
    v0[22] = 0;
    v0[23] = 0;
    v0[17] = 0;
    v0[24] = 2;
    TestEventFlagFromImmediate(4, 251);
    if ( !v4 )
    {
        TestEventFlagFromImmediate(4, 254);
        if ( !v4 )
            sub_804C2D0();
    }
    sub_804C144();
    v0[16] = 4;
    SetEventFlagFromImmediate(4, 254);
    sub_804C11C();
}


// 0x804c11c
void sub_804C11C()
{
    char v0; // zf

    sub_811EBE0();
    if ( v0 )
    {
        s_2011C50_8036F40();
        if ( v0 )
        {
            sub_8036F58();
            if ( v0 )
            {
                chatbox_check_eFlags2009F38(128);
                if ( v0 )
                {
                    sub_804C144();
                    sub_804C298();
                }
            }
        }
    }
}


// 0x804c144
void sub_804C144()
{
    _BYTE *v0; // r5
    int v1; // r10
    signed int v2; // r6
    int v3; // r0

    **(v1 + oToolkit_RenderInfoPtr) |= &byte_400;
    if ( word_2013974 <= 36 )
    {
        if ( word_2013974 <= 0 )
        {
            **(v1 + oToolkit_RenderInfoPtr) = 4;
            v0[17] = 0;
            return;
        }
        sub_804C244();
    }
    else
    {
        sub_804C214();
    }
    sub_804C1D4();
    v2 = v0[19];
    v3 = v0[20] - 1;
    v0[20] = v3;
    if ( !v3 )
    {
        v0[20] = 10;
        if ( v2 >= 7 )
            v2 = 0;
        else
            ++v2;
        v0[19] = v2;
    }
    CopyBackgroundTiles(0, 0, 2, off_804C1B4[v2], 32, &dword_20);
}


// 0x804c1d4
int sub_804C1D4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r2
    int v3; // r4
    __int16 v4; // r0
    __int16 v5; // r3
    int v6; // r0
    int v7; // r3
    int result; // r0

    v2 = byte_804C20C[byte_2013965];
    v3 = *(v1 + oToolkit_RenderInfoPtr);
    v4 = *(v3 + 20);
    v5 = *(v0 + 21) + *(&dword_804C208 + byte_2013965);
    *(v0 + 21) = v5;
    *(v3 + 20) = v4 + v5;
    v6 = *(v3 + 22);
    v7 = *(v0 + 22) + v2;
    *(v0 + 22) = v7;
    result = v6 + v7;
    *(v3 + 22) = result;
    return result;
}


// 0x804c214
int sub_804C214()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    _BYTE *v3; // r4
    signed int v4; // r0

    result = *(v0 + 24) - 1;
    *(v0 + 24) = result;
    if ( !result )
    {
        *(v0 + 24) = 2;
        v3 = *(v1 + oToolkit_Unk2009740_Ptr);
        v4 = v3[2];
        if ( v4 < 16 )
        {
            v3[2] = v4 + 1;
            result = v3[3];
            if ( v3[3] )
                v3[3] = --result;
        }
        else
        {
            result = 4;
            *v3 = 4;
        }
    }
    return result;
}


// 0x804c244
int sub_804C244()
{
    int v0; // r5
    int v1; // r10
    int v2; // r6
    _BYTE *v3; // r1
    int result; // r0
    int v5; // r4

    v2 = *(v0 + 17);
    if ( v2 <= 0 )
    {
        v3 = *(v1 + oToolkit_Unk2009740_Ptr);
        result = *(v1 + 3);
        if ( result >= 16 )
            return result;
        *v3 = 68;
        v3[1] = 59;
        v3[2] = 16;
        v3[3] = 0;
        *(v0 + 24) = 2;
        *(v0 + 17) = v2 + 1;
    }
    result = *(v0 + 24) - 1;
    *(v0 + 24) = result;
    if ( !result )
    {
        *(v0 + 24) = 2;
        v5 = *(v1 + oToolkit_Unk2009740_Ptr);
        result = *(v5 + 3);
        if ( result < 16 )
        {
            *(v5 + 3) = result + 1;
            result = *(v5 + 2);
            if ( *(v5 + 2) )
                *(v5 + 2) = --result;
        }
    }
    return result;
}


// 0x804c298
int sub_804C298()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r2
    int v3; // r2
    int result; // r0

    byte_2000ACF = v0[16];
    byte_2000AD1 = v0[17];
    byte_2000AD3 = v0[19];
    byte_2000AD5 = v0[21];
    byte_2000AD6 = v0[23];
    byte_2000AD7 = v0[24];
    v2 = *(v1 + oToolkit_RenderInfoPtr);
    word_2000ADA = *(v2 + 20);
    word_2000ADC = *(v2 + 22);
    v3 = *(v1 + oToolkit_Unk2009740_Ptr);
    byte_2000AD8 = *(v3 + 2);
    result = *(v3 + 3);
    byte_2000AD9 = *(v3 + 3);
    return result;
}


// 0x804c2d0
int sub_804C2D0()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r2
    char v3; // t1
    int v4; // r2
    int result; // r0

    v0[16] = byte_2000ACF;
    v0[17] = byte_2000AD1;
    v0[19] = byte_2000AD3;
    v0[21] = byte_2000AD5;
    v0[23] = byte_2000AD6;
    v0[24] = byte_2000AD7;
    v2 = *(v1 + oToolkit_RenderInfoPtr);
    *(v2 + 20) = word_2000ADA;
    *(v2 + 22) = word_2000ADC;
    v3 = *(v1 + 3);
    v4 = *(v1 + oToolkit_Unk2009740_Ptr);
    *(v4 + 2) = byte_2000AD8;
    result = byte_2000AD9;
    *(v4 + 3) = byte_2000AD9;
    return result;
}


// 0x804c30c
int sub_804C30C()
{
    int v0; // r5

    return (*(&off_804C320 + *(v0 + 16)))();
}


// 0x804c328
void sub_804C328()
{
    int v0; // r10
    _WORD *v1; // r1

    v1 = *(v0 + oToolkit_RenderInfoPtr);
    *v1 &= 0xF7FFu;
    v1[5] = 7947;
    **(v0 + oToolkit_Unk2009740_Ptr) = 8;
    JUMPOUT(&locret_804C3C2);
}


// 0x804c348
// write access to const memory has been detected, the output may be wrong!
int sub_804C348()
{
    int v0; // r5
    int v1; // r10
    _WORD *v2; // r1
    _BYTE *v3; // r1

    (loc_8000AC8)(byte_86A10D0, 100715008, &byte_320);
    (loc_8000AC8)(byte_86A10B0, byte_3001B00, 32);
    v2 = *(v1 + oToolkit_RenderInfoPtr);
    v2[5] = 7945;
    v2[13] = 0;
    v2[12] = 0;
    v3 = *(v1 + oToolkit_Unk2009740_Ptr);
    *v3 = 72;
    v3[1] = 55;
    v3[2] = 8;
    v3[3] = 16;
    *(v0 + 19) = 2;
    call_sub_3005EBA(0, 0, 3, 0);
    sub_804C3C4();
    LOBYTE(dword_30[0]) = 4;
    return sub_804C3BC();
}


// 0x804c3bc
void sub_804C3BC()
{
    sub_804C3C4();
}


// 0x804c3c4
void sub_804C3C4()
{
    int v0; // r10

    **(v0 + oToolkit_RenderInfoPtr) |= 0x800u;
    CopyBackgroundTiles(12, 0, 3, byte_86A13F0, 6, &dword_C);
}


// 0x804c404
int sub_804C404()
{
    int v0; // r5
    int v1; // r0

    v1 = 20 * *(v0 + 12);
    return (*(&off_804C420 + *(v0 + 16)))();
}


// 0x804c42c
int sub_804C42C()
{
    int v0; // r10
    _WORD *v1; // r1
    int result; // r0

    v1 = *(v0 + oToolkit_RenderInfoPtr);
    result = *v1 & 0xB7FF;
    *v1 = result;
    return result;
}


// 0x804c43c
int sub_804C43C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1

    (loc_8000AC8)(byte_86A1480, 100715264, dword_4C0);
    *(*(v1 + oToolkit_RenderInfoPtr) + 10) = 8066;
    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v2 + 9) = 63;
    *(v2 + 10) = 23;
    *(v0 + 16) = 4;
    return sub_804C478();
}


// 0x804c478
int sub_804C478()
{
    int v0; // r5
    int v1; // r7
    int v2; // r10
    int v3; // r2
    int v4; // r3
    int v6; // [sp+0h] [bp-20h]
    int v7; // [sp+4h] [bp-1Ch]
    int v8; // [sp+8h] [bp-18h]

    **(v2 + oToolkit_RenderInfoPtr) |= 0x4800u;
    v3 = *(v1 + 4);
    v4 = *(v1 + 8) - (*(v0 + 13) << 16);
    v6 = *v1;
    v7 = v3;
    v8 = v4;
    return (loc_80024D8)(&v6, *(v1 + 12), *(v1 + 16), *(v1 + 17), v6, v3, v4);
}


// 0x804c510
int sub_804C510()
{
    int v0; // r5

    return (*(&off_804C524 + *(v0 + 16)))();
}


// 0x804c52c
int sub_804C52C()
{
    int v0; // r10
    _WORD *v1; // r1
    int result; // r0

    v1 = *(v0 + oToolkit_RenderInfoPtr);
    result = *v1 & 0xF7FF;
    *v1 = result;
    return result;
}


// 0x804c53c
void sub_804C53C()
{
    int v0; // r5
    int v1; // r10

    (loc_8000AC8)(*(off_804C58C + *(v0 + 12)), 100716352, *&byte_804C59C[*(v0 + 12)]);
    (loc_8000AC8)(*(off_804C5A8 + *(v0 + 12)), byte_3001B00, 32);
    *(*(v1 + oToolkit_RenderInfoPtr) + 10) = 7945;
    sub_8001974();
    if ( *(v0 + 12) )
    {
        sub_8001B1C(&dword_804C4B0);
        sub_8001B1C(&dword_804C4E0);
    }
    *(v0 + 16) = 4;
    sub_804C5C0();
}


// 0x804c5c0
void sub_804C5C0()
{
    int v0; // r5
    int v1; // r10

    **(v1 + oToolkit_RenderInfoPtr) |= 0x800u;
    (*(&off_804C608 + *(v0 + 12)))();
    (*(&off_804C614 + *(v0 + 13)))();
    CopyBackgroundTiles(0, 0, 3, *(&off_804C5FC + *(v0 + 12)), 32, &dword_20);
}


// 0x804c624
int sub_804C624()
{
    unsigned __int16 *v0; // r4
    int v1; // r5
    int v2; // r10
    int v3; // r1
    int v4; // r0
    unsigned __int8 v5; // vf
    int v6; // r1
    int result; // r0

    v0[12] = *&math_sinTable[**(v2 + oToolkit_CurFramePtr) & 0x1FE] >> 4;
    v3 = *(v1 + 20);
    v4 = v0[11];
    *(v1 + 20) = v4;
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if ( (v6 < 0) ^ v5 )
        v6 = 0;
    result = v0[13] - 2 - v6;
    v0[13] = result;
    return result;
}


// 0x804c658
int sub_804C658()
{
    int v0; // r4
    int result; // r0

    *(v0 + 26) -= 12;
    result = *(v0 + 24) + 12;
    *(v0 + 24) = result;
    return result;
}


// 0x804c668
void sub_804C668()
{
    ;
}


// 0x804c66c
void sub_804C66C()
{
    sub_804C6C4(off_804C67C);
}


// 0x804c694
void sub_804C694()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3

    sub_804C6C4(off_804C6AC);
    if ( !*(v0 + 13) )
        run_eStruct200a6a0_Callback_8002484(*(v0 + 13), v1, v2, v3);
}


// 0x804c6c4
void __fastcall sub_804C6C4(int a1)
{
    int v1; // r5
    int v2; // r10
    _BYTE *v3; // r2
    _BYTE *v4; // r1
    int v5; // r0

    v3 = (*(a1 + *(v1 + 12)) + 2 * (*(v1 + 24) >> 3));
    v4 = *(v2 + oToolkit_Unk2009740_Ptr);
    *v4 = 72;
    v4[1] = 55;
    v4[2] = *v3;
    v4[3] = v3[1];
    v5 = *(v1 + 24) + 1;
    *(v1 + 24) = v5;
    if ( v5 >= 64 )
    {
        *(v1 + 24) = 0;
        *(v1 + 13) = 0;
        zeroFill_e2009740();
    }
}


// 0x804c700
int sub_804C700()
{
    int v0; // r5

    return (*(&off_804C714 + *(v0 + 16)))();
}


// 0x804c71c
int sub_804C71C()
{
    int v0; // r10
    _WORD *v1; // r1
    int result; // r0

    v1 = *(v0 + oToolkit_RenderInfoPtr);
    result = *v1 & 0xF7FF;
    *v1 = result;
    return result;
}


// 0x804c72c
void sub_804C72C()
{
    int v0; // r5
    int v1; // r10

    (loc_8000AC8)(byte_86A2C00, 100716352, byte_80);
    (loc_8000AC8)(byte_86A2BE0, byte_3001B00, 32);
    *(*(v1 + oToolkit_RenderInfoPtr) + 10) = 7945;
    sub_804C844();
    *(v0 + 16) = 4;
    sub_804C770();
}


// 0x804c770
void sub_804C770()
{
    int v0; // r5
    int v1; // r10
    _WORD *v2; // r4

    v2 = *(v1 + oToolkit_RenderInfoPtr);
    *v2 |= 0x800u;
    v2[13] -= 12;
    v2[12] += 12;
    (*(&off_804C7B4 + *(v0 + 13)))();
    sub_804C818();
    CopyBackgroundTiles(0, 0, 3, byte_86A2C80, 32, &dword_20);
}


// 0x804c7c4
void sub_804C7C4()
{
    ;
}


// 0x804c7c8
void sub_804C7C8()
{
    sub_804C6C4(&off_804C7D8);
}


// 0x804c7ec
void sub_804C7EC()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3

    sub_804C6C4(&off_804C804);
    if ( !*(v0 + 13) )
        run_eStruct200a6a0_Callback_8002484(*(v0 + 13), v1, v2, v3);
}


// 0x804c818
int sub_804C818()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    int v4; // r2
    unsigned __int8 v5; // r0
    int v6; // r1

    v1 = *(v0 + 20);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    if ( (result < 0) ^ v2 )
    {
        GetRNG2();
        *(v0 + 20) = &byte_12C[v5];
        v6 = *(v0 + 14);
        result = *&byte_804C858[v6];
        if ( *&byte_804C858[v6] )
            result = PlaySoundEffect(result, v6, v4);
    }
    else
    {
        *(v0 + 20) = result;
    }
    return result;
}


// 0x804c844
signed int sub_804C844()
{
    int v0; // r5
    signed int result; // r0

    result = 16;
    *(v0 + 20) = 16;
    return result;
}


// 0x804ca90
int sub_804CA90()
{
    int v0; // r5
    int v1; // r2
    int v3; // [sp+0h] [bp-3Ch]
    __int64 v4; // [sp+18h] [bp-24h]
    int v5; // [sp+20h] [bp-1Ch]

    if ( *&byte_804C860[40 * *(v0 + 12) + 24] == 1 )
    {
        CopyWords(&byte_804C860[40 * *(v0 + 12)], &v3, 0x28u);
        v4 = sub_809E1AE();
        v5 += v1;
    }
    return (*(&off_804CAD0 + *(v0 + 16)))();
}


// 0x804cae0
signed int __fastcall sub_804CAE0(int a1, int a2, int a3, int a4)
{
    int v4; // r10

    zeroFill_e2009740();
    map_8001708(
        *(*(v4 + oToolkit_GameStatePtr) + oGameState_MapGroup),
        *(*(v4 + oToolkit_GameStatePtr) + oGameState_MapNumber));
    **(v4 + oToolkit_RenderInfoPtr) &= 0xD7FFu;
    return sub_8006A5C();
}


// 0x804cb0c
int sub_804CB0C()
{
    int v0; // r5
    int *v1; // r7
    int v2; // r10
    _WORD *v3; // r1
    int v4; // r2
    int v5; // r3

    (loc_8000AC8)(byte_86A34C0, 100716512, 32);
    (loc_8000AC8)(&byte_86A3480[32 * *(v0 + 13)], byte_3001B00, 32);
    v3 = *(v2 + oToolkit_RenderInfoPtr);
    v3[5] = 7945;
    v3[13] = 0;
    v3[12] = 0;
    sub_8006920(v1, sub_8006920, v4, v5);
    *(v0 + 16) = 4;
    return sub_804CB64();
}


// 0x804cb64
signed int sub_804CB64()
{
    int v0; // r10
    signed int result; // r0
    char v2; // zf
    int v3; // [sp+0h] [bp-18h]

    **(v0 + oToolkit_RenderInfoPtr) |= 0x2800u;
    CopyBackgroundTiles(0, 0, 3, byte_86A34E0, 30, dword_14);
    result = sub_8006990();
    if ( !v2 )
    {
        result = 8;
        *(v3 + 16) = 8;
    }
    return result;
}


// 0x804cba0
void nullsub_804CBA0()
{
    ;
}


// 0x804cba4
int sub_804CBA4()
{
    int v0; // r5

    return (*(&off_804CBB8 + *(v0 + 16)))();
}


// 0x804cbc0
void __fastcall sub_804CBC0(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    _WORD *v5; // r1

    v5 = *(v4 + oToolkit_RenderInfoPtr);
    *v5 &= 0xF7FFu;
    v5[5] = 16139;
    zeroFill_e2009740();
}


// 0x804cbdc
int sub_804CBDC()
{
    int v0; // r5
    int v1; // r10
    _BYTE *v2; // r1

    (loc_8000AC8)(byte_86A39B0, 100716512, 32);
    (loc_8000AC8)(byte_86A3990, byte_3001B00, 32);
    *(*(v1 + oToolkit_RenderInfoPtr) + 10) = 7945;
    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    *v2 = 72;
    v2[1] = 55;
    sub_8001974();
    (*(&off_804CC40 + *(v0 + 12)))();
    sub_804CCF0();
    *(v0 + 16) = 4;
    return sub_804CC8E();
}


// 0x804cc58
signed int sub_804CC58()
{
    int v0; // r10
    int v1; // r1
    signed int result; // r0

    sub_8001B6C(3);
    v1 = *(v0 + oToolkit_Unk2009740_Ptr);
    *(v1 + 2) = 12;
    result = 16;
    *(v1 + 3) = 16;
    return result;
}


// 0x804cc6e
signed int sub_804CC6E()
{
    int v0; // r10
    int v1; // r1
    signed int result; // r0

    v1 = *(v0 + oToolkit_Unk2009740_Ptr);
    *(v1 + 2) = 12;
    result = 16;
    *(v1 + 3) = 16;
    return result;
}


// 0x804cc7e
signed int sub_804CC7E()
{
    int v0; // r10
    int v1; // r1
    signed int result; // r0

    v1 = *(v0 + oToolkit_Unk2009740_Ptr);
    *(v1 + 2) = 8;
    result = 16;
    *(v1 + 3) = 16;
    return result;
}


// 0x804cc8e
int sub_804CC8E()
{
    int v0; // r5

    return (*(&off_804CCA4 + *(v0 + 12)))();
}


// 0x804ccbc
void sub_804CCBC()
{
    ;
}


// 0x804ccc0
signed int sub_804CCC0()
{
    int v0; // r10
    int v1; // r1
    signed int result; // r0

    v1 = *(v0 + oToolkit_Unk2009740_Ptr);
    *(v1 + 2) = byte_804CCE0[**(v0 + oToolkit_CurFramePtr) & 0xF];
    result = 16;
    *(v1 + 3) = 16;
    return result;
}


// 0x804ccf0
void sub_804CCF0()
{
    int v0; // r10
    _WORD *v1; // r1

    v1 = *(v0 + oToolkit_RenderInfoPtr);
    *v1 |= 0x800u;
    v1[13] = 0;
    v1[12] = 0;
    CopyBackgroundTiles(0, 0, 3, byte_86A39D0, 30, dword_14);
}


// 0x804cd20
int sub_804CD20()
{
    int v0; // r5

    return (*(&off_804CD34 + *(v0 + 16)))();
}


// 0x804cd5c
int sub_804CD5C()
{
    _BYTE *v0; // r5
    int v1; // r10
    _WORD *v2; // r1
    _BYTE *v3; // r1

    (loc_8000AC8)(byte_86A3EA0, 100715520, &loc_A0);
    (loc_8000AC8)(byte_86A3E80, byte_3001B00, 32);
    v2 = *(v1 + oToolkit_RenderInfoPtr);
    v2[5] = 7945;
    v2[13] = 0;
    v2[12] = 0;
    v3 = *(v1 + oToolkit_Unk2009740_Ptr);
    *v3 = 72;
    v3[1] = 55;
    v3[2] = 16;
    v3[3] = 0;
    v0[19] = 0;
    v0[20] = 0;
    v0[17] = 0;
    v0[21] = 2;
    sub_8001974();
    sub_804CDD4();
    v0[16] = 4;
    return sub_804CDCC(4);
}


// 0x804cdcc
void __fastcall sub_804CDCC(int a1)
{
    sub_804CDD4();
}


// 0x804cdd4
void sub_804CDD4()
{
    int v0; // r10
    char v1; // zf

    **(v0 + oToolkit_RenderInfoPtr) |= 0x800u;
    TestEventFlagFromImmediate(11, 240);
    if ( !v1 )
        sub_804CE3C();
    sub_804CE0C();
    CopyBackgroundTiles(0, 0, 3, byte_86A3F40, 32, &dword_20);
}


// 0x804ce0c
int sub_804CE0C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r2
    int v3; // r4
    __int16 v4; // r0
    __int16 v5; // r3
    int v6; // r0
    int v7; // r3
    int result; // r0

    v2 = byte_0[dword_804CE38 + 1];
    v3 = *(v1 + oToolkit_RenderInfoPtr);
    v4 = *(v3 + 24);
    v5 = *(v0 + 19) + dword_804CE38;
    *(v0 + 19) = v5;
    *(v3 + 24) = v4 + v5;
    v6 = *(v3 + 26);
    v7 = *(v0 + 20) + v2;
    *(v0 + 20) = v7;
    result = v6 + v7;
    *(v3 + 26) = result;
    return result;
}


// 0x804ce3c
int sub_804CE3C()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r4

    result = *(v0 + 21) - 1;
    *(v0 + 21) = result;
    if ( !result )
    {
        *(v0 + 21) = 2;
        v3 = *(v1 + oToolkit_Unk2009740_Ptr);
        result = *(v3 + 3);
        if ( result < 16 )
        {
            *(v3 + 3) = result + 1;
            result = *(v3 + 2);
            if ( *(v3 + 2) )
                *(v3 + 2) = --result;
        }
    }
    return result;
}


// 0x804ce90
char (*ACDCTown_EnterMapGroup())[8]
{
    GameState *gs; // r5
    Toolkit *tk; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3
    char (*result)[8]; // r0

    *(tk->unk_2011BB0 + 5) = off_804CE68[gs->MapSubOffset];
    sub_803037C(gs->MapSelect, gs->MapSubOffset);
    sub_8030AA4(gs->MapSelect, gs->MapSubOffset);
    v2 = gs->MapSubOffset;
    camera_802FF4C(gs->player_x, gs->player_y, gs->unk_2C, gs->MapSelect);
    sub_8030472();
    sub_80028D4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(off_804CEFC[gs->MapSubOffset]);
    chatbox_uncompBasedOnMap_803FD08();
    sub_804CF84();
    result = off_804D0E4[gs->MapSubOffset];
    gs->unk_64 = result;
    return result;
}


// 0x804cf32
int __fastcall sub_804CF32(int a1, int a2)
{
    return sub_8002354(off_804CF44[a2]);
}


// 0x804cf84
int sub_804CF84()
{
    int v0; // r10

    return SpawnObjectsFromList(off_804CF9C[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


