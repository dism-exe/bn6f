// 0x801fe00
void __fastcall sub_801FE00(int a1, int a2, int a3)
{
    int v3; // r2
    int v4; // r3

    *eStruct203F7D8 = 0;
    flags_2036782 = 0;
    byte_2036784 = -1;
    ZeroFillByEightWords(dword_203F4A0, byte_200, a3, &struct_2036780);
    ZeroFillByEightWords(dword_203CBE0, byte_100, v3, v4);
}


// 0x801fe24
int __fastcall sub_801FE24(int a1)
{
    int result; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char v5; // zf

    if ( sub_802D246() & 8 )
    {
        sub_803DCE8(0x10u, 0, 2u, 0);
    }
    else
    {
        result = sub_803F524();
        if ( v5 )
            return result;
        sub_803DE88(0, v2, v3, v4);
        sub_803DCE8(0x10u, 0, 2u, 5u);
    }
    result = 1;
    eStruct203F7D8[0] = 1;
    return result;
}


// 0x801fe5e
int sub_801FE5E()
{
    return eStruct203F7D8[0];
}


// 0x801fe64
int sub_801FE64()
{
    int result; // r0

    result = 0;
    eStruct203F7D8[0] = 0;
    return result;
}


// 0x801fe6c
void sub_801FE6C()
{
    char v0; // r6
    char v1; // zf

    v0 = eStruct203F7D8[1];
    eStruct203F7D8[1] = 2;
    if ( eStruct203F7D8[0] )
    {
        TestEventFlagFromImmediate(23, 45);
        if ( v1 )
        {
            if ( sub_802D246() & 8 )
                eStruct203F7D8[1] = v0;
            else
                eStruct203F7D8[1] = sub_803DEB4();
        }
        else
        {
            eStruct203F7D8[1] = v0;
            if ( v0 == 2 && sub_802D246() & 8 && (sub_8144D04(0) != 1 || sub_8144D04(3u) != 1) )
                eStruct203F7D8[1] = 4;
        }
    }
    else
    {
        CopyWords(&struct_2036780, &unk_20399F0, 0x10u);
        CopyWords(&struct_2036780, &unk_2039A00, 0x10u);
    }
}


// 0x801fee8
// () -> u8
int eStruct203F7D8_getUnk01()
{
    return eStruct203F7D8[1];
}


// 0x801feee
// (u8 a0) -> void
int __fastcall sub_801FEEE(int a1)
{
    int v1; // r7
    int v2; // r0

    v1 = a1;
    v2 = eStruct200BC30_getJumpOffset00();
    return (*(&JumpTable801FF08 + v2))(v1);
}


// 0x801ff18
// (u8 a0) -> void
int __fastcall sub_801FF18(int result)
{
    int v1; // r10
    int v2; // r6
    unsigned __int8 v3; // vf
    int v4; // r1
    int v5; // r0

    if ( result == 2 )
    {
        v2 = *(v1 + oToolkit_S2034880_Ptr);
        if ( word_20399F2 & 0xFC00 )
        {
            sub_800A0D6(0, word_20399F2);
            *(v2 + 20) = byte_20399F6;
            word_203614C = word_20399FC;
            if ( !((byte_20399F4 < 0) ^ v3) )
                dword_203F4A0[byte_20399F4] = dword_20399F8;
        }
        v4 = eStruct203F7D8[0];
        if ( !eStruct203F7D8[0] || (v4 = word_2039A02, word_2039A02 & 0xFC00) )
        {
            sub_800A0D6(1, v4);
            *(v2 + 21) = byte_2039A06;
            word_203631C = word_2039A0C;
            if ( !((byte_2039A04 < 0) ^ v3) )
                dword_203F5A0[byte_2039A04] = dword_2039A08;
        }
        flags_2036782 = **(v1 + oToolkit_JoypadPtr);
        byte_2036786 = *(*(v1 + oToolkit_S2034880_Ptr) + 17);
        word_203678C = sub_803F740(4);
        if ( !(eStruct203F7D8[2] & 1) )
            goto LABEL_16;
        result = sub_803EA2C();
        if ( result )
            return result;
        v3 = __OFSUB__(eStruct203F7D8[3], 1);
        v5 = eStruct203F7D8[3] - 1;
        --eStruct203F7D8[3];
        if ( (v5 < 0) ^ v3 )
        {
LABEL_16:
            eStruct203F7D8[2] &= 0xFEu;
            result = 255;
            byte_2036784 = -1;
        }
        else
        {
            byte_2036784 = v5;
            result = dword_203CBE0[v5];
            dword_2036788 = result;
        }
    }
    return result;
}


// 0x801ffd6
// (u8 a0) -> void
int __fastcall sub_801FFD6(int result)
{
    char *v1; // r4
    int v2; // r10
    int v3; // r6
    unsigned __int8 v4; // vf
    int v5; // r1
    int v6; // r0
    int v7; // r0
    char v8; // [sp+4h] [bp-18h]

    v8 = result;
    if ( result != 1 )
    {
        if ( !(result & 8) )
        {
            v1 = eStruct203F7D8;
            v3 = *(v2 + oToolkit_S2034880_Ptr);
            if ( word_20399F2 & 0xFC00 )
            {
                sub_800A0D6(0, word_20399F2);
                *(v3 + 20) = byte_20399F6;
                word_203614C = word_20399FC;
                result = byte_20399F4;
                if ( !((byte_20399F4 < 0) ^ v4) )
                {
                    result = 4 * byte_20399F4;
                    *(dword_203F4A0 + result) = dword_20399F8;
                }
            }
            v5 = eStruct203F7D8[0];
            if ( !eStruct203F7D8[0] || (v5 = word_2039A02, word_2039A02 & 0xFC00) )
            {
                sub_800A0D6(1, v5);
                *(v3 + 21) = byte_2039A06;
                word_203631C = word_2039A0C;
                result = byte_2039A04;
                if ( !((byte_2039A04 < 0) ^ v4) )
                {
                    result = 4 * byte_2039A04;
                    *(dword_203F5A0 + result) = dword_2039A08;
                }
            }
        }
        if ( !(v8 & 0x10) )
        {
            flags_2036782 = **(v2 + oToolkit_JoypadPtr);
            byte_2036786 = *(*(v2 + oToolkit_S2034880_Ptr) + 17);
            word_203678C = sub_803F740(4);
            if ( !(v1[2] & 1) || (v6 = v1[3], v4 = __OFSUB__(v6, 1), v7 = v6 - 1, v1[3] = v7, (v7 < 0) ^ v4) )
            {
                v1[2] &= 0xFEu;
                result = 255;
                byte_2036784 = -1;
            }
            else
            {
                byte_2036784 = v7;
                result = dword_203CBE0[v7];
                dword_2036788 = result;
            }
        }
    }
    return result;
}


// 0x80200a4
int __fastcall sub_80200A4(char a1)
{
    int result; // r0

    eStruct203F7D8[3] = a1;
    result = eStruct203F7D8[2] | 1;
    eStruct203F7D8[2] |= 1u;
    return result;
}


// 0x8020134
// () -> void
void __fastcall eStruct2038160_clearStruct(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&eStruct2038160, 4u, a3, a4);
}


// 0x8020140
int __fastcall sub_8020140(int a1)
{
    int result; // r0
    char v2; // zf

    result = sub_813D60C();
    if ( !v2 )
    {
        result = eStruct200BC30_getJumpOffset00();
        if ( result == 12 )
        {
            sub_813D66C();
            result = sub_803C620();
            eStruct2038160_BattleTerminate01 = result;
        }
    }
    return result;
}


// 0x802015e
// () -> u8
int eStruct2038160_getBattleTerminate01()
{
    return eStruct2038160_BattleTerminate01;
}


