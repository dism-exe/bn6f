// 0x80005ac
int call_m4aSoundMain()
{
    return m4aSoundMain();
}


// 0x80005c4
int call_m4a_2_814F00C()
{
    return m4a_2_814F00C();
}


// 0x80005cc
// () -> void
int __fastcall PlaySoundEffect(int a1, int a2, int a3)
{
    return m4a_800061E(a1, a2, a3);
}


// 0x80005d4
// (int a1) -> void
int __fastcall PlaySong(int result, int a2, int a3)
{
    int v3; // r10
    int v4; // r7
    int v5; // r1

    v4 = *(v3 + oToolkit_GameStatePtr);
    v5 = *(v4 + oGameState_BGMusicIndicator);
    if ( result != v5 )
    {
        *(v4 + oGameState_BGMusicIndicator) = result;
        if ( result == 99 )
            result = sub_8000630(99, v5, a3);
        else
            result = m4a_800061E(result, v5, a3);
    }
    return result;
}


// 0x80005f2
int __fastcall sub_80005F2(int a1, int a2, int a3)
{
    int v3; // r10
    int result; // r0

    *(*(v3 + oToolkit_GameStatePtr) + oGameState_BGMusicIndicator) = a1;
    if ( a1 == 99 )
        result = sub_8000630(99, a2, a3);
    else
        result = m4a_800061E(a1, a2, a3);
    return result;
}


// 0x800060a
int __fastcall sub_800060A(int a1, int a2, int a3)
{
    int v3; // r1

    v3 = byte_2010B90[0];
    if ( !byte_2010B90[0] )
        v3 = 255;
    return sound_8000808(a1, v3, a3, sub_8000822);
}


// 0x800061e
// () -> void
int __fastcall m4a_800061E(int a1, int a2, int a3)
{
    int v3; // r10

    return sound_8000808(a1, v3, a3, m4a_SongNumStart);
}


// 0x8000630
int __fastcall sub_8000630(int a1, int a2, int a3)
{
    int v3; // r10

    return sound_8000808(a1, v3, a3, sub_814EA58);
}


// 0x8000642
int __fastcall sub_8000642(int a1, int a2, int a3)
{
    return sound_8000808(off_8000704[a1], a2, a3, sub_814F9AC);
}


// 0x800065a
int __fastcall sub_800065A(int a1, int a2, int a3)
{
    return sound_8000808(off_8000704[a1], a2, a3, sub_814FA14);
}


// 0x8000672
int __fastcall sound_8000672(int a1, int a2, int a3)
{
    return sound_8000808(off_8000704[a1], a2, a3, sub_814F988);
}


// 0x800068a
int __fastcall sub_800068A(int a1, int a2)
{
    int v2; // r10

    return sound_8000808(off_8000704[a1], a2, v2, sub_814E87C);
}


// 0x80006a2
int __fastcall sub_80006A2(signed int a1, int a2, int a3)
{
    int v3; // r10
    int v4; // r2
    char (*v5)[64]; // r7
    int v6; // r4
    int v7; // r5
    int v8; // r1
    int v9; // r2
    int v10; // r1
    int v11; // r2
    int v12; // r2

    if ( a1 <= 37 )
        *(*(v3 + oToolkit_GameStatePtr) + oGameState_BGMusicIndicator) = a1;
    v4 = a3;
    v5 = off_8000704[v4];
    v6 = a1;
    v7 = a2;
    sound_8000808(a1, a2, v4 * 4, m4a_SongNumStart);
    sound_8000808(v5, v8, v9, sub_814EB1C);
    sound_8000808(v5, 255, 0, sub_814F9AC);
    sound_8000808(v6, v10, v11, sub_814E9F0);
    return sound_8000808(v5, v7, v12, sub_814EAF0);
}


// 0x8000784
// () -> void
signed int __fastcall musicGameState_8000784(int a1, int a2, int a3)
{
    Toolkit *tk; // r10
    signed int result; // r0

    sound_8000808(a1, tk, a3, sub_814EA58);
    result = 255;
    tk->gamestate->bgMusicIndicator = -1;
    return result;
}


// 0x80007a0
int __fastcall sub_80007A0(int a1, int a2, int a3)
{
    int v3; // r10

    return sound_8000808(a1, v3, a3, sub_814E9F0);
}


// 0x80007b2
void __fastcall zeroFill_80007B2()
{
    ZeroFillByWord(dword_200A490, &loc_20C);
}


// 0x80007be
int sub_80007BE()
{
    int v0; // r7
    int v1; // r0
    char *v2; // r6
    int v3; // r0
    int v4; // r1
    int v5; // r2
    void (__fastcall *v6)(int, int, int); // r3
    int result; // r0

    v0 = dword_200A490[0];
    if ( dword_200A490[0] )
    {
        v1 = byte_200A494 + 1;
        if ( v1 >= 26 )
            LOBYTE(v1) = 0;
        byte_200A494 = v1;
        dword_200A498 = 0;
        v2 = algn_200A49C;
        do
        {
            v3 = *v2;
            v4 = *(v2 + 1);
            v5 = *(v2 + 2);
            v6 = *(v2 + 3);
            v2 += 16;
            v6(v3, v4, v5);
            --v0;
        }
        while ( v0 );
    }
    result = 0;
    dword_200A490[0] = 0;
    if ( dword_200A498 )
        result = sound_8000808(*dword_200A498, *(dword_200A498 + 4), *(dword_200A498 + 8), *(dword_200A498 + 12));
    return result;
}


// 0x8000808
// () -> void
int __fastcall sound_8000808(int result, int a2, int a3, int a4)
{
    int v4; // r7
    int *v5; // r7

    v4 = dword_200A490[0];
    if ( dword_200A490[0] < 32 )
    {
        ++dword_200A490[0];
        v5 = &dword_200A490[4 * v4 + 3];
        *v5 = result;
        v5[1] = a2;
        v5[2] = a3;
        v5[3] = a4;
    }
    return result;
}


// 0x8000822
int __fastcall sub_8000822(int result, int a2)
{
    int v2; // r5
    int v3; // r6
    int v4; // r10
    int v5; // r7
    int v6; // r1
    int (__fastcall *v7)(int, int, int); // r3

    if ( a2 == byte_2010B90[0] )
    {
        result = v3 - 16;
        *(v2 + 8) = v3 - 16;
    }
    else
    {
        byte_2010B90[0] = 0;
        v5 = *(v4 + oToolkit_GameStatePtr);
        v6 = *(v5 + oGameState_BGMusicIndicator);
        if ( result != v6 )
        {
            *(v5 + oGameState_BGMusicIndicator) = result;
            if ( result == 99 )
                v7 = sub_814EA58;
            else
                v7 = m4a_SongNumStart;
            result = v7(result, v6, 0);
        }
    }
    return result;
}


// 0x80008b4
// Fill r0 with zero.
// Size is in r1, in bytes.
// Does a backwards fill for speed
int __fastcall ZeroFillByByte(int result, int a2)
{
    do
        *(result + --a2) = 0;
    while ( a2 );
    return result;
}


// 0x80008c0
// Fill r0 with zero, using halfwords.
// Size is in r1, in bytes.
// Source, destination, and size must be halfword compatible 
void __fastcall ZeroFillByHalfword(u16 *a1, unsigned int size)
{
    int v4; // [sp+0h] [bp-18h]
    int v5; // [sp+4h] [bp-14h]
    unsigned int v6; // [sp+8h] [bp-10h]
    int v7; // [sp+Ch] [bp-Ch]
    int v8; // [sp+10h] [bp-8h]

    v5 = a1;
    v6 = size;
//    v7 = a3;
//    v8 = a4;
    v4 = 0;
    SWI_CpuSet(&v4, a1, (size >> 1) | 0x1000000);
}


// 0x80008e0
// (void *memBlock, int size) -> void
void __cdecl ZeroFillByWord(void *src, int size)
{
    int v2; // [sp+0h] [bp-18h]
    void *v3; // [sp+4h] [bp-14h]
    int v4; // [sp+8h] [bp-10h]

    v3 = src;
    v4 = size;
    v2 = 0;
    SWI_CpuSet(&v2, src, (size >> 2) | 0x5000000);
}


// 0x8000900
// Fill r0 with zero, in blocks of eight words.
// Size is in r1, in bytes.
// CpuFastSet will round up the amount of bytes filled to a multiple of eight words
// even though the size specified is converted to a word count
// Source and destination must be word compatible
// Size must be a multiple of eight words
int __cdecl ZeroFillByEightWords(u32 *dest, int size)
{
    u32 *v2; // ST04_4

    v2 = dest;
    SWI_CpuFastSet();
    return v2;
}


// 0x8000920
// Copy r2 bytes from r0 to r1, in units of bytes.
int __fastcall CopyBytes(int result, int a2, int a3)
{
    do
    {
        --a3;
        *(a2 + a3) = *(result + a3);
    }
    while ( a3 );
    return result;
}


// 0x800092a
// Copy r2 bytes from r0 to r1, in units of halfwords.
// Note that size is specified in bytes, which is then converted to halfword count in function
// Source, destination, and size must be halfword compatible.
void __cdecl CopyHalfwords(u16 *src, const u16 *dest, int size)
{
    SWI_CpuSet(src, dest, size >> 1);
}


// 0x800093c
// Copy r2 bytes from r0 to r1, in units of words.
// Note r2 represents byte count, which is then converted to word count in function
// Source, destination, and size must be word compatible.
void __fastcall CopyWords(int a1, int a2, unsigned int a3)
{
    SWI_CpuSet(a1, a2, (a3 >> 2) | 0x4000000);
}


// 0x8000950
// Copy r2 bytes from r0 to r1, in units of eight words, rounded up.
// Note r2 represents byte count, which is then converted to word count in function
// However, CpuFastSet will copy in chunks of eight words (0x20), therefore rounding
// up the word count to a multiple of eight words.
// Source and destination must be word compatible.
// Size must be a multiple of eight words
void __fastcall CopyByEightWords(int a1, int a2, unsigned int a3)
{
    SWI_CpuFastSet();
}


// 0x8000964
// Fill r0 with r2, where r2 is treated as a byte.
// Size is in r1, in bytes.
// Does a backwards fill for speed
void __cdecl ByteFill(u8 *mem, int byteCount, u8 byte)
{
    do
        mem[--byteCount] = byte;
    while ( byteCount );
}


// 0x800096c
// Fill r0 with r2, where r2 is treated as a halfword.
// Size is in r1, in bytes.
// Source, destination, and size must be halfword compatible 
void __fastcall HalfwordFill(int a1, unsigned int a2, int a3, int a4)
{
    int v4; // [sp+0h] [bp-18h]
    int v5; // [sp+4h] [bp-14h]
    unsigned int v6; // [sp+8h] [bp-10h]
    int v7; // [sp+Ch] [bp-Ch]
    int v8; // [sp+10h] [bp-8h]

    v5 = a1;
    v6 = a2;
    v7 = a3;
    v8 = a4;
    v4 = a3;
    SWI_CpuSet(&v4, a1, (a2 >> 1) | 0x1000000);
}


// 0x800098c
// Fill r0 with r2, where r2 is treated as a word.
// Size is in r1, in bytes.
// Source, destination, and size must be word compatible
void __cdecl WordFill(void *src, int size, int fill)
{
    int v3; // [sp+0h] [bp-18h]
    void *v4; // [sp+4h] [bp-14h]
    int v5; // [sp+8h] [bp-10h]
    int v6; // [sp+Ch] [bp-Ch]

    v4 = src;
    v5 = size;
    v6 = fill;
    v3 = fill;
    SWI_CpuSet(&v3, src, (size >> 2) | 0x5000000);
}


// 0x80009ac
// Fill r0 with r2, where r2 is treated as a word.
// Size is in r1, in bytes.
// CpuFastSet will round up the amount of bytes filled to a multiple of eight words
// even though the size specified is converted to a word count
// Source and destination must be word compatible
// Size must be a multiple of eight words
void __cdecl FillByEightWords(void *src, int size, int fill)
{
    SWI_CpuFastSet();
}


// 0x80009cc
int __fastcall sub_80009CC(int result, int a2, int a3, int a4)
{
    int v4; // r4
    int *v5; // r5

    v5 = off_80009EC[a4];
    while ( v5[2] & 0x80000000 )
        ;
    *v5 = result;
    v5[1] = a2;
    v5[2] = v4 | a3;
    return result;
}


// 0x80009fc
int __fastcall sub_80009FC(int result)
{
    int v1; // r1

    do
    {
        v1 = 0;
        if ( result & 1 )
            v1 = *&DMA0WordCount;
        if ( result & 2 )
            v1 |= *&DMA1WordCount;
        if ( result & 4 )
            v1 |= *&DMA2WordCount;
        if ( result & 8 )
            v1 |= *&DMA3WordCount;
    }
    while ( v1 & 0x80000000 );
    return result;
}


// 0x8000a3c
void __cdecl clearWord_e200AC1C()
{
    dword_200AC1C = 0;
}


// 0x8000a44
void __cdecl objRender_8000A44()
{
    int v0; // r1
    int *i; // r2
    unsigned __int8 v2; // vf
    int v3; // r1
    int v4; // r8
    int *v5; // r9
    int v6; // r4
    int v7; // r4

    v0 = dword_200AC1C;
    for ( i = fiveWordArr200B4B0; ; i = v5 + 5 )
    {
        v2 = __OFSUB__(v0, 1);
        v3 = v0 - 1;
        if ( (v3 < 0) ^ v2 )
            break;
        v4 = v3;
        v5 = i;
        v6 = i[4];
        if ( v6 >= 1 )
        {
            (*(&CopyJumpTable8000AA8 + v6 - 1))(*i, i[1], i[2]);
        }
        else
        {
            v7 = i[3];
            sub_80009CC(*i, i[1], i[2] >> 2, 3);
            sub_80009FC(8);
        }
        v0 = v4;
    }
    clearWord_e200AC1C();
}


// 0x8000ab8
int __fastcall sub_8000AB8(int result, int a2, int a3)
{
    int v3; // r4
    int *v4; // r4

    v3 = dword_200AC1C;
    if ( dword_200AC1C < 96 )
    {
        ++dword_200AC1C;
        v4 = &fiveWordArr200B4B0[5 * v3];
        *v4 = result;
        v4[1] = a2;
        v4[2] = a3;
        v4[4] = 0;
        v4[3] = -2080374784;
    }
    return result;
}


// 0x8000b18
int __fastcall sub_8000B18(int *a1)
{
    int *i; // r7
    int result; // r0

    for ( i = a1; ; i += 3 )
    {
        result = *i;
        if ( !*i )
            break;
        sub_8000AB8(result, i[1], i[2]);
    }
    return result;
}


// 0x8000b30
// This processes an array and performs different actions based on 
// the type of u32 element in it.
// If the last bit of the elem is set, then it is a reference to
// compressed data: x_addr = x & ~0x80000000
// Elements are processed in triplets. 
// In case of decompression:
//     .word src | 1<<32
//     .word
//     .word dest
void __cdecl decompAndCopyData(int *initRefs)
{
    int *i; // r7
    int v2; // r0
    unsigned __int8 v3; // cf
    unsigned int v4; // r0
    u16 *v5; // r0
    const u16 *v6; // r1
    int v7; // r2
    _DWORD *v8; // r4

    for ( i = initRefs; ; i += 3 )
    {
        v2 = *i;
        if ( !*i )
            break;
        v3 = __CFSHL__(v2, 1);
        v4 = 2 * v2;
        if ( v3 )
        {
            v8 = i[2];
            SWI_LZ77UnCompReadNormalWrite8bit((v4 >> 1), i[2]);
            v6 = i[1];
            if ( !v6 )
                continue;
            v5 = (v8 + 1);
            v7 = (*v8 >> 8) - 4;
        }
        else
        {
            v5 = (v4 >> 1);
            v6 = i[1];
            v7 = i[2];
        }
        if ( v7 & 1 )
        {
            CopyBytes(v5, v6, v7);
        }
        else if ( v7 & 3 )
        {
            CopyHalfwords(v5, v6, v7);
        }
        else if ( v7 & 0x1F )
        {
            CopyWords(v5, v6, v7);
        }
        else
        {
            CopyByEightWords(v5, v6, v7);
        }
    }
}


// 0x8000b8e
// [break] open PET
int __fastcall decomp_initGfx_8000B8E(int *a1)
{
    int *i; // r7
    int result; // r0
    unsigned __int8 v3; // cf
    unsigned int v4; // r0
    int v5; // r0
    int v6; // r1
    int v7; // r2
    _DWORD *v8; // r4

    for ( i = a1; ; i += 3 )
    {
        result = *i;
        if ( !*i )
            break;
        v3 = __CFSHL__(result, 1);
        v4 = 2 * result;
        if ( v3 )
        {
            v8 = i[2];
            SWI_LZ77UnCompReadNormalWrite8bit((v4 >> 1), i[2]);
            v6 = i[1];
            if ( !v6 )
                continue;
            v5 = (v8 + 1);
            v7 = (*v8 >> 8) - 4;
        }
        else
        {
            v5 = v4 >> 1;
            v6 = i[1];
            v7 = i[2];
        }
        if ( v7 & 1 )
        {
            (loc_8000ABC)(v5, v6);
        }
        else if ( v7 & 3 )
        {
            (loc_8000AC0)(v5, v6);
        }
        else if ( v7 & 0x1F )
        {
            (loc_8000AC4)(v5, v6);
        }
        else
        {
            (loc_8000AC8)(v5, v6);
        }
    }
    return result;
}


// 0x8000bec
int sub_8000BEC()
{
    return VerticalCounter_LY_ + dword_2009CC0;
}


// 0x8000c00
signed int __fastcall sub_8000C00(int a1)
{
    char *v2; // r7
    int v3; // r2
    signed int v4; // r3
    int v5; // r2
    int v6; // r1
    int v7; // r4

    if ( a1 - 99999999 >= 0 )
        return -1717986919;
    v2 = byte_8000C34;
    v3 = 0;
    v4 = 8;
    do
    {
        v5 = 16 * v3;
        v6 = *v2;
        v7 = 0;
        while ( a1 - v6 >= 0 )
        {
            a1 -= v6;
            ++v7;
        }
        v3 = v5 | v7;
        v2 += 4;
        --v4;
    }
    while ( v4 );
    return v3;
}


// 0x8000c5c
signed int __fastcall sub_8000C5C(unsigned int a1)
{
    signed int v1; // r1

    v1 = 1;
    if ( a1 )
    {
        v1 = 0;
        while ( a1 )
        {
            ++v1;
            a1 >>= 4;
        }
    }
    return v1;
}


// 0x8000c72
void __fastcall sub_8000C72(int a1, int a2, int a3)
{
    int v3; // ST08_4
    int v4; // ST0C_4
    int v5; // ST04_4
    char v10; // r5

    do
    {
        v3 = a1;
        v4 = a3;
        v5 = a2;
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        a2 = v5;
        a1 = v3;
        v10 = *(v3 + v5);
        *(v3 + v5) = *(v3 + v5);
        *(v3 + v5) = v10;
        a3 = v4 - 1;
    }
    while ( v4 != 1 );
}


// 0x8000ca6
void __fastcall sub_8000CA6(int result, int a2, int a3)
{
    int v3; // ST08_4
    int v4; // ST0C_4
    int v5; // ST04_4
    char v10; // r5

    do
    {
        v3 = result;
        v4 = a3;
        v5 = a2;
        GetPositiveSignedRNG1();
        __asm { SVC         6 }
        GetPositiveSignedRNG1();
        __asm { SVC         6 }
        a2 = v5;
        result = v3;
        v10 = *(v3 + v5);
        *(v3 + v5) = *(v3 + v5);
        *(v3 + v5) = v10;
        a3 = v4 - 1;
    }
    while ( v4 != 1 );
}


// 0x8000cda
void __fastcall sub_8000CDA(int a1, int a2, int a3)
{
    int v3; // ST08_4
    int v4; // ST0C_4
    int v5; // ST04_4
    __int16 v10; // r5

    do
    {
        v3 = a1;
        v4 = a3;
        v5 = a2;
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        a2 = v5;
        a1 = v3;
        v10 = *(v3 + 2 * v5);
        *(v3 + 2 * v5) = *(v3 + 2 * v5);
        *(v3 + 2 * v5) = v10;
        a3 = v4 - 1;
    }
    while ( v4 != 1 );
}


// 0x8000d12
void __fastcall sub_8000D12(int result, int a2, int a3)
{
    int v3; // ST08_4
    int v4; // ST0C_4
    int v5; // ST04_4
    __int16 v10; // r5

    do
    {
        v3 = result;
        v4 = a3;
        v5 = a2;
        GetPositiveSignedRNG1();
        __asm { SVC         6 }
        GetPositiveSignedRNG1();
        __asm { SVC         6 }
        a2 = v5;
        result = v3;
        v10 = *(v3 + 2 * v5);
        *(v3 + 2 * v5) = *(v3 + 2 * v5);
        *(v3 + 2 * v5) = v10;
        a3 = v4 - 1;
    }
    while ( v4 != 1 );
}


// 0x8000d4a
int __fastcall sub_8000D4A(int a1, int a2)
{
    int v2; // ST04_4
    int v3; // ST00_4
    int v4; // r0
    int v5; // r1

    v3 = a2;
    v2 = a1;
    GetPositiveSignedRNG2();
    SWI_Div(v4, v3);
    return *(v2 + v5);
}


// 0x8000d5e
int __fastcall sub_8000D5E(int result, int a2)
{
    signed int v2; // r3
    unsigned int v3; // r2
    int v4; // r4
    unsigned int v5; // r6

    if ( a2 - 2 >= 0 )
    {
        v2 = 1;
        do
        {
            v3 = *(result + v2);
            v4 = 0;
            do
            {
                v5 = *(result + v4);
                if ( v3 <= v5 )
                {
                    *(result + v4) = v3;
                    v3 = v5;
                }
                ++v4;
            }
            while ( v4 - v2 < 0 );
            *(result + v2++) = v3;
        }
        while ( v2 - a2 < 0 );
    }
    return result;
}


// 0x8000d84
int __fastcall sub_8000D84(signed int a1)
{
    int v2; // r1
    int v3; // ST04_4
    int v4; // r2
    int v5; // ST08_4
    int v6; // r3
    int v7; // ST0C_4
    int v8; // r0
    signed int v9; // ST00_4
    signed int v10; // ST04_4
    signed int v11; // ST08_4

    if ( a1 > 21600039 )
        return -1722197607;
    sub_8000DE0();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = sub_8000C00(v8);
    v10 = sub_8000C00(v3);
    v11 = sub_8000C00(v5);
    __asm { SVC         6 }
    return sub_8000C00(100 * v7) + (v9 << 24) + (v10 << 16) + (v11 << 8);
}


// 0x8000de0
void sub_8000DE0()
{
    __asm
    {
        SVC         6
        SVC         6
        SVC         6
    }
}


// 0x8000e10
void __cdecl sub_8000E10()
{
    Toolkit *tk; // r10
    _DWORD *v1; // r3
    int v2; // r0

    v1 = tk->unk_2001C04;
    v2 = v1[6] + 1;
    if ( v2 > 21596400 )
        v2 = 21596400;
    v1[6] = v2;
}


// 0x8000e28
int sub_8000E28()
{
    int v0; // r10

    return *(*(v0 + oToolkit_Unk2001c04_Ptr) + 24);
}


// 0x8000e30
int sub_8000E30()
{
    return 0;
}


// 0x8000e3a
int __fastcall sub_8000E3A(int a1, int a2)
{
    int v2; // r10
    unsigned int v3; // r0
    int v4; // r4
    int v6; // r7
    int v7; // r1
    int v11; // r1
    int v12; // r2
    int v13; // r0
    int v15; // [sp-4h] [bp-20h]
    int v16; // [sp+0h] [bp-1Ch]
    int v17; // [sp+4h] [bp-18h]

    v16 = a1;
    v17 = a2;
    v15 = a2;
    GetRNG2();
    v4 = (v3 >> 30) + (**(v2 + oToolkit_CurFramePtr) & 3);
    do
    {
        GetRNG2();
        _VF = __OFSUB__(v4--, 1);
    }
    while ( !((v4 < 0) ^ _VF) );
    v6 = v17 - 1;
    v7 = 0;
    do
    {
        v7 += *(v16 + v6);
        _VF = __OFSUB__(v6--, 1);
    }
    while ( !((v6 < 0) ^ _VF) );
    __asm { SVC         6 }
    v11 = v7 + 1;
    v12 = 0;
    v13 = 0;
    while ( 1 )
    {
        v13 += *(v16 + v12);
        if ( v13 >= v11 )
            break;
        if ( ++v12 >= v15 )
            return 0;
    }
    return v12;
}


// 0x8000e90
unsigned __int8 *__fastcall sub_8000E90(unsigned __int8 *result, int a2)
{
    unsigned __int8 *v2; // r5
    unsigned __int8 *v3; // r6
    unsigned __int8 *v4; // r7
    int v5; // r2

    v2 = &result[a2];
    v3 = result;
    v4 = result;
    do
    {
        v5 = *v3;
        if ( v5 != 255 )
            *v4++ = v5;
        ++v3;
        --a2;
    }
    while ( a2 );
    while ( v4 != v2 )
        *v4++ = -1;
    return result;
}


// 0x8000eb6
unsigned __int16 *__fastcall sub_8000EB6(unsigned __int16 *result, int a2)
{
    unsigned __int16 *v2; // r5
    unsigned __int16 *v3; // r6
    unsigned __int16 *v4; // r7
    int v5; // r2

    v2 = &result[a2];
    v3 = result;
    v4 = result;
    do
    {
        v5 = *v3;
        if ( v5 != 0xFFFF )
        {
            *v4 = v5;
            ++v4;
        }
        ++v3;
        --a2;
    }
    while ( a2 );
    while ( v4 != v2 )
    {
        *v4 = -1;
        ++v4;
    }
    return result;
}


// 0x8000ee4
signed int sub_8000EE4()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(14, 0);
    if ( !v1 )
        v0 = 1;
    if ( sub_81207F8(0) >= 200 )
        ++v0;
    if ( sub_81207F8(1) >= 39 )
        ++v0;
    if ( sub_81207F8(2) >= 5 )
        ++v0;
    if ( sub_81207F8(5) >= 15 )
        ++v0;
    if ( sub_81207F8(4) >= 29 )
        ++v0;
    TestEventFlagFromImmediate(3, 112);
    if ( !v1 )
        ++v0;
    TestEventFlagFromImmediate(3, 64);
    if ( !v1 )
        ++v0;
    TestEventFlagRangeFromImmediate(3, 189, 5);
    if ( !v1 )
        ++v0;
    return v0;
}


// 0x8000f86
int __fastcall sub_8000F86(int a1)
{
    int v1; // r10
    int v2; // r4
    int result; // r0
    char v4; // zf

    v2 = a1;
    result = sub_803F838();
    if ( v4 )
    {
        SetEventFlagFromImmediate(14, 0);
        SetEventFlagFromImmediate(16, 1);
        *(*(v1 + oToolkit_Unk2001c04_Ptr) + 24) = v2;
        result = sub_803F79E();
    }
    return result;
}


// 0x8000fac
unsigned int sub_8000FAC()
{
    int v0; // r10
    int v1; // r5
    char v2; // zf
    _DWORD *v3; // r6

    v1 = *(v0 + oToolkit_GameStatePtr);
    TestEventFlagFromImmediate(23, 12);
    if ( !v2
        || *(v1 + oGameState_MapGroup) != *(v1 + oGameState_LastMapGroup)
        || *(v1 + oGameState_MapNumber) != *(v1 + oGameState_LastMapNumber) )
    {
        *(v1 + oGameState_CurBattleDataPtr) = 0;
        v3 = *(v0 + oToolkit_Unk2001c04_Ptr);
        v3[7] = 0;
        v3[11] = 0;
        v3[10] = 0;
    }
    return ClearEventFlagFromImmediate(23, 12);
}


// 0x8000fe6
int __fastcall sub_8000FE6(int a1, int a2)
{
    int v2; // r6
    int v3; // r4
    int result; // r0
    char v5; // zf
    unsigned __int8 v6; // vf

    v2 = a1;
    v3 = a2;
    do
    {
        result = TestEventFlag(v2);
        if ( v5 )
            result = reqBBS_813E5DC(v2);
        ++v2;
        v6 = __OFSUB__(v3--, 1);
    }
    while ( !(((v3 < 0) ^ v6) | (v3 == 0)) );
    return result;
}


// 0x8001002
int sub_8001002()
{
    return sub_8000FE6(&loc_17A0, 10);
}


// 0x8001014
int __fastcall sub_8001014(int a1, int a2)
{
    int v2; // r6
    int v3; // r4
    int result; // r0
    char v5; // zf
    unsigned __int8 v6; // vf

    v2 = a1;
    v3 = a2;
    do
    {
        result = TestEventFlag(v2);
        if ( v5 )
            result = reqBBS_813F9A0(v2);
        ++v2;
        v6 = __OFSUB__(v3--, 1);
    }
    while ( !(((v3 < 0) ^ v6) | (v3 == 0)) );
    return result;
}


// 0x8001040
int __fastcall sub_8001040(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r10
    __int16 v6; // r6
    int result; // r0
    int v8; // r1
    int v9; // r2

    v6 = **(v5 + oToolkit_CurFramePtr);
    result = sub_802FE28((a1 << 16) | a2 | a3, a4 + ((v6 & 0x10u) >> 2), 1, 0);
    if ( v4 )
    {
        if ( !(v6 & 0xF) )
            result = PlaySoundEffect(145, v8, v9);
    }
    return result;
}


// 0x800107a
// () -> void
void __cdecl updatePlayerGameState_800107A()
{
    Toolkit *tk; // r10
    GameState *gs; // r3
    OWPlayer *player; // r1

    gs = tk->gamestate;
    player = gs->player;
    gs->player_x = player->x;
    gs->player_y = player->y;
    gs->unk_2C = player->unk_24;
    gs->unk_30 = player->unk_10;
}


// 0x8001092
int __fastcall sub_8001092(int result, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r10
    _DWORD *v6; // r5

    v6 = *(v5 + oToolkit_GameStatePtr);
    v6[oGameState_LastMapNumber] = result;
    v6[oGameState_Unk_0e] = a2;
    v6[oGameState_BGMusicIndicator] = a3;
    v6[oGameState_Unk_10] = a4;
    v6[oGameState_Unk_11] = v4;
    return result;
}


// 0x80010a4
int __fastcall sub_80010A4(int result, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r10
    _DWORD *v6; // r5

    v6 = *(v5 + oToolkit_GameStatePtr);
    v6[oGameState_Unk_12] = result;
    v6[oGameState_Unk_13] = a2;
    v6[oGameState_Unk_14] = a3;
    v6[oGameState_Unk_15] = a4;
    v6[oGameState_Unk_16] = v4;
    return result;
}


// 0x80010b6
// () -> u8
u8 __cdecl getPETNaviSelect()
{
    Toolkit *tk; // r10

    return tk->gamestate->PET_naviSelect;
}


// 0x80010be
int __fastcall sub_80010BE(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_GameStatePtr) + oGameState_PETNaviIndex) = result;
    return result;
}


// 0x80010c6
int sub_80010C6()
{
    int v0; // r10
    int result; // r0

    result = getPETNaviSelect();
    *(*(v0 + oToolkit_Unk2001c04_Ptr) + 7) = result;
    return result;
}


// 0x80010d4
int __fastcall sub_80010D4(int a1)
{
    int v1; // r4

    v1 = a1;
    GetField16FromSelectedS20047CCStruct(a1);
    return GetField16FromSelectedS20047CCStruct(v1);
}


// 0x80010ec
int __fastcall sub_80010EC(int a1, int a2)
{
    int v2; // r4
    int v3; // r6
    int v4; // r0

    v2 = a1;
    v3 = a2;
    v4 = GetField16FromSelectedS20047CCStruct(a1);
    if ( v3 > v4 )
        LOWORD(v3) = v4;
    return SetField16ToSelectedS20047CCStruct(v2, 64, v3);
}


// 0x800110a
int __fastcall sub_800110A(int a1, int a2)
{
    int v2; // r7
    int v3; // r5
    unsigned int v4; // r0
    int result; // r0
    unsigned __int8 v6; // vf

    v2 = a1;
    v3 = a2 - 2;
    do
    {
        v4 = *(v2 + v3);
        result = byte_8001144[v4 & 0xF] | 16 * byte_8001144[v4 >> 4] | (byte_8001144[(v4 >> 8) & 0xF] << 8) | (byte_8001144[v4 >> 12] << 12);
        *(v2 + v3) = result;
        v6 = __OFSUB__(v3, 2);
        v3 -= 2;
    }
    while ( !((v3 < 0) ^ v6) );
    return result;
}


// 0x8001154
void sub_8001154()
{
    ;
}


// 0x8001158
// () -> void
int __fastcall sub_8001158(int *a1)
{
    int *i; // r7
    int result; // r0

    for ( i = a1; ; i += 2 )
    {
        result = *i;
        if ( !*i )
            break;
        sub_802FE28(result, i[1], 0, 0);
    }
    return result;
}


// 0x8001172
int __fastcall sub_8001172(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_09) = result;
    return result;
}


// 0x800117c
unsigned int __fastcall calcAngle_800117C(int a1, int a2)
{
    __asm { SVC         0xA }
    return (a2 >> 16) >> 8;
}


// 0x800118a
int __fastcall sub_800118A(__int64 a1)
{
    if ( a1 )
        LODWORD(a1) = ((calcAngle_800117C(a1, SHIDWORD(a1)) + 32) << 24 >> 30) + 1;
    return a1;
}


// 0x80011a0
int __fastcall sub_80011A0(int a1, int a2)
{
    int v2; // r0
    int v3; // r2

    v2 = 2 * a1;
    v3 = *&byte_80066E0[v2];
    return *&math_cosTable[v2] * a2 >> 8;
}


// 0x80011c0
int __fastcall sub_80011C0(int a1, int a2)
{
    int result; // r0

    if ( a1 )
        result = sub_80011A0((a1 - 1) << 6, a2);
    else
        result = 0;
    return result;
}


// 0x80011d6
BOOL __fastcall sub_80011D6(int a1, int a2, int a3, int a4)
{
    int v4; // r4

    return a1 - a3 + v4 < (2 * v4) && a2 - a4 + v4 < (2 * v4);
}


// 0x80011f0
BOOL __fastcall sub_80011F0(int a1, int a2, int a3, int a4)
{
    int v4; // r4

    return v4 * v4 - ((a1 - a3) * (a1 - a3) + (a2 - a4) * (a2 - a4)) >= 0;
}


// 0x800120e
unsigned int __fastcall sub_800120E(_DWORD *vect, int x, int y, int z)
{
    unsigned int v4; // r4
    unsigned int v5; // r6
    int dz; // r0
    int v8; // r0
    int v9; // r0
    int v10; // r0
    int v11; // r1
    int v12; // r1
    _DWORD *v13; // [sp-8h] [bp-10h]
    int v14; // [sp-4h] [bp-Ch]

    if ( v4 )
    {
        v13 = vect + 2;
        v14 = z;
        v9 = SWI_Sqrt(((x - *vect) >> 8) * ((x - *vect) >> 8) + ((y - vect[1]) >> 8) * ((y - vect[1]) >> 8));
        v10 = SWI_Div(v9 << 8, v4);
        v4 >>= 1;
        if ( (v11 - v4) >= 0 )
            ++v10;
        v12 = v10;
        vect = v13;
        z = v14;
        if ( v12 )
            return SWI_Div(v14 - *v13, v12) + (-v5 * v12 >> 1);
    }
    dz = z - vect[2];
    if ( dz >= 0 )
        return v4;
    v8 = SWI_Div(dz, v5 >> 8);
    SWI_Sqrt(v8);
    return 0;
}


// 0x8001288
int __fastcall sub_8001288(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r0
    unsigned int v6; // r3
    int v7; // r1
    int v8; // r1
    int v9; // r2
    int v10; // ST00_4
    int v11; // ST04_4
    int v13; // [sp-8h] [bp-Ch]
    int v14; // [sp-4h] [bp-8h]

    v13 = a2 - *a1;
    v14 = a3 - a1[1];
    v5 = SWI_Div(2 * a4, -v4);
    if ( (v7 - (v6 >> 1)) >= 0 )
        ++v5;
    v8 = v13;
    v9 = v14;
    v10 = v5;
    v11 = v8;
    SWI_Div(v9, v5);
    SWI_Div(v11, v10);
    return v10;
}


// 0x80012c6
__int64 __fastcall sub_80012C6(_DWORD *a1, int a2, int a3)
{
    int v3; // ST00_4
    int v4; // ST04_4
    int v5; // r0
    int v10; // r4
    int v11; // r6
    int v12; // r1
    __int64 v13; // ST08_8
    int v15; // [sp+0h] [bp-18h]
    int v16; // [sp+4h] [bp-14h]

    v3 = a3 - a1[1];
    v4 = a2 - *a1;
    v5 = calcAngle_800117C(v3, a2 - *a1);
    __asm
    {
        SVC         8
        SVC         6
    }
    v10 = v15;
    v11 = v16;
    LODWORD(v13) = sub_80011A0(v5, ((v3 >> 8) * (v3 >> 8) + (v4 >> 8) * (v4 >> 8)) << 8);
    HIDWORD(v13) = v12;
    SWI_Div(v10 << 17, v11 * v11);
    return v13;
}


// 0x8001330
int __fastcall sub_8001330(_DWORD *a1, int a2, int a3)
{
    int v3; // ST00_4
    int v4; // ST04_4
    int v5; // r0
    int result; // r0

    v3 = a3 - a1[1];
    v4 = a2 - *a1;
    v5 = calcAngle_800117C(v3, a2 - *a1);
    __asm
    {
        SVC         8
        SVC         6
    }
    result = sub_80011A0(v5, ((v3 >> 8) * (v3 >> 8) + (v4 >> 8) * (v4 >> 8)) << 8);
    __asm { SVC         6 }
    return result;
}


// 0x8001382
int __fastcall sub_8001382(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_S2034880_Ptr) + 92) |= result;
    return result;
}


// 0x800138e
int __fastcall sub_800138E(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_S2034880_Ptr) + 92) &= ~result;
    return result;
}


// 0x800139a
int sub_800139A()
{
    int v0; // r10

    return *(*(v0 + oToolkit_S2034880_Ptr) + 92);
}


// 0x80013a2
int __fastcall sub_80013A2(int result)
{
    int v1; // r10

    *(*(v1 + oToolkit_S2034880_Ptr) + 92) = result;
    return result;
}


// 0x80013aa
__int64 __fastcall sub_80013AA(int a1, int a2, _DWORD *a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r6
    int v7; // r7
    _DWORD *v8; // ST00_4
    unsigned int v9; // r2
    unsigned int v10; // r2
    _DWORD *v11; // r1
    unsigned __int8 *v12; // r3
    _DWORD *v13; // r2
    int v14; // r0
    bool v15; // nf
    unsigned __int8 v16; // vf
    int v17; // r0
    int v18; // r1
    __int64 v20; // [sp+8h] [bp-4Ch]
    int v21; // [sp+10h] [bp-44h]
    int v22; // [sp+14h] [bp-40h]
    int v23; // [sp+18h] [bp-3Ch]
    int v24; // [sp+1Ch] [bp-38h]
    int v25; // [sp+24h] [bp-30h]
    unsigned int v26; // [sp+38h] [bp-1Ch]
    unsigned int v27; // [sp+3Ch] [bp-18h]

    v21 = v7;
    v25 = a4;
    v8 = a3;
    v9 = ((a2 << 23) >> 31) ^ sCamera.unk_4C;
    v26 = v9;
    v23 = -2 * v9 + 1;
    v10 = (a2 << 22) >> 31;
    v27 = v10;
    v24 = -2 * v10 + 1;
    v11 = (*(a1 + 4 * a2) + a1);
    HIDWORD(v20) = v11[1] + a1;
    LODWORD(v20) = *v11 + a1;
    v12 = (v11[3] + a1 + *(v11[3] + a1 + 4 * *(v11[2] + *(v11[2] + a1) + a1)));
    v13 = v8;
    v22 = 0;
    while ( 1 )
    {
        v14 = *v12;
        if ( v14 == 255 )
            break;
        v16 = __OFSUB__(v21, 8);
        v15 = v21 - 8 < 0;
        v21 -= 8;
        if ( v15 ^ v16 )
            break;
        v13[1] = v14 + (v5 << 12) + v6;
        v17 = v12[4];
        v18 = v12[3] & 0xF;
        *v13 = (v17 << 14)
                 + (v18 << 30)
                 + ((v24 * v12[2] + v4 - byte_80014BC[2 * (4 * v17 + v18) + 1] * v27) & 0x1FF)
                 + (((v12[1] * v23 + v25 - byte_80014BC[2 * (4 * v17 + v18)] * v26) << 16) & 0x1FFFFFF)
                 + ((v26 << 28) ^ ((v12[3] & 0xF0) << 22))
                 + (v27 << 29);
        ++v22;
        v13 += 2;
        v12 += 5;
    }
    return v20;
}


// 0x80014d4
int __fastcall sub_80014D4(int a1, int a2)
{
    __asm { SVC         8 }
    return ((a1 >> 12) * (a1 >> 12) + (a2 >> 12) * (a2 >> 12)) << 12;
}


// 0x80014ec
// (void *src, void *dest, int size) -> void
void __fastcall __spoils<R2> copyWords_80014EC(_DWORD *src, _DWORD *dest, int size)
{
    unsigned __int8 v3; // vf
    int v4; // r2
    _DWORD *v5; // r0
    _DWORD *v6; // r1

    if ( src < dest )
    {
        v4 = size - 4;
        v5 = (src + v4);
        v6 = (dest + v4);
        do
        {
            *v6 = *v5;
            --v5;
            --v6;
            v3 = __OFSUB__(v4, 4);
            v4 -= 4;
        }
        while ( !((v4 < 0) ^ v3) );
    }
    else
    {
        do
        {
            *dest = *src;
            ++src;
            ++dest;
            v3 = __OFSUB__(size, 4);
            size -= 4;
        }
        while ( !(((size < 0) ^ v3) | (size == 0)) );
    }
}


// 0x8001514
// () -> void
void __cdecl SeedRNG2()
{
    eRngSeed20013F0 = 0xA338244F;
}


// 0x800151c
// () -> void
void __cdecl GetRNG2()
{
    eRngSeed20013F0 = (2 * eRngSeed20013F0 + (eRngSeed20013F0 >> 31) + 1) ^ 0x873CA9E5;
}


// 0x8001532
void __cdecl GetPositiveSignedRNG2()
{
    eRngSeed20013F0 = (2 * eRngSeed20013F0 + (eRngSeed20013F0 >> 31) + 1) ^ 0x873CA9E5;
}


// 0x800154c
// () -> void
void __cdecl GetRNG1()
{
    rngSeed_2001120 = (2 * rngSeed_2001120 + (rngSeed_2001120 >> 31) + 1) ^ 0x873CA9E5;
}


// 0x8001562
unsigned int GetPositiveSignedRNG1()
{
    rngSeed_2001120 = (2 * rngSeed_2001120 + (rngSeed_2001120 >> 31) + 1) ^ 0x873CA9E5;
    return (2 * rngSeed_2001120) >> 1;
}


// 0x800157c
unsigned int dead_rng_800157C()
{
    unsigned int result; // r0

    result = (2 * dword_20018E8 + (dword_20018E8 >> 31) + 1) ^ 0x873CA9E5;
    dword_20018E8 = (2 * dword_20018E8 + (dword_20018E8 >> 31) + 1) ^ 0x873CA9E5;
    return result;
}


// 0x80015b4
void __cdecl sub_80015B4()
{
    ZeroFillByEightWords(0x600E000, 0x2000);
    ZeroFillGFX30025c0();
    copyMemory_8001850();
}


// 0x80015d0
void copyToVRAMAndClear_iBGTileIdBlocks_Ptr()
{
    Toolkit *tk; // r10

    CopyByEightWords(tk->gfx_30025C0, 0x600E000, 0x2000u);
    FillByEightWords(tk->gfx_30025C0, 2048, 0x2FF02FF);
}


// 0x80015fc
void __fastcall sub_80015FC(int idx)
{
    int v1; // r10
    char *v2; // r1
    _DWORD *v3; // r2
    int result; // r0

    v2 = &byte_8001618[8 * idx];
    v3 = (*(v1 + oToolkit_RenderInfoPtr) + 4);
    *v3 = *v2;
    result = *(v2 + 1);
    v3[1] = result;
}


// 0x8001708
int __fastcall map_8001708(signed int a1, int a2)
{
    _DWORD *v2; // r3

    if ( a1 >= 128 )
    {
        v2 = &off_8033878;
        a1 -= 128;
    }
    else
    {
        v2 = &off_803385C;
    }
    return sub_80015FC(*(v2[a1] + a2));
}


// 0x800172c
int render_800172C()
{
    Toolkit *tk; // r10
    s_rendering_0200AC40 *v1; // r5
    int result; // r0
    _WORD *v3; // r5

    v1 = tk->sRender_08;
    MosaicSize = v1->unk_02;
    CopyWords(&v1->unk_04, &BG0Control, 0x38u);
    CopyHalfwords(tk->unk_200F3A0, &Window0HorizontalDimensions, 12);
    v3 = tk->unk_2009740;
    *&ColorSpecialEffectsSelection = *v3;
    Brightness_Fade_In_Out_Coefficient = v3[2];
    LCDControl = tk->sRender_08->renderingState;
    return result;
}


// 0x8001778
int __fastcall sRender_08_setRenderingState(int renderingState)
{
    Toolkit *tk; // r10

    tk->sRender_08->renderingState = renderingState;
    return renderingState;
}


// 0x8001780
int sub_8001780()
{
    int v0; // r10

    return **(v0 + oToolkit_RenderInfoPtr);
}


// 0x8001788
void __cdecl renderInfo_8001788()
{
    Toolkit *tk; // r10
    s_rendering_0200AC40 *v1; // r0

    v1 = tk->sRender_08;
    v1->unk_0C = 0;
    v1->unk_0E = 0;
    v1->unk_10 = 0;
    v1->unk_12 = 0;
    v1->unk_14 = 0;
    v1->unk_16 = 0;
    v1->unk_1A = 0;
    v1->unk_18 = 0;
}


// 0x80017a0
void __cdecl renderInfo_80017A0()
{
    Toolkit *tk; // r10

    tk->sRender_08->unk_02 = 0;
}


// 0x80017aa
void __fastcall zeroFillVRAM()
{
    ZeroFillByEightWords(0x6000000, 64);
    ZeroFillByEightWords(0x6004000, 64);
    ZeroFillByEightWords(0x6008000, 64);
    ZeroFillByEightWords(0x600C000, 32);
}


// 0x80017e0
void __fastcall ZeroFill_byte_3001960(int unused1, int unused2, int a3, int a4)
{
    ZeroFillByHalfword(byte_3001960, 2u, a3, a4);
}


// 0x80017ec
void __fastcall main_zeroFill_80017EC(int a1, int a2, int a3, int a4)
{
    int v_a3; // r2
    int v_a4; // r3

    ZeroFillByHalfword(byte_3001960, 2u, a3, a4);
    ZeroFillByHalfword(0x5000000, 2u, v_a3, v_a4);
}


// 0x8001808
void __cdecl copyPalletesToIWRAM_8001808()
{
    CopyByEightWords(iPalette3001B60, 0x5000000, 0x200u);
}


// 0x8001820
void __cdecl zeroFill_e2009740()
{
    Toolkit *tk; // r10

    ZeroFillByWord(tk->unk_2009740, 8);
}


// 0x800182e
void __cdecl zeroFill_e200F3A0()
{
    Toolkit *tk; // r10

    ZeroFillByWord(tk->unk_200F3A0, 12);
}


// 0x800183c
void __cdecl ZeroFillGFX30025c0()
{
    int v0; // r10

    ZeroFillByEightWords(*(v0 + oToolkit_iBGTileIdBlocks_Ptr), 0x2000);
}


// 0x8001850
void copyMemory_8001850()
{
    CopyByEightWords(dword_86A5520, 0x600D400, 0x800u);
    CopyByEightWords(byte_86BEC80, &unk_3001B40, 0x20u);
}


// 0x800187c
int __fastcall sub_800187C(int a1, int a2, int a3, __int16 a4)
{
    int v4; // r10
    int result; // r0

    result = 2 * a1 + (a2 << 6) + (a3 << 11);
    *(*(v4 + oToolkit_iBGTileIdBlocks_Ptr) + result) = a4;
    return result;
}


// 0x8001890
int __fastcall sub_8001890(int a1, int a2, int a3, _WORD *a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r10
    int result; // r0
    _WORD *v8; // r6
    int v9; // r2
    _WORD *v10; // r1

    result = 2 * a1;
    v8 = (*(v6 + oToolkit_iBGTileIdBlocks_Ptr) + (a3 << 11) + result + (a2 << 6));
    v9 = 0;
    v10 = v8;
    do
    {
        do
        {
            *v8 = *a4;
            ++a4;
            ++v8;
            ++v9;
        }
        while ( v9 < v4 );
        v9 = 0;
        v10 += 32;
        v8 = v10;
        --v5;
    }
    while ( v5 > 0 );
    return result;
}


// 0x80018c2
// (int j, int i, int cpyOff, u16 *tileIds) -> void
void __usercall CopyBackgroundTiles(int j@<R0>, int i@<R1>, int cpyOff@<R2>, u16 *tileIds@<R3>, int a5@<R4>, int a6@<R5>)
{
    iCopyBackgroundTiles(j, i, cpyOff, tileIds, a5, a6);
}


// 0x80018d0
void __fastcall call_sub_3005EBA(int a1, int a2, int a3, __int16 a4)
{
    sub_3005EBA(a1, a2, a3, a4);
}


// 0x80018e0
int __fastcall sub_80018E0(char a1, int a2, int a3, _WORD *a4)
{
    int v4; // r4
    int v5; // r10
    int v6; // r6
    int result; // r0

    v6 = *(v5 + oToolkit_iBGTileIdBlocks_Ptr) + (a3 << 11) + (a2 << 6);
    result = a1 & 0x1F;
    do
    {
        *(v6 + 2 * result) = *a4;
        result = (result + 1) & 0x1F;
        ++a4;
        --v4;
    }
    while ( v4 > 0 );
    return result;
}


// 0x8001930
int __fastcall sub_8001930(int a1, int a2, int a3, int a4)
{
    _WORD *v4; // r4
    int v5; // r2
    int result; // r0
    int v7; // r5
    int v8; // r0
    _WORD *v9; // r1
    unsigned __int8 v10; // vf

    v5 = 4 * a3;
    result = a1 | (a2 << 12);
    v7 = 0;
    do
    {
        do
        {
            *v4 = result;
            v8 = result + 1;
            v4[1] = v8++;
            v9 = &v4[v5 / 2u];
            *v9 = v8++;
            v9[1] = v8;
            result = v8 + 1;
            v4 += 2;
            v7 += 4;
        }
        while ( v7 < v5 );
        v10 = __OFSUB__(a4--, 1);
    }
    while ( (a4 < 0) ^ v10 );
    return result;
}


// 0x800195c
int __fastcall sub_800195C(int result, int a2, void *a3)
{
    if ( result )
    {
        off_200A880 = result;
        off_200A888 = a2;
        off_200A884 = a3;
        result = start_800024C(4, a3);
    }
    return result;
}


// 0x8001974
int sub_8001974()
{
    off_200A880 = nullsub_39;
    off_200A888 = nullsub_39;
    off_200A884 = 50355417;
    return start_800024C(4, nullsub_38 + 1);
}


// 0x8001994
int cb_call_200A880()
{
    return off_200A880();
}


// 0x80019a0
int sub_80019A0()
{
    return off_200A888();
}


// 0x80019b0
void nullsub_35()
{
    ;
}


// 0x80019b2
void nullsub_36()
{
    ;
}


// 0x80019b4
void sub_80019B4()
{
    int v0; // r10
    unsigned int v1; // r3
    int v2; // r1

    dword_2009690 -= 8;
    dword_2009694 -= 4;
    v1 = dword_2009694 >> 4;
    v2 = *(v0 + oToolkit_RenderInfoPtr);
    *(v2 + 16) = dword_2009690 >> 4;
    *(v2 + 18) = v1;
}


// 0x80019d0
void sub_80019D0()
{
    int v0; // r10
    unsigned int v1; // r3
    int v2; // r1

    dword_2009690 -= 8;
    dword_2009694 -= 4;
    v1 = dword_2009694 >> 4;
    v2 = *(v0 + oToolkit_RenderInfoPtr);
    *(v2 + 24) = dword_2009690 >> 4;
    *(v2 + 26) = v1;
}


// 0x80019ec
void sub_80019EC()
{
    int v0; // r10

    dword_2009690 -= 4;
    *(*(v0 + oToolkit_RenderInfoPtr) + 18) = dword_2009690 >> 4;
}


// 0x80019fe
void sub_80019FE()
{
    int v0; // r10

    dword_2009690 -= 4;
    *(*(v0 + oToolkit_RenderInfoPtr) + 26) = dword_2009690 >> 4;
}


// 0x8001a10
void sub_8001A10()
{
    int v0; // r10

    dword_2009690 += 4;
    *(*(v0 + oToolkit_RenderInfoPtr) + 18) = dword_2009690 >> 4;
}


// 0x8001a22
void sub_8001A22()
{
    int v0; // r10

    dword_2009690 += 4;
    *(*(v0 + oToolkit_RenderInfoPtr) + 26) = dword_2009690 >> 4;
}


// 0x8001a34
void sub_8001A34()
{
    int v0; // r10

    *(*(v0 + oToolkit_RenderInfoPtr) + 16) = ++dword_2009690 >> 4;
}


// 0x8001a46
void sub_8001A46()
{
    int v0; // r10

    *(*(v0 + oToolkit_RenderInfoPtr) + 24) = ++dword_2009690 >> 4;
}


// 0x8001a58
void sub_8001A58()
{
    int v0; // r10

    dword_2009690 -= 8;
    *(*(v0 + oToolkit_RenderInfoPtr) + 16) = dword_2009690 >> 4;
}


// 0x8001a6a
void sub_8001A6A()
{
    int v0; // r10

    dword_2009690 -= 8;
    *(*(v0 + oToolkit_RenderInfoPtr) + 24) = dword_2009690 >> 4;
}


// 0x8001a7c
int sub_8001A7C()
{
    int v0; // r10
    int result; // r0
    int v2; // r2

    result = sub_800139A();
    if ( result & 0x10 )
    {
        v2 = dword_2009690 - 1024;
        if ( dword_2009690 - 1024 < -262144 )
            v2 = -262144;
        dword_2009690 = v2;
        *(*(v0 + oToolkit_RenderInfoPtr) + 18) -= HIWORD(v2);
    }
    return result;
}


// 0x8001ab4
void nullsub_39()
{
    ;
}


// 0x8001afc
void __cdecl zeroFill_e20094C0()
{
    ZeroFillByWord(byte_20094C0, &loc_1B0);
}


// 0x8001b0c
int __fastcall sub_8001B0C(int a1)
{
    return *(&off_8001AB8 + a1);
}


// 0x8001b1c
int __fastcall sub_8001B1C(int a1)
{
    int v1; // r1
    char *v2; // r7
    int v3; // r3
    int v4; // r0
    int v5; // r6

    v1 = *(a1 + 9);
    v2 = &byte_20094C0[24 * v1];
    v2[1] = v1;
    *(v2 + 3) = *a1;
    *(v2 + 4) = *(a1 + 4);
    v3 = *(a1 + 8);
    *(v2 + 5) = v3;
    v4 = a1 + 12;
    LOWORD(v5) = 1;
    if ( v3 != 8 )
        v5 = *(v4 + 4);
    *(v2 + 1) = v5;
    *v2 = 1;
    *(v2 + 1) = v4;
    *(v2 + 2) = v4;
    return (*(&off_8001C24 + v2[20]))();
}


// 0x8001b6c
int __fastcall sub_8001B6C(int a1)
{
    byte_20094C0[24 * a1] = 0;
    return sub_800239A(a1);
}


// 0x8001b84
int __fastcall sub_8001B84(int a1)
{
    return byte_20094C0[24 * a1];
}


// 0x8001b94
void __cdecl PET_onUpdate_8001B94()
{
    char *v0; // r7
    signed int v1; // r4
    int v2; // r1
    int *v3; // r0
    int v4; // r1

    v0 = byte_20094C0;
    v1 = 0;
    do
    {
        if ( *v0 )
        {
            v2 = *(v0 + 1) - 1;
            *(v0 + 1) = v2;
            if ( v2 <= 0 )
            {
                v3 = (*(v0 + 2) + *&byte_8001C08[v0[20]]);
                v4 = *v3;
                if ( *v3 )
                {
                    if ( v4 == 2 )
                    {
                        v3 = v3[1];
                        *(v0 + 1) = v3;
                    }
                    else if ( v4 == 1 )
                    {
                        v3 = *(v0 + 1);
                    }
                    *(v0 + 2) = v3;
                    *(v0 + 1) = v3[1];
                    (*(&off_8001C24 + v0[20]))();
                }
                else
                {
                    *v0 = 0;
                }
            }
        }
        v0 += 24;
        ++v1;
    }
    while ( v1 < 18 );
}


// 0x8001c44
int __fastcall sub_8001C44(_DWORD *a1)
{
    int v1; // r7

    return (loc_8000AC8)(*a1, *(v1 + 12), *(v1 + 16));
}


// 0x8001c52
int __fastcall sub_8001C52(int a1)
{
    _BYTE *v1; // r7
    int v2; // r5
    int v3; // r2
    unsigned __int8 v4; // vf
    int result; // r0

    v2 = dword_200BE7C + *(dword_200BE7C + 4 * v1[23] + 4);
    v3 = v1[22];
    do
    {
        *(v2 + *a1) = *(v2 + *a1) & 0xF000 | *(a1 + 4);
        a1 += 8;
        v4 = __OFSUB__(v3--, 1);
    }
    while ( !(((v3 < 0) ^ v4) | (v3 == 0)) );
    sub_8030808();
    result = 0;
    *v1 = 0;
    return result;
}


// 0x8001c94
int __fastcall sub_8001C94(int *a1)
{
    int v1; // r7
    int v2; // r6
    int v3; // r5
    int v4; // r4
    int v5; // r1
    int v6; // r1

    v2 = *a1;
    v3 = *(&off_8001AB8 + *(v1 + 23));
    v4 = *(v1 + 12);
    v5 = 0;
    do
    {
        (*(&off_8001CEC + (*(v2 + v5) >> 10)))();
        v3 += 32;
        v5 = v6 + 2;
    }
    while ( v5 < 2 * *(v1 + 22) );
    return (loc_8000AC8)(*(&off_8001AB8 + *(v1 + 23)), *(v1 + 16), 32 * *(v1 + 22));
}


// 0x8001cfc
int __fastcall sub_8001CFC(int *a1)
{
    int v1; // r7
    int v2; // r6
    int v3; // r5
    int v4; // r4
    int v5; // r1
    int v6; // r1

    v2 = *a1;
    v3 = *(&off_8001AB8 + *(v1 + 23));
    v4 = *(v1 + 12);
    v5 = 0;
    do
    {
        (*(&off_8001D54 + (*(v2 + v5) >> 10)))();
        v3 += 64;
        v5 = v6 + 2;
    }
    while ( v5 < 2 * *(v1 + 22) );
    return (loc_8000AC8)(*(&off_8001AB8 + *(v1 + 23)), *(v1 + 16), *(v1 + 22) << 6);
}


// 0x8001d64
int sub_8001D64()
{
    _DWORD *v0; // r4
    _DWORD *v1; // r5
    int result; // r0

    *v1 = *v0;
    v1[1] = v0[1];
    v1[2] = v0[2];
    v1[3] = v0[3];
    v1[4] = v0[4];
    v1[5] = v0[5];
    v1[6] = v0[6];
    result = v0[7];
    v1[7] = result;
    return result;
}


// 0x8001d86
unsigned int sub_8001D86()
{
    _DWORD *v0; // r4
    unsigned int *v1; // r5
    int v2; // r0
    int v3; // r0
    int v4; // r0
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r0
    unsigned int result; // r0

    v2 = __ROR4__(((*v0 & 0xFF00FF00) >> 8) | ((*v0 & 0xFF00FF) << 8), 16);
    *v1 = ((v2 & 0xF0F0F0F0) >> 4) | 16 * (v2 & 0xF0F0F0F);
    v3 = __ROR4__(((v0[1] & 0xFF00FF00) >> 8) | ((v0[1] & 0xFF00FF) << 8), 16);
    v1[1] = ((v3 & 0xF0F0F0F0) >> 4) | 16 * (v3 & 0xF0F0F0F);
    v4 = __ROR4__(((v0[2] & 0xFF00FF00) >> 8) | ((v0[2] & 0xFF00FF) << 8), 16);
    v1[2] = ((v4 & 0xF0F0F0F0) >> 4) | 16 * (v4 & 0xF0F0F0F);
    v5 = __ROR4__(((v0[3] & 0xFF00FF00) >> 8) | ((v0[3] & 0xFF00FF) << 8), 16);
    v1[3] = ((v5 & 0xF0F0F0F0) >> 4) | 16 * (v5 & 0xF0F0F0F);
    v6 = __ROR4__(((v0[4] & 0xFF00FF00) >> 8) | ((v0[4] & 0xFF00FF) << 8), 16);
    v1[4] = ((v6 & 0xF0F0F0F0) >> 4) | 16 * (v6 & 0xF0F0F0F);
    v7 = __ROR4__(((v0[5] & 0xFF00FF00) >> 8) | ((v0[5] & 0xFF00FF) << 8), 16);
    v1[5] = ((v7 & 0xF0F0F0F0) >> 4) | 16 * (v7 & 0xF0F0F0F);
    v8 = __ROR4__(((v0[6] & 0xFF00FF00) >> 8) | ((v0[6] & 0xFF00FF) << 8), 16);
    v1[6] = ((v8 & 0xF0F0F0F0) >> 4) | 16 * (v8 & 0xF0F0F0F);
    v9 = __ROR4__(((v0[7] & 0xFF00FF00) >> 8) | ((v0[7] & 0xFF00FF) << 8), 16);
    result = ((v9 & 0xF0F0F0F0) >> 4) | 16 * (v9 & 0xF0F0F0F);
    v1[7] = result;
    return result;
}


// 0x8001eae
int sub_8001EAE()
{
    _DWORD *v0; // r4
    _DWORD *v1; // r5
    int result; // r0

    v1[7] = *v0;
    v1[6] = v0[1];
    v1[5] = v0[2];
    v1[4] = v0[3];
    v1[3] = v0[4];
    v1[2] = v0[5];
    v1[1] = v0[6];
    result = v0[7];
    *v1 = result;
    return result;
}


// 0x8001ed0
unsigned int sub_8001ED0()
{
    _DWORD *v0; // r4
    _DWORD *v1; // r5
    int v2; // r0
    int v3; // r0
    int v4; // r0
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r0
    unsigned int result; // r0

    v2 = __ROR4__(((*v0 & 0xFF00FF00) >> 8) | ((*v0 & 0xFF00FF) << 8), 16);
    v1[7] = ((v2 & 0xF0F0F0F0) >> 4) | 16 * (v2 & 0xF0F0F0F);
    v3 = __ROR4__(((v0[1] & 0xFF00FF00) >> 8) | ((v0[1] & 0xFF00FF) << 8), 16);
    v1[6] = ((v3 & 0xF0F0F0F0) >> 4) | 16 * (v3 & 0xF0F0F0F);
    v4 = __ROR4__(((v0[2] & 0xFF00FF00) >> 8) | ((v0[2] & 0xFF00FF) << 8), 16);
    v1[5] = ((v4 & 0xF0F0F0F0) >> 4) | 16 * (v4 & 0xF0F0F0F);
    v5 = __ROR4__(((v0[3] & 0xFF00FF00) >> 8) | ((v0[3] & 0xFF00FF) << 8), 16);
    v1[4] = ((v5 & 0xF0F0F0F0) >> 4) | 16 * (v5 & 0xF0F0F0F);
    v6 = __ROR4__(((v0[4] & 0xFF00FF00) >> 8) | ((v0[4] & 0xFF00FF) << 8), 16);
    v1[3] = ((v6 & 0xF0F0F0F0) >> 4) | 16 * (v6 & 0xF0F0F0F);
    v7 = __ROR4__(((v0[5] & 0xFF00FF00) >> 8) | ((v0[5] & 0xFF00FF) << 8), 16);
    v1[2] = ((v7 & 0xF0F0F0F0) >> 4) | 16 * (v7 & 0xF0F0F0F);
    v8 = __ROR4__(((v0[6] & 0xFF00FF00) >> 8) | ((v0[6] & 0xFF00FF) << 8), 16);
    v1[1] = ((v8 & 0xF0F0F0F0) >> 4) | 16 * (v8 & 0xF0F0F0F);
    v9 = __ROR4__(((v0[7] & 0xFF00FF00) >> 8) | ((v0[7] & 0xFF00FF) << 8), 16);
    result = ((v9 & 0xF0F0F0F0) >> 4) | 16 * (v9 & 0xF0F0F0F);
    *v1 = result;
    return result;
}


// 0x8002000
int sub_8002000()
{
    _DWORD *v0; // r4
    _DWORD *v1; // r5
    int result; // r0

    *v1 = *v0;
    v1[1] = v0[1];
    v1[2] = v0[2];
    v1[3] = v0[3];
    v1[4] = v0[4];
    v1[5] = v0[5];
    v1[6] = v0[6];
    v1[7] = v0[7];
    v1[8] = v0[8];
    v1[9] = v0[9];
    v1[10] = v0[10];
    v1[11] = v0[11];
    v1[12] = v0[12];
    v1[13] = v0[13];
    v1[14] = v0[14];
    result = v0[15];
    v1[15] = result;
    return result;
}


// 0x8002042
int sub_8002042()
{
    _DWORD *v0; // r4
    _DWORD *v1; // r5
    int result; // r0

    *v1 = __ROR4__(((*v0 & 0xFF00FF00) >> 8) | ((*v0 & 0xFF00FF) << 8), 16);
    v1[1] = __ROR4__(((v0[1] & 0xFF00FF00) >> 8) | ((v0[1] & 0xFF00FF) << 8), 16);
    v1[2] = __ROR4__(((v0[2] & 0xFF00FF00) >> 8) | ((v0[2] & 0xFF00FF) << 8), 16);
    v1[3] = __ROR4__(((v0[3] & 0xFF00FF00) >> 8) | ((v0[3] & 0xFF00FF) << 8), 16);
    v1[4] = __ROR4__(((v0[4] & 0xFF00FF00) >> 8) | ((v0[4] & 0xFF00FF) << 8), 16);
    v1[5] = __ROR4__(((v0[5] & 0xFF00FF00) >> 8) | ((v0[5] & 0xFF00FF) << 8), 16);
    v1[6] = __ROR4__(((v0[6] & 0xFF00FF00) >> 8) | ((v0[6] & 0xFF00FF) << 8), 16);
    v1[7] = __ROR4__(((v0[7] & 0xFF00FF00) >> 8) | ((v0[7] & 0xFF00FF) << 8), 16);
    v1[8] = __ROR4__(((v0[8] & 0xFF00FF00) >> 8) | ((v0[8] & 0xFF00FF) << 8), 16);
    v1[9] = __ROR4__(((v0[9] & 0xFF00FF00) >> 8) | ((v0[9] & 0xFF00FF) << 8), 16);
    v1[10] = __ROR4__(((v0[10] & 0xFF00FF00) >> 8) | ((v0[10] & 0xFF00FF) << 8), 16);
    v1[11] = __ROR4__(((v0[11] & 0xFF00FF00) >> 8) | ((v0[11] & 0xFF00FF) << 8), 16);
    v1[12] = __ROR4__(((v0[12] & 0xFF00FF00) >> 8) | ((v0[12] & 0xFF00FF) << 8), 16);
    v1[13] = __ROR4__(((v0[13] & 0xFF00FF00) >> 8) | ((v0[13] & 0xFF00FF) << 8), 16);
    v1[14] = __ROR4__(((v0[14] & 0xFF00FF00) >> 8) | ((v0[14] & 0xFF00FF) << 8), 16);
    result = __ROR4__(((v0[15] & 0xFF00FF00) >> 8) | ((v0[15] & 0xFF00FF) << 8), 16);
    v1[15] = result;
    return result;
}


// 0x800218c
int sub_800218C()
{
    _DWORD *v0; // r4
    _DWORD *v1; // r5
    int result; // r0

    v1[7] = *v0;
    v1[6] = v0[1];
    v1[5] = v0[2];
    v1[4] = v0[3];
    v1[3] = v0[4];
    v1[2] = v0[5];
    v1[1] = v0[6];
    *v1 = v0[7];
    v1[15] = v0[8];
    v1[14] = v0[9];
    v1[13] = v0[10];
    v1[12] = v0[11];
    v1[11] = v0[12];
    v1[10] = v0[13];
    v1[9] = v0[14];
    result = v0[15];
    v1[8] = result;
    return result;
}


// 0x80021ce
int __fastcall sub_80021CE(int a1, int a2, unsigned int a3, int a4)
{
    _DWORD *v4; // r4
    _DWORD *v5; // r5
    int result; // r0

    v5[7] = __ROR4__(((*v4 & a3) >> 8) | ((*v4 & a4) << 8), 16);
    v5[6] = __ROR4__(((v4[1] & a3) >> 8) | ((v4[1] & a4) << 8), 16);
    v5[5] = __ROR4__(((v4[2] & a3) >> 8) | ((v4[2] & a4) << 8), 16);
    v5[4] = __ROR4__(((v4[3] & a3) >> 8) | ((v4[3] & a4) << 8), 16);
    v5[3] = __ROR4__(((v4[4] & a3) >> 8) | ((v4[4] & a4) << 8), 16);
    v5[2] = __ROR4__(((v4[5] & a3) >> 8) | ((v4[5] & a4) << 8), 16);
    v5[1] = __ROR4__(((v4[6] & a3) >> 8) | ((v4[6] & a4) << 8), 16);
    *v5 = __ROR4__(((v4[7] & a3) >> 8) | ((v4[7] & a4) << 8), 16);
    v5[15] = __ROR4__(((v4[8] & a3) >> 8) | ((v4[8] & a4) << 8), 16);
    v5[14] = __ROR4__(((v4[9] & a3) >> 8) | ((v4[9] & a4) << 8), 16);
    v5[13] = __ROR4__(((v4[10] & a3) >> 8) | ((v4[10] & a4) << 8), 16);
    v5[12] = __ROR4__(((v4[11] & a3) >> 8) | ((v4[11] & a4) << 8), 16);
    v5[11] = __ROR4__(((v4[12] & a3) >> 8) | ((v4[12] & a4) << 8), 16);
    v5[10] = __ROR4__(((v4[13] & a3) >> 8) | ((v4[13] & a4) << 8), 16);
    v5[9] = __ROR4__(((v4[14] & a3) >> 8) | ((v4[14] & a4) << 8), 16);
    result = __ROR4__(((v4[15] & a3) >> 8) | ((v4[15] & a4) << 8), 16);
    v5[8] = result;
    return result;
}


// 0x8002310
int __fastcall sub_8002310(_DWORD *a1)
{
    int v1; // r7
    int v2; // r4

    v2 = *(v1 + 16);
    return sub_8002378(*(v1 + 12), (2 * *a1) >> 1, *(v1 + 22), *(v1 + 1));
}


// 0x800232a
int __fastcall sub_800232A(int *a1, int a2, int a3)
{
    int result; // r0

    result = *a1;
    if ( result >= 0 )
        result = PlaySoundEffect(result, a2, a3);
    return result;
}


// 0x8002338
unsigned int __fastcall sub_8002338(int *a1)
{
    int v1; // r0
    unsigned int result; // r0

    v1 = *a1;
    if ( v1 < 0 )
        result = ClearEventFlag((2 * v1) >> 1);
    else
        result = SetEventFlag(v1);
    return result;
}


// 0x8002354
int __fastcall sub_8002354(int *a1)
{
    int *i; // r5
    int result; // r0

    for ( i = a1; ; ++i )
    {
        result = *i;
        if ( *i < 0 )
            break;
        sub_8001B1C(result);
    }
    return result;
}


// 0x8002368
void __cdecl zeroFill_e20097A0()
{
    ZeroFillByWord(byte_20097A0, &byte_108);
}


// 0x8002378
int __fastcall sub_8002378(int result, int a2, int a3, int a4)
{
    int v4; // r4
    char *v5; // r7
    char v6; // r3

    v5 = &byte_20097A0[12 * a4];
    v6 = 0;
    if ( a2 && a3 )
    {
        v5[1] = result;
        *(v5 + 1) = a2;
        v5[2] = a3;
        v6 = 1;
        *(v5 + 2) = v4;
    }
    *v5 = v6;
    return result;
}


// 0x800239a
int __fastcall sub_800239A(int a1)
{
    char *v1; // r2
    int result; // r0

    v1 = &byte_20097A0[12 * a1];
    result = 0;
    *v1 = 0;
    return result;
}


// 0x80023a8
void __fastcall sub_80023A8(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(byte_20097A0, &loc_D8);
}


// 0x80023b8
int __fastcall sub_80023B8(int a1)
{
    return byte_20097A0[12 * a1];
}


// 0x80023c6
int sub_80023C6()
{
    char *v0; // r2
    int result; // r0

    v0 = byte_20097A0;
    while ( 1 )
    {
        result = *v0;
        if ( *v0 )
            break;
        v0 += 12;
        if ( v0 >= &byte_108 )
            return 0;
    }
    return result;
}


// 0x80023e0
void __cdecl getPalleteAndTransition_80023E0()
{
    int v0; // r1
    signed int v1; // r5
    int v2; // r6
    signed int v3; // r7
    unsigned __int8 *v4; // r7
    int v5; // r1
    int v6; // r6

    CopyByEightWords(byte_3001960, iPalette3001B60, 0x200u);
    CopyByEightWords(byte_3001550, iPallete3001750, 0x200u);
    v1 = byte_20097A0;
    do
    {
        if ( *v1 )
        {
            v2 = byte_0[v1 + 2];
            v3 = *(&dword_8 + v1);
            if ( v3 < 6 )
            {
                v4 = &unk_200F388 + v3;
                v5 = *v4;
                v6 = v4[1] - v5;
                v0 = 32 * v5;
            }
            (*&byte_8002450[byte_0[v1 + 1]])(*(dword_4 + v1), v0);
        }
        v1 += 12;
    }
    while ( v1 < &byte_20098A8 );
}


// 0x8002468
signed int __fastcall Initialize_eStruct200a6a0(int a1, int a2, int a3, int a4)
{
    int (*v4)(void); // ST00_4
    int v5; // ST08_4
    signed int result; // r0
    int v7; // [sp+4h] [bp-1Ch]

    v4 = a1;
    v5 = a3;
    ZeroFillByWord(&eStruct200a6a0, 80);
    dword_200A6A4 = v4;
    dword_200A6A8 = v7;
    dword_200A6AC = v5;
    result = 1;
    eStruct200a6a0 = 1;
    return result;
}


// 0x8002484
void __fastcall sub_8002484(int a1, int a2, int a3, int a4)
{
    if ( eStruct200a6a0 && dword_200A6A8 )
        (dword_200A6A8)();
    ZeroFillByWord(&eStruct200a6a0, 80);
}


// 0x80024a2
void __fastcall zeroFill_80024A2()
{
    ZeroFillByWord(&eStruct200a6a0, 80);
}


// 0x80024ae
int sub_80024AE()
{
    int result; // r0

    result = eStruct200a6a0;
    if ( eStruct200a6a0 )
        result = dword_200A6A4();
    return result;
}


// 0x80024c0
int Is_eStruct200a6a0_Initialized()
{
    return eStruct200a6a0;
}


// 0x80024cc
__int64 __fastcall sub_80024CC(int a1, int a2, unsigned int a3, unsigned int a4)
{
    int v4; // r10
    u16 *v5; // r9
    unsigned int v6; // r4
    signed int v7; // r7
    unsigned int v8; // r5
    signed int v9; // r6
    __int64 v10; // r0
    int v11; // r2
    __int64 result; // r0
    _BYTE *v13; // r5
    char v14; // r2
    char v15; // r2
    char v16; // r2
    char v17; // r2
    __int64 v18; // [sp-8h] [bp-24h]

    v5 = a2;
    v6 = a3;
    if ( a3 & 1 )
        ++a3;
    v7 = a3 >> 1;
    v8 = a4;
    if ( a4 & 1 )
        ++a4;
    v9 = a4 >> 1;
    LODWORD(v10) = sub_8003694(a1);
    v18 = v10;
    v11 = *(v4 + oToolkit_RenderInfoPtr);
    *(v11 + 20) = 120 - v10 - ((240 - v6) >> 1);
    *(v11 + 22) = 80 - WORD2(v10) - ((160 - v8) >> 1);
    CopyBackgroundTiles(0, 0, byte_80025CA[0], v5, v6 >> 3, v8 >> 3);
    result = v18;
    v13 = *(v4 + oToolkit_Unk200f3a0_Ptr);
    if ( v18 >= v7 )
    {
        if ( v18 <= v7 + 240 )
            v14 = v18 - v7;
        else
            v14 = -16;
    }
    else
    {
        v14 = 0;
    }
    v13[3] = v14;
    if ( v18 >= -v7 )
    {
        if ( v18 <= 240 - v7 )
            v15 = v18 + v7;
        else
            v15 = -16;
    }
    else
    {
        v15 = 0;
    }
    v13[2] = v15;
    if ( SHIDWORD(v18) >= v9 )
    {
        if ( SHIDWORD(v18) <= v9 + 160 )
            v16 = BYTE4(v18) - v9;
        else
            v16 = -96;
    }
    else
    {
        v16 = 0;
    }
    v13[7] = v16;
    if ( SHIDWORD(v18) >= -v9 )
    {
        if ( SHIDWORD(v18) <= 160 - v9 )
            v17 = BYTE4(v18) + v9;
        else
            v17 = -96;
    }
    else
    {
        v17 = 0;
    }
    v13[6] = v17;
    return result;
}


// 0x800260c
void __cdecl sub_800260C()
{
    int v0; // r0
    int v1; // r1
    int v2; // r2
    int v3; // r3
    char *v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    char *v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3
    char *v12; // r0
    int v13; // r1
    int v14; // r2
    int v15; // r3

    ZeroFillByEightWords(0x7000000, &byte_400);
    ZeroFillByEightWords(0x6010000, 0x8000);
    sub_8002668();
    v4 = InitializeOWPlayerObjectStruct(v0, v1, v2, v3);
    v8 = InitializeOverworldNPCObjectStructs(v4, v5, v6, v7);
    v12 = InitializeOverworldMapObjectStructs(v8, v9, v10, v11);
    sprite_resetObjVars_800289C(v12, v13, v14, v15);
    ZeroFillByByte(&unk_200F388, 7);
}


// 0x8002650
void copyPalletesToIWRAM_8002650()
{
    CopyByEightWords(iPallete3001750, 0x5000200, 0x200u);
}


// 0x8002668
void sub_8002668()
{
    CopyByEightWords(dword_86A5500, byte_3001710, 0x20u);
    CopyByEightWords(byte_80025CC, byte_3001730, 0x20u);
}


// 0x8002694
void __fastcall __noreturn sub_8002694(int a1, int a2)
{
    sub_3006440(a1, a2);
}


