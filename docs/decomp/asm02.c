// 0x8021aa4
void *__fastcall getChip8021DA8(int chipData)
{
    return &ChipDataArr_8021DA8[44 * chipData];
}


// 0x8021ab4
int __fastcall sub_8021AB4(int a1, int a2)
{
    Toolkit *tk; // r10
    signed int v3; // r6
    int v4; // r0
    int v5; // r1
    int result; // r0
    char *v7; // [sp-4h] [bp-14h]

    v7 = tk->sChip_2002178 + 60 * a2;
    CopyWords(a1, v7, 0x3Cu);
    v3 = 0;
    do
    {
        v4 = split9BitsFromBitfield_8021AE0(*&v7[v3]);
        result = sub_8021B2A(v4, v5, 1);
        v3 += 2;
    }
    while ( v3 < 60 );
    return result;
}


// 0x8021ae0
// (int bitfield) -> (int, int)
unsigned int __fastcall split9BitsFromBitfield_8021AE0(int a1)
{
    return a1 & 0xB51001FF;
}


// 0x8021aee
int __fastcall GiveChips(int a1, int a2, int a3)
{
    char *v4; // r0
    int v5; // r3
    int v6; // r4
    int v7; // r1
    _BYTE *v8; // r0
    int v9; // r3
    int v10; // ST08_4
    int v11; // [sp+0h] [bp-14h]
    int v12; // [sp+4h] [bp-10h]
    int v13; // [sp+8h] [bp-Ch]

    v11 = a1;
    v12 = a2;
    v13 = a3;
    modifyToolkit_unk7C_using_2008A0(a1);
    if ( !v13 )
        return 0;
    SetEventFlag(&loc_1E20 + v11);
    v4 = chip_8021C7C(v11, v12);
    v6 = v5;
    v8 = sub_8021B5A(v4, v7, v13);
    v10 = v9;
    sub_81376B8(v8, v6);
    return v10;
}


// 0x8021b2a
int __fastcall sub_8021B2A(int a1, int a2, int a3)
{
    char *v4; // r0
    int v5; // r1
    int v6; // r3
    int v7; // [sp+0h] [bp-10h]
    int v8; // [sp+4h] [bp-Ch]
    int v9; // [sp+8h] [bp-8h]

    v7 = a1;
    v8 = a2;
    v9 = a3;
    modifyToolkit_unk7C_using_2008A0(a1);
    if ( !v9 )
        return 0;
    SetEventFlag(&loc_1E20 + v7);
    v4 = chip_8021C7C(v7, v8);
    sub_8021B5A(v4, v5, v9);
    return v6;
}


// 0x8021b5a
_BYTE *__fastcall sub_8021B5A(_BYTE *result, int a2, int a3)
{
    signed int v3; // r1

    v3 = *result;
    if ( v3 != 99 )
    {
        v3 += a3;
        if ( v3 > 99 )
            LOBYTE(v3) = 99;
    }
    *result = v3;
    return result;
}


// 0x8021b78
// [break (E7FE)]
//     When getting an item; like from mayl, or when loading shops
void *__cdecl sub_8021B78(int idx, int searchItem, int off)
{
    void *result; // r0
    int r0; // [sp+0h] [bp-10h]
    int v5; // [sp+4h] [bp-Ch]
    char r2; // [sp+8h] [bp-8h]

    r0 = idx;
    v5 = searchItem;
    r2 = off;
    if ( off )
        modifyToolkit_unk7C_using_2008A0(idx);
    result = chip_8021C7C(r0, v5);
    *result = r2;
    return result;
}


// 0x8021b92
// (int idx, int searchItem, int off) -> void*
signed int __fastcall TakeChips(int a1, int a2, int a3)
{
    char *v3; // r0
    signed int v4; // r3
    int v5; // r1
    unsigned __int8 v6; // vf
    int v8; // [sp+0h] [bp-Ch]

    v8 = a3;
    v3 = chip_8021C7C(a1, a2);
    v4 = 1;
    v5 = *v3;
    if ( *v3 )
    {
        v4 = 0;
        v6 = __OFSUB__(v5, v8);
        v5 -= v8;
        if ( (v5 < 0) ^ v6 )
        {
            v4 = 2;
            LOBYTE(v5) = v5 + v8;
        }
    }
    *v3 = v5;
    return v4;
}


// 0x8021bc0
int __fastcall GetChipCountOfCode(signed int chipIdx, int a2)
{
    char v2; // zf
    int result; // r0
    int v4; // [sp+0h] [bp-10h]
    int v5; // [sp+4h] [bp-Ch]

    v4 = chipIdx;
    v5 = a2;
    sub_8006EA4(chipIdx, a2);
    if ( v2 )
        result = *chip_8021C7C(v4, v5);
    else
        result = 0;
    return result;
}


// 0x8021bd8
int __fastcall GetTotalChipCount(signed int a1)
{
    int v1; // r10
    char v2; // zf
    int result; // r0
    signed int v4; // [sp+0h] [bp-Ch]

    v4 = a1;
    sub_8006E84(a1);
    if ( v2 )
        result = *(*(v1 + oToolkit_Unk2002230_Ptr) + 12 * v4)
                     + *(*(v1 + oToolkit_Unk2002230_Ptr) + 12 * v4 + 1)
                     + *(*(v1 + oToolkit_Unk2002230_Ptr) + 12 * v4 + 2)
                     + *(*(v1 + oToolkit_Unk2002230_Ptr) + 12 * v4 + 3);
    else
        result = 0;
    return result;
}


// 0x8021c02
int __fastcall sub_8021C02(int a1, int a2)
{
    int v2; // r10
    int v3; // r4
    int v4; // r5
    unsigned int v5; // r3
    signed int v6; // r2
    unsigned int v7; // r7
    int v8; // r6
    int v9; // r7
    int v10; // ST00_4
    int v11; // ST04_4
    char v12; // zf
    int v14; // [sp+8h] [bp-18h]

    v14 = *(*(v2 + oToolkit_Unk2001c04_Ptr) + 5);
    v3 = 0;
    v4 = 0;
    do
    {
        v5 = 60 * (*(&unk_20018EC + v3) >> 4) + *(v2 + oToolkit_S_Chip_2002178_Ptr);
        v6 = 0;
        do
        {
            v7 = *(v5 + v6);
            v8 = v7 & 0x1FF;
            v9 = v7 >> 9;
            if ( a1 == v8 && a2 == v9 )
            {
                v10 = a1;
                v11 = a2;
                sub_8006EA4(v8, v9);
                a1 = v10;
                a2 = v11;
                if ( v12 )
                    ++v4;
            }
            v6 += 2;
        }
        while ( v6 < 60 );
        ++v3;
        --v14;
    }
    while ( v14 );
    return v4;
}


// 0x8021c68
void __fastcall zeroFill_e2002230()
{
    Toolkit *tk; // r10

    ZeroFillByWord(tk->unk_2002230, 3840);
}


// 0x8021c7c
// (int chip_idx, int searchItem, int off) -> void*
char *__fastcall chip_8021C7C(int a1, int a2)
{
    Toolkit *toolkit; // r10
    unsigned __int8 *arr; // r0
    int v4; // r3
    int v6; // [sp-8h] [bp-14h]
    int vIdx; // [sp-4h] [bp-10h]

    v6 = a2;
    vIdx = a1;
    arr = getChip8021DA8(a1);
    v4 = 0;
    while ( v6 != arr[v4] )
    {
        if ( ++v4 >= 4 )
        {
            v4 = 0;
            return toolkit->unk_2002230 + 12 * vIdx + v4;
        }
    }
    return toolkit->unk_2002230 + 12 * vIdx + v4;
}                                                                                             // break-response [e7fe]: 


// 0x8021ca8
__int64 sub_8021CA8()
{
    int v0; // r10
    __int64 v1; // r4
    int v2; // r2
    char v3; // zf
    signed int v4; // r3
    int v5; // r1
    _BYTE *v7; // [sp-8h] [bp-1Ch]
    signed int v8; // [sp-4h] [bp-18h]

    v1 = 0LL;
    v2 = 0;
    do
    {
        v8 = v2;
        v7 = getChip8021DA8(v2);
        sub_8006E84(v8);
        if ( v3 )
        {
            v4 = 0;
            do
            {
                if ( v7[v4] != 255 && !(v7[9] & 0x20) )
                {
                    v5 = *(*(v0 + oToolkit_Unk2002230_Ptr) + 12 * v8 + v4);
                    LODWORD(v1) = v1 + v5;
                    if ( v7[7] == 2 )
                        HIDWORD(v1) += v5;
                }
                ++v4;
            }
            while ( v4 < 4 );
        }
        v2 = v8 + 1;
    }
    while ( v8 + 1 < dword_140 );
    return v1;
}


// 0x8021d08
void __fastcall sub_8021D08(int a1, int a2, int a3, int a4)
{
    ZeroFillByHalfword(byte_203A0A0, dword_2E0, a3, a4);
}


// 0x8021d14
char *__fastcall sub_8021D14(int a1, int a2)
{
    char *result; // r0
    signed int v3; // r2

    result = &byte_203A0A0[&byte_170 * a1];
    v3 = result[a2];
    if ( v3 < 255 )
        result[a2] = v3 + 1;
    return result;
}


// 0x8021d2a
int __fastcall sub_8021D2A(int a1, int a2)
{
    return byte_203A0A0[&byte_170 * a1 + a2];
}


// 0x8021d36
void __fastcall sub_8021D36(int a1, int a2, int a3, int a4)
{
    ZeroFillByHalfword(&unk_2000AF0, 0x40u, a3, a4);
    CopyWords(TextScriptJap8021D88, &unk_2001184, 8u);
    CopyWords(TextScriptJap8021D88, &unk_200119C, 8u);
    CopyWords(byte_8021D8A, byte_20007D6, 8u);
    CopyWords(byte_8021D8A, byte_200083A, 8u);
}


