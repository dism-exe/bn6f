// 0x800ed80
int __fastcall sub_800ED80(int result)
{
    *byte_203F6A0 &= ~*(result + 124);
    return result;
}


// 0x800ed90
int __fastcall sub_800ED90(int a1)
{
    int v1; // r5
    char *v2; // r0
    unsigned __int16 *v3; // r7
    int v4; // r2
    int v5; // r0
    int v6; // r1
    int result; // r0
    int v8; // r3

    v1 = a1;
    if ( sub_800F29C(*(a1 + 40)) == 2 )
    {
        v2 = sub_8010018(*(v1 + 22));
        v3 = &v2[2 * *v2 + 2];
        v4 = v3[12] + sub_800EF34(*v3, 0);
        v5 = v3[18];
        v6 = v3[6];
        result = *v3;
    }
    else
    {
        result = *(v1 + 42);
    }
    v8 = *(v1 + 26);
    return result;
}


// 0x800edd0
int __fastcall sub_800EDD0(int a1, int a2)
{
    int v2; // r5
    char *v3; // r0
    char *v4; // r4
    int v5; // r6
    char *v6; // r7
    int v7; // r2
    int v8; // r1
    int result; // r0
    int v10; // r4
    int v11; // r3
    int v12; // [sp+0h] [bp-14h]

    v12 = a2;
    v2 = a1;
    if ( sub_800F29C(*(a1 + 40)) == 2 )
    {
        v3 = sub_8010018(*(v2 + 22));
        v4 = v3;
        v5 = *v3;
        v6 = &v3[2 * v5 + 2];
        v7 = *&v3[2 * v5 + 26] + sub_800EF34(*v6, v12) + *&v3[2 * v5 + 38];
        v8 = *(v6 + 6);
        result = *v6;
        v10 = (v4[v5 + 62] << 8) + v4[v5 + 68];
    }
    else
    {
        result = *(v2 + 42);
        v11 = *(v2 + 26);
    }
    return result;
}


// 0x800ee26
int __fastcall sub_800EE26(int a1)
{
    int v1; // r7
    int v2; // r5
    unsigned __int16 *v3; // r6
    char v4; // r0
    int v5; // r2
    int v6; // r4
    int result; // r0
    int v8; // r3
    int v9; // [sp-8h] [bp-18h]

    v2 = a1;
    if ( sub_800F29C(*(a1 + 40)) == 2 )
    {
        v3 = sub_802E070(*(v2 + 22));
        sub_800EE98();
        v9 = sub_800EF34(v3[26], 0);
        *(v1 + 29) = *(getChip8021DA8(v3[26]) + 15);
        sub_80109A4(v3[26], *(v2 + 22));
        v4 = *(getChip8021DA8(v3[26]) + 9);
        if ( v4 & 2 )
        {
            v5 = v9 + v3[27];
            v3[27] = 0;
        }
        if ( v4 & 4 )
        {
            v6 = v3[28];
            v3[28] = 0;
        }
        result = v3[26];
    }
    else
    {
        result = *(v2 + 42);
        v8 = *(v2 + 26);
    }
    return result;
}


// 0x800ee98
void sub_800EE98()
{
    int v0; // r5
    int v1; // r6
    int v2; // r4
    int v3; // r1
    int v4; // r2
    _BYTE *v5; // r4
    int v6; // r0
    int v7; // r1
    unsigned __int8 v8; // vf
    int v9; // r1

    v2 = sub_802E830(*(v0 + 22), *(v1 + 52));
    if ( !battle_networkInvert(*(v0 + 22)) )
    {
        sub_801E2BA(v2);
        PlaySoundEffect(141, v3, v4);
    }
    v5 = getChip8021DA8(*(v1 + 52));
    if ( !(v5[offsetof(ChipData, unk_16)] & 0x80) )
    {
        v6 = *&byte_800EEF8[2 * v5[offsetof(ChipData, elemIdx)]];
        word_200F3C4[v1] = v6;
        v7 = *(v1 + 40);
        v8 = __OFSUB__(v7, v6);
        v9 = v7 - v6;
        if ( (v9 < 0) ^ v8 )
            LOWORD(v9) = 0;
        *(v1 + 40) = v9;
    }
}


// 0x800ef02
int __fastcall sub_800EF02(int a1)
{
    int v1; // r5
    int v2; // r6
    int result; // r0
    int v4; // r3

    v2 = a1;
    if ( sub_800F29C(*(v1 + 40)) == 2 )
    {
        sub_800EF34(v2, 0);
        sub_80109A4(v2, *(v1 + 22));
        result = v2;
    }
    else
    {
        result = *(v1 + 42);
        v4 = *(v1 + 26);
    }
    return result;
}


// 0x800ef34
int __fastcall sub_800EF34(int a1, int a2)
{
    char *v2; // r4
    signed __int64 v3; // r6
    __int64 v4; // r0
    int *v5; // r0
    int v6; // r0
    _BYTE *v7; // r0

    v2 = a1;
    v3 = 0LL;
    if ( !sub_8013774(a1, 41) )
    {
        if ( v2 != 0xFFFF )
        {
            v5 = sub_8013774(0xFFFF, 44);
            if ( v5 != &byte_0[1] && v5 != (&dword_C + 1) )
            {
                if ( v5 != (&dword_C + 2) && v5 != &byte_0[2] )
                {
                    if ( v5 != (&dword_C + 3) && v5 != &byte_0[3] )
                    {
                        if ( v5 != dword_14 && v5 != &dword_8 )
                        {
                            if ( v5 != &dword_10 && v5 != dword_4 )
                            {
                                if ( v5 == (dword_14 + 1) || v5 == (&dword_8 + 1) )
                                {
                                    v5 = getChip8021DA8(v2);
                                    if ( *(v5 + 9) & 2 )
                                    {
                                        if ( *(v5 + 6) == 9 && !(*(v5 + 9) & 1) )
                                        {
                                            v3 = 34359738378LL;
                                            goto LABEL_47;
                                        }
                                    }
                                }
                            }
                            else
                            {
                                v5 = getChip8021DA8(v2);
                                if ( *(v5 + 9) & 2 && *(v5 + 6) == 6 )
                                {
                                    v3 = 34359738398LL;
                                    goto LABEL_47;
                                }
                            }
                        }
                        else
                        {
                            v5 = getChip8021DA8(v2);
                            if ( *(v5 + 9) & 2 && *(v5 + 6) == 8 && !(*(v5 + 9) & 1) )
                            {
                                v3 = 30064771082LL;
                                goto LABEL_47;
                            }
                        }
                    }
                    else
                    {
                        v5 = getChip8021DA8(v2);
                        if ( *(v5 + 9) & 2 && *(v5 + 6) == 5 && !(*(v5 + 9) & 1) )
                        {
                            v3 = 25769803826LL;
                            goto LABEL_47;
                        }
                    }
                }
                else
                {
                    v5 = getChip8021DA8(v2);
                    if ( *(v5 + 9) & 2 && *(v5 + 6) == 2 && !(*(v5 + 9) & 1) )
                    {
                        v3 = 25769803826LL;
                        goto LABEL_47;
                    }
                }
            }
            else
            {
                v5 = getChip8021DA8(v2);
                if ( *(v5 + 9) & 2 && !*(v5 + 6) && !(*(v5 + 9) & 1) )
                {
                    v3 = 8589934642LL;
                    goto LABEL_47;
                }
            }
            v6 = sub_8013774(v5, 44);
            if ( v6 >= 11 && v6 <= 22 )
            {
                v7 = getChip8021DA8(v2);
                if ( v7[9] & 2 )
                {
                    if ( v7[6] == 10 && !(v7[9] & 1) && sub_802D234() != 1 )
                        v3 = 38654705694LL;
                }
            }
        }
LABEL_47:
        v4 = v3;
        return sub_800F1DC(v4, SHIDWORD(v4), v2);
    }
    v4 = sub_800F09E(v2);
    return sub_800F1DC(v4, SHIDWORD(v4), v2);
}


// 0x800f09e
__int64 __fastcall sub_800F09E(int a1)
{
    int v1; // r4
    __int64 v2; // r6
    int v3; // r0
    _BYTE *v4; // r0
    _BYTE *v5; // r0
    _BYTE *v6; // r0
    _BYTE *v7; // r0
    _BYTE *v8; // r0
    _BYTE *v9; // r0
    _BYTE *v10; // r0
    int v11; // r0

    v1 = a1;
    v2 = 0LL;
    if ( a1 != 0xFFFF )
    {
        v3 = sub_8013774(0xFFFF, 41);
        switch ( v3 )
        {
            case 1:
                v4 = getChip8021DA8(v1);
                if ( !(v4[9] & 2) || v4[6] || v4[9] & 1 )
                    return v2;
                HIDWORD(v2) = 12;
                break;
            case 2:
                v5 = getChip8021DA8(v1);
                if ( !(v5[9] & 2) || v5[6] != 2 || v5[9] & 1 )
                    return v2;
                HIDWORD(v2) = 13;
                break;
            case 3:
                v6 = getChip8021DA8(v1);
                if ( !(v6[9] & 2) || v6[6] != 5 || v6[9] & 1 )
                    return v2;
                HIDWORD(v2) = 14;
                break;
            case 4:
                v7 = getChip8021DA8(v1);
                if ( !(v7[9] & 2) || v7[6] != 6 )
                    return v2;
                HIDWORD(v2) = 15;
                break;
            case 8:
                v8 = getChip8021DA8(v1);
                if ( !(v8[9] & 2) || v8[6] != 8 || v8[9] & 1 )
                    return v2;
                HIDWORD(v2) = 16;
                break;
            case 9:
                v9 = getChip8021DA8(v1);
                if ( !(v9[9] & 2) || v9[6] != 9 || v9[9] & 1 )
                    return v2;
                HIDWORD(v2) = 17;
                break;
            case 10:
                v10 = getChip8021DA8(v1);
                if ( !(v10[9] & 2) || v10[6] != 9 || v10[9] & 1 )
                    return v2;
                HIDWORD(v2) = 18;
                break;
            default:
                return v2;
        }
        v11 = sub_800F49E();
        if ( v11 != 255 )
            LODWORD(v2) = byte_8021300[15 * (HIDWORD(v2) - 12) + v11];
    }
    return v2;
}


// 0x800f1dc
int __fastcall sub_800F1DC(int result, int a2, char *a3)
{
    int v3; // r5
    int v4; // r3
    signed int v5; // r2

    if ( a3 == &byte_150 || a3 >= 95 && a3 <= 97 )
    {
        v4 = *(v3 + 84);
        v5 = *(v4 + 6);
        if ( *(v4 + 6) && v5 < 16 && (v5 != 8 || *(v4 + 22)) )
            result += 50;
    }
    return result;
}


// 0x800f214
char (*__fastcall enemy_getStruct1(int a1))[8]
{
    char *v1; // r0

    v1 = sub_80182B4(a1);
    return (**(&off_800F230 + v1[1]))[v1[2]];
}


// 0x800f23c
char *__fastcall enemy_getStruct2(int a1)
{
    char *v1; // r0

    v1 = sub_80182B4(a1);
    return &(*(**(&off_800F260 + v1[1]))[v1[2]])[6 * *v1];
}


// 0x800f26c
int __fastcall sub_800F26C(int a1)
{
    char (*v1)[8]; // r0
    int v2; // r1
    int result; // r0
    unsigned __int8 *v4; // r3
    int v5; // r1
    int v6; // r2
    int v7; // r4
    int v8; // r3

    if ( (a1 - 205) <= 0x32 )
    {
        v4 = &byte_8021220[5 * (a1 - 205)];
        result = *v4;
        v5 = v4[1];
        v6 = v4[2];
        v7 = v4[4];
        v8 = v4[3];
    }
    else
    {
        v1 = enemy_getStruct1(a1);
        v2 = (*v1)[1];
        result = *v1;
    }
    return result;
}


// 0x800f29c
int __fastcall sub_800F29C(int a1)
{
    char *v1; // r0
    int v2; // r2
    int v3; // r1

    v1 = sub_80182B4(a1);
    v2 = *v1;
    v3 = v1[2];
    return v1[1];
}


// 0x800f2aa
void __fastcall sub_800F2AA(int a1)
{
    int v1; // r5
    int v2; // r1

    v2 = *(v1 + 40);
    nullsub_3();
}


// 0x800f2b4
void nullsub_3()
{
    ;
}


// 0x800f2b6
void __usercall object_setAnimation(Battle *obj@<R5>)
{
    int v1; // r1
    u8 v2; // r0

    v1 = obj->nameID;
    nullsub_3();
    obj->currAnimation = v2;
    obj->currAnimationCpy = -1;
}


// 0x800f2c6
AI *sub_800F2C6()
{
    Battle *v0; // r5
    int v1; // r0
    AI *result; // r0
    int v3; // r0
    char v4; // r1

    v1 = object_getFlip(v0);
    sprite_setFlip(v0, v1);
    result = v0->ai;
    if ( result )
    {
        if ( result->naviVirusIndicator == 2 )
        {
            v3 = sub_8018856(3);
            result = sub_801DC06(v3, -v4);
        }
        else
        {
            result = sub_801DBD4();
        }
    }
    return result;
}


// 0x800f2f0
AI *sub_800F2F0()
{
    int v0; // r5

    return sub_800F2FC(*(*(v0 + 88) + 120));
}


// 0x800f2fc
AI *__fastcall sub_800F2FC(int a1)
{
    unsigned __int8 *v1; // r5
    int v2; // r1
    int v3; // r2
    AI *result; // r0
    unsigned __int8 v5; // vf
    int v6; // r1

    v2 = *(a1 + 18);
    v3 = v1[18];
    result = 0;
    v5 = __OFSUB__(v2, v3);
    v6 = v2 - v3;
    if ( v6 )
    {
        if ( ((v6 < 0) ^ v5) | (v6 == 0) )
            LOBYTE(result) = 1;
        v1[23] = result ^ v1[22];
        result = sub_800F2C6();
    }
    return result;
}


// 0x800f318
int __fastcall sub_800F318(int result)
{
    int v1; // r5
    int v2; // r1

    v2 = *(v1 + 88);
    if ( v2 )
        *(v2 + 120) = result;
    return result;
}


// 0x800f322
signed int sub_800F322()
{
    int v0; // r5
    signed int result; // r0

    result = *(v0 + 26);
    if ( *(v0 + 26) )
    {
        *(v0 + 26) = --result;
        if ( !result )
        {
            result = -1;
            *(v0 + 42) = -1;
        }
    }
    return result;
}


// 0x800f334
int sub_800F334()
{
    int v0; // r5
    _BYTE *v1; // r0
    int v2; // r2
    int v3; // r3
    int result; // r0

    v1 = *(v0 + 88);
    v2 = v1[22];
    v3 = v1[3];
    if ( *v1 )
        result = byte_800F354[v2] * v3;
    else
        result = v2 * v3;
    return result;
}


// 0x800f35c
int sub_800F35C()
{
    return sub_800F420(off_800F36C);
}


// 0x800f378
int sub_800F378()
{
    return sub_800F420(off_800F388);
}


// 0x800f394
int sub_800F394()
{
    return sub_800F420(off_800F3A4);
}


// 0x800f3b0
int sub_800F3B0()
{
    return sub_800F420(off_800F3C0);
}


// 0x800f3cc
int sub_800F3CC()
{
    return sub_800F420(off_800F3DC);
}


// 0x800f3e8
int sub_800F3E8()
{
    return sub_800F420(off_800F3F8);
}


// 0x800f404
int sub_800F404()
{
    return sub_800F420(off_800F414);
}


// 0x800f420
int __fastcall sub_800F420(int a1)
{
    int v1; // r5

    return (*(*(a1 + 4 * **(v1 + 88)) + 4 * *(*(v1 + 88) + 1)))();
}


// 0x800f436
signed int __fastcall sub_800F436(int a1, int a2, int a3)
{
    Battle *v3; // r5
    int v4; // r6
    int v5; // r7
    int v6; // r4
    char v7; // zf
    int v9; // [sp+0h] [bp-14h]

    v9 = a3;
    v4 = a1;
    v5 = a2;
    v6 = object_getFrontDirection(v3);
    do
    {
        v4 += v6;
        object_isValidPanel(v4, v5);
        if ( v7 )
            return 0;
    }
    while ( !(object_getPanelParameters(v4, v5) & v9) );
    return 1;
}


// 0x800f46c
int sub_800F46C()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    v1 = sub_802D26A();
    if ( v1 == 56 || v1 == 48 || v1 == 60 )
        result = 0;
    else
        result = *(v0 + 23);
    return result;
}


// 0x800f486
BOOL __fastcall sub_800F486(int a1)
{
    return a1 != 211 && a1 != 218 && a1 != 233 && a1 != 234;
}


// 0x800f49e
int sub_800F49E()
{
    int v0; // r5

    return dword_203CFA0[*(v0 + 22)];
}


// 0x800f4a8
int sub_800F4A8()
{
    int v0; // r5

    return dword_203F7E0[*(v0 + 22)];
}


// 0x800f4b2
void __fastcall sub_800F4B2(int a1)
{
    int v1; // r5

    dword_203F7E0[*(v1 + 22)] -= a1;
    if ( !battle_networkInvert(*(v1 + 22)) )
        TakeBugfrags();
}


// 0x800f4e4
BOOL __fastcall sub_800F4E4(int a1, int a2)
{
    int v2; // r6
    int v3; // r7
    char v4; // zf
    BOOL result; // r0

    v2 = a1;
    v3 = a2;
    object_isValidPanel(a1, a2);
    if ( v4 )
        result = 0;
    else
        result = object_checkPanelParameters(v2, v3, 16, 59244672);
    return result;
}


// 0x800f50c
BOOL __fastcall sub_800F50C(int a1, int a2)
{
    int v2; // r6
    int v3; // r7
    char v4; // zf
    BOOL result; // r0

    v2 = a1;
    v3 = a2;
    object_isValidPanel(a1, a2);
    if ( v4 )
        result = 0;
    else
        result = object_checkPanelParameters(v2, v3, 16, 260571264);
    return result;
}


// 0x800f534
BOOL __fastcall sub_800F534(int a1, int a2)
{
    int v2; // r6
    int v3; // r7
    char v4; // zf
    BOOL result; // r0

    v2 = a1;
    v3 = a2;
    object_isValidPanel(a1, a2);
    if ( v4 )
        result = 0;
    else
        result = object_checkPanelParameters(v2, v3, 16, 58720256);
    return result;
}


// 0x800f55c
BOOL __fastcall sub_800F55C(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    int v4; // r7
    char v5; // zf
    int *v6; // r3

    v3 = a1;
    v4 = a2;
    object_isValidPanel(a1, a2);
    if ( v5 )
        return 0;
    v6 = &byte_800F588[8 * (*(v2 + 12) - 1)];
    return object_checkPanelParameters(v3, v4, *v6, v6[1]);
}


// 0x800f598
int sub_800F598()
{
    int v0; // r5
    int v1; // r3
    signed int v2; // r0
    int v3; // r1
    int result; // r0
    unsigned int v5; // r1
    char *v6; // r2
    char v7; // cf
    int v8; // r1
    int v9; // r2

    v1 = *(v0 + 84);
    v2 = 1;
    v3 = *(v1 + 112) | *(v1 + 84);
    if ( !(v3 & 0xF3000000) )
        return 0;
    if ( !(v3 & 0xA2000000) )
    {
        v2 = -1;
        goto LABEL_6;
    }
    if ( v3 & 0x51000000 )
        return 0;
LABEL_6:
    v5 = *(v1 + 15) >> 2;
    v6 = 0;
    while ( 1 )
    {
        v7 = v5 & 1;
        v5 >>= 1;
        if ( v7 )
            break;
        if ( ++v6 >= 4 )
            goto LABEL_11;
    }
    v6 = &byte_800F604[3 * v6];
LABEL_11:
    result = v2 * *v6;
    v8 = v6[1];
    v9 = v6[2];
    return result;
}


// 0x800f614
int __fastcall sub_800F614(int result, int a2, int a3)
{
    int v3; // r10
    int *v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r2

    v4 = (*(v3 + oToolkit_S2034880_Ptr) + 12 * a2 + 8 * a3 + 160);
    if ( a3 )
    {
        v7 = *v4;
        *v4 = result;
        if ( v7 )
            *(v7 + 36) = 0;
    }
    else
    {
        v5 = *v4;
        v6 = v4[1];
        if ( *v4 )
        {
            if ( v6 )
            {
                *v4 = v6;
                v4[1] = result;
                *(v5 + 36) = 0;
            }
            else
            {
                v4[1] = result;
            }
        }
        else
        {
            *v4 = result;
        }
    }
    return result;
}


// 0x800f656
_DWORD *sub_800F656()
{
    int v0; // r5
    int v1; // r10
    _DWORD *result; // r0
    signed int v3; // r1

    result = (*(v1 + oToolkit_S2034880_Ptr) + 160);
    v3 = 0;
    do
    {
        if ( *result == v0 )
            *result = 0;
        ++result;
        ++v3;
    }
    while ( v3 < 6 );
    return result;
}


// 0x800f672
unsigned int sub_800F672()
{
    int v0; // r5
    unsigned int result; // r0
    char v2; // zf
    unsigned __int8 v3; // cf

    if ( battle_isBattleOver() )
        goto LABEL_14;
    result = battle_isTimeStop();
    if ( !v2 )
        return result;
    result = battle_isPaused();
    if ( !v2 )
        return result;
    result = *(v0 + 32) - 1;
    *(v0 + 32) = result;
    if ( !result )
    {
LABEL_14:
        object_clearCollisionRegion();
        result = 0;
        *(v0 + 36) = 0;
        return result;
    }
    if ( result <= 0xB4 )
    {
        v3 = __CFSHR__(result, 2);
        result >>= 2;
        if ( v3 )
        {
            result = *v0 & 0xFD;
            *v0 = result;
        }
    }
    return result;
}


// 0x800f6ac
int __fastcall sub_800F6AC(int a1, int a2, char a3, char a4)
{
    char v4; // r4
    int v5; // r6
    char *v6; // r0

    *(a1 + 28) = a3;
    *(a1 + 29) = a4;
    *(a1 + 30) = v4;
    *(a1 + 44) = v5;
    v6 = &byte_400;
    if ( a2 )
        v6 = &loc_800;
    return object_setFlag2(v6);
}


// 0x800f6c6
void __fastcall __noreturn sub_800F6C6(int a1, int a2)
{
    int v2; // r5

    object_getPanelsFiltered(8 * *(v2 + 22), a2, *(&off_800F748 + 2 * *(v2 + 22)), *(&off_800F748 + 2 * *(v2 + 22) + 1));
}


// 0x800f768
int __fastcall sub_800F768(char a1)
{
    int v1; // r5
    int v2; // r0
    unsigned int v3; // ST08_4
    int v4; // r1
    unsigned int v5; // ST04_4
    int v6; // r0
    int v7; // r1
    int result; // r0

    v2 = object_getCoordinatesForPanels(a1);
    v5 = v4 - (*(v1 + 58) << 16);
    v3 = v2 - (*(v1 + 54) << 16);
    v6 = calcAngle_800117C(v5, v3);
    *(v1 + 12) = v6;
    *(v1 + 64) = sub_80011A0(v6, 0x80000);
    *(v1 + 68) = v7;
    __asm { SVC         8 }
    result = ((v5 >> 8) * (v5 >> 8) + (v3 >> 8) * (v3 >> 8)) << 8;
    __asm { SVC         6 }
    if ( result )
    {
        __asm { SVC         6 }
        *(v1 + 72) = 0x400000;
    }
    else
    {
        *(v1 + 72) = 0x80000;
        *(v1 + 64) = 0;
        *(v1 + 68) = 0;
        result = 8;
    }
    return result;
}


// 0x800f7d4
signed int sub_800F7D4()
{
    int v0; // r10
    signed int result; // r0
    int *v2; // r1
    signed int v3; // r2
    int v4; // r3
    int v5; // r4
    bool v6; // zf
    int v7; // r4
    int v8; // r4
    bool v9; // zf
    int v10; // r4

    result = 1;
    v2 = (*(v0 + oToolkit_S2034880_Ptr) + 160);
    v3 = 0;
    do
    {
        v4 = *v2;
        if ( *v2 )
        {
            v5 = *(v4 + 2);
            v6 = v5 == 147;
            if ( v5 == 147 )
            {
                v7 = *(v4 + 1);
                if ( !v6 )
                    return result;
            }
            else
            {
                v8 = *(v4 + 2);
                v9 = v8 == 132;
                if ( v8 != 132 )
                    return result;
                v10 = *(v4 + 1);
                if ( !v9 )
                    return result;
            }
        }
        ++v2;
        ++v3;
    }
    while ( v3 < 8 );
    return 0;
}


// 0x800f806
int sub_800F806()
{
    int v0; // r5
    int v1; // r10
    _DWORD *v2; // r0
    signed int v3; // r1

    v2 = (*(v1 + oToolkit_S2034880_Ptr) + 160);
    v3 = 0;
    do
    {
        if ( *v2 == v0 )
            break;
        ++v2;
        ++v3;
    }
    while ( v3 < 6 );
    return byte_800F828[v3];
}


// 0x800f884
int __fastcall sub_800F884(int result)
{
    if ( result )
    {
        result = *(result + 84);
        if ( result )
            result = object_setFlag2(0x8000);
    }
    return result;
}


// 0x800f898
int __fastcall sub_800F898(int result)
{
    int v1; // r5

    v1 = result;
    if ( result )
    {
        sub_800F884(result);
        result = *(v1 + 84);
        if ( result )
            result = object_setFlag2(0x40000);
    }
    return result;
}


// 0x800f8b0
int __fastcall sub_800F8B0(int result)
{
    int v1; // r5
    int v2; // r4
    int v3; // r5

    v2 = v1;
    v3 = result;
    if ( result )
    {
        sub_800F884(result);
        result = *(v3 + 84);
        if ( result )
            result = object_setFlag2(0x100000 << *(v2 + 22));
    }
    return result;
}


// 0x800f8ce
signed int __fastcall sub_800F8CE(int a1)
{
    int v1; // r5
    signed int v2; // r4
    int v3; // r0
    unsigned __int8 v4; // vf

    v2 = 2;
    if ( a1 & 0x40000 )
    {
        v2 = 0;
        if ( !*(v1 + 11) )
        {
            *(v1 + 11) = 1;
            *(v1 + 32) = 20;
        }
        *v1 |= 2u;
        if ( !(*(v1 + 32) & 2) )
            *v1 &= 0xFDu;
        v3 = *(v1 + 32);
        v4 = __OFSUB__(v3--, 1);
        *(v1 + 32) = v3;
        if ( ((v3 < 0) ^ v4) | (v3 == 0) )
            v2 = 1;
    }
    return v2;
}


// 0x800f90e
int __fastcall sub_800F90E(int a1)
{
    int v1; // r5
    int v2; // r4
    int v3; // r4
    int v4; // r0

    v2 = a1;
    if ( object_getFlag2() & 0x200000 )
        v2 |= 0x100u;
    v3 = v2 | (*(v1 + 16) << 16);
    sprite_getPallete(v1);
    v4 = sprite_getUnk0x2c();
    return sub_80E996E(v4, *(v1 + 52), *(v1 + 56), *(v1 + 60));
}


// 0x800f964
int __fastcall sub_800F964(int a1)
{
    unsigned __int8 *v1; // r5
    int v2; // r6
    int v3; // r0
    int v4; // r6
    int v5; // r1
    char v6; // zf
    int result; // r0

    v2 = a1;
    if ( object_getFlag() & 0x1000 || (v3 = sub_800F9DE(v2, v1[22]), v4 = v1[18] + v3, sub_800E618(v4, v1[19] + v5), v6) )
        result = 0;
    else
        result = v4;
    return result;
}


// 0x800f998
int __fastcall sub_800F998(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r7
    int v6; // r4
    int v7; // r1
    int result; // r0
    char v9; // zf
    int v10; // [sp+0h] [bp-1Ch]
    int v11; // [sp+4h] [bp-18h]
    int v12; // [sp+8h] [bp-14h]

    v4 = a1;
    v5 = a2;
    v10 = *&byte_800FA00[4 * a3];
    if ( object_getFlag() & 0x1000 )
        return 0;
    v6 = 0;
    while ( 1 )
    {
        v11 = sub_800F9DE(*(&v10 + v6), *(v3 + 22)) + v4;
        v12 = v7 + v5;
        sub_800E618(v11, v7 + v5);
        result = v11;
        if ( !v9 )
            break;
        if ( ++v6 >= 4 )
            return 0;
    }
    return result;
}


// 0x800f9de
int __fastcall sub_800F9DE(int a1, int a2)
{
    char *v2; // r4
    int result; // r0
    int v4; // r1

    v2 = &byte_800FA14[2 * a1];
    result = object_getAllianceDirection(a2) * *v2;
    v4 = v2[1];
    return result;
}


// 0x800fa20
void __fastcall __noreturn sub_800FA20(int a1)
{
    unsigned __int8 *v1; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r2
    int v7; // r3

    v2 = sub_800F9DE(a1, v1[22]);
    if ( !v3 )
    {
        sub_8010368(v2);
        sub_800D120(v1[18], v1[19], v4, v5);
    }
    sub_8010368(v2);
    sub_800D15A(v1[18], v1[19], v6, v7);
}


// 0x800fa54
signed int __fastcall sub_800FA54(int a1)
{
    int v1; // r5
    __int16 v2; // r1
    signed int v3; // r6

    if ( object_getFlag() & 0x1000 )
        return 0;
    v2 = *(*(v1 + 88) + 34);
    v3 = 1;
    if ( !(v2 & 0x40) )
    {
        v3 = 2;
        if ( !(v2 & 0x80) )
        {
            v3 = 4;
            if ( !(v2 & 0x10) )
            {
                v3 = 3;
                if ( !(v2 & 0x20) )
                    return 0;
            }
        }
    }
    if ( object_getFlag() & 0x8000 )
        v3 = byte_800FAA4[v3];
    return v3;
}


// 0x800faac
int __fastcall __noreturn sub_800FAAC(int a1, int a2, int a3, int a4)
{
    Battle *v4; // r5
    int v5; // r7
    int v6; // ST00_4
    int v7; // ST04_4
    int v8; // r2
    int v9; // r0

    v5 = a4;
    v6 = object_getFrontDirection(v4) + v4->panelX;
    v7 = v4->panelY;
    sub_80C4FFE(v6, v7, v8, v5);
    v9 = sub_80136CC(v4->Alliance, 2);
    return sub_800FAF6(v6, v7, v9);
}


// 0x800fae0
u32 sub_800FAE0()
{
    int v0; // r10
    int v1; // r4
    u32 result; // r0

    v1 = *(v0 + oToolkit_S2034880_Ptr);
    result = sub_80103BC(*(v1 + 13));
    if ( result )
        *(v1 + 52) = *(result + 36);
    return result;
}


// 0x800faf6
int __fastcall sub_800FAF6(int a1, int a2, int a3)
{
    Battle *v3; // r5
    int v4; // r6
    int v5; // r7
    int v6; // r4
    int v7; // r0
    signed int v8; // r0
    signed int v10; // [sp+0h] [bp-18h]
    int v11; // [sp+4h] [bp-14h]

    v11 = a3;
    v4 = a1;
    v5 = a2;
    v6 = object_getFrontDirection(v3);
    v10 = 0;
    while ( 1 )
    {
        v7 = object_getPanelParameters(v4, v5);
        if ( !v7 || v7 & *&byte_800FB4C[4 * v3->Alliance] )
            break;
        ++v10;
        v4 += v6;
    }
    v8 = v10;
    if ( v10 > 5 )
        v8 = 5;
    return byte_80209CC[6 * v11 + v8];
}


// 0x800fb54
signed int __usercall sub_800FB54@<R0>(Battle *obj@<R5>, int a1@<R0>)
{
    u8 *v2; // r7
    int v3; // r0
    char v4; // r4
    signed int result; // r0
    signed int v6; // r0
    int v7; // r0
    AI *v8; // r1
    int v9; // r1
    char v10; // r0
    int v11; // r0
    int v12; // r1
    int v13; // r2
    int v14; // [sp-4h] [bp-10h]

    v2 = obj->ai->attackVarRegion;
    if ( object_getFlag() & &loc_1000 )
        return 0xFFFF;
    v3 = sub_800FFFE();
    v4 = v3 & 0xC;
    if ( !(v3 & 0x1000C) )
        return 0xFFFF;
    v6 = 0;
    if ( !(v4 & 8) )
        goto LABEL_22;
    v7 = sub_800EDD0(obj, 8);
    v6 = *(getChip8021DA8(v7) + 6);
    v8 = obj->ai;
    if ( v6 == 10 )
    {
        v6 = 0;
        *&v8->attackVarRegion[20] = 0;
        v9 = v8->pad_0F[2];
    }
    else
    {
        v9 = v8->pad_04[1];
    }
    switch ( v9 )
    {
        case 24:
            v6 = sub_8012CB2();
            goto LABEL_22;
        case 255:
LABEL_22:
            v10 = sub_80127C0(obj, v6);
            object_setAttack2(v10);
            if ( v2[27] || (v11 = sub_8013774(v2[27], 44), v11 >= 11) && v11 <= 24 )
                v2[29] = *(getChip8021DA8(*(v2 + 10)) + 15);
            goto LABEL_26;
        case 13:
        case 31:
        case 32:
        case 41:
        case 45:
        case 5:
            v6 = 1;
            goto LABEL_22;
    }
    v2[4] = 0;
    v14 = sub_80117BA(v9);
    object_setAttack2(v14);
    if ( v14 == 82 || v14 == 65 && sub_8013774(65, 44) == 15 )
        v2[29] = 1;
LABEL_26:
    sub_800FFEE(65548);
    result = *(v2 + 10);
    v12 = *(v2 + 4);
    v13 = *(v2 + 3);
    return result;
}


// 0x800fc30
int sub_800FC30()
{
    Battle *v0; // r5
    int result; // r0
    int v2; // r7
    int v3; // r1
    int v4; // r2

    result = sub_800EDD0(v0, 0);
    if ( result != 0xFFFF )
    {
        if ( result == 82 || result == 83 || *(getChip8021DA8(result) + 9) & 1 )
        {
            result = 0xFFFF;
        }
        else
        {
            v2 = v0->ai->attackVarRegion;
            result = sub_80127C0(v0, 0);
            if ( result != byte_800FCD5 )
            {
                object_setAttack2(result);
                *(v2 + 29) = 1;
                result = *(v2 + 20);
                v3 = *(v2 + 8);
                v4 = *(v2 + 6);
            }
        }
    }
    return result;
}


// 0x800fc7c
signed int sub_800FC7C()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r3
    signed int result; // r0

    v1 = sub_8010018(*(v0 + 22));
    v2 = v1;
    result = *v1;
    if ( result < 5 && *&v2[2 * result + 2] != 0xFFFF )
        *v2 = ++result;
    return result;
}


// 0x800fc9e
char *__fastcall sub_800FC9E(char *result, int a2)
{
    int v2; // r2
    int v3; // r2

    if ( result )
    {
        v3 = byte_800FCD5[result];
    }
    else
    {
        result = byte_800FCBC;
        v2 = byte_800FCBC[a2];
    }
    return result;
}


// 0x800fce4
char *__fastcall sub_800FCE4(int a1)
{
    int v1; // r0
    int v2; // ST00_4
    char *v3; // r0

    v1 = sub_8013774(a1, 44);
    v2 = v1;
    v3 = sub_8013774(v1, 41);
    return sub_800FC9E(v3, v2);
}


// 0x800fcfc
int __fastcall sub_800FCFC(int a1)
{
    int v1; // r5

    return byte_80212BB[a1] * byte_800FD5C[*(v1 + 4)];
}


// 0x800fd0a
int __fastcall sub_800FD0A(int a1)
{
    int v1; // r5
    _BYTE *v2; // r4
    int v3; // r7
    signed int v4; // r0

    v2 = *(v1 + 88);
    v3 = byte_80212BB[sub_8013774(a1, 41)];
    if ( sub_8015B54(*(v1 + 22)) == 2 )
    {
        v4 = 4;
    }
    else if ( *v2 == 2 && sub_801032C() & 0x200 )
    {
        v4 = 1;
    }
    else
    {
        v4 = byte_800FD5C[v2[22]];
    }
    return v4 * v3;
}


// 0x800fd44
int __fastcall sub_800FD44(int a1)
{
    return byte_80212BB[sub_8013774(a1, 41)];
}


// 0x800fd64
int sub_800FD64()
{
    int v0; // r10
    char *v1; // r2
    int result; // r0
    int v3; // r1

    v1 = &byte_800FD88[2 * sub_80136CC(*(*(v0 + oToolkit_S2034880_Ptr) + 13), 41)];
    result = *v1;
    v3 = v1[1];
    return result;
}


// 0x800fdb6
int object_setDefaultCounterTime()
{
    return object_setCounterTime(16);
}


// 0x800fdc0
void sub_800FDC0()
{
    int v0; // r10
    int v1; // r4
    signed int v2; // r6
    _BYTE *v3; // r0

    v1 = *(v0 + oToolkit_S2034880_Ptr) + 128;
    v2 = 0;
    do
    {
        if ( *v1 )
        {
            v3 = *(*v1 + 88);
            if ( v3 )
            {
                if ( *v3 == 2 )
                    sub_800FDEA();
            }
        }
        v1 += 4;
        ++v2;
    }
    while ( v2 < 8 );
}


// 0x800fdea
int sub_800FDEA()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r1
    int result; // r0
    __int16 v4; // r4

    v1 = sub_8010018(*(v0 + 22));
    v2 = &v1[2 * *v1 + 2];
    result = 0;
    v4 = *v2;
    while ( *v2 != 0xFFFF )
    {
        ++result;
        v2 += 2;
    }
    *(v0 + 26) = result;
    *(v0 + 42) = v4;
    return result;
}


// 0x800fe12
int __fastcall sub_800FE12(int a1)
{
    int v1; // r5
    int v2; // r1
    int v3; // r2
    int result; // r0

    v2 = *(v1 + 88);
    v3 = *(v2 + 22);
    if ( v3 == 4 )
        result = *(a1 + 8) * *(v2 + 12);
    else
        result = *(a1 + 2 * v3);
    return result;
}


// 0x800fe28
int __fastcall sub_800FE28(int a1)
{
    return *(sub_800FE36() + a1);
}


// 0x800fe36
signed int sub_800FE36()
{
    int v0; // r5
    int v1; // r1
    signed int result; // r0
    signed int v3; // r2

    v1 = *(v0 + 88);
    result = *(v1 + 22);
    if ( result == 4 )
    {
        result = 0;
        v3 = *(v1 + 12);
        if ( v3 > 3 )
        {
            result = 1;
            if ( v3 > 6 )
                result = 2;
        }
    }
    return result;
}


// 0x800fe52
signed int __fastcall sub_800FE52(int a1)
{
    signed int v1; // r4
    int v2; // r0
    int v3; // r0
    int v4; // r0
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r0
    int v10; // r0

    v1 = 0;
    v2 = sub_8013774(a1, 49);
    if ( v2 == 1 )
        v1 = 1;
    v3 = sub_8013774(v2, 19);
    if ( v3 )
        ++v1;
    v4 = sub_8013774(v3, 20);
    if ( v4 )
        ++v1;
    v5 = sub_8013774(v4, 22);
    if ( v5 )
        ++v1;
    v6 = sub_8013790(v5, 84);
    if ( v6 )
        ++v1;
    v7 = sub_8013774(v6, 36);
    if ( v7 )
        ++v1;
    v8 = sub_8013774(v7, 24);
    if ( v8 )
        ++v1;
    v9 = sub_8013774(v8, 25);
    if ( v9 )
        ++v1;
    v10 = sub_8013774(v9, 26);
    if ( v10 )
        ++v1;
    if ( sub_8013774(v10, 99) )
        ++v1;
    return v1;
}


// 0x800feec
signed int __fastcall sub_800FEEC(int a1)
{
    int v1; // r5
    _BYTE *v2; // r4
    int v3; // r0
    signed int v4; // r0
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r0
    signed int result; // r0
    char *v10; // r0
    signed int v11; // ST00_4

    v2 = *(v1 + 88);
    v3 = sub_8013774(a1, 44);
    if ( v3 )
    {
        v10 = &byte_8020354[6 * v3];
        v2[4] = *v10;
        v2[5] = v10[1];
        v2[6] = v10[2];
        v11 = v10;
        sub_800FFAA(v10[3]);
        result = v11;
        v2[8] = *(v11 + 4);
        v2[17] = *(v11 + 5);
    }
    else
    {
        if ( sub_802D234() == 9 )
            v4 = sub_8013774(9, 68);
        else
            v4 = 255;
        v2[4] = v4;
        v5 = sub_8013774(v4, 4);
        v2[6] = v5;
        v6 = sub_8013774(v5, 5);
        v7 = sub_800FFAA(v6);
        v8 = sub_8013774(v7, 57);
        v2[5] = v8;
        v2[8] = sub_8013774(v8, 7);
        result = 255;
        v2[17] = -1;
    }
    return result;
}


// 0x800ff5e
int __fastcall sub_800FF5E(int a1)
{
    int v1; // r5
    _BYTE *v2; // r4
    int result; // r0
    signed int v4; // r0
    int v5; // r0
    int v6; // r0
    int v7; // r0
    int v8; // r0

    v2 = *(v1 + 88);
    result = sub_8013774(a1, 44);
    if ( !result )
    {
        if ( sub_802D234() == 9 )
            v4 = sub_8013774(9, 68);
        else
            v4 = 255;
        v2[4] = v4;
        v5 = sub_8013774(v4, 4);
        v2[6] = v5;
        v6 = sub_8013774(v5, 5);
        v7 = sub_800FFAA(v6);
        v8 = sub_8013774(v7, 57);
        v2[5] = v8;
        v2[8] = sub_8013774(v8, 7);
        result = 255;
        v2[17] = -1;
    }
    return result;
}


// 0x800ffaa
signed int __fastcall sub_800FFAA(signed int a1)
{
    int v1; // r4
    signed int v2; // r1
    signed int result; // r0
    char v4; // r2

    if ( a1 >= 33 && a1 <= 38 || (v2 = *(v1 + 7), v2 < 33) || v2 > 38 )
        *(v1 + 7) = a1;
    result = *(v1 + 7);
    if ( result >= 33 && result <= 38 )
    {
        result = *(v1 + 6);
        v4 = 0;
        if ( result == 4 || result == 3 || (v4 = 43, result == 44) )
            *(v1 + 6) = v4;
    }
    return result;
}


// 0x800ffe4
int __fastcall sub_800FFE4(int result)
{
    int v1; // r5

    *(*(v1 + 88) + 68) |= result;
    return result;
}


// 0x800ffee
int __fastcall sub_800FFEE(int result)
{
    int v1; // r5

    *(*(v1 + 88) + 68) &= ~result;
    return result;
}


// 0x800fff8
int sub_800FFF8()
{
    int v0; // r5

    return *(*(v0 + 88) + 68);
}


// 0x800fffe
int sub_800FFFE()
{
    int v0; // r5

    return *(*(v0 + 88) + 68);
}


// 0x8010004
int sub_8010004()
{
    int v0; // r5
    char *v1; // r0

    v1 = sub_8010018(*(v0 + 22));
    return *&v1[2 * *v1 + 2];
}


// 0x8010018
char *__fastcall sub_8010018(int a1)
{
    return &byte_20349C0[80 * a1];
}


// 0x8010022
int __fastcall sub_8010022(int a1)
{
    return *(sub_80103BC(a1) + 88);
}


// 0x801002c
int sub_801002C()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    signed int v3; // r4
    int v4; // r0
    int v5; // r0
    int v6; // r0

    if ( **(v0 + 88) != 2 )
        return 0;
    v1 = sub_8013774(2, 41);
    if ( v1 )
        return sub_800FD0A(v1);
    v2 = sub_801032C();
    if ( v2 & byte_200 )
    {
        v3 = 1;
LABEL_12:
        v6 = sub_8013774(v2, 16);
        if ( v6 )
            v6 = 5 * v6 + 18;
        v3 += v6;
        return v3;
    }
    v4 = sub_8013774(v2, 44);
    if ( !v4 || v4 == 11 || v4 == 12 )
    {
        v5 = sub_8013774(v4, 14);
        v3 = 4;
        if ( v5 != 255 )
            v3 = 0;
        v2 = sub_8013774(v5, 44);
        if ( v2 )
            return v3;
        goto LABEL_12;
    }
    return byte_80203EA[v4];
}


// 0x80100ec
void __fastcall sub_80100EC(int a1)
{
    signed int v1; // r0
    int v2; // r0

    v1 = sub_8013774(a1, 44);
    if ( v1 < 23 || v1 > 24 )
    {
        v2 = sub_801002C();
        sprite_setPallete(v2);
    }
    else
    {
        sub_8016A38(v1);
    }
}


// 0x801010c
int sub_801010C()
{
    int v0; // r5
    int result; // r0

    result = *(sub_80103BC(*(v0 + 22)) + 88);
    *(v0 + 88) = result;
    return result;
}


// 0x801011a
int sub_801011A()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 88) + 160;
    *(v1 + 29) = 0;
    *(v1 + 30) = 0;
    return sub_80E1662();
}


// 0x801012c
Battle *__fastcall sub_801012C(int a1)
{
    int v1; // r5
    int v2; // r4
    int v3; // r2
    int v4; // r3
    Battle *result; // r0

    v2 = *(v1 + 84);
    if ( object_getFlag() & 4 )
    {
        *v1 &= 0xFDu;
        result = *(v2 + 80);
        if ( !result )
        {
            result = sub_80E4D8A(0, 2, v3, v4);
            *(v2 + 80) = result;
        }
    }
    else
    {
        result = *(v2 + 80);
        if ( result )
        {
            sub_80E4DA2(result);
            result = 0;
            *(v2 + 80) = 0;
        }
    }
    return result;
}


// 0x8010162
int __fastcall sub_8010162(int a1)
{
    int v1; // r5
    int v2; // r4
    int v3; // r1
    unsigned __int8 v4; // vf
    int v5; // r1

    v2 = *(v1 + 84);
    v3 = *(v2 + 38);
    if ( v3 != 0xFFFF )
    {
        v4 = __OFSUB__(v3, 1);
        v5 = v3 - 1;
        if ( (v5 < 0) ^ v4 )
            return object_clearFlag(4);
        *(v2 + 38) = v5;
        if ( !v5 )
            PlaySoundEffect(148, 0, 0xFFFF);
    }
    if ( !(object_getFlag() & 0x400000) )
        return object_setFlag1(4);
    return object_clearFlag(4);
}


// 0x8010198
int sub_8010198()
{
    int v0; // r5
    int v1; // r3
    int result; // r0

    v1 = *(v0 + 84);
    if ( *(v1 + 38) )
    {
        result = *(v1 + 112);
        if ( result )
        {
            result = 0;
            *(v1 + 38) = 0;
        }
    }
    return result;
}


// 0x80101ae
int __fastcall sub_80101AE(__int16 a1)
{
    int v1; // r5
    int result; // r0

    *(*(v1 + 84) + 38) = a1;
    object_setFlag1(4);
    result = *v1 & 0xFD;
    *v1 = result;
    return result;
}


// 0x80101c4
int __usercall sub_80101C4@<R0>(Battle *obj@<R5>)
{
    obj->collisionData->unk_26 = 0;
    return object_clearFlag(4);
}


// 0x80101d4
int __fastcall sub_80101D4(int a1)
{
    int v1; // r5
    char v2; // r4
    int result; // r0

    v2 = a1;
    result = sub_8013774(a1, 44);
    if ( result == 12 || result >= 18 && (result <= 22 || result == 24) )
    {
        result = *(v1 + 80);
        *(result + 16) = v2;
        *(result + 17) = -1;
    }
    return result;
}


// 0x80101f8
int sub_80101F8()
{
    signed int v0; // r4
    char v1; // zf

    v0 = getPETNaviSelect();
    if ( !v0 )
    {
        TestEventFlagFromImmediate(1, 99);
        if ( v1 )
        {
            notZero_eByte200AD04();
            if ( !v1 )
                v0 = 13;
        }
    }
    return v0;
}


// 0x8010230
int sub_8010230()
{
    Battle *v0; // r5
    int result; // r0
    char v2; // zf
    AI *v3; // r4
    int v4; // r3

    result = battle_isTimeStop();
    if ( v2 )
    {
        result = battle_isPaused();
        if ( v2 )
        {
            v3 = v0->ai;
            result = v0->HP;
            if ( result > 1 )
            {
                result = byte_80102A4[sub_8013774(result, 24)];
                if ( result )
                {
                    v4 = v3->unk_09 + 1;
                    v3->unk_09 = v4;
                    if ( v4 < result )
                        return result;
                    object_subtractHP(v0, 1);
                }
                result = 0;
                v3->unk_09 = 0;
            }
        }
    }
    return result;
}


// 0x801026a
int sub_801026A()
{
    Battle *v0; // r5
    int result; // r0
    char v2; // zf
    AI *v3; // r4
    int v4; // r3

    result = battle_isTimeStop();
    if ( v2 )
    {
        result = battle_isPaused();
        if ( v2 )
        {
            v3 = v0->ai;
            result = v0->HP;
            if ( result > 1 )
            {
                result = byte_80102A4[v3->unk_12];
                if ( byte_80102A4[v3->unk_12] )
                {
                    v4 = v3->unk_09 + 1;
                    v3->unk_09 = v4;
                    if ( v4 < result )
                        return result;
                    object_subtractHP(v0, 1);
                }
                result = 0;
                v3->unk_09 = 0;
            }
        }
    }
    return result;
}


// 0x80102ac
int __fastcall sub_80102AC(int a1)
{
    int v1; // r4
    int result; // r0
    int v3; // r6
    Battle *v4; // r5
    int v5; // r4
    int v6; // r3

    v1 = a1;
    result = sub_800A9E2(a1);
    if ( result & 5 )
    {
        result = sub_80136CC(v1, 25);
        v3 = byte_80102F8[result];
        if ( byte_80102F8[result] )
        {
            result = sub_80103BC(v1);
            v4 = result;
            if ( result )
            {
                v5 = *(result + 88);
                result = *(result + 36);
                if ( result > 1 )
                {
                    v6 = *(v5 + 10) + 1;
                    *(v5 + 10) = v6;
                    if ( v6 >= v3 )
                    {
                        object_subtractHP(v4, 1);
                        result = 0;
                        *(v5 + 10) = 0;
                    }
                }
            }
        }
    }
    return result;
}


// 0x8010300
int __fastcall sub_8010300(int a1, int a2)
{
    int v2; // r10

    return a1 & *(*(*(*(v2 + oToolkit_S2034880_Ptr) + 4 * a2 + 128) + 88) + 72);
}


// 0x8010312
int __fastcall sub_8010312(int result)
{
    int v1; // r5

    *(*(v1 + 88) + 72) |= result;
    return result;
}


// 0x801031c
int __fastcall sub_801031C(int result)
{
    int v1; // r5

    *(*(v1 + 88) + 72) &= ~result;
    return result;
}


// 0x8010326
int __fastcall sub_8010326(int result)
{
    int v1; // r5

    *(*(v1 + 88) + 72) = result;
    return result;
}


// 0x801032c
int sub_801032C()
{
    int v0; // r5

    return *(*(v0 + 88) + 72);
}


// 0x8010332
signed int __fastcall sub_8010332(int a1)
{
    int v1; // r0
    signed int result; // r0
    int v3; // r0

    v1 = sub_802D234();
    if ( v1 == 9 )
        return 1;
    v3 = sub_8013774(v1, 41);
    if ( v3 )
        result = byte_8020FE0[11 * v3 + sub_8013774(v3, 43)];
    else
        result = 4;
    return result;
}


// 0x8010368
int __fastcall sub_8010368(int a1)
{
    int v1; // r5
    char v2; // r0
    char *v3; // r1
    int result; // r0
    char *v5; // r1
    int v6; // r2
    int v7; // r3

    v2 = object_getFlag();
    v3 = byte_8010388;
    if ( v2 & 0x10 )
        v3 = &byte_8010388[16];
    result = 8 * *(v1 + 22);
    v5 = &v3[result];
    v6 = *v5;
    v7 = *(v5 + 1);
    return result;
}


// 0x80103a8
signed int __fastcall sub_80103A8(int a1)
{
    int v1; // r0
    signed int v2; // r1

    v1 = sub_8013774(a1, 49);
    v2 = 0;
    if ( v1 )
        v2 = 3;
    return v2;
}


// 0x80103bc
u32 __fastcall sub_80103BC(int a1)
{
    Toolkit *tk; // r10
    u32 *v2; // r6
    int v3; // r4
    u32 v4; // r5

    v2 = &tk->s_2034880[1].unk_3C + 4 * a1;
    v3 = 0;
    while ( 1 )
    {
        v4 = *v2;
        if ( *v2 )
        {
            if ( sub_800F29C(*(v4 + 40)) == 2 )
                break;
        }
        if ( ++v3 >= 4 )
            return 0;
    }
    return v4;
}


// 0x80103ec
u32 sub_80103EC()
{
    int v0; // r0

    v0 = sub_800A7E2();
    return sub_80103BC(v0);
}


// 0x80103f8
int __fastcall sub_80103F8(int a1)
{
    int v1; // r5
    int v2; // r10
    int *v3; // r6
    signed int v4; // r4
    int v5; // r7
    int v6; // r5
    int v7; // r0
    int v8; // r2
    int v9; // r0
    int v10; // r2
    int v12; // [sp+0h] [bp-1Ch]
    int v13; // [sp+4h] [bp-18h]

    v12 = *(v1 + 18);
    v13 = *(v1 + 19);
    v3 = (*(v2 + oToolkit_S2034880_Ptr) + 16 * a1 + 208);
    v4 = 4;
    v5 = 0;
    do
    {
        v6 = *v3;
        if ( *v3 )
        {
            if ( *(v6 + 8) != 8 )
            {
                v7 = sub_800F29C(*(v6 + 40));
                if ( v7 == 2 || !v7 || v7 == 1 )
                {
                    v9 = sub_8010460(*(v6 + 18), *(v6 + 19), v8, &v12);
                    if ( !v5 || sub_8010460(*(v5 + 18), *(v5 + 19), v10, &v12) > v9 )
                        v5 = v6;
                }
            }
        }
        ++v3;
        --v4;
    }
    while ( v4 );
    return v5;
}


// 0x8010460
int __fastcall sub_8010460(int a1, int a2, int a3, _DWORD *a4)
{
    return (*a4 - a1) * (*a4 - a1) + (a4[1] - a2) * (a4[1] - a2);
}


// 0x8010474
int sub_8010474()
{
    __int16 v0; // r4
    int v1; // r5
    int v2; // r1
    int v3; // r2

    *(*(v1 + 84) + 36) = v0;
    object_setFlag1(2);
    return PlaySoundEffect(147, v2, v3);
}


// 0x8010488
int sub_8010488()
{
    int v0; // r5
    int v1; // r7
    char *v2; // r0
    int v3; // r1
    int v4; // r2
    int result; // r0
    int v6; // r1
    int v7; // r1
    int v8; // ST04_4
    int v9; // ST00_4
    int v10; // r0
    int v11; // r1
    int v12; // r2

    v1 = *(v0 + 88) + 160;
    if ( *(*(v0 + 88) + 187) )
    {
        v2 = sub_802E070(*(v0 + 22));
        v3 = 2 * *(v1 + 12) + 54;
        v4 = *(v1 + 8) + *(v1 + 14);
        *&v2[v3] += v4;
        result = PlaySoundEffect(343, v3, v4);
    }
    else
    {
        v6 = *(v0 + 19);
        v9 = object_getCoordinatesForPanels(*(v0 + 18));
        v8 = v7;
        v10 = object_getEnemyDirection();
        sub_80E1D7A(v10 << 18, v9 + (v10 << 18), v8, 3145728);
        result = PlaySoundEffect(144, v11, v12);
    }
    return result;
}


// 0x80104e0
int sub_80104E0()
{
    int v0; // r5
    int v1; // r1
    int v2; // r1
    int v3; // ST04_4
    int v4; // ST00_4
    int v5; // r0
    int v6; // r1
    int v7; // r2

    v1 = *(v0 + 19);
    v4 = object_getCoordinatesForPanels(*(v0 + 18));
    v3 = v2;
    v5 = object_getEnemyDirection();
    sub_80E1D7A(v5 << 18, v4 + (v5 << 18), v3, 3145728);
    return PlaySoundEffect(144, v6, v7);
}


// 0x801050c
int sub_801050C()
{
    Battle *v0; // r5
    int v1; // r10
    int *v2; // r7
    signed int v3; // r6
    int result; // r0
    int v5; // r1
    int v6; // r2

    v2 = (*(v1 + oToolkit_S2034880_Ptr) + 12 * v0->Alliance + 160);
    v3 = 0;
    do
    {
        result = *v2;
        if ( *v2 )
        {
            if ( *(result + 36) )
            {
                *(result + 36) = *(result + 38);
                SpawnT4BattleObjectWithId0(v0, result + 64, *(result + 52), *(result + 56), *(result + 60));
                result = PlaySoundEffect(138, v5, v6);
            }
        }
        ++v2;
        ++v3;
    }
    while ( v3 < 3 );
    return result;
}


// 0x8010548
int __fastcall sub_8010548(int a1)
{
    int v1; // r5
    int v2; // r4
    int result; // r0
    int v4; // r1

    v2 = a1;
    result = *(v1 + 88);
    v4 = *(result + 32) + v2;
    if ( v4 > 0xFFFF )
        LOWORD(v4) = -1;
    *(result + 32) = v4;
    return result;
}


// 0x801055e
int __fastcall sub_801055E(int a1)
{
    return *(*(sub_80103BC(a1) + 88) + 32);
}


// 0x801056a
int __fastcall sub_801056A(int a1, char a2, char a3)
{
    int v3; // r5
    char v4; // ST04_1
    char v5; // ST08_1
    int v6; // r7
    int v7; // r7
    __int16 v8; // r0
    int v9; // r1
    __int16 v10; // r2
    int result; // r0
    int v12; // [sp+0h] [bp-14h]

    v12 = a1;
    v4 = a2;
    v5 = a3;
    v6 = *(v3 + 88);
    *(v3 + 76) = 0;
    *(v6 + 104) = 0;
    v7 = v6 + 160;
    sub_801031C(&loc_810);
    sub_801DACC(64);
    sub_800E9FA();
    v8 = sub_802CE78(*(v3 + 22));
    *(v7 + 8) = v9;
    *(v7 + 6) = v10;
    *(v7 + 20) = v8;
    *(v7 + 2) = 0;
    *(v7 + 5) = v4;
    *(v7 + 3) = v5;
    if ( battle_networkInvert(*(v3 + 22)) && *(v7 + 20) )
        sub_801EB18(*(v7 + 20), *(v7 + 8), *(v7 + 6));
    if ( v12 & byte_200 )
    {
        object_setAttack0();
        result = sub_80EE90C();
    }
    else if ( v12 & &byte_400 )
    {
        object_setAttack0();
        result = sub_80EEA3C();
    }
    else
    {
        object_setAttack0();
        result = sub_80EED56();
    }
    return result;
}


// 0x80105f2
void __fastcall sub_80105F2(int a1, char a2, char a3, int a4)
{
    int v4; // r5
    char v5; // ST04_1
    char v6; // ST08_1
    int v7; // ST0C_4
    int v8; // r7
    int v9; // r7

    v5 = a2;
    v6 = a3;
    v7 = a4;
    v8 = *(v4 + 88);
    *(v4 + 76) = 0;
    *(v8 + 104) = 0;
    v9 = v8 + 160;
    sub_801031C(&loc_810);
    sub_801DACC(64);
    sub_800E9FA();
    *(v9 + 8) = v7;
    *(v9 + 6) = 0;
    *(v9 + 20) = 0;
    *(v9 + 2) = 0;
    *(v9 + 5) = v5;
    *(v9 + 3) = v6;
    if ( battle_networkInvert(*(v4 + 22)) && *(v9 + 20) )
        sub_801EB18(*(v9 + 20), *(v9 + 8), *(v9 + 6));
    object_setAttack0();
}


// 0x8010660
signed int __fastcall sub_8010660(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r0
    unsigned int v4; // r0
    int v5; // r0
    int v6; // r0

    v2 = sub_802D246();
    if ( !(v2 & 8) )
        return 0;
    v3 = sub_8013774(v2, 13);
    if ( v3 == 255 )
        return 0;
    if ( !(v3 & 4) )
        return 0;
    v4 = *(v1 + 38) >> 2;
    if ( v4 < *(v1 + 36) )
        return 0;
    v5 = sub_8013774(v4, 13);
    sub_8013754(v5 & 0xFFFFFFFB, 13, v5 & 0xFB);
    v6 = sub_80E90FE(*(v1 + 18), *(v1 + 19), 0, 0);
    sub_800BF16(*(v1 + 22), 1, v6);
    return 1;
}


// 0x80106c0
signed int __fastcall sub_80106C0(int a1)
{
    int v1; // r5
    int v2; // r4
    int v3; // r6
    int v4; // r0
    int v5; // r1
    char v6; // r0
    u32 v7; // r0
    u32 v8; // r5
    int v9; // r0

    v2 = a1;
    if ( !(sub_802D246() & 8) )
        return 0;
    v3 = *(v1 + 22) ^ 1;
    v4 = sub_80136CC(v3, 13);
    if ( v4 == 255 )
        return 0;
    if ( !(v4 & 2) )
        return 0;
    v5 = *(getChip8021DA8(v2) + 7);
    if ( v5 != 1 && v5 != 2 )
        return 0;
    v6 = sub_80136CC(v3, 13);
    sub_80136B0(v3, 13, v6 & 0xFD);
    v7 = sub_80103BC(v3);
    v8 = v7;
    v9 = sub_80E90FE(*(v7 + 18), *(v7 + 19), 0, 0);
    sub_800BF16(*(v8 + 22), 1, v9);
    return 1;
}


// 0x8010740
signed int __fastcall sub_8010740(int a1)
{
    int v1; // r5
    int v2; // r4
    int v3; // r6
    int v4; // r0
    char v5; // r0
    u32 v6; // r0
    u32 v7; // r5
    int v8; // r0

    v2 = a1;
    if ( !(sub_802D246() & 8) )
        return 0;
    v3 = *(v1 + 22) ^ 1;
    v4 = sub_80136CC(v3, 13);
    if ( v4 == 255 || !(v4 & 1) || !(*(getChip8021DA8(v2) + 22) & 2) )
        return 0;
    v5 = sub_80136CC(v3, 13);
    sub_80136B0(v3, 13, v5 & 0xFE);
    v6 = sub_80103BC(v3);
    v7 = v6;
    v8 = sub_80E90FE(*(v6 + 18), *(v6 + 19), 0, 0);
    sub_800BF16(*(v7 + 22), 1, v8);
    return 1;
}


// 0x80107c0
int __fastcall sub_80107C0(int a1)
{
    return sub_802D246();
}


// 0x80107d4
int sub_80107D4()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r4
    char *v4; // r0
    char *v5; // r4

    result = battle_isTimeStop();
    if ( v2 )
    {
        v3 = *(v0 + 88);
        if ( *(v3 + 25) )
            --*(v3 + 25);
        if ( *(v3 + 21) )
            --*(v3 + 21);
        v4 = sub_802E070(*(v0 + 22));
        v5 = v4;
        result = *v4;
        if ( result )
        {
            if ( *(v5 + 23) )
                --*(v5 + 23);
            if ( *(v5 + 29) )
                --*(v5 + 29);
            if ( *(v5 + 30) )
                --*(v5 + 30);
        }
    }
    return result;
}


// 0x8010820
int sub_8010820()
{
    unsigned __int8 v0; // r4
    Battle *v1; // r5
    int v2; // r0
    char v3; // r2
    u32 v4; // ST00_4
    int v5; // ST04_4
    u32 v6; // ST08_4
    int v7; // r0
    int v8; // r1
    int v9; // r1
    int v10; // r2

    v2 = sub_80136CC(v1->Alliance, 1);
    v3 = v2 + v0;
    if ( v2 + v0 >= 10 )
        v3 = 9;
    sub_80136B0(v1->Alliance, 1, v3);
    v4 = v1->x;
    v5 = v1->y;
    v6 = v1->z;
    v7 = sub_8018810(v1->nameID, 32, v1->Alliance, v1->directionFlip);
    SpawnT4BattleObjectWithId0(v1, v7 << 16, v4 + (v7 << 16), v5, v6 + (v8 << 16));
    return PlaySoundEffect(281, v9, v10);
}


// 0x801086c
int __fastcall sub_801086C(int a1)
{
    int v1; // r0
    int v2; // r0
    char v3; // r0
    int v4; // r0
    int v5; // r0

    v1 = sub_8013774(a1, 41);
    if ( v1 )
    {
        v3 = byte_80108B8[v1];
    }
    else
    {
        v2 = sub_8013774(0, 44);
        if ( v2 )
            v3 = byte_80108B8[v2];
        else
            v3 = sub_8013774(0, 16);
    }
    v4 = sub_8019F8C(v3);
    v5 = sub_8013774(v4, 44);
    if ( !v5 )
        v5 = sub_8013774(0, 41);
    return sub_8019F9E(byte_80108D1[v5]);
}


// 0x80108fc
int __fastcall sub_80108FC(int a1)
{
    char *v1; // r7
    int v2; // r4
    int result; // r0
    int v4; // r1

    v1 = sub_8010018(a1);
    v2 = *v1;
    while ( 1 )
    {
        result = 2 * v2 + 2;
        v4 = *&v1[result];
        if ( v4 == 0xFFFF )
            break;
        if ( (v4 - byte_190) > 0xA )
            ++v2;
        else
            sub_801092C(v2);
    }
    return result;
}


// 0x801092c
int __fastcall sub_801092C(int result)
{
    int v1; // ST00_4

    do
    {
        v1 = result;
        sub_8010940(result, result + 1);
        result = v1 + 1;
    }
    while ( v1 + 1 < 5 );
    return result;
}


// 0x8010940
int __fastcall sub_8010940(int result, int a2)
{
    int v2; // r7

    *(v2 + 2 * result + 2) = *(v2 + 2 * a2 + 2);
    *(v2 + 2 * result + 14) = *(v2 + 2 * a2 + 14);
    *(v2 + 2 * result + 26) = *(v2 + 2 * a2 + 26);
    *(v2 + 2 * result + 38) = *(v2 + 2 * a2 + 38);
    *(v2 + 2 * result + 50) = *(v2 + 2 * a2 + 50);
    *(v2 + result + 62) = *(v2 + a2 + 62);
    *(v2 + result + 68) = *(v2 + a2 + 68);
    return result;
}


// 0x80109a4
int __fastcall sub_80109A4(int a1, int a2)
{
    int v2; // r7
    int v3; // r4
    int result; // r0

    v2 = a1;
    v3 = a2;
    if ( a1 == 0xFFFF )
        return 0;
    result = *(getChip8021DA8(a1) + 13);
    if ( result >= 1000 )
        result = (*(&off_80109DC + result - 1000))(v2, v3);
    return result;
}


// 0x8010a90
signed int __fastcall sub_8010A90(int a1, int a2)
{
    int v2; // r10
    int v3; // r4
    int v4; // r0
    int v5; // r1
    signed int v6; // r3
    unsigned __int8 v7; // vf
    signed int result; // r0

    v3 = a2;
    if ( sub_802D246() & 8 )
    {
        result = *(sub_80103BC(v3 ^ 1) + 36);
        if ( result > 500 )
            result = 500;
    }
    else
    {
        v4 = *(v2 + oToolkit_S2034880_Ptr) + 144;
        v5 = -2 * v3 + 3;
        v6 = 0;
        do
        {
            if ( *v4 && *(*v4 + 36) >= v6 )
                v6 = *(*v4 + 36);
            v4 += 4;
            v7 = __OFSUB__(v5--, 1);
        }
        while ( !(((v5 < 0) ^ v7) | (v5 == 0)) );
        if ( v6 > 500 )
            v6 = 500;
        result = v6;
    }
    return result;
}


// 0x8010ae4
int __fastcall sub_8010AE4(int a1, int a2)
{
    int v2; // r4
    int v3; // r1
    signed int v4; // r0
    int v5; // r4
    int v6; // r0
    signed int v7; // r1
    char *v8; // r2

    v2 = a2;
    v3 = *(getChip8021DA8(a1) + 13) - byte_3E9;
    v4 = *&byte_203EB00[40 * v2 + 2 * v3];
    v5 = v3;
    v6 = sub_8000D84(v4);
    v7 = 0;
    v8 = byte_8010B2C;
    do
    {
        if ( v6 <= *v8 )
            break;
        v8 += 4;
        ++v7;
    }
    while ( v7 < 10 );
    return *&byte_8020E54[22 * v5 + 2 * v7];
}


// 0x8010b78
int __fastcall sub_8010B78(int a1, int a2)
{
    char *v3; // r0
    unsigned int v4; // r1
    int result; // r0
    signed int v6; // r1
    int v10; // [sp+4h] [bp-8h]

    v10 = a2;
    sub_800A8F8(a1);
    if ( _ZF )
        v3 = sub_801DFE4();
    else
        v3 = &loc_1500 + *(sub_802E070(v10) + 20);
    v4 = v3;
    result = 10;
    v6 = v4 >> 7;
    if ( v6 < 128 )
    {
        if ( v6 > 64 )
        {
            if ( v6 > 112 )
            {
                __asm { SVC         6 }
                result = ((v6 - 112) << 7) + 128;
            }
            else
            {
                __asm { SVC         6 }
                result = 96 * (v6 - 64) + 32;
            }
        }
        else
        {
            __asm { SVC         6 }
            result = 22 * v6 + 10;
        }
    }
    return result;
}


// 0x8010bd0
char *__fastcall sub_8010BD0(int a1, int a2)
{
    char *result; // r0

    result = sub_80103BC(a2);
    if ( result )
    {
        result = (*(result + 19) - *(result + 18));
        if ( result > byte_1F4 )
            result = byte_1F4;
    }
    return result;
}


// 0x8010bf0
u32 __fastcall sub_8010BF0(int a1, int a2)
{
    u32 result; // r0
    __int16 v3; // t1

    result = sub_80103BC(a2);
    if ( result )
    {
        v3 = *(result + 36);
        __asm { SVC         6 }
        result = 100;
    }
    return result;
}


// 0x8010c06
int __fastcall sub_8010C06(int a1, int a2)
{
    int v2; // r10
    int v3; // r4
    signed int v4; // r0
    signed int v5; // r1
    int v6; // r2
    int result; // r0

    v3 = a2;
    if ( sub_802D246() & 8 )
    {
        result = sub_80103BC(v3 ^ 1);
        if ( !result )
            return result;
        v4 = *(result + 38);
    }
    else
    {
        v4 = 0;
        v5 = 0;
        v6 = *(v2 + oToolkit_S2034880_Ptr) + 144;
        do
        {
            if ( *v6 && *(*v6 + 38) >= v4 )
                v4 = *(*v6 + 38);
            v6 += 4;
            ++v5;
        }
        while ( v5 < 3 );
    }
    result = v4 >> 1;
    if ( result > 999 )
        result = 999;
    return result;
}


// 0x8010c50
int __fastcall sub_8010C50(int a1, int a2)
{
    int v2; // r4
    int result; // r0
    unsigned __int16 *v4; // r0

    v2 = a1;
    result = sub_80103BC(a2);
    if ( result )
    {
        v4 = getChip8021DA8(v2);
        result = sub_8010D04(v4[13] - 1023);
    }
    return result;
}


// 0x8010c76
int __fastcall sub_8010C76(int a1)
{
    unsigned __int16 *v1; // r0
    signed int v2; // r1
    int v3; // r4
    int v4; // r0
    signed int v5; // r1
    char *v6; // r2

    v1 = getChip8021DA8(a1);
    v2 = v1[13];
    if ( v2 < byte_3E9 )
        return v1[13];
    v3 = 2 * (v2 - byte_3E9);
    v4 = sub_8000D84(*(&unk_20018C0 + v3));
    v5 = 0;
    v6 = byte_8010CB8;
    do
    {
        if ( v4 <= *v6 )
            break;
        v6 += 4;
        ++v5;
    }
    while ( v5 < 10 );
    return *&byte_8020E54[11 * v3 + 2 * v5];
}


// 0x8010ce0
int __fastcall sub_8010CE0(int a1)
{
    unsigned __int16 *v1; // r0
    signed int v2; // r1
    int result; // r0

    v1 = getChip8021DA8(a1);
    v2 = v1[13];
    if ( v2 < byte_3E9 )
        result = v1[13];
    else
        result = *&byte_8020E54[22 * (v2 - byte_3E9) + 10];
    return result;
}


// 0x8010d04
int __fastcall sub_8010D04(int a1)
{
    return sub_8012642(byte_80212D4[2 * a1], byte_80212D4[2 * a1 + 1]);
}


// 0x8010d18
int __fastcall sub_8010D18(int a1)
{
    return dword_203CDF0[a1];
}


// 0x8010d20
int sub_8010D20()
{
    return 0;
}


// 0x8010d58
int __fastcall sub_8010D58(int a1)
{
    int v1; // r6

    v1 = 4 * a1;
    if ( a1 != 255 )
    {
        if ( sub_800F4A8() < 1 )
            return (*(&off_8010D84 + v1))();
        sub_800F4B2(1);
    }
    return 0xFFFF;
}


// 0x8010d98
int sub_8010D98()
{
    return sub_800EF02(71);
}


// 0x8010da2
int sub_8010DA2()
{
    return sub_800EF02(30);
}


// 0x8010dac
int sub_8010DAC()
{
    return sub_800EF02(154);
}


// 0x8010db6
int sub_8010DB6()
{
    return sub_800EF02(177);
}


// 0x8010dc0
int sub_8010DC0()
{
    return sub_800EF02(192);
}


// 0x8010dd0
int sub_8010DD0()
{
    int v0; // r5

    return sub_8010DDA(*(v0 + 40));
}


// 0x8010dda
int __fastcall sub_8010DDA(int a1)
{
    char *v1; // r0

    v1 = sub_80182B4(a1);
    return (off_8010E0C[v1[1]][v1[2]])();
}


// 0x8010df6
int __fastcall sub_8010DF6(int a1, int a2)
{
    return (off_8010E0C[a1][a2])();
}


// 0x8010f68
void nullsub_42()
{
    ;
}


// 0x8010f6a
int __fastcall sub_8010F6A(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0

    result = sub_80C44A8(a1, a2, a3 << 16, a4);
    *(v4 + 80) = result;
    return result;
}


// 0x8010f7a
int __fastcall sub_8010F7A(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0

    result = sub_80C41D8(a1, a2, a3, a4);
    *(v4 + 80) = result;
    return result;
}


// 0x8010f86
int __fastcall sub_8010F86(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0

    result = sub_80C44A8(a1, a2, a3 << 16, a4);
    *(v4 + 80) = result;
    return result;
}


// 0x8010f96
int __fastcall sub_8010F96(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0

    result = sub_80C44A8(a1, a2, 167772160, a4);
    *(v4 + 80) = result;
    return result;
}


// 0x8010fac
int __fastcall sub_8010FAC(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0

    result = sub_80C44A8(a1, a2, 218103808, a4);
    *(v4 + 80) = result;
    return result;
}


// 0x8010fc2
int __fastcall sub_8010FC2(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0

    result = sub_80C44A8(a1, a2, 335544320, a4);
    *(v4 + 80) = result;
    return result;
}


// 0x8010fd8
int __fastcall sub_8010FD8(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r1
    int v7; // r3
    int result; // r0

    v5 = sub_80C44A8(a1, a2, 335544320, a4);
    *(v4 + 80) = v5;
    result = sub_80C44A8(v5, v6, 671088640, v7);
    *(v4 + 96) = result;
    return result;
}


// 0x8011004
int __fastcall sub_8011004(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0

    result = sub_80C44A8(a1, a2, 150994944, a4);
    *(v4 + 80) = result;
    return result;
}


// 0x8011020
int sub_8011020()
{
    int v0; // r5

    return sub_801102A(*(v0 + 40));
}


// 0x801102a
int __fastcall sub_801102A(int a1)
{
    char *v1; // r0

    v1 = sub_80182B4(a1);
    return (off_801105C[v1[1]][v1[2]])();
}


// 0x8011044
int __fastcall sub_8011044(int a1, int a2)
{
    return (off_801105C[a1][a2])();
}


// 0x80111b8
int sub_80111B8()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C44C8(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x80111ca
int sub_80111CA()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C44C8(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x80111dc
int sub_80111DC()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C4204(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x80111ee
int sub_80111EE()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C44C8(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x8011200
int sub_8011200()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C44C8(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x8011212
int sub_8011212()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C44C8(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x8011224
int sub_8011224()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C44C8(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x8011236
int sub_8011236()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    v1 = *(v0 + 80);
    if ( v1 )
    {
        sub_80C44C8(v1);
        *(v0 + 80) = 0;
    }
    result = *(v0 + 96);
    if ( result )
    {
        sub_80C44C8(result);
        result = 0;
        *(v0 + 96) = 0;
    }
    return result;
}


// 0x8011256
int sub_8011256()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C44C8(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x8011268
int __fastcall sub_8011268(int a1)
{
    return (*(&off_801127C + a1))();
}


// 0x80112e0
int __fastcall sub_80112E0(int a1, int a2, int a3, int a4)
{
    return sub_8011344(&byte_104, a2, a3, a4);
}


// 0x80112ea
int __fastcall sub_80112EA(int a1, int a2, int a3, int a4)
{
    return sub_8011344(&byte_108, a2, a3, a4);
}


// 0x80112f4
int __fastcall sub_80112F4(int a1, int a2, int a3, int a4)
{
    return sub_8011344(266, a2, a3, a4);
}


// 0x80112fe
int __fastcall sub_80112FE(int a1, int a2, int a3, int a4)
{
    return sub_8011344(&dword_10A + 2, a2, a3, a4);
}


// 0x8011308
int __fastcall sub_8011308(int a1, int a2, int a3, int a4)
{
    return sub_8011344(byte_111, a2, a3, a4);
}


// 0x8011312
int __fastcall sub_8011312(int a1, int a2, int a3, int a4)
{
    return sub_8011344(byte_105, a2, a3, a4);
}


// 0x801131c
int __fastcall sub_801131C(int a1, int a2, int a3, int a4)
{
    return sub_8011344(&byte_109, a2, a3, a4);
}


// 0x8011326
int __fastcall sub_8011326(int a1, int a2, int a3, int a4)
{
    return sub_8011344(&dword_10A + 3, a2, a3, a4);
}


// 0x8011330
int __fastcall sub_8011330(int a1, int a2, int a3, int a4)
{
    return sub_8011344(270, a2, a3, a4);
}


// 0x801133a
int __fastcall sub_801133A(int a1, int a2, int a3, int a4)
{
    return sub_8011344(274, a2, a3, a4);
}


// 0x8011344
int __fastcall sub_8011344(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0

    result = sub_80C44A8(a1, a2, a3, a4);
    *(v4 + 80) = result;
    return result;
}


// 0x8011352
int __fastcall sub_8011352(int a1, int a2)
{
    int v2; // r5
    int result; // r0

    result = sub_80C468C(a1, a2, 1, 2);
    *(v2 + 80) = result;
    return result;
}


// 0x8011384
int __fastcall sub_8011384(int a1)
{
    return (*(&off_8011398 + a1))();
}


// 0x80113fc
int sub_80113FC()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C44C8(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x801140e
int sub_801140E()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 80);
    if ( result )
    {
        sub_80C46B0(result);
        result = 0;
        *(v0 + 80) = 0;
    }
    return result;
}


// 0x8011420
int __fastcall sub_8011420(int a1, int a2)
{
    int result; // r0

    if ( a1 )
        result = sub_8010DF6(2, a1);
    else
        result = sub_8011268(a2);
    return result;
}


// 0x8011438
int __fastcall sub_8011438(int a1, int a2)
{
    int result; // r0

    if ( a1 )
        result = sub_8011044(2, a1);
    else
        result = sub_8011384(a2);
    return result;
}


// 0x8011450
int __usercall sub_8011450@<R0>(Battle *obj@<R5>)
{
    AI *v1; // r2
    int result; // r0

    v1 = obj->ai;
    result = v1->naviVirusIndicator;
    if ( v1->naviVirusIndicator )
        result = (*(&off_8011470 + v1->AI_index))(obj->childobject2);
    return result;
}


// 0x80114d4
void nullsub_43()
{
    ;
}


// 0x8011504
_BYTE *__fastcall __noreturn sub_8011504(unsigned int spriteIdx, unsigned int a2)
{
    Battle *obj; // r5
    unsigned int v3_spriteIdx; // r6
    unsigned int v4; // r7
    _BYTE *result; // r0
    int v6; // r0

    v3_spriteIdx = spriteIdx;
    v4 = a2;
    sprite_load(obj, 128, v3_spriteIdx << 16 >> 24, v3_spriteIdx);
    sprite_loadAnimationData(obj);
    if ( v3_spriteIdx >> 24 )
        sprite_hasShadow();
    else
        sprite_noShadow(obj);
    obj->currAnimation = v3_spriteIdx << 8 >> 24;
    obj->currAnimationCpy = -1;
    result = object_createCollisionData();
    if ( result )
    {
        object_setupCollisionData(result, v4 >> 24, v4 << 8 >> 24, v4 << 16 >> 24);
        v6 = object_getFlip(obj);
        sprite_setFlip(obj, v6);
        result = byte_0 + 1;
    }
    return result;
}


// 0x801155a
int __fastcall sub_801155A(int result, char a2, char a3, char a4)
{
    int v4; // r5
    int v5; // r6

    *(result + 18) = a2;
    *(result + 19) = a3;
    *(result + 14) = a4;
    *(result + 44) = v5;
    *(result + 22) = *(v4 + 22);
    *(result + 76) = v4;
    return result;
}


// 0x801156a
signed int __fastcall sub_801156A(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r1
    unsigned __int8 v4; // vf
    int v5; // r1
    int v6; // r1
    int v7; // r2
    int v10; // [sp+0h] [bp-14h]
    int v11; // [sp+4h] [bp-10h]
    int v12; // [sp+8h] [bp-Ch]

    v12 = a1;
    v11 = 0;
    object_spawnHiteffect();
    v2 = sub_800E3BE();
    v10 = v2;
    if ( v12 != 1 )
    {
        v3 = *(v1 + 36);
        v4 = __OFSUB__(v3, v2);
        v5 = v3 - v2;
        *(v1 + 36) = v5;
        if ( ((v5 < 0) ^ v4) | (v5 == 0) )
            return -1;
    }
    sprite_clearFinalPalette();
    if ( v10 )
    {
        sprite_forceWhitePallete();
        if ( v12 )
        {
            if ( v12 != 2 )
                return 1;
            PlaySoundEffect(109, v6, v7);
        }
        else
        {
            PlaySoundEffect(133, v6, v7);
        }
        return 0;
    }
    return v11;
}


// 0x80115ce
signed int __fastcall sub_80115CE(int a1)
{
    int v1; // r5
    int v2; // r1
    int v3; // r0
    int v4; // r1
    unsigned __int8 v5; // vf
    int v6; // r1
    int v7; // r1
    int v8; // r2
    signed int v9; // r0
    int v11; // [sp+0h] [bp-14h]
    signed int v12; // [sp+4h] [bp-10h]
    int v13; // [sp+8h] [bp-Ch]

    v13 = a1;
    v12 = 0;
    object_spawnHiteffect();
    v11 = sub_800E3BE();
    v3 = v11 + v2;
    if ( !v13 )
    {
        v4 = *(v1 + 36);
        v5 = __OFSUB__(v4, v3);
        v6 = v4 - v3;
        *(v1 + 36) = v6;
        if ( ((v6 < 0) ^ v5) | (v6 == 0) )
            return -1;
    }
    sprite_clearFinalPalette();
    if ( v11 )
    {
        sprite_forceWhitePallete();
        if ( v13 )
        {
            v9 = 1;
        }
        else
        {
            PlaySoundEffect(133, v7, v8);
            v9 = 0;
        }
        v12 = v9;
    }
    return v12;
}


// 0x801162a
signed int __fastcall object_applyDamage(int a1)
{
    Battle *v1; // r5
    signed int result; // r0
    signed int v3; // ST00_4
    int v4; // r1
    int v5; // r2

    result = sub_801156A(a1);
    if ( result )
    {
        v3 = result;
        SpawnT4BattleObjectWithId0(v1, &v1->vx, v1->x, v1->y, v1->z);
        PlaySoundEffect(112, v4, v5);
        result = v3;
    }
    return result;
}


// 0x801164c
int __fastcall sub_801164C(int a1, int a2, int a3)
{
    int v3; // r6

    __asm
    {
        SVC         6
        SVC         6
    }
    return a1 + (a3 - a1) * v3;
}


// 0x8011680
void object_setAttack0()
{
    JUMPOUT(&loc_8011698);
}


// 0x8011684
void object_setAttack1()
{
    JUMPOUT(&loc_8011698);
}


// 0x8011688
int __fastcall object_setAttack2(char a1)
{
    int v1; // r5
    int v2; // r1

    *(v1 + 9) = a1;
    *(v1 + 10) = 0;
    v2 = *(v1 + 88) + 160;
    *v2 = 0;
    *(v2 + 28) = 2;
    return sub_801011A();
}


// 0x80116ae
int __fastcall sub_80116AE(char a1, __int16 a2, char a3)
{
    int v3; // r5
    int v4; // r7

    v4 = *(v3 + 88) + 160;
    *(v4 + 12) = a1;
    *(v4 + 24) = a2;
    *(v4 + 3) = a3;
    *(v4 + 44) = 0;
    (object_setAttack4)(16);
    return sub_80EB04C();
}


// 0x80116d8
int __fastcall sub_80116D8(char a1, __int16 a2)
{
    int v2; // r5
    int v3; // r7

    v3 = *(v2 + 88) + 160;
    *(v3 + 12) = a1;
    *(v3 + 24) = a2;
    *(v3 + 3) = 1;
    *(v3 + 44) = 0;
    (object_setAttack4)(16);
    return sub_80EB04C();
}


// 0x80116f6
int __fastcall sub_80116F6(char a1, char a2, char a3, int a4)
{
    int v4; // r5
    int v5; // r7

    v5 = *(v4 + 88) + 160;
    *(v5 + 22) = a1;
    *(v5 + 23) = a2;
    *(v5 + 24) = a3;
    *(v5 + 3) = 2;
    *(v5 + 44) = a4;
    (object_setAttack4)(16);
    return sub_80EB04C();
}


// 0x8011714
void __usercall object_exitAttackState(Battle *a1@<R5>)
{
    AI *v1; // r1
    u8 *v2; // r7
    int v3; // r6

    a1->currAnimation = 0;
    v1 = a1->ai;
    v2 = v1->attackVarRegion;
    v1->attackVarRegion[27] = 0;
    v3 = v1->attackVarRegion[28];
    if ( v3 != 4 )
    {
        if ( v3 == 2 )
            v1->unk_19 = v1->attackVarRegion[5];
        if ( v3 == 3 )
            v1->pad_13[2] = v1->attackVarRegion[5];
        v1->unk_1A = 0;
        sub_800FFEE(268435519);
        sub_8012EA8(a1);
        object_clearFlag(0x400000);
    }
    a1->currAction = 8;
    *v2 = 0;
}


// 0x8011764
int sub_8011764()
{
    int v0; // r5

    return (*(&off_80117D4 + *(*(v0 + 88) + 6)))();
}


// 0x801177a
int sub_801177A()
{
    int v0; // r5

    return (*(&off_80117D4 + *(*(v0 + 88) + 4)))();
}


// 0x8011790
int sub_8011790()
{
    int v0; // r6

    return (*(&off_80117D4 + *(v0 + 8)))();
}


// 0x80117a4
int sub_80117A4()
{
    int v0; // r5

    return (*(&off_80117D4 + *(*(v0 + 88) + 7)))();
}


// 0x80117ba
int __fastcall sub_80117BA(int a1)
{
    int v1; // r5
    int v2; // r6

    v2 = *(v1 + 88);
    return (*(&off_80117D4 + a1))();
}


// 0x8011a24
void nullsub_44()
{
    ;
}


// 0x8011a26
int __fastcall sub_8011A26(int a1)
{
    int v1; // r7
    int v2; // r0
    int v4; // r4
    int v5; // r0
    signed int v6; // r1

    v2 = sub_8013D5E(a1);
    switch ( v2 )
    {
        case 0:
            break;
        case 1:
            return sub_8011ADA();
        case 2:
            return sub_8011A7E(2);
    }
    *(v1 + 8) = sub_801265A(v2);
    *(v1 + 2) = 0;
    *(v1 + 4) = 0;
    *(v1 + 6) = 0;
    *(v1 + 10) = 0;
    *(v1 + 5) = 0;
    v4 = sub_8013774(0, 77);
    if ( v4 )
    {
        GetPositiveSignedRNG2();
        v6 = 1;
        if ( v4 >= 30 )
            v6 = 7;
        if ( v5 & v6 )
            LOBYTE(v4) = 0;
    }
    *(v1 + 12) = v4;
    *(v1 + 3) = 0;
    return 17;
}


// 0x8011a7e
signed int __fastcall sub_8011A7E(int a1)
{
    int v1; // r5
    int v2; // r7
    int v3; // ST00_4
    bool v4; // zf
    signed int v5; // r0
    int v6; // r0
    int v7; // r0
    signed int v8; // r4
    int v9; // r0
    signed int v10; // r1

    v3 = sub_8013774(a1, 1) + 1;
    v4 = sub_8015B54(*(v1 + 22)) == 5;
    v5 = v3;
    if ( v4 )
        v5 = 1;
    v6 = 10 * v5;
    *(v2 + 8) = v6;
    v7 = sub_8013774(v6, 79);
    v8 = v7;
    if ( !v7 )
        goto LABEL_14;
    if ( v7 != 6 )
    {
        GetPositiveSignedRNG2();
        v10 = 1;
        if ( v8 == 9 || v8 == 35 )
            v10 = 7;
        if ( v9 & v10 )
LABEL_14:
            v8 = 6;
    }
    *(v2 + 12) = v8;
    *(v2 + 2) = 0;
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
    *(v2 + 6) = 0;
    *(v2 + 10) = 0;
    *(v2 + 5) = 0;
    return 22;
}


// 0x8011ada
signed int sub_8011ADA()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 0;
    *(v0 + 12) = 0;
    return 51;
}


// 0x8011af2
signed int __fastcall sub_8011AF2(int a1)
{
    int v1; // r5
    int v2; // r7
    int v3; // r0
    int v4; // r0
    char v5; // zf
    int v6; // r0
    char v7; // r1

    v3 = sub_801265A(a1);
    if ( v3 > 5 )
        LOWORD(v3) = 5;
    *(v2 + 8) = v3;
    *(v2 + 10) = 0;
    *(v2 + 2) = 0;
    *(v2 + 4) = 0;
    *(v2 + 6) = 0;
    *(v2 + 5) = 0;
    *(v2 + 12) = sub_8013774(0, 77);
    *(v2 + 3) = 0;
    *(v2 + 48) = 0;
    v4 = sub_800A8F8(0);
    if ( !v5 && (v4 = sub_802E4B8(), v4 == 13) || (v6 = sub_8013774(v4, 44), v7 = 0, v6 == 24) )
    {
        *(v2 + 14) = 1;
        v7 = 8;
    }
    *(v2 + 13) = v7;
    *(*(v1 + 88) + 104) = 0;
    return 30;
}


// 0x8011b4a
signed int __fastcall sub_8011B4A(int a1)
{
    int v1; // r5
    int v2; // r7
    int v3; // r0
    int v4; // r0
    char v5; // zf
    int v6; // r0
    char v7; // r1

    v3 = sub_801265A(a1);
    if ( v3 > 5 )
        LOWORD(v3) = 5;
    *(v2 + 8) = v3;
    *(v2 + 10) = 0;
    *(v2 + 2) = 0;
    *(v2 + 4) = 0;
    *(v2 + 6) = 0;
    *(v2 + 5) = 0;
    *(v2 + 12) = sub_8013774(0, 77);
    *(v2 + 3) = 0;
    *(v2 + 48) = 0;
    v4 = sub_800A8F8(0);
    if ( !v5 && (v4 = sub_802E4B8(), v4 == 13) || (v6 = sub_8013774(v4, 44), v7 = 0, v6 == 23) )
    {
        *(v2 + 14) = 1;
        v7 = 8;
    }
    *(v2 + 13) = v7;
    *(*(v1 + 88) + 104) = 0;
    return 29;
}


// 0x8011ba2
signed int sub_8011BA2()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(30, 20);
    *(v0 + 10) = 148;
    *(v0 + 2) = 1;
    *(v0 + 3) = 1;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 0;
    *(v0 + 12) = &dword_23C;
    return 39;
}


// 0x8011bd0
signed int sub_8011BD0()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(50, 30);
    *(v0 + 10) = 138;
    *(v0 + 2) = 1;
    return 53;
}


// 0x8011be8
signed int sub_8011BE8()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(10, 10);
    *(v0 + 10) = 134;
    *(v0 + 2) = 2;
    return 58;
}


// 0x8011c00
signed int sub_8011C00()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(40, 30);
    *(v0 + 10) = 138;
    *(v0 + 2) = 3;
    return 60;
}


// 0x8011c18
signed int sub_8011C18()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(30, 20);
    *(v0 + 10) = 138;
    *(v0 + 2) = 32;
    *(v0 + 12) = 2964736;
    return 61;
}


// 0x8011c38
signed int sub_8011C38()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(40, 20);
    *(v0 + 6) = 0;
    *(v0 + 10) = 148;
    *(v0 + 2) = 3;
    *(v0 + 12) = 69376;
    return 62;
}


// 0x8011c5e
signed int sub_8011C5E()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(20, 10);
    *(v0 + 6) = 0;
    *(v0 + 10) = 148;
    *(v0 + 3) = 2;
    *(v0 + 12) = 13;
    *(v0 + 2) = 2;
    return 37;
}


// 0x8011c88
signed int sub_8011C88()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(40, 20);
    *(v0 + 6) = 0;
    *(v0 + 10) = 148;
    *(v0 + 3) = 1;
    *(v0 + 2) = 32;
    return 63;
}


// 0x8011ca8
signed int sub_8011CA8()
{
    int v0; // r7

    *(v0 + 3) = 20;
    *(v0 + 5) = 40;
    return 28;
}


// 0x8011cb4
int sub_8011CB4()
{
    Battle *v0; // r5
    int v1; // r7
    int result; // r0

    result = sub_80127C0(v0, 0);
    if ( result != 83 && result != 84 )
    {
        if ( result == 64 )
            *(v1 + 3) = 17;
        result = 65;
    }
    else
    {
        *(v1 + 4) = 1;
    }
    return result;
}


// 0x8011cd6
signed int sub_8011CD6()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(60, 20);
    *(v0 + 10) = 148;
    *(v0 + 3) = 16;
    *(v0 + 2) = -128;
    *(v0 + 12) = 0;
    *(v0 + 6) = 0;
    return 65;
}


// 0x8011cf8
signed int sub_8011CF8()
{
    int v0; // r7
    int v1; // r0
    char v2; // r1

    *(v0 + 8) = sub_8012642(40, 20);
    *(v0 + 10) = 148;
    v1 = sub_8013774(148, 44);
    v2 = 0;
    if ( v1 != 4 )
        v2 = 1;
    *(v0 + 3) = v2;
    *(v0 + 2) = 0;
    return 69;
}


// 0x8011d20
signed int sub_8011D20()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(70, 30);
    *(v0 + 10) = 158;
    *(v0 + 2) = 64;
    return 70;
}


// 0x8011d38
signed int sub_8011D38()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 158;
    *(v0 + 8) = sub_8012642(40, 20);
    return 74;
}


// 0x8011d54
signed int sub_8011D54()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 138;
    *(v0 + 8) = sub_8012642(90, 20);
    *(v0 + 2) = 16;
    return 26;
}


// 0x8011d74
signed int sub_8011D74()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(10, 10);
    *(v0 + 10) = 148;
    *(v0 + 2) = 16;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 0;
    *(v0 + 12) = &loc_1800;
    return 77;
}


// 0x8011d9c
signed int sub_8011D9C()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 158;
    *(v0 + 8) = sub_8012642(50, 30);
    *(v0 + 2) = -128;
    return 76;
}


// 0x8011dbc
signed int sub_8011DBC()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 158;
    *(v0 + 8) = sub_8012642(50, 20);
    *(v0 + 2) = 4;
    return 78;
}


// 0x8011ddc
signed int sub_8011DDC()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 158;
    *(v0 + 8) = sub_8012642(70, 30);
    *(v0 + 2) = 1;
    return 79;
}


// 0x8011dfc
signed int sub_8011DFC()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 158;
    *(v0 + 8) = sub_8012642(80, 20);
    *(v0 + 2) = 16;
    return 80;
}


// 0x8011e1c
signed int sub_8011E1C()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 158;
    *(v0 + 8) = sub_8012642(50, 10);
    *(v0 + 2) = 0;
    *(v0 + 18) = 2;
    return 82;
}


// 0x8011e40
signed int sub_8011E40()
{
    int v0; // r7
    signed __int16 v1; // r0
    char v2; // r1

    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 20;
    *(v0 + 10) = 20;
    *(v0 + 2) = -128;
    if ( sub_800F4A8() < 1 )
    {
        v1 = 80;
        v2 = 0;
    }
    else
    {
        sub_800F4B2(1);
        v1 = 200;
        v2 = 6;
    }
    *(v0 + 8) = v1;
    *(v0 + 3) = v2;
    *(v0 + 12) = 0;
    return 19;
}


// 0x8011e78
signed int sub_8011E78()
{
    int v0; // r7
    signed __int16 v1; // r0
    signed int v2; // r1

    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 20;
    *(v0 + 10) = 20;
    *(v0 + 2) = 3;
    if ( sub_800F4A8() < 1 )
    {
        v1 = 40;
        v2 = 1049857;
    }
    else
    {
        sub_800F4B2(1);
        v1 = 200;
        v2 = 1051650;
    }
    *(v0 + 8) = v1;
    *(v0 + 12) = v2;
    return 31;
}


// 0x8011eac
signed int sub_8011EAC()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 20;
    *(v0 + 10) = 20;
    *(v0 + 2) = 1;
    *(v0 + 8) = 100;
    *(v0 + 3) = 8;
    *(v0 + 12) = byte_300;
    return 28;
}


// 0x8011ed0
signed int sub_8011ED0()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 20;
    *(v0 + 10) = 20;
    *(v0 + 2) = 2;
    *(v0 + 8) = 40;
    *(v0 + 12) = 0;
    return 50;
}


// 0x8011ef0
signed int sub_8011EF0()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 20;
    *(v0 + 10) = 20;
    *(v0 + 2) = 3;
    *(v0 + 8) = 100;
    *(v0 + 12) = 3936256;
    return 66;
}


// 0x8011f10
signed int sub_8011F10()
{
    int v0; // r7

    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 20;
    *(v0 + 10) = 20;
    *(v0 + 2) = 4;
    *(v0 + 8) = 100;
    *(v0 + 3) = 1;
    *(v0 + 12) = 0;
    return 28;
}


// 0x8011f44
signed int sub_8011F44()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(30, 20);
    *(v0 + 10) = 148;
    *(v0 + 2) = 1;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 0;
    return 86;
}


// 0x8011f64
signed int sub_8011F64()
{
    int v0; // r7

    *(v0 + 8) = sub_8012642(50, 10);
    *(v0 + 10) = 148;
    *(v0 + 2) = 16;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 5) = 0;
    return 87;
}


// 0x8011f84
signed int sub_8011F84()
{
    int v0; // r7

    *(v0 + 5) = 40;
    return 88;
}


// 0x8011f8c
int sub_8011F8C()
{
    int v0; // r6
    int v1; // r7
    int v2; // r0
    int v4; // r0

    v2 = *(v0 + 13);
    if ( !*(v0 + 13) )
        return sub_8011A26(v2);
    v4 = v2 - 1;
    *(v0 + 13) = v4;
    *(v1 + 48) = *(v0 + v4 + 108) | (*&byte_80E98C0[2 * (*(v0 + v4 + 108) & 0xF)] << 16);
    *(v1 + 8) = 200;
    *(v1 + 10) = 148;
    *(v1 + 2) = 0;
    *(v1 + 4) = 0;
    *(v1 + 6) = 0;
    *(v1 + 10) = 0;
    *(v1 + 5) = 0;
    *(v1 + 3) = 2;
    return 17;
}


// 0x8011fce
signed int sub_8011FCE()
{
    int v0; // r6
    int v1; // r7
    int v2; // r0
    int v4; // r0

    v2 = *(v0 + 13);
    if ( !*(v0 + 13) )
        return sub_8011AF2(v2);
    v4 = v2 - 1;
    *(v0 + 13) = v4;
    *(v1 + 48) = *(v0 + v4 + 108) | (*&byte_80E98C0[2 * (*(v0 + v4 + 108) & 0xF)] << 16);
    *(v1 + 8) = 200;
    *(v1 + 10) = 148;
    *(v1 + 2) = 0;
    *(v1 + 4) = 0;
    *(v1 + 6) = 0;
    *(v1 + 10) = 0;
    *(v1 + 5) = 0;
    *(v1 + 3) = 2;
    return 17;
}


// 0x8012018
signed int sub_8012018()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 4;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = sub_8013790(0, 72);
    *(v0 + 12) = &off_114;
    *(v0 + 5) = 40;
    return 43;
}


// 0x8012044
signed int sub_8012044()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 1;
    *(v0 + 4) = 1;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 20;
    *(v0 + 8) = sub_8012642(80, 10);
    *(v0 + 12) = 0;
    return 19;
}


// 0x801206e
int sub_801206E()
{
    int v0; // r5
    int v1; // r7
    int v2; // ST00_4
    int v3; // r1

    v2 = (loc_80126EA)(72);
    v3 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(20);
    *(v1 + 10) = 138;
    return v2;
}


// 0x801208a
int sub_801208A()
{
    int v0; // r5
    int v1; // r7
    int v2; // ST00_4
    int v3; // r1

    v2 = (loc_80126EA)(73);
    v3 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(20);
    *(v1 + 10) = 148;
    return v2;
}


// 0x80120a6
signed int sub_80120A6()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 3;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 0;
    *(v0 + 12) = &off_114;
    *(v0 + 5) = 40;
    return 43;
}


// 0x80120cc
int sub_80120CC()
{
    return (loc_80126EA)(43);
}


// 0x80120d6
signed int sub_80120D6()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 1;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 148;
    *(v0 + 8) = sub_8012642(80, 10);
    *(v0 + 12) = 0;
    return 19;
}


// 0x80120fe
signed int sub_80120FE()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 4;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 50;
    *(v0 + 12) = &off_114;
    *(v0 + 5) = 40;
    return 43;
}


// 0x8012124
signed int __fastcall sub_8012124(int a1)
{
    int v1; // r7

    *(v1 + 8) = 5 * (sub_8013774(a1, 1) + 1);
    *(v1 + 10) = 133;
    *(v1 + 12) = 6;
    *(v1 + 18) = 0;
    return 93;
}


// 0x8012144
signed int __fastcall sub_8012144(int a1)
{
    int v1; // r7

    *(v1 + 8) = 10 * (sub_8013774(a1, 1) + 1);
    *(v1 + 10) = 148;
    *(v1 + 3) = 1;
    *(v1 + 2) = 0;
    *(v1 + 6) = 0;
    *(v1 + 12) = 100663296;
    return 56;
}


// 0x801216e
signed int sub_801216E()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 3;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 0;
    *(v0 + 12) = &dword_214;
    *(v0 + 5) = 40;
    return 43;
}


// 0x8012194
signed int sub_8012194()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 4;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 50;
    *(v0 + 12) = &off_114;
    *(v0 + 5) = 40;
    return 43;
}


// 0x80121bc
signed int sub_80121BC()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    *(v0 + 4) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 12) = 0;
    *(v0 + 8) = 50;
    *(v0 + 16) = 30;
    *(v0 + 5) = 70;
    return 90;
}


// 0x80121dc
signed int sub_80121DC()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(0);
    *(v1 + 10) = 138;
    *(v1 + 2) = 1;
    *(v1 + 12) = 30;
    return 9;
}


// 0x80121f8
signed int sub_80121F8()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(10);
    *(v1 + 10) = 138;
    *(v1 + 2) = 2;
    return 9;
}


// 0x8012210
signed int sub_8012210()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(14);
    *(v1 + 10) = 138;
    *(v1 + 2) = 0;
    return 9;
}


// 0x8012228
signed int sub_8012228()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(4);
    *(v1 + 10) = 138;
    *(v1 + 2) = 0;
    return 9;
}


// 0x8012240
signed int sub_8012240()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(2);
    *(v1 + 10) = 138;
    *(v1 + 2) = 3;
    return 9;
}


// 0x8012258
signed int sub_8012258()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(12);
    *(v1 + 10) = 138;
    *(v1 + 2) = 4;
    *(v1 + 12) = 30;
    *(v1 + 13) = 30;
    return 9;
}


// 0x8012278
signed int sub_8012278()
{
    int v0; // r7

    *(v0 + 8) = 10;
    *(v0 + 10) = 138;
    *(v0 + 2) = 4;
    *(v0 + 12) = 6;
    *(v0 + 13) = 6;
    return 9;
}


// 0x8012292
signed int sub_8012292()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(6);
    *(v1 + 10) = 138;
    *(v1 + 2) = 0;
    return 9;
}


// 0x80122aa
signed int sub_80122AA()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(8);
    *(v1 + 10) = 138;
    *(v1 + 2) = 1;
    return 9;
}


// 0x80122c2
signed int sub_80122C2()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(18);
    *(v1 + 10) = 138;
    *(v1 + 2) = 0;
    return 9;
}


// 0x80122da
signed int sub_80122DA()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1

    v2 = *(v0 + 22);
    *(v1 + 8) = sub_8010D04(16);
    *(v1 + 10) = 138;
    *(v1 + 2) = 0;
    return 9;
}


// 0x80122f2
signed int sub_80122F2()
{
    int v0; // r7

    *(v0 + 8) = 10;
    *(v0 + 10) = 0;
    *(v0 + 2) = 0;
    *(v0 + 12) = 6;
    *(v0 + 13) = 6;
    return 11;
}


// 0x801230c
signed int sub_801230C()
{
    int v0; // r7

    *(v0 + 8) = 10;
    *(v0 + 10) = 0;
    *(v0 + 2) = 0;
    *(v0 + 12) = 6;
    *(v0 + 13) = 6;
    return 12;
}


// 0x8012326
signed int sub_8012326()
{
    int v0; // r7

    *(v0 + 12) = 256;
    *(v0 + 8) = 30;
    *(v0 + 10) = 148;
    return 92;
}


// 0x801233c
int sub_801233C()
{
    return (loc_80126EA)(3);
}


// 0x8012346
int sub_8012346()
{
    return (loc_80126EA)(380);
}


// 0x8012350
int sub_8012350()
{
    return (loc_80126EA)(68);
}


// 0x801235a
int sub_801235A()
{
    return (loc_80126EA)(162);
}


// 0x8012364
int sub_8012364()
{
    return (loc_80126EA)(57);
}


// 0x801236e
int sub_801236E()
{
    return (loc_80126EA)(31);
}


// 0x8012378
int sub_8012378()
{
    return (loc_80126EA)(9);
}


// 0x8012382
int sub_8012382()
{
    return (loc_80126EA)(69);
}


// 0x801238c
int sub_801238C()
{
    return (loc_80126EA)(81);
}


// 0x8012396
int sub_8012396()
{
    return (loc_80126EA)(199);
}


// 0x80123a0
int sub_80123A0()
{
    return (loc_80126EA)(144);
}


// 0x80123aa
signed int sub_80123AA()
{
    int v0; // r7

    *(v0 + 8) = 70;
    *(v0 + 10) = 10;
    *(v0 + 3) = 2;
    *(v0 + 12) = 7;
    *(v0 + 2) = 2;
    return 37;
}


// 0x80123c8
int sub_80123C8()
{
    return (loc_80126EA)(119);
}


// 0x80123d2
int sub_80123D2()
{
    return (loc_80126EA)(1);
}


// 0x80123dc
int sub_80123DC()
{
    return (loc_80126EA)(64);
}


// 0x80123e6
int sub_80123E6()
{
    return (loc_80126EA)(101);
}


// 0x80123f0
int sub_80123F0()
{
    return (loc_80126EA)(78);
}


// 0x80123fa
int sub_80123FA()
{
    return (loc_80126EA)(202);
}


// 0x8012404
int sub_8012404()
{
    return (loc_80126EA)(7);
}


// 0x801240e
int sub_801240E()
{
    return (loc_80126EA)(150);
}


// 0x8012418
int sub_8012418()
{
    return (loc_80126EA)(79);
}


// 0x8012422
int sub_8012422()
{
    return (loc_80126EA)(80);
}


// 0x801242c
int sub_801242C()
{
    return (loc_80126EA)(164);
}


// 0x8012436
int sub_8012436()
{
    return (loc_80126EA)(8);
}


// 0x8012440
int sub_8012440()
{
    return (loc_80126EA)(15);
}


// 0x801244a
signed int sub_801244A()
{
    int v0; // r7

    *(v0 + 8) = 20;
    *(v0 + 10) = 138;
    *(v0 + 12) = 211968;
    return 94;
}


// 0x801245a
int sub_801245A()
{
    return (loc_80126EA)(381);
}


// 0x8012464
signed int sub_8012464()
{
    Battle *v0; // r5
    int v1; // r7
    signed int result; // r0

    if ( sub_8010740(382) )
    {
        object_exitAttackState(v0);
        result = 8;
    }
    else
    {
        *(v1 + 3) = 2;
        *(v1 + 12) = 120;
        result = 28;
    }
    return result;
}


// 0x8012484
int sub_8012484()
{
    return (loc_80126EA)(73);
}


// 0x801248e
int sub_801248E()
{
    return (loc_80126EA)(30);
}


// 0x8012498
signed int sub_8012498()
{
    int v0; // r7

    *(v0 + 8) = 40;
    *(v0 + 10) = 10;
    *(v0 + 3) = 1;
    *(v0 + 12) = 8;
    *(v0 + 2) = 1;
    return 37;
}


// 0x80124b8
int sub_80124B8()
{
    return (loc_80126EA)(19);
}


// 0x80124c2
int sub_80124C2()
{
    return (loc_80126EA)(131);
}


// 0x80124cc
int sub_80124CC()
{
    return (loc_80126EA)(20);
}


// 0x80124d6
int sub_80124D6()
{
    return (loc_80126EA)(34);
}


// 0x80124e0
int sub_80124E0()
{
    return (loc_80126EA)(72);
}


// 0x80124ea
int sub_80124EA()
{
    return (loc_80126EA)(54);
}


// 0x80124f4
int sub_80124F4()
{
    return (loc_80126EA)(52);
}


// 0x80124fe
signed int sub_80124FE()
{
    int v0; // r7

    *(v0 + 8) = 50;
    *(v0 + 10) = 10;
    *(v0 + 3) = 2;
    *(v0 + 12) = 4;
    *(v0 + 2) = 2;
    return 37;
}


// 0x801251c
int sub_801251C()
{
    return (loc_80126EA)(89);
}


// 0x8012526
signed int sub_8012526()
{
    int v0; // r7

    *(v0 + 3) = 9;
    *(v0 + 5) = 120;
    *(v0 + 8) = 0;
    return 28;
}


// 0x8012536
int sub_8012536()
{
    return (loc_80126EA)(142);
}


// 0x8012540
int sub_8012540()
{
    return (loc_80126EA)(51);
}


// 0x801254a
signed int sub_801254A()
{
    int v0; // r7

    *(v0 + 3) = 20;
    return 28;
}


// 0x8012552
int sub_8012552()
{
    return (loc_80126EA)(60);
}


// 0x801255c
int sub_801255C()
{
    _BYTE *v0; // r7
    int result; // r0

    result = (loc_80126EA)(37);
    v0[5] = 40;
    v0[28] = 3;
    v0[13] = 1;
    return result;
}


// 0x8012572
int sub_8012572()
{
    return (loc_80126EA)(86);
}


// 0x801257c
int sub_801257C()
{
    return (loc_80126EA)(286);
}


// 0x8012586
signed int sub_8012586()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 4;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 50;
    *(v0 + 12) = &off_114;
    *(v0 + 5) = 40;
    return 43;
}


// 0x80125ac
signed int sub_80125AC()
{
    int v0; // r7

    *(v0 + 2) = 0;
    *(v0 + 3) = 3;
    *(v0 + 4) = 0;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 0;
    *(v0 + 12) = &dword_214;
    *(v0 + 5) = 40;
    return 43;
}


// 0x80125d0
signed int __fastcall sub_80125D0(int a1)
{
    int v1; // r7
    int v2; // r0
    signed int v3; // r1

    *(v1 + 8) = 10 * (sub_8013774(a1, 1) + 1);
    *(v1 + 2) = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
    *(v1 + 6) = 0;
    *(v1 + 10) = 0;
    *(v1 + 5) = 0;
    *(v1 + 12) = 0;
    v2 = sub_8013774(0, 79);
    v3 = 6;
    if ( v2 )
        v3 = v2;
    *(v1 + 12) = v3;
    return 22;
}


// 0x8012608
int sub_8012608()
{
    return (loc_80126EA)(71);
}


// 0x8012612
int __fastcall sub_8012612(int a1)
{
    int v1; // r7
    int result; // r0

    result = sub_8011A26(a1);
    *(v1 + 3) = 1;
    return result;
}


// 0x801261e
int sub_801261E()
{
    return (loc_80126EA)(116);
}


// 0x8012628
int sub_8012628()
{
    return (loc_80126EA)(23);
}


// 0x8012632
signed int __fastcall sub_8012632(int a1)
{
    return sub_8012124(a1);
}


// 0x801263a
signed int __fastcall sub_801263A(int a1)
{
    return sub_8012144(a1);
}


// 0x8012642
int __fastcall sub_8012642(int a1, int a2)
{
    int v2; // r2
    int v4; // [sp+0h] [bp-Ch]
    int v5; // [sp+4h] [bp-8h]

    v4 = a1;
    v5 = a2;
    v2 = sub_801265A(a1);
    if ( v2 > 5 )
        v2 = 5;
    return v4 + v5 * v2;
}


// 0x801265a
int __fastcall sub_801265A(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r0
    int result; // r0
    int v5; // [sp-4h] [bp-8h]

    v2 = sub_8013774(a1, 41);
    v5 = sub_8013774(v2, 1) + *(dword_80126A4 + v2);
    v3 = sub_8015B54(*(v1 + 22));
    if ( v3 == 5 )
        result = 1;
    else
        result = v5 + *(dword_80126B0 + sub_8013774(v3, 44));
    if ( result > 10 )
        result = 10;
    return result;
}


// 0x80126e4
int __fastcall sub_80126E4(int a1)
{
    int v1; // r5
    int v2; // r7
    _BYTE *v3; // r0
    _BYTE *v4; // r6

    *(v2 + 20) = a1;
    v3 = getChip8021DA8(a1);
    v4 = v3;
    *(v2 + 12) = *(v3 + 4);
    *(v2 + 8) = (v3[10] << 16) + sub_80109A4(*(v2 + 20), *(v1 + 22));
    *(v2 + 5) = v4[20];
    *(v2 + 6) = 0;
    *(v2 + 3) = v4[12];
    *(v2 + 2) = v4[4] | byte_80129E4[v4[6]];
    *(v2 + 4) = 0;
    sub_8021D14(*(v1 + 22), *(v2 + 20));
    return v4[11];
}


// 0x801273e
int sub_801273E()
{
    int v0; // r5
    int v1; // ST10_4
    int v2; // r6
    int *v3; // r7
    int v4; // r2
    int v5; // r3
    int result; // r0
    int v7; // r1
    int v8; // ST08_4
    int v9; // ST0C_4
    bool v10; // zf
    int v11; // [sp-14h] [bp-24h]
    int v12; // [sp-10h] [bp-20h]

    v1 = *(v0 + 22);
    v2 = object_getAllianceDirection(v1);
    v3 = &byte_8012780[8 * v1];
    v4 = *v3;
    v5 = v3[1];
    result = *(&word_8012790 + v1);
LABEL_2:
    v7 = 3;
    while ( 1 )
    {
        v11 = result;
        v12 = v7;
        v8 = v4;
        v9 = v5;
        v10 = object_checkPanelParameters(result, v7, v4, v5) == 0;
        result = v11;
        v4 = v8;
        v5 = v9;
        if ( !v10 )
            return result;
        v7 = v12 - 1;
        if ( v12 == 1 )
        {
            result = v11 + v2;
            if ( (v11 + v2 - 1) <= 6 )
                goto LABEL_2;
            return 0;
        }
    }
}


// 0x8012792
unsigned int __fastcall sub_8012792(unsigned int a1, int a2, int a3, _BYTE *a4)
{
    int v4; // r4
    int v5; // r6
    _BYTE *v6; // r7
    int v7; // r2
    int v8; // r1
    int v9; // r1

    v4 = a2;
    v5 = a3;
    v6 = a4;
    while ( 1 )
    {
        a1 -= 4;
        if ( (a1 & 0x80000000) != 0 )
            break;
        --v6;
        v7 = *(v5 + a1);
        v8 = *v6;
        if ( *(v7 + v8) )
        {
            if ( v4 != *(v7 + v8) )
                continue;
            v9 = v8 + 2;
            *v6 = v9;
            if ( *(v7 + v9) )
                continue;
        }
        return a1 >> 2;
    }
    return 255;
}


// 0x80127c0
int __usercall sub_80127C0@<R0>(Battle *obj@<R5>, int a1@<R0>)
{
    int v2; // r4
    int v3; // r7
    int v4; // r0
    __int16 v5; // r1
    __int16 v6; // r2
    unsigned __int8 *v7; // r0
    unsigned __int8 *v8; // r4
    int v9; // r0
    __int16 v10; // r1
    __int16 v11; // r2
    signed int v12; // r0
    int v13; // r2
    int v14; // r1
    int v15; // r1
    int v16; // r1
    int v17; // r2
    int v18; // r0
    int v19; // r0
    int v24; // r2
    int vHP; // r0
    int v27; // [sp+0h] [bp-2Ch]
    int v28; // [sp+4h] [bp-28h]
    __int16 v29; // [sp+8h] [bp-24h]
    __int16 v30; // [sp+Ch] [bp-20h]
    char v31; // [sp+14h] [bp-18h]

    v27 = a1;
    sub_800FFFE();
    if ( v2 & 0x10000 )
    {
        *(v3 + 27) = 1;
        v4 = sub_800EE26(obj);
    }
    else
    {
        v4 = sub_800EDD0(obj, v27);
    }
    v28 = v4;
    v29 = v5;
    v30 = v6;
    v31 = v2;
    v7 = getChip8021DA8(v4);
    v8 = v7;
    v9 = sub_8010D58(v7[31]);
    if ( v9 != 0xFFFF )
    {
        v28 = v9;
        v29 = v10;
        v30 = v11;
        v31 = v8;
        v8 = getChip8021DA8(v9);
    }
    *(v3 + 20) = v28;
    sub_80126E4(v28);
    *(v3 + 4) = v27;
    *(v3 + 8) = v29;
    v12 = sub_8012C7C(v27);
    if ( v12 )
    {
        if ( v12 == 255 )
            v12 = *(v3 + 8);
        v14 = *(v3 + 8) + v12;
        *(v3 + 8) = v14;
        PlaySoundEffect(135, v14, v13);
    }
    *(v3 + 6) = v30;
    *(v3 + 8) = sub_8012A38(obj, *(v3 + 20), *(v3 + 8), v27);
    if ( v15 )
    {
        if ( v15 == 1 )
        {
            sub_8015BEC(obj->Alliance, 128);
        }
        else
        {
            if ( v15 != 2 )
                goto LABEL_16;
            sub_80143A6();
        }
        PlaySoundEffect(135, v16, v17);
    }
LABEL_16:
    *(v3 + 8) = sub_8012C34(*(v3 + 8), v31);
    v18 = sub_8012C4A(*(v3 + 20), *(v3 + 8));
    *(v3 + 8) = v18;
    v19 = sub_8013774(v18, 44);
    if ( v19 != 6 && v19 != 18 || (v19 = v8[4], v19 != 2) || (v19 = v8[9], v19 & 1) )
    {
        v24 = 0;
    }
    else
    {
        v19 = sub_8013790(v19, 62) + 19;
        __asm { SVC         6 }
        v24 = v19;
    }
    vHP = sub_8013790(v19, 80) + v24;
    if ( vHP )
        sub_800E2FC(obj, vHP, 0);
    if ( v8[9] & 4 )
        sub_800AB46(obj->Alliance, 6, 1);
    sub_800B79A(*(v3 + 20));
    return v8[11];
}


// 0x80128fc
int __fastcall sub_80128FC(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    int v4; // r7
    char *v5; // r0
    int v6; // r0
    _BYTE *v7; // r0
    int v9; // [sp+0h] [bp-14h]

    v9 = a2;
    v3 = *(v2 + 18);
    v4 = *(v2 + 19);
    v5 = object_getPanelDataOffset(v3, v4);
    if ( v5 )
    {
        if ( v5[2] != 6 )
            JUMPOUT(&loc_8012998);
        v6 = sub_8013774(v5, 44);
        if ( v6 != 7 && v6 != 19 )
            JUMPOUT(&loc_8012998);
        v7 = getChip8021DA8(v9);
        if ( !(v7[9] & 2) )
            JUMPOUT(&loc_8012998);
        if ( v7[9] & 1 )
            JUMPOUT(&loc_8012998);
        if ( v7[6] != 3 )
            JUMPOUT(&loc_8012998);
        object_setPanelType(v3, v4, 2);
    }
    return 0;
}


// 0x8012956
signed int __fastcall sub_8012956(int a1, __int16 a2)
{
    int v2; // r3
    int v3; // r3
    int v4; // r2
    int v5; // r3

    if ( !*a1 )
    {
        v2 = *(a1 + 2) + 1;
        *(a1 + 2) = v2;
        if ( v2 <= 12 )
        {
            v3 = *(a1 + 1);
            v4 = 2 * v3;
            v5 = v3 + 1;
            if ( v5 >= 3 )
                LOBYTE(v5) = 0;
            *(a1 + 1) = v5;
            *(a1 + v4 + 4) = a2;
            if ( ((*(a1 + 4) | *(a1 + 6) | *(a1 + 8)) & 0x22) == 34 )
            {
                *a1 = 1;
                return 1;
            }
        }
        else
        {
            *a1 = 1;
        }
    }
    return 0;
}


// 0x801299c
void __fastcall sub_801299C(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(a1, 16);
}


// 0x80129a6
int __fastcall sub_80129A6(int a1)
{
    int v1; // r7
    _DWORD *v2; // r0

    *(v1 + 20) = a1;
    v2 = getChip8021DA8(a1);
    *(v1 + 12) = v2[4];
    *(v1 + 8) = (*(v2 + 10) << 16) + *(v2 + 13);
    *(v1 + 5) = *(v2 + 20);
    *(v1 + 6) = 0;
    *(v1 + 3) = *(v2 + 12);
    *(v1 + 2) = *(v2 + 4) | byte_80129E4[*(v2 + 6)];
    return *(v2 + 11);
}


// 0x80129f4
void __noreturn sub_80129F4()
{
    int v0; // r5

    object_getPanelsFiltered(
        8 * *(v0 + 22),
        &dword_8012A28[2 * *(v0 + 22)],
        dword_8012A28[2 * *(v0 + 22)],
        dword_8012A28[2 * *(v0 + 22) + 1]);
}


// 0x8012a38
int __fastcall sub_8012A38(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v7; // [sp+0h] [bp-20h]
    int v8; // [sp+4h] [bp-1Ch]
    int v9; // [sp+8h] [bp-18h]

    v4 = a1;
    v7 = a2;
    v8 = a3;
    v9 = a4;
    if ( *(getChip8021DA8(a2) + 9) & 2 )
    {
        v5 = sub_8015B54(*(v4 + 22));
        if ( v5 == 2 || v5 == 3 || sub_8012AFA(v7, v9) || sub_8012B4E(v7, v9) || sub_8012BA2(v7, v9) || sub_8012ABC(v7) )
            v8 |= 0x8000u;
    }
    return v8;
}


// 0x8012abc
signed int __fastcall sub_8012ABC(int a1)
{
    signed int v1; // r7
    int v2; // r6
    int v3; // r0
    int v4; // r0
    _BYTE *v5; // r0

    v1 = 0;
    v2 = a1;
    v3 = sub_802D234();
    if ( v3 != 1 )
    {
        v4 = sub_8013774(v3, 44);
        if ( v4 >= 23 && v4 <= 24 )
        {
            v1 = 0;
            v5 = getChip8021DA8(v2);
            if ( v5[9] & 2 )
            {
                if ( !(v5[9] & 1) && v5[6] == 10 )
                    v1 = 1;
            }
        }
    }
    return v1;
}


// 0x8012afa
signed int __fastcall sub_8012AFA(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    signed int v4; // r7
    int v5; // r4
    int v6; // r0
    int v7; // r0
    _BYTE *v8; // r0
    int v9; // r1

    v3 = a1;
    v4 = 0;
    v5 = a2;
    v6 = sub_8013774(a1, 41);
    if ( v6 == 7 || (v7 = sub_8013774(v6, 44), v7 == 7) || v7 == 19 )
    {
        v4 = 0;
        v8 = getChip8021DA8(v3);
        if ( v8[9] & 2 )
        {
            if ( !(v8[9] & 1) && v8[4] == 4 )
            {
                if ( v5 || (v9 = *(v2 + 88), *(v9 + 29) == 2) && *(v9 + 30) == 1 )
                    v4 = 1;
            }
        }
    }
    return v4;
}


// 0x8012b4e
signed int __fastcall sub_8012B4E(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    signed int v4; // r7
    int v5; // r4
    int v6; // r0
    int v7; // r0
    _BYTE *v8; // r0
    int v9; // r1

    v3 = a1;
    v4 = 0;
    v5 = a2;
    v6 = sub_8013774(a1, 41);
    if ( v6 == 6 || (v7 = sub_8013774(v6, 44), v7 == 6) || v7 == 18 )
    {
        v4 = 0;
        v8 = getChip8021DA8(v3);
        if ( v8[9] & 2 )
        {
            if ( !(v8[9] & 1) && v8[4] == 2 )
            {
                if ( v5 || (v9 = *(v2 + 88), *(v9 + 29) == 2) && *(v9 + 30) == 1 )
                    v4 = 1;
            }
        }
    }
    return v4;
}


// 0x8012ba2
signed int __fastcall sub_8012BA2(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    signed int v4; // r7
    int v5; // r4
    _BYTE *v6; // r0
    int v7; // r1

    v3 = a1;
    v4 = 0;
    v5 = a2;
    if ( sub_8013774(a1, 41) == 11 )
    {
        v4 = 0;
        v6 = getChip8021DA8(v3);
        if ( v6[9] & 2 )
        {
            if ( !(v6[9] & 1) && v6[6] == 5 )
            {
                if ( v5 || (v7 = *(v2 + 88), *(v7 + 29) == 2) && *(v7 + 30) == 1 )
                    v4 = 1;
            }
        }
    }
    return v4;
}


// 0x8012be8
signed int __fastcall sub_8012BE8(int a1, int a2)
{
    int v2; // r5
    signed int v3; // r7
    int v4; // r6
    int v5; // r4
    int v6; // r0
    int v7; // r0
    _BYTE *v8; // r0

    v3 = 0;
    v4 = a1;
    v5 = a2;
    v6 = sub_802D234();
    if ( v6 != 1 )
    {
        v7 = sub_8013774(v6, 44);
        if ( v7 >= 11 && v7 <= 22 )
        {
            v3 = 0;
            v8 = getChip8021DA8(v4);
            if ( v8[9] & 2 )
            {
                if ( !(v8[9] & 1) && v8[6] == 10 && (v5 || *(*(v2 + 88) + 29) == 2) )
                    v3 = 1;
            }
        }
    }
    return v3;
}


// 0x8012c34
int __fastcall sub_8012C34(int result, char a2)
{
    if ( a2 & 2 )
        result |= 0x4000u;
    if ( a2 & 4 )
        result |= &loc_2000;
    return result;
}


// 0x8012c4a
int __fastcall sub_8012C4A(int a1, int a2)
{
    int v2; // r4
    _BYTE *v3; // r0
    int v4; // r0

    v2 = a2;
    v3 = getChip8021DA8(a1);
    if ( v3[9] & 2 )
    {
        if ( !(v3[9] & 1) && v3[6] == 10 )
        {
            v4 = sub_8013774(v3, 44);
            if ( v4 == 4 || v4 == 16 )
                v2 |= &loc_1000;
        }
    }
    return v2;
}


// 0x8012c7c
signed int __fastcall sub_8012C7C(int a1)
{
    int v1; // r4
    int v2; // r0
    signed int result; // r0

    v1 = a1;
    v2 = sub_8013774(a1, 44);
    if ( v2 != 2 && v2 != 14 )
    {
        if ( v2 != 3 && v2 != 15 || !v1 )
            return 0;
        result = 40;
    }
    else
    {
        if ( !v1 )
            return 0;
        result = 0x4000;
    }
    return result;
}


// 0x8012cb2
int sub_8012CB2()
{
    int v0; // r5
    int v1; // r0
    int v2; // r4
    int result; // r0
    int v4; // r3
    unsigned __int8 *v5; // r6
    signed int v6; // r4
    unsigned int v7; // r0
    char v8; // ST00_1
    int v9; // ST04_4
    int v10; // ST0C_4
    int v11; // [sp+0h] [bp-24h]
    int v12; // [sp+10h] [bp-14h]

    v1 = object_getEnemyByNameRange(&v11, 0, 186, *(v0 + 22) ^ 1);
    v2 = v1;
    result = object_getEnemyByNameRange(&v11 + v1, byte_100, 451, *(v0 + 22) ^ 1);
    if ( v2 + result )
    {
        sub_8012D24(&v12);
        v5 = &v12;
        v6 = 3;
        do
        {
            v7 = *v5;
            v8 = v7 & 7;
            v9 = v7 >> 4;
            v10 = v4;
            sub_8012642(30, 20);
            sub_80C7F20(v8, v9, 16, v10);
            ++v5;
            --v6;
        }
        while ( v6 );
        result = camera_initShakeEffect_80302a8(2, 20);
    }
    return result;
}


// 0x8012d24
unsigned int __fastcall sub_8012D24(_DWORD *a1)
{
    int v1; // r4
    int v2; // r6
    _BYTE *v3; // r7
    int v4; // r3
    char *v5; // r7
    char v6; // r0

    v3 = a1;
    *a1 = 0;
    v4 = v1;
    do
    {
        *v3++ = *(*v2 + 18) | 16 * *(*v2 + 19);
        v2 += 4;
        --v4;
    }
    while ( v4 );
    if ( v1 != 3 )
    {
        if ( v1 == 2 )
        {
            *v3 = *(v3 - 1);
        }
        else
        {
            v5 = v3 - 1;
            v6 = *v5;
            v5[1] = *v5;
            v5[2] = v6;
        }
    }
    return sub_8012D70();
}


// 0x8012d64
unsigned int sub_8012D64()
{
    return sub_8012D8C(0, 1);
}


// 0x8012d70
unsigned int sub_8012D70()
{
    sub_8012D8C(0, 1);
    sub_8012D8C(0, 2);
    return sub_8012D8C(1, 2);
}


// 0x8012d8c
unsigned int __fastcall sub_8012D8C(int a1, int a2)
{
    int v2; // r7
    unsigned int result; // r0
    int v4; // r0
    int v5; // r1
    int v6; // r2

    result = *(v2 + a1);
    if ( result == *(v2 + a2) )
    {
        v4 = object_reservePanel(result & 7, result >> 4);
        sub_8012DB8(v4, v5, v6);
    }
    return result;
}


// 0x8012db8
void __fastcall __noreturn sub_8012DB8(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, dword_8012DD4);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x8012dfc
signed int __fastcall sub_8012DFC(int a1)
{
    int v1; // r7
    _WORD *v2; // r4
    signed int result; // r0
    int *v4; // r1
    int v5; // r6
    __int16 v6; // r3
    __int16 v7; // r2
    char v8; // zf
    int v9; // r2

    v1 = a1;
    v2 = sub_8010022(a1);
    result = battle_isBattleOver();
    if ( result )
    {
        v2[17] = 0;
        v2[20] = 0;
        v2[18] = 0;
        v2[19] = 0;
    }
    else
    {
        result = sub_80136CC(v1, 44);
        if ( result < 23 || result > 24 )
        {
            v4 = &dword_2036820[2 * v1];
            v5 = *(v4 + 1);
            v6 = *(v4 + 1);
            v7 = v2[17];
            v2[20] = v7;
            v2[17] = v6;
            v2[18] = ~v7 & v6;
            v2[19] = ~v6 & v7;
            battle_isTimeStop();
            if ( v8 )
            {
                result = 0;
                v2[24] = 0;
                v2[21] = 0;
                v2[22] = 0;
                v2[23] = 0;
            }
            else
            {
                v9 = v2[21];
                v2[24] = v9;
                v2[21] = v5;
                v2[22] = ~v9 & v5;
                result = ~v5 & v9;
                v2[23] = result;
            }
        }
    }
    return result;
}


// 0x8012e74
signed int sub_8012E74()
{
    int v0; // r5
    _WORD *v1; // r4
    signed int result; // r0
    char v3; // zf

    v1 = *(v0 + 88);
    result = battle_isBattleOver();
    if ( result )
    {
        v1[17] = 0;
        v1[20] = 0;
        v1[18] = 0;
        v1[19] = 0;
    }
    else
    {
        result = battle_isPaused();
        if ( v3 )
        {
            sub_8012EA0();
            result = sub_8012EBC();
        }
    }
    return result;
}


// 0x8012ea0
int sub_8012EA0()
{
    return sub_8012FC8();
}


// 0x8012ea8
int __usercall sub_8012EA8@<R0>(Battle *obj@<R5>)
{
    AI *v1; // r3

    v1 = obj->ai;
    v1->unk_1D = 0;
    v1->unk_1B = 0;
    v1->unk_1E = 0;
    return sub_800FFEE(393216);
}


// 0x8012ebc
int sub_8012EBC()
{
    int v0; // r5
    _BYTE *v1; // r4
    int result; // r0
    char v3; // zf
    signed int v4; // r7
    int v5; // r0
    char v6; // r3
    int v7; // r0
    int v8; // r0

    v1 = *(v0 + 88);
    result = battle_isTimeStop();
    if ( !v3 )
        return result;
    sub_8012F3E();
    if ( v3 || (v4 = sub_8012F62(v1[30]), v5 = sub_800FFFE(), v6 = 0, !(v5 & 0x60000)) )
    {
        result = 0;
        v1[30] = 0;
        v1[27] = 0;
        v1[29] = 0;
        return result;
    }
    if ( v5 & 0x20000 )
    {
        v7 = v1[30];
        v1[30] = 1;
        if ( v7 == 1 || !v7 )
            goto LABEL_13;
    }
    else
    {
        if ( !(v5 & 0x40000) )
            goto LABEL_13;
        v8 = v1[30];
        v1[30] = 2;
        if ( v8 == 2 || !v8 )
            goto LABEL_13;
    }
    v1[27] = 0;
    v1[29] = 0;
LABEL_13:
    result = v1[27] + 1;
    v1[27] = result;
    if ( result >= 10 )
    {
        v6 = 1;
        if ( result >= v4 )
        {
            v1[27] = v4;
            v6 = 2;
        }
    }
    v1[29] = v6;
    return result;
}


// 0x8012f3e
BOOL sub_8012F3E()
{
    int v0; // r0
    BOOL result; // r0

    result = 0;
    if ( !(sub_800FFFE() & 0x1000002F) )
    {
        v0 = sub_801032C();
        if ( !(v0 & byte_200) )
        {
            if ( v0 & 0x10 )
                result = 1;
        }
    }
    return result;
}


// 0x8012f62
signed int __fastcall sub_8012F62(int a1)
{
    int v1; // r5
    int v2; // r4
    signed int v3; // r7
    char v4; // zf
    int v5; // r3
    signed int result; // r0
    int v7; // r1

    v2 = *(v1 + 88);
    v3 = 7;
    if ( a1 != 2 )
    {
        v3 = 5;
        a1 = sub_8013774(a1, 44);
        if ( a1 >= 11 && a1 <= 24 )
        {
            a1 = sub_8010004();
            if ( !v4 )
            {
                a1 = *(getChip8021DA8(a1) + 6);
                if ( a1 == 10 )
                    v3 = 17;
            }
        }
    }
    v5 = 2 * sub_8013774(a1, 3);
    result = 255;
    v7 = *(v2 + v3);
    if ( v7 != 255 )
        result = *&byte_8020404[10 * v7 + v5];
    return result;
}


// 0x8012fc8
int sub_8012FC8()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r6
    int v4; // r0
    char v5; // zf
    int result; // r0
    int v7; // r2
    int v8; // r1
    int v9; // r7
    __int16 v10; // r7
    int v11; // r0
    int v12; // r0
    int v13; // r2
    signed int v14; // r1
    int v15; // r1
    int v16; // r0
    __int16 v17; // r0
    int v18; // r0
    int v19; // r0

    v2 = *(v0 + 88);
    v3 = sub_800FFFE();
    v4 = battle_isTimeStop();
    if ( !v5 )
    {
        result = sub_800A772(*(v0 + 22));
        if ( result )
        {
            if ( !(&loc_800 & v3) )
            {
                result = sub_8010004();
                if ( (result + 1) & 0xFFFF )
                {
                    result = *(v2 + 44);
                    if ( result & 1 )
                        result = sub_800FFE4(&loc_800);
                }
            }
        }
        return result;
    }
    sub_800A8F8(v4);
    if ( !v5 && *(v2 + 36) & 4 )
    {
        if ( *(sub_802E070(*(v0 + 22)) + 20) >= &loc_1500 )
            return sub_800FFE4(&timer_2000000);
        v8 = *(v0 + 22);
        if ( *(*(v1 + oToolkit_S2034880_Ptr) + 13) == v8 )
        {
            PlaySoundEffect(105, v8, v7);
            sub_801EC44();
        }
    }
    if ( sub_802D234() != 1 )
    {
        v9 = *(v2 + 34);
        if ( sub_801032C() & &byte_400 )
        {
            if ( *(v2 + 36) & byte_300 )
            {
                if ( *(v0 + 23) )
                {
                    sub_800FFE4(&loc_1000);
                    sub_800FFEE(&loc_2000);
                }
                else
                {
                    sub_800FFE4(&loc_2000);
                    sub_800FFEE(&loc_1000);
                }
            }
        }
        else if ( battle_getFlags() & 2 && *(v2 + 36) & byte_300 )
        {
            return battle_setFlags(16);
        }
    }
    v10 = *(v2 + 34);
    v11 = sub_800FFFE();
    if ( !(v11 & 0x60000) )
    {
        sub_801336C();
        if ( !v5 && v10 & 1 )
        {
            sub_800FFE4(0x20000);
            goto LABEL_43;
        }
        v11 = sub_8013396();
        if ( !v5 )
        {
            if ( v10 & 2 )
                sub_800FFE4(0x40000);
            goto LABEL_43;
        }
    }
    if ( !(v11 & 0x20000) )
    {
        if ( !(v11 & 0x40000) )
            goto LABEL_43;
        sub_801336C();
        if ( !v5 && *(v2 + 36) & 1 )
        {
            sub_800FFEE(0x40000);
            sub_800FFE4(0x20000);
            goto LABEL_43;
        }
        sub_8013396();
        if ( !v5 )
        {
            if ( v10 & 2 )
                goto LABEL_43;
        }
LABEL_42:
        sub_800FFEE(393216);
        goto LABEL_43;
    }
    if ( *(v2 + 36) & 2 )
    {
        sub_800FFEE(0x20000);
        sub_800FFE4(0x40000);
        goto LABEL_43;
    }
    sub_801336C();
    if ( v5 || !(v10 & 1) )
        goto LABEL_42;
LABEL_43:
    v12 = *(v2 + 8);
    if ( v12 != 255 )
    {
        v12 = *(v2 + 21);
        if ( !*(v2 + 21) )
        {
            v13 = *(v2 + 36);
            v12 = *(v2 + 19);
            if ( !*(v2 + 19) )
            {
                if ( !(v13 & 2) )
                    goto LABEL_54;
                v12 = 8;
                *(v2 + 19) = 8;
            }
            v14 = 32;
            if ( *(v0 + 23) )
                v14 = 16;
            if ( v13 & v14 && *(v2 + 34) & 2 )
            {
                sub_800FFE4(16);
                v12 = 0;
                *(v2 + 19) = 0;
            }
            else
            {
                *(v2 + 19) = --v12;
            }
        }
    }
LABEL_54:
    v15 = *(v2 + 6);
    if ( v15 == 255 || v3 & 3 )
        goto LABEL_71;
    if ( v15 != 4 && v15 != 44 && v15 != 3 )
    {
        v17 = *(v2 + 36);
        if ( *(v2 + 7) != 255 )
            v17 = *(v2 + 38);
    }
    else
    {
        v16 = sub_8013774(v12, 44);
        if ( (v16 == 20 || v16 == 22) && sub_800FFFE() & 0x10 || sub_800FFFE() & 0x10000 )
            goto LABEL_71;
        v17 = *(v2 + 34);
    }
    if ( v17 & 2 )
    {
        v18 = 1;
        if ( *(v2 + 30) == 2 && *(v2 + 29) == 2 )
            v18 = 2;
        sub_800FFE4(v18);
    }
LABEL_71:
    if ( sub_802D234() == 9 && *(v2 + 36) & 1 )
        sub_800FFE4(0x10000000);
    result = sub_800A772(*(v0 + 22));
    if ( result )
    {
        if ( !(v3 & 0xC) )
        {
            result = sub_8010004();
            if ( result != 0xFFFF )
            {
                sub_801336C();
                if ( v5 )
                {
                    result = *(v2 + 36);
                    if ( !(result & 1) )
                        return result;
                }
                else
                {
                    result = *(v2 + 38);
                    if ( !(result & 1) )
                        return result;
                }
                v19 = 4;
                if ( *(v2 + 30) == 1 && *(v2 + 29) == 2 )
                    v19 = 8;
                result = sub_800FFE4(v19);
            }
        }
    }
    return result;
}


// 0x8013236
signed int __fastcall sub_8013236(int a1)
{
    _BYTE *v1; // r7
    int v2; // r4
    int v3; // r6
    int v4; // r0
    int v5; // r3
    signed int v6; // r6
    char *v7; // r4
    int v8; // r0
    int v10; // [sp+0h] [bp-14h]

    v10 = a1;
    if ( a1 >= byte_190 )
        return 0;
    v1 = getChip8021DA8(a1);
    v2 = v1[6];
    v3 = sub_8013774(v1, 44);
    if ( v3 == 2 && v2 == 10 && v1[9] & 2 && !(v1[9] & 1)
        || (v3 == 3 || v3 == 15) && (v10 >= 76 && v10 <= 79 || v2 == 5) && v1[9] & 2 && !(v1[9] & 1)
        || v3 >= 11 && v3 <= 22 && v2 == 10
        || (v3 == 7 || v3 == 19) && v1[6] == 3 && v1[9] & 2 && !(v1[9] & 1)
        || (v3 == 6 || v3 == 18) && v1[6] == 1 && v1[9] & 2 && !(v1[9] & 1)
        || (v3 == 9 || v3 == 21) && v2 == 9 && v1[9] & 2 && !(v1[9] & 1)
        || (v3 == 5 || v3 == 17) && !v1[6] && v1[9] & 2 && !(v1[9] & 1) )
    {
        return 1;
    }
    v4 = sub_800F49E();
    if ( v4 == 255 )
        return 0;
    v6 = v4;
    v7 = &byte_8021369;
    v8 = 2;
    if ( v1[9] & 2 )
    {
        if ( v1[9] & 1 )
            return 0;
        v8 = sub_8013774(1, 41);
        v5 = v1[6];
        if ( v8 == 5 )
        {
            if ( !v1[6] )
                goto LABEL_51;
            return 0;
        }
    }
    if ( v8 == 6 )
    {
        if ( v5 == 1 )
        {
            v7 = &byte_802136A;
            goto LABEL_51;
        }
        return 0;
    }
    if ( v8 == 7 )
    {
        if ( v5 == 3 )
        {
            v7 = &byte_802136B;
            goto LABEL_51;
        }
        return 0;
    }
    if ( v8 != 11 || v5 != 5 )
        return 0;
    v7 = &byte_802136C;
LABEL_51:
    if ( v6 < *v7 )
        return 0;
    return 1;
}


// 0x801336c
signed int sub_801336C()
{
    int v0; // r5
    int v1; // r1
    char v2; // zf
    int v3; // r0
    signed int result; // r0

    v1 = *(v0 + 88);
    if ( *(v1 + 5) == 255 && *(v1 + 17) == 255 || (sub_8012F3E(), v2) || (v3 = sub_8010004(), v3 == 0xFFFF) )
        result = 0;
    else
        result = sub_8013236(v3);
    return result;
}


// 0x8013396
BOOL sub_8013396()
{
    int v0; // r5
    char v1; // zf
    BOOL result; // r0

    result = 0;
    if ( *(*(v0 + 88) + 7) != 255 )
    {
        sub_8012F3E();
        if ( !v1 )
            result = 1;
    }
    return result;
}


// 0x80133ec
void sub_80133EC()
{
    signed int v0; // r5
    int v1; // r1

    v0 = 0;
    do
    {
        v1 = byte_801341B[v0];
        init_8013B4E();
        ++v0;
    }
    while ( v0 < 7 );
}


// 0x8013422
int __fastcall sub_8013422(int a1, int a2, int a3, int a4)
{
    return initNaviStats_WithDefaultStatsMaybe_8013438(&byte_203CE00[100 * a1], 100, byte_203CE00, a4);
}


// 0x8013438
// (void *struc) -> void
signed int __fastcall initNaviStats_WithDefaultStatsMaybe_8013438(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    signed int v5; // r1
    signed int v6; // r1
    signed int result; // r0

    v4 = a1;
    ZeroFillByWord(a1, 100);
    *(v4 + 32) = 1;
    *(v4 + 5) = 1;
    *(v4 + 7) = -1;
    *(v4 + 24) = 0;
    *(v4 + 25) = 0;
    *(v4 + 8) = 0;
    *(v4 + 9) = 4;
    *(v4 + 10) = 5;
    *(v4 + 11) = 5;
    *(v4 + 12) = 1;
    *(v4 + 13) = 0;
    *(v4 + 38) = 0;
    *(v4 + 18) = -1;
    *(v4 + 39) = 31;
    *(v4 + 40) = 0;
    *(v4 + 14) = -103;
    *(v4 + 64) = 100;
    *(v4 + 66) = 100;
    *(v4 + 62) = 100;
    *(v4 + 44) = 0;
    *(v4 + 45) = 0;
    v5 = 46;
    do
        *(v4 + v5++) = -1;
    while ( v5 <= 48 );
    v6 = 86;
    do
        *(v4 + v6++) = -1;
    while ( v6 <= 91 );
    result = 3;
    *(v4 + 33) = 3;
    return result;
}


// 0x80134c8
signed int __fastcall sub_80134C8(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    signed int result; // r0

    v4 = a1;
    ZeroFillByWord(a1, 100);
    *(v4 + 32) = 1;
    *(v4 + 5) = 1;
    *(v4 + 7) = -1;
    *(v4 + 24) = 0;
    *(v4 + 25) = 0;
    *(v4 + 8) = 0;
    *(v4 + 9) = 4;
    *(v4 + 10) = 5;
    *(v4 + 11) = 5;
    *(v4 + 12) = 1;
    *(v4 + 13) = 0;
    *(v4 + 38) = 0;
    *(v4 + 18) = -1;
    *(v4 + 39) = 31;
    *(v4 + 40) = 0;
    *(v4 + 14) = -103;
    *(v4 + 64) = byte_1F4;
    *(v4 + 66) = byte_1F4;
    *(v4 + 62) = byte_1F4;
    *(v4 + 1) = 2;
    *(v4 + 2) = 2;
    *(v4 + 3) = 2;
    *(v4 + 44) = 0;
    *(v4 + 46) = -1;
    *(v4 + 47) = -1;
    *(v4 + 48) = -1;
    result = 1;
    *(v4 + 33) = 1;
    return result;
}


// 0x8013554
signed int __fastcall sub_8013554(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    __int16 v5; // r0
    signed int v6; // r1
    signed int result; // r0
    signed int v8; // r1

    v4 = a1;
    ZeroFillByWord(a1, 100);
    *(v4 + 4) = 70;
    *(v4 + 5) = -1;
    *(v4 + 7) = -1;
    *(v4 + 24) = 0;
    *(v4 + 25) = 0;
    *(v4 + 8) = 0;
    *(v4 + 9) = 4;
    *(v4 + 10) = 5;
    *(v4 + 11) = 5;
    *(v4 + 12) = 1;
    *(v4 + 13) = 0;
    *(v4 + 38) = 0;
    *(v4 + 18) = -1;
    *(v4 + 39) = 31;
    *(v4 + 40) = 0;
    *(v4 + 14) = -103;
    v5 = GetNaviStatsHword(1, 66);
    *(v4 + 64) = v5;
    *(v4 + 66) = v5;
    *(v4 + 62) = v5;
    *(v4 + 44) = 0;
    *(v4 + 41) = 7;
    *(v4 + 45) = 0;
    v6 = 46;
    do
        *(v4 + v6++) = -1;
    while ( v6 <= 48 );
    result = 255;
    v8 = 86;
    do
        *(v4 + v8++) = -1;
    while ( v8 <= 91 );
    return result;
}


// 0x80135e8
signed int __fastcall sub_80135E8(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    __int16 v5; // r0
    signed int v6; // r1
    signed int result; // r0
    signed int v8; // r1

    v4 = a1;
    ZeroFillByWord(a1, 100);
    *(v4 + 4) = 76;
    *(v4 + 68) = 75;
    *(v4 + 5) = -1;
    *(v4 + 7) = -1;
    *(v4 + 24) = 0;
    *(v4 + 25) = 0;
    *(v4 + 8) = 0;
    *(v4 + 9) = 4;
    *(v4 + 10) = 5;
    *(v4 + 11) = 5;
    *(v4 + 12) = 1;
    *(v4 + 13) = 0;
    *(v4 + 38) = 0;
    *(v4 + 18) = -1;
    *(v4 + 39) = 31;
    *(v4 + 40) = 0;
    *(v4 + 14) = -103;
    v5 = GetNaviStatsHword(1, 66);
    *(v4 + 64) = v5;
    *(v4 + 66) = v5;
    *(v4 + 62) = v5;
    *(v4 + 44) = 0;
    *(v4 + 41) = 10;
    *(v4 + 45) = 0;
    v6 = 46;
    do
        *(v4 + v6++) = -1;
    while ( v6 <= 48 );
    result = 255;
    v8 = 86;
    do
        *(v4 + v8++) = -1;
    while ( v8 <= 91 );
    return result;
}


// 0x8013682
// (int idx) -> void*
char *__fastcall sub_8013682(int a1)
{
    return &byte_203CE00[100 * a1];
}


// 0x8013690
char *__fastcall GetBattleNaviStats203CB10Addr(int a1)
{
    return &eBattleNaviStats203CB10[100 * a1];
}


// 0x80136a0
char *__fastcall GetBattleNaviStats2034A60Addr(int a1)
{
    return &eBattleNaviStats2034A60 + 100 * a1;
}


// 0x80136b0
char *__fastcall sub_80136B0(int a1, int a2, char a3)
{
    int v3; // r6
    char v4; // r7
    char *result; // r0

    v3 = a2;
    v4 = a3;
    result = sub_8013682(a1);
    result[v3] = v4;
    return result;
}


// 0x80136be
char *__fastcall sub_80136BE(int a1, int a2, __int16 a3)
{
    int v3; // r6
    __int16 v4; // r7
    char *result; // r0

    v3 = a2;
    v4 = a3;
    result = sub_8013682(a1);
    *&result[v3] = v4;
    return result;
}


// 0x80136cc
int __fastcall sub_80136CC(int a1, int a2)
{
    return sub_8013682(a1)[a2];
}


// 0x80136d8
int __fastcall sub_80136D8(int a1, int a2)
{
    return sub_8013682(a1)[a2];
}


// 0x80136e4
int __fastcall sub_80136E4(int a1, int a2)
{
    return *&sub_8013682(a1)[a2];
}


// 0x80136f0
int __fastcall SetNaviStatsByte(int a1, int a2, char a3)
{
    int v3; // r10
    int result; // r0

    result = 100 * (a1 != 0);
    *(*(v3 + oToolkit_S20047CC_Ptrs) + result + a2) = a3;
    return result;
}


// 0x8013704
int __fastcall GetNaviStatsByte(int a1, int a2)
{
    int v2; // r10

    return *(*(v2 + oToolkit_S20047CC_Ptrs) + 100 * (a1 != 0) + a2);
}


// 0x8013718
int __fastcall GetNaviStatsByte_8013718(int a1, int a2)
{
    int v2; // r10

    return *(*(v2 + oToolkit_S20047CC_Ptrs) + 100 * (a1 != 0) + a2);
}


// 0x801372c
int __fastcall SetNaviStatsHword(int a1, int a2, __int16 a3)
{
    int v3; // r10
    int result; // r0

    result = 100 * (a1 != 0);
    *(*(v3 + oToolkit_S20047CC_Ptrs) + result + a2) = a3;
    return result;
}


// 0x8013740
int __fastcall GetNaviStatsHword(int a1, int a2)
{
    int v2; // r10

    return *(*(v2 + oToolkit_S20047CC_Ptrs) + 100 * (a1 != 0) + a2);
}


// 0x8013754
char *__fastcall sub_8013754(int a1, int a2, char a3)
{
    int v3; // r5
    int v4; // r6
    char v5; // r7
    char *result; // r0

    v4 = a2;
    v5 = a3;
    result = sub_8013682(*(v3 + 22));
    result[v4] = v5;
    return result;
}


// 0x8013764
char *__fastcall sub_8013764(int a1, int a2, __int16 a3)
{
    int v3; // r5
    int v4; // r6
    __int16 v5; // r7
    char *result; // r0

    v4 = a2;
    v5 = a3;
    result = sub_8013682(*(v3 + 22));
    *&result[v4] = v5;
    return result;
}


// 0x8013774
int __fastcall sub_8013774(int a1, int a2)
{
    int v2; // r5

    return sub_8013682(*(v2 + 22))[a2];
}


// 0x8013782
int __fastcall GetBattleNaviStatsByte_AllianceFromBattleObject_8013782(int a1, int a2)
{
    int v2; // r5

    return sub_8013682(*(v2 + 22))[a2];
}


// 0x8013790
int __fastcall sub_8013790(int a1, int a2)
{
    int v2; // r5

    return *&sub_8013682(*(v2 + 22))[a2];
}


// 0x801379e
// (int a1, int a2, int a3) -> void
int __fastcall SetCurPETNaviStatsByte(int a1, int a2, char a3)
{
    int v3; // r10
    char v4; // ST04_1
    int result; // r0
    int v6; // [sp+0h] [bp-Ch]

    v4 = a3;
    result = 100 * SelectS20047CCStruct8014018(a1);
    *(*(v3 + oToolkit_S20047CC_Ptrs) + result + v6) = v4;
    return result;
}


// 0x80137b6
// (int a1, int a2) -> u8
int __fastcall GetCurPETNaviStatsByte(int a1)
{
    int v1; // r10
    int v3; // [sp+0h] [bp-8h]

    return *(*(v1 + oToolkit_S20047CC_Ptrs) + 100 * SelectS20047CCStruct8014018(a1) + v3);
}


// 0x80137ce
int __fastcall GetCurPetNaviStatsSignedByte(int a1)
{
    int v1; // r10
    int v3; // [sp+0h] [bp-8h]

    return *(*(v1 + oToolkit_S20047CC_Ptrs) + 100 * SelectS20047CCStruct8014018(a1) + v3);
}


// 0x80137e6
int __fastcall SetField16ToSelectedS20047CCStruct(int a1, int a2, __int16 a3)
{
    int v3; // r10
    __int16 v4; // ST04_2
    int result; // r0
    int v6; // [sp+0h] [bp-Ch]

    v4 = a3;
    result = 100 * SelectS20047CCStruct8014018(a1);
    *(*(v3 + oToolkit_S20047CC_Ptrs) + result + v6) = v4;
    return result;
}


// 0x80137fe
int __fastcall GetField16FromSelectedS20047CCStruct(int a1)
{
    int v1; // r10
    int v3; // [sp+0h] [bp-8h]

    return *(*(v1 + oToolkit_S20047CC_Ptrs) + 100 * SelectS20047CCStruct8014018(a1) + v3);
}


// 0x8013816
int __fastcall GetBattleNaviStats203CB10Byte(int a1, int a2)
{
    return GetBattleNaviStats203CB10Addr(a1)[a2];
}


// 0x8013822
int __fastcall GetBattleNaviStats203CB10Hword(int a1, int a2)
{
    return *&GetBattleNaviStats203CB10Addr(a1)[a2];
}


// 0x801382e
int __fastcall GetBattleNaviStats2034A60Byte(int a1, int a2)
{
    return GetBattleNaviStats2034A60Addr(a1)[a2];
}


// 0x801383a
int __fastcall GetBattleNaviStats2034A60Hword(int a1, int a2)
{
    return *&GetBattleNaviStats2034A60Addr(a1)[a2];
}


// 0x8013846
signed int initNaviStats203CCE0_8013846()
{
    char *v0; // r0
    int v1; // r1
    int v2; // r2
    int v3; // r3

    v0 = GetNaviStats203CCE0Addr(0);
    return initNaviStats_WithDefaultStatsMaybe_8013438(v0, v1, v2, v3);
}


// 0x8013854
char *__fastcall GetNaviStats203CCE0Addr(int a1)
{
    return &eNaviStats203CCE0[100 * a1];
}


// 0x8013864
char *__fastcall SetNaviStats203CCE0Byte(int a1, int a2, char a3)
{
    int v3; // r6
    char v4; // r7
    char *result; // r0

    v3 = a2;
    v4 = a3;
    result = GetNaviStats203CCE0Addr(0);
    result[v3] = v4;
    return result;
}


// 0x8013874
char *__fastcall SetNaviStats203CCE0Hword(int a1, int a2, __int16 a3)
{
    int v3; // r6
    __int16 v4; // r7
    char *result; // r0

    v3 = a2;
    v4 = a3;
    result = GetNaviStats203CCE0Addr(0);
    *&result[v3] = v4;
    return result;
}


// 0x8013884
int __fastcall GetNaviStats203CCE0Byte(int a1, int a2)
{
    return GetNaviStats203CCE0Addr(0)[a2];
}


// 0x8013892
void sub_8013892()
{
    int v0; // r5
    int v1; // r7
    char *v2; // r0
    signed int v3; // r0
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    sub_8013682(*(v0 + 22));
    v1 = *(v0 + 88);
    *(v0 + 46) = 10;
    v2 = sub_802D246();
    if ( v2 & 8 || v2 & 0x10000 || (v2 = sub_8013774(v2, 14), v2 != &loc_FC + 3) )
    {
        sub_8013774(v2, 15);
        v3 = sub_8015C2C();
        v2 = sub_8013754(v3, 14, v3);
    }
    v4 = sub_8013774(v2, 6);
    if ( v4 )
    {
        sub_801A7CC(v4);
        v4 = sub_80E0D98(*(v0 + 88), v5, v6, v7);
    }
    if ( !sub_8013774(v4, 33) )
        sub_801443C();
    JUMPOUT(&loc_8013918);
}


// 0x801390c
void sub_801390C()
{
    int v0; // r5
    char *v1; // r0
    int v2; // r7
    int v3; // r0

    v1 = sub_8013682(*(v0 + 22));
    v2 = *(v0 + 88);
    *(v2 + 7) = v1[5];
    *(v2 + 8) = v1[7];
    object_clearFlag(GameEntryPoint);
    sub_800EB08();
    v3 = *(v2 + 80);
    if ( v3 )
    {
        sub_80E5410(v3);
        *(v2 + 80) = 0;
    }
    JUMPOUT(&loc_8013956);
}


// 0x801393a
int sub_801393A()
{
    int v0; // r5
    char *v1; // r6
    int v2; // r7
    int v3; // r0
    int v4; // r0
    char v5; // r3
    int v6; // r0
    int v7; // r0
    char v8; // r3
    int result; // r0

    v1 = sub_8013682(*(v0 + 22));
    v2 = *(v0 + 88);
    if ( !v1[44] )
    {
        *(v2 + 7) = v1[5];
        *(v2 + 8) = v1[7];
    }
    if ( v1[27] )
    {
        v3 = object_setFlag1(32);
        v4 = sub_80107C0(v3);
        sub_801A082(v4, 16, 2, v5);
    }
    else
    {
        v6 = object_clearFlag(32);
        v7 = sub_80107C0(v6);
        sub_801A082(v7, 1, 2, v8);
    }
    if ( v1[28] )
        object_setFlag1(16);
    else
        object_clearFlag(16);
    object_setFlag1(&timer_2000000);
    if ( v1[29] )
        object_setFlag1(0x40000);
    else
        object_clearFlag(0x40000);
    if ( v1[35] )
        result = object_setFlag1(0x20000);
    else
        result = object_clearFlag(0x20000);
    return result;
}


// 0x80139c4
int sub_80139C4()
{
    int v0; // r5
    unsigned __int8 *v1; // r7
    int result; // r0
    int v3; // r2

    v1 = *(v0 + 88);
    result = *(v0 + 36);
    if ( *(v0 + 36) )
    {
        result = *v1;
        if ( result == 2 )
        {
            result = v1[1];
            if ( result <= 11 )
            {
                result = sub_8015B54(*(v0 + 22));
                if ( result == 2 )
                {
                    result = *(v1 + 23);
                    if ( !result )
                        result = sub_80C4C12(0, 4, v3, 16);
                }
            }
        }
    }
    return result;
}


// 0x80139f6
int __fastcall sub_80139F6(char *a1)
{
    int *v1; // r5
    int v2; // r4
    int v3; // r1
    char v4; // r2
    char *v5; // r0
    char *v6; // r0
    char *v7; // r0
    int v8; // r1
    int v9; // r2
    char *v10; // r0
    int v11; // r0
    int v13; // [sp+0h] [bp-10h]
    int v14; // [sp+4h] [bp-Ch]

    v2 = v1[21];
    v3 = *(v2 + 164);
    v13 = *(v2 + 164);
    if ( *(v2 + 164) )
    {
        v4 = *(v2 + 165);
        v14 = *(v2 + 165);
        if ( v3 != 24 && v3 != 25 )
        {
            switch ( v3 )
            {
                case 84:
                    a1 = sub_8013790(a1, 84);
                    v4 = v14 + a1;
                    break;
                case 255:
                    v13 = 20;
                    a1 = sub_8013774(a1, 20);
                    v4 = a1 + 4;
                    if ( !((((a1 + 4) < 0) ^ __OFADD__(a1, 4)) | (a1 + 4 == 0)) )
                        v4 = 4;
                    break;
                case 254:
                    v5 = sub_8013754(a1, 18, 4);
                    a1 = sub_8013754(v5, 19, 4);
                    return sub_800FF5E(a1);
                case 251:
                    a1 = sub_8014080(a1);
                    return sub_800FF5E(a1);
                case 250:
                    v6 = sub_8013754(a1, 18, 4);
                    a1 = sub_8013754(v6, 19, 2);
                    return sub_800FF5E(a1);
                case 249:
                    v7 = sub_8013754(a1, 18, 4);
                    a1 = sub_8013754(v7, 19, 1);
                    return sub_800FF5E(a1);
                case 248:
                    sub_80140EE(a1);
                    sub_80E08C4(0x100000, v1[13], v1[14], v1[15] + 0x100000);
                    a1 = PlaySoundEffect(142, v8, v9);
                    return sub_800FF5E(a1);
                case 245:
                    v10 = sub_8013754(a1, 18, 3);
                    a1 = sub_8013754(v10, 19, 1);
                    return sub_800FF5E(a1);
            }
        }
        else
        {
            a1 = sub_8013774(a1, v3);
            v4 = v14 + a1;
            if ( &a1[v14] > 7 )
                v4 = 7;
        }
        if ( v13 < 100 )
        {
            sub_8013754(a1, v13, v4);
            v11 = sub_801393A();
            a1 = sub_801469C(v11);
        }
    }
    return sub_800FF5E(a1);
}


// 0x8013ae4
char *__fastcall sub_8013AE4(char *result)
{
    int v1; // r5
    int v2; // r3
    int v3; // r1
    char v4; // r2
    int v5; // [sp+0h] [bp-Ch]
    int v6; // [sp+4h] [bp-8h]

    v2 = *(v1 + 84);
    v3 = *(v2 + 164);
    v5 = *(v2 + 164);
    if ( *(v2 + 164) )
    {
        v6 = *(v2 + 165);
        if ( v3 == 24 || v3 == 25 )
        {
            result = sub_8013774(result, v3);
            v4 = v6 + result;
            if ( &result[v6] > 7 )
                v4 = 7;
            if ( v5 < 100 )
                result = sub_8013754(result, v5, v4);
        }
    }
    return result;
}


// 0x8013b20
int sub_8013B20()
{
    int v0; // r5
    int v1; // r3
    int v2; // r4
    int result; // r0
    char v4; // r2
    int v5; // [sp+4h] [bp-Ch]

    v1 = *(v0 + 84);
    v2 = *(v0 + 88);
    if ( *(v1 + 164) )
    {
        v5 = *(v1 + 165);
        if ( *(v1 + 164) == 24 )
        {
            result = *(v2 + 18);
            v4 = v5 + result;
            if ( v5 + result > 7 )
                v4 = 7;
            *(v2 + 18) = v4;
        }
    }
    return result;
}


// 0x8013b4e
// (bool a1, int a2) -> void
void init_8013B4E()
{
    int v0; // r10
    int v1; // r7

    v1 = *(v0 + oToolkit_S20047CC_Ptrs);
    JUMPOUT(&loc_8013B6E);
}


// 0x8013b64
// (int idx, int a2) -> void
int __fastcall init_8013B64(int a1, int a2)
{
    int v2; // r4
    char *v3; // r7
    int v4; // r1
    int v5; // r2
    int v6; // r3
    char *v7; // r6
    __int16 v8; // r0
    int result; // r0

    v2 = a2;
    v3 = sub_8013682(a1);
    initNaviStats_WithDefaultStatsMaybe_8013438(v3, v4, v5, v6);
    v7 = &byte_80210DD[16 * v2];
    v3[41] = v2;
    v8 = 2 * *v7;
    *(v3 + 32) = v8;
    *(v3 + 33) = v8;
    *(v3 + 31) = v8;
    v3[35] = v7[1];
    v3[27] = v7[2];
    v3[28] = v7[3];
    v3[29] = v7[4];
    v3[6] = v7[5];
    v3[11] = v7[6];
    v3[12] = v7[7];
    v3[4] = v7[8];
    v3[5] = v7[9];
    v3[7] = v7[10];
    *(v3 + 35) = v7[11];
    *(v3 + 37) = v7[12];
    *(v3 + 36) = v7[13];
    *v3 = v7[14];
    result = v7[15];
    v3[57] = result;
    return result;
}


// 0x8013bda
int __fastcall sub_8013BDA(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // r4
    char *v6; // r6
    __int16 v7; // r0
    int result; // r0

    v4 = a1;
    v5 = a2;
    initNaviStats_WithDefaultStatsMaybe_8013438(a1, a2, a3, a4);
    v6 = &byte_80210DD[16 * v5];
    *(v4 + 41) = v5;
    v7 = *&byte_802F0A8[2 * v5];
    *(v4 + 64) = v7;
    *(v4 + 66) = v7;
    *(v4 + 62) = v7;
    *(v4 + 35) = v6[1];
    *(v4 + 27) = v6[2];
    *(v4 + 28) = v6[3];
    *(v4 + 29) = v6[4];
    *(v4 + 6) = v6[5];
    *(v4 + 11) = v6[6];
    *(v4 + 12) = v6[7];
    *(v4 + 4) = v6[8];
    *(v4 + 5) = v6[9];
    *(v4 + 7) = v6[10];
    *(v4 + 70) = v6[11];
    *(v4 + 74) = v6[12];
    *(v4 + 72) = v6[13];
    *v4 = v6[14];
    result = v6[15];
    *(v4 + 57) = result;
    return result;
}


// 0x8013c4e
int sub_8013C4E()
{
    int v0; // r0
    int v1; // r0

    v0 = object_clearFlag(0x20000);
    v1 = sub_8013774(v0, 41);
    return (*(&off_8013C70 + v1))();
}


// 0x8013ca4
void nullsub_28()
{
    ;
}


// 0x8013cc4
char *__fastcall sub_8013CC4(int a1, int a2)
{
    int v2; // r5
    int v3; // r6
    int v4; // r7
    char *result; // r0
    char *v6; // r4
    char v7; // r0
    int v8; // r4

    v3 = a1;
    v4 = a2;
    result = *(v2 + 88);
    if ( *result == 2 )
    {
        result = sub_8013774(result, 19);
        v6 = result;
        if ( result )
        {
            GetPositiveSignedRNG2();
            result = (v7 & 7);
            if ( result <= (v6 - 1) )
            {
                v8 = sub_8013774(result, 18);
                result = object_getPanelDataOffset(v3, v4);
                if ( result[2] != 1 )
                {
                    if ( result[2] )
                    {
                        if ( v8 == 1 )
                            object_breakPanel_dup2(v3, v4);
                        if ( v8 == 3 )
                            object_crackPanelDup1(v3, v4);
                        object_setPanelType(v3, v4, v8);
                    }
                }
            }
        }
    }
    return result;
}


// 0x8013d5e
int __fastcall sub_8013D5E(int a1)
{
    int v1; // r4
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0
    char v5; // r0
    int v7; // [sp+0h] [bp+0h]
    int v8; // [sp+4h] [bp+4h]
    int v9; // [sp+8h] [bp+8h]
    int v10; // [sp+Ch] [bp+Ch]

    v1 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v2 = sub_8013774(a1, 20);
    while ( 1 )
    {
        v3 = __OFSUB__(v2--, 1);
        if ( (v2 < 0) ^ v3 )
            break;
        *(&v7 + v1++) = 1;
    }
    v4 = sub_8013774(v2, 21);
    while ( 1 )
    {
        v3 = __OFSUB__(v4--, 1);
        if ( (v4 < 0) ^ v3 )
            break;
        *(&v7 + v1++) = 2;
    }
    GetRNG2();
    return *(&v7 + (v5 & 0xF));
}


// 0x8013da0
char *sub_8013DA0()
{
    int v0; // r5
    char *result; // r0
    int v3; // r4
    int v4; // r6
    signed int v5; // r2
    int v6; // r7
    int v7; // r1
    int v11; // r0
    int v12; // [sp+0h] [bp-20h]

    result = battle_isPaused();
    if ( _ZF )
    {
        result = sub_8013774(result, 36);
        if ( result )
        {
            result = sub_8013774(result, 33);
            if ( result )
            {
                if ( sub_8013774(result, 44) )
                {
                    sub_80143A6();
                    result = sub_8014446();
                }
                else
                {
                    v3 = *(v0 + 88);
                    result = (*(v3 + 58) + 1);
                    *(v3 + 58) = result;
                    if ( result >= 60 )
                    {
                        *(v3 + 58) = 0;
                        sub_80143A6();
                        sub_8014446();
                        v4 = *(v3 + 11);
                        v5 = 0;
                        v6 = 0;
                        do
                        {
                            v7 = byte_8013E44[v5];
                            if ( v7 == v4 )
                            {
                                LOBYTE(v7) = 1;
                                if ( v4 )
                                    LOBYTE(v7) = 0;
                            }
                            *(&v12 + v6++) = v7;
                            ++v5;
                        }
                        while ( v5 < 16 );
                        GetPositiveSignedRNG2();
                        __asm { SVC         6 }
                        v11 = *(&v12 + v6);
                        *(v3 + 11) = v11;
                        if ( v11 == 2 )
                        {
                            result = sub_80143CE();
                        }
                        else if ( v11 == 1 )
                        {
                            result = sub_801443C();
                        }
                        else
                        {
                            result = sub_8015BEC(*(v0 + 22), *(&dword_8013E54 + v11));
                        }
                    }
                }
            }
        }
    }
    return result;
}


// 0x8013e58
int __fastcall sub_8013E58(int a1)
{
    int v1; // r0
    int v2; // r0
    signed int v3; // r4
    char v4; // r0

    v1 = sub_802D246();
    if ( !(v1 & 8) )
        v1 = sub_802D234();
    v2 = sub_8013774(v1, 26);
    v3 = 0;
    if ( v2 == 9 || (v3 = 4, v2 == 10) )
    {
        GetRNG2();
        v2 = (v4 & 3) + v3 + 1;
    }
    return (*(&off_8013E9C + v2))();
}


// 0x8013ec0
void nullsub_45()
{
    ;
}


// 0x8013ec2
int sub_8013EC2()
{
    return sub_8010474();
}


// 0x8013ecc
int sub_8013ECC()
{
    return object_setInvulnerableTime(byte_12C);
}


// 0x8013ed6
int sub_8013ED6()
{
    int v0; // r5

    *(*(v0 + 84) + 32) = byte_12C;
    return object_setFlag2(32);
}


// 0x8013ee6
char *sub_8013EE6()
{
    int v0; // r5
    char *result; // r0

    result = byte_12C;
    *(*(v0 + 84) + 30) = byte_12C;
    return result;
}


// 0x8013ef0
int sub_8013EF0()
{
    return sub_8010474();
}


// 0x8013efa
int sub_8013EFA()
{
    return object_setInvulnerableTime(dword_258);
}


// 0x8013f04
int sub_8013F04()
{
    int v0; // r5

    *(*(v0 + 84) + 32) = dword_258;
    return object_setFlag2(32);
}


// 0x8013f14
int *sub_8013F14()
{
    int v0; // r5
    int *result; // r0

    result = dword_258;
    *(*(v0 + 84) + 30) = dword_258;
    return result;
}


// 0x8013f1e
int sub_8013F1E()
{
    int v0; // r5
    int result; // r0
    _DWORD *v2; // r1
    int v3; // r0

    result = object_getFlag2();
    if ( result & &byte_104 )
    {
        v2 = *(v0 + 84);
        result = v2[28];
        if ( result )
        {
            result = *(v2 + 130) + *(v2 + 134) + *(v2 + 138);
            if ( result )
            {
                result = *(v0 + 88);
                if ( *(v0 + 24) )
                {
                    if ( *(result + 28) )
                        return result;
                    *(result + 28) = 1;
                }
                else
                {
                    *(result + 28) = 0;
                }
                v3 = sub_8013774(result, 22);
                result = (*(&off_8013F70 + v3))();
            }
        }
    }
    return result;
}


// 0x8013f80
void nullsub_46()
{
    ;
}


// 0x8013f82
int sub_8013F82()
{
    return object_setCollisionStatusEffect2(50);
}


// 0x8013f8c
int sub_8013F8C()
{
    return object_setCollisionStatusEffect2(34);
}


// 0x8013f96
char *__fastcall sub_8013F96(int a1)
{
    char *result; // r0

    result = (sub_8013774(a1, 24) + 1);
    if ( result <= 7 )
        result = sub_8013754(result, 24, result);
    return result;
}


// 0x8013fae
int __fastcall sub_8013FAE(int a1)
{
    int result; // r0
    int v2; // r4
    char v3; // r0

    result = sub_8013774(a1, 17);
    v2 = result;
    if ( result )
    {
        GetRNG2();
        result = (v3 & 7) <= v2 - 1;
    }
    return result;
}


// 0x8013fd0
Battle *__fastcall sub_8013FD0(int a1)
{
    Battle *result; // r0
    Battle *v2; // r5
    signed int v3; // r1
    int v4; // r1
    int v5; // r2

    result = sub_80103BC(a1);
    v2 = result;
    if ( result )
    {
        result = sub_8013790(result, 84);
        if ( result )
        {
            v3 = v2->HP;
            if ( v3 <= result )
                result = (v3 - 1);
            object_subtractHP(v2, result);
            result = PlaySoundEffect(107, v4, v5);
        }
    }
    return result;
}


// 0x8013ff8
void __fastcall sub_8013FF8(int a1)
{
    Battle *v1; // r5
    int v2; // r0
    int v3; // r1

    v2 = sub_8013774(a1, 61);
    if ( v2 )
    {
        v3 = v1->HP;
        if ( v3 != 1 )
        {
            if ( v3 <= v2 - 1 )
                v2 = v3 - 1;
            object_subtractHP(v1, v2);
        }
    }
}


// 0x8014018
// (int idx_8014034) -> bool
int __fastcall SelectS20047CCStruct8014018(int a1)
{
    return byte_8014034[a1];
}


// 0x801401e
int __fastcall sub_801401E(int a1)
{
    int v1; // r10

    return 100 * SelectS20047CCStruct8014018(a1) + *(v1 + oToolkit_S20047CC_Ptrs);
}


// 0x8014040
int __fastcall sub_8014040(int a1)
{
    Battle *v1; // r5
    int result; // r0
    int v3; // r0
    int v8; // r1
    int v9; // r2

    v1 = sub_80103BC(a1);
    result = sub_802D246();
    if ( !(result & 8) )
    {
        result = sub_8013774(result, 54);
        if ( result == 1 )
        {
            v3 = sub_8013790(1, 62);
            __asm { SVC         6 }
            object_addHP(v1, v3 + 9);
            SpawnT4BattleObjectWithId0(v1, &v1->vx, v1->x, v1->y, v1->z);
            result = PlaySoundEffect(138, v8, v9);
        }
    }
    return result;
}


// 0x8014080
int __fastcall sub_8014080(int a1)
{
    int v1; // r5
    int result; // r0
    int v3; // r0
    int v4; // r0
    int v5; // r0
    char v6; // r3
    int v7; // r0
    int v8; // r0
    int v9; // r0
    char *v10; // r0
    char *v11; // r0

    result = sub_8013774(a1, 41);
    if ( !result )
    {
        v3 = object_clearFlag(0x20000);
        sub_8013754(v3, 35, 0);
        v4 = object_clearFlag(32);
        v5 = sub_80107C0(v4);
        v7 = sub_801A082(v5, 1, 2, v6);
        sub_8013754(v7, 27, 0);
        v8 = object_clearFlag(0x40000);
        sub_8013754(v8, 29, 0);
        v9 = object_clearFlag(16);
        v10 = sub_8013754(v9, 28, 0);
        v11 = sub_8013754(v10, 7, 255);
        result = sub_8013774(v11, 44);
        if ( !result )
        {
            result = *(v1 + 88);
            *(result + 8) = -1;
        }
    }
    return result;
}


// 0x80140ee
int __fastcall sub_80140EE(int a1)
{
    int v1; // r5
    int result; // r0
    int v3; // r0
    int v4; // r0
    int v5; // r0
    char v6; // r3
    int v7; // r0
    int v8; // r0
    char *v9; // r0
    char *v10; // r0
    int v11; // r0

    result = sub_8013774(a1, 41);
    if ( !result )
    {
        v3 = object_clearFlag(0x20000);
        sub_8013754(v3, 35, 0);
        v4 = object_clearFlag(32);
        v5 = sub_80107C0(v4);
        v7 = sub_801A082(v5, 1, 2, v6);
        sub_8013754(v7, 27, 0);
        v8 = object_clearFlag(16);
        v9 = sub_8013754(v8, 28, 0);
        v10 = sub_8013754(v9, 7, 255);
        v11 = sub_8013774(v10, 44);
        if ( !v11 )
        {
            v11 = *(v1 + 88);
            *(v11 + 8) = -1;
        }
        result = sub_801469C(v11);
    }
    return result;
}


// 0x8014150
signed int sub_8014150()
{
    signed int v0; // r4
    int v1; // r0
    int v2; // r0

    v0 = 2;
    v1 = getPETNaviSelect();
    if ( !GetCurPETNaviStatsByte(v1) )
    {
        v0 = 1;
        v2 = getPETNaviSelect();
        if ( !GetCurPETNaviStatsByte(v2) )
            v0 = 0;
    }
    return v0;
}


// 0x8014178
int sub_8014178()
{
    int v0; // r4
    int v1; // r0

    v0 = sub_80136CC(0, 8);
    v1 = sub_80136CC(1, 8);
    return sub_801DF8C(byte_80141A0[3 * v1 + v0]);
}


// 0x80141ac
int SetBeastOutCounterTo3()
{
    int v0; // r0

    v0 = getPETNaviSelect();
    return SetCurPETNaviStatsByte(v0, 33, 3);
}


// 0x80141c8
int __fastcall sub_80141C8(int a1)
{
    int v1; // r5
    __int16 v2; // r0
    int v3; // r0
    int result; // r0
    char v5; // zf

    v2 = sub_8013790(a1, 66);
    *(v1 + 36) = v2;
    *(v1 + 38) = v2;
    v3 = sub_802D246();
    if ( !(v3 & 4) )
        *(v1 + 36) = sub_8013790(v3, 64);
    result = battle_networkInvert(*(v1 + 22));
    if ( v5 )
        result = sub_801E0BC();
    return result;
}


// 0x80141f4
int sub_80141F4()
{
    int result; // r0

    result = sub_802D26A();
    if ( result != 56 && result != 48 && result != 60 )
    {
        result = sub_802D234();
        if ( result != 9 )
            result = sub_8010312(1024);
    }
    return result;
}


// 0x8014216
int sub_8014216()
{
    int v0; // r5
    char *v1; // r0
    int v2; // r2
    int v3; // r3
    int v4; // r0
    int v5; // r0

    sub_801031C(32);
    v1 = sub_8010018(*(v0 + 22));
    ZeroFillByHalfword((v1 + 38), 0xCu, v2, v3);
    v4 = sub_802D246();
    if ( v4 & 8 )
    {
        v4 = battle_networkInvert(*(v0 + 22));
        if ( !v4 )
        {
            v4 = sub_80103BC(*(v0 + 22) ^ 1);
            if ( v4 )
                v4 = sub_801DC36();
        }
    }
    v5 = sub_8013774(v4, 41);
    return (*(&off_801426C + v5))();
}


// 0x801429c
int sub_801429C()
{
    return (loc_80144CA)();
}


// 0x80142a4
int sub_80142A4()
{
    return sub_8010312(32);
}


// 0x80142ae
void nullsub_47()
{
    ;
}


// 0x80142b0
int __fastcall sub_80142B0(int a1)
{
    int v1; // r5
    int result; // r0

    result = sub_802D246();
    if ( result & 8 )
    {
        result = 10;
        *(v1 + 44) = 10;
    }
    return result;
}


// 0x80142c2
int __fastcall sub_80142C2(int a1)
{
    int v1; // r5
    int result; // r0

    result = sub_802D246();
    if ( result & 8 )
    {
        result = 10;
        *(*(v1 + 84) + 46) = 10;
    }
    return result;
}


// 0x80142dc
int __fastcall sub_80142DC(int a1)
{
    int v1; // r5
    int result; // r0

    result = sub_802D234();
    if ( result != 1 )
    {
        result = sub_8013774(result, 41);
        if ( !result )
        {
            result = sub_8013774(0, 44);
            if ( !result )
            {
                result = object_getFlag();
                if ( !(result & 0x200000) )
                {
                    if ( sub_801442C() >= 120 || (result = *(*(v1 + 84) + 128) >> 1, result >= 150) )
                        result = object_setFlag2(512);
                }
            }
        }
    }
    return result;
}


// 0x8014326
int sub_8014326()
{
    int v0; // r5
    int result; // r0
    int v2; // r4
    char v3; // t1
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf

    result = sub_800F29C(*(v0 + 40));
    if ( result == 2 )
    {
        v2 = *(v0 + 88);
        v3 = *(v2 + 1);
        v4 = sub_8015B54(*(v0 + 22));
        if ( v4 == 5 || v4 == 1 )
        {
            object_clearFlag2(512);
            result = object_clearFlag(0x200000);
        }
        else if ( object_getFlag() & 0x200000 )
        {
            object_clearFlag2(512);
            v5 = *(v2 + 52);
            if ( !*(v2 + 52)
                || (v6 = __OFSUB__(v5, 1), result = v5 - 1, *(v2 + 52) = result, ((result < 0) ^ v6) | (result == 0)) )
            {
                result = sub_80143A6();
            }
        }
        else
        {
            result = object_getFlag2();
            if ( result & 0x200 )
            {
                object_clearFlag2(512);
                object_setFlag1(0x200000);
                *(v2 + 52) = 600;
                result = sub_8015BEC(*(v0 + 22), 128);
            }
        }
    }
    return result;
}


// 0x80143a6
int sub_80143A6()
{
    int v0; // r5
    int v1; // r1
    int result; // r0

    sub_8013682(*(v0 + 22))[14] = -128;
    object_clearFlag(0x200000);
    object_clearFlag2(byte_200);
    v1 = *(v0 + 88);
    result = 0;
    *(v1 + 52) = 0;
    *(v1 + 76) = 0;
    return result;
}


// 0x80143ce
int sub_80143CE()
{
    int result; // r0
    char v1; // zf

    result = sub_801445C();
    if ( v1 )
    {
        result = sub_8014490();
        if ( v1 )
            result = object_setFlag2(byte_200);
    }
    return result;
}


// 0x80143e4
int sub_80143E4()
{
    Battle *v0; // r5
    int result; // r0

    result = v0->ai->isAngry;
    if ( v0->ai->isAngry )
        result = sprite_setColorShader(v0, 15);
    return result;
}


// 0x80143fc
int sub_80143FC()
{
    int result; // r0
    char v1; // zf

    result = battle_isTimeStop();
    if ( v1 )
    {
        result = battle_isPaused();
        if ( v1 )
        {
            if ( object_getFlag() & &loc_C00 )
                result = sub_8014432();
            else
                result = sub_8014424();
        }
    }
    return result;
}


// 0x8014424
int sub_8014424()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 88);
    *(result + 76) = 0;
    return result;
}


// 0x801442c
int sub_801442C()
{
    int v0; // r5

    return *(*(v0 + 88) + 76);
}


// 0x8014432
int sub_8014432()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 88);
    ++*(result + 76);
    return result;
}


// 0x801443c
signed int sub_801443C()
{
    int v0; // r5
    signed int result; // r0

    result = 0xFFFF;
    *(*(v0 + 88) + 50) = -1;
    return result;
}


// 0x8014446
int sub_8014446()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(*(v0 + 88) + 50) = 0;
    return result;
}


// 0x801444e
int __fastcall sub_801444E(int a1)
{
    int v1; // r3
    int result; // r0

    v1 = *(sub_80103BC(a1) + 88);
    result = 0;
    *(v1 + 50) = 0;
    return result;
}


// 0x801445c
int sub_801445C()
{
    int v0; // r5

    return *(*(v0 + 88) + 50);
}


// 0x8014464
void nullsub_6()
{
    ;
}


// 0x8014466
char *sub_8014466()
{
    int v0; // r5

    *(*(v0 + 88) + 54) = &dword_3C0;
    return sub_8015BEC(*(v0 + 22), 0);
}


// 0x8014478
int sub_8014478()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(*(v0 + 88) + 54) = 0;
    return result;
}


// 0x8014482
int __fastcall sub_8014482(int a1)
{
    int v1; // r3
    int result; // r0

    v1 = *(sub_80103BC(a1) + 88);
    result = 0;
    *(v1 + 54) = 0;
    return result;
}


// 0x8014490
int sub_8014490()
{
    int v0; // r5

    return *(*(v0 + 88) + 54);
}


// 0x8014498
signed int sub_8014498()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r3

    result = battle_isBattleOver();
    if ( !result )
    {
        v2 = *(v0 + 88);
        result = *(v2 + 54);
        if ( *(v2 + 54) )
        {
            if ( *(v0 + 36) != 1 )
                --*(v0 + 36);
        }
    }
    return result;
}


// 0x80144c0
int sub_80144C0()
{
    Battle *v0; // r5
    char *v1; // r0
    int v2; // r2
    int v3; // r3
    int v4; // r0
    int v5; // r3
    int v6; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r0

    sub_801390C();
    v1 = sub_8010018(v0->Alliance);
    ZeroFillByHalfword((v1 + 38), 0xCu, v2, v3);
    sub_801031C(32);
    v4 = sub_802D246();
    if ( v4 & 8 )
    {
        v4 = battle_networkInvert(v0->Alliance);
        if ( !v4 )
        {
            v4 = sub_80103BC(v0->Alliance ^ 1);
            if ( v4 )
                v4 = sub_801DC36();
        }
    }
    sub_80107C0(v4);
    sub_8019F86(v5);
    object_setCollisionRegion(1);
    v6 = sub_8012EA8(v0);
    v7 = sub_800FEEC(v6);
    v8 = sub_8014536(v7);
    v9 = sub_801086C(v8);
    return sub_80142C2(v9);
}


// 0x8014536
int __fastcall sub_8014536(int a1)
{
    int v1; // r5
    int v2; // r6
    int v3; // r0

    v2 = *(v1 + 88);
    v3 = sub_8013774(a1, 44);
    return (*(&JumpTable8014550 + v3))();
}


// 0x80145b4
void nullsub_51()
{
    ;
}


// 0x80145b6
void nullsub_52()
{
    ;
}


// 0x80145b8
void nullsub_50()
{
    ;
}


// 0x80145ba
void nullsub_53()
{
    ;
}


// 0x80145bc
void nullsub_54()
{
    ;
}


// 0x80145be
void nullsub_55()
{
    ;
}


// 0x80145c0
void nullsub_56()
{
    ;
}


// 0x80145c2
int sub_80145C2()
{
    int v0; // r10
    int result; // r0

    result = *(*(v0 + oToolkit_S2034880_Ptr) + 7);
    if ( result != 1 )
        result = sub_801A264();
    return result;
}


// 0x80145d4
int SetObjectAirshoeFlag()
{
    return object_setFlag1(16);
}


// 0x80145de
int SetObjectSuperArmorFlag()
{
    return object_setFlag1(0x20000);
}


// 0x80145ea
void nullsub_4()
{
    ;
}


// 0x80145ec
int sub_80145EC()
{
    int v0; // r6
    int v1; // r1
    int v2; // r2
    int v3; // r3
    int result; // r0

    object_setFlag1(0x20000);
    result = *(v0 + 64);
    if ( !result )
        result = sub_80E1620(0, v1, v2, v3);
    return result;
}


// 0x8014606
int sub_8014606()
{
    int v0; // r6
    int v1; // r0
    int v2; // r0
    char v3; // r3
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int result; // r0

    v1 = object_setFlag1(48);
    v2 = sub_80107C0(v1);
    sub_801A082(v2, 16, 2, v3);
    result = *(v0 + 64);
    if ( !result )
        result = sub_80E1620(0, v4, v5, v6);
    return result;
}


// 0x801462a
int sub_801462A()
{
    int v0; // r10

    if ( *(*(v0 + oToolkit_S2034880_Ptr) + 7) != 1 )
        sub_801A264();
    return sub_8014606();
}


// 0x8014640
int sub_8014640()
{
    object_setFlag1(0x20000);
    return sub_8014606();
}


// 0x8014650
_DWORD *sub_8014650()
{
    int v0; // r6
    int v1; // r1
    int v2; // r2
    int v3; // r3

    object_setFlag1(0x20000);
    if ( !*(v0 + 64) )
        sub_80E1620(0, v1, v2, v3);
    object_setInvulnerableTime(0xFFFF);
    return sub_802D310();
}


// 0x8014674
_DWORD *sub_8014674()
{
    int v0; // r6
    int v1; // r0
    int v2; // r0
    char v3; // r3
    int v4; // r1
    int v5; // r2
    int v6; // r3

    v1 = object_setFlag1(134217776);
    v2 = sub_80107C0(v1);
    sub_801A082(v2, 16, 2, v3);
    if ( !*(v0 + 64) )
        sub_80E1620(0, v4, v5, v6);
    return sub_802D310();
}


// 0x801469c
int __fastcall sub_801469C(int a1)
{
    int v1; // r5
    int v2; // r6
    int v3; // r0

    v2 = *(v1 + 84);
    v3 = sub_8013774(a1, 44);
    return (off_80146B8[v3])();
}


// 0x801472a
int sub_801472A()
{
    int v0; // r10
    int result; // r0

    result = *(*(v0 + oToolkit_S2034880_Ptr) + 7);
    if ( result != 1 )
        result = sub_801A264();
    return result;
}


// 0x801473c
int sub_801473C()
{
    return object_setFlag1(16);
}


// 0x8014746
int sub_8014746()
{
    return object_setFlag1(0x20000);
}


// 0x8014752
void nullsub_5()
{
    ;
}


// 0x8014754
int sub_8014754()
{
    return object_setFlag1(0x20000);
}


// 0x8014760
int sub_8014760()
{
    int v0; // r0
    int v1; // r0
    char v2; // r3

    v0 = object_setFlag1(48);
    v1 = sub_80107C0(v0);
    return sub_801A082(v1, 16, 2, v2);
}


// 0x8014776
int sub_8014776()
{
    int v0; // r10

    if ( *(*(v0 + oToolkit_S2034880_Ptr) + 7) != 1 )
        sub_801A264();
    return sub_8014760();
}


// 0x801478c
int sub_801478C()
{
    object_setFlag1(0x20000);
    return sub_8014760();
}


// 0x801479c
_DWORD *sub_801479C()
{
    object_setFlag1(0x20000);
    object_setInvulnerableTime(0xFFFF);
    return sub_802D310();
}


// 0x80147b2
_DWORD *sub_80147B2()
{
    int v0; // r0
    int v1; // r0
    char v2; // r3

    v0 = object_setFlag1(48);
    v1 = sub_80107C0(v0);
    sub_801A082(v1, 16, 2, v2);
    object_setFlag1(0x8000000);
    object_setInvulnerableTime(0xFFFF);
    return sub_802D310();
}


// 0x80147e4
signed int __fastcall sub_80147E4(int a1, int a2)
{
    int v2; // r6
    int v3; // r7
    signed int result; // r0

    v2 = a1;
    v3 = a2;
    CopyWords(a1, &byte_20367F4[4], 0x10u);
    CopyWords(v2, byte_203A980, 0x10u);
    CopyWords(v3, &byte_20367F4[20], 0x10u);
    CopyWords(v3, byte_203A990, 0x10u);
    dword_20367F0 = 0;
    result = 1;
    byte_20367F4[0] = 1;
    return result;
}


// 0x801482c
signed int sub_801482C()
{
    signed int result; // r0

    dword_20367F0 = 0;
    result = 1;
    byte_20367F4[0] = 1;
    return result;
}


// 0x801483c
int sub_801483C()
{
    (*(&off_8014860 + dword_20367F0))();
    return byte_20367F4[0];
}


// 0x801486c
signed int sub_801486C()
{
    _DWORD *v0; // r5
    unsigned __int8 *v1; // r6
    unsigned __int8 *v2; // r7
    signed int v3; // r4
    char v4; // zf
    signed int result; // r0

    v3 = 0;
    if ( v1[4] == 255 )
    {
        if ( *v1 != 255 )
        {
            v3 = 1;
            goto LABEL_7;
        }
    }
    else
    {
        sub_802DCDE(*(v1 + 2));
    }
    sub_80159C6(*(v1 + 2));
    if ( !v4 )
        sub_8015994(*(v1 + 2));
LABEL_7:
    if ( v2[4] == 255 )
    {
        if ( *v2 != 255 )
        {
            v3 = 1;
            goto LABEL_13;
        }
    }
    else
    {
        sub_802DCDE(*(v2 + 2));
    }
    sub_80159C6(*(v2 + 2));
    if ( !v4 )
        sub_8015994(*(v2 + 2));
LABEL_13:
    result = 8;
    if ( v3 )
        result = 4;
    *v0 = result;
    return result;
}


// 0x80148cc
int sub_80148CC()
{
    int v0; // r5

    return (*(&off_80148E0 + *(v0 + 1)))();
}


// 0x80148ec
int sub_80148EC()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    int v3; // r0
    char v4; // zf

    if ( !*(v0 + 3) )
    {
        if ( sub_802D234() == 1 )
            v1 = 112;
        else
            v1 = 68;
        engine_setScreeneffect(v1, 16);
        sub_801DACC(0x4000);
        *(v0 + 3) = 4;
    }
    result = IsPaletteFadeActive();
    if ( !result )
    {
        if ( sub_802D234() == 1 )
        {
            v3 = 160;
        }
        else
        {
            sub_802E09A();
            if ( v4 )
                v3 = 144;
            else
                v3 = 131200;
        }
        sub_801DACC(v3);
        *(v0 + 1) = 4;
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x8014944
int sub_8014944()
{
    int v0; // r5
    unsigned __int8 *v1; // r6
    unsigned __int8 *v2; // r7
    int result; // r0

    if ( *(v0 + 3) )
    {
        result = sub_801597C(*(v1 + 2));
        if ( !result )
        {
            result = sub_801597C(*(v2 + 2));
            if ( !result )
            {
                *v1 = -1;
                *v2 = -1;
                *(v0 + 1) = 8;
                result = 0;
                *(v0 + 2) = 0;
            }
        }
    }
    else
    {
        if ( *v1 != 255 )
            sub_801596E(*(v1 + 2));
        if ( *v2 != 255 )
            sub_801596E(*(v2 + 2));
        result = 4;
        *(v0 + 3) = 4;
    }
    return result;
}


// 0x801498e
int sub_801498E()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    BOOL v3; // r0
    int v4; // r1
    bool v5; // zf
    BOOL v6; // [sp-4h] [bp-8h]

    if ( !*(v0 + 3) )
    {
        if ( sub_802D234() == 1 )
            v1 = 108;
        else
            v1 = 64;
        engine_setScreeneffect(v1, 16);
        *(v0 + 3) = 4;
    }
    result = IsPaletteFadeActive();
    if ( !result )
    {
        v6 = sub_800A97A(0);
        v5 = sub_802D234() == 1;
        v3 = v6;
        if ( v5 )
        {
            v4 = 16544;
        }
        else
        {
            sub_802E09A();
            v3 = v6;
            if ( v5 )
                v4 = 16528;
            else
                v4 = 147584;
        }
        if ( v3 )
            v4 = 16512;
        sub_801DA48(v4);
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x8014a00
int sub_8014A00()
{
    int v0; // r5
    int v1; // r6
    int v2; // r7
    int result; // r0

    result = sub_80159A2(*(v1 + 8));
    if ( !result )
    {
        result = sub_80159A2(*(v2 + 8));
        if ( !result )
        {
            result = sub_802DCEC(*(v1 + 8));
            if ( !result )
            {
                *(v1 + 4) = -1;
                result = sub_802DCEC(*(v2 + 8));
                if ( !result )
                {
                    *(v2 + 4) = -1;
                    result = 0;
                    *(v0 + 4) = 0;
                }
            }
        }
    }
    return result;
}


// 0x8014a38
void sub_8014A38()
{
    int v0; // r5
    unsigned __int8 *v1; // r7
    signed int v2; // r0

    v2 = sub_801595E(*(v0 + 22));
    if ( v2 < 1 || v2 > 24 )
    {
        sub_801031C(128);
    }
    else
    {
        if ( v2 < 23 )
        {
            if ( v2 < 13 )
            {
                if ( v2 < 11 )
                    (*(&off_8014AB4 + *v1))();
                else
                    (*(&off_8014AC8 + *v1))();
            }
            else if ( sub_8013774(v2, 44) > 10 )
            {
                (*(&off_8014B04 + *v1))();
            }
            else
            {
                (*(&off_8014ADC + *v1))();
            }
        }
        else
        {
            (*(&off_8014AF0 + *v1))();
        }
        if ( !(sub_801032C() & 0x80000) )
            sub_801BCD0();
    }
}


// 0x8014b18
signed int __noreturn sub_8014B18()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    int v2; // r0
    int v3; // r1
    u32 *v4; // r0
    signed int result; // r0

    sub_8010312(0x80000);
    v2 = v0->futurePanelX;
    v0->panelX = v2;
    v3 = v0->futurePanelY;
    v0->panelY = v3;
    object_removePanelReserve(v2, v3);
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    sub_800EB08();
    v0->directionFlip = sub_800F46C();
    sub_800F2C6();
    sub_8012EA8(v0);
    sub_80C4C3A(*&v0->ai->pad_58[4]);
    sub_80158FA();
    v1[8] = 6;
    if ( sub_8013774(6, 44) == 9 && v0->currAnimation == 22 )
    {
        v0->currAnimation = 0;
        v0->parent = 0;
        v0->ai->unk_68 = 0;
        sub_801031C(0x80000);
        v4 = v0->childobject2;
        if ( v4 )
        {
            *(v4 + 6) = 1;
            *v4 |= 0x14u;
        }
    }
    result = 4;
    *v1 = 4;
    return result;
}


// 0x8014b98
int sub_8014B98()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r2
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf

    if ( !*(v1 + 1) )
    {
        result = *(v1 + 16) - 1;
        *(v1 + 16) = result;
        if ( result >= 0 )
            return result;
        sub_801595E(*(v0 + 22));
        sub_80BC844(*(v0 + 18), *(v0 + 19), v3, 20);
        *(v1 + 16) = 48;
        *(v1 + 48) = 0;
        *(v1 + 1) = 4;
    }
    v4 = *(v1 + 48) + 1;
    if ( v4 <= 6 )
    {
        *(v1 + 48) = v4;
        sprite_forceWhitePallete();
    }
    v5 = *(v1 + 16);
    v6 = __OFSUB__(v5, 1);
    result = v5 - 1;
    *(v1 + 16) = result;
    if ( (result < 0) ^ v6 )
    {
        *(v1 + 16) = 6;
        *v1 = 8;
        result = 0;
        *(v1 + 48) = 0;
    }
    return result;
}


// 0x8014bee
int __cdecl sub_8014BEE(int a1, int a2, int a3)
{
    Battle *v3; // r5
    int v4; // r7
    int v5; // r0
    int v6; // r0
    int v7; // ST00_4
    char *v8; // r0
    int v6_spriteTypeIdx; // r1
    int v7_spriteIdx; // r2
    int v11; // r0
    int v12; // r0
    char *v13; // r0
    signed int v14; // r0
    int v15; // ST00_4
    int v16; // r0
    char v17; // r1
    int v18; // r1
    int v19; // r2
    int v20; // r1
    int v21; // r2
    int v22; // r0
    unsigned __int8 v23; // vf
    int result; // r0

    sprite_forceWhitePallete();
    if ( !*(v4 + 1) )
    {
        v3->parent = 0;
        v3->ai->unk_68 = 0;
        v5 = sub_8013774(0, 44);
        sub_8011384(v5);
        v6 = sub_801595E(v3->Alliance);
        v7 = v6;
        v8 = sub_8013774(v6, 41);
        sub_800FC9E(v8, v7);
        sprite_load(v3, 128, v6_spriteTypeIdx, v7_spriteIdx);
        sprite_loadAnimationData(v3);
        sprite_hasShadow();
        object_setAnimation(v3);
        sprite_setAnimation(v3, v3->currAnimation);
        sprite_loadAnimationData(v3);
        v11 = object_getFlip(v3);
        sprite_setFlip(v3, v11);
        sprite_forceWhitePallete();
        object_setCoordinatesFromPanels(v3);
        *(v4 + 16) = 10;
        v12 = sub_801595E(v3->Alliance);
        v13 = sub_8013754(v12, 44, v12);
        v14 = sub_8013774(v13, 44);
        if ( v14 >= 1 && v14 <= 24 )
            v14 = sub_8015B22(v14);
        v15 = sub_8013774(v14, 44);
        sub_8011268(v15);
        v16 = sub_8018856(3);
        sub_801DC06(v16, -v17);
        PlaySoundEffect(141, v18, v19);
        PlaySoundEffect(119, v20, v21);
        *(v4 + 1) = 4;
    }
    v22 = *(v4 + 16);
    v23 = __OFSUB__(v22, 1);
    result = v22 - 1;
    *(v4 + 16) = result;
    if ( ((result < 0) ^ v23) | (result == 0) )
    {
        sub_80144C0();
        sub_80143A6();
        sub_8015BEC(v3->Alliance, 128);
        sub_800EB08();
        result = 12;
        *v4 = 12;
    }
    return result;
}


// 0x8014cc0
void sub_8014CC0()
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
        sub_800AB2E(v0->Alliance, 11, 1);
        sub_801031C(128);
        battle_clearFlags(32);
        sub_801031C(0x80000);
        sub_800FFEE(-2147449344);
        object_exitAttackState(v0);
    }
}


// 0x8014d08
signed int __noreturn sub_8014D08()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    int v2; // r0
    int v3; // r1
    u32 *v4; // r0
    signed int result; // r0

    v2 = v0->futurePanelX;
    v0->panelX = v2;
    v3 = v0->futurePanelY;
    v0->panelY = v3;
    object_removePanelReserve(v2, v3);
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    sub_800EB08();
    v0->directionFlip = sub_800F46C();
    sub_800F2C6();
    sub_8012EA8(v0);
    sub_80C4C3A(*&v0->ai->pad_58[4]);
    v0->parent = 0;
    v0->ai->unk_68 = 0;
    sub_80158FA();
    v0->currAnimation = 17;
    v4 = v0->childobject2;
    if ( v4 )
    {
        *(v4 + 6) = 1;
        *v4 |= 0x14u;
    }
    v1[8] = 6;
    sprite_decompress(12, 5);
    result = 4;
    *v1 = 4;
    return result;
}


// 0x8014d70
int sub_8014D70()
{
    Battle *v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r4
    int v6; // r0
    int v7; // r0
    int v8; // r2
    char *v9; // r1
    int v10; // r0
    unsigned __int8 v11; // vf

    if ( !*(v1 + 1) )
    {
        result = *(v1 + 16) - 1;
        *(v1 + 16) = result;
        if ( result >= 0 )
            return result;
        sub_8010312(0x80000);
        PlaySoundEffect(247, v3, v4);
        v5 = (v0->Alliance << 8) | 0x2E;
        SpawnT4BattleObjectWithId0(v0, &v0->vx, v0->x, v0->y, v0->z);
        if ( v6 )
        {
            *(v6 + 32) = 54;
            *v6 |= 4u;
            v0->y += 12582912;
            sub_800AB2E(v0->Alliance, 2, 1);
            v7 = sub_801595E(v0->Alliance);
            v9 = byte_1CC;
            if ( v7 != 11 )
                v9 = byte_1CD;
            PlaySoundEffect(v9, v9, v8);
            sub_80302B6(2, 60);
        }
        *(v1 + 16) = 54;
        *(v1 + 1) = 4;
    }
    v10 = *(v1 + 16);
    v11 = __OFSUB__(v10, 1);
    result = v10 - 1;
    *(v1 + 16) = result;
    if ( (result < 0) ^ v11 )
    {
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x8014e08
int __cdecl sub_8014E08(int a1, int a2, int a3)
{
    Battle *v3; // r5
    int v4; // r7
    int v5; // r0
    int v6; // r0
    int v7; // ST00_4
    char *v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r0
    int v12; // r0
    char *v13; // r0
    int v14; // r1
    int v15; // r2
    int v16; // r3
    int v17; // r1
    int v18; // r2
    int v19; // r0
    signed int v20; // r0
    int v21; // r0
    u32 *v22; // r0
    int v23; // r0
    char v24; // r1
    int v25; // r0
    unsigned __int8 v26; // vf
    int result; // r0
    int v28; // r0
    signed int v29; // r1
    signed int v30; // ST00_4

    sprite_forceWhitePallete();
    if ( !*(v4 + 1) )
    {
        v5 = sub_8013774(*(v4 + 1), 44);
        sub_8011384(v5);
        v6 = sub_801595E(v3->Alliance);
        v7 = v6;
        v8 = sub_8013774(v6, 41);
        sub_800FC9E(v8, v7);
        sprite_load(v3, 128, v9, v10);
        sprite_loadAnimationData(v3);
        sprite_hasShadow();
        object_setAnimation(v3);
        sprite_setAnimation(v3, v3->currAnimation);
        sprite_loadAnimationData(v3);
        v11 = object_getFlip(v3);
        sprite_setFlip(v3, v11);
        object_setCoordinatesFromPanels(v3);
        *(v4 + 16) = 10;
        sprite_forceWhitePallete();
        v12 = sub_801595E(v3->Alliance);
        v13 = sub_8013754(v12, 44, v12);
        sub_80E11E0(v13, v14, v15, v16);
        v19 = PlaySoundEffect(256, v17, v18);
        v20 = sub_8013774(v19, 44);
        if ( v20 >= 1 && v20 <= 24 )
            v20 = sub_8015B22(v20);
        v21 = sub_8013774(v20, 44);
        sub_8011268(v21);
        v22 = v3->childobject2;
        if ( v22 )
            *(v22 + 6) = 0;
        v23 = sub_8018856(3);
        sub_801DC06(v23, -v24);
        *(v4 + 1) = 4;
    }
    v25 = *(v4 + 16);
    v26 = __OFSUB__(v25, 1);
    result = v25 - 1;
    *(v4 + 16) = result;
    if ( ((result < 0) ^ v26) | (result == 0) )
    {
        v28 = sub_8015B54(v3->Alliance);
        v29 = 0;
        if ( v28 == 2 )
            v29 = 1;
        v30 = v29;
        sub_80144C0();
        sub_80143A6();
        if ( v30 )
            sub_8015BEC(v3->Alliance, 255);
        sub_800EB08();
        if ( v3->childobject2 )
            sprite_clearFinalPalette();
        result = 12;
        *v4 = 12;
    }
    return result;
}


// 0x8014f04
void sub_8014F04()
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
        sub_801031C(128);
        battle_clearFlags(32);
        sub_801031C(0x80000);
        sub_800FFEE(-2147449344);
        object_exitAttackState(v0);
    }
}


// 0x8014f40
signed int __noreturn sub_8014F40()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    int v2; // r0
    int v3; // r1
    u32 *v4; // r0
    signed int result; // r0

    v2 = v0->futurePanelX;
    v0->panelX = v2;
    v3 = v0->futurePanelY;
    v0->panelY = v3;
    object_removePanelReserve(v2, v3);
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    sub_800EB08();
    v0->directionFlip = sub_800F46C();
    sub_800F2C6();
    sub_8012EA8(v0);
    sub_80C4C3A(*&v0->ai->pad_58[4]);
    v0->parent = 0;
    v0->ai->unk_68 = 0;
    sub_80158FA();
    v0->currAnimation = 17;
    v4 = v0->childobject2;
    if ( v4 )
    {
        *(v4 + 6) = 1;
        *v4 |= 0x14u;
    }
    v1[8] = 6;
    sprite_decompress(12, 5);
    result = 4;
    *v1 = 4;
    return result;
}


// 0x8014fa8
int sub_8014FA8()
{
    Battle *v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r4
    int v6; // r0
    int v7; // r0
    int v8; // r2
    char *v9; // r1
    int v10; // r0
    unsigned __int8 v11; // vf

    if ( !*(v1 + 1) )
    {
        result = *(v1 + 16) - 1;
        *(v1 + 16) = result;
        if ( result >= 0 )
            return result;
        sub_8010312(0x80000);
        PlaySoundEffect(247, v3, v4);
        v5 = (v0->Alliance << 8) | 0x2E;
        SpawnT4BattleObjectWithId0(v0, &v0->vx, v0->x, v0->y, v0->z);
        if ( v6 )
        {
            *(v6 + 32) = 54;
            *v6 |= 4u;
            v0->y += 12582912;
            sub_800AB2E(v0->Alliance, 2, 1);
            v7 = sub_801595E(v0->Alliance);
            v9 = byte_1CC;
            if ( v7 >= 18 )
                v9 = byte_1CD;
            PlaySoundEffect(v9, v9, v8);
            sub_80302B6(2, 60);
        }
        *(v1 + 16) = 54;
        *(v1 + 1) = 4;
    }
    v10 = *(v1 + 16);
    v11 = __OFSUB__(v10, 1);
    result = v10 - 1;
    *(v1 + 16) = result;
    if ( (result < 0) ^ v11 )
    {
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x8015040
int sub_8015040()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r0
    int v4; // ST00_4
    char *v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r0
    int v9; // r0
    char *v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    int v14; // r1
    int v15; // r2
    int v16; // r0
    signed int v17; // r0
    int v18; // ST00_4
    u32 *v19; // r0
    int v20; // r0
    char v21; // r1
    int v22; // r0
    unsigned __int8 v23; // vf
    int result; // r0

    sprite_forceWhitePallete();
    if ( !*(v1 + 1) )
    {
        v2 = sub_8013774(*(v1 + 1), 44);
        sub_8011384(v2);
        v3 = sub_801595E(v0->Alliance);
        v4 = v3;
        v5 = sub_8013774(v3, 41);
        sub_800FC9E(v5, v4);
        sprite_load(v0, 128, v6, v7);
        sprite_loadAnimationData(v0);
        sprite_hasShadow();
        object_setAnimation(v0);
        sprite_setAnimation(v0, v0->currAnimation);
        sprite_loadAnimationData(v0);
        v8 = object_getFlip(v0);
        sprite_setFlip(v0, v8);
        object_setCoordinatesFromPanels(v0);
        *(v1 + 16) = 10;
        sprite_forceWhitePallete();
        v9 = sub_801595E(v0->Alliance);
        v10 = sub_8013754(v9, 44, v9);
        sub_80E11E0(v10, v11, v12, v13);
        v16 = PlaySoundEffect(256, v14, v15);
        v17 = sub_8013774(v16, 44);
        if ( v17 >= 1 && v17 <= 24 )
            v17 = sub_8015B22(v17);
        v18 = sub_8013774(v17, 44);
        sub_8011268(v18);
        v19 = v0->childobject2;
        if ( v19 )
        {
            *(v19 + 16) = 0;
            *(v19 + 6) = 0;
            *v19 |= 0x14u;
        }
        v20 = sub_8018856(3);
        sub_801DC06(v20, -v21);
        *(v1 + 1) = 4;
    }
    v22 = *(v1 + 16);
    v23 = __OFSUB__(v22, 1);
    result = v22 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v23) | (result == 0) )
    {
        sub_80144C0();
        sub_80143A6();
        sub_8015BEC(v0->Alliance, 128);
        sub_800EB08();
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x8015128
void sub_8015128()
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
        sub_800AB2E(v0->Alliance, 11, 1);
        sub_801031C(128);
        sub_801031C(0x80000);
        battle_clearFlags(32);
        sub_800FFEE(-2147449344);
        object_exitAttackState(v0);
    }
}


// 0x801516c
signed int __noreturn sub_801516C()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    int v2; // r0
    int v3; // r1
    u32 *v4; // r0
    signed int result; // r0

    v2 = v0->futurePanelX;
    v0->panelX = v2;
    v3 = v0->futurePanelY;
    v0->panelY = v3;
    object_removePanelReserve(v2, v3);
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    sub_800EB08();
    v0->directionFlip = sub_800F46C();
    sub_800F2C6();
    sub_8012EA8(v0);
    sub_80C4C3A(*&v0->ai->pad_58[4]);
    v0->parent = 0;
    v0->ai->unk_68 = 0;
    sub_80158FA();
    v0->currAnimation = 17;
    v4 = v0->childobject2;
    if ( v4 )
    {
        *(v4 + 6) = 1;
        *v4 |= 0x14u;
    }
    v1[8] = 6;
    sprite_decompress(12, 5);
    result = 4;
    *v1 = 4;
    return result;
}


// 0x80151d4
int __fastcall sub_80151D4(int a1, int a2, int a3)
{
    Battle *v3; // r5
    int v4; // r7
    int result; // r0
    int v6; // r0
    int v7; // r6
    int v8; // r4
    unsigned __int8 *v9; // r0
    int v10; // r1
    int v11; // r2
    int v12; // r3
    int v13; // r1
    int v14; // r4
    int v15; // r0
    int v16; // r0
    int v17; // r2
    char *v18; // r1
    int v19; // r0
    int v20; // r0
    unsigned __int8 v21; // vf

    if ( !*(v4 + 1) )
    {
        result = *(v4 + 16) - 1;
        *(v4 + 16) = result;
        if ( result >= 0 )
            return result;
        sub_8010312(0x80000);
        v6 = sub_801595E(v3->Alliance) - 23;
        v7 = v6 << 17;
        v8 = (v6 + 63) | (v3->Alliance << 8);
        SpawnT4BattleObjectWithId0(v3, 0x200000, v3->x, v3->y, v3->z + 0x200000);
        if ( v9 )
        {
            *(v9 + 16) = 54;
            v13 = *v9 | 4;
            *v9 = v13;
            PlaySoundEffect(410, v13, 4);
            v14 = v7 | 0x3E | (v3->Alliance << 8);
            SpawnT4BattleObjectWithId0(v3, 0x200000, v3->x, v3->y, v3->z + 0x200000);
            if ( v15 )
            {
                *(v15 + 32) = 69;
                *v15 |= 4u;
                v3->y += 12582912;
                sub_800AB2E(v3->Alliance, 2, 1);
                v16 = sub_801595E(v3->Alliance);
                v18 = byte_1CC;
                if ( v16 != 23 )
                    v18 = byte_1CD;
                PlaySoundEffect(v18, v18, v17);
                sub_80302B6(2, 75);
            }
        }
        *(v4 + 16) = 54;
        sub_80EA438(54, v10, v11, v12);
        *(v4 + 1) = 4;
    }
    v19 = *(v4 + 16);
    if ( v19 == 53 || v19 == 37 )
        PlaySoundEffect(410, a2, a3);
    v20 = *(v4 + 16);
    v21 = __OFSUB__(v20, 1);
    result = v20 - 1;
    *(v4 + 16) = result;
    if ( (result < 0) ^ v21 )
    {
        result = 8;
        *v4 = 8;
    }
    return result;
}


// 0x80152c8
int sub_80152C8()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r0
    int v4; // ST00_4
    char *v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r0
    int v9; // r0
    char *v10; // r0
    int v11; // r1
    int v12; // r2
    int v13; // r3
    int v14; // r1
    int v15; // r2
    int v16; // r0
    signed int v17; // r0
    int v18; // r0
    u32 *v19; // r0
    int v20; // r0
    char v21; // r1
    int v22; // r0
    unsigned __int8 v23; // vf
    int result; // r0

    sprite_forceWhitePallete();
    if ( !*(v1 + 1) )
    {
        v2 = sub_8013774(*(v1 + 1), 44);
        sub_8011384(v2);
        v3 = sub_801595E(v0->Alliance);
        v4 = v3;
        v5 = sub_8013774(v3, 41);
        sub_800FC9E(v5, v4);
        sprite_load(v0, 128, v6, v7);
        sprite_loadAnimationData(v0);
        sprite_hasShadow();
        object_setAnimation(v0);
        sprite_setAnimation(v0, v0->currAnimation);
        sprite_loadAnimationData(v0);
        v8 = object_getFlip(v0);
        sprite_setFlip(v0, v8);
        object_setCoordinatesFromPanels(v0);
        *(v1 + 16) = 10;
        sub_801A264();
        sprite_forceWhitePallete();
        v9 = sub_801595E(v0->Alliance);
        v10 = sub_8013754(v9, 44, v9);
        sub_80E11E0(v10, v11, v12, v13);
        v16 = PlaySoundEffect(256, v14, v15);
        v17 = sub_8013774(v16, 44);
        if ( v17 >= 1 && v17 <= 24 )
            v17 = sub_8015B22(v17);
        v18 = sub_8013774(v17, 44);
        sub_8011268(v18);
        v19 = v0->childobject2;
        if ( v19 )
            *(v19 + 6) = 0;
        v20 = sub_8018856(3);
        sub_801DC06(v20, -v21);
        *(v1 + 1) = 4;
    }
    v22 = *(v1 + 16);
    v23 = __OFSUB__(v22, 1);
    result = v22 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v23) | (result == 0) )
    {
        sub_80144C0();
        sub_80143A6();
        sub_8015BEC(v0->Alliance, 128);
        if ( v0->childobject2 )
            sprite_clearFinalPalette();
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x80153b0
void sub_80153B0()
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
        sub_801031C(128);
        sub_801031C(0x80000);
        battle_clearFlags(32);
        sub_800FFEE(-2147449344);
        object_exitAttackState(v0);
    }
}


// 0x80153ec
signed int __noreturn sub_80153EC()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    int v2; // r0
    int v3; // r1
    u32 *v4; // r0
    signed int result; // r0

    sub_8010312(0x80000);
    v2 = v0->futurePanelX;
    v0->panelX = v2;
    v3 = v0->futurePanelY;
    v0->panelY = v3;
    object_removePanelReserve(v2, v3);
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    sub_800EB08();
    v0->directionFlip = sub_800F46C();
    sub_800F2C6();
    sub_8012EA8(v0);
    sub_80C4C3A(*&v0->ai->pad_58[4]);
    sub_80158FA();
    v4 = v0->childobject2;
    if ( v4 )
    {
        *(v4 + 6) = 1;
        *v4 |= 0x14u;
    }
    v1[8] = 6;
    result = 4;
    *v1 = 4;
    return result;
}


// 0x801544c
int sub_801544C()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r2
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf

    if ( !*(v1 + 1) )
    {
        result = *(v1 + 16) - 1;
        *(v1 + 16) = result;
        if ( result >= 0 )
            return result;
        sub_801595E(*(v0 + 22));
        sub_80BC844(*(v0 + 18), *(v0 + 19), v3, 20);
        *(v1 + 16) = 48;
        *(v1 + 48) = 0;
        *(v1 + 1) = 4;
    }
    v4 = *(v1 + 48) + 1;
    if ( v4 <= 6 )
    {
        *(v1 + 48) = v4;
        sprite_forceWhitePallete();
        v4 = *(v0 + 80);
        if ( v4 )
            v4 = sprite_forceWhitePallete();
    }
    if ( v4 == 7 && *(v0 + 80) )
        sprite_clearFinalPalette();
    v5 = *(v1 + 16);
    v6 = __OFSUB__(v5, 1);
    result = v5 - 1;
    *(v1 + 16) = result;
    if ( (result < 0) ^ v6 )
    {
        *(v1 + 16) = 6;
        *v1 = 8;
        result = 0;
        *(v1 + 48) = 0;
    }
    return result;
}


// 0x80154c8
int sub_80154C8()
{
    Battle *v0; // r5
    int v1; // r7
    u32 *v2; // r0
    int v3; // r0
    int v4; // r0
    int v5; // ST00_4
    char *v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r0
    int v10; // r0
    char *v11; // r0
    signed int v12; // r0
    int v13; // ST00_4
    u32 *v14; // r0
    int v15; // r0
    char v16; // r1
    int v17; // r1
    int v18; // r2
    int v19; // r1
    int v20; // r2
    int v21; // r0
    unsigned __int8 v22; // vf
    int result; // r0

    sprite_forceWhitePallete();
    if ( !*(v1 + 1) )
    {
        v2 = v0->childobject2;
        if ( v2 )
            *v2 |= 0x14u;
        v3 = sub_8013774(v2, 44);
        sub_8011384(v3);
        v0->parent = 0;
        v0->ai->unk_68 = 0;
        v4 = sub_801595E(v0->Alliance);
        v5 = v4;
        v6 = sub_8013774(v4, 41);
        sub_800FC9E(v6, v5);
        sprite_load(v0, 128, v7, v8);
        sprite_loadAnimationData(v0);
        sprite_hasShadow();
        object_setAnimation(v0);
        sprite_setAnimation(v0, v0->currAnimation);
        sprite_loadAnimationData(v0);
        v9 = object_getFlip(v0);
        sprite_setFlip(v0, v9);
        object_setCoordinatesFromPanels(v0);
        *(v1 + 16) = 10;
        sprite_forceWhitePallete();
        v10 = sub_801595E(v0->Alliance);
        v11 = sub_8013754(v10, 44, v10);
        v12 = sub_8013774(v11, 44);
        if ( v12 >= 1 && v12 <= 24 )
            v12 = sub_8015B22(v12);
        v13 = sub_8013774(v12, 44);
        sub_8011268(v13);
        v14 = v0->childobject2;
        if ( v14 )
        {
            *(v14 + 16) = 0;
            *(v14 + 6) = 0;
        }
        v15 = sub_8018856(3);
        sub_801DC06(v15, -v16);
        PlaySoundEffect(141, v17, v18);
        PlaySoundEffect(119, v19, v20);
        *(v1 + 1) = 4;
    }
    v21 = *(v1 + 16);
    v22 = __OFSUB__(v21, 1);
    result = v21 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v22) | (result == 0) )
    {
        sub_80144C0();
        sub_80143A6();
        sub_8015BEC(v0->Alliance, 128);
        sub_800EB08();
        if ( v0->childobject2 )
            sprite_clearFinalPalette();
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x80155cc
void sub_80155CC()
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
        sub_800AB2E(v0->Alliance, 11, 1);
        sub_801031C(128);
        sub_801031C(0x80000);
        battle_clearFlags(32);
        sub_800FFEE(-2147449344);
        object_exitAttackState(v0);
    }
}


// 0x8015614
int sub_8015614()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8015628 + *v0))();
}


// 0x801562c
void sub_801562C()
{
    int v0; // r5
    int v1; // r7
    int v2; // r2
    _BYTE *v3; // r0
    char v4; // r0
    int v5; // r1
    int v6; // r0
    int v7; // r1
    _BYTE *v8; // r0
    int v9; // r0
    int v10; // r1
    int v11; // r2
    int v12; // r0
    char *v13; // r0
    int v14; // r0
    int v15; // r0
    int v16; // r0
    int v17; // r0
    char v18; // r1
    int v19; // r1
    int v20; // r0
    unsigned __int8 v21; // vf

    sprite_forceWhitePallete();
    if ( !*(v1 + 1) )
    {
        v3 = *(v0 + 80);
        if ( v3 )
        {
            v2 = 20;
            *v3 |= 0x14u;
        }
        v4 = 0;
        v5 = *(v0 + 92) << 16 >> 24;
        if ( v5 == 4 || v5 == 6 || v5 == 7 )
            v4 = 1;
        *(v1 + 1) = v4 + 1;
        PlaySoundEffect(142, v5, v2);
        v6 = *(v0 + 20);
        *(v0 + 18) = v6;
        v7 = *(v0 + 21);
        *(v0 + 19) = v7;
        object_removePanelReserve(v6, v7);
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        *(v0 + 23) = sub_800F46C();
        sub_800F2C6();
        SpawnT4BattleObjectWithId0(v0, 1310720, *(v0 + 52), *(v0 + 56), *(v0 + 60) + 1310720);
        *v8 |= 4u;
        object_clearFlag(&loc_8001440);
        object_clearFlag2(16);
        *(v0 + 31) = 0;
        v9 = sub_8013774(0, 44);
        sub_8011384(v9);
        sub_800FC9E(0, 0);
        sprite_load(v0, 128, v10, v11);
        sprite_loadAnimationData(v0);
        sprite_hasShadow();
        if ( *(v1 + 1) != 2 )
            object_setAnimation(v0);
        sprite_setAnimation(v0, *(v0 + 16));
        sprite_loadAnimationData(v0);
        v12 = object_getFlip(v0);
        sprite_setFlip(v0, v12);
        sprite_forceWhitePallete();
        v13 = sub_80158CC();
        sub_8013754(v13, 44, 0);
        sub_8015B22(0);
        v14 = sub_80144C0();
        (loc_80143B4)(v14);
        v15 = sub_800EB08();
        v16 = sub_8013774(v15, 44);
        sub_8011268(v16);
        v17 = sub_8018856(3);
        sub_801DC06(v17, -v18);
        *(v0 + 76) = 0;
        v19 = *(v0 + 88);
        *(v19 + 104) = 0;
        *(v19 + 64) = 0;
        *(v0 + 40) = 416;
        *(v1 + 16) = 30;
    }
    v20 = *(v1 + 16);
    v21 = __OFSUB__(v20--, 1);
    *(v1 + 16) = v20;
    if ( ((v20 < 0) ^ v21) | (v20 == 0) )
    {
        sub_800FFEE(268469821);
        sub_801031C(2099456);
        if ( *(v1 + 1) == 2 )
        {
            *(v0 + 8) = *(v0 + 92);
            *(v0 + 92) = 0;
        }
        else
        {
            object_exitAttackState(v0);
        }
    }
}


// 0x8015766
signed int sub_8015766()
{
    Battle *v0; // r5
    signed int v1; // r6
    int v2; // r7
    int v3; // r1
    int v4; // r2
    int v5; // r0
    int v6; // r1
    _BYTE *v7; // r0
    u32 *v8; // r0
    int v9; // r1
    int v10; // ST00_4
    int v11; // r1
    int v12; // r2
    int v13; // r0
    int v14; // r0
    int v15; // r0
    int v16; // r0
    int v17; // r0
    u32 *v18; // r0
    int v19; // r0
    char v20; // r1
    int v21; // r0
    unsigned __int8 v22; // vf
    u32 *v23; // r0
    signed int v25; // [sp+0h] [bp-14h]

    v1 = 1;
    v2 = v0->ai->attackVarRegion;
    sprite_forceWhitePallete();
    if ( !*(v2 + 1) )
    {
        battle_setFlags(4);
        PlaySoundEffect(142, v3, v4);
        v5 = v0->futurePanelX;
        v0->panelX = v5;
        v6 = v0->futurePanelY;
        v0->panelY = v6;
        object_removePanelReserve(v5, v6);
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        v0->currAnimation = 2;
        v0->currAnimationCpy = -1;
        sub_8011450(v0);
        v0->directionFlip = sub_800F46C();
        sub_800F2C6();
        SpawnT4BattleObjectWithId0(v0, 1310720, v0->x, v0->y, v0->z + 1310720);
        *v7 |= 4u;
        object_clearFlag(-2146362304);
        object_clearFlag2(16);
        v0->unk_1F = 0;
        v8 = v0->childobject2;
        if ( v8 )
        {
            *(v8 + 6) = 1;
            *v8 |= 0x14u;
        }
        v25 = sub_8013774(v8, 44);
        sub_8011384(v25);
        v9 = 0;
        if ( v25 > 10 )
        {
            v9 = 11;
            if ( v25 > 17 )
                v9 = 12;
        }
        v10 = v9;
        sub_800FC9E(0, v9);
        sprite_load(v0, 128, v11, v12);
        sprite_loadAnimationData(v0);
        sprite_hasShadow();
        object_setAnimation(v0);
        sprite_setAnimation(v0, v0->currAnimation);
        sprite_loadAnimationData(v0);
        v13 = object_getFlip(v0);
        sprite_setFlip(v0, v13);
        v14 = sprite_forceWhitePallete();
        sub_8013754(v14, 44, v10);
        sub_8015B22(v10);
        sub_8015BEC(v0->Alliance, 128);
        v15 = sub_80144C0();
        v16 = (loc_80143B4)(v15);
        v17 = sub_8013774(v16, 44);
        sub_8011268(v17);
        v18 = v0->childobject2;
        if ( v18 )
        {
            *(v18 + 6) = 1;
            *v18 |= 0x14u;
        }
        v19 = sub_8018856(3);
        sub_801DC06(v19, -v20);
        sub_800EB08();
        v0->parent = 0;
        v0->ai->unk_68 = 0;
        object_clearCollisionRegion();
        *(v2 + 16) = 30;
        *(v2 + 1) = 4;
    }
    v21 = *(v2 + 16);
    v22 = __OFSUB__(v21--, 1);
    *(v2 + 16) = v21;
    if ( ((v21 < 0) ^ v22) | (v21 == 0) )
    {
        sub_801031C(2361344);
        v23 = v0->childobject2;
        if ( v23 )
            *(v23 + 6) = 0;
        battle_clearFlags(4);
        object_setCollisionRegion(1);
        *v2 = 0;
        v1 = 0;
    }
    return v1;
}


// 0x80158cc
char *sub_80158CC()
{
    int v0; // r5
    char *result; // r0

    sub_8013682(*(v0 + 22))[14] = -128;
    result = sub_802D234();
    if ( result != &byte_0[1] )
    {
        result = sub_8013774(result, 44);
        if ( result >= 11 )
        {
            if ( result > 22 )
                result = sub_8014466();
            else
                result = sub_801443C();
        }
    }
    return result;
}


// 0x80158fa
int sub_80158FA()
{
    int v0; // r5
    int result; // r0

    object_clearFlag(-2146362304);
    object_clearFlag2(16);
    *(v0 + 31) = 0;
    sub_801031C(2099200);
    result = *(v0 + 84);
    *(result + 44) = 0;
    *(result + 42) = 0;
    *(result + 28) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    return result;
}


// 0x8015940
u32 sub_8015940()
{
    u32 result; // r0

    byte_203CED0 = -1;
    LOBYTE(dword_203CED4) = -1;
    result = sub_80103EC();
    *byte_203CED8 = result;
    return result;
}


// 0x8015952
int __fastcall sub_8015952(int result, char a2, char a3)
{
    byte_203CED0 = result;
    byte_203CED1 = a2;
    byte_203CED3 = a3;
    return result;
}


// 0x801595e
int __fastcall sub_801595E(int a1)
{
    unsigned __int8 *v1; // r3
    int result; // r0
    int v3; // r1
    int v4; // r3

    v1 = &byte_203A980[16 * a1];
    result = *v1;
    v3 = v1[1];
    v4 = v1[3];
    return result;
}


// 0x801596e
int __fastcall sub_801596E(int result)
{
    if ( result )
        result = sub_800FFE4(0x4000);
    return result;
}


// 0x801597c
signed int __fastcall sub_801597C(signed int result)
{
    char v1; // r0
    signed int v2; // r2

    if ( result )
    {
        v1 = sub_801032C();
        v2 = 0;
        if ( v1 & 0x80 )
            v2 = 1;
        result = v2;
    }
    return result;
}


// 0x8015994
int __fastcall sub_8015994(int result)
{
    if ( result )
        result = sub_800FFE4(64);
    return result;
}


// 0x80159a2
signed int __fastcall sub_80159A2(int a1)
{
    signed int v1; // r7

    v1 = 0;
    if ( a1 )
    {
        v1 = 1;
        if ( !(sub_801032C() & byte_100) && !(sub_800FFFE() & 0x40) )
            v1 = 0;
    }
    return v1;
}


// 0x80159c6
signed int __fastcall sub_80159C6(int a1)
{
    signed int v1; // r6
    int v2; // r5
    int v3; // r0
    int v4; // r0
    int v5; // r0
    int v6; // r0

    v1 = 0;
    v2 = a1;
    if ( a1 )
    {
        v3 = sub_802D234();
        if ( v3 != 1 )
        {
            v4 = *(v2 + 88);
            if ( *(v4 + 15) )
                return v1;
            *(v4 + 15) = 2;
            if ( sub_8013774(v4, 33) )
                return v1;
            v3 = sub_801443C();
        }
        v5 = sub_8013774(v3, 44);
        if ( v5 >= 11 && v5 <= 24 )
        {
            v6 = sub_802D234();
            if ( v6 == 1 || !sub_8013774(v6, 33) )
                v1 = 1;
        }
    }
    return v1;
}


// 0x8015a16
int __fastcall sub_8015A16(int result)
{
    int v1; // r5
    int v2; // r1
    int v3; // r2

    v1 = result;
    if ( result )
    {
        result = sub_8013774(result, 41);
        if ( !result )
        {
            v2 = *(v1 + 88);
            v3 = *(v2 + 15);
            if ( v3 != 255 )
            {
                if ( *(v2 + 15) )
                    *(v2 + 15) = v3 - 1;
            }
        }
    }
    return result;
}


// 0x8015a38
int __fastcall sub_8015A38(int a1)
{
    int v1; // r0
    signed int v2; // r0
    int v3; // r0

    if ( a1 )
    {
        if ( !sub_8013774(a1, 41) )
        {
            v1 = sub_8013774(0, 23);
            if ( v1 != 11 && v1 != 12 )
            {
                v2 = sub_8013774(v1, 44);
                if ( v2 >= 11 && v2 <= 24 )
                {
                    v3 = sub_8013774(v2, 33);
                    if ( v3 )
                        sub_8013754(v3 - 1, 33, v3 - 1);
                }
            }
        }
    }
    return 0;
}


// 0x8015a80
char *__fastcall sub_8015A80(int a1)
{
    char *result; // r0

    result = sub_8013774(a1, 44);
    if ( result < 11 || result > 24 )
    {
        result = sub_8013774(result, 33);
        if ( result < 3 )
            result = sub_8013754(result, 33, result + 1);
    }
    return result;
}


// 0x8015aa6
BOOL __fastcall sub_8015AA6(int a1, int a2)
{
    Battle *v2; // r5
    BOOL result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-20h]
    int v6; // [sp+4h] [bp-1Ch]
    int v7; // [sp+8h] [bp-18h]
    int v8; // [sp+Ch] [bp-14h]

    v5 = a1;
    v6 = a2;
    v7 = object_getFrontDirection(v2);
    v8 = *(&off_8015AF8 + v2->Alliance);
    while ( 1 )
    {
        result = object_isValidPanel(v5, v6);
        if ( v4 )
            break;
        if ( object_getPanelParameters(v5, v6) & v8 )
            sub_80CC0B2(v5, v6, 0, 0);
        v5 += v7;
    }
    return result;
}


// 0x8015b00
int __noreturn sub_8015B00()
{
    Battle *v0; // r5
    int v1; // ST00_4
    bool v2; // zf
    int result; // r0

    v1 = 2 * object_getFrontDirection(v0) + v0->panelX;
    v2 = object_checkPanelParameters(v1, v0->panelY, 0x10000, 260046848) == 0;
    result = v1;
    if ( v2 )
        result = 0;
    return result;
}


// 0x8015b22
int __fastcall sub_8015B22(int result)
{
    int v1; // r5
    void *v2; // r1

    v2 = &loc_1A0;
    if ( result )
        LOWORD(v2) = result + 427;
    *(v1 + 40) = v2;
    return result;
}


// 0x8015b54
int __fastcall sub_8015B54(int a1)
{
    return sub_8015B64(a1);
}


// 0x8015b5c
int __fastcall sub_8015B5C(int a1)
{
    return sub_8015BA8(a1);
}


// 0x8015b64
signed int __fastcall sub_8015B64(int a1)
{
    int v1; // r4
    unsigned __int8 *v2; // r6
    _WORD *v3; // r4
    int v4; // r1
    signed int result; // r0
    int v6; // r3

    v1 = a1;
    v2 = sub_8013682(a1);
    v3 = *(sub_80103BC(v1) + 88);
    v4 = v2[44];
    result = 5;
    if ( !v3[27] )
    {
        if ( v2[14] )
        {
            result = 3;
            if ( !v3[26] )
            {
                result = 1;
                if ( !v3[25] )
                {
                    result = 2;
                    if ( v2[14] != 255 )
                        result = 0;
                }
            }
        }
    }
    v6 = v2[33];
    return result;
}


// 0x8015ba8
signed int __fastcall sub_8015BA8(int a1)
{
    int v1; // r4
    unsigned __int8 *v2; // r6
    _WORD *v3; // r4
    int v4; // r1
    signed int result; // r0
    int v6; // r3

    v1 = a1;
    v2 = GetBattleNaviStats2034A60Addr(a1);
    v3 = *(sub_80103BC(v1) + 88);
    v4 = v2[44];
    result = 5;
    if ( v3[27] )
    {
        if ( v2[14] )
        {
            result = 3;
            if ( !v3[26] )
            {
                result = 1;
                if ( v3[25] )
                {
                    result = 2;
                    if ( v2[14] != 255 )
                        result = 0;
                }
            }
        }
    }
    v6 = v2[33];
    return result;
}


// 0x8015bec
char *__fastcall sub_8015BEC(int a1, char a2)
{
    int v2; // r6
    char v3; // r4
    char *result; // r0
    char v5; // zf

    v2 = a1;
    v3 = a2;
    result = sub_80103BC(a1);
    if ( result )
    {
        result = sub_801445C();
        if ( v5 )
        {
            result = sub_8014490();
            if ( v5 )
            {
                result = sub_8013682(v2);
                result[14] = v3;
            }
        }
    }
    return result;
}


// 0x8015c12
char *__fastcall sub_8015C12(int a1, int a2)
{
    int v2; // r4
    char *result; // r0
    int v4; // r1

    v2 = a2;
    result = sub_8013682(a1);
    if ( result[14] )
    {
        v4 = result[14] - v2;
        if ( v4 < 1 )
            LOBYTE(v4) = 1;
        result[14] = v4;
    }
    return result;
}


// 0x8015c2c
signed int sub_8015C2C()
{
    return 128;
}


// 0x8015c32
int ZeroAllNaviStatsMood()
{
    int v0; // r4
    int result; // r0

    v0 = 0;
    do
        result = SetNaviStatsByte(v0++, 14, 0);
    while ( v0 < 7 );
    return result;
}


// 0x8015c48
int __noreturn sub_8015C48()
{
    unsigned __int8 *v0; // r5
    int *v1; // r0
    int v2; // r0
    int v3; // r7
    int result; // r0
    int v9; // r1
    int v10; // [sp+0h] [bp+0h]

    v1 = &byte_8015C84[8 * v0[22]];
    v2 = object_getPanelsExceptCurrentFilterred(v1, byte_8015C84, *v1, v1[1]);
    if ( v2 )
    {
        v3 = v2;
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v10 + v3) & 7;
    }
    else
    {
        result = v0[18];
        v9 = v0[19];
    }
    return result;
}


// 0x8015c94
int __fastcall __noreturn sub_8015C94(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r7
    int result; // r0
    int v12; // r1
    int v13; // [sp+0h] [bp+0h]

    v5 = object_getPanelsExceptCurrentFilterred(a1, a2, a3, a4);
    if ( v5 )
    {
        v6 = v5;
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v13 + v6) & 7;
    }
    else
    {
        result = *(v4 + 18);
        v12 = *(v4 + 19);
    }
    return result;
}


// 0x8015cc0
int __fastcall __noreturn sub_8015CC0(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r1
    int v7; // r0
    int v8; // r0
    int v9; // r2
    int result; // r0
    int v15; // [sp+0h] [bp-38h]
    int v16; // [sp+8h] [bp-30h]
    int v17; // [sp+Ch] [bp-2Ch]
    int v18; // [sp+10h] [bp-28h]
    int v19; // [sp+14h] [bp-24h]
    int v20; // [sp+18h] [bp-20h]
    int v21; // [sp+1Ch] [bp-1Ch]
    int v22; // [sp+20h] [bp-18h]
    int v23; // [sp+24h] [bp-14h]
    int v24; // [sp+28h] [bp-10h]
    int v25; // [sp+2Ch] [bp-Ch]
    int v26; // [sp+30h] [bp-8h]

    v16 = a1;
    v17 = a2;
    v20 = a3;
    v21 = a4;
    v24 = v4;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v6 = *(v5 + 23);
    v7 = object_getAllianceDirection(*(v5 + 22));
    v18 = -v7;
    v16 -= v7;
    v19 = *&byte_8015D78[4 * *(v5 + 22)];
    do
    {
        v8 = object_getPanelParameters(v16, v17);
        if ( v8 & v19 )
        {
            v25 = v16;
            v26 = v17;
            if ( ++v23 > v24 )
                break;
        }
        if ( v23 == v24 && object_checkPanelParameters(v16, v17, v20, v21) )
        {
            v9 = v22;
            *(&v15 + v22) = v16 | 16 * v17;
            v22 = v9 + 1;
        }
        v16 += v18;
    }
    while ( object_isValidPanel(v16, v17) );
    result = v22;
    if ( v22 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v15 + v22) & 7;
    }
    return result;
}


// 0x8015d80
int __fastcall sub_8015D80(int a1, int a2, int a3, int a4)
{
    char *v4; // r4
    int v5; // r0
    int v6; // r1
    int v7; // r1
    int result; // r0
    int v13; // [sp+0h] [bp-40h]
    int v14; // [sp+18h] [bp-28h]
    int v15; // [sp+1Ch] [bp-24h]
    int v16; // [sp+20h] [bp-20h]
    int v17; // [sp+24h] [bp-1Ch]
    int v18; // [sp+28h] [bp-18h]
    int v19; // [sp+2Ch] [bp-14h]
    int v20; // [sp+30h] [bp-10h]
    int v21; // [sp+34h] [bp-Ch]

    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    v14 = object_getEnemyDirection();
    v19 = 0;
    while ( 1 )
    {
        v5 = *v4;
        if ( v5 == 127 )
            break;
        v6 = v4[1] + v16;
        v20 = v5 * v14 + v15;
        v21 = v6;
        if ( object_checkPanelParameters(v20, v6, v17, v18) )
        {
            v7 = v19;
            *(&v13 + v19) = v20 | 16 * v21;
            v19 = v7 + 1;
        }
        v4 += 2;
    }
    result = v19;
    if ( v19 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v13 + v19) & 7;
    }
    return result;
}


// 0x8015df0
int __fastcall sub_8015DF0(int a1, int a2, int a3, int a4)
{
    unsigned __int8 *v4; // r4
    int v5; // r0
    int v6; // r1
    int v7; // r1
    int result; // r0
    int v13; // [sp+0h] [bp-40h]
    int v14; // [sp+24h] [bp-1Ch]
    int v15; // [sp+28h] [bp-18h]
    int v16; // [sp+2Ch] [bp-14h]
    int v17; // [sp+30h] [bp-10h]
    int v18; // [sp+34h] [bp-Ch]

    v14 = a3;
    v15 = a4;
    v16 = 0;
    while ( 1 )
    {
        v5 = *v4;
        if ( v5 == 127 )
            break;
        v6 = v4[1];
        v17 = *v4;
        v18 = v6;
        if ( object_checkPanelParameters(v5, v6, v14, v15) )
        {
            v7 = v16;
            *(&v13 + v16) = v17 | 16 * v18;
            v16 = v7 + 1;
        }
        v4 += 2;
    }
    result = v16;
    if ( v16 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v13 + v16) & 7;
    }
    return result;
}


// 0x8015e46
int __fastcall sub_8015E46(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r4

    v5 = *(&off_8019B78 + v4);
    return sub_8015E58(a1, a2, a3, a4);
}


// 0x8015e58
int __fastcall sub_8015E58(int a1, int a2, int a3, int a4)
{
    char *v4; // r4
    int v5; // r6
    int v6; // r6
    int v7; // r0
    int v8; // r1
    int result; // r0
    int v14; // [sp+0h] [bp-44h]
    int v15; // [sp+1Ch] [bp-28h]
    int v16; // [sp+20h] [bp-24h]
    int v17; // [sp+24h] [bp-20h]
    int v18; // [sp+28h] [bp-1Ch]
    int v19; // [sp+2Ch] [bp-18h]
    int v20; // [sp+30h] [bp-14h]
    int v21; // [sp+34h] [bp-10h]

    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    v19 = object_getAllianceDirection(v5);
    v6 = 0;
    while ( 1 )
    {
        v7 = *v4;
        if ( v7 == 127 )
            break;
        v8 = v4[1];
        v20 = v7 * v19 + v15;
        v21 = v8 + v16;
        if ( object_checkPanelParameters(v20, v8 + v16, v17, v18) )
            *(&v14 + v6++) = v20 | 16 * v21;
        v4 += 2;
    }
    result = v6;
    if ( v6 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v14 + v6) & 7;
    }
    return result;
}


// 0x8015ec6
int sub_8015EC6()
{
    int v0; // r5
    int result; // r0
    int v2; // r4
    signed int v3; // r6
    unsigned int v4; // r1
    int v5; // r0
    int v7; // r4
    char v11[4]; // [sp+0h] [bp+0h]
    int v12; // [sp+4h] [bp+4h]

    result = object_getPanelsExceptCurrentFilterred(4 * *(v0 + 22), byte_8015F38, *&byte_8015F38[4 * *(v0 + 22)], 0);
    v2 = result;
    if ( result )
    {
        v3 = 6;
        do
        {
            v4 = v11[0] >> 4;
            v5 = *(v0 + 19) - v4;
            if ( v5 < 0 )
                v5 = v4 - *(v0 + 19);
            if ( v5 < v3 )
            {
                v3 = v5;
                v12 = v11[0] >> 4;
            }
            _VF = __OFSUB__(v2--, 1);
        }
        while ( !(((v2 < 0) ^ _VF) | (v2 == 0)) );
        result = object_getPanelsInRowFiltered(
                             v12,
                             &byte_8015F40[8 * *(v0 + 22)],
                             *&byte_8015F40[8 * *(v0 + 22)],
                             *&byte_8015F40[8 * *(v0 + 22) + 4]);
        v7 = result;
        if ( result )
        {
            GetPositiveSignedRNG2();
            __asm { SVC         6 }
            result = v11[v7] & 7;
        }
    }
    return result;
}


// 0x8016004
int sub_8016004()
{
    int v0; // r5
    int result; // r0
    int v2; // r7
    signed int v7; // r3
    int v8; // r2
    int v9; // [sp+0h] [bp+0h]

    result = sub_801632C(*(v0 + 22) ^ 1);
    v2 = result;
    if ( result )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v9 + v2) & 7;
        v7 = 1;
        if ( *(v0 + 18) < result )
            v7 = 0;
        v8 = *(v0 + 22) ^ v7;
    }
    return result;
}


// 0x8016168
int sub_8016168()
{
    int v0; // r5
    int result; // r0

    result = object_getClosestPanelMatchingRowFiltered(
                         *(v0 + 22) ^ 1,
                         *(v0 + 19),
                         *&byte_80161A4[8 * *(v0 + 22)],
                         *&byte_80161A4[8 * *(v0 + 22) + 4]);
    if ( !result )
        result = object_getClosestPanelMatchingRowFiltered(
                             *(v0 + 22) ^ 1,
                             *(v0 + 19),
                             *&byte_80161B4[8 * *(v0 + 22)],
                             *&byte_80161B4[8 * *(v0 + 22) + 4]);
    return result;
}


// 0x80161c4
__int64 __fastcall sub_80161C4(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r1
    __int64 v6; // r0
    int v7; // r7
    unsigned int v12; // r0
    __int64 v13; // ST00_8
    int v15; // [sp+0h] [bp-28h]
    int v16; // [sp+4h] [bp-24h]
    int v17; // [sp+8h] [bp-20h]

    v15 = a3;
    v16 = a4;
    object_reservePanel(*(v4 + 18), *(v4 + 19));
    LODWORD(v6) = object_getPanelsIgnoreColumnFiltered(*(v4 + 19), v5, v15, v16);
    if ( v6 || (LODWORD(v6) = object_getPanelsInRowFiltered(*(v4 + 19), SHIDWORD(v6), v15, v16), v6) )
    {
        v7 = v6;
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        v12 = *(&v17 + v7);
        HIDWORD(v6) = v12 >> 4;
        LODWORD(v6) = v6 & 7;
    }
    v13 = v6;
    object_removePanelReserve(*(v4 + 18), *(v4 + 19));
    return v13;
}


// 0x8016218
int sub_8016218()
{
    Battle *v0; // r5
    int v1; // r4
    char v2; // zf
    int result; // r0
    signed int v4; // r3
    int v5; // r2
    int v6; // [sp+0h] [bp-18h]
    int v7; // [sp+4h] [bp-14h]
    int v8; // [sp+Ch] [bp-Ch]

    v6 = object_getFrontDirection(v0);
    v7 = v6 + v0->panelX;
    v8 = *&byte_8016290[4 * v0->Alliance];
LABEL_2:
    v1 = 0;
    object_isValidPanel(v7, 2);
    if ( v2 )
        return 0;
    while ( !(object_getPanelParameters(v7, byte_8016298[3 * (v0->panelY - 1) + v1]) & v8) )
    {
        if ( ++v1 >= 3 )
        {
            v7 += v6;
            goto LABEL_2;
        }
    }
    result = v7;
    v4 = 1;
    if ( v0->panelX < v7 )
        v4 = 0;
    v5 = v0->Alliance ^ v4;
    return result;
}


// 0x80162aa
int __fastcall sub_80162AA(int a1, int a2, int a3, int a4)
{
    int result; // r0
    int v5; // r6
    int v6; // r7
    int v7; // r0
    int v8; // r0
    int v13; // [sp+0h] [bp+0h]
    int v14; // [sp+4h] [bp+4h]
    int v15; // [sp+10h] [bp+10h]
    int v16; // [sp+14h] [bp+14h]
    _BYTE savedregs[12]; // [sp+18h] [bp+18h]

    v15 = a1;
    *savedregs = a2;
    result = sub_800D1F0(a1, a2, a3, a4);
    if ( result )
    {
        v16 = result;
        v5 = 0;
        v6 = 0;
        do
        {
            v7 = object_getFlipDirection(v15, *savedregs);
            v8 = object_getPanelParameters((*(&v13 + v5) & 7) + v7, *(&v13 + v5) >> 4);
            if ( !(v8 & *&byte_8016324[4 * v15]) && v8 & 0x10000 )
                *(&v14 + v6++) = *(&v13 + v5);
            ++v5;
        }
        while ( v5 < v16 );
        result = v6;
        if ( v6 )
        {
            GetPositiveSignedRNG2();
            __asm { SVC         6 }
            result = *(&v14 + v6) & 7;
        }
    }
    return result;
}


// 0x801632c
int __fastcall sub_801632C(int a1)
{
    int v1; // r7
    int v2; // r10
    int v3; // r0
    int v4; // r1
    int v5; // r6
    int v6; // r0
    int v8; // [sp-8h] [bp-1Ch]
    int v9; // [sp-4h] [bp-18h]

    v3 = *(v2 + oToolkit_S2034880_Ptr) + *&byte_801636C[4 * a1];
    v4 = 0;
    v5 = 0;
    do
    {
        v8 = v3;
        v9 = v4;
        v6 = *(v3 + 4 * v4);
        if ( v6 )
            *(v1 + v5++) = *(v6 + 18) | 16 * *(v6 + 19);
        v3 = v8;
        ++v4;
    }
    while ( v9 + 1 < 4 );
    return v5;
}


// 0x8016380
int __usercall sub_8016380@<R0>(Battle *obj@<R5>)
{
    int result; // r0

    if ( obj->ai->unk_02 )
        result = sub_80164A0(obj);
    else
        result = sub_8016396();
    return result;
}


// 0x8016396
int sub_8016396()
{
    int v0; // r5

    return (*(&off_80163A8 + *(v0 + 10)))();
}


// 0x80163b4
int sub_80163B4()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r1
    int v4; // r2

    if ( *(v0 + 11) )
    {
        if ( sub_800139A() & 1 && sub_800AA06(0) )
        {
            PlaySoundEffect(148, v3, v4);
            *(v0 + 32) = 2;
            *(v0 + 34) = 16;
            sub_8002C7A(0);
            result = 4;
            *(v0 + 10) = 4;
            return result;
        }
    }
    else
    {
        if ( *(v0 + 22) == *(*(v1 + oToolkit_S2034880_Ptr) + 13) )
        {
            *v0 |= 2u;
            result = 8;
            *(v0 + 10) = 8;
            return result;
        }
        sub_800AA1A(0);
        *(v0 + 11) = 4;
    }
    result = *v0 & 0xFD;
    *v0 = result;
    return result;
}


// 0x801641a
int sub_801641A()
{
    unsigned __int8 *v0; // r5
    int result; // r0
    int v2; // r0
    char v3; // ST00_1

    result = *(v0 + 16) - 1;
    *(v0 + 16) = result;
    if ( !result )
    {
        *(v0 + 16) = 2;
        v2 = *(v0 + 17) - 1;
        *(v0 + 17) = v2;
        if ( v2 )
        {
            v3 = v2;
            sprite_setMosaicSize(v2, v2);
            sub_8002C7A(16 - v3);
            result = *v0 | 2;
            *v0 = result;
        }
        else
        {
            sprite_disableAlpha();
            sprite_clearMosaic();
            sub_800AA40(0);
            result = 8;
            *(v0 + 5) = 8;
        }
    }
    return result;
}


// 0x8016460
unsigned int sub_8016460()
{
    int v0; // r5
    int v1; // r10
    unsigned int v2; // r0
    unsigned __int8 v3; // cf
    unsigned int result; // r0
    char v5; // r0
    char v6; // r1
    signed int v7; // r2

    v2 = sub_800139A();
    v3 = __CFSHR__(v2, 2);
    result = v2 >> 2;
    if ( v3 )
    {
        if ( sub_802D234() == 6 || *(v0 + 22) != *(*(v1 + oToolkit_S2034880_Ptr) + 13) )
        {
            v5 = 0;
            v6 = 0;
            v7 = *(v0 + 40);
            if ( v7 >= 73 && v7 <= 78 )
            {
                v5 = -32;
                v6 = 3;
            }
            sub_801DC7C(v5, v6);
        }
        *(v0 + 9) = 1;
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x80164a0
int __usercall sub_80164A0@<R0>(Battle *obj@<R5>)
{
    return (*(&off_80164B4 + obj->currPhase))();
}


// 0x80164c0
int __usercall __noreturn sub_80164C0@<R0>(Battle *obj@<R5>)
{
    int v1; // r0
    int v2; // r1
    int v3; // r1
    int v4; // r2
    _BYTE *v5; // r0
    int result; // r0

    obj->objFlags &= 0xFDu;
    v1 = obj->panelX;
    obj->futurePanelX = v1;
    v2 = obj->panelY;
    obj->futurePanelY = v2;
    object_reservePanel(v1, v2);
    object_clearCollisionRegion();
    obj->bPhaseInitialized = 4;
    PlaySoundEffect(148, v3, v4);
    obj->Timer = 20;
    obj->Timer2 = 30;
    sprite_setColorShader(obj, 0x7FFF);
    object_setInvulnerableTime(0xFFFF);
    SpawnT4BattleObjectWithId0(obj, &obj->vx, obj->x, obj->y, obj->z);
    *v5 |= 4u;
    result = 4;
    obj->currPhase = 4;
    return result;
}


// 0x8016520
int sub_8016520()
{
    unsigned __int8 *v0; // r5
    int v1; // r0
    _BYTE *v2; // r0
    int v3; // r1
    int v4; // r0
    int result; // r0

    if ( *(v0 + 16) )
    {
        v1 = *(v0 + 16) - 1;
        *(v0 + 16) = v1;
        if ( v1 )
        {
LABEL_5:
            sprite_setColorShader(v0, 1057 * *(v0 + 17));
            result = *v0 | 2;
            *v0 = result;
            return result;
        }
        SpawnT4BattleObjectWithId0(v0, (v0 + 64), *(v0 + 13), *(v0 + 14), *(v0 + 15) + 0x100000);
        v3 = *v2 | 4;
        *v2 = v3;
        PlaySoundEffect(297, v3, 4);
    }
    v4 = *(v0 + 17) - 1;
    *(v0 + 17) = v4;
    if ( v4 )
        goto LABEL_5;
    sprite_zeroColorShader();
    result = 8;
    *(v0 + 5) = 8;
    return result;
}


// 0x801657e
int __fastcall __noreturn sub_801657E(int a1)
{
    int v1; // r5
    int v2; // r10
    int result; // r0

    if ( sub_802D234() == 6 || *(v1 + 22) != *(*(v2 + oToolkit_S2034880_Ptr) + 13) )
        sub_801DC7C(0, 0);
    sub_800EB08();
    object_removePanelReserve(*(v1 + 20), *(v1 + 21));
    object_setCollisionRegion(1);
    *(v1 + 9) = 1;
    result = 0;
    *(v1 + 10) = 0;
    return result;
}


// 0x80165b8
int sub_80165B8()
{
    int v0; // r5
    int result; // r0

    *(v0 + 9) = 8;
    result = 0;
    *(v0 + 10) = 0;
    return result;
}


// 0x80165c2
int __fastcall sub_80165C2(int a1)
{
    int v1; // r5
    int result; // r0
    char v3; // zf

    if ( object_getFlag() & 0x40000000 )
        return sub_8016EC4();
    result = battle_isPaused();
    if ( v3 )
        result = (*(&off_80165F0 + *(v1 + 10)))();
    return result;
}


// 0x80165f8
signed int __fastcall sub_80165F8(int a1)
{
    int v1; // r5
    char *v2; // r0
    signed int v3; // r0
    signed int result; // r0

    object_clearCollisionRegion();
    sub_801A5E2();
    sub_80101C4(v1);
    sub_801DC36();
    *(v1 + 26) = 0;
    *(v1 + 42) = -1;
    *(v1 + 76) = 0;
    sub_801A7F4();
    v2 = sub_80182B4(*(v1 + 40));
    if ( !v2[1] )
    {
        if ( *v2 >= 4 )
            sub_802D65E(v2[2]);
        else
            sub_802D644(v2[2]);
    }
    v3 = *(v1 + 5);
    if ( v3 < 1 )
        v3 = sub_800A11C();
    sub_802EF5C(v3);
    result = 4;
    *(v1 + 10) = 4;
    return result;
}


// 0x801664e
int sub_801664E()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0
    int v4; // r7
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r0
    unsigned __int8 v9; // vf
    int v10; // r0
    unsigned __int8 v11; // cf

    if ( !*(v0 + 11) )
    {
        result = battle_isTimeStop();
        if ( !v2 )
            return result;
        v3 = sub_800AE44();
        v4 = *(v0 + 88) + 116;
        sub_80E1A6A(v3, v5, v6, v7);
        *(v0 + 32) = 32;
        *(v0 + 11) = 4;
    }
    v8 = *(v0 + 32);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    *(v0 + 32) = v10;
    if ( (v10 < 0) ^ v9 )
    {
        sub_802CDD0();
        object_removePanelReserve(*(v0 + 20), *(v0 + 21));
        sub_80077B4(v0);
        *(*(v0 + 88) + 116) = 0;
        sub_8011020();
        *v0 &= 0xFDu;
        result = 8;
        *(v0 + 8) = 8;
    }
    else
    {
        v11 = __CFSHR__(v10, 2);
        result = v10 >> 2;
        if ( v11 )
            result = sprite_forceWhitePallete();
    }
    return result;
}


// 0x80166ae
int sub_80166AE()
{
    return sub_800F3E8();
}


// 0x80166b6
int sub_80166B6()
{
    int v0; // r5

    return (*(&off_80166C8 + *(v0 + 31)))();
}


// 0x80166d0
int __noreturn sub_80166D0()
{
    int v0; // r5
    __int64 v1; // r0
    int v2; // r2
    int result; // r0

    object_setFlag1(4096);
    *(v0 + 18) = *(v0 + 20);
    object_setCoordinatesFromPanels(v0);
    object_setCollisionPanelsToCurrent();
    object_removePanelReserve(*(v0 + 20), *(v0 + 21));
    v1 = sub_800E468();
    *(v0 + 28) = v1;
    *(v0 + 29) = BYTE4(v1);
    *(v0 + 27) = v2;
    if ( v2 )
    {
        LODWORD(v1) = v1 + *(v0 + 18);
        HIDWORD(v1) += *(v0 + 19);
        *(v0 + 20) = v1;
        *(v0 + 21) = BYTE4(v1);
        object_reservePanel(v1, SHIDWORD(v1));
        *(v0 + 30) = 4;
        result = 4;
        *(v0 + 31) = 4;
    }
    else
    {
        if ( *(v0 + 15) == 3 )
            *(*(v0 + 88) + 56) = 5;
        *(v0 + 15) = 0;
        result = object_clearFlag(4096);
    }
    return result;
}


// 0x8016730
int sub_8016730()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    signed int v3; // r4
    __int64 v4; // r0
    int v5; // r2
    int v6; // r0
    int v7; // r6
    int v8; // r7
    char v9; // zf

    v1 = *(v0 + 30);
    v2 = __OFSUB__(v1--, 1);
    *(v0 + 30) = v1;
    if ( !(((v1 < 0) ^ v2) | (v1 == 0)) )
    {
        *(v0 + 52) += 655360 * *(v0 + 28);
        *(v0 + 56) += 393216 * *(v0 + 29);
        object_setPanelsFromCoordinates(v0);
        return object_setCollisionPanelsToCurrent();
    }
    object_removePanelReserve(*(v0 + 20), *(v0 + 21));
    *(v0 + 18) = *(v0 + 20);
    object_setCoordinatesFromPanels(v0);
    v3 = object_getPanelDataOffset(*(v0 + 20), *(v0 + 21))[2];
    if ( v3 != 7 || *(*(v0 + 84) + 2) == 2 )
    {
        if ( v3 >= 9 && v3 <= 12 && !(object_getFlag() & 0x24) )
        {
            if ( *(v0 + 15) == 3 )
            {
                *(*(v0 + 88) + 56) = 5;
                goto LABEL_16;
            }
            *(*(v0 + 84) + 12) = sub_801683C(*(v0 + 28), *(v0 + 29), *(v0 + 22));
            *(v0 + 15) = 3;
            v4 = sub_800E468();
            *(v0 + 28) = v4;
            *(v0 + 29) = BYTE4(v4);
            if ( !v5 )
                goto LABEL_16;
            ++*(v0 + 27);
        }
    }
    else
    {
        ++*(v0 + 27);
    }
    v6 = *(v0 + 27);
    v2 = __OFSUB__(v6--, 1);
    *(v0 + 27) = v6;
    if ( !(((v6 < 0) ^ v2) | (v6 == 0)) )
    {
        v7 = *(v0 + 20) + *(v0 + 28);
        v8 = *(v0 + 21) + *(v0 + 29);
        sub_800E5AC(v7, v8);
        if ( !v9 )
        {
            *(v0 + 30) = 4;
            *(v0 + 20) = v7;
            *(v0 + 21) = v8;
            return object_reservePanel(v7, v8);
        }
    }
LABEL_16:
    *(*(v0 + 84) + 12) = sub_801683C(*(v0 + 28), *(v0 + 29), *(v0 + 22));
    *(v0 + 31) = 0;
    object_clearFlag(4096);
    *(v0 + 15) = 0;
    return object_setCollisionPanelsToCurrent();
}


// 0x801683c
signed int __fastcall sub_801683C(int a1, int a2, int a3)
{
    unsigned __int8 v3; // vf
    signed int v4; // r3

    if ( a3 )
    {
        v3 = __OFSUB__(0, a1);
        a1 = -a1;
    }
    v4 = 4;
    if ( a1 )
    {
        if ( ((a1 < 0) ^ v3) | (a1 == 0) )
            v4 = 3;
    }
    else
    {
        v4 = 1;
        if ( a2 )
        {
            if ( !((a2 < 0) ^ v3) )
                v4 = 2;
        }
        else
        {
            v4 = 5;
        }
    }
    return v4;
}


// 0x8016860
int __fastcall sub_8016860(int a1)
{
    Battle *v1; // r5
    int result; // r0
    char v3; // r4
    char v4; // r0

    result = sub_8013774(a1, 44);
    if ( result < 23 || result > 24 )
    {
        result = v1->currAction;
        if ( v1->currAction )
        {
            if ( result != 86 )
            {
                result = object_getFlag();
                if ( result & 8 )
                {
                    v3 = 5;
                    if ( sub_802D234() == 1 )
                        v3 = 0;
                    v4 = sub_800A704();
                    result = sprite_setColorShader(v1, byte_80168A8[v4 & 0x1F] << v3);
                }
            }
        }
    }
    return result;
}


// 0x80168c8
int __fastcall sub_80168C8(int a1)
{
    Battle *v1; // r5
    int result; // r0
    char v3; // r0

    result = object_getFlag();
    if ( result & 0x800 )
    {
        v3 = sub_800A704();
        result = sprite_setColorShader(v1, *(&dword_80168EC + (v3 & 2)));
    }
    return result;
}


// 0x80168f0
int __fastcall sub_80168F0(int a1)
{
    Battle *v1; // r5
    int result; // r0

    result = object_getFlag();
    if ( result & 0x10000 )
        result = sprite_setColorShader(v1, -1258258796);
    return result;
}


// 0x801690a
int __fastcall sub_801690A(int a1)
{
    Battle *v1; // r5
    int result; // r0
    char v3; // r0

    result = object_getFlag();
    if ( result & 0x4000 )
    {
        v3 = sub_800A704();
        result = sprite_setColorShader(v1, *(word_8016930 + (v3 & 2)));
    }
    return result;
}


// 0x8016934
int sub_8016934()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    int result; // r0

    battle_isTimeStop();
    if ( v2 )
        *v0 |= 2u;
    result = object_getFlag();
    if ( !(result & byte_100) )
    {
        if ( result & 0x202 && __CFSHR__(*(*(v0 + 84) + 36), 2) )
            *v0 &= 0xFDu;
        if ( *(*(v1 + oToolkit_S2034880_Ptr) + 13) == *(v0 + 22) )
        {
            result = *(v0 + 9);
            if ( *(v0 + 9) )
            {
                result = **(v0 + 88);
                if ( result == 2 )
                {
                    sub_801DA48(5);
                    result = object_getFlag();
                    if ( result & &loc_2000 )
                        result = sub_801DACC(5);
                }
            }
        }
        else
        {
            result = sub_80103BC(*(v0 + 22) ^ 1);
            if ( result )
            {
                result = object_getFlag();
                if ( result & &loc_2000 )
                {
                    result = *v0 & 0xFD;
                    *v0 = result;
                }
            }
        }
    }
    return result;
}


// 0x80169be
int sub_80169BE()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    int result; // r0

    battle_isTimeStop();
    if ( v2 )
        *v0 |= 2u;
    if ( *(*(v1 + oToolkit_S2034880_Ptr) + 13) == *(v0 + 22) )
    {
        result = *(v0 + 9);
        if ( *(v0 + 9) )
        {
            result = **(v0 + 88);
            if ( result == 2 )
            {
                sub_801DA48(5);
                result = object_getFlag();
                if ( result & &loc_2000 )
                    result = sub_801DACC(5);
            }
        }
    }
    else
    {
        result = sub_80103BC(*(v0 + 22) ^ 1);
        if ( result )
        {
            result = object_getFlag();
            if ( result & &loc_2000 )
            {
                result = *v0 & 0xFD;
                *v0 = result;
            }
        }
    }
    return result;
}


// 0x8016a38
int __fastcall sub_8016A38(int a1)
{
    Battle *v1; // r5
    __int16 *v2; // r4

    v2 = word_8016A68;
    if ( a1 == 24 )
        v2 = word_8016A9C;
    sub_800A704();
    __asm { SVC         6 }
    return sprite_setColorShader(v1, v2[26]);
}


// 0x8016ad0
void sub_8016AD0()
{
    sub_800A704();
    __asm { SVC         6 }
    sprite_setPallete(*sub_8016B02);
}


// 0x8016b02
int sub_8016B02()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 11) )
    {
        object_clearFlag(0x100000);
        sub_800F394();
        sub_80101C4(v0);
        *(v0 + 76) = 0;
        *(v0 + 11) = 4;
    }
    result = object_getFlag();
    if ( !(result & 0x800) )
    {
        *(v0 + 8) = *(v0 + 92);
        result = 0;
        *(v0 + 92) = 0;
    }
    return result;
}


// 0x8016b36
int sub_8016B36()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int result; // r0

    if ( !*(v0 + 11) )
    {
        object_clearFlag(0x100000);
        sub_800F3B0();
        sub_80101C4(v0);
        *(v0 + 76) = 0;
        PlaySoundEffect(280, v1, v2);
        *(v0 + 11) = 4;
    }
    result = object_getFlag();
    if ( !(result & 0x10000) )
    {
        *(v0 + 8) = *(v0 + 92);
        result = 0;
        *(v0 + 92) = 0;
    }
    return result;
}


// 0x8016b72
int sub_8016B72()
{
    int v0; // r5
    int v1; // r4
    int v2; // r1
    int v3; // r2
    int result; // r0
    int v5; // r2

    v1 = *(v0 + 88);
    if ( !*(v0 + 11) )
    {
        object_clearFlag(0x100000);
        sub_800F3CC();
        sub_80101C4(v0);
        *(v0 + 76) = 0;
        PlaySoundEffect(301, v2, v3);
        *(v0 + 11) = 4;
    }
    *(v0 + 62) = byte_8016BDC[(*(*(v0 + 84) + 44) >> 2) & 0x1F] + *(v1 + 60);
    result = object_getFlag();
    if ( result >= 0 )
    {
        PlaySoundEffect(292, 2147483648, v5);
        *(v0 + 8) = *(v0 + 92);
        *(v0 + 92) = 0;
        result = *(v1 + 60);
        *(v0 + 62) = result;
    }
    return result;
}


// 0x8016bfc
int sub_8016BFC()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    _DWORD *v4; // r0
    int v5; // r1
    int result; // r0
    int v7; // r2
    int v8; // r3

    if ( !*(v0 + 24) )
    {
        *(v0 + 48) = *(v0 + 54);
        *(v0 + 50) = *(v0 + 62);
        *(v0 + 25) = 0;
        *(v0 + 24) = 4;
    }
    if ( *(*(v0 + 84) + 128) )
        *(v0 + 25) = 30;
    if ( *(v0 + 25) )
    {
        --*(v0 + 25);
        v1 = *(v0 + 48) << 16;
        v2 = *(v0 + 56);
        v3 = *(v0 + 50);
        sub_801BDDE(3u);
        v4 = (v0 + 52);
        *v4 = v5;
        v4[1] = v7;
        v4[2] = v8;
        result = v0 + 64;
    }
    else
    {
        *(v0 + 54) = *(v0 + 48);
        result = *(v0 + 50);
        *(v0 + 62) = result;
    }
    return result;
}


// 0x8016c4e
int sub_8016C4E()
{
    int v0; // r5
    int v1; // r4
    int result; // r0
    int v3; // r1

    v1 = *(v0 + 88);
    result = *(v0 + 11);
    if ( !*(v0 + 11) )
    {
        sub_801BB78();
        sub_80198CE(*(v0 + 84));
        sub_800A104();
        if ( *(v1 + 14) != 255 )
        {
            v3 = *(v0 + 36);
            *(v1 + 14) = -1;
        }
        result = 4;
        *(v0 + 11) = 4;
        if ( *(v1 + 2) )
        {
            if ( v1 )
                sub_800ED80(v1);
            result = object_freeMemory();
        }
    }
    return result;
}


// 0x8016c8a
int object_genericDestroy()
{
    int v0; // r5

    sub_801BB78();
    sub_80198CE(*(v0 + 84));
    return object_freeMemory();
}


// 0x8016c9c
int sub_8016C9C()
{
    return object_freeMemory();
}


// 0x8016ca4
signed int sub_8016CA4()
{
    Battle *v0; // r5
    int v1; // r10
    signed int result; // r0
    CollisionData *v3; // r3
    char v4; // r0

    result = battle_isBattleOver();
    if ( !result )
    {
        result = v0->Alliance;
        if ( *(*(v1 + oToolkit_S2034880_Ptr) + 13) != result )
        {
            result = sub_8015B54(result ^ 1);
            if ( result == 2 )
            {
                v3 = v0->collisionData;
                result = v3->counterTimer;
                if ( v3->counterTimer )
                {
                    v4 = sub_800A704();
                    result = sprite_setColorShader(v0, *(&dword_8016CE4 + (v4 & 2)));
                }
            }
        }
    }
    return result;
}


// 0x8016ce8
int sub_8016CE8()
{
    int v0; // r5

    return (*(&off_8016CFC + *(v0 + 13)))();
}


// 0x8016d08
signed int __noreturn sub_8016D08()
{
    int v0; // r5
    __int64 v1; // r0
    int v2; // r2
    int v3; // r1
    int v4; // r6
    int v5; // r1
    int v6; // r1
    signed int result; // r0

    object_setFlag1(0x100000);
    sub_800F404();
    *(v0 + 76) = 0;
    *(v0 + 18) = *(v0 + 20);
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    object_clearFlag(4096);
    sub_80101C4(v0);
    object_removePanelReserve(*(v0 + 20), *(v0 + 21));
    v1 = sub_800E45E();
    *(v0 + 28) = v1;
    *(v0 + 29) = BYTE4(v1);
    *(v0 + 11) = v2;
    if ( v2 )
    {
        v3 = *(v0 + 28);
        *(v0 + 64) = 655360 * v3;
        v4 = *(v0 + 18) + v3;
        v5 = *(v0 + 29);
        *(v0 + 68) = 393216 * v5;
        v6 = *(v0 + 19) + v5;
        *(v0 + 20) = v4;
        *(v0 + 21) = v6;
        object_reservePanel(v4, v6);
        result = 4;
        *(v0 + 13) = 4;
    }
    else
    {
        *(v0 + 10) = 24;
        result = 8;
        *(v0 + 13) = 8;
    }
    return result;
}


// 0x8016d8c
int sub_8016D8C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r1
    int v4; // r4
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r0
    int v9; // r0
    unsigned __int8 v10; // vf
    int v11; // r6
    int v12; // r7
    char v13; // zf
    int result; // r0

    v1 = *(v0 + 21);
    v2 = object_getCoordinatesForPanels(*(v0 + 20));
    v4 = v3;
    v5 = *(v0 + 52);
    v6 = *(v0 + 64) + v5;
    *(v0 + 52) = v6;
    if ( sub_800E6E8(v6, v5, v2) || (v7 = *(v0 + 56), v8 = *(v0 + 68) + v7, *(v0 + 56) = v8, sub_800E6E8(v8, v7, v4)) )
    {
        object_removePanelReserve(*(v0 + 20), *(v0 + 21));
        if ( object_getPanelDataOffset(*(v0 + 20), *(v0 + 21))[2] == 7 && *(*(v0 + 84) + 2) != 2 )
            ++*(v0 + 11);
        v9 = *(v0 + 11);
        v10 = __OFSUB__(v9--, 1);
        *(v0 + 11) = v9;
        if ( ((v9 < 0) ^ v10) | (v9 == 0)
            || (v11 = *(v0 + 20) + *(v0 + 28), v12 = *(v0 + 21) + *(v0 + 29), sub_800E5AC(v11, v12), v13) )
        {
            *(v0 + 18) = *(v0 + 20);
            object_setCoordinatesFromPanels(v0);
            object_updateCollisionPanels(v0);
            *(v0 + 10) = 20;
            result = 8;
            *(v0 + 13) = 8;
        }
        else
        {
            *(v0 + 20) = v11;
            *(v0 + 21) = v12;
            result = object_reservePanel(v11, v12);
        }
    }
    else
    {
        object_setPanelsFromCoordinates(v0);
        result = object_updateCollisionPanels(v0);
    }
    return result;
}


// 0x8016e3c
int sub_8016E3C()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    v1 = *(v0 + 10);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 10) = result;
    if ( (result < 0) ^ v2 )
    {
        object_clearFlag(1052672);
        object_clearFlag2(16);
        *(v0 + 31) = 0;
        *(v0 + 8) = *(v0 + 92);
        result = 0;
        *(v0 + 92) = 0;
    }
    return result;
}


// 0x8016e64
void sub_8016E64()
{
    Battle *v0; // r5
    char v1; // zf
    signed int v2; // r0
    int v3; // r0

    if ( !(v0->objFlags & 8) )
    {
        battle_isTimeStop();
        if ( v1 )
        {
            if ( (v2 = v0->nameID, v2 >= 73) && v2 <= 78 || v0->HP )
            {
                if ( sub_802D234() == 1 || (battle_isPaused(), v1) )
                {
                    if ( !(object_getFlag() & 0x80110C00) && !(object_getFlag2() & 8) )
                    {
                        v3 = v0->currAnimation;
                        if ( v3 != v0->currAnimationCpy )
                        {
                            sprite_setAnimation(v0, v3);
                            sprite_loadAnimationData(v0);
                            v0->currAnimationCpy = v0->currAnimation;
                        }
                        sprite_update(v0);
                    }
                }
            }
        }
    }
}


// 0x8016ec4
int sub_8016EC4()
{
    int v0; // r5

    return (*(&JumpTable8016ED8 + *(v0 + 10)))();
}


// 0x8016ee0
signed int __fastcall sub_8016EE0(int a1)
{
    int v1; // r5
    signed int v2; // r0
    signed int result; // r0

    object_clearCollisionRegion();
    sub_801A5E2();
    sub_80101C4(v1);
    sub_801DC36();
    *(v1 + 26) = 0;
    *(v1 + 42) = -1;
    *(v1 + 76) = 0;
    sub_801A7F4();
    v2 = *(v1 + 5);
    if ( v2 < 1 )
        v2 = sub_800A11C();
    sub_802EF5C(v2);
    *(v1 + 36) = 0;
    result = 4;
    *(v1 + 10) = 4;
    return result;
}


// 0x8016f1a
int sub_8016F1A()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    _BYTE *v3; // r0

    result = battle_isTimeStop();
    if ( v2 )
    {
        SpawnT4BattleObjectWithId0(v0, v0 + 64, *(v0 + 52), *(v0 + 56), *(v0 + 60));
        *v3 |= 4u;
        sub_802CDD0();
        object_removePanelReserve(*(v0 + 20), *(v0 + 21));
        sub_80E1A86(*(*(v0 + 88) + 116));
        sub_80077B4(v0);
        result = 8;
        *(v0 + 8) = 8;
    }
    return result;
}


// 0x8016f56
int __noreturn sub_8016F56()
{
    int v0; // r5
    int v1; // r6
    unsigned __int8 *v2; // r7
    int v3; // r0
    int v4; // r0
    _BYTE *v5; // r0
    int result; // r0
    char v7; // r4
    int v8; // r1
    int v9; // r0
    int v10; // r0
    int v11; // r0
    int v16; // [sp-4h] [bp-14h]

    sub_800F35C();
    v1 = *(v0 + oBattleObject_AIPtr);
    v2 = enemy_getStruct1(*(v0 + oBattleObject_NameID));
    sprite_load(v0, 128, *v2, v2[1]);
    if ( v2[7] )
        sprite_hasShadow();
    else
        sprite_noShadow(v0);
    *(v0 + oBattleObject_CurAnim) = 0;
    *(v0 + oBattleObject_CurAnimCopy) = -1;
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    v3 = sub_800F334();
    sprite_setPallete(v3);
    v4 = object_getFlip(v0);
    sprite_setFlip(v0, v4);
    *(v0 + 14) |= v2[5];
    if ( sub_802D234() == 6 && !byte_80170A4[v2[4]] )
        *(v0 + 44) = 0;
    v5 = object_createCollisionData();
    if ( !v5 )
        return object_freeMemory();
    v16 = v5;
    v7 = enemy_getStruct2(*(v0 + 40))[3];
    v8 = 1;
    if ( v7 & 4 )
        v8 = 16;
    object_setupCollisionData(v16, v8, 2, 3);
    sub_8019F9E(v2[6]);
    if ( v7 & 0x10 )
        object_setFlag1(0x8000000);
    if ( v7 & 8 )
        object_setFlag1(0x2000000);
    if ( v7 & 4 )
        object_setFlag1(32);
    if ( v7 & 2 )
        object_setFlag1(16);
    if ( v7 & 1 )
        object_setFlag1(0x20000);
    sub_801DB84();
    v9 = sub_80103BC(*(v0 + 22) ^ 1);
    sub_800F318(v9);
    v10 = sub_802D26A();
    if ( v10 == 56 || v10 == 48 || v10 == 60 )
    {
        *(v0 + 23) = 0;
        sub_800F2C6();
    }
    else
    {
        sub_800F2F0();
    }
    sub_8010DD0();
    v11 = sub_80136E4(*(v0 + 22) ^ 1, 62);
    __asm { SVC         6 }
    if ( v11 <= 10 )
    {
        if ( v11 <= 0 )
            LOBYTE(v11) = 1;
    }
    else
    {
        LOBYTE(v11) = 10;
    }
    *(*(v0 + 88) + 12) = v11;
    sub_800F378();
    result = 4;
    *(v0 + 8) = 4;
    return result;
}


// 0x80170c4
int sub_80170C4()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = battle_isPaused();
    if ( v2 )
        result = (*(&off_80170DC + *(v0 + 10)))();
    return result;
}


// 0x80170e4
signed int __fastcall sub_80170E4(int a1)
{
    int v1; // r5
    int v2; // r0
    signed int v3; // r0
    signed int result; // r0

    object_clearCollisionRegion();
    sub_801A5E2();
    sub_80101C4(v1);
    sub_8012EA8(v1);
    sub_801DC36();
    *(v1 + 26) = 0;
    *(v1 + 42) = -1;
    v2 = object_getFlip(v1);
    sprite_setFlip(v1, v2);
    sub_801A7F4();
    v3 = *(v1 + 5);
    if ( v3 < 1 )
        v3 = sub_800A11C();
    sub_802EF5C(v3);
    result = 4;
    *(v1 + 10) = 4;
    return result;
}


// 0x8017122
int sub_8017122()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r3
    char v4; // zf
    int v5; // r2
    int v6; // r7
    int v7; // r0
    int v8; // r0
    unsigned __int8 v9; // vf
    int v10; // r0
    unsigned __int8 v11; // cf

    if ( !*(v0 + 11) )
    {
        result = battle_isTimeStop();
        if ( !v4 )
            return result;
        *(v0 + 24) = 0;
        *(v0 + 76) = 0;
        v5 = *(v0 + 88);
        *(v5 + 104) = 0;
        *(v0 + 16) = 2;
        v6 = *(v0 + 88) + 116;
        sub_80E1A6A(2, v2, v5, v3);
        SpawnT4BattleObjectWithId0(v0, v0 + 64, *(v0 + 52), *(v0 + 56), *(v0 + 60) + 0x200000);
        *(v7 + 32) = 90;
        *(v0 + 32) = 90;
        *(v0 + 11) = 4;
    }
    v8 = *(v0 + 32);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    *(v0 + 32) = v10;
    if ( (v10 < 0) ^ v9 )
    {
        sub_802CDD0();
        object_removePanelReserve(*(v0 + 20), *(v0 + 21));
        sub_80E1A86(*(*(v0 + 88) + 116));
        sub_8011020();
        sub_80077B4(v0);
        *v0 &= 0xFDu;
        result = 8;
        *(v0 + 8) = 8;
    }
    else
    {
        v11 = __CFSHR__(v10, 2);
        result = v10 >> 2;
        if ( v11 )
            result = sprite_forceWhitePallete();
    }
    return result;
}


// 0x80171a6
int sub_80171A6()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = battle_isPaused();
    if ( v2 )
        result = (*(&off_80171C0 + *(v0 + 10)))();
    return result;
}


// 0x80171cc
signed int __fastcall sub_80171CC(int a1)
{
    int v1; // r0
    int v2; // r1
    int v3; // r2

    v1 = sub_80170E4(a1);
    return musicGameState_8000784(v1, v2, v3);
}


// 0x80171d8
int sub_80171D8()
{
    int v0; // r5
    int result; // r0
    int v2; // r3
    char v3; // zf
    int v4; // r2
    int v5; // r0
    int v6; // r1
    int v7; // r7
    int v8; // r0
    int v9; // r0
    unsigned __int8 v10; // vf
    int v11; // r0
    int v12; // r0
    int v13; // r7
    int v14; // r1
    int v15; // r2
    int v16; // r3
    unsigned __int8 v17; // cf

    if ( !*(v0 + 11) )
    {
        result = battle_isTimeStop();
        if ( !v3 )
            return result;
        *(v0 + 24) = 0;
        *(v0 + 76) = 0;
        v4 = *(v0 + 88);
        *(v4 + 104) = 0;
        v5 = *(v0 + 40);
        v6 = 371;
        if ( v5 < 371 || (v6 = 382, v5 > 382) )
        {
            v5 = 2;
            *(v0 + 16) = 2;
        }
        v7 = *(v0 + 88) + 116;
        sub_80E1A6A(v5, v6, v4, v2);
        SpawnT4BattleObjectWithId0(v0, v0 + 64, *(v0 + 52), *(v0 + 56), *(v0 + 60) + 0x200000);
        *(v8 + 32) = 90;
        *(v0 + 32) = 90;
        *(v0 + 11) = 4;
    }
    v9 = *(v0 + 32);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    *(v0 + 32) = v11;
    if ( (v11 < 0) ^ v10 )
    {
        sub_802CDD0();
        object_removePanelReserve(*(v0 + 20), *(v0 + 21));
        sub_80E1A86(*(*(v0 + 88) + 116));
        sub_8011020();
        sub_80077B4(v0);
        v12 = engine_setScreeneffect(4, 4);
        v13 = *(v0 + 88) + 116;
        sub_80E1A6A(v12, v14, v15, v16);
        result = 8;
        *(v0 + 10) = 8;
    }
    else
    {
        v17 = __CFSHR__(v11, 2);
        result = v11 >> 2;
        if ( v17 )
            result = sprite_forceWhitePallete();
    }
    return result;
}


// 0x8017274
signed int sub_8017274()
{
    int v0; // r5
    unsigned int v1; // r0
    signed int result; // r0
    unsigned __int8 v3; // cf

    v1 = IsPaletteFadeActive();
    if ( v1 )
    {
        v3 = __CFSHR__(v1, 2);
        result = v1 >> 2;
        if ( v3 )
            result = sprite_forceWhitePallete();
    }
    else
    {
        result = 8;
        *(v0 + 8) = 8;
    }
    return result;
}


// 0x801728e
char *__fastcall sub_801728E(int a1)
{
    Battle *v1; // r5
    char *result; // r0
    char v3; // r0

    result = sub_800A8F8(a1);
    if ( result )
    {
        result = v1->currAction;
        if ( v1->currAction )
        {
            result = sub_802E070(v1->Alliance);
            if ( result[80] )
            {
                v3 = sub_800A704();
                result = sprite_setColorShader(v1, 33 * byte_80172C8[v3 & 0x1F]);
            }
        }
    }
    return result;
}


// 0x80172f0
int __noreturn sub_80172F0()
{
    int v0; // r5
    int v1; // r0
    char *v2; // r0
    int v3; // r4
    int v4; // r0
    int v5; // ST00_4
    char *v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r0
    int v10; // r0
    int v11; // r0
    _BYTE *v12; // r0
    int result; // r0
    int v14; // ST00_4
    char v15; // r3
    int v16; // r0
    int v17; // r0
    int v18; // r0
    int v19; // r0
    int v20; // r0
    int v21; // r0
    int v22; // r0
    char v23; // r1
    int v24; // r0
    int v25; // r1
    int v26; // r2
    int v27; // r3
    char *v28; // r0

    sub_800F35C();
    v1 = sub_80136CC(*(v0 + 22), 23);
    v2 = sub_8013754(v1, 44, v1);
    v3 = *(v0 + 88);
    v4 = sub_8013774(v2, 44);
    v5 = v4;
    v6 = sub_8013774(v4, 41);
    sub_800FC9E(v6, v5);
    sprite_load(v0, 128, v7, v8);
    sprite_loadAnimationData(v0);
    sprite_hasShadow();
    *(v0 + 16) = 0;
    *(v0 + 16) = 0;
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    v9 = sub_801002C();
    sprite_setPallete(v9);
    v10 = object_getFlip(v0);
    v11 = sprite_setFlip(v0, v10);
    sub_80142B0(v11);
    v12 = object_createCollisionData();
    if ( !v12 )
        return object_freeMemory();
    v14 = v12;
    sub_80107C0(v12);
    v16 = object_setupCollisionData(v14, 1, 2, v15);
    sub_80141C8(v16);
    sub_8013892();
    v18 = sub_801086C(v17);
    if ( !sub_8013774(v18, 41) )
    {
        v19 = sub_8013774(0, 44);
        sub_8015B22(v19);
    }
    v20 = sub_80136CC(*(v0 + 22), 44);
    sub_8011268(v20);
    v21 = sub_80144C0();
    sub_8013E58(v21);
    sub_801DB84();
    v22 = sub_8018856(3);
    sub_801DC06(v22, -v23);
    if ( sub_802D246() & 8 && battle_networkInvert(*(v0 + 22)) )
        sub_801DC36();
    v24 = sub_80141F4();
    sub_80E0F02(v24, v25, v26, v27);
    sub_800F378();
    if ( !sub_80136CC(*(v0 + 22), 44) )
        sub_8010DD0();
    v28 = sub_802DFC8();
    sub_8013FF8(v28);
    result = 4;
    *(v0 + 8) = 4;
    return result;
}


// 0x80173f4
int sub_80173F4()
{
    int v0; // r5

    sprite_forceWhitePallete();
    return (*(&off_801740C + *(v0 + 10)))();
}


// 0x801741c
signed int __fastcall __noreturn sub_801741C(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r2
    signed int v4; // r0
    signed int result; // r0

    object_clearCollisionRegion();
    sub_801A5E2();
    sub_80101C4(v1);
    sub_8012EA8(v1);
    sub_801DC36();
    *(v1 + 26) = 0;
    *(v1 + 42) = -1;
    v2 = object_getFlip(v1);
    sprite_setFlip(v1, v2);
    object_removePanelReserve(*(v1 + 20), *(v1 + 21));
    sub_801A7F4();
    v3 = *(v1 + 88);
    if ( *(v3 + 88) )
        *(v3 + 88) = 0;
    v4 = *(v1 + 5);
    if ( v4 < 1 )
        v4 = sub_800A11C();
    sub_802EF5C(v4);
    result = 4;
    *(v1 + 10) = 4;
    return result;
}


// 0x801746e
int sub_801746E()
{
    int v0; // r5
    int result; // r0
    int v2; // r2
    char v3; // zf
    int v4; // r1
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    result = battle_isTimeStop();
    if ( v3 )
    {
        *(v0 + 16) = 2;
        *(v0 + 76) = 0;
        *(v0 + 24) = 0;
        v4 = *(v0 + 88);
        *(v4 + 92) = 0;
        *(v4 + 104) = 0;
        PlaySoundEffect(108, v4, v2);
        SpawnT4BattleObjectWithId0(v0, v0 + 64, *(v0 + 52), *(v0 + 56), *(v0 + 60));
        SpawnT4BattleObjectWithId0(v0, v5, v6, v7, v8);
        *(v0 + 32) = 21;
        result = 8;
        *(v0 + 10) = 8;
    }
    return result;
}


// 0x80174aa
int sub_80174AA()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 32) - 1;
    *(v0 + 32) = result;
    if ( !result )
    {
        *(v0 + 32) = 0;
        result = 12;
        *(v0 + 10) = 12;
    }
    return result;
}


// 0x80174be
signed int sub_80174BE()
{
    int v0; // r5
    unsigned int v1; // r0
    int v2; // ST00_4
    signed int result; // r0

    v1 = *(v0 + 32) + 1;
    *(v0 + 32) = v1;
    if ( v1 == 32 )
    {
        sprite_clearMosaic();
        sprite_disableAlpha();
        sub_802CDD0();
        *v0 &= 0xFDu;
        sub_8011020();
        result = 8;
        *(v0 + 8) = 8;
    }
    else
    {
        v2 = v1 >> 1;
        sprite_setMosaicSize(v2, v2);
        result = sub_8002C7A(16 - v2);
    }
    return result;
}


// 0x80174fe
int __usercall sub_80174FE@<R0>(Battle *obj@<R5>)
{
    int v1; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r0
    unsigned __int8 v5; // vf
    int result; // r0

    if ( !obj->bPhaseInitialized )
    {
        sub_800F3E8();
        object_setFlag1(4195328);
        sub_801A284();
        sub_801A29A();
        sub_801A2B0();
        sub_80101C4(obj);
        sub_801031C(2097247);
        object_clearFlag(1048641);
        sub_8012EA8(obj);
        if ( !(object_getFlag() & 0x1000) )
        {
            v1 = obj->futurePanelX;
            obj->panelX = v1;
            v2 = obj->futurePanelY;
            obj->panelY = v2;
            object_removePanelReserve(v1, v2);
            object_setCoordinatesFromPanels(obj);
            object_updateCollisionPanels(obj);
            obj->z = 0;
        }
        obj->currAnimation = 1;
        obj->currAnimationCpy = -1;
        sub_8011450(obj);
        v3 = object_getFlip(obj);
        sprite_setFlip(obj, v3);
        obj->parent = 0;
        obj->ai->unk_68 = 0;
        sub_800AB46(obj->Alliance, 3, 1);
        obj->Timer = 23;
        obj->bPhaseInitialized = 4;
    }
    v4 = obj->Timer;
    v5 = __OFSUB__(v4, 1);
    result = v4 - 1;
    obj->Timer = result;
    if ( (result < 0) ^ v5 )
    {
        object_clearFlag(4195328);
        sub_800FFEE(268436543);
        obj->currAnimation = 0;
        obj->currAction = 8;
        result = 0;
        *&obj->currPhase = 0;
    }
    return result;
}


// 0x80175b8
int __usercall sub_80175B8@<R0>(Battle *obj@<R5>)
{
    int v1; // r0
    int v2; // r1
    int v3; // r0
    CollisionData *v4; // r0
    int v5; // r1
    unsigned __int8 v6; // vf
    int result; // r0

    if ( !obj->bPhaseInitialized )
    {
        sub_800F394();
        object_setFlag1(0x400000);
        object_clearFlag(1049665);
        sub_80101C4(obj);
        sub_801031C(2097247);
        sub_8012EA8(obj);
        if ( !(object_getFlag() & 0x1000) )
        {
            v1 = obj->futurePanelX;
            obj->panelX = v1;
            v2 = obj->futurePanelY;
            obj->panelY = v2;
            object_removePanelReserve(v1, v2);
            object_setCoordinatesFromPanels(obj);
            object_updateCollisionPanels(obj);
            obj->z = 0;
        }
        obj->currAnimation = 2;
        obj->currAnimationCpy = -1;
        v3 = object_getFlip(obj);
        sprite_setFlip(obj, v3);
        obj->parent = 0;
        obj->ai->unk_68 = 0;
        sub_800AB46(obj->Alliance, 3, 1);
        obj->bPhaseInitialized = 4;
    }
    if ( obj->ai->keysDown )
    {
        v4 = obj->collisionData;
        v5 = v4->unk_1C;
        v6 = __OFSUB__(v5--, 1);
        v4->unk_1C = v5;
        if ( ((v5 < 0) ^ v6) | (v5 == 0) )
        {
            v4->unk_1C = 0;
            object_clearFlag(&loc_800);
        }
    }
    result = object_getFlag();
    if ( !(result & 0x800) )
    {
        sub_800FFEE(268435519);
        object_clearFlag(0x400000);
        obj->currAnimation = 0;
        obj->currAction = 8;
        result = 0;
        *&obj->currPhase = 0;
    }
    return result;
}


// 0x8017688
int sub_8017688()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r0
    int v4; // r1
    int v5; // r0
    int v6; // r0
    int v7; // r1
    unsigned __int8 v8; // vf
    int result; // r0

    if ( !*(v0 + 11) )
    {
        sub_800F3B0();
        object_setFlag1(0x400000);
        object_clearFlag(1049665);
        sub_801A67E();
        sub_80101C4(v0);
        sub_800EB08();
        PlaySoundEffect(280, v1, v2);
        sub_801031C(2097247);
        sub_8012EA8(v0);
        if ( !(object_getFlag() & 0x1000) )
        {
            v3 = *(v0 + 20);
            *(v0 + 18) = v3;
            v4 = *(v0 + 21);
            *(v0 + 19) = v4;
            object_removePanelReserve(v3, v4);
            object_setCoordinatesFromPanels(v0);
            object_updateCollisionPanels(v0);
            *(v0 + 60) = 0;
        }
        *(v0 + 16) = 2;
        *(v0 + 17) = -1;
        v5 = object_getFlip(v0);
        sprite_setFlip(v0, v5);
        *(v0 + 76) = 0;
        *(*(v0 + 88) + 104) = 0;
        sub_800AB46(*(v0 + 22), 3, 1);
        *(v0 + 11) = 4;
    }
    if ( *(*(v0 + 88) + 36) )
    {
        v6 = *(v0 + 84);
        v7 = *(v6 + 42);
        v8 = __OFSUB__(v7--, 1);
        *(v6 + 42) = v7;
        if ( ((v7 < 0) ^ v8) | (v7 == 0) )
        {
            *(v6 + 42) = 0;
            object_clearFlag(0x10000);
        }
    }
    result = object_getFlag();
    if ( !(result & 0x10000) )
    {
        sub_800FFEE(268435519);
        object_clearFlag(0x400000);
        *(v0 + 16) = 0;
        *(v0 + 9) = 8;
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x8017768
int sub_8017768()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r0
    int v4; // r1
    int v5; // r0
    int v6; // r0
    int v7; // r1
    unsigned __int8 v8; // vf
    int result; // r0
    int v10; // r1
    int v11; // r2

    if ( !*(v0 + 11) )
    {
        sub_800F3CC();
        object_setFlag1(0x400000);
        object_clearFlag(1049665);
        sub_80101C4(v0);
        sub_800EB08();
        PlaySoundEffect(301, v1, v2);
        sub_801031C(2097247);
        sub_8012EA8(v0);
        if ( !(object_getFlag() & 0x1000) )
        {
            v3 = *(v0 + 20);
            *(v0 + 18) = v3;
            v4 = *(v0 + 21);
            *(v0 + 19) = v4;
            object_removePanelReserve(v3, v4);
            object_setCoordinatesFromPanels(v0);
            object_updateCollisionPanels(v0);
            *(v0 + 60) = 0;
        }
        *(v0 + 16) = 2;
        *(v0 + 17) = -1;
        v5 = object_getFlip(v0);
        sprite_setFlip(v0, v5);
        *(v0 + 76) = 0;
        *(*(v0 + 88) + 104) = 0;
        sub_800AB46(*(v0 + 22), 3, 1);
        *(v0 + 11) = 4;
    }
    if ( *(*(v0 + 88) + 36) )
    {
        v6 = *(v0 + 84);
        v7 = *(v6 + 44);
        v8 = __OFSUB__(v7--, 1);
        *(v6 + 44) = v7;
        if ( ((v7 < 0) ^ v8) | (v7 == 0) )
        {
            *(v6 + 44) = 0;
            object_clearFlag(2147483648);
        }
    }
    *(v0 + 60) = byte_8017868[(*(*(v0 + 84) + 44) >> 2) & 0x1F] << 16;
    result = object_getFlag();
    if ( result >= 0 )
    {
        sub_800FFEE(268435519);
        object_clearFlag(0x400000);
        *(v0 + 60) = 0;
        PlaySoundEffect(292, v10, v11);
        *(v0 + 16) = 0;
        *(v0 + 9) = 8;
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x8017888
int __fastcall sub_8017888(int a1)
{
    int v1; // r5
    char v2; // zf
    int v3; // r2
    int v4; // r3
    int result; // r0

    sub_800A8F8(a1);
    if ( !v2 && sub_80182B4(*(v1 + 40))[1] == 2 && !*(*(v1 + 88) + 64) )
        sub_80E1620(0, 2, v3, v4);
    *(v1 + 9) = 8;
    result = 0;
    *(v1 + 10) = 0;
    return result;
}


// 0x80178b6
int sub_80178B6()
{
    int v0; // r5

    return (*(&off_80178C8 + *(v0 + 13)))();
}


// 0x80178d4
signed int __noreturn sub_80178D4()
{
    int v0; // r5
    int v1; // r0
    char v2; // r2
    int v3; // r0
    __int64 v4; // r0
    int v5; // r2
    int v6; // r6
    int v7; // r7
    char v8; // zf
    signed int result; // r0

    sub_800F404();
    object_setFlag1(5242880);
    *(v0 + 76) = 0;
    *(*(v0 + 88) + 104) = 0;
    v1 = object_getFlag();
    v2 = 2;
    if ( !(v1 & 0x800) )
    {
        v2 = 1;
        if ( v1 & 0x20000 )
            v2 = 0;
    }
    *(v0 + 16) = v2;
    *(v0 + 17) = -1;
    sub_8011450(v0);
    sub_8012EA8(v0);
    v3 = object_getFlip(v0);
    sprite_setFlip(v0, v3);
    *(v0 + 18) = *(v0 + 20);
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    *(v0 + 60) = 0;
    object_clearFlag(5185);
    sub_80101C4(v0);
    object_removePanelReserve(*(v0 + 20), *(v0 + 21));
    sub_800AB46(*(v0 + 22), 3, 1);
    v4 = sub_800E45E();
    *(v0 + 28) = v4;
    *(v0 + 29) = BYTE4(v4);
    *(v0 + 34) = v5;
    if ( !v5 || (v6 = v4 + *(v0 + 18), v7 = HIDWORD(v4) + *(v0 + 19), sub_800E5AC(v6, v7), v8) )
    {
        *(v0 + 32) = 24;
        result = 8;
        *(v0 + 13) = 8;
    }
    else
    {
        *(v0 + 64) = 655360 * *(v0 + 28);
        *(v0 + 68) = 393216 * *(v0 + 29);
        *(v0 + 20) = v6;
        *(v0 + 21) = v7;
        object_reservePanel(v6, v7);
        result = 4;
        *(v0 + 13) = 4;
    }
    return result;
}


// 0x8017992
int sub_8017992()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r1
    int v4; // r4
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r0
    int v9; // r0
    unsigned __int8 v10; // vf
    int v11; // r6
    int v12; // r7
    char v13; // zf
    int result; // r0

    v1 = *(v0 + 21);
    v2 = object_getCoordinatesForPanels(*(v0 + 20));
    v4 = v3;
    v5 = *(v0 + 52);
    v6 = *(v0 + 64) + v5;
    *(v0 + 52) = v6;
    if ( sub_800E6E8(v6, v5, v2) || (v7 = *(v0 + 56), v8 = *(v0 + 68) + v7, *(v0 + 56) = v8, sub_800E6E8(v8, v7, v4)) )
    {
        object_removePanelReserve(*(v0 + 20), *(v0 + 21));
        if ( object_getPanelDataOffset(*(v0 + 20), *(v0 + 21))[2] == 7 && *(*(v0 + 84) + 2) != 2 )
            ++*(v0 + 34);
        v9 = *(v0 + 34);
        v10 = __OFSUB__(v9--, 1);
        *(v0 + 34) = v9;
        if ( ((v9 < 0) ^ v10) | (v9 == 0)
            || (v11 = *(v0 + 20) + *(v0 + 28), v12 = *(v0 + 21) + *(v0 + 29), sub_800E5AC(v11, v12), v13) )
        {
            *(v0 + 18) = *(v0 + 20);
            object_setCoordinatesFromPanels(v0);
            object_updateCollisionPanels(v0);
            *(v0 + 32) = 20;
            result = 8;
            *(v0 + 13) = 8;
        }
        else
        {
            *(v0 + 20) = v11;
            *(v0 + 21) = v12;
            result = object_reservePanel(v11, v12);
        }
    }
    else
    {
        object_setPanelsFromCoordinates(v0);
        result = object_updateCollisionPanels(v0);
    }
    return result;
}


// 0x8017a38
int sub_8017A38()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    v1 = *(v0 + 32);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 32) = result;
    if ( (result < 0) ^ v2 )
    {
        if ( object_getFlag() & 0x800 )
        {
            object_clearFlag(0x100000);
            *(v0 + 9) = 4;
        }
        else
        {
            object_clearFlag(5249024);
            sub_800FFEE(268436543);
            sub_801031C(0x200000);
            object_clearFlag2(16);
            *(v0 + 31) = 0;
            *(v0 + 16) = 0;
            *(v0 + 17) = -1;
            sub_8011450(v0);
            *(v0 + 9) = 8;
        }
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x8017ab4
int sub_8017AB4()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3
    _DWORD *v7; // r0
    int v8; // r1
    int result; // r0
    int v10; // r2
    int v11; // r3
    unsigned __int8 v12; // [sp+2h] [bp-5Eh]
    unsigned __int8 v13; // [sp+3h] [bp-5Dh]

    if ( sub_800F29C(*(v0 + 40)) == 2 && sub_802D246() & 8 && sub_800FFFE() & &loc_800 )
    {
        if ( !sub_800BEDA() )
            goto LABEL_13;
        v1 = sub_8010004();
        if ( !((v1 + 1) & 0xFFFF) || !(*(getChip8021DA8(v1) + 9) & 1) )
            goto LABEL_13;
        v2 = sub_80127C0(v0, 0);
        if ( v2 == 21 )
        {
            v3 = (*(&off_802CCB4 + v13))(*(v0 + 18), *(v0 + 19), v12);
        }
        else
        {
            if ( v2 != 27 )
                goto LABEL_13;
            v3 = sub_80E192C(*(v0 + 18), *(v0 + 19), v12, v13);
        }
        (loc_800BF30)(*(v0 + 22), 0, v3);
        sub_800B8EE(*(v0 + 22));
        sub_800FC7C();
LABEL_13:
        sub_800FFEE(&loc_80C);
    }
    if ( !*(v0 + 24) )
    {
        *(v0 + 48) = *(v0 + 54);
        *(v0 + 50) = *(v0 + 62);
        *(v0 + 25) = 0;
        *(v0 + 24) = 4;
    }
    if ( *(*(v0 + 84) + 128) )
        *(v0 + 25) = 30;
    if ( *(v0 + 25) )
    {
        --*(v0 + 25);
        v4 = *(v0 + 48) << 16;
        v5 = *(v0 + 56);
        v6 = *(v0 + 50);
        sub_801BDDE(3u);
        v7 = (v0 + 52);
        *v7 = v8;
        v7[1] = v10;
        v7[2] = v11;
        result = v0 + 64;
    }
    else
    {
        *(v0 + 54) = *(v0 + 48);
        result = *(v0 + 50);
        *(v0 + 62) = result;
    }
    return result;
}


// 0x8017bc0
void sub_8017BC0()
{
    _DWORD *v0; // r5
    int v1; // r6

    v1 = v0[22];
    if ( sub_801032C() & 0x80 )
    {
        sub_8014A38();
    }
    else if ( sub_801032C() & byte_100 )
    {
        sub_8015614();
    }
    else if ( sub_801032C() & &loc_1000 )
    {
        sub_802D714();
    }
    else if ( sub_801032C() & &loc_2000 )
    {
        *(v1 + 163) = 0;
        sub_802D926();
    }
    else if ( sub_800FFFE() & 0x4000 )
    {
        sub_800FFEE(0x4000);
        sub_8010312(128);
        object_setAttack0();
    }
    else if ( sub_800FFFE() & 0x40 )
    {
        sub_800FFEE(64);
        sub_8010312(byte_100);
        v0[23] = 0;
        if ( !v0[23] )
            v0[23] = v0[2];
        object_setAttack0();
    }
    else if ( sub_800FFFE() & &LCDControl )
    {
        sub_800FFEE(&LCDControl);
        sub_8010312(&loc_1000);
        object_setAttack0();
    }
    else if ( sub_800FFFE() & 0x8000000 )
    {
        sub_800FFEE(0x8000000);
        sub_8010312(&loc_2000);
        object_setAttack0();
    }
}


// 0x8017cc0
int sub_8017CC0()
{
    int v0; // r5

    return (*(&off_8017CD4 + *(v0 + 13)))();
}


// 0x8017ce0
signed int __noreturn sub_8017CE0()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r6
    int v5; // r7
    char v6; // zf
    signed int result; // r0

    object_setFlag1(0x100000);
    *(v0 + 76) = 0;
    *(v0 + 18) = *(v0 + 20);
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    object_clearFlag(&loc_1040);
    object_removePanelReserve(*(v0 + 20), *(v0 + 21));
    v1 = sub_800F598();
    *(v0 + 28) = v1;
    *(v0 + 29) = v2;
    *(v0 + 11) = v3;
    if ( !v3 || (v4 = v1 + *(v0 + 18), v5 = v2 + *(v0 + 19), sub_800F50C(v4, v5), v6) )
    {
        *(v0 + 10) = 24;
        result = 8;
        *(v0 + 13) = 8;
    }
    else
    {
        *(v0 + 64) = 655360 * *(v0 + 28);
        *(v0 + 68) = 393216 * *(v0 + 29);
        *(v0 + 20) = v4;
        *(v0 + 21) = v5;
        object_reservePanel(v4, v5);
        result = 4;
        *(v0 + 13) = 4;
    }
    return result;
}


// 0x8017d64
int sub_8017D64()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r1
    int v4; // r4
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r0
    int v9; // r0
    unsigned __int8 v10; // vf
    int v11; // r6
    int v12; // r7
    char v13; // zf
    int result; // r0

    v1 = *(v0 + 21);
    v2 = object_getCoordinatesForPanels(*(v0 + 20));
    v4 = v3;
    v5 = *(v0 + 52);
    v6 = *(v0 + 64) + v5;
    *(v0 + 52) = v6;
    if ( sub_800E6E8(v6, v5, v2) || (v7 = *(v0 + 56), v8 = *(v0 + 68) + v7, *(v0 + 56) = v8, sub_800E6E8(v8, v7, v4)) )
    {
        object_removePanelReserve(*(v0 + 20), *(v0 + 21));
        if ( *(*(v0 + 84) + 2) != 2 && object_getPanelDataOffset(*(v0 + 20), *(v0 + 21))[2] == 7 )
            ++*(v0 + 11);
        v9 = *(v0 + 11);
        v10 = __OFSUB__(v9--, 1);
        *(v0 + 11) = v9;
        if ( ((v9 < 0) ^ v10) | (v9 == 0)
            || (v11 = *(v0 + 20) + *(v0 + 28), v12 = *(v0 + 21) + *(v0 + 29), sub_800F50C(v11, v12), v13) )
        {
            *(v0 + 18) = *(v0 + 20);
            object_setCoordinatesFromPanels(v0);
            object_updateCollisionPanels(v0);
            *(v0 + 10) = 20;
            result = 8;
            *(v0 + 13) = 8;
        }
        else
        {
            *(v0 + 20) = v11;
            *(v0 + 21) = v12;
            result = object_reservePanel(v11, v12);
        }
    }
    else
    {
        object_setPanelsFromCoordinates(v0);
        result = object_updateCollisionPanels(v0);
    }
    return result;
}


// 0x8017e0a
int sub_8017E0A()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    v1 = *(v0 + 10);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 10) = result;
    if ( (result < 0) ^ v2 )
    {
        object_clearFlag(0x100000);
        *(v0 + 8) = *(v0 + 92);
        result = 0;
        *(v0 + 92) = 0;
    }
    return result;
}


// 0x8017e26
int sub_8017E26()
{
    int v0; // r5

    return (*(&off_8017E38 + *(v0 + 13)))();
}


// 0x8017e44
signed int __noreturn sub_8017E44()
{
    int v0; // r5
    char v1; // r1
    char v2; // r3
    signed int v3; // r4
    int v4; // r2
    char v5; // r0
    int v6; // r2
    int v7; // r3
    char v8; // r6
    char v9; // r7
    char v10; // zf
    int v11; // r3
    signed int result; // r0

    object_setFlag1(0x100000);
    *(v0 + 76) = 0;
    *(v0 + 18) = *(v0 + 20);
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    object_clearFlag(&loc_1040);
    object_removePanelReserve(*(v0 + 20), *(v0 + 21));
    *(v0 + 28) = sub_800F598();
    *(v0 + 29) = v1;
    *(v0 + 12) = v2;
    *(v0 + 11) = 6;
    v3 = 0;
    v4 = *(v0 + 12);
    if ( v4 != 1 )
        v3 = 4;
    if ( *(v0 + 28) != v4 )
        v3 += 2;
    v5 = object_getPanelParameters(*(v0 + 18), *(v0 + 19));
    v6 = *(v0 + 12);
    if ( v5 & 0x20 )
        ++v3;
    if ( byte_8017F24[v3] )
    {
        *(v0 + 12) = byte_8017F24[v3];
        v7 = *(v0 + 19);
        v8 = *(v0 + 28) + *(v0 + 18);
        v9 = *(v0 + 29) + v7;
        sub_800F55C(*(v0 + 28) + *(v0 + 18), *(v0 + 29) + v7);
        if ( !v10 )
            goto LABEL_11;
    }
    else
    {
        *(v0 + 12) = 0;
        v11 = *(v0 + 19);
        v8 = *(v0 + 28) + *(v0 + 18);
        v9 = *(v0 + 29) + v11;
        sub_800F534(*(v0 + 28) + *(v0 + 18), *(v0 + 29) + v11);
        if ( !v10 )
        {
LABEL_11:
            *(v0 + 64) = 655360 * *(v0 + 28);
            *(v0 + 68) = 393216 * *(v0 + 29);
            *(v0 + 20) = v8;
            *(v0 + 21) = v9;
            result = 4;
            *(v0 + 13) = 4;
            return result;
        }
    }
    *(v0 + 10) = 24;
    result = 8;
    *(v0 + 13) = 8;
    return result;
}


// 0x8017f38
int sub_8017F38()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r1
    int v4; // r4
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r0
    int v9; // r0
    unsigned __int8 v10; // vf
    int v11; // r0
    int v12; // r1
    int v13; // r6
    char v14; // r7
    char v15; // zf
    int result; // r0

    v1 = *(v0 + 21);
    v2 = object_getCoordinatesForPanels(*(v0 + 20));
    v4 = v3;
    v5 = *(v0 + 52);
    v6 = *(v0 + 64) + v5;
    *(v0 + 52) = v6;
    if ( sub_800E6E8(v6, v5, v2) || (v7 = *(v0 + 56), v8 = *(v0 + 68) + v7, *(v0 + 56) = v8, sub_800E6E8(v8, v7, v4)) )
    {
        object_removePanelReserve(*(v0 + 20), *(v0 + 21));
        if ( *(*(v0 + 84) + 2) != 2 && object_getPanelDataOffset(*(v0 + 20), *(v0 + 21))[2] == 7 )
            ++*(v0 + 11);
        v9 = *(v0 + 11);
        v10 = __OFSUB__(v9--, 1);
        *(v0 + 11) = v9;
        if ( ((v9 < 0) ^ v10) | (v9 == 0)
            || ((v11 = *(v0 + 20) + *(v0 + 28),
                     v12 = *(v0 + 21) + *(v0 + 29),
                     v13 = *(v0 + 20) + *(v0 + 28),
                     v14 = *(v0 + 21) + *(v0 + 29),
                     *(v0 + 12)) ? sub_800F55C(v11, v12) : sub_800F534(v11, v12),
                    v15) )
        {
            *(v0 + 18) = *(v0 + 20);
            object_setCoordinatesFromPanels(v0);
            object_updateCollisionPanels(v0);
            *(v0 + 10) = 20;
            result = 8;
            *(v0 + 13) = 8;
        }
        else
        {
            result = v13;
            *(v0 + 20) = v13;
            *(v0 + 21) = v14;
        }
    }
    else
    {
        object_setPanelsFromCoordinates(v0);
        result = object_updateCollisionPanels(v0);
    }
    return result;
}


// 0x8017fe6
int sub_8017FE6()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    v1 = *(v0 + 10);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 10) = result;
    if ( (result < 0) ^ v2 )
    {
        object_clearFlag(0x100000);
        *(v0 + 8) = *(v0 + 92);
        result = 0;
        *(v0 + 92) = 0;
    }
    return result;
}


// 0x8018002
int sub_8018002()
{
    int v0; // r5

    return (*(&off_8018014 + *(v0 + 24)))();
}


// 0x801802c
signed int __noreturn sub_801802C()
{
    int v0; // r5
    int v1; // r0
    char v2; // r2
    int v7; // r1
    int v8; // r2
    signed int result; // r0

    v1 = object_getFlag2();
    v2 = 0;
    if ( !(v1 & &byte_400) )
        v2 = 1;
    *(v0 + 22) = v2;
    object_clearFlag2(&loc_C00);
    object_setFlag1(&LCDControl);
    __asm { SVC         6 }
    *(v0 + 72) = 0x400000 - *(v0 + 60);
    object_removePanelReserve(*(v0 + 20), *(v0 + 21));
    *(v0 + 25) = 32;
    PlaySoundEffect(298, v7, v8);
    object_clearCollisionRegion();
    result = 4;
    *(v0 + 24) = 4;
    return result;
}


// 0x8018076
int sub_8018076()
{
    int v0; // r5
    int result; // r0

    *(v0 + 60) += *(v0 + 72);
    result = *(v0 + 25) - 1;
    *(v0 + 25) = result;
    if ( !result )
    {
        *(v0 + 60) = 0x400000;
        result = 8;
        *(v0 + 24) = 8;
    }
    return result;
}


// 0x8018094
signed int sub_8018094()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 25) = *(v0 + 30);
    *(v0 + 48) = *(v0 + 54);
    *(v0 + 50) = *(v0 + 62);
    result = 12;
    *(v0 + 24) = 12;
    return result;
}


// 0x80180a8
int sub_80180A8()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    _DWORD *v4; // r7
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int result; // r0
    char v9; // r0
    char v10; // r1
    int v11; // r1
    int v12; // r2

    v1 = *(v0 + 48) << 16;
    v2 = *(v0 + 56);
    v3 = *(v0 + 50);
    sub_801BDDE(3u);
    v4 = (v0 + 52);
    *v4 = v5;
    v4[1] = v6;
    v4[2] = v7;
    result = *(v0 + 25) - 1;
    *(v0 + 25) = result;
    if ( !result )
    {
        *(v0 + 54) = *(v0 + 48);
        *(v0 + 62) = *(v0 + 50);
        v9 = *(v0 + 28);
        v10 = *(v0 + 29);
        *(v0 + 20) = v9;
        *(v0 + 21) = v10;
        *(v0 + 25) = sub_800F768(v9);
        PlaySoundEffect(268, v11, v12);
        result = 16;
        *(v0 + 24) = 16;
    }
    return result;
}


// 0x80180ec
int sub_80180EC()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    _DWORD *v3; // r7
    int result; // r0
    char v5; // r1
    int v6; // r6

    v1 = *(v0 + 56) + *(v0 + 68);
    v2 = *(v0 + 60) - *(v0 + 72);
    v3 = (v0 + 52);
    *v3 = *(v0 + 52) + *(v0 + 64);
    v3[1] = v1;
    v3[2] = v2;
    result = *(v0 + 25) - 1;
    *(v0 + 25) = result;
    if ( !result )
    {
        v5 = *(v0 + 21);
        *(v0 + 18) = *(v0 + 20);
        *(v0 + 19) = v5;
        object_setCoordinatesFromPanels(v0);
        v6 = *(v0 + 44);
        sub_80C53A6(*(v0 + 18), *(v0 + 19), *(v0 + 14), 0);
        *(v0 + 36) = 0;
        *(v0 + 9) = 2;
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x8018138
void nullsub_57()
{
    ;
}


// 0x801813a
int sub_801813A()
{
    int v0; // r5

    return (*(&off_801814C + *(v0 + 24)))();
}


// 0x8018154
signed int __noreturn sub_8018154()
{
    unsigned __int8 *v0; // r5
    int v1; // r0
    int v2; // r1
    signed int result; // r0

    v1 = object_getFlag2();
    v2 = 0x10000000;
    if ( !(v1 & &loc_1000) )
        v2 = 0x20000000;
    object_setFlag1(v2);
    object_clearFlag2(&loc_3000);
    v0[25] = 60;
    object_removePanelReserve(v0[20], v0[21]);
    object_clearCollisionRegion();
    result = 4;
    v0[24] = 4;
    return result;
}


// 0x8018186
int sub_8018186()
{
    int v0; // r5
    int result; // r0
    int v2; // r4
    int v3; // r3
    int v4; // r6
    int v5; // r6

    *v0 |= 2u;
    if ( !__CFSHR__(*(v0 + 25), 2) )
    {
        *v0 &= 0xFDu;
        SpawnT4BattleObjectWithId0(v0, v0 + 64, *(v0 + 52), *(v0 + 56), *(v0 + 60));
    }
    result = *(v0 + 25) - 1;
    *(v0 + 25) = result;
    if ( !result )
    {
        v2 = (sub_800F806() + 256) << 8;
        sub_800F656();
        sub_80E544C(v0);
        if ( object_getFlag() & 0x10000000 )
        {
            v4 = *(v0 + 44);
            sub_80CFBC4(*(v0 + 18), *(v0 + 19), *(v0 + 22), v3);
        }
        else
        {
            v5 = *(v0 + 44);
            sub_80D99EC(*(v0 + 18), *(v0 + 19), *(v0 + 22), v3);
        }
        result = 8;
        *(v0 + 8) = 8;
    }
    return result;
}


// 0x80181f6
int sub_80181F6()
{
    _BYTE *v0; // r5
    int v1; // r10
    char v2; // zf
    int v3; // r1
    int result; // r0

    battle_isTimeStop();
    if ( v2 )
        *v0 |= 2u;
    v3 = v0[22];
    result = *(*(v1 + oToolkit_S2034880_Ptr) + 13) ^ v3;
    if ( *(*(v1 + oToolkit_S2034880_Ptr) + 13) != v3 )
    {
        result = sub_80103BC(v0[22] ^ 1);
        if ( result )
        {
            result = object_getFlag();
            if ( result & &loc_2000 )
            {
                result = *v0 & 0xFD;
                *v0 = result;
            }
        }
    }
    return result;
}


// 0x801823c
int sub_801823C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    _DWORD *v4; // r0
    int v5; // r1
    int result; // r0
    int v7; // r2
    int v8; // r3

    sub_80181F6();
    if ( !*(v0 + 24) )
    {
        *(v0 + 48) = *(v0 + 54);
        *(v0 + 50) = *(v0 + 62);
        *(v0 + 25) = 0;
        *(v0 + 24) = 4;
    }
    if ( *(*(v0 + 84) + 128) )
        *(v0 + 25) = 30;
    if ( *(v0 + 25) )
    {
        --*(v0 + 25);
        v1 = *(v0 + 48) << 16;
        v2 = *(v0 + 56);
        v3 = *(v0 + 50);
        sub_801BDDE(3u);
        v4 = (v0 + 52);
        *v4 = v5;
        v4[1] = v7;
        v4[2] = v8;
        result = v0 + 64;
    }
    else
    {
        *(v0 + 54) = *(v0 + 48);
        result = *(v0 + 50);
        *(v0 + 62) = result;
    }
    return result;
}


// 0x80182b4
char *__fastcall sub_80182B4(int a1)
{
    return &byte_80182C4[3 * a1];
}


// 0x8018810
int __fastcall sub_8018810(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // r6
    int v7; // r0
    int v8; // r1
    int v9; // ST00_4

    if ( a1 >= 205 && a1 <= 255 )
        return 0;
    v4 = a2;
    v5 = a3;
    v6 = a4;
    v7 = sub_800F26C(a1);
    v9 = sub_8018842(v7, v8, v4);
    return v9 * object_getFlipDirection(v5, v6);
}


// 0x8018842
int __fastcall sub_8018842(int a1, int a2, int a3)
{
    char *v3; // r4
    int result; // r0
    int v5; // r1

    v3 = &sub_8018886(a1, a2)[2 * a3];
    result = *v3;
    v5 = v3[1];
    return result;
}


// 0x8018856
int __fastcall sub_8018856(int a1)
{
    Battle *v1; // r5
    int v2; // ST04_4
    int v3; // r0
    int v4; // ST00_4
    char *v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // ST00_4

    v2 = a1;
    v3 = sub_8013774(a1, 44);
    v4 = v3;
    v5 = sub_8013774(v3, 41);
    sub_800FC9E(v5, v4);
    v8 = sub_8018842(v6, v7, v2);
    return v8 * object_getFrontDirection(v1);
}


// 0x8018886
char *__fastcall sub_8018886(int a1, int a2)
{
    if ( !a1 )
        a2 = byte_80188B0[a2];
    return &(**(&off_80188A0 + a1))[68 * a2];
}


// 0x801986c
void __fastcall sub_801986C(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    unsigned int v5; // r5
    _DWORD *v6; // r4
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3

    dword_2035310 = 0;
    v5 = 2147483648;
    v6 = *(v4 + oToolkit_Unk20384f0_Ptr);
    do
    {
        ZeroFillByWord(v6, 168);
        v6[17] = v5;
        v6 += 42;
        v5 >>= 1;
    }
    while ( v5 );
    sub_8019FA4(v7, v8, v9, v10);
}


// 0x8019892
_BYTE *object_createCollisionData()
{
    int v0; // r5
    int v1; // r10
    char *v2; // r0
    unsigned int v3; // r1
    _BYTE *result; // r0
    _BYTE *v5; // r4

    v2 = *(v1 + oToolkit_Unk20384f0_Ptr);
    v3 = 2147483648;
    while ( dword_2035310 & v3 )
    {
        v2 += 168;
        v3 >>= 1;
        if ( !v3 )
            return 0;
    }
    dword_2035310 |= v3;
    v5 = v2;
    ZeroFillByWord(v2, 68);
    ZeroFillByWord(v5 + 72, 96);
    result = v5;
    *v5 = 1;
    *(v0 + 84) = v5;
    return result;
}


// 0x80198ce
int __fastcall sub_80198CE(int result)
{
    if ( result )
    {
        *result = 0;
        dword_2035310 &= ~*(result + 68);
    }
    return result;
}


// 0x8019f44
int __fastcall sub_8019F44(int a1, int a2)
{
    int v2; // r7
    int v3; // r4
    int result; // r0
    unsigned __int8 v5; // cf
    int v6; // r4
    int v7; // r4
    int v8; // r4

    v2 = a1;
    v3 = *(a1 + 46);
    result = v3 & 0x7FF;
    *(v2 + 46) = result;
    v5 = __CFSHL__(v3, 17);
    v6 = v3 << 17;
    if ( v5 )
    {
        result = 2 * *(v2 + 46);
        *(v2 + 46) = result;
    }
    v5 = __CFSHL__(v6, 1);
    v7 = 2 * v6;
    if ( v5 )
    {
        *(v2 + 16) = 16;
        result = 1;
        *(v2 + 14) = 1;
    }
    v5 = __CFSHL__(v7, 1);
    v8 = 2 * v7;
    if ( v5 )
        return sub_801A4D0(248, a2);
    if ( __CFSHL__(v8, 1) )
        result = sub_801A4D0(247, a2);
    return result;
}


// 0x8019f86
int __fastcall sub_8019F86(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 14) = result;
    return result;
}


// 0x8019f8c
int __fastcall sub_8019F8C(char a1)
{
    int v1; // r5
    int v2; // r1
    int result; // r0

    v2 = *(v1 + 84);
    *(v1 + 14) = a1;
    *(v2 + 2) = a1 & 0xF;
    result = a1 & 0xF0;
    *(v2 + 25) = result;
    return result;
}


// 0x8019f9e
int __fastcall sub_8019F9E(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 24) = result;
    return result;
}


// 0x8019fa4
void __fastcall sub_8019FA4(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&unk_2034F60, 160);
}


// 0x8019fb4
int __fastcall object_setupCollisionData(int a1, int a2, int a3, char a4)
{
    int v4; // r5
    int v5; // r7
    char v6; // r3
    int v7; // r4
    int v8; // r1

    v5 = a1;
    *(a1 + 56) = v4;
    *(a1 + 14) = a4;
    v6 = *(v4 + 14);
    *(a1 + 2) = v6 & 0xF;
    *(a1 + 25) = v6 & 0xF0;
    *(a1 + 4) = *(v4 + 22);
    *(a1 + 10) = *(v4 + 18);
    *(a1 + 1) = 1;
    *(a1 + 7) = *(v4 + 46);
    *(a1 + 46) = *(v4 + 44);
    v7 = a3;
    *(a1 + 48) = sub_801A0BA(*(v4 + 22), a2);
    if ( battle_isTimeStop() )
        *(v5 + 48) |= 0x10000u;
    *(v5 + 52) = sub_801A0BA(*(v4 + 22), v7);
    return sub_8019F44(v5, v8);
}


// 0x801a00e
int object_removeCollisionData()
{
    return sub_3007550();
}


// 0x801a018
void __fastcall object_presentCollisionData(int a1, int a2)
{
    int v2; // r5
    int v3; // r4
    int v4; // r0
    int v5; // r2
    int v6; // r3

    v3 = *(v2 + 84);
    v4 = *(v3 + 84) | *(v3 + 112);
    *(v3 + 84) = a2;
    if ( !battle_isTimeStop() )
    {
        *(v3 + 15) = 0;
        *(v3 + 3) = 0;
        *(v3 + 84) = 0;
    }
    *(v3 + 17) = 0;
    ZeroFillByHalfword(v3 + 104, 0x40u, v5, v6);
    sub_300777C(*(v2 + 84));
}


// 0x801a04c
int __usercall object_updateCollisionPanels@<R0>(Battle *obj@<R5>)
{
    CollisionData *v1; // r6
    int v2; // r2
    int v3; // r3
    int v4; // r0
    int v5; // r1
    int v6; // r4
    int result; // r0

    v1 = obj->collisionData;
    v2 = v1->panelX;
    v3 = v1->panelY;
    v4 = obj->panelX;
    v1->panelX = v4;
    v5 = obj->panelY;
    v1->panelY = v5;
    v6 = obj->Alliance;
    result = sub_800E994(v4, v5, v2, v3);
    v1->direction = result;
    return result;
}


// 0x801a066
int object_setCollisionPanelsToCurrent()
{
    int v0; // r5
    int v1; // r2
    int result; // r0

    v1 = *(v0 + 84);
    result = *(v0 + 18);
    *(v1 + 10) = result;
    *(v1 + 11) = *(v0 + 19);
    return result;
}


// 0x801a074
// () -> void
int object_clearCollisionRegion()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 84);
    *(result + 1) = 0;
    return result;
}


// 0x801a07c
int __fastcall object_setCollisionRegion(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 1) = result;
    return result;
}


// 0x801a082
int __fastcall sub_801A082(int a1, int a2, int a3, char a4)
{
    int v4; // r5
    int v5; // r7
    int v6; // r4
    int v7; // r1

    v5 = *(v4 + 84);
    *(v5 + 14) = a4;
    *(v5 + 46) = *(v4 + 44);
    v6 = a3;
    *(v5 + 48) = sub_801A0BA(*(v4 + 22), a2);
    *(v5 + 52) = sub_801A0BA(*(v4 + 22), v6);
    if ( battle_isTimeStop() )
    {
        v7 = 0x10000;
        *(v5 + 48) |= 0x10000u;
    }
    return sub_8019F44(v5, v7);
}


// 0x801a0ba
int __fastcall sub_801A0BA(int a1, int a2)
{
    return *&byte_8019C7C[8 * a2 + 4 * a1];
}


// 0x801a0d4
void object_spawnCollisionEffect()
{
    int v0; // r5
    int v1; // r3
    int v2; // r6
    int v3; // r1
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    v1 = *(v0 + 84);
    v2 = *(v1 + 112);
    if ( v2 & 0x3F800000 && !(v2 & 1) && *(v1 + 9) != 255 )
    {
        v3 = *(v0 + 52);
        v4 = sub_801BDDE(0xFu);
        sub_80E08C4(v4, v5, v6, v7);
    }
}


// 0x801a100
void sub_801A100()
{
    int *v0; // r5
    int v1; // r3
    int v2; // r6
    int v3; // r1
    char v4; // r0
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    v1 = v0[21];
    v2 = *(v1 + 112);
    if ( v2 & 0x3F800000 && !(v2 & 1) && *(v1 + 9) != 255 )
    {
        v3 = v0[14];
        v4 = sub_800E258(v0[13]);
        object_getCoordinatesForPanels(v4);
        v5 = sub_801BDDE(0xFu);
        sub_80E08C4(v5, v6, v7, v8);
    }
}


// 0x801a140
int __fastcall object_setCollisionHitEffect(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 9) = result;
    return result;
}


// 0x801a146
int sub_801A146()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 14) & 0xF;
    *(*(v0 + 84) + 9) = result;
    return result;
}


// 0x801a152
// (int a1) -> void
int __fastcall object_setFlag1(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 60) |= result;
    return result;
}


// 0x801a15c
// (int bitfield) -> void
int __fastcall object_clearFlag(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 60) &= ~result;
    return result;
}


// 0x801a166
// () -> int
int object_getFlag()
{
    int v0; // r5

    return *(*(v0 + 84) + 60);
}


// 0x801a16c
int __fastcall object_setFlag2(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 64) |= result;
    return result;
}


// 0x801a176
int __fastcall object_clearFlag2(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 64) &= ~result;
    return result;
}


// 0x801a180
int object_getFlag2()
{
    int v0; // r5

    return *(*(v0 + 84) + 64);
}


// 0x801a186
char *sub_801A186()
{
    Battle *v0; // r5
    int v1; // r10
    char *result; // r0
    char v3; // zf
    CollisionData *v4; // r7
    int v5; // r0
    unsigned __int8 v6; // vf
    int v7; // r2

    result = battle_isTimeStop();
    if ( v3 )
    {
        result = battle_isPaused();
        if ( v3 )
        {
            v4 = v0->collisionData;
            result = v4->collisionRegion;
            if ( v4->collisionRegion )
            {
                result = object_getPanelDataOffset(v4->panelX, v4->panelY);
                if ( result )
                {
                    result = result[2];
                    if ( result != dword_4 || (result = object_getFlag(), result & 0x8000028) )
                    {
                        v4->poisonPanelTimer = 0;
                        if ( result == dword_4 + 2 )
                        {
                            result = (v0->Element & 0xF);
                            if ( result == dword_4 )
                            {
                                v7 = *(v1 + oToolkit_S2034880_Ptr);
                                result = *(v7 + 14);
                                if ( v0->HP <= 9 )
                                    result = *(v7 + 22);
                                if ( !result )
                                    result = object_addHP(v0, 1);
                            }
                        }
                    }
                    else
                    {
                        v5 = v4->poisonPanelTimer;
                        v6 = __OFSUB__(v5, 1);
                        result = (v5 - 1);
                        v4->poisonPanelTimer = result;
                        if ( (result < 0) ^ v6 )
                        {
                            v4->poisonPanelTimer = 6;
                            result = (v4->panelDamage6 + 1);
                            v4->panelDamage6 = result;
                        }
                    }
                }
            }
        }
    }
    return result;
}


// 0x801a200
char *sub_801A200()
{
    int v0; // r5
    char *result; // r0
    int v2; // r4
    int v3; // r6
    int v4; // r0
    char v5; // zf

    result = battle_isBattleOver();
    if ( !result )
    {
        v2 = *(v0 + 84);
        if ( *(v2 + 144) )
        {
            if ( *(v2 + 144) & 0x8000 )
            {
                v3 = *(v0 + 22) ^ 1;
                v4 = sub_80136CC(v3, 44);
                if ( !v4 || v4 == 11 || v4 == 12 )
                {
                    sub_801445C();
                    if ( v5 )
                    {
                        sub_8014490();
                        if ( v5 )
                            sub_8015BEC(v3, 255);
                    }
                }
            }
        }
        result = sub_8015C12(*(v0 + 22), *(v2 + 142));
    }
    return result;
}


// 0x801a258
int __fastcall object_setCollisionStatusEffect1(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 16) = result;
    return result;
}


// 0x801a25e
int __fastcall object_setCollisionStatusEffect2(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 17) = result;
    return result;
}


// 0x801a264
int sub_801A264()
{
    int v0; // r5
    int result; // r0
    _WORD *v2; // r3

    object_clearFlag(-2147358720);
    object_clearFlag2(196840);
    result = 0;
    v2 = *(v0 + 84);
    v2[14] = 0;
    v2[15] = 0;
    v2[16] = 0;
    v2[17] = 0;
    v2[21] = 0;
    v2[22] = 0;
    return result;
}


// 0x801a284
int sub_801A284()
{
    int v0; // r5
    int result; // r0

    object_clearFlag(&loc_800);
    object_clearFlag2(8);
    result = 0;
    *(*(v0 + 84) + 28) = 0;
    return result;
}


// 0x801a29a
int sub_801A29A()
{
    int v0; // r5
    int result; // r0

    object_clearFlag(0x10000);
    object_clearFlag2(0x10000);
    result = 0;
    *(*(v0 + 84) + 42) = 0;
    return result;
}


// 0x801a2b0
int sub_801A2B0()
{
    int v0; // r5
    int result; // r0

    object_clearFlag(2147483648);
    object_clearFlag2(0x20000);
    *(*(v0 + 84) + 44) = 0;
    result = *(*(v0 + 88) + 60);
    *(v0 + 62) = result;
    return result;
}


// 0x801a2cc
char *sub_801A2CC()
{
    int v0; // r5
    char *result; // r0
    int v2; // r1

    result = *(*(v0 + 84) + 112);
    if ( result & 0x10 )
    {
        if ( **(v0 + 88) == 2 )
        {
            *(v0 + 42) = -1;
            result = sub_8010018(*(v0 + 22));
            v2 = *result;
            if ( *&result[2 * v2 + 2] != 0xFFFF )
                *result = v2 + 1;
        }
        else
        {
            *(v0 + 42) = -1;
            result = 0;
            *(v0 + 26) = 0;
        }
    }
    return result;
}


// 0x801a308
int sub_801A308()
{
    int v0; // r5
    int v1; // r4
    int result; // r0

    v1 = sub_8010022(*(v0 + 22) ^ 1);
    result = *(*(v0 + 84) + 146);
    *(v1 + 16) += result;
    return result;
}


// 0x801a324
int sub_801A324()
{
    Battle *v0; // r5
    int v1; // r0
    AI *v2; // r3
    int v3; // r4
    int result; // r0
    int v9; // r1
    int v10; // r2

    v1 = sub_8010022(v0->Alliance ^ 1);
    *(v1 + 16) += v0->collisionData->unk_92;
    v2 = v0->ai;
    v3 = v2->pad_0F[1];
    v2->pad_0F[1] = 0;
    __asm { SVC         6 }
    result = v0->maxHP * v3;
    if ( result )
    {
        object_addHP(v0, result);
        SpawnT4BattleObjectWithId0(v0, &v0->vx, v0->x, v0->y, v0->z);
        result = PlaySoundEffect(138, v9, v10);
    }
    return result;
}


// 0x801a36a
void sub_801A36A()
{
    int v0; // r5
    int v1; // r7
    char v2; // zf
    int v3; // r1
    int v4; // r0
    unsigned __int8 v5; // vf
    int v6; // r0
    signed int v7; // r1
    char *v8; // r0

    v1 = *(v0 + 84);
    battle_isPaused();
    if ( v2 )
    {
        battle_isTimeStop();
        if ( v2 )
        {
            v3 = *(v0 + 88);
            v4 = *(v3 + 56);
            if ( *(v3 + 56) )
            {
                v5 = __OFSUB__(v4, 1);
                v6 = v4 - 1;
                *(v3 + 56) = v6;
                if ( ((v6 < 0) ^ v5) | (v6 == 0) )
                    goto LABEL_19;
            }
        }
    }
    if ( object_getFlag() & 0x100040 )
        return;
    v7 = object_getPanelDataOffset(*(v1 + 10), *(v1 + 11))[2];
    if ( v7 >= 9 && v7 <= 12 )
    {
        sub_801A400();
        return;
    }
    if ( object_getFlag() & 0x80000 )
    {
LABEL_19:
        object_clearFlag(0x80000);
        v8 = object_getPanelDataOffset(*(v1 + 10), *(v1 + 11));
        if ( v8 )
        {
            if ( v8[2] == 7 )
                sub_801A3DA();
        }
    }
}


// 0x801a3da
int sub_801A3DA()
{
    int v0; // r5
    int result; // r0

    result = *(*(v0 + 84) + 2);
    if ( result != 2 )
    {
        result = object_getFlag();
        if ( !(result & 0x24) )
        {
            if ( result & &timer_2000000 )
            {
                object_setFlag2(16);
                result = 2;
                *(v0 + 15) = 2;
            }
        }
    }
    return result;
}


// 0x801a400
void sub_801A400()
{
    int v0; // r5

    if ( !*(*(v0 + 88) + 56) && !(object_getFlag() & 0x24) )
    {
        object_setFlag2(16);
        *(v0 + 15) = 3;
    }
}


// 0x801a420
int sub_801A420()
{
    int v0; // r5
    int v1; // r3
    int result; // r0

    v1 = *(v0 + 84);
    result = *(v1 + 13);
    if ( *(v1 + 13) )
        *(v1 + 13) = --result;
    return result;
}


// 0x801a42e
Battle *sub_801A42E()
{
    int v0; // r5
    Battle *result; // r0
    int v2; // r0
    int v3; // r1

    result = *(v0 + 84);
    if ( result->extraVars[20] )
    {
        if ( *&result->extraVars[32] )
        {
            v2 = sub_8018810(*(v0 + 40), 5, *(v0 + 22), *(v0 + 23));
            result = sub_80E8124(v2, v2 << 16, 0, v3 << 16);
        }
    }
    return result;
}


// 0x801a45c
void __fastcall sub_801A45C(int a1)
{
    int v1; // r5
    int v2; // r4
    int v3; // r1
    int v4; // r2

    v2 = *(v1 + 84);
    if ( *(v2 + 112) & 0x40 )
    {
        if ( sub_800A8F8(a1) )
            sub_802E032(*(v1 + 22) ^ 1, &loc_1500);
        sub_800AB46(*(v1 + 22) ^ 1, 8, 1);
        *(v2 + 13) = 0;
        if ( !battle_isBattleOver() )
        {
            sub_801E270();
            PlaySoundEffect(134, v3, v4);
        }
    }
}


// 0x801a4a6
Battle *sub_801A4A6()
{
    int v0; // r5
    Battle *result; // r0
    int v2; // r1
    int v3; // r0
    int v4; // r1

    result = *(v0 + 84);
    v2 = result[1].preventAnimation;
    if ( v2 == 244 || v2 == 247 )
    {
        v3 = sub_8018810(*(v0 + 40), 5, *(v0 + 22), *(v0 + 23));
        result = sub_80E8124(v3, v3 << 16, 0, v4 << 16);
    }
    return result;
}


// 0x801a4d0
signed int __fastcall sub_801A4D0(int a1, int a2)
{
    int v2; // r5
    int v3; // r1
    signed int result; // r0

    v3 = (a2 << 8) + a1;
    result = 18;
    *(*(v2 + 84) + 18) = v3;
    return result;
}


// 0x801a4dc
int __fastcall sub_801A4DC(_DWORD *a1, signed int a2)
{
    int v2; // r5
    int v3; // r2
    signed int v4; // r5
    int v5; // r1
    char *v6; // r2
    int v7; // r3
    unsigned __int8 v8; // cf

    v3 = *(v2 + 84);
    v4 = a2;
    v5 = *(v3 + 124);
    v6 = byte_20384F0;
    v7 = 0;
    while ( v4 >= 4 && v5 )
    {
        v8 = __CFSHL__(v5, 1);
        v5 *= 2;
        if ( v8 )
        {
            *a1 = *(v6 + 14);
            ++a1;
            ++v7;
            v4 -= 4;
        }
        v6 += 168;
    }
    return v7;
}


// 0x801a506
int sub_801A506()
{
    int v0; // r5
    int v1; // r3
    int result; // r0

    v1 = *(v0 + 84);
    result = *(v1 + 117);
    if ( *(v1 + 117) )
    {
        result = *(v1 + 128);
        if ( *(v1 + 128) )
            result = sub_800FFE4(2147483648);
    }
    return result;
}


// 0x801a554
unsigned int sub_801A554()
{
    int v0; // r5
    int v1; // r3
    unsigned int result; // r0
    char *v3; // r2
    signed int v4; // [sp-4h] [bp-8h]

    v1 = *(v0 + 84);
    result = *(v1 + 17);
    if ( *(v1 + 17) )
    {
        v4 = *(v1 + 17);
        v3 = &(**(&off_80209EC + (result >> 4) - 1))[8 * result & 0x7F];
        *(v1 + v3[6]) = *(v3 + 2);
        object_setFlag2(*v3);
        result = v4;
        if ( v4 >= 80 && v4 <= 85 )
            result = object_clearFlag2(6);
    }
    return result;
}


// 0x801a58e
unsigned int sub_801A58E()
{
    int v0; // r5
    int v1; // r3
    unsigned int result; // r0
    unsigned int v3; // r0

    v1 = *(v0 + 84);
    result = *(v1 + 17);
    if ( *(v1 + 17) )
    {
        if ( result >> 4 == 1 )
        {
            v3 = 8 * result & 0x7F;
            *(v1 + byte_8020A04[v3 + 6]) = *&byte_8020A04[v3 + 4];
            result = object_setFlag2(*&byte_8020A04[v3]);
        }
    }
    return result;
}


// 0x801a5ba
int __fastcall sub_801A5BA(int result, unsigned int a2)
{
    char *v2; // r2

    if ( a2 )
    {
        v2 = &(**(&off_80209EC + (a2 >> 4) - 1))[8 * a2 & 0x7F];
        *(*(result + 84) + v2[6]) = *(v2 + 2);
        result = object_setFlag2(*v2);
    }
    return result;
}


// 0x801a5e2
int sub_801A5E2()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 84);
    *(result + 72) = 0;
    *(result + 76) = 0;
    return result;
}


// 0x801a5ee
int sub_801A5EE()
{
    int v0; // r5
    int result; // r0
    int v2; // r6
    int v3; // r0
    unsigned __int8 v4; // vf
    int v5; // r0
    int v6; // r2

    result = battle_getFlags();
    if ( result & 1 )
    {
        v2 = *(v0 + 84);
        if ( !*(v2 + 36) && object_getFlag2() & 2 )
            *(v2 + 36) = 120;
        object_clearFlag2(2);
        v3 = *(v2 + 36);
        if ( *(v2 + 36) )
        {
            v4 = __OFSUB__(v3, 1);
            v5 = v3 - 1;
            *(v2 + 36) = v5;
            if ( !(((v5 < 0) ^ v4) | (v5 == 0)) )
                return object_setFlag1(512);
            if ( object_getFlag() & 2 )
                PlaySoundEffect(148, 2, v6);
        }
        result = object_clearFlag(514);
    }
    return result;
}


// 0x801a648
int sub_801A648()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r3

    result = battle_isPaused();
    if ( v2 )
    {
        v3 = *(v0 + 84);
        if ( *(v3 + 36) )
        {
            result = *(v3 + 112);
            if ( result & 4 )
            {
                if ( !(result & &loc_1000) )
                {
                    result = 0;
                    *(v3 + 36) = 0;
                }
            }
        }
    }
    return result;
}


// 0x801a66c
int sub_801A66C()
{
    int v0; // r5

    *(*(v0 + 84) + 36) = 120;
    return object_setFlag1(512);
}


// 0x801a67e
int sub_801A67E()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(*(v0 + 84) + 36) = 0;
    return result;
}


// 0x801a686
int __fastcall sub_801A686(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r4

    v5 = *(v4 + 84);
    *(v5 + 15) = 0;
    *(v5 + 17) = 0;
    *(v5 + 164) = 0;
    ZeroFillByHalfword(v5 + 128, 0x14u, a3, a4);
    return object_clearFlag2(262);
}


// 0x801a6a6
void __fastcall sub_801A6A6(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    ZeroFillByHalfword(*(v4 + 84) + 128, 0x14u, a3, a4);
}


// 0x801a6b4
char *sub_801A6B4()
{
    int v0; // r5
    int v1; // r4
    char *result; // r0
    int v3; // r0
    char v4; // r2

    v1 = *(v0 + 84);
    result = sub_801A6E8();
    if ( result )
    {
        v3 = sub_8013774(result, 24);
        v4 = v3 + 1;
        if ( v3 + 1 > 7 )
            v4 = 7;
        result = sub_8013754(v3, 24, v4);
    }
    return result;
}


// 0x801a6d6
int sub_801A6D6()
{
    int v0; // r5
    int v1; // r4
    int result; // r0

    v1 = *(v0 + 84);
    result = sub_801A6E8();
    if ( result )
    {
        result = 0;
        *(v0 + 36) = 0;
    }
    return result;
}


// 0x801a6e8
signed int sub_801A6E8()
{
    int v0; // r4
    int v1; // r5
    signed int result; // r0
    int v3; // r1
    unsigned int v4; // r0
    signed int v5; // r3

    result = 0;
    v3 = *(v0 + 164);
    if ( v3 == 247 )
    {
        v4 = sub_8000C00(*(v1 + 36));
        v5 = 0;
        do
        {
            if ( (v4 & 0xF) == 4 )
                v5 = 1;
            v4 >>= 4;
        }
        while ( v4 );
        result = v5;
        if ( !v5 )
            *(v0 + 164) = v5;
    }
    else if ( v3 == 244 )
    {
        result = 1;
    }
    return result;
}


// 0x801a720
int __fastcall sub_801A720(int result)
{
    int v1; // r5
    int v2; // r0
    char v3; // r2
    char *v4; // r0
    int v5; // r0
    char v6; // r2
    char *v7; // r0

    if ( *(*(v1 + 84) + 164) == 246 )
    {
        v2 = sub_8013774(result, 24);
        v3 = v2 + 2;
        if ( v2 + 2 > 7 )
            v3 = 7;
        v4 = sub_8013754(v2, 24, v3);
        v5 = sub_8013774(v4, 25);
        v6 = v5 + 2;
        if ( v5 + 2 > 7 )
            v6 = 7;
        v7 = sub_8013754(v5, 25, v6);
        result = sub_801A77A(v7);
    }
    return result;
}


// 0x801a75a
void __fastcall sub_801A75A(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r3
    char v5; // t1
    int v6; // r0

    if ( *(*(v3 + 84) + 164) == 246 )
    {
        v4 = *(v3 + 88);
        v5 = *(v4 + 18);
        v6 = a3 + 2;
        if ( a3 + 2 > 7 )
            v6 = 7;
        *(v4 + 18) = v6;
        sub_801A77A(v6);
    }
}


// 0x801a77a
int __fastcall sub_801A77A(int result)
{
    int v1; // r5
    int v2; // r4
    int v3; // r0

    v2 = *(v1 + 84);
    if ( *(v2 + 164) == 246 )
    {
        object_setFlag2(8);
        *(v2 + 28) = 150;
        v3 = *(v1 + 40) - 371;
        if ( v3 < 0 || v3 > 11 )
        {
            object_setFlag2(32);
            *(v2 + 32) = dword_4B0;
        }
        result = 0;
        *(v2 + 164) = 0;
    }
    return result;
}


// 0x801a7cc
char *__fastcall sub_801A7CC(int a1)
{
    int v1; // r5
    int v2; // r3
    char *result; // r0

    v2 = *(v1 + 84);
    *(v2 + 6) = a1;
    *(v2 + 20) = byte_8020B8C[a1];
    result = &byte_8020B2C[6 * a1];
    *(v2 + 22) = *result;
    *(v2 + 23) = *(result + 1);
    *(v2 + 26) = *(result + 2);
    return result;
}


// 0x801a7f4
int sub_801A7F4()
{
    int v0; // r5
    int result; // r0

    *(*(v0 + 88) + 96) = 0;
    result = *(v0 + 84);
    *(result + 6) = 0;
    return result;
}


// 0x801a802
int sub_801A802()
{
    int v0; // r5
    int result; // r0
    bool v2; // zf
    int v3; // r4
    signed int v4; // r6
    int v5; // r0
    int v6; // r0
    unsigned __int8 v7; // vf
    int v8; // r0
    signed int v9; // r1
    signed int v10; // r0
    int v11; // r1
    int v12; // r1
    _WORD *v13; // r1
    int v14; // [sp-8h] [bp-14h]

    result = battle_isPaused();
    if ( !v2 )
        return result;
    v3 = *(v0 + 84);
    v4 = *(v3 + 6);
    if ( !*(v3 + 6) )
        return result;
    if ( v4 == 10 )
    {
        LOWORD(v5) = *(v3 + 22);
        if ( !*(v3 + 22) )
            goto LABEL_17;
    }
    else if ( v4 == 8 )
    {
        LOWORD(v5) = *(v3 + 22);
        if ( !*(v3 + 22) )
            goto LABEL_17;
    }
    if ( *(v3 + 119) & 0x20 || (v5 = *(v3 + 108), v5 & &loc_A20) )
    {
        if ( v4 == 8 )
        {
            LOWORD(v5) = *(v3 + 22);
            if ( !*(v3 + 22) )
                goto LABEL_17;
            goto LABEL_16;
        }
        if ( v4 != 10 || (LOWORD(v5) = *(v3 + 22)) != 0 )
        {
LABEL_16:
            v4 = 16;
            *(v3 + 6) = 16;
            *(v3 + 22) = 0;
            LOBYTE(v5) = *(v3 + 15);
            *(v3 + 21) = v5;
            goto LABEL_17;
        }
    }
LABEL_17:
    if ( v4 == 8 )
    {
        if ( !*(v3 + 22) )
        {
            result = battle_isTimeStop();
            if ( v2 )
            {
                result = *(v0 + 9);
                if ( result != 7 && result != 6 )
                {
                    result = *(v3 + 26) + 1;
                    *(v3 + 26) = result;
                    if ( result >= 240 )
                    {
                        result = 1;
                        *(v3 + 22) = 1;
                    }
                }
            }
            return result;
        }
    }
    else if ( v4 == 10 )
    {
        v9 = *(v3 + 22);
        if ( !*(v3 + 22) )
        {
            result = battle_isTimeStop();
            if ( v2 )
            {
                result = *(v3 + 27) + 1;
                *(v3 + 27) = result;
                if ( result >= 120 )
                {
                    result = 200;
                    *(v3 + 22) = 200;
                }
            }
            return result;
        }
        if ( v9 < 200 )
        {
            v5 = *(v3 + 26) + 1;
            if ( v5 >= 6 )
            {
                *(v3 + 22) = v9 + 1;
                LOBYTE(v5) = 0;
            }
        }
        *(v3 + 26) = v5;
    }
    else if ( *(v3 + 6) == 16 || (battle_isTimeStop(), v2) )
    {
        v6 = *(v3 + 26);
        if ( v6 != 0xFFFF )
        {
            v7 = __OFSUB__(v6, 1);
            v8 = v6 - 1;
            *(v3 + 26) = v8;
            if ( ((v8 < 0) ^ v7) | (v8 == 0) )
                *(v3 + 6) = 0;
        }
    }
    if ( v4 == 8 && *(v3 + 154) )
    {
        *(v3 + 136) += *(v3 + 120);
LABEL_48:
        *(v3 + 6) = 0;
        result = 0;
        *(v3 + 26) = 0;
        *(v3 + 22) = 0;
        return result;
    }
    if ( *(v3 + 20) && *(v3 + 2 * *(v3 + 20) + 148) )
        goto LABEL_48;
    v14 = *(v3 + 148) + *(v3 + 150) + *(v3 + 152) + *(v3 + 154) + *(v3 + 156);
    v2 = object_getPanelDataOffset(*(v3 + 10), *(v3 + 11))[2] == 5;
    v10 = v14;
    if ( v2 )
        v10 = (v14 + 1) >> 1;
    if ( v10 >= *(v3 + 23) )
    {
        v11 = *(v3 + 22);
        v7 = __OFSUB__(v11, v10);
        v12 = v11 - v10;
        *(v3 + 22) = v12;
        if ( ((v12 < 0) ^ v7) | (v12 == 0) )
        {
            if ( v4 != 8 && v4 != 10 && *(v3 + 6) != 16 )
                *(v3 + 6) = 0;
            *(v3 + 26) = 0;
            *(v3 + 22) = 0;
        }
    }
    v13 = (v3 + 130);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    *(v3 + 142) = 0;
    *(v3 + 144) = 0;
    *(v3 + 146) = 0;
    *(v3 + 15) = 0;
    *(v3 + 17) = 0;
    *(v3 + 164) = 0;
    *(v3 + 116) = 0;
    *(v3 + 118) = 0;
    result = 80;
    *(v3 + 112) &= 0xFFFFFFAF;
    return result;
}


// 0x801a9a4
int sub_801A9A4()
{
    int v0; // r5

    return *(*(v0 + 84) + 22);
}


// 0x801a9aa
int __fastcall sub_801A9AA(int result)
{
    int v1; // r5

    *(*(v1 + 84) + 22) = result;
    return result;
}


// 0x801a9b8
int sub_801A9B8()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char *v3; // r0
    char *v4; // r0
    signed int v5; // r0

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = object_getFlag();
            if ( !(result & 0x100) )
            {
                sub_801A802();
                sub_801A186();
                sub_801A36A();
                sub_8010230();
                sub_802CFF8();
                sub_802CEF4();
                v3 = sub_801A6B4();
                v4 = sub_801A720(v3);
                sub_8013AE4(v4);
                sub_801AEB0();
                sub_800EB26();
                v5 = *(v0 + 40);
                if ( v5 < 293 || v5 > 298 )
                    sub_801A554();
                sub_801A2CC();
                sub_801A308();
                object_calculateFinalDamage1();
            }
        }
    }
    return result;
}


// 0x801aa48
int sub_801AA48()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char *v3; // r0
    char *v4; // r0

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = object_getFlag();
            if ( !(result & 0x100) )
            {
                sub_801A802();
                sub_801A186();
                sub_801A36A();
                sub_8010230();
                sub_802CFF8();
                sub_802CEF4();
                v3 = sub_801A6B4();
                v4 = sub_801A720(v3);
                sub_8013AE4(v4);
                sub_801AF0E();
                sub_800EB26();
                sub_801A554();
                sub_801A2CC();
                sub_801A308();
                object_calculateFinalDamage1();
            }
        }
    }
    return result;
}


// 0x801aac0
int sub_801AAC0()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char *v3; // r0
    char *v4; // r0

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = object_getFlag();
            if ( !(result & 0x100) )
            {
                sub_801A802();
                sub_801A186();
                sub_801A36A();
                if ( sub_802D234() != 10 )
                    sub_8010230();
                sub_802CFF8();
                sub_802CEF4();
                v3 = sub_801A6B4();
                v4 = sub_801A720(v3);
                sub_8013AE4(v4);
                sub_801AEB0();
                sub_800EB26();
                sub_801A554();
                sub_801A2CC();
                sub_801A308();
                object_calculateFinalDamage1();
            }
        }
    }
    return result;
}


// 0x801ab40
int sub_801AB40()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char *v3; // r0
    char *v4; // r0

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = object_getFlag();
            if ( !(result & 0x100) )
            {
                sub_801A802();
                sub_801A186();
                sub_801A36A();
                sub_8010230();
                sub_802CFF8();
                sub_802CEF4();
                v3 = sub_801A6B4();
                v4 = sub_801A720(v3);
                sub_8013AE4(v4);
                sub_801AF0E();
                sub_800EB26();
                sub_801A58E();
                sub_801A2CC();
                sub_801A308();
                object_calculateFinalDamage1();
            }
        }
    }
    return result;
}


// 0x801abb8
int sub_801ABB8()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r0
    int v4; // r1
    int v5; // r2

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = battle_isPaused();
            if ( !result )
            {
                result = object_getFlag();
                if ( !(result & 0x100) )
                {
                    sub_801A802();
                    sub_801A186();
                    sub_801A36A();
                    v3 = sub_801A6D6();
                    sub_801A75A(v3, v4, v5);
                    sub_8013B20();
                    sub_801026A();
                    if ( *(v1 + 15) & 0x3C )
                    {
                        if ( *(v1 + 15) & 0x40 )
                        {
                            if ( !(object_getFlag() & 0x40) )
                            {
                                object_setFlag2(256);
                                object_clearFlag2(4);
                                *(v0 + 15) = 1;
                            }
                        }
                        else if ( !(object_getFlag() & 0x100040) )
                        {
                            object_setFlag2(16);
                            *(v0 + 15) = 1;
                        }
                    }
                    sub_800EB26();
                    sub_801A554();
                    sub_801A2CC();
                    sub_801A308();
                    object_calculateFinalDamage1();
                }
            }
        }
    }
    return result;
}


// 0x801ac6c
int sub_801AC6C()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char *v3; // r0
    char *v4; // r0
    int v5; // r0
    int v6; // r0
    int v7; // r0

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = object_getFlag();
            if ( !(result & 0x100) )
            {
                sub_801A802();
                sub_801A186();
                sub_801A36A();
                sub_8010230();
                sub_802CFF8();
                sub_802CEF4();
                v3 = sub_801A6B4();
                v4 = sub_801A720(v3);
                sub_80139F6(v4);
                sub_801AEB0();
                sub_800EB26();
                v5 = sub_8013F1E();
                v6 = sub_8013774(v5, 41);
                if ( v6 != 7 )
                {
                    v7 = sub_8013774(v6, 44);
                    if ( v7 != 7 && v7 != 19 && !sub_8013774(v7, 82) )
                        sub_801A554();
                }
                sub_801A2CC();
                sub_801A324();
                object_calculateFinalDamage1();
            }
        }
    }
    return result;
}


// 0x801ad12
int sub_801AD12()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // r4

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = object_getFlag();
            if ( !(result & 0x100) )
            {
                v3 = *(v1 + 15);
                if ( !(object_getFlag() & 0x40) )
                {
                    if ( v3 & 0x40 )
                    {
                        object_setFlag2(256);
                        object_clearFlag2(4);
                        *(v0 + 15) = 1;
                    }
                }
                object_calculateFinalDamage2();
            }
        }
    }
    return result;
}


// 0x801ad6a
int sub_801AD6A()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = object_getFlag();
            if ( !(result & 0x100) )
                object_calculateFinalDamage2();
        }
    }
    return result;
}


// 0x801ad9e
int sub_801AD9E()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // r4
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = object_getFlag();
            if ( !(result & 0x100) )
            {
                v3 = *(v1 + 15);
                if ( !(object_getFlag() & 0x40) )
                {
                    if ( v3 & 0x40 )
                    {
                        object_setFlag2(256);
                        v4 = object_clearFlag2(4);
                        sub_801A6A6(v4, v5, v6, v7);
                        *(v0 + 15) = 1;
                    }
                }
                object_calculateFinalDamage2();
            }
        }
    }
    return result;
}


// 0x801adfa
int sub_801ADFA()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // r4

    sprite_clearFinalPalette();
    v1 = *(v0 + 84);
    result = battle_getFlags();
    if ( result & 1 )
    {
        object_removeCollisionData();
        result = battle_isBattleOver();
        if ( !result )
        {
            result = object_getFlag();
            if ( !(result & 0x100) )
            {
                sub_801AE56();
                v3 = *(v1 + 15);
                if ( !(object_getFlag() & 0x40) )
                {
                    if ( v3 & 0x40 )
                    {
                        object_setFlag2(256);
                        object_clearFlag2(4);
                        *(v0 + 15) = 1;
                    }
                }
                object_calculateFinalDamage2();
            }
        }
    }
    return result;
}


// 0x801ae56
int sub_801AE56()
{
    int v0; // r7
    int result; // r0
    signed int v2; // r1
    int v3; // r1

    result = *(v0 + 112);
    if ( !(result & &loc_1000) )
    {
        result = *(v0 + 15);
        if ( !(result & 0x40) )
        {
            v2 = 0;
            result = *(v0 + 112);
            if ( result & 0xA2000000 )
                v2 = 1;
            if ( result & 0x51000000 )
                v2 += 2;
            v3 = *(dword_801AEA0 + v2);
            if ( v3 != 255 )
            {
                *(v0 + v3) |= 0x61u;
                *(v0 + 15) |= 0x61u;
            }
        }
    }
    return result;
}


// 0x801aeb0
int sub_801AEB0()
{
    int v0; // r5
    int v1; // r7
    char v2; // r4
    int result; // r0

    v2 = *(v1 + 15);
    result = object_getFlag();
    if ( !(result & 0x220000) && v2 & 1 )
        result = object_setFlag2(4);
    if ( v2 & 2 )
        result = object_setFlag2(2);
    if ( v2 & 0x3C )
    {
        if ( v2 & 0x40 )
        {
            object_setFlag2(256);
            object_clearFlag2(4);
            result = 1;
            *(v0 + 15) = 1;
            *(v0 + 15) = 1;
        }
        else
        {
            result = object_getFlag();
            if ( !(result & 0x100040) )
            {
                object_setFlag2(16);
                result = 1;
                *(v0 + 15) = 1;
            }
        }
    }
    return result;
}


// 0x801af0e
int sub_801AF0E()
{
    int v0; // r7
    char v1; // r4
    int result; // r0

    v1 = *(v0 + 15);
    result = object_getFlag();
    if ( !(result & 0x220000) && v1 & 1 )
        result = object_setFlag2(4);
    if ( v1 & 2 )
        result = object_setFlag2(2);
    return result;
}


// 0x801af44
void __fastcall sub_801AF44(int a1)
{
    int v1; // r5
    int v2; // r6
    int v3; // r7
    Battle *v4; // r0
    char v5; // zf
    signed int v6; // r0
    int v7; // r0
    signed int v8; // ST00_4
    int v9; // r0
    int v10; // r0
    int v11; // r0
    int v12; // r0
    int v13; // r0
    int v14; // r0
    int v15; // r0
    void **v16; // [sp+0h] [bp-14h]

    v16 = a1;
    v2 = *(v1 + 84);
    v3 = *(v1 + 88);
    if ( battle_isPaused() && *(v1 + 9) )
        goto LABEL_42;
    sub_801A42E();
    v4 = sub_801A4A6();
    sub_801A45C(v4);
    sub_801A506();
    sub_801BA12();
    sub_801BADE();
    if ( object_getFlag() & 0x100 )
        goto LABEL_42;
    if ( object_getFlag2() & 1 )
    {
        object_clearFlag2(1);
        object_setFlag1(256);
        object_setAttack0();
LABEL_42:
        sprite_zeroColorShader();
        object_clearFlag2(0x4000);
        v11 = sub_80143E4();
        v12 = sub_801690A(v11);
        v13 = sub_8016860(v12);
        v14 = sub_80168C8(v13);
        sub_80168F0(v14);
        sub_8016934();
        v15 = sub_8016CA4();
        sub_801728E(v15);
        if ( !(object_getFlag() & 0x100) )
        {
            battle_isPaused();
            if ( !v5 && *(v1 + 9) )
            {
                sub_8017BC0();
                return;
            }
            battle_isTimeStop();
            if ( !v5 )
            {
                sub_8017AB4();
                return;
            }
        }
        goto LABEL_48;
    }
    if ( sub_801032C() & &loc_2000 || sub_801032C() & 0x10000 || sub_801032C() & 0x20000 )
    {
LABEL_48:
        sub_801B9E6(v16);
        return;
    }
    if ( !(sub_801032C() & 0x40000) || !sub_8015766() )
    {
        battle_isTimeStop();
        if ( !v5 )
            goto LABEL_42;
        *(v1 + 24) = 0;
        if ( sub_800FFFE() & GameEntryPoint )
        {
            sub_800FFEE(GameEntryPoint);
            sub_8010312(&loc_2000);
            object_setAttack0();
        }
        else
        {
            if ( !(sub_800FFFE() & 0x40000000) )
            {
                if ( sub_800FFFE() < 0 )
                {
                    sub_800FFEE(2147483648);
                    v6 = *(v1 + 40);
                    if ( v6 >= &loc_1AC && v6 <= byte_1C1 )
                    {
                        sub_8010312(0x40000);
                        object_exitAttackState(v1);
                        sub_8015766();
                        return;
                    }
                }
                if ( object_getFlag2() & 0x100 )
                {
                    object_clearFlag2(256);
                    if ( !*(v1 + 92) )
                        *(v1 + 92) = *(v1 + 8);
                    sub_801011A();
                    sub_801A29A();
                    sub_801A2B0();
                    LOWORD(v7) = object_getFlag2();
                    if ( !(v7 & 0x4000) && (v7 & 2 || *(v1 + 9) != 4) )
                        sub_801A284();
                    object_clearFlag2(0x4000);
                    *(v1 + 9) = 5;
                    *(v1 + 10) = 0;
                    *(v1 + 13) = 0;
                }
                else if ( object_getFlag() & 0x100000 )
                {
                    *(v1 + 9) = 5;
                }
                else
                {
                    *(v1 + 13) = 0;
                    if ( object_getFlag2() & 0x10 )
                    {
                        object_clearFlag2(16);
                        sub_80166B6();
                    }
                    else if ( object_getFlag() & 0x1000 )
                    {
                        sub_80166B6();
                    }
                    else
                    {
                        *(v1 + 31) = 0;
                    }
                    if ( object_getFlag2() & 4 )
                    {
                        object_clearFlag2(4);
                        sub_801011A();
                        v8 = sub_801BA92();
                        v9 = sub_801BABE() | v8;
                        if ( !v9 || v9 & 2 )
                            object_setAttack0();
                        object_clearFlag2(0x4000);
                    }
                    sub_801A5EE();
                    v10 = sub_800E730();
                    sub_8010162(v10);
                    sub_8014326();
                    nullsub_6();
                    sub_8014498();
                    sub_802E1D8();
                }
                goto LABEL_42;
            }
            sub_800FFEE(0x40000000);
            sub_8010312(0x10000);
            object_setAttack0();
        }
        goto LABEL_48;
    }
}


// 0x801b1c4
int __fastcall sub_801B1C4(int a1)
{
    int v1; // r5
    unsigned __int16 *v2; // r6
    int result; // r0
    Battle *v4; // r0
    int v5; // ST00_4
    int v6; // r1
    int v7; // r2
    int v8; // r1
    char v9; // zf
    int v10; // r0
    unsigned __int8 v11; // vf
    int v12; // r0
    int v13; // r0
    int v14; // r0
    int v15; // r0
    int v16; // r0
    void **v17; // [sp+0h] [bp-10h]

    v17 = a1;
    v2 = *(v1 + 84);
    if ( !battle_isPaused() )
        goto LABEL_40;
    if ( object_getFlag2() & 0x80000 )
    {
        object_updateCollisionPanels(v1);
        object_clearFlag2(0x80000);
    }
    if ( *(v1 + 9) )
    {
        if ( !(object_getFlag() & 0x40000100) )
        {
            result = object_getFlag2();
            if ( !(result & 0x8000) )
                return result;
            object_clearFlag2(0x8000);
            object_setFlag1(1073742080);
            *(v1 + 9) = 2;
            *(v1 + 10) = 0;
        }
    }
    else
    {
LABEL_40:
        sub_801A42E();
        v4 = sub_801A4A6();
        sub_801A45C(v4);
        sub_801BADE();
        if ( v2[64]
            && (v5 = v2[64], sprite_forceWhitePallete(),
                                             PlaySoundEffect(109, v6, v7),
                                             sub_801A67E(),
                                             object_subtractHP(v1, v5),
                                             !v8)
            || (object_subtractHP(v1, v2[70]), sub_801B9BC(), !*(v1 + 36)) )
        {
            object_setFlag2(1);
        }
        sub_801A200();
        if ( !(object_getFlag() & 0x100) )
        {
            if ( object_getFlag2() & 1 )
            {
                object_clearFlag2(1);
                object_setFlag1(256);
                *(v1 + 9) = 2;
                *(v1 + 10) = 0;
            }
            else
            {
                battle_isTimeStop();
                if ( v9 )
                {
                    *(v1 + 24) = 0;
                    if ( object_getFlag2() & 0x100 )
                    {
                        object_clearFlag2(256);
                        sub_801A29A();
                        sub_801A2B0();
                        sub_801BA92();
                        if ( !*(v1 + 92) )
                            *(v1 + 92) = *(v1 + 8);
                        *(v1 + 9) = 5;
                        *(v1 + 10) = 0;
                        *(v1 + 13) = 0;
                    }
                    else if ( object_getFlag() & 0x100000 )
                    {
                        *(v1 + 9) = 5;
                    }
                    else
                    {
                        *(v1 + 13) = 0;
                        if ( object_getFlag2() & 0x10 )
                        {
                            object_clearFlag2(16);
                            sub_80166B6();
                        }
                        else if ( object_getFlag() & 0x1000 )
                        {
                            sub_80166B6();
                        }
                        else
                        {
                            *(v1 + 31) = 0;
                        }
                        v10 = v2[18];
                        if ( !v2[18] || (v11 = __OFSUB__(v10, 1), v12 = v10 - 1, v2[18] = v12, ((v12 < 0) ^ v11) | (v12 == 0)) )
                            object_clearFlag(514);
                        else
                            object_setFlag1(512);
                        sub_800E730();
                    }
                }
            }
        }
    }
    sprite_zeroColorShader();
    v13 = object_clearFlag2(0x4000);
    v14 = sub_801690A(v13);
    v15 = sub_8016860(v14);
    v16 = sub_80168C8(v15);
    sub_80168F0(v16);
    sub_8016934();
    sub_8016CA4();
    if ( object_getFlag() & 0x100 || (battle_isTimeStop(), v9) )
        result = sub_801B9E6(v17);
    else
        result = sub_8016BFC();
    return result;
}


// 0x801b394
int __fastcall sub_801B394(int a1)
{
    int v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // ST00_4
    int v5; // r1
    int v6; // r2
    int v7; // r1
    char v9; // zf
    int v10; // [sp+0h] [bp-10h]

    v10 = a1;
    v2 = *(v1 + 84);
    v3 = *(v1 + 88);
    if ( *(v2 + 128) )
    {
        v4 = *(v2 + 128);
        sprite_forceWhitePallete();
        PlaySoundEffect(133, v5, v6);
        object_subtractHP(v1, v4);
        if ( !v7 )
            goto LABEL_7;
    }
    if ( *(v2 + 112) & 0xC800002 )
    {
        *(v1 + 36) = 0;
LABEL_7:
        object_setFlag2(1);
        goto LABEL_8;
    }
    if ( object_getFlag2() & 0x8000 || !*(v1 + 36) )
        goto LABEL_7;
LABEL_8:
    if ( !(object_getFlag() & 0x100) )
    {
        if ( object_getFlag2() & 1 )
        {
            object_clearFlag2(1);
            object_setFlag1(256);
            *(v1 + 9) = 2;
            *(v1 + 10) = 0;
            goto LABEL_29;
        }
        if ( object_getFlag2() & &loc_C00 )
        {
            *(v1 + 24) = 0;
            return sub_8018002();
        }
        if ( object_getFlag() & &LCDControl )
            return sub_8018002();
        if ( object_getFlag2() & &loc_3000 )
        {
            *(v1 + 24) = 0;
            return sub_801813A();
        }
        if ( object_getFlag() & 0x30000000 )
            return sub_801813A();
        battle_isTimeStop();
        if ( v9 )
        {
            *(v1 + 24) = 0;
            if ( object_getFlag2() & 0x100 )
            {
                object_clearFlag2(256);
                if ( !*(v1 + 92) )
                    *(v1 + 92) = *(v1 + 8);
                *(v1 + 9) = 5;
                *(v1 + 10) = 0;
                *(v1 + 13) = 0;
            }
            else if ( object_getFlag() & 0x100000 )
            {
                *(v1 + 9) = 5;
            }
            else
            {
                *(v1 + 13) = 0;
            }
        }
        else if ( *(v1 + 9) )
        {
            return sub_801823C();
        }
    }
LABEL_29:
    sprite_zeroColorShader();
    sub_80181F6();
    return (*(v10 + 4 * *(v1 + 9)))();
}


// 0x801b4d4
int __fastcall sub_801B4D4(int a1)
{
    int v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // ST00_4
    int v5; // r1
    int v6; // r2
    int v7; // r1
    char v9; // zf
    int v10; // [sp+0h] [bp-10h]

    v10 = a1;
    v2 = *(v1 + 84);
    v3 = *(v1 + 88);
    if ( *(v2 + 128)
        && (v4 = *(v2 + 128), sprite_forceWhitePallete(), PlaySoundEffect(133, v5, v6), object_subtractHP(v1, v4), !v7)
        || *(v2 + 112) & 0xC800002
        || object_getFlag2() & 0x8000
        || !*(v1 + 36) )
    {
        object_setFlag2(1);
    }
    if ( object_getFlag() & 0x100 )
        goto LABEL_28;
    if ( object_getFlag2() & 1 )
    {
        object_clearFlag2(1);
        object_setFlag1(256);
        *(v1 + 9) = 2;
        *(v1 + 10) = 0;
        goto LABEL_28;
    }
    if ( object_getFlag2() & &loc_C00 )
    {
        *(v1 + 24) = 0;
        return sub_8018002();
    }
    if ( object_getFlag() & &LCDControl )
        return sub_8018002();
    if ( object_getFlag2() & &loc_3000 )
    {
        *(v1 + 24) = 0;
        return sub_801813A();
    }
    if ( object_getFlag() & 0x30000000 )
        return sub_801813A();
    battle_isTimeStop();
    if ( v9 )
    {
        *(v1 + 24) = 0;
        if ( object_getFlag2() & 0x100 )
        {
            object_clearFlag2(256);
            if ( !*(v1 + 92) )
                *(v1 + 92) = *(v1 + 8);
            *(v1 + 9) = 5;
            *(v1 + 10) = 0;
            *(v1 + 13) = 0;
        }
        else if ( object_getFlag() & 0x100000 )
        {
            *(v1 + 9) = 5;
        }
        else
        {
            *(v1 + 13) = 0;
        }
    }
    else if ( *(v1 + 9) )
    {
        return sub_801823C();
    }
LABEL_28:
    sprite_zeroColorShader();
    sub_80181F6();
    return (*(v10 + 4 * *(v1 + 9)))();
}


// 0x801b610
int __fastcall sub_801B610(int a1)
{
    int v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // ST00_4
    int v5; // r1
    int v6; // r2
    int v7; // r1
    char v9; // zf
    int v10; // [sp+0h] [bp-14h]

    v10 = a1;
    v2 = *(v1 + 84);
    v3 = *(v1 + 88);
    if ( *(v2 + 128) )
    {
        v4 = *(v2 + 128);
        sprite_forceWhitePallete();
        PlaySoundEffect(133, v5, v6);
        object_subtractHP(v1, v4);
        if ( !v7 )
            goto LABEL_7;
    }
    if ( *(v2 + 112) & 0x800002 )
    {
        *(v1 + 36) = 0;
LABEL_7:
        object_setFlag2(1);
        goto LABEL_8;
    }
    if ( object_getFlag2() & 0x8000 || !*(v1 + 36) )
        goto LABEL_7;
LABEL_8:
    if ( !(object_getFlag() & 0x100) )
    {
        if ( object_getFlag2() & 1 )
        {
            object_clearFlag2(1);
            object_setFlag1(256);
            *(v1 + 9) = 2;
            *(v1 + 10) = 0;
            goto LABEL_29;
        }
        if ( object_getFlag2() & &loc_C00 )
        {
            *(v1 + 24) = 0;
            return sub_8018002();
        }
        if ( object_getFlag() & &LCDControl )
            return sub_8018002();
        if ( object_getFlag2() & &loc_3000 )
        {
            *(v1 + 24) = 0;
            return sub_801813A();
        }
        if ( object_getFlag() & 0x30000000 )
            return sub_801813A();
        battle_isTimeStop();
        if ( v9 )
        {
            *(v1 + 24) = 0;
            if ( object_getFlag2() & 0x100 )
            {
                object_clearFlag2(256);
                if ( !*(v1 + 92) )
                    *(v1 + 92) = *(v1 + 8);
                *(v1 + 9) = 5;
                *(v1 + 10) = 0;
                *(v1 + 13) = 0;
            }
            else if ( object_getFlag() & 0x100000 )
            {
                *(v1 + 9) = 5;
            }
            else
            {
                *(v1 + 13) = 0;
            }
        }
        else if ( *(v1 + 9) )
        {
            return sub_801823C();
        }
    }
LABEL_29:
    sprite_zeroColorShader();
    sub_80181F6();
    return (*(v10 + 4 * *(v1 + 9)))();
}


// 0x801b750
int __fastcall sub_801B750(int a1)
{
    int v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // ST00_4
    int v5; // r1
    int v6; // r2
    int v7; // r1
    char v9; // zf
    int v10; // [sp+0h] [bp-14h]

    v10 = a1;
    v2 = *(v1 + 84);
    v3 = *(v1 + 88);
    if ( *(v2 + 128) )
    {
        v4 = *(v2 + 128);
        sprite_forceWhitePallete();
        PlaySoundEffect(133, v5, v6);
        object_subtractHP(v1, v4);
        if ( !v7 )
            goto LABEL_7;
    }
    if ( *(v2 + 112) & 0xC800002 )
    {
        *(v1 + 36) = 0;
LABEL_7:
        object_setFlag2(1);
        goto LABEL_8;
    }
    if ( object_getFlag2() & 0x8000 || !*(v1 + 36) )
        goto LABEL_7;
LABEL_8:
    if ( !(object_getFlag() & 0x100) )
    {
        if ( object_getFlag2() & 1 )
        {
            object_clearFlag2(1);
            object_setFlag1(256);
            *(v1 + 9) = 2;
            *(v1 + 10) = 0;
            goto LABEL_28;
        }
        if ( object_getFlag2() & &loc_C00 )
        {
            *(v1 + 24) = 0;
            return sub_8018002();
        }
        if ( object_getFlag() & &LCDControl )
            return sub_8018002();
        if ( object_getFlag2() & &loc_3000 )
        {
            *(v1 + 24) = 0;
            return sub_801813A();
        }
        if ( object_getFlag() & 0x30000000 )
            return sub_801813A();
        battle_isTimeStop();
        if ( !v9 )
            return sub_801823C();
        *(v1 + 24) = 0;
        if ( object_getFlag2() & 0x100 )
        {
            object_clearFlag2(256);
            if ( !*(v1 + 92) )
                *(v1 + 92) = *(v1 + 8);
            *(v1 + 9) = 5;
            *(v1 + 10) = 0;
            *(v1 + 13) = 0;
        }
        else if ( object_getFlag() & 0x100000 )
        {
            *(v1 + 9) = 5;
        }
        else
        {
            *(v1 + 13) = 0;
        }
    }
LABEL_28:
    sprite_zeroColorShader();
    sub_80181F6();
    return (*(v10 + 4 * *(v1 + 9)))();
}


// 0x801b878
int __fastcall sub_801B878(int a1)
{
    int v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // ST00_4
    int v5; // r1
    int v6; // r2
    int v7; // r1
    char v9; // zf
    int v10; // [sp+0h] [bp-10h]

    v10 = a1;
    v2 = *(v1 + 84);
    v3 = *(v1 + 88);
    if ( *(v2 + 128) )
    {
        v4 = *(v2 + 128);
        sprite_forceWhitePallete();
        PlaySoundEffect(133, v5, v6);
        object_subtractHP(v1, v4);
        if ( !v7 )
            goto LABEL_8;
    }
    if ( *(v2 + 112) & 0xC800002 && !*(v1 + 100) )
    {
        *(v1 + 36) = 0;
LABEL_8:
        object_setFlag2(1);
        goto LABEL_9;
    }
    if ( object_getFlag2() & 0x8000 || !*(v1 + 36) )
        goto LABEL_8;
LABEL_9:
    if ( !(object_getFlag() & 0x100) )
    {
        if ( object_getFlag2() & 1 )
        {
            object_clearFlag2(1);
            object_setFlag1(256);
            *(v1 + 9) = 2;
            *(v1 + 10) = 0;
            goto LABEL_30;
        }
        if ( object_getFlag2() & &loc_C00 )
        {
            *(v1 + 24) = 0;
            return sub_8018002();
        }
        if ( object_getFlag() & &LCDControl )
            return sub_8018002();
        if ( object_getFlag2() & &loc_3000 )
        {
            *(v1 + 24) = 0;
            return sub_801813A();
        }
        if ( object_getFlag() & 0x30000000 )
            return sub_801813A();
        battle_isTimeStop();
        if ( v9 )
        {
            *(v1 + 24) = 0;
            if ( object_getFlag2() & 0x100 )
            {
                object_clearFlag2(256);
                if ( !*(v1 + 92) )
                    *(v1 + 92) = *(v1 + 8);
                *(v1 + 9) = 5;
                *(v1 + 10) = 0;
                *(v1 + 13) = 0;
            }
            else if ( object_getFlag() & 0x100000 )
            {
                *(v1 + 9) = 5;
            }
            else
            {
                *(v1 + 13) = 0;
            }
        }
        else if ( *(v1 + 9) )
        {
            return sub_801823C();
        }
    }
LABEL_30:
    sprite_zeroColorShader();
    sub_80181F6();
    return (*(v10 + 4 * *(v1 + 9)))();
}


// 0x801b9bc
void sub_801B9BC()
{
    int v0; // r5
    int v1; // r3

    v1 = *(v0 + 88);
    if ( v1 && *(v1 + 2) == 1 && *(v1 + 84) )
    {
        if ( object_getFlag() & byte_100 )
            *(v0 + 36) = 0;
    }
}


// 0x801b9e6
int __fastcall sub_801B9E6(void **a1)
{
    int v1; // r5
    signed int v2; // r1
    int result; // r0

    v2 = *(v1 + 9);
    if ( v2 < 16 || (v2 -= 16, a1 = &JumpTable80EAC60, *(*(v1 + 88) + 189) != 1) )
        result = (a1[v2])();
    else
        result = sub_80EAD9C();
    return result;
}


// 0x801ba12
char *sub_801BA12()
{
    Battle *v0; // r5
    int v1; // r6
    int v2; // r4
    int v3; // r1
    int v4; // r1
    int v5; // r4
    int v6; // r1
    int v7; // r2
    char v8; // zf
    int v9; // r0
    int v11; // [sp-4h] [bp-Ch]

    v2 = *(v1 + 128);
    if ( !*(v1 + 128) )
    {
LABEL_12:
        object_subtractHP(v0, *(v1 + 140));
        v9 = v0->HP;
        if ( v0->HP )
            return sub_801A200();
        goto LABEL_13;
    }
    sub_8010548(*(v1 + 128));
    if ( v0->HP > 1 )
    {
        if ( object_getFlag() & 0x40000 )
        {
            v3 = v0->HP;
            if ( v3 <= v2 )
                v2 = v3 - 1;
        }
    }
    object_subtractHP(v0, v2);
    v11 = v4;
    v5 = 109;
    if ( sub_800F29C(v0->nameID) == 2 )
    {
        battle_networkInvert(v0->Alliance);
        if ( v8 )
            v5 = 107;
    }
    v9 = PlaySoundEffect(v5, v6, v7);
    if ( v11 )
    {
        sprite_forceWhitePallete();
        goto LABEL_12;
    }
LABEL_13:
    if ( sub_802DD2A(v9) )
        sub_800FFE4(GameEntryPoint);
    else
        object_setFlag2(1);
    return sub_801A200();
}


// 0x801ba92
signed int sub_801BA92()
{
    int v0; // r5
    signed int v1; // r4

    v1 = 0;
    if ( *(v0 + 9) == 4 )
    {
        v1 = 1;
        if ( !(object_getFlag2() & 0x4000) )
        {
            if ( object_getFlag2() & 2 )
            {
                sub_801A284();
                v1 = 2;
            }
        }
    }
    return v1;
}


// 0x801babe
signed int sub_801BABE()
{
    int v0; // r5
    signed int v1; // r4

    v1 = 0;
    if ( *(v0 + 9) == 6 )
    {
        v1 = 1;
        if ( object_getFlag2() & 2 )
        {
            sub_801A29A();
            v1 = 2;
        }
    }
    return v1;
}


// 0x801bade
signed int sub_801BADE()
{
    int v0; // r5
    int v1; // r6
    signed int v2; // r4

    v2 = 0;
    if ( *(v0 + 9) == 7 && *(v1 + 128) )
    {
        sub_801A2B0();
        v2 = 1;
    }
    return v2;
}


// 0x801bb1c
signed int __fastcall object_reservePanel(int a1, int a2)
{
    _BYTE *v2; // r5
    char *v3; // r0

    v3 = object_getPanelDataOffset(a1, a2);
    if ( !v3 || *(v3 + 7) )
        return 0;
    *(v3 + 7) = v2;
    *(v3 + 5) |= 0x80u;
    *v2 |= 0x20u;
    return 1;
}


// 0x801bb46
signed int __fastcall object_removePanelReserve(int a1, int a2)
{
    int v2; // r5
    char *v3; // r0

    v3 = object_getPanelDataOffset(a1, a2);
    if ( !v3 || *(v3 + 7) != v2 )
        return 0;
    *(v3 + 7) = 0;
    *(v3 + 5) &= 0xFFFFFF7F;
    return 1;
}


// 0x801bb6a
char *__fastcall sub_801BB6A(int a1, int a2)
{
    char *result; // r0

    result = object_getPanelDataOffset(a1, a2);
    if ( result )
        result = *(result + 7);
    return result;
}


// 0x801bb78
char *sub_801BB78()
{
    unsigned __int8 *v0; // r5
    char *result; // r0
    int v2; // r7
    int v3; // r6

    result = *v0;
    if ( result & 0x20 )
    {
        v2 = 4;
        do
        {
            v3 = 7;
            do
            {
                result = object_getPanelDataOffset(v3, v2);
                if ( result )
                {
                    if ( *(result + 7) == v0 )
                        result = object_removePanelReserve(v3, v2);
                }
                --v3;
            }
            while ( v3 );
            --v2;
        }
        while ( v2 );
    }
    return result;
}


// 0x801bbac
void object_updateSprite()
{
    Battle *v0; // r5
    char v1; // zf
    int v2; // r0

    battle_isPaused();
    if ( v1 )
    {
        if ( v0->objFlags & 1 )
        {
            if ( !(v0->objFlags & 8) )
            {
                if ( v0->objFlags & 0x10 || (battle_isTimeStop(), v1) )
                {
                    if ( !v0->collisionData || !v0->preventAnimation )
                    {
                        v2 = v0->currAnimation;
                        if ( v2 != v0->currAnimationCpy )
                        {
                            sprite_setAnimation(v0, v2);
                            sprite_loadAnimationData(v0);
                            v0->currAnimationCpy = v0->currAnimation;
                        }
                        sprite_update(v0);
                    }
                }
            }
        }
    }
}


// 0x801bbf4
void object_updateSpriteTimestop()
{
    Battle *v0; // r5
    char v1; // zf
    int v2; // r0

    battle_isPaused();
    if ( v1 && v0->objFlags & 1 && !(v0->objFlags & 8) )
    {
        v2 = v0->currAnimation;
        if ( v2 != v0->currAnimationCpy )
        {
            sprite_setAnimation(v0, v2);
            sprite_loadAnimationData(v0);
            v0->currAnimationCpy = v0->currAnimation;
        }
        sprite_update(v0);
    }
}


// 0x801bc24
void sub_801BC24()
{
    Battle *v0; // r5
    char v1; // zf
    int v2; // r0

    battle_isPaused();
    if ( v1 )
    {
        if ( v0->objFlags & 1 )
        {
            if ( !(v0->objFlags & 8) )
            {
                if ( v0->objFlags & 0x10 || (battle_isTimeStop(), v1) )
                {
                    v2 = v0->currAnimation;
                    if ( v2 == v0->currAnimationCpy )
                    {
                        sprite_update(v0);
                    }
                    else
                    {
                        sprite_setAnimation(v0, v2);
                        sprite_loadAnimationData(v0);
                        v0->currAnimationCpy = v0->currAnimation;
                    }
                }
            }
        }
    }
}


// 0x801bc64
void sub_801BC64()
{
    Battle *v0; // r5
    char v1; // zf
    int v2; // r0

    if ( v0->objFlags & 1 )
    {
        if ( !(v0->objFlags & 8) )
        {
            if ( v0->objFlags & 0x10 || (battle_isTimeStop(), v1) )
            {
                if ( !v0->collisionData || !v0->preventAnimation )
                {
                    v2 = v0->currAnimation;
                    if ( v2 != v0->currAnimationCpy )
                    {
                        sprite_setAnimation(v0, v2);
                        sprite_loadAnimationData(v0);
                        v0->currAnimationCpy = v0->currAnimation;
                    }
                    sprite_update(v0);
                }
            }
        }
    }
}


// 0x801bca6
void object_updateSpritePaused()
{
    Battle *v0; // r5
    char v1; // zf
    int v2; // r0

    if ( v0->objFlags & 1 )
    {
        battle_isTimeStop();
        if ( v1 )
        {
            v2 = v0->currAnimation;
            if ( v2 != v0->currAnimationCpy )
            {
                sprite_setAnimation(v0, v2);
                sprite_loadAnimationData(v0);
                v0->currAnimationCpy = v0->currAnimation;
            }
            sprite_update(v0);
        }
    }
}


// 0x801bcd0
void sub_801BCD0()
{
    Battle *v0; // r5
    int v1; // r0

    if ( !(v0->objFlags & 8) )
    {
        v1 = v0->currAnimation;
        if ( v1 != v0->currAnimationCpy )
        {
            sprite_setAnimation(v0, v1);
            sprite_loadAnimationData(v0);
            v0->currAnimationCpy = v0->currAnimation;
        }
        sprite_update(v0);
    }
}


// 0x801bcf4
void sub_801BCF4()
{
    Battle *v0; // r5
    char v1; // zf
    int v2; // r0

    battle_isPaused();
    if ( v1 )
    {
        if ( v0->objFlags & 1 )
        {
            if ( !(v0->objFlags & 8) )
            {
                if ( v0->objFlags & 0x10 || (battle_isTimeStop(), v1) )
                {
                    if ( !v0->collisionData || !v0->preventAnimation )
                    {
                        v2 = v0->currAnimation;
                        if ( v2 != v0->currAnimationCpy )
                        {
                            sprite_setAnimation(v0, v2);
                            sprite_loadAnimationData(v0);
                            v0->currAnimationCpy = v0->currAnimation;
                        }
                        sprite_update(v0);
                    }
                }
            }
        }
    }
}


// 0x801bd3c
int __fastcall sub_801BD3C(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    Battle *v5; // r5
    int v6; // r7
    int v7; // r8
    int v8; // ST0C_4
    int v9; // ST10_4
    int v10; // ST14_4
    int v11; // r6
    int v12; // r0
    int v13; // r1
    int v14; // r2
    int v15; // r7
    int v16; // r3
    int v17; // r4
    int v18; // r3
    bool v19; // zf
    int v20; // r0
    int v21; // r1
    int result; // r0
    int v23; // r3
    int v24; // r1
    int v25; // r2
    int v26; // r3
    int v27; // r0
    int v28; // r0
    int v29; // r0
    int v30; // r1
    int v31; // [sp-8h] [bp-2Ch]
    int v32; // [sp+0h] [bp-24h]
    int v33; // [sp+0h] [bp-24h]
    int v34; // [sp+4h] [bp-20h]
    int v35; // [sp+4h] [bp-20h]
    int v36; // [sp+8h] [bp-1Ch]
    int v37; // [sp+8h] [bp-1Ch]
    int v38; // [sp+Ch] [bp-18h]
    int v39; // [sp+Ch] [bp-18h]
    int v40; // [sp+Ch] [bp-18h]
    int v41; // [sp+10h] [bp-14h]

    v7 = v6;
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v38 = a4;
    v11 = object_getAllianceDirection(v4);
    v12 = v8;
    v13 = v9;
    v14 = v10;
    if ( __CFSHL__(v38, 25) )
    {
        v23 = 8 * v38 & 0x3FF;
        v24 = 3;
        v25 = *&byte_8019C34[v23];
        v26 = *&byte_8019C34[v23 + 4];
        do
        {
            v27 = 6;
            do
            {
                v33 = v27;
                v35 = v24;
                v37 = v25;
                v40 = v26;
                v19 = object_checkPanelParameters(v27, v24, v25, v26) == 0;
                v28 = v33;
                v24 = v35;
                v25 = v37;
                v26 = v40;
                if ( !v19 )
                {
                    v29 = object_getCoordinatesForPanels(v33);
                    SpawnT4BattleObjectWithId0(v5, v29, v29, v30, 0);
                    v28 = v33;
                    v24 = v35;
                    v25 = v37;
                    v26 = v40;
                }
                v27 = v28 - 1;
            }
            while ( v27 );
            --v24;
        }
        while ( v24 );
        result = v41;
    }
    else
    {
        if ( v38 << 25 )
        {
            v15 = *(&off_8019B78 + (4 * v38 & 0x1FF));
            v16 = 0;
            while ( 1 )
            {
                v36 = v12;
                v39 = v13;
                v17 = *(v15 + v16);
                if ( v17 == 127 )
                    break;
                v18 = v16 + 1;
                v31 = v12 + v17 * v11;
                v32 = v14;
                v34 = v18 + 1;
                v19 = object_isValidPanel(v31, v13 + *(v15 + v18)) == 0;
                v14 = v32;
                v16 = v34;
                if ( !v19 )
                {
                    v20 = object_getCoordinatesForPanels(v31);
                    SpawnT4BattleObjectWithId0(v5, v20, v20, v21, v7);
                    v14 = v32;
                    v16 = v34;
                }
                v12 = v36;
                v13 = v39;
            }
        }
        result = v41;
    }
    return result;
}


// 0x801bdde
unsigned int __fastcall sub_801BDDE(unsigned int a1)
{
    unsigned int v1; // ST00_4

    v1 = a1;
    GetRNG2();
    return v1 >> 1;
}


// 0x801be04
int __fastcall sub_801BE04(int a1, int a2, int a3, int a4)
{
    unsigned __int8 v4; // vf
    int v5; // r0
    signed int v6; // r0
    unsigned __int8 v7; // vf
    int v8; // r1
    signed int v9; // r1

    v4 = __OFSUB__(a1, a3);
    v5 = a1 - a3;
    if ( ((v5 < 0) ^ v4) | (v5 == 0) )
    {
        if ( (v5 < 0) ^ v4 )
            v6 = 4;
        else
            v6 = 0;
    }
    else
    {
        v6 = 8;
    }
    v7 = __OFSUB__(a2, a4);
    v8 = a2 - a4;
    if ( ((v8 < 0) ^ v7) | (v8 == 0) )
    {
        if ( (v8 < 0) ^ v7 )
            v9 = 1;
        else
            v9 = 0;
    }
    else
    {
        v9 = 2;
    }
    return v6 | v9;
}


// 0x801be28
void nullsub_10()
{
    ;
}


// 0x801be2a
signed int __fastcall __noreturn sub_801BE2A(unsigned int a1)
{
    Battle *v1; // r5
    unsigned int v2; // r6
    int v3; // r0

    v2 = a1;
    sprite_load(v1, 128, v2 << 16 >> 24, v2);
    sprite_loadAnimationData(v1);
    if ( v2 >> 24 )
        sprite_hasShadow();
    else
        sprite_noShadow(v1);
    v1->currAnimation = v2 << 8 >> 24;
    v1->currAnimationCpy = -1;
    v3 = object_getFlip(v1);
    sprite_setFlip(v1, v3);
    return 1;
}


// 0x801be70
int __fastcall sub_801BE70(int a1, int a2, int a3, int a4)
{
    int result; // r0

    ZeroFillByWord(&eStruct2035280, 96);
    word_20352A2 = 32;
    word_20352A6 = -1;
    ZeroFillByWord(&dword_20352E0, 48);
    ZeroFillByWord(&byte_203EB50, 80);
    dword_203CA48[0] = 0;
    dword_203CA4C = 0;
    result = 0;
    dword_20367E0 = 0;
    return result;
}


// 0x801beb8
int __fastcall sub_801BEB8(int result)
{
    dword_20352C4 |= result;
    return result;
}


// 0x801bec2
int __fastcall sub_801BEC2(int result)
{
    dword_20352C4 &= ~result;
    return result;
}


// 0x801becc
int __fastcall sub_801BECC(int result)
{
    dword_20352C0 |= result;
    return result;
}


// 0x801bed6
int __fastcall sub_801BED6(int result)
{
    dword_20352C0 &= ~result;
    return result;
}


// 0x801bee0
// () ->
int sub_801BEE0()
{
    int (**v0)(void); // r6
    unsigned int v1; // r7
    char v2; // cf
    int result; // r0

    v0 = &off_801BF04;
    v1 = dword_20352C0;
    while ( 1 )
    {
        while ( 1 )
        {
            v2 = v1 & 1;
            v1 >>= 1;
            if ( !v2 )
                break;
            result = (*v0)();
            ++v0;
        }
        if ( !v1 )
            break;
        ++v0;
    }
    return result;
}


// 0x801bf64
int sub_801BF64()
{
    int (**v0)(void); // r6
    unsigned int v1; // r7
    char v2; // cf
    int result; // r0

    v0 = &JumpTable801BF88;
    v1 = dword_20352C4;
    while ( 1 )
    {
        while ( 1 )
        {
            v2 = v1 & 1;
            v1 >>= 1;
            if ( !v2 )
                break;
            result = (*v0)();
            ++v0;
        }
        if ( !v1 )
            break;
        ++v0;
    }
    return result;
}


// 0x801bfec
void nullsub_58()
{
    ;
}


// 0x801bfee
int sub_801BFEE()
{
    return sub_801C002(1);
}


// 0x801bff8
int sub_801BFF8()
{
    return sub_801C002(0);
}


// 0x801c002
int __fastcall sub_801C002(int a1)
{
    int *v1; // r4
    signed int v2; // r6
    signed int v3; // r7
    int result; // r0
    int v5; // r3
    bool v6; // zf
    int *v7; // r0
    int v8; // [sp-4h] [bp-18h]
    int v9; // [sp+0h] [bp-14h]

    v9 = a1;
    v1 = &dword_20352E0;
    v2 = 6;
    v3 = 100755968;
    do
    {
        result = *v1;
        if ( *v1 )
        {
            result = *(v1 + 3);
            if ( result == v9 )
            {
                result = sub_800ED90(v1[1]);
                if ( v5 )
                {
                    if ( v9 != 1
                        || (v8 = result, v6 = sub_802D234() == 1, result = v8, v6)
                        || (v6 = (sub_802D246() & 8) == 0, result = v8, v6) )
                    {
                        if ( result == 0xFFFF )
                            LOWORD(result) = 0;
                        v7 = *(getChip8021DA8(result & 0x1FF) + 8);
                    }
                    else
                    {
                        v7 = dword_872CE94;
                    }
                    result = (loc_8000AC8)(v7, v3, 128);
                }
            }
        }
        v1 += 2;
        v3 += 128;
        --v2;
    }
    while ( v2 );
    return result;
}


// 0x801c06e
int sub_801C06E()
{
    return sub_801C082(1);
}


// 0x801c078
int sub_801C078()
{
    return sub_801C082(0);
}


// 0x801c082
int __fastcall sub_801C082(int a1)
{
    int v1; // r5
    int v2; // r10
    int *v3; // r4
    signed int v4; // r6
    __int16 v5; // r7
    int result; // r0
    int v7; // ST0C_4
    int v8; // r5
    int v9; // r3
    int v10; // r1
    int v11; // r2
    int v12; // r6
    unsigned int v13; // r6
    int v14; // [sp-Ch] [bp-24h]
    int v15; // [sp-8h] [bp-20h]
    signed int v16; // [sp-4h] [bp-1Ch]
    int v17; // [sp+0h] [bp-18h]

    v17 = a1;
    v3 = &dword_20352E0;
    v4 = 6;
    v5 = -21680;
    do
    {
        result = *v3;
        if ( *v3 )
        {
            result = *(v3 + 3);
            if ( result == v17 )
            {
                v7 = v1;
                v8 = v3[1];
                result = sub_801032C();
                v1 = v7;
                if ( !(result & 0x100000) )
                {
                    result = sub_800ED90(v3[1]);
                    if ( v9 )
                    {
                        v16 = v4;
                        v1 = v9;
                        v15 = object_getAllianceDirection(*(*(v2 + oToolkit_S2034880_Ptr) + 13));
                        v14 = object_getFlipDirection(*(v3[1] + 22), *(v3[1] + 23));
                        result = sub_800362C((v3[1] + 52));
                        if ( v11 )
                        {
                            v12 = (((result + *(v3 + 1) * v15 - v15 - 8) & 0x1FF) << 16) + ((v10 + *(v3 + 2)) & 0xFF);
                            do
                            {
                                sub_802FE28(v12 + 0x40000000, v5, 2, v1 + 208);
                                v13 = v12 - (v15 * v14 << 17);
                                result = v13 >> 8 << 8;
                                v12 = (v13 - 2) & 0xFF | result;
                                --v1;
                            }
                            while ( v1 );
                        }
                        v4 = v16;
                    }
                }
            }
        }
        v3 += 2;
        v5 += 4;
        --v4;
    }
    while ( v4 );
    return result;
}


// 0x801c168
int sub_801C168()
{
    char *v0; // r4
    signed int v1; // r6
    int result; // r0
    int v3; // r2
    int v4; // r1
    signed int v5; // r2
    int v6; // r1

    v0 = &byte_203EB50;
    v1 = 4;
    do
    {
        result = 1;
        if ( !(*v0 & 1) )
            goto LABEL_15;
        v3 = *(v0 + 3);
        result = *(v0 + 1);
        v4 = *(v3 + 36);
        if ( *(v3 + 36) )
        {
            v5 = 0;
            if ( result == v4 )
            {
                if ( *(*(*(v0 + 3) + 84) + 8) )
                {
                    v0[8] = 1;
                    v0[9] = 2;
                }
                else
                {
                    if ( !v0[9] )
                        goto LABEL_15;
                    v6 = v0[9] - 1;
                    v0[9] = v6;
                    if ( !v6 )
                    {
                        v0[8] = 0;
                        *(v0 + 4) = 185273099;
                    }
                }
            }
            else
            {
                if ( result >= v4 )
                    v5 = 4;
                result = (*(&off_801C33C + v5))(result, v4);
                *(v0 + 4) = 185273099;
            }
        }
        else
        {
            result = 0;
            *v0 = 0;
        }
        *(v0 + 1) = result;
LABEL_15:
        v0 += 20;
        --v1;
    }
    while ( v1 );
    return result;
}


// 0x801c1d0
int __fastcall sub_801C1D0(int a1, int a2)
{
    int v2; // r4
    int result; // r0

    *(v2 + 8) = 2;
    *(v2 + 9) = 10;
    result = a1 + ((a2 - a1) >> 3) + 2;
    if ( result > a2 )
        result = a2;
    return result;
}


// 0x801c1ea
int __fastcall sub_801C1EA(int a1, int a2)
{
    int v2; // r4
    int result; // r0

    *(v2 + 8) = 1;
    *(v2 + 9) = 1;
    result = a1 - (((a1 - a2) >> 3) + 2);
    if ( result < a2 )
        result = a2;
    return result;
}


// 0x801c202
signed int sub_801C202()
{
    int v0; // r10
    char *v1; // r4
    signed int v2; // r5
    signed int v3; // r6
    int v4; // r3
    signed int result; // r0
    int v6; // r3
    int v7; // r0
    int v8; // r1
    int v9; // r1
    int v10; // r2
    int v11; // [sp-4h] [bp-20h]
    int v12; // [sp+4h] [bp-18h]

    v1 = &byte_203EB50;
    v2 = 100754944;
    v3 = 4;
    v4 = 0;
    do
    {
        result = 2;
        if ( !(*v1 & 2) )
            goto LABEL_11;
        sub_801C296();
        sub_801C304();
        if ( *v1 & 8 )
            v12 = 0;
        v11 = v6;
        if ( *v1 & 4 )
        {
            v7 = v1[4] + v12;
            v8 = v1[5] - (*(*(v0 + oToolkit_CameraPtr) + 52) >> 16);
LABEL_9:
            result = sub_802FE28(((v7 << 16) | v8) & 0x1FF00FF | 0x80004000, v11 - 5328, 2, 223);
            goto LABEL_10;
        }
        result = sub_800362C((*(v1 + 3) + 52));
        if ( v10 )
        {
            v7 = result + v1[4] + v12;
            v8 = v9 + v1[5];
            goto LABEL_9;
        }
LABEL_10:
        v4 = v11;
LABEL_11:
        v1 += 20;
        v4 += 8;
        v2 += 256;
        --v3;
    }
    while ( v3 );
    return result;
}


// 0x801c296
unsigned int sub_801C296()
{
    int v0; // r4
    int v1; // r7
    int v2; // r0
    unsigned int v3; // r0
    signed int v4; // r0
    unsigned int v5; // r1
    unsigned int result; // r0
    signed int v7; // r3
    char v8; // r2

    v2 = *(v0 + 2);
    if ( *v0 & 0x10 )
        v2 = *(*(v0 + 12) + 38) - v2;
    v3 = sub_8000C00(v2);
    *v1 = v3 & 0xF;
    *(v1 + 1) = (v3 >> 4) & 0xF;
    *(v1 + 2) = BYTE1(v3) & 0xF;
    *(v1 + 3) = v3 >> 12;
    v4 = sub_8000C5C(v3);
    *(v1 + 4) = 4 * v4 - 32;
    while ( v4 < 4 )
        *(v1 + v4++) = 10;
    v5 = *(v0 + 16);
    result = *v1;
    *(v0 + 16) = *v1;
    v7 = 0;
    do
    {
        v8 = result & 0xF;
        if ( (result & 0xF) == (v5 & 0xF) )
            v8 = 11;
        *(v1 + v7) = v8;
        result >>= 8;
        v5 >>= 8;
        ++v7;
    }
    while ( v7 < 4 );
    return result;
}


// 0x801c304
int sub_801C304()
{
    int v0; // r4
    int v1; // r5
    int v2; // r7
    int (*(*v3)[10])[3]; // r4
    signed int v4; // r6
    int result; // r0
    int v6; // r0
    int v7; // r2
    int v8; // r1

    v3 = off_801C34C[*(v0 + 8)];
    v4 = 3;
    do
    {
        result = *(v2 + v4);
        if ( result != 11 )
        {
            v6 = (loc_8000AC8)((*v3)[result], v1, 32);
            result = (loc_8000AC8)(v6 + v7, v8 + 128);
        }
        v1 += 32;
        --v4;
    }
    while ( v4 >= 0 );
    return result;
}


// 0x801c368
int sub_801C368()
{
    int v0; // r10
    int v1; // ST00_4
    int v2; // ST00_4

    v1 = sub_802D1B4(*(*(v0 + oToolkit_S2034880_Ptr) + 13));
    sub_801C3A4(v1, 100714880);
    sub_801C3EE(v1, byte_3001670, 0);
    v2 = sub_802D1BE(*(*(v0 + oToolkit_S2034880_Ptr) + 13));
    sub_801C3A4(v2, 100715072);
    return sub_801C3EE(v2, &word_3001684, 1);
}


// 0x801c3a4
int __fastcall sub_801C3A4(int a1, int a2)
{
    int v2; // r6
    int v3; // r0
    unsigned int v4; // r4
    signed int v5; // r7
    int result; // r0

    v2 = a2;
    if ( a1 == 100 )
    {
        v3 = 256;
    }
    else if ( a1 >= 10 )
    {
        v3 = sub_8000C00(a1) | 0xA00;
    }
    else
    {
        v3 = a1 | 0xAA0;
    }
    v4 = v3;
    v5 = 3;
    do
    {
        result = (loc_8000AC8)(off_801D8D8[(v4 >> 4 * (v5 - 1)) & 0xF], v2, 64);
        v2 += 64;
        --v5;
    }
    while ( v5 );
    return result;
}


// 0x801c3ee
int __fastcall sub_801C3EE(signed int a1, int a2, int a3)
{
    signed int v3; // r3
    int v4; // r3
    signed int v5; // r2

    v3 = 0;
    if ( a1 <= 60 )
    {
        v3 = 4;
        if ( a1 <= 25 )
            v3 = 8;
    }
    v4 = v3 + 12 * a3;
    v5 = 20;
    if ( v4 >= 12 )
        v5 = 12;
    return (loc_8000AC4)(*(off_801D92C + v4), a2, v5);
}


// 0x801c416
int __noreturn sub_801C416()
{
    CopyBackgroundTiles(17, 18, 0, word_801D904, 10, &byte_0[2]);
    sub_802FE28(1081606288, 38760, 1, 0);
    return sub_802FE28(1084752016, 38764, 1, 0);
}


// 0x801c470
int sub_801C470()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r1
    int v4; // r2

    result = battle_isPaused();
    if ( v2 )
    {
        result = battle_isTimeStop();
        if ( v2 )
        {
            result = battle_getFlags();
            if ( !(result & 2) )
            {
                result = *(v0 + 34) + *(v0 + 32);
                *(v0 + 32) = result;
                if ( result >= 0x4000 )
                {
                    *(v0 + 32) = 0x4000;
                    result = sub_800A97A(result);
                    if ( !result )
                    {
                        battle_setFlags(2);
                        result = PlaySoundEffect(143, v3, v4);
                    }
                }
            }
        }
    }
    return result;
}


// 0x801c4ae
int sub_801C4AE()
{
    int v0; // r5
    int result; // r0
    int v6; // r1
    int v7; // r2

    result = battle_getFlags();
    if ( !(result & 2) )
    {
        result = sub_800A70C() << 14;
        __asm { SVC         6 }
        *(v0 + 32) = result;
        if ( result == 0x4000 )
        {
            battle_setFlags(2);
            result = PlaySoundEffect(143, v6, v7);
        }
    }
    return result;
}


// 0x801c4e4
int __fastcall sub_801C4E4(int a1)
{
    unsigned __int8 *v1; // r5
    int result; // r0
    unsigned int v3; // r6
    int v4; // r6

    result = sub_800A97A(a1);
    if ( !result )
    {
        v3 = *(v1 + 16);
        if ( v3 < 0x4000 )
        {
            call_sub_3005EBA(7, 1, 3, 37410);
            if ( v3 >> 10 )
                call_sub_3005EBA(7, 1, 3, 37418);
            result = sub_800187C((v3 >> 10) + 7, 1, 3, ((v3 >> 7) & 7) - 28126);
        }
        else
        {
            v4 = *v1 + 1;
            if ( v4 >= 112 )
                LOBYTE(v4) = 0;
            *v1 = v4;
            __asm { SVC         6 }
            call_sub_3005EBA(7, 1, 3, (v4 & 3) - 28110);
            result = sub_80018E0(13, 1, 3, &byte_801C6C0[v4 & 8]);
        }
    }
    return result;
}


// 0x801c576
void __fastcall sub_801C576(int a1)
{
    unsigned __int8 *v1; // r5
    unsigned int v2; // r6
    int v3; // r6

    if ( !sub_800A97A(a1) )
    {
        v2 = *(v1 + 16);
        if ( v2 < 0x4000 )
        {
            call_sub_3005EBA(7, 1, 3, 37410);
            if ( v2 >> 10 )
                call_sub_3005EBA(7, 1, 3, 37418);
            sub_800187C((v2 >> 10) + 7, 1, 3, ((v2 >> 7) & 7) - 28126);
        }
        else
        {
            v3 = *v1 + 1;
            if ( v3 >= 112 )
                LOBYTE(v3) = 0;
            *v1 = v3;
            __asm { SVC         6 }
            call_sub_3005EBA(7, 1, 3, (v3 & 3) - 28110);
        }
    }
}


// 0x801c5f4
signed int sub_801C5F4()
{
    int v0; // r5
    signed int *v1; // r10
    signed int result; // r0
    char v3; // r2
    int v4; // r0
    int v5; // r2

    result = *v1;
    if ( **v1 != 80 )
    {
        *(v0 + 25) = *(v0 + 24);
        v3 = 0;
        v4 = *(v0 + 32);
        if ( v4 >= &loc_1500 )
        {
            v3 = 1;
            if ( v4 >= &loc_2A00 )
            {
                v3 = 2;
                if ( v4 == 0x4000 )
                    v3 = 3;
            }
        }
        *(v0 + 24) = v3;
        result = sub_800A8F8(v4);
        if ( result == 1 )
        {
            result = *(v0 + 24);
            if ( result > *(v0 + 25) )
                result = PlaySoundEffect(*&byte_801C6E8[2 * (result - 1)], byte_801C6E8, v5);
        }
    }
    return result;
}


// 0x801c640
int __fastcall sub_801C640(int a1)
{
    int v1; // r5
    int result; // r0
    unsigned int v3; // r6
    int v4; // r3

    result = sub_800A97A(a1);
    if ( !result )
    {
        call_sub_3005EBA(7, 1, 3, 37410);
        v3 = *(v1 + 32);
        if ( v3 >> 10 )
            call_sub_3005EBA(7, 1, 3, 37418);
        if ( v3 != 0x4000 )
            sub_800187C((v3 >> 10) + 7, 1, 3, ((v3 >> 7) & 7) - 28126);
        v4 = *(v1 + 24);
        if ( !*(v1 + 24) )
            v4 -= 2;
        result = (loc_8000AC8)(&byte_86E1CD8[32 * (v4 - 1)], &unk_3001A80);
    }
    return result;
}


// 0x801c6ee
void __noreturn sub_801C6EE()
{
    int v0; // r0
    int v1; // r1
    int v2; // r2
    int v3; // r3
    int (*v4)[345]; // r0
    int v5; // r1
    int v6; // r7
    unsigned int v7; // r4
    signed int v8; // r3
    signed int v9; // r6
    _WORD *v10; // r2
    unsigned int v11; // r4
    signed int v12; // r3
    _WORD *v13; // r2
    int v14; // r1
    _WORD *v15; // r2
    int v16; // [sp-30h] [bp-44h]
    int v17; // [sp-2Ch] [bp-40h]
    int v18; // [sp-28h] [bp-3Ch]
    int v19; // [sp-24h] [bp-38h]
    int v20; // [sp-20h] [bp-34h]
    int v21; // [sp-1Ch] [bp-30h]
    int v22; // [sp-18h] [bp-2Ch]
    int v23; // [sp-14h] [bp-28h]
    int v24; // [sp-10h] [bp-24h]
    int v25; // [sp-Ch] [bp-20h]
    int v26; // [sp-8h] [bp-1Ch]
    int v27; // [sp-4h] [bp-18h]

    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    call_sub_3005EBA(0, 18, 3, 0);
    v0 = sub_800ED90(dword_20352C8);
    if ( v3 )
    {
        v16 = v0;
        v17 = v1;
        v18 = v2;
        v4 = sub_8027D10(v0);
        v6 = renderTextGfx_8045F8C(v4, v5, byte_203EBA0, 100715264);
        sub_80018E0(0, 18, 3, word_801D944);
        sub_80018E0(0, 19, 3, word_801D954);
        if ( *(getChip8021DA8(v16) + 9) & 2 )
        {
            v7 = sub_8000C00(v17);
            v8 = sub_8000C5C(v7);
            v9 = v8;
            v10 = (&v19 + 2 * v8 - 2);
            do
            {
                *v10 = 2 * (v7 & 0xF) - 11848;
                v10[9] = 2 * (v7 & 0xF) - 11847;
                --v10;
                v7 >>= 4;
                --v8;
            }
            while ( v8 );
            if ( v18 )
            {
                v11 = sub_8000C00(v18);
                v12 = sub_8000C5C(v11);
                v13 = (&v16 + 2 * v9 + 12);
                *v13 = -11826;
                v13[9] = -11825;
                v10 = &v13[v12];
                v9 += v12 + 1;
                do
                {
                    *v10 = 2 * (v11 & 0xF) - 11848;
                    v10[9] = 2 * (v11 & 0xF) - 11847;
                    --v10;
                    v11 >>= 4;
                    --v12;
                }
                while ( v12 );
            }
            sub_8012A38(dword_20352C8, v16, v10, 0);
            if ( v14 )
            {
                v15 = (&v16 + 2 * v9 + 12);
                *v15 = -11822;
                v15[9] = -11821;
                v15[1] = -11820;
                v15[10] = -11819;
            }
            CopyBackgroundTiles(v6, 18, 3, &v19, 9, &byte_0[2]);
        }
    }
}


// 0x801c840
int __fastcall sub_801C840(int a1)
{
    int v1; // r5
    int v2; // r10
    int v3; // r7
    int result; // r0
    char v5; // zf
    int v6; // r1
    int v7; // r2
    int v8; // r0
    signed int v9; // r1
    int v10; // r3
    int v11; // r3

    v3 = *(v1 + 72);
    if ( sub_802D234() != 6 || (result = 128, (v3 = *(*(v2 + oToolkit_S2034880_Ptr) + 128)) != 0) )
    {
        if ( !battle_isBattleOver() )
        {
            battle_isPaused();
            if ( v5 )
            {
                v6 = *(v3 + 36);
                v7 = *(v3 + 38) >> 2;
                if ( v6 <= v7 )
                {
                    v8 = *(v1 + 6) + 1;
                    *(v1 + 6) = v8;
                    if ( v8 >= 45 )
                    {
                        *(v1 + 6) = 0;
                        PlaySoundEffect(132, v6, v7);
                    }
                }
            }
        }
        if ( *(v1 + 28) )
            *(v1 + 36) = *(v3 + 36);
        v9 = *(v1 + 38);
        if ( v9 == 0xFFFF )
        {
            v9 = *(v3 + 36);
            v10 = *(v1 + 36);
        }
        else
        {
            v10 = *(v1 + 38);
            *(v1 + 36) = v10;
        }
        if ( v9 == v10 )
        {
            if ( !*(v1 + 5) || (result = *(v1 + 5) - 1, *(v1 + 5) = result, !result) )
            {
                if ( *(v1 + 38) != 0xFFFF || (result = 2, v9 > (*(v3 + 38) >> 2)) )
                    result = 0;
                *(v1 + 3) = result;
            }
        }
        else
        {
            if ( v9 > v10 )
            {
                *(v1 + 3) = 1;
                v11 = v10 + ((v9 - v10) >> 3) + 4;
                if ( v11 > v9 )
                    LOWORD(v11) = v9;
            }
            else
            {
                *(v1 + 3) = 2;
                v11 = v10 - (((v10 - v9) >> 3) + 4);
                if ( v11 < v9 )
                    LOWORD(v11) = v9;
            }
            *(v1 + 36) = v11;
            result = 15;
            *(v1 + 5) = 15;
        }
    }
    return result;
}


// 0x801c906
int __noreturn sub_801C906()
{
    int v0; // r5
    signed int v1; // r0
    char v2; // r0
    int v3; // r2
    unsigned int v4; // r2
    signed int v5; // r3
    int v7; // [sp+0h] [bp-20h]
    int v8; // [sp+8h] [bp-18h]

    v1 = sub_8000C00(*(v0 + 36));
    v2 = sub_8000C5C(v1);
    v4 = v3 | (43690 << 4 * v2);
    v5 = 6;
    do
    {
        *(&v7 + v5) = 2 * (v4 & 0xF) - 11872;
        *(&v8 + v5) = 2 * (v4 & 0xF) - 11871;
        v4 >>= 4;
        v5 -= 2;
    }
    while ( v5 >= 0 );
    CopyBackgroundTiles(*(v0 + 1) + 1, *(v0 + 2), 3, &v7, 4, &byte_0[2]);
    return (loc_8000AC8)(&dword_86E1C78[8 * *(v0 + 3)], byte_3001B00, 32);
}


// 0x801c984
BOOL sub_801C984()
{
    int v0; // r5
    int v1; // r0
    BOOL result; // r0

    v1 = sub_802CE60(0);
    if ( v1 )
        LOBYTE(v1) = 1;
    *(v0 + 7) = v1;
    result = sub_802CE60(1) != 0;
    *(v0 + 9) = result;
    return result;
}


// 0x801c9a4
int sub_801C9A4()
{
    unsigned __int8 *v0; // r5
    int v1; // r1
    int v2; // r1
    int result; // r0

    v1 = v0[7];
    if ( v0[8] != v1 )
    {
        v0[8] = v1;
        sub_801C9C8(6, v1);
    }
    v2 = v0[9];
    result = v0[10];
    if ( result != v2 )
    {
        v0[10] = v2;
        sub_801C9C8(26, v2);
    }
    return result;
}


// 0x801c9c8
void __fastcall __noreturn sub_801C9C8(int a1, int a2)
{
    CopyBackgroundTiles(a1, 2, 3, &word_801D964[8 * a2], 4, &byte_0[2]);
}


// 0x801c9e4
int __noreturn sub_801C9E4()
{
    int v0; // r2
    int v1; // r3

    sub_802FE28(-2140913601, 58224, 0, 6);
    return sub_802FE28(8683583, 58232, v0, v1);
}


// 0x801ca0c
int sub_801CA0C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 11) - 1;
    *(v0 + 11) = result;
    if ( !result )
    {
        sub_801BED6(256);
        result = sub_801DACC(256);
    }
    return result;
}


// 0x801ca28
int sub_801CA28()
{
    _BYTE *v0; // r5
    int result; // r0

    result = (*v0 + 1) & 0x3F;
    *v0 = result;
    return result;
}


// 0x801ca34
void sub_801CA34()
{
    unsigned __int8 *v0; // r5
    int v1; // r6
    signed int v2; // r0

    v1 = *(&dword_801CA7C + v0[11]);
    v2 = *v0;
    if ( !(v2 & 0x1F) )
    {
        if ( v2 >= 32 )
            call_sub_3005EBA(22 - v1, 4, 3, 0);
        else
            CopyBackgroundTiles(22 - v1, 4, 3, word_801D984, v1 + 8, &byte_0[2]);
    }
}


// 0x801ca80
int __fastcall sub_801CA80(int result)
{
    int v1; // r5
    int v2; // r1
    unsigned __int16 *v3; // r6
    int v4; // r2
    int v5; // r0
    int v6; // r3
    int v7; // r0
    int v8; // r3
    int v9; // ST00_4
    int v10; // [sp+0h] [bp-38h]
    __int16 v11; // [sp+12h] [bp-26h]

    v2 = 0;
    v3 = (v1 + 40);
    do
    {
        v4 = *v3;
        if ( v4 == 255 )
            break;
        v5 = 9 * v2 + 53722;
        v6 = 0;
        do
        {
            *(&v10 + v6) = v5;
            v5 += 2;
            v6 += 2;
        }
        while ( v6 != 18 );
        v7 = 9 * v2 + 53723;
        v8 = 0;
        do
        {
            *(&v11 + v8) = v7;
            v7 += 2;
            v8 += 2;
        }
        while ( v8 != 18 );
        v9 = v2;
        CopyBackgroundTiles(30 - v4, v2, 0, &v10, 9, &byte_0[2]);
        v2 = v9 + 2;
        ++v3;
    }
    while ( v9 != 6 );
    return result;
}


// 0x801cadc
int sub_801CADC() { // could not decompile
    asm(".func\
    .thumb_func\
    sub_801CADC:\
        push {lr}\
        ldrb r0, [r5,#0x17]\
        cmp r0, #0xff\
        bne loc_801CAF0\
        mov r0, r10\
        ldr r0, [r0,#oToolkit_S2034880_Ptr]\
        ldrb r0, [r0,#0xd]\
        mov r1, #0x29 \
        bl sub_80136CC\
    loc_801CAF0:\
        ldrb r1, [r5,#0x14]\
        cmp r1, #0\
        beq loc_801CB10\
        sub r1, #1\
        strb r1, [r5,#0x14]\
        bne loc_801CB02\
        strb r0, [r5,#0x15]\
        cmp r0, #0\
        beq loc_801CB2C\
    loc_801CB02:\
        mov r2, #2\
        tst r1, r2\
        beq loc_801CB22\
        ldrb r0, [r5,#0x1f]\
        cmp r0, #0\
        bne loc_801CB26\
        b loc_801CB2C\
    loc_801CB10:\
        ldrb r1, [r5,#0x15]\
        cmp r0, r1\
        beq loc_801CB1E\
        cmp r1, #0xff\
        beq loc_801CB1E\
        mov r1, #0xa\
        strb r1, [r5,#0x14]\
    loc_801CB1E:\
        cmp r0, #0\
        beq loc_801CB2C\
    loc_801CB22:\
        cmp r0, #0\
        beq loc_801CB2C\
    loc_801CB26:\
        bl sub_801CC34\
        b loc_801CB30\
    loc_801CB2C:\
        bl sub_801CB38\
    loc_801CB30:\
        strb r0, [r5,#0x15]\
        bl sub_801CC94\
        pop {pc}\
    .endfunc // sub_801CADC"
    );
}

// 0x801cb38
int __fastcall sub_801CB38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int (__fastcall *a9)(int))
{
    _BYTE *v9; // r5
    int v10; // r0
    char v11; // r1
    int v12; // r1
    int v13; // r1
    int v14; // r2
    char v15; // r1
    int v16; // r0
    int v17; // r1
    int v18; // r2
    int v19; // r3

    if ( v9[19] == 255 )
    {
        v9[19] = 0;
        v10 = sub_801E6A8();
        v9[16] = v10;
        v9[17] = v10;
        v9[14] = v11;
        v9[13] = v11;
    }
    else
    {
        v10 = v9[76];
        if ( v9[76] )
        {
            v12 = v9[14];
        }
        else
        {
            if ( !v9[23] || v9[22] )
                sub_801E69C();
            else
                v10 = sub_801E6A8();
            if ( v9[20] )
            {
                v9[16] = v10;
            }
            else
            {
                v14 = v9[16];
                if ( v10 == v14 )
                {
                    if ( v13 != v9[14] )
                    {
                        v9[13] = v9[14];
                        v9[14] = v13;
                    }
                }
                else
                {
                    v9[17] = v14;
                    v9[13] = v9[14];
                    v9[16] = v10;
                    v9[14] = v13;
                    v9[19] = 12;
                }
            }
        }
    }
    if ( v10 < 5 && v10 != 3 )
    {
        v15 = v9[19];
        if ( v9[19] )
        {
            v9[19] = v15 - 1;
            if ( v15 & 2 )
                v10 = v9[17];
        }
    }
    v16 = (loc_8000AC8)(*(&off_801CD08 + v10), 100759168, byte_100);
    return sub_801CBD0(v16, v17, v18, v19, a5, a6, a7, a8, a9);
}


// 0x801cbd0
int __fastcall sub_801CBD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int (__fastcall *a9)(int))
{
    int v9; // r4
    unsigned __int8 *v10; // r5
    char v11; // r7
    int v12; // r1
    unsigned __int8 v13; // r1
    int *v14; // r0
    int varg_r3; // [sp+Ch] [bp-4h]

    varg_r3 = a4;
    if ( sub_801D814(a1) )
    {
        v12 = v10[14];
        if ( v11 & 2 )
            v12 = v10[13];
        (loc_8000AC8)(&dword_872E994[32 * (10 - v12)], 100759424, 128, varg_r3);
    }
    else
    {
        (loc_8000AC8)(dword_872D914, 0x6017780u, byte_80, varg_r3);
    }
    if ( v10[16] == 3 && (v13 = v10[19]) != 0 && (v10[19] = v13 - 1, v13 & 2) )
        v14 = dword_801CD80;
    else
        v14 = &dword_872F114[8 * v9];
    (loc_8000AC8)(v14, byte_30016D0, 32);
    return a9(a5);
}


// 0x801cc34
void __fastcall sub_801CC34(int a1)
{
    _BYTE *v1; // r5
    int v2; // r2
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r0
    signed int v7; // r1
    char v8; // t1
    int v9; // [sp+0h] [bp-40h]

    v2 = a1;
    v3 = *(dword_801CDDC + a1 - 1);
    v9 = v3;
    if ( v2 != v1[21] )
    {
        (loc_8000AC8)(&byte_872D094[v3 * byte_100], 100759168);
        (loc_8000AC8)(byte_872D014, v4 + v5, 128);
        v1[16] = -1;
    }
    v6 = sub_801E6A8();
    v7 = 0;
    if ( v1[23] == 255 && v6 == 3 )
        v7 = 1;
    v8 = v1[16];
    v1[16] = v7;
    (loc_8000AC8)(&dword_872D694[16 * v9 + 8 * v7], byte_30016D0);
}


// 0x801cc94
signed int sub_801CC94()
{
    int v0; // r5
    signed int result; // r0
    signed __int16 v2; // r1
    int v3; // r0
    int v4; // r1

    result = *(v0 + 29);
    if ( !*(v0 + 29) )
    {
        v2 = *(v0 + 56) - 1;
        if ( *(v0 + 56) != 1 )
        {
LABEL_10:
            *(v0 + 56) = v2;
            return result;
        }
        if ( *(v0 + 21) )
        {
            result = *(v0 + 23);
            if ( result != 255 )
                goto LABEL_9;
        }
        else if ( *(v0 + 30) )
        {
            goto LABEL_8;
        }
        v3 = sub_80103EC();
        result = sub_800FE52(v3);
        if ( !result )
        {
LABEL_9:
            v2 = 20;
            goto LABEL_10;
        }
LABEL_8:
        *(v0 + 29) = (GetPositiveSignedRNG1() & 1) + 1;
        result = 12;
        *(v0 + 15) = 12;
        goto LABEL_9;
    }
    v4 = *(v0 + 15);
    *(v0 + 15) = v4 - 1;
    if ( v4 == 1 )
    {
        --*(v0 + 29);
        *(v0 + 15) = 12;
    }
    result = 2;
    if ( v4 & 2 )
        result = (loc_8000AC8)(dword_801CDA4, byte_30016D0, 32);
    return result;
}


// 0x801cdec
int sub_801CDEC()
{
    int v0; // r5
    int result; // r0
    int v2; // r4
    int v3; // r2
    int v4; // r3

    result = *(v0 + 15);
    if ( result != 6 && result != 5 )
    {
        v2 = *(v0 + 18) << 16;
        sub_802FE28(v2 - 2147467246, 52148, 0, 0);
        result = sub_802FE28(v2 + 1075838994, 52156, v3, v4);
    }
    return result;
}


// 0x801ce28
int sub_801CE28()
{
    int v0; // r0

    v0 = byte_2036847 + 1;
    if ( v0 != 5 || byte_2036840 != 4 || byte_2036848 != 2 && byte_2036848 != 4 )
        ++byte_2036847;
    return (*(&off_801CE5C + byte_2036840))();
}


// 0x801ce6c
signed int sub_801CE6C()
{
    _BYTE *v0; // r5
    signed int result; // r0

    sub_802FE7A(0, 0x40u, 224 - 32 * v0[7], v0[6]);
    result = v0[7];
    if ( result >= 5 )
    {
        *v0 = 4;
        result = 0;
        v0[7] = 0;
    }
    return result;
}


// 0x801ce92
signed int sub_801CE92()
{
    _BYTE *v0; // r5
    int v1; // r0
    unsigned int v2; // r2
    signed int result; // r0

    v1 = v0[7];
    if ( v1 == 1 )
        goto LABEL_8;
    if ( v1 == 2 )
    {
LABEL_9:
        v2 = 56;
        goto LABEL_10;
    }
    if ( v1 != 3 )
    {
        if ( v1 != 46 )
        {
            if ( v1 != 47 )
            {
                if ( v1 != 48 )
                    goto LABEL_11;
                goto LABEL_7;
            }
LABEL_8:
            v2 = 52;
            goto LABEL_10;
        }
        goto LABEL_9;
    }
LABEL_7:
    v2 = 64;
LABEL_10:
    sub_802FE7A(0, 0x40u, v2, v0[6]);
LABEL_11:
    result = v0[7];
    if ( result >= 48 )
    {
        *v0 = 8;
        result = 0;
        v0[7] = 0;
    }
    return result;
}


// 0x801ced2
signed int sub_801CED2()
{
    _BYTE *v0; // r5
    signed int result; // r0

    sub_802FE7A(0, 0x40u, 32 * v0[7] + 64, v0[6]);
    result = v0[7];
    if ( result >= 5 )
    {
        sub_802FE6A(v0[6]);
        result = 12;
        *v0 = 12;
    }
    return result;
}


// 0x801cefa
int sub_801CEFA()
{
    sub_801BED6(0x8000);
    return sub_801DACC(0x8000);
}


// 0x801cf0e
int sub_801CF0E()
{
    return (*(&off_801CF28 + byte_2036848))();
}


// 0x801cf3c
// () -> void
int sub_801CF3C()
{
    unsigned __int8 *v0; // r7
    int v1; // r0
    __int16 v2; // r1
    int v3; // r2
    int v4; // r3
    signed int v5; // r4
    int v6; // r6
    __int16 v7; // r1
    int result; // r0

    v1 = (v0[3] + (v0[2] << 16) - 2147467008) | (v0[6] << 25);
    v2 = -19600;
    v3 = 0;
    v4 = 0;
    v5 = 5;
    do
    {
        v6 = v1;
        sub_802FE28(v1, v2, v3, v4);
        v1 = v6 + 0x200000;
        v2 = v7 + 8;
        --v5;
    }
    while ( v5 );
    result = v0[8];
    if ( result == 1 )
        result = sub_802FE28((v0[5] + (v0[4] << 16) + 1073742080) | (v0[6] << 25), 45976, 0, 0);
    return result;
}


// 0x801cf9e
int sub_801CF9E()
{
    unsigned __int8 *v0; // r7
    int result; // r0
    __int16 v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r4
    int v6; // r6
    __int16 v7; // r1
    signed int v8; // r6
    int v9; // r2
    int v10; // r3
    signed int v11; // r6

    result = (v0[3] + (v0[2] << 16) + 33024) | (v0[6] << 25);
    v2 = -19600;
    v3 = 0;
    v4 = 6;
    v5 = v0[9];
    do
    {
        v6 = result;
        sub_802FE28(result, v2, v3, v4);
        result = v6 + 0x80000;
        v2 = v7 + 2;
        --v5;
    }
    while ( v5 );
    if ( v0[10] )
    {
        v8 = v6 + 491264 - ((4 - v0[10]) << 19) - 2147467008;
        sub_802FE28(v8, 45952, v3, v4);
        result = v8 + 0x200000;
        if ( v0[11] )
        {
            v11 = result - ((4 - v0[11]) << 19);
            sub_802FE28(v11, 45960, v9, v10);
            result = v11 + 0x200000;
        }
        if ( v0[12] )
            result = sub_802FE28(result & 0x3FFF3FFF | 0x40000100, 45968, v9, v10);
    }
    return result;
}


// 0x801d048
void sub_801D048()
{
    unsigned __int8 *v0; // r7
    int v1; // r1
    int v2; // r2
    int v3; // r3
    int v4; // [sp+0h] [bp-14h]

    sub_801CF3C();
    if ( *v0 < 8 )
    {
        renderTextGfx_8045F8C(byte_86F0374, 2, byte_203C4E0, 100701024);
        CopyBackgroundTiles(14, 5, 3, dword_801D190, 2, &byte_0[2]);
        sub_801D12A(*(v0 + 6), v1, v2, v3, v4);
    }
    if ( !v0[14] )
    {
        v0[14] = 1;
        call_sub_3005EBA(9, 5, 3, 0);
    }
}


// 0x801d12a
void __fastcall __noreturn sub_801D12A(unsigned int a1, int a2, int a3, int a4, int a5)
{
    int v5; // lr
    unsigned int v6; // r4
    signed int v7; // r0
    unsigned int v8; // r2
    signed int v9; // r3
    int v10; // r4
    unsigned int v11; // r2
    int v12; // r6
    int v13; // r2
    int v14; // r3
    int v15; // r1
    int v16; // r1
    int v17; // [sp-Ch] [bp-Ch]
    int v18; // [sp-8h] [bp-8h]
    int v19; // [sp-4h] [bp-4h]

    v6 = a1;
    v7 = sub_8000C5C(a1);
    v8 = v6;
    v9 = 2;
    do
    {
        v10 = (2 * (v8 & 0xF) + 53689) << 16;
        v11 = v8 >> 4;
        v19 = (2 * (v11 & 0xF) + 53689) | v10;
        v8 = v11 >> 4;
        --v9;
    }
    while ( v9 );
    v17 = v19 - 65537;
    v18 = a5 - 65537;
    v12 = 2 * (4 - v7);
    v13 = dword_801D1A4[v12];
    v14 = dword_801D1A4[v12 + 1];
    v15 = 0;
    do
    {
        *(&v17 + v15) &= v13;
        v16 = v15 + 4;
        *(&v17 + v16) &= v14;
        v15 = v16 + 4;
    }
    while ( v15 != 16 );
    JUMPOUT(__CS__, v5);
}


// 0x801d1d8
int sub_801D1D8()
{
    bool v0; // zf
    int result; // r0

    result = byte_2036857 - 1;
    v0 = byte_2036857-- == 1;
    if ( v0 )
    {
        sub_801BED6(0x10000);
        result = sub_801DACC(0x10000);
    }
    return result;
}


// 0x801d1f6
int __noreturn sub_801D1F6()
{
    int result; // r0
    __int16 v1; // r1
    int v2; // r2
    int v3; // r3
    int v4; // r4
    int v5; // r6
    __int16 v6; // r1
    signed int v7; // r6
    int v8; // r2
    int v9; // r3
    signed int v10; // r6

    result = HIBYTE(word_2036852) + (word_2036852 << 16) + 0x8000;
    v1 = -19564;
    v2 = 0;
    v3 = 6;
    v4 = byte_2036859;
    do
    {
        v5 = result;
        sub_802FE28(result, v1, v2, v3);
        result = v5 + 0x80000;
        v1 = v6 + 2;
        --v4;
    }
    while ( v4 );
    if ( byte_203685A )
    {
        v7 = v5 + 491520 - ((4 - byte_203685A) << 19) - 2147467264;
        sub_802FE28(v7, 45988, v2, v3);
        result = v7 + 0x200000;
        if ( byte_203685B )
        {
            v10 = result - ((4 - byte_203685B) << 19);
            sub_802FE28(v10, 45996, v8, v9);
            result = v10 + 0x200000;
        }
        if ( byte_203685C )
            result = sub_802FE28(result & 0x3FFF3FFF | 0x40000000, 45968, v8, v9);
    }
    return result;
}


// 0x801d2a0
void sub_801D2A0()
{
    ;
}


// 0x801d2a4
void __noreturn sub_801D2A4()
{
    __int16 v0; // r0
    int v1; // [sp+0h] [bp-18h]
    int v2; // [sp+4h] [bp-14h]

    CopyBackgroundTiles(1, 18, 0, word_801D9B4, 28, &byte_0[2]);
    v2 = sub_802E066(*(*(v1 + 72) + 22));
    v0 = sub_802E440(*(*(v1 + 72) + 22));
    sub_801D344(v0, 0, 0, v2);
}


// 0x801d344
int __fastcall __noreturn sub_801D344(__int16 a1, int a2, int a3, signed int a4)
{
    int v4; // r0
    int (*v5)[345]; // r0
    int v6; // r1
    signed int v7; // r3
    signed int v8; // r3
    int (*v9)[320]; // r0
    __int16 v11; // [sp+0h] [bp-24h]
    int v12; // [sp+4h] [bp-20h]
    int v13; // [sp+8h] [bp-1Ch]
    signed int v14; // [sp+Ch] [bp-18h]

    v4 = a1 & 0x1FF;
    v11 = v4;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    if ( v4 == 511 )
    {
        sub_801D3F8(511, a2 + 100714816, a2, 10);
        v5 = byte_86F0300;
        v6 = 28;
    }
    else
    {
        v7 = *(getChip8021DA8(v4) + 7);
        if ( v7 > 2 )
            v7 = 0;
        v8 = v7;
        v9 = off_801D3C0[v8];
        if ( v14 < *(&off_801D3D8 + v8 * 4) )
            v9 = (v9 + 640);
        (loc_8000AC8)(v9, v12 + 100714816, dword_280);
        v5 = sub_8027D10(v11);
    }
    return renderTextGfx_8045F8C(v5, v6, &unk_203A380 + v13, v13 + 100716736);
}


// 0x801d3f8
void __fastcall sub_801D3F8(int a1, int a2, int a3, int a4)
{
    char *v4; // r0
    int v5; // r4

    v4 = byte_801D410;
    v5 = a4;
    do
    {
        v4 = (loc_8000AC8)(v4);
        --v5;
    }
    while ( v5 );
}


// 0x801d450
int sub_801D450()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r1

    result = battle_isPaused();
    if ( !result )
    {
        result = battle_isTimeStop();
        if ( v2 )
        {
            result = *(v0 + 52) + 1;
            if ( result >= 6 )
            {
                v3 = *(v0 + 54) + 1;
                if ( v3 >= 6 )
                    LOWORD(v3) = 0;
                *(v0 + 54) = v3;
                result = 0;
            }
            *(v0 + 52) = result;
        }
    }
    return result;
}


// 0x801d47a
int sub_801D47A()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    signed int v3; // r1

    (loc_8000AC8)(dword_86E98CC + (*(v0 + 54) & 1) * &byte_40, 100759808);
    v2 = 5242880 * *(sub_802E070(*(*(v1 + oToolkit_S2034880_Ptr) + 13)) + 31);
    v3 = *(v0 + 54);
    if ( v3 >= 3 )
        v3 -= 3;
    sub_802FE28(*(&dword_801D510 + v3) - 2147204992 + v2 + 1310720, 50112, 3, 0);
    sub_802FE28(v2 + 32912, 50120, 3, 0);
    return sub_802FE28((v2 + 4751504) | 0x10000000, 50120, 3, 0);
}


// 0x801d514
int sub_801D514()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 50) - 1;
    *(v0 + 50) = result;
    if ( result )
    {
        if ( result & 0xF )
            return result;
        if ( result & 0x10 )
            return sub_801DA48(0x100000);
    }
    else
    {
        sub_801BED6(0x100000);
    }
    return sub_801DACC(0x100000);
}


// 0x801d548
int sub_801D548()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 27) - 1;
    *(v0 + 27) = result;
    if ( !result )
    {
        sub_801BED6(0x200000);
        result = sub_801DACC(0x200000);
    }
    return result;
}


// 0x801d564
int __noreturn sub_801D564()
{
    sub_802FE28(1080819712, 54120, 0, 0);
    return sub_802FE28(8159232, 54124, 0, 0);
}


// 0x801d590
char *sub_801D590()
{
    int v0; // r10
    char *result; // r0
    signed int v2; // r4
    unsigned int v3; // r0
    int v4; // r7
    int v5; // r6
    int v6; // r0
    int v7; // [sp-4h] [bp-14h]

    result = sub_802E070(*(*(v0 + oToolkit_S2034880_Ptr) + 13));
    if ( *(result + 27) )
    {
        v7 = *(result + 27);
        (loc_8000AC8)(dword_86E958C, 100759168, 128);
    }
    else
    {
        if ( !*(result + 28) )
            return result;
        v7 = *(result + 28);
        (loc_8000AC8)(dword_86E960C, 100759168, 96);
        (loc_8000AC8)(dword_86A5D60, 100759264, 32);
    }
    (loc_8000AC8)(&dword_86E966C, 100759296, 32);
    v2 = 0;
    v3 = sub_8000C00(v7);
    v4 = v3 & 0xF;
    v3 >>= 4;
    v5 = v3 & 0xF;
    v6 = v3 >> 4;
    if ( v6 )
    {
        v2 = 1;
        sub_801D61A(v6);
    }
    sub_801D61A(v5);
    result = sub_801D61A(v4);
    if ( !v2 )
        result = (loc_8000AC8)(dword_86A5D60, 100759392, 32);
    return result;
}


// 0x801d61a
int __fastcall sub_801D61A(int a1)
{
    return (loc_8000AC8)(&off_86E968C + 8 * a1);
}


// 0x801d65c
char *sub_801D65C()
{
    int v0; // r5
    char *v1; // r0
    char *result; // r0
    int v3; // r1
    int v4; // r2
    __int16 v5; // r0
    unsigned __int8 v6; // r1
    signed int v7; // ST00_4

    v1 = sub_8010018(*(*(v0 + 72) + 22));
    result = *&v1[2 * (*v1 + 1)];
    if ( result == 0xFFFF )
    {
        result = sub_802E070(*(*(v0 + 72) + 22));
        if ( *(result + 27) || *(result + 28) )
        {
            result = sub_800362C((*(v0 + 72) + 52));
            if ( v4 )
            {
                v5 = sub_801D6D8(result, v3);
                v7 = ((v5 & 0x1FF) << 16) + v6 + 1073758208;
                sub_802FE28(v7, 51124, 2, 0);
                result = sub_802FE28(v7 + 9, 51128, 2, 0);
            }
        }
    }
    return result;
}


// 0x801d6d8
int __fastcall sub_801D6D8(int a1, int a2)
{
    int v2; // r5
    int v3; // ST00_4
    int v4; // ST04_4
    char *v5; // r3
    int result; // r0
    int v7; // r1

    v3 = a1;
    v4 = a2;
    v5 = &dword_801D700 + 2 * sub_80136CC(*(*(v2 + 72) + 22), 41);
    result = v3 + *v5;
    v7 = v4 + v5[1];
    return result;
}


// 0x801d71a
int sub_801D71A()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    int v3; // r7
    signed int v4; // r1
    int v5; // r3
    int v6; // r3

    result = 144;
    v3 = *(*(v1 + oToolkit_S2034880_Ptr) + 144);
    if ( v3 )
    {
        v4 = *(v3 + 36);
        v5 = *(v0 + 80);
        if ( v4 == v5 )
        {
            if ( *(v0 + 84) )
            {
                result = *(v0 + 84) - 1;
                *(v0 + 84) = result;
            }
            else
            {
                result = 2;
                if ( v4 > (*(v3 + 38) >> 2) )
                    result = 0;
                *(v0 + 82) = result;
            }
        }
        else
        {
            if ( v4 > v5 )
            {
                *(v0 + 82) = 1;
                v6 = v5 + ((v4 - v5) >> 3) + 4;
                if ( v6 > v4 )
                    LOWORD(v6) = v4;
            }
            else
            {
                *(v0 + 82) = 2;
                v6 = v5 - (((v5 - v4) >> 3) + 4);
                if ( v6 < v4 )
                    LOWORD(v6) = v4;
            }
            *(v0 + 80) = v6;
            result = 15;
            *(v0 + 84) = 15;
        }
    }
    return result;
}


// 0x801d792
int __noreturn sub_801D792()
{
    int v0; // r5
    signed int v1; // r0
    char v2; // r0
    int v3; // r2
    unsigned int v4; // r2
    signed int v5; // r3
    int v7; // [sp+0h] [bp-20h]
    int v8; // [sp+8h] [bp-18h]

    v1 = sub_8000C00(*(v0 + 80));
    v2 = sub_8000C5C(v1);
    v4 = v3 | (43690 << 4 * v2);
    v5 = 6;
    do
    {
        *(&v7 + v5) = 2 * (v4 & 0xF) - 15968;
        *(&v8 + v5) = 2 * (v4 & 0xF) - 15967;
        v4 >>= 4;
        v5 -= 2;
    }
    while ( v5 >= 0 );
    CopyBackgroundTiles(25, 0, 3, &v7, 4, &byte_0[2]);
    return (loc_8000AC8)(&dword_86E1C78[8 * *(v0 + 82)], &unk_3001AE0, 32);
}


// 0x801d814
signed int __fastcall sub_801D814(int a1)
{
    signed int v1; // r4
    int v2; // r0
    char v3; // zf

    v1 = 0;
    v2 = sub_802D234();
    if ( v2 != 1 )
    {
        if ( v2 == 5
            || (TestEventFlagFromImmediate(1, 99), v3)
            && (sub_802E09A(), v3)
            && !(sub_802D246() & 0x200000)
            && (TestEventFlagFromImmediate(0, 224), !v3) )
        {
            v1 = 1;
        }
    }
    return v1;
}


// 0x801da24
u32 sub_801DA24()
{
    int v0; // r10
    u32 result; // r0

    *(*(v0 + oToolkit_RenderInfoPtr) + 10) = 7945;
    decomp_initGfx_8000B8E(&off_801ECB4);
    result = sub_80103EC();
    dword_20352C8 = result;
    return result;
}


// 0x801da48
int __fastcall sub_801DA48(int result)
{
    int (**v1)(void); // r6
    unsigned int v2; // r7
    char v3; // cf

    v1 = &off_801DA6C;
    v2 = result;
    while ( 1 )
    {
        while ( 1 )
        {
            v3 = v2 & 1;
            v2 >>= 1;
            if ( !v3 )
                break;
            result = (*v1)();
            ++v1;
        }
        if ( !v2 )
            break;
        ++v1;
    }
    return result;
}


// 0x801dacc
int __fastcall sub_801DACC(int result)
{
    int (**v1)(void); // r6
    unsigned int v2; // r7
    char v3; // cf

    v1 = &off_801DAF0;
    v2 = dword_20352C4 & result;
    while ( 1 )
    {
        while ( 1 )
        {
            v3 = v2 & 1;
            v2 >>= 1;
            if ( !v3 )
                break;
            result = (*v1)();
            ++v1;
        }
        if ( !v2 )
            break;
        ++v1;
    }
    return result;
}


// 0x801db54
int sub_801DB54()
{
    return sub_801BEC2(1);
}


// 0x801db60
int sub_801DB60()
{
    return sub_801BEB8(1);
}


// 0x801db6c
int sub_801DB6C()
{
    return sub_801BEC2(2);
}


// 0x801db78
int sub_801DB78()
{
    return sub_801BEB8(2);
}


// 0x801db84
int sub_801DB84()
{
    int v0; // r5
    int result; // r0
    int *v2; // r4
    signed int v3; // r3
    int *v4; // r4
    signed int v5; // r3
    char v6; // r1

    result = battle_networkInvert(*(v0 + 22));
    v2 = &dword_20352E0;
    v3 = 6;
    while ( !*v2 || v2[1] != v0 )
    {
        v2 += 2;
        if ( !--v3 )
        {
            v4 = &dword_20352E0;
            v5 = 6;
            while ( *v4 )
            {
                v4 += 2;
                if ( !--v5 )
                    return 1;
            }
            *(v4 + 3) = result;
            *(v4 + 1) = sub_8018810(*(v0 + 40), 3, *(v0 + 22), *(v0 + 23));
            *(v4 + 2) = -v6 - 8;
            v4[1] = v0;
            result = 1;
            *v4 = 1;
            return result;
        }
    }
    return result;
}


// 0x801dbd4
int sub_801DBD4()
{
    int v0; // r5
    int *v1; // r4
    signed int v2; // r3
    int result; // r0
    char v4; // r1

    v1 = &dword_20352E0;
    v2 = 6;
    while ( !*v1 || v1[1] != v0 )
    {
        v1 += 2;
        if ( !--v2 )
            return 1;
    }
    result = sub_8018810(*(v0 + 40), 3, *(v0 + 22), *(v0 + 23));
    *(v1 + 1) = result;
    *(v1 + 2) = -v4 - 8;
    return result;
}


// 0x801dc06
signed int __fastcall sub_801DC06(signed int result, char a2)
{
    int v2; // r5
    int *v3; // r4
    signed int v4; // r3

    v3 = &dword_20352E0;
    v4 = 6;
    while ( !*v3 || v3[1] != v2 )
    {
        v3 += 2;
        if ( !--v4 )
            return 1;
    }
    *(v3 + 1) = result;
    *(v3 + 2) = a2 - 8;
    return result;
}


// 0x801dc36
signed int sub_801DC36()
{
    int v0; // r5
    int *v1; // r4
    signed int v2; // r3
    signed int result; // r0

    v1 = &dword_20352E0;
    v2 = 6;
    while ( !*v1 || v1[1] != v0 )
    {
        v1 += 2;
        if ( !--v2 )
            return 1;
    }
    result = 0;
    *v1 = 0;
    v1[1] = 0;
    return result;
}


// 0x801dc60
int sub_801DC60()
{
    return sub_801BEC2(4);
}


// 0x801dc6e
int sub_801DC6E()
{
    return sub_801BEB8(4);
}


// 0x801dc7c
signed int __fastcall sub_801DC7C(char a1, char a2)
{
    int v2; // r5
    char *v3; // r6
    signed int v4; // r3
    signed int v6; // r2
    char v7; // r3

    v3 = &byte_203EB50;
    v4 = 4;
    while ( *v3 )
    {
        if ( *(v3 + 3) != v2 )
        {
            v3 += 20;
            if ( --v4 )
                continue;
        }
        return 1;
    }
    v6 = *(v2 + 40);
    *(v3 + 3) = v6;
    v7 = 3;
    if ( v6 == 235 || v6 >= 73 && v6 <= 78 )
        v7 = 27;
    *v3 = v7;
    v3[4] = a1;
    v3[5] = a2;
    *(v3 + 1) = *(v2 + 36);
    *(v3 + 4) = 185273099;
    *(v3 + 3) = v2;
    v3[8] = 0;
    v3[9] = 0;
    sub_801BECC(4);
    return 0;
}


// 0x801dccc
signed int __fastcall sub_801DCCC(char a1, char a2)
{
    int v2; // r5
    char *v3; // r2
    signed int v4; // r3

    v3 = &byte_203EB50;
    v4 = 4;
    do
    {
        if ( *v3 & 1 && *(v3 + 3) == v2 )
        {
            v3[4] = a1;
            v3[5] = a2;
            return 0;
        }
        v3 += 20;
        --v4;
    }
    while ( v4 );
    return 1;
}


// 0x801dcfc
signed int __fastcall sub_801DCFC(char a1, char a2)
{
    int v2; // r5
    char *v3; // r2
    signed int v4; // r3

    v3 = &byte_203EB50;
    v4 = 4;
    do
    {
        if ( *v3 & 1 && *(v3 + 3) == v2 )
        {
            v3[4] = a1;
            v3[5] = a2;
            *v3 |= 4u;
            return 0;
        }
        v3 += 20;
        --v4;
    }
    while ( v4 );
    return 1;
}


// 0x801dd34
signed int sub_801DD34()
{
    int v0; // r5
    char *v1; // r2
    signed int v2; // r3
    signed int result; // r0

    v1 = &byte_203EB50;
    v2 = 4;
    do
    {
        if ( *v1 & 1 && *(v1 + 3) == v0 )
        {
            result = 0;
            *v1 = 0;
            return result;
        }
        v1 += 20;
        --v2;
    }
    while ( v2 );
    return 1;
}


// 0x801dd60
void __noreturn sub_801DD60()
{
    sub_801BEC2(8);
    call_sub_3005EBA(17, 18, 0, 0);
}


// 0x801dd7c
int sub_801DD7C()
{
    return sub_801BEB8(8);
}


// 0x801dd88
int sub_801DD88()
{
    decomp_initGfx_8000B8E(&off_801DDA4);
    sub_801BECC(8);
    return sub_801DA48(8);
}


// 0x801ddd8
int __noreturn sub_801DDD8()
{
    call_sub_3005EBA(6, 0, 3, 0);
    return sub_801BEC2(16);
}


// 0x801ddf6
int sub_801DDF6()
{
    (loc_8000AC8)(dword_86E1C78, &unk_3001A80, 32);
    CopyBackgroundTiles(6, 0, 3, word_801ED6C, 18, &byte_0[2]);
    return sub_801BEB8(16);
}


// 0x801de1e
int __noreturn sub_801DE1E()
{
    call_sub_3005EBA(6, 0, 3, 0);
    return sub_801BEC2(32);
}


// 0x801de3c
int sub_801DE3C()
{
    (loc_8000AC8)(dword_86E1C78, &unk_3001A80, 32);
    CopyBackgroundTiles(6, 0, 3, word_801ED6C, 18, &byte_0[2]);
    return sub_801BEB8(32);
}


// 0x801de64
int __noreturn sub_801DE64()
{
    call_sub_3005EBA(6, 0, 3, 0);
    return sub_801BEC2(0x20000);
}


// 0x801de82
int sub_801DE82()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 24);
    if ( !*(v0 + 24) )
        v1 -= 2;
    (loc_8000AC8)(&byte_86E1CD8[32 * (v1 - 1)], &unk_3001A80, 32);
    CopyBackgroundTiles(6, 0, 3, word_801EDB4, 18, &byte_0[2]);
    return sub_801BEB8(0x20000);
}


// 0x801ded0
int sub_801DED0()
{
    sub_801DF92();
    (loc_8000AC8)(dword_86E489C, 100713536, &dword_380);
    sub_801BECC(16);
    return sub_801DA48(16);
}


// 0x801deee
int sub_801DEEE()
{
    sub_801DF92();
    (loc_8000AC8)(dword_86E489C, 100713536, &dword_380);
    sub_801BECC(32);
    return sub_801DA48(32);
}


// 0x801df0c
int sub_801DF0C()
{
    int result; // r0

    sub_801DF92();
    decomp_initGfx_8000B8E(&off_801DF60);
    sub_801BECC(0x20000);
    sub_801DA48(0x20000);
    result = 0;
    byte_2035298 = 0;
    byte_2035299 = 0;
    return result;
}


// 0x801df32
int sub_801DF32()
{
    sub_801DF92();
    decomp_initGfx_8000B8E(&off_801DF60);
    (loc_8000AC8)(dword_86E1C78, byte_3001B00, 32);
    sub_801BECC(0x20000);
    return sub_801DA48(0x20000);
}


// 0x801df8c
int __fastcall sub_801DF8C(int result)
{
    word_20352A2 = result;
    return result;
}


// 0x801df92
int sub_801DF92()
{
    word_20352A0 = 0;
    return battle_clearFlags(18);
}


// 0x801dfa2
signed int __fastcall sub_801DFA2(signed int result)
{
    if ( result > 0x4000 )
        result = 0x4000;
    word_20352A0 = result;
    return result;
}


// 0x801dfb8
int __fastcall sub_801DFB8(int a1)
{
    int result; // r0

    result = a1 + word_20352A0;
    if ( result > 0x4000 )
        result = 0x4000;
    word_20352A0 = result;
    return result;
}


// 0x801dfd0
signed int __fastcall sub_801DFD0(signed int result)
{
    __int16 v1; // r1

    v1 = word_20352A0 - result;
    if ( word_20352A0 < result )
        v1 = 0;
    word_20352A0 = v1;
    return result;
}


// 0x801dfe4
int sub_801DFE4()
{
    return word_20352A0;
}


// 0x801dfea
int __noreturn sub_801DFEA()
{
    call_sub_3005EBA(0, 18, 3, 0);
    return sub_801BEC2(64);
}


// 0x801e006
int sub_801E006()
{
    return sub_801BEB8(64);
}


// 0x801e012
int sub_801E012()
{
    sub_801BECC(64);
    return sub_801DA48(64);
}


// 0x801e022
int __noreturn sub_801E022()
{
    int v0; // r5

    call_sub_3005EBA(*(v0 + 1), *(v0 + 2), 3, 0);
    return sub_801BEC2(128);
}


// 0x801e03e
int __noreturn sub_801E03E()
{
    CopyBackgroundTiles(byte_2035281, byte_2035282, 3, byte_801EDFC, 6, &byte_0[2]);
    return sub_801BEB8(128);
}


// 0x801e060
int __noreturn sub_801E060()
{
    call_sub_3005EBA(24, 0, 3, 0);
    return sub_801BEC2(0x800000);
}


// 0x801e07c
int __noreturn sub_801E07C()
{
    CopyBackgroundTiles(24, 0, 3, byte_801EDFC, 6, &byte_0[2]);
    return sub_801BEB8(0x800000);
}


// 0x801e0a0
int __fastcall sub_801E0A0(char a1, char a2)
{
    word_20352A4 = *(dword_20352C8 + 36);
    byte_2035281 = a1;
    byte_2035282 = a2;
    sub_801BECC(128);
    return sub_801DA48(128);
}


// 0x801e0bc
int sub_801E0BC()
{
    int result; // r0

    result = *(dword_20352C8 + 36);
    word_20352A4 = *(dword_20352C8 + 36);
    return result;
}


// 0x801e0c8
int __fastcall sub_801E0C8(int result)
{
    word_20352A6 = result;
    return result;
}


// 0x801e0d0
int __fastcall sub_801E0D0(int result)
{
    byte_203529C = result;
    return result;
}


// 0x801e0dc
int __noreturn sub_801E0DC()
{
    int v0; // r5

    *(v0 + 8) = -1;
    *(v0 + 10) = -1;
    call_sub_3005EBA(6, 2, 3, 0);
    call_sub_3005EBA(26, 2, 3, 0);
    return sub_801BEC2(1024);
}


// 0x801e10e
int __fastcall sub_801E10E(int a1)
{
    if ( sub_802D234() != 6 )
        (loc_8000AC8)(dword_86E1C78, &unk_3001A80, 32);
    return sub_801BEB8(1024);
}


// 0x801e138
int sub_801E138()
{
    return sub_801BEC2(512);
}


// 0x801e144
int sub_801E144()
{
    return sub_801BEB8(512);
}


// 0x801e15c
int sub_801E15C()
{
    int v0; // r1
    int v1; // r2

    sub_801BED6(0x10000);
    sub_801DACC(0x10000);
    decomp_initGfx_8000B8E(&off_801E188);
    sub_801DA48(512);
    return PlaySoundEffect(159, v0, v1);
}


// 0x801e1a4
signed int __noreturn sub_801E1A4()
{
    int v0; // r5
    unsigned int v1; // r6
    signed int result; // r0

    v1 = 6;
    if ( *(v0 + 12) != 2 )
        v1 = 0;
    call_sub_3005EBA((v1 >> 1) + 7, 2, 3, 0);
    sub_801BEC2(256);
    result = battle_isBattleOver();
    if ( result != 1 && !v1 )
        result = sub_801DA48(1024);
    return result;
}


// 0x801e1e4
int __noreturn sub_801E1E4()
{
    int v0; // r5
    unsigned int v1; // r6
    __int16 *v2; // r3

    v1 = 9;
    if ( *(v0 + 12) != 2 )
    {
        v1 = 0;
        sub_801DACC(1024);
    }
    v2 = word_801EE14;
    if ( v1 == 9 )
        v2 = word_801EE58;
    CopyBackgroundTiles((v1 >> 1) + 7, 2, 3, v2, 17 - v1, &byte_0[2]);
    return sub_801BEB8(256);
}


// 0x801e228
int __fastcall __noreturn sub_801E228(signed int a1)
{
    int v1; // r7

    if ( a1 == 2 )
        a1 = 19;
    v1 = a1;
    if ( dword_20352C0 & 0x100 )
        sub_801DACC(256);
    byte_203528B = 60;
    byte_203528C = 0;
    renderTextGfx_8045F8C(byte_86F0374, v1, byte_203C4E0, 100701536);
    sub_801BECC(256);
    return sub_801DA48(256);
}


// 0x801e270
int sub_801E270()
{
    int result; // r0

    if ( dword_20352C0 & 0x100 )
    {
        result = byte_203528C;
        if ( !byte_203528C )
            return result;
        sub_801DACC(256);
    }
    byte_203528B = 60;
    byte_203528C = 1;
    renderTextGfx_8045F8C(byte_86F0374, 14, byte_203C4E0, 100701536);
    sub_801BECC(256);
    return sub_801DA48(256);
}


// 0x801e2ba
int __fastcall sub_801E2BA(int a1)
{
    int v1; // r10
    int v2; // r1
    int v4; // [sp+0h] [bp-18h]

    v4 = a1;
    if ( dword_20352C0 & 0x100 )
    {
        if ( !byte_203528C )
            return v4;
        sub_801DACC(256);
    }
    byte_203528B = 60;
    byte_203528C = 2;
    *(*(v1 + oToolkit_Unk200a220_Ptr) + 8) = v4;
    v2 = 15;
    if ( !v4 )
        v2 = 16;
    renderTextGfx_8045F8C(byte_86F0374, v2, byte_203C4E0, 100701536);
    sub_801BECC(256);
    sub_801DA48(256);
    return v4;
}


// 0x801e35a
int __noreturn sub_801E35A()
{
    call_sub_3005EBA(11, 0, 3, 0);
    return sub_801BED6(2048);
}


// 0x801e376
int __noreturn sub_801E376()
{
    CopyBackgroundTiles(11, 0, 3, byte_801EE78, 8, &byte_0[2]);
    return sub_801BEB8(2048);
}


// 0x801e398
int __fastcall __noreturn sub_801E398(int a1)
{
    renderTextGfx_8045F8C(byte_86F0374, a1 + 3, byte_203C4E0, 100701536);
    sub_801BECC(2048);
    return sub_801DA48(2048);
}


// 0x801e3c4
int __noreturn sub_801E3C4()
{
    call_sub_3005EBA(11, 16, 3, 0);
    return sub_801BEC2(0x100000);
}


// 0x801e3e4
int __noreturn sub_801E3E4()
{
    CopyBackgroundTiles(11, 16, 3, byte_801EF10, 8, &byte_0[2]);
    return sub_801BEB8(0x100000);
}


// 0x801e408
int __noreturn sub_801E408()
{
    word_20352B2 = 50;
    renderTextGfx_8045F8C(byte_86F0374, 18, byte_203C4E0, 100702432);
    sub_801BECC(0x100000);
    return sub_801DA48(0x100000);
}


// 0x801e44c
int __noreturn sub_801E44C()
{
    call_sub_3005EBA(19, 4, 3, 0);
    return sub_801BEC2(4096);
}


// 0x801e468
int sub_801E468()
{
    return sub_801BEB8(4096);
}


// 0x801e474
int __fastcall sub_801E474(int a1)
{
    byte_203528B = a1;
    decomp_initGfx_8000B8E(off_801E4A0[a1]);
    eStruct2035280 = 63;
    sub_801BECC(4096);
    return sub_801DA48(4096);
}


// 0x801e4b0
int sub_801E4B0()
{
    int v0; // r5
    int v1; // r1
    unsigned __int16 *v2; // r6
    signed int v3; // r2
    int v4; // ST14_4
    int v5; // ST00_4
    int v6; // ST04_4

    v1 = 0;
    v2 = (v0 + 40);
    do
    {
        v3 = *v2;
        if ( v3 == 255 )
            break;
        if ( v3 >= 9 )
            v3 = 8;
        v4 = v1;
        v5 = 29 - v3;
        v6 = v1;
        call_sub_3005EBA(29 - v3, v1, 0, 0);
        call_sub_3005EBA(v5, v6, 3, 0);
        v1 = v4 + 2;
        ++v2;
    }
    while ( v4 != 6 );
    return sub_801BEC2(0x2000);
}


// 0x801e4f4
int sub_801E4F4()
{
    int v0; // r5
    _WORD *v1; // r7
    signed int v2; // r4
    signed int v3; // r6
    int *v4; // r3
    __int16 *v5; // r2
    int v6; // r1
    signed int v7; // r4
    signed int v9; // [sp-4h] [bp-40h]
    int v10; // [sp+0h] [bp-3Ch]
    __int16 v11; // [sp+12h] [bp-2Ah]

    v1 = (v0 + 40);
    v2 = 0;
    do
    {
        v3 = *v1;
        if ( v3 == 255 )
            break;
        if ( *v1 )
        {
            if ( v3 < 9 )
            {
                LOWORD(v10) = -11818;
                *(&v10 + v3 + v3 + 2) = -11817;
                v4 = (&v10 + 2);
                v5 = (&v10 + v3 + v3 + 4);
            }
            else
            {
                v3 = 9;
                v4 = &v10;
                v5 = &v11;
            }
            do
            {
                *v4 = -11816;
                *v5 = -11815;
                ++v5;
                v4 = (v4 + 2);
                --v3;
            }
            while ( v3 );
            v6 = v2;
            v9 = v2;
            v7 = *v1;
            if ( v7 >= 9 )
                v7 = 8;
            CopyBackgroundTiles(29 - v7, v6, 3, &v10, v7 + 1, &byte_0[2]);
            v2 = v9;
        }
        ++v1;
        v2 += 2;
    }
    while ( v2 < 8 );
    return sub_801BEB8(0x2000);
}


// 0x801e574
int __noreturn sub_801E574()
{
    __int16 *v0; // r4
    unsigned int v1; // r0
    char *v2; // r2
    char *v3; // r3
    unsigned int v4; // ST08_4
    char *v5; // ST0C_4
    char *v6; // ST10_4
    int v7; // ST00_4
    int v8; // ST04_4
    signed __int64 v9; // r0
    __int16 v10; // r0

    word_20352A8 = 255;
    word_20352AA = 255;
    word_20352AC = 255;
    word_20352AE = 255;
    v0 = &word_20352A8;
    v1 = sub_800A998(&word_20352A8);
    v2 = byte_203EBA0;
    v3 = 100711232;
    do
    {
        v4 = v1;
        v5 = v2;
        v6 = v3;
        v7 = v2;
        v8 = v3;
        v9 = sub_800EC56(*v0);
        v10 = renderTextGfx_8045F8C(v9, SHIDWORD(v9), v7, v8);
        v2 = &dword_240 + v5;
        v3 = &dword_240 + v6;
        *v0 = v10;
        ++v0;
        v1 = v4 - 1;
    }
    while ( v4 != 1 );
    return sub_801DA48(0x2000);
}


// 0x801e5e0
int sub_801E5E0()
{
    return sub_801BEC2(0x4000);
}


// 0x801e5ec
int sub_801E5EC()
{
    return sub_801BEB8(0x4000);
}


// 0x801e5f8
int sub_801E5F8()
{
    char v0; // r4
    int v1; // r0
    char v2; // zf

    byte_2035292 = 0;
    byte_2035293 = -1;
    eStruct2035280_NaviStatusGfxIdx17 = -1;
    byte_2035295 = -1;
    word_20352B8 = 120;
    v0 = 0;
    if ( !(sub_802D246() & 0x200000) )
    {
        v1 = sub_802D234();
        if ( v1 != 1 && v1 != 2 && v1 != 3 && v1 != 4 && v1 != 5 && v1 != 8 )
        {
            sub_813BF1C();
            if ( !v2 )
                v0 = 1;
        }
    }
    byte_203529E = v0;
    sub_801BECC(0x4000);
    return sub_801DA48(0x4000);
}


// 0x801e658
int sub_801E658()
{
    int result; // r0

    result = 0;
    byte_203529E = 0;
    return result;
}


// 0x801e660
int __fastcall sub_801E660(signed int a1)
{
    int v1; // r5
    signed int v2; // r4
    int v3; // r6
    int v4; // r0

    v2 = a1;
    v3 = *(word_801E700 + a1);
    v4 = sub_8015B54(*(*(v1 + 72) + 22));
    if ( v2 != 11 && v2 != 12 )
    {
        if ( v2 >= 1 && v2 <= 10 && byte_801E6F4[v4] == 2 )
            v3 += 5;
    }
    else if ( byte_801E6F4[v4] == 3 )
    {
        ++v3;
    }
    return v3;
}


// 0x801e69c
void sub_801E69C()
{
    int v0; // r5

    sub_8015B5C(*(*(v0 + 72) + 22));
    JUMPOUT(&loc_801E6B2);
}


// 0x801e6a8
int sub_801E6A8()
{
    int v0; // r5
    int v1; // r0
    signed int v2; // r1
    int v4; // r6

    v1 = sub_8015B54(*(*(v0 + 72) + 22));
    if ( !v2 )
        return byte_801E6F4[v1];
    v4 = *(word_801E700 + v2);
    if ( v2 != 11 && v2 != 12 )
    {
        if ( v2 >= 1 && v2 <= 10 && byte_801E6F4[v1] == 2 )
            v4 += 5;
    }
    else if ( byte_801E6F4[v1] == 3 )
    {
        ++v4;
    }
    return v4;
}


// 0x801e71c
int __fastcall sub_801E71C(int result)
{
    byte_2035292 = result;
    return result;
}


// 0x801e724
signed int __fastcall sub_801E724(char a1, char a2)
{
    char v2; // r2
    signed int result; // r0

    v2 = eStruct2035280_NaviStatusGfxIdx17;
    if ( eStruct2035280_NaviStatusGfxIdx17 == 255 )
        v2 = byte_2035295;
    byte_203529F = v2;
    byte_2035296 = a2;
    eStruct2035280_NaviStatusGfxIdx17 = a1;
    result = 255;
    byte_2035293 = -1;
    return result;
}


// 0x801e73c
int sub_801E73C()
{
    return sub_801BEC2(0x8000);
}


// 0x801e748
int sub_801E748()
{
    return sub_801BEB8(0x8000);
}


// 0x801e754
int sub_801E754()
{
    int result; // r0

    result = dword_20352C0 & 0x8000;
    if ( dword_20352C0 & 0x8000 )
    {
        result = 1;
        if ( (byte_2036848 == 4 || byte_2036848 == 2) && byte_2036840 == 4 )
            result = 2;
    }
    return result;
}


// 0x801e780
signed int sub_801E780()
{
    signed int result; // r0

    if ( byte_2036848 == 4 || byte_2036848 == 2 )
    {
        result = 45;
        byte_2036847 = 45;
    }
    return result;
}


// 0x801e828
int __fastcall sub_801E828(int a1, signed int a2)
{
    int v2; // r5

    if ( a2 > 99 )
        LOBYTE(a2) = 99;
    *(v2 + 9) = a2;
    return sub_801E838();
}


// 0x801e838
int sub_801E838()
{
    int v0; // r4
    int v1; // r5
    char **v2; // r7
    signed int v3; // r4
    signed int v4; // r6
    int v5; // r0
    int v6; // r1
    unsigned int v7; // r0
    signed int v8; // r6
    int (*v9)[16]; // r6
    int (*v10)[16]; // r7
    int v11; // r1
    int v12; // r1
    int v13; // r1

    v2 = (v0 + 4);
    v3 = 5;
    do
    {
        v4 = 4;
        do
        {
            if ( *v2 != byte_801FDC0 )
                ++v2;
            v5 = (loc_8000AC8)();
            (loc_8000AC8)(v5 + 32, v6 + 128);
            --v4;
        }
        while ( v4 );
        --v3;
    }
    while ( v3 );
    if ( *(v1 + 8) == 1 )
    {
        if ( *v2 == byte_801FDC0 )
            ++v2;
        *(v1 + 4) = *v2;
        v7 = sub_8000C00(*(v1 + 9));
        v8 = v7 >> 4;
        if ( !(v7 >> 4) )
        {
            v8 = 10;
            *(v1 + 4) -= 4;
        }
        v9 = off_801FD64[v8];
        v10 = off_801FD64[v7 & 0xF];
        (loc_8000AC8)(v9, 100758272, 32);
        (loc_8000AC8)(v10, v11 + 32);
        (loc_8000AC8)(&(*v9)[8], v12 + 32);
        (loc_8000AC8)(&(*v10)[8], v13 + 32);
    }
    return (loc_8000AC8)(byte_86F2900, byte_30016B0, 32);
}


// 0x801e8cc
void __fastcall __noreturn sub_801E8CC(int a1, unsigned int a2, int a3, __int16 a4)
{
    sub_801E95C(a1, a2, a3, a4);
}


// 0x801e8ea
int sub_801E8EA()
{
    int v0; // r5

    *(v0 + 14) = 0;
    sub_801E8FA();
    return sub_801E838();
}


// 0x801e8fa
signed int sub_801E8FA()
{
    int v0; // r5
    int v1; // r2
    int v2; // r4
    int v3; // r1
    signed int result; // r0
    __int16 v5; // r2

    sub_801EAEC();
    v2 = v1;
    *(v0 + 10) = sub_8000C00(v3);
    result = sub_8000C00(v2);
    *(v0 + 12) = v5;
    return result;
}


// 0x801e914
signed int sub_801E914()
{
    return sub_801E8FA();
}


// 0x801e95c
int __fastcall __noreturn sub_801E95C(int a1, unsigned int a2, int a3, __int16 a4)
{
    int v4; // r5
    void *v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    _BYTE *v9; // r0
    unsigned int v10; // r2
    int v11; // r3
    int v12; // r2
    signed int v13; // r0
    signed int v14; // r0
    signed int v15; // r0
    signed int v16; // r0
    unsigned int v18; // [sp+0h] [bp-24h]
    int v19; // [sp+4h] [bp-20h]
    int v20; // [sp+8h] [bp-1Ch]
    int v21; // [sp+Ch] [bp-18h]

    *(v4 + 7) = 0;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 10) = 0;
    *(v4 + 12) = 0;
    *(v4 + 4) = a4;
    v18 = a2;
    v19 = a3;
    sub_8027D10(*(v4 + 4));
    sub_801EA5A();
    *(v21 + 9) = renderTextGfx_8045F8C(v5, v6, v7, v8);
    v9 = getChip8021DA8(*(v21 + 4));
    v10 = v18;
    v11 = v19;
    if ( v9[9] & 2 )
    {
        if ( v18 & 0x8000 )
        {
            v10 = v18 & 0xFFFF7FFF;
            *(v21 + 12) = 1;
        }
        v12 = v10 & 0xFFFF87FF;
        if ( v12 )
        {
            v13 = sub_8000C00(v12);
            v14 = sub_8000C5C(v13);
            *(v21 + 10) = v14;
            sub_801EA34(4 * v14, dword_801EA7C[v20]);
            if ( v19 & 0xFFFF87FF )
            {
                v15 = sub_8000C00(v19 & 0xFFFF87FF);
                v16 = sub_8000C5C(v15);
                *(v21 + 11) = v16 + 1;
                sub_801EA34(4 * v16, dword_801EA88[v20]);
            }
        }
    }
    *(v21 + 2) += 4 * (15 - (*(v21 + 9) + *(v21 + 10) + *(v21 + 11))) - 16 * *(v21 + 12) * v20;
    (loc_8000AC8)(dword_86E1C78, byte_30016B0, 32, v11);
    decomp_initGfx_8000B8E(&off_801EAB0);
    return 0;
}


// 0x801ea34
int __fastcall sub_801EA34(int a1, int a2)
{
    unsigned int v2; // r4
    signed int v3; // r7
    signed int v4; // r2
    int v5; // r0
    int v6; // r2
    int v7; // r1
    int result; // r0
    int v9; // r1

    v3 = 4;
    v4 = 32;
    do
    {
        v5 = (loc_8000AC8)(off_801FD90[v2 & 0xF], a2, v4);
        result = (loc_8000AC8)(v5 + v6, v7 + 128);
        a2 = v9 - 160;
        v2 >>= 4;
        --v3;
    }
    while ( v3 );
    return result;
}


// 0x801ea5a
void sub_801EA5A()
{
    ;
}


// 0x801eaec
void sub_801EAEC()
{
    ;
}


// 0x801eb00
int sub_801EB00()
{
    return sub_801BEC2(0x10000);
}


// 0x801eb0c
int sub_801EB0C()
{
    return sub_801BEB8(0x10000);
}


// 0x801eb18
void __fastcall __noreturn sub_801EB18(int a1, unsigned int a2, int a3)
{
    word_2036852 = 8312;
    byte_2036858 = byte_801F556[0];
    sub_801E95C(a1, a2, a3, a1);
}


// 0x801eb50
int __noreturn sub_801EB50()
{
    call_sub_3005EBA(0, 18, 3, 0);
    call_sub_3005EBA(0, 18, 0, 0);
    return sub_801BEC2(0x40000);
}


// 0x801eb7c
int __noreturn sub_801EB7C()
{
    CopyBackgroundTiles(0, 18, 3, byte_801EE98, 30, &byte_0[2]);
    return sub_801BEB8(0x40000);
}


// 0x801ebc8
int __fastcall sub_801EBC8(char a1)
{
    int result; // r0

    byte_203529A = a1;
    result = 0;
    word_20352B0 = 0;
    return result;
}


// 0x801ebd2
int sub_801EBD2()
{
    return sub_801BEC2(0x80000);
}


// 0x801ebde
int sub_801EBDE()
{
    (loc_8000AC8)(dword_86E97CC, 100759552, byte_100);
    return sub_801BEB8(0x80000);
}


// 0x801ec2c
int sub_801EC2C()
{
    return sub_801BEC2(0x200000);
}


// 0x801ec38
int sub_801EC38()
{
    return sub_801BEB8(0x200000);
}


// 0x801ec44
signed int sub_801EC44()
{
    signed int result; // r0

    (loc_8000AC8)(&dword_86E994C, 100756736, 192);
    (loc_8000AC8)(dword_86E9A0C, byte_30016F0, 32);
    sub_801BECC(0x200000);
    sub_801DA48(0x200000);
    result = 60;
    byte_203529B = 60;
    return result;
}


// 0x801ec84
int sub_801EC84()
{
    return sub_801BEC2(0x400000);
}


// 0x801ec90
int sub_801EC90()
{
    (loc_8000AC8)(dword_86E9A0C, byte_30016D0, 32);
    return sub_801BEB8(0x400000);
}


