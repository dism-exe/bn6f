// 0x8026450
int __fastcall sub_8026450(int a1, int a2, char *a3)
{
    Battle *v3; // r5
    int v4; // r6
    char *v5; // r4
    int v6; // r6
    int v7; // r0
    int v8; // r0
    int v9; // r1
    int v10; // ST00_4
    bool v11; // zf
    int result; // r0
    int v13; // [sp+0h] [bp-20h]
    int v14; // [sp+8h] [bp-18h]
    int v15; // [sp+Ch] [bp-14h]

    v13 = v4;
    v14 = a1;
    v15 = a2;
    v5 = a3;
    v6 = object_getFrontDirection(v3);
    while ( 1 )
    {
        v7 = *v5;
        if ( v7 == 127 )
            break;
        v8 = v7 * v6 + v14;
        if ( v8 >= 0 && v8 <= 6 && v8 * v6 <= v13 * v6 )
        {
            v9 = v5[1] + v15;
            if ( v9 >= 0 && v9 <= 3 )
            {
                v10 = v8;
                v11 = sub_800E680(v8, v9) == 0;
                result = v10;
                if ( !v11 )
                    return result;
            }
        }
        v5 += 2;
    }
    return 0;
}


// 0x80264a8
int __fastcall sub_80264A8(int a1, int a2, char *a3)
{
    Battle *v3; // r5
    int v4; // r6
    char *v5; // r4
    int v6; // r6
    int v7; // r0
    int v8; // r0
    int v9; // r1
    int v11; // [sp-8h] [bp-28h]
    int v12; // [sp-4h] [bp-24h]
    int v13; // [sp+0h] [bp-20h]
    int v14; // [sp+8h] [bp-18h]
    int v15; // [sp+Ch] [bp-14h]

    v13 = v4;
    v14 = a1;
    v15 = a2;
    v5 = a3;
    v6 = object_getFrontDirection(v3);
    while ( 1 )
    {
        v7 = *v5;
        if ( v7 == 127 )
            break;
        v8 = v7 * v6 + v14;
        if ( v8 >= 0 && v8 <= 6 && v8 * v6 <= v13 * v6 )
        {
            v9 = v5[1] + v15;
            if ( v9 >= 0 && v9 <= 3 )
            {
                v11 = v8;
                v12 = v5[1] + v15;
                if ( sub_800E680(v8, v9) )
                    sub_8026510(v11, v12, v13);
            }
        }
        v5 += 2;
    }
    return 0;
}


// 0x8026510
signed int __fastcall __noreturn sub_8026510(int a1, int a2, int a3)
{
    Battle *v3; // r5
    int v4; // r6
    int v5; // ST00_4
    int v6; // ST04_4
    int v7; // r2
    int v8; // r4
    int v9; // r0
    int v10; // r1
    int v11; // ST04_4
    int v12; // r0
    int v13; // r1
    int v14; // r2
    int v15; // r3
    bool v16; // zf
    int v18; // [sp+0h] [bp-18h]

    v4 = a3;
    v5 = a1;
    v6 = a2;
    v8 = object_getFrontDirection(v3);
    v9 = v5;
    v10 = v6;
    while ( 1 )
    {
        v18 = v9;
        v11 = v10;
        sub_81096FA(v9, v10, v7, dword_8026544);
        v16 = object_checkPanelParameters(v12, v13, v14, v15) == 0;
        v10 = v11;
        if ( v16 )
            break;
        v9 = v18 + v8;
        if ( v18 + v8 == v4 )
            return 1;
    }
    return 0;
}


// 0x8026554
int __fastcall ho_8026554(signed int a1, signed int a2, int a3)
{
    if ( a1 < 1 || a1 > 6 || a2 < 1 || a2 > 3 )
        a3 = 0;
    return (jt_8026584[a3])();
}


// 0x80265d0
int __fastcall sub_80265D0(char *a1)
{
    Battle *v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // r0
    char *v5; // r4
    int result; // r0
    int v7; // r0
    int v8; // r1
    char *v9; // [sp+0h] [bp-Ch]

    v9 = a1;
    v4 = v2;
    v5 = byte_8026735;
    while ( 1 )
    {
        result = sub_8026450(v4, v3, v9);
        if ( result )
            break;
        v7 = object_getFrontDirection(v1);
        v8 = *v5;
        if ( v8 == 127 )
            return 0;
        ++v5;
        v4 = v7 * v8 + v2;
    }
    return result;
}


// 0x80265fe
unsigned __int64 __fastcall sub_80265FE(unsigned __int64 a1)
{
    unsigned __int64 v1; // r6
    unsigned __int64 v2; // ST00_8
    bool v3; // zf
    unsigned __int64 result; // r0

    v1 = a1;
    v2 = __PAIR__(2, a1);
    v3 = sub_800E680(a1, 2) == 0;
    result = v2;
    if ( v3 )
        result = v1;
    return result;
}


// 0x802661c
int sub_802661C()
{
    int v0; // r5
    int result; // r0
    int v2; // r1

    result = *(v0 + 18);
    v2 = *(v0 + 19);
    return result;
}


// 0x8026622
int sub_8026622()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1
    char *v3; // r2
    char *v4; // r4
    int result; // r0
    int v6; // r1

    v2 = v1;
    v3 = byte_802673C;
    if ( v1 == *(v0 + 19) )
        v3 = byte_802673A;
    v4 = byte_8026730;
    while ( 1 )
    {
        result = sub_8026450(*(v0 + 18), v2, v3);
        if ( result )
            break;
        v6 = *v4;
        if ( v6 == 127 )
            break;
        ++v4;
        v2 = v6 + v1;
        v3 = byte_802673C;
    }
    return result;
}


// 0x8026650
int sub_8026650()
{
    return sub_80265D0(byte_8026753);
}


// 0x802665a
unsigned __int64 sub_802665A()
{
    unsigned __int64 v0; // r0

    LODWORD(v0) = sub_80265D0(byte_802675A);
    return sub_80265FE(v0);
}


// 0x8026668
int sub_8026668()
{
    return sub_80265D0(&byte_802675A[7]);
}


// 0x8026672
int sub_8026672()
{
    return sub_80265D0(byte_802676E);
}


// 0x802667c
unsigned __int64 sub_802667C()
{
    unsigned __int64 v0; // r0

    LODWORD(v0) = sub_80265D0(byte_8026781);
    return sub_80265FE(v0);
}


// 0x802668a
int sub_802668A()
{
    return sub_80265D0(byte_802678E);
}


// 0x8026694
int sub_8026694()
{
    return sub_80265D0(byte_8026791);
}


// 0x802669e
unsigned __int64 sub_802669E()
{
    unsigned __int64 v0; // r0

    LODWORD(v0) = sub_80265D0(byte_8026794);
    return sub_80265FE(v0);
}


// 0x80266ac
int sub_80266AC()
{
    int v0; // r6
    int v1; // r7

    return sub_80264A8(v0, v1, byte_802679B);
}


// 0x80266ba
int sub_80266BA()
{
    int v0; // r5
    int v1; // r6
    signed int v2; // r2

    v2 = 0;
    if ( 5 * (*(v0 + 22) ^ *(v0 + 23) ^ 1) + 1 == v1 )
        v2 = 2;
    return sub_80265D0(&byte_80267A6[v2]);
}


// 0x80266de
int sub_80266DE()
{
    return sub_80265D0(byte_80267AB);
}


// 0x80266e8
int sub_80266E8()
{
    return sub_80265D0(byte_80267AE);
}


// 0x80266f2
unsigned __int64 sub_80266F2()
{
    int v0; // r6
    int v1; // r7
    unsigned __int64 v2; // r0

    LODWORD(v2) = sub_8026450(v0, v1, byte_802679B);
    return sub_80265FE(v2);
}


// 0x8026704
int sub_8026704()
{
    return sub_80265D0(byte_80267B9);
}


// 0x802670e
unsigned __int64 sub_802670E()
{
    unsigned __int64 v0; // r0

    LODWORD(v0) = sub_80265D0(byte_8026791);
    return sub_80265FE(v0);
}


// 0x802671c
int sub_802671C()
{
    return sub_80265D0(byte_80267CC);
}


// 0x8026726
int sub_8026726()
{
    return sub_80265D0(byte_80267D5);
}


// 0x8026840
char *__fastcall sub_8026840(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r4
    char *v6; // r0
    signed __int16 v7; // r2
    unsigned __int8 *v8; // r6
    int v9; // r4
    int v10; // r5
    int v11; // r2
    int v12; // r0
    signed int v13; // r0
    int v14; // r3
    int v15; // r0
    int v16; // r1
    int v17; // ST00_4

    if ( !*(*(v4 + oToolkit_S2034880_Ptr) + 7) )
    {
        ZeroFillByWord(&dword_20349A0, 20);
        sub_802A210();
    }
    sub_801DF92();
    sub_801DACC(196978);
    sub_801DACC(&byte_400);
    sub_801BED6(131376);
    v5 = 0;
    if ( !sub_80136CC(*(*(v4 + oToolkit_S2034880_Ptr) + 13), 41) && sub_8029F70(0) && sub_802A564() != 5 )
        v5 = sub_8029EC8();
    v6 = byte_86E625C;
    if ( v5 )
        v6 = byte_86E64B4;
    CopyByEightWords(v6, &unk_2035000, dword_258);
    v7 = 155;
    v8 = &byte_8027B2C;
    do
    {
        v9 = v8[3];
        v10 = v8[5];
        sub_8027CCC(*v8, v8[1], (v8[4] << 12) | v7 & 0xFFF, v8[2]);
        v8 += 6;
    }
    while ( *v8 != 255 );
    ZeroFillByWord(&dword_20364C0, 112);
    byte_20364D0 = sub_80136CC(*(*(v4 + oToolkit_S2034880_Ptr) + 13), 41);
    byte_20364D1 = byte_20364D0;
    byte_20364D5 = byte_20364D0;
    word_20364FA = 0;
    word_20364F8 = 0;
    LOBYTE(dword_20364C4) = 1;
    byte_20364CC = -1;
    if ( sub_8029F70(255) && sub_802A564() != 5 )
        LOBYTE(dword_20364D8) = sub_8029EF8();
    sub_802811C();
    byte_20364C9 = 26;
    word_20364E0 = -1;
    v11 = *(v4 + oToolkit_S2034880_Ptr);
    v12 = *(v11 + 7);
    *(v11 + 7) = v12 + 1;
    if ( v12 )
    {
        v13 = sub_802D234();
        if ( v13 == 5 )
        {
            v13 = sub_802A564();
            if ( !v14 )
            {
                v13 = 5;
                byte_20364CC = 5;
            }
        }
    }
    else
    {
        v13 = byte_80269BC[sub_802D234()];
        byte_20364CC = v13;
    }
    v15 = sub_802A49C(v13);
    sub_802A40C(v15);
    sub_802945A();
    sub_802A646();
    BYTE1(dword_20364C4) = sub_8027D58();
    sub_8027E2C();
    sub_8028250(1);
    v16 = 4;
    do
    {
        v17 = v16;
        sub_80281D4(511);
        sub_8029CD4(v17, 0, 1);
        v16 = v17 - 1;
    }
    while ( v17 - 1 >= 0 );
    sub_8028476();
    sub_8015940();
    return sub_802A0EC();
}


// 0x80269d0
BOOL sub_80269D0()
{
    return (sub_800A9E2(0) & 5) != 0;
}


// 0x80269e2
signed int sub_80269E2()
{
    signed int result; // r0

    result = 0;
    if ( !dword_20364C0
        || dword_20364C0 == 8
        || !BYTE1(dword_20364C0)
        || BYTE1(dword_20364C0) == 8
        || BYTE1(dword_20364C0) == 4
        || BYTE1(dword_20364C0) == 12
        || BYTE1(dword_20364C0) == 44
        || BYTE1(dword_20364C0) == 48
        || BYTE1(dword_20364C0) == 52
        || BYTE1(dword_20364C0) == 16
        || BYTE1(dword_20364C0) == 20
        || BYTE1(dword_20364C0) == 24
        || BYTE1(dword_20364C0) == 28
        || BYTE1(dword_20364C0) == 32 )
    {
        result = 1;
    }
    return result;
}


// 0x8026a28
int sub_8026A28()
{
    return (*(&off_8026A3C + dword_20364C0))();
}


// 0x8026a50
int sub_8026A50()
{
    int v0; // r5
    int v1; // r0

    v1 = sub_802FE48();
    *(v0 + 14) = v1;
    sub_802FE7A(0, 0x40u, 0x40u, v1);
    *v0 = 4;
    return 0;
}


// 0x8026a6c
int sub_8026A6C()
{
    int v0; // r5

    sub_8027D78();
    sub_802FE6A(*(v0 + 14));
    sub_80062EC();
    sub_802A3CC();
    sub_802A0F8();
    return *(v0 + 4);
}


// 0x8026a88
int sub_8026A88()
{
    (*(&off_8026AA4 + BYTE1(dword_20364C0)))();
    sub_802A2B0();
    return 0;
}


// 0x8026b04
int __fastcall sub_8026B04(int a1, int a2, int a3)
{
    int v3; // r5
    _DWORD *v4; // r10
    unsigned int v5; // r6
    unsigned int v6; // r0
    __int16 *v7; // r4
    int v8; // r0
    int v9; // r1
    signed int v10; // r7
    int v11; // ST00_4
    int v12; // ST04_4
    int v13; // r0
    int v15; // [sp-10h] [bp-14h]

    if ( !*(v3 + 2) )
    {
        PlaySoundEffect(121, a2, a3);
        *(v4[2] + 24) = 120;
        sub_801E71C(0);
        sub_801DACC(128);
        sub_801E0A0(15, 0);
        *(v3 + 68) = 15;
        *(v3 + 64) = 120;
        *(v3 + 2) = 120;
    }
    v15 = *(v3 + 64) - 12;
    v5 = ((v15 & 4u) >> 2) + 1;
    do
    {
        v6 = *(v3 + 68) - 1;
        *(v3 + 68) = v6;
        v6 *= 2;
        v7 = (&unk_2035000 + v6);
        v8 = v6 >> 1;
        v9 = 0;
        v10 = 20;
        do
        {
            v11 = v8;
            v12 = v9;
            sub_800187C(v8, v9, 3, *v7);
            v8 = v11;
            v9 = v12 + 1;
            v7 += 15;
            --v10;
        }
        while ( v10 );
        --v5;
    }
    while ( v5 );
    if ( sub_802D234() != 1 )
        *(v4[3] + 52) -= 98304;
    *(v3 + 64) = v15;
    *(v4[2] + 24) = v15;
    sub_801E71C(120 - v15);
    if ( !v15 )
    {
        if ( *(v4[6] + 7) == 1 )
            sub_801E574();
        sub_8013FD0(0);
        sub_8013FD0(1);
        v13 = *(v3 + 12);
        if ( v13 == 255 || v13 == 5 && *(v4[6] + 7) >= 5 )
        {
            *(v3 + 1) = 4;
            *(v3 + 2) = 0;
        }
        else
        {
            *(v3 + 1) = 44;
            *(v3 + 2) = 0;
        }
    }
    return sub_8029C08();
}


// 0x8026bf4
int sub_8026BF4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned int v3; // r6
    int v4; // r0
    int v6; // [sp-14h] [bp-18h]

    v2 = *(v0 + 2);
    if ( !*(v0 + 2) )
    {
        *(v0 + 68) = v2;
        *(v0 + 64) = v2;
        *(v0 + 2) = 1;
        sub_801DACC(&loc_2000);
        sub_8029D80();
    }
    v6 = *(v0 + 64) + 12;
    v3 = (((v6 & 4u) >> 2) ^ 1) + 1;
    do
    {
        v4 = *(v0 + 68) + 1;
        *(v0 + 68) = v4;
        CopyBackgroundTiles(v4 - 1, 0, 3, byte_8026C88, 1, dword_14);
        --v3;
    }
    while ( v3 );
    if ( sub_802D234() != 1 )
        *(*(v1 + oToolkit_CameraPtr) + 52) += 98304;
    *(v0 + 64) = v6;
    *(*(v1 + oToolkit_RenderInfoPtr) + 24) = v6;
    sub_801E71C(120 - v6);
    if ( v6 == 120 )
    {
        *(v0 + 1) = *(v0 + 11);
        *(v0 + 2) = 0;
    }
    return sub_8029C08();
}


// 0x8026ccc
int __usercall sub_8026CCC@<R0>(void *r5@<R5>)
{
    int v1; // r10
    signed int v2; // r0
    int result; // r0
    int v4; // r7
    int v5; // r0

    v2 = sub_802A220();
    if ( v2 == 255 )
    {
        v4 = *(v1 + oToolkit_JoypadPtr);
        sub_8028B74(r5);
        sub_8028820();
        sub_8029C08();
        v5 = sub_802899C();
        sub_8029D34(v5);
        result = *(r5 + 16) + 1;
        *(r5 + 16) = result;
    }
    else
    {
        *(r5 + 28) = v2;
        *(r5 + 1) = 64;
        *(r5 + 2) = 0;
        result = 0;
        *(r5 + 16) = 0;
    }
    return result;
}


// 0x8026d06
int sub_8026D06()
{
    int v0; // r5
    _DWORD *v1; // r10
    int v2; // r3
    int v3; // ST04_4
    int result; // r0
    int v5; // r1
    int v6; // r2

    v2 = v1[2];
    if ( *(v0 + 2) == 2 )
    {
        sub_8029C08();
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
    }
    else
    {
        if ( !*(v0 + 2) )
        {
            *(v0 + 2) = 1;
            *(v2 + 24) = 120;
            sub_801E71C(0);
            sub_801DACC(&loc_2000);
            sub_8029D80();
        }
        if ( *(v1[1] + 2) || (v3 = v1[2], result = sub_802A220(), v2 = v3, result != 255) )
        {
            *(v0 + 2) = 2;
            *(v2 + 24) = 0;
            sub_801E71C(120);
            CopyBackgroundTiles(0, 0, 3, &unk_2035000, 15, dword_14);
            sub_8029C08();
            PlaySoundEffect(128, v5, v6);
            result = *(v1[6] + 7);
            if ( result == 1 )
                result = sub_801DA48(&loc_2000);
        }
    }
    return result;
}


// 0x8026db0
int sub_8026DB0()
{
    int v0; // r5
    int result; // r0

    result = sub_802B734();
    if ( result )
    {
        *(v0 + 1) = 20;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8026dc4
signed int sub_8026DC4()
{
    _BYTE *v0; // r5
    signed int result; // r0
    int v2; // r0
    int v3; // r0

    if ( !v0[2] )
    {
        sub_8027D78();
        v0[2] = 1;
        sub_802A4FC();
        sub_800B3A2();
        if ( sub_802D246() & 8 )
            sub_801E474(0);
    }
    result = sub_800B46C(1450742051);
    if ( result )
    {
        v2 = sub_800B460();
        sub_800B3D8(v2);
        if ( sub_802D246() & 8 )
        {
            sub_801BED6(&loc_1000);
            sub_801DACC(&loc_1000);
        }
        sub_801DA48(2);
        sub_801BECC(2);
        v3 = v0[12];
        if ( v3 == 255 || v3 == 3 || v3 == 4 || v3 == 5 )
        {
            result = 8;
            *v0 = 8;
        }
        else
        {
            v0[1] = 48;
            result = 0;
            *(v0 + 1) = 0;
        }
    }
    return result;
}


// 0x8026e4c
int sub_8026E4C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2

    if ( !chatbox_mask_eFlags2009F38(128) )
        goto LABEL_4;
    if ( sub_802A220() != 255 )
    {
        chatbox_8040818();
LABEL_4:
        PlaySoundEffect(158, v1, v2);
        *(v0 + 1) = 4;
        *(v0 + 2) = 0;
    }
    return sub_8029C08();
}


// 0x8026e78
int sub_8026E78()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2

    if ( !chatbox_mask_eFlags2009F38(128) )
    {
        PlaySoundEffect(158, v1, v2);
        *(v0 + 1) = 84;
        *(v0 + 2) = 0;
    }
    return sub_8029C08();
}


// 0x8026e98
int __fastcall sub_8026E98(int a1)
{
    int v1; // r5

    sub_802D246();
    (*(&off_8026EBC + *(v1 + 2)))();
    return sub_8029C08();
}


// 0x8026ec8
int __fastcall sub_8026EC8(int a1)
{
    int v1; // r4
    int v2; // r5
    __int16 *v3; // r0
    int v4; // r1
    int v5; // r1
    int v6; // r1
    int v7; // r2

    if ( sub_802D246() & 0x20 )
    {
        *(v2 + 2) = 4;
        v4 = v1;
        goto LABEL_8;
    }
    *(v2 + 2) = 8;
    if ( sub_802D234() != 5 )
    {
        if ( *(v2 + 12) != 255 )
        {
            v5 = *(v2 + 12);
            v3 = *(&TextScriptFirstBattleTutorials + v5);
            v4 = byte_8027034[v5];
            goto LABEL_9;
        }
        v4 = v1 + 3;
LABEL_8:
        v3 = TextScriptBattleRunDialog;
        goto LABEL_9;
    }
    v3 = TextScriptDadCybeastTut;
    v4 = 35;
LABEL_9:
    chatbox_runScript(v3, v4);
    return PlaySoundEffect(123, v6, v7);
}


// 0x8026f1a
int sub_8026F1A()
{
    ChatBoxPropreties *cb; // r5
    Toolkit *tk; // r10
    int result; // r0
    int v3; // r4
    unsigned int v4; // r0
    signed int v9; // r3
    unsigned int v10; // r2
    int v11; // r0
    char (*v12)[3]; // r3
    int v13; // r0
    int v14; // r4
    char v15; // r0

    if ( chatbox_mask_eFlags2009F38(128) )
    {
        result = sub_802A220();
        if ( result == 255 )
            return result;
        chatbox_8040818();
        goto LABEL_12;
    }
    if ( chatbox_8045F4C() == 1 )
    {
LABEL_12:
        cb->scriptID = 4;
        result = 0;
        *&cb->currLine = 0;
        return result;
    }
    byte_20366C0 = -1;
    v3 = sub_802D258();
    v4 = sub_80136E4(tk->s_2034880->unk_0D, 62) + 4;
    __asm { SVC         6 }
    if ( v4 > v3 )
        goto LABEL_15;
    v9 = 2;
    v10 = v4 >> 1;
    v11 = v4 + (v4 >> 1);
    if ( v3 >= v11 )
    {
        v9 = 1;
        if ( v3 >= (v11 + v10) )
            v9 = 0;
    }
    v12 = off_8027014[v9];
    v13 = dword_20349A8++;
    v14 = (*v12)[v13];
    GetRNG1();
    if ( (v15 & 0xF) < v14 )
LABEL_15:
        cb->chatPageState = 2;
    cb->unk_0B = 32;
    cb->scriptID = 8;
    result = 0;
    *&cb->currLine = 0;
    return result;
}


// 0x8026faa
int sub_8026FAA()
{
    int v0; // r5
    int result; // r0

    result = chatbox_mask_eFlags2009F38(128);
    if ( !result )
    {
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8026fc0
void __fastcall sub_8026FC0(int a1)
{
    int v1; // r5
    signed int v2; // r4
    signed int v3; // r1

    v2 = 0;
    if ( sub_802D246() & 0x200000 )
        v2 = 4;
    if ( *(v1 + 2) )
    {
        if ( !chatbox_mask_eFlags2009F38(128) )
        {
            *(v1 + 1) = 20;
            *(v1 + 2) = 0;
        }
    }
    else
    {
        *(v1 + 2) = 1;
        sub_802A0EC();
        v3 = 1;
        if ( *(v1 + 4) != 2 )
            v3 = 2;
        chatbox_runScript(TextScriptBattleRunDialog, v3 + v2);
    }
}


// 0x8027044
int sub_8027044()
{
    int v0; // r5

    (*(&off_8027060 + *(v0 + 2)))();
    sub_8029C08();
    return sub_802899C();
}


// 0x802707c
signed int sub_802707C()
{
    int v0; // r5
    char *v1; // r4
    signed int v2; // r0
    signed int result; // r0

    *(v0 + 64) = 0;
    v1 = getLocOfActiveChips_8027E1C(11);
    if ( v1[6] )
        v2 = 13;
    else
        v2 = v1[5];
    (loc_8000AC8)(&byte_8725894[128 * v2], 100758208, 128);
    *(v0 + 68) = 16 * *(v0 + 8) + 24;
    (loc_8000AC8)(byte_872CF94, byte_30016F0, 32);
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x80270d0
int sub_80270D0()
{
    int v0; // r5
    int result; // r0

    sub_80298D8();
    result = *(v0 + 64) + 1;
    *(v0 + 64) = result;
    if ( result >= 16 )
    {
        *(v0 + 64) = 0;
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x80270ea
int sub_80270EA()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2

    *(v0 + 68) -= 2;
    v1 = *(v0 + 64) + 1;
    *(v0 + 64) = v1;
    if ( v1 >= 8 )
    {
        *(v0 + 64) = 0;
        engine_setScreeneffect(52, 32);
        PlaySoundEffect(145, v2, v3);
        *(v0 + 2) = 12;
    }
    return sub_80298D8();
}


// 0x8027118
int sub_8027118()
{
    int v0; // r5

    if ( !IsPaletteFadeActive() )
    {
        *(v0 + 2) = 16;
        engine_setScreeneffect(48, 32);
    }
    return sub_80298D8();
}


// 0x8027134
int sub_8027134()
{
    int v0; // r5

    if ( !IsPaletteFadeActive() )
    {
        engine_setScreeneffect(4, 32);
        *(v0 + 2) = 20;
    }
    return sub_80298D8();
}


// 0x8027150
int sub_8027150()
{
    int v0; // r5
    int v1; // r3
    _BYTE *v2; // r2
    unsigned __int8 *v3; // r2
    int v4; // r0
    _BYTE *v5; // ST00_4
    int v6; // ST04_4
    char *v7; // r0
    unsigned __int8 *v8; // r0
    int v9; // r0
    int v10; // r1
    int v11; // r2

    if ( !IsPaletteFadeActive() )
    {
        v1 = *(v0 + 8) - 1;
        v2 = (*(v0 + 8) + 71 + v0);
        while ( v1 )
        {
            v3 = v2 - 1;
            v4 = *v3;
            v3[1] = v4;
            v5 = v3;
            v6 = v1;
            v7 = getLocOfActiveChips_8027E1C(v4);
            sub_80281D4(**(v7 + 2) & 0x1FF);
            v2 = v5;
            v1 = v6 - 1;
        }
        *v2 = 11;
        v8 = getLocOfActiveChips_8027E1C(11);
        v8[7] = 2;
        if ( v8[6] )
            v9 = 13;
        else
            v9 = v8[5];
        sub_80281E4(v9, 0);
        sub_8028E32();
        engine_setScreeneffect(0, 32);
        PlaySoundEffect(146, v10, v11);
        *(v0 + 2) = 24;
    }
    return sub_80298D8();
}


// 0x80271c2
int sub_80271C2()
{
    int v0; // r5
    int result; // r0

    result = IsPaletteFadeActive();
    if ( !result )
    {
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
        if ( *(v0 + 12) == 3 )
        {
            chatbox_runScript(TextScriptDadCybeastTut, 10);
            *(v0 + 13) = 4;
            *(v0 + 1) = 52;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    return result;
}


// 0x80271f8
int sub_80271F8()
{
    int v0; // r5

    (*(&off_8027214 + *(v0 + 2)))();
    sub_8029C08();
    return sub_802899C();
}


// 0x802721c
signed int sub_802721C()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 64) = 0;
    sub_8029788();
    getLocOfActiveChips_8027E1C(8)[7] = 2;
    sub_8028E32();
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x802723a
unsigned int __fastcall sub_802723A(int a1, int a2, int a3)
{
    int v3; // r5
    unsigned int result; // r0
    int v5; // r0
    char *v6; // r0
    char v7; // r2
    int v8; // r1
    int v9; // r1
    int v10; // r2

    result = *(v3 + 64) + 1;
    *(v3 + 64) = result;
    if ( !(result & 3) )
    {
        v5 = result >> 2;
        if ( v5 < 8 )
        {
            sub_8029688(v5, 0, a3);
        }
        else
        {
            sub_802983C(v5, 0, a3);
            ++*(v3 + 22);
            v6 = getLocOfActiveChips_8027E1C(8);
            v7 = 0;
            v8 = v6[4] - 1;
            v6[4] = v8;
            if ( !v8 )
                v7 = 1;
            v6[7] = v7;
            sub_8028476();
            *(v3 + 1) = 4;
            *(v3 + 2) = 0;
        }
        sub_8028E32();
        result = PlaySoundEffect(275, v9, v10);
    }
    return result;
}


// 0x802728c
int sub_802728C()
{
    int v0; // r5
    int v1; // r4

    v1 = *(v0 + 64);
    (*(&off_80272A4 + *(v0 + 2)))();
    return sub_8029C08();
}


// 0x80272b8
signed int sub_80272B8()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 64) = *(&off_8027BEC + *(v0 + 12));
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x80272d0
void sub_80272D0()
{
    unsigned __int8 *v0; // r4
    int v1; // r5
    int v2; // r10
    int v3; // r0

    v3 = *v0;
    if ( *v0 )
    {
        if ( v3 == 1 )
        {
            *(v1 + 2) = 12;
            *(v1 + 68) = 80;
        }
        else if ( v3 == 2 )
        {
            sub_8015BEC(*(*(v2 + oToolkit_S2034880_Ptr) + 13), v0[1]);
            *(v1 + 64) = v0 + 2;
        }
        else
        {
            *(v1 + 2) = 16;
        }
    }
    else
    {
        *(v1 + 2) = 8;
        chatbox_runScript(*(&TextScriptFirstBattleTutorials + *(v1 + 12)), v0[1]);
        *(v1 + 64) = v0 + 2;
    }
}


// 0x8027320
int sub_8027320()
{
    int v0; // r5
    int result; // r0

    result = chatbox_mask_eFlags2009F38(128);
    if ( !result )
    {
        result = 4;
        *(v0 + 2) = 4;
    }
    return result;
}


// 0x8027332
int __noreturn sub_8027332()
{
    int v0; // r4
    int v1; // r5
    int v2; // r10
    unsigned __int8 *v3; // r4
    unsigned __int8 *v4; // ST00_4
    int result; // r0
    int v6; // r3

    v3 = (v0 + 1);
    do
    {
        v4 = v3;
        sub_8001040(*v3, v3[1], *&byte_8027388[4 * (v3[2] & 0x7F)], 45946);
        v3 += 3;
    }
    while ( !(v4[2] & 0x80) );
    result = *(v1 + 68) - 1;
    *(v1 + 68) = result;
    if ( !result || result <= 68 && ((v6 = *(v2 + oToolkit_JoypadPtr), *(v6 + 2) & 1) || (result = *(v6 + 4), result & 2)) )
    {
        *(v1 + 64) = v3;
        result = 4;
        *(v1 + 2) = 4;
    }
    return result;
}


// 0x8027394
int sub_8027394()
{
    int v0; // r5
    int result; // r0

    *(v0 + 1) = 4;
    result = 0;
    *(v0 + 2) = 0;
    return result;
}


// 0x80273a4
int sub_80273A4()
{
    int v0; // r5
    int v1; // r4

    v1 = *(v0 + 64);
    return (*(&off_80273B8 + *(v0 + 2)))();
}


// 0x80273cc
signed int sub_80273CC()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 64) = *(&off_8027C84 + *(v0 + 12));
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x80273e4
signed int sub_80273E4()
{
    _BYTE *v0; // r5
    signed int result; // r0

    result = 8;
    *v0 = 8;
    return result;
}


// 0x80273ec
int sub_80273EC()
{
    int v0; // r5

    if ( !chatbox_mask_eFlags2009F38(128) )
    {
        *(v0 + 1) = *(v0 + 13);
        *(v0 + 2) = 0;
    }
    return sub_8029C08();
}


// 0x8027406
int sub_8027406()
{
    int v0; // r5

    getLocOfActiveChips_8027E1C(8);
    (*(&off_8027428 + *(v0 + 2)))();
    sub_8029C08();
    return sub_802899C();
}


// 0x8027434
signed int sub_8027434()
{
    int v0; // r5
    signed int v1; // r0
    signed int result; // r0

    *(v0 + 64) = 24;
    *(v0 + 68) = 0;
    v1 = 0;
    *(v0 + 95) = 0;
    do
    {
        *(v0 + 96 + v1) = -1;
        v1 += 2;
    }
    while ( v1 < 16 );
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x8027458
char *sub_8027458()
{
    int v0; // r5
    int v5; // r0
    char *result; // r0

    ++*(v0 + 64);
    __asm { SVC         6 }
    v5 = *(v0 + 68);
    if ( v5 )
    {
        *(v0 + 68) = v5 - 1;
        result = getLocOfActiveChips_8027E1C(8);
        result[7] = 3;
    }
    else
    {
        result = getLocOfActiveChips_8027E1C(8);
        result[7] = 0;
    }
    return result;
}


// 0x802750c
int sub_802750C()
{
    int v0; // r5
    char *v1; // r0
    int v2; // r2
    int v3; // r1

    ++*(v0 + 48);
    v1 = getLocOfActiveChips_8027E1C(8);
    v2 = 0;
    v3 = v1[4] - 1;
    v1[4] = v3;
    if ( !v3 )
        v2 = 2;
    v1[7] = v2;
    *(v0 + 1) = 4;
    *(v0 + 2) = 0;
    PlaySoundEffect(386, v3, v2);
    return sub_8028E32();
}


// 0x802753e
int sub_802753E()
{
    int v0; // r5
    int result; // r0

    *(v0 + 1) = 4;
    result = 0;
    *(v0 + 2) = 0;
    return result;
}


// 0x8027548
int sub_8027548()
{
    int v0; // r5

    (*(&off_8027564 + *(v0 + 2)))();
    sub_8029C08();
    return sub_802899C();
}


// 0x8027574
signed int sub_8027574()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 64) = 0;
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x8027580
int sub_8027580()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 64) + 1;
    *(v0 + 64) = result;
    if ( result >= 16 )
    {
        *(v0 + 64) = 0;
        engine_setScreeneffect(4, 32);
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x802759e
int sub_802759E()
{
    _WORD *v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2

    result = IsPaletteFadeActive();
    if ( !result )
    {
        engine_setScreeneffect(0, 32);
        v0[29] = v0[28];
        word_20349AE |= 1 << v0[29];
        sub_802A0C8(v0[29]);
        PlaySoundEffect(146, v2, v3);
        result = 12;
        v0[1] = 12;
    }
    return result;
}


// 0x80275d8
int sub_80275D8()
{
    int v0; // r5
    int result; // r0

    result = IsPaletteFadeActive();
    if ( !result )
    {
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x80275ec
int sub_80275EC()
{
    int v0; // r5

    (*(&off_8027604 + *(v0 + 2)))();
    return sub_8029C08();
}


// 0x8027618
signed int sub_8027618()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 64) = 0;
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x8027624
int sub_8027624()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r1
    int v5; // r2

    result = *(v0 + 64) + 1;
    *(v0 + 64) = result;
    if ( result >= 16 )
    {
        *(v0 + 64) = 0;
        engine_setScreeneffect(100, 8);
        sub_80302B6(1, 40);
        PlaySoundEffect(403, v2, v3);
        PlaySoundEffect(188, v4, v5);
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x8027658
int sub_8027658()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 64) + 1;
    *(v0 + 64) = result;
    if ( result >= 50 )
    {
        result = IsPaletteFadeActive();
        if ( !result )
        {
            result = 12;
            *(v0 + 2) = 12;
        }
    }
    return result;
}


// 0x8027672
signed int sub_8027672()
{
    int v0; // r5
    int v1; // r3
    unsigned __int8 *v2; // r2
    int v3; // r6
    unsigned __int8 *v4; // r2
    int v5; // r0
    unsigned __int8 *v6; // ST00_4
    int v7; // ST04_4
    char *v8; // r0
    char *v9; // r0
    signed int result; // r0

    sub_802A040(0);
    v1 = *(v0 + 8) - 1;
    v2 = (*(v0 + 8) + 71 + v0);
    v3 = *v2;
    while ( v1 )
    {
        v4 = v2 - 1;
        v5 = *v4;
        v4[1] = v5;
        v6 = v4;
        v7 = v1;
        v8 = getLocOfActiveChips_8027E1C(v5);
        sub_80281D4(**(v8 + 2) & 0x1FF);
        v2 = v6;
        v1 = v7 - 1;
    }
    *(v0 + 72) = v3;
    v9 = getLocOfActiveChips_8027E1C(v3);
    sub_80281D4(**(v9 + 2) & 0x1FF);
    sub_8028E32();
    engine_setScreeneffect(96, 8);
    result = 16;
    *(v0 + 2) = 16;
    return result;
}


// 0x80276d6
int sub_80276D6()
{
    int v0; // r5
    int result; // r0

    result = IsPaletteFadeActive();
    if ( !result )
    {
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
        if ( *(v0 + 12) == 3 )
        {
            chatbox_runScript(TextScriptDadCybeastTut, 10);
            *(v0 + 13) = 4;
            *(v0 + 1) = 52;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    return result;
}


// 0x802770c
int sub_802770C()
{
    int v0; // r5

    (*(&off_8027724 + *(v0 + 2)))();
    return sub_8029C08();
}


// 0x8027738
signed int sub_8027738()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 64) = 0;
    *(v0 + 23) = 1;
    *(v0 + 15) = 1;
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x802774c
signed int sub_802774C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r1
    int v4; // r2
    int v5; // r1
    int v6; // r2
    signed int result; // r0

    *(v0 + 64) = 0;
    engine_setScreeneffect(100, 8);
    sub_80302B6(1, 40);
    PlaySoundEffect(403, v1, v2);
    PlaySoundEffect(129, v3, v4);
    PlaySoundEffect(188, v5, v6);
    result = 8;
    *(v0 + 2) = 8;
    return result;
}


// 0x802777c
int sub_802777C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 64) + 1;
    *(v0 + 64) = result;
    if ( result >= 50 )
    {
        result = IsPaletteFadeActive();
        if ( !result )
        {
            result = 12;
            *(v0 + 2) = 12;
        }
    }
    return result;
}


// 0x8027796
signed int sub_8027796()
{
    int v0; // r5
    int v1; // r4
    int v2; // r3
    char *v3; // r2
    char v4; // r6
    char *v5; // r2
    int v6; // r0
    char *v7; // ST00_4
    int v8; // ST04_4
    char *v9; // r0
    __int16 v10; // r0
    signed int result; // r0

    v1 = 0;
    if ( sub_802A564() == 1 )
        v1 = 12;
    sub_802A040(v1);
    v2 = *(v0 + 8) - 1;
    v3 = (*(v0 + 8) + 71 + v0);
    v4 = *v3;
    while ( v2 )
    {
        v5 = v3 - 1;
        v6 = *v5;
        v5[1] = v6;
        v7 = v5;
        v8 = v2;
        v9 = getLocOfActiveChips_8027E1C(v6);
        sub_80281D4(**(v9 + 2) & 0x1FF);
        v3 = v7;
        v2 = v8 - 1;
    }
    *(v0 + 72) = v4;
    v10 = sub_802A034();
    sub_80281D4(v10);
    getLocOfActiveChips_8027E1C(11)[7] = 2;
    sub_8028E32();
    engine_setScreeneffect(96, 8);
    result = 16;
    *(v0 + 2) = 16;
    return result;
}


// 0x8027806
int sub_8027806()
{
    int v0; // r5
    int result; // r0

    result = IsPaletteFadeActive();
    if ( !result )
    {
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
        if ( *(v0 + 12) == 3 )
        {
            *(v0 + 12) = 4;
            *(v0 + 13) = 4;
            *(v0 + 1) = 44;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    return result;
}


// 0x8027834
int __fastcall sub_8027834(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r0
    int result; // r0

    v4 = *(v3 + 2);
    if ( !*(v3 + 2) )
    {
        *(v3 + 68) = v4;
        *(v3 + 64) = v4;
        *(v3 + 2) = 1;
        PlaySoundEffect(122, a2, a3);
    }
    v5 = *(v3 + 64) + 1;
    *(v3 + 64) = v5;
    if ( v5 > 20 )
    {
        *(v3 + 1) = 84;
        *(v3 + 2) = 0;
        result = sub_802794A(0, a2, a3);
    }
    else
    {
        __asm { SVC         6 }
        result = sub_80279C8(v5);
    }
    return result;
}


// 0x802790c
int __fastcall sub_802790C(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r0
    int v6; // r0

    v4 = *(v3 + 2);
    if ( !*(v3 + 2) )
    {
        *(v3 + 68) = v4;
        *(v3 + 64) = v4;
        *(v3 + 2) = 1;
        PlaySoundEffect(125, a2, a3);
    }
    v5 = *(v3 + 64) + 1;
    *(v3 + 64) = v5;
    if ( v5 > 5 )
    {
        sub_80279FC();
        sub_80279C8(v6);
        sub_8028476();
        *(v3 + 1) = 4;
        *(v3 + 2) = 0;
    }
    sub_8029C08();
    return sub_802899C();
}


// 0x802794a
int __fastcall sub_802794A(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r0
    signed int v6; // r0
    int v7; // r7
    signed int v8; // r4
    signed int v9; // r2
    int v10; // r0
    signed int v11; // r2
    int v12; // ST00_4
    int result; // r0

    v5 = *(v3 + 2);
    if ( *(v3 + 2) )
    {
        v7 = *(v4 + oToolkit_JoypadPtr);
        v6 = sub_8028A78(v5, a2, a3);
    }
    else
    {
        *(v3 + 68) = v5;
        *(v3 + 64) = v5;
        v6 = 1;
        *(v3 + 2) = 1;
    }
    sub_80279C8(v6);
    v8 = 0;
    do
    {
        if ( v8 == *(v3 + 27) )
        {
            v9 = 0;
            if ( *(v3 + v8 + 85) )
                v9 = 5;
            sub_8029EAC(*(&word_50 + v8 + v3) + v9);
        }
        ++v8;
    }
    while ( v8 < *(v3 + 24) );
    v10 = 0;
    do
    {
        v11 = 2;
        if ( v10 == *(v3 + 27) )
            v11 = 0;
        v12 = v10;
        sub_8029D94(v10, *(&word_50 + v10 + v3), v11);
        v10 = v12 + 1;
    }
    while ( v12 + 1 < *(v3 + 24) );
    sub_80289E4();
    result = *(v3 + 64) + 1;
    *(v3 + 64) = result;
    return result;
}


// 0x80279c8
int __fastcall sub_80279C8(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r4
    int v4; // r1

    sub_8029C08();
    v2 = sub_802899C();
    sub_8029D34(v2);
    v3 = 4;
    do
    {
        v4 = 0;
        if ( v3 <= *(v1 + 8) - 1 )
            v4 = 1;
        sub_8029CD4(v3--, v4, 0);
    }
    while ( v3 >= 0 );
    return sub_8028E32();
}


// 0x80279fc
void sub_80279FC()
{
    signed __int16 v0; // r2
    unsigned __int8 *v1; // r6
    int v2; // r4
    int v3; // r5

    CopyByEightWords(byte_86E64B4, &unk_2035000, dword_258);
    v0 = 155;
    v1 = &byte_8027B2C;
    do
    {
        v2 = v1[3];
        v3 = v1[5];
        sub_8027CCC(*v1, v1[1], (v1[4] << 12) | v0 & 0xFFF, v1[2]);
        v1 += 6;
    }
    while ( *v1 != 255 );
    CopyBackgroundTiles(0, 0, 3, &unk_2035000, 15, dword_14);
}


// 0x8027a58
int sub_8027A58()
{
    int v0; // r5

    (*(&off_8027A74 + *(v0 + 2)))();
    sub_8029C08();
    return sub_802899C();
}


// 0x8027a84
signed int sub_8027A84()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 64) = 0;
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x8027a90
int sub_8027A90()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 64) + 1;
    *(v0 + 64) = result;
    if ( result >= 16 )
    {
        *(v0 + 64) = 0;
        engine_setScreeneffect(4, 32);
        result = 8;
        *(v0 + 2) = 8;
    }
    return result;
}


// 0x8027aae
int sub_8027AAE()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    int v3; // r1
    int v4; // r2

    result = IsPaletteFadeActive();
    if ( !result )
    {
        engine_setScreeneffect(0, 32);
        sub_802A088(*(v0 + 26));
        sub_80279FC();
        sub_80279C8(v2);
        sub_8028476();
        PlaySoundEffect(146, v3, v4);
        result = 12;
        *(v0 + 2) = 12;
    }
    return result;
}


// 0x8027ade
int sub_8027ADE()
{
    int v0; // r5
    int result; // r0
    int v2; // r0

    result = IsPaletteFadeActive();
    if ( !result )
    {
        sub_80279FC();
        sub_80279C8(v2);
        sub_8028476();
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
        if ( *(v0 + 12) == 6 )
        {
            chatbox_runScript(TextScriptShukoCrossTut, 2);
            *(v0 + 13) = 4;
            *(v0 + 1) = 52;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    return result;
}


// 0x8027ccc
void __fastcall sub_8027CCC(int a1, int a2, int a3, int a4)
{
    signed int v4; // r4
    int v5; // r5
    signed int v6; // r6
    char *v7; // r1
    int v8; // r5
    int v9; // r7
    _WORD *v10; // r0
    int v11; // r3
    int v12; // r2

    v6 = 1;
    if ( v5 == 1 )
        v6 = v4;
    v7 = &unk_2035000 + 30 * a2 + 2 * a1;
    v8 = a4;
    v9 = a3;
    do
    {
        v10 = v7;
        v11 = v8;
        v12 = v9;
        do
        {
            *v10 = v12;
            ++v10;
            v12 += v6;
            --v11;
        }
        while ( v11 );
        v7 += 30;
        if ( v6 == 1 )
            v9 = v12;
        else
            ++v9;
        --v4;
    }
    while ( v4 );
}


// 0x8027d10
int (*__fastcall sub_8027D10(__int16 a1))[345]
{
    int v1; // r1
    int (**v2)[345]; // r0

    v1 = a1 & 0x1FF;
    v2 = &off_8027D2C;
    if ( v1 > 255 )
        v2 = &off_8027D30;
    return *v2;
}


// 0x8027d34
// (int chipID) -> void*
int (*__fastcall chip_getScript_8027D34(__int16 a1))[162]
{
    int v1; // r1
    int (**v2)[162]; // r0

    v1 = a1 & 0x1FF;
    v2 = &off_8027D50;
    if ( v1 > 255 )
        v2 = &off_8027D54;
    return *v2;
}


// 0x8027d58
int sub_8027D58()
{
    char *v0; // r2
    signed int v1; // r3

    v0 = byte_203CDB0;
    v1 = 30;
    do
    {
        if ( *v0 == 0xFFFF )
            break;
        v0 += 2;
        --v1;
    }
    while ( v1 );
    return 30 - v1;
}


// 0x8027d78
int sub_8027D78()
{
    int v0; // r10
    int v1; // r0
    int result; // r0
    int v3; // r0

    *(*(v0 + oToolkit_RenderInfoPtr) + 24) = 0;
    sub_801E71C(0);
    sub_801DACC(128);
    sub_801E0A0(0, 0);
    sub_801BECC(&byte_400);
    v1 = sub_801DA48(&byte_400);
    result = sub_800A97A(v1);
    if ( !result )
    {
        v3 = *(*(v0 + oToolkit_S2034880_Ptr) + 7);
        if ( v3 == 1 )
        {
            if ( sub_800A8F8(1) )
            {
                result = sub_801DF0C();
            }
            else if ( sub_802D234() == 1 )
            {
                result = sub_801DEEE();
            }
            else
            {
                result = sub_801DED0();
            }
        }
        else if ( sub_800A8F8(v3) )
        {
            sub_801DA48(0x20000);
            result = sub_801BECC(0x20000);
        }
        else
        {
            sub_801DF92();
            if ( sub_802D234() == 1 )
            {
                sub_801DA48(32);
                result = sub_801BECC(32);
            }
            else
            {
                sub_801DA48(16);
                result = sub_801BECC(16);
            }
        }
    }
    return result;
}


// 0x8027e1c
// (int a1) -> void*
char *__fastcall getLocOfActiveChips_8027E1C(int a1)
{
    return &unk_20365C0 + 12 * a1;
}


// 0x8027e2c
int sub_8027E2C()
{
    unsigned __int8 *v0; // r5
    int v1; // r10
    char *v2; // r0
    char *v3; // r4
    int v4; // r0
    int v5; // r6
    int v6; // r0
    int v7; // r0
    _BYTE *v8; // r1

    v2 = getLocOfActiveChips_8027E1C(0);
    v3 = v2;
    ZeroFillByWord(v2, 144);
    sub_802A40C(v4);
    sub_8027E90();
    if ( *(*(v1 + oToolkit_S2034880_Ptr) + 23) )
        v3[4] = 1;
    v5 = v0[6];
    sub_8027EE8();
    v6 = *(*(v1 + oToolkit_S2034880_Ptr) + 13);
    if ( v0[16] || v0[16] == v0[21] )
        v7 = sub_8015B54(v6);
    else
        v7 = sub_8015B5C(v6);
    sub_8027F10(v7, v8);
    sub_80280E0();
    sub_80280A2();
    sub_8027F42();
    sub_8028050();
    return sub_802806C();
}


// 0x8027e90
int sub_8027E90()
{
    int v0; // r4
    signed int v1; // r3
    int *v2; // r2
    int *v3; // r1
    int v4; // r0
    int result; // r0
    char v6; // r6

    v1 = 12;
    v2 = v0;
    v3 = &dword_802A7CC;
    do
    {
        *v2 = *v3;
        v2[1] = 0;
        v2[2] = 0;
        ++v3;
        v2 += 3;
        --v1;
    }
    while ( v1 );
    v4 = sub_802D234();
    if ( v4 == 1 )
    {
        result = byte_20349A4;
        if ( !byte_20349A4 )
        {
            result = 3;
            *(v0 + 132) = 3;
        }
    }
    else
    {
        result = sub_8029FB4(v4);
        if ( result )
        {
            v6 = 1;
            if ( sub_802A57E() )
                v6 = 0;
            result = 2;
            *(v0 + 132) = 2;
            *(v0 + 139) = v6;
        }
    }
    return result;
}


// 0x8027ee8
void sub_8027EE8()
{
    int v0; // r4
    int v1; // r5
    int v2; // r6
    int v3; // r3
    char *v4; // r1

    v3 = *(v1 + 5);
    if ( *(v1 + 5) && v2 )
    {
        if ( v3 >= v2 )
            v3 = v2;
        v4 = byte_203CDB0;
        do
        {
            *v0 = 0;
            *(v0 + 8) = v4;
            v0 += 12;
            v4 += 2;
            --v3;
        }
        while ( v3 );
    }
}


// 0x8027f10
signed int __fastcall sub_8027F10(int a1, _BYTE *a2)
{
    int v2; // r4
    int v3; // r5
    int v4; // r7
    signed int result; // r0

    result = *(v3 + 16);
    if ( !*(v3 + 16) )
    {
        if ( v4 == 10 || v4 == 22 )
        {
            a2 = (v2 + 96);
            *a2 = 8;
            a2[12] = 9;
            a2[4] = 1 - *(v3 + 48);
            a2[7] = 1;
        }
        a2[3] = 11;
        result = 7;
        a2[14] = 7;
    }
    return result;
}


// 0x8027f42
int sub_8027F42()
{
    int v0; // r6
    int result; // r0

    v0 = 11;
    do
    {
        result = *getLocOfActiveChips_8027E1C(v0);
        if ( result != 10 && result != 11 )
        {
            sub_8027F6A();
            sub_8027F84();
            result = sub_8027FDC();
        }
        --v0;
    }
    while ( v0 >= 0 );
    return result;
}


// 0x8027f6a
signed int sub_8027F6A()
{
    int v0; // r7
    signed int result; // r0

    result = *getLocOfActiveChips_8027E1C(*(v0 + 1));
    if ( result == 10 || result == 11 )
    {
        result = 255;
        *(v0 + 1) = -1;
    }
    return result;
}


// 0x8027f84
int sub_8027F84()
{
    signed int v0; // r6
    unsigned __int8 *v1; // r7
    int result; // r0
    char *v3; // r0
    int v4; // r1

    result = *getLocOfActiveChips_8027E1C(v1[2]);
    if ( result == 10 || result == 11 )
    {
        v3 = &off_802A7FC;
        if ( v0 != 10 && v0 >= 5 )
        {
            v3 = byte_802A804;
            v4 = *v1;
            if ( v4 == 9 || v4 == 5 )
                --v0;
        }
        result = sub_8028034(&v3[byte_8027FD0[v0]]);
        if ( result == v0 )
            result = 255;
        v1[2] = result;
    }
    return result;
}


// 0x8027fdc
int sub_8027FDC()
{
    signed int v0; // r6
    unsigned __int8 *v1; // r7
    int result; // r0
    char *v3; // r0
    int v4; // r1

    result = *getLocOfActiveChips_8027E1C(v1[3]);
    if ( result == 10 || result == 11 )
    {
        v3 = &byte_802A817;
        if ( v0 != 10 && v0 >= 5 )
        {
            v3 = byte_802A81F;
            v4 = *v1;
            if ( v4 == 8 || v4 == 4 )
                ++v0;
        }
        result = sub_8028034(&v3[byte_8028028[v0]]);
        if ( result == v0 )
            result = 255;
        v1[3] = result;
    }
    return result;
}


// 0x8028034
int __fastcall sub_8028034(unsigned __int8 *a1)
{
    unsigned __int8 *i; // r4
    int v2; // r0

    for ( i = a1; ; ++i )
    {
        v2 = *getLocOfActiveChips_8027E1C(*i);
        if ( v2 != 10 && v2 != 11 )
            break;
    }
    return *i;
}


// 0x8028050
int sub_8028050()
{
    unsigned __int8 *v0; // r4
    int v1; // r5
    int v2; // r6
    int result; // r0

    v2 = 0;
    while ( 1 )
    {
        result = *v0;
        if ( result != 10 && result != 11 )
            break;
        v0 += 12;
        if ( ++v2 == 12 )
        {
            LOBYTE(v2) = 10;
            break;
        }
    }
    *(v1 + 7) = v2;
    return result;
}


// 0x802806c
int sub_802806C()
{
    unsigned __int8 *v0; // r4
    int v1; // r5
    int result; // r0
    int v3; // r6
    __int16 v4; // r0

    result = *(v1 + 7);
    if ( !*(v1 + 7) )
    {
        v3 = 0;
        while ( 1 )
        {
            result = *v0;
            if ( !*v0 )
            {
                v4 = sub_802A53C(**(v0 + 2));
                result = *(getChip8021DA8(v4 & 0x1FF) + 9);
                if ( result & 0x20 )
                    break;
            }
            v0 += 12;
            if ( ++v3 == 10 )
                return result;
        }
        *(v1 + 7) = v3;
    }
    return result;
}


// 0x80280a2
char *sub_80280A2()
{
    int v0; // r5
    char *result; // r0

    result = *(v0 + 16);
    if ( *(v0 + 16) && result <= 11 && !(word_20349AC & (1 << result)) )
    {
        *(v0 + 34) = *&byte_802A828[2 * (result - 1)];
        result = getLocOfActiveChips_8027E1C(9);
        *result = 0;
        result[4] = 0;
        *(result + 2) = v0 + 34;
    }
    return result;
}


// 0x80280e0
int sub_80280E0()
{
    _BYTE *v0; // r4
    int v1; // r5
    int result; // r0
    _BYTE *v3; // r1
    int v4; // r2

    result = *(v1 + 16);
    if ( !*(v1 + 16) )
    {
        result = sub_802A5DA();
        if ( result )
        {
            v3 = v0 + 96;
            *v3 = 4;
            v3[12] = 5;
            v4 = *(v1 + 22);
            v3[4] = 1 - v4;
            if ( v4 == 1 )
                v0[103] = 1;
            v0[99] = 11;
            result = 7;
            v0[110] = 7;
        }
    }
    return result;
}


// 0x802811c
int sub_802811C()
{
    int v0; // r5

    decomp_initGfx_8000B8E(&off_802A744);
    return sub_802812C(*(v0 + 16));
}


// 0x802812c
int __fastcall sub_802812C(int a1)
{
    int v1; // r4
    char *v2; // r0
    int v3; // r0
    int v4; // r2
    char *v5; // r0

    v1 = a1;
    v2 = sub_8028164(a1);
    v3 = (loc_8000AC8)(v2, 100757728, 64);
    (loc_8000AC8)(v3 + v4, 100757856);
    v5 = sub_8028172(v1);
    return (loc_8000AC8)(v5, byte_30016B0, 32);
}


// 0x8028164
char *__fastcall sub_8028164(int a1)
{
    return &byte_86F5834[128 * byte_802819C[a1]];
}


// 0x8028172
char *__fastcall sub_8028172(int a1)
{
    return &byte_86E56FC[32 * *(&off_802818C + a1)];
}


// 0x80281a8
char *__fastcall sub_80281A8(__int16 a1)
{
    int v1; // r0
    char *result; // r0

    v1 = a1 & 0x1FF;
    if ( v1 == 511 )
        result = byte_86E601C;
    else
        result = *(getChip8021DA8(v1) + 8);
    return result;
}


// 0x80281c4
int __fastcall sub_80281C4(__int16 a1)
{
    char *v1; // r0

    v1 = sub_80281A8(a1);
    return (loc_8000AC8)(v1);
}


// 0x80281d4
int __fastcall sub_80281D4(__int16 a1)
{
    return sub_80281C4(a1);
}


// 0x80281e4
int __fastcall sub_80281E4(int a1, int a2)
{
    return (loc_8000AC8)(&byte_8725894[128 * a1], (a2 << 7) + 100705440);
}


// 0x8028204
int __fastcall sub_8028204(signed int a1)
{
    int *v1; // r0

    v1 = sub_8028214(a1);
    return (loc_8000AC8)(v1);
}


// 0x8028214
int *__fastcall sub_8028214(signed int a1)
{
    if ( a1 == 27 || a1 == 28 )
        return byte_802A700;
    if ( a1 >= 28 )
        a1 = 27;
    return &dword_86E591C[16 * a1];
}


// 0x8028238
int sub_8028238()
{
    return sub_80281C4(511);
}


// 0x8028250
void __fastcall sub_8028250(int a1)
{
    char *v1; // r4
    signed int v2; // r7
    int v3; // [sp+0h] [bp-18h]

    v3 = a1;
    v1 = getLocOfActiveChips_8027E1C(0);
    v2 = 12;
    do
    {
        (*(&off_8028370 + *v1))();
        v1 += 12;
        --v2;
    }
    while ( v2 );
    if ( v3 )
        sub_80283C8();
    else
        sub_80283B0();
}


// 0x8028284
int sub_8028284()
{
    int v0; // r4
    __int16 v1; // r0
    unsigned int v2; // r0

    if ( *(v0 + 7) == 2 )
        v1 = 511;
    else
        v1 = getChipID_802A54E(**(v0 + 8));
    sub_80281C4(v1);
    v2 = getChipID_802A54E(**(v0 + 8));
    return sub_8028204(v2 >> 9);
}


// 0x80282ac
void nullsub_14()
{
    ;
}


// 0x80282ae
int __fastcall sub_80282AE(int a1, int a2)
{
    int v2; // r4
    char *v3; // r0

    v3 = byte_86E79CC;
    if ( *(v2 + 7) )
        v3 = &byte_86E79CC[256];
    return (loc_8000AC8)(v3, a2, byte_100);
}


// 0x80282c2
int sub_80282C2()
{
    return (loc_8000AC8)(&byte_86E79CC[512]);
}


// 0x80282d2
int sub_80282D2()
{
    int v0; // r4

    return (loc_8000AC8)(dword_86E441C + *(v0 + 7) * &byte_180);
}


// 0x80282e8
int sub_80282E8()
{
    int v0; // r4
    __int16 v1; // r0
    unsigned int v2; // r0

    if ( *(v0 + 7) == 2 )
        v1 = 511;
    else
        v1 = getChipID_802A54E(**(v0 + 8));
    sub_80281C4(v1);
    v2 = getChipID_802A54E(**(v0 + 8));
    return sub_8028204(v2 >> 9);
}


// 0x8028310
int sub_8028310()
{
    sub_80281C4(511);
    return sub_8028204(29);
}


// 0x8028320
void __fastcall sub_8028320(int a1, int a2, int a3)
{
    int v3; // r7

    if ( v3 == 1 )
        (loc_8000AC8)(&byte_86E79CC[768], a2, byte_100);
    else
        sub_802868C(byte_802A700, a2, a3, 3);
}


// 0x8028340
int sub_8028340()
{
    int v0; // r4

    return (loc_8000AC8)(dword_86E4D9C + *(v0 + 7) * &byte_180);
}


// 0x80283b0
void sub_80283B0()
{
    sub_80283C8();
    CopyBackgroundTiles(0, 13, 3, &unk_2035186, 15, dword_4 + 2);
}


// 0x80283c8
int sub_80283C8()
{
    char *v0; // r7
    signed int v1; // r6
    signed int v2; // r2
    int result; // r0
    _WORD *v4; // r4
    int v5; // r2

    v0 = getLocOfActiveChips_8027E1C(0);
    v1 = 0;
    do
    {
        v2 = 0;
        result = *v0;
        if ( result != 1 && result != 2 && result != 3 )
        {
            if ( result != 10 )
            {
                if ( result != 6 && result != 7 && *v0 )
                {
                    v2 = 4;
                }
                else if ( v0[7] == 1 )
                {
                    v2 = 2;
                }
            }
            v4 = *(&off_802843C + v1);
            v5 = *&byte_8028470[v2];
            *v4 = *v4 & 0x3FF | v5;
            v4[1] = v4[1] & 0x3FF | v5;
            v4[15] = v4[15] & 0x3FF | v5;
            result = v4[16] & 0x3FF | v5;
            v4[16] = result;
        }
        v0 += 12;
        ++v1;
    }
    while ( v1 < 10 );
    return result;
}


// 0x8028476
void sub_8028476()
{
    int v0; // r5
    char *v1; // r0
    int v2; // r2
    int v3; // r1
    unsigned int v4; // r0

    v1 = getLocOfActiveChips_8027E1C(*(v0 + 7));
    v3 = *v1;
    if ( !*v1 )
    {
        v4 = getChipID_802A54E(**(v1 + 2));
        sub_80284E2(v4);
    }
    if ( v3 == 1 )
    {
        sub_80286D4(v1, 1, v2);
    }
    else if ( v3 == 2 )
    {
        sub_802871C(v1, 2, v2);
    }
    else if ( v3 == 4 || v3 == 5 )
    {
        sub_80287A4(v1, v3, v2);
    }
    else
    {
        if ( v3 == 6 || v3 == 7 )
            sub_80285FE(**(v1 + 2));
        if ( v3 == 3 )
        {
            sub_8028754(v1, 3, v2);
        }
        else if ( v3 == 8 || v3 == 9 )
        {
            sub_802877C(v1, v3, v2);
        }
    }
}


// 0x80284e2
void __fastcall __noreturn sub_80284E2(unsigned int a1)
{
    int v1; // r10
    int (*v2)[345]; // r0
    int v3; // r1
    unsigned int v4; // r4
    signed int v5; // r0
    signed int v6; // r0
    int v7; // ST1C_4
    int v8; // r2
    signed int v9; // r0
    signed int v10; // r0
    int v11; // r3
    int v12; // r1
    int v13; // r0
    int v14; // ST1C_4
    int v15; // r1
    unsigned int v16; // [sp+10h] [bp-28h]
    unsigned int v17; // [sp+20h] [bp-18h]
    _DWORD *v18; // [sp+24h] [bp-14h]
    int v19; // [sp+28h] [bp-10h]
    int v20; // [sp+2Ch] [bp-Ch]

    v17 = a1;
    v2 = sub_8027D10(a1);
    renderTextGfx_8045F8C(v2, v3, byte_203C4E0, 100701024);
    v4 = v16;
    v20 = sub_80109A4(v17 & 0x1FF, *(*(v1 + oToolkit_S2034880_Ptr) + 13));
    v18 = getChip8021DA8(v17 & 0x1FF);
    if ( v18[9] )
    {
        (loc_8000AC8)();
        (loc_8000AC8)(v18[10], &unk_3001AA0, 32);
    }
    v5 = *(v18 + 7);
    if ( v5 <= 2 )
    {
        if ( *(v18 + 9) & 0x20 )
            v5 = 3;
    }
    else
    {
        v5 = 0;
    }
    (loc_8000AC8)(&byte_86E587C[32 * v5], &unk_3001A80);
    v6 = v17 >> 9;
    if ( v17 >> 9 == 28 )
        v6 = 27;
    (loc_8000AC8)(&dword_86E2E98[16 * v6], 100702880, 64);
    v19 = *(v18 + 9) & 0x12;
    v7 = *(v18 + 6);
    (loc_8000AC8)(&dword_86E3598[32 * v7], 100702944);
    (loc_8000AC4)(&dword_86E3B18[3 * v7], &unk_3001AD4);
    v9 = v19;
    if ( v19 )
    {
        if ( v17 == 85 )
        {
            v4 = 2730;
            v19 = 3;
            goto LABEL_15;
        }
        v10 = sub_8000C00(v20);
        v4 = v10;
        v9 = sub_8000C5C(v10);
        v19 = v9;
    }
    if ( v9 != 3 )
        sub_802868C(byte_802A6C0, 100703072, v8, 3 - v9);
LABEL_15:
    v11 = v19;
    if ( v19 )
    {
        v12 = 100703200;
        do
        {
            v13 = v4 & 0xF;
            v4 >>= 4;
            v14 = v11;
            (loc_8000AC8)(&dword_86E411C[16 * v13], v12, 64);
            v12 = v15 - 64;
            v11 = v14 - 1;
        }
        while ( v14 != 1 );
    }
}


// 0x80285fe
void __fastcall __noreturn sub_80285FE(__int16 a1)
{
    __int16 v1; // ST00_2
    int (*v2)[345]; // r0
    int v3; // r1
    _DWORD *v4; // r0
    int v5; // r1
    int v6; // r2
    _DWORD *v7; // r4
    int v8; // r0

    v1 = a1;
    v2 = sub_8027D10(a1);
    renderTextGfx_8045F8C(v2, v3, byte_203C4E0, 100701024);
    v4 = getChip8021DA8(v1 & 0x1FF);
    v7 = v4;
    v8 = v4[9];
    if ( v8 )
    {
        (loc_8000AC8)();
        v8 = (loc_8000AC8)(v7[10], &unk_3001AA0, 32);
    }
    sub_802869E(v8, v5, v6);
}


// 0x802868c
void __fastcall sub_802868C(int a1, int a2, int a3, int a4)
{
    int v4; // r4

    v4 = a4;
    do
    {
        (loc_8000AC8)();
        --v4;
    }
    while ( v4 );
}


// 0x802869e
void __fastcall sub_802869E(int a1, int a2, int a3)
{
    int v3; // r2
    int v4; // r2

    sub_802868C(byte_802A6C0, 100702880, a3, 1);
    sub_802868C(byte_802A680, 100702944, v3, 2);
    sub_802868C(byte_802A6C0, 100703072, v4, 3);
}


// 0x80286d4
void __fastcall sub_80286D4(int a1, int a2, int a3)
{
    int v3; // r5
    signed int v4; // r1
    signed int v5; // ST00_4
    int v6; // r0
    int v7; // r1
    int v8; // r2

    sub_80287D2(a1, a2, a3);
    v4 = *(v3 + 8);
    if ( *(v3 + 8) )
        v4 = 4;
    v5 = v4;
    (loc_8000AC8)(*(off_8028708 + v4), 100701536, 1344);
    v6 = (loc_8000AC8)(*(off_8028714 + v5), &unk_3001AA0, 32);
    sub_802869E(v6, v7, v8);
}


// 0x802871c
void __fastcall sub_802871C(int a1, int a2, int a3)
{
    char *v3; // r0
    int v4; // r0
    int v5; // r1
    int v6; // r2

    sub_80287D2(a1, a2, a3);
    (loc_8000AC8)(byte_8723034, 100701536, 1344);
    v3 = getLocOfActiveChips_8027E1C(11);
    v4 = (loc_8000AC8)(&dword_8725814[8 * v3[6]], &unk_3001AA0, 32);
    sub_802869E(v4, v5, v6);
}


// 0x8028754
void __fastcall sub_8028754(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2

    sub_80287D2(a1, a2, a3);
    (loc_8000AC8)(dword_87225B4, 100701536, 1344);
    v3 = (loc_8000AC8)(dword_87257D4, &unk_3001AA0, 32);
    sub_802869E(v3, v4, v5);
}


// 0x802877c
void __fastcall sub_802877C(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2

    sub_80287D2(a1, a2, a3);
    (loc_8000AC8)(dword_8733E74, 100701536, 1344);
    v3 = (loc_8000AC8)(dword_87343D4, &unk_3001AA0, 32);
    sub_802869E(v3, v4, v5);
}


// 0x80287a4
int __fastcall sub_80287A4(_BYTE *a1, int a2, int a3)
{
    int v3; // r1
    int v4; // ST00_4
    int v5; // r0
    int v6; // r1
    int v7; // r2

    v3 = *a1;
    if ( v3 == 5 )
        a1 -= 12;
    v4 = a1[4];
    sub_80287D2(v4, v3, a3);
    (loc_8000AC8)(dword_8722AF4, 100701536, 1344);
    v5 = (loc_8000AC8)(dword_8725854, &unk_3001AA0, 32);
    sub_802869E(v5, v6, v7);
    return v4;
}


// 0x80287d2
int __fastcall sub_80287D2(int a1, int a2, int a3)
{
    sub_802868C(byte_802A6C0, 100701024, a3, 8);
    return (loc_8000AC8)(byte_86E587C, &unk_3001A80, 32);
}


// 0x8028820
int sub_8028820()
{
    int v0; // r5
    int v1; // r6
    char *v2; // r0
    int v3; // r0
    int v4; // r5
    int v5; // r1
    int v6; // r4
    int v7; // r2
    int v8; // r3
    int v9; // r1
    int v10; // r5
    signed int v11; // r6
    int result; // r0

    v2 = getLocOfActiveChips_8027E1C(*(v0 + 7));
    v3 = (*(&jt_802886C + *v2))();
    v4 = (*(v0 + 64) >> 3) & 1;
    v6 = ((v3 - 3) << 16) + v5 - 3;
    v7 = 1;
    v8 = 0;
    v9 = v4 + 46948;
    v10 = 16 * v4 + v1;
    v11 = 12;
    do
    {
        result = sub_8009FF8(*(v10 + v11) + v6, v9, v7, v8);
        v11 -= 4;
    }
    while ( v11 >= 0 );
    return result;
}


// 0x8028894
int sub_8028894()
{
    int v0; // r5
    signed int v1; // r0

    v1 = *(v0 + 7);
    if ( v1 >= 5 )
        v1 -= 5;
    return 16 * v1 + 8;
}


// 0x80288d0
signed __int64 sub_80288D0()
{
    return 472446402651LL;
}


// 0x8028904
signed __int64 sub_8028904()
{
    return 579820585051LL;
}


// 0x8028938
signed __int64 sub_8028938()
{
    return 549755813944LL;
}


// 0x8028968
signed __int64 sub_8028968()
{
    return 575525617755LL;
}


// 0x802899c
int sub_802899C()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r5

    result = *(*(v1 + oToolkit_S2034880_Ptr) + 23);
    if ( *(*(v1 + oToolkit_S2034880_Ptr) + 23) )
    {
        v3 = *(v0 + 64);
        if ( !(v3 & 7) )
            (loc_8000AC8)(&dword_86E1238[16 * (v3 & 8)], 100756672, 512);
        result = sub_8009FF8(-2147352476, 46950, 1, 0);
    }
    return result;
}


// 0x80289e4
int sub_80289E4()
{
    int v0; // r5
    int v1; // r4
    int v2; // r2
    int v3; // r3
    int v4; // r1
    signed int v5; // r6
    int result; // r0

    v1 = 16 * *(v0 + 27) + 327685;
    v2 = 1;
    v3 = 0;
    v4 = ((*(v0 + 64) >> 3) & 1) + 59282 + ((*(v0 + 64) >> 3) & 1);
    v5 = 0;
    do
    {
        if ( v5 == 16 )
            ++v4;
        result = sub_8009FF8(*&byte_8028A30[v5] + v1, v4, v2, v3);
        v5 += 4;
    }
    while ( v5 < 72 );
    return result;
}


// 0x8028a78
int __fastcall sub_8028A78(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r7
    int v5; // r4
    __int16 v6; // r0
    int v7; // r1
    int v8; // r4
    int result; // r0
    int v10; // r2
    int v11; // r1
    int v12; // r1
    int v13; // r2

    v5 = *(v3 + 27);
    if ( *(v3 + 25) )
        goto LABEL_25;
    v6 = *(v4 + 4);
    v7 = 64;
    if ( v6 & 0x40 )
    {
        v8 = v5 - 1;
        if ( v8 < 0 )
        {
            v7 = *(v3 + 24) - 1;
            LOBYTE(v8) = *(v3 + 24) - 1;
        }
LABEL_8:
        *(v3 + 27) = v8;
        result = *(v3 + 24);
        if ( result > 1 )
            result = PlaySoundEffect(127, v7, a3);
        return result;
    }
    if ( v6 & 0x80 )
    {
        v8 = v5 + 1;
        v7 = *(v3 + 24) - 1;
        if ( v8 > v7 )
            LOBYTE(v8) = 0;
        goto LABEL_8;
    }
    if ( !(*(v4 + 2) & 1) )
    {
LABEL_25:
        result = *(v4 + 2);
        if ( result & 2 )
        {
            result = sub_8029B1C();
            if ( !result )
            {
                *(v3 + 1) = 80;
                result = 0;
                *(v3 + 2) = 0;
            }
        }
        else if ( result & 8 )
        {
            *(v3 + 7) = 10;
            *(v3 + 1) = 80;
            *(v3 + 2) = 0;
            result = PlaySoundEffect(127, 10, a3);
        }
        else if ( !(result & 4) && result & byte_100 )
        {
            getLocOfActiveChips_8027E1C(*(v3 + 7));
            chatbox_runScript(TextScriptChipDesc86EF4D4, *(&word_50 + *(v3 + 27) + v3) + 5);
            PlaySoundEffect(156, v12, v13);
            *(v3 + 1) = 88;
            result = 0;
            *(v3 + 2) = 0;
        }
    }
    else
    {
        result = sub_80298F4();
        if ( !result )
        {
            v11 = v5 + 85;
            if ( *(v3 + v5 + 85) == 1 )
            {
                result = PlaySoundEffect(105, v11, v10);
            }
            else
            {
                *(v3 + v11) = 1;
                *(v3 + 26) = *(&word_50 + v5 + v3);
                *(v3 + 25) = 1;
                PlaySoundEffect(129, &word_50 + v5, v10);
                *(v3 + 1) = 92;
                result = 0;
                *(v3 + 2) = 0;
            }
        }
    }
    return result;
}


// 0x8028b74
char *__usercall sub_8028B74@<R0>(void *r5@<R5>)
{
    int v1; // r7
    int v2; // r2
    unsigned __int8 *v3; // r4
    __int16 v4; // r0
    signed int v5; // r0
    char *result; // r0
    int v7; // r1
    int v8; // r1
    int v9; // r2
    int v10; // r1
    __int16 v11; // r0
    int (*v12)[162]; // r0
    int v13; // r1
    int v14; // r1
    int v15; // r2
    __int16 v16; // [sp-4h] [bp-Ch]

    v3 = getLocOfActiveChips_8027E1C(*(r5 + 7));
    v4 = *(v1 + 4);
    if ( v4 & 0xC0 )
    {
        v16 = *(v1 + 4);
        if ( sub_802D234() != 1 )
        {
            v2 = *(r5 + 16);
            if ( !*(r5 + 16) )
            {
                v2 = *(r5 + 23);
                if ( !*(r5 + 23) )
                {
                    v2 = *(r5 + 24);
                    if ( *(r5 + 24) )
                    {
                        if ( v16 & 0x40 )
                        {
                            v5 = *(r5 + 7);
                            if ( v5 == 10 || v5 <= 4 )
                            {
                                *(r5 + 1) = 76;
                                result = 0;
                                *(r5 + 1) = 0;
                                return result;
                            }
                        }
                    }
                }
            }
        }
        result = v3[1];
LABEL_15:
        if ( result == &loc_FC + 3 )
            return result;
        goto LABEL_16;
    }
    if ( v4 & 0x20 )
    {
        result = v3[2];
        goto LABEL_15;
    }
    if ( v4 & 0x10 )
    {
        result = v3[3];
        goto LABEL_15;
    }
    result = *(v1 + 2);
    if ( result & 1 )
    {
        result = sub_80298F4();
        if ( !result )
        {
            result = (*(&off_8028C9C + *v3))();
            if ( !result )
            {
                result = *(r5 + 12);
                if ( result != &loc_FC + 3 )
                    result = sub_8029A56();
            }
        }
    }
    else if ( result & 2 )
    {
        result = sub_8029B1C();
        if ( !result )
            result = sub_8029032(0, v8, v9);
    }
    else
    {
        if ( result & 8 )
        {
            result = (&dword_8 + 2);
LABEL_16:
            v7 = *(r5 + 7);
            if ( result != v7 )
            {
                *(r5 + 7) = result;
                PlaySoundEffect(127, v7, v2);
            }
            sub_8028476();
            return result;
        }
        if ( result & 4 )
        {
            *(r5 + 1) = 12;
            result = 0;
            *(r5 + 1) = 0;
        }
        else if ( result & byte_100 )
        {
            result = getLocOfActiveChips_8027E1C(*(r5 + 7));
            v10 = *result;
            if ( v10 == 6 || v10 == 7 || !*result )
            {
                v11 = getChipID_802A54E(**(result + 2));
                v12 = chip_getScript_8027D34(v11);
                chatbox_runScript(v12, v13);
                PlaySoundEffect(156, v14, v15);
                *(r5 + 1) = 24;
                result = 0;
                *(r5 + 1) = 0;
            }
        }
        else if ( result & byte_200 )
        {
            result = sub_802D234();
            if ( result != &byte_0[1] )
            {
                *(r5 + 1) = 28;
                result = 0;
                *(r5 + 1) = 0;
            }
        }
    }
    return result;
}


// 0x8028ccc
int __fastcall sub_8028CCC(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r5
    signed int v5; // r0
    __int16 v6; // r0
    int v7; // r1
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int result; // r0

    if ( *(v3 + 7) || (v5 = *(v4 + 8), v5 >= 5) )
    {
        PlaySoundEffect(105, a2, a3);
        result = 1;
    }
    else
    {
        *(v4 + 8) = v5 + 1;
        *(v4 + v5 + 72) = *(v4 + 7);
        v6 = getChipID_802A54E(**(v3 + 8));
        v7 = *(v4 + 8);
        sub_80281D4(v6);
        sub_8029CD4(*(v4 + 8) - 1, 1, 0);
        v8 = *(v4 + 7);
        sub_8028238();
        *(v3 + 7) = 2;
        sub_8028E32();
        PlaySoundEffect(129, v9, v10);
        *(v4 + 15) = 1;
        result = sub_802A00C(**(v3 + 8));
        if ( result )
        {
            *(v4 + 1) = 68;
            result = 0;
            *(v4 + 2) = 0;
        }
    }
    return result;
}


// 0x8028d3a
int __fastcall sub_8028D3A(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r1
    int v6; // r2

    sub_8029110(a1, a2, a3, a4);
    sub_80293F8();
    if ( *(v4 + 25) )
    {
        sub_802937A();
    }
    else if ( *(v4 + 58) )
    {
        sub_80293B0();
    }
    *(v4 + 1) = 8;
    *(v4 + 2) = 0;
    PlaySoundEffect(130, v5, v6);
    return 0;
}


// 0x8028d6c
signed int __fastcall sub_8028D6C(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r5
    signed int v5; // r0
    int v6; // r0
    __int16 v7; // r0
    int v8; // r1
    int v9; // r1
    int v10; // r2
    signed int result; // r0

    if ( *(v3 + 7) || (v5 = *(v4 + 8), v5 >= 5) )
    {
        PlaySoundEffect(105, a2, a3);
        result = 1;
    }
    else
    {
        *(v4 + 8) = v5 + 1;
        *(v4 + v5 + 72) = *(v4 + 7);
        v6 = **(v3 + 8);
        v7 = sub_802A034();
        v8 = *(v4 + 8);
        sub_80281D4(v7);
        sub_8029CD4(*(v4 + 8) - 1, 1, 0);
        PlaySoundEffect(129, v9, v10);
        *(v4 + 1) = 72;
        *(v4 + 2) = 0;
        result = 0;
    }
    return result;
}


// 0x8028dbc
int sub_8028DBC()
{
    int v0; // r0
    int v1; // r2
    int v2; // r3

    v0 = sub_800A7E2();
    sub_802D064(v0)[8] = 1;
    byte_20349A4 = 1;
    sub_8028D3A(&dword_20349A0, 1, v1, v2);
    return 0;
}


// 0x8028dd6
signed int __fastcall sub_8028DD6(int a1, int a2, int a3)
{
    unsigned __int8 *v3; // r4
    int v4; // r5
    int v5; // r1
    signed int result; // r0

    v5 = *v3;
    if ( v5 == 5 )
        v3 -= 12;
    if ( v3[7] )
    {
        PlaySoundEffect(105, v5, a3);
        result = 1;
    }
    else
    {
        *(v4 + 1) = 40;
        *(v4 + 2) = 0;
        PlaySoundEffect(386, v5, a3);
        result = 0;
    }
    return result;
}


// 0x8028e04
signed int __fastcall sub_8028E04(int a1, int a2, int a3)
{
    unsigned __int8 *v3; // r4
    int v4; // r5
    int v5; // r1
    signed int result; // r0

    v5 = *v3;
    if ( v5 == 9 )
        v3 -= 12;
    if ( v3[7] )
    {
        PlaySoundEffect(105, v5, a3);
        result = 1;
    }
    else
    {
        PlaySoundEffect(129, v5, a3);
        *(v4 + 1) = 56;
        *(v4 + 2) = 0;
        result = 0;
    }
    return result;
}


// 0x8028e30
void nullsub_59()
{
    ;
}


// 0x8028e32
void sub_8028E32()
{
    sub_8028E4C();
    updateCustomScreen_WhenUnselectingChip_8028EC8();
    sub_8028F48();
    sub_8028F84();
    sub_8028250(0);
}


// 0x8028e4c
char *sub_8028E4C()
{
    int v0; // r5
    signed int v1; // r6
    signed int v2; // r7
    char *result; // r0
    int v4; // r3
    signed int v5; // r4
    int v6; // ST00_4
    int v7; // r3
    bool v8; // zf
    signed int v9; // r1
    char *v10; // [sp-4h] [bp-14h]

    v1 = -1;
    v2 = 26;
    result = 0;
    *(v0 + 10) = 0;
    v4 = *(v0 + 8);
    if ( *(v0 + 8) )
    {
        v5 = 72;
        do
        {
            v6 = v4;
            result = getLocOfActiveChips_8027E1C(*(v0 + v5));
            v7 = v6;
            if ( !*result )
            {
                v10 = (getChipID_802A54E(**(result + 2)) & 0x1FF);
                v8 = chipIDIs13f_8029FF4(v10) == 0;
                result = v10;
                if ( v8 )
                {
                    if ( v9 < 27 || v9 > 28 )
                    {
                        if ( v9 != 26 )
                        {
                            if ( v2 == 26 )
                            {
                                v2 = v9;
                            }
                            else if ( v2 != v9 )
                            {
                                v2 = 255;
                            }
                        }
                        if ( v1 == -1 )
                        {
                            v1 = v10;
                        }
                        else if ( v10 != v1 )
                        {
                            v1 = -2;
                        }
                    }
                    else
                    {
                        *(v0 + 10) = v9;
                    }
                }
            }
            ++v5;
            v4 = v7 - 1;
        }
        while ( v4 );
    }
    *(v0 + 32) = v1;
    *(v0 + 9) = v2;
    return result;
}


// 0x8028ec8
// () -> void
signed int updateCustomScreen_WhenUnselectingChip_8028EC8()
{
    int v0; // r5
    char *v1; // r4
    signed int v2; // r3
    signed int result; // r0
    char v4; // r6
    bool v5; // zf
    signed int v6; // r1
    int v7; // r2
    signed int v8; // r2
    int v9; // [sp-4h] [bp-14h]

    v1 = getLocOfActiveChips_8027E1C(0);
    v2 = 10;
    do
    {
        result = *v1;
        if ( !*v1 )
        {
            result = v1[7];
            if ( result != 2 )
            {
                result = *(v0 + 8);
                if ( result < 5 )
                {
                    v4 = 0;
                    v9 = getChipID_802A54E(**(v1 + 2)) & 0x1FF;
                    v5 = chipIDIs13f_8029FF4(v9) == 0;
                    result = v9;
                    if ( !v5 )
                        goto chipCodeSelectTrue_8028F3E;
                    if ( v6 < 27 || v6 > 28 )
                    {
                        v7 = *(v0 + 32);
                        if ( v7 != -1 && v9 == v7 )
                            goto chipCodeSelectTrue_8028F3E;
                        v8 = *(v0 + 9);
                        if ( v8 != 255 && (v8 <= 26 && v8 == 26 || v6 <= 26 && v6 == 26 || v6 == v8) )
                            goto chipCodeSelectTrue_8028F3E;
                    }
                    else
                    {
                        result = *(v0 + 10);
                        if ( !*(v0 + 10) || result == v6 )
                            goto chipCodeSelectTrue_8028F3E;
                    }
                }
                v4 = 1;
chipCodeSelectTrue_8028F3E:
                v1[7] = v4;
                goto chipCodeSelectLoopInc_8028F40;
            }
        }
chipCodeSelectLoopInc_8028F40:
        v1 += 12;
        --v2;
    }
    while ( v2 );
    return result;
}


// 0x8028f48
signed int sub_8028F48()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r4
    signed int result; // r0

    v1 = getLocOfActiveChips_8027E1C(11);
    v2 = v1;
    result = *v1;
    if ( result == 2 )
    {
        result = v2[7];
        if ( result != 2 )
        {
            if ( *(v0 + 8) >= 5 || !sub_802A57E() || *(v0 + 25) )
            {
                result = 1;
                v2[7] = 1;
            }
            else
            {
                result = 0;
                v2[7] = 0;
            }
        }
    }
    return result;
}


// 0x8028f84
signed int sub_8028F84()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r4
    signed int result; // r0

    v1 = getLocOfActiveChips_8027E1C(8);
    v2 = v1;
    result = *v1;
    if ( result == 8 )
    {
        result = v2[7];
        if ( result != 2 )
        {
            if ( v2[7] == 3 || !*(v0 + 8) || *getLocOfActiveChips_8027E1C(*(v0 + *(v0 + 8) + 71)) )
            {
                result = 1;
                v2[7] = 1;
            }
            else
            {
                result = 0;
                v2[7] = 0;
            }
        }
    }
    return result;
}


// 0x8028fc0
signed int sub_8028FC0()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r4
    signed int result; // r0
    char *v4; // r0
    __int16 v5; // r0

    v1 = getLocOfActiveChips_8027E1C(8);
    v2 = v1;
    result = *v1;
    if ( result == 6 )
    {
        if ( !*(v0 + 8)
            || (v4 = getLocOfActiveChips_8027E1C(*(v0 + *(v0 + 8) + 71)), *v4)
            || v4[5]
            || (v5 = getChipID_802A54E(**(v4 + 2)), !(*(getChip8021DA8(v5 & 0x1FF) + 9) & 2)) )
        {
            if ( v2[7] != 2 )
                v2[7] = 1;
            result = v2[19];
            if ( result != 2 )
            {
                result = 1;
                v2[19] = 1;
            }
        }
        else
        {
            if ( v2[7] != 2 )
                v2[7] = 0;
            result = v2[19];
            if ( result != 2 )
            {
                result = 0;
                v2[19] = 0;
            }
        }
    }
    return result;
}


// 0x8029032
int __fastcall sub_8029032(int a1, int a2, int a3)
{
    unsigned __int8 *v3; // r5
    int v5; // r1
    char *v6; // r4
    int v7; // r1
    int v8; // r2
    int v9; // r1
    int v10; // r2
    int v11; // r1
    int v12; // r2
    int v13; // r1
    int v14; // r2
    int v15; // r0
    int v16; // r1
    int v17; // r2

    if ( v3[8] )
    {
        v6 = getLocOfActiveChips_8027E1C(v3[v3[8] + 71]);
        if ( *v6 == 2 )
        {
            --v3[8];
            sub_80281D4(511);
            sub_8029CD4(v3[8], 0, 0);
            sub_802A0EC();
            PlaySoundEffect(131, v7, v8);
            PlaySoundEffect(466, v9, v10);
            v3[23] = 0;
        }
        else
        {
            if ( sub_802A00C(**(v6 + 2)) )
            {
                PlaySoundEffect(131, v11, v12);
                PlaySoundEffect(466, v13, v14);
                sub_802A0EC();
            }
            --v3[8];
            sub_80281D4(511);
            sub_8029CD4(v3[8], 0, 0);
            v15 = v6[5];
            if ( v6[5] )
            {
                v6[5] = 0;
                v6[4] &= 0xC1u;
                getLocOfActiveChips_8027E1C(v15)[7] = 0;
            }
        }
        v6[7] = 0;
    }
    else
    {
        if ( !v3[25] )
            return PlaySoundEffect(105, a2, a3);
        v5 = v3[27] + 85;
        v3[v5] = 0;
        v3[26] = 0;
        v3[25] = 0;
        PlaySoundEffect(466, v5, a3);
        sub_802A0EC();
    }
    sub_8028E32();
    sub_8028476();
    return PlaySoundEffect(131, v16, v17);
}


// 0x8029110
int __fastcall sub_8029110(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int *v6; // r4
    char *v7; // r6
    signed int v8; // r3
    int *v9; // r4
    int v10; // r7
    signed int v11; // r6
    char *v12; // r0
    unsigned int v13; // r0
    int v14; // r3
    unsigned __int64 v15; // r0
    int v16; // r0
    int v17; // ST04_4
    int v18; // r0
    int v19; // r1
    int v20; // r2
    int *v21; // r2
    char *v22; // r6
    char *v23; // r4
    char v24; // r0
    int result; // r0
    signed int v26; // r3
    int v27; // [sp-Ch] [bp-1Ch]
    unsigned int v28; // [sp-8h] [bp-18h]
    int v29; // [sp-4h] [bp-14h]

    *(v4 + 11) = 20;
    ZeroFillByWord(dword_2033000, 72);
    v6 = dword_2033000;
    v7 = &byte_20366C0;
    v8 = 6;
    do
    {
        *v6 = -1;
        *(v7 + 25) = -1;
        v6 = (v6 + 2);
        v7 += 2;
        --v8;
    }
    while ( v8 );
    v9 = dword_2033000;
    v10 = *(v4 + 8);
    if ( *(v4 + 8) )
    {
        v11 = 72;
        do
        {
            v12 = getLocOfActiveChips_8027E1C(*(v4 + v11));
            if ( *v12 == 2 )
            {
                sub_8029344();
            }
            else
            {
                if ( !*v12 )
                    *(v9 + 30) = v12[4];
                v13 = getChipID_802A54E(**(v12 + 2));
                *(v14 + 50) = v13;
                v15 = v13 << 23;
                v16 = v15 >> 23;
                *v9 = v16;
                *(v9 + 24) = WORD2(v15);
                if ( v16 >= byte_190 )
                    word_20349AC |= 1 << (v16 - byte_190 + 1);
                v17 = v16;
                *(v9 + 6) = sub_80109A4(v16, *(*(v5 + oToolkit_S2034880_Ptr) + 13));
                *(v9 + 18) = *(getChip8021DA8(v17) + 6);
                v9 = (v9 + 2);
            }
            ++v11;
            --v10;
        }
        while ( v10 );
        sub_8029520(byte_20366F2, 0);
        if ( v18 )
        {
            v27 = v18;
            v28 = v19;
            v29 = v20;
            if ( !sub_8029328(v18, v19, v20) )
            {
                sub_80292CC(v27, v28, v29);
                sub_802B6F2(v27, v28 >> 1, v29, byte_20366F2);
                *(v4 + 11) = 16;
            }
        }
        sub_8029224();
    }
    v21 = dword_2033000;
    v22 = &byte_20366C0;
    v23 = byte_20366FE;
    v24 = 0;
    if ( !*(v4 + 8) )
        v24 = -1;
    byte_20366C0 = v24;
    result = *(*(v5 + oToolkit_S2034880_Ptr) + 7) - 1;
    v26 = 6;
    do
    {
        *(v22 + 1) = *v21;
        *(v22 + 7) = *(v21 + 6);
        *(v22 + 13) = *(v21 + 12);
        *(v22 + 19) = 0;
        *v23 = result;
        v23[6] = *(v21 + 30);
        v22 += 2;
        ++v23;
        v21 = (v21 + 2);
        --v26;
    }
    while ( v26 );
    return result;
}


// 0x8029224
int sub_8029224()
{
    signed __int16 *i; // r4
    int result; // r0
    signed int v2; // r1
    signed int v3; // r2
    signed int v4; // ST00_4
    int v5; // r0
    int v6; // r3
    int v7; // r0
    _WORD *v8; // r2
    signed __int16 *v9; // r3
    int v10; // r0
    signed int v11; // [sp-4h] [bp-14h]

    for ( i = (dword_2033000 + 2); ; ++i )
    {
        result = *i;
        if ( result == -1 )
            break;
        switch ( result )
        {
            case 192:
                goto LABEL_10;
            case 193:
                v2 = 4;
                v3 = 0;
                break;
            case 195:
            case 184:
LABEL_10:
                v2 = 2;
                v3 = 0;
                break;
            case 185:
                v2 = 2;
                v3 = 1;
                break;
            default:
                continue;
        }
        v4 = v2;
        v11 = v3;
        v5 = *(getChip8021DA8(*(i - 1)) + 9);
        if ( v5 & v4 && !(v5 & v11) )
        {
            v7 = *i;
            if ( v7 == 184 )
            {
                i[29] |= 2u;
            }
            else if ( v7 == 185 )
            {
                i[29] |= 4u;
            }
            else
            {
                i[11] += i[6];
            }
            *(v6 + 58) |= *(v6 + 60) & 1;
            v8 = i;
            v9 = i + 1;
            do
            {
                v8[30] = v9[30];
                v8[6] = v9[6];
                v8[18] = v9[18];
                v10 = *v9;
                *v8 = v10;
                ++v9;
                ++v8;
            }
            while ( v10 != -1 );
            --i;
        }
    }
    return result;
}


// 0x80292cc
int __fastcall sub_80292CC(int a1, int a2, int a3)
{
    int v3; // r10
    _WORD *v4; // r4
    signed __int16 *v5; // r6
    int v6; // r7
    int v7; // ST00_4
    signed int v8; // r2
    _WORD *v9; // r4
    int result; // r0

    v4 = (dword_2033000 + a2);
    v5 = (dword_2033000 + 2 * a3 + a2);
    v6 = a3 - 1;
    *(dword_2033000 + a2) = a1;
    v7 = a1;
    v4[6] = sub_80109A4(a1, *(*(v3 + oToolkit_S2034880_Ptr) + 13));
    v4[18] = *(getChip8021DA8(v7) + 6);
    v8 = 31;
    do
    {
        v4[30] |= v4[v8] & 1;
        ++v8;
        --v6;
    }
    while ( v6 );
    v9 = v4 + 1;
    do
    {
        v9[30] = v5[30];
        v9[6] = v5[6];
        v9[18] = v5[18];
        result = *v5;
        *v9 = result;
        ++v5;
        ++v9;
    }
    while ( result != -1 );
    return result;
}


// 0x8029328
int __fastcall sub_8029328(int a1, int a2, int a3)
{
    _WORD *v3; // r4
    int result; // r0

    v3 = (&dword_2033000[15] + a2);
    result = 0;
    do
    {
        if ( *v3 & 0xFE )
            ++result;
        ++v3;
        --a3;
    }
    while ( a3 );
    return result;
}


// 0x8029344
void sub_8029344()
{
    char v0; // r6
    int v1; // r1
    int v2; // r4

    v0 = sub_802A11C(0);
    if ( sub_802A564() == 1 )
    {
        v2 = 24;
    }
    else if ( v1 )
    {
        v2 = v1 + 12;
    }
    else
    {
        v2 = 12;
    }
    sub_8015952(v2, 0, v0);
    byte_20349B0 = 1;
}


// 0x802937a
void sub_802937A()
{
    int v0; // r5
    signed int v1; // r4
    signed int v2; // r1
    char v3; // r0

    v1 = 6;
    sub_802A564();
    if ( v2 >= 11 )
        v1 = 18;
    v3 = sub_802A11C(1);
    sub_8015952(*(v0 + 26) + v1, 0, v3);
    dword_20349A0 |= 1 << (*(v0 + 26) + 5);
}


// 0x80293b0
void sub_80293B0()
{
    int v0; // r5
    int v1; // r3

    sub_8015952(*(v0 + 58) + 12, 0, 3);
    ++*(v1 + 5);
}


// 0x80293f8
void sub_80293F8()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    signed int v3; // r6
    char *v4; // r0
    int v5; // r1
    int v6; // r2
    char *v7; // [sp-8h] [bp-18h]

    v2 = *(v0 + 8);
    if ( *(v0 + 8) )
    {
        v3 = 72;
        while ( 1 )
        {
            v4 = getLocOfActiveChips_8027E1C(*(v0 + v3));
            v5 = *v4;
            if ( v5 != 2 )
                goto LABEL_6;
            v7 = v4;
            if ( sub_802D234() == 1 )
                break;
LABEL_11:
            ++v3;
            if ( !--v2 )
                return;
        }
        v4 = getLocOfActiveChips_8027E1C(v7[4]);
        v5 = *v4;
LABEL_6:
        if ( !v5 )
        {
            if ( v4[4] & 1 )
                *(*(v1 + oToolkit_S2034880_Ptr) + 23) = 0;
            **(v4 + 2) = -1;
            v6 = *(v1 + oToolkit_S2034880_Ptr);
            if ( *(v6 + 68) )
                --*(v6 + 69);
        }
        goto LABEL_11;
    }
}


// 0x802945a
int sub_802945A()
{
    signed int v0; // r4
    int v1; // r6
    signed int v2; // r2
    int result; // r0

    v0 = 0;
    v1 = 0;
    v2 = 30;
    do
    {
        result = *&byte_203CDB0[v0];
        if ( result != -1 )
        {
            *&byte_203CDB0[v1] = result;
            v1 += 2;
            --v2;
        }
        v0 += 2;
    }
    while ( v0 < 60 );
    for ( ; v2; --v2 )
    {
        *&byte_203CDB0[v1] = -1;
        v1 += 2;
    }
    return result;
}


// 0x8029488
signed int sub_8029488()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    signed int result; // r0
    int v4; // r6
    int v5; // r2
    char *v6; // r3
    int v7; // r0
    __int16 v8; // r1
    __int16 v9; // r2

    v2 = *(v1 + oToolkit_S2034880_Ptr);
    result = *(v2 + 68);
    if ( *(v2 + 68) )
    {
        result = 69;
        v4 = *(v2 + 69);
        v5 = *(v0 + 6) - 1;
        if ( v4 == v5 )
        {
            v6 = &byte_203CDB0[2 * v4];
            v7 = *(v6 + 2);
            if ( v7 != -1 )
            {
                v8 = *v6;
                v9 = *(v6 + 1);
                *v6 = v7;
                *(v6 + 1) = v8;
                *(v6 + 2) = v9;
                result = 69;
                ++*(v2 + 69);
                return result;
            }
        }
        else if ( v4 >= v5 )
        {
            return result;
        }
        result = 68;
        *(v2 + 68) = 0;
    }
    return result;
}


// 0x80294e0
signed int sub_80294E0()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r6
    signed int v3; // r4

    result = 95;
    v2 = *(v0 + 95);
    do
    {
        v3 = 0;
        while ( *&byte_203CDB0[v3] != -1 )
        {
            v3 += 2;
            if ( v3 >= 60 )
                goto LABEL_6;
        }
        result = *(v0 + 2 * (v2 - 1) + 96);
        *&byte_203CDB0[v3] = result;
LABEL_6:
        --v2;
    }
    while ( v2 > 0 );
    return result;
}


// 0x8029514
void sub_8029514()
{
    JUMPOUT(&loc_802952A);
}


// 0x8029520
void __fastcall sub_8029520(int a1, int a2)
{
    unsigned int v2; // r5
    signed int v3; // r6
    unsigned int v4; // r1
    signed int v5; // r5
    int v6; // r6
    char (**v7)[10]; // r4
    char (*v8)[10]; // r3
    int v9; // r0
    int v10; // r0
    int v11; // [sp+0h] [bp-34h]
    int v12; // [sp+18h] [bp-1Ch]
    int v13; // [sp+1Ch] [bp-18h]

    v13 = 0;
    v12 = a2;
    v2 = 0;
    v3 = 10;
    do
    {
        v4 = *(a1 + v2);
        if ( v4 == -1 )
            break;
        *(&v11 + v2) = v4 & 0x1FF;
        *(&v11 + v3) = v4 >> 9;
        v2 += 2;
        v3 += 2;
    }
    while ( v2 != 10 );
    v5 = v2 >> 1;
    if ( v5 >= 3 )
    {
        v6 = 0;
        while ( 2 )
        {
            v7 = off_802BCB0;
            if ( v13 )
                v7 = off_802BC60;
            while ( 1 )
            {
                v8 = *v7;
                if ( !*v7 )
                    break;
                if ( v5 >= *v8 )
                {
                    v9 = (*(&off_80295C0 + (*v8)[1]))();
                    if ( v9 )
                    {
                        v10 = sub_8029652(v9, v12);
                        if ( v10 )
                        {
                            if ( !v13 || !v12 )
                                sub_802963C(v10);
                            return;
                        }
                    }
                }
                ++v7;
            }
            v6 += 2;
            if ( --v5 >= 3 )
                continue;
            break;
        }
    }
}


// 0x80295c8
int __fastcall sub_80295C8(int a1, int a2, int a3, int a4)
{
    int v4; // r6
    int v5; // r7
    int v6; // r5
    signed int v7; // r2
    int v8; // r6
    int v9; // r0
    int v10; // r1

    v6 = a3;
    while ( *(v5 + v4) == *(a4 + 4) )
    {
        v4 += 2;
        if ( !--a3 )
        {
            v7 = 0;
            v8 = v4 + 8;
            v9 = *(v5 + v8) + 1;
            while ( 1 )
            {
                v10 = *(v5 + v8);
                if ( v10 == 26 )
                {
                    if ( !v7 && v9 == 27 )
                        v9 = *(v5 + v8 - 2) + 2;
                    v10 = v9 - 1;
                    ++v7;
                }
                if ( --v9 != v10 )
                    break;
                v8 -= 2;
                if ( !--v6 )
                {
                    if ( v7 <= 1 && v9 >= 0 )
                        return *(a4 + 2);
                    return 0;
                }
            }
            return 0;
        }
    }
    return 0;
}


// 0x802961a
int __fastcall sub_802961A(int a1, int a2, int a3, int a4)
{
    int v4; // r6
    int v5; // r7
    unsigned __int16 *v6; // r4
    unsigned __int16 *v7; // r7

    v6 = (a4 + 4);
    v7 = (v5 + v4);
    while ( *v7 == *v6 )
    {
        ++v6;
        ++v7;
        if ( !--a3 )
            return *(a4 + 2);
    }
    return 0;
}


// 0x802963c
void __fastcall sub_802963C(int a1)
{
    int v1; // r0

    v1 = modifyToolkit_unk7C_using_2008A0(a1);
    SetEventFlag(&loc_1F60 + v1 - dword_140);
}


// 0x8029652
int __fastcall sub_8029652(int result, int a2)
{
    int *v2; // r3
    int v3; // r1
    _BYTE *v4; // r3
    int v5; // r4

    v2 = &dword_203CA48[a2];
    v3 = (result - dword_140) & 7;
    v4 = v2 + ((result - dword_140) >> 3);
    v5 = *v4;
    if ( v5 & (1 << v3) )
        return 0;
    *v4 = v5 | (1 << v3);
    return result;
}


// 0x8029688
char *__fastcall sub_8029688(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r1
    int *v6; // r7
    char *v7; // r6
    int v8; // r4
    int v9; // r3
    char *v10; // r0
    char *result; // r0
    int v12; // r3
    bool v13; // zf
    int *v14; // r7
    int v15; // r2
    int v16; // r4
    int v17; // r3
    char *v18; // r0
    int v19; // r3
    bool v20; // zf
    int v21; // [sp-8h] [bp-1Ch]
    int v22; // [sp-4h] [bp-18h]
    int v23; // [sp-4h] [bp-18h]
    int v24; // [sp+0h] [bp-14h]

    v24 = 0;
    v5 = *(v4 + oToolkit_S2034880_Ptr);
    if ( *(v5 + 68) )
        v24 = *(v5 + 69);
    v6 = dword_2033000;
    v7 = byte_203CDB0;
    v8 = *(v3 + 6);
    if ( *(v3 + 6) )
    {
        v9 = 0;
        a3 = 0;
        do
        {
            v21 = a3;
            v22 = v9;
            v10 = getLocOfActiveChips_8027E1C(v9);
            a3 = v21;
            if ( !*v10 )
            {
                if ( v10[7] != 2 && !(v10[4] & 1) )
                {
                    *v6 = *v7;
                    v6 = (v6 + 2);
                    a3 = v21 + 1;
                }
                v7 += 2;
            }
            v9 = v22 + 1;
            --v8;
        }
        while ( v8 );
    }
    result = *(v3 + 6);
    v12 = *(v3 + 5) - result;
    if ( v12 >= 0 && *(v3 + 5) != result )
    {
        do
        {
            if ( v24 && (result = &byte_203CDB0[2 * v24], result == v7) )
            {
                v7 += 4;
                v12 -= 2;
                v13 = v12 == 0;
            }
            else
            {
                result = *v7;
                *v6 = result;
                v7 += 2;
                v6 = (v6 + 2);
                ++a3;
                v13 = --v12 == 0;
            }
        }
        while ( !v13 );
    }
    if ( a3 )
    {
        v14 = dword_2033000;
        sub_8000D12(dword_2033000, a3, a3);
        v16 = *(v3 + 6);
        if ( *(v3 + 6) )
        {
            v7 = byte_203CDB0;
            v17 = 0;
            do
            {
                v23 = v17;
                v18 = getLocOfActiveChips_8027E1C(v17);
                if ( !*v18 )
                {
                    if ( v18[7] != 2 && !(v18[4] & 1) )
                    {
                        *v7 = *v14;
                        v14 = (v14 + 2);
                    }
                    v7 += 2;
                }
                v17 = v23 + 1;
                --v16;
            }
            while ( v16 );
        }
        result = *(v3 + 6);
        v19 = *(v3 + 5) - result;
        if ( v19 >= 0 && *(v3 + 5) != result )
        {
            do
            {
                if ( v24 && (result = &byte_203CDB0[2 * v24], result == v7) )
                {
                    v7 += 4;
                    v19 -= 2;
                    v20 = v19 == 0;
                }
                else
                {
                    result = *v14;
                    *v7 = result;
                    v7 += 2;
                    v14 = (v14 + 2);
                    ++v15;
                    v20 = --v19 == 0;
                }
            }
            while ( !v20 );
        }
    }
    return result;
}


// 0x8029788
void sub_8029788()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    __int16 *v3; // r7
    char *v4; // r6
    int v5; // r3
    int v6; // r2
    int v7; // r4
    char *v8; // r0
    int v9; // r3
    bool v10; // zf
    int v11; // r3
    int v12; // ST00_4
    int v13; // [sp-8h] [bp-1Ch]
    int v14; // [sp-4h] [bp-18h]
    int v15; // [sp-4h] [bp-18h]
    int v16; // [sp+0h] [bp-14h]

    v16 = 0;
    v2 = *(v1 + oToolkit_S2034880_Ptr);
    if ( *(v2 + 68) )
        v16 = *(v2 + 69);
    v3 = word_2036660;
    v4 = byte_203CDB0;
    v5 = 0;
    v6 = 0;
    v7 = *(v0 + 6);
    if ( *(v0 + 6) )
    {
        do
        {
            v13 = v6;
            v14 = v5;
            v8 = getLocOfActiveChips_8027E1C(v5);
            v6 = v13;
            if ( !*v8 )
            {
                if ( v8[7] != 2 && !(v8[4] & 1) )
                {
                    *v3 = *v4;
                    ++v3;
                    v6 = v13 + 1;
                }
                v4 += 2;
            }
            v5 = v14 + 1;
            --v7;
        }
        while ( v7 );
        v7 = v6;
    }
    v9 = *(v0 + 5) - *(v0 + 6);
    if ( v9 >= 0 && *(v0 + 5) != *(v0 + 6) )
    {
        do
        {
            if ( v16 && &byte_203CDB0[2 * v16] == v4 )
            {
                v4 += 4;
                v9 -= 2;
                v10 = v9 == 0;
            }
            else
            {
                *v3 = *v4;
                v4 += 2;
                ++v3;
                ++v6;
                v10 = --v9 == 0;
            }
        }
        while ( !v10 );
    }
    if ( v6 )
    {
        v15 = v6;
        v11 = byte_80298C8[v7];
        if ( byte_80298C8[v7] )
        {
            v12 = byte_80298C8[v7];
            sub_8000D12(word_2036660, v7, v7);
            v11 = v12;
        }
        sub_8000D12(&word_2036660[v11], v15 - v11, v15 - v11);
    }
}


// 0x802983c
char *__fastcall sub_802983C(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r1
    __int16 *v6; // r7
    char *v7; // r6
    int v8; // r4
    int v9; // r3
    char *v10; // r0
    char *result; // r0
    int v12; // r3
    bool v13; // zf
    int v14; // [sp-4h] [bp-18h]
    int v15; // [sp+0h] [bp-14h]

    v15 = 0;
    v5 = *(v4 + oToolkit_S2034880_Ptr);
    if ( *(v5 + 68) )
        v15 = *(v5 + 69);
    v6 = word_2036660;
    v7 = byte_203CDB0;
    v8 = *(v3 + 6);
    if ( *(v3 + 6) )
    {
        v9 = 0;
        do
        {
            v14 = v9;
            v10 = getLocOfActiveChips_8027E1C(v9);
            if ( !*v10 )
            {
                if ( v10[7] != 2 && !(v10[4] & 1) )
                {
                    *v7 = *v6;
                    ++v6;
                }
                v7 += 2;
            }
            v9 = v14 + 1;
            --v8;
        }
        while ( v8 );
    }
    result = *(v3 + 6);
    v12 = *(v3 + 5) - result;
    if ( v12 >= 0 && *(v3 + 5) != result )
    {
        do
        {
            if ( v15 && (result = &byte_203CDB0[2 * v15], result == v7) )
            {
                v7 += 4;
                v12 -= 2;
                v13 = v12 == 0;
            }
            else
            {
                result = *v6;
                *v7 = result;
                v7 += 2;
                ++v6;
                ++a3;
                v13 = --v12 == 0;
            }
        }
        while ( !v13 );
    }
    return result;
}


// 0x80298d8
int sub_80298D8()
{
    int v0; // r5

    return sub_8009FF8(*(v0 + 68) + 1080033280, 55190, 1, 0);
}


// 0x80298f4
int sub_80298F4()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    int v3; // r1

    v1 = *(v0 + 12);
    if ( v1 == 255 )
        JUMPOUT(&loc_80299B2);
    if ( !*(v0 + 12) )
    {
        result = sub_802996E();
        if ( !result )
            return result;
        v3 = result;
        goto LABEL_20;
    }
    switch ( v1 )
    {
        case 1:
            result = sub_80299B6();
            if ( !result )
                return result;
            v3 = result;
            goto LABEL_20;
        case 3:
            result = sub_80299FA();
            if ( !result )
                return result;
            v3 = result;
            goto LABEL_20;
        case 4:
        case 5:
            result = sub_8029A1E();
            if ( !result )
                return result;
            v3 = result;
            goto LABEL_20;
    }
    if ( v1 != 6 )
        return 0;
    result = sub_8029A36();
    if ( result )
    {
        v3 = result;
LABEL_20:
        chatbox_runScript(*(&TextScriptFirstBattleTutorials + *(v0 + 12)), v3);
        *(v0 + 13) = *(v0 + 1);
        *(v0 + 1) = 52;
        *(v0 + 2) = 0;
        result = 1;
    }
    return result;
}


// 0x802996e
signed int sub_802996E()
{
    _BYTE *v0; // r5
    int v2; // r0
    int v3; // r1

    if ( v0[7] == 10 )
    {
        if ( !v0[8] )
            return 12;
        if ( v0[8] < 2 )
        {
            if ( !v0[72] || v0[72] == 2 )
                return 11;
            return 23;
        }
        v2 = v0[72];
        v3 = v0[73];
        if ( v2 >= v3 )
        {
            v2 = v0[73];
            v3 = v0[72];
        }
        if ( v2 || v3 != 2 )
            return 23;
    }
    return 0;
}


// 0x80299b6
signed int sub_80299B6()
{
    _BYTE *v0; // r5

    if ( v0[7] == 10 )
    {
        if ( v0[8] )
        {
            if ( v0[8] == 1 )
            {
                if ( !v0[72] )
                    return 13;
            }
            else
            {
                if ( !v0[72] )
                {
                    if ( v0[73] != 1 )
                        return 13;
                    return 0;
                }
                if ( v0[72] == 1 && !v0[73] )
                    return 9;
            }
        }
        return 8;
    }
    return 0;
}


// 0x80299fa
signed int sub_80299FA()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 7);
    if ( v1 == 10 )
    {
        if ( !*(v0 + 23) )
            return 37;
    }
    else if ( v1 != 11 && !*(v0 + 23) )
    {
        return 36;
    }
    return 0;
}


// 0x8029a1e
signed int sub_8029A1E()
{
    int v0; // r5
    int v1; // r3
    signed int result; // r0

    if ( *(v0 + 7) != 11 || (sub_802A564(), v1) )
        result = 0;
    else
        result = 38;
    return result;
}


// 0x8029a36
signed int sub_8029A36()
{
    int v0; // r5
    int v1; // r10
    signed int result; // r0

    if ( *(*(v1 + oToolkit_S2034880_Ptr) + 7) != 1 || *(v0 + 25) || *(v0 + 1) == 84 )
        result = 0;
    else
        result = 4;
    return result;
}


// 0x8029a56
int sub_8029A56()
{
    int v0; // r5
    int result; // r0
    int v2; // r1

    result = *(v0 + 12);
    if ( result != 255 )
    {
        if ( !*(v0 + 12) )
        {
            result = sub_8029AAA();
            if ( !result )
                return result;
            v2 = result;
            goto LABEL_12;
        }
        if ( result == 1 )
        {
            result = sub_8029ADA();
            if ( !result )
                return result;
            v2 = result;
            goto LABEL_12;
        }
        if ( result == 3 )
        {
            result = sub_8029B16();
            if ( result )
            {
                v2 = result;
LABEL_12:
                chatbox_runScript(*(&TextScriptFirstBattleTutorials + *(v0 + 12)), v2);
                *(v0 + 13) = *(v0 + 1);
                *(v0 + 1) = 52;
                result = 0;
                *(v0 + 2) = 0;
                return result;
            }
        }
    }
    return result;
}


// 0x8029aaa
signed int sub_8029AAA()
{
    int v0; // r5
    int v1; // r0
    signed int result; // r0

    v1 = *(v0 + 7);
    if ( *(v0 + 7) && v1 != 2 )
    {
        if ( v1 == 10 )
        {
            result = 16;
        }
        else if ( *(v0 + 8) > 2 )
        {
            result = 0;
        }
        else
        {
            result = 22;
        }
    }
    else if ( *(v0 + 8) == 1 )
    {
        result = 9;
    }
    else
    {
        result = 14;
    }
    return result;
}


// 0x8029ada
signed int sub_8029ADA()
{
    int v0; // r5
    int v1; // r0
    signed int v3; // r0

    v1 = *(v0 + 7);
    if ( *(v0 + 7) )
    {
        if ( v1 == 1 )
        {
            v3 = *(v0 + 8);
            if ( v3 < 2 )
                return 6;
            if ( v3 == 2 )
                return 10;
        }
        else
        {
            if ( v1 == 10 )
                return 15;
            if ( *(v0 + 8) < 2 )
                return 7;
        }
    }
    else if ( *(v0 + 8) == 1 )
    {
        return 5;
    }
    return 0;
}


// 0x8029b16
int sub_8029B16()
{
    return 0;
}


// 0x8029b1c
int sub_8029B1C()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    int v3; // r1

    v1 = *(v0 + 12);
    if ( v1 == 255 )
        JUMPOUT(&loc_8029BA8);
    if ( !*(v0 + 12) )
    {
        result = sub_8029B86();
        if ( !result )
            return result;
        v3 = result;
        goto LABEL_17;
    }
    if ( v1 == 1 )
    {
        result = sub_8029BAC();
        if ( !result )
            return result;
        v3 = result;
        goto LABEL_17;
    }
    if ( v1 == 3 || v1 == 4 )
    {
        result = sub_8029BD6();
        if ( !result )
            return result;
        v3 = result;
        goto LABEL_17;
    }
    if ( v1 != 6 )
        return 0;
    result = sub_8029BE6();
    if ( result )
    {
        v3 = result;
LABEL_17:
        chatbox_runScript(*(&TextScriptFirstBattleTutorials + *(v0 + 12)), v3);
        *(v0 + 13) = *(v0 + 1);
        *(v0 + 1) = 52;
        *(v0 + 2) = 0;
        result = 1;
    }
    return result;
}


// 0x8029b86
int sub_8029B86()
{
    int v0; // r5
    signed int v1; // r0
    int result; // r0

    v1 = *(v0 + 8);
    if ( !*(v0 + 8) || v1 > 2 || *(v0 + v1 + 71) && *(v0 + v1 + 71) != 2 )
        result = 0;
    else
        result = 5 * v1 + 5;
    return result;
}


// 0x8029bac
signed int sub_8029BAC()
{
    int v0; // r5
    signed int v1; // r0

    v1 = *(v0 + 8);
    if ( *(v0 + 8) && v1 <= 2 )
    {
        if ( v1 == 1 )
        {
            if ( !*(v0 + 72) )
                return 11;
        }
        else if ( *(v0 + v1 + 71) == 1 )
        {
            return 12;
        }
    }
    return 0;
}


// 0x8029bd6
signed int sub_8029BD6()
{
    int v0; // r5
    signed int result; // r0

    if ( *(v0 + 8) == 1 )
        result = 39;
    else
        result = 0;
    return result;
}


// 0x8029be6
signed int sub_8029BE6()
{
    _BYTE *v0; // r5
    signed int result; // r0

    if ( v0[8] || !v0[25] || v0[1] == 84 )
        result = 0;
    else
        result = 5;
    return result;
}


// 0x8029c08
int sub_8029C08()
{
    unsigned __int8 *v0; // r5
    int v1; // r10
    int result; // r0
    signed int v3; // r1
    int v4; // r0
    signed int v5; // r1

    result = v0[1];
    if ( result != 72 && result != 68 )
    {
        v3 = *(*(v1 + oToolkit_RenderInfoPtr) + 24);
        if ( v3 > 103 )
            return result;
    }
    else
    {
        v3 = 0;
    }
    v4 = (((87 - v3) & 0x1FF) << 16) - 2147483140;
    v5 = v0[15];
    if ( v5 >= 2 && v5 <= 6 )
    {
        --v4;
        if ( v5 >= 3 && v5 <= 4 )
            --v4;
    }
    if ( v5 >= 5 && v5 <= 11 )
    {
        v5 = 0x10000;
        v4 += 0x10000;
    }
    if ( v5 >= 2 && v5 <= 3 )
        v4 -= 0x10000;
    sub_8009FF8(v4 | (v0[14] << 25), 46978, 1, 0);
    result = v0[15];
    if ( v0[15] )
    {
        if ( result < 20 )
        {
            v0[15] = result + 1;
            result = sub_802FE7A(
                                 byte_8029CAC[2 * (result - 1)],
                                 byte_8029CAC[2 * (result - 1) + 1],
                                 byte_8029CAC[2 * (result - 1) + 1],
                                 v0[14]);
        }
        else
        {
            result = 0;
            v0[15] = 0;
        }
    }
    return result;
}


// 0x8029cd4
void __fastcall sub_8029CD4(int a1, int a2, int a3)
{
    int v3; // r4
    char *v4; // r1
    int v5; // r5
    int v6; // r6
    int v7; // r5
    __int16 v8; // r0

    v3 = 2 * a2 + 137;
    v4 = &unk_2035000 + 30 * (2 * a1 + 3) + 22;
    v5 = 0;
    do
    {
        v6 = *&byte_8029D18[v5];
        v7 = v5 + 2;
        v8 = *&byte_8029D18[v7];
        v5 = v7 + 2;
        *&v4[v6] = v8 + v3;
    }
    while ( v5 != 16 );
    if ( !a3 )
        CopyBackgroundTiles(0, 3, 3, &unk_203505A, 15, &dword_8 + 2);
}


// 0x8029d34
void __fastcall sub_8029D34(int a1)
{
    int v1; // r5

    if ( sub_800A97A(a1) )
    {
        if ( (*(v1 + 64) & 0x1F) >= 28 )
            sub_8029D80();
        CopyBackgroundTiles(15, 4, 3, byte_8029D64, 7, 2);
    }
}


// 0x8029d80
void __noreturn sub_8029D80()
{
    call_sub_3005EBA(15, 4, 3, 0);
}


// 0x8029d94
void __fastcall sub_8029D94(int a1, int a2, signed int a3)
{
    int v3; // r6
    signed int v4; // r0

    v3 = a1;
    v4 = 0;
    if ( a3 >= 2 )
        v4 = 5;
    (loc_8000AC8)(dword_86E7DCC + (v4 + a2) * &dword_240, &dword_240 * v3 + 100706080, &dword_240);
    CopyBackgroundTiles(1, 2 * v3 + 1, 3, &byte_8029DF8[36 * v3], 9, &byte_0[2]);
}


// 0x8029eac
int __fastcall sub_8029EAC(int a1)
{
    return (loc_8000AC8)(&dword_86E944C[8 * a1], &unk_3001AA0, 32);
}


// 0x8029ec8
int sub_8029EC8()
{
    signed int v0; // r4
    int v1; // r6
    char v2; // zf

    v0 = 0;
    v1 = 0;
    do
    {
        TestEventFlag(*&byte_8029F4C[4 * v0]);
        if ( !v2 && !(dword_20349A0 & 32 * (1 << v0)) )
            ++v1;
        ++v0;
    }
    while ( v0 < 5 );
    return v1;
}


// 0x8029ef8
int sub_8029EF8()
{
    int v0; // r5
    signed int v1; // r4
    int v2; // r6
    char v3; // zf

    v1 = 0;
    v2 = 0;
    do
    {
        TestEventFlag(*&byte_8029F4C[4 * v1]);
        if ( !v3 && !(dword_20349A0 & 32 * (1 << v1)) && GetCurPETNaviStatsByte(0) != v1 + 6 )
        {
            *(&word_50 + v2 + v0) = v1;
            *(v0 + v2++ + 85) = 0;
        }
        ++v1;
    }
    while ( v1 < 5 );
    return v2;
}


// 0x8029f70
signed int __fastcall sub_8029F70(int a1)
{
    int v1; // r5
    int v2; // r4
    int v3; // r0
    char v4; // zf

    v2 = 0;
    v3 = sub_802D234();
    if ( v3 == 8 )
        return 1;
    if ( (!v3 || v3 == 10 || v3 == 11) && !(sub_802D246() & 0x200000) )
    {
        TestEventFlagFromImmediate(1, 99);
        if ( v4 )
        {
            sub_802E09A();
            if ( !v4 )
                return v2;
        }
        else if ( *(v1 + 16) )
        {
            return v2;
        }
        return 1;
    }
    return v2;
}


// 0x8029fb4
signed int __fastcall sub_8029FB4(int a1)
{
    int v1; // r5
    signed int v2; // r4
    char v3; // zf

    v2 = 0;
    if ( sub_802D234() == 5
        || !*(v1 + 16)
        && (TestEventFlagFromImmediate(1, 99), v3)
        && (sub_802E09A(), v3)
        && !(sub_802D246() & 0x200000)
        && (TestEventFlagFromImmediate(0, 224), !v3) )
    {
        v2 = 1;
    }
    return v2;
}


// 0x8029ff4
// (int a1) -> bool
signed int __fastcall chipIDIs13f_8029FF4(int a1)
{
    signed int v1; // r3

    v1 = 0;
    if ( a1 == 319 || a1 == 319 )
        v1 = 1;
    return v1;
}


// 0x802a00c
signed int __fastcall sub_802A00C(__int16 a1)
{
    signed int v1; // r3
    int v2; // r0

    v1 = 0;
    v2 = a1 & 0x1FF;
    if ( v2 == 319 || v2 == 319 )
        v1 = 1;
    return v1;
}


// 0x802a034
signed int sub_802A034()
{
    return 319;
}


// 0x802a040
int __fastcall sub_802A040(int a1)
{
    signed int v1; // r6
    int v2; // r0
    int v3; // r1
    int result; // r0

    v1 = a1 + 12;
    if ( !a1 )
    {
        v2 = *(dword_20352C8 + 22);
        if ( !eStruct2035280_NaviStatusGfxIdx17 || byte_2035296 )
            sub_8015B5C(v2);
        else
            sub_8015B54(v2);
        if ( v3 )
            v1 = v3 + 12;
    }
    result = sub_801E660(v1);
    byte_20352CC = result;
    return result;
}


// 0x802a088
int __fastcall sub_802A088(int a1)
{
    signed int v1; // r6
    int v2; // r0
    signed int v3; // r1
    int result; // r0

    v1 = a1 + 6;
    v2 = *(dword_20352C8 + 22);
    if ( !eStruct2035280_NaviStatusGfxIdx17 || byte_2035296 )
        sub_8015B5C(v2);
    else
        sub_8015B54(v2);
    if ( v3 >= 11 )
        v1 += 12;
    result = sub_801E660(v1);
    byte_20352CC = result;
    return result;
}


// 0x802a0c8
int __fastcall sub_802A0C8(int a1)
{
    int result; // r0

    result = sub_801E660(a1 + 12);
    byte_20352CC = result;
    return result;
}


// 0x802a0ec
char *sub_802A0EC()
{
    char *result; // r0

    result = &eStruct2035280;
    byte_20352CC = 0;
    return result;
}


// 0x802a0f8
char *sub_802A0F8()
{
    if ( byte_20352CC )
        sub_801DACC(0x4000);
    return sub_802A0EC();
}


// 0x802a11c
int __fastcall sub_802A11C(int a1)
{
    int v1; // r10
    int v2; // r4
    int result; // r0

    v2 = *&byte_802A148[4 * a1];
    result = sub_80136D8(*(*(v1 + oToolkit_S2034880_Ptr) + 13), 50) + v2;
    if ( result > 9 )
        return 9;
    if ( result < 0 )
        result = 1;
    return result;
}


// 0x802a210
signed int sub_802A210()
{
    int v0; // r5
    signed int result; // r0

    result = *(v0 + 21);
    if ( *(v0 + 21) )
    {
        result = 255;
        byte_20349A5 = -1;
    }
    return result;
}


// 0x802a220
signed int sub_802A220()
{
    int v0; // r5
    int v1; // r10
    signed int v2; // r4
    char v3; // zf
    int v4; // r0
    int v5; // r0
    signed int v6; // r0
    signed int v7; // r6

    v2 = 255;
    TestEventFlagFromImmediate(1, 99);
    if ( v3 )
    {
        if ( !(sub_802D246() & 0x200000) )
        {
            v4 = sub_802D234();
            if ( !v4 || v4 == 10 || v4 == 11 )
            {
                v5 = sub_80136CC(*(*(v1 + oToolkit_S2034880_Ptr) + 13), 41);
                if ( (v5 < 1 || v5 > 11) && byte_20349A5 != 255 )
                {
                    v6 = sub_8120B54();
                    if ( v6 != 255 )
                    {
                        v7 = v6;
                        if ( v6 != *(v0 + 58) && !(word_20349AE & (1 << v6)) && (!(sub_802D246() & 8) || byte_20349A5 < 2) )
                            v2 = v7;
                    }
                }
            }
        }
    }
    return v2;
}


// 0x802a2b0
int sub_802A2B0()
{
    int v0; // r5
    int result; // r0

    (*(&off_802A2D8 + *(v0 + 18)))();
    result = (*(v0 + 20) + 1) & 0x3F;
    *(v0 + 20) = result;
    if ( !result )
        result = *(v0 + 18);
    return result;
}


// 0x802a2e8
int sub_802A2E8()
{
    int v0; // r5
    int result; // r0

    result = sub_802A394();
    if ( result )
    {
        engine_setScreeneffect(84, 10);
        (loc_8006274)(92, 10);
        *(v0 + 19) = 0;
        result = 4;
        *(v0 + 18) = 4;
    }
    return result;
}


// 0x802a30c
int sub_802A30C()
{
    int v0; // r5
    int v1; // r4
    int v2; // r0
    int result; // r0

    v1 = *(v0 + 19);
    sub_8000642(31, 0xFFFF, *&byte_802A3F4[v1]);
    sub_8000642(22, 0xFFFF, *&byte_802A400[v1]);
    *(v0 + 19) = v1 + 2;
    v2 = IsPaletteFadeActive();
    result = (loc_80062FC)(v2);
    if ( !result )
    {
        result = 8;
        *(v0 + 18) = 8;
    }
    return result;
}


// 0x802a33e
int sub_802A33E()
{
    int v0; // r5
    int result; // r0

    result = sub_802A394();
    if ( !result )
    {
        engine_setScreeneffect(80, 10);
        (loc_8006274)(88, 10);
        *(v0 + 19) = 0;
        result = 12;
        *(v0 + 18) = 12;
    }
    return result;
}


// 0x802a362
int sub_802A362()
{
    int v0; // r5
    int v1; // r4
    int v2; // r0
    int result; // r0

    v1 = *(v0 + 19);
    sub_8000642(31, 0xFFFF, *&byte_802A400[v1]);
    sub_8000642(22, 0xFFFF, *&byte_802A3F4[v1]);
    *(v0 + 19) = v1 + 2;
    v2 = IsPaletteFadeActive();
    result = (loc_80062FC)(v2);
    if ( !result )
    {
        result = 0;
        *(v0 + 18) = 0;
    }
    return result;
}


// 0x802a394
signed int sub_802A394()
{
    int v0; // r5
    signed int v1; // r4
    int v2; // r0
    char *v3; // r0
    __int16 v4; // r0

    v1 = 0;
    v2 = *(v0 + 1);
    if ( v2 == 24 || v2 == 4 )
    {
        v3 = getLocOfActiveChips_8027E1C(*(v0 + 7));
        if ( !*v3 )
        {
            v4 = getChipID_802A54E(**(v3 + 2));
            if ( *(getChip8021DA8(v4 & 0x1FF) + 9) & 0x20 )
                v1 = 1;
        }
    }
    return v1;
}


// 0x802a3cc
int sub_802A3CC()
{
    sub_8000642(31, 0xFFFF, 256);
    return sub_8000642(22, 0xFFFF, 256);
}


// 0x802a40c
int __fastcall sub_802A40C(int a1)
{
    int v1; // r5
    int v2; // r10
    int v3; // r7
    int v4; // r6
    int v5; // r0
    int result; // r0
    int v7; // r1
    signed int v8; // r4
    int v9; // r0
    int v10; // ST00_4
    bool v11; // zf
    int v12; // r1
    int v13; // r2
    int v14; // r7
    int v15; // [sp-4h] [bp-14h]

    v3 = 0;
    v4 = *(v2 + oToolkit_S2034880_Ptr);
    v5 = sub_802D234();
    if ( v5 != 2 && v5 != 3 && v5 != 4 && v5 != 5 && v5 != 8 )
    {
        sub_8015B54(*(v4 + 13));
        v8 = 1;
        if ( v7 != 10 && v7 != 22 )
            v8 = 0;
        v9 = sub_80136CC(*(v4 + 13), 10) + byte_20349B1;
        if ( v9 > 8 )
        {
            v3 = v9 - 8;
            v9 = 8;
        }
        if ( !v8 )
        {
            v10 = v9;
            v11 = sub_802A5A0() == 0;
            v9 = v10;
            if ( !v11 )
            {
                v9 = 10;
                v3 = byte_20349B1;
            }
        }
        v15 = v9;
        v12 = sub_80136CC(*(v4 + 13), 99);
        result = v15;
        if ( v12 )
        {
            v13 = *(v4 + 7);
            if ( v13 >= v12 )
            {
                v14 = v3 - (v13 - v12 + 1);
                if ( v14 < 0 )
                {
                    result = v15 + v14;
                    if ( v15 + v14 < 2 )
                        result = 2;
                }
            }
        }
    }
    else
    {
        result = 5;
    }
    *(v1 + 6) = result;
    return result;
}


// 0x802a49c
int __fastcall sub_802A49C(int a1)
{
    int v1; // r5
    int v2; // r10
    int v3; // r0
    int v4; // r1
    int result; // r0

    v3 = sub_802D234();
    if ( v3 == 2
        || v3 == 3
        || v3 == 4
        || v3 == 5
        || v3 == 8
        || *(v1 + 16)
        || (*(v1 + 16) != *(v1 + 21) ? sub_8015B5C(*(*(v2 + oToolkit_S2034880_Ptr) + 13)) : sub_8015B54(*(*(v2 + oToolkit_S2034880_Ptr) + 13)),
                v4 != 5 && v4 != 17) )
    {
        result = 0;
        byte_20349B1 = 0;
    }
    else
    {
        result = byte_20349B1 + 1;
        if ( result > 3 )
            result = 3;
        byte_20349B1 = result;
    }
    return result;
}


// 0x802a4fc
int sub_802A4FC()
{
    int result; // r0
    char *i; // r4
    signed int v2; // r0

    result = byte_20366C0;
    if ( byte_20366C0 != 255 )
    {
        for ( i = byte_20366F2; ; i += 2 )
        {
            result = *i;
            if ( result == 0xFFFF )
                break;
            v2 = *(getChip8021DA8(result & 0x1FF) + 7);
            if ( v2 <= 2 )
                ++*(&dword_20367E0 + v2);
        }
    }
    return result;
}


// 0x802a53c
unsigned int __fastcall sub_802A53C(unsigned int a1)
{
    unsigned int v1; // r4
    char v2; // zf
    unsigned int result; // r0

    v1 = a1;
    sub_800AFBA(a1);
    if ( v2 )
        result = v1;
    else
        result = 14213;
    return result;
}


// 0x802a54e
// (int a1) -> int
unsigned int __fastcall getChipID_802A54E(unsigned int a1)
{
    unsigned int v1; // r4
    char v2; // zf
    unsigned int result; // r0

    v1 = a1;
    sub_800B022(a1);
    if ( v2 )
        result = v1;
    else
        result = 14213;
    return result;
}


// 0x802a564
int sub_802A564()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int result; // r0

    v2 = *(*(v1 + oToolkit_S2034880_Ptr) + 13);
    if ( *(v0 + 21) )
        result = sub_8015B5C(v2);
    else
        result = sub_8015B54(v2);
    return result;
}


// 0x802a57e
signed int sub_802A57E()
{
    signed int v0; // r4
    int v1; // r0
    signed int v2; // r1

    v0 = 0;
    v1 = sub_802A564();
    if ( v1 != 5 && (v1 != 1 || byte_20349B0) && v2 < 11 )
        v0 = 1;
    return v0;
}


// 0x802a5a0
signed int sub_802A5A0()
{
    int v0; // r10
    signed int v1; // r4
    int v2; // r0

    v1 = 0;
    if ( *getLocOfActiveChips_8027E1C(8) != 8 )
    {
        v2 = sub_802D234();
        if ( v2 != 1 && v2 != 6 && v2 != 7 && v2 != 9 && sub_80136CC(*(*(v0 + oToolkit_S2034880_Ptr) + 13), 97) == 1 )
            v1 = 1;
    }
    return v1;
}


// 0x802a5da
signed int sub_802A5DA()
{
    int v0; // r10
    signed int v1; // r4
    int v2; // r0

    v1 = 0;
    if ( *getLocOfActiveChips_8027E1C(8) != 8 )
    {
        v2 = sub_802D234();
        if ( (!v2 || v2 == 5 || v2 == 8 || v2 == 10 || v2 == 11)
            && sub_80136CC(*(*(v0 + oToolkit_S2034880_Ptr) + 13), 96) == 1 )
        {
            v1 = 1;
        }
    }
    return v1;
}


// 0x802a61a
char *sub_802A61A()
{
    int v0; // r5
    int v1; // r4
    int v2; // r0
    int v3; // r6
    char *result; // r0

    v1 = 0;
    v2 = sub_8027D58();
    if ( v2 >= *(v0 + 6) )
        v3 = *(v0 + 6);
    else
        v3 = v2;
    do
    {
        result = getLocOfActiveChips_8027E1C(v1);
        if ( result[7] == 2 )
            result[7] = 0;
        ++v1;
    }
    while ( v1 < v3 );
    return result;
}


// 0x802a646
signed int sub_802A646()
{
    int v0; // r5
    int v1; // r10
    int v2; // r3
    signed int result; // r0

    v2 = *(v1 + oToolkit_S2034880_Ptr);
    result = *(v2 + 68);
    if ( *(v2 + 68) )
    {
        result = *(v2 + 69);
        if ( result < *(v0 + 6) )
        {
            result = 68;
            *(v2 + 68) = 0;
        }
    }
    return result;
}


// 0x802a866
int *sub_802A866()
{
    int *v0; // r0
    int *result; // r0

    v0 = sub_802B298();
    ZeroFillByWord(v0, 64);
    result = sub_802B298();
    *(result + 7) = 1;
    return result;
}


// 0x802a87c
int sub_802A87C()
{
    int *v0; // r5

    v0 = sub_802B298();
    (*(&off_802A898 + *v0))();
    return *(v0 + 4);
}


// 0x802a8a4
void __noreturn sub_802A8A4()
{
    int v0; // r5
    int v1; // r3
    char v2; // r0
    char v3; // r1

    SetEventFlagFromImmediate(1, 151);
    SetEventFlagFromImmediate(1, 173);
    decomp_802B060();
    sub_802B4D4(&unk_2035000, 36976, 100699648, v1);
    sub_802B51C(&unk_2035000, 37076);
    *(v0 + 30) = sub_802B2A0(word_2031000);
    v2 = sub_8120CC8(0, &dword_8129180);
    *(v0 + 12) = v2;
    *(v0 + 13) = v3;
    *(v0 + 15) = 0;
    *(v0 + 18) = 0;
    *(v0 + 16) = -1;
    *(v0 + 17) = -1;
    sub_802B358(word_2031000, &decomp_2032000);
}


// 0x802a934
signed int sub_802A934()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    int v3; // r2
    int v4; // r0
    int v5; // r1
    unsigned int v6; // r2
    signed int result; // r0

    v2 = *(v1 + oToolkit_S2034880_Ptr);
    v3 = *(v2 + 4);
    *(v2 + 18) = v3;
    v4 = v2 + 128;
    v5 = v2 + 208;
    v6 = 4 * v3;
    if ( v6 )
    {
        CopyWords(v4, v5, v6);
        sub_801DA48(8519808);
        sub_801BECC(8519808);
        sub_801DACC(4);
        *(*(v1 + oToolkit_RenderInfoPtr) + 24) = 0;
    }
    result = 1;
    *(v0 + 4) = 1;
    return result;
}


// 0x802a974
int sub_802A974()
{
    int v0; // r5

    return (*(&off_802A988 + *(v0 + 1)))();
}


// 0x802a9b4
int __fastcall sub_802A9B4(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int result; // r0
    char v5; // zf
    char v6; // r1

    result = sub_802AF6C(a1, a2, a3);
    if ( v5 )
    {
        v3[1] = 4;
        v6 = 0;
        result = v3[16];
        if ( result != 255 )
            v6 = 1;
        v3[2] = v6;
    }
    return result;
}


// 0x802a9d0
int __fastcall sub_802A9D0(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r2
    int v6; // r0
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r0
    int v11; // r1
    int v12; // r2
    signed int v13; // r3
    int v14; // r1
    int v15; // r0
    int v16; // r6
    int v17; // r6

    *(v3 + 38) = *(v3 + 36);
    *(v3 + 34) = *(v3 + 32);
    if ( *(v3 + 2) )
    {
        sub_802B0EC();
        if ( *(*(v4 + oToolkit_JoypadPtr) + 4) & 1 )
        {
            if ( *(v3 + 16) == 255 )
            {
                PlaySoundEffect(105, 1, v5);
                goto LABEL_40;
            }
            PlaySoundEffect(130, 1, v5);
            *(v3 + 1) = 8;
            *(v3 + 2) = 0;
        }
        else if ( *(*(v4 + oToolkit_JoypadPtr) + 4) & 2 )
        {
            v6 = *(v3 + 17);
            if ( v6 == 255 )
            {
                v7 = *(v3 + 16);
                if ( v7 != 255 )
                {
                    sub_802B5B0(v7);
                    *(v3 + 16) = -1;
                }
            }
            else
            {
                sub_802B5B0(v6);
                *(v3 + 17) = -1;
            }
            *(v3 + 2) = 0;
            sub_802B358(word_2031000, &decomp_2032000);
        }
        if ( (*(v3 + 16) == 255 || *(v3 + 17) == 255) && *(*(v4 + oToolkit_JoypadPtr) + 4) & 0x20 )
        {
            *(v3 + 2) = 0;
            PlaySoundEffect(127, 32, v5);
        }
    }
    else if ( *(*(v4 + oToolkit_JoypadPtr) + 4) & byte_200 )
    {
        *(v3 + 1) = 28;
        RunTextScriptBattleRunDialog(0);
        PlaySoundEffect(123, v8, v9);
    }
    else if ( *(*(v4 + oToolkit_JoypadPtr) + 4) & byte_100 )
    {
        v10 = word_2031000[*(v3 + 36) + *(v3 + 32)];
        if ( v10 != 0xFFFF )
        {
            sub_802B5DC(v10);
            *(v3 + 1) = 24;
            PlaySoundEffect(156, v11, v12);
        }
    }
    else if ( *(*(v4 + oToolkit_JoypadPtr) + 4) & 0x10 )
    {
        *(v3 + 2) = 4;
        PlaySoundEffect(127, 16, a3);
    }
    else if ( sub_811F7F8(*(*(v4 + oToolkit_JoypadPtr) + 4), 5u, 0, 0) )
    {
        if ( *(v3 + 36) != *(v3 + 38) )
            sub_802B358(word_2031000, &decomp_2032000);
        if ( *(v3 + 32) != *(v3 + 34) )
            sub_802B438(&unk_2030E60, word_2031000);
    }
    else if ( *(*(v4 + oToolkit_JoypadPtr) + 4) & 1 )
    {
        v13 = 16;
        if ( *(v3 + 16) != 255 )
            v13 = 17;
        v14 = *(v3 + 32);
        v15 = *(v3 + 36) + v14;
        v16 = word_2031000[v15];
        if ( v16 != 0xFFFF )
        {
            v17 = *&byte_802B5FC[8 * v16 + 4];
            if ( *(v3 + 18) + v17 <= 50 )
            {
                v14 = *(v3 + 16);
                if ( v15 != v14 )
                {
                    v14 = *(v3 + 17);
                    if ( v15 != v14 )
                    {
                        *(v3 + v13) = v15;
                        *(v3 + 18) += v17;
                        if ( v13 == 17 )
                            *(v3 + 2) = 4;
                        sub_802B358(word_2031000, &decomp_2032000);
                    }
                }
            }
        }
        PlaySoundEffect(105, v14, 0xFFFF);
    }
    else
    {
        sub_802B560();
    }
LABEL_40:
    sub_802B15C(16);
    sub_802B15C(17);
    if ( !*(v3 + 2) )
        sub_802B1E4();
    return sub_802B270();
}


// 0x802abd0
int __noreturn sub_802ABD0()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = sub_802AFD4();
    if ( v2 )
    {
        v0[1] = 12;
        v0[2] = 0;
        v0[3] = 0;
        result = word_2031000[v0[16]];
        v0[7] = result;
    }
    return result;
}


// 0x802abf4
int sub_802ABF4()
{
    int v0; // r5

    return (*(&off_802AC08 + *(v0 + 2)))();
}


// 0x802ac10
int sub_802AC10()
{
    int v0; // r5
    int result; // r0
    char v2; // r1

    if ( !*(v0 + 3) )
    {
        *(v0 + 3) = 1;
        if ( *(v0 + 5) >= 2 )
        {
            *(v0 + 1) = 0;
            result = 0;
            *(v0 + 2) = 0;
            return result;
        }
        *(v0 + 4 * *(v0 + 5) + 48) = sub_802AEEA(6 * (*(v0 + 7) - 1) + 1);
        *(v0 + *(v0 + 5) + 10) = v2;
        *(v0 + 8) = 2;
        *(v0 + 9) = 2;
    }
    result = sub_802AF38();
    if ( *(result + 9) == 1 )
    {
        *(result + 18) = 0;
        sub_802AF28();
        *(v0 + 1) = 40;
        *(v0 + 2) = 4;
        result = 8;
        *(v0 + 60) = 8;
    }
    return result;
}


// 0x802ac6e
int __fastcall sub_802AC6E(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r0
    int v6; // r1
    int v7; // r1
    signed int v8; // r1
    int v9; // r1
    int v10; // r1
    int v11; // r1
    signed int v12; // r1
    int v13; // r1
    int v14; // r0
    int v15; // r2
    int v16; // r1
    int v17; // r1
    int v18; // r2
    int v19; // r0
    int v20; // r0
    char v21; // ST00_1
    char v22; // ST01_1

    v5 = *(*(v4 + oToolkit_JoypadPtr) + 4);
    if ( v5 & 0x40 && (v6 = *(v3 + 9), v6 > 1) )
    {
        v7 = v6 - 1;
        *(v3 + 9) = v7;
        sub_802B5D0(v5, v7, a3);
    }
    else if ( v5 & 0x80 && (v8 = *(v3 + 9), v8 < 3) )
    {
        v9 = v8 + 1;
        *(v3 + 9) = v9;
        sub_802B5D0(v5, v9, a3);
    }
    else if ( v5 & 0x20 && (v10 = *(v3 + 8), v10 > 1) )
    {
        v11 = v10 - 1;
        *(v3 + 8) = v11;
        sub_802B5D0(v5, v11, a3);
    }
    else if ( v5 & 0x10 && (v12 = *(v3 + 8), v12 < 3) )
    {
        v13 = v12 + 1;
        *(v3 + 8) = v13;
        sub_802B5D0(v5, v13, a3);
    }
    else if ( v5 & 1 )
    {
        v14 = object_getPanelParameters(*(v3 + 8), *(v3 + 9));
        v16 = 260046848;
        if ( v14 & 0xF800000 || (v16 = 16, (v14 & 0x10) != 16) )
        {
            PlaySoundEffect(105, v16, v15);
        }
        else
        {
            sub_802AF38();
            sub_802AF28();
            PlaySoundEffect(103, v17, v18);
            v19 = *(v3 + 5) + 1;
            *(v3 + 5) = v19;
            if ( v19 >= 2 || (v20 = *(v3 + 17), v20 == 255) )
            {
                chatbox_runScript(&TextScriptBattleDialog8736D74, 40);
                *(v3 + 1) = 20;
                *(v3 + 2) = 0;
            }
            else
            {
                *(v3 + 7) = word_2031000[v20];
                *(v3 + 1) = 12;
                *(v3 + 2) = 0;
            }
        }
    }
    else if ( v5 & 2 )
    {
        PlaySoundEffect(104, 2, a3);
        *(v3 + 1) = 16;
        *(v3 + 2) = 0;
    }
    v21 = 5 * *(v3 + 8) - 3;
    v22 = 3 * *(v3 + 9) + 7;
    return sub_802AF0E();
}


// 0x802ad84
_BYTE *sub_802AD84()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    _BYTE *result; // r0
    int v4; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 3) = 1;
        v0 = sub_802AF38();
        *(*(v0 + 88) + 2) = 1;
        sub_800EC3C();
        v2 = *(v1 + oToolkit_S2034880_Ptr);
        --*(v2 + 8);
        --*(v2 + 4);
    }
    result = sub_802AF38();
    if ( !*result )
    {
        if ( *(v0 + *(v0 + 5) + 10) )
            sub_8002ADE();
        if ( *(v0 + 5) )
        {
            --*(v0 + 5);
            v4 = sub_802AF38();
            *(v0 + 8) = *(v4 + 18);
            *(v0 + 9) = *(v4 + 19);
            *(v4 + 18) = 0;
            sub_802AF28();
            *(v0 + 1) = 40;
            result = &dword_8;
            *(v0 + 60) = 8;
        }
        else
        {
            *(v0 + 1) = 0;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    return result;
}


// 0x802adfc
int sub_802ADFC()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 60) - 1;
    *(v0 + 60) = result;
    if ( !result )
    {
        *(v0 + 1) = 12;
        *(v0 + 2) = 4;
        result = sub_802AF0E();
    }
    return result;
}


// 0x802ae14
int sub_802AE14()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0

    result = chatbox_mask_eFlags2009F38(32);
    if ( !v2 )
    {
        if ( chatbox_8045F4C() )
        {
            *(v0 + 1) = 16;
            *(v0 + 2) = 0;
            --*(v0 + 5);
            v3 = sub_802AF38();
            *(v0 + 8) = *(v3 + 18);
            *(v0 + 9) = *(v3 + 19);
            *(v3 + 18) = 0;
            sub_802AF28();
            *(v0 + 1) = 12;
            *(v0 + 2) = 4;
        }
        else
        {
            *v0 = 8;
        }
        result = chatbox_8040818();
    }
    return result;
}


// 0x802ae5c
int sub_802AE5C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    chatbox_mask_eFlags2009F38(128);
    if ( v3 )
    {
        PlaySoundEffect(158, v1, v2);
        *(v0 + 1) = 4;
    }
    sub_802B15C(16);
    sub_802B15C(17);
    return sub_802B270();
}


// 0x802ae84
int sub_802AE84()
{
    int v0; // r5
    char v1; // zf

    chatbox_mask_eFlags2009F38(128);
    if ( v1 )
    {
        if ( chatbox_8045F4C() )
        {
            *(v0 + 1) = 4;
        }
        else
        {
            RunTextScriptBattleRunDialog(1);
            *(v0 + 1) = 32;
        }
    }
    sub_802B15C(16);
    sub_802B15C(17);
    return sub_802B270();
}


// 0x802aeb8
int sub_802AEB8()
{
    int v0; // r5
    char v1; // zf

    chatbox_mask_eFlags2009F38(128);
    if ( v1 )
        *(v0 + 1) = 36;
    sub_802B15C(16);
    sub_802B15C(17);
    return sub_802B270();
}


// 0x802aed8
int __noreturn sub_802AED8()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = sub_802AFD4();
    if ( v2 )
    {
        sub_800AABC();
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x802aeea
int *__fastcall sub_802AEEA(int a1)
{
    int v1; // r6
    char (*v2)[8]; // r0

    v1 = a1;
    v2 = enemy_getStruct1(a1);
    sub_8002A64(*v2, (*v2)[1]);
    return sub_80076A0(v1, 2, 2, 0);
}


// 0x802af0e
int sub_802AF0E()
{
    int v0; // r5
    Battle *v1; // r0
    u8 v2; // r1
    u8 v3; // r1

    v1 = sub_802AF38();
    v2 = *(v0 + 8);
    v1->panelX = v2;
    v1->futurePanelX = v2;
    v3 = *(v0 + 9);
    v1->panelY = v3;
    v1->futurePanelY = v3;
    return object_setCoordinatesFromPanels(v1);
}


// 0x802af28
int sub_802AF28()
{
    return object_setFlag2(0x80000);
}


// 0x802af38
int sub_802AF38()
{
    int v0; // r5

    return *(v0 + 4 * *(v0 + 5) + 48);
}


// 0x802af42
int sub_802AF42()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    int result; // r0

    --*(v0 + 5);
    *(*(sub_802AF38() + 88) + 2) = 1;
    sub_800EC3C();
    v2 = *(v1 + oToolkit_S2034880_Ptr);
    --*(v2 + 8);
    result = *(v2 + 4) - 1;
    *(v2 + 4) = result;
    return result;
}


// 0x802af6c
int __fastcall sub_802AF6C(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r1
    unsigned int v6; // r6
    unsigned int v7; // r0
    __int16 *v8; // r4
    int v9; // r0
    int v10; // r1
    signed int v11; // r7
    int v12; // ST00_4
    int v13; // ST04_4
    int result; // r0
    int v15; // [sp-10h] [bp-24h]

    if ( !*(v3 + 2) )
    {
        v5 = *(v4 + oToolkit_RenderInfoPtr);
        *(v5 + 24) = 120;
        PlaySoundEffect(121, v5, a3);
        *(v3 + 60) = 15;
        *(v3 + 56) = 120;
        *(v3 + 2) = 120;
    }
    v15 = *(v3 + 56) - 12;
    v6 = ((v15 & 4u) >> 2) + 1;
    do
    {
        v7 = *(v3 + 60) - 1;
        *(v3 + 60) = v7;
        v7 *= 2;
        v8 = (&unk_2035000 + v7);
        v9 = v7 >> 1;
        v10 = 0;
        v11 = 20;
        do
        {
            v12 = v9;
            v13 = v10;
            sub_800187C(v9, v10, 3, *v8);
            v9 = v12;
            v10 = v13 + 1;
            v8 += 15;
            --v11;
        }
        while ( v11 );
        --v6;
    }
    while ( v6 );
    result = v15;
    *(v3 + 56) = v15;
    *(*(v4 + oToolkit_RenderInfoPtr) + 24) = v15;
    return result;
}


// 0x802afd4
int sub_802AFD4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned int v3; // r6
    int v4; // r0
    int result; // r0
    int v6; // [sp-14h] [bp-28h]

    v2 = *(v0 + 2);
    if ( !*(v0 + 2) )
    {
        *(v0 + 60) = v2;
        *(v0 + 56) = v2;
        *(v0 + 2) = 4;
    }
    v6 = *(v0 + 56) + 12;
    v3 = (((v6 & 4u) >> 2) ^ 1) + 1;
    do
    {
        v4 = *(v0 + 60) + 1;
        *(v0 + 60) = v4;
        CopyBackgroundTiles(v4 - 1, 0, 3, byte_802B024, 1, dword_14);
        --v3;
    }
    while ( v3 );
    result = v6;
    *(v0 + 56) = v6;
    *(*(v1 + oToolkit_RenderInfoPtr) + 24) = v6;
    return result;
}


// 0x802b060
void decomp_802B060()
{
    decompAndCopyData(&initRefs_802B070);
}


// 0x802b0ec
unsigned int sub_802B0EC()
{
    int v0; // r5
    signed int v1; // r7
    int *v2; // r6
    int v3; // r4
    unsigned int result; // r0
    unsigned __int8 v5; // vf

    v1 = 4;
    v2 = &dword_802B11C;
    do
    {
        v3 = v2[2];
        result = sub_811FAF4((*v2 << 16) | v2[1], 0x10002u, *(v0 + 15), byte_802A848);
        v2 += 4;
        v5 = __OFSUB__(v1--, 1);
    }
    while ( !(((v1 < 0) ^ v5) | (v1 == 0)) );
    *(v0 + 15) = result;
    return result;
}


// 0x802b15c
int __fastcall sub_802B15C(int result)
{
    int v1; // r5
    int v2; // r2
    int v3; // r5
    signed int v4; // r7
    int *v5; // r6
    int v6; // r4
    unsigned __int8 v7; // vf

    v2 = *(v1 + result);
    if ( v2 != 255 )
    {
        result = *(v1 + 36);
        if ( v2 >= result && v2 < result + 5 )
        {
            v3 = 16 * (v2 - result);
            v4 = 4;
            v5 = &dword_802B1A4;
            do
            {
                v6 = v5[2];
                result = sub_811FAF4((*v5 << 16) | (v5[1] + v3), 0x10002u, 0, &dword_802A862);
                v5 += 4;
                v7 = __OFSUB__(v4--, 1);
            }
            while ( !(((v4 < 0) ^ v7) | (v4 == 0)) );
        }
    }
    return result;
}


// 0x802b1e4
int sub_802B1E4()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 30);
    if ( *(v0 + 30) )
        result = sub_802B20C(2, 18, 32, 12);
    return result;
}


// 0x802b20c
int __fastcall sub_802B20C(int a1, int a2, int a3, int a4)
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
    v10 = sub_811FAF4(v7 | (a2 + 16 * v8), v6, v9 & 0xF, v4);
    v11 = (v9 >> 4) - 1;
    if ( v9 >> 4 == 1 )
        *(v5 + v13) = sub_8120CC8(v10, &dword_8129180);
    result = *(v5 + v13) & 0xF | 16 * v11;
    *(v5 + v13) = result;
    return result;
}


// 0x802b270
int sub_802B270()
{
    int v0; // r5

    return sub_811FA98(6422540, 0x10002u, *(v0 + 30), *(v0 + 36));
}


// 0x802b298
int *sub_802B298()
{
    return &dword_20364C0;
}


// 0x802b2a0
unsigned int __fastcall sub_802B2A0(u8 *a1)
{
    u8 *v1; // r7
    unsigned int v2; // r6
    signed int v3; // r4
    char v4; // zf

    v1 = a1;
    ByteFill(a1, 54, 0xFFu);
    v2 = 0;
    v3 = 0;
    do
    {
        TestEventFlag(*&byte_802B2E0[4 * v3]);
        if ( !v4 )
            *&v1[v2] = *&byte_802B2E0[4 * v3] - 406;
        v2 += 2;
        ++v3;
    }
    while ( v3 < 27 );
    return v2 >> 1;
}


// 0x802b358
int __fastcall __noreturn sub_802B358(int a1, int a2)
{
    int v2; // r5
    int v3; // r4
    int v4; // r6
    int v5; // r6
    int v6; // r1
    int v7; // r1
    int v8; // r0
    int v9; // r1
    int *v10; // r0
    int result; // r0
    int v12; // [sp+0h] [bp-1Ch]
    int v13; // [sp+4h] [bp-18h]

    v13 = a2;
    v3 = a1;
    v4 = 0;
    v12 = 0;
    do
    {
        v5 = v4 + *(v2 + 36);
        v6 = *(v2 + 16);
        if ( v6 != 255 && v5 != v6 )
            v7 = *(v2 + 17);
        v8 = *(v3 + 2 * v5);
        if ( v8 == 0xFFFF )
        {
            v9 = 41;
            v10 = &TextScriptBattleDialog8736D74;
        }
        else
        {
            *&byte_802B5FC[8 * v8 + 4];
            *(v2 + 18);
            v9 = *&byte_802B3F8[2 * v8];
            v10 = TextScriptVirusChipNames;
        }
        result = renderTextGfx_8045F8C(v10, v9, v13 + 640 * v12, 640 * v12 + 100699648);
        v4 = v12 + 1;
        v12 = v4;
    }
    while ( v4 < 5 );
    return result;
}


// 0x802b438
int __fastcall sub_802B438(int a1, int a2)
{
    int v2; // r5
    int v3; // r0
    signed int v4; // r0
    signed int v5; // r7
    signed int v6; // r6
    unsigned int v7; // r2
    signed int v8; // r2
    int result; // r0
    int v10; // [sp+0h] [bp-2Ch]
    int v11; // [sp+4h] [bp-28h]
    signed int v12; // [sp+Ch] [bp-20h]
    int v13; // [sp+10h] [bp-1Ch]
    int v14; // [sp+14h] [bp-18h]

    v13 = a1;
    v14 = a2;
    v11 = 0;
    v10 = 0;
    v12 = 0;
    do
    {
        v3 = *(v14 + 2 * (*(v2 + 32) + *(v2 + 36)));
        if ( v3 == 0xFFFF )
            v4 = 0;
        else
            v4 = sub_8000C00(*&byte_802B5FC[8 * v3 + 2 * v11]);
        v5 = v4;
        v6 = 16;
        do
        {
            v7 = (v5 << (32 - v6)) >> (32 - v6);
            v6 -= 4;
            v8 = v7 >> v6;
            if ( v8 || v12 || !v6 )
                v12 = 1;
            else
                v8 = 10;
            (loc_8000AC4)(32 * v8 + v13, 32 * v10++ + 100702848);
        }
        while ( v6 > 0 );
        v12 = 0;
        result = v11 + 1;
        v11 = result;
    }
    while ( result < 3 );
    return result;
}


// 0x802b4d4
void __fastcall sub_802B4D4(int a1, int a2, int a3, int a4)
{
    _WORD *v4; // r7
    _WORD *v5; // r4
    signed int v6; // r5
    signed int v7; // r6
    int v8; // r3
    int v9; // r3
    unsigned __int8 v10; // vf
    _WORD *v11; // [sp-8h] [bp-20h]
    _WORD *v12; // [sp-4h] [bp-1Ch]
    int v13; // [sp+0h] [bp-18h]

    v13 = a2;
    v4 = (a1 + 64);
    v5 = (a1 + 94);
    ZeroFillByEightWords(a3, &loc_C80);
    v6 = 5;
    do
    {
        v7 = 0;
        v8 = v13;
        v11 = v5;
        v12 = v4;
        do
        {
            *v4 = v8;
            v9 = v8 + 1;
            *v5 = v9;
            v8 = v9 + 1;
            ++v4;
            ++v5;
            ++v7;
        }
        while ( v7 < 10 );
        v13 = v8;
        v4 = v12 + 30;
        v5 = v11 + 30;
        v10 = __OFSUB__(v6--, 1);
    }
    while ( !(((v6 < 0) ^ v10) | (v6 == 0)) );
}


// 0x802b51c
int __fastcall sub_802B51C(int result, int a2)
{
    _WORD *v2; // r7
    signed int v3; // r5
    signed int v4; // r6
    int v5; // r3
    _WORD *v6; // [sp-4h] [bp-1Ch]
    int v7; // [sp+0h] [bp-18h]

    v7 = a2;
    v2 = (&loc_1A4 + result + 10);
    v3 = 3;
    while ( 1 )
    {
        v4 = 0;
        v5 = v7;
        v6 = v2;
        do
        {
            *v2 = v5++;
            ++v2;
            ++v4;
        }
        while ( v4 < 4 );
        v7 = v5;
        v2 = v6 + 30;
        if ( --v3 <= 1 )
        {
            v2 = v6 + 29;
            if ( !v3 )
                break;
        }
    }
    return result;
}


// 0x802b560
int sub_802B560()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    signed int v3; // r1
    signed int v4; // [sp-4h] [bp-8h]

    result = *(*(v1 + oToolkit_JoypadPtr) + 4);
    if ( result & 2 )
    {
        v3 = 17;
        if ( *(v0 + 17) != 255 || (v3 = 16, result = *(v0 + 16), result != 255) )
        {
            v4 = v3;
            sub_802B5B0(*(v0 + v3));
            *(v0 + v4) = -1;
            sub_802B358(word_2031000, &decomp_2032000);
        }
    }
    return result;
}


// 0x802b5b0
int __fastcall sub_802B5B0(int a1)
{
    int v1; // r5
    int result; // r0

    result = *&byte_802B5FC[8 * word_2031000[a1] + 4];
    *(v1 + 18) -= result;
    return result;
}


// 0x802b5d0
int __fastcall sub_802B5D0(int a1, int a2, int a3)
{
    return PlaySoundEffect(102, a2, a3);
}


// 0x802b5dc
void __fastcall sub_802B5DC(int a1)
{
    chatbox_runScript(&eTextScript2030860, a1);
}


// 0x802b5ec
void __fastcall RunTextScriptBattleRunDialog(int a1)
{
    chatbox_runScript(TextScriptBattleRunDialog, a1);
}


// 0x802b6ec
void sub_802B6EC()
{
    JUMPOUT(&loc_802B6F6);
}


// 0x802b6f2
int __fastcall sub_802B6F2(__int16 a1, char a2, int a3, int a4)
{
    __int16 v4; // ST00_2
    char v5; // ST04_1
    char v6; // ST08_1
    int v7; // ST0C_4
    signed __int16 *v8; // r3
    char *v9; // r6
    char v10; // r4
    int result; // r0

    v4 = a1;
    v5 = a2;
    v6 = a3;
    v7 = a4;
    ZeroFillByWord(word_2036660, 32);
    v8 = v7;
    word_2036664 = v4;
    byte_2036666 = v5;
    byte_2036667 = v6;
    v9 = byte_2036674;
    v10 = -1;
    do
    {
        ++v10;
        result = *v8;
        *v9 = result;
        ++v8;
        v9 += 2;
    }
    while ( result != -1 );
    byte_2036668 = v10;
    return result;
}


// 0x802b734
int sub_802B734()
{
    ++dword_203666C;
    return (*(&off_802B750 + LOBYTE(word_2036660[0])))();
}


// 0x802b75c
int sub_802B75C()
{
    _DWORD *v0; // r5

    *v0 = 4;
    return 0;
}


// 0x802b766
signed int sub_802B766()
{
    return 1;
}


// 0x802b76c
int sub_802B76C()
{
    (*(&off_802B784 + HIBYTE(word_2036660[0])))();
    return 0;
}


// 0x802b7a0
int sub_802B7A0()
{
    int v0; // r5
    int result; // r0
    signed int v2; // r0

    if ( *(v0 + 2) )
    {
        result = IsPaletteFadeActive();
        if ( !result )
        {
            v2 = 36;
            if ( !*(v0 + 7) )
                v2 = 52;
            (sub_801E792)(v2);
            *(v0 + 1) = 4;
            *(v0 + 2) = 0;
            result = 0;
            *(v0 + 16) = 0;
        }
    }
    else
    {
        *(v0 + 2) = 1;
        sub_802B9FE(0);
        result = engine_setScreeneffect(20, 8);
    }
    return result;
}


// 0x802b7e0
int sub_802B7E0()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 2) )
    {
        result = sub_801E754();
        if ( result != 2 )
            return result;
        *(v0 + 2) = 1;
    }
    result = *(v0 + 16) + 1;
    if ( result >= 20 )
    {
        *(v0 + 1) = 8;
        *(v0 + 2) = 0;
        result = 0;
        *(v0 + 12) = 0;
    }
    *(v0 + 16) = result;
    return result;
}


// 0x802b80c
int sub_802B80C()
{
    int v0; // r5
    int result; // r0
    int (*v2)[345]; // r0
    int v3; // r3
    int v4; // r1
    signed int v5; // r2
    unsigned int v6; // r3
    int v7; // r0
    int v8; // r1
    int v9; // r0
    int v10; // r1
    signed int v11; // r0
    int v12; // r1
    unsigned int v13; // [sp-20h] [bp-24h]
    int v14; // [sp-14h] [bp-18h]

    sub_802B9E4();
    result = *(v0 + 16);
    *(v0 + 16) = result + 1;
    if ( !(result & 7) )
    {
        v13 = *(v0 + (result >> 2) + 20);
        v14 = result;
        v2 = sub_8027D10(v13);
        renderTextGfx_8045F8C(v2, v4, byte_203C4E0, &byte_48 * v3 + 100701536);
        v5 = v13 & 0x1FF;
        if ( v5 < dword_160 )
            renderTextGfx_8045F8C(TextScript86F0300, v13 >> 9, byte_203C6E0, &byte_48 * v14 + 100702048);
        v6 = v14;
        v7 = *(v0 + 16) >> 3;
        v8 = *(v0 + 6);
        if ( v7 < v8 || (v9 = v7 - v8, v10 = *(v0 + 7), v9 >= v10) )
        {
            v11 = 53419;
        }
        else
        {
            PlaySoundEffect(145, v10, v5);
            v11 = 41131;
        }
        v12 = *(v0 + 16);
        sub_802B8B0(v11 + 18 * (v6 >> 3));
        result = (*(v0 + 16) >> 3) + 1;
        if ( result >= *(v0 + 8) )
        {
            *(v0 + 1) = 12;
            result = 0;
            *(v0 + 16) = 0;
        }
    }
    return result;
}


// 0x802b8b0
void __fastcall sub_802B8B0(int a1)
{
    int *v1; // r2
    signed int v2; // r3
    int v3; // r0
    int v4; // r0
    int v5; // r1
    u16 *v6; // r3
    int v7; // [sp+0h] [bp-30h]

    v1 = &v7;
    v2 = 9;
    do
    {
        *v1 = a1;
        v3 = a1 + 1;
        *(v1 + 9) = v3;
        a1 = v3 + 1;
        v1 = (v1 + 2);
        --v2;
    }
    while ( v2 );
    v4 = sub_802BA18();
    sub_802BA24(v4, v5, 3, v6);
}


// 0x802b8e0
int sub_802B8E0()
{
    int v0; // r5
    int result; // r0
    int v2; // ST04_4
    int v3; // r1
    int v4; // r5
    int v5; // r0
    int v6; // r1

    sub_802B9E4();
    result = *(v0 + 16) + 1;
    *(v0 + 16) = result;
    if ( result >= 24 )
    {
        v2 = v0;
        v3 = 3 * *(v0 + 6) + 5;
        v4 = 3 * *(v0 + 7) - 1;
        v5 = sub_802BA18();
        sub_802BA34(v5, v6, 3, 0);
        *(v2 + 1) = 16;
        *(v2 + 2) = 0;
        result = 0;
        *(v2 + 16) = 0;
    }
    return result;
}


// 0x802b920
void sub_802B920()
{
    int v0; // r5
    int v1; // r0
    int (*v2)[345]; // r0
    int v3; // r1
    int v4; // r1
    int v5; // r2
    int v6; // r0

    sub_802B9E4();
    v1 = *(v0 + 16) + 1;
    *(v0 + 16) = v1;
    if ( v1 >= 96 )
    {
        *(v0 + 1) = 20;
        *(v0 + 2) = 0;
        sub_801E780();
        v6 = sub_802BA18();
        sub_802BA34(v6, 5, 3, 0);
    }
    else if ( v1 == 16 )
    {
        sub_802B8B0(18 * *(v0 + 6) + 41131);
        v2 = sub_8027D10(*(v0 + 4));
        renderTextGfx_8045F8C(v2, v3, byte_203C4E0, &byte_48 * 8 * *(v0 + 6) + 100701536);
        PlaySoundEffect(146, v4, v5);
    }
}


// 0x802b9b8
int sub_802B9B8()
{
    int v0; // r5
    int result; // r0

    result = sub_801E754();
    if ( !result )
    {
        *(v0 + 1) = 24;
        *(v0 + 2) = 0;
        result = engine_setScreeneffect(16, 8);
    }
    return result;
}


// 0x802b9d4
int sub_802B9D4()
{
    _DWORD *v0; // r5
    int result; // r0

    result = IsPaletteFadeActive();
    if ( !result )
    {
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x802b9e4
void sub_802B9E4()
{
    int v0; // r5
    unsigned int v1; // r0
    signed int v2; // r0

    v1 = *(v0 + 12);
    if ( !(v1 & 3) )
    {
        v2 = (v1 >> 4) & 3;
        if ( v2 == 3 )
            v2 = 1;
        sub_802B9FE(v2);
    }
}


// 0x802b9fe
int __fastcall sub_802B9FE(int a1)
{
    return (loc_8000AC8)(&byte_802BA48[8 * a1], &unk_3001AA0, 8);
}


// 0x802ba18
int sub_802BA18()
{
    int v0; // r10

    return (*(*(v0 + oToolkit_RenderInfoPtr) + 24) >> 3) + 1;
}


// 0x802ba24
void __fastcall sub_802BA24(int a1, int a2, int a3, u16 *a4)
{
    int v4; // r4
    int v5; // r5

    if ( byte_2036667 )
        CopyBackgroundTiles(a1, a2, a3, a4, v4, v5);
}


// 0x802ba34
void __fastcall sub_802BA34(int a1, int a2, int a3, __int16 a4)
{
    if ( byte_2036667 )
        call_sub_3005EBA(a1, a2, a3, a4);
}


// 0x802bd60
int sub_802BD60()
{
    BYTE1(dword_20364C4) = 1;
    dword_20364D8 = sub_802C8EA();
    HIBYTE(dword_20364C4) = BYTE2(dword_20364C4);
    (*(&off_802BDA0 + dword_20364C0))();
    CopyBackgroundTiles(SBYTE2(dword_20364C4), 2, 3, &unk_2034B30, 24, &dword_10 + 2);
    sub_802C460();
    return BYTE1(dword_20364C4);
}


// 0x802bdb4
signed int sub_802BDB4()
{
    _DWORD *v0; // r5
    signed int result; // r0

    sub_802C97E();
    result = 4;
    *v0 = 4;
    return result;
}


// 0x802bdc0
int sub_802BDC0()
{
    int v0; // r5

    (*(&off_802BDDC + *(v0 + 1)))();
    sub_802C85C();
    return sub_802CA5C();
}


// 0x802bdf0
int sub_802BDF0()
{
    int v0; // r5

    return (*(&off_802BE04 + *(v0 + 2)))();
}


// 0x802be0c
signed int __noreturn sub_802BE0C()
{
    int v0; // r10
    signed int result; // r0
    int v2; // [sp+0h] [bp-10h]

    call_sub_3005EBA(0, 0, 3, 0);
    *(*(v0 + oToolkit_RenderInfoPtr) + 24) = 0;
    sub_801E0A0(0, 0);
    result = 4;
    *(v2 + 2) = 4;
    return result;
}


// 0x802be36
int sub_802BE36()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    v1 = *(v0 + 6) + 2;
    *(v0 + 6) = v1;
    if ( v1 >= 3 )
    {
        *(v0 + 6) = 3;
        *(v0 + 1) = 4;
        *(v0 + 2) = 0;
    }
    result = *(v0 + 4);
    if ( result != 2 )
    {
        sub_802C4E8(*(v0 + 28), *(v0 + 14));
        result = sub_802C6EC(*(v0 + 8));
    }
    return result;
}


// 0x802be90
int sub_802BE90()
{
    int v0; // r5

    return (*(&off_802BEA4 + *(v0 + 2)))();
}


// 0x802beb4
int sub_802BEB4()
{
    int v0; // r5

    return (*(&off_802BEC8 + *(v0 + 3)))();
}


// 0x802bed4
signed int sub_802BED4()
{
    int v0; // r5
    int v1; // r0
    signed int result; // r0
    char v3; // r0

    v1 = sub_802C8D4();
    if ( v1 )
    {
        *(v0 + 16) = v1;
        v3 = 1;
        if ( !*(v0 + 12) )
            v3 = 30;
        *(v0 + 11) = v3;
        result = 4;
        *(v0 + 3) = 4;
    }
    else
    {
        *(v0 + 1) = 8;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x802befc
int sub_802BEFC()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 11) - 1;
    *(v0 + 11) = result;
    if ( !result )
    {
        result = 8;
        *(v0 + 3) = 8;
    }
    return result;
}


// 0x802bf0c
int sub_802BF0C()
{
    int v0; // r5
    int v1; // r10
    signed __int16 v2; // r0

    if ( !((dword_2036824 | dword_203682C) & 1) )
        return sub_802C810((**(v1 + oToolkit_CurFramePtr) & 8u) >> 3);
    if ( *(v0 + 12) <= 1 )
        v2 = 4;
    else
        v2 = 12;
    *(v0 + 2) = v2;
    return sub_802C810(0);
}


// 0x802bf4c
int sub_802BF4C()
{
    int v0; // r5

    return (*(&off_802BF60 + *(v0 + 3)))();
}


// 0x802bf6c
signed int sub_802BF6C()
{
    int v0; // r5
    int v1; // r0
    signed int v2; // r0
    int v3; // r1
    void *v4; // r7
    int *v5; // r0
    int *v6; // r1
    signed int v7; // r2
    int *v8; // ST00_4
    signed int result; // r0

    v1 = 0;
    do
    {
        byte_2035320[v1] = v1;
        ++v1;
    }
    while ( v1 - 42 < 0 );
    sub_8000C72(byte_2035320, 42, 42);
    v2 = *(v0 + 16);
    v3 = 0xFFFF;
    if ( v2 == 0xFFFF )
        goto LABEL_22;
    v2 = sub_802C54C(v2);
    if ( !v2 )
    {
        v4 = getChip8021DA8(v3);
        v5 = *(v4 + 9);
        v6 = *(v4 + 10);
        goto LABEL_19;
    }
    if ( v2 == 1 )
    {
        v5 = dword_8732E54;
        v6 = dword_8733394;
        goto LABEL_19;
    }
    if ( v2 != 2 )
    {
LABEL_22:
        if ( v2 == 3 )
        {
            v7 = 0;
            if ( v3 > 1 )
            {
                v7 = 8;
                if ( v3 > 2 )
                {
                    v7 = 16;
                    if ( v3 > 3 )
                        v7 = 24;
                }
            }
            v5 = dword_87343F4;
            v6 = &dword_8734934[v7];
        }
        else
        {
            v5 = dword_8733E74;
            v6 = dword_87343B4;
        }
    }
    else if ( v3 )
    {
        v5 = dword_87333B4;
        v6 = dword_87338F4;
    }
    else
    {
        v5 = dword_8733914;
        v6 = dword_8733E54;
    }
LABEL_19:
    v8 = v6;
    (loc_8000AC8)(v5, 100711680, 2688);
    (loc_8000AC8)(v8, &unk_3001AE0, 32);
    *(v0 + 11) = 0;
    result = 4;
    *(v0 + 3) = 4;
    return result;
}


// 0x802c044
int sub_802C044()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    char v3; // ST00_1
    int v4; // r0
    int v9; // r2
    int v10; // [sp+0h] [bp-78h]
    int v11; // [sp+4h] [bp-74h]

    sub_802C588(&v11);
    v1 = *(v0 + 11);
    if ( v1 - 42 < 0 )
    {
        v3 = *(v0 + 11);
        v4 = byte_2035320[v1];
        LOWORD(v10) = *(&v10 + v4 + 2);
        __asm { SVC         6 }
        sub_802C4B6(21, v4 + 10, &v10, 1);
        *(v0 + 11) = v3 + 1;
        result = (v3 + 1) & 3;
        if ( result == 3 )
            result = PlaySoundEffect(126, 3, v9);
    }
    else
    {
        *(v0 + 3) = 8;
        result = 30;
        *(v0 + 11) = 30;
    }
    return result;
}


// 0x802c0a4
int sub_802C0A4()
{
    int v0; // r5
    int result; // r0
    unsigned int v2; // r0
    signed int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r4
    unsigned __int8 *v7; // r0
    unsigned int v8; // [sp-8h] [bp-Ch]
    int v9; // [sp-4h] [bp-8h]

    result = *(v0 + 11) - 1;
    *(v0 + 11) = result;
    if ( !result )
    {
        v2 = *(v0 + 16);
        if ( v2 != 0xFFFF )
        {
            v3 = sub_802C54C(v2);
            if ( !v3 )
            {
                v8 = v4;
                v9 = v5;
                if ( *(v0 + 4) != 2 )
                {
                    v6 = v5;
                    if ( v4 <= 310 )
                    {
                        v7 = getChip8021DA8(v4);
                        if ( *v7 != -1 && *v7 != v6 && v7[1] != v6 )
                            v7[2];
                    }
                }
                sub_802C75C(v8, v9);
            }
            if ( v3 == 1 )
                sub_802C5B0(v4);
            if ( v3 == 2 )
                sub_802C646(v4);
            if ( v3 == 3 )
                sub_802C5E6(v4);
        }
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x802c170
int sub_802C170()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r7
    int v4; // r1
    int v5; // r1
    int v6; // r2
    Battle *v7; // r5
    int v8; // r0
    int v9; // [sp-Ch] [bp-10h]
    int v10; // [sp-4h] [bp-8h]

    if ( *(v0 + 3) )
    {
        v8 = *(*(v0 + 24) + 4) | *(*(v0 + 24) + 12);
        result = 0;
        *(v0 + 2) = 0;
    }
    else
    {
        result = *(v0 + 11) - 1;
        *(v0 + 11) = result;
        if ( !result )
        {
            sub_802C54C(*(v0 + 16));
            v10 = v0;
            v3 = *(v1 + oToolkit_S2034880_Ptr);
            v9 = v4;
            v7 = sub_80103EC();
            if ( v9 )
                object_addHP(v7, v9);
            else
                v7->HP = v7->maxHP;
            PlaySoundEffect(138, v5, v6);
            *(v3 + 52) = v7->HP;
            result = 4;
            *(v10 + 3) = 4;
        }
    }
    return result;
}


// 0x802c1d4
int sub_802C1D4()
{
    int v0; // r5

    return (*(&off_802C1E8 + *(v0 + 3)))();
}


// 0x802c1f0
signed int sub_802C1F0()
{
    int v0; // r5
    int v1; // r0
    signed int result; // r0

    v1 = 0;
    do
    {
        byte_2035320[v1] = v1;
        ++v1;
    }
    while ( v1 - 42 < 0 );
    sub_8000C72(byte_2035320, 42, 42);
    *(v0 + 11) = 0;
    result = 4;
    *(v0 + 3) = 4;
    return result;
}


// 0x802c218
signed int sub_802C218()
{
    int v0; // r5
    signed int result; // r0
    int v2; // [sp+4h] [bp-74h]

    sub_802C59C(&v2);
    sub_802C4B6(14, 10, &v2, 7);
    *(v0 + 2) = 4;
    result = 30;
    *(v0 + 11) = 30;
    return result;
}


// 0x802c280
int sub_802C280()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + 3) )
    {
        result = *(v0 + 11) - 1;
        *(v0 + 11) = result;
        if ( !result )
        {
            if ( sub_800AB3A(0, 10) )
            {
                *(v0 + 1) = 12;
                *(v0 + 2) = 0;
                JUMPOUT(&loc_802C4B2);
            }
            *(v0 + 1) = 16;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        result = dword_2036824 | dword_203682C;
        if ( result & 9 )
        {
            *(v0 + 11) = 20;
            result = 4;
            *(v0 + 3) = 4;
        }
    }
    return result;
}


// 0x802c2d0
int sub_802C2D0()
{
    int v0; // r5
    int result; // r0
    int v2; // r0

    if ( *(v0 + 2) == 1 )
    {
        call_sub_3005EBA(29, 2, 3, 0);
        result = chatbox_mask_eFlags2009F38(128);
        if ( !result )
        {
            *(v0 + 1) = 16;
            result = 0;
            *(v0 + 2) = 0;
        }
    }
    else
    {
        result = *(v0 + 6) + 2;
        *(v0 + 6) = result;
        if ( result >= 30 )
        {
            v2 = sub_800AB3A(0, 10);
            chatbox_runScript(TextScriptYouGotNewVirusData, v2);
            result = 1;
            *(v0 + 2) = 1;
        }
    }
    return result;
}


// 0x802c328
int sub_802C328()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    if ( !*(v0 + 3) )
    {
        engine_setScreeneffect(12, 16);
        *(v0 + 3) = 4;
    }
    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x802c348
int sub_802C348()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(v0 + 5) = 0;
    return result;
}


// 0x802c34e
int __fastcall sub_802C34E(int a1)
{
    int v1; // r10
    int v2; // r4
    int v3; // r0
    char *v4; // r0
    int v5; // r0
    char *v6; // r0

    v2 = a1 + 12 * *(*(v1 + oToolkit_S2034880_Ptr) + 13);
    ZeroFillByByte(&dword_20364C0, 32);
    LOBYTE(dword_20364C4) = *v2;
    byte_20364C8 = *(v2 + 1);
    byte_20364CD = *(v2 + 3);
    dword_20364DC = *(v2 + 4);
    unk_20364D4 = *(v2 + 8);
    eStruct200A008_setUnk04(unk_20364D4);
    eStruct200A008_setUnk06(word_20364D6);
    BYTE2(dword_20364C4) = -30;
    CopyByEightWords(*(&off_802C434 + dword_20364C4), &unk_2034B30, 0x360u);
    (loc_8000AC8)(
        *(&off_802C3FC + 3 * dword_20364C4),
        *(&off_802C3FC + 3 * dword_20364C4 + 1),
        *(&off_802C3FC + 3 * dword_20364C4 + 2));
    (loc_8000AC8)(dword_8732814, &unk_3001A80, &off_5D + 3);
    (loc_8000AC8)(dword_8732874, 100701184, dword_5E0);
    v3 = getPETNaviSelect();
    v4 = sub_8028164(v3);
    (loc_8000AC8)(v4, 100745216, 128);
    v5 = getPETNaviSelect();
    v6 = sub_8028172(v5);
    return (loc_8000AC8)(v6, byte_30016B0, 32);
}


// 0x802c460
void sub_802C460()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    signed int v3; // r0
    int v4; // r0
    int v5; // r1
    int v6; // r2

    v1 = *(v0 + 6);
    v2 = *(v0 + 7);
    if ( v1 != v2 )
    {
        if ( v1 <= v2 )
            v3 = v1 + 24;
        else
            v3 = *(v0 + 7);
        v4 = sub_802C490(v3);
        if ( v6 )
            call_sub_3005EBA(v4, v5, 3, 0);
    }
}


// 0x802c490
signed int __fastcall sub_802C490(signed int result)
{
    if ( result <= 29 && result < 0 )
        result = 0;
    return result;
}


// 0x802c4b6
int __fastcall sub_802C4B6(int a1, int a2, _WORD *a3, int a4)
{
    int v4; // r4
    int v5; // r0
    _WORD *v6; // r7
    char *v7; // r5
    int v8; // r1
    int result; // r0

    v5 = 2 * (a1 + 24 * a2);
    v6 = (&unk_2034B30 + v5);
    v7 = &unk_2034B30 + v5;
    v8 = 0;
    do
    {
        result = 0;
        do
        {
            *v6 = *a3;
            ++v6;
            ++a3;
            ++result;
        }
        while ( result != a4 );
        v7 += 48;
        v6 = v7;
        ++v8;
    }
    while ( v8 != v4 );
    return result;
}


// 0x802c4e8
int __fastcall sub_802C4E8(signed int a1, int a2)
{
    int result; // r0
    int v3; // r3
    unsigned int v4; // ST00_4
    int v5; // ST04_4
    int v6; // [sp+0h] [bp-10h]
    __int16 v7; // [sp+4h] [bp-Ch]
    __int16 v8; // [sp+6h] [bp-Ah]

    v6 = a2;
    result = sub_8000D84(a1);
    if ( result > 612761 )
        result = 612761;
    v3 = 0;
    do
    {
        v7 = (&loc_A0 | ((v6 + 9) << 12)) + 2 * (result & 0xF);
        v8 = v7 + 1;
        v4 = result;
        v5 = v3;
        sub_802C4B6(byte_802C538[v3], 4, &v7, 1);
        result = v4 >> 4;
        v3 = v5 + 1;
    }
    while ( v5 - 4 < 0 );
    return result;
}


// 0x802c54c
signed int __fastcall sub_802C54C(unsigned int a1)
{
    unsigned int v1; // r1

    if ( a1 == 0xFFFF )
        return 255;
    v1 = a1 >> 14;
    if ( !(a1 >> 14) )
        return 0;
    if ( v1 == 1 )
        return 1;
    if ( v1 == 2 )
        return 2;
    return 3;
}


// 0x802c588
_WORD *__fastcall sub_802C588(_WORD *result)
{
    signed int v1; // r1
    signed int v2; // r2

    v1 = 49640;
    v2 = 42;
    do
    {
        *result = v1++;
        ++result;
        --v2;
    }
    while ( v2 );
    return result;
}


// 0x802c59c
_WORD *__fastcall sub_802C59C(_WORD *result)
{
    signed int v1; // r2

    v1 = 42;
    do
    {
        *result = -28474;
        ++result;
        --v1;
    }
    while ( v1 );
    return result;
}


// 0x802c5b0
int __fastcall __noreturn sub_802C5B0(int a1)
{
    Toolkit *tk; // r10

    *(tk->unk_200A220 + 2) = a1;
    renderTextGfx_8045F8C(&TextScriptBattleDialog8736D74, 5, byte_2035320, 100711040);
    return sub_802C4B6(2, 12, byte_802C6C4, 10);
}


// 0x802c5e6
int __fastcall __noreturn sub_802C5E6(int a1)
{
    int v1; // r10
    int v2; // ST00_4
    signed int v3; // r0

    if ( a1 )
    {
        v2 = a1;
        v3 = sub_8000C00(a1);
        sub_8000C5C(v3);
        *(*(v1 + oToolkit_Unk200a220_Ptr) + 8) = v2;
        renderTextGfx_8045F8C(&TextScriptBattleDialog8736D74, 6, &unk_20354E0, 100711488);
    }
    renderTextGfx_8045F8C(&TextScriptBattleDialog8736D74, 1, byte_2035320, 100711040);
    return sub_802C4B6(2, 12, byte_802C6C4, 10);
}


// 0x802c646
int __fastcall __noreturn sub_802C646(int a1)
{
    int v1; // r10
    int v2; // ST00_4
    signed int v3; // r0
    signed int v5; // [sp+4h] [bp-Ch]

    if ( a1 )
    {
        v2 = a1;
        v3 = sub_8000C00(a1);
        v5 = sub_8000C5C(v3);
        *(*(v1 + oToolkit_Unk200a220_Ptr) + 8) = v2;
        renderTextGfx_8045F8C(&TextScriptBattleDialog8736D74, 6, &unk_20354E0, 100711488);
    }
    else
    {
        v5 = 4;
    }
    renderTextGfx_8045F8C(&TextScriptBattleDialog8736D74, v5 + 6, byte_2035320, 100711040);
    return sub_802C4B6(2, 12, byte_802C6C4, 10);
}


// 0x802c6ec
int __fastcall sub_802C6EC(signed int a1)
{
    signed int v1; // r3
    int *v2; // r2
    unsigned __int8 v3; // vf
    int *v4; // r4
    signed int v5; // r6
    unsigned int v6; // r5
    signed int v7; // r0
    int v8; // r1
    int v10; // [sp+0h] [bp-2Ch]
    int v11; // [sp+8h] [bp-24h]
    int v12; // [sp+14h] [bp-18h]

    if ( a1 > 11 )
        a1 = 11;
    v12 = a1;
    v1 = 5;
    v2 = &v10;
    do
    {
        *v2 = -28492;
        *(v2 + 5) = -28491;
        v2 = (v2 + 2);
        v3 = __OFSUB__(v1--, 1);
    }
    while ( !(((v1 < 0) ^ v3) | (v1 == 0)) );
    v4 = &v11;
    v5 = 37024;
    if ( v12 < 11 )
    {
        v6 = sub_8000C00(v12);
        v7 = sub_8000C5C(v6);
    }
    else
    {
        v5 = 41120;
        v6 = 11;
        v7 = 1;
    }
    do
    {
        v8 = 2 * (v6 & 0xF) + v5;
        *v4 = v8;
        *(v4 + 5) = v8 + 1;
        v6 >>= 4;
        v4 = (v4 - 2);
        v3 = __OFSUB__(v7--, 1);
    }
    while ( !(((v7 < 0) ^ v3) | (v7 == 0)) );
    return sub_802C4B6(16, 6, &v10, 5);
}


// 0x802c75c
int __fastcall __noreturn sub_802C75C(unsigned int a1, int a2)
{
    int v2; // ST04_4
    _WORD *v4; // [sp+8h] [bp-7Ch]

    v2 = a2;
    renderTextGfx_8045F8C(*(&off_802C7C4 + (a1 >> 8)), a1, byte_2035320, 100711040);
    sub_802C4B6(2, 12, byte_802C7EC, 9);
    *v4 = -28188;
    v4[1] = -28187;
    sub_802C4B6(11, 12, v4, 1);
    return renderTextGfx_8045F8C(TextScript86EF71C, v2, &unk_2035520, 100711552);
}


// 0x802c810
int __fastcall sub_802C810(int a1)
{
    return sub_802C4B6(2, 14, off_802C82C[a1], 10);
}


// 0x802c85c
int sub_802C85C()
{
    int v0; // r5
    int v1; // r10
    int result; // r0

    result = *(v0 + 15);
    if ( *(v0 + 15) )
        result = sub_802C4B6(10, 4, off_802C888[(**(v1 + oToolkit_CurFramePtr) & 0x10u) >> 4], 4);
    return result;
}


// 0x802c8b0
int __fastcall sub_802C8B0(int a1, int a2)
{
    int v2; // ST08_4
    int v3; // r1
    int result; // r0
    int v9; // r2
    int v10; // [sp+0h] [bp-10h]

    v10 = a1;
    v2 = a2;
    GetPositiveSignedRNG2();
    v3 = v2;
    __asm { SVC         6 }
    for ( result = 0; ; ++result )
    {
        v9 = *(v10 + result);
        _VF = __OFSUB__(v3, v9);
        v3 -= v9;
        if ( (v3 < 0) ^ _VF )
            break;
    }
    return result;
}


// 0x802c8d4
int sub_802C8D4()
{
    int v0; // r5
    int result; // r0
    signed int v2; // r1

    result = 0;
    v2 = *(v0 + 12);
    if ( v2 < *(v0 + 13) )
    {
        result = *(v0 + 2 * v2 + 20);
        *(v0 + 12) = v2 + 1;
    }
    return result;
}


// 0x802c8ea
int *sub_802C8EA()
{
    int v0; // r10

    return &dword_2036820[2 * *(*(v0 + oToolkit_S2034880_Ptr) + 13)];
}


// 0x802c8fa
int __fastcall sub_802C8FA(int a1)
{
    int v1; // r10
    int v2; // r7
    char v3; // r0
    int v4; // r2
    u32 v5; // r0
    int v6; // r4
    int v7; // r5
    __int64 v8; // r0
    char v9; // r2

    v2 = a1;
    if ( sub_802D246() & 8 )
    {
        v4 = sub_800A832();
        v3 = 1;
        if ( v4 != 1 )
            v3 = 2;
    }
    else
    {
        v3 = 0;
    }
    *v2 = v3;
    *(v2 + 4) = sub_800A704();
    *(v2 + 1) = *(*(v1 + oToolkit_S2034880_Ptr) + 30);
    if ( sub_802D246() & 8 )
    {
        v8 = sub_80AAC8C(*(v2 + 1));
        *(v2 + 8) = v8;
    }
    else
    {
        v5 = sub_80103EC();
        v6 = *(v5 + 38);
        v7 = *(v5 + 22);
        v8 = sub_80AA8E0(
                     8 * (v7 ^ 1u) + 76 + *(v1 + oToolkit_S2034880_Ptr),
                     *(*(v1 + oToolkit_S2034880_Ptr) + (v7 ^ 1) + 8),
                     *(v2 + 1),
                     *(v5 + 36));
        *(v2 + 8) = v8;
        *(v2 + 10) = WORD2(v8);
    }
    v9 = 0;
    if ( v8 )
        v9 = 1;
    if ( HIDWORD(v8) )
        ++v9;
    *(v2 + 3) = v9;
    return v8;
}


// 0x802c97e
signed int sub_802C97E()
{
    int v0; // r5
    signed int v1; // r4
    int v2; // r0
    int v3; // r0
    int v4; // r0
    signed int result; // r0

    v1 = 0;
    v2 = sub_800A7E2();
    v3 = sub_802CA1E(v2);
    if ( v3 != 255 )
    {
        v1 = 2;
        v4 = 2 * v3;
        if ( *(v0 + 28) < *(&unk_20018C0 + v4) || (v1 = 1, *(v0 + 28) < *(&unk_2000260 + v4)) )
            *(v0 + 15) = 1;
        else
            v1 = 0;
    }
    result = v1;
    *(v0 + 14) = v1;
    return result;
}


// 0x802c9b8
int sub_802C9B8()
{
    int v0; // r4
    int v1; // r0
    int result; // r0

    v0 = sub_800A704();
    v1 = sub_800A7E2();
    result = sub_802CA1E(v1);
    if ( result != 255 )
    {
        result *= 2;
        if ( v0 >= *(&unk_20018C0 + result) )
        {
            if ( v0 < *(&unk_2000260 + result) )
                *(&unk_2000260 + result) = v0;
        }
        else
        {
            *(&unk_20018C0 + result) = v0;
            *(&unk_2000260 + result) = v0;
        }
    }
    return result;
}


// 0x802c9ea
char *__fastcall sub_802C9EA(int a1)
{
    int v1; // r10
    char *result; // r0
    _DWORD *v3; // r6
    _DWORD *v4; // r7

    result = sub_802D246();
    if ( result & 8 )
    {
        v3 = &unk_203526C;
        v4 = &unk_2035260;
        if ( *(*(v1 + oToolkit_S2034880_Ptr) + 16) )
        {
            v3 = &unk_2035260;
            v4 = &unk_203526C;
        }
        v4[2] = v3[2];
        result = *(v3 + 4);
        if ( result == 0xFFFF )
        {
            result = sub_80AABA4(*(v4 + 1));
            *(v4 + 4) = result;
        }
    }
    return result;
}


// 0x802ca1e
int __fastcall sub_802CA1E(int a1)
{
    int v1; // r10
    unsigned __int16 *v2; // r5
    signed int v3; // r4
    char *v4; // r0

    v2 = (*(v1 + oToolkit_S2034880_Ptr) + 8 * (a1 ^ 1) + 76);
    v3 = 0;
    do
    {
        v4 = sub_80182B4(*v2);
        if ( v4[1] == 1 && v4[2] < 20 && *v4 == 2 )
            return v4[2] - 1;
        ++v2;
        ++v3;
    }
    while ( v3 < 4 );
    return 255;
}


// 0x802ca5c
int sub_802CA5C()
{
    int v0; // r5

    return sub_8009FF8((((((8 * *(v0 + 6) + 13) & 0x1FF) << 16) + 21) & 0xFFFF00FF) + 0x40000000, 45568, 0, 0);
}


// 0x802ca82
int sub_802CA82()
{
    int v0; // r0
    signed int v1; // r0
    int v2; // r1
    int v3; // r2
    int result; // r0
    signed int v5; // r0
    int v6; // r1
    int v7; // r2

    v0 = eStruct200A008_getUnk04();
    if ( v0 )
    {
        v1 = sub_802C54C(v0);
        sub_802CAA6(v1, v2, v3);
    }
    result = eStruct200A008_getUnk06();
    if ( result )
    {
        v5 = sub_802C54C(result);
        result = sub_802CAA6(v5, v6, v7);
    }
    return result;
}


// 0x802caa6
void __fastcall sub_802CAA6(signed int result, int a2, int a3)
{
    int v3; // r0
    int v4; // [sp-Ch] [bp-10h]
    int v5; // [sp-8h] [bp-Ch]

    if ( result )
    {
        if ( result == 1 )
        {
            GiveZenny();
        }
        else if ( result != 2 && result == 3 )
        {
            GiveBugfrags();
        }
    }
    else
    {
        v4 = a2;
        v5 = a3;
        if ( sub_802D246() & 8 && (v3 = sub_800A832(), v3 != 1) )
        {
            if ( v3 == 2 )
                TakeChips(v4, v5, 1);
        }
        else
        {
            GiveChips(v4, v5, 1);
        }
    }
}


// 0x802cb38
int __fastcall sub_802CB38(int a1, int a2)
{
    int v2; // r5
    int v3; // r10
    signed int v4; // r2
    char v5; // r4
    int result; // r0

    *&eT3BattleObjects[6920] = a1;
    *&eT3BattleObjects[6922] = a2;
    v4 = 255;
    if ( a1 != a2 )
    {
        v4 = 0;
        if ( a1 >= a2 )
            v4 = 1;
    }
    *(v2 + 16) = v4;
    v5 = 3;
    if ( v4 != 255 )
    {
        v5 = 2;
        if ( *(*(v3 + oToolkit_S2034880_Ptr) + 13) != v4 )
            v5 = 1;
    }
    eT3BattleObjects[6919] = v5;
    result = 0;
    *&eT3BattleObjects[6912] = 0;
    *&eT3BattleObjects[6924] = 0;
    *&eT3BattleObjects[6926] = 0;
    return result;
}


// 0x802cb78
int sub_802CB78()
{
    eT3BattleObjects[6916] = 1;
    (*(&off_802CB94 + eT3BattleObjects[6912]))();
    return eT3BattleObjects[6916];
}


// 0x802cba4
signed int sub_802CBA4()
{
    _DWORD *v0; // r5
    signed int result; // r0

    result = 4;
    *v0 = 4;
    return result;
}


// 0x802cbac
int sub_802CBAC()
{
    int v0; // r5

    return (*(&off_802CBC0 + *(v0 + 1)))();
}


// 0x802cbcc
int sub_802CBCC()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    int v3; // r2
    int result; // r0

    v2 = *(v0 + 8);
    v3 = *(v0 + 10);
    if ( *(*(v1 + oToolkit_S2034880_Ptr) + 13) )
    {
        v3 = *(v0 + 8);
        v2 = *(v0 + 10);
    }
    (sub_801E792)(40, v2, v3);
    *(v0 + 1) = 4;
    result = 0;
    *(v0 + 2) = 0;
    return result;
}


// 0x802cbf2
int sub_802CBF2()
{
    int v0; // r5

    return (*(&off_802CC04 + *(v0 + 2)))();
}


// 0x802cc10
signed int sub_802CC10()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 5) = word_3C;
    result = 4;
    *(v0 + 2) = 4;
    return result;
}


// 0x802cc1a
signed int sub_802CC1A()
{
    int v0; // r5
    int v1; // r0
    int v6; // r0
    int v7; // r1

    v1 = *(v0 + 5) - 1;
    *(v0 + 5) = v1;
    if ( v1 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        *(v0 + 12) = 9998;
        __asm { SVC         6 }
        *(v0 + 14) = 9998;
    }
    else
    {
        *(v0 + 2) = 8;
    }
    v6 = *(v0 + 12);
    v7 = *(v0 + 14);
    return sub_801E914();
}


// 0x802cc50
signed int sub_802CC50()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r1
    bool v4; // zf
    signed int result; // r0

    if ( !*(v0 + 3) )
    {
        *(v0 + 5) = 120;
        *(v0 + 3) = 4;
    }
    v2 = *(v0 + 5) - 1;
    *(v0 + 5) = v2;
    if ( v2 )
    {
        if ( *(*(v1 + oToolkit_S2034880_Ptr) + 13) )
        {
            v3 = *(v0 + 8);
            v4 = *(v0 + 10) == 0;
        }
        result = sub_801E914();
    }
    else
    {
        *(v0 + 1) = 8;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x802cc8c
int sub_802CC8C()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 2) )
    {
        sub_801E780();
        *(v0 + 5) = 30;
        *(v0 + 2) = 4;
    }
    result = *(v0 + 5) - 1;
    *(v0 + 5) = result;
    if ( !result )
    {
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x802ccae
int sub_802CCAE()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(v0 + 4) = 0;
    return result;
}


// 0x802cdd0
int *sub_802CDD0()
{
    int v0; // r5
    int *result; // r0

    result = &dword_203CFB0;
    if ( *(v0 + 22) )
        result = &dword_203CFBC;
    if ( result[2] == v0 )
        result[2] = 0;
    return result;
}


// 0x802cde6
int *sub_802CDE6()
{
    int v0; // r5
    int *result; // r0

    result = &dword_203CFB0;
    if ( !*(v0 + 22) )
        result = &dword_203CFBC;
    if ( result[1] == v0 )
    {
        result[1] = 0;
        result[2] = 0;
    }
    return result;
}


// 0x802cdfe
int *sub_802CDFE()
{
    int *result; // r0

    dword_203CFB0 <<= 16;
    result = &dword_203CFBC;
    dword_203CFBC <<= 16;
    return result;
}


// 0x802ce10
unsigned int __fastcall sub_802CE10(unsigned int result)
{
    int v1; // r5
    int *v2; // r1

    v2 = &dword_203CFB0;
    if ( *(v1 + 22) )
        v2 = &dword_203CFBC;
    if ( v1 == v2[2] )
    {
        result += *(v2 + 1);
    }
    else if ( result > *v2 )
    {
        *v2 = result;
    }
    return result;
}


// 0x802ce30
BOOL sub_802CE30()
{
    int v0; // r5
    int *v1; // r0

    v1 = &dword_203CFB0;
    if ( !*(v0 + 22) )
        v1 = &dword_203CFBC;
    return v1[1] == v0 && v1[2];
}


// 0x802ce54
void __fastcall sub_802CE54(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(byte_2036720, 32);
}


// 0x802ce60
int __fastcall sub_802CE60(int a1)
{
    int v1; // r10
    char *v2; // r0
    int v3; // r1
    int v4; // r2

    v2 = &byte_2036720[16 * (a1 ^ *(*(v1 + oToolkit_S2034880_Ptr) + 13))];
    v3 = *(v2 + 1);
    v4 = *(v2 + 1);
    return *v2;
}


// 0x802ce78
int __fastcall sub_802CE78(int a1)
{
    char *v1; // r0
    int v2; // r3
    int v3; // r1
    int v4; // r2

    v1 = &byte_2036720[16 * a1];
    v2 = *(v1 + 2);
    v3 = *(v1 + 1);
    v4 = *(v1 + 1);
    return *v1;
}


// 0x802ce8a
int __fastcall sub_802CE8A(int result, __int16 a2, int a3, __int16 a4)
{
    int v4; // r4
    __int16 v5; // r5
    char *v6; // r3

    v5 = a4;
    v6 = &byte_2036720[16 * *(result + 22)];
    *v6 = a2;
    *(v6 + 1) = a3;
    *(v6 + 1) = v5;
    *(v6 + 2) = result;
    *(v6 + 3) = v4;
    return result;
}


// 0x802cea6
char *__fastcall sub_802CEA6(int a1)
{
    char *result; // r0
    int v2; // r1

    result = &byte_2036720[16 * a1];
    *result = 0;
    *(result + 2) = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
    v2 = *(result + 3);
    if ( v2 )
    {
        *(v2 + 5) = 1;
        *(result + 3) = 0;
    }
    return result;
}


// 0x802cec8
char *sub_802CEC8()
{
    char *result; // r0

    if ( *byte_2036728 && !*(*byte_2036728 + 36) )
        sub_802CEA6(*(*byte_2036728 + 22));
    result = dword_2036738;
    if ( dword_2036738 )
    {
        if ( !*(dword_2036738 + 36) )
            result = sub_802CEA6(*(dword_2036738 + 22));
    }
    return result;
}


// 0x802cef4
unsigned int sub_802CEF4()
{
    int v0; // r5
    int v1; // r4
    int v2; // r1
    int v3; // r2
    int v4; // r6
    int v5; // r0
    signed int v6; // r7
    bool v7; // zf
    unsigned int result; // r0
    char *v9; // r0
    _WORD *v10; // r1
    unsigned int v11; // [sp-4h] [bp-14h]

    v1 = *(v0 + 84);
    if ( sub_801032C() & 0x200000 && !*(v1 + 132) )
    {
        v2 = *(v1 + 138);
        v3 = *(v1 + 130) | *(v1 + 134) | *(v1 + 136) | v2;
        if ( v3 )
        {
            *(*(v0 + 88) + 208) = 1;
            PlaySoundEffect(110, v2, v3);
        }
        goto LABEL_22;
    }
    v4 = 10;
    v5 = sub_802CE78(*(v0 + 22));
    v6 = v5;
    if ( v5 != 187 && v5 != 343 )
    {
        v11 = v5;
        v7 = (sub_801032C() & &loc_800) == 0;
        result = v11;
        if ( v7 )
        {
            if ( v11 != 188 )
                return result;
            if ( sub_800FFFE() & &byte_400 )
                goto LABEL_22;
            result = *(v1 + 112);
            if ( !(result & &loc_2000) || result & 0x20000 )
                return result;
            sub_800FFE4(&byte_400);
LABEL_22:
            v10 = (v1 + 130);
            *v10 = 0;
            v10[1] = 0;
            v10[2] = 0;
            v10[3] = 0;
            v10[4] = 0;
            *(v1 + 142) = 0;
            *(v1 + 144) = 0;
            *(v1 + 146) = 0;
            *(v1 + 116) = 0;
            *(v1 + 15) = 0;
            *(v1 + 17) = 0;
            *(v1 + 164) = 0;
            *(v1 + 28) = 0;
            *(v1 + 42) = 0;
            *(v1 + 44) = 0;
            *(v1 + 112) &= 0xFFFFFFBF;
            result = *(v1 + 64) & 0xFFFCFE41;
            *(v1 + 64) = result;
            return result;
        }
        v6 = 187;
        v4 = 1;
    }
    if ( sub_800FFFE() & 0x8200 )
        goto LABEL_22;
    result = *(v1 + 112);
    if ( !(result & 0xFF800000) )
        return result;
    result = v1 + 130;
    if ( *(v1 + 130) + *(v1 + 132) + *(v1 + 134) + *(v1 + 136) + *(v1 + 138) >= v4 )
    {
        v9 = byte_200;
        if ( v6 != 187 )
            v9 = 0x8000;
        sub_800FFE4(v9);
        goto LABEL_22;
    }
    if ( v4 == 1 )
        goto LABEL_22;
    return result;
}


// 0x802cff8
int sub_802CFF8()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2

    result = *(*(v0 + 84) + 118);
    if ( result & 0x40 )
    {
        result = sub_802CE78(*(v0 + 22));
        if ( result )
        {
            sub_802CEA6(*(v0 + 22));
            result = PlaySoundEffect(142, v2, v3);
        }
    }
    return result;
}


// 0x802d064
char *__fastcall sub_802D064(int a1)
{
    return &byte_203C4A0[32 * a1];
}


// 0x802d070
signed int __fastcall sub_802D070(int a1)
{
    char *v1; // ST00_4
    signed int result; // r0

    v1 = sub_802D064(a1);
    ZeroFillByWord(v1, 32);
    v1[16] = 0;
    result = 100;
    v1[13] = 100;
    v1[15] = 100;
    return result;
}


// 0x802d08c
char *__fastcall sub_802D08C(int a1)
{
    char *result; // r0

    result = sub_802D064(a1);
    result[16] = 0;
    result[13] = 100;
    result[15] = 100;
    return result;
}


// 0x802d09e
int __fastcall sub_802D09E(int a1, int a2, int a3)
{
    int v3; // r5
    char v4; // t1
    char v5; // t1

    v4 = *(v3 + 18);
    v5 = *(v3 + 19);
    return sub_800AB46(a1, 7, a3);
}


// 0x802d0ba
char *__fastcall sub_802D0BA(int a1)
{
    char *result; // r0

    result = sub_802D064(a1);
    *result = 0;
    *(result + 1) = 0;
    return result;
}


// 0x802d0c8
int __fastcall sub_802D0C8(int a1)
{
    char *v1; // r7
    int v2; // r0
    u32 v3; // r0
    int v8; // r0
    int result; // r0
    int v10; // [sp+0h] [bp-1Ch]

    v1 = sub_802D064(a1);
    v2 = sub_800A7E2();
    v3 = sub_80103BC(v2);
    __asm { SVC         6 }
    v1[12] = 100 * *(v3 + 36) + *(v3 + 38) - 1;
    v8 = sub_800A7E2();
    result = object_getEnemyByNameRange(&v10, 383, 383, v8 ^ 1);
    if ( result )
    {
        result = 100 * *(v10 + 36) + *(v10 + 38) - 1;
        __asm { SVC         6 }
    }
    v1[14] = result;
    return result;
}


// 0x802d118
int __fastcall sub_802D118(int a1)
{
    char *v1; // r7
    signed int v2; // r0
    char v3; // r1
    int result; // r0

    v1 = sub_802D064(a1);
    v2 = sub_800A856();
    v3 = 0;
    if ( v2 )
    {
        v3 = 1;
        if ( v2 != 2 )
        {
            v3 = 2;
            if ( v2 != 1 )
                v3 = 0;
        }
    }
    v1[17] = v3;
    v1[16] = v3;
    result = sub_800A70C();
    *(v1 + 10) = result;
    return result;
}


// 0x802d144
char *__fastcall sub_802D144(int a1)
{
    char *result; // r0

    result = sub_802D064(a1);
    result[8] = 0;
    return result;
}


// 0x802d150
int sub_802D150()
{
    int result; // r0

    result = 0;
    dword_2006740 = 0;
    return result;
}


// 0x802d158
int __fastcall sub_802D158(int result)
{
    dword_2006740 = result;
    return result;
}


// 0x802d15e
int sub_802D15E()
{
    return dword_2006740;
}


// 0x802d164
int __fastcall sub_802D164(int result)
{
    int v1; // r2

    v1 = dword_2006740 + result;
    if ( dword_2006740 + result > 999999 )
        v1 = 999999;
    dword_2006740 = v1;
    return result;
}


// 0x802d176
int __fastcall sub_802D176(int result)
{
    int v1; // r2

    v1 = dword_2006740 - result;
    if ( dword_2006740 < result )
        v1 = 0;
    dword_2006740 = v1;
    return result;
}


// 0x802d184
int __fastcall sub_802D184(int a1)
{
    int v1; // r4
    signed int v2; // r7

    v1 = a1;
    v2 = 0;
    if ( sub_800A832() == 1 )
        v2 = 10;
    if ( sub_800AB3A(v1, 9) )
        v2 += 10;
    return v2 + 2 * sub_800AB3A(v1, 7);
}


// 0x802d1b4
int __fastcall sub_802D1B4(int a1)
{
    return sub_802D064(a1)[13];
}


// 0x802d1be
int __fastcall sub_802D1BE(int a1)
{
    return sub_802D064(a1)[15];
}


// 0x802d1c8
int __fastcall sub_802D1C8(int a1)
{
    int v1; // r10
    int *v2; // r4
    signed int v3; // r5
    int result; // r0

    v2 = (*(v1 + oToolkit_S2034880_Ptr) + 12 * a1 + 132);
    v3 = 0;
    do
    {
        result = *v2;
        if ( *v2 )
            result = sub_800EC3C();
        ++v2;
        ++v3;
    }
    while ( v3 < 3 );
    return result;
}


// 0x802d1ec
char *sub_802D1EC()
{
    int v0; // r0
    char *result; // r0
    int v2; // r1

    v0 = sub_800A7E2();
    result = sub_802D064(v0);
    v2 = result[18];
    if ( result[18] )
    {
        if ( v2 == 2 )
        {
            result[13] = 0;
        }
        else if ( v2 == 1 )
        {
            result[15] = 0;
        }
    }
    return result;
}


// 0x802d234
// () -> u8
int sub_802D234()
{
    int v0; // r10

    return sub_802D242(*(*(v0 + oToolkit_S2034880_Ptr) + 60));
}


// 0x802d242
// () -> u8
int __fastcall sub_802D242(int a1)
{
    return *(a1 + 3);
}


// 0x802d246
// () -> u32
int sub_802D246()
{
    int v0; // r10

    return sub_802D254(*(*(v0 + oToolkit_S2034880_Ptr) + 60));
}


// 0x802d254
// () -> u32
int __fastcall sub_802D254(int a1)
{
    return *(a1 + 8);
}


// 0x802d258
int sub_802D258()
{
    int v0; // r10

    return sub_802D266(*(*(v0 + oToolkit_S2034880_Ptr) + 60));
}


// 0x802d266
int __fastcall sub_802D266(int a1)
{
    return *(a1 + 1);
}


// 0x802d26a
int sub_802D26A()
{
    int v0; // r10

    return sub_802D278(*(*(v0 + oToolkit_S2034880_Ptr) + 60));
}


// 0x802d278
int __fastcall sub_802D278(int a1)
{
    return *(a1 + 6);
}


// 0x802d27c
// () -> BattleSettings*
BattleSettings *getBattleSettings_200AF60()
{
    return &BattleSettings_200AF60;
}


// 0x802d280
// (BattleSettings *src) -> void
void __fastcall copyBattleSettingsTo_200AF60(int a1)
{
    CopyWords(a1, &BattleSettings_200AF60, 0x10u);
}


// 0x802d28c
// (int mask) -> void
int __fastcall battleSettings_setFlags_unkSettings(int result)
{
    BattleSettings_200AF60.UnknownOptionalSettings |= result;
    return result;
}


// 0x802d296
// (int mask) -> void
int __fastcall battlteSettings_clearFlags_UnkSettings(int result)
{
    BattleSettings_200AF60.UnknownOptionalSettings &= ~result;
    return result;
}


// 0x802d2a0
// () -> u32
u32 battleSettings_getUnkOptSettings()
{
    return BattleSettings_200AF60.UnknownOptionalSettings;
}


// 0x802d2a6
// (u32 unkOptSettings) -> void
u32 __fastcall battleSettings_setUnkOptSettings(u32 result)
{
    BattleSettings_200AF60.UnknownOptionalSettings = result;
    return result;
}


// 0x802d2ac
// (u8 background) -> void
int __fastcall battleSettings_setBackground(int result)
{
    BattleSettings_200AF60.background = result;
    return result;
}


// 0x802d2b2
// () -> BattleSettings*
BattleSettings *battleSettings_802D2B2()
{
    int v0; // r10
    u32 v1; // r4
    char *v2; // r6
    char *v3; // r0

    v1 = battleSettings_getUnkOptSettings();
    v2 = &byte_203CA50[2 * (*(*(v0 + oToolkit_S2034880_Ptr) + 26) - 1)];
    v3 = getBattleSettingsFromList1(*v2);
    copyBattleSettingsTo_200AF60(v3);
    battleSettings_setUnkOptSettings(v1);
    battleSettings_setBackground(v2[1]);
    return getBattleSettings_200AF60();
}


// 0x802d310
_DWORD *sub_802D310()
{
    int v0; // r5
    _DWORD *result; // r0

    result = (*(v0 + 88) + 240);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    return result;
}


// 0x802d322
int __usercall sub_802D322@<R0>(Battle *obj@<R5>)
{
    u8 *v1; // r6
    u8 *v2; // r7

    v1 = obj->ai->pad_F0;
    v2 = obj->ai->attackVarRegion;
    if ( !obj->ai->pad_F0[8] )
    {
        obj->ai->pad_F0[8] = 1;
        *v1 = 8;
    }
    return (*(&off_802D34C + *v1))();
}


// 0x802d358
signed int __usercall sub_802D358@<R0>(Battle *obj@<R5>)
{
    _WORD *v1; // r6
    int v2; // r0
    int v3; // r1
    int v4; // r0
    signed int result; // r0

    if ( v1[2] <= 3 )
    {
        v2 = sub_80E164A();
        sub_80E7486(v2, v3, obj->Alliance);
    }
    if ( sub_8010004() == 0xFFFF || (v4 = sub_800FFE4(4), sub_800FB54(obj, v4) == 0xFFFF) )
    {
        *v1 = 4;
        result = 0;
    }
    else
    {
        v1[2] = 0;
        *v1 = 8;
        result = 1;
    }
    return result;
}


// 0x802d3a8
signed int __fastcall sub_802D3A8(int a1, int a2, int a3)
{
    int v3; // r5
    _WORD *v4; // r6

    *v4 = 8;
    if ( v4[2] <= 2 && !sub_810971A(*(v3 + 19), a2, a3) )
        return 0;
    v4[2] = 0;
    return 2;
}


// 0x802d3ca
void __noreturn sub_802D3CA()
{
    int v0; // r0
    int v1; // r2
    char *v2; // r3
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    v0 = object_getFlag();
    v2 = byte_802D410;
    if ( v0 & 0x10 )
        v2 = byte_802D420;
    sub_81096FA(v0, 16, v1, v2);
    sub_802D430(v3, v4, v5, v6);
}


// 0x802d430
__int64 __fastcall __noreturn sub_802D430(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r1
    int v6; // r2
    int v7; // r4
    int v8; // r0
    int *v9; // r7
    int v10; // r4
    int v11; // r6
    int v12; // r0
    __int64 v13; // r0
    unsigned int v18; // r0
    __int64 v19; // ST00_8
    int v21; // [sp+0h] [bp-30h]
    int v22; // [sp+4h] [bp-2Ch]
    int v23; // [sp+8h] [bp-28h]

    v21 = a3;
    v22 = a4;
    object_reservePanel(*(v4 + 18), *(v4 + 19));
    v7 = 1;
    do
    {
        v8 = sub_810971A(v7, v5, v6);
        if ( v8 )
            sub_8015CC0(v8, v5, v21, v22);
        ++v7;
    }
    while ( v7 <= 3 );
    v9 = &v23;
    v10 = 1;
    v11 = 0;
    do
    {
        if ( sub_810971A(v10, v5, v6) )
        {
            v12 = object_getPanelsInRowFiltered(v10, v5, v21, v22);
            v11 += v12;
            v9 = (v9 + v12);
        }
        ++v10;
    }
    while ( v10 <= 3 );
    if ( v11 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        v18 = *(&v23 + v11);
        HIDWORD(v13) = v18 >> 4;
        LODWORD(v13) = v13 & 7;
    }
    else
    {
        LODWORD(v13) = *(v4 + 18);
        HIDWORD(v13) = *(v4 + 19);
    }
    v19 = v13;
    object_removePanelReserve(*(v4 + 18), *(v4 + 19));
    return v19;
}


// 0x802d4c6
int sub_802D4C6()
{
    int v0; // r5
    int v1; // r7

    v1 = *(v0 + 88);
    return (*(&off_802D4E4 + *(*(v0 + 88) + 240)))();
}


// 0x802d4f0
signed int __fastcall sub_802D4F0(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r7
    int v6; // r0
    int v7; // r1
    int v8; // r0
    _BYTE *v9; // r4

    if ( !*(v4 + 8) )
    {
        *(v4 + 8) = 1;
        PlaySoundEffect(386, a2, a3);
    }
    if ( *(v4 + 4) <= 3 )
    {
        v6 = sub_80E164A();
        sub_80E7486(v6, v7, *(v3 + 22));
    }
    *(v4 + 4) = 0;
    v8 = sub_802D5A8(0);
    *(v5 + 20) = v8;
    v9 = getChip8021DA8(v8);
    *(v5 + 3) = v9[12];
    *(v5 + 12) = *(v9 + 4);
    *(v5 + 8) = *(v9 + 13);
    *(v5 + 10) = v9[10] | 0x80;
    if ( *(v5 + 20) == 339 )
        *(v5 + 8) = *(getChip8021DA8(82) + 13);
    (object_setAttack5)(v9[11]);
    *(v5 + 29) = v9[15];
    *v4 = 8;
    return 1;
}


// 0x802d588
signed int __fastcall __noreturn sub_802D588(int a1, int a2, int a3)
{
    int v3; // r5
    _WORD *v4; // r6
    int v5; // r0

    if ( sub_810971A(*(v3 + 19), a2, a3) )
    {
        v5 = v4[3] - 1;
        v4[3] = v5;
        if ( v5 )
            return 2;
    }
    *v4 = 8;
    return 0;
}


// 0x802d5a8
int __fastcall sub_802D5A8(int a1)
{
    int v1; // r0
    int v6; // r1
    int v7; // r6
    char *v8; // r4
    signed int v9; // r1

    v1 = sub_8013790(a1, 62);
    __asm { SVC         6 }
    v6 = 0;
    if ( v1 > 1 )
    {
        v6 = v1 - 1;
        if ( v1 - 1 > 9 )
            v6 = 9;
    }
    v7 = v6;
    v8 = &byte_802D5E4[6 * v6];
    GetPositiveSignedRNG2();
    v9 = 3;
    if ( v7 == 9 )
        v9 = 6;
    __asm { SVC         6 }
    return *&v8[2 * v9];
}


// 0x802d638
void __fastcall sub_802D638()
{
    ZeroFillByWord(byte_2000070, 32);
}


// 0x802d644
int __fastcall sub_802D644(int result)
{
    int v1; // r2

    v1 = byte_2000070[result] + 1;
    if ( v1 <= 255 )
        byte_2000070[result] = v1;
    return result;
}


// 0x802d652
int __fastcall sub_802D652(int a1)
{
    return byte_2000070[a1];
}


// 0x802d658
int __fastcall sub_802D658(int result, unsigned __int8 a2)
{
    byte_2000070[result] = a2;
    return result;
}


// 0x802d65e
int __fastcall sub_802D65E(int a1)
{
    int v1; // r4
    int result; // r0
    char v3; // zf

    v1 = a1;
    result = TestEventFlagFromImmediate(1, 216);
    if ( !v3 )
    {
        result = TestEventFlag(v1 + 406);
        if ( v3 )
        {
            if ( v1 != 13 && v1 != 10 )
                result = sub_800AB2E(0, 10, v1);
        }
    }
    return result;
}


// 0x802d6a0
signed int sub_802D6A0()
{
    signed int result; // r0

    dword_203C970 = 0;
    dword_203C978 = sub_80103BC(0);
    dword_203C97C = sub_80103BC(1);
    result = 1;
    byte_203C974[0] = 1;
    return result;
}


// 0x802d6c4
int sub_802D6C4()
{
    if ( HIBYTE(dword_203C970) )
    {
        if ( !sub_802DD4A(dword_203C978) && !sub_802DD4A(dword_203C97C) )
            byte_203C974[0] = 0;
    }
    else
    {
        if ( sub_802DD1E() )
            sub_802DD10(dword_203C978);
        if ( sub_802DD1E() )
            sub_802DD10(dword_203C97C);
        HIBYTE(dword_203C970) = 4;
    }
    return byte_203C974[0];
}


// 0x802d714
void sub_802D714()
{
    unsigned __int8 *v0; // r7

    (*(&off_802D72C + *v0))();
    sub_801BCD0();
}


// 0x802d738
int sub_802D738()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf
    int result; // r0

    if ( !*(v1 + 1) )
    {
        v2 = v0->futurePanelX;
        v0->panelX = v2;
        v3 = v0->futurePanelY;
        v0->panelY = v3;
        object_removePanelReserve(v2, v3);
        object_setCoordinatesFromPanels(v0);
        v0->z = 0;
        object_updateCollisionPanels(v0);
        v0->directionFlip = sub_800F46C();
        sub_800F2C6();
        v4 = object_clearFlag(7233);
        object_clearFlag2(v4);
        object_setAnimation(v0);
        v0->parent = 0;
        v0->ai->unk_68 = 0;
        object_setCollisionRegion(1);
        *(v1 + 16) = 4;
        *(v1 + 1) = 4;
    }
    v5 = *(v1 + 16);
    v6 = __OFSUB__(v5, 1);
    result = v5 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v6) | (result == 0) )
    {
        result = 4;
        *v1 = 4;
    }
    return result;
}


// 0x802d7a0
signed int __fastcall __noreturn sub_802D7A0(int a1)
{
    Battle *v1; // r5
    _WORD *v2; // r7
    int v3; // r0
    int v4; // r0
    int v5; // ST00_4
    int v6; // r0
    char *v7; // r0
    AI *v8; // r4
    int v9; // ST00_4
    int v10; // r0
    char *v11; // r0
    int v12; // r0
    int v13; // r0
    int v14; // ST00_4
    char *v15; // r0
    int v16; // r1
    int v17; // r2
    int v18; // r0
    int v19; // r0
    int v20; // r0
    int v21; // r0
    int v22; // r0
    int v23; // r0
    int v24; // ST00_4
    u16 v25; // r0
    u16 v26; // r1
    int v27; // r0
    signed int result; // r0

    v3 = sub_8013774(a1, 44);
    sub_8011384(v3);
    sub_8011020();
    sub_80143A6();
    v4 = GetBattleNaviStats2034A60Byte(v1->Alliance, 41);
    v5 = v4;
    v6 = sub_8013774(v4, 41);
    if ( v6 == v5 )
    {
        sub_8013764(v6, 64, v1->HP);
        v7 = sub_8013682(v1->Alliance);
        CopyWords(v7, &eBattleNaviStats2034A60 + 100 * v1->Alliance, 0x64u);
    }
    v8 = v1->ai;
    v9 = GetBattleNaviStats2034A60Byte(v1->Alliance, 41);
    v10 = sub_802DCCC(v1->Alliance);
    if ( v10 == v9 )
    {
        v11 = sub_8013682(v1->Alliance);
        CopyWords(&eBattleNaviStats2034A60 + 100 * v1->Alliance, v11, 0x64u);
    }
    else
    {
        init_8013B64(v1->Alliance, v10);
    }
    sub_801393A();
    v12 = sub_80136CC(v1->Alliance, 41);
    v8->AI_index = v12;
    v12 += 416;
    v1->nameID = v12;
    v13 = sub_8013774(v12, 44);
    v14 = v13;
    v15 = sub_8013774(v13, 41);
    sub_800FC9E(v15, v14);
    sprite_load(v1, 128, v16, v17);
    sprite_loadAnimationData(v1);
    sprite_hasShadow();
    v1->currAnimation = 3;
    v1->currAnimation = 3;
    sprite_setAnimation(v1, 3u);
    sprite_loadAnimationData(v1);
    v18 = sub_801002C();
    sprite_setPallete(v18);
    v19 = object_getFlip(v1);
    v20 = sprite_setFlip(v1, v19);
    if ( sub_8013774(v20, 41) )
    {
        sub_8010DD0();
    }
    else
    {
        v21 = sub_8013774(0, 44);
        sub_8011268(v21);
    }
    sub_800F378();
    sub_801A264();
    v22 = sub_80143A6();
    v23 = sub_8013774(v22, 41);
    if ( v23 )
    {
        v25 = sub_802DD70(v23, v1->Alliance);
        v26 = v25;
    }
    else
    {
        v24 = sub_8013790(0, 66);
        v25 = sub_8013790(v24, 64);
        v26 = v24;
    }
    v1->HP = v25;
    v1->maxHP = v26;
    sub_801E0D0(1);
    sub_801DBD4();
    sub_800EA0E();
    v27 = object_clearFlag(GameEntryPoint);
    sub_801086C(v27);
    sub_8014216();
    sub_800EB08();
    result = 8;
    *v2 = 8;
    return result;
}


// 0x802d8f0
void sub_802D8F0()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( !*(v1 + 1) )
    {
        *(v1 + 16) = 20;
        *(v1 + 1) = 4;
    }
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2--, 1);
    *(v1 + 16) = v2;
    if ( (v2 < 0) ^ v3 )
    {
        sub_801E0D0(0);
        sub_8010312(0x4000);
        sub_801031C(&loc_1800);
        sub_800FFEE(34304);
        object_exitAttackState(v0);
    }
}


// 0x802d926
void sub_802D926()
{
    unsigned __int8 *v0; // r7

    (*(&off_802D944 + *v0))();
    if ( !v0[3] )
        sub_801BCD0();
}


// 0x802d950
int sub_802D950()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf
    int result; // r0

    if ( !*(v1 + 1) )
    {
        v2 = v0->futurePanelX;
        v0->panelX = v2;
        v3 = v0->futurePanelY;
        v0->panelY = v3;
        object_removePanelReserve(v2, v3);
        object_setCoordinatesFromPanels(v0);
        v0->z = 0;
        object_updateCollisionPanels(v0);
        v0->directionFlip = sub_800F46C();
        sub_800F2C6();
        v4 = object_clearFlag(7233);
        object_clearFlag2(v4);
        object_setAnimation(v0);
        v0->parent = 0;
        v0->ai->unk_68 = 0;
        *&v0->ai->pad_58[4] = 0;
        *(v1 + 16) = 4;
        *(v1 + 1) = 4;
    }
    v5 = *(v1 + 16);
    v6 = __OFSUB__(v5, 1);
    result = v5 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v6) | (result == 0) )
    {
        result = 4;
        *v1 = 4;
    }
    return result;
}


// 0x802d9b0
signed int __noreturn sub_802D9B0()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    char *v2; // r0
    AI *v3; // r4
    int v4; // r0
    int v5; // r0
    int v6; // ST00_4
    char *v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r0
    int v11; // r0
    int v12; // r0
    int v13; // r0
    int v14; // r0
    int v15; // r0
    int v16; // r0
    int v17; // r0
    signed int result; // r0

    sub_8011020();
    v2 = sub_8013682(v0->Alliance);
    CopyWords(&eBattleNaviStats2034A60 + 100 * v0->Alliance, v2, 0x64u);
    v3 = v0->ai;
    v4 = sub_80136CC(v0->Alliance, 41);
    v3->AI_index = v4;
    v4 += 416;
    v0->nameID = v4;
    v5 = sub_8013774(v4, 44);
    v6 = v5;
    v7 = sub_8013774(v5, 41);
    sub_800FC9E(v7, v6);
    sprite_load(v0, 128, v8, v9);
    sprite_loadAnimationData(v0);
    sprite_hasShadow();
    v0->currAnimation = 3;
    v0->currAnimation = 3;
    sprite_setAnimation(v0, 3u);
    sprite_loadAnimationData(v0);
    v10 = sub_801002C();
    sprite_setPallete(v10);
    v11 = object_getFlip(v0);
    sprite_setFlip(v0, v11);
    v12 = sub_8010DD0();
    v13 = sub_8013774(v12, 44);
    sub_8011268(v13);
    sub_801A264();
    v14 = sub_80144C0();
    v15 = (loc_80143B4)(v14);
    v16 = sub_8013790(v15, 64);
    v0->HP = v16;
    v0->maxHP = sub_8013790(v16, 66);
    sub_801E0D0(1);
    sub_801DBD4();
    sub_80108FC(v0->Alliance);
    sub_800EA0E();
    v17 = object_clearFlag(GameEntryPoint);
    sub_801086C(v17);
    sub_8014216();
    sub_800EB08();
    result = 8;
    *v1 = 8;
    return result;
}


// 0x802da78
void sub_802DA78()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( !*(v1 + 1) )
    {
        *(v1 + 16) = 20;
        *(v1 + 1) = 4;
    }
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2--, 1);
    *(v1 + 16) = v2;
    if ( (v2 < 0) ^ v3 )
    {
        sub_801E0D0(0);
        sub_801031C(26624);
        sub_800FFEE(67143168);
        object_exitAttackState(v0);
    }
}


// 0x802daa8
int sub_802DAA8()
{
    unsigned __int8 *v0; // r7

    return (*(&off_802DABC + *v0))();
}


// 0x802dacc
int sub_802DACC()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r0
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int v9; // r1
    int v10; // r2
    int v11; // r0
    unsigned __int8 v12; // vf
    int result; // r0

    sprite_forceWhitePallete();
    if ( !*(v1 + 1) )
    {
        battle_setFlags(4);
        v2 = v0->futurePanelX;
        v0->panelX = v2;
        v3 = v0->futurePanelY;
        v0->panelY = v3;
        object_removePanelReserve(v2, v3);
        object_setCoordinatesFromPanels(v0);
        v0->z = 0;
        object_updateCollisionPanels(v0);
        v0->directionFlip = sub_800F46C();
        sub_800F2C6();
        object_reservePanel(v0->futurePanelX, v0->futurePanelY);
        object_clearCollisionRegion();
        v4 = object_clearFlag(7233);
        object_clearFlag2(v4);
        object_setAnimation(v0);
        SpawnT4BattleObjectWithId0(v0, &v0->vx, v0->x, v0->y, v0->z);
        SpawnT4BattleObjectWithId0(v0, v5, v6, v7, v8);
        v0->parent = 0;
        v0->ai->unk_68 = 0;
        v9 = v0->ai;
        *(v9 + 92) = 0;
        PlaySoundEffect(108, v9, v10);
        *(v1 + 16) = 10;
        *(v1 + 1) = 4;
    }
    v11 = *(v1 + 16);
    v12 = __OFSUB__(v11, 1);
    result = v11 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v12) | (result == 0) )
    {
        result = 4;
        *v1 = 4;
    }
    return result;
}


// 0x802db58
int sub_802DB58()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    sprite_forceWhitePallete();
    if ( !*(v1 + 1) )
    {
        object_setAnimation(v0);
        *(v1 + 16) = 4;
        *(v1 + 1) = 4;
    }
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x802db80
signed int __noreturn sub_802DB80()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    char *v2; // r0
    AI *v3; // r4
    int v4; // r0
    int v5; // r0
    int v6; // ST00_4
    char *v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r0
    int v11; // r0
    int v12; // r0
    int v13; // r0
    int v14; // r0
    int v15; // r0
    int v16; // r0
    int v17; // r0
    signed int result; // r0

    sub_8011020();
    v2 = sub_8013682(v0->Alliance);
    CopyWords(&eBattleNaviStats2034A60 + 100 * v0->Alliance, v2, 0x64u);
    v3 = v0->ai;
    v4 = sub_80136CC(v0->Alliance, 41);
    v3->AI_index = v4;
    v4 += 416;
    v0->nameID = v4;
    v5 = sub_8013774(v4, 44);
    v6 = v5;
    v7 = sub_8013774(v5, 41);
    sub_800FC9E(v7, v6);
    sprite_load(v0, 128, v8, v9);
    sprite_loadAnimationData(v0);
    sprite_hasShadow();
    v0->currAnimation = 3;
    v0->currAnimation = 3;
    sprite_setAnimation(v0, 3u);
    sprite_loadAnimationData(v0);
    v10 = sub_801002C();
    sprite_setPallete(v10);
    v11 = object_getFlip(v0);
    sprite_setFlip(v0, v11);
    v12 = sub_8010DD0();
    v13 = sub_8013774(v12, 44);
    sub_8011268(v13);
    sub_801A264();
    v14 = sub_80144C0();
    v15 = (loc_80143B4)(v14);
    v16 = sub_8013790(v15, 64);
    v0->HP = v16;
    v0->maxHP = sub_8013790(v16, 66);
    sub_801E0D0(1);
    sub_801DBD4();
    sub_80108FC(v0->Alliance);
    sub_800EA0E();
    sub_801A66C();
    object_removePanelReserve(v0->futurePanelX, v0->futurePanelY);
    v17 = object_clearFlag(GameEntryPoint);
    sub_801086C(v17);
    sub_8014216();
    sub_800EB08();
    if ( battle_networkInvert(v0->Alliance) )
        sub_801DC7C(0, 0);
    result = 12;
    *v1 = 12;
    return result;
}


// 0x802dc66
void sub_802DC66()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( !*(v1 + 1) )
    {
        object_setCollisionRegion(1);
        *(v1 + 16) = 4;
        *(v1 + 1) = 4;
    }
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2--, 1);
    *(v1 + 16) = v2;
    if ( ((v2 < 0) ^ v3) | (v2 == 0) )
    {
        sub_801E0D0(0);
        sub_801031C(26624);
        sub_800FFEE(201360896);
        battle_clearFlags(4);
        object_exitAttackState(v0);
    }
}


// 0x802dccc
int __fastcall sub_802DCCC(int a1)
{
    return byte_203A980[16 * a1 + 4];
}


// 0x802dcd8
int __fastcall sub_802DCD8(int result)
{
    LOBYTE(dword_203CED4) = result;
    return result;
}


// 0x802dcde
int __fastcall sub_802DCDE(int result)
{
    if ( result )
        result = sub_800FFE4(&LCDControl);
    return result;
}


// 0x802dcec
signed int __fastcall sub_802DCEC(int a1)
{
    signed int v1; // r7

    v1 = 0;
    if ( a1 )
    {
        v1 = 1;
        if ( !(sub_801032C() & &loc_1000) && !(sub_800FFFE() & &LCDControl) )
            v1 = 0;
    }
    return v1;
}


// 0x802dd10
int __fastcall sub_802DD10(int result)
{
    if ( result )
        result = sub_800FFE4(GameEntryPoint);
    return result;
}


// 0x802dd1e
int sub_802DD1E()
{
    return 0;
}


// 0x802dd2a
signed int __fastcall sub_802DD2A(int a1)
{
    signed int v1; // r7

    v1 = 0;
    if ( sub_8013774(a1, 41) && sub_801032C() & 0x4000 )
        v1 = 1;
    return v1;
}


// 0x802dd4a
signed int __fastcall sub_802DD4A(signed int result)
{
    int v1; // r0
    signed int v2; // r2

    if ( result )
    {
        v1 = sub_801032C();
        v2 = 0;
        if ( v1 & &loc_2000 )
            v2 = 1;
        result = v2;
    }
    return result;
}


// 0x802dd62
int __fastcall sub_802DD62(int result)
{
    int v1; // r1

    v1 = *(result + 88);
    if ( *(v1 + 24) )
        --*(v1 + 24);
    return result;
}


// 0x802dd70
int __fastcall sub_802DD70(int a1, int a2)
{
    return *&byte_802DD88[14 * a1 + 2 * a2];
}


// 0x802de5c
int __fastcall sub_802DE5C(int a1)
{
    int result; // r0
    char v2; // zf

    result = sub_802E09A();
    if ( !v2 )
    {
        sub_802E2C4(0);
        result = sub_802E2C4(1);
    }
    return result;
}


// 0x802de74
char *sub_802DE74()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r7
    int v3; // r0
    _WORD *v4; // r2
    signed int v5; // r3
    char *result; // r0

    v1 = sub_8010018(*(v0 + 22));
    v2 = v1;
    v3 = v1[1];
    if ( v3 )
    {
        v2[1] = v3 - 1;
        v4 = v2 + 2;
        v5 = 0;
        do
        {
            *v4 = v4[1];
            v4[6] = v4[7];
            v4[12] = v4[13];
            ++v4;
            ++v5;
        }
        while ( v5 < 5 );
    }
    result = sub_802E070(*(v0 + 22));
    result[83] = 1;
    return result;
}


// 0x802deae
signed int sub_802DEAE()
{
    int v0; // r5
    signed int v1; // r4

    v1 = 0xFFFF;
    if ( !*(*(v0 + 88) + 25) && !(object_getFlag() & &loc_1000) )
        v1 = *(sub_8010018(*(v0 + 22)) + 1);
    return v1;
}


// 0x802ded8
int sub_802DED8()
{
    int v0; // r5
    char *v1; // r6
    unsigned __int16 *v2; // r0
    int v3; // r2
    int v4; // r1
    int result; // r0
    int v6; // r7
    char v7; // r0
    int v8; // r7
    int v9; // r7
    signed __int64 v10; // ST00_8
    int v11; // [sp-4h] [bp-14h]

    v1 = sub_802E070(*(v0 + 22));
    v2 = sub_8010018(*(v0 + 22));
    v3 = v2[13];
    v4 = v2[7];
    result = v2[1];
    if ( result != 0xFFFF )
    {
        v11 = result;
        v6 = v3;
        v7 = *(getChip8021DA8(result) + 9);
        if ( v7 & 2 )
        {
            v8 = v6 + *(v1 + 27);
            if ( v7 & 4 )
                v9 = v8 + *(v1 + 28);
        }
        v10 = __PAIR__(sub_80109A4(v11, *(v0 + 22)), v11);
        getChip8021DA8(v11);
        result = v10;
    }
    return result;
}


// 0x802df34
int __fastcall sub_802DF34(int a1, __int16 a2, __int16 a3)
{
    int v3; // r5
    __int16 v4; // ST00_2
    __int16 v5; // ST04_2
    int v6; // r7
    _WORD *v7; // r0
    _WORD *v8; // r4
    int v9; // r0
    int result; // r0

    v4 = a2;
    v5 = a3;
    v6 = *(v3 + 88) + 160;
    *(*(v3 + 88) + 180) = a1;
    v7 = getChip8021DA8(a1);
    v8 = v7;
    *(v6 + 8) = v4;
    *(v6 + 6) = v5;
    *(v6 + 10) = *(v7 + 10);
    *(v6 + 2) = v7[2];
    *(v6 + 12) = *(v7 + 4);
    *(v6 + 3) = *(v7 + 12);
    *(v6 + 5) = *(v7 + 20);
    *v6 = 0;
    *(v6 + 4) = 0;
    v9 = *(v7 + 11);
    object_setAttack0();
    sub_801DACC(64);
    sub_8021D14(*(v3 + 22), *(v6 + 20));
    result = *(v8 + 9);
    if ( result & 4 )
        result = sub_800AB46(*(v3 + 22), 6, 1);
    return result;
}


// 0x802df8c
int __fastcall sub_802DF8C(int a1, __int16 a2, __int16 a3)
{
    int v3; // r5
    __int16 v4; // ST00_2
    __int16 v5; // ST04_2
    int v6; // r7
    _WORD *v7; // r0
    int v8; // r0

    v4 = a2;
    v5 = a3;
    v6 = *(v3 + 88) + 160;
    *(*(v3 + 88) + 180) = a1;
    v7 = getChip8021DA8(a1);
    *(v6 + 8) = v4;
    *(v6 + 6) = v5;
    *(v6 + 10) = *(v7 + 10);
    *(v6 + 2) = v7[2];
    *(v6 + 12) = *(v7 + 4);
    *(v6 + 3) = *(v7 + 12);
    *(v6 + 5) = *(v7 + 20);
    *v6 = 0;
    *(v6 + 4) = 0;
    v8 = *(v7 + 11);
    object_setAttack0();
    return sub_801DACC(64);
}


// 0x802dfc8
char *sub_802DFC8()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r4
    int v3; // r0
    char *result; // r0
    char v5; // zf

    v1 = sub_802E070(*(v0 + 22));
    v2 = v1;
    ZeroFillByWord(v1, 464);
    result = sub_800A8F8(v3);
    if ( !v5 )
    {
        *v2 = 1;
        v2[11] = -1;
        v2[16] = 1;
        v2[17] = *(v0 + 18);
        v2[14] = 3;
        result = sub_802E07C(*(v0 + 22));
    }
    return result;
}


// 0x802dffc
int __fastcall sub_802DFFC(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&unk_2036120, 928);
    dword_2036334 = &eT1BattleObjects[16];
    return sub_802E544();
}


// 0x802e014
int __fastcall sub_802E014(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&unk_2036120, 96);
    ZeroFillByWord(&unk_20362F0, 96);
    dword_2036334 = &eT1BattleObjects[16];
    return sub_802E544();
}


// 0x802e032
int __fastcall sub_802E032(int a1, int a2)
{
    int v2; // ST00_4
    char *v3; // r0
    char *v4; // r2
    int result; // r0

    v2 = a2;
    v3 = sub_802E070(a1);
    v4 = v3;
    result = *(v3 + 20) + v2;
    if ( result > 0x4000 )
        result = 0x4000;
    *(v4 + 20) = result;
    return result;
}


// 0x802e04e
int __fastcall __spoils<R0,R2,R3,R12> sub_802E04E(int a1)
{
    char *v1; // r0
    char *v2; // r2
    int v3; // r0
    unsigned __int8 v4; // vf
    int result; // r0
    int v6; // [sp+0h] [bp-8h]

    v1 = sub_802E070(a1);
    v2 = v1;
    v3 = *(v1 + 20);
    v4 = __OFSUB__(v3, v6);
    result = v3 - v6;
    if ( (result < 0) ^ v4 )
        result = 0;
    *(v2 + 20) = result;
    return result;
}


// 0x802e066
int __fastcall sub_802E066(int a1)
{
    return *(sub_802E070(a1) + 20);
}


// 0x802e070
char *__fastcall sub_802E070(int a1)
{
    return &unk_2036120 + 464 * a1;
}


// 0x802e07c
char *__fastcall sub_802E07C(int a1)
{
    char *result; // r0

    result = sub_802E070(a1);
    result[3] = 0;
    *(result + 21) = 0;
    result[80] = 0;
    *(result + 6) = -1;
    *(result + 7) = -1;
    *(result + 8) = -1;
    result[2] = -76;
    return result;
}


// 0x802e09a
int sub_802E09A()
{
    return battle_getFlags() & 0x40;
}


// 0x802e0a6
int sub_802E0A6()
{
    int v0; // r0

    GetPositiveSignedRNG2();
    return byte_802E0C4[sub_8013774(v0, 41)] + (v0 & 7);
}


// 0x802e0d4
int __fastcall sub_802E0D4(int a1, char a2, __int16 a3)
{
    int v3; // r5
    int v4; // r7
    char v5; // ST00_1
    char v6; // ST04_1
    __int16 v7; // ST08_2

    v4 = *(v3 + 88) + 160;
    v5 = a1;
    v6 = a2;
    v7 = a3;
    sub_8013774(a1, 41);
    *(v4 + 22) = v5;
    *(v4 + 23) = v6;
    *(v4 + 24) = v7;
    *(v4 + 3) = 2;
    (object_setAttack4)(16);
    return sub_80EB04C();
}


// 0x802e112
int sub_802E112()
{
    int result; // r0
    char v1; // zf

    result = sub_802D234();
    if ( result != 1 && result != 7 && result != 9 && result != 6 )
    {
        result = sub_802D246();
        if ( !(result & 0x200000) )
        {
            if ( notZero_eByte200AD04()
                || (result = sub_802D246(), result & 8) && (result = TestEventFlagFromImmediate(23, 34), !v1) )
            {
                result = battle_setFlags(64);
            }
        }
    }
    return result;
}


// 0x802e156
int sub_802E156()
{
    int v0; // r10
    int result; // r0
    char v2; // zf
    char *v3; // r0

    result = sub_802E09A();
    if ( !v2 )
    {
        v3 = sub_802E070(*(*(v0 + oToolkit_S2034880_Ptr) + 13));
        result = sub_801DFA2(*(v3 + 20));
    }
    return result;
}


// 0x802e1b4
int __fastcall sub_802E1B4(int result)
{
    if ( result > &word_138 + 1 )
        result = 0;
    return result;
}


// 0x802e1be
char *__fastcall sub_802E1BE(int a1)
{
    char v1; // r4
    int v2; // r5
    int *v3; // r7
    char *result; // r0

    v3 = &byte_1E0;
    if ( sub_800A8F8(a1) )
        v3 = dword_168;
    result = sub_802E070(*(v2 + 22));
    result[11] = v1;
    *(result + 23) = v3;
    return result;
}


// 0x802e1d8
char *sub_802E1D8()
{
    int v0; // r5
    char *result; // r0

    result = sub_802E070(*(v0 + 22));
    if ( *(result + 24) )
        --*(result + 24);
    return result;
}


// 0x802e1ec
int sub_802E1EC()
{
    int v0; // r5
    char *v1; // r0

    v1 = sub_802E070(*(v0 + 22));
    v1[64] = 0;
    v1[65] = 0;
    return sub_800FFEE(32505856);
}


// 0x802e240
void __fastcall sub_802E240(int a1)
{
    CopyHalfwords(off_802E260[a1], &unk_2008170, 60);
}


// 0x802e252
char (*__fastcall sub_802E252(int a1))[60]
{
    return off_802E260[a1];
}


// 0x802e284
char (*__fastcall sub_802E284(int a1))[60]
{
    return off_802E290[a1];
}


// 0x802e2c4
int __fastcall sub_802E2C4(int a1)
{
    int v1; // r10
    int v2; // r6
    char *v3; // r7
    __int16 v4; // r0
    int v5; // r1
    char v6; // zf
    int v7; // r0
    signed int v8; // r4
    _BYTE *v9; // r0
    int v10; // r2
    signed int v11; // r0
    int v12; // r1
    int v13; // r0
    int v14; // r0
    int v15; // r0
    char v16; // r1
    char v17; // r2
    int v19; // [sp-4h] [bp-1Ch]
    int v20; // [sp+0h] [bp-18h]

    v2 = a1;
    v3 = sub_802E070(a1);
    if ( *v3 )
    {
        v4 = sub_802E558(v2);
        v20 = v5;
        *(v3 + 18) = v4 & 0x1FF;
        if ( battle_isPaused() )
            goto LABEL_28;
        battle_isTimeStop();
        if ( !v6 )
            goto LABEL_28;
        v7 = sub_802E69C();
        sub_802E032(v2, v7);
        if ( battle_isBattleOver() )
            goto LABEL_28;
        v8 = 1;
        if ( !v3[80] )
            v8 = 0;
        if ( !*(v3 + 18) || *(v3 + 18) == *(v3 + 19) )
            goto LABEL_28;
        v9 = getChip8021DA8(*(v3 + 18));
        if ( !v8 )
        {
            if ( v9[9] & 0x20 )
                v11 = 1;
            else
                v11 = v9[7];
            v10 = *&byte_802E430[2 * v11];
            if ( *(v3 + 20) >= v10 )
            {
                if ( v20 || (v12 = *(v3 + 18), sub_802E82A(), v13 != 255) )
                {
                    if ( sub_802E62A(v2, *(v3 + 18), v20) )
                        goto LABEL_28;
                }
            }
            goto LABEL_18;
        }
        if ( *(v3 + 20) < &loc_1500 )
        {
LABEL_18:
            if ( *(*(v1 + oToolkit_S2034880_Ptr) + 13) == v2 )
            {
                PlaySoundEffect(105, 1, v10);
                sub_801EC44();
            }
            goto LABEL_28;
        }
        if ( !v20 )
        {
            v14 = sub_802E830(v2, *(v3 + 18));
            if ( v14 == 255 )
            {
LABEL_28:
                *(v3 + 19) = *(v3 + 18);
                return sub_802E790(v2);
            }
            v19 = v14;
            if ( !battle_networkInvert(v2) )
                sub_801E2BA(v19);
        }
        sub_802E5FC(v2, *(v3 + 18), v20);
        battle_networkInvert(v2);
        sub_8029514();
        *(v3 + 21) = v15;
        v3[4] = v16;
        v3[5] = v17;
        if ( v15 )
        {
            sub_802E62A(v2, *(v3 + 21), v20);
            sub_802E07C(v2);
            *(v3 + 20) = 0;
        }
        else
        {
            v3[2] = -76;
        }
        goto LABEL_28;
    }
    return sub_802E790(v2);
}


// 0x802e440
int __fastcall sub_802E440(int a1)
{
    return *sub_802E490(a1);
}


// 0x802e44a
int __fastcall sub_802E44A(int a1)
{
    return *(sub_802E490(a1) + 1);
}


// 0x802e454
int __fastcall sub_802E454(int a1)
{
    return *(sub_802E490(a1) + 2);
}


// 0x802e45e
void __fastcall sub_802E45E(int a1, _WORD *a2)
{
    _WORD *v2; // r4
    char *v3; // r5
    int v4; // r3

    v2 = a2;
    v3 = sub_802E490(a1);
    HalfwordFill((v3 + 6), 0x3Cu, 0xFFFF, v4);
    *v3 = *v2;
    *(v3 + 1) = v2[1];
    *(v3 + 2) = v2[2];
    CopyHalfwords(v2 + 3, v3 + 3, 54);
}


// 0x802e490
char *__fastcall sub_802E490(int a1)
{
    return &byte_203CA80[66 * a1];
}


// 0x802e4a0
int sub_802E4A0()
{
    Battle *v0; // r5

    v0->ai->unk_1E = 0;
    sub_8012EA8(v0);
    return sub_800FFEE(0x40000);
}


// 0x802e4b8
signed int sub_802E4B8()
{
    int v0; // r5
    char *v1; // r7

    v1 = sub_802E070(*(v0 + 22));
    if ( v1[80] )
        return 9;
    if ( v1[84] )
        return 13;
    return 1;
}


// 0x802e4e4
unsigned int sub_802E4E4()
{
    int v0; // r5
    char *v1; // r7
    unsigned int result; // r0

    v1 = sub_802E070(*(v0 + 22));
    if ( sub_800FFFE() & &timer_2000000 )
    {
        sub_800FFEE(&timer_2000000);
        v1[80] = 1;
        sub_802E1EC();
    }
    result = sub_800FFFE();
    if ( result & 0x20000000 )
    {
        sub_800FFEE(0x20000000);
        v1[84] = 1;
        sub_802E1EC();
        *(v1 + 24) = &byte_1E0;
        object_setInvulnerableTime(0xFFFF);
        result = sub_802D310();
    }
    return result;
}


// 0x802e544
int sub_802E544()
{
    return ZeroFillByByte(&unk_20000A0, 368);
}


// 0x802e558
int __fastcall sub_802E558(int a1)
{
    int v1; // r7
    int v2; // r0
    int result; // r0
    int v4; // r0

    sub_802E070(a1);
    v2 = *(v1 + 44);
    if ( v2 == 0xFFFF || (result = sub_802E1B4(v2)) == 0 )
    {
        v4 = *(v1 + 76);
        result = 0;
    }
    return result;
}


// 0x802e588
signed int __fastcall sub_802E588(int a1, int a2, int a3)
{
    char *v3; // r7
    _WORD *v4; // r4
    signed int v5; // r0
    char *v6; // r5
    unsigned __int16 *v8; // [sp+0h] [bp-20h]
    int v9; // [sp+4h] [bp-1Ch]
    int v10; // [sp+8h] [bp-18h]

    v8 = a1;
    v9 = a2;
    v10 = a3;
    v3 = sub_8010018(a1);
    sub_802E070(v8);
    v4 = getChip8021DA8(v9);
    v5 = v3[1];
    if ( v5 >= 5 )
        return 0;
    v6 = &v3[2 * v5 + 2];
    *v6 = v9;
    *(v6 + 6) = v4[13];
    *(v6 + 12) = 0;
    *(v6 + 18) = 0;
    ++v3[1];
    sub_802E674(v8, v10);
    if ( !v8 && !v10 )
    {
        SetEventFlag(&loc_2020 + v9);
        sub_80070BC();
    }
    return 1;
}


// 0x802e5fc
signed int __fastcall sub_802E5FC(int a1, __int16 a2, int a3)
{
    unsigned __int16 *v3; // r4
    __int16 v4; // r5
    int v5; // r6
    char *v6; // r0
    signed int v7; // r1

    v3 = a1;
    v4 = a2;
    v5 = a3;
    v6 = sub_802E070(a1);
    v7 = v6[3];
    if ( v7 >= 5 )
        return 0;
    *&v6[2 * v7 + 24] = v4;
    ++v6[3];
    sub_802E674(v3, v5);
    return 1;
}


// 0x802e62a
signed int __fastcall sub_802E62A(int a1, int a2, int a3)
{
    int v4; // [sp+0h] [bp-20h]
    int v5; // [sp+4h] [bp-1Ch]
    int v6; // [sp+8h] [bp-18h]

    v4 = a1;
    v5 = a2;
    v6 = a3;
    *(sub_802E070(a1) + 26) = a2;
    if ( !v4 && !v6 )
    {
        SetEventFlag(&loc_2020 + v5);
        sub_80070BC();
    }
    sub_80103BC(v4);
    sub_800FFE4(0x10000);
    return 1;
}


// 0x802e674
unsigned __int16 *__fastcall sub_802E674(unsigned __int16 *result, int a2)
{
    int v2; // r7
    char *v3; // r0

    v2 = a2;
    if ( a2 )
    {
        v3 = sub_802E490(result);
        *&v3[2 * (v2 - 1)] = *(v3 + 3);
        *(v3 + 3) = -1;
        result = sub_8000EB6(v3 + 3, 30);
    }
    return result;
}


// 0x802e69c
unsigned int sub_802E69C()
{
    int v0; // r7
    unsigned int result; // r0
    __int16 *v2; // r1
    signed int v3; // r3

    result = *(v0 + 80);
    if ( !*(v0 + 80) && *(v0 + 6) != 1 )
    {
        v2 = &word_802E6DC;
        v3 = 0;
        do
        {
            if ( *(v0 + 40) < *v2 )
                break;
            v2 += 2;
            ++v3;
        }
        while ( v3 < 3 );
        result = v2[1];
        if ( *(v0 + 58) )
            result *= 2;
        if ( *(v0 + 60) )
            result = (result + 1) >> 1;
    }
    return result;
}


// 0x802e6ec
int __fastcall sub_802E6EC(int a1)
{
    char *v1; // r7
    int v2; // r3
    int v3; // r3
    int v4; // r0
    int v5; // r0
    int v6; // r0
    unsigned __int16 *i; // r5
    int result; // r0
    int v9; // r3
    int *v10; // r6
    _WORD *v11; // r5
    unsigned __int8 v12; // vf
    int v13; // [sp-4h] [bp-50h]
    int v14; // [sp+0h] [bp-4Ch]

    v1 = sub_802E490(a1);
    HalfwordFill(&v14, 0x3Cu, 0xFFFF, v2);
    v3 = 0;
    v4 = *v1;
    if ( v4 != 0xFFFF )
    {
        LOWORD(v14) = *v1;
        v3 = 1;
    }
    v5 = *(v1 + 1);
    if ( v5 != 0xFFFF )
        *(&v14 + v3++) = v5;
    v6 = *(v1 + 2);
    if ( v6 != 0xFFFF )
        *(&v14 + v3++) = v6;
    for ( i = (v1 + 6); ; ++i )
    {
        result = *i;
        if ( result == 0xFFFF )
            break;
        *(&v14 + v3++) = result;
    }
    if ( v3 )
    {
        v13 = v3;
        sub_8000CDA(&v14, v3, v3);
        v9 = v13;
        v10 = &v14;
        if ( *v1 != 0xFFFF )
        {
            *v1 = v14;
            v10 = (&v14 + 2);
            v9 = v13 - 1;
        }
        if ( *(v1 + 1) != 0xFFFF )
        {
            *(v1 + 1) = *v10;
            v10 = (v10 + 2);
            --v9;
        }
        if ( *(v1 + 2) != 0xFFFF )
        {
            *(v1 + 2) = *v10;
            v10 = (v10 + 2);
            --v9;
        }
        v11 = v1 + 6;
        while ( 1 )
        {
            result = *v10;
            v12 = __OFSUB__(v9--, 1);
            if ( (v9 < 0) ^ v12 )
                break;
            *v11 = result;
            ++v11;
            v10 = (v10 + 2);
        }
    }
    return result;
}


// 0x802e790
signed int __fastcall sub_802E790(int a1)
{
    int v1; // r6
    unsigned __int8 *v2; // r7
    signed int result; // r0
    int v4; // r0

    v1 = a1;
    v2 = sub_802E070(a1);
    result = battle_isBattleOver();
    if ( !result )
    {
        result = v2[76];
        if ( v2[76] )
        {
            if ( !v2[77] )
            {
                if ( !battle_networkInvert(v1) )
                {
                    sub_801BED6(0x80000);
                    sub_801BEC2(0x80000);
                }
                if ( !battle_networkInvert(v1) )
                    sub_801E408();
                v2[78] = 50;
                v2[77] = 1;
            }
            v4 = v2[78];
            _VF = __OFSUB__(v4, 1);
            result = v4 - 1;
            v2[78] = result;
            if ( (result < 0) ^ _VF )
            {
                if ( !battle_networkInvert(v1) )
                {
                    sub_801BECC(0x80000);
                    sub_801BEB8(0x80000);
                }
                result = 0;
                v2[76] = 0;
            }
            else
            {
                __asm { SVC         6 }
            }
        }
    }
    return result;
}


// 0x802e82a
void sub_802E82A()
{
    JUMPOUT(&loc_802E834);
}


// 0x802e830
int __fastcall sub_802E830(int a1, int a2)
{
    int v2; // r4
    int v3; // r5
    unsigned __int8 *v4; // r6
    char *v5; // r0
    int v6; // r2
    int v7; // r1
    int v8; // r2

    v2 = a1;
    v3 = a2;
    v4 = getChip8021DA8(a2);
    v5 = sub_802E070(v2) + 96;
    v6 = v5[v3];
    v7 = v4[30];
    if ( v6 >= v7 )
        return 255;
    v8 = v6 + 1;
    v5[v3] = v8;
    return v7 - v8;
}


// 0x802e860
int __fastcall sub_802E860(int a1)
{
    return sub_802E070(a1)[76];
}


// 0x802e86c
BOOL __fastcall sub_802E86C(int a1)
{
    int v1; // r4

    v1 = a1;
    return sub_802E440(a1) != 0xFFFF || sub_802E44A(v1) != 0xFFFF || sub_802E454(v1) != 0xFFFF;
}


// 0x802e896
int sub_802E896()
{
    return ZeroFillByByte(&unk_2000370, 368);
}


// 0x802e8a4
signed int __fastcall sub_802E8A4(int a1)
{
    unsigned __int8 *v1; // r0
    signed int v2; // r6
    int v3; // r7
    signed int v4; // r2
    int v5; // r1
    unsigned __int8 *v6; // ST00_4
    int v7; // ST04_4
    signed int v8; // ST08_4
    unsigned int v9; // r0
    unsigned __int8 v10; // cf

    v1 = &byte_203A0A0[368 * a1];
    v2 = 0xFFFF;
    v3 = 0;
    v4 = 0;
    do
    {
        v5 = v1[v4];
        if ( v1[v4] )
        {
            if ( v5 >= v3 )
            {
                if ( v5 > v3 )
                    goto LABEL_12;
                v6 = v1;
                v7 = v1[v4];
                v8 = v4;
                GetRNG1();
                v10 = __CFSHR__(v9, v9 >> 28);
                v1 = v6;
                v5 = v7;
                v4 = v8;
                if ( v10 )
                {
LABEL_12:
                    v2 = v4;
                    v3 = v5;
                }
            }
        }
        ++v4;
    }
    while ( v4 < 368 );
    return v2;
}


// 0x802e8de
int __fastcall sub_802E8DE(int a1)
{
    int v1; // r4
    signed int v2; // r5
    char *v3; // r0

    v1 = 0;
    v2 = 0;
    v3 = sub_802E490(a1);
    do
    {
        if ( *v3 != 0xFFFF )
            ++v1;
        v3 += 2;
        ++v2;
    }
    while ( v2 < 33 );
    return v1;
}


// 0x802e8fe
signed int __fastcall sub_802E8FE(int a1, int a2, int a3)
{
    int v3; // r6
    int v4; // r7
    int v5; // r5
    int v6; // r4
    char v7; // zf

    v3 = a1;
    v4 = a2;
    v5 = a3;
    v6 = object_getAllianceDirection(a3);
    do
    {
        v3 += v6;
        object_isValidPanel(v3, v4);
        if ( v7 )
            return 0;
    }
    while ( !(object_getPanelParameters(v3, v4) & *(&off_802E93C + v5)) );
    return 1;
}


// 0x802e95c
int __fastcall sub_802E95C(int a1)
{
    int v1; // r5
    int v2; // r7
    int v3; // r4
    int v4; // r6
    void **v5; // r1
    int v6; // r0
    int v7; // ST00_4
    int v8; // r0
    int v9; // r1
    int v11; // [sp-4h] [bp-14h]

    v2 = a1;
    v3 = sub_8013774(a1, 41);
    v4 = *(v1 + 88) + 160;
    if ( sub_800A8F8(v3) )
        v5 = off_802EA08;
    else
        v5 = off_802E9D8;
    v6 = (*(v5[v2] + v3))();
    v11 = v6;
    v7 = v6;
    v8 = sub_8013774(v6, 60);
    v9 = *&(*off_802E9E8[v2])[2 * v3];
    if ( v7 == 2 )
    {
        if ( v8 )
            LOWORD(v9) = 10;
    }
    else
    {
        v9 <<= v8;
    }
    *(v4 + 8) = v9;
    if ( (*off_802E9F8[v2])[v3] & 0x80 )
        sub_802E04E(*(v1 + 22));
    else
        sub_802E032(*(v1 + 22), (*off_802E9F8[v2])[v3] << 8);
    return v11;
}


// 0x802eb5c
int sub_802EB5C()
{
    return 0;
}


// 0x802eb60
signed int sub_802EB60()
{
    int v0; // r6

    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 5) = 0;
    *(v0 + 12) = 0;
    object_setAttack0();
    return 2;
}


// 0x802eb80
signed int sub_802EB80()
{
    int v0; // r6

    *(v0 + 2) = 0;
    *(v0 + 3) = 3;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 0;
    *(v0 + 12) = &dword_23C;
    object_setAttack0();
    return 1;
}


// 0x802eba8
signed int sub_802EBA8()
{
    int v0; // r6

    *(v0 + 2) = 0;
    *(v0 + 3) = 3;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 0;
    *(v0 + 12) = &dword_13C;
    object_setAttack0();
    return 1;
}


// 0x802ebd0
__int64 __fastcall sub_802EBD0(int a1)
{
    int v1; // r5
    char *v2; // r0
    int v3; // r6

    v2 = sub_8013754(a1, 2, 4);
    v3 = *(v1 + 88) + 160;
    return sub_802ECFE(v2);
}


// 0x802ebe4
__int64 sub_802EBE4()
{
    int v0; // r5
    int v1; // r0
    char *v2; // r0
    int v3; // r6

    v1 = GetBattleNaviStats203CB10Byte(*(v0 + 22), 2);
    v2 = sub_8013754(v1, 2, v1);
    v3 = *(v0 + 88) + 160;
    return sub_802ECFE(v2);
}


// 0x802ec00
int __fastcall sub_802EC00(int a1)
{
    int v1; // r5
    int v2; // r7
    int v3; // r4
    int v4; // r6

    v2 = a1;
    v3 = sub_8013774(a1, 41);
    sub_8013754(v3, 2, 4);
    v4 = *(v1 + 88);
    return (off_802EC2C[v2][v3])();
}


// 0x802ecfc
void nullsub_34()
{
    ;
}


// 0x802ecfe
__int64 __fastcall sub_802ECFE(int a1)
{
    int v1; // r6
    int v3; // r0
    int v4; // r0

    if ( sub_8013D5E(a1) )
        return sub_802ED68();
    *(v1 + 2) = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
    *(v1 + 6) = 0;
    *(v1 + 10) = 0;
    *(v1 + 5) = 0;
    *(v1 + 12) = 0;
    v3 = byte_802ED5C[sub_8013774(0, 41)];
    *(v1 + 8) = v3;
    v4 = sub_8013774(v3, 41);
    sub_802EEA2(byte_802ED50[v4]);
    object_setAttack0();
    return 0LL;
}


// 0x802ed68
__int64 sub_802ED68()
{
    int v0; // r6

    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 0;
    *(v0 + 12) = 0;
    object_setAttack0();
    return 0LL;
}


// 0x802ed8a
signed __int64 sub_802ED8A()
{
    int v0; // r6

    *(v0 + 2) = 0;
    *(v0 + 3) = 3;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 0;
    *(v0 + 12) = &dword_23C;
    sub_802EEA2(139);
    object_setAttack0();
    return 1LL;
}


// 0x802edbc
signed __int64 sub_802EDBC()
{
    int v0; // r6

    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 5) = 0;
    *(v0 + 12) = 0;
    *(v0 + 8) = 40;
    sub_802EEA2(10);
    object_setAttack0();
    return 1LL;
}


// 0x802ede8
void sub_802EDE8()
{
    ;
}


// 0x802edec
signed __int64 sub_802EDEC()
{
    int v0; // r6

    *(v0 + 8) = 140;
    *(v0 + 10) = 148;
    *(v0 + 12) = 0;
    *(v0 + 3) = 1;
    *(v0 + 4) = 1;
    object_setAttack0();
    sub_802EEA2(149);
    return 1LL;
}


// 0x802ee14
void sub_802EE14()
{
    ;
}


// 0x802ee18
int sub_802EE18()
{
    int v0; // r0

    GetPositiveSignedRNG2();
    return byte_802EE34[sub_8013774(v0, 41)] + (v0 & 7);
}


// 0x802ee40
int __fastcall sub_802EE40(int a1)
{
    int result; // r0

    if ( a1 == 3 )
        result = 0;
    else
        result = byte_802EE64[3 * sub_8013774(a1, 41) + a1];
    return result;
}


// 0x802eea2
int __fastcall sub_802EEA2(int a1)
{
    int v1; // r5
    int result; // r0

    if ( a1 & 0x80 )
        result = sub_802E04E(*(v1 + 22));
    else
        result = sub_802E032(*(v1 + 22), a1 << 8);
    return result;
}


// 0x802eec4
int sub_802EEC4()
{
    int v0; // r5
    int result; // r0
    int v2; // r7
    int v3; // r4
    signed int v4; // r1
    int v5; // [sp+0h] [bp-14h]
    int v6; // [sp+4h] [bp-10h]

    result = sub_802EFEE(*(v0 + 22));
    v2 = result;
    if ( result )
    {
        v3 = -object_getEnemyDirection();
        v5 = *(v2 + 18) + sub_802E070(*(v0 + 22))[14] * v3;
        v6 = *(v2 + 19);
        if ( object_getPanelDataOffset(v5, v6) )
            sub_802EFD8(v5, v6);
        v4 = 0;
        if ( v5 <= 1 )
            v4 = 1;
        if ( *(v0 + 22) != v4 )
            sub_802EFD8(5 * *(v0 + 22) + 1, v6);
        result = object_getClosestPanelMatchingRowFiltered(
                             *(v0 + 22),
                             v6,
                             *&byte_802EF4C[8 * *(v0 + 22)],
                             *&byte_802EF4C[8 * *(v0 + 22) + 4]);
    }
    return result;
}


// 0x802ef5c
signed int __fastcall sub_802EF5C(int a1)
{
    signed int result; // r0

    result = sub_800A8F8(a1);
    if ( result )
    {
        sub_802EF74(0);
        result = sub_802EF74(1);
    }
    return result;
}


// 0x802ef74
signed int __fastcall sub_802EF74(int a1)
{
    int v1; // r5
    int v2; // r10
    signed int result; // r0
    signed int v4; // r4
    signed int v5; // r7
    int *v6; // r0
    int *v7; // ST00_4
    unsigned __int8 v8; // vf
    int v9; // [sp+0h] [bp-14h]

    v9 = a1;
    result = sub_800A8F8(a1);
    if ( result )
    {
        v4 = 4;
        v5 = 0;
        result = sub_802EFEE(v9 ^ 1);
        if ( result )
        {
            if ( result == v1 )
            {
                v6 = (16 * v9 + 128 + *(v2 + oToolkit_S2034880_Ptr));
                do
                {
                    if ( *v6 )
                    {
                        if ( v5 )
                        {
                            v7 = v6;
                            v5 = sub_802F006(*v6, v5);
                            v6 = v7;
                        }
                        else
                        {
                            v5 = *v6;
                        }
                    }
                    ++v6;
                    v8 = __OFSUB__(v4--, 1);
                }
                while ( !(((v4 < 0) ^ v8) | (v4 == 0)) );
                sub_802EFF8(v9 ^ 1);
                result = v5;
            }
        }
    }
    return result;
}


// 0x802efd8
BOOL __fastcall __noreturn sub_802EFD8(int a1, int a2)
{
    int v2; // r5

    return *(v2 + 22) == object_getPanelDataOffset(a1, a2)[3];
}


// 0x802efee
int __fastcall sub_802EFEE(int a1)
{
    return *(sub_802E070(a1) + 17);
}


// 0x802eff8
char *__fastcall sub_802EFF8(int a1)
{
    char *result; // r0
    int v2; // [sp+0h] [bp-8h]

    result = sub_802E070(a1);
    *(result + 17) = v2;
    return result;
}


// 0x802f006
int __fastcall sub_802F006(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    int v4; // r7
    unsigned __int8 *v5; // r5
    int v6; // r2
    unsigned int v7; // r0
    unsigned int v8; // r1
    int v9; // r2
    int v10; // r0
    int v11; // r1
    int result; // r0

    v3 = a1;
    v4 = a2;
    v5 = sub_80103BC(*(v2 + 22) ^ 1);
    if ( !v5 )
        goto LABEL_17;
    v6 = v5[18] + object_getEnemyDirection();
    v7 = *(v3 + 18) - v6;
    v8 = *(v4 + 18) - v6;
    if ( v5[22] )
    {
        v7 = v6 - *(v3 + 18);
        v8 = v6 - *(v4 + 18);
    }
    if ( v7 < v8 )
        goto LABEL_17;
    if ( v7 > v8 )
        goto LABEL_18;
    v9 = v5[19];
    v10 = *(v3 + 19) - v9;
    if ( v10 < 0 )
        v10 = v9 - *(v3 + 19);
    v11 = *(v4 + 19) - v9;
    if ( v11 < 0 )
        v11 = v9 - *(v4 + 19);
    if ( v10 >= v11 && (v10 > v11 || *(v3 + 19) >= *(v4 + 19)) )
LABEL_18:
        result = v4;
    else
LABEL_17:
        result = v3;
    return result;
}


// 0x802f068
int sub_802F068()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r7
    int v3; // r0
    int result; // r0

    v1 = sub_802E070(*(v0 + 22));
    v2 = v1;
    v3 = v1[2];
    if ( !v3 || (result = v3 - 1, v2[2] = result, !result) )
        result = sub_802F084();
    return result;
}


// 0x802f084
int sub_802F084()
{
    int v0; // r5
    char *v1; // r0

    v1 = sub_802E070(*(v0 + 22));
    if ( v1[3] )
        *(v1 + 20) = 0;
    sub_802E07C(*(v0 + 22));
    return sub_800FFEE(&timer_2000000);
}


// 0x802f0c4
void __fastcall sub_802F0C4(int a1, int a2, int a3, int a4)
{
    int v4; // r10

    ZeroFillByHalfword(*(v4 + oToolkit_Flags2001c88_Ptr), &dword_4EC, a3, a4);
}


// 0x802f0d8
void __fastcall sub_802F0D8(int a1, int a2, int a3, int a4)
{
    int v4; // r10

    ZeroFillByHalfword(*(v4 + oToolkit_Flags2001c88_Ptr) + 734, 2u, a3, a4);
}


// 0x802f0f4
void __fastcall sub_802F0F4(int a1, int a2, int a3, int a4)
{
    int v4; // r10

    ZeroFillByHalfword(dword_2C8 + *(v4 + oToolkit_Flags2001c88_Ptr), 0x16u, a3, a4);
}


// 0x802f110
// The following event flag related functions have an additional way to enter the function
// where it interprets the event flag as two 8 bit registers
// This takes less space as it only requires 4 bytes to load two 8bit immediates into two registers
// than to load a halfword from memory into a single register
// it would also require aligning to a word boundary which may take additional space
unsigned int __fastcall SetEventFlagFromImmediate(int a1, int a2)
{
    return SetEventFlag((a1 << 8) | a2);
}


// 0x802f114
// Sets a flag at eEventFlags
// r0 - flag to set
unsigned int __fastcall SetEventFlag(unsigned int a1)
{
    int v1; // r10
    _BYTE *v2; // r3
    unsigned int result; // r0

    v2 = (*(v1 + offsetof(Toolkit, flags_2001C88)) + (a1 >> 3));
    result = *v2 | (0x80u >> (a1 & 7));
    *v2 = result;
    return result;
}


// 0x802f12c
// (u8 entryIdx, u8 byteFlagIdx) -> void
unsigned int __fastcall ClearEventFlagFromImmediate(int a1, int a2)
{
    return ClearEventFlag((a1 << 8) | a2);
}


// 0x802f130
// (u16 entryFlagBitfield) -> void
unsigned int __fastcall ClearEventFlag(unsigned int a1)
{
    int v1; // r10
    _BYTE *v2; // r3
    unsigned int result; // r0

    v2 = (*(v1 + oToolkit_Flags2001c88_Ptr) + (a1 >> 3));
    result = *v2 & ~(0x80u >> (a1 & 7));
    *v2 = result;
    return result;
}


// 0x802f148
// (u8 entryIdx, u8 byteFlagIdx) -> void
unsigned int __fastcall ToggleEventFlagFromImmediate(int a1, int a2)
{
    return ToggleEventFlag((a1 << 8) | a2);
}


// 0x802f14c
// (u16 entryFlagBitfield) -> void
unsigned int __fastcall ToggleEventFlag(unsigned int a1)
{
    int v1; // r10
    _BYTE *v2; // r3
    unsigned int result; // r0

    v2 = (*(v1 + oToolkit_Flags2001c88_Ptr) + (a1 >> 3));
    result = *v2 ^ (0x80u >> (a1 & 7));
    *v2 = result;
    return result;
}


// 0x802f164
// (int entryIdx, int byteFlagIdx) -> zf
int __fastcall TestEventFlagFromImmediate(int a1, int a2)
{
    return TestEventFlag((a1 << 8) | a2);
}


// 0x802f168
// (u16 entryFlagBitfield) -> zf
int __fastcall TestEventFlag(unsigned int a1)
{
    Toolkit *tk; // r10

    return tk->flags_2001C88[a1 >> 3];
}


// 0x802f17e
// (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
unsigned int __fastcall SetEventFlagRangeFromImmediate(int a1, int a2, int a3)
{
    return SetEventFlagRange((a1 << 8) | a2, a2, a3);
}


// 0x802f182
// (u16 entryFlagBitfield) -> void
unsigned int __fastcall SetEventFlagRange(unsigned int a1, int a2, int a3)
{
    int v3; // r10
    int v4; // r4
    unsigned int v5; // r5
    _BYTE *v6; // r3
    unsigned int result; // r0
    unsigned __int8 v8; // vf

    v4 = *(v3 + oToolkit_Flags2001c88_Ptr);
    v5 = a1;
    do
    {
        v6 = (v4 + (v5 >> 3));
        result = *v6 | (0x80u >> (v5 & 7));
        *v6 = result;
        ++v5;
        v8 = __OFSUB__(a3--, 1);
    }
    while ( !(((a3 < 0) ^ v8) | (a3 == 0)) );
    return result;
}


// 0x802f1a8
// (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
unsigned int __fastcall ClearEventFlagRangeFromImmediate(int a1, int a2, int a3)
{
    return ClearEventFlagRange((a1 << 8) | a2, a2, a3);
}


// 0x802f1ac
// (u16 entryFlagBitfield) -> void
unsigned int __fastcall ClearEventFlagRange(unsigned int a1, int a2, int a3)
{
    int v3; // r10
    int v4; // r4
    unsigned int v5; // r5
    _BYTE *v6; // r3
    unsigned int result; // r0
    unsigned __int8 v8; // vf

    v4 = *(v3 + oToolkit_Flags2001c88_Ptr);
    v5 = a1;
    do
    {
        v6 = (v4 + (v5 >> 3));
        result = *v6 & ~(0x80u >> (v5 & 7));
        *v6 = result;
        ++v5;
        v8 = __OFSUB__(a3--, 1);
    }
    while ( !(((a3 < 0) ^ v8) | (a3 == 0)) );
    return result;
}


// 0x802f1d2
// (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
unsigned int __fastcall ToggleEventFlagRangeFromImmediate(int a1, int a2, int a3)
{
    return ToggleEventFlagRange((a1 << 8) | a2, a2, a3);
}


// 0x802f1d6
// (u16 entryFlagBitfield) -> void
unsigned int __fastcall ToggleEventFlagRange(unsigned int a1, int a2, int a3)
{
    int v3; // r10
    int v4; // r4
    unsigned int v5; // r5
    _BYTE *v6; // r3
    unsigned int result; // r0
    unsigned __int8 v8; // vf

    v4 = *(v3 + oToolkit_Flags2001c88_Ptr);
    v5 = a1;
    do
    {
        v6 = (v4 + (v5 >> 3));
        result = *v6 ^ (0x80u >> (v5 & 7));
        *v6 = result;
        ++v5;
        v8 = __OFSUB__(a3--, 1);
    }
    while ( !(((a3 < 0) ^ v8) | (a3 == 0)) );
    return result;
}


// 0x802f1fc
// (int a3, int a2) ->
signed int __fastcall TestEventFlagRangeFromImmediate(int a1, int a2, int a3)
{
    int v3; // r10
    int v4; // r7
    unsigned int v5; // r5
    int v6; // r6
    unsigned __int8 v7; // vf
    signed int result; // r0

    v4 = a3;
    v5 = (a1 << 8) | a2;
    v6 = 0;
    do
    {
        if ( *(*(v3 + oToolkit_Flags2001c88_Ptr) + (v5 >> 3)) & (0x80u >> (v5 & 7)) )
            ++v6;
        ++v5;
        v7 = __OFSUB__(a3--, 1);
    }
    while ( !(((a3 < 0) ^ v7) | (a3 == 0)) );
    result = 0;
    if ( v6 == v4 )
        result = 1;
    return result;
}


// 0x802f238
int __fastcall addMail_802f238(unsigned int a1)
{
    unsigned int v1; // r7
    int v2; // r7
    int result; // r0
    int v4; // r4
    int v5; // r1
    unsigned __int8 v6; // vf

    v1 = a1;
    SetEventFlag(a1);
    SetEventFlag(v1 + 128);
    v2 = v1 - &loc_1CA0;
    result = dword_2001140;
    v4 = dword_2001140;
    if ( dword_2001140 )
    {
        v5 = dword_2001140 - 1;
        do
        {
            byte_2006530[result--] = byte_2006530[v5];
            v6 = __OFSUB__(v5--, 1);
        }
        while ( !((v5 < 0) ^ v6) );
    }
    byte_2006530[0] = v2;
    dword_2001140 = v4 + 1;
    return result;
}


// 0x802f270
unsigned int __fastcall sub_802F270(unsigned int a1)
{
    unsigned int v1; // r7
    signed int v2; // r1
    char *v3; // r2
    unsigned int result; // r0
    unsigned __int8 v5; // vf
    unsigned int v6; // [sp+0h] [bp-14h]

    v6 = a1;
    v1 = a1 - &loc_1CA0;
    v2 = dword_2001140;
    v3 = byte_2006530;
    while ( 1 )
    {
        result = *v3;
        if ( result == v1 )
            break;
        ++v3;
        v5 = __OFSUB__(v2--, 1);
        if ( ((v2 < 0) ^ v5) | (v2 == 0) )
            return result;
    }
    while ( v2 > 1 )
    {
        *v3 = v3[1];
        ++v3;
        --v2;
    }
    *v3 = -128;
    dword_2001140 = dword_2001140 - 1;
    ClearEventFlag(v6);
    return ClearEventFlag(v6 + 128);
}


// 0x802f2c8
int *sub_802F2C8()
{
    int *result; // r0

    ByteFill(byte_2006530, 128, 0x80u);
    result = &dword_2001140;
    dword_2001140 = 0;
    return result;
}


// 0x802f530
int __fastcall startScreen_init_802F530(int a1, int a2, int a3, int a4)
{
    _BYTE **v4; // r10
    int result; // r0

    ZeroFillByWord(&eStartScreen, 32);
    result = 0;
    **v4 = 0;
    return result;
}


// 0x802f544
// set R5 = eStartScreen
void startscreen_render_802F544()
{
    startScreen_AnimationControl_803E938();
    (*(JumpTable802F560 + eStartScreen.jo_00))();
    GetRNG2();
}


// 0x802f574
int __usercall startScreen_802F574@<R0>(StartScreen *scr@<R5>)
{
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0
    int v6; // r1
    int v7; // r2
    char v8; // zf
    u16 v9; // r1
    u8 v10; // r6
    u8 v11; // r7
    int result; // r0

    sub_80015FC(11);
    SetRenderInfoLCDControl(&loc_1140);
    renderInfo_8001788();
    renderInfo_80017A0();
    startScreen_initGfx_802FCC0(v1, v2, v3, v4);
    v5 = engine_setScreeneffect(12, 255);
    musicGameState_8000784(v5, v6, v7);
    LoadGFXAnims(pt_802F5F0);
    scr->jo_00 = 4;
    scr->unk_02 = 0;
    sub_803FA42();
    sub_803F838();
    if ( v8 )
    {
        scr->unk_02 = 1;
        scr->unk_0C = sub_8000EE4();
        scr->achievmentFlags = v9;
    }
    if ( scr->unk_02 )
    {
        v10 = 1;
        v11 = 2;
        startScreen_TstZero();
        if ( !v8 )
        {
            v10 = 1;
            v11 = 3;
        }
    }
    else
    {
        v10 = 0;
        v11 = 1;
        startScreen_TstZero();
        if ( !v8 )
            v11 = 2;
    }
    scr->currCsrPos = v10;
    scr->numChoices = v11;
    result = 0;
    scr->unk_03 = 0;
    return result;
}


// 0x802f60c
int startscreen_802F60C()
{
    StartScreen *scr; // r5

    return (*(&off_802F620 + scr->jo_01))();
}


// 0x802f624
int sub_802F624()
{
    _BYTE *v0; // r5
    int result; // r0

    SetRenderInfoLCDControl(5953);
    *v0 = 8;
    result = 0;
    v0[1] = 0;
    return result;
}


// 0x802f63c
// () -> void
int ho_802F63C()
{
    int v0; // r5

    (*(jt_802F654 + *(v0 + 1)))();
    return sub_802FB10();
}


// 0x802f668
void __fastcall __noreturn sub_802F668(int a1, int a2, int a3)
{
    int v3; // r5

    *(v3 + 14) = 0;
    *(v3 + 15) = 0;
    *(v3 + 4) = 2630;
    sub_80005F2(1, a2, a3);
    sub_80015FC(10);
    SetRenderInfoLCDControl(&loc_1340);
    *(v3 + 6) = 0;
    sub_802FD3C();
}


// 0x802f6a4
int sub_802F6A4()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        result = 8;
        *(v0 + 1) = 8;
    }
    return result;
}


// 0x802f6b2
int sub_802F6B2()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    char *v3; // r0
    int v4; // ST00_4
    char v5; // zf
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3

    v1 = *(v0 + 4);
    if ( v1 > 0 )
    {
        v3 = (v1 - 1);
        *(v0 + 4) = v3;
        if ( v3 == byte_12C )
        {
            v4 = v3;
            sound_800068A(31, 16);
            result = v4;
        }
        else
        {
            result = *(v0 + 4);
            if ( result < 2570 )
            {
                result = sub_803E928();
                if ( v5 )
                {
                    v6 = sub_802FD54(result);
                    sub_802F7E8(v6, v7, v8, v9);
                    result = sub_802F88E();
                }
            }
        }
    }
    else
    {
        *(v0 + 1) = 16;
        result = engine_setScreeneffect(12, 16);
    }
    return result;
}


// 0x802f704
void __fastcall __noreturn sub_802F704(int a1, int a2, int a3)
{
    sub_802F81C(a1, a2, a3);
    sub_802F8D8();
}


// 0x802f710
int sub_802F710()
{
    _WORD *v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r1
    int v8; // r2
    int v9; // r3

    if ( v0[2] > 0 )
        sub_802F8D8();
    result = IsPaletteFadeActive();
    if ( !v2 )
    {
        if ( v0[2] <= 0 )
        {
            zeroFill_e20094C0();
            sub_80023A8(v3, v4, v5, v6);
            (loc_803D1AC)();
            sub_81440D8();
            sub_813D960();
            clear_e200AD04();
            sub_803F6B0(0, v7, v8, v9);
            (loc_803F512)();
            result = init_eStartScreenAnimationControl200B1A0_2();
        }
        else
        {
            result = 12;
            *v0 = 12;
        }
    }
    return result;
}


// 0x802f756
int sub_802F756()
{
    int v0; // r5
    _BYTE **v1; // r10
    int result; // r0
    char *v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3

    **v1 = 4;
    SetRenderInfoLCDControl(&loc_1140);
    sub_813D960();
    if ( *(v0 + 8) )
    {
        if ( *(v0 + 8) == 1 && *(v0 + 2) )
        {
            sub_8004D48();
            SetEventFlagFromImmediate(23, 4);
            sub_81440D8();
            result = sub_8149644();
        }
        else
        {
            sub_813D90C(0);
            v3 = sub_8004D48();
            v7 = sub_8039570(v3, v4, v5, v6);
            sub_803EBAC(v7, v8, v9, v10);
            eStruct200BC30_setJumpOffset00(12);
            if ( *(v0 + 2) )
                SetEventFlagFromImmediate(23, 4);
            result = sub_81440D8();
        }
    }
    else
    {
        sub_800260C();
        reqBBS_init_8004DF0();
        sub_8004D48();
        sub_81440D8();
        sub_8149644();
        result = *(v0 + 2);
        if ( *(v0 + 2) )
            result = SetEventFlagFromImmediate(23, 4);
    }
    return result;
}


// 0x802f7e8
int __fastcall sub_802F7E8(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int result; // r0
    int v7; // r1
    int v8; // r2

    result = *(*(v5 + oToolkit_JoypadPtr) + 2);
    if ( result & 8 )
    {
        sub_813D960();
        *(v4 + 1) = 12;
        PlaySoundEffect(103, v7, v8);
        LoadGFXAnim(byte_802F2E4);
        result = LoadGFXAnim(&dword_802F334);
    }
    return result;
}


// 0x802f81c
int __fastcall sub_802F81C(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int v4; // r10
    int v5; // r7
    int result; // r0
    int v7; // r1
    int v8; // r2
    char v9; // zf
    int v10; // r1
    int v11; // r2
    int v12; // r0
    int v13; // r1
    unsigned __int8 v14; // vf
    int v15; // r0
    int v16; // r1
    int v17; // r2

    v5 = *(v4 + oToolkit_JoypadPtr);
    if ( *(v5 + 2) & 9 )
    {
        result = IsPaletteFadeActive();
        if ( !v9 )
        {
            musicGameState_8000784(result, v7, v8);
            PlaySoundEffect(157, v10, v11);
            v3[1] = 16;
            result = engine_setScreeneffect(12, 16);
        }
    }
    else if ( *(v5 + 4) & 0x40 )
    {
        v12 = v3[8];
        v13 = v12;
        v14 = __OFSUB__(v12, 1);
        result = v12 - 1;
        if ( (result < 0) ^ v14 )
            result = v3[9] - 1;
        v3[8] = result;
        if ( result != v13 )
            result = PlaySoundEffect(102, v13, a3);
    }
    else
    {
        result = *(v5 + 4);
        if ( result & 0x80 )
        {
            v15 = v3[8];
            v16 = v15;
            result = v15 + 1;
            v17 = v3[9];
            if ( result >= v17 )
                result = 0;
            v3[8] = result;
            if ( result != v16 )
                result = PlaySoundEffect(102, v16, v17);
        }
    }
    return result;
}


// 0x802f88e
int sub_802F88E()
{
    int v0; // r10
    int result; // r0

    result = **(v0 + oToolkit_CurFramePtr) & 0x3F;
    if ( result <= 32 )
        result = sub_8001158(byte_802F8AC);
    return result;
}


// 0x802f8d8
int __noreturn sub_802F8D8()
{
    _BYTE *v0; // r5
    int v1; // r0
    int v2; // r0
    char v3; // zf

    v1 = v0[6] + 1;
    if ( v1 >= 18 )
        LOBYTE(v1) = 0;
    v0[6] = v1;
    v2 = v0[7] + 1;
    if ( v2 >= 64 )
        LOBYTE(v2) = 0;
    v0[7] = v2;
    sub_802FE28(*&byte_802F960[4 * v0[8]], *&byte_802F970[2 * v0[6]], 0, 0);
    sub_802F994(v0[8]);
    if ( v0[2] )
    {
        sub_802F9EC(v0[8]);
        notZero_eByte200AD04();
        if ( v3 )
            startScreen_TstZero();
    }
    else
    {
        notZero_eByte200AD04();
        if ( v3 )
            startScreen_TstZero();
    }
    sub_802FC9C();
    sub_802FC70();
    sub_802FB64();
    sub_802FB90();
    sub_802FBB4();
    sub_802FBD8();
    sub_802FBFC();
    sub_802FC28();
    return sub_802FC4C();
}


// 0x802f994
int __fastcall sub_802F994(int a1)
{
    return sub_8001158(off_802F9A8[a1]);
}


// 0x802f9ec
int __fastcall sub_802F9EC(int a1)
{
    return sub_8001158(off_802FA00[a1]);
}


// 0x802fa44
int __fastcall sub_802FA44(int a1)
{
    int v1; // r5
    int result; // r0

    if ( *(v1 + 9) < 3 )
        result = sub_8001158(off_802FA68[a1]);
    else
        result = sub_8001158(off_802FA74[a1]);
    return result;
}


// 0x802fb10
// () -> void
int sub_802FB10()
{
    return sub_8001158(byte_802FB20);
}


// 0x802fb64
int sub_802FB64()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 10);
    if ( result & 0x80 )
        result = sub_8001158(byte_802FB7C);
    return result;
}


// 0x802fb90
int sub_802FB90()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 10);
    if ( result & 0x40 )
        result = sub_8001158(byte_802FBA8);
    return result;
}


// 0x802fbb4
int sub_802FBB4()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 10);
    if ( result & 0x20 )
        result = sub_8001158(byte_802FBCC);
    return result;
}


// 0x802fbd8
int sub_802FBD8()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 10);
    if ( result & 0x10 )
        result = sub_8001158(byte_802FBF0);
    return result;
}


// 0x802fbfc
int sub_802FBFC()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 10);
    if ( result & 8 )
        result = sub_8001158(byte_802FC14);
    return result;
}


// 0x802fc28
int sub_802FC28()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 10);
    if ( result & 4 )
        result = sub_8001158(byte_802FC40);
    return result;
}


// 0x802fc4c
int sub_802FC4C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 10);
    if ( result & 2 )
        result = sub_8001158(byte_802FC64);
    return result;
}


// 0x802fc70
int sub_802FC70()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 10);
    if ( result & 0x100 )
        result = sub_8001158(byte_802FC88);
    return result;
}


// 0x802fc9c
int sub_802FC9C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 10);
    if ( result & 0x200 )
        result = sub_8001158(byte_802FCB4);
    return result;
}


// 0x802fcc0
void __fastcall startScreen_initGfx_802FCC0(int a1, int a2, int a3, int a4)
{
    zeroFillVRAM();
    decompAndCopyData(initRefs_802FCD8);
    ZeroFillGFX30025c0();
}


// 0x802fd3c
void __noreturn sub_802FD3C()
{
    CopyBackgroundTiles(0, 0, 1, byte_87F8EB0, 32, dword_14);
}


// 0x802fd54
int __fastcall sub_802FD54(int a1)
{
    int v1; // r5
    int result; // r0
    char v3; // zf
    char v4; // r1

    result = startScreen_TstZero();
    if ( !v3 )
    {
        v4 = 2;
        result = *(v1 + 2);
        if ( *(v1 + 2) )
            v4 = 3;
        *(v1 + 9) = v4;
    }
    return result;
}


// 0x802fdb0
char *sub_802FDB0()
{
    int v0; // r2
    void **v1; // r3
    signed int v2; // r4
    int v3; // r3
    char *result; // r0

    CopyWords(&off_802FD70, &tupleArr_3002590, 0x20u);
    v0 = -1;
    v1 = &off_802FD70;
    v2 = 4;
    do
    {
        WordFill(*v1, v1[1], v0);
        v1 = (v3 + 8);
        --v2;
    }
    while ( v2 > 0 );
    ZeroFillByEightWords(iObjectAttr3001150, &byte_400);
    result = byte_3001950;
    *byte_3001950 = 0;
    return result;
}


// 0x802fe0c
void copyObjAttributesToIWRAM_802FE0C()
{
    CopyByEightWords(&iObjectAttr3001D70, 0x7000000, &byte_400);
}


// 0x802fe28
// (u32 a1, u16 a2, int notUsed, int a4) -> void
signed int __fastcall sub_802FE28(signed int a1, __int16 a2, int a3, int a4)
{
    return sub_30068E8(a1, a2, a3, a4);
}


// 0x802fe38
int __fastcall sub_802FE38(int a1, int a2)
{
    return sub_3006920(a1, a2);
}


// 0x802fe48
signed int sub_802FE48()
{
    unsigned int v0; // r2
    signed int result; // r0

    v0 = 2147483648;
    result = 0;
    do
    {
        if ( !(dword_2009A2C & v0) )
        {
            dword_2009A2C |= v0;
            return result;
        }
        v0 >>= 1;
        ++result;
    }
    while ( result < 16 );
    return 255;
}


// 0x802fe6a
int __fastcall sub_802FE6A(int result)
{
    dword_2009A2C &= ~(0x80000000 >> result);
    return result;
}


// 0x802fe7a
int __fastcall sub_802FE7A(int a1, unsigned int a2, unsigned int a3, int a4)
{
    int v4; // ST00_4
    signed int v5; // ST04_4
    signed int v6; // ST08_4
    __int16 *v7; // r0
    int v8; // r1
    __int16 *v9; // r6
    int v10; // r0
    char v11; // r3
    int v12; // r2
    int result; // r0
    char v14; // r3
    int v15; // r2

    v4 = a1;
    v5 = a2 >> 2;
    v6 = a3 >> 2;
    v7 = &word_200A6F0[6 * a4];
    v8 = 6 * (a4 + 16);
    v9 = &word_200A6F0[v8];
    LOBYTE(word_200A6F0[v8 + 4]) = 0;
    *(v7 + 8) = v4;
    sub_802FF10(v7, v8 * 2, 2 * v4, v5);
    *(v10 + 9) = v11;
    *v9 = (*math_cosTable * v5) >> 4;
    *v10 = (*&math_cosTable[v12] * v5) >> 4;
    v9[1] = (*math_sinTable * v5) >> 4;
    *(v10 + 2) = (*&math_sinTable[v12] * v5) >> 4;
    sub_802FF10(v10, math_sinTable, v12, v6);
    *(result + 10) = v14;
    v9[3] = (*math_cosTable * v6) >> 4;
    *(result + 6) = (*&math_cosTable[v15] * v6) >> 4;
    v9[2] = (-*math_sinTable * v6) >> 4;
    *(result + 4) = (-*&math_sinTable[v15] * v6) >> 4;
    return result;
}


// 0x802ff10
void __fastcall sub_802FF10(int a1, int a2, int a3, signed int a4)
{
    signed int v4; // r1
    int v5; // r2

    v4 = 256;
    v5 = 0;
    if ( a4 )
    {
        while ( v4 >= a4 )
        {
            v4 -= a4;
            ++v5;
        }
    }
}


// 0x802ff2c
void __cdecl cleareMemory_802FF2C()
{
    dword_2009A2C = 0;
    ZeroFillByEightWords(word_200A6F0, &byte_180);
}


// 0x802ff4c
void __fastcall camera_802FF4C(int x, int y, int a3, int mapGroup)
{
    Toolkit *tk; // r10
    int v5_x; // ST0C_4
    int v6_y; // ST10_4
    int v7; // ST14_4
    Camera *v8; // r5
    u8 v9; // ST00_1
    u32 v10; // ST04_4
    int v11; // r3
    int v12; // r3
    int v13; // r0
    _DWORD *v14; // r3
    int v15; // r0
    Camera *pCamera; // [sp-4h] [bp-34h]
    int v17_mapGroup; // [sp+Ch] [bp-24h]
    int v18; // [sp+10h] [bp-20h]

    v17_mapGroup = mapGroup;
    v5_x = x;
    v6_y = y;
    v7 = a3;
    v8 = tk->camera;
    v9 = v8->pad_02[1];
    v10 = v8->unk_14;
    pCamera = tk->camera;
    ZeroFillByWord(tk->camera, 76);
    pCamera->pad_02[1] = v9;
    pCamera->unk_14 = v10;
    v11 = (eMapTilesState200be70 - 30) << 18;
    pCamera->unk_1C = v11;
    pCamera->unk_18 = -v11;
    v12 = (byte_200BE71 - 20) << 18;
    pCamera->unk_20 = v12;
    pCamera->unk_24 = -v12;
    pCamera->unk_30 = v5_x;
    pCamera->unk_34 = v6_y;
    pCamera->unk_38 = v7;
    pCamera->unk_04 = 0;
    pCamera->unk_06 = 0;
    v13 = v17_mapGroup;
    if ( v17_mapGroup >= 240 )
    {
        LOBYTE(v15) = 8;
    }
    else if ( v17_mapGroup >= 224 )
    {
        LOBYTE(v15) = 12;
    }
    else if ( v17_mapGroup >= 208 )
    {
        LOBYTE(v15) = 16;
    }
    else
    {
        if ( v17_mapGroup >= 128 )
        {
            v14 = &off_803378C;
            v13 = v17_mapGroup - 128;
        }
        else
        {
            v14 = &off_8033770;
        }
        v15 = *(v14[v13] + v18);
    }
    pCamera->pad_02[0] = v15;
    camera_doShakeEffect_80301e8();
    sub_8030054();
    sub_80302D0();
    sub_803011A();
}


// 0x802fff4
int sub_802FFF4()
{
    int v0; // r8
    int v1; // r10
    int v2; // r5

    v2 = *(v1 + oToolkit_CameraPtr);
    (*(&off_8030034 + *(v2 + 3)))();
    camera_doShakeEffect_80301e8();
    sub_8030054();
    (*(&JumpTable8030040 + *(v2 + 2)))();
    sub_803011A();
    return v0;
}


// 0x8030054
int sub_8030054()
{
    int v0; // r5

    return (*(&off_8030068 + *(v0 + 2)))();
}


// 0x803007c
void sub_803007C()
{
    int v0; // r5
    char *v1; // r1
    int v2; // r7

    v1 = &byte_0[-*(v0 + 60)];
    v2 = -*(v0 + 64);
    *(v0 + 4) = -(&v1[-*(v0 + 64)] >> 16);
    *(v0 + 6) = -((((v2 - v1) >> 1) + *(v0 + 68)) >> 16);
}


// 0x80300ac
void sub_80300AC()
{
    int v0; // r5
    int v1; // r1
    int v2; // r6
    int v3; // r4
    int v4; // r6
    int v5; // r4
    int v6; // r2
    int v7; // r2

    v1 = *(v0 + 60);
    if ( v1 < *(v0 + 24) )
        v1 = *(v0 + 24);
    if ( v1 > *(v0 + 28) )
        v1 = *(v0 + 28);
    *(v0 + 60) = v1;
    *(v0 + 4) = HIWORD(v1);
    v2 = *(v0 + 68);
    v3 = *(v0 + 64);
    if ( v3 < *(v0 + 36) + v2 )
        v3 = *(v0 + 36) + v2;
    if ( v3 > *(v0 + 32) + v2 )
        v3 = *(v0 + 32) + v2;
    *(v0 + 64) = v3;
    v4 = v3;
    v5 = *(v0 + 68);
    v6 = *(v0 + 36) + v4;
    *(v0 + 44) = v6;
    if ( v5 < v6 )
        v5 = v6;
    v7 = *(v0 + 32) + v4;
    *(v0 + 40) = v7;
    if ( v5 > v7 )
        v5 = v7;
    *(v0 + 68) = v5;
    *(v0 + 6) = (v4 - v5) >> 16;
}


// 0x8030104
void sub_8030104()
{
    int v0; // r5

    *(v0 + 4) = (*(v0 + 60) >> 16) + 136;
    *(v0 + 6) = (*(v0 + 64) >> 16) + 176;
}


// 0x803011a
void sub_803011A()
{
    _WORD *v0; // r5

    v0[4] = v0[2];
    v0[5] = v0[3];
}


// 0x8030124
void nullsub_7()
{
    ;
}


// 0x8030126
void sub_8030126()
{
    _DWORD *v0; // r5
    _DWORD *v1; // r7

    v1 = v0[5];
    v0[12] = *v1;
    v0[13] = v1[1];
    v0[14] = v1[2];
}


// 0x8030136
unsigned __int16 *sub_8030136()
{
    unsigned __int16 *v0; // r5
    int v1; // r10
    unsigned __int16 *result; // r0
    int v3; // r6
    int v4; // r7

    result = *(v1 + oToolkit_RenderInfoPtr);
    v3 = result[8] + v0[2] - v0[4];
    v4 = result[9] + v0[3] - v0[5];
    result[8] = v3;
    result[9] = v4;
    result[10] = v3;
    result[11] = v4;
    return result;
}


// 0x8030158
signed int sub_8030158()
{
    _WORD *v0; // r5
    int v1; // r10
    __int16 v2; // r1
    __int16 v3; // r4
    int v4; // r0
    __int16 v5; // r7
    signed int result; // r0
    __int16 v7; // r7
    __int16 v8; // [sp-8h] [bp-1Ch]

    v2 = v0[2] - v0[4];
    v3 = v0[3] - v0[5];
    v4 = *(v1 + oToolkit_RenderInfoPtr);
    v5 = *(v4 + 22) + v3;
    *(v4 + 20) += v2;
    *(v4 + 22) = v5;
    v8 = v2;
    result = sub_80269E2();
    if ( !result )
    {
        result = *(v1 + oToolkit_RenderInfoPtr);
        v7 = *(result + 26) + v3;
        *(result + 24) += v8;
        *(result + 26) = v7;
    }
    return result;
}


// 0x8030194
int sub_8030194()
{
    _WORD *v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r7

    result = *(v1 + oToolkit_RenderInfoPtr);
    v3 = *(result + 18) + v0[3] - v0[5];
    *(result + 16) += v0[2] - v0[4];
    *(result + 18) = v3;
    return result;
}


// 0x80301b2
int __fastcall sub_80301B2(int result, int a2)
{
    int v2; // r10
    int v3; // r2

    v3 = *(v2 + oToolkit_CameraPtr);
    *(v3 + 3) = result;
    *(v3 + 20) = a2;
    return result;
}


// 0x80301bc
signed int sub_80301BC()
{
    int v0; // r10
    int v1; // r2
    signed int result; // r0

    v1 = *(v0 + oToolkit_CameraPtr);
    result = 1;
    *(v1 + 3) = 1;
    *(v1 + 20) = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 28;
    return result;
}


// 0x80301d0
__int64 GetCameraXYZ()
{
    int v0; // r10
    int v1; // r3
    __int64 result; // r0
    int v3; // r2

    v1 = *(v0 + oToolkit_CameraPtr);
    result = *(v1 + 48);
    v3 = *(v1 + 56);
    return result;
}


// 0x80301dc
int __fastcall SetCameraXYZ(int result, int a2, int a3)
{
    int v3; // r10
    _DWORD *v4; // r3

    v4 = *(v3 + oToolkit_CameraPtr);
    v4[12] = result;
    v4[13] = a2;
    v4[14] = a3;
    return result;
}


// 0x80301e8
int camera_doShakeEffect_80301e8()
{
    int v0; // r5
    char v1; // zf
    char *v2; // r7
    int result; // r0
    int v4; // r0
    int v5; // r0
    int v6; // r0

    if ( (sub_80269D0() || (IsCurSubsystemInUse(), v1) || battle_isTimeStopPauseOrBattleFlags0x20_800a0a4()) && *(v0 + 12) )
    {
        v2 = &byte_8030284[8 * *(v0 + 14)];
        --*(v0 + 12);
    }
    else
    {
        result = *(v0 + 16);
        if ( !*(v0 + 16) )
        {
            *(v0 + 14) = 0;
            *(v0 + 60) = *(v0 + 48);
            *(v0 + 64) = *(v0 + 52);
            *(v0 + 68) = *(v0 + 56);
            *(v0 + 72) = 0;
            return result;
        }
        v2 = &byte_8030284[8 * *(v0 + 18)];
        *(v0 + 16) = result - 1;
    }
    GetRNG1();
    v5 = ((v4 & *v2) << 16) - *(v2 + 1);
    *(v0 + 60) = *(v0 + 48) + v5;
    *(v0 + 72) = 0;
    if ( sCamera.unk_4C )
        *(v0 + 72) = -2 * v5;
    GetRNG1();
    result = ((v6 & *v2) << 16) - *(v2 + 1);
    *(v0 + 64) = *(v0 + 52) + result;
    *(v0 + 68) = *(v0 + 56);
    return result;
}


// 0x80302a8
int __fastcall camera_initShakeEffect_80302a8(int result, __int16 a2)
{
    int v2; // r10
    int v3; // r2

    v3 = *(v2 + oToolkit_CameraPtr);
    *(v3 + 14) = result;
    *(v3 + 12) = a2;
    return result;
}


// 0x80302b6
int __fastcall sub_80302B6(int result, __int16 a2)
{
    int v2; // r10
    int v3; // r2

    v3 = *(v2 + oToolkit_CameraPtr);
    *(v3 + 18) = result;
    *(v3 + 16) = a2;
    return result;
}


// 0x80302c0
signed int __fastcall sub_80302C0(signed int result, __int16 a2)
{
    int v2; // r10
    int v3; // r2

    v3 = *(v2 + oToolkit_CameraPtr);
    if ( result >= *(v3 + 14) )
    {
        *(v3 + 14) = result;
        *(v3 + 12) = a2;
    }
    return result;
}


// 0x80302d0
int sub_80302D0()
{
    int v0; // r5

    return (*(&off_80302E4 + *(v0 + 2)))();
}


// 0x80302f8
void sub_80302F8()
{
    int v0; // r10
    int v1; // r5
    __int16 v2; // r2
    _WORD *v3; // r3
    __int16 v4; // r1

    v1 = *(v0 + oToolkit_CameraPtr);
    v2 = *(v1 + 6);
    v3 = *(v0 + oToolkit_RenderInfoPtr);
    v4 = *(v1 + 4) & 0xFF;
    v3[8] = v4;
    v3[10] = v4;
    v3[12] = v4;
    v3[9] = v2;
    v3[11] = v2;
    v3[13] = v2;
}


// 0x8030316
void sub_8030316()
{
    int v0; // r10
    int v1; // r5
    __int16 v2; // r2
    _WORD *v3; // r3
    __int16 v4; // r1

    v1 = *(v0 + oToolkit_CameraPtr);
    v2 = *(v1 + 6);
    v3 = *(v0 + oToolkit_RenderInfoPtr);
    v4 = *(v1 + 4) & 0xFF;
    v3[8] = v4;
    v3[10] = v4;
    v3[9] = v2;
    v3[11] = v2;
    v3[12] = 0;
    v3[13] = 0;
}


// 0x8030336
void sub_8030336()
{
    int v0; // r10
    int v1; // r5
    __int16 v2; // r2
    _WORD *v3; // r3
    __int16 v4; // r1

    v1 = *(v0 + oToolkit_CameraPtr);
    v2 = *(v1 + 6);
    v3 = *(v0 + oToolkit_RenderInfoPtr);
    v4 = *(v1 + 4) & 0xFF;
    v3[8] = v4;
    v3[10] = v4;
    v3[12] = v4;
    v3[9] = v2;
    v3[11] = v2;
    v3[13] = v2;
    v3[8] = 0;
    v3[9] = 0;
    v3[12] = 0;
    v3[13] = 0;
}


// 0x803035e
void sub_803035E()
{
    int v0; // r10
    int v1; // r5
    __int16 v2; // r2
    int v3; // r3

    v1 = *(v0 + oToolkit_CameraPtr);
    v2 = *(v1 + 6);
    v3 = *(v0 + oToolkit_RenderInfoPtr);
    *(v3 + 16) = *(v1 + 4) & 0x1FF;
    *(v3 + 18) = (v2 - 8) & 0x1FF;
}


// 0x803037a
void nullsub_60()
{
    ;
}


// 0x803037c
char *__fastcall initMapTilesState_803037c(signed int MapGroup, int MapNumber)
{
    char (***v2)[17212]; // r3
    void **v3; // r4
    int v4; // r0
    int *v5; // r4
    char *result; // r0

    if ( MapGroup >= 128 )
    {
        v2 = &off_80329C4;
        v3 = off_8032F88;
        MapGroup -= 128;
    }
    else
    {
        v2 = &off_80329A8;
        v3 = off_8032F6C;
    }
    v4 = MapGroup;
    dword_200BE78 = &v2[v4][3 * MapNumber];
    v5 = (v3[v4] + 12 * MapNumber);
    dword_200BE88 = *v5;
    dword_200BE8C = v5[1];
    dword_200BE90 = v5[2];
    result = *(dword_200BE78 + 8);
    eMapTilesState200be70 = *result;
    byte_200BE71 = result[1];
    dword_200BE80 = *(dword_200BE78 + 4);
    dword_200BE84 = *dword_200BE78;
    dword_200BE7C = eDecompBuffer2013A00;
    return result;
}


// 0x80303e8
signed int sub_80303E8()
{
    signed int result; // r0

    result = 32;
    eMapTilesState200be70 = 32;
    byte_200BE71 = 32;
    return result;
}


// 0x80303f2
signed int sub_80303F2()
{
    signed int result; // r0

    result = 64;
    eMapTilesState200be70 = 64;
    byte_200BE71 = 64;
    return result;
}


// 0x80303fc
BOOL __fastcall sub_80303FC(_DWORD *a1)
{
    int v1; // r1
    int v2; // r8
    signed int v3; // r1
    signed int v4; // r6

    v1 = -*a1;
    v2 = v1;
    v3 = (-((v1 - a1[1]) >> 16) >> 3) + (eMapTilesState200be70 >> 1);
    v4 = (-((((-a1[1] - v2) >> 1) + a1[2]) >> 16) >> 3) + (byte_200BE71 >> 1);
    return v3 < 0 || v3 >= eMapTilesState200be70 || v4 < 0 || v4 >= byte_200BE71;
}


// 0x8030472
int decompAndCopyMapTiles_8030472()
{
    int v0; // r0
    _DWORD *v1; // r7
    int v2; // r6
    int v3; // ST00_4
    int v4; // ST00_4

    CopyByEightWords(dword_200BE80 + 4, palette_3001960, 0x1A0u);
    v0 = 0;
    v1 = dword_200BE84;
    v2 = dword_200BE84;
    do
    {
        v3 = v0;
        SWI_LZ77UnCompReadNormalWrite8bit((v1[1] + v2), eDecompBuffer2013A00);
        CopyByEightWords(eDecompBuffer2013A00, v1[2] + 100663296, 4 * *v1);
        v1 += 3;
        v0 = v3 + 1;
    }
    while ( v3 + 1 < 2 );
    v4 = *(dword_200BE78 + 8);
    CopyWords(*(dword_200BE78 + 8), eDecompBuffer2013A00, 0xCu);
    SWI_LZ77UnCompReadNormalWrite8bit((v4 + 12), &unk_2013A0C);
    return dword_200BE8C();
}


// 0x80304e8
void __fastcall LoadBGAnimData(int a1)
{
    int v1; // r10
    int v2; // r5
    int v3; // r0
    _DWORD *v4; // r7

    v2 = a1;
    v3 = *(a1 + 16);
    if ( v3 )
        (loc_8000AC8)(v3 + 4, *(v2 + 20), *(v2 + 24));
    v4 = *v2;
    if ( *v2 )
    {
        SWI_LZ77UnCompReadNormalWrite8bit(v4 + v4[1], &eDecompressionBuf2034A00);
        CopyByEightWords(&eDecompressionBuf2034A00, *(v2 + 4), 4 * *v4);
        SWI_LZ77UnCompReadNormalWrite8bit((*(v2 + 8) + 12), &eDecompressionBuf2034A00);
        CopyByEightWords(&eDecompressionBuf2034A00, *(v2 + 12) + *(v1 + oToolkit_iBGTileIdBlocks_Ptr), 2 * **(v2 + 8) * *(*(v2 + 8) + 1));
    }
}


// 0x8030540
int __fastcall sub_8030540(_DWORD *a1)
{
    int v1; // r10
    _DWORD *v2; // r5
    int v3; // r0

    v2 = a1;
    v3 = a1[4];
    if ( v3 )
        (loc_8000AC8)(v3 + 4, v2[5], v2[6]);
    SWI_LZ77UnCompReadNormalWrite8bit((v2[2] + 12), &eDecompressionBuf2034A00);
    return (loc_8000AC8)(&eDecompressionBuf2034A00, v2[3] + *(v1 + oToolkit_iBGTileIdBlocks_Ptr), 2 * *v2[2] * *(v2[2] + 1));
}


// 0x8030580
int sub_8030580()
{
    int v0; // r10
    int v1; // r3
    int result; // r0
    signed int v3; // r1
    int v4; // [sp-14h] [bp-28h]
    int v5; // [sp-10h] [bp-24h]

    v1 = *(v0 + oToolkit_CameraPtr);
    result = *(v1 + 4) >> 3;
    v3 = *(v1 + 6) >> 3;
    if ( result != word_200BE74 )
    {
        if ( result <= word_200BE74 )
        {
            v4 = *(v1 + 4) >> 3;
            v5 = *(v1 + 6) >> 3;
            sub_803066E(result, v3, word_200BE74 - result);
        }
        else
        {
            v4 = *(v1 + 4) >> 3;
            v5 = *(v1 + 6) >> 3;
            sub_80306C8(result, v3, result - word_200BE74);
        }
        result = v4;
        v3 = v5;
    }
    if ( v3 != word_200BE76 )
    {
        if ( v3 <= word_200BE76 )
            result = sub_8030722(result, v3, word_200BE76 - v3);
        else
            result = sub_803077C(result, v3, v3 - word_200BE76);
    }
    return result;
}


// 0x80305e4
int sub_80305E4() { // could not decompile
    asm(".func\
    .thumb_func\
    sub_80305E4:\
        cmp r0, #0\
        bge loc_80305EA\
        b loc_8030622\
    loc_80305EA:\
        ldrb r6, [r5]\
        cmp r0, r6\
        blt loc_80305F2\
        b loc_8030622\
    loc_80305F2:\
        cmp r1, #0\
        bge loc_80305F8\
        b loc_8030622\
    loc_80305F8:\
        ldrb r6, [r5,#1]\
        cmp r1, r6\
        blt loc_8030600\
        b loc_8030622\
    loc_8030600:\
        ldr r3, [r5,#0xc]\
        mov r4, #8\
    loc_8030604:\
        ldrb r7, [r5]\
        lsl r7, r7, #1\
    loc_8030608:\
        ldr r2, [r3,r4]\
        add r2, r2, r3\
        lsl r6, r0, #1\
        add r2, r2, r6\
        mov r6, r1\
        mul r6, r7\
        ldrh r2, [r2,r6]\
        push {r2}\
        sub r4, #4\
        cmp r4, #0\
        bgt loc_8030608\
        pop {r0,r1}\
        mov pc, lr\
    loc_8030622:\
        mov r0, #0\
        mov r1, #0\
        b loc_8030600\
    .endfunc // sub_80305E4"
    );
}

// 0x8030628
void __fastcall sub_8030628(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r10
    signed int v6; // r2

    v6 = 1;
    do
        *(*(v5 + oToolkit_iBGTileIdBlocks_Ptr) + (v6++ << 11) + 2 * a4 + (v4 << 6)) = a1;
    while ( v6 <= 2 );
}


// 0x8030646
__int64 __fastcall sub_8030646(__int64 result, int a2, int a3)
{
    int v3; // r4
    int v4; // r10

    *(*(v4 + oToolkit_iBGTileIdBlocks_Ptr) + 4096 + 2 * a3 + (v3 << 6)) = WORD2(result);
    return result;
}


// 0x803065a
__int64 __fastcall sub_803065A(__int64 result, int a2, int a3)
{
    int v3; // r4
    int v4; // r10

    *(*(v4 + oToolkit_iBGTileIdBlocks_Ptr) + 2048 + 2 * a3 + (v3 << 6)) = WORD2(result);
    return result;
}


// 0x803066e
int __fastcall sub_803066E(int result, int a2, int a3)
{
    unsigned __int8 *v3; // r5
    signed int v4; // r7
    int v5; // r8
    int v6; // r9
    int v7; // r0
    int v8; // [sp-Ch] [bp-10h]
    int v9; // [sp-4h] [bp-8h]

    *(v3 + 2) = result;
    if ( a3 >= 5 )
        return (*(v3 + 8))();
    do
    {
        v9 = a2;
        v4 = 0;
        do
        {
            v8 = a3;
            v5 = result;
            v6 = a2;
            v7 = sub_80305E4(result - 15 + (*v3 >> 1), a2 - 10 + (v3[1] >> 1));
            (*(v3 + 6))(v7);
            a3 = v8;
            result = v5;
            a2 = v6 + 1;
            ++v4;
        }
        while ( v4 < 32 );
        a2 = v9;
        result = v5 + 1;
        a3 = v8 - 1;
    }
    while ( v8 - 1 > 0 );
    return result;
}


// 0x80306c8
int __fastcall sub_80306C8(int result, int a2, int a3)
{
    unsigned __int8 *v3; // r5
    signed int v4; // r7
    int v5; // r8
    int v6; // r9
    int v7; // r0
    int v8; // [sp-Ch] [bp-10h]
    int v9; // [sp-4h] [bp-8h]

    *(v3 + 2) = result;
    if ( a3 >= 5 )
        return (*(v3 + 8))();
    do
    {
        v9 = a2;
        v4 = 0;
        do
        {
            v8 = a3;
            v5 = result;
            v6 = a2;
            v7 = sub_80305E4(result + 15 + (*v3 >> 1), a2 - 10 + (v3[1] >> 1));
            (*(v3 + 6))(v7);
            a3 = v8;
            result = v5;
            a2 = v6 + 1;
            ++v4;
        }
        while ( v4 < 32 );
        a2 = v9;
        result = v5 - 1;
        a3 = v8 - 1;
    }
    while ( v8 - 1 > 0 );
    return result;
}


// 0x8030722
int __fastcall sub_8030722(int result, int a2, int a3)
{
    unsigned __int8 *v3; // r5
    signed int v4; // r7
    int v5; // r8
    int v6; // r9
    int v7; // r0
    int v8; // [sp-Ch] [bp-10h]
    int v9; // [sp-4h] [bp-8h]

    *(v3 + 3) = a2;
    if ( a3 >= 5 )
        return (*(v3 + 8))(result);
    do
    {
        v9 = result;
        v4 = 0;
        do
        {
            v8 = a3;
            v5 = result;
            v6 = a2;
            v7 = sub_80305E4(result - 15 + (*v3 >> 1), a2 - 10 + (v3[1] >> 1));
            (*(v3 + 6))(v7);
            a3 = v8;
            a2 = v6;
            result = v5 + 1;
            ++v4;
        }
        while ( v4 < 32 );
        result = v9;
        a2 = v6 + 1;
        a3 = v8 - 1;
    }
    while ( v8 - 1 > 0 );
    return result;
}


// 0x803077c
int __fastcall sub_803077C(int result, int a2, int a3)
{
    unsigned __int8 *v3; // r5
    signed int v4; // r7
    int v5; // r8
    int v6; // r9
    int v7; // r0
    int v8; // [sp-Ch] [bp-10h]
    int v9; // [sp-4h] [bp-8h]

    *(v3 + 3) = a2;
    if ( a3 >= 5 )
        return (*(v3 + 8))(result);
    do
    {
        v9 = result;
        v4 = 0;
        do
        {
            v8 = a3;
            v5 = result;
            v6 = a2;
            v7 = sub_80305E4(result - 15 + (*v3 >> 1), a2 + 10 + (v3[1] >> 1));
            (*(v3 + 6))(v7);
            a3 = v8;
            a2 = v6;
            result = v5 + 1;
            ++v4;
        }
        while ( v4 < 32 );
        result = v9;
        a2 = v6 - 1;
        a3 = v8 - 1;
    }
    while ( v8 - 1 > 0 );
    return result;
}


// 0x80307d8
void sub_80307D8()
{
    int v0; // r10
    int v1; // r3
    int v2; // r1
    int v3; // r0

    v1 = *(v0 + oToolkit_CameraPtr);
    v2 = *(v1 + 6);
    v3 = *(v1 + 4) >> 3;
    sub_803086C();
}


// 0x8030808
int sub_8030808()
{
    unsigned __int8 *v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r3
    int v4; // r4
    int v5; // r1
    int result; // r0
    int v7; // ST00_4
    int v8; // r8
    int v9; // r0
    int v10; // [sp-8h] [bp-Ch]
    int v11; // [sp-4h] [bp-8h]

    v2 = *(v1 + oToolkit_CameraPtr);
    v3 = *(v2 + 4) >> 3;
    v4 = *(v2 + 6) >> 3;
    *(v0 + 2) = v3;
    *(v0 + 3) = v4;
    v5 = 0;
    do
    {
        v11 = v3;
        result = 0;
        do
        {
            v7 = result;
            v10 = v5;
            v8 = v3;
            v9 = sub_80305E4(v3 - 15 + (*v0 >> 1), v4 - 10 + (v0[1] >> 1));
            (*(v0 + 6))(v9);
            v3 = v8 + 1;
            v5 = v10;
            result = v7 + 1;
        }
        while ( v7 + 1 < 32 );
        v3 = v11;
        ++v4;
        v5 = v10 + 1;
    }
    while ( v10 + 1 < 32 );
    return result;
}


// 0x803086c
void sub_803086C()
{
    unsigned __int8 *v0; // r5
    int v1; // r4

    v1 = *(v0 + 3);
    sub_8030892(*(v1 + 4) + v1, 1, *v0, v0[1]);
    sub_8030892(*(v1 + 8) + v1, 2, *v0, v0[1]);
}


// 0x8030892
void __fastcall sub_8030892(int a1, int a2, unsigned int a3, unsigned int a4)
{
    int v4; // r8
    int v5; // r9
    int v6; // r7
    int v7; // r6
    signed int v8; // r5
    int v9; // r1
    unsigned __int8 v10; // vf
    int v11; // r1
    unsigned int v12; // [sp+0h] [bp-1Ch]
    unsigned int v13; // [sp+4h] [bp-18h]

    v12 = a3;
    v13 = a4;
    v6 = a1;
    v7 = a2;
    v8 = 0;
    do
    {
        v9 = v5 + v8 - 10;
        v10 = __OFADD__(v9, v13 >> 1);
        v11 = v9 + (v13 >> 1);
        if ( (v11 < 0) ^ v10 || v11 >= v13 )
            call_sub_3005EBA(0, (v5 + v8) & 0x1F, v7, 0);
        else
            sub_80018E0(v4 & 0x1F, (v5 + v8) & 0x1F, v7, (2 * (v4 - 15 + (v12 >> 1)) + 2 * v12 * v11 + v6));
        ++v8;
    }
    while ( v8 < 32 );
}


// 0x80309fc
void nullsub_61()
{
    ;
}


// 0x80309fe
void nullsub_62()
{
    ;
}


// 0x8030a00
int __fastcall EnterMap_RunMapGroupAsmFunction_8030A00(signed int a1)
{
    void **v1; // r1

    if ( a1 >= 240 )
    {
        v1 = &EnterMap_UnkMapGroupJumptable;
        a1 -= 240;
    }
    else if ( a1 >= 128 )
    {
        v1 = &EnterMap_InternetMapGroupJumptable;
        a1 -= 128;
    }
    else
    {
        v1 = &EnterMap_RealWorldMapGroupJumptable;
    }
    return (v1[a1])();
}


// 0x8030a30
int __fastcall LoadGFXAnimsForMapGroup(signed int a1)
{
    void **v1; // r2

    if ( a1 >= 240 )
    {
        v1 = &UnkMapGroupRangeLoadGFXAnimsJumptable;
        a1 -= 240;
    }
    else if ( a1 >= 128 )
    {
        v1 = &InternetMapGroupLoadGFXAnimsJumptable;
        a1 -= 128;
    }
    else
    {
        v1 = &RealWorldMapGroupLoadGFXAnimsJumptable;
    }
    return (v1[a1])();
}


// 0x8030a60
_DWORD *__fastcall sub_8030A60(_DWORD *result)
{
    int v1; // r10
    int v2; // r4
    _DWORD *v3; // ST00_4
    int v4; // r3
    int v5; // r1
    int v6; // r1
    int v7; // r0

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( result != *(v2 + oGameState_Unk_20) )
    {
        *(v2 + oGameState_Unk_20) = result;
        v3 = result;
        sub_80035A2(4u);
        result = v3;
        v5 = 0;
        while ( *result != 255 )
        {
            sub_8030A8C(result, v5, *result, v4);
            v5 = v6 + 1;
            result = (v7 + 4);
        }
    }
    return result;
}


// 0x8030a8c
void __fastcall sub_8030A8C(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    char v5; // [sp+4h] [bp-Ch]
    int v6; // [sp+8h] [bp-8h]

    v5 = a2;
    v6 = a3;
    SpawnOverworldNPCObject(0, a2, a3, a4);
    if ( v4 )
    {
        *(v4 + 16) = v5;
        *(v4 + 96) = v6;
    }
}


// 0x8030aa4
int __fastcall decompressCoordEventData_8030aa4(signed int mapGroup, int mapNumber)
{
    char (***mapPtrs)[4532]; // r3
    char (*v3)[4532]; // ST00_4

    if ( mapGroup >= 128 )
    {
        mapPtrs = &pt_803354C;
        mapGroup -= 128;
    }
    else
    {
        mapPtrs = pt_8033530;
    }
    v3 = mapPtrs[mapGroup][mapNumber];
    SWI_LZ77UnCompReadNormalWrite8bit(&(*v3)[16], &unk_2027A00);
    sub_8030B0C(&unk_2027A00 + *v3);
    sub_8031600(&unk_2027A00 + *&(*v3)[4]);
    sub_803189C(&unk_2027A00 + *&(*v3)[8]);
    return sub_8031A68(&unk_2027A00 + *&(*v3)[12]);
}


// 0x8030b0c
signed int __fastcall sub_8030B0C(_DWORD *a1)
{
    signed int result; // r0

    word_2011D14 = *a1;
    dword_2011D10[0] = (a1 + 1);
    result = 254;
    byte_2011D18 = -2;
    byte_2011D19 = -2;
    return result;
}


// 0x8030b1e
void __fastcall sub_8030B1E(int a1, int a2)
{
    int v2; // r5
    int v3; // r2
    signed int v4; // r3
    unsigned int v5; // r4
    unsigned __int16 *v6; // r6
    int v7; // r7

    if ( *(v2 + 4) )
    {
        v3 = 0;
        v4 = *(v2 + 4);
        do
        {
            v5 = (v3 + v4) >> 1;
            v6 = (*v2 + 4 * v5);
            v7 = *v6;
            if ( a2 == v7 )
                break;
            if ( a2 <= v7 )
                v4 = (v3 + v4) >> 1;
            else
                v3 = v5 + 1;
        }
        while ( v3 < v4 );
        if ( a2 == v7 )
        {
            do
                v6 -= 2;
            while ( v6 >= *v2 && a2 == *v6 );
        }
    }
}


// 0x8030b6a
int __fastcall checkCollision_8030b6a(int a1)
{
    int v1; // r12
    __int16 *v2; // r2
    int v3; // r1
    unsigned __int16 *v4; // r2
    char *v5; // r7
    int v6; // r4
    int v7; // r3
    int v8; // ST00_4
    int v9; // ST04_4
    unsigned __int16 *v10; // ST08_4
    char v11; // zf
    int v12; // r3
    int v13; // r4
    _DWORD *v15; // r0

    dword_200F3D0 = a1;
    byte_2011D1B = 0;
LABEL_2:
    dword_2011D24 = &word_2011D28;
    byte_2011D1A = 0;
    word_2011D16 = 0;
    sub_8030CAC(a1);
    v2 = &word_2011D28;
    dword_2011D20 = &word_2011D28;
    while ( v2 != dword_2011D24 )
    {
        sub_8030B1E(a1, *v2);
        if ( v4 )
        {
            while ( v3 == *v4 )
            {
                v5 = (v4[1] + dword_2011D10[0]);
                v6 = *v5;
                v7 = *(a1 + 10);
                if ( v7 >= v6 && v7 <= v6 + v5[2] )
                {
                    byte_2011D1C = v5[1];
                    if ( !(byte_2011D1C & 0x80)
                        || (v8 = a1, v9 = v3, v10 = v4, TestEventFlag((byte_2011D1C & 0x7F) + 5696), a1 = v8, v3 = v9, v4 = v10, v11) )
                    {
                        a1 = (dword_8030C40[v5[3]])(a1, v3, v4);
                        v13 = byte_2011D1B + v12;
                        byte_2011D1B += v12;
                        if ( v13 >= 4 )
                        {
                            v15 = dword_200F3D0;
                            *dword_200F3D0 = *(dword_200F3D0 + 12);
                            v15[1] = v15[4];
                            v15[2] = v15[5];
                            return 0;
                        }
                        if ( v12 )
                            goto LABEL_2;
                    }
                }
                v4 += 2;
            }
        }
        v2 = (dword_2011D20 + 16);
        dword_2011D20 += 16;
    }
    return v1;
}


// 0x8030cac
void __fastcall sub_8030CAC(int a1)
{
    int v1; // r4
    int v2; // r7
    signed __int16 *v3; // r0
    int v4; // r2
    int v5; // r1
    int v6; // r6
    int v7; // r3
    int v8; // r2
    int v9; // r7
    int v10; // r4
    int v11; // r6
    int v12; // r7
    signed int v13; // r3
    signed int v14; // r0
    int v15; // r5
    int v16; // r7
    int v17; // r6
    int v18; // r4
    signed int v19; // r3
    signed int v20; // r0
    int v21; // r5
    int v22; // r7
    int v23; // r6
    int v24; // r4
    signed int v25; // r3
    signed int v26; // r0
    int v27; // r4
    int v28; // r7
    int v29; // [sp+0h] [bp-Ch]

    v29 = a1;
    v1 = *(a1 + 14);
    v2 = *(a1 + 18);
    sub_8030DA2();
    v4 = v3[7];
    v5 = v3[1] - v4;
    v6 = v3[1] - v4;
    if ( v6 < 0 )
        v6 = v4 - v3[1];
    v7 = v3[9];
    v8 = v3[3] - v7;
    v9 = v3[3] - v7;
    if ( v9 < 0 )
        v9 = v7 - v3[3];
    if ( v6 > v9 )
    {
        v10 = v3[7];
        v11 = v3[1];
        v12 = v3[9];
        v13 = 1;
        v14 = 1;
        if ( v5 < 0 )
        {
            v13 = -1;
            v5 = -v5;
        }
        if ( v8 < 0 )
        {
            v14 = -1;
            v8 = -v8;
        }
        v15 = ~v5;
        while ( 1 )
        {
            v10 += v13;
            if ( v10 == v11 )
                break;
            v15 += v8 + v8;
            if ( v15 >= v5 )
            {
                v12 += v14;
                v15 = v15 - v5 - v5;
            }
            sub_8030DA2();
        }
    }
    else if ( v6 < v9 )
    {
        v16 = v3[9];
        v17 = v3[3];
        v18 = v3[7];
        v19 = 1;
        v20 = 1;
        if ( v5 < 0 )
        {
            v19 = -1;
            v5 = -v5;
        }
        if ( v8 < 0 )
        {
            v20 = -1;
            v8 = -v8;
        }
        v21 = ~v8;
        while ( 1 )
        {
            v16 += v20;
            if ( v16 == v17 )
                break;
            v21 += v5 + v5;
            if ( v21 >= v8 )
            {
                v18 += v19;
                v21 = v21 - v8 - v8;
            }
            sub_8030DA2();
        }
    }
    else if ( v5 )
    {
        v22 = v3[9];
        v23 = v3[3];
        v24 = v3[7];
        v25 = 1;
        v26 = 1;
        if ( v5 < 0 )
            v25 = -1;
        if ( v8 < 0 )
            v26 = -1;
        while ( 1 )
        {
            v22 += v26;
            if ( v22 == v23 )
                break;
            v24 += v25;
            sub_8030DA2();
        }
    }
    v27 = *(v29 + 2);
    v28 = *(v29 + 6);
    sub_8030DA2();
}


// 0x8030da2
void sub_8030DA2()
{
    int v0; // r4
    int v1; // r7
    unsigned int v2; // r7
    int v3; // r0
    int *v4; // r5
    int v5; // [sp+Ch] [bp-4h]

    v2 = ((v1 >> 3) + (byte_2011D19 >> 1)) * 2 * (byte_2011D18 >> 1) + (v0 >> 3) + (byte_2011D18 >> 1);
    if ( word_2011D16 != v2 )
    {
        v3 = byte_2011D1A;
        if ( byte_2011D1A + 1 < 16 )
        {
            word_2011D16 = v2;
            ++byte_2011D1A;
            dword_2011D24 += 16;
            v4 = &dword_2011D10[4 * v3 + 6];
            *v4 = v2;
            v4[1] = v0 & 0xFFFFFFF8;
            v4[2] = v5 & 0xFFFFFFF8;
        }
    }
}


// 0x8030e14
int __fastcall sub_8030E14(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r6
    int v7; // r8
    int v8; // r6
    int v9; // r7
    int v10; // r2
    int v11; // r6
    int v12; // r0
    int v13; // r8
    int v14; // r2
    int v15; // r6
    _DWORD *v16; // r0

    v7 = v6;
    v8 = v5 - v4;
    v9 = a3 - a4;
    v10 = a4 * v4 - a3 * v5;
    if ( v10 + *a1 * (v5 - v4) + a1[1] * v9 >= 0 || v7 != 1 && v10 + a1[3] * v8 + a1[4] * v9 < 0 )
        return 0;
    v11 = -(*a1 * v8 + v10);
    sub_8031048();
    v13 = v9 - *(v12 + 4);
    v15 = -(*(v12 + 4) * v9 + v14);
    sub_8031048();
    return v5 - v4 - *v16;
}


// 0x8030e8c
int __fastcall sub_8030E8C(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r6
    int v7; // r8
    int v8; // r6
    int v9; // r7
    int v10; // r2
    int v11; // r6
    int v12; // r0
    int v13; // r8
    int v14; // r2
    int v15; // r6
    _DWORD *v16; // r0

    v7 = v6;
    v8 = v5 - v4;
    v9 = a3 - a4;
    v10 = a4 * v4 - a3 * v5;
    if ( v10 + *a1 * (v5 - v4) + a1[1] * v9 >= 0 || v7 != 1 && v10 + a1[3] * v8 + a1[4] * v9 < 0 )
        return 0;
    v11 = -(*a1 * v8 + v10);
    sub_8031048();
    v13 = v9 - *(v12 + 4);
    v15 = -(*(v12 + 4) * v9 + v14);
    sub_8031048();
    return v5 - v4 - *v16;
}


// 0x8030f04
int __fastcall sub_8030F04(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r6
    int v7; // r8
    int v8; // r6
    int v9; // r7
    int v10; // r2
    int v11; // r6
    int v12; // r0
    int v13; // r8
    int v14; // r2
    int v15; // r6
    _DWORD *v16; // r0

    v7 = v6;
    v8 = v5 - v4;
    v9 = a3 - a4;
    v10 = a4 * v4 - a3 * v5;
    if ( v10 + *a1 * (v5 - v4) + a1[1] * v9 <= 0 || v7 != 1 && v10 + a1[3] * v8 + a1[4] * v9 > 0 )
        return 0;
    v11 = -(*a1 * v8 + v10);
    sub_8031048();
    v13 = v9 - *(v12 + 4);
    v15 = -(*(v12 + 4) * v9 + v14);
    sub_8031048();
    return v5 - v4 - *v16;
}


// 0x8030f7c
int __fastcall sub_8030F7C(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r6
    int v7; // r8
    int v8; // r6
    int v9; // r7
    int v10; // r2
    int v11; // r6
    int v12; // r0
    int v13; // r8
    int v14; // r2
    int v15; // r6
    _DWORD *v16; // r0

    v7 = v6;
    v8 = v5 - v4;
    v9 = a3 - a4;
    v10 = a4 * v4 - a3 * v5;
    if ( v10 + *a1 * (v5 - v4) + a1[1] * v9 <= 0 || v7 != 1 && v10 + a1[3] * v8 + a1[4] * v9 > 0 )
        return 0;
    v11 = -(*a1 * v8 + v10);
    sub_8031048();
    v13 = v9 - *(v12 + 4);
    v15 = -(*(v12 + 4) * v9 + v14);
    sub_8031048();
    return v5 - v4 - *v16;
}


// 0x8031048
void sub_8031048()
{
    int v0; // r6
    int v1; // r7
    int v2; // r2

    v2 = 0;
    if ( v1 )
    {
        if ( v0 < 0 )
            v0 = -v0;
        if ( v1 < 0 )
            v1 = -v1;
        while ( v0 >= v1 )
        {
            v0 -= v1;
            ++v2;
        }
    }
}


// 0x8031078
void sub_8031078()
{
    int v0; // r6
    int v1; // r7
    int v2; // r2

    v2 = 0;
    if ( v1 )
    {
        if ( v0 < 0 )
            v0 = -v0;
        if ( v1 < 0 )
            v1 = -v1;
        while ( v0 >= v1 )
        {
            v0 -= v1;
            ++v2;
        }
    }
}


// 0x80310b0
int __fastcall sub_80310B0(int a1, int a2)
{
    int result; // r0
    int v3; // r1
    signed int v4; // r3
    int v5; // r5

    result = a1 << 14;
    v3 = a2 << 14;
    v4 = 1;
    if ( !result && !v3 )
        v4 = 0;
    if ( v4 )
    {
        v5 = dword_200F3D0;
        *dword_200F3D0 += result + dword_200F3F8;
        *(v5 + 4) += v3 + dword_200F3FC;
    }
    return result;
}


// 0x80310ec
_DWORD *__fastcall sub_80310EC(_DWORD *result)
{
    int v1; // r5
    _DWORD *v2; // r6
    int v3; // r4
    int v4; // r2
    int v5; // r5

    v3 = *(v1 + 16);
    v4 = 4 * *(v3 + 4);
    v5 = 4 * *(v3 + 8);
    *result = ((*v2 + result[6]) >> 14) - v4;
    result[1] = ((v2[1] + result[7]) >> 14) - v5;
    result[3] = (v2[3] >> 14) - v4;
    result[4] = (v2[4] >> 14) - v5;
    return result;
}


// 0x8031122
_DWORD *sub_8031122()
{
    dword_200F3F8 = 0;
    dword_200F3FC = 0;
    return sub_80310EC(&dword_200F3E0);
}


// 0x8031136
_DWORD *__fastcall sub_8031136(_DWORD *a1)
{
    _DWORD *v1; // r6

    v1 = a1;
    dword_200F3F8 = *v1 - v1[3];
    dword_200F3FC = v1[1] - v1[4];
    if ( dword_200F3F8 <= 0 || dword_200F3FC <= 0 || dword_200F3F8 != dword_200F3FC )
    {
        dword_200F3F8 = 0;
        dword_200F3FC = 0;
    }
    return sub_80310EC(&dword_200F3E0);
}


// 0x8031176
_DWORD *__fastcall sub_8031176(_DWORD *a1)
{
    _DWORD *v1; // r6

    v1 = a1;
    dword_200F3F8 = *v1 - v1[3];
    dword_200F3FC = v1[1] - v1[4];
    if ( dword_200F3F8 >= 0 || dword_200F3FC >= 0 || dword_200F3F8 != dword_200F3FC )
    {
        dword_200F3F8 = 0;
        dword_200F3FC = 0;
    }
    return sub_80310EC(&dword_200F3E0);
}


// 0x80311b6
_DWORD *__fastcall sub_80311B6(_DWORD *a1)
{
    _DWORD *v1; // r6

    v1 = a1;
    dword_200F3F8 = *v1 - v1[3];
    dword_200F3FC = v1[1] - v1[4];
    if ( dword_200F3F8 && dword_200F3FC )
    {
        dword_200F3F8 = 0;
        dword_200F3FC = 0;
    }
    return sub_80310EC(&dword_200F3E0);
}


// 0x80311f4
__int64 __fastcall sub_80311F4(__int64 a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    _DWORD *v3; // r0
    int v4; // r1
    int v5; // r0
    int v6; // r1
    __int64 v8; // [sp+0h] [bp-14h]

    v8 = a1;
    v1 = sub_8031122();
    if ( sub_8031570(v1, v2, 0, 32) )
    {
        v3 = sub_80311B6(v8);
        v5 = sub_8030E14(v3, v4, 0, 32);
        sub_80310B0(-(-v5 >> 1), -(-v6 >> 1));
    }
    return v8;
}


// 0x803123e
void sub_803123E()
{
    _DWORD *v0; // r0
    int v1; // r1
    unsigned int v2; // r0
    int v3; // r1

    v0 = sub_8031122();
    v2 = sub_8030E8C(v0, v1, 0, 32);
    sub_80310B0(v2 >> 1, v3 >> 1);
}


// 0x8031264
void sub_8031264()
{
    _DWORD *v0; // r0
    int v1; // r1
    int v2; // r0
    unsigned int v3; // r1

    v0 = sub_8031122();
    v2 = sub_8030F04(v0, v1, 0, 32);
    sub_80310B0(-(-v2 >> 1), v3 >> 1);
}


// 0x803128e
__int64 __fastcall sub_803128E(__int64 a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    _DWORD *v3; // r0
    int v4; // r1
    unsigned int v5; // r0
    unsigned int v6; // r1
    __int64 v8; // [sp+0h] [bp-14h]

    v8 = a1;
    v1 = sub_8031122();
    if ( sub_80315DC(v1, v2, 0, 32) )
    {
        v3 = sub_80311B6(v8);
        v5 = sub_8030F7C(v3, v4, 0, 32);
        sub_80310B0(v5 >> 1, v6 >> 1);
    }
    return v8;
}


// 0x80312d0
void __fastcall sub_80312D0(_DWORD *a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r1

    v1 = sub_80311B6(a1);
    v3 = sub_8030E14(v1, v2, 0, 32);
    sub_80310B0(-(-v3 >> 1), -(-v4 >> 1));
}


// 0x8031302
void sub_8031302()
{
    _DWORD *v0; // r0
    int v1; // r1
    unsigned int v2; // r0
    int v3; // r1

    v0 = sub_8031122();
    v2 = sub_8030E8C(v0, v1, 0, 32);
    sub_80310B0(v2 >> 1, -(-v3 >> 1));
}


// 0x8031330
void sub_8031330()
{
    _DWORD *v0; // r0
    int v1; // r1
    int v2; // r0
    unsigned int v3; // r1

    v0 = sub_8031122();
    v2 = sub_8030F04(v0, v1, 0, 32);
    sub_80310B0(-(-v2 >> 1), v3 >> 1);
}


// 0x803135e
void __fastcall sub_803135E(_DWORD *a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    unsigned int v3; // r0
    unsigned int v4; // r1

    v1 = sub_80311B6(a1);
    v3 = sub_8030F7C(v1, v2, 0, 32);
    sub_80310B0(v3 >> 1, v4 >> 1);
}


// 0x8031388
void __fastcall sub_8031388(_DWORD *a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_8031136(a1);
    v3 = sub_8030E14(v1, v2, -1, -1);
    sub_80310B0(v3, 0);
}


// 0x80313b0
void __fastcall sub_80313B0(_DWORD *a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_8031176(a1);
    v3 = sub_8030E8C(v1, v2, 32, 32);
    sub_80310B0(v3, 0);
}


// 0x80313d4
void __fastcall sub_80313D4(_DWORD *a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    int v3; // r1

    v1 = sub_8031136(a1);
    sub_8030F04(v1, v2, 32, 0);
    sub_80310B0(0, v3);
}


// 0x80313fc
void __fastcall sub_80313FC(_DWORD *a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    int v3; // r1

    v1 = sub_8031176(a1);
    sub_8030F7C(v1, v2, 0, 32);
    sub_80310B0(0, v3);
}


// 0x8031420
void __fastcall sub_8031420(__int64 a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r3
    _DWORD *v5; // r0
    int v6; // r1
    int v7; // r1
    _DWORD *v8; // [sp+0h] [bp-14h]

    v8 = a1;
    v1 = sub_8031136(a1);
    v3 = sub_8030E14(v1, v2, -1, -1);
    sub_80310B0(v3, 0);
    if ( v4 != 1 )
    {
        v5 = sub_8031136(v8);
        sub_8030F04(v5, v6, 32, 0);
        sub_80310B0(0, v7);
    }
}


// 0x8031478
void __fastcall sub_8031478(__int64 a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r3
    _DWORD *v5; // r0
    int v6; // r1
    int v7; // r1
    _DWORD *v8; // [sp+0h] [bp-14h]

    v8 = a1;
    v1 = sub_8031176(a1);
    v3 = sub_8030E8C(v1, v2, 32, 32);
    sub_80310B0(v3, 0);
    if ( v4 != 1 )
    {
        v5 = sub_8031136(v8);
        sub_8030F04(v5, v6, 32, 0);
        sub_80310B0(0, v7);
    }
}


// 0x80314cc
void __fastcall sub_80314CC(__int64 a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r3
    _DWORD *v5; // r0
    int v6; // r1
    int v7; // r1
    _DWORD *v8; // [sp+0h] [bp-14h]

    v8 = a1;
    v1 = sub_8031136(a1);
    v3 = sub_8030E14(v1, v2, -1, -1);
    sub_80310B0(v3, 0);
    if ( v4 != 1 )
    {
        v5 = sub_8031176(v8);
        sub_8030F7C(v5, v6, 0, 32);
        sub_80310B0(0, v7);
    }
}


// 0x8031520
void __fastcall sub_8031520(__int64 a1)
{
    _DWORD *v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r3
    _DWORD *v5; // r0
    int v6; // r1
    int v7; // r1
    _DWORD *v8; // [sp+0h] [bp-14h]

    v8 = a1;
    v1 = sub_8031176(a1);
    v3 = sub_8030E8C(v1, v2, 32, 32);
    sub_80310B0(v3, 0);
    if ( v4 != 1 )
    {
        v5 = sub_8031176(v8);
        sub_8030F7C(v5, v6, 0, 32);
        sub_80310B0(0, v7);
    }
}


// 0x8031570
BOOL __fastcall sub_8031570(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5

    return a4 * v4 - a3 * v5 + *a1 * (v5 - v4) + a1[1] * (a3 - a4) < 0;
}


// 0x8031594
BOOL __fastcall sub_8031594(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5

    return a4 * v4 - a3 * v5 + *a1 * (v5 - v4) + a1[1] * (a3 - a4) < 0;
}


// 0x80315b8
BOOL __fastcall sub_80315B8(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5

    return a4 * v4 - a3 * v5 + *a1 * (v5 - v4) + a1[1] * (a3 - a4) > 0;
}


// 0x80315dc
BOOL __fastcall sub_80315DC(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5

    return a4 * v4 - a3 * v5 + *a1 * (v5 - v4) + a1[1] * (a3 - a4) > 0;
}


// 0x8031600
signed int __fastcall sub_8031600(_DWORD *a1)
{
    signed int result; // r0

    word_2011A24 = *a1;
    dword_2011A20 = (a1 + 1);
    result = 254;
    byte_2011A26 = -2;
    byte_2011A27 = -2;
    return result;
}


// 0x8031612
int __fastcall checkZCoordModifiers_8031612(int a1)
{
    int v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r1
    unsigned __int16 *v5; // r2
    char *v6; // r3
    signed int v7; // r4
    int v8; // r6
    int result; // r0

    dword_200F3D0 = a1;
    v1 = sub_80316F8(a1);
    sub_8030B1E(v1, v2);
    if ( !v5 )
        goto LABEL_16;
    v6 = 0;
    while ( v4 == *v5 )
    {
        v7 = *(v5[1] + dword_2011A20);
        if ( *(v3 + 10) >= v7 && (!v6 || *v6 <= v7) )
            v6 = (v5[1] + dword_2011A20);
        v5 += 2;
    }
    if ( v6 && (dword_2011A34 = v6, v8 = v6[3], v8 != 255) )
        result = (dword_8031690[v8])();
    else
LABEL_16:
        result = 0;
    return result;
}


// 0x80316f8
int __fastcall sub_80316F8(int result)
{
    int v1; // r5
    int v2; // r2
    int v3; // r1

    *(v1 + 8) = ((*(result + 6) >> 3) + (*(v1 + 7) >> 1)) * 2 * (*(v1 + 6) >> 1) + (*(result + 2) >> 3) + (*(v1 + 6) >> 1);
    v2 = *(result + 6);
    *(v1 + 12) = *(result + 2) & 0xFFFFFFF8;
    *(v1 + 16) = v2 & 0xFFFFFFF8;
    v3 = *(v1 + 8);
    return result;
}


// 0x803172e
int *__fastcall sub_803172E(_DWORD *a1)
{
    int v1; // r5
    _DWORD *v2; // r6
    int *result; // r0
    int v4; // r2
    int v5; // r5

    v2 = a1;
    result = &dword_200F3E0;
    v4 = 2 * *(v1 + 12);
    v5 = 2 * *(v1 + 16);
    dword_200F3E0 = (*v2 >> 15) - v4;
    dword_200F3E4 = (v2[1] >> 15) - v5;
    dword_200F3EC = (v2[3] >> 15) - v4;
    dword_200F3F0 = (v2[4] >> 15) - v5;
    return result;
}


// 0x8031760
int __fastcall sub_8031760(int a1)
{
    int v1; // r1
    int result; // r0
    int v3; // r3

    if ( a1 == 1 )
    {
        result = *dword_2011A34;
        v1 = *(dword_2011A34 + 2);
    }
    else
    {
        result = *dword_2011A34;
    }
    v3 = *(dword_2011A34 + 1);
    return result;
}


// 0x8031784
int sub_8031784()
{
    return 0;
}


// 0x803178a
__int64 __fastcall sub_803178A(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r1

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 4, 4);
    return (sub_8031760(v3) + v4);
}


// 0x80317a6
__int64 __fastcall sub_80317A6(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r1

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 8, 8);
    return (sub_8031760(v3) + v4);
}


// 0x80317c2
__int64 __fastcall sub_80317C2(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r1

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 0, 16);
    return (sub_8031760(v3) + v4);
}


// 0x80317de
__int64 __fastcall sub_80317DE(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r1

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 0, 16);
    return (sub_8031760(v3) + v4);
}


// 0x80317fa
__int64 __fastcall sub_80317FA(int a1, int a2)
{
    return (sub_8031760(1) + a2);
}


// 0x8031808
int __fastcall sub_8031808(_DWORD *a1)
{
    int *v1; // ST00_4
    int v2; // r0
    int v3; // r1
    char v4; // r3

    v1 = sub_803172E(a1);
    v2 = sub_8031760(1);
    return (2 * (v2 + v3) - (*v1 >> v4)) >> 1;
}


// 0x803182a
int __fastcall sub_803182A(_DWORD *a1)
{
    int *v1; // ST00_4
    int v2; // r0
    int v3; // r1
    char v4; // r3

    v1 = sub_803172E(a1);
    v2 = sub_8031760(1);
    return (2 * (v2 + v3 - (8 >> v4)) + (*v1 >> v4)) >> 1;
}


// 0x8031852
int __fastcall sub_8031852(_DWORD *a1)
{
    int *v1; // ST00_4
    int v2; // r0
    int v3; // r1
    char v4; // r3

    v1 = sub_803172E(a1);
    v2 = sub_8031760(1);
    return (2 * (v2 + v3) - (v1[1] >> v4)) >> 1;
}


// 0x8031874
int __fastcall sub_8031874(_DWORD *a1)
{
    int *v1; // ST00_4
    int v2; // r0
    int v3; // r1
    char v4; // r3

    v1 = sub_803172E(a1);
    v2 = sub_8031760(1);
    return (2 * (v2 + v3 - (8 >> v4)) + (v1[1] >> v4)) >> 1;
}


// 0x803189c
signed int __fastcall sub_803189C(_DWORD *a1)
{
    signed int result; // r0

    word_2013944 = *a1;
    dword_2013940 = (a1 + 1);
    result = 254;
    byte_2013946 = -2;
    byte_2013947 = -2;
    return result;
}


// 0x80318b0
int __fastcall checkLayerPriority_80318b0(int a1)
{
    int v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r1
    unsigned __int16 *v5; // r2
    char *v6; // r7
    int v7; // r4
    int v8; // r6

    dword_200F3D0 = a1;
    v1 = sub_80316F8(a1);
    sub_8030B1E(v1, v2);
    if ( v5 )
    {
        while ( v4 == *v5 )
        {
            v6 = (v5[1] + dword_2013940);
            v7 = *v6;
            v8 = *(v3 + 10);
            if ( v8 >= v7 && v8 <= v7 + v6[2] )
            {
                dword_2013954 = v5[1] + dword_2013940;
                return (dword_8031918[v6[3]])();
            }
            v5 += 2;
        }
    }
    return 2;
}


// 0x8031980
signed int __fastcall sub_8031980(int a1)
{
    signed int result; // r0

    if ( a1 == 1 )
        result = 3;
    else
        result = 2;
    return result;
}


// 0x8031998
int sub_8031998()
{
    return 0;
}


// 0x803199e
signed int __fastcall sub_803199E(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 4, 4);
    return sub_8031980(v3);
}


// 0x80319b6
signed int __fastcall sub_80319B6(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 8, 8);
    return sub_8031980(v3);
}


// 0x80319ce
signed int __fastcall sub_80319CE(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 0, 16);
    return sub_8031980(v3);
}


// 0x80319e6
signed int __fastcall sub_80319E6(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 0, 16);
    return sub_8031980(v3);
}


// 0x80319fe
signed int __fastcall sub_80319FE(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031570(v1, v2, 0, 16);
    return sub_8031980(v3);
}


// 0x8031a16
signed int __fastcall sub_8031A16(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 0, 16);
    return sub_8031980(v3);
}


// 0x8031a2e
signed int __fastcall sub_8031A2E(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 0, 16);
    return sub_8031980(v3);
}


// 0x8031a46
signed int __fastcall sub_8031A46(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315DC(v1, v2, 0, 16);
    return sub_8031980(v3);
}


// 0x8031a5e
signed int sub_8031A5E()
{
    return sub_8031980(1);
}


// 0x8031a68
signed int __fastcall sub_8031A68(_DWORD *a1)
{
    signed int result; // r0

    word_2013924 = *a1;
    dword_2013920 = (a1 + 1);
    result = 254;
    byte_2013926 = -2;
    byte_2013927 = -2;
    return result;
}


// 0x8031a7a
signed int __fastcall checkCoordinateTrigger_8031a7a(int a1)
{
    int v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r1
    unsigned __int16 *v5; // r2
    char *v6; // r7
    int v7; // r4
    int v8; // r6
    int v9; // r0
    signed int v10; // r3
    bool v11; // zf
    signed int result; // r0
    signed int v13; // ST00_4
    int v14; // [sp-Ch] [bp-2Ch]
    int v15; // [sp-8h] [bp-28h]
    unsigned __int16 *v16; // [sp-4h] [bp-24h]

    dword_200F3D0 = a1;
    v1 = sub_80316F8(a1);
    sub_8030B1E(v1, v2);
    if ( v5 )
    {
        while ( v4 == *v5 )
        {
            v6 = (v5[1] + dword_2013920);
            v7 = *v6;
            v8 = *(v3 + 10);
            if ( v8 >= v7 && v8 <= v7 + v6[2] )
            {
                dword_2013934 = v5[1] + dword_2013920;
                v14 = v3;
                v15 = v4;
                v16 = v5;
                v9 = (jt_8031B10[v6[3]])();
                v10 = v9;
                v11 = v9 == 0;
                v3 = v14;
                v4 = v15;
                v5 = v16;
                if ( !v11 )
                {
                    result = v10;
                    if ( v10 <= 14 )
                    {
                        v13 = v10;
                        TestEventFlag(v10 + 5871);
                        result = v13;
                        if ( v11 )
                            result = 0;
                    }
                    return result;
                }
            }
            v5 += 2;
        }
    }
    return 0;
}


// 0x8031b7c
int __fastcall sub_8031B7C(int a1)
{
    int result; // r0

    if ( a1 == 1 )
        result = *(dword_2013934 + 1);
    else
        result = 0;
    return result;
}


// 0x8031b94
int sub_8031B94()
{
    return 0;
}


// 0x8031b9a
int __fastcall sub_8031B9A(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 4, 4);
    return sub_8031B7C(v3);
}


// 0x8031bb2
int __fastcall sub_8031BB2(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 8, 8);
    return sub_8031B7C(v3);
}


// 0x8031bca
int __fastcall sub_8031BCA(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 0, 16);
    return sub_8031B7C(v3);
}


// 0x8031be2
int __fastcall sub_8031BE2(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 0, 16);
    return sub_8031B7C(v3);
}


// 0x8031bfa
int __fastcall sub_8031BFA(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031570(v1, v2, 0, 16);
    return sub_8031B7C(v3);
}


// 0x8031c12
int __fastcall sub_8031C12(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 0, 16);
    return sub_8031B7C(v3);
}


// 0x8031c2a
int __fastcall sub_8031C2A(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 1, 16);
    return sub_8031B7C(v3);
}


// 0x8031c42
int __fastcall sub_8031C42(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315DC(v1, v2, 0, 14);
    return sub_8031B7C(v3);
}


// 0x8031c5a
int sub_8031C5A()
{
    return sub_8031B7C(1);
}


// 0x8031c64
int __fastcall sub_8031C64(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 2, 2);
    return sub_8031B7C(v3);
}


// 0x8031c7c
int __fastcall sub_8031C7C(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 14, 14);
    return sub_8031B7C(v3);
}


// 0x8031c94
int __fastcall sub_8031C94(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_80315B8(v1, v2, 0, 16);
    return sub_8031B7C(v3);
}


// 0x8031cac
int __fastcall sub_8031CAC(_DWORD *a1)
{
    int *v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = sub_803172E(a1);
    v3 = sub_8031594(v1, v2, 0, 16);
    return sub_8031B7C(v3);
}


