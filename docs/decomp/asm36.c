// 0x8130020
int sub_8130020()
{
    int v0; // r5
    u32 v1; // r0
    int v2; // r0

    v1 = sub_81325CC();
    *(v1 + 10) = -293;
    *(v0 + 38) = 0;
    *(v1 + 8) = 0;
    *(v0 + 2) = 16;
    *(v0 + 21) = 0;
    *(v0 + 3) = 0;
    chatbox_8040818();
    v2 = sub_81302F4(*(v0 + 44), 1);
    (loc_81304AA)(v2);
    return sub_811A914(0, 6);
}


// 0x813005c
u32 sub_813005C()
{
    int v0; // r5
    __int16 v1; // r4
    u32 result; // r0

    *(v0 + 2) = 8;
    *(v0 + 3) = 0;
    v1 = sub_8130404()[12] | 0x8000;
    *(v0 + 42) = v1;
    result = sub_81325CC();
    *(v0 + 38) = 2;
    *(result + 8) = 2;
    *(result + 10) = v1;
    return result;
}


// 0x8130084
int sub_8130084()
{
    int v0; // r5
    int v1; // r10
    char *v2; // r0
    int v3; // r7
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3
    int v11; // r0
    int v12; // r1
    int v13; // r2
    int v14; // r3
    _WORD *v15; // r0
    int v16; // r2
    int v17; // r3
    char v18; // r1

    v2 = sub_8130404();
    v3 = v2;
    zeroFillVRAM(v2, v4, v5, v6);
    sub_80017E0(v7, v8, v9, v10);
    sub_800183C(v11, v12, v13, v14);
    sub_80015FC(16);
    sub_8046664();
    chatbox_8040818();
    v15 = *(v1 + oToolkit_RenderInfoPtr);
    *v15 = 8000;
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
    v15[12] = 0;
    v15[13] = 0;
    ZeroFillByEightWords(v3, 0x80u, v16, v17);
    sub_8130194();
    sub_8130108();
    sub_813017C();
    sub_81301DC();
    sub_8130208();
    sub_813064C();
    sub_8130810();
    sub_81304BC();
    sub_81304EC();
    *(v0 + 23) = sub_8120CC8(0, &dword_8129180);
    *(v0 + 24) = v18;
    return engine_setScreeneffect(8, 16);
}


// 0x8130108
void sub_8130108()
{
    sub_812AF3C();
    sub_812AF78();
    sub_812AFA4();
    decompAndCopyData(byte_8130124);
}


// 0x813017c
int sub_813017C()
{
    return copyTiles();
}


// 0x8130194
int sub_8130194()
{
    int v0; // r10
    char *v1; // r5
    int v2; // r2
    int v3; // r3
    __int16 *v4; // r4
    int v5; // r0
    int v6; // r2
    int result; // r0

    v1 = sub_8130404();
    ZeroFillByEightWords(word_2023FA0, 0x10u, v2, v3);
    word_2023FA0[0] = 38;
    word_2023FA2 = 1;
    v4 = &word_2023FA4;
    v5 = *(*(v0 + oToolkit_Unk2001c04_Ptr) + 5);
    v6 = 0;
    do
    {
        *v4 = *(&unk_20018EC + v6);
        v4[1] = 1;
        v4 += 2;
        ++v6;
    }
    while ( v6 < v5 );
    result = 0;
    v1[12] = 0;
    return result;
}


// 0x81301dc
char *sub_81301DC()
{
    int v0; // r10
    int v1; // r4
    int v2; // r6
    char *result; // r0

    sub_80465A0(byte_812F044);
    v1 = *(*(v0 + oToolkit_Unk2001c04_Ptr) + 5);
    v2 = 0;
    do
    {
        result = sub_8046670(31, v2, v2 << 8);
        ++v2;
    }
    while ( v2 < v1 );
    return result;
}


// 0x8130208
int sub_8130208()
{
    return render_graphicalText_8045F8C(dword_86CF4AC, word_2023FA0[0] & 0xF, byte_2017A00, 100731904);
}


// 0x8130250
signed int sub_8130250()
{
    __int16 v0; // r6
    signed int v1; // r4
    signed int v2; // r7
    signed int result; // r0
    unsigned __int8 v4; // vf

    v0 = -18336;
    v1 = 360472;
    v2 = 8;
    do
    {
        sub_802FE28(v1, v0, 0, 5);
        v1 += 0x80000;
        result = 2;
        v0 += 2;
        v4 = __OFSUB__(v2--, 1);
    }
    while ( !(((v2 < 0) ^ v4) | (v2 == 0)) );
    return result;
}


// 0x8130290
int sub_8130290()
{
    int result; // r0
    char v1; // zf

    result = sub_80466C4(0);
    if ( v1 )
        result = sub_81302D0(byte_812F04C, 0, 64);
    return result;
}


// 0x81302b0
int sub_81302B0()
{
    int result; // r0
    char v1; // zf

    result = sub_80466C4(1);
    if ( v1 )
        result = sub_81302D0(byte_812F054, 1, 176);
    return result;
}


// 0x81302d0
int __fastcall sub_81302D0(void *a1, int a2, __int16 a3)
{
    int v3; // r6
    int result; // r0
    char v5; // zf
    __int16 v6; // [sp+0h] [bp-18h]

    v6 = a3;
    v3 = a2;
    sub_80465A0(a1);
    result = sub_80466C4(v3);
    if ( !v5 )
        result = sub_800307C(v6, 68);
    return result;
}


// 0x81302f4
int __fastcall sub_81302F4(__int16 a1, int a2)
{
    int v2; // r4

    v2 = a1 & 0x7FFF;
    sub_811AD04(a1 & 0x7FFF, a2, a2);
    return v2;
}


// 0x8130370
void __noreturn sub_8130370()
{
    int v0; // r10
    char *v1; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r3
    int v5; // r0

    v1 = sub_8130404();
    *(v1 + 15) = 26;
    *(v1 + 20) = 26;
    *(v1 + 25) = 26;
    if ( !v1[12] || !sub_811F91C(*(*(v0 + oToolkit_JoypadPtr) + 4), 1u, 0, *(&dword_8130400 + v1[12] - 1)) )
    {
        v2 = *(*(v0 + oToolkit_JoypadPtr) + 4);
        v3 = *(*(v0 + oToolkit_Unk2001c04_Ptr) + 5);
        v4 = v1[12];
        sub_811FA0C();
        if ( v5 != v1[12] )
        {
            v1[12] = v5;
            sub_81304BC();
        }
    }
    sub_81304EC();
    JUMPOUT(loc_81303C8);
}


// 0x8130404
char *sub_8130404()
{
    return byte_2037780;
}


// 0x813040c
int sub_813040C()
{
    return sub_8130404()[12] | 0x8000;
}


// 0x8130424
void sub_8130424()
{
    _BYTE *v0; // r5
    int v1; // r1

    if ( sub_80062C8() == 12 )
        engine_setScreeneffect(8, 16);
    v0[73] = v0[2];
    v0[2] = 28;
    v0[12] = 0;
    v0[3] = 0;
    if ( !(v0[27] & 1) )
    {
        if ( eStruct200BC30_getRef()[14] == 2 )
            v1 = 48;
        sub_8132280(v1);
    }
}


// 0x8130464
void __fastcall sub_8130464(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    sub_800183C(a1, a2, a3, a4);
    sub_8046664();
    copyTiles();
    sub_8130290();
    sub_81302F4(*(v4 + 42), 0);
    sub_81302B0();
    sub_81302F4(128, 1);
    sub_81304A4();
}


// 0x81304a4
void sub_81304A4()
{
    sub_80465A0(byte_812F05C);
}


// 0x81304bc
void sub_81304BC()
{
    int v0; // r0
    int v1; // r1
    int v2; // r2
    int v3; // r3

    v0 = sub_8130404()[12];
    if ( v0 )
        sub_811FCB8(v0 - 1, &unk_2023FB0, 1, &unk_2024370);
    else
        sub_811FE34(&unk_2023FB0, v1, v2, v3);
}


// 0x81304ec
void sub_81304EC()
{
    char *v0; // r7

    v0 = sub_8130404();
    if ( v0[12] )
    {
        sub_81200EC(*&v0[*(&dword_8130618 + v0[12] - 1)], &unk_2023FB0, &unk_20243E8);
        copyTiles();
        sub_8120390(*&v0[*(&dword_8130618 + v0[12] - 1)], &unk_2023FB0, &unk_20244C8, byte_812F06C);
        copyTiles();
        sub_81203E4(*&v0[*(&dword_8130618 + v0[12] - 1)], &unk_2023FB0, &unk_2024500, &dword_35C | 0x9000);
        copyTiles();
        sub_8120458(*&v0[*(&dword_8130618 + v0[12] - 1)], &unk_2023FB0, &unk_2024538, 41494);
        copyTiles();
        sub_81204C4(*&v0[*(&dword_8130618 + v0[12] - 1)], &unk_2023FB0, &unk_2024554, 33615);
        copyTiles();
    }
    else
    {
        sub_80018D0(8, 8, 2, 0);
    }
}


// 0x813061c
__int64 sub_813061C()
{
    int v0; // r7
    signed int v1; // r4
    __int64 result; // r0
    int v3; // r7

    v0 = 8640;
    v1 = 0;
    HIDWORD(result) = 0;
    do
    {
        do
        {
            *(&unk_2025A70 + v1) = v0;
            v3 = v0 + 1;
            LODWORD(result) = v1 + 20;
            *(&unk_2025A70 + v1 + 20) = v3;
            v0 = v3 + 1;
            v1 += 2;
            HIDWORD(result) += 2;
        }
        while ( SHIDWORD(result) < 20 );
        HIDWORD(result) = 0;
        v1 += 20;
    }
    while ( v1 < 120 );
    return result;
}


// 0x813064c
signed int sub_813064C()
{
    char *v0; // r5
    signed int result; // r0

    v0 = sub_8130404();
    sub_8130250();
    result = v0[12];
    if ( v0[12] )
        result = sub_811FA98(12189757, 0x20002u, 30, *&v0[*(&dword_8130688 + result - 1)]);
    return result;
}


// 0x813068c
int sub_813068C()
{
    int v0; // r10
    int v1; // r0
    int v2; // r2
    int v3; // r3
    _DWORD *v4; // r5
    int v5; // ST00_4
    unsigned int v6; // r0
    char *v7; // r0
    int v8; // r4
    signed int v9; // r0
    signed int v10; // r3
    int v11; // r2
    int v12; // r1
    int result; // r0
    _DWORD *v14; // [sp+0h] [bp-18h]

    v1 = sub_8130404()[12];
    v4 = v14;
    if ( v1 )
    {
        v5 = v1 - 1;
        v6 = sub_8137884(v1 - 1);
        v7 = sub_804A24C(v6 >> 4);
        CopyBytes(v7, &unk_202708C, 32);
        v8 = *(v0 + oToolkit_S_Chip_2002178_Ptr) + 60 * v5;
        v9 = 0;
        v10 = 32;
        v11 = 0;
        do
        {
            v12 = *(v8 + v9);
            *(&unk_202708C + v10) = v12;
            v11 += v12;
            v9 += 2;
            v10 += 2;
        }
        while ( v9 < 60 );
        *(&unk_202708C + v10) = v11;
    }
    else
    {
        ZeroFillByHalfword(&unk_202708C, 0x60u, v2, v3);
    }
    v4[13] = 96;
    result = 0;
    v4[16] = 0;
    v4[15] = 0;
    return result;
}


// 0x81306f0
int __fastcall sub_81306F0(int result)
{
    int v1; // r5
    int v2; // r3

    v2 = *(v1 + 64);
    if ( v2 == *(v1 + 52) )
        *(result + 8) = 0;
    else
        *(result + 8) = *(&unk_202708C + v2);
    *(result + 10) = *(v1 + 46) - 295;
    return result;
}


// 0x8130728
void __fastcall sub_8130728(int a1)
{
    int v1; // r5
    int v2; // r2
    signed int v3; // r0
    int v4; // r2
    signed int v5; // r0
    int v6; // r2

    v2 = *(v1 + 60);
    *(&unk_20270EC + v2) = *(a1 + 8);
    *(&unk_202714C + v2) = *(a1 + 24);
    v2 += 2;
    *(v1 + 60) = v2;
    if ( v2 >= *(v1 + 52) )
    {
        v3 = 32;
        v4 = 0;
        do
        {
            v4 += *(&unk_20270EC + v3);
            v3 += 2;
        }
        while ( v3 < 92 );
        if ( *(&unk_20270EC + v3) != v4 )
            goto LABEL_12;
        v5 = 32;
        v6 = 0;
        do
        {
            v6 += *(&unk_202714C + v5);
            v5 += 2;
        }
        while ( v5 < 92 );
        if ( *(&unk_202714C + v5) == v6 )
            sub_8130020();
        else
LABEL_12:
            sub_8130424();
    }
}


// 0x8130780
signed int __fastcall sub_8130780(int a1)
{
    signed int v1; // r7
    char *v2; // r4
    int v3; // r4
    signed int v4; // r6
    int v5; // r0

    v1 = 1;
    v2 = &unk_202714C;
    if ( sub_803DD60(a1) )
        v2 = &unk_20270EC;
    v3 = (v2 + 32);
    v4 = 0;
    while ( 1 )
    {
        v5 = split9BitsFromBitfield_8021AE0(*(v3 + v4));
        if ( getChip_8021DA8(v5)[22] & 0x10 )
            break;
        v4 += 2;
        if ( v4 >= 60 )
            return 0;
    }
    return v1;
}


// 0x81307bc
signed int __fastcall sub_81307BC(int a1)
{
    _BYTE *v1; // r5
    int v2; // r1
    signed int result; // r0

    if ( sub_8130780(a1) )
    {
        sub_8132280(62);
    }
    else
    {
        result = sub_8120DAC(v2);
        if ( !result )
            return result;
        sub_8132280(63);
    }
    v1[73] = v1[2];
    v1[2] = 28;
    v1[12] = 0;
    v1[3] = 0;
    return 1;
}


// 0x81307f4
int sub_81307F4()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 1);
    if ( result != 8 )
    {
        result = *(v0 + 73);
        if ( result == 4 )
        {
            sub_813064C();
            result = sub_8130810();
        }
    }
    return result;
}


// 0x8130810
int sub_8130810()
{
    char *v0; // r7
    int result; // r0
    unsigned int v2; // r0

    v0 = sub_8130404();
    sub_8130850();
    result = v0[12];
    if ( v0[12] )
    {
        v2 = sub_8137884(result - 1);
        sub_8120348(v2 >> 4, &unk_20347D8, 10, 1);
        result = copyTiles();
    }
    return result;
}


// 0x8130850
void sub_8130850()
{
    sub_80018D0(8, 6, 2, 0);
}


// 0x8130864
void __spoils<R1,R2,R3,R12> sub_8130864()
{
    _BYTE *v0; // r5

    if ( eStruct200BC30_getJumpOffset00() )
        sub_803C754();
    else
        sub_81440D8();
    v0[2] = 28;
    v0[12] = 0;
    v0[3] = 0;
}


// 0x813096c
void sub_813096C()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u8 *v4; // r6
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r4
    unsigned int v8; // r3
    unsigned int v9; // r3
    char v10; // zf

    *(v0 + 16) = 32;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_81313C0();
    }
    else if ( v1 != 1 )
    {
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            *(v0 + 38) = 0;
            *(v3 + 8) = 0;
            *(v3 + 10) = -292;
        }
        if ( !(v2 & 8) )
        {
            v4 = sub_803E8F8();
            v5 = sub_803EF74();
            v6 = sub_81323B0(v5);
            v7 = v6;
            if ( v6 != -1 )
            {
                v8 = 8;
                while ( *(v7 + 4) == *(v4 + 7) )
                {
                    v9 = v8 >> 1;
                    if ( *(v7 + 2) != *(v4 + 5) || *(v7 + 10) != 65244 )
                        break;
                    v8 = v9 >> 1;
                    v7 += 16;
                    if ( v7 > v6 + 16 )
                    {
                        if ( !v8 )
                        {
                            engine_isScreeneffectAnimating();
                            if ( !v10 )
                            {
                                *(v0 + 50) = *(v0 + 42);
                                sub_81312FC();
                            }
                        }
                        return;
                    }
                }
            }
        }
    }
}


// 0x8130a04
void __noreturn sub_8130A04()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u8 *v4; // r6
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r4
    int v8; // r7
    unsigned int v9; // r3
    unsigned int v10; // r3
    signed int v11; // r0
    char v12; // r1
    int v13; // r0
    int v14; // r1
    int v15; // r2
    char v16; // zf

    *(v0 + 16) = 32;
    *(v0 + 42) = sub_81312D8();
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_81313C0();
        goto LABEL_27;
    }
    if ( v1 == 1 )
        goto LABEL_29;
    v2 = v1;
    if ( !(v1 & 0x10) )
    {
        v3 = sub_81325CC();
        *(v3 + 8) = *(v0 + 38);
        *(v3 + 10) = *(v0 + 42);
    }
    if ( v2 & 8 )
    {
        if ( !eStruct200BC30_getJumpOffset00() )
            sub_8131570();
    }
    else
    {
        v4 = sub_803E8F8();
        v5 = sub_803EF74();
        v6 = sub_81323B0(v5);
        v7 = v6;
        if ( v6 != -1 )
        {
            v8 = v6 + 16;
            v9 = 8;
            do
            {
                if ( *(v6 + 4) != *(v4 + 7) )
                    goto LABEL_29;
                v10 = v9 >> 1;
                if ( *(v6 + 2) != *(v4 + 5) )
                    goto LABEL_29;
                v9 = v10 >> 1;
                v6 += 16;
            }
            while ( v6 <= v8 );
            if ( !v9 )
            {
                v11 = sub_8132430(v7);
                if ( v11 > 2 )
                {
                    if ( v11 == 255 )
                    {
LABEL_27:
                        engine_isScreeneffectAnimating();
                        if ( !v16 )
                            sub_8131210();
                        goto LABEL_29;
                    }
                    if ( v11 == 4 )
                    {
                        if ( *(v7 + 10) == *(v7 + 26) )
                        {
                            *(v0 + 2) = 8;
                            *(v0 + 3) = 0;
                            sub_81325CC();
                            *(v0 + 38) = 0;
                            *(v0 + 42) = -295;
                            sub_8131C04();
                            sub_8132280(65);
                        }
                        else
                        {
                            sub_813178C();
                        }
                    }
                    else
                    {
                        sub_811F7EC();
                        if ( !v16 )
                            sub_8131768(v13, v14, v15);
                    }
                }
                else
                {
                    sub_81318B0();
                    *(v0 + 16) = 4;
                    if ( v11 != 2 )
                    {
                        sub_8132280(64);
                        v12 = 3;
                        if ( *(v0 + 38) == 8 )
                            v12 = 4;
                        *(v0 + 16) = v12;
                        *(v0 + 38) = 16;
                    }
                }
            }
        }
    }
LABEL_29:
    sub_8131570();
}


// 0x8130b30
void __noreturn sub_8130B30()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u8 *v4; // r6
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r7
    unsigned int v8; // r3
    unsigned int v9; // r3

    *(v0 + 16) = 33;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_81313C0();
    }
    else
    {
        if ( v1 == 1 )
            goto LABEL_19;
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            *(v3 + 8) = *(v0 + 38);
            *(v3 + 10) = *(v0 + 42);
        }
        if ( v2 & 8 )
LABEL_19:
            sub_8131570();
        v4 = sub_803E8F8();
        v5 = sub_803EF74();
        v6 = sub_81323B0(v5);
        if ( v6 != -1 )
        {
            v7 = v6 + 16;
            v8 = 8;
            do
            {
                if ( *(v6 + 4) != *(v4 + 7) )
                    goto LABEL_15;
                v9 = v8 >> 1;
                if ( *(v6 + 2) != *(v4 + 5) || *(v6 + 10) != 65241 )
                    goto LABEL_15;
                v8 = v9 >> 1;
                v6 += 16;
            }
            while ( v6 <= v7 );
            if ( !v8 )
            {
                sub_81317A8(v6, 65241, 65241, 0);
                *(v0 + 2) = 16;
                *(v0 + 46) = 0;
            }
        }
    }
LABEL_15:
    sub_8131570();
}


// 0x8130bc8
int sub_8130BC8()
{
    int v0; // r5
    char v1; // zf
    int result; // r0
    char v3; // r4
    u32 v4; // r0
    u8 *v5; // r6
    _BYTE *v6; // r0
    int v7; // r0
    int v8; // r4
    int v9; // r7
    unsigned int v10; // r3
    unsigned int v11; // r3
    int v12; // r0

    *(v0 + 16) = 35;
    chatbox_8045F3C(8);
    if ( !v1 )
        *(v0 + 42) = -292;
    *(v0 + 38) = 0;
    result = sub_803EAE4();
    if ( result == 4 )
    {
        sub_81313C0();
        goto LABEL_20;
    }
    if ( result != 1 )
    {
        v3 = result;
        if ( !(result & 0x10) )
        {
            v4 = sub_81325CC();
            *(v4 + 8) = *(v0 + 38);
            *(v4 + 10) = *(v0 + 42);
        }
        if ( v3 & 8 )
            sub_8131570();
        v5 = sub_803E8F8();
        v6 = sub_803EF74();
        v7 = sub_81323B0(v6);
        v8 = v7;
        if ( v7 != -1 )
        {
            v9 = v7 + 16;
            v10 = 8;
            do
            {
                if ( *(v7 + 4) != *(v5 + 7) )
                    goto LABEL_20;
                v11 = v10 >> 1;
                if ( *(v7 + 2) != *(v5 + 5) )
                    goto LABEL_20;
                v10 = v11 >> 1;
                v7 += 16;
            }
            while ( v7 <= v9 );
            if ( !v10 )
            {
                if ( sub_803DD60(v7) )
                    v12 = v8 + 16;
                else
                    v12 = v8;
                if ( *(v12 + 10) == 65244 )
                {
                    *(v0 + 2) = 4;
                    sub_8132280(104);
                    *(v0 + 27) |= 0x20u;
                }
            }
        }
LABEL_20:
        sub_8131570();
    }
    return result;
}


// 0x8130c98
int sub_8130C98()
{
    int v0; // r5
    int result; // r0
    char v2; // r4
    u8 *v3; // r6
    _BYTE *v4; // r0
    int v5; // r0
    int v6; // r4
    int v7; // r7
    unsigned int v8; // r3
    unsigned int v9; // r3

    *(v0 + 16) = 33;
    result = sub_803EAE4();
    if ( result == 4 )
    {
        sub_81313C0();
        goto LABEL_15;
    }
    if ( result != 1 )
    {
        v2 = result;
        if ( !(result & 0x10) )
            result = sub_81325CC();
        if ( v2 & 8 )
            sub_8131570();
        sub_81317F0(result);
        v3 = sub_803E8F8();
        v4 = sub_803EF74();
        v5 = sub_81323B0(v4);
        v6 = v5;
        if ( v5 != -1 )
        {
            v7 = v5 + 16;
            v8 = 8;
            do
            {
                if ( *(v5 + 4) != *(v3 + 7) )
                    goto LABEL_15;
                v9 = v8 >> 1;
                if ( *(v5 + 2) != *(v3 + 5) || *(v5 + 10) != *(v0 + 46) + 65242 )
                    goto LABEL_15;
                v8 = v9 >> 1;
                v5 += 16;
            }
            while ( v5 <= v7 );
            if ( !v8 )
            {
                *(v0 + 64) += 2;
                ++*(v0 + 46);
                sub_8131824(v6);
            }
        }
LABEL_15:
        sub_8131570();
    }
    return result;
}


// 0x8130d40
void __noreturn sub_8130D40()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u8 *v4; // r6
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r7
    unsigned int v8; // r3
    unsigned int v9; // r3
    int v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    char v14; // zf

    *(v0 + 16) = 33;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_81313C0();
    }
    else if ( v1 != 1 )
    {
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            *(v3 + 8) = *(v0 + 38);
            *(v3 + 10) = *(v0 + 42);
        }
        if ( !(v2 & 8) )
        {
            v4 = sub_803E8F8();
            v5 = sub_803EF74();
            v6 = sub_81323B0(v5);
            if ( v6 != -1 )
            {
                v7 = v6 + 16;
                v8 = 8;
                do
                {
                    if ( *(v6 + 4) != *(v4 + 7) )
                        goto LABEL_16;
                    v9 = v8 >> 1;
                    if ( *(v6 + 2) != *(v4 + 5) || *(v6 + 10) != 65243 )
                        goto LABEL_16;
                    v8 = v9 >> 1;
                    v6 += 16;
                }
                while ( v6 <= v7 );
                if ( !v8 )
                {
                    v10 = engine_isScreeneffectAnimating();
                    if ( !v14 )
                    {
                        sub_8131864(v10, v11, v12, v13);
                        *(v0 + 2) = 24;
                    }
                }
            }
        }
    }
LABEL_16:
    sub_8131570();
}


// 0x8130dd0
void sub_8130DD0()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u8 *v4; // r6
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r4
    int v8; // r7
    unsigned int v9; // r3
    unsigned int v10; // r3
    signed int v11; // r0

    *(v0 + 16) = 33;
    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_813188C(0);
        sub_81313C0();
        return;
    }
    if ( v1 != 1 )
    {
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            *(v3 + 8) = *(v0 + 38);
            *(v3 + 10) = *(v0 + 42);
        }
        if ( !(v2 & 8) )
        {
            v4 = sub_803E8F8();
            v5 = sub_803EF74();
            v6 = sub_81323B0(v5);
            v7 = v6;
            if ( v6 != -1 )
            {
                v8 = v6 + 16;
                v9 = 8;
                while ( *(v6 + 4) == *(v4 + 7) )
                {
                    v10 = v9 >> 1;
                    if ( *(v6 + 2) != *(v4 + 5) )
                        break;
                    if ( *(v6 + 10) != 65243 )
                        goto LABEL_22;
                    v9 = v10 >> 1;
                    v6 += 16;
                    if ( v6 > v8 )
                    {
                        if ( v9 )
                            goto LABEL_21;
                        v11 = sub_8132430(v7);
                        if ( v11 > 2 )
                        {
                            if ( v11 == 4 )
                            {
                                *(v0 + 1) = 24;
                                *(v0 + 2) = 0;
                                *(v0 + 3) = 0;
                                *(v0 + 27) = 0;
                                *(v0 + 42) = *(v0 + 50);
                            }
                        }
                        else
                        {
                            *(v0 + 2) = 40;
                            *(v0 + 3) = 0;
                            *(v0 + 12) = 0;
                            *(v0 + 42) = -295;
                            *(v0 + 38) = 0;
                            engine_setScreeneffect(12, 16);
                        }
                        sub_813188C(0);
                        return;
                    }
                }
            }
            goto LABEL_21;
        }
        if ( eStruct200BC30_getJumpOffset00() )
        {
LABEL_21:
            sub_813188C(1);
            return;
        }
    }
LABEL_22:
    sub_813188C(1);
    *(v0 + 2) = 48;
    *(v0 + 31) = 24;
    sub_8132280(65);
    *(v0 + 40) = 240;
}


// 0x8130ed4
void sub_8130ED4()
{
    ;
}


// 0x8130ed8
void sub_8130ED8()
{
    ;
}


// 0x8130edc
void sub_8130EDC()
{
    int v0; // r5

    (*(&off_8130F0C + *(v0 + 12)))();
    JUMPOUT(loc_8130EEA);
}


// 0x8130f1c
int sub_8130F1C()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    char v3; // r4
    int v4; // r0
    char v5; // r6
    int v6; // r1
    int v7; // r2
    int v8; // r3

    if ( eStruct200BC30_getRef()[14] == 2 )
    {
        *(v0 + 12) = 12;
        sub_8149644();
        result = sub_8149568();
    }
    else if ( *(v0 + 27) & 2 || (chatbox_8045F3C(128), v2) || (result = chatbox_8045F3C(8), !v2) )
    {
        v3 = eStruct200BC30_getJumpOffset00();
        v4 = sub_803EA50();
        v5 = v4;
        sub_803EBAC(v4, v6, v7, v8);
        eStruct200BC30_setJumpOffset00(v3);
        sub_803EA58(v5);
        *(v0 + 12) = 8;
        result = engine_setScreeneffect(12, 16);
    }
    return result;
}


// 0x8130f78
int sub_8130F78()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r2
    int v8; // r3

    result = engine_isScreeneffectAnimating();
    if ( !v2 )
    {
        if ( eStruct200BC30_getJumpOffset00() )
        {
            sub_8149644();
            sub_8149568();
        }
        v3 = chatbox_8040818();
        sub_8129248(v3, v4, v5, v6);
        sub_812B530();
        sub_8132614();
        *(v0 + 3) = 32;
        *(v0 + 30) = 0;
        ZeroFillByWord(dword_20251A0, 0x10u, v7, v8);
        sub_812AFC8();
    }
    return result;
}


// 0x8130fc4
void sub_8130FC4()
{
    ;
}


// 0x8130fc8
int sub_8130FC8()
{
    int v0; // r5
    int result; // r0
    char v2; // r4
    u8 *v3; // r6
    _BYTE *v4; // r0
    int v5; // r7
    unsigned int v6; // r3
    unsigned int v7; // r3
    char v8; // zf

    *(v0 + 27) &= 0xF7u;
    *(v0 + 16) = 33;
    result = sub_803EAE4();
    if ( result == 4 )
    {
LABEL_13:
        result = engine_isScreeneffectAnimating();
        if ( !v8 )
            sub_81312FC();
    }
    else if ( result != 1 )
    {
        v2 = result;
        if ( !(result & 0x10) )
        {
            result = sub_81325CC();
            *(result + 8) = *(v0 + 38);
            *(result + 10) = *(v0 + 42);
        }
        if ( !(v2 & 8) )
        {
            v3 = sub_803E8F8();
            v4 = sub_803EF74();
            result = sub_81323B0(v4);
            if ( result != -1 )
            {
                v5 = result + 16;
                v6 = 8;
                while ( *(result + 4) == *(v3 + 7) )
                {
                    v7 = v6 >> 1;
                    if ( *(result + 2) != *(v3 + 5) || *(result + 10) != 65241 )
                        break;
                    v6 = v7 >> 1;
                    result += 16;
                    if ( result > v5 )
                    {
                        if ( v6 )
                            return result;
                        goto LABEL_13;
                    }
                }
            }
        }
    }
    return result;
}


// 0x8131068
void __noreturn sub_8131068()
{
    int v0; // r5
    int v1; // r0
    char v2; // r4
    u32 v3; // r0
    u8 *v4; // r6
    _BYTE *v5; // r0
    int v6; // r0
    int v7; // r4
    int v8; // r7
    unsigned int v9; // r3
    int v10; // r1
    int v11; // r0
    int v12; // r1
    int v13; // r1
    int v14; // r1
    int v15; // r0
    int v16; // r1

    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        *(v0 + 1) = 52;
        *(v0 + 2) = 0;
        *(v0 + 3) = 0;
    }
    else if ( v1 != 1 )
    {
        v2 = v1;
        if ( !(v1 & 0x10) )
        {
            v3 = sub_81325CC();
            *(v0 + 10) = *(v0 + 42);
            *(v3 + 8) = *(v0 + 38);
        }
        if ( !(v2 & 8) )
        {
            v4 = sub_803E8F8();
            v5 = sub_803EF74();
            v6 = sub_81323B0(v5);
            v7 = v6;
            if ( v6 != -1 )
            {
                v8 = v6 + 16;
                v9 = 8;
                do
                {
                    if ( *(v6 + 4) != *(v4 + 7) )
                        goto LABEL_32;
                    v9 >>= 1;
                    if ( *(v6 + 2) == *(v4 + 5) )
                        v9 >>= 1;
                    v6 += 16;
                }
                while ( v6 <= v8 );
                if ( !v9 )
                {
                    v10 = *(v0 + 38);
                    if ( v10 == 16 )
                    {
                        if ( sub_803DD60(v6) )
                        {
                            v11 = sub_81325C0(v7);
                            if ( v12 == 16 && (v11 == 16 || v11 == 8) )
                            {
LABEL_30:
                                *(v0 + 2) = 36;
                                *(v0 + 12) = 0;
                                *(v0 + 3) = 0;
                                goto LABEL_32;
                            }
                        }
                        else if ( sub_81325C0(v7) == 16 && (v13 == 16 || v13 == 8) )
                        {
                            goto LABEL_30;
                        }
                    }
                    else
                    {
                        if ( v10 != 8 )
                            goto LABEL_32;
                        if ( sub_803DD60(v6) )
                        {
                            if ( sub_81325C0(v7) == 16 && v14 == 8 )
                                goto LABEL_30;
                        }
                        else
                        {
                            v15 = sub_81325C0(v7);
                            if ( v16 == 16 && v15 == 8 )
                                goto LABEL_30;
                        }
                    }
                }
            }
        }
    }
LABEL_32:
    sub_8131570();
}


// 0x8131150
int sub_8131150()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0

    v1 = sub_803EAE4();
    if ( v1 == 4 )
    {
        sub_81313C0();
    }
    else if ( v1 != 1 && !(v1 & 8) )
    {
        if ( *(v0 + 40) )
        {
            --*(v0 + 40);
        }
        else
        {
            v2 = *(v0 + 31);
            *(v0 + 2) = v2;
            if ( v2 == 4 )
                sub_8132280(104);
            else
                chatbox_8040818();
        }
    }
    if ( *(v0 + 31) == 4 )
        sub_8131570();
    return sub_813188C(1);
}


// 0x81311f0
int sub_81311F0()
{
    int v0; // r5

    *(v0 + 2) = 20;
    *(v0 + 38) = 0;
    *(v0 + 42) = -293;
    sub_8131EE4();
    return engine_setScreeneffect(12, 16);
}


// 0x8131210
void sub_8131210()
{
    int v0; // r4
    int v1; // r5
    int v2; // r10
    int v3; // r7
    char *v4; // r5
    char v5; // zf
    int v6; // r4
    int v7; // r0
    int v8; // r2
    int v9; // r1
    int v10; // r0

    v3 = v1;
    v4 = sub_81312EC();
    if ( *(v3 + 27) & 0x20 )
    {
        chatbox_8045F3C(8);
        if ( !v5 )
        {
            *(v3 + 27) &= 0xDFu;
            sub_8132280(*(&dword_81312D4 + v4[12]));
        }
        return;
    }
    if ( !sub_803DD60(32) )
    {
        if ( *(v0 + 10) > 32771 )
            return;
        if ( *(v3 + 38) == 4 )
            goto LABEL_13;
LABEL_10:
        v6 = v4[12];
        v7 = sub_811FA22(*(*(v2 + oToolkit_JoypadPtr) + 4), 3, 1, v6);
        if ( v6 != v7 )
        {
            v4[12] = v7;
            sub_8132280(*(&dword_81312D4 + v7));
            sub_81314E4();
        }
        goto LABEL_13;
    }
    if ( *(v0 + 26) > 32771 )
        return;
    if ( *(v3 + 38) != 4 )
        goto LABEL_10;
LABEL_13:
    sub_811F7EC();
    if ( !v5 )
        goto LABEL_23;
    sub_811F7EC();
    if ( v5 )
        return;
    sub_8132280(105);
    v9 = 4;
    if ( *(v3 + 17) )
    {
LABEL_23:
        *(v3 + 27) |= 2u;
        v9 = 8;
    }
    *(v3 + 38) = v9;
    v10 = 129;
    if ( v9 != 4 )
        v10 = 131;
    sound_play(v10, v9, v8);
}


// 0x81312d8
int sub_81312D8()
{
    return sub_81312EC()[12] | 0x8000;
}


// 0x81312ec
char *sub_81312EC()
{
    return byte_2037780;
}


// 0x81312f4
char *sub_81312F4()
{
    return byte_2037700;
}


// 0x81312fc
void __noreturn sub_81312FC()
{
    int v0; // r5
    int v1; // r10
    char *v2; // r0
    int v3; // r7
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3
    int v11; // r0
    int v12; // r1
    int v13; // r2
    int v14; // r3
    int v15; // r2
    int v16; // r3
    _WORD *v17; // r0
    char v18; // r4

    v2 = sub_81312EC();
    v3 = v2;
    zeroFillVRAM(v2, v4, v5, v6);
    sub_80017E0(v7, v8, v9, v10);
    sub_800183C(v11, v12, v13, v14);
    sub_80015FC(16);
    sub_8046664();
    chatbox_8040818();
    v17 = *(v1 + oToolkit_RenderInfoPtr);
    *v17 = 8000;
    v17[8] = 0;
    v17[9] = 0;
    v17[10] = 0;
    v17[11] = 0;
    v17[12] = 0;
    v17[13] = 0;
    if ( *(v0 + 2) )
    {
        v18 = *(v3 + 12);
        ZeroFillByEightWords(v3, 0x80u, v15, v16);
        *(v3 + 12) = v18;
    }
    else
    {
        ZeroFillByEightWords(v3, 0x80u, v15, v16);
    }
    sub_8131400();
    sub_8131440();
}


// 0x8131390
char *sub_8131390()
{
    int v0; // r4
    char *result; // r0

    v0 = 0;
    do
    {
        result = sub_8046670(28, v0, *&byte_81313B0[4 * v0]);
        ++v0;
    }
    while ( v0 < 4 );
    return result;
}


// 0x81313c0
void sub_81313C0()
{
    _BYTE *v0; // r5
    int v1; // r1

    if ( sub_80062C8() == 12 )
        engine_setScreeneffect(8, 16);
    v0[22] = v0[2];
    v0[2] = 36;
    v0[12] = 0;
    v0[3] = 0;
    if ( !(v0[27] & 2) )
    {
        if ( eStruct200BC30_getRef()[14] == 2 )
            v1 = 48;
        sub_8132280(v1);
    }
}


// 0x8131400
void sub_8131400()
{
    sub_812AF3C();
    sub_812AF78();
    decompAndCopyData(byte_8131418);
}


// 0x8131440
void __noreturn sub_8131440()
{
    copyTiles();
    JUMPOUT(locret_8131452);
}


// 0x8131458
int sub_8131458()
{
    sub_81312EC();
    return sub_8131480(8, 29, 12, 18);
}


// 0x8131480
int __fastcall sub_8131480(int a1, int a2, int a3, int a4)
{
    int *v4; // r4
    int v5; // r5
    unsigned int v6; // r7
    int v7; // r0
    int v8; // r2
    unsigned int v9; // ST14_4
    int v10; // r0
    int v11; // r1
    int result; // r0
    int v13; // [sp+8h] [bp-28h]

    v13 = a4;
    v7 = a1 << 16;
    if ( a3 )
        v8 = *(v5 + a3);
    else
        v8 = 0;
    v9 = *(v5 + a4);
    v10 = sub_811FAF4(v7 | (a2 + 19 * v8), v6, v9 & 0xF, v4);
    v11 = (v9 >> 4) - 1;
    if ( v9 >> 4 == 1 )
        *(v5 + v13) = sub_8120CC8(v10, &dword_8129180);
    result = *(v5 + v13) & 0xF | 16 * v11;
    *(v5 + v13) = result;
    return result;
}


// 0x81314e4
void __noreturn sub_81314E4()
{
    char (*v0)[8]; // ST04_4

    v0 = off_813154C[sub_81312EC()[12]];
    render_graphicalText_8045F8C(byte_873EA50, (*v0 - 144) >> 2, byte_2019A00, 100704256);
    JUMPOUT(loc_8131528);
}


// 0x8131570
void __noreturn sub_8131570()
{
    copyTiles();
    JUMPOUT(locret_8131582);
}


// 0x8131588
int sub_8131588()
{
    char v0; // r4
    int v1; // r0
    char v2; // r4
    int v3; // r7
    void **v4; // r6
    signed int v5; // r4
    int result; // r0

    getPETNaviSelect();
    sub_8013846();
    if ( *byte_203771C != 0xFFFF )
    {
        v0 = byte_203771C[0];
        v1 = getPETNaviSelect();
        sub_8013864(v1, 46, v0);
    }
    if ( dword_203775C != 0xFFFF )
    {
        v2 = dword_203775C;
        v3 = getPETNaviSelect();
        sub_8013864(v3, 86, v2);
        sub_8013864(v3, 87, dword_2037760);
    }
    v4 = off_8131600[sub_81312EC()[12]];
    v5 = 0;
    do
    {
        result = (v4[v5])();
        ++v5;
    }
    while ( v5 < 7 );
    return result;
}


// 0x8131664
char *sub_8131664()
{
    int v0; // r0

    v0 = getPETNaviSelect();
    return sub_8013864(v0, 35, 1);
}


// 0x8131674
char *sub_8131674()
{
    int v0; // r0

    v0 = getPETNaviSelect();
    return sub_8013864(v0, 10, 6);
}


// 0x8131684
char *sub_8131684()
{
    int v0; // r0

    v0 = getPETNaviSelect();
    return sub_8013864(v0, 10, 7);
}


// 0x8131694
char *sub_8131694()
{
    int v0; // r0

    v0 = getPETNaviSelect();
    return sub_8013864(v0, 7, 59);
}


// 0x81316a4
char *sub_81316A4()
{
    int v0; // r0

    v0 = getPETNaviSelect();
    return sub_8013864(v0, 28, 1);
}


// 0x81316b4
char *sub_81316B4()
{
    int v0; // r0

    v0 = getPETNaviSelect();
    return sub_8013864(v0, 29, 1);
}


// 0x81316c4
char *sub_81316C4()
{
    int v0; // r0

    v0 = getPETNaviSelect();
    return sub_8013864(v0, 96, 1);
}


// 0x81316d4
char *sub_81316D4()
{
    return sub_8013864(0, 1, 1);
}


// 0x81316ec
char *sub_81316EC()
{
    return sub_8013864(0, 2, 1);
}


// 0x8131704
char *sub_8131704()
{
    return sub_8013864(0, 3, 1);
}


// 0x813171c
char *sub_813171C()
{
    int v0; // r0
    int v1; // r0

    v0 = getPETNaviSelect();
    sub_8013874(v0, 66, &byte_320);
    v1 = getPETNaviSelect();
    return sub_8013874(v1, 64, &byte_320);
}


// 0x8131754
MenuControl *sub_8131754()
{
    MenuControl *result; // r0

    result = &sSubmenu;
    sSubmenu.unk_26 = 8;
    return result;
}


// 0x813175c
u16 __fastcall sub_813175C(u16 result)
{
    sSubmenu.unk_26 = result;
    return result;
}


// 0x8131768
signed int __fastcall sub_8131768(int a1, int a2, int a3)
{
    int v3; // r5
    signed int result; // r0

    *(v3 + 38) = 0;
    *(v3 + 42) = -292;
    sound_play(131, 65244, a3);
    sub_8132280(104);
    result = 32;
    *(v3 + 27) |= 0x20u;
    return result;
}


// 0x813178c
signed int sub_813178C()
{
    int v0; // r5
    signed int result; // r0

    sub_8132280(103);
    *(v0 + 2) = 12;
    *(v0 + 3) = 0;
    result = 65242;
    *(v0 + 42) = -294;
    return result;
}


// 0x81317a8
int __fastcall sub_81317A8(int a1, int a2, int a3, int a4)
{
    _DWORD *v4; // r5
    int v5; // r2
    int v6; // r3
    signed int v7; // r0
    int v8; // r3
    int v9; // r2
    int v10; // r1
    int result; // r0

    ZeroFillByWord(&unk_202527C, 0x40u, a3, a4);
    ZeroFillByWord(&unk_20252BC, 0x40u, v5, v6);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
        v10 = *(dword_20251A0 + v7);
        *(&unk_202523C + v8) = v10;
        v9 += v10;
        v7 += 2;
        v8 += 2;
    }
    while ( v7 < 60 );
    *(&unk_202523C + v8) = v9;
    v4[13] = 64;
    result = 0;
    v4[16] = 0;
    v4[15] = 0;
    return result;
}


// 0x81317f0
int __fastcall sub_81317F0(int result)
{
    int v1; // r5
    int v2; // r3

    v2 = *(v1 + 64);
    if ( v2 == *(v1 + 52) )
        *(result + 8) = 0;
    else
        *(result + 8) = *(&unk_202523C + v2);
    *(result + 10) = *(v1 + 46) - 294;
    return result;
}


// 0x8131824
void __fastcall sub_8131824(int a1)
{
    int v1; // r5
    int v2; // r2
    signed int v3; // r0
    int v4; // r2

    v2 = *(v1 + 60);
    *(&unk_202527C + v2) = *(a1 + 8);
    v2 += 2;
    *(v1 + 60) = v2;
    if ( v2 >= *(v1 + 52) )
    {
        v3 = 0;
        v4 = 0;
        do
        {
            v4 += *(&unk_202527C + v3);
            v3 += 2;
        }
        while ( v3 < 60 );
        if ( *(&unk_202527C + v3) == v4 )
            sub_81311F0();
        else
            sub_81313C0();
    }
}


// 0x8131864
int __fastcall sub_8131864(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    ZeroFillByWord(byte_2037700, 0x80u, a3, a4);
    byte_203770C[0] = 0;
    byte_2037770 = 1;
    *(v4 + 27) |= 8u;
    return chatbox_8040818();
}


// 0x813188c
int __fastcall sub_813188C(int a1)
{
    int v1; // r5
    char v2; // r0

    if ( a1 )
        v2 = *(v1 + 27) | 0x40;
    else
        v2 = *(v1 + 27) & 0xBF;
    *(v1 + 27) = v2;
    return sub_8133200();
}


// 0x81318b0
void __spoils<R1,R2,R3,R12> sub_81318B0()
{
    _BYTE *v0; // r5

    if ( eStruct200BC30_getJumpOffset00() )
        sub_803C754();
    else
        sub_81440D8();
    v0[22] = v0[2];
    v0[2] = 36;
    v0[12] = 0;
    v0[3] = 0;
}


// 0x8131c04
int sub_8131C04()
{
    char *v0; // r0

    v0 = sub_81312EC();
    return (*(&off_8131C20 + v0[12]))();
}


// 0x8131c2c
int sub_8131C2C()
{
    signed int v0; // r2
    signed int v1; // r7
    char v2; // r0
    unsigned int v3; // r0
    int v4; // r1
    int v5; // r3
    int v6; // r2
    unsigned __int8 v7; // vf

    v0 = 0;
    do
    {
        dword_202522C[v0] = off_8131C6C[v0];
        ++v0;
    }
    while ( v0 < 16 );
    v1 = 8;
    do
    {
        rng_800154C();
        v3 = 4 * (v2 & 0xF);
        v4 = dword_202522C[v3 / 4];
        v5 = v3 + 4;
        if ( (v3 + 4) >= 64 )
            v5 = 0;
        v6 = *(dword_202522C + v5);
        dword_202522C[v3 / 4] = v6;
        *(dword_202522C + v5) = v4;
        v7 = __OFSUB__(v1--, 1);
    }
    while ( !((v1 < 0) ^ v7) );
    return sub_8131E70(v3, v4, v6, v5);
}


// 0x8131cac
int sub_8131CAC()
{
    signed int v0; // r6
    char v1; // r0
    unsigned int v2; // r0
    char v3; // r0
    char (*v4)[20]; // r0
    int v5; // r2
    int v6; // r3
    signed int v8; // [sp+0h] [bp-18h]

    v0 = 0;
    v8 = -1;
    do
    {
        do
        {
            rng_800154C();
            v2 = 4 * (v1 & 0xF);
        }
        while ( v2 == v8 );
        v8 = v2;
        dword_202522C[v0] = off_8131CFC[v2 / 4];
        ++v0;
    }
    while ( v0 < 2 );
    rng_800154C();
    v4 = off_8131D40[v3 & 0xF];
    dword_202522C[v0] = v4;
    return sub_8131EB0(v4, off_8131D40, v5, v6);
}


// 0x8131d80
int sub_8131D80()
{
    char v0; // r0
    char v1; // r0
    char v2; // r0
    int v3; // r2
    int v4; // r3

    rng_800154C();
    dword_202522C[0] = off_8131DC8[v0 & 0xF];
    rng_800154C();
    unk_2025230 = off_8131E0C[v1 & 0xF];
    rng_800154C();
    dword_2025234[0] = off_8131E50[v2 & 7];
    return sub_8131EB0(dword_2025234[0], off_8131E50, v3, v4);
}


// 0x8131e70
int __fastcall sub_8131E70(int a1, int a2, int a3, int a4)
{
    char v4; // r0
    int v5; // r4
    int v6; // r3
    signed int v7; // r6
    int v8; // r1
    int result; // r0
    signed int v10; // r2

    ZeroFillByWord(dword_20251A0, 0x3Cu, a3, a4);
    rng_800154C();
    v5 = 4 * (v4 & 0xF);
    v6 = 0;
    v7 = 0;
    do
    {
        v8 = 4 * v7 + v5;
        if ( v8 >= 64 )
            v8 -= 64;
        result = *(dword_202522C + v8);
        v10 = 0;
        do
        {
            *(dword_20251A0 + v6) = *(result + v10);
            v6 += 2;
            v10 += 2;
        }
        while ( v10 < 20 );
        ++v7;
    }
    while ( v7 < 3 );
    return result;
}


// 0x8131eb0
int __fastcall sub_8131EB0(int a1, int a2, int a3, int a4)
{
    int v4; // r3
    signed int v5; // r6
    int result; // r0
    signed int v7; // r2

    ZeroFillByWord(dword_20251A0, 0x3Cu, a3, a4);
    v4 = 0;
    v5 = 0;
    do
    {
        result = dword_202522C[v5];
        v7 = 0;
        do
        {
            *(dword_20251A0 + v4) = *(result + v7);
            v4 += 2;
            v7 += 2;
        }
        while ( v7 < 20 );
        ++v5;
    }
    while ( v5 < 3 );
    return result;
}


// 0x8131ee4
int sub_8131EE4()
{
    signed int v0; // r4
    int result; // r0
    signed int v2; // r3

    v0 = 0;
    do
    {
        result = *(&unk_202527C + v0);
        v2 = 0;
        while ( result != *&byte_8131BF4[v2] )
        {
            v2 += 2;
            if ( v2 >= 8 )
                goto LABEL_6;
        }
        result = *&byte_8131BFC[v2];
LABEL_6:
        *(dword_20251A0 + v0) = result;
        v0 += 2;
    }
    while ( v0 < 60 );
    return result;
}


// 0x8131f20
int sub_8131F20()
{
    int v0; // r5

    return (*(&off_8131F34 + *(v0 + 36)))();
}


// 0x8131f3c
int sub_8131F3C()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0

    result = engine_isScreeneffectAnimating();
    if ( !v2 )
    {
        sub_813D90C(1);
        sub_803DCE8(0xCu, 3, 2u, 0);
        sub_803DCD8(1112683845, 0x2000, 0);
        v3 = sub_81322E8();
        sub_803EF60(v3);
        engine_setScreeneffect(8, 16);
        result = 4;
        *(v0 + 36) = 4;
    }
    return result;
}


// 0x8131f80
int sub_8131F80()
{
    int v0; // r0

    v0 = eStruct200BC30_getJumpOffset00();
    return (*&byte_8131F94[v0])();
}


// 0x8131fa0
int sub_8131FA0()
{
    int v0; // r5

    return (*(&off_8131FB4 + *(v0 + 3)))();
}


// 0x8131fc4
int sub_8131FC4()
{
    int v0; // r5
    _BYTE **v1; // r10
    int result; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3

    result = engine_isScreeneffectAnimating();
    if ( !v3 )
    {
        v4 = sub_813D90C(1);
        sub_8147F98(v4, v5, v6, v7);
        sub_803DCE8(0xCu, 3, 2u, 0);
        sub_803DCD8(1112683845, 0x2000, 0);
        v8 = sub_81322E8();
        sub_803EF60(v8);
        *(v0 + 3) = 4;
        *(v0 + 12) = 0;
        sub_803CB00(1);
        sub_8048F9C(0, v9, v10, v11);
        result = 40;
        **v1 = 40;
    }
    return result;
}


// 0x813201c
signed int sub_813201C()
{
    return cb_8048FD4();
}


// 0x813202c
int __fastcall sub_813202C(int a1)
{
    int v1; // r0
    int v2; // r1
    char v3; // zf
    int v4; // r0

    sub_813D60C();
    v1 = sub_803C620();
    if ( !v2 )
    {
        if ( v1 == 1 )
        {
            sub_813D978();
        }
        else
        {
            sub_813D60C();
            if ( v3 )
                sSubmenu.unk_0C = 16;
        }
    }
    v4 = sub_8148224();
    return (*(&off_8132070 + sSubmenu.unk_0C))(v4);
}


// 0x8132080
void sub_8132080()
{
    int v0; // r5
    char v1; // zf

    sub_811F7EC();
    if ( v1 )
    {
        sub_803CB18();
        if ( !v1 )
        {
            sub_813D638();
            if ( !v1 )
            {
                *(v0 + 12) = 4;
                *(v0 + 13) = 0;
            }
        }
    }
    else
    {
        sub_813D978();
        *(v0 + 12) = 12;
    }
}


// 0x81320ac
int __fastcall sub_81320AC(int a1)
{
    int v1; // r5
    int v2; // r10
    int v3; // r4
    int result; // r0
    int v5; // ST00_4
    int v6; // r6

    v3 = sub_813D638();
    if ( !v3 )
    {
        result = 0;
        *(v1 + 12) = 0;
        return result;
    }
    if ( sub_803CAF8() == 4 )
    {
        result = 8;
        *(v1 + 12) = 8;
    }
    else
    {
        if ( sub_803CAF8() == 8 )
        {
            result = 12;
            *(v1 + 12) = 12;
            return result;
        }
        v5 = *(v1 + 13);
        result = sub_811FA22(*(*(v2 + oToolkit_JoypadPtr) + 2), v3, 1, v5);
        if ( v5 != result )
            *(v1 + 13) = result;
    }
    v6 = 0;
    do
        ++v6;
    while ( v6 < v3 );
    return result;
}


// 0x8132104
void *sub_8132104()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r6

    sub_803CB18();
    if ( !v1 )
        goto LABEL_2;
    sub_803C330();
    if ( !v1 )
    {
        sub_803C2A0();
        sub_803CB00(32);
LABEL_2:
        *(v0 + 12) = 12;
        goto LABEL_9;
    }
    sub_803CB18();
    if ( !v1 )
    {
        v2 = sub_803EA78();
        sub_8132398(v2, v3, v4, v5);
        *(v0 + 3) = 12;
        if ( sub_803EA50() )
            sub_8148D24();
        else
            sub_8147B24();
    }
LABEL_9:
    v6 = sub_813D5D0();
    do
        ++v6;
    while ( v6 < 1 );
    sub_81469A0();
    return sub_81469E8();
}


// 0x8132168
int __fastcall sub_8132168(int a1)
{
    _BYTE *v1; // r5
    int result; // r0
    char v3; // zf

    result = sub_813D60C();
    if ( v3 )
    {
        v1[1] = 8;
        if ( v1[14] )
            v1[2] = sub_81325E4(v1[14]);
        else
            v1[2] = sub_81325F4(v1[18]);
        result = 4;
        v1[3] = 4;
    }
    return result;
}


// 0x8132194
void sub_8132194()
{
    int v0; // r0
    u32 v1; // r0
    u8 *v2; // r6
    _BYTE *v3; // r0
    int v4; // r0
    int v5; // r7
    unsigned int v6; // r3
    int v7; // r0
    signed int v8; // r4
    __int16 v9; // r0
    __int16 v10; // r1

    sSubmenu.unk_10 = 0;
    v0 = sub_803EAE4();
    if ( v0 == 4 )
    {
        sSubmenu.jo_01 = 52;
        sSubmenu.unk_02 = 0;
        sSubmenu.unk_03 = 0;
    }
    else if ( v0 != 1 )
    {
        sSubmenu.unk_10 = 1;
        v1 = sub_81325CC();
        sSubmenu.unk_26 = 0;
        *(v1 + 8) = 0;
        v2 = sub_803E8F8();
        v3 = sub_803EF74();
        v4 = sub_81323B0(v3);
        if ( v4 != -1 )
        {
            v5 = v4 + 16;
            v6 = 8;
            while ( *(v4 + 4) == *(v2 + 7) )
            {
                v6 >>= 1;
                if ( *(v4 + 2) == *(v2 + 5) )
                    v6 >>= 1;
                v4 += 16;
                if ( v4 > v5 )
                {
                    if ( v6 )
                    {
                        if ( v6 <= 1 )
                        {
                            sSubmenu.unk_10 = 2;
                            sub_803BB2C(31);
                            sSubmenu.jo_01 = 56;
                            sSubmenu.unk_02 = 0;
                            sSubmenu.unk_26 = 16;
                            *(sub_803E8F8() + 5) = 0x2000;
                        }
                    }
                    else
                    {
                        sSubmenu.jo_01 = 20;
                        sSubmenu.unk_02 = 0;
                        sSubmenu.unk_11 = 0;
                        v7 = sub_8132290();
                        if ( v7 == 24 || v7 == 28 )
                        {
                            v8 = 0;
                            if ( sub_81325F4(sSubmenu.unk_12) != 20 )
                                v8 = 1;
                            v9 = sub_81209DC(v8);
                            sSubmenu.unk_2A = v9 | (v10 << 8);
                        }
                        else
                        {
                            sSubmenu.unk_02 = 4;
                        }
                        sSubmenu.unk_03 = 0;
                        sub_803BB2C(30);
                    }
                    return;
                }
            }
        }
    }
}


// 0x8132280
void __fastcall sub_8132280(int a1)
{
    chatbox_runScript_803FD9C(byte_201BA20, a1);
}


// 0x8132290
int sub_8132290()
{
    int v0; // r5

    sub_803E8F8();
    return (*(sub_81322AC + *(v0 + 14)))();
}


// 0x81322ac
int sub_81322AC()
{
    int v0; // r5

    return byte_81322C4[*(v0 + 18)];
}


// 0x81322e8
int sub_81322E8()
{
    int v0; // r5

    sub_803E8F8();
    return (*(&off_8132304 + *(v0 + 14)))();
}


// 0x8132310
int sub_8132310()
{
    int v0; // r5

    return (*(sub_8132324 + *(v0 + 18)))();
}


// 0x8132324
int __fastcall sub_8132324(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0

    result = *&byte_8132340[2 * *(v3 + 19)];
    *(a3 + 10) = result;
    return result;
}


// 0x8132398
signed int __fastcall sub_8132398(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    signed int result; // r0
    char v6; // r1

    ZeroFillByEightWords(&unk_2033800, byte_200, a3, a4);
    result = 1;
    *(v4 + 15) = v6;
    return result;
}


// 0x81323b0
int __fastcall sub_81323B0(_BYTE *a1)
{
    int v1; // r5
    int v2; // r6
    _BYTE *v3; // r7
    _BYTE *v4; // r7
    int v5; // r3
    char *v6; // r4
    int v7; // r4

    v2 = -1;
    v3 = a1;
    if ( (*a1 & 0xFC) == 252 )
        CopyWords(a1, &unk_2033800 + 32 * (a1[1] & 0xF), 0x10u);
    v4 = v3 + 16;
    if ( (*v4 & 0xFC) != 252 )
        goto LABEL_7;
    CopyWords(v4, &unk_2033800 + 32 * (v4[1] & 0xF) + 16, 0x10u);
    v5 = *(v1 + 15);
    v6 = &unk_2033800 + 32 * (v5 & 0xF);
    if ( v6[1] == v5 )
    {
        v7 = (v6 + 16);
        if ( *(v7 + 1) == v5 )
        {
            v2 = v7 - 16;
LABEL_7:
            ++*(v1 + 15);
            return v2;
        }
    }
    return v2;
}


// 0x8132430
signed int __fastcall sub_8132430(int a1)
{
    signed int v1; // r7
    int v2; // r4
    int v3; // r6
    int v4; // r3
    int v5; // r6
    int v6; // r0
    int v7; // r6
    int v8; // r0

    v1 = 255;
    v2 = a1;
    v3 = a1 + 16;
    v4 = 0;
    do
    {
        if ( *(a1 + 8) > 2 )
            ++v4;
        a1 += 16;
    }
    while ( a1 <= v3 );
    if ( v4 )
    {
        if ( sub_803DD60(a1) )
        {
            v5 = *(v2 + 8);
            if ( v5 == 8 )
            {
                v1 = 1;
            }
            else
            {
                v6 = *(v2 + 24);
                if ( v6 == 8 )
                {
                    v1 = 2;
                }
                else if ( v6 == 4 )
                {
                    v1 = 3;
                    if ( v5 == 4 )
                        v1 = 4;
                }
            }
        }
        else
        {
            v7 = *(v2 + 24);
            if ( v7 == 8 )
            {
                v1 = 1;
            }
            else
            {
                v8 = *(v2 + 8);
                if ( v8 == 8 )
                {
                    v1 = 2;
                }
                else if ( v8 == 4 )
                {
                    v1 = 3;
                    if ( v7 == 4 )
                        v1 = 4;
                }
            }
        }
    }
    return v1;
}


// 0x81324a8
signed int __fastcall sub_81324A8(int a1)
{
    signed int v1; // r7
    int v2; // r4
    int v3; // r6
    int v4; // r3
    int v5; // r6
    int v6; // r0
    int v7; // r6
    int v8; // r0

    v1 = 255;
    v2 = a1;
    v3 = a1 + 16;
    v4 = 0;
    do
    {
        if ( *(a1 + 8) > 2 )
            ++v4;
        a1 += 16;
    }
    while ( a1 <= v3 );
    if ( v4 )
    {
        if ( sub_803DD60(a1) )
        {
            v5 = *(v2 + 8);
            if ( v5 == 8 )
            {
                v1 = 1;
                if ( *(v2 + 24) == 8 )
                    v1 = 8;
            }
            else
            {
                v6 = *(v2 + 24);
                if ( v6 == 8 )
                {
                    v1 = 2;
                }
                else if ( v6 == 4 )
                {
                    v1 = 3;
                    if ( v5 == 4 )
                        v1 = 4;
                }
            }
        }
        else
        {
            v7 = *(v2 + 24);
            if ( v7 == 8 )
            {
                v1 = 1;
                if ( *(v2 + 8) == 8 )
                    v1 = 8;
            }
            else
            {
                v8 = *(v2 + 8);
                if ( v8 == 8 )
                {
                    v1 = 2;
                }
                else if ( v8 == 4 )
                {
                    v1 = 3;
                    if ( v7 == 4 )
                        v1 = 4;
                }
            }
        }
    }
    return v1;
}


// 0x8132538
signed int __fastcall sub_8132538(int a1)
{
    signed int v1; // r7
    int v2; // r4
    int v3; // r6
    int v4; // r3
    int v5; // r6
    int v6; // r0
    int v7; // r6
    int v8; // r0

    v1 = 255;
    v2 = a1;
    v3 = a1 + 16;
    v4 = 0;
    do
    {
        if ( *(a1 + 8) > 2 )
            ++v4;
        a1 += 16;
    }
    while ( a1 <= v3 );
    if ( v4 )
    {
        if ( sub_803DD60(a1) )
        {
            v5 = *(v2 + 8);
            if ( v5 == 8 )
            {
                v1 = 1;
            }
            else
            {
                v6 = *(v2 + 24);
                if ( v6 == 8 )
                {
                    v1 = 2;
                }
                else if ( v6 == 132 || v6 == 4 )
                {
                    v1 = 3;
                    if ( v5 == 132 || v5 == 4 )
                        v1 = 4;
                }
            }
        }
        else
        {
            v7 = *(v2 + 24);
            if ( v7 == 8 )
            {
                v1 = 1;
            }
            else
            {
                v8 = *(v2 + 8);
                if ( v8 == 8 )
                {
                    v1 = 2;
                }
                else if ( v8 == 132 || v8 == 4 )
                {
                    v1 = 3;
                    if ( v7 == 132 || v7 == 4 )
                        v1 = 4;
                }
            }
        }
    }
    return v1;
}


// 0x81325c0
int __fastcall sub_81325C0(int a1)
{
    int v1; // r2
    int result; // r0
    int v3; // r1

    v1 = a1;
    result = *(a1 + 8);
    v3 = *(v1 + 24);
    return result;
}


// 0x81325cc
u32 sub_81325CC()
{
    u8 *v0; // r4
    u32 result; // r0

    v0 = sub_803E8F8();
    result = sub_803EF7C();
    *(result + 4) = *(v0 + 7);
    *(result + 2) = *(v0 + 5);
    return result;
}


// 0x81325e4
int __fastcall sub_81325E4(int a1)
{
    return *(&dword_81325F0 + a1);
}


// 0x81325f4
int __fastcall sub_81325F4(int a1)
{
    return byte_8132600[a1];
}


// 0x8132614
signed int sub_8132614()
{
    _BYTE *v0; // r5
    int v1; // r0
    char v2; // r0
    signed int result; // r0

    sub_803EBB8();
    v0[1] = 8;
    v1 = sub_8132290();
    if ( v1 != 24 && v1 != 28 )
    {
        if ( v1 != 32 && v1 != 36 )
            v2 = 16;
        else
            v2 = 12;
    }
    else
    {
        v2 = sub_81325F4(v0[18]);
    }
    v0[2] = v2;
    result = 4;
    v0[3] = 4;
    return result;
}


// 0x8132648
signed int sub_8132648()
{
    int v0; // r1
    int v1; // r2
    int v2; // r3

    sub_803EA78();
    sSubmenu.jo_01 = 16;
    sSubmenu.unk_02 = 0;
    return sub_8132398(0, v0, v1, v2);
}


// 0x8132664
int __fastcall sub_8132664(int a1)
{
    char v1; // r0

    v1 = sub_8132670();
    return sub_81469DC(v1);
}


// 0x8132670
int sub_8132670()
{
    int v0; // r0
    signed int v1; // r4
    int v2; // r4
    int v3; // r6
    char v4; // zf

    v0 = *(sub_803E8F8() + 5);
    v1 = 0;
    do
    {
        if ( v0 == *&byte_81326B0[v1] )
            break;
        v1 += 2;
    }
    while ( v1 < 22 );
    v2 = 16 * (v1 >> 1);
    v3 = getPETNaviSelect();
    TestEventFlagFromImmediate(1, 99);
    if ( v4 )
        v3 = 0;
    return v3 | v2;
}


// 0x81326d4
void __fastcall __noreturn sub_81326D4(int a1, int a2, int a3, int a4)
{
    sub_800183C(a1, a2, a3, a4);
    sub_8046664();
    decompAndCopyData(&dword_8132718);
    sub_80465A0(byte_81326C8);
    sub_811AE7C(1, 0);
    sub_813281C();
    sub_81328C0();
    sub_8132980();
}


// 0x8132764
int sub_8132764()
{
    int v0; // r5

    return (*(&jt_8132778 + *(v0 + 72)))();
}


// 0x813278c
signed int sub_813278C()
{
    int v0; // r5
    signed int result; // r0

    sub_811AE7C(0, 1);
    result = 72;
    *(v0 + 72) = 4;
    return result;
}


// 0x81327a0
int sub_81327A0()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = engine_isScreeneffectAnimating();
    if ( !v2 )
    {
        result = 72;
        *(v0 + 72) = 8;
    }
    return result;
}


// 0x81327b0
int sub_81327B0()
{
    int v0; // r5
    int result; // r0

    result = 8;
    if ( *(v0 + 12) == 8 )
    {
        sub_81328D0();
        sub_811AE7C(1, 1);
        *(v0 + 46) = byte_100;
        sub_811AE5C(byte_100, 72, 1);
        *(v0 + 72) = 12;
        result = sub_803C59C(218, 2);
    }
    return result;
}


// 0x81327e8
int sub_81327E8()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 46) - 16;
    *(v0 + 46) = v1;
    if ( v1 <= 126 )
    {
        *(v0 + 72) = 16;
        LOWORD(v1) = 126;
        *(v0 + 46) = 126;
    }
    sub_811AE5C(v1, 72, 1);
    return sub_803C59C(218, 2);
}


// 0x8132810
int sub_8132810()
{
    return sub_803C59C(218, 2);
}


// 0x813281c
void sub_813281C()
{
    int v0; // r1
    int v1; // r2
    int v2; // r6
    int v3; // r0
    _WORD *v4; // r1
    int v5; // r0
    int v6; // r2
    int v7; // r3
    int v8; // r4
    int v9; // r5
    int v10; // r7
    void *v11; // [sp+0h] [bp-24h]
    int v12; // [sp+4h] [bp-20h]
    int v13; // [sp+8h] [bp-1Ch]
    int v14; // [sp+Ch] [bp-18h]

    v14 = 0;
    v11 = sub_8049D82();
    v12 = v0;
    v13 = v1;
    do
    {
        v2 = v14;
        v3 = *(&v11 + v14);
        v4 = *(&off_81328B8 + v14);
        *v4 = 2;
        CopyBytes(v3, (v4 + 1), 32);
        v5 = *(&off_81328B8 + v2);
        v6 = *(&off_81328A0 + v2);
        v7 = *&byte_813287C[v2];
        v8 = *&byte_8132888[v2];
        v9 = *&byte_8132894[v2];
        v10 = *(&off_81328AC + v2);
        sub_8045FBC();
        v14 += 4;
    }
    while ( v14 < 8 );
}


// 0x81328c0
int sub_81328C0()
{
    int result; // r0

    result = sub_8049D7C();
    word_2023BA0 = result;
    return result;
}


// 0x81328d0
void sub_81328D0()
{
    int v0; // r6
    int v1; // r0
    _WORD *v2; // r1
    int v3; // r0
    int v4; // r2
    int v5; // r3
    int v6; // r4
    int v7; // r5
    int v8; // r7
    void *v9; // [sp+0h] [bp-24h]
    void *v10; // [sp+4h] [bp-20h]
    void *v11; // [sp+8h] [bp-1Ch]
    int v12; // [sp+Ch] [bp-18h]

    v12 = 0;
    v9 = &unk_201FD60;
    v10 = &unk_201FD80;
    v11 = &unk_201FD80;
    do
    {
        v0 = v12;
        v1 = *(&v9 + v12);
        v2 = *(&off_8132978 + v12);
        *v2 = 2;
        CopyBytes(v1, (v2 + 1), 32);
        v3 = *(&off_8132978 + v0);
        v4 = *(&off_8132960 + v0);
        v5 = *&byte_813293C[v0];
        v6 = *&byte_8132948[v0];
        v7 = *&byte_8132954[v0];
        v8 = *(&off_813296C + v0);
        sub_8045FBC();
        v12 += 4;
    }
    while ( v12 < 8 );
}


// 0x8132980
void __noreturn sub_8132980()
{
    copyTiles();
    JUMPOUT(locret_8132992);
}


// 0x81329c8
signed int __fastcall sub_81329C8(int a1, int a2, int a3)
{
    int v3; // r4
    signed int v4; // r5
    signed int result; // r0
    int v6; // r7
    signed int v7; // r4
    unsigned __int8 v8; // vf
    int v9; // r2
    int v10; // [sp+0h] [bp-20h]
    int v11; // [sp+4h] [bp-1Ch]
    int v12; // [sp+8h] [bp-18h]

    v10 = a1;
    v11 = a2;
    result = v4;
    v12 = (a3 << 12) | v4;
    v6 = 0;
    v7 = ((12 * v3) >> 4) + 1;
    while ( 1 )
    {
        v8 = __OFSUB__(v7--, 1);
        if ( (v7 < 0) ^ v8 )
            break;
        v9 = v10;
        v10 += 16;
        result = sub_802FE28((v9 << 16) | v11 | 0x40001000, v12 + 4 * v6++, 2, 7);
    }
    return result;
}


// 0x8132a14
void __fastcall __noreturn sub_8132A14(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r4
    int v6; // r5
    char v7; // r6

    v5 = ((a1 << 16) | a2) + 4096;
    v6 = v4 | (a3 << 12);
    v7 = sub_8000C00(a4);
    sub_802FE28(v5 + 1835008, v6 + (v7 & 0xF), 2, 7);
    JUMPOUT(loc_8132A42);
}


// 0x8132a50
int __fastcall __noreturn sub_8132A50(int a1, int a2, __int16 a3, int a4)
{
    signed int v4; // r6
    int result; // r0
    unsigned __int8 v6; // vf
    int v7; // [sp+0h] [bp-24h]
    int v8; // [sp+4h] [bp-20h]
    __int16 v9; // [sp+8h] [bp-1Ch]
    int v10; // [sp+Ch] [bp-18h]

    v7 = a1;
    v8 = a2;
    v9 = a3;
    v10 = a4;
    v4 = 2;
    do
    {
        sub_802FE28(((v7 << 16) | v8) - 2147463168, v10 | (v9 << 12) | 0x400, 2, 7);
        result = v7 + 32;
        v7 += 32;
        v10 += 8;
        v6 = __OFSUB__(v4--, 1);
    }
    while ( !(((v4 < 0) ^ v6) | (v4 == 0)) );
    return result;
}


// 0x8132b88
int sub_8132B88()
{
    int v0; // r5

    return (*(&off_8132B9C + *(v0 + 1)))();
}


// 0x8132ba8
void __fastcall __noreturn sub_8132BA8(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    _WORD *v14; // r0
    int v15; // r0

    zeroFillVRAM(a1, a2, a3, a4);
    sub_80017E0(v6, v7, v8, v9);
    sub_800183C(v10, v11, v12, v13);
    sub_80015FC(16);
    v14 = *(v5 + oToolkit_RenderInfoPtr);
    *v14 = 8000;
    v14[8] = 0;
    v14[9] = 0;
    v14[10] = 0;
    v14[11] = 0;
    v14[12] = 0;
    v14[13] = 0;
    *(v4 + 1) = 4;
    *(v4 + 2) = 0;
    engine_setScreeneffect(8, 16);
    sub_8046664();
    *(v4 + 12) = sub_81207F8(0);
    *(v4 + 14) = sub_81207F8(1);
    *(v4 + 16) = sub_81207F8(2);
    v15 = sub_8021CA8();
    *(v4 + 20) = v15;
    sub_8132CB8();
}


// 0x8132c34
int sub_8132C34()
{
    int v0; // r5

    return (*(&off_8132C48 + *(v0 + 2)))();
}


// 0x8132c50
void __noreturn sub_8132C50()
{
    int v0; // r5
    char v1; // zf

    engine_isScreeneffectAnimating();
    if ( !v1 )
    {
        chatbox_8045F2C(64);
        *(v0 + 2) = 4;
    }
    sub_8132F4C();
}


// 0x8132c68
void __noreturn sub_8132C68()
{
    int v0; // r5
    char v1; // zf

    chatbox_8045F3C(8);
    if ( !v1 || (chatbox_8045F3C(32), !v1) && (chatbox_8045F3C(&byte_110), !v1) )
    {
        *(v0 + 1) = 8;
        engine_setScreeneffect(12, 12);
        chatbox_8045F1C(64);
    }
    sub_8132F4C();
}


// 0x8132ca0
void __noreturn sub_8132CA0()
{
    char v0; // zf

    engine_isScreeneffectAnimating();
    if ( !v0 )
    {
        chatbox_8045F1C(64);
        sub_811F708();
    }
    sub_8132F4C();
}


// 0x8132cb8
void __noreturn sub_8132CB8()
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
        v2 = *(&off_8132D58 + v1);
        v3 = v1 + 4;
        v4 = *(&off_8132D58 + v3);
        v1 = v3 + 4;
        *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
        v0 += 4;
        v5 = 0;
        do
        {
            *(&unk_20096E0 + v0) = *(&off_8132D58 + v1);
            v0 += 4;
            v1 += 4;
            ++v5;
        }
        while ( v5 < 2 );
    }
    while ( v1 < 32 );
    *(&unk_20096E0 + v0) = 0;
    decompAndCopyData(&unk_20096E0);
    decompAndCopyData(&off_8132D80);
    sub_8123300(&off_8132D18, byte_201BF00, decomp_2013A00);
    copyTiles();
    JUMPOUT(locret_8132D10);
}


// 0x8132d9c
void __noreturn sub_8132D9C()
{
    render_graphicalText_8045F8C(byte_201BF00, 0, byte_2017A00, 100679680);
    JUMPOUT(loc_8132DB2);
}


// 0x8132ef4
void __noreturn sub_8132EF4()
{
    copyTiles();
    JUMPOUT(loc_8132F08);
}


// 0x8132f4c
void __noreturn sub_8132F4C()
{
    sub_8132F78();
    render_graphicalText_8045F8C(byte_201BF00, 4, &unk_2018A00, 100681728);
    JUMPOUT(locret_8132F66);
}


// 0x8132f78
unsigned int sub_8132F78()
{
    int v0; // r10
    int v1; // r5
    unsigned int v2; // r0
    int v3; // r1
    int v4; // r1
    unsigned int result; // r0

    v1 = *(v0 + oToolkit_Unk200a220_Ptr);
    v2 = sub_8000D84(*(*(v0 + oToolkit_Unk2001c04_Ptr) + 24)) >> 16;
    v3 = v2 & 0xF;
    v2 >>= 4;
    *(v1 + 12) = 10 * (v2 & 0xF) + v3;
    v2 >>= 4;
    v4 = v2 & 0xF;
    result = v2 >> 4;
    *(v1 + 8) = 10 * (result & 0xF) + v4;
    return result;
}


// 0x8132fb8
int __fastcall sub_8132FB8(int a1, int a2)
{
    int v2; // r10
    int result; // r0

    result = *(a2 + a1);
    *(*(v2 + oToolkit_Unk200a220_Ptr) + 8) = result;
    return result;
}


// 0x8132fc4
int __fastcall sub_8132FC4(int a1, int a2)
{
    int v2; // r10
    int result; // r0

    result = *(a2 + a1);
    *(*(v2 + oToolkit_Unk200a220_Ptr) + 8) = result;
    return result;
}


// 0x8132fd0
void __noreturn sub_8132FD0()
{
    int v0; // r5
    signed int v1; // r7
    int v2; // r3
    signed int v3; // r6
    int v4; // r4
    signed int v9; // r6
    signed int v10; // r4
    int v11; // r6
    int v12; // r0
    int v13; // r1
    int v14; // r0
    int v15; // r2
    int v16; // r2
    int v17; // r0
    int v18; // r1
    int v19; // r0
    int v20; // r2
    int v21; // r2
    int v22; // r0
    int v23; // r1
    int v24; // r0
    int v25; // [sp+0h] [bp-24h]
    int v26; // [sp+4h] [bp-20h]
    int v27; // [sp+8h] [bp-1Ch]

    v1 = 12;
    v2 = 0;
    v3 = 5;
    do
    {
        v4 = 0;
        do
        {
            ++v4;
            __asm { SVC         6 }
        }
        while ( *(v0 + v1) );
        *(&v25 + v2) = v4;
        v3 += v4;
        v2 += 4;
        v1 += 2;
    }
    while ( v1 <= 16 );
    v9 = v3;
    decomp_2013A00[0] = word_201C4E0;
    v10 = 1;
    decomp_2013A00[v9] = word_201C4E2;
    v11 = v9 * 2 + 2;
    v12 = 3191376;
    v13 = v25;
    do
    {
        decomp_2013A00[v10] = v12;
        ++v10;
        v14 = v12 + 1;
        *(decomp_2013A00 + v11) = v14;
        v11 += 2;
        v12 = v14 + 1;
        _VF = __OFSUB__(v13--, 1);
    }
    while ( !(((v13 < 0) ^ _VF) | (v13 == 0)) );
    v15 = 0;
    do
    {
        decomp_2013A00[v10] = *(&unk_201C4F0 + v15);
        ++v10;
        v16 = v15 + 4;
        *(decomp_2013A00 + v11) = *(&unk_201C4F0 + v16);
        v11 += 2;
        v15 = v16 - 2;
    }
    while ( v15 < 4 );
    v17 = 3191392;
    v18 = v26;
    do
    {
        decomp_2013A00[v10] = v17;
        ++v10;
        v19 = v17 + 1;
        *(decomp_2013A00 + v11) = v19;
        v11 += 2;
        v17 = v19 + 1;
        _VF = __OFSUB__(v18--, 1);
    }
    while ( !(((v18 < 0) ^ _VF) | (v18 == 0)) );
    v20 = 0;
    do
    {
        decomp_2013A00[v10] = *(&unk_201C500 + v20);
        ++v10;
        v21 = v20 + 4;
        *(decomp_2013A00 + v11) = *(&unk_201C500 + v21);
        v11 += 2;
        v20 = v21 - 2;
    }
    while ( v20 < 4 );
    v22 = 3191408;
    v23 = v27;
    do
    {
        decomp_2013A00[v10] = v22;
        ++v10;
        v24 = v22 + 1;
        *(decomp_2013A00 + v11) = v24;
        v11 += 2;
        v22 = v24 + 1;
        _VF = __OFSUB__(v23--, 1);
    }
    while ( !(((v23 < 0) ^ _VF) | (v23 == 0)) );
    copyTiles();
    JUMPOUT(loc_813308C);
}


// 0x81330ac
int sub_81330AC()
{
    signed int v0; // r6
    int result; // r0

    v0 = 0;
    do
    {
        result = sub_8120C94(*off_81330CC[v0], *(off_81330CC[v0] + 8), *(off_81330CC[v0] + 9), off_81330CC[v0][1]);
        ++v0;
    }
    while ( v0 < 7 );
    return result;
}


// 0x8133200
int sub_8133200()
{
    int v0; // r5

    return (*(&off_8133214 + *(v0 + 1)))();
}


// 0x8133228
void __fastcall __noreturn sub_8133228(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    _WORD *v6; // r0
    char v7; // r0
    char v8; // r1
    char v9; // r0
    char v10; // zf

    sub_800183C(a1, a2, a3, a4);
    sub_80015FC(16);
    v6 = *(v5 + oToolkit_RenderInfoPtr);
    *v6 = 8000;
    v6[8] = 0;
    v6[9] = 0;
    v6[10] = 0;
    v6[11] = 0;
    v6[12] = 0;
    v6[13] = 0;
    engine_setScreeneffect(8, 16);
    sub_8046664();
    *(v4 + 24) = 0;
    *(v4 + 26) = 0;
    *(v4 + 14) = 0;
    *(v4 + 15) = 0;
    *(v4 + 36) = 0;
    *(v4 + 32) = 0;
    *(v4 + 38) = 0;
    *(v4 + 34) = 0;
    *(v4 + 46) = 0;
    *(v4 + 42) = 0;
    *(v4 + 48) = 0;
    *(v4 + 44) = 0;
    *(v4 + 56) = 0;
    *(v4 + 52) = 0;
    *(v4 + 58) = 0;
    *(v4 + 54) = 0;
    *(v4 + 16) = 0;
    *(v4 + 17) = 0;
    *(v4 + 76) = 0;
    *(v4 + 68) = 0;
    *(v4 + 72) = 0;
    v7 = sub_8120CC8(0, &dword_81331FC);
    v9 = v7 | 16 * v8;
    *(v4 + 18) = v9;
    *(v4 + 19) = v9;
    *(v4 + 21) = v9;
    *(v4 + 22) = v9;
    *(v4 + 30) = 30;
    *(v4 + 23) = 30;
    *(v4 + 28) = -1;
    *(v4 + 92) = 0xFFFF;
    *(v4 + 96) = 0xFFFF;
    *(v4 + 100) = 0;
    sub_81355D8();
    if ( v10 )
    {
        sub_811FCB8(*(v4 + 12), word_202A020, 0, byte_20343E0);
        if ( !v10 )
            goto LABEL_5;
    }
    else
    {
        CopyBytes(dword_20251A0, byte_20376AC, 60);
        sub_811FCA4();
        if ( !v10 )
LABEL_5:
            sub_8133EC0();
    }
    sub_8133EC0();
}


// 0x81333a0
void __noreturn sub_81333A0()
{
    int v0; // r5
    int v1; // r0

    (*(&off_81333EC + *(v0 + 2)))();
    v1 = sub_81340FC();
    sub_8134490(v1);
}


// 0x8133400
void __noreturn sub_8133400()
{
    int v0; // r5
    int v1; // r0
    char v2; // zf

    v1 = engine_isScreeneffectAnimating();
    if ( !v2 )
    {
        *(v0 + 2) = 4;
        v1 = 0;
        *(v0 + 3) = 0;
    }
    sub_8134594(v1);
    sub_8134538();
    sub_81341A0();
}


// 0x8133434
int __fastcall sub_8133434(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf
    int result; // r0
    int v4; // r1
    int v5; // r2

    sub_8134594(a1);
    sub_8134538();
    sub_81345B0();
    sub_8134548();
    chatbox_8045F3C(128);
    if ( v2 )
    {
        v1[2] = 4;
        result = v1[13];
        v1[3] = result;
    }
    else
    {
        result = chatbox_8045F3C(32);
        if ( !v2 )
        {
            if ( chatbox_8045F4C() )
            {
                sound_play(129, v4, v5);
                v1[2] = 4;
                result = v1[13];
                v1[3] = result;
            }
            else
            {
                sub_811FB64(8, v4, v5);
                result = 4;
                v1[2] = 4;
            }
        }
    }
    return result;
}


// 0x8133484
void __noreturn sub_8133484()
{
    int v0; // r5

    (*(&off_81334B8 + *(v0 + 3)))();
    sub_81341A0();
}


// 0x81334c8
void __fastcall sub_81334C8(int a1)
{
    int v1; // r5
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r1
    int v7; // r2

    sub_81355D8();
    if ( v2 )
        goto LABEL_14;
    v3 = sub_813561C();
    if ( v3 == 36 )
        return;
    if ( v3 != 48 )
    {
LABEL_14:
        chatbox_8045F3C(32);
        if ( v2 )
        {
            sub_811F7EC();
            if ( !v2 )
            {
                *(v1 + 2) = 16;
                sound_play(131, v6, v7);
                sub_8134190(11);
            }
        }
        else
        {
            sound_play(129, v4, v5);
            if ( chatbox_8045F4C() )
            {
                sub_8134FE0();
                *(v1 + 104) = 12;
                sub_8134190(16);
                *(v1 + 3) = 8;
            }
            else
            {
                sub_8134190(17);
                *(v1 + 3) = 4;
                *(v1 + 104) = 0;
            }
        }
    }
    else
    {
        *(v1 + 3) = 12;
    }
}


// 0x8133540
int sub_8133540()
{
    int v0; // r5

    return (*(&off_8133554 + *(v0 + 104)))();
}


// 0x8133564
void sub_8133564()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    int v3; // r1
    int v4; // r2
    int v5; // r4

    chatbox_8045F3C(128);
    if ( v2 && !sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 7u, 0, 0) )
    {
        sub_811F7EC();
        if ( v2 )
        {
            sub_811F7EC();
            if ( !v2 )
            {
                sound_play(131, v3, v4);
                v5 = 10;
                sub_81355D8();
                if ( !v2 )
                    v5 = 27;
                sub_8134190(v5);
                *(v0 + 3) = 0;
                *(v0 + 104) = 0;
            }
        }
        else
        {
            *(v0 + 104) = 4;
        }
    }
}


// 0x81335b8
int sub_81335B8()
{
    return sub_8133C9C();
}


// 0x81335c0
int sub_81335C0()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        sub_8134190(20);
        result = 0;
        *(v0 + 104) = 0;
    }
    return result;
}


// 0x81335d8
int sub_81335D8()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        v0[2] = 4;
        result = v0[13];
        v0[3] = result;
    }
    return result;
}


// 0x81335ec
int sub_81335EC()
{
    int v0; // r5

    return (*(&off_8133600 + *(v0 + 104)))();
}


// 0x8133618
void sub_8133618()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2

    v1 = sub_8133D64();
    if ( v1 )
    {
        if ( v1 == 16 )
        {
            *(v0 + 104) = 8;
        }
        else
        {
            sub_813367C(v1);
            *(v0 + 104) = 16;
        }
    }
    else
    {
        sound_play(129, v2, v3);
        *(v0 + 104) = 12;
        sub_8134190(12);
    }
}


// 0x8133648
void sub_8133648()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2

    v1 = sub_8133D64();
    if ( v1 )
    {
        if ( v1 == 16 )
        {
            *(v0 + 104) = 12;
        }
        else
        {
            sub_813367C(v1);
            *(v0 + 104) = 8;
        }
    }
    else
    {
        sub_8135404();
        sound_play(130, v2, v3);
        *(v0 + 104) = 20;
        sub_8134190(26);
    }
}


// 0x813367c
int __fastcall sub_813367C(int a1)
{
    int v1; // r1
    int v2; // r2

    sub_8134190(*&byte_8133694[a1 - 4]);
    return sound_play(105, v1, v2);
}


// 0x81336a0
int sub_81336A0()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        if ( *(v0 + 92) != 0xFFFF )
            sub_8134190(12);
        result = 12;
        *(v0 + 104) = 12;
    }
    return result;
}


// 0x81336c4
void sub_81336C4()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    signed int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r4

    chatbox_8045F3C(128);
    if ( v2 && !sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 7u, 0, 0) )
    {
        sub_811F7EC();
        if ( v2 )
        {
            sub_811F7EC();
            if ( !v2 )
            {
                sound_play(131, v4, v5);
                if ( *(v0 + 92) == 0xFFFF )
                {
                    v6 = 10;
                    sub_81355D8();
                    if ( !v2 )
                        v6 = 27;
                    sub_8134190(v6);
                    *(v0 + 3) = 0;
                    *(v0 + 104) = 0;
                }
                else
                {
                    sub_8134190(13);
                    sub_8134FE0();
                    *(v0 + 104) = 8;
                }
            }
        }
        else
        {
            v3 = 0;
            if ( *(v0 + 92) != 0xFFFF )
                v3 = 4;
            *(v0 + 104) = v3;
        }
    }
}


// 0x8133740
void sub_8133740()
{
    int v0; // r5
    char v1; // zf

    chatbox_8045F3C(128);
    if ( v1 )
    {
        sub_8134FE0();
        *(v0 + 104) = 12;
        sub_8134190(18);
    }
}


// 0x813375c
int sub_813375C()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        v0[2] = 4;
        result = v0[13];
        v0[3] = result;
    }
    return result;
}


// 0x8133770
int __fastcall sub_8133770(int a1)
{
    int v1; // r5
    int result; // r0

    result = sub_813561C();
    if ( result != 48 )
    {
        sub_8134190(27);
        result = 0;
        *(v1 + 3) = 0;
    }
    return result;
}


// 0x8133788
int sub_8133788()
{
    _BYTE *v0; // r5
    int v1; // r0
    char v2; // zf

    v1 = chatbox_8045F3C(128);
    if ( v2 )
    {
        sub_81355D8();
        if ( v2 )
        {
            v0[2] = 4;
            v1 = v0[13];
            v0[3] = v1;
        }
        else
        {
            v0[1] = 16;
            v0[2] = 0;
            sub_8134190(23);
        }
    }
    sub_8134594(v1);
    sub_8134538();
    sub_81345B0();
    return sub_8134548();
}


// 0x81337c4
int sub_81337C4()
{
    int v0; // r5

    return (*(&off_81337D8 + *(v0 + 3)))();
}


// 0x81337e8
void __fastcall __noreturn sub_81337E8(int a1)
{
    int v1; // r5
    int v2; // r10
    char v3; // zf
    int v4; // r1
    int v5; // r2
    int v6; // r1

    sub_81355D8();
    if ( v3 )
    {
        sub_8133BB4();
        if ( !v3 )
            goto LABEL_20;
        sub_8133C0C();
        if ( !v3 )
            goto LABEL_20;
        sub_8134A3C();
        if ( !v3 )
            goto LABEL_20;
    }
    else
    {
        if ( sSubmenu.unk_02 == 36 || sSubmenu.unk_1B & 0x40 )
            goto LABEL_20;
        sub_811F7EC();
        if ( !v3 )
        {
            *(v1 + 1) = 16;
            *(v1 + 2) = 0;
            sub_8134190(23);
            sound_play(123, v4, v5);
            goto LABEL_20;
        }
    }
    sub_8133C58();
    if ( v3 )
    {
        if ( !sub_811F7F8(*(*(v2 + oToolkit_JoypadPtr) + 4), 7u, 0, 0) )
        {
            sub_81355D8();
            if ( v3 )
            {
                sub_8133E3C(3, v6);
                if ( v3 )
                {
                    sub_8133E7C();
                    sub_8117D10(1, 3);
                }
            }
        }
    }
LABEL_20:
    sub_81341A0();
}


// 0x813388c
void __fastcall __noreturn sub_813388C(int a1)
{
    int v1; // r5
    int v2; // r10
    char v3; // zf
    int v4; // r1

    sub_8133BB4();
    if ( v3 )
    {
        sub_8133C0C();
        if ( v3 )
        {
            sub_8134A3C();
            if ( v3 )
            {
                if ( !*(v1 + 40) || !sub_811F7F8(*(*(v2 + oToolkit_JoypadPtr) + 4), 7u, 0, 10) )
                {
                    sub_8133E3C(3, v4);
                    if ( v3 )
                        sub_8133E7C();
                }
            }
        }
    }
    sub_8134310();
}


// 0x81338d4
void __noreturn sub_81338D4()
{
    int v0; // r5
    int v1; // r0
    signed __int16 v2; // r0
    char v3; // r1
    int v4; // r0
    unsigned __int8 v5; // vf

    *(v0 + 26) = *(v0 + 24);
    if ( *(v0 + 13) == 4 )
    {
        v4 = *(v0 + 24);
        v5 = __OFSUB__(v4, 2);
        v4 -= 2;
        *(v0 + 24) = v4;
        if ( !((v4 < 0) ^ v5) )
LABEL_8:
            sub_8133E88();
        sub_8117D10(0, 3);
        v2 = 0;
        v3 = 0;
    }
    else
    {
        v1 = *(v0 + 24) + 2;
        *(v0 + 24) = v1;
        if ( v1 <= 30 )
            goto LABEL_8;
        v2 = 30;
        v3 = 4;
    }
    *(v0 + 24) = v2;
    *(v0 + 3) = v3;
    goto LABEL_8;
}


// 0x8133944
void __fastcall __noreturn sub_8133944(int a1)
{
    int v1; // r5
    int v2; // r10
    int v3; // r0
    char v4; // zf

    sub_8133C0C();
    if ( !v4 )
    {
        sub_8134594(v3);
        sub_81345B0();
        sub_8134538();
        sub_8134548();
        sub_81341A0();
    }
    sub_81347A4();
    if ( v4 )
        *(v1 + 52) = sub_811FA22(*(*(v2 + oToolkit_JoypadPtr) + 4), 7, 1, *(v1 + 52));
    sub_813471C();
}


// 0x813399c
void __noreturn sub_813399C()
{
    int v0; // r5
    int v1; // r0

    v1 = (*(&off_81339B4 + *(v0 + 2)))();
    sub_8134490(v1);
}


// 0x81339bc
int __fastcall sub_81339BC(int a1)
{
    int v1; // r5
    int v2; // r0
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    signed int v8; // r4
    signed int v9; // r6

    sub_81340FC();
    sub_80465BC();
    sub_80465F8();
    v2 = engine_isScreeneffectAnimating();
    if ( !v3 )
    {
        v4 = sub_8046664();
        sub_8021C68(v4, v5, v6, v7);
        sub_8137700();
        sub_81206C4(&unk_202A3E0);
        sub_8120740(*(v1 + 12));
        sub_81206F8(word_202A020, *(v1 + 12));
        if ( !*(v1 + 2) )
        {
            navicust_801379E(*(v1 + 20), *(v1 + 12) + 46, *(v1 + 28));
            v8 = 92;
            v9 = 86;
            do
            {
                navicust_801379E(*(v1 + 20), 2 * *(v1 + 12) + v9++, *(v1 + v8));
                v8 += 4;
            }
            while ( v8 <= 96 );
        }
        *v1 = 0;
        *(v1 + 1) = 12;
        v2 = 0;
        *(v1 + 2) = 0;
    }
    sub_8134594(v2);
    sub_8134538();
    sub_81345B0();
    return sub_8134548();
}


// 0x8133a44
void __noreturn sub_8133A44()
{
    int v0; // r5
    int v1; // r0

    v1 = (*(&off_8133A5C + *(v0 + 2)))();
    sub_8134490(v1);
}


// 0x8133a68
int __fastcall sub_8133A68(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf
    int v3; // r0
    int v4; // r0

    if ( sub_813561C() == 48 )
    {
        v1[13] = v1[2];
        v1[2] = 8;
    }
    else
    {
        chatbox_8045F3C(&dword_120);
        if ( !v2 )
        {
            chatbox_8045F3C(byte_100);
            if ( v2 )
            {
                v3 = chatbox_8045F4C();
                if ( v3 )
                {
                    if ( v3 == 2 )
                    {
                        sub_8134190(27);
                        v1[1] = 4;
                        v1[2] = 12;
                        v1[3] = 0;
                    }
                    else
                    {
                        sub_8131754();
                    }
                }
                else
                {
                    sub_81207C4(word_202A020, &unk_2039AA0);
                    sub_8131588();
                    sub_8134190(24);
                    sub_813175C(4u);
                    v1[2] = 4;
                }
            }
            else
            {
                sub_8134190(11);
                v1[1] = 4;
                v1[2] = 4;
                v1[3] = 0;
            }
        }
    }
    sub_81340FC();
    sub_80465BC();
    sub_80465F8();
    sub_81345D4();
    v4 = sub_81345E8();
    sub_8134594(v4);
    sub_8134538();
    sub_81345B0();
    return sub_8134548();
}


// 0x8133b18
int __fastcall sub_8133B18(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf
    int v3; // r0

    if ( sub_813561C() == 48 )
    {
        v1[13] = v1[2];
        v1[2] = 8;
    }
    else
    {
        sub_811F7EC();
        if ( !v2 )
        {
            sub_8134190(11);
            v1[1] = 4;
            v1[2] = 4;
            v1[3] = 0;
            sub_813175C(0);
        }
    }
    sub_81340FC();
    sub_80465BC();
    sub_80465F8();
    sub_81345D4();
    v3 = sub_81345E8();
    sub_8134594(v3);
    sub_8134538();
    sub_81345B0();
    return sub_8134548();
}


// 0x8133b74
int __fastcall sub_8133B74(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r0

    if ( sub_813561C() == 24 )
    {
        v2 = 23;
        v3 = *(v1 + 13);
        *(v1 + 2) = v3;
        if ( v3 == 4 )
            v2 = 24;
        sub_8134190(v2);
    }
    sub_81340FC();
    sub_80465BC();
    sub_80465F8();
    sub_81345D4();
    v4 = sub_81345E8();
    sub_8134594(v4);
    sub_8134538();
    sub_81345B0();
    return sub_8134548();
}


// 0x8133bb4
void sub_8133BB4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    int v3; // r2
    char v4; // zf
    int v5; // r1
    int v6; // r2

    sub_811F7EC();
    if ( !v4 )
    {
        if ( *(v0 + 68) )
        {
            *(v0 + 68) = 0;
            sound_play(131, v2, v3);
        }
        else if ( *(v0 + 23) == 30 )
        {
            sub_811FB64(8, 30, v3);
            *(v0 + 2) = 0;
        }
        else
        {
            *(v0 + 13) = *(v0 + 3);
            *(v0 + 2) = 8;
            *(*(v1 + oToolkit_ChatboxPtr) + 76) = *(v0 + 30);
            sub_8134190(2);
            sound_play(105, v5, v6);
        }
    }
}


// 0x8133c0c
void sub_8133C0C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf
    int v4; // r0

    sub_811F7EC();
    if ( !v3 || *(v0 + 3) == 12 && (sub_811F7EC(), !v3) )
    {
        if ( !*(v0 + 68) )
        {
            v4 = *(v0 + 3);
            if ( v4 == 12 )
            {
                *(v0 + 3) = *(v0 + 13);
                sound_play(131, v1, v2);
            }
            else
            {
                *(v0 + 13) = v4;
                *(v0 + 3) = 12;
                *(v0 + 52) = 0;
                sound_play(129, v1, v2);
            }
        }
    }
}


// 0x8133c58
void sub_8133C58()
{
    _BYTE *v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf
    int v4; // r6

    sub_811F7EC();
    if ( !v3 && !v0[68] )
    {
        sound_play(129, v1, v2);
        v0[3] = 0;
        v4 = 10;
        sub_81355D8();
        if ( !v3 )
            v4 = 27;
        sub_8134190(v4);
        v0[2] = 12;
        v0[13] = v0[3];
    }
}


// 0x8133c9c
signed int sub_8133C9C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf
    int v4; // r1
    signed int v5; // r3
    signed int result; // r0
    char v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r1
    int v11; // r2

    sub_80466C4(4);
    if ( !v3 && *(v0 + 32) + *(v0 + 36) == *(v0 + 28) )
    {
        *(v1 + 8) = 8;
        v4 = *(v0 + 76) & 0xFFFFFFFE;
        *(v0 + 76) = v4;
        *(v0 + 28) = -1;
        sound_play(131, v4, v2);
        sub_8134190(33);
LABEL_17:
        result = 12;
        *(v0 + 104) = 12;
        return result;
    }
    v5 = 92;
    do
    {
        if ( *(v0 + v5) != 0xFFFF && *(v0 + v5) == *(v0 + 36) + *(v0 + 32) )
        {
            sub_8134190(14);
            result = 8;
            *(v0 + 104) = 8;
            return result;
        }
        v5 += 4;
    }
    while ( v5 <= 96 );
    v7 = sub_81349E8();
    if ( !(v7 & 1) )
    {
        if ( !(*(v0 + 76) & 1) )
            sub_80465A0(byte_8133154);
        *(v0 + 28) = *(v0 + 32) + *(v0 + 36);
        sub_81353DC();
        v10 = *(v0 + 76) | 1;
        *(v0 + 76) = v10;
        sound_play(130, v10, v11);
        sub_8134190(25);
        goto LABEL_17;
    }
    sound_play(105, 1, v8);
    if ( v9 )
    {
        sub_8134190(1);
        result = 8;
        *(v0 + 104) = 8;
    }
    else
    {
        *(v0 + 3) = 4;
        result = 0;
        *(v0 + 104) = 0;
    }
    return result;
}


// 0x8133d64
signed int sub_8133D64()
{
    int v0; // r5
    int v1; // r4
    char v2; // zf
    int v3; // r4
    char v4; // r0
    int v5; // r1
    int v6; // r3
    int v7; // r2
    signed int v8; // r7
    int v10; // r6
    int v11; // r1
    int v12; // r2

    v1 = 5;
    do
    {
        sub_80466C4(v1);
        if ( v2 )
            break;
        ++v1;
    }
    while ( v1 <= 6 );
    v3 = v1 - 5;
    v4 = sub_81349E8();
    v6 = v5;
    v7 = 2;
    if ( v4 & 2 )
    {
        if ( v5 )
            v8 = 4;
        else
            v8 = 16;
LABEL_8:
        sound_play(105, v5, v7);
        return v8;
    }
    v8 = 12;
    v7 = *(v0 + 36);
    v5 = *(v0 + 32) + v7;
    if ( *(v0 + 28) == v5 )
        goto LABEL_8;
    v8 = 8;
    v5 = *(v0 + 36);
    if ( *(v0 + 32) + v5 == *&(&off_8133E28)[v3 ^ 1][v0] )
        goto LABEL_8;
    *(v0 + 100) += v6;
    v10 = *&byte_8133E1C[4 * v3];
    if ( !(*(v0 + 76) & v10) )
        sub_80465A0(off_8133E0C[v3]);
    *&(&off_8133E28)[v3][v0] = *(v0 + 32) + *(v0 + 36);
    sub_81353F0(*&byte_8133E34[4 * v3], v3);
    v11 = *(v0 + 76) | v10;
    *(v0 + 76) = v11;
    sound_play(129, v11, v12);
    return 0;
}


// 0x8133e3c
signed int __fastcall sub_8133E3C(int a1, int a2)
{
    int v2; // r5
    int v3; // r10
    signed int v4; // r7
    __int16 v5; // r4
    unsigned int v6; // r6
    int v7; // r2

    v4 = 2;
    v5 = *(*(v3 + oToolkit_JoypadPtr) + 4);
    v6 = *(v2 + a1) >> 2;
    v7 = 32;
    if ( v5 & 0x20 )
    {
        v4 = 0;
        if ( !v6 )
            v4 = 1;
    }
    else
    {
        v7 = 16;
        if ( v5 & 0x10 )
        {
            v4 = 0;
            if ( v6 )
                v4 = 1;
        }
    }
    if ( !v4 )
        sound_play(122, a2, v7);
    return v4;
}


// 0x8133e7c
signed int sub_8133E7C()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 13) = *(v0 + 3);
    result = 8;
    *(v0 + 3) = 8;
    return result;
}


// 0x8133e88
void __noreturn sub_8133E88()
{
    copyTiles();
    JUMPOUT(loc_8133E9C);
}


// 0x8133ec0
void __noreturn sub_8133EC0()
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
        v2 = *(&off_8133F70 + v1);
        v3 = v1 + 4;
        v4 = *(&off_8133F70 + v3);
        v1 = v3 + 4;
        *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
        v0 += 4;
        v5 = 0;
        do
        {
            *(&unk_20096E0 + v0) = *(&off_8133F70 + v1);
            v0 += 4;
            v1 += 4;
            ++v5;
        }
        while ( v5 < 2 );
    }
    while ( v1 < 64 );
    *(&unk_20096E0 + v0) = 0;
    decompAndCopyData(&unk_20096E0);
    decompAndCopyData(&off_8133FB8);
    sub_8123300(&off_8133F30, &unk_2028A20, decomp_2013A00);
    copyTiles();
    JUMPOUT(loc_8133F18);
}


// 0x81340ac
int sub_81340AC()
{
    int v0; // r7
    int v1; // r6
    int result; // r0
    int v3; // r1
    char v4; // zf
    int v5; // r5

    sub_80465A0(byte_813313C);
    v1 = 0;
    do
    {
        result = sub_80466C4(v1);
        if ( !v4 )
        {
            if ( !v1 )
                v0 = v3;
            v5 = v3;
            result = sub_800307C(48, 88);
            *(v5 + 20) = v0;
        }
        ++v1;
    }
    while ( v1 <= 2 );
    return result;
}


// 0x81340dc
int sub_81340DC()
{
    int result; // r0
    char v1; // zf

    sub_80465A0(byte_813314C);
    result = sub_80466C4(3);
    if ( !v1 )
        result = sub_800307C(192, 3);
    return result;
}


// 0x81340fc
int sub_81340FC()
{
    int v0; // r5
    __int16 *v1; // r0
    int v2; // r4

    v1 = word_202A020;
    v2 = *(v0 + 32) + *(v0 + 36);
    if ( *(v0 + 14) )
    {
        v1 = &unk_202A3E0;
        v2 = *(v0 + 42) + *(v0 + 46);
    }
    return sub_811980C(*&v1[16 * v2 + 14] << 16 >> 23, *&v1[16 * v2 + 14] & 0x7F, 0, v2);
}


// 0x8134138
int sub_8134138()
{
    int v0; // r7
    char v1; // r4
    int v2; // r0
    int v3; // r1
    unsigned __int8 v4; // vf
    int result; // r0
    int v6; // r0
    int v7; // r1

    sub_8119854(*(&dword_813418C + *(v0 + 14)) - 8 * *(v0 + 24), 88, 0);
    *(v0 + 15) = *(v0 + 14);
    if ( *(v0 + 14) )
    {
        v1 = 1;
        v6 = *(v0 + 24);
        v7 = *(v0 + 26);
        v4 = __OFSUB__(v6, v7);
        result = v6 - v7;
        if ( (result < 0) ^ v4 )
        {
            result = *(v0 + 24);
            if ( result <= 19 )
                v1 = 0;
        }
    }
    else
    {
        v1 = 0;
        v2 = *(v0 + 24);
        v3 = *(v0 + 26);
        v4 = __OFSUB__(v2, v3);
        result = v2 - v3;
        if ( !(((result < 0) ^ v4) | (result == 0)) )
        {
            result = *(v0 + 24);
            if ( result >= 11 )
                v1 = 1;
        }
    }
    *(v0 + 14) = v1;
    return result;
}


// 0x8134190
void __fastcall sub_8134190(int a1)
{
    chatbox_runScript_803FD9C(&unk_2028A20, a1);
}


// 0x81341a0
void __noreturn sub_81341A0()
{
    int v0; // r5
    int v1; // r1

    sub_81200EC(*(v0 + 36), word_202A020, &unk_2034458);
    v1 = *(v0 + 24);
    copyTiles();
    JUMPOUT(loc_81341CA);
}


// 0x8134310
void __noreturn sub_8134310()
{
    int v0; // r5
    int v1; // r1

    sub_81200EC(*(v0 + 46), &unk_202A3E0, &eTileRefs20345FC);
    v1 = *(v0 + 24);
    copyTiles();
    JUMPOUT(loc_813433A);
}


// 0x8134490
void __fastcall __noreturn sub_8134490(int a1)
{
    int v1; // r5
    char v2; // zf
    int v3; // r1

    sub_81355D8();
    if ( v2 )
        sub_8120348(*(v1 + 12), &unk_20347D8, 11, 1);
    else
        sub_81202FC(7, &unk_20347D8, 11, 1);
    v3 = *(v1 + 24);
    copyTiles();
    JUMPOUT(loc_81344D0);
}


// 0x8134538
int sub_8134538()
{
    return sub_8134558(226, 28, 30, 36);
}


// 0x8134548
int sub_8134548()
{
    return sub_8134558(386, 28, 40, 46);
}


// 0x8134558
signed int __fastcall sub_8134558(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    return sub_811FA98(((a1 - 8 * *(v4 + 24)) << 16) | a2, 0x20002u, *(v4 + a3), *(v4 + a4));
}


// 0x8134594
int __fastcall sub_8134594(int a1)
{
    int result; // r0
    char v2; // zf

    result = sub_81355D8();
    if ( v2 )
        result = sub_813468C(231, 22, 0, 16);
    return result;
}


// 0x81345b0
int sub_81345B0()
{
    return sub_813468C(243, 22, 0, 17);
}


// 0x81345d4
int sub_81345D4()
{
    return sub_813468C(90, 32, 32, 18);
}


// 0x81345e8
int sub_81345E8()
{
    return sub_813468C(240, 32, 42, 19);
}


// 0x81345fc
int sub_81345FC()
{
    return sub_813468C(90, 32, 32, 19);
}


// 0x8134610
int sub_8134610()
{
    int v0; // r5
    int result; // r0
    int v2; // r2
    int v3; // r4
    unsigned __int8 v4; // vf
    int v5; // r2
    unsigned int v6; // ST00_4
    int v7; // r0
    int v8; // r1

    result = *(v0 + 68);
    if ( *(v0 + 68) )
    {
        result = (*&byte_813470C[4 * *(v0 + 64)] - 8 * *(v0 + 24)) << 16;
        v2 = *(v0 + 62) + *(v0 + 60);
        v3 = *(v0 + 46);
        if ( *(v0 + 64) != 2 )
            v3 = *(v0 + 36);
        v4 = __OFSUB__(v2, v3);
        v5 = v2 - v3;
        if ( !((v5 < 0) ^ v4) && v5 <= 6 )
        {
            v6 = *(v0 + 22);
            v7 = sub_811FAF4(
                         ((*&byte_813470C[4 * *(v0 + 64)] - 8 * *(v0 + 24)) << 16) | (16 * v5 + 32),
                         0x20003u,
                         v6 & 0xF | 0x80000000,
                         byte_81331F4);
            v8 = (v6 >> 4) - 1;
            if ( v6 >> 4 == 1 )
                *(v0 + 22) = sub_8120CC8(v7, &dword_81331FC);
            result = *(v0 + 22) & 0xF | 16 * v8;
            *(v0 + 22) = result;
        }
    }
    return result;
}


// 0x813468c
int __fastcall sub_813468C(int a1, int a2, int a3, int a4)
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
    v6 = (a1 - 8 * *(v5 + 24)) << 16;
    if ( a3 )
        v7 = *(v5 + a3);
    else
        v7 = 0;
    v8 = *(v5 + a4);
    v9 = sub_811FAF4(v6 | (a2 + 16 * v7), 0x20003u, v8 & 0xF, v4);
    v10 = (v8 >> 4) - 1;
    if ( v8 >> 4 == 1 )
        *(v5 + v12) = sub_8120CC8(v9, &dword_81331FC);
    result = *(v5 + v12) & 0xF | 16 * v10;
    *(v5 + v12) = result;
    return result;
}


// 0x813471c
void __noreturn sub_813471C()
{
    int v0; // r5

    *(v0 + 13);
    copyTiles();
    JUMPOUT(locret_8134738);
}


// 0x8134740
int sub_8134740()
{
    int v0; // r5
    signed int v1; // r0
    unsigned int v2; // ST00_4
    int v3; // r0
    int v4; // r1
    int result; // r0

    v1 = 786432;
    if ( *(v0 + 13) )
        v1 = 10747904;
    v2 = *(v0 + 21);
    v3 = sub_811FAF4(v1 | (16 * *(v0 + 52) + 32), 2u, v2 & 0xF, byte_81331F4);
    v4 = (v2 >> 4) - 1;
    if ( v2 >> 4 == 1 )
        *(v0 + 21) = sub_8120CC8(v3, &dword_81331FC);
    result = *(v0 + 21) & 0xF | 16 * v4;
    *(v0 + 21) = result;
    return result;
}


// 0x81347a4
signed int sub_81347A4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    int v3; // r2
    char v4; // zf
    int *v5; // r0
    int v6; // r7
    int v7; // r0
    int v8; // r2
    signed int v9; // r1
    signed int v10; // r4
    int v11; // r3
    int v12; // r3
    signed int v13; // r1
    int v14; // r6
    signed int v15; // r7
    int v17; // [sp+0h] [bp-24h]
    int v18; // [sp+8h] [bp-1Ch]
    int v19; // [sp+Ch] [bp-18h]

    sub_811F7EC();
    if ( v4 )
        return 0;
    if ( !*(v0 + 13) )
    {
        if ( *(v0 + 76) & 1 )
        {
            v3 = 32;
            v17 = *&word_202A020[16 * *(v0 + 28)];
        }
        v2 = *(v0 + 76);
        if ( v2 & 0x20 )
        {
            v18 = *&word_202A020[16 * *(v0 + 92)];
            v3 = 32;
            v5 = &word_202A020[16 * *(v0 + 96)];
            v2 = *v5;
            v19 = *v5;
        }
    }
    sound_play(129, v2, v3);
    v6 = *(v0 + 13);
    v7 = *(v1 + oToolkit_Unk2001c04_Ptr);
    v8 = *(v0 + 52);
    v9 = 0;
    v10 = 1;
    if ( *(v0 + 13) )
    {
        v9 = 2;
        v10 = 3;
    }
    v11 = *(v7 + v9);
    *(v7 + v9) = v8;
    if ( v8 == v11 )
        v12 = *(v7 + v10) ^ 4;
    else
        v12 = byte_30069A0[v8] ^ 4;
    *(v7 + v10) = v12;
    v13 = 30;
    if ( v6 )
        v13 = 40;
    sub_8120018(*(&off_81348D4 + v6), *(v0 + v13), v8, v12);
    v14 = 0;
    v15 = 0;
    if ( !*(v0 + 13) )
    {
        do
        {
            if ( !(*(v0 + 76) & 1) || v14 & 1 || *&word_202A020[16 * v15] != v17 )
            {
                if ( *(v0 + 76) & 0x20 )
                {
                    if ( v14 & 2 || *&word_202A020[16 * v15] != v18 )
                    {
                        if ( !(v14 & 4) && *&word_202A020[16 * v15] == v19 )
                        {
                            *(v0 + 96) = v15;
                            v14 |= 4u;
                        }
                    }
                    else
                    {
                        *(v0 + 92) = v15;
                        v14 |= 2u;
                    }
                }
            }
            else
            {
                *(v0 + 28) = v15;
                v14 |= 1u;
            }
            ++v15;
        }
        while ( v15 < 30 );
    }
    return 1;
}


// 0x81348dc
int __fastcall sub_81348DC(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int result; // r0
    int v7; // r0
    int v8; // r2
    int v9; // r3
    unsigned __int8 v10; // vf
    int v11; // r2
    int v12; // [sp+0h] [bp-1Ch]
    __int16 v13; // [sp+8h] [bp-14h]
    int v14; // [sp+Ch] [bp-10h]

    v12 = a1;
    v13 = a3;
    v14 = a4;
    result = 1;
    if ( *(v5 + 76) & 1 )
    {
        v7 = a2 - 8 * *(v5 + 24);
        v8 = *(v5 + 28);
        v9 = *(v5 + v12);
        v10 = __OFSUB__(v8, v9);
        v11 = v8 - v9;
        if ( (v11 < 0) ^ v10 || v11 > v4 )
        {
            result = sub_81171F4(1, v14);
        }
        else
        {
            sub_81171D4(v7, v13 + 16 * v11, v14);
            result = sub_81171F4(0, v14);
        }
    }
    return result;
}


// 0x8134930
int __fastcall sub_8134930(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r7
    int result; // r0
    int v8; // r0
    int v9; // r2
    int v10; // r3
    unsigned __int8 v11; // vf
    int v12; // r2
    int v13; // [sp+0h] [bp-28h]
    __int16 v14; // [sp+8h] [bp-20h]

    v13 = a1;
    v14 = a3;
    result = *&byte_8134994[4 * a4];
    if ( *(v5 + 76) & result )
    {
        v8 = a2 - 8 * *(v5 + 24);
        v9 = *&(&off_81349A0)[a4][v5];
        v10 = *(v5 + v13);
        v11 = __OFSUB__(v9, v10);
        v12 = v9 - v10;
        if ( (v12 < 0) ^ v11 || v12 > v4 )
        {
            result = sub_81171F4(1, v6);
        }
        else
        {
            sub_81171D4(v8, v14 + 16 * v12, v6);
            result = sub_81171F4(0, v6);
        }
    }
    return result;
}


// 0x81349b4
int __fastcall sub_81349B4(int a1, __int16 a2, __int16 a3, int a4)
{
    int v4; // r5
    int v5; // ST0C_4

    v5 = a4;
    sub_81171D4(a2 - 8 * *(v4 + 24), a3 + 16 * *(v4 + a1), a4);
    return sub_81171F4(0, v5);
}


// 0x81349e8
signed int sub_81349E8()
{
    int v0; // r5
    signed int v1; // r6
    __int16 *v2; // r7
    int v3; // r4
    char v4; // zf
    signed int v5; // r1

    v1 = 3;
    v2 = &word_202A020[16 * (*(v0 + 32) + *(v0 + 36))];
    if ( v2[14] >> 7 )
    {
        v3 = *(v2 + 6) >> 16;
        if ( 60 - *(v0 + 100) >= v3 )
            v1 = 1;
        sub_81355D8();
        if ( v4 )
            v5 = *(sub_801401E(*(v0 + 20)) + 9);
        else
            v5 = 30;
        if ( v5 >= v3 )
            v1 &= 0xFFFFFFFE;
    }
    return v1;
}


// 0x8134a3c
signed int sub_8134A3C()
{
    unsigned __int8 *v0; // r5
    signed int v1; // r6
    char v2; // zf
    signed int v3; // r2
    signed int v4; // r3
    int v5; // r0
    int v6; // r1
    int v7; // r2

    v1 = 0;
    sub_811F7EC();
    if ( !v2 )
    {
        v1 = 1;
        v3 = 68;
        v4 = 0;
        if ( v0[68] )
        {
            v3 = 72;
            v4 = 1;
        }
        v5 = (v0[3] >> 2) + 1;
        v0[v3] = v5;
        if ( v4 )
        {
            if ( sub_8134ABC(v5) == v0[68] )
            {
                v0[69] = v0[68];
                v0[73] = v0[72];
                sub_8134CF0();
            }
            else
            {
                v0[73] = v0[68];
                v0[69] = v0[72];
                sub_8134ADC();
            }
        }
        else
        {
            sub_8134ABC(v5);
            sound_play(129, v6, v7);
        }
    }
    return v1;
}


// 0x8134abc
int __fastcall sub_8134ABC(int result)
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


// 0x8134adc
int sub_8134ADC()
{
    int v0; // r5
    signed int v1; // r1
    signed int v2; // r2
    int *v3; // r6
    int *v4; // r7
    unsigned __int16 *v5; // r4
    int v6; // r0
    int v7; // r3
    unsigned __int16 *v8; // r1
    int v9; // r2
    int v10; // r0
    int v11; // r3
    char v12; // zf
    int v13; // r0
    char *v14; // r4
    int v15; // r6
    unsigned int v16; // r7
    int v17; // r3
    int v18; // r2
    int v19; // r1
    int v20; // r2
    int v21; // r3
    unsigned int v22; // r0
    int v23; // r3
    int v24; // r2
    unsigned int v25; // r7
    int v26; // r0
    int result; // r0
    int v28; // [sp+0h] [bp-38h]
    int v29; // [sp+4h] [bp-34h]
    int v30; // [sp+8h] [bp-30h]
    int v31; // [sp+Ch] [bp-2Ch]
    int v32; // [sp+10h] [bp-28h]
    int v33; // [sp+14h] [bp-24h]
    unsigned __int16 *v34; // [sp+18h] [bp-20h]
    int v35; // [sp+1Ch] [bp-1Ch]
    int v36; // [sp+20h] [bp-18h]

    v28 = dword_8134E94[*(v0 + 68)];
    v31 = dword_8134E94[*(v0 + 72)];
    v29 = *(v0 + 70);
    v32 = *(v0 + 74);
    v30 = *(v0 + 69);
    v33 = *(v0 + 73);
    v1 = 0;
    v2 = 1;
    if ( v30 != 1 )
    {
        v1 = 1;
        v2 = 0;
    }
    v3 = &v28 + 3 * v2;
    v4 = &v28 + 3 * v1;
    v5 = (*(&v28 + 3 * v1) + 32 * *(v4 + 2));
    v6 = *v5;
    v7 = *(v3 + 2);
    v8 = (*(&v28 + 3 * v2) + 32 * v7);
    v34 = v8;
    v9 = *v8;
    if ( v6 == v9 || (v10 = sub_8135080(v6, v5[14] >> 7, v34[14] >> 7, v7), v12) )
    {
        sound_play(129, v8, v9);
        sub_8134F88(*(v3 + 2));
        sub_8134FB0(*(v3 + 2));
        sub_8134F78();
        v13 = *v4;
        v35 = v4[1];
        v14 = (v13 + 32 * v35);
        v15 = *v3 + 32 * v3[1];
        if ( *(v15 + 20) )
        {
            if ( sub_8134F40(*(v15 + 28)) )
            {
                CopyByEightWords(v14, v15, 0x20u);
                v22 = *(v14 + 5);
                if ( v22 >> 16 == 1 )
                {
                    v23 = *(v0 + 46) + *(v0 + 42);
                    v24 = *(v0 + 40);
                    v36 = v24--;
                    *(v0 + 40) = v24;
                    if ( v24 == v23 )
                        sub_8135244();
                    sub_813527C((v14 + 32), v14, v36 - 1 - v35, v35);
                    sub_813525C();
                }
                else
                {
                    v19 = ((v22 >> 16) - 1) << 16;
                    *(v14 + 5) = v22 | v19;
                }
            }
            else
            {
                v25 = *(v14 + 5);
                if ( v25 >> 16 == 1 )
                {
                    CopyByEightWords(v15, &unk_2035C6C, 0x20u);
                    CopyByEightWords(v14, v15, 0x20u);
                    CopyByEightWords(&unk_2035C6C, v14, 0x20u);
                }
                else
                {
                    *(v14 + 5) = (((*(v14 + 5) >> 16) - 1) << 16) | *(v14 + 5) & 0xFFFF;
                    CopyByEightWords(v15, &unk_2035C6C, 0x20u);
                    CopyByEightWords(v14, v15, 0x20u);
                    v26 = *(v0 + 40) + 1;
                    *(v0 + 40) = v26;
                    v14 = &unk_202A3E0 + 32 * (v26 - 1);
                    CopyByEightWords(&unk_2035C6C, &unk_202A3E0 + 32 * (v26 - 1), 0x20u);
                }
                v19 = 0x10000;
                *(v14 + 5) = *(v14 + 5) & 0xFFFF | 0x10000;
            }
        }
        else
        {
            v16 = *(v14 + 5);
            if ( v16 >> 16 == 1 )
            {
                CopyByEightWords(v14, v15, 0x20u);
                v17 = *(v0 + 46) + *(v0 + 42);
                v18 = *(v0 + 40);
                v36 = v18--;
                *(v0 + 40) = v18;
                if ( v18 == v17 )
                    sub_8135244();
                sub_813527C((v14 + 32), v14, v36 - 1 - v35, v35);
                sub_813525C();
            }
            else
            {
                *(v13 + 32 * v35 + 20) = (((v16 >> 16) - 1) << 16) | *(v13 + 32 * v35 + 20) & 0xFFFF;
                CopyByEightWords(v14, v15, 0x14u);
            }
        }
        *(v0 + 23) = sub_8134EA8(*(v0 + 30), v19, v20, v21);
    }
    else
    {
        if ( v10 != 2 )
            v10 = 0;
        sub_81351F4(v10, v8, v9, v11);
    }
    *(v0 + 60) = 0x7FFF;
    *(v0 + 68) = 0;
    result = 0;
    *(v0 + 72) = 0;
    return result;
}


// 0x8134cf0
int sub_8134CF0()
{
    int v0; // r5
    __int16 *v1; // r7
    int v2; // r1
    int v3; // r2
    int v4; // r3
    __int16 *v5; // r7
    int v6; // r2
    int v7; // r3
    char *v8; // r1
    int v9; // r1
    int v10; // r2
    int v11; // r3
    int v12; // r1
    int v13; // r2
    __int16 *v14; // r7
    unsigned int v15; // r2
    unsigned int v16; // r6
    int v17; // r4
    int v18; // r0
    int v19; // r1
    int v20; // r2
    int v21; // r3
    char v22; // zf
    int v23; // r6
    int v24; // r1
    int v25; // r2
    int v26; // r3
    int v27; // r3
    int v28; // r2
    int v29; // r2
    int v30; // r1
    int v31; // r2
    int v32; // r3
    int v33; // r4
    int v34; // r6
    int v35; // r1
    int v36; // r2
    int v37; // r3
    int v38; // r1
    int v39; // r2
    int v40; // r3
    int v41; // r1
    int v42; // r2
    int result; // r0

    v1 = dword_8134E94[*(v0 + 68)];
    v2 = 74;
    v3 = *(v0 + 70);
    v4 = *(v0 + 74);
    if ( v3 == v4 )
    {
        if ( word_202A020 == v1 )
        {
            v5 = &v1[16 * v3];
            if ( v5[10] )
            {
                if ( !sub_8134F40(v5[14]) )
                {
                    v8 = &unk_202A3E0 + 32 * *(v0 + 40);
                    v5[11] = 1;
                    CopyByEightWords(v5, v8, 0x20u);
                    ++*(v0 + 40);
                }
                ZeroFillByEightWords(v5, 0x20u, v6, v7);
                *(v0 + 23) = sub_8134EA8(*(v0 + 30), v9, v10, v11);
                sound_play(129, v12, v13);
                sub_8134F88(*(v0 + 32) + *(v0 + 36));
                sub_8134FB0(*(v0 + 32) + *(v0 + 36));
                sub_8134F78();
            }
            else
            {
                sound_play(105, 74, v3);
            }
        }
        else
        {
            v14 = &v1[16 * v3];
            v15 = *(v14 + 5);
            v16 = v15 >> 16;
            if ( v15 >> 16 )
            {
                v2 = 0;
                v15 = 32 * *(v0 + 30);
                while ( word_202A020[v2 / 2u] )
                {
                    v2 += 32;
                    if ( v2 >= v15 )
                        goto LABEL_12;
                }
                v17 = v2;
                v18 = sub_8135080(*v14, v14[14] >> 7, 0, word_202A020);
                if ( v22 )
                {
                    sound_play(129, v19, v20);
                    v23 = v16 - 1;
                    if ( v23 )
                    {
                        *(v14 + 5) = (v23 << 16) | *(v14 + 5) & 0xFFFF;
                        CopyByEightWords(v14, word_202A020 + v17, 0x20u);
                        *(v0 + 23) = sub_8134EA8(*(v0 + 30), v30, v31, v32);
                        sub_8134F78();
                    }
                    else
                    {
                        CopyByEightWords(v14, word_202A020 + v17, 0x20u);
                        *(v0 + 23) = sub_8134EA8(*(v0 + 30), v24, v25, v26);
                        v27 = *(v0 + 46) + *(v0 + 42);
                        v28 = *(v0 + 40) - 1;
                        *(v0 + 40) = v28;
                        v29 = v28 - v27;
                        if ( !v29 )
                            sub_8135244();
                        sub_813527C((v14 + 16), v14, v29, v27);
                        sub_813525C();
                        sub_8134F78();
                    }
                }
                else
                {
                    if ( v18 != 2 )
                        v18 = 0;
                    sub_81351F4(v18, v19, v20, v21);
                }
            }
            else
            {
LABEL_12:
                sound_play(105, v2, v15);
            }
        }
    }
    else
    {
        v33 = &v1[16 * v3];
        v34 = &v1[16 * v4];
        if ( word_202A020 == v1 )
        {
            sub_8135038(word_202A020, 74, v3, v4);
            sub_8135054(0, v35, v36, v37);
            sub_8135054(4, v38, v39, v40);
        }
        CopyByEightWords(v33, &unk_2035C6C, 0x20u);
        CopyByEightWords(v34, v33, 0x20u);
        CopyByEightWords(&unk_2035C6C, v34, 0x20u);
        sound_play(129, v41, v42);
        sub_8134F78();
    }
    *(v0 + 60) = 0x7FFF;
    *(v0 + 68) = 0;
    result = 0;
    *(v0 + 72) = 0;
    return result;
}


// 0x8134ea8
int __fastcall sub_8134EA8(int a1, int a2, int a3, int a4)
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
    ZeroFillByEightWords(byte_20343E0, &dword_78, a3, a4);
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


// 0x8134f40
signed int __fastcall sub_8134F40(int a1)
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


// 0x8134f78
_BYTE *sub_8134F78()
{
    int v0; // r10
    _BYTE *result; // r0

    result = *(v0 + oToolkit_Unk2001c04_Ptr);
    *result = -1;
    result[2] = -1;
    return result;
}


// 0x8134f88
int __fastcall sub_8134F88(int result)
{
    int v1; // r5
    int v2; // r1
    char v3; // zf

    if ( result == *(v1 + 28) )
    {
        result = sub_80466C4(4);
        if ( !v3 )
        {
            *(v2 + 8) = 8;
            *(v1 + 76) &= 0xFFFFFFFE;
            result = 0xFFFF;
            *(v1 + 28) = -1;
        }
    }
    return result;
}


// 0x8134fb0
int __fastcall sub_8134FB0(int a1)
{
    int v1; // r5
    signed int v2; // r4
    int result; // r0

    v2 = 0;
    do
    {
        if ( a1 == *&(&off_8135018)[v2][v1] )
        {
            a1 = *&byte_8135030[v2 * 4];
            *(v1 + 76) &= ~a1;
        }
        ++v2;
    }
    while ( v2 <= 1 );
    result = *(v1 + 76) & 0x60;
    if ( result != 96 )
        result = sub_8134FE0();
    return result;
}


// 0x8134fe0
int sub_8134FE0()
{
    int v0; // r5
    signed int v1; // r4
    int v2; // r1
    char v3; // zf
    int result; // r0

    v1 = 0;
    do
    {
        sub_80466C4(*&byte_8135024[v1 * 4]);
        if ( !v3 )
            *(v2 + 8) = 8;
        *&(&off_8135018)[v1][v0] = 0xFFFF;
        ++v1;
    }
    while ( v1 <= 1 );
    *(v0 + 76) &= 0xFFFFFF9F;
    result = 0;
    *(v0 + 100) = 0;
    return result;
}


// 0x8135038
void __fastcall sub_8135038(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    signed int v5; // r4
    int v6; // r1

    v5 = 0;
    v6 = *(v4 + 28);
    if ( v6 == a3 || (v5 = 1, v6 == a4) )
    {
        if ( v5 )
            *(v4 + 28) = a3;
        else
            *(v4 + 28) = a4;
    }
}


// 0x8135054
int __fastcall sub_8135054(int result, int a2, int a3, int a4)
{
    int v4; // r5
    signed int v5; // r4
    int v6; // r6
    int v7; // r1

    v5 = 0;
    v6 = *(&off_8135078 + result);
    v7 = *(v4 + v6);
    if ( v7 == a3 || (v5 = 1, v7 == a4) )
    {
        if ( v5 )
            *(v4 + v6) = a3;
        else
            *(v4 + v6) = a4;
    }
    return result;
}


// 0x8135080
int __fastcall sub_8135080(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    signed int v5; // r7
    char *v6; // r4
    int v7; // r4
    int v8; // r4
    int v9; // r0
    int v10; // r4
    int v11; // r0
    int v12; // r3
    int v13; // r6
    int v14; // r5
    char *v15; // r0
    int v17; // [sp+0h] [bp-24h]
    int v18; // [sp+4h] [bp-20h]

    v17 = a2;
    v18 = a3;
    if ( a2 == a3 )
        return 0;
    v5 = 2;
    if ( !a2 )
        return 0;
    v6 = getChip_8021DA8(a2);
    if ( v6[9] & 0x20 )
    {
        v7 = sub_81351C0();
        if ( v18 && getChip_8021DA8(v18)[9] & 0x20 )
            --v7;
        if ( v7 >= 3 )
            return v5;
        goto LABEL_20;
    }
    if ( !v6[7] )
        goto LABEL_20;
    if ( v6[7] == 1 )
    {
        v8 = sub_8135184(1);
        if ( v18 && getChip_8021DA8(v18)[7] == 1 )
            --v8;
        v9 = getPETNaviSelect();
        if ( v8 >= sub_80137B6(v9) )
            return v5;
LABEL_20:
        v5 = 1;
        v12 = 0;
        v13 = *(v4 + 30);
        v14 = 0;
        do
        {
            if ( *&word_202A020[16 * v12 + 14] << 16 >> 23 == v17 )
                ++v14;
            ++v12;
        }
        while ( v12 < v13 );
        v15 = getChip_8021DA8(v17);
        if ( sub_8135500(v15, v17) )
            return v5;
        return 0;
    }
    v10 = sub_8135184(2);
    if ( v18 && getChip_8021DA8(v18)[7] == 2 )
        --v10;
    v11 = getPETNaviSelect();
    if ( v10 < sub_80137B6(v11) )
        goto LABEL_20;
    return v5;
}


// 0x8135184
int __fastcall sub_8135184(int a1)
{
    int v1; // r5
    int v2; // r3
    int v3; // r6
    int v4; // r5
    int v5; // r3
    int v7; // [sp+0h] [bp-18h]

    v7 = a1;
    v2 = 0;
    v3 = *(v1 + 30);
    v4 = 0;
    do
    {
        if ( getChip_8021DA8(*&word_202A020[16 * v2 + 14] << 16 >> 23)[7] == v7 )
            ++v4;
        v2 = v5 + 1;
    }
    while ( v2 < v3 );
    return v4;
}


// 0x81351c0
int sub_81351C0()
{
    int v0; // r5
    int v1; // r3
    int v2; // r6
    int v3; // r5
    int v4; // r3

    v1 = 0;
    v2 = *(v0 + 30);
    v3 = 0;
    do
    {
        if ( getChip_8021DA8(*&word_202A020[16 * v1 + 14] << 16 >> 23)[9] & 0x20 )
            ++v3;
        v1 = v4 + 1;
    }
    while ( v1 < v2 );
    return v3;
}


// 0x81351f4
signed int __fastcall sub_81351F4(int a1, int a2, int a3, int a4)
{
    _BYTE *v4; // r5
    int v5; // r10
    int v6; // r0
    int v7; // r1
    int v8; // r2
    signed int result; // r0

    if ( a1 )
    {
        *(*(v5 + oToolkit_ChatboxPtr) + 76) = a2;
        if ( a3 == 5 )
        {
            v6 = 9;
        }
        else
        {
            v6 = 7;
            if ( a3 == 1 )
                v6 = 6;
        }
    }
    else if ( a3 == 5 )
    {
        v6 = 8;
    }
    else
    {
        v6 = byte_813523C[a4];
        *(*(v5 + oToolkit_ChatboxPtr) + 76) = a2;
    }
    sub_8134190(v6);
    sound_play(105, v7, v8);
    v4[13] = v4[3];
    result = 8;
    v4[2] = 8;
    return result;
}


// 0x8135244
void __spoils<> sub_8135244()
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


// 0x813525c
void sub_813525C()
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


// 0x813527c
void __fastcall sub_813527C(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r6

    v4 = a2;
    v5 = a3;
    if ( a3 )
    {
        CopyByEightWords(a1, a2, 32 * a3);
        v4 += 32 * v5;
    }
    ZeroFillByEightWords(v4, 0x20u, a3, a4);
}


// 0x81352a0
int __fastcall sub_81352A0(int a1, void *a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r7
    int v7; // r1
    int v8; // r0
    int result; // r0
    __int16 v10; // r6
    int v11; // r4
    int v12; // r0
    int v13; // [sp+0h] [bp-28h]
    void *v14; // [sp+4h] [bp-24h]
    int v15; // [sp+8h] [bp-20h]
    int v16; // [sp+Ch] [bp-1Ch]
    int v17; // [sp+10h] [bp-18h]

    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    v17 = v4;
    v7 = *(&dword_8135310 + *(v5 + 12));
    v8 = getPETNaviSelect();
    result = sub_80137B6(v8);
    v10 = result;
    if ( result != 255 )
    {
        v11 = *(32 * result + v13 + 24) >> 16;
        v12 = getPETNaviSelect();
        if ( v11 <= sub_80137B6(v12) )
        {
            sub_80465A0(v14);
            *(v5 + 28) = v10;
            sub_81348DC(36, v15, v16, v17);
            result = 1;
            *(v5 + 76) |= 1u;
        }
        else
        {
            result = navicust_801379E(*(v5 + 20), v6, 255);
        }
    }
    return result;
}


// 0x8135314
int __fastcall sub_8135314(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r4
    int v7; // r7
    int v8; // r0
    int v9; // r0
    __int16 v10; // r6
    int v11; // r7
    int result; // r0
    int v13; // [sp+0h] [bp-2Ch]
    int v14; // [sp+4h] [bp-28h]
    int v15; // [sp+8h] [bp-24h]
    int v16; // [sp+Ch] [bp-20h]
    int v17; // [sp+10h] [bp-1Ch]
    int v18; // [sp+14h] [bp-18h]

    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = v4;
    v13 = 0;
    v6 = 0;
    do
    {
        v7 = *(sub_81353B4 + *(v5 + 12)) + v6;
        v8 = getPETNaviSelect();
        v9 = sub_80137B6(v8);
        v10 = v9;
        if ( v9 != 255 )
        {
            v13 += *(32 * v9 + v14 + 24) >> 16;
            sub_80465A0(*(v15 + 4 * v6));
            *&(&off_813539C)[v6][v5] = v10;
            v11 = *(v18 + 4 * v6);
            sub_8134930(36, v16, v17, v6);
            *(v5 + 76) |= *&byte_81353A8[4 * v6];
        }
        ++v6;
    }
    while ( v6 < 2 );
    result = v13;
    *(v5 + 100) = v13;
    return result;
}


// 0x81353b4
int __fastcall sub_81353B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int (__fastcall *a9)(int))
{
    int v9; // r6
    __int16 v10; // ST04_2
    __int16 v11; // ST08_2
    int v12; // ST0C_4

    v9 = *(a3 + a2);
    v10 = a2;
    v11 = 2 * a4;
    v12 = a4;
    sub_80465A0(a1);
    return sub_81349B4(32, v10, v11, v12);
}


// 0x81353dc
int sub_81353DC()
{
    return sub_81348DC(36, 165, 40, 4);
}


// 0x81353f0
int __fastcall sub_81353F0(int a1, int a2)
{
    return sub_8134930(36, 165, 40, a2);
}


// 0x8135404
int sub_8135404()
{
    int v0; // r5
    int result; // r0
    int v2; // r4
    int v3; // r6
    int v4; // r0
    int v5; // r0
    int v6; // r0
    int v7; // r4
    int v8; // r0
    int v9; // r1
    int v10; // r1

    result = *(v0 + 96);
    if ( result != 0xFFFF )
    {
        CopyByEightWords(&word_202A020[16 * result], byte_203768C, 0x20u);
        v2 = *(v0 + 92);
        v3 = *(v0 + 96);
        if ( v2 < v3 )
        {
            v7 = v2 + 1;
            while ( v3 != v7 )
            {
                CopyByEightWords(&word_202A020[16 * (v3 - 1)], &word_202A020[16 * v3], 0x20u);
                --v3;
            }
            CopyByEightWords(byte_203768C, &word_202A020[16 * v3], 0x20u);
            v8 = *(v0 + 28);
            if ( v8 != 0xFFFF && v8 >= *(v0 + 92) && v8 <= *(v0 + 96) )
                ++*(v0 + 28);
            v6 = *(v0 + 92) + 1;
            *(v0 + 96) = v6;
        }
        else
        {
            do
            {
                CopyByEightWords(&word_202A020[16 * (v3 + 1)], &word_202A020[16 * v3], 0x20u);
                ++v3;
            }
            while ( v2 > v3 );
            CopyByEightWords(byte_203768C, &word_202A020[16 * v3], 0x20u);
            v4 = *(v0 + 28);
            if ( v4 != 0xFFFF && v4 >= *(v0 + 96) && v4 <= *(v0 + 92) )
                --*(v0 + 28);
            v5 = *(v0 + 92) - 1;
            *(v0 + 92) = v5;
            v6 = v5 + 1;
            *(v0 + 96) = v6;
        }
        v9 = *(v0 + 36);
        if ( v6 <= v9 || v6 >= v9 + 7 )
        {
            result = 1;
            v10 = *(v0 + 96) - 1;
            if ( v10 > 23 )
            {
                result = 6;
                LOWORD(v10) = 23;
            }
            *(v0 + 36) = v10;
            *(v0 + 32) = result;
        }
        else
        {
            result = v6 - v9;
            *(v0 + 32) = result;
        }
    }
    return result;
}


// 0x8135500
signed int __fastcall sub_8135500(int a1, int a2)
{
    signed int v2; // r4
    unsigned int v3; // r6
    signed int v4; // r0
    signed int v5; // r0
    int v7; // [sp+0h] [bp-30h]
    int v8; // [sp+4h] [bp-2Ch]
    int v9; // [sp+8h] [bp-28h]
    int v10; // [sp+Ch] [bp-24h]
    int v11; // [sp+10h] [bp-20h]
    int v12; // [sp+14h] [bp-1Ch]

    v12 = a1;
    v2 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v3 = 0;
    do
    {
        if ( word_202A020[v3 + 14] >> 7 == a2 )
        {
            v4 = *&word_202A020[v3 + 12] >> 16;
            if ( v4 > 19 )
            {
                if ( v4 > 29 )
                {
                    if ( v4 > 39 )
                    {
                        if ( v4 > 49 )
                            ++v11;
                        else
                            ++v10;
                    }
                    else
                    {
                        ++v9;
                    }
                }
                else
                {
                    ++v8;
                }
            }
            else
            {
                ++v7;
            }
        }
        v3 += 16;
    }
    while ( (v3 * 2) < &dword_3C0 );
    v5 = *(v12 + 8);
    if ( v5 > 19 )
    {
        if ( v5 > 29 )
        {
            if ( v5 > 39 )
            {
                if ( v5 > 49 )
                {
                    if ( v11 + 1 > 1 )
                        v2 = 1;
                }
                else if ( v10 + 1 > 2 )
                {
                    v2 = 1;
                }
            }
            else if ( v9 + 1 > 3 )
            {
                v2 = 1;
            }
        }
        else if ( v8 + 1 > 4 )
        {
            v2 = 1;
        }
    }
    else if ( v7 + 1 > 5 )
    {
        v2 = 1;
    }
    return v2;
}


// 0x81355d8
int sub_81355D8()
{
    return sSubmenu.unk_00;
}


// 0x81355ec
int sub_81355EC()
{
    return sub_8135314(word_202A020, off_8135604, 165, 40);
}


// 0x813561c
int sub_813561C()
{
    return sSubmenu.unk_02;
}


// 0x81356d4
int sub_81356D4()
{
    int v0; // r5

    return (*(&off_81356E8 + *(v0 + 1)))();
}


// 0x81356f4
void __fastcall __noreturn sub_81356F4(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    _WORD *v14; // r0
    int v15; // r2
    int v16; // r3
    _BYTE *v17; // r0
    int v18; // r0

    zeroFillVRAM(a1, a2, a3, a4);
    sub_80017E0(v6, v7, v8, v9);
    sub_800183C(v10, v11, v12, v13);
    sub_80015FC(16);
    v14 = *(v5 + oToolkit_RenderInfoPtr);
    *v14 = -8384;
    v14[8] = 0;
    v14[9] = 0;
    v14[10] = 0;
    v14[11] = 0;
    v14[12] = 0;
    v14[13] = 0;
    sub_8001820(v14, 0, v15, v16);
    v17 = *(v5 + oToolkit_Unk200f3a0_Ptr);
    v17[9] = 47;
    v17[10] = 63;
    v17[11] = 63;
    v17[3] = 6;
    v17[7] = 0;
    v17[2] = -16;
    v17[6] = 14;
    *(v4 + 1) = 4;
    *(v4 + 2) = 0;
    engine_setScreeneffect(8, 16);
    sub_8046664();
    *(v4 + 23) = 0;
    *(v4 + 12) = 0;
    *(v4 + 19) = 0;
    *(v4 + 30) = 0;
    *(v4 + 32) = 0;
    *(v4 + 36) = 0;
    *(v4 + 34) = 0;
    *(v4 + 38) = 0;
    *(v4 + 56) = 0;
    *(v4 + 58) = 0;
    *(v4 + 13) = 0;
    *(v4 + 14) = 0;
    *(v4 + 20) = 0;
    *(v4 + 48) = 0;
    *(v4 + 50) = 0;
    *(v4 + 16) = sub_813B920(0);
    v18 = sub_803CE28(113);
    *(v4 + 15) = v18;
    *(v4 + 68) = sub_813B9E0(v18);
    sub_8135B94();
}


// 0x81357c4
int sub_81357C4()
{
    int v0; // r5

    (*(&off_81357E0 + *(v0 + 2)))();
    sub_80465BC();
    return sub_80465F8();
}


// 0x813581c
int sub_813581C()
{
    int result; // r0
    char v1; // zf

    result = engine_isScreeneffectAnimating();
    if ( !v1 )
        sub_8135F18();
    return result;
}


// 0x8135830
int sub_8135830()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2
    _WORD *v6; // r2
    int v7; // r2
    int v8; // r0
    __int16 v9; // r1
    int result; // r0

    *(v0 + 34) = *(v0 + 32);
    *(v0 + 38) = *(v0 + 36);
    if ( !*(v0 + 13) )
    {
        sub_811F7EC();
        if ( !v2 )
        {
            sub_81367C0();
            goto LABEL_20;
        }
        sub_811F7EC();
        if ( !v2 )
        {
            sub_81367A0(v3, v4, v5);
            sub_8135F18();
        }
        v6 = *(v1 + oToolkit_JoypadPtr);
        if ( *v6 & 0x10 )
        {
            sub_8136804(v6[1]);
            goto LABEL_20;
        }
        *(v0 + 23) = 0;
        sub_811F7EC();
        if ( !v2 )
        {
            sub_813627C();
            goto LABEL_20;
        }
        sub_811F7EC();
        if ( !v2 )
        {
            sub_8136218();
            goto LABEL_20;
        }
        if ( *(*(v1 + oToolkit_JoypadPtr) + 2) & 0x20 )
        {
            sound_play(129, 32, v7);
            *(v0 + 2) = 8;
            sub_8135FA4();
            sub_8135F5C();
        }
        if ( sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 4u, 0, 0) )
            sub_8135F18();
    }
    v8 = *(v0 + 12);
    if ( v8 != 12 )
        *(v0 + 12) = sub_8135EEC(v8, 0);
LABEL_20:
    v9 = *(v0 + 32);
    *(v0 + 58) = *(v0 + 36);
    *(v0 + 56) = v9;
    result = 0;
    *(v0 + 19) = 0;
    return result;
}


// 0x81358fc
int __fastcall sub_81358FC(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0

    *(v3 + 42) = *(v3 + 40);
    *(v3 + 46) = *(v3 + 44);
    if ( !*(v3 + 13) )
        sub_8135FDC(*(v3 + 13), a2, a3);
    result = 0;
    *(v3 + 19) = 0;
    return result;
}


// 0x8135918
int sub_8135918()
{
    int v0; // r5
    __int16 v1; // r1
    int result; // r0

    if ( !*(v0 + 13) )
    {
        *(v0 + 2) = 4;
        v1 = *(v0 + 32);
        *(v0 + 58) = *(v0 + 36);
        *(v0 + 56) = v1;
        *(v0 + 16) = 0;
    }
    result = 0;
    *(v0 + 19) = 0;
    return result;
}


// 0x8135938
int sub_8135938()
{
    _BYTE *v0; // r5
    int result; // r0

    if ( v0[13] )
        v0[2] = 20;
    result = 0;
    v0[19] = 0;
    return result;
}


// 0x813594c
int __fastcall sub_813594C(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0

    *(v3 + 42) = *(v3 + 40);
    *(v3 + 46) = *(v3 + 44);
    if ( !*(v3 + 13) )
        sub_813612C(*(v3 + 13), a2, a3);
    result = 0;
    *(v3 + 19) = 0;
    return result;
}


// 0x8135968
int sub_8135968()
{
    _BYTE *v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int result; // r0

    if ( !v0[13] )
    {
        v0[2] = 8;
        sub_813BA80();
        sub_8135D9C(v1, v2, v3, v4);
        v0[12] = 16;
        sub_813660C(1);
        sub_813C1C0(1);
        v0[14] = 0;
        v0[20] = 0;
        sub_813B920(0);
        v0[16] = 0;
    }
    result = 0;
    v0[19] = 0;
    return result;
}


// 0x81359a0
int __fastcall sub_81359A0(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r0
    char v6; // zf
    int v7; // r1
    int v8; // r2
    int result; // r0

    v5 = *(v3 + 48);
    *(v3 + 50) = v5;
    sub_813652C(v5, a2, a3);
    sub_80466C4(10);
    if ( v6 )
    {
        if ( *(v3 + 48) )
        {
            if ( *(v3 + 48) == 255 )
            {
                *(v3 + 2) = 8;
            }
            else
            {
                sub_81365F0();
                if ( v6 || (v8 = *(v4 + oToolkit_GameStatePtr), *(v8 + oGameState_MapGroup) < 128) )
                {
                    sub_81366FC();
                    sub_813658C();
                    *(v3 + 17) = 40;
                    *(v3 + 12) = 16;
                }
                else
                {
                    sound_play(131, v7, v8);
                    sub_8046696(10);
                    *(v3 + 48) = 255;
                    sub_8135F88(5);
                    *(v3 + 2) = 56;
                }
            }
        }
        else
        {
            sub_813658C();
            *(v3 + 17) = 36;
        }
    }
    result = 0;
    *(v3 + 19) = 0;
    return result;
}


// 0x8135a10
int sub_8135A10()
{
    _BYTE *v0; // r5
    int result; // r0

    if ( v0[13] )
        v0[2] = v0[17];
    result = 0;
    v0[19] = 0;
    return result;
}


// 0x8135a24
int sub_8135A24()
{
    _BYTE *v0; // r5
    int result; // r0

    if ( !v0[13] )
    {
        v0[2] = 8;
        v0[14] = 0;
        v0[20] = 0;
        sub_813B920(0);
        v0[16] = 0;
    }
    result = 0;
    v0[19] = 0;
    return result;
}


// 0x8135a44
int sub_8135A44()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    signed int v3; // r4
    __int16 v4; // r0
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int v9; // r0
    int v10; // r1

    result = chatbox_8045F3C(128);
    if ( !v2 )
    {
        result = chatbox_8045F3C(32);
        if ( !v2 )
        {
            *(v0 + 2) = *(v0 + 22);
            chatbox_8045F4C();
            if ( !v2 )
                return chatbox_8040818();
            chatbox_8040818();
            *(v0 + 12) = 16;
            *(v0 + 16) = 0;
            v3 = 0;
            do
            {
                v4 = *sub_813B9FC(v3);
                sub_81366F4();
                sub_813B9C4(v3);
                v5 = sub_813BA48(v3++);
            }
            while ( v3 < 25 );
            sub_8135D9C(v5, v6, v7, v8);
            sub_813660C(1);
            sub_813C1C0(1);
            if ( *(v0 + 22) != 4 )
            {
                sub_813660C(1);
                return sub_813C1C0(1);
            }
            sub_813660C(0);
            sub_813C1C0(0);
            v9 = sub_8135DF8(*(v0 + 26));
            if ( v9 > 3 )
            {
                if ( *(v0 + 30) - v9 + *(v0 + 32) < 4 )
                {
                    v10 = *(v0 + 30) - 4;
                    *(v0 + 36) = v10;
                    result = v9 - v10;
                    *(v0 + 32) = result;
                    return result;
                }
                result = v9 - *(v0 + 32);
            }
            else
            {
                *(v0 + 32) = v9;
                result = 0;
            }
            *(v0 + 36) = result;
        }
    }
    return result;
}


// 0x8135af8
int sub_8135AF8()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( !v2 )
    {
        result = chatbox_8045F3C(32);
        if ( !v2 )
        {
            chatbox_8045F4C();
            if ( v2 )
            {
                *(v0 + 1) = 8;
                *(v0 + 2) = 0;
                engine_setScreeneffect(12, 16);
                sub_813BAC4();
            }
            else
            {
                *(v0 + 2) = 4;
            }
            result = chatbox_8040818();
        }
    }
    return result;
}


// 0x8135b38
int sub_8135B38()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( !v2 )
    {
        result = chatbox_8045F3C(8);
        if ( !v2 )
        {
            chatbox_8040818();
            result = 8;
            *(v0 + 2) = 8;
        }
    }
    return result;
}


// 0x8135b54
int sub_8135B54()
{
    _BYTE *v0; // r5
    int v1; // r10
    int result; // r0
    char v3; // zf
    int v4; // r4
    int v5; // r2
    int v6; // r3
    int v7; // r1
    int v8; // r2

    sub_80465BC();
    sub_80465F8();
    result = engine_isScreeneffectAnimating();
    if ( !v3 )
    {
        chatbox_8040818();
        chatbox_8045F2C(64);
        v4 = *v0;
        ZeroFillByWord(*(v1 + oToolkit_SubmenuPtr), 0x80u, v5, v6);
        if ( v4 == 40 )
        {
            sub_809E122();
            result = sub_811F728();
        }
        else
        {
            *v0 = 12;
            result = sub_8036E78(12, v7, v8);
        }
    }
    return result;
}


// 0x8135b94
void __noreturn sub_8135B94()
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
        v2 = *(&off_8135C2C + v1);
        v3 = v1 + 4;
        v4 = *(&off_8135C2C + v3);
        v1 = v3 + 4;
        *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
        v0 += 4;
        v5 = 0;
        do
        {
            *(&unk_20096E0 + v0) = *(&off_8135C2C + v1);
            v0 += 4;
            v1 += 4;
            ++v5;
        }
        while ( v5 < 2 );
    }
    while ( v1 < 48 );
    *(&unk_20096E0 + v0) = 0;
    decompAndCopyData(&unk_20096E0);
    decompAndCopyData(&off_8135C64);
    CopyByEightWords(&unk_201CF80, word_30019E0, byte_100);
    copyTiles();
    JUMPOUT(loc_8135BF0);
}


// 0x8135d8c
signed int sub_8135D8C()
{
    return sub_803CDF8(&dword_14C, 1);
}


// 0x8135d9c
int __fastcall sub_8135D9C(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r1
    int result; // r0

    ZeroFillByWord(word_201DA80, 4 * &loc_BC, a3, a4);
    if ( *v4 == 40 )
        sub_8135E6C();
    else
        sub_8135E18();
    *(v4 + 30) = 0;
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
    *(v4 + 56) = 0;
    result = 0;
    *(v4 + 36) = 0;
    *(v4 + 58) = 0;
    return result;
}


// 0x8135df8
int __fastcall sub_8135DF8(int a1)
{
    int v1; // r6
    __int16 *v2; // r4
    int v3; // r0

    v1 = 0;
    v2 = word_201DA80;
    v3 = a1 + 144;
    while ( v3 != *v2 )
    {
        v2 += 2;
        if ( ++v1 > &loc_BC )
            return 0;
    }
    return v1;
}


// 0x8135e18
int *sub_8135E18()
{
    _WORD *v0; // r6
    signed int v1; // r4
    int v2; // r7
    int v3; // r6
    int *result; // r0
    _WORD *v5; // [sp+0h] [bp-14h]

    v5 = v0;
    v1 = 145;
    do
    {
        v2 = sub_803CE28(v1);
        if ( v2 )
        {
            v3 = 0;
            do
            {
                if ( *sub_813B9FC(v3) + 144 == v1 )
                    --v2;
                ++v3;
            }
            while ( v3 < 25 );
            if ( v2 )
            {
                if ( *(sub_813B780(v1 - 144) + 3) )
                {
                    *v5 = v1;
                    v5[1] = v2;
                    v5 += 2;
                }
            }
        }
        ++v1;
        result = &dword_14C;
    }
    while ( v1 <= &dword_14C );
    return result;
}


// 0x8135e6c
unsigned __int16 *sub_8135E6C()
{
    _WORD *v0; // r6
    signed int v1; // r4
    unsigned __int16 *result; // r0
    unsigned __int16 *v3; // r7
    int v4; // r6
    int v5; // r6
    _WORD *v6; // [sp+0h] [bp-18h]
    int v7; // [sp+4h] [bp-14h]

    v6 = v0;
    v1 = 0;
    do
    {
        v7 = *(&off_8135EDC + v1);
        result = sub_803CE28(*(&off_8135EDC + v1));
        v3 = result;
        if ( result )
        {
            v4 = 0;
            do
            {
                result = sub_813B9FC(v4);
                if ( *result + 144 == v7 )
                    v3 = (v3 - 1);
                ++v4;
            }
            while ( v4 < 25 );
            if ( v3 )
            {
                v5 = *(&off_8135EDC + v1);
                result = sub_813B780(v5 - 144);
                if ( *(result + 3) )
                {
                    *v6 = v5;
                    v6[1] = v3;
                    result = v6 + 2;
                    v6 += 2;
                }
            }
        }
        v1 += 4;
    }
    while ( v1 < 16 );
    return result;
}


// 0x8135eec
signed int __fastcall sub_8135EEC(int a1, int a2)
{
    int v2; // r5
    signed int v3; // r4
    int v4; // r0
    int v5; // r1
    int v6; // r2

    if ( a2 )
        return 12;
    v3 = 0;
    v4 = *(v2 + 36);
    v5 = *(v2 + 38);
    v6 = v4 - v5;
    if ( v4 < v5 )
        v6 = v5 - v4;
    if ( v6 == 4 )
        return 12;
    if ( v4 != v5 )
    {
        v3 = 8;
        if ( v4 <= v5 )
            v3 = 4;
    }
    return v3;
}


// 0x8135f18
void __noreturn sub_8135F18()
{
    int v0; // r5

    sub_8135F34((word_201DA80[2 * (*(v0 + 32) + *(v0 + 36))] - 144) >> 2);
}


// 0x8135f34
void __fastcall __noreturn sub_8135F34(int a1)
{
    render_graphicalText_8045F8C(&unk_201E670, a1, byte_201B200, 100710400);
    JUMPOUT(loc_8135F4A);
}


// 0x8135f5c
void __noreturn sub_8135F5C()
{
    sub_80018D0(18, 13, 3, 0);
    JUMPOUT(locret_8135F6E);
}


// 0x8135f88
void __fastcall sub_8135F88(int a1)
{
    chatbox_runScript_803FD9C(&unk_201D280, a1);
}


// 0x8135fa4
int sub_8135FA4()
{
    int v0; // r5
    char *v1; // r1
    int result; // r0

    v1 = &byte_8135FC4[8 * *(v0 + 15) + 2 * *(v0 + 32)];
    *(v0 + 40) = *v1;
    result = v1[1];
    *(v0 + 44) = result;
    return result;
}


// 0x8135fdc
void __fastcall sub_8135FDC(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    __int16 v5; // r4
    char *v6; // r0
    __int16 v7; // r4
    signed int v8; // r3
    int v9; // r1
    unsigned __int8 v10; // vf
    int v11; // r1
    signed int v12; // r3
    int v13; // r1
    int v14; // r1
    int v15; // r0
    char v16; // zf
    unsigned __int16 *v17; // r0

    v5 = *(*(v4 + oToolkit_JoypadPtr) + 2);
    v6 = &byte_81360AC[2 * *(v3 + 15)];
    if ( v5 & 8 )
    {
        sub_81367A0(v6, 8, a3);
        sub_81360DC();
    }
    if ( v5 & 4 )
    {
        sub_81367C0();
    }
    else
    {
        if ( v5 & 2 )
        {
            sound_play(131, 2, a3);
            sub_81360B4();
        }
        if ( !(v5 & 1) )
        {
            v7 = *(*(v4 + oToolkit_JoypadPtr) + 4);
            if ( v7 & 0xC0 )
            {
                v8 = 1;
                if ( v7 & 0x40 )
                    v8 = -1;
                v9 = *(v3 + 44);
                v10 = __OFADD__(v9, v8);
                v11 = v9 + v8;
                if ( (v11 < 0) ^ v10 || v11 >= v6[1] )
                    LOWORD(v11) = *(v3 + 46);
                *(v3 + 44) = v11;
            }
            if ( v7 & 0x30 )
            {
                v12 = 1;
                if ( v7 & 0x20 )
                    v12 = -1;
                v13 = *(v3 + 40);
                v10 = __OFADD__(v13, v12);
                v14 = v13 + v12;
                if ( (v14 < 0) ^ v10 )
                {
                    LOWORD(v14) = *(v3 + 42);
                }
                else if ( v14 >= *v6 )
                {
                    sub_81360B4();
                }
                *(v3 + 40) = v14;
            }
            v15 = sub_813B9B4(*(v3 + 40), *(v3 + 44));
            if ( !v16 )
            {
                v17 = sub_813B9FC(v15 - 1);
                sub_8135F34(*v17 >> 2);
            }
            sub_8135F5C();
        }
        sub_8136100();
    }
}


// 0x81360b4
void __noreturn sub_81360B4()
{
    int v0; // r5

    *(v0 + 2) = 12;
    sub_81362B8();
    sub_81362F8();
    sub_8135F18();
}


// 0x81360dc
void __noreturn sub_81360DC()
{
    int v0; // r5

    *(v0 + 2) = 12;
    sub_81362F8();
    sub_8135F18();
}


// 0x8136100
int sub_8136100()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r2
    char v4; // zf

    v1 = 105;
    sub_813B9B4(*(v0 + 40), *(v0 + 44));
    if ( !v4 )
    {
        *(v0 + 48) = 0;
        *(v0 + 50) = 0;
        *(v0 + 2) = 28;
        sub_80465A0(byte_8135654);
        v1 = 129;
    }
    return sound_play(v1, v2, v3);
}


// 0x813612c
int __fastcall sub_813612C(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r4
    int result; // r0
    char *v7; // r7
    char v8; // zf
    char v9; // r0
    int v10; // r1
    int v11; // r2
    char v12; // r0
    __int16 v13; // r4
    int v14; // r0
    signed int v15; // r3
    int v16; // r0
    signed int v17; // r3

    v5 = *(*(v4 + oToolkit_JoypadPtr) + 2);
    if ( v5 & 1 )
        return sub_8136450();
    if ( v5 & 2 )
        return sub_813640C(a1, 2, a3);
    v7 = &byte_8136210[2 * *(v3 + 15)];
    result = sub_8136364();
    if ( !v8 )
    {
        if ( v5 & byte_200 )
        {
            v9 = sub_813B928();
            *(v3 + 14) = sub_813B920((v9 - 1) & 3);
            sub_8136384();
            return sound_play(127, v10, v11);
        }
        if ( v5 & byte_100 )
        {
            v12 = sub_813B928();
            *(v3 + 14) = sub_813B920((v12 + 1) & 3);
            sub_8136384();
            return sound_play(127, v10, v11);
        }
    }
    v13 = *(*(v4 + oToolkit_JoypadPtr) + 4);
    if ( v13 & 0xC0 )
    {
        v14 = v7[1];
        result = sub_813633C();
        if ( result != v10 )
        {
            v15 = 1;
            if ( v13 & 0x40 )
                v15 = -1;
            v11 = *(v3 + 44) + v15;
            if ( v11 < result || v11 >= v10 )
                v11 = *(v3 + 46);
            *(v3 + 44) = v11;
            result = *(v3 + 46);
            if ( result != v11 )
                return sound_play(127, v10, v11);
        }
    }
    else if ( v13 & 0x30 )
    {
        v16 = *v7;
        result = sub_8136318();
        if ( result != v10 )
        {
            v17 = 1;
            if ( v13 & 0x20 )
                v17 = -1;
            v11 = *(v3 + 40) + v17;
            if ( v11 < result || v11 >= v10 )
                v11 = *(v3 + 42);
            *(v3 + 40) = v11;
            result = *(v3 + 42);
            if ( result != v11 )
                return sound_play(127, v10, v11);
        }
    }
    return result;
}


// 0x8136218
int sub_8136218()
{
    int v0; // r5
    __int16 *v1; // r7
    int v2; // r6
    int v3; // r1
    int v4; // r2
    char v5; // zf
    int v6; // r1
    int v7; // r2

    v1 = sub_8136290(*(v0 + 36) + *(v0 + 32));
    v2 = *v1;
    sub_813629C(v2);
    if ( v5 )
    {
        sub_8046664();
    }
    else
    {
        if ( &dword_14C == v2 )
        {
            sound_play(130, v3, v4);
            *(v0 + 2) = 44;
            sub_813686C();
        }
        if ( v1[1] )
        {
            *(v0 + 2) = 16;
            sub_813660C(1);
            sub_813C1C0(1);
            return sound_play(129, v6, v7);
        }
    }
    return sound_play(105, v3, v4);
}


// 0x813627c
signed int sub_813627C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    signed int result; // r0

    sub_8135F88(0);
    sound_play(123, v1, v2);
    result = 52;
    *(v0 + 2) = 52;
    return result;
}


// 0x8136290
__int16 *__fastcall sub_8136290(int a1)
{
    return &word_201DA80[2 * a1];
}


// 0x813629c
int __fastcall sub_813629C(int a1)
{
    unsigned int v1; // r4
    int *v2; // r0

    v1 = a1;
    v2 = sub_813B780(a1 - 144);
    return sub_803D138(4 * (v1 >> 2), *(v2 + 3));
}


// 0x81362b8
int sub_81362B8()
{
    int v0; // r5
    int v1; // r1
    int result; // r0

    v1 = *(v0 + 30);
    result = byte_81362E0[8 * *(v0 + 15) + *(v0 + 44)];
    if ( result >= 4 )
        result = 3;
    if ( result >= v1 )
        result = v1 - 1;
    *(v0 + 32) = result;
    return result;
}


// 0x81362f8
int sub_81362F8()
{
    int v0; // r5
    char *v1; // r1
    int result; // r0

    v1 = &byte_8136310[2 * *(v0 + 15)];
    *(v0 + 40) = *v1;
    result = v1[1];
    *(v0 + 44) = result;
    return result;
}


// 0x8136318
int sub_8136318()
{
    int v0; // r5
    __int16 *v1; // r0

    v1 = sub_8136290(*(v0 + 58) + *(v0 + 56));
    return 3 - sub_813B84C(*v1 - 144);
}


// 0x813633c
int sub_813633C()
{
    int v0; // r5
    __int16 *v1; // r0
    int v2; // r2

    v1 = sub_8136290(*(v0 + 58) + *(v0 + 56));
    sub_813B84C(*v1 - 144);
    return 3 - v2;
}


// 0x8136364
int sub_8136364()
{
    int v0; // r5
    __int16 *v1; // r0
    int *v2; // r0

    v1 = sub_8136290(*(v0 + 58) + *(v0 + 56));
    v2 = sub_813B780(*v1 - 144);
    return sub_803CE28(*(v2 + 3) + 79);
}


// 0x8136384
int sub_8136384()
{
    int v0; // r5
    __int16 *v1; // r0
    __int64 v2; // r0
    signed int v3; // r2
    signed int v4; // r3
    int v5; // r7
    int v6; // r6
    int v7; // r2
    int v8; // r7
    int v9; // r6
    int result; // r0
    int v11; // r1
    char *v12; // [sp+0h] [bp-18h]

    v1 = sub_8136290(*(v0 + 58) + *(v0 + 56));
    v2 = sub_813B84C(*v1 - 144);
    if ( v2 == 12884901891LL )
        v2 = 8589934594LL;
    if ( v3 == 3 && v4 == 3 )
    {
        v3 = 2;
        v4 = 2;
    }
    v12 = &byte_8136404[2 * *(v0 + 15)];
    v6 = *(v0 + 44);
    v7 = 3 - v3;
    if ( v6 < v7 )
        v6 = v7;
    v5 = v12[1] - 1;
    if ( v6 > v5 - (3 - v4) )
        v6 = v5 - (3 - v4);
    *(v0 + 44) = v6;
    v8 = *v12 - 1;
    v9 = *(v0 + 40);
    result = 3 - v2;
    if ( v9 < result )
        v9 = result;
    v11 = 3 - HIDWORD(v2);
    if ( v9 > v8 - v11 )
        LOWORD(v9) = v8 - v11;
    *(v0 + 40) = v9;
    return result;
}


// 0x813640c
int __fastcall sub_813640C(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r1
    int result; // r0
    int v6; // r1
    int v7; // r2

    if ( *(v3 + 16) )
    {
        v4 = *(v3 + 60);
        *(v3 + 44) = *(v3 + 62);
        *(v3 + 40) = v4;
        *(v3 + 2) = 24;
        result = sound_play(129, v4, a3);
    }
    else
    {
        *(v3 + 2) = 12;
        *(v3 + 14) = 0;
        *(v3 + 20) = 0;
        sub_813B920(0);
        sub_813660C(0);
        sub_813C1C0(0);
        sub_81362F8();
        result = sound_play(131, v6, v7);
    }
    return result;
}


// 0x8136450
int sub_8136450()
{
    int v0; // r5
    __int16 *v1; // r0
    int v2; // r1
    int v3; // r2
    char v4; // zf
    int v5; // r1
    int v6; // r2

    v1 = sub_81364BC();
    if ( !v4 )
        return sound_play(105, v2, v3);
    *(v0 + 24) = v1;
    sub_81364E8(v1);
    if ( !*(v0 + 16) )
    {
        *(v0 + 2) = 4;
        *(v0 + 14) = 0;
        *(v0 + 20) = 0;
        sub_813B920(0);
        sub_81362F8();
        sub_8135F18();
    }
    *(v0 + 16) = 0;
    sub_813660C(1);
    sub_813C1C0(1);
    *(v0 + 14) = 0;
    *(v0 + 20) = 0;
    sub_813B920(0);
    return sound_play(129, v5, v6);
}


// 0x81364bc
__int16 *sub_81364BC()
{
    int v0; // r5
    __int16 *result; // r0
    __int16 *v2; // r7

    result = sub_8136290(*(v0 + 58) + *(v0 + 56));
    if ( result[1] )
    {
        v2 = (*result - 144);
        sub_813BAEC(v2, *(v0 + 68), *(v0 + 40), *(v0 + 44));
        result = v2;
    }
    return result;
}


// 0x81364e8
int __fastcall sub_81364E8(int a1)
{
    int v1; // r5
    int v2; // r7
    int v3; // r0
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int result; // r0
    __int16 v9; // r1

    v2 = a1;
    TestEventFlag(a1 + 9824);
    v3 = sub_813BA08(v2, *(v1 + 40), *(v1 + 44), *(v1 + 14));
    v4 = sub_813B950(v3, v2, *(v1 + 40), *(v1 + 44));
    sub_8135D9C(v4, v5, v6, v7);
    *(v1 + 12) = 16;
    *(v1 + 2) = 8;
    result = *(v1 + 36);
    v9 = *(v1 + 32);
    *(v1 + 58) = result;
    *(v1 + 56) = v9;
    return result;
}


// 0x813652c
signed int __fastcall sub_813652C(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    __int16 v5; // r4
    signed int result; // r0
    signed int v7; // r3
    signed int v8; // r4
    int v9; // r1
    unsigned __int8 v10; // vf
    int v11; // r1

    v5 = *(*(v4 + oToolkit_JoypadPtr) + 2);
    if ( v5 & 2 )
    {
        sound_play(131, 2, a3);
        sub_8046696(10);
        result = 255;
        *(v3 + 48) = 255;
        return result;
    }
    if ( v5 & 1 )
    {
        sound_play(129, 1, a3);
        return sub_8046696(10);
    }
    if ( v5 & 0xC0 )
    {
        v7 = 1;
        if ( v5 & 0x40 )
            v7 = -1;
        v8 = 1;
        v9 = *(v3 + 48);
        v10 = __OFADD__(v9, v7);
        v11 = v9 + v7;
        if ( !((v11 < 0) ^ v10) )
        {
            if ( v11 < 2 )
            {
LABEL_12:
                *(v3 + 48) = v11;
                return sound_play(127, v11, a3);
            }
            v8 = 0;
        }
        v11 = v8;
        goto LABEL_12;
    }
    return result;
}


// 0x813658c
signed int sub_813658C()
{
    int v0; // r5
    int v1; // r4
    unsigned __int8 *v2; // r7
    int v3; // r6
    __int16 v4; // r0
    __int16 v5; // r0
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    signed int result; // r0

    v1 = sub_813B9B4(*(v0 + 40), *(v0 + 44)) - 1;
    v2 = sub_813B9FC(v1);
    sub_813BA64();
    v3 = *v2;
    v4 = v2[3];
    *(v0 + 40) = v4;
    *(v0 + 60) = v4;
    v5 = v2[4];
    *(v0 + 44) = v5;
    *(v0 + 62) = v5;
    *(v0 + 20) = v2[6];
    LOBYTE(v5) = v2[5];
    *(v0 + 14) = v5;
    sub_813B920(v5);
    sub_813B9C4(v1);
    sub_813BA48(v1);
    sub_813660C(1);
    v6 = sub_813C1C0(1);
    sub_8135D9C(v6, v7, v8, v9);
    *(v0 + 58) = sub_8135DF8(v3);
    *(v0 + 56) = 0;
    *(v0 + 2) = 32;
    result = 1;
    *(v0 + 16) = 1;
    return result;
}


// 0x81365f0
int sub_81365F0()
{
    int v0; // r5
    int v1; // r0

    v1 = sub_813B9B4(*(v0 + 40), *(v0 + 44));
    sub_813B9FC(v1 - 1);
    return 0;
}


// 0x813660c
int __fastcall sub_813660C(int a1)
{
    int v1; // r0

    if ( a1 )
    {
        CopyWords(&unk_201CF80, word_30019E0, byte_100);
        v1 = 1;
    }
    else
    {
        CopyWords(&unk_201D080, word_30019E0, byte_100);
        v1 = 0;
    }
    return sub_8136644(v1);
}


// 0x8136644
int __fastcall sub_8136644(int a1)
{
    int v1; // r7
    signed int v2; // r4
    int result; // r0

    v1 = a1;
    v2 = 0;
    do
    {
        if ( v2 < 4 || byte_2022B70[v2] )
            result = *&(*off_81366A0[v1])[2 * byte_2022B70[v2]];
        else
            result = *&(*off_81366A0[v1])[14];
        word_30019E0[byte_81366C8[v2++]] = result;
    }
    while ( v2 < 6 );
    return result;
}


// 0x81366d0
int sub_81366D0()
{
    int v0; // r5
    int v1; // r4
    signed int v2; // r6
    int result; // r0

    v1 = *(sub_813B780(*(v0 + 24)) + 3);
    v2 = 0;
    do
    {
        result = byte_2022B70[v2];
        if ( result == v1 )
            break;
        if ( !byte_2022B70[v2] )
        {
            byte_2022B70[v2] = v1;
            return result;
        }
        ++v2;
    }
    while ( v2 < 6 );
    return result;
}


// 0x81366f4
void sub_81366F4()
{
    JUMPOUT(&loc_8136712);
}


// 0x81366fc
int *sub_81366FC()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int *v3; // r4
    int v4; // r6
    int v5; // r0
    int *result; // r0
    int v7; // r6
    int v8; // r3
    int v9; // [sp+0h] [bp-18h]

    v1 = sub_813B9B4(*(v0 + 40), *(v0 + 44));
    v9 = v1 - 1;
    v2 = *sub_813B9FC(v1 - 1);
    v3 = *(sub_813B780(v2) + 3);
    v4 = 0;
    while ( 1 )
    {
        if ( v4 != v9 )
        {
            v5 = *sub_813B9FC(v4);
            if ( v5 )
            {
                result = sub_813B780(v5);
                if ( *(result + 3) == v3 )
                    break;
            }
        }
        if ( ++v4 >= 25 )
        {
            v7 = 0;
            while ( 1 )
            {
                result = byte_2022B70[v7];
                if ( result == v3 )
                    break;
                if ( ++v7 >= 6 )
                    return result;
            }
            if ( v7 != 6 )
            {
                v8 = 0;
                do
                {
                    byte_2022B70[v7 + v8] = byte_2022B70[v7 + 1 + v8];
                    ++v8;
                }
                while ( 6 - v7 > v8 );
            }
            result = 0;
            byte_2022B76 = 0;
            return result;
        }
    }
    return result;
}


// 0x813676c
int sub_813676C()
{
    return CopyBytes(&unk_2000090, byte_2022B70, 8);
}


// 0x813677c
int sub_813677C()
{
    return CopyBytes(byte_2022B70, &unk_2000090, 8);
}


// 0x81367a0
int __fastcall sub_81367A0(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r1
    int v5; // r0
    unsigned __int8 v6; // vf
    int v7; // r0

    v4 = 3;
    v5 = *(v3 + 30);
    v6 = __OFSUB__(v5, 4);
    v7 = v5 - 4;
    if ( (v7 < 0) ^ v6 )
    {
        v4 = v7 + 3;
        LOWORD(v7) = 0;
    }
    *(v3 + 36) = v7;
    *(v3 + 32) = v4;
    *(v3 + 12) = 12;
    return sound_play(129, v4, a3);
}


// 0x81367c0
void sub_81367C0()
{
    int v0; // r5
    int v1; // r4
    int v2; // r1
    int v3; // r2

    v1 = 0;
    while ( !*sub_813B9FC(v1) )
    {
        if ( ++v1 >= 25 )
            return;
    }
    if ( *(v0 + 2) == 4 )
    {
        v2 = *sub_8136290(*(v0 + 36) + *(v0 + 32)) - 144;
        *(v0 + 26) = v2;
    }
    *(v0 + 22) = *(v0 + 2);
    *(v0 + 2) = 48;
    sound_play(131, v2, v3);
    sub_8135F88(4);
}


// 0x8136804
int __fastcall sub_8136804(int result)
{
    int v1; // r5
    __int16 *v2; // r0

    if ( result & 0x303 )
    {
        v2 = sub_8136290(*(v1 + 36) + *(v1 + 32));
        result = sub_813C334(*v2 - 144, *(v1 + 23));
        *(v1 + 23) = result;
    }
    return result;
}


// 0x813686c
void __noreturn sub_813686C()
{
    int v0; // r5
    _DWORD *v1; // r10
    _BYTE *v2; // r0
    int v3; // r0
    _BYTE *v4; // r0

    *(v0 + 3) = 0;
    *(v0 + 18) = 8;
    *(v0 + 28) = 10;
    sub_80465A0(byte_8136828);
    v2 = v1[7];
    v2[9] = 39;
    v2[10] = 55;
    v2[11] = 63;
    v3 = v1[2];
    *(v3 + 24) = *&byte_81368C8[4 * *(v0 + 15)];
    *(v3 + 26) = 0;
    v4 = v1[oToolkit_RenderInfoPtr];
    *v4 = 72;
    v4[2] = 12;
    v4[3] = 16;
    v4[1] = 55;
    sub_8136B58(0);
}


// 0x81368d4
int sub_81368D4()
{
    int v0; // r5

    return (*(&off_81368E8 + *(v0 + 3)))();
}


// 0x813691c
int sub_813691C()
{
    int v0; // r5
    int v1; // r0
    unsigned int v2; // r2
    unsigned int v3; // r4
    int v4; // r0
    char v5; // zf
    _WORD *v6; // r0

    v1 = *(v0 + 18) + 1;
    *(v0 + 18) = v1;
    if ( v1 >= 20 )
    {
        v2 = *(v0 + 3);
        *(v0 + 3) = v2 + 4;
        *(v0 + 18) = 0;
        if ( !byte_81369A0[7 * *(v0 + 15) + (v2 >> 2)] )
        {
            v3 = 0;
            v4 = sub_813B9B4((*(v0 + 3) - 4) >> 2, 3);
            if ( v5 || (v6 = sub_813B9FC(v4 - 1), v3 = *v6, *v6) )
            {
                *(v0 + 28) = v3 >> 2;
                sub_8046696(11);
                sub_80465A0(byte_8136834);
                if ( *(v0 + 3) >= byte_81369B5[*(v0 + 15)] )
                    sub_8136B58(1);
            }
        }
    }
    *(v0 + 19) = 0;
    return sub_8136B10(1);
}


// 0x81369b8
int sub_81369B8()
{
    int v0; // r5

    *(v0 + 3) = 32;
    *(v0 + 18) = 0;
    sub_813BBD4();
    return sub_8136B10(1);
}


// 0x81369d0
int sub_81369D0()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2

    v1 = *(v0 + 18) + 1;
    *(v0 + 18) = v1;
    if ( v1 >= 80 )
    {
        sub_813C3AC();
        *(v0 + 28) = 11;
        sub_8046696(11);
        sub_80465A0(byte_813683C);
        *(v0 + 3) = 48;
        *(v0 + 21) = 0;
        sound_play(116, v2, v3);
    }
    return sub_8136B10(2);
}


// 0x8136a0c
int sub_8136A0C()
{
    _BYTE *v0; // r5
    _DWORD *v1; // r10
    int v2; // r1
    unsigned __int8 v3; // vf
    _BYTE *v4; // r0
    int v5; // r0
    _BYTE *v6; // r0
    int result; // r0

    v2 = v0[18];
    *(v1[oToolkit_RenderInfoPtr] + 2) = v0[18] >> 2;
    v3 = __OFSUB__(v2--, 1);
    v0[18] = v2;
    if ( (v2 < 0) ^ v3 )
    {
        v0[3] = 40;
        v0[18] = 0;
        v4 = v1[oToolkit_RenderInfoPtr];
        *v4 = 0;
        v4[2] = 0;
        v4[3] = 0;
        v4[1] = 0;
        v5 = v1[2];
        *(v5 + 24) = 0;
        *(v5 + 26) = 0;
        v6 = v1[7];
        v6[9] = 47;
        v6[10] = 63;
        v6[11] = 63;
        sub_8136B74();
    }
    sub_8136B10(3);
    result = 0;
    v0[19] = 0;
    return result;
}


// 0x8136a74
int sub_8136A74()
{
    _BYTE *v0; // r5
    int v1; // r0
    int result; // r0

    v1 = v0[18] + 1;
    v0[18] = v1;
    if ( v1 >= 32 )
    {
        if ( *v0 != 40 )
            sub_8135F88(1);
        v0[3] = 44;
        sub_813C1C0(0);
        v0[18] = 0;
    }
    result = 0;
    v0[19] = 0;
    return result;
}


// 0x8136aa0
int sub_8136AA0()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    if ( *v0 == 40 )
    {
LABEL_7:
        v0[1] = 8;
        v0[2] = 0;
        v0[3] = 0;
        engine_setScreeneffect(12, 16);
        return chatbox_8040818();
    }
    result = chatbox_8045F3C(128);
    if ( !v2 )
    {
        result = chatbox_8045F3C(32);
        if ( !v2 )
        {
            sub_813BAA8();
            chatbox_8045F4C();
            if ( !v2 )
            {
                chatbox_8040818();
                sub_8136BDC();
            }
            goto LABEL_7;
        }
    }
    return result;
}


// 0x8136ae8
unsigned int sub_8136AE8()
{
    _BYTE *v0; // r5
    int v1; // r10

    if ( *(*(v1 + oToolkit_JoypadPtr) + 4) & 3 )
    {
        v0[3] = 36;
        v0[18] = 48;
    }
    v0[19] = 0;
    sub_8136B48(1);
    return sub_8136BE8();
}


// 0x8136b10
int __fastcall sub_8136B10(__int16 a1)
{
    int v1; // r5
    int v2; // r10
    int v3; // r7
    int v4; // r6
    signed int v5; // r4
    int result; // r0

    *(*(v2 + oToolkit_RenderInfoPtr) + 24) -= a1;
    v3 = (**(v2 + oToolkit_CurFramePtr) & 8u) >> 3;
    v4 = 0;
    v5 = *(v1 + 3) >> 2;
    if ( v5 >= 7 )
        v5 = 7;
    do
        result = sub_813C06C(v4++, 3, v3);
    while ( v4 < v5 );
    return result;
}


// 0x8136b48
__int16 __fastcall sub_8136B48(__int16 result)
{
    int v1; // r10

    *(*(v1 + oToolkit_RenderInfoPtr) + 24) -= result;
    return result;
}


// 0x8136b58
void __fastcall __noreturn sub_8136B58(int a1)
{
    int v1; // r5
    int v2; // r1
    int v3; // r3

    v2 = *(&dword_8136B9C + *(v1 + 15));
    v3 = *(&off_8136B90 + a1);
    copyTiles();
    JUMPOUT(locret_8136B72);
}


// 0x8136b74
void __noreturn sub_8136B74()
{
    int v0; // r5

    sub_80018D0(0, *(&dword_8136B9C + *(v0 + 15)), 3, 0);
    JUMPOUT(locret_8136B8A);
}


// 0x8136ba0
void __fastcall __noreturn sub_8136BA0(int a1)
{
    render_graphicalText_8045F8C(&unk_201D280, a1, byte_201B200, 100710400);
    JUMPOUT(loc_8136BB6);
}


// 0x8136bdc
void __noreturn sub_8136BDC()
{
    int v0; // r5

    *(v0 + 2) = 4;
    sub_8135F18();
}


// 0x8136be8
unsigned int sub_8136BE8()
{
    _BYTE *v0; // r5
    unsigned int result; // r0

    if ( *v0 != 40 || (result = byte_2009390[0], byte_2009390[0] < 132) )
    {
        result = sub_811FAF4(14155920, 0x10102u, v0[21], byte_8136844);
        v0[21] = result;
    }
    return result;
}


// 0x8136c24
int sub_8136C24()
{
    char v0; // ST00_1
    char v1; // ST04_1
    char v2; // ST0C_1
    __int16 v3; // ST10_2
    char v4; // ST14_1
    char v5; // ST18_1
    char v6; // ST1C_1
    char v7; // ST20_1
    char v8; // ST24_1
    char v9; // ST28_1
    __int16 v10; // ST2C_2
    char v11; // ST30_1
    char v12; // ST34_1
    char v13; // ST38_1
    char v14; // ST3C_1
    char v15; // ST40_1
    char v16; // ST44_1

    v0 = sub_80137B6(0);
    v1 = sub_80137B6(0);
    v2 = sub_80137B6(0);
    v3 = sub_80137FE(0);
    v4 = sub_80137B6(0);
    v5 = sub_80137B6(0);
    v6 = sub_80137B6(0);
    v7 = sub_80137B6(0);
    v8 = sub_80137B6(0);
    v9 = sub_80137B6(0);
    v10 = sub_80137FE(0);
    v11 = sub_80137B6(0);
    v12 = sub_80137B6(0);
    v13 = sub_80137B6(0);
    v14 = sub_80137B6(0);
    v15 = sub_80137B6(0);
    v16 = sub_80137B6(0);
    navicust_8014018(0);
    init_8013B4E();
    navicust_801379E(0, 14, v0);
    navicust_801379E(0, 33, v1);
    navicust_801379E(0, 34, v2);
    sub_80137E6(0, 62, v3);
    navicust_801379E(0, 44, v4);
    navicust_801379E(0, 45, v5);
    navicust_801379E(0, 46, v6);
    navicust_801379E(0, 47, v7);
    navicust_801379E(0, 48, v8);
    navicust_801379E(0, 9, v9);
    sub_80137E6(0, 64, v10);
    navicust_801379E(0, 86, v11);
    navicust_801379E(0, 87, v12);
    navicust_801379E(0, 88, v13);
    navicust_801379E(0, 89, v14);
    navicust_801379E(0, 90, v15);
    return navicust_801379E(0, 91, v16);
}


// 0x8136d8c
_BYTE *sub_8136D8C()
{
    int v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    SetEventFlagFromImmediate(0, 244);
    SetEventFlagFromImmediate(0, 242);
    ZeroFillByByte(byte_2009390, 16);
    decompAndCopyData(&off_8136EC8);
    sub_811F6C0(v1, v2, v3, v4);
    **(v0 + 52) = 40;
    return sub_8005524();
}


// 0x8136dc8
void sub_8136DC8()
{
    CopyWords(byte_86A5D20, &unk_30019A0, 0x20u);
}


// 0x8136de0
int sub_8136DE0()
{
    int v0; // r10
    int v1; // r7
    __int16 *v2; // r1
    int v3; // r5
    _WORD *v4; // r1
    int result; // r0

    v1 = *(v0 + 52);
    v2 = *(v0 + 4);
    word_2009398 = *v2;
    word_200939A = v2[1];
    *byte_200939C = v2[2];
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    (*(&off_8136E2C + byte_2009390[0]))();
    v3 = *(v0 + 52);
    sub_81356D4();
    v4 = *(v0 + 4);
    *v4 = word_2009398;
    v4[1] = word_200939A;
    result = *byte_200939C;
    v4[2] = *byte_200939C;
    return result;
}


// 0x8136ee4
int sub_8136EE4()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 14) + 1;
    *(v0 + 14) = result;
    if ( result >= 20 )
    {
        result = 4;
        *v0 = 4;
    }
    return result;
}


// 0x8136ef8
signed int sub_8136EF8()
{
    _BYTE *v0; // r5
    signed int result; // r0

    sub_81375D8();
    sub_81376A8(0);
    result = 8;
    *v0 = 8;
    return result;
}


// 0x8136f0c
int sub_8136F0C()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(0, 238);
    if ( !v1 )
        sub_81375F4(72, 64, 0);
    return result;
}


// 0x8136f40
int sub_8136F40()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(0, 238);
    if ( !v1 )
        sub_81375F4(122, 48, 1);
    return result;
}


// 0x8136f74
int sub_8136F74()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(0, 238);
    if ( !v1 )
        sub_81375F4(72, 97, 0);
    return result;
}


// 0x8136fa4
int sub_8136FA4()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        v0[4] = 0;
        result = 24;
        *v0 = 24;
    }
    return result;
}


// 0x8136fb8
int sub_8136FB8()
{
    _BYTE *v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // zf
    int v4; // r0

    sub_8137670(&dword_3F8);
    result = sub_8137648(0, 10);
    if ( !v3 )
    {
        result = *(v1 + 2);
        if ( result == 4 )
        {
            v4 = *(v1 + 32);
            if ( v4 == 1 || v4 == 2 )
            {
                sub_8137670(0);
                sub_81376A8(10);
                result = 28;
                *v0 = 28;
            }
            else if ( v4 == 3 )
            {
                sub_8137670(0);
                sub_81376A8(11);
                result = 28;
                *v0 = 28;
            }
            else
            {
                sub_8137670(1);
                result = 32;
                *v0 = 32;
            }
        }
    }
    return result;
}


// 0x8137018
int sub_8137018()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 24;
        *v0 = 24;
    }
    return result;
}


// 0x8137028
int sub_8137028()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // zf

    sub_8137670(&dword_3F8);
    result = *(v1 + 2);
    if ( result == 20 )
    {
        result = *(v1 + 13);
        if ( !*(v1 + 13) )
        {
            result = sub_8137648(0, 10);
            if ( !v3 )
            {
                sub_813BFB8(&dword_34, *(v1 + 40), *(v1 + 44));
                if ( v3 )
                {
                    sub_813BF60(&dword_34, *(v1 + 40), *(v1 + 44));
                    if ( !v3 )
                    {
                        *(v0 + 5) = *(v1 + 40);
                        *(v0 + 6) = *(v1 + 44);
                        sub_8137670(1);
                        *(v0 + 14) = 0;
                        result = 40;
                        *v0 = 40;
                        return result;
                    }
                    sub_81376A8(12);
                }
                else
                {
                    sub_81376A8(13);
                }
                sub_8137670(0);
                result = 36;
                *v0 = 36;
            }
        }
    }
    return result;
}


// 0x813709c
int sub_813709C()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 32;
        *v0 = 32;
    }
    return result;
}


// 0x81370ac
int sub_81370AC()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 14) + 1;
    *(v0 + 14) = result;
    if ( result >= 20 )
    {
        sub_81376A8(15);
        result = 44;
        *v0 = 44;
    }
    return result;
}


// 0x81370c4
int sub_81370C4()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 48;
        *v0 = 48;
    }
    return result;
}


// 0x81370d4
int sub_81370D4()
{
    _BYTE *v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // zf
    int v4; // r0

    sub_8137670(&dword_3F8);
    result = *(v1 + 13);
    if ( !*(v1 + 13) )
    {
        result = sub_8137648(0, 10);
        if ( !v3 )
        {
            if ( *(v1 + 2) == 4 )
            {
                v4 = *(v1 + 32);
                if ( v4 == 1 )
                {
                    sub_8137670(0);
                    sub_81376A8(16);
                    result = 52;
                    *v0 = 52;
                }
                else if ( v4 == 2 )
                {
                    sub_8137670(0);
                    sub_81376A8(17);
                    result = 52;
                    *v0 = 52;
                }
                else
                {
                    sub_8137670(1);
                    sub_81376A8(20);
                    sub_81375D8();
                    result = 56;
                    *v0 = 56;
                }
            }
            else
            {
                result = *(v1 + 2);
                if ( result == 8 )
                {
                    result = sub_813B9B4(*(v1 + 40), *(v1 + 44));
                    if ( !v3 )
                    {
                        sub_81376A8(18);
                        *v0 = 52;
                        result = sub_8137670(0);
                    }
                }
            }
        }
    }
    return result;
}


// 0x8137160
int sub_8137160()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 48;
        *v0 = 48;
    }
    return result;
}


// 0x8137170
int sub_8137170()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(0, 238);
    if ( !v1 )
        sub_81375F4(64, 64, 0);
    return result;
}


// 0x81371a0
int sub_81371A0()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 64;
        *v0 = 64;
    }
    return result;
}


// 0x81371b0
int sub_81371B0()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // zf

    sub_8137670(&dword_3F8);
    result = *(v1 + 13);
    if ( !*(v1 + 13) )
    {
        result = sub_8137648(0, 10);
        if ( !v3 )
        {
            sub_813BB68(&word_8C, *(v1 + 68), *(v1 + 40), *(v1 + 44));
            if ( !v3 )
            {
                sub_81376A8(23);
                result = 68;
                *v0 = 68;
                return result;
            }
            sub_813BFB8(&word_8C, *(v1 + 40), *(v1 + 44));
            if ( !v3 )
            {
                sub_81376A8(24);
LABEL_9:
                sub_8137670(0);
                result = 68;
                *v0 = 68;
                return result;
            }
            sub_813BF60(&word_8C, *(v1 + 40), *(v1 + 44));
            if ( !v3 )
            {
                sub_81376A8(22);
                goto LABEL_9;
            }
            sub_8137670(1);
            *(v0 + 14) = 0;
            result = 72;
            *v0 = 72;
        }
    }
    return result;
}


// 0x8137234
int sub_8137234()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 64;
        *v0 = 64;
    }
    return result;
}


// 0x8137244
int sub_8137244()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 14) + 1;
    *(v0 + 14) = result;
    if ( result >= 20 )
    {
        sub_81376A8(25);
        result = 76;
        *v0 = 76;
    }
    return result;
}


// 0x813725c
int sub_813725C()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 80;
        *v0 = 80;
    }
    return result;
}


// 0x813726c
int sub_813726C()
{
    _BYTE *v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // zf

    sub_8137670(&dword_3F8);
    result = *(v1 + 13);
    if ( !*(v1 + 13) )
    {
        result = sub_8137648(0, 10);
        if ( !v3 )
        {
            if ( *(v1 + 2) == 4 )
            {
                if ( *(v1 + 32) == 1 )
                {
                    sub_8137670(0);
                    sub_81376A8(26);
                    result = 84;
                    *v0 = 84;
                }
                else
                {
                    sub_8137670(1);
                    sub_81376A8(28);
                    sub_81375D8();
                    result = 88;
                    *v0 = 88;
                }
            }
            else
            {
                result = *(v1 + 2);
                if ( result == 8 )
                {
                    result = sub_813B9B4(*(v1 + 40), *(v1 + 44));
                    if ( !v3 )
                    {
                        sub_81376A8(27);
                        *v0 = 84;
                        result = sub_8137670(0);
                    }
                }
            }
        }
    }
    return result;
}


// 0x81372e4
int sub_81372E4()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 80;
        *v0 = 80;
    }
    return result;
}


// 0x81372f4
int sub_81372F4()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = TestEventFlagFromImmediate(0, 238);
    if ( !v2 )
        sub_81375F4(20 * *(v0 + 5) + 4, 20 * *(v0 + 6) + 26, 1);
    return result;
}


// 0x8137334
int sub_8137334()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(0, 238);
    if ( !v1 )
        sub_81375F4(72, 82, 0);
    return result;
}


// 0x8137368
int sub_8137368()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 100;
        *v0 = 100;
    }
    return result;
}


// 0x8137378
int sub_8137378()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // zf
    int v4; // r1
    int v5; // r1
    int v6; // r1
    int v7; // r1

    sub_8137670(&dword_3F8);
    result = *(v1 + 13);
    if ( !*(v1 + 13) )
    {
        result = sub_8137648(0, 10);
        if ( !v3 )
        {
            sub_813BB68(&loc_90, *(v1 + 68), *(v1 + 40), *(v1 + 44));
            if ( !v3 )
            {
                sub_81376A8(32);
                sub_8137670(0);
                result = 104;
                *v0 = 104;
                return result;
            }
            sub_813BFB8(&loc_90, *(v1 + 40), *(v1 + 44));
            if ( !v3 )
            {
                sub_81376A8(34);
LABEL_9:
                sub_8137670(0);
                result = 104;
                *v0 = 104;
                return result;
            }
            sub_813BF60(&loc_90, *(v1 + 40), *(v1 + 44));
            if ( !v3 )
            {
                sub_81376A8(31);
                goto LABEL_9;
            }
            sub_813BB68(&loc_90, *(v1 + 68), *(v1 + 40) - 1, *(v1 + 44));
            if ( (v3 || *sub_813B9FC(v4 - 1) != &dword_34)
                && ((sub_813BB68(&loc_90, *(v1 + 68), *(v1 + 40) + 1, *(v1 + 44)), v3) || *sub_813B9FC(v5 - 1) != &dword_34)
                && ((sub_813BB68(&loc_90, *(v1 + 68), *(v1 + 40), *(v1 + 44) - 1), v3) || *sub_813B9FC(v6 - 1) != &dword_34)
                && ((sub_813BB68(&loc_90, *(v1 + 68), *(v1 + 40), *(v1 + 44) + 1), v3) || *sub_813B9FC(v7 - 1) != &dword_34) )
            {
                sub_8137670(1);
                *(v0 + 14) = 0;
                result = 108;
                *v0 = 108;
            }
            else
            {
                sub_81376A8(33);
                sub_8137670(0);
                result = 104;
                *v0 = 104;
            }
        }
    }
    return result;
}


// 0x813749c
int sub_813749C()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 100;
        *v0 = 100;
    }
    return result;
}


// 0x81374ac
int sub_81374AC()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 14) + 1;
    *(v0 + 14) = result;
    if ( result >= 20 )
    {
        sub_81376A8(35);
        result = 112;
        *v0 = 112;
    }
    return result;
}


// 0x81374c4
int sub_81374C4()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 116;
        *v0 = 116;
    }
    return result;
}


// 0x81374d4
int sub_81374D4()
{
    _BYTE *v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // zf

    sub_8137670(&dword_3F8);
    result = *(v1 + 13);
    if ( !*(v1 + 13) )
    {
        result = sub_8137648(0, 10);
        if ( !v3 )
        {
            if ( *(v1 + 2) == 4 )
            {
                sub_8137670(1);
                result = 124;
                *v0 = 124;
            }
            else
            {
                result = *(v1 + 2);
                if ( result == 8 )
                {
                    result = sub_813B9B4(*(v1 + 40), *(v1 + 44));
                    if ( !v3 )
                    {
                        sub_81376A8(36);
                        *v0 = 120;
                        result = sub_8137670(0);
                    }
                }
            }
        }
    }
    return result;
}


// 0x8137528
int sub_8137528()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 116;
        *v0 = 116;
    }
    return result;
}


// 0x8137538
signed int sub_8137538()
{
    int v0; // r5
    int v1; // r7
    signed int result; // r0

    result = *(v1 + 2);
    if ( result == 44 )
    {
        result = *(v1 + 3);
        if ( result == 48 )
        {
            *(v0 + 14) = 0;
            result = 128;
            *v0 = -128;
        }
    }
    return result;
}


// 0x8137550
int sub_8137550()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 14) + 1;
    *(v0 + 14) = result;
    if ( result >= 60 )
    {
        sub_81375D8();
        sub_81376A8(37);
        result = 132;
        *v0 = -124;
    }
    return result;
}


// 0x813756c
int sub_813756C()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(0, 238);
    if ( !v1 )
        sub_81375F4(60, 32, 0);
    return result;
}


// 0x813759c
int sub_813759C()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_8045F3C(128);
    if ( v2 )
    {
        result = 140;
        *v0 = -116;
    }
    return result;
}


// 0x81375ac
signed int sub_81375AC()
{
    _BYTE *v0; // r5
    int v1; // r7
    signed int result; // r0

    result = *(v1 + 2);
    if ( result == 44 )
    {
        result = *(v1 + 3);
        if ( result == 48 )
        {
            sub_813768C(1);
            result = 144;
            *v0 = -112;
        }
    }
    return result;
}


// 0x81375cc
int sub_81375CC()
{
    _BYTE *v0; // r5
    int result; // r0

    result = *v0;
    *v0 = result;
    return result;
}


// 0x81375d8
unsigned int sub_81375D8()
{
    int v0; // r5

    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    ClearEventFlagFromImmediate(0, 238);
    return ClearEventFlagFromImmediate(0, 239);
}


// 0x81375f4
void __fastcall __noreturn sub_81375F4(int a1, int a2, int a3)
{
    (loc_8001048)(a1, a2, *&byte_813760C[4 * a3], 11840);
    JUMPOUT(locret_8137606);
}


// 0x8137618
signed int sub_8137618()
{
    int v0; // r5
    signed int v1; // r7
    int v2; // r4
    char v3; // zf

    v1 = 0;
    v2 = *(v0 + 3) + 1;
    sub_8137648(2, 8);
    if ( !v3 && v2 >= 32 || v2 > 79 )
    {
        v1 = 1;
        LOBYTE(v2) = 79;
        SetEventFlagFromImmediate(0, 239);
    }
    *(v0 + 3) = v2;
    return v1;
}


// 0x8137648
int __fastcall sub_8137648(int a1, int a2)
{
    int v2; // r5
    int result; // r0
    int v4; // r1

    result = *&byte_813765C[a1];
    v4 = *(a2 + v2);
    return result;
}


// 0x8137670
__int16 __fastcall sub_8137670(__int16 result)
{
    _WORD *v1; // r5
    int v2; // r10
    _WORD *v3; // r2

    v3 = *(v2 + oToolkit_JoypadPtr);
    *v3 = v1[4] & result;
    v3[2] = v1[6] & result;
    v3[1] = v1[5] & result;
    return result;
}


// 0x813768c
__int16 __fastcall sub_813768C(__int16 result)
{
    int v1; // r10
    _WORD *v2; // r2

    v2 = *(v1 + oToolkit_JoypadPtr);
    *v2 |= result;
    v2[2] |= result;
    v2[1] |= result;
    return result;
}


// 0x81376a8
void __fastcall sub_81376A8(int a1)
{
    chatbox_runScript(dword_86D5708, a1);
}


// 0x81376b8
int __fastcall sub_81376B8(int a1, int a2)
{
    __int16 v2; // r3
    int result; // r0

    v2 = *byte_20065B4;
    result = a1 - a2 + 2 * a2;
    *(result + 4) = *byte_20065B4;
    *byte_20065B4 = v2 - 1;
    return result;
}


// 0x81376cc
int __fastcall sub_81376CC(int a1, int a2)
{
    return *(a1 - a2 + 2 * a2 + 4);
}


// 0x81376e8
int sub_81376E8()
{
    int v0; // r10
    _WORD *v1; // r1
    int result; // r0
    int *v3; // r2
    unsigned __int8 v4; // vf

    v1 = *(v0 + oToolkit_Unk2002230_Ptr);
    result = 0;
    v3 = dword_140;
    do
    {
        v1[2] = 0;
        v1[3] = 0;
        v1[4] = 0;
        v1[5] = 0;
        v1 += 6;
        v4 = __OFSUB__(v3, 1);
        v3 = (v3 - 1);
    }
    while ( !(((v3 < 0) ^ v4) | (v3 == 0)) );
    return result;
}


// 0x8137700
signed int sub_8137700()
{
    signed int result; // r0

    result = 0x7FFF;
    *byte_20065B4 = 0x7FFF;
    return result;
}


// 0x8137718
int __fastcall sub_8137718(signed int a1)
{
    int v1; // r10
    signed int v2; // r7
    char (*v3)[60]; // r4
    signed int v4; // r6
    signed int v5; // r1
    int v6; // r0
    int v7; // r1
    char v8; // zf
    int result; // r0
    int v10; // [sp+0h] [bp-18h]

    v2 = a1;
    v3 = off_8137868[a1 & 0xF];
    v4 = 1;
    v5 = sub_81377EC(a1);
    if ( v5 == 3 )
    {
        v4 = 0;
        v5 = *(*(v1 + oToolkit_Unk2001c04_Ptr) + 5);
    }
    v10 = v5;
    sub_813781C(v2);
    if ( !sub_8137790() )
    {
        sub_8021AB4(v3, v10);
        if ( v2 >= 34 )
            sub_804A1D0(v2 & 0xF);
    }
    if ( !v4 )
    {
        v6 = *(v1 + oToolkit_Unk2001c04_Ptr);
        v7 = *(v6 + 5) + 1;
        if ( v7 <= 3 )
            *(v6 + 5) = v7;
    }
    TestEventFlagFromImmediate(1, 99);
    if ( v8 || (result = getPETNaviSelect()) == 0 )
        result = sub_8120BE4();
    return result;
}


// 0x8137790
signed int sub_8137790()
{
    int v0; // r4
    int v1; // r10
    signed int v2; // r7
    char v3; // r2

    v2 = 0;
    if ( byte_20018EE >> 4 == 1 )
    {
        v2 = 1;
        v3 = byte_20018ED;
        byte_20018ED = byte_20018EE;
        byte_20018EE = v3;
        CopyWords(*(v1 + oToolkit_S_Chip_2002178_Ptr) + 60, *(v1 + oToolkit_S_Chip_2002178_Ptr) + 120, 0x3Cu);
        sub_8021AB4(v0, 1);
        if ( sub_80137B6(0) == 1 )
            navicust_801379E(0, 45, 2);
    }
    return v2;
}


// 0x81377ec
signed int __fastcall sub_81377EC(unsigned int a1)
{
    unsigned int v1; // r0
    int v2; // r1

    v1 = a1 >> 4;
    v2 = 0;
    while ( v1 != *(&unk_20018EC + v2) >> 4 )
    {
        if ( ++v2 >= 3 )
            return 3;
    }
    return v2;
}


// 0x8137808
int sub_8137808()
{
    ZeroFillByByte(&unk_20018EC, 4);
    return sub_813781C(0);
}


// 0x813781c
signed int __fastcall sub_813781C(unsigned int a1)
{
    int v1; // r10
    unsigned int v2; // r4
    signed int result; // r0
    signed int v4; // r1
    int v5; // r7
    signed int v6; // r6
    int v7; // r0
    int v8; // r1
    signed int v9; // [sp-4h] [bp-18h]

    v2 = a1;
    result = sub_81377EC(a1);
    v4 = result;
    if ( result == 3 )
    {
        v4 = *(*(v1 + oToolkit_Unk2001c04_Ptr) + 5);
    }
    else
    {
        result = v2 >> 4;
        if ( v2 >> 4 == 2 )
        {
            v9 = v4;
            v5 = *(v1 + oToolkit_S_Chip_2002178_Ptr) + 60 * v4;
            v6 = 0;
            do
            {
                v7 = split9BitsFromBitfield_8021AE0(*(v5 + v6));
                result = sub_8021B92(v7, v8, 1);
                v6 += 2;
            }
            while ( v6 < 60 );
            v4 = v9;
        }
    }
    *(&unk_20018EC + v4) = v2;
    return result;
}


// 0x8137884
int __fastcall sub_8137884(int a1)
{
    return *(&unk_20018EC + a1);
}


// 0x8137890
int __fastcall sub_8137890(int a1)
{
    int v1; // r10

    return 60 * a1 + *(v1 + oToolkit_S_Chip_2002178_Ptr);
}


// 0x81378b4
int sub_81378B4()
{
    int v0; // r5

    return (*(&off_81378C8 + *(v0 + 1)))();
}


// 0x81378d4
void __fastcall __noreturn sub_81378D4(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_80017E0(v4, v5, v6, v7);
    sub_800183C(v8, v9, v10, v11);
    sub_80015FC(16);
    sub_8046664();
    sub_8137ACC();
}


// 0x8137964
void sub_8137964()
{
    int v0; // r5

    (*(&off_8137984 + *(v0 + 2)))();
    sub_80465BC();
    sub_80465F8();
    sub_81380E0();
    JUMPOUT(locret_813797E);
}


// 0x8137990
int sub_8137990()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = engine_isScreeneffectAnimating();
    if ( !v2 )
    {
        result = 4;
        *(v0 + 2) = 4;
    }
    return result;
}


// 0x81379a0
signed int sub_81379A0()
{
    _BYTE *v0; // r5
    int v1; // r10
    char v2; // zf
    int v3; // r1
    int v4; // r2
    signed int result; // r0
    int v6; // r1
    int v7; // r2
    signed int v8; // r1
    int v9; // r1
    int v10; // r2
    int v11; // r3

    TestEventFlagFromImmediate(23, 16);
    if ( v2 )
    {
        sub_811F7EC();
        if ( !v2 )
        {
            if ( !sub_8138170() )
            {
                sound_play(129, v3, v4);
                result = 8;
                v0[2] = 8;
                return result;
            }
            sound_play(105, v3, v4);
        }
    }
    sub_811F7EC();
    if ( v2 )
    {
        v8 = v0[30];
        if ( v8 >= 7 )
            v8 = 7;
        result = sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), v8, 0, 0);
        if ( result )
            sub_8137D20(result, v9, v10, v11);
    }
    else
    {
        v0[1] = 8;
        v0[2] = 0;
        sound_play(131, v6, v7);
        result = engine_setScreeneffect(12, 16);
    }
    return result;
}


// 0x8137a1c
int sub_8137A1C()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0
    int v4; // r1

    result = chatbox_8045F3C(128);
    if ( !v2 )
    {
        chatbox_8045F3C(8);
        if ( v2 )
        {
            result = chatbox_8045F3C(32);
            if ( v2 )
                return result;
            if ( chatbox_8045F4C() )
            {
                v3 = byte_201CF00[2 * (*(v0 + 32) + *(v0 + 36)) + 1];
                v4 = *(&unk_2000260 + v3);
                *(&unk_20018C0 + v3) = v4;
                sub_8137D20(v3, v4, &unk_2000260, &unk_20018C0);
            }
        }
        chatbox_8040818();
        result = 4;
        *(v0 + 2) = 4;
    }
    return result;
}


// 0x8137a7c
signed int sub_8137A7C()
{
    _BYTE *v0; // r5
    int v1; // r10
    char v2; // zf
    int v3; // r2
    int v4; // r3

    sub_80465BC();
    sub_80465F8();
    sub_81380E0();
    engine_isScreeneffectAnimating();
    if ( !v2 )
    {
        chatbox_8040818();
        chatbox_8045F2C(64);
        ClearEventFlagRangeFromImmediate(0, 191, 19);
        TestEventFlagFromImmediate(23, 16);
        if ( !v2 )
        {
            ClearEventFlagFromImmediate(23, 16);
            return 1;
        }
        ZeroFillByWord(*(v1 + oToolkit_SubmenuPtr), 0x80u, v3, v4);
        *v0 = 12;
    }
    return 0;
}


// 0x8137acc
void __noreturn sub_8137ACC()
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
        v2 = *(&off_8137B6C + v1);
        v3 = v1 + 4;
        v4 = *(&off_8137B6C + v3);
        v1 = v3 + 4;
        *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
        v0 += 4;
        v5 = 0;
        do
        {
            *(&unk_20096E0 + v0) = *(&off_8137B6C + v1);
            v0 += 4;
            v1 += 4;
            ++v5;
        }
        while ( v5 < 2 );
    }
    while ( v1 < 48 );
    *(&unk_20096E0 + v0) = 0;
    decompAndCopyData(&unk_20096E0);
    decompAndCopyData(&off_8137BA4);
    sub_8123300(&off_8137B2C, byte_201BF00, decomp_2013A00);
    copyTiles();
    JUMPOUT(locret_8137B24);
}


// 0x8137bf0
int __fastcall sub_8137BF0(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    unsigned int v5; // r6
    int v6; // r7
    char v7; // zf

    ZeroFillByWord(byte_201CF00, 0x24u, a3, a4);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
        TestEventFlag(*&byte_8137C4C[v5]);
        if ( !v7 || (TestEventFlag(*&byte_8137C9C[v5]), !v7) )
        {
            byte_201CF00[v6] = *&byte_8137CE8[v5 >> 1];
            byte_201CF00[v6 + 1] = byte_8137D0C[v5 >> 2];
            ++v4;
            v6 += 2;
        }
        v5 += 4;
    }
    while ( v5 < 72 );
    return v4;
}


// 0x8137d20
void __fastcall __noreturn sub_8137D20(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    ZeroFillByHalfword(byte_2017A00, 0xE0u, a3, a4);
    sub_8137D50(*(v4 + 36), byte_201CF00, byte_2017A00);
    sub_8137DA4();
}


// 0x8137d50
int *__fastcall sub_8137D50(int a1, int a2, _WORD *a3)
{
    _BYTE *v3; // r5
    _WORD *v4; // r3
    signed int v5; // r4
    int *result; // r0

    v3 = (2 * a1 + a2);
    v4 = a3 + 8;
    v5 = 0;
    do
    {
        result = dword_86F0D7C;
        if ( *v3 )
            result = sub_81202B4(dword_86F0D7C + *(dword_86F0D7C + *v3), *(dword_86F0D7C + *v3), a3, v4);
        v3 += 2;
        a3 += 8;
        v4 += 8;
        ++v5;
    }
    while ( v5 < 7 );
    return result;
}


// 0x8137da4
void __noreturn sub_8137DA4()
{
    copyTiles();
    JUMPOUT(locret_8137DB2);
}


// 0x8137db4
void __fastcall __noreturn sub_8137DB4(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    ZeroFillByHalfword(&unk_2017AE0, 0xE0u, a3, a4);
    sub_8137DE4(*(v4 + 36), byte_201CF00, &unk_2017AE0, 7);
    sub_8137E3C();
}


// 0x8137de4
_WORD *__fastcall sub_8137DE4(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    _BYTE *v5; // r5
    signed int v6; // r4
    int v7; // r0
    _WORD *result; // r0
    unsigned int v9; // [sp+0h] [bp-20h]
    _WORD *v10; // [sp+4h] [bp-1Ch]
    _WORD *v11; // [sp+8h] [bp-18h]

    v9 = (a4 << 12) | byte_200;
    v10 = a3;
    v4 = 2 * a1;
    v5 = (2 * a1 + a2);
    v11 = (a3 + 14);
    v6 = 0;
    do
    {
        if ( *v5 )
        {
            v7 = sub_8137EF0(v4, &unk_2000260);
            sub_8137F08(v9, v10, v11, v7);
        }
        v5 += 2;
        v10 += 14;
        result = v11 + 14;
        v11 += 14;
        ++v6;
        v4 += 2;
    }
    while ( v6 < 7 );
    return result;
}


// 0x8137e3c
void __noreturn sub_8137E3C()
{
    copyTiles();
    JUMPOUT(locret_8137E4A);
}


// 0x8137e4c
void __fastcall __noreturn sub_8137E4C(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    ZeroFillByHalfword(&unk_2017BA4, 0xE0u, a3, a4);
    sub_8137E7C(*(v4 + 36), byte_201CF00, &unk_2017BA4, 7);
    sub_8137EE0();
}


// 0x8137e7c
_WORD *__fastcall sub_8137E7C(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r7
    _BYTE *v6; // r5
    signed int v7; // r4
    __int16 v8; // r0
    signed int v9; // r3
    _WORD *result; // r0
    int v11; // [sp+0h] [bp-24h]
    _WORD *v12; // [sp+4h] [bp-20h]
    _WORD *v13; // [sp+8h] [bp-1Ch]
    int v14; // [sp+Ch] [bp-18h]

    v11 = (a4 << 12) | byte_200;
    v14 = (v4 << 12) | byte_200;
    v12 = a3;
    v5 = 2 * a1;
    v6 = (2 * a1 + a2);
    v13 = (a3 + 14);
    v7 = 0;
    do
    {
        if ( *v6 )
        {
            sub_8137EF0(v5, &unk_20018C0);
            v8 = sub_8138210(v11, v14, v5);
            sub_8137F08(v8, v12, v13, v9);
        }
        v6 += 2;
        v12 += 14;
        result = v13 + 14;
        v13 += 14;
        ++v7;
        v5 += 2;
    }
    while ( v7 < 7 );
    return result;
}


// 0x8137ee0
void __noreturn sub_8137EE0()
{
    copyTiles();
    JUMPOUT(locret_8137EEE);
}


// 0x8137ef0
int __fastcall sub_8137EF0(int a1, int a2)
{
    return sub_8000D84(*(a2 + byte_201CF00[a1 + 1]));
}


// 0x8137f08
signed int __fastcall sub_8137F08(__int16 a1, _WORD *a2, _WORD *a3, signed int a4)
{
    __int16 v4; // r6
    _WORD *v5; // r3
    _WORD *v6; // r2
    signed int result; // r0
    signed int v8; // r7
    int v9; // r1
    __int16 v10; // r1
    signed int v11; // [sp+0h] [bp-18h]

    v11 = a4;
    v4 = a1;
    v5 = a3;
    v6 = a2;
    result = 16;
    v8 = 0;
    do
    {
        if ( v8 == 1 )
        {
            LOWORD(v9) = 155;
        }
        else if ( v8 == 4 )
        {
            LOWORD(v9) = 155;
        }
        else if ( v11 <= 612761 )
        {
            v9 = ((v11 >> result) & 0xF) + 1;
            result -= 4;
        }
        else
        {
            LOWORD(v9) = 152;
        }
        v10 = 2 * v9;
        *v6 = v4 + v10;
        *v5 = v4 + v10 + 1;
        ++v6;
        ++v5;
        ++v8;
    }
    while ( v8 < 7 );
    return result;
}


// 0x8137f5c
void __fastcall __noreturn sub_8137F5C(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    ZeroFillByHalfword(&unk_2017C68, 0x54u, a3, a4);
    sub_8137F8C(*(v4 + 36), byte_201CF00, &unk_2017C68, 7);
    sub_813808C();
}


// 0x8137f8c
_WORD *__fastcall sub_8137F8C(int a1, int a2, int a3, int a4)
{
    _BYTE *v4; // r5
    signed int v5; // r4
    signed int v6; // r0
    _WORD *result; // r0
    unsigned int v8; // [sp+0h] [bp-20h]
    _WORD *v9; // [sp+4h] [bp-1Ch]
    _WORD *v10; // [sp+8h] [bp-18h]

    v8 = (a4 << 12) | byte_200;
    v9 = a3;
    v4 = (2 * a1 + a2);
    v10 = (a3 + 6);
    v5 = 0;
    do
    {
        if ( *v4 )
        {
            v6 = sub_813802C(2 * v4[1]);
            sub_8137FDC(v8, v9, v10, v6);
        }
        v4 += 2;
        v9 += 6;
        result = v10 + 6;
        v10 += 6;
        ++v5;
    }
    while ( v5 < 7 );
    return result;
}


// 0x8137fdc
signed int __fastcall sub_8137FDC(__int16 a1, _WORD *a2, _WORD *a3, unsigned int a4)
{
    __int16 v4; // r6
    _WORD *v5; // r3
    _WORD *v6; // r2
    signed int result; // r0
    signed int v8; // r7
    int v9; // r1
    __int16 v10; // r1
    unsigned int v11; // [sp+0h] [bp-1Ch]
    int v12; // [sp+4h] [bp-18h]

    v11 = a4;
    v4 = a1;
    v5 = a3;
    v6 = a2;
    v12 = 0;
    result = 8;
    v8 = 0;
    do
    {
        v9 = ((v11 >> result) & 0xF) + 1;
        if ( v9 != 1 || v12 )
            v12 = ((v11 >> result) & 0xF) + 1;
        else
            LOWORD(v9) = 0;
        result -= 4;
        v10 = 2 * v9;
        *v6 = v4 + v10;
        *v5 = v4 + v10 + 1;
        ++v6;
        ++v5;
        ++v8;
    }
    while ( v8 < 3 );
    return result;
}


// 0x813802c
signed int __fastcall sub_813802C(int a1)
{
    int v1; // r0

    v1 = sub_8010C76(*&byte_8138040[a1]);
    return sub_8000C00(v1);
}


// 0x813808c
void __noreturn sub_813808C()
{
    copyTiles();
    JUMPOUT(locret_813809A);
}


// 0x813809c
void sub_813809C()
{
    int v0; // r5

    if ( !*(v0 + 36) )
        JUMPOUT(&locret_81380D0);
    JUMPOUT(&loc_81380C8);
}


// 0x81380b0
int sub_81380B0()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 36) + 7;
    if ( result < *(v0 + 30) )
        result = sub_8138104(128, 144, 0, 14);
    return result;
}


// 0x81380e0
int sub_81380E0()
{
    sub_813809C();
    sub_81380B0();
    return sub_8138104(4, 32, 32, 12);
}


// 0x8138104
int __fastcall sub_8138104(int a1, int a2, int a3, int a4)
{
    int *v4; // r4
    int v5; // r5
    unsigned __int8 *v6; // r7
    int v7; // r0
    int v8; // r2
    unsigned int v9; // ST14_4
    int v10; // r0
    int v11; // r1
    int result; // r0
    int v13; // [sp+8h] [bp-1Ch]

    v13 = a4;
    v7 = a1 << 16;
    if ( a3 )
        v8 = *(v5 + a3);
    else
        v8 = 0;
    v9 = *(v5 + a4);
    v10 = sub_811FAF4(v7 | (a2 + 16 * v8), 0x20002u, v9 & 0xF, v4);
    v11 = (v9 >> 4) - 1;
    if ( v9 >> 4 == 1 )
        *(v5 + v13) = sub_8120CC8(v10, v6);
    result = *(v5 + v13) & 0xF | 16 * v11;
    *(v5 + v13) = result;
    return result;
}


// 0x8138170
signed int sub_8138170()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r1
    signed int v4; // r5
    int v5; // r0
    int v6; // r7
    signed int v7; // r6
    unsigned int v8; // r0
    _DWORD *v9; // r4

    v2 = *(v0 + 36);
    v3 = *(v0 + 32);
    v4 = 1;
    v5 = byte_201CF00[2 * (v2 + v3) + 1];
    v6 = 2;
    v7 = *(&unk_20018C0 + v5);
    if ( *(&unk_2000260 + v5) <= v7 )
    {
        v6 = 0;
        v7 = *(&unk_2000260 + v5);
    }
    v8 = sub_8000D84(v7);
    if ( v8 <= 612761 )
    {
        v9 = *(v1 + oToolkit_ChatboxPtr);
        v9[19] = 10 * (BYTE2(v8) >> 4) + ((v8 >> 16) & 0xF);
        v9[20] = 10 * (v8 >> 12) + ((v8 >> 8) & 0xF);
        v9[21] = 10 * (v8 >> 4) + (v8 & 0xF);
        chatbox_803FD78(byte_201BF00, v6);
        v4 = 0;
    }
    return v4;
}


// 0x8138210
int __fastcall sub_8138210(int a1, int a2, int a3)
{
    int v3; // r7
    unsigned int v4; // r0
    char v5; // zf
    int v7; // [sp+0h] [bp-1Ch]

    v3 = a1;
    v7 = a2;
    v4 = *&byte_8138240[2 * byte_201CF00[a3 + 1]];
    if ( v4 )
    {
        TestEventFlag(v4);
        if ( !v5 )
            v3 = v7;
    }
    return v3;
}


// 0x8138294
signed int sub_8138294()
{
    _BYTE **v0; // r10
    void *v1; // r0
    int v2; // r2
    int v3; // r3
    signed int result; // r0

    v1 = sub_8138750();
    ZeroFillByWord(v1, 0x24u, v2, v3);
    result = 56;
    **v0 = 56;
    return result;
}


// 0x81382ac
int cb_81382AC()
{
    unsigned __int8 *v0; // r5

    v0 = sub_8138750();
    return (*(&off_81382C4 + *v0))();
}


// 0x81382d0
void __fastcall __noreturn sub_81382D0(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3
    int v12; // r0
    int v13; // r1
    int v14; // r2
    int v15; // r3

    zeroFillVRAM(a1, a2, a3, a4);
    sub_80017E0(v4, v5, v6, v7);
    sub_800183C(v8, v9, v10, v11);
    sub_81387D8(v12, v13, v14, v15);
}


// 0x8138348
int sub_8138348()
{
    _BYTE *v0; // r5
    signed int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3

    v1 = 1;
    if ( v0[9] )
        v1 = 16;
    do
    {
        (*(&off_813837C + v0[1]))();
        if ( *v0 != 4 )
            break;
        --v1;
    }
    while ( v1 );
    sub_80465BC();
    v2 = sub_80465F8();
    return sub_8138848(v2, v3, v4, v5);
}


// 0x813838c
int sub_813838C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    _WORD *v5; // r0

    v2 = *(v0 + 4);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v0 + 4) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        v5 = *(v1 + oToolkit_RenderInfoPtr);
        *v5 = 4672;
        v5[3] = 7424;
        v5[4] = 7817;
        engine_setScreeneffect(8, 4);
        *(v0 + 4) = 0;
        result = 4;
        *(v0 + 1) = 4;
    }
    return result;
}


// 0x81383c4
int sub_81383C4()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = engine_isScreeneffectAnimating();
    if ( !v2 )
    {
        engine_setScreeneffect(128, 255);
        *(v0 + 24) = &byte_8138944;
        *(v0 + 28) = byte_8138B90;
        *(v0 + 12) = 0;
        *(v0 + 1) = 8;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x81383f4
void sub_81383F4()
{
    int v0; // r5

    (*(&off_8138410 + *(v0 + 2)))();
    JUMPOUT(loc_8138402);
}


// 0x813842c
int sub_813842C()
{
    int v0; // r5
    int result; // r0

    do
        result = (*(&off_8138444 + **(v0 + 24)))();
    while ( !result );
    return result;
}


// 0x8138478
void __fastcall __noreturn sub_8138478(int a1, int a2, int a3, int a4)
{
    int v4; // r1
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    v4 = *(a4 + 1);
    sub_8045FC6();
    sub_81384AC();
    sub_8138890(v5, v6, v7, v8);
}


// 0x81384ac
void sub_81384AC()
{
    int v0; // r5

    (loc_8000AC8)(&unk_2014A00, &byte_600 * *(v0 + 13) + 100663296, &byte_600);
    JUMPOUT(locret_81384C0);
}


// 0x81384e0
signed int __fastcall sub_81384E0(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r3

    *(v4 + 4) = *(a4 + 1) << 6;
    *(v4 + 2) = 4;
    sub_81385BC();
    *(v4 + 24) = v5 + 2;
    return 1;
}


// 0x81384fc
signed int __fastcall sub_81384FC(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r3

    *(v4 + 4) = *(a4 + 1);
    *(v4 + 2) = 8;
    (loc_81385F0)();
    *(v4 + 24) = v5 + 2;
    return 1;
}


// 0x8138514
signed int sub_8138514()
{
    int v0; // r5
    int v1; // r3

    *(v0 + 1) = 12;
    sub_8138884();
    *(v0 + 24) = v1 + 1;
    return 1;
}


// 0x8138528
void __noreturn sub_8138528()
{
    sub_8138908();
}


// 0x813853c
void __fastcall __noreturn sub_813853C(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int v6; // r2
    int v7; // r0

    v6 = *(v5 + oToolkit_Unk200a220_Ptr);
    *(v6 + 8) = *(v4 + 10);
    v7 = *(v4 + 11);
    *(v6 + 12) = v7;
    sub_8138478(v7, a2, v6, a4);
}


// 0x8138550
void __fastcall __noreturn sub_8138550(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int v6; // r2
    int v7; // r0

    v6 = *(v5 + oToolkit_Unk200a220_Ptr);
    v7 = *(v4 + 14);
    *(v6 + 8) = v7;
    sub_8138478(v7, a2, v6, a4);
}


// 0x8138560
void __fastcall __noreturn sub_8138560(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int v6; // r2
    int v7; // r0

    v6 = *(v5 + oToolkit_Unk200a220_Ptr);
    v7 = *(v4 + 16);
    *(v6 + 8) = v7;
    sub_8138478(v7, a2, v6, a4);
}


// 0x8138570
void __fastcall __noreturn sub_8138570(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int v6; // r2
    int v7; // r0

    v6 = *(v5 + oToolkit_Unk200a220_Ptr);
    v7 = *(v4 + 18);
    *(v6 + 8) = v7;
    sub_8138478(v7, a2, v6, a4);
}


// 0x8138580
void sub_8138580()
{
    ;
}


// 0x8138584
int __fastcall sub_8138584(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r1

    v5 = *(a4 + 1);
    *(v4 + 24) = a4 + 2;
    engine_setScreeneffect(12, v5);
    return 0;
}


// 0x8138598
int __fastcall sub_8138598(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r1

    v5 = *(a4 + 1);
    *(v4 + 24) = a4 + 2;
    engine_setScreeneffect(8, v5);
    return 0;
}


// 0x81385ac
int __fastcall sub_81385AC(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    *(v4 + 9) = *(a4 + 1);
    *(v4 + 24) = a4 + 2;
    return 0;
}


// 0x81385bc
int sub_81385BC()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    __int16 v3; // r1

    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( !result )
    {
        result = 0;
        *(v0 + 2) = 0;
    }
    if ( !(result & 3) )
    {
        v3 = *(v0 + 12) + 1;
        *(v0 + 12) = v3;
        *(*(v1 + oToolkit_RenderInfoPtr) + 18) = v3;
    }
    if ( !*(v0 + 8) )
    {
        result &= 0x3Fu;
        if ( !result )
            sub_81388EE();
    }
    return result;
}


// 0x8138600
int sub_8138600()
{
    int v0; // r5
    int result; // r0

    do
        result = (*(&off_8138618 + **(v0 + 28)))();
    while ( !result );
    return result;
}


// 0x8138624
int __fastcall sub_8138624(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r4
    int v6; // r4
    int v8; // [sp-4h] [bp-Ch]

    v5 = *(a4 + 1);
    if ( v5 == 128 )
    {
        v8 = a4;
        engine_setScreeneffect(128, 8);
    }
    else
    {
        v6 = v5;
        v8 = a4;
        sub_80028D4(&unk_202A000, a2, a3, a4);
        sub_8002906(*(&off_8138694 + v6 * 4));
        sub_8030A60((&off_813866C)[v6]);
        engine_setScreeneffect(124, 8);
    }
    *(v4 + 28) = v8 + 2;
    return 0;
}


// 0x81386cc
signed int __fastcall sub_81386CC(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r3

    *(v4 + 6) = *(a4 + 1);
    *(v4 + 3) = 8;
    sub_81386F0();
    *(v4 + 28) = v5 + 2;
    return 1;
}


// 0x81386e4
signed int sub_81386E4()
{
    return 1;
}


// 0x81386ec
void sub_81386EC()
{
    ;
}


// 0x81386f0
int sub_81386F0()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 6) - 1;
    *(v0 + 6) = result;
    if ( !result )
    {
        result = 0;
        *(v0 + 3) = 0;
    }
    return result;
}


// 0x8138700
int sub_8138700()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    char v3; // zf

    result = engine_isScreeneffectAnimating();
    if ( !v3 )
    {
        result = *(*(v1 + oToolkit_JoypadPtr) + 2);
        if ( *(*(v1 + oToolkit_JoypadPtr) + 2) )
        {
            engine_setScreeneffect(12, 8);
            sub_800068A(31, 14);
            *(v0 + 4) = 224;
            *v0 = 8;
            result = 0;
            *(v0 + 1) = 0;
        }
    }
    return result;
}


// 0x8138730
_BYTE *sub_8138730()
{
    int v0; // r5
    _BYTE *result; // r0
    char v2; // zf

    result = (*(v0 + 4) - 1);
    *(v0 + 4) = result;
    if ( !result )
    {
        result = engine_isScreeneffectAnimating();
        if ( !v2 )
        {
            sub_8000F86(*(v0 + 32));
            sub_8138758();
            result = sub_803578C();
        }
    }
    return result;
}


// 0x8138750
void *sub_8138750()
{
    return &unk_2011CE0;
}


// 0x8138758
_WORD *sub_8138758()
{
    int v0; // r10
    _WORD *result; // r0

    result = *(v0 + oToolkit_RenderInfoPtr);
    *result = &byte_40;
    return result;
}


// 0x8138768
void __fastcall sub_8138768(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r0
    signed int v6; // r2
    unsigned __int8 v7; // vf

    ZeroFillByEightWords(100687872, 0x20u, a3, a4);
    v5 = *(v4 + oToolkit_GFX30025c0_Ptr) + 2048;
    v6 = 2046;
    do
    {
        *(v5 + v6) = 768;
        v7 = __OFSUB__(v6, 2);
        v6 -= 2;
    }
    while ( !((v6 < 0) ^ v7) );
    decompAndCopyData(&off_8138794);
}


// 0x81387d8
unsigned int __fastcall __noreturn sub_81387D8(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r1
    int v11; // r0
    int v12; // r1
    int v13; // r2
    int v14; // r3
    int v15; // r0
    int v16; // r1
    int v17; // r2
    int v18; // r3
    int v19; // r0
    int v20; // r1
    int v21; // r2
    int v22; // r3
    int v23; // r0
    int v24; // r1
    int v25; // r2
    int v26; // r3
    int v27; // r0
    int v28; // r1
    int v29; // r2
    int v30; // r3

    v5 = *(v4 + oToolkit_GameStatePtr);
    *(v5 + oGameState_Unk_20) = 0;
    v6 = sub_800260C(0, v5, a3, a4);
    sub_8005F40(v6, v7, v8, v9);
    sub_8005F6C();
    sub_80027F4();
    sub_8002668();
    sub_80303F2();
    sub_8030AA4(0, 2);
    sub_802FF4C(0, 0, 0, 208);
    sub_80301B2(0, v10);
    v11 = sub_80301DC(0, 0, 0);
    sub_80024A2(v11, v12, v13, v14);
    v19 = sub_8003962(v15, v16, v17, v18);
    v23 = sub_8003AB2(v19, v20, v21, v22);
    sub_802F0D8(v23, v24, v25, v26);
    sub_802F0F4(v27, v28, v29, v30);
    sub_8036EFE();
    sub_8036F24();
    sub_809F90C();
    return sub_80035A2(0x25u);
}


// 0x8138848
int __fastcall sub_8138848(int a1, int a2, int a3, int a4)
{
    sub_800378C(a1, a2, a3, a4);
    sub_8003BA2();
    npc_800461E();
    sub_80048D2();
    sub_80037F4();
    sub_802FFF4();
    sub_80027B4();
    sub_800286C();
    sub_8003BF4();
    sub_8003E98();
    sub_800467C();
    sub_8004298();
    sub_8004590();
    return sub_8004934();
}


// 0x8138884
unsigned int sub_8138884()
{
    return sub_80035A2(0x25u);
}


// 0x8138890
void __fastcall __noreturn sub_8138890(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r3
    int *v7; // r7
    _WORD *v8; // r4
    int v9; // [sp+0h] [bp-78h]
    int v10; // [sp+60h] [bp-18h]

    v10 = a4;
    v5 = 48 * *(v4 + 13) + 53248;
    v6 = *(a4 + 3);
    v7 = &v9;
    v8 = (&v9 + 2 * v6);
    do
    {
        *v7 = v5;
        *(v7 + 1) = v5 + 1;
        *v8 = v5 + 2;
        v8[1] = v5 + 3;
        v5 += 4;
        ++v7;
        v8 += 2;
        v6 -= 2;
    }
    while ( v6 );
    sub_80018D0(0, (*(v4 + 12) + 160) << 24 >> 27, 1, 54016);
    JUMPOUT(loc_81388DA);
}


// 0x81388ee
void __noreturn sub_81388EE()
{
    int v0; // r5

    sub_80018D0(0, (*(v0 + 12) + 160) << 24 >> 27, 1, 54016);
    JUMPOUT(locret_8138906);
}


// 0x8138908
int __noreturn sub_8138908()
{
    int v0; // r5

    sub_80018D0(0, (*(v0 + 12) + 160) << 24 >> 27, 1, 54016);
    return copyTiles();
}


