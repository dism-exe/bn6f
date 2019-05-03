// 0x80026a4
// () -> void
int __usercall sprite_loadAnimationData@<R0>(Battle *obj@<R5>)
{
    char *v1; // r5

    v1 = obj + 16 * (obj->objTypeSpriteOff >> 4);
    return sub_3006730();
}


// 0x80026b6
int sprite_80026B6()
{
    return sub_3006730();
}


// 0x80026c4
void __usercall sprite_update(Battle *obj@<R5>)
{
    char *v1; // r5

    v1 = obj + 16 * (obj->objTypeSpriteOff >> 4);
    sub_3006792();
}


// 0x80026d6
int sprite_chatbox_80026D6()
{
    return sub_3006792();
}


// 0x80026e4
// (int a1, int spriteTypeIdx, int a3) ->
int __usercall sprite_load@<R0>(Battle *obj@<R5>, char a1@<R0>, int spriteTypeIdx@<R1>, int spriteIdx@<R2>)
{
    char *v4; // r5
    void *sprite; // r0
    int result; // r0
    char v7; // [sp+0h] [bp-18h]
    int v8_spriteListIdx; // [sp+4h] [bp-14h]
    int v3_spriteIdx; // [sp+8h] [bp-10h]

    obj->objFlags &= 0xF7u;
    v4 = obj + 16 * (obj->objTypeSpriteOff >> 4);
    v7 = a1;
    v8_spriteListIdx = spriteTypeIdx;
    v3_spriteIdx = spriteIdx;
    sprite = sub_8002986((spriteTypeIdx << 8) | spriteIdx);
    if ( !sprite )
    {
        sprite = (*(SpritePointersList + v8_spriteListIdx))[v3_spriteIdx];
        if ( sprite < 0 )
            sprite = spriteWhiteDot;
    }
    result = sprite_initialize(sprite);
    v4[3] = v7;
    return result;
}


// 0x800272c
// (void *a1) -> void
signed int __fastcall sprite_initialize(void *sprite)
{
    int v1; // r5
    signed int result; // r0

    *(v1 + 24) = sprite + 4;
    *(v1 + 3) = 0;
    *v1 = 0;
    *(v1 + 36) = 0;
    *(v1 + 4) = 0;
    *(v1 + 10) = 0;
    *(v1 + 6) = 0;
    *(v1 + 44) = 0;
    *(v1 + 16) = 0;
    *(v1 + 18) = 0;
    *(v1 + 20) = 0;
    *(v1 + 5) = 0;
    *(v1 + 48) = 0;
    *(v1 + 52) = 0;
    *(v1 + 40) = -1;
    *(v1 + 21) = 8;
    result = 8;
    *(v1 + 22) = 8;
    return result;
}


// 0x800275a
// (int a1) -> void
signed int __fastcall spriteLoadMugshot_800275A(int a1)
{
    int v1; // r5
    signed int result; // r0

    sprite_initialize(*(&mugshotSpritePtrs + a1));
    result = 128;
    *(v1 + 22) = 128;
    return result;
}


// 0x8002770
// (int guiSpriteIdx, void *defaultGuiPtr) -> void
signed int __fastcall initGuiSprite_8002770(int guiSpriteIdx, void *defaultGuiPtr)
{
    int v2; // r5
    int v3; // r5
    void *guiSprite; // r0
    signed int result; // r0

    v3 = v2 + 32;
    guiSprite = *(&guiSpritePtrs + guiSpriteIdx);
    if ( guiSprite < 0 )
        guiSprite = defaultGuiPtr;
    sprite_initialize(guiSprite);
    *(v3 + 3) = -128;
    result = 128;
    *(v3 + 22) = 128;
    return result;
}


// 0x800279c
signed int __fastcall sub_800279C(int a1)
{
    int v1; // r5
    signed int result; // r0

    sprite_initialize(*(&mugshotSpritePtrs + a1));
    result = 128;
    *(v1 + 54) = 128;
    return result;
}


// 0x80027b4
int *sub_80027B4()
{
    int *result; // r0

    result = &dword_200F350;
    dword_200F350 = 1;
    return result;
}


// 0x80027c4
signed int sub_80027C4()
{
    signed int result; // r0

    byte_20098A9 = 0;
    byte_20098A8 = 12;
    result = 815;
    word_20098AA = 815;
    return result;
}


// 0x80027d4
signed int sub_80027D4()
{
    signed int result; // r0

    byte_20098A9 = 4;
    byte_20098A8 = 10;
    result = 767;
    word_20098AA = 767;
    return result;
}


// 0x80027e4
signed int sub_80027E4()
{
    signed int result; // r0

    byte_20098A9 = 4;
    byte_20098A8 = 8;
    result = 767;
    word_20098AA = 767;
    return result;
}


// 0x80027f4
signed int sub_80027F4()
{
    signed int result; // r0

    byte_20098A9 = 0;
    byte_20098A8 = 16;
    result = 767;
    word_20098AA = 767;
    return result;
}


// 0x8002818
int sub_8002818()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    unsigned int v3; // r1
    signed int v4; // r6

    v1 = *(v0 + 52);
    if ( !v1 )
        v1 = *(*(v0 + 28) + 4) + 4 + *(v0 + 24);
    result = v1 + 32 * (*(v0 + 4) + *(v0 + 5));
    v3 = 32 * (*(v0 + 21) >> 4);
    v4 = 0;
    do
    {
        *&byte_3001550[v3 + v4] = *(result + v4);
        v4 += 4;
    }
    while ( v4 < 32 );
    if ( *(v0 + 6) )
        result = sub_3005EF0(*(v0 + 6) & 0x7FFF, sub_3005EF0, 4 * (*(v0 + 6) >> 15));
    return result;
}


// 0x800286c
int *sub_800286C()
{
    int *result; // r0

    result = &dword_200F340;
    dword_200F340 = 0;
    return result;
}


// 0x8002874
_DWORD *sub_8002874()
{
    int v0; // r5
    _DWORD *result; // r0

    result = (**(v0 + 28) + *(v0 + 24));
    if ( result != *(v0 + 36) )
    {
        *(v0 + 36) = result;
        result = (loc_8000AC8)(result + 1, 32 * *(v0 + 8) + 100728832, *result);
    }
    return result;
}


// 0x800289c
void __fastcall sprite_resetObjVars_800289C(int a1, int a2, int a3, int a4)
{
    dword_20093A8 = 0;
    WordFill(&dword_200A890, &dword_388, -1);
}


// 0x80028c0
int __fastcall sub_80028C0(int result)
{
    byte_200F389[result] = dword_200F340;
    return result;
}


// 0x80028d4
void __fastcall sub_80028D4(int a1, int a2, int a3, int a4)
{
    int v4; // ST00_4
    int v5; // r3

    v4 = a1;
    ZeroFillByWord(byte_200DCA0, 80);
    dword_200DCEC = v4;
    HalfwordFill(&byte_200DCA0[4], 0x18u, 0x7FFF, v5);
    ByteFill(&byte_200DCA0[28], 48, 0xFFu);
}


// 0x8002906
signed int __fastcall uncompSprite_8002906(unsigned __int8 *a1)
{
    int v1; // r1
    unsigned __int8 *i; // r7
    int v3_spriteTypeIdx; // r0
    unsigned int v4; // r3
    _DWORD *v5; // r2
    void *compPtr; // r8
    int v7; // r0
    int v8; // r2
    int v9; // r3
    int v10; // r1
    int v11; // ST00_4
    int v12; // ST04_4

    v1 = dword_200DCEC;
    for ( i = a1; ; i += 2 )
    {
        v3_spriteTypeIdx = *i;
        if ( v3_spriteTypeIdx == 255 )
            return 1;
        v4 = 4 * i[1];
        v5 = ((2 * *(*(SpritePointersList + v3_spriteTypeIdx) + v4)) >> 1);
        compPtr = v5;
        v7 = (v3_spriteTypeIdx << 8) | (v4 >> 2);
        v8 = *v5 >> 8;
        if ( v1 + v8 >= 33816576 || byte_200DCA0[0] >= 12 )
            break;
        v9 = byte_200DCA0[0];
        *&byte_200DCA0[2 * v9 + 4] = v7;
        v10 = v1 + 4;
        *&byte_200DCA0[4 * v9 + 28] = v10;
        byte_200DCA0[0] = v9 + 1;
        v11 = v10 - 4;
        v12 = v8;
        SWI_LZ77UnCompReadNormalWrite8bit(compPtr, (v10 - 4));
        v1 = v11 + v12;
        dword_200DCEC = v11 + v12;
    }
    return 0;
}


// 0x8002986
int __fastcall sub_8002986(int a1)
{
    signed int i; // r2

    i = 0;
    do
    {
        if ( a1 == *&byte_200DCA0[2 * i + 4] )
            return *&byte_200DCA0[4 * i + 28];
        ++i;
    }
    while ( i < 12 );
    return 0;
}


// 0x80029a8
signed int __fastcall sub_80029A8(_BYTE *a1)
{
    int v1; // r1
    _BYTE *i; // r7
    int v3; // r0
    int v4; // r0
    int v5; // r1
    unsigned int v6; // r0
    signed int v7; // r2
    int v8; // r2
    _DWORD *v9; // r2
    void *v10; // r8
    int v11; // r2
    int v12; // r3
    int v13; // ST04_4
    char *v15; // [sp-10h] [bp-24h]

    v1 = dword_200DCEC;
    for ( i = a1; ; i += 4 )
    {
        v3 = *i & 0xF0;
        if ( v3 == 240 )
            break;
        if ( *i & 0xF0 )
        {
            v15 = v1;
            v4 = sub_800F26C(i[2] + ((i[3] << 8) & 0x1FF));
            v6 = (v4 << 8) | v5;
            v7 = 0;
            while ( 1 )
            {
                v1 = v15;
                if ( v6 == *&byte_200DCA0[v7 + 4] )
                    break;
                v7 += 2;
                if ( v7 >= 24 )
                {
                    v1 = v15;
                    v8 = *(*(SpritePointersList + (v6 >> 8)) + (4 * v6 & 0x3FF));
                    if ( v8 >= 0 )
                        break;
                    v9 = ((2 * v8) >> 1);
                    v10 = v9;
                    v11 = *v9 >> 8;
                    if ( &v15[v11] < dword_2033000 && byte_200DCA0[0] < 12 )
                    {
                        v12 = byte_200DCA0[0];
                        *&byte_200DCA0[2 * v12 + 4] = v6;
                        *&byte_200DCA0[4 * v12 + 28] = v15 + 4;
                        byte_200DCA0[0] = v12 + 1;
                        v13 = v11;
                        SWI_LZ77UnCompReadNormalWrite8bit(v10, v15);
                        v1 = &v15[v13];
                        dword_200DCEC = &v15[v13];
                        break;
                    }
                    return 0;
                }
            }
        }
    }
    return 1;
}


// 0x8002a64
signed int __fastcall sub_8002A64(int a1, int a2)
{
    unsigned int v2; // r0
    int v3; // r1
    int v4; // r2
    _DWORD *v5; // r2
    void *v6; // r8
    int v7; // r2
    int v8; // r3
    int v9; // r1
    int v10; // ST00_4
    int v11; // ST04_4

    v2 = (a1 << 8) | a2;
    v3 = dword_200DCEC;
    v4 = *(*(SpritePointersList + (v2 >> 8)) + (4 * v2 & 0x3FF));
    if ( v4 >= 0 )
        return 0;
    v5 = ((2 * v4) >> 1);
    v6 = v5;
    v7 = *v5 >> 8;
    if ( dword_200DCEC + v7 >= dword_2033000 || byte_200DCA0[0] >= 12 )
        return 0;
    v8 = byte_200DCA0[0];
    *&byte_200DCA0[2 * v8 + 4] = v2;
    v9 = v3 + 4;
    *&byte_200DCA0[4 * v8 + 28] = v9;
    byte_200DCA0[0] = v8 + 1;
    v10 = v9 - 4;
    v11 = v7;
    SWI_LZ77UnCompReadNormalWrite8bit(v6, (v9 - 4));
    dword_200DCEC = v10 + v11;
    return 1;
}


// 0x8002ade
unsigned int sub_8002ADE()
{
    unsigned int result; // r0
    int v1; // r2
    int v2; // r3

    if ( byte_200DCA0[0] )
    {
        result = *&byte_200DCA0[2 * (byte_200DCA0[0] - 1) + 4];
        v1 = *(*(SpritePointersList + (result >> 8)) + (4 * result & 0x3FF));
        if ( v1 < 0 )
        {
            dword_200DCEC -= *((2 * v1) >> 1) >> 8;
            v2 = byte_200DCA0[0] - 1;
            --byte_200DCA0[0];
            *&byte_200DCA0[2 * v2 + 4] = 0x7FFF;
            result = -1;
            *&byte_200DCA0[4 * v2 + 28] = -1;
        }
    }
    return result;
}


// 0x8002b30
signed int __fastcall sprite_decompress(int a1, int a2)
{
    unsigned int v2; // r0
    char *v3; // r9
    signed int v4; // r2
    int v5; // r2
    _DWORD *v6; // r8
    int v7; // r3

    sub_8002BCC();
    v3 = dword_200DCEC;
    v4 = 0;
    while ( v2 != *&byte_200DCA0[v4 + 4] )
    {
        v4 += 2;
        if ( v4 >= 24 )
        {
            v5 = *(*(SpritePointersList + (v2 >> 8)) + (4 * v2 & 0x3FF));
            if ( v5 < 0 )
            {
                v6 = ((2 * v5) >> 1);
                if ( dword_200DCEC + (*v6 >> 8) < dword_2033000 && byte_200DCA0[0] < 12 )
                {
                    v7 = byte_200DCA0[0];
                    *&byte_200DCA0[2 * v7 + 4] = v2;
                    *&byte_200DCA0[4 * v7 + 28] = v3 + 4;
                    SWI_LZ77UnCompReadNormalWrite8bit(v6, v3);
                    return 1;
                }
            }
            return 0;
        }
    }
    return 0;
}


// 0x8002bcc
void sub_8002BCC()
{
    unsigned __int8 *v0; // r5
    int v1; // r3

    v1 = *v0;
    *&v0[2 * v1 + 4] = 0x7FFF;
    *&v0[4 * v1 + 28] = -1;
}


// 0x8002bea
void sub_8002BEA()
{
    ;
}


// 0x8002c24
int __fastcall sprite_setScaleParameters(int result, int a2, int a3)
{
    int v3; // r5
    unsigned int v4; // r5

    v4 = v3 + 16 * (*(v3 + 2) >> 4);
    if ( *(v4 + 17) & 3 )
        result = sub_802FE7A(result, a2, a3, (*(v4 + 19) & 0x3Eu) >> 1);
    return result;
}


// 0x8002c52
signed int sub_8002C52()
{
    int v0; // r5
    unsigned int v1; // r3
    signed int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = 8;
    *(v1 + 17) = *(v1 + 17) & 0xF3 | 8;
    return result;
}


// 0x8002c68
signed int sub_8002C68()
{
    int v0; // r5
    unsigned int v1; // r3
    signed int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = 12;
    *(v1 + 17) &= 0xF3u;
    return result;
}


// 0x8002c7a
signed int __fastcall sub_8002C7A(char a1)
{
    int v1; // r5
    int v2; // r10
    unsigned int v3; // r3
    _BYTE *v4; // r3
    signed int result; // r0

    v3 = 16 * (*(v1 + 2) >> 4) + v1;
    *(v3 + 17) = *(v3 + 17) & 0xF3 | 4;
    v4 = *(v2 + oToolkit_Unk2009740_Ptr);
    *v4 &= 0x3Fu;
    v4[2] = a1;
    v4[3] = 16 - a1;
    *v4 = 0;
    result = 63;
    v4[1] = 63;
    return result;
}


// 0x8002cb6
signed int sub_8002CB6()
{
    int v0; // r5
    signed int result; // r0
    unsigned int v2; // r3

    result = 12;
    v2 = 16 * (*(v0 + 2) >> 4) + v0;
    *(v2 + 17) = *(v2 + 17) & 0xF3 | 4;
    return result;
}


// 0x8002cce
signed int sub_8002CCE()
{
    int v0; // r5
    unsigned int v1; // r3
    signed int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = 12;
    *(v1 + 17) &= 0xF3u;
    return result;
}


// 0x8002ce0
int __fastcall sprite_getMosaicScalingParameters(int a1)
{
    int v1; // r10
    int v2; // r1

    v2 = *(16 * (*(a1 + 2) >> 4) + a1 + 17);
    return *(*(v1 + oToolkit_Unk2009740_Ptr) + 2);
}


// 0x8002cf6
int __fastcall sub_8002CF6(int a1)
{
    return *(16 * (*(a1 + 2) >> 4) + a1 + 17) & 4;
}


// 0x8002d06
int __noreturn sub_8002D06()
{
    return sub_30061E8();
}


// 0x8002d14
void sprite_makeScalable()
{
    int v0; // r5
    unsigned int v1; // r3

    v1 = 16 * (*(v0 + 2) >> 4);
    JUMPOUT(&loc_8002D22);
}


// 0x8002d20
signed int sub_8002D20()
{
    int v0; // r5
    signed int v1; // r0

    if ( *(v0 + 17) & 3 )
        return 0;
    v1 = sub_802FE48();
    if ( v1 == 255 )
        return 0;
    *(v0 + 17) |= 3u;
    *(v0 + 19) = *(v0 + 19) & 0xC1 | 2 * v1;
    return 1;
}


// 0x8002d52
int sprite_makeUnscalable()
{
    int v0; // r5
    unsigned int v1; // r5
    int result; // r0
    int v3; // r0

    v1 = v0 + 16 * (*(v0 + 2) >> 4);
    result = *(v1 + 17);
    if ( result & 3 )
    {
        *(v1 + 17) = result & 0xFC;
        v3 = (*(v1 + 19) & 0x3Eu) >> 1;
        *(v1 + 19) &= 0xC1u;
        result = sub_802FE6A(v3);
    }
    return result;
}


// 0x8002d80
// (int pallete) -> void
void __fastcall sprite_setPallete(int pallete)
{
    int v1; // r5

    *(16 * (*(v1 + 2) >> 4) + v1 + 4) = pallete;
}


// 0x8002d8c
int __fastcall sprite_getPallete(int a1)
{
    return *(16 * (*(a1 + 2) >> 4) + a1 + 4);
}


// 0x8002d98
int __fastcall sprite_setAnimationAlt(int result)
{
    int v1; // r5

    *(16 * (*(v1 + 2) >> 4) + v1) = result;
    return result;
}


// 0x8002da4
// (u8 a1) -> void
void __usercall sprite_setAnimation(Battle *obj@<R5>, u8 animation@<R0>)
{
    *(&obj->objFlags + 16 * (obj->objTypeSpriteOff >> 4)) = animation;
}


// 0x8002db0
int sprite_forceWhitePallete()
{
    int v0; // r5
    unsigned int v1; // r3
    int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = *(v1 + 21) & 0xF | 0xF0;
    *(v1 + 21) = result;
    return result;
}


// 0x8002dc8
int __fastcall sprite_getFinalPalette(int a1)
{
    return *(16 * (*(a1 + 2) >> 4) + a1 + 21);
}


// 0x8002dd8
int sprite_clearFinalPalette()
{
    int v0; // r5
    unsigned int v1; // r3
    int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = *(v1 + 21) & 0xF;
    *(v1 + 21) = result;
    return result;
}


// 0x8002dea
int sprite_getFrameParameters()
{
    int v0; // r5
    unsigned __int8 *v1; // r3
    int result; // r0
    int v3; // r1
    int v4; // r2

    v1 = (16 * (*(v0 + 2) >> 4) + v0);
    result = v1[2];
    if ( v1[1] )
        result &= 0xFFFFFF3F;
    v3 = *v1;
    v4 = *v1;
    return result;
}


// 0x8002e04
int sub_8002E04()
{
    int v0; // r5

    return *(16 * (*(v0 + 2) >> 4) + v0 + 3) & 8;
}


// 0x8002e14
int __fastcall sub_8002E14(int a1)
{
    int v1; // r5
    unsigned int v2; // r3
    int result; // r0

    v2 = 16 * (*(v1 + 2) >> 4) + v1;
    result = 4 * a1;
    *(v2 + 21) = *(v2 + 21) & 0xF3 | result;
    return result;
}


// 0x8002e2a
unsigned int sub_8002E2A()
{
    int v0; // r5

    return (*(16 * (*(v0 + 2) >> 4) + v0 + 21) & 0xCu) >> 2;
}


// 0x8002e3c
int sprite_hasShadow()
{
    Battle *obj; // r5
    char *v1; // r3
    int result; // r0

    v1 = obj + 16 * (obj->objTypeSpriteOff >> 4);
    result = (v1[3] | 1) & 0xFB;
    v1[3] = result;
    return result;
}


// 0x8002e52
int sub_8002E52()
{
    int v0; // r5
    unsigned int v1; // r3
    int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = *(v1 + 3) & 0xFA;
    *(v1 + 3) = result;
    return result;
}


// 0x8002e68
int sub_8002E68()
{
    int v0; // r5
    unsigned int v1; // r3

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    return *(**(v1 + 28) + *(v1 + 24)) >> 5;
}


// 0x8002e7e
signed int sub_8002E7E()
{
    _BYTE *v0; // r5
    unsigned int v1; // r3
    int v2; // r1
    int v3; // r2

    if ( !*v0 )
        return 0;
    v1 = &v0[16 * (v0[2] >> 4)];
    v2 = *(v1 + 12) & 0x1FF;
    v3 = *(v1 + 14) & 0xFF;
    return 1;
}


// 0x8002eac
int sub_8002EAC()
{
    int v0; // r5
    unsigned int v1; // r3
    int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = *(v1 + 22) | 2;
    *(v1 + 22) = result;
    return result;
}


// 0x8002ebe
int sub_8002EBE()
{
    int v0; // r5
    unsigned int v1; // r3
    int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = *(v1 + 22) & 0xFD;
    *(v1 + 22) = result;
    return result;
}


// 0x8002ed0
int __usercall sprite_setColorShader@<R0>(Battle *obj@<R5>, int result@<R0>)
{
    *(&obj->objParams + 8 * (obj->objTypeSpriteOff >> 4) + 1) = result;
    return result;
}


// 0x8002edc
int __fastcall sprite_getColorShader(int a1)
{
    return *(16 * (*(a1 + 2) >> 4) + a1 + 6);
}


// 0x8002ee8
int sub_8002EE8()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(16 * (*(v0 + 2) >> 4) + v0 + 6) = 0;
    return result;
}


// 0x8002ef6
int __fastcall sprite_setMosaicSize(int a1, int a2)
{
    int v2; // r5
    int v3; // r10
    int v4; // r0
    int result; // r0
    unsigned int v6; // r3

    v4 = a1 | 16 * a2;
    if ( !v4 )
        return sub_8002F2C();
    result = v4 << 8;
    v6 = 16 * (*(v2 + 2) >> 4);
    *(v6 + v2 + 17) |= 0x10u;
    *(*(v3 + oToolkit_RenderInfoPtr) + 2) = *(*(v3 + oToolkit_RenderInfoPtr) + 2) & 0xFF | result;
    return result;
}


// 0x8002f2c
signed int sub_8002F2C()
{
    int v0; // r5
    unsigned int v1; // r3
    signed int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = 16;
    *(v1 + 17) &= 0xEFu;
    return result;
}


// 0x8002f3e
unsigned int __fastcall sub_8002F3E(int a1)
{
    int v1; // r10
    int v2; // r2

    v2 = *(16 * (*(a1 + 2) >> 4) + a1 + 17) & 0x10;
    return (*(*(v1 + oToolkit_RenderInfoPtr) + 2) & 0xFF00u) >> 8;
}


// 0x8002f5c
int __usercall sprite_setFlip@<R0>(Battle *obj@<R5>, int a1@<R0>)
{
    char *v2; // r3
    int v3; // r2
    int result; // r0

    v2 = obj + 16 * (obj->objTypeSpriteOff >> 4);
    v3 = (v2[19] & 0xCF) | 16 * a1;
    v2[19] = v3;
    result = 48;
    v2[22] = v2[22] & 0xCF | v3 & 0x30;
    return result;
}


// 0x8002f7e
unsigned int __fastcall sprite_getFlip(int a1)
{
    return (*(16 * (*(a1 + 2) >> 4) + a1 + 22) & 0x30u) >> 4;
}


// 0x8002f90
// () -> void
int __usercall sprite_noShadow@<R0>(Battle *obj@<R5>)
{
    char *v1; // r3
    int result; // r0

    v1 = obj + 16 * (obj->objTypeSpriteOff >> 4);
    result = (v1[3] | 4) & 0xFE;
    v1[3] = result;
    return result;
}


// 0x8002fa6
int __fastcall sub_8002FA6(int result)
{
    int v1; // r5

    *(16 * (*(v1 + 2) >> 4) + v1 + 44) = result;
    return result;
}


// 0x8002fb2
int sub_8002FB2()
{
    int v0; // r5

    return *(16 * (*(v0 + 2) >> 4) + v0 + 44);
}


// 0x8002fbe
unsigned int __fastcall sub_8002FBE(char a1)
{
    int v1; // r5
    unsigned int v2; // r3
    unsigned int result; // r0

    v2 = 16 * (*(v1 + 2) >> 4) + v1;
    result = *(v2 + 44) | (0x80000000 >> a1);
    *(v2 + 44) = result;
    return result;
}


// 0x8002fd4
unsigned int __fastcall sub_8002FD4(char a1)
{
    int v1; // r5
    unsigned int v2; // r3
    unsigned int result; // r0

    v2 = 16 * (*(v1 + 2) >> 4) + v1;
    result = *(v2 + 44) & ~(0x80000000 >> a1);
    *(v2 + 44) = result;
    return result;
}


// 0x8002fec
int __fastcall sub_8002FEC(int result)
{
    int v1; // r5

    *(16 * (*(v1 + 2) >> 4) + v1 + 48) = result;
    return result;
}


// 0x8002ff8
int sub_8002FF8()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(16 * (*(v0 + 2) >> 4) + v0 + 52) = 0;
    return result;
}


// 0x8003006
int sub_8003006()
{
    int v0; // r5
    unsigned int v1; // r3
    int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = *(v1 + 3) | 0x20;
    *(v1 + 3) = result;
    return result;
}


// 0x8003018
int sub_8003018()
{
    int v0; // r5
    unsigned int v1; // r3
    int result; // r0

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = *(v1 + 3) & 0xDF;
    *(v1 + 3) = result;
    return result;
}


// 0x800302a
int __fastcall sub_800302A(char a1)
{
    int v1; // r5
    unsigned int v2; // r3
    int result; // r0

    v2 = 16 * (*(v1 + 2) >> 4) + v1;
    *(v2 + 22) = *(v2 + 22) & 0xF3 | 4 * a1;
    result = *(v2 + 3) | 0x40;
    *(v2 + 3) = result;
    return result;
}


// 0x800304a
int __fastcall sub_800304A(int a1)
{
    int v1; // r5
    unsigned int v2; // r3
    int result; // r0

    v2 = 16 * (*(v1 + 2) >> 4) + v1;
    result = 16 * a1;
    *(v2 + 21) = *(v2 + 21) & 0xF | result;
    return result;
}


// 0x8003060
int __fastcall sub_8003060(int result)
{
    int v1; // r5

    *(16 * (*(v1 + 2) >> 4) + v1 + 10) = result;
    return result;
}


// 0x800306c
int __fastcall sub_800306C(__int16 a1)
{
    int v1; // r5
    unsigned int v2; // r3
    int result; // r0

    v2 = 16 * (*(v1 + 2) >> 4) + v1;
    *(v2 + 8) = a1;
    result = 0;
    *(v2 + 36) = 0;
    return result;
}


// 0x800307c
int __fastcall sprite_setCoordinates(int result, __int16 a2)
{
    int v2; // r5
    unsigned int v3; // r3

    v3 = 16 * (*(v2 + 2) >> 4) + v2;
    *(v3 + 12) = result;
    *(v3 + 14) = a2;
    return result;
}


// 0x800308a
int __fastcall sprite_addCoordinates(int a1, __int16 a2)
{
    int v2; // r5
    unsigned int v3; // r3
    int result; // r0

    v3 = 16 * (*(v2 + 2) >> 4) + v2;
    result = a1 + *(v3 + 12);
    *(v3 + 12) = result;
    *(v3 + 14) += a2;
    return result;
}


// 0x80030a8
int sprite_getCoordinates()
{
    int v0; // r5
    unsigned int v1; // r3
    int result; // r0
    int v3; // r1

    v1 = 16 * (*(v0 + 2) >> 4) + v0;
    result = *(v1 + 12);
    v3 = *(v1 + 14);
    return result;
}


// 0x80030ba
int __fastcall sub_80030BA(int a1, int a2)
{
    unsigned int v2; // r5
    int v3; // r3
    unsigned __int8 *v4; // r2
    int v5; // r4
    int result; // r0
    int v7; // r1

    v2 = a1 + 16 * (*(a1 + 2) >> 4);
    v3 = *(v2 + 24) + *(*(v2 + 28) + 12);
    v4 = (*(v3 + 4 * **(v2 + 32)) + v3);
    v5 = 0;
    while ( *v4 != 255 )
    {
        if ( v5 == a2 )
        {
            result = v4[1];
            v7 = v4[2];
            return result;
        }
        ++v5;
        v4 += 5;
    }
    return 0;
}


