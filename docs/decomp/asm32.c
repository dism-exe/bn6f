// 0x810d970
int sub_810D970()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 10);
    if ( !*(v0 + 10) )
    {
        *(v0 + 108) = 0;
        v1 = *(v0 + 104);
        if ( v1 )
            v1 = sub_80C4072(v1);
    }
    return sub_80165C2(v1);
}


// 0x810d98c
int sub_810D98C()
{
    int v0; // r5

    *(v0 + 108) = 0;
    return sub_810DCCE();
}


// 0x810d998
int sub_810D998()
{
    unsigned __int8 *v0; // r6
    int result; // r0

    result = sub_810DAF0();
    if ( !result )
        result = (*(&off_810D9B4 + *v0))();
    return result;
}


// 0x810d9c4
int __fastcall sub_810D9C4(int a1, int a2, int a3)
{
    int v3; // r5
    _BYTE *v4; // r6
    int v5; // r0
    char v6; // r1
    int v7; // r2
    int result; // r0
    bool v9; // zf

    v5 = sub_810DB88(a1, a2, a3);
    if ( v5 )
    {
        sub_810DC00(v5, v6, v7);
        *(v3 + 112) = *(v3 + 18) | 16 * *(v3 + 19);
    }
    result = v4[6] + 1;
    v9 = result == 1;
    if ( result >= 1 )
    {
        result = 0;
        v9 = 1;
    }
    v4[6] = result;
    if ( v9 )
    {
        if ( object_getFlag() & 0x2000 )
        {
            result = 12;
            *v4 = 12;
        }
        else
        {
            result = 4;
            *v4 = 4;
        }
    }
    return result;
}


// 0x810da00
signed int sub_810DA00()
{
    int v0; // r5
    _BYTE *v1; // r6
    int v2; // r0
    signed int result; // r0

    v2 = object_getFrontDirection(v0);
    if ( sub_8109708(v2 + *(v0 + 18), *(v0 + 19), *(v0 + 100)) )
    {
        result = 12;
        *v1 = 12;
    }
    else
    {
        v1[2] = 0;
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x810da24
int sub_810DA24()
{
    int v0; // r6

    return (*(&off_810DA44 + *(v0 + 2)))();
}


// 0x810da4c
signed int sub_810DA4C()
{
    int v0; // r5
    _BYTE *v1; // r6
    int v2; // r0
    signed int result; // r0
    int v4; // r0
    int v5; // r4
    int v6; // r0
    int v7; // r1
    int v8; // r0
    int v9; // r2
    int v10; // r3
    int v11; // r3
    char v12; // r3

    v2 = object_getFrontDirection(v0);
    if ( sub_8109708(v2 + *(v0 + 18), *(v0 + 19), *(v0 + 100)) )
    {
        result = 12;
        *v1 = 12;
    }
    else
    {
        v4 = sub_80103F8(*(v0 + 22) ^ 1);
        v5 = v4;
        v1[5] = *(v4 + 19);
        v6 = object_getFrontDirection(v0);
        v7 = *(v0 + 18) + v6;
        v8 = v6 * *(v0 + 96);
        v9 = *(v0 + 18) + v8;
        if ( v7 >= v9 )
        {
            v10 = v7;
            v7 = *(v0 + 18) + v8;
            v9 = v10;
        }
        v11 = *(v5 + 18);
        if ( v11 < v7 || v11 > v9 )
            v12 = v11 - v8;
        else
            v12 = *(v0 + 18);
        v1[4] = v12;
        result = 4;
        v1[2] = 4;
    }
    return result;
}


// 0x810daaa
int sub_810DAAA()
{
    int v0; // r5
    _BYTE *v1; // r6
    int v2; // r0
    int v3; // r0
    int v4; // r2
    int v5; // r0
    char v6; // r1
    int v7; // r2
    int result; // r0

    v2 = object_getFrontDirection(v0);
    if ( !sub_8109708(v2 + *(v0 + 18), *(v0 + 19), *(v0 + 100)) )
    {
        v3 = object_getFlag();
        v5 = v3 & 0xA000 ? sub_810DB72(v3, 40960, v4) : sub_810DB20(v3, 40960, v4);
        if ( v5 )
            return sub_810DC00(v5, v6, v7);
    }
    result = 12;
    *v1 = 12;
    return result;
}


// 0x810dae4
int sub_810DAE4()
{
    _BYTE *v0; // r6
    int result; // r0

    sub_810DC4C();
    result = 0;
    *v0 = 0;
    return result;
}


// 0x810daf0
signed int sub_810DAF0()
{
    int v0; // r5
    signed int v1; // r6
    __int16 v2; // r0
    int v3; // r3
    int v4; // r4

    v1 = 0;
    v2 = sub_800ED90(v0);
    if ( v3 )
    {
        v4 = v2 & 0x1FF;
        if ( sub_800A704() >= byte_12C )
        {
            sub_80126E4(v4);
            object_setAttack0();
            sub_800F322();
            v1 = 1;
        }
    }
    return v1;
}


// 0x810db20
int __fastcall sub_810DB20(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r0
    int v6; // r1
    int v7; // r1
    int v8; // r0
    int v9; // ST00_4
    int v10; // r1
    int v11; // r2
    int v12; // r3
    bool v13; // zf
    int result; // r0
    int v15; // r0
    int v16; // r1
    int v17; // r0
    int v18; // r0
    int v19; // ST00_4
    int v20; // r1
    int v21; // r2
    int v22; // r3

    v5 = *(v4 + 5);
    v6 = *(v3 + 19);
    if ( v6 == v5
        || (v6 < v5 ? (v7 = v6 + 1) : (v7 = v6 - 1),
                sub_81096FA(*(v3 + 18), v7, a3, byte_810DBF0),
                v9 = v8,
                v13 = object_checkPanelParameters(v8, v10, v11, v12) == 0,
                result = v9,
                v13) )
    {
        v15 = *(v3 + 18);
        v16 = *(v4 + 4);
        if ( v15 == v16 )
        {
            result = 0;
        }
        else
        {
            if ( v15 < v16 )
                v17 = v15 + 1;
            else
                v17 = v15 - 1;
            sub_81096FA(v17, *(v3 + 19), a3, byte_810DBF0);
            v19 = v18;
            v13 = object_checkPanelParameters(v18, v20, v21, v22) == 0;
            result = v19;
            if ( v13 )
                result = 0;
        }
    }
    return result;
}


// 0x810db72
int __fastcall sub_810DB72(int a1, int a2, int a3)
{
    unsigned __int8 *v3; // r5
    int v4; // r6
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    v4 = v3[22];
    sub_81096FA(v3[18], v3[19], a3, byte_810DBF0);
    return sub_8015E46(v5, v6, v7, v8);
}


// 0x810db88
int __fastcall sub_810DB88(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int result; // r0
    int v10; // r3
    unsigned __int8 *v11; // r4
    unsigned __int8 *v12; // r7
    int v13; // r7
    int v18; // [sp+0h] [bp-28h]

    v4 = *(v3 + 22);
    sub_81096FA(*(v3 + 18), *(v3 + 19), a3, byte_810DBF0);
    result = object_getPanelRegion(v5, v6, v7, v8);
    if ( result )
    {
        if ( result != 1 )
        {
            v10 = result;
            v11 = &v18;
            while ( *v11 != *(v3 + 112) )
            {
                ++v11;
                if ( !--v10 )
                    goto LABEL_9;
            }
            --result;
            v12 = v11 + 1;
            do
            {
                *v11++ = *v12++;
                --v10;
            }
            while ( v10 );
        }
LABEL_9:
        v13 = result;
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v18 + v13) & 7;
    }
    return result;
}


// 0x810dc00
int __fastcall sub_810DC00(char a1, char a2, int a3)
{
    int v3; // r4
    int v4; // r7
    int v5; // r0
    int v6; // r2
    int v7; // r3

    *(v4 + 22) = a1;
    *(v4 + 23) = a2;
    *(v4 + 3) = 1;
    v5 = *&byte_810DC34[4 * *(v3 + 22)];
    *(v4 + 48) = v5;
    sub_81096FA(v5, byte_810DC34, a3, byte_810DBF0);
    *(v4 + 52) = v6;
    *(v4 + 56) = v7;
    object_setAttack0();
    return sub_8109804();
}


// 0x810dc4c
void sub_810DC4C()
{
    int v0; // r4
    int v1; // r5
    int v2; // r7
    int v3; // r2
    __int16 v4; // r0
    int v5; // r2
    int v6; // r3

    v3 = *(v0 + 22);
    *(v2 + 8) = byte_810DCBC[v3];
    *(v2 + 10) = 10;
    *(v2 + 16) = byte_810DCC2[v3];
    *(v2 + 24) = byte_810DCC8[v3];
    if ( object_getFlag() & 0xA000 )
        *(v2 + 24) = 120;
    v4 = object_getFlag();
    LOBYTE(v5) = 1;
    LOBYTE(v6) = 1;
    if ( !(v4 & 0x8000) )
    {
        LOBYTE(v5) = 3;
        LOBYTE(v6) = 6;
        if ( !(v4 & 0x2000) )
        {
            v5 = *(v1 + 96);
            v6 = *(v1 + 100);
        }
    }
    *(v2 + 12) = v5;
    *(v2 + 13) = v6;
    *(v2 + 40) = v1 + 104;
    *(v2 + 48) = v1 + 108;
    object_setAttack0();
}


// 0x810dcce
int sub_810DCCE()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 104);
    if ( !result )
    {
        result = sub_80C4038(0, 0, 4, 0);
        *(v0 + 104) = result;
    }
    return result;
}


// 0x810de00
int sub_810DE00()
{
    int v0; // r5
    _BYTE *v1; // r6
    unsigned __int8 *v2; // r7
    signed int v3; // r0
    int v4; // r0

    v3 = sub_810E2EC();
    if ( v3 == 255 )
        return (*(&off_810DE30 + *v2))();
    *(v0 + 16) = v3;
    *v1 = 8;
    sub_810DEC4();
    v4 = sub_810E0D4();
    return (loc_801171C)(v4);
}


// 0x810de3c
int sub_810DE3C()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        *(v1 + 12) = 16 * *(v0 + 122) | *(v0 + 123);
        sub_810DFD0(*(v1 + 12));
        *(v0 + 16) = 4;
        *(v0 + 104) = 0;
        *(v0 + 108) = 0;
        *(v0 + 112) = 0;
        *(v0 + 116) = 0;
    }
    if ( !(*(v1 + 16) & 4) )
        sub_810DED2();
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        *(v0 + 16) = 5;
        object_setCounterTime(16);
        *(v1 + 16) = *(v1 + 24);
        *v1 = 4;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x810de96
void sub_810DE96()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r2
    int v4; // r0

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        sub_810DF2E();
        PlaySoundEffect(247, v2, v3);
    }
    v4 = *(v1 + 16) - 1;
    *(v1 + 16) = v4;
    if ( !v4 )
    {
        v0->currAnimation = 0;
        sub_810DEC4();
        object_exitAttackState(v0);
    }
}


// 0x810dec4
int sub_810DEC4()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    *(v1 + 24) = 0;
    *(v1 + 16) = 0;
    result = 0;
    *(v0 + 96) = 0;
    return result;
}


// 0x810ded2
int sub_810DED2()
{
    Battle *v0; // r5
    int v1; // r7
    char (*v2)[8]; // r2
    int v3; // r3
    char (*v4)[8]; // ST08_4
    int v5; // ST0C_4
    unsigned int v6; // r0
    unsigned __int8 v7; // ST04_1
    int v8; // ST00_4
    int result; // r0

    v2 = (**(&off_810DF98 + v0->extraVars[24]))[v0->extraVars[25]];
    v3 = 0;
    do
    {
        v4 = v2;
        v5 = v3;
        v6 = *(v1 + 12);
        v8 = (v6 >> 4) + (*v2)[2 * v3];
        v7 = (v6 & 7) + (*v2)[2 * v3 + 1];
        object_getFrontDirection(v0);
        result = sub_8109660(v8, v7, 1, v0->Alliance ^ v0->directionFlip);
        v2 = v4;
        v3 = v5 + 1;
    }
    while ( v5 + 1 < 4 );
    return result;
}


// 0x810df2e
int sub_810DF2E()
{
    unsigned __int8 *v0; // r5
    int v1; // r7
    char (*v2)[8]; // r2
    int v3; // r3
    char (*v4)[8]; // ST0C_4
    int v5; // ST10_4
    int v6; // r6
    int result; // r0

    v2 = (**(&off_810DF98 + v0[120]))[v0[121]];
    v3 = 0;
    do
    {
        v4 = v2;
        v5 = v3;
        v6 = *(v1 + 8) | (*(v1 + 10) << 16);
        result = sub_80D8400(
                             (*(v1 + 12) >> 4) + (*v2)[2 * v3],
                             (*(v1 + 12) & 7) + (*v2)[2 * v3 + 1],
                             v0[14],
                             &v0[4 * v3 + 104]);
        v2 = v4;
        v3 = v5 + 1;
    }
    while ( v5 + 1 < 4 );
    return result;
}


// 0x810dfd0
int __fastcall sub_810DFD0(unsigned int a1)
{
    Battle *v1; // r5
    unsigned int v2; // r1
    unsigned int v3; // r0
    int v4; // ST00_4
    int v5; // ST04_4
    int v6; // r0
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3
    char (*v11)[8]; // ST08_4
    char v12; // r0
    char (*v13)[8]; // ST08_4
    char v14; // r0
    char (*v15)[8]; // ST08_4
    char v16; // r0
    int v17; // ST08_4
    char v18; // r0
    int v19; // r1
    int result; // r0
    char v21; // [sp+0h] [bp-18h]

    v21 = a1;
    v2 = a1 >> 4;
    v3 = a1 & 7;
    if ( 5 * (v1->Alliance ^ 1) + 1 == v2 )
    {
        v11 = off_810E0A4[(v21 & 7) - 1];
        GetRNG2();
        result = (*v11)[v12 & 7];
        LOBYTE(v19) = v1->Alliance ^ 1;
    }
    else
    {
        v4 = v3;
        v5 = v2;
        v6 = object_getFrontDirection(v1);
        sub_81096FA(v5 - v6, v4, v5, byte_810E090);
        if ( object_checkPanelParameters(v7, v8, v9, v10) )
        {
            v13 = off_810E0A4[(v21 & 7) - 1];
            GetRNG2();
            result = (*v13)[v14 & 7];
            v19 = 1 - (v1->Alliance ^ 1);
        }
        else
        {
            v15 = off_810E0A4[(v21 & 7) - 1];
            GetRNG2();
            v17 = (*v15)[v16 & 7];
            GetRNG2();
            LOBYTE(v19) = byte_810E0CC[v18 & 7];
            result = v17;
        }
    }
    v1->extraVars[24] = result;
    v1->extraVars[25] = v19;
    return result;
}


// 0x810e0d4
int sub_810E0D4()
{
    _DWORD *v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r0
    int result; // r0

    v1 = v0[26];
    if ( v1 )
    {
        sub_80D842E(v1);
        v0[26] = 0;
    }
    v2 = v0[27];
    if ( v2 )
    {
        sub_80D842E(v2);
        v0[27] = 0;
    }
    v3 = v0[28];
    if ( v3 )
    {
        sub_80D842E(v3);
        v0[28] = 0;
    }
    result = v0[29];
    if ( result )
    {
        sub_80D842E(result);
        result = 0;
        v0[29] = 0;
    }
    return result;
}


// 0x810e1bc
int sub_810E1BC()
{
    int v0; // r5
    _BYTE *v1; // r6
    int v2; // r7
    int result; // r0

    result = *(v0 + 102);
    if ( !*(v0 + 102) )
    {
        result = *(v2 + 16) + 1;
        *(v2 + 16) = result;
        if ( result >= *(v0 + 124) )
        {
            *(v2 + 16) = 0;
            result = sub_8109630(96, 67, 72);
            if ( !result )
            {
                *(v0 + 96) = 1;
                result = 4;
                *v1 = 4;
            }
        }
    }
    return result;
}


// 0x810e1f0
int sub_810E1F0()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int v4; // r1
    int v5; // r0
    int v6; // r0
    int v7; // r2
    int v8; // r0
    char v9; // r2
    int result; // r0

    v4 = *(v0 + 22);
    *(v1 + 124) = byte_810E174[v4];
    *(v3 + 16) = byte_810E16C[v4];
    *(v3 + 24) = byte_810E174[v4];
    *(v3 + 8) = byte_810E154[v4];
    *(v3 + 10) = byte_810E15C[v4];
    v5 = sub_80103F8(*(v1 + 22) ^ 1);
    *(v3 + 44) = v5;
    if ( v5 )
    {
        v6 = object_getFlag();
        if ( v6 & 0xA000 )
            sub_810E3A0(v6, 40960, v7);
        v8 = *(v3 + 44);
        v9 = *(v8 + 19);
        *(v1 + 122) = *(v8 + 18);
        *(v1 + 123) = v9;
        object_setAttack0();
    }
    result = 0;
    *v2 = 0;
    return result;
}


// 0x810e262
int sub_810E262()
{
    _BYTE *v0; // r5
    _BYTE *v1; // r6
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        if ( v0[100] )
        {
            v0[16] = 2;
            v0[102] = 2;
        }
        else
        {
            result = v0[101];
            if ( !v0[101] )
                return result;
            v0[16] = 0;
            v0[102] = 0;
        }
        v0[100] = 0;
        v0[101] = 0;
        result = 0;
        *v1 = 0;
    }
    return result;
}


// 0x810e2a6
int sub_810E2A6()
{
    int v0; // r5
    int result; // r0

    result = *(*(v0 + 84) + 112);
    if ( result )
    {
        if ( result & 0xA00 )
        {
            result = *(v0 + 102) & 3;
            if ( !(*(v0 + 102) & 3) )
            {
                result = 1;
                *(v0 + 100) = 1;
            }
        }
        else
        {
            result = *(v0 + 103);
            if ( *(v0 + 103) )
            {
                result = *(v0 + 102);
                if ( *(v0 + 102) )
                {
                    result &= 0x10u;
                    if ( !result )
                    {
                        result = 1;
                        *(v0 + 101) = 1;
                    }
                }
            }
        }
    }
    return result;
}


// 0x810e2ec
signed int sub_810E2EC()
{
    int v0; // r5

    if ( *(v0 + 100) )
    {
        if ( *(v0 + 102) != 1 )
        {
            *(v0 + 102) = 1;
            return 1;
        }
    }
    else if ( *(v0 + 101) && *(v0 + 102) != 16 )
    {
        *(v0 + 102) = 16;
        *(v0 + 124) = byte_810E174[*(*(v0 + 88) + 22)];
        return 3;
    }
    return 255;
}


// 0x810e336
signed int sub_810E336()
{
    int v0; // r5
    signed int result; // r0

    result = 1;
    *(v0 + 103) = 1;
    return result;
}


// 0x810e340
int sub_810E340()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(v0 + 103) = 0;
    return result;
}


// 0x810e34a
signed int sub_810E34A()
{
    int v0; // r5
    signed int v1; // r6
    __int16 v2; // r0
    int v3; // r3
    int v4; // r4

    v1 = 0;
    v2 = sub_800ED90(v0);
    if ( v3 )
    {
        v4 = v2 & 0x1FF;
        if ( sub_800A704() >= byte_12C )
        {
            sub_80126E4(v4);
            object_setAttack0();
            sub_800F322();
            v1 = 1;
        }
    }
    return v1;
}


// 0x810e37a
int sub_810E37A()
{
    int v0; // r0

    v0 = sub_810E0D4();
    return sub_80165C2(v0);
}


// 0x810e386
int sub_810E386()
{
    int v0; // r5
    int result; // r0

    *(v0 + 104) = 0;
    *(v0 + 108) = 0;
    *(v0 + 112) = 0;
    *(v0 + 116) = 0;
    result = byte_810E174[*(*(v0 + 88) + 22)];
    *(v0 + 124) = result;
    return result;
}


// 0x810e3a0
void __fastcall __noreturn sub_810E3A0(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_810E3B0);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x810e4d4
int sub_810E4D4()
{
    unsigned __int8 *v0; // r7

    return (*(&off_810E4E8 + *v0))();
}


// 0x810e4f0
signed int sub_810E4F0()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    int v2; // r4
    int v3; // r1
    int v4; // r0
    int v5; // r1
    u32 v6; // r2
    signed int result; // r0

    object_clearCollisionRegion();
    sub_801A5E2();
    sub_80101C4(v0);
    sub_801DC36();
    v0->chipsHeld = 0;
    v0->chip = -1;
    v0->parent = 0;
    sub_801A7F4();
    sub_80077B4(v0);
    sub_801DD34();
    sub_800AAE8();
    v2 = 15728640 * object_getFrontDirection(v0);
    v3 = v0->panelY;
    v4 = object_getCoordinatesForPanels(v0->panelX);
    v1[8] = 40;
    v0->vx = sub_8001330(&v0->x, v4 - v2, v5);
    v0->vz = v6;
    result = 4;
    *v1 = 4;
    return result;
}


// 0x810e54e
int sub_810E54E()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1
    int result; // r0

    *(v0 + 52) += *(v0 + 64);
    v2 = *(v0 + 72);
    *(v0 + 60) += v2;
    *(v0 + 72) = v2 - 0x8000;
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        *v0 &= 0xFDu;
        result = 8;
        *(v0 + 8) = 8;
    }
    return result;
}


// 0x810e57c
int sub_810E57C()
{
    unsigned __int8 *v0; // r7

    return (*(&off_810E590 + *v0))();
}


// 0x810e5b0
int sub_810E5B0()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r1
    u8 v3; // r0
    u8 v4; // r1
    int v5; // r1
    int result; // r0

    object_reservePanel(v0->panelX, v0->panelY);
    v2 = v0->panelY;
    sub_810E774(v0->panelX);
    v3 = v0->extraVars[23];
    v4 = v0->extraVars[24];
    *(v1 + 22) = v3;
    v0->panelX = v3;
    *(v1 + 23) = v4;
    v0->panelY = v4;
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    v5 = v0->panelY;
    sub_810E746(v0->panelX);
    *(v1 + 16) = 3;
    sub_810EB42();
    *v1 = 4;
    result = 0;
    *(v1 + 1) = 0;
    return result;
}


// 0x810e5f4
int __fastcall sub_810E5F4(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r7
    int v5; // r0
    unsigned __int8 v6; // vf
    int result; // r0

    if ( *(v4 + 1) )
    {
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            *(v3 + 16) = 4;
            *(v4 + 16) = *(v4 + 50);
            *v4 = 8;
            result = 0;
            *(v4 + 1) = 0;
        }
    }
    else
    {
        v5 = *(v4 + 16);
        v6 = __OFSUB__(v5, 1);
        result = v5 - 1;
        *(v4 + 16) = result;
        if ( (result < 0) ^ v6 )
        {
            *(v4 + 1) = 1;
            PlaySoundEffect(388, a2, a3);
            *(v3 + 16) = 3;
            result = *(v3 + 100);
            if ( result )
                *(result + 16) = 8;
        }
    }
    return result;
}


// 0x810e63c
unsigned int sub_810E63C()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0

    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2--, 1);
    *(v1 + 16) = v2;
    if ( (v2 < 0) ^ v3 )
    {
        *(v0 + 16) = 5;
        v4 = *(v0 + 100);
        if ( v4 )
            *(v4 + 16) = 9;
        *(v1 + 16) = *(v1 + 52);
        *v1 = 12;
        *(v1 + 1) = 0;
    }
    return sub_810EB5C();
}


// 0x810e666
unsigned int __fastcall sub_810E666(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r7
    unsigned __int8 *v5; // ST04_4
    int v6; // r6
    int v7; // r4
    int v8; // r0
    int v9; // r0
    unsigned __int8 v10; // vf

    if ( *(v4 + 16) == 8 )
    {
        v5 = v3;
        v6 = *(v4 + 8);
        object_spawnCollisionRegion(*(v3 + 18), *(v3 + 19), 2, 0);
        v7 = v5[22] ^ v5[23];
        sub_801BD3C(v5[18], v5[19], 50, 16);
        sub_80C4072(*(v3 + 100));
        *(v3 + 100) = 0;
    }
    v8 = *(v4 + 18) + 1;
    *(v4 + 18) = v8;
    if ( v8 == 4 )
        PlaySoundEffect(389, a2, a3);
    v9 = *(v4 + 16);
    v10 = __OFSUB__(v9--, 1);
    *(v4 + 16) = v9;
    if ( (v9 < 0) ^ v10 )
    {
        *(v4 + 18) = 0;
        *v4 = 16;
        *(v4 + 1) = 0;
    }
    return sub_810EB5C();
}


// 0x810e6d2
int sub_810E6D2()
{
    int v0; // r7
    int result; // r0

    *(v0 + 16) = *(v0 + 24);
    *v0 = 20;
    result = 0;
    *(v0 + 1) = 0;
    return result;
}


// 0x810e6e2
int sub_810E6E2()
{
    int v0; // r7
    int result; // r0

    result = *(v0 + 16) - 1;
    *(v0 + 16) = result;
    if ( !result )
    {
        *v0 = 24;
        result = 0;
        *(v0 + 1) = 0;
    }
    return result;
}


// 0x810e6f6
void __noreturn sub_810E6F6()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r1
    u8 v3; // r0
    u8 v4; // r1
    int v5; // r1

    v2 = v0->panelY;
    sub_810E774(v0->panelX);
    v3 = v0->extraVars[21];
    v4 = v0->extraVars[22];
    *(v1 + 22) = v3;
    v0->panelX = v3;
    *(v1 + 23) = v4;
    v0->panelY = v4;
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    v5 = v0->panelY;
    sub_810E746(v0->panelX);
    object_removePanelReserve(v0->panelX, v0->panelY);
    JUMPOUT(loc_810E728);
}


// 0x810e746
void __fastcall sub_810E746(char a1)
{
    Battle *v1; // r5
    int v2; // ST04_4
    int v3; // r0
    int v4; // r1

    v2 = (v1->Alliance ^ v1->directionFlip) << 8;
    v3 = object_getCoordinatesForPanels(a1);
    SpawnT4BattleObjectWithId0(v1, v2, v3, v4, 0);
}


// 0x810e774
void __fastcall sub_810E774(char a1)
{
    Battle *v1; // r5
    int v2; // ST04_4
    int v3; // r0
    int v4; // r1

    v2 = (v1->Alliance ^ v1->directionFlip) << 8;
    v3 = object_getCoordinatesForPanels(a1);
    SpawnT4BattleObjectWithId0(v1, v2, v3, v4, 0);
}


// 0x810e81e
int sub_810E81E()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    v1 = sub_80C4038(0, 0, 0, 1);
    *(v0 + 96) = v1;
    *(v1 + 23) = *(v0 + 22);
    sub_80C407C(v1);
    *(v0 + 116) = 0;
    result = 0;
    *(v0 + 124) = 0;
    return result;
}


// 0x810e854
int sub_810E854()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    int result; // r0
    signed int v4; // r1
    int v5; // r1
    int v6; // r3

    battle_isPaused();
    if ( v1 )
    {
        battle_isTimeStop();
        if ( v1 )
        {
            v2 = *(v0 + 112) + 1;
            if ( v2 >= 4 )
            {
                v2 = *(v0 + 36);
                if ( *(v0 + 36) )
                {
                    if ( v2 < *(v0 + 38) )
                        *(v0 + 36) = v2 + 1;
                    v2 = 0;
                }
            }
            *(v0 + 112) = v2;
        }
    }
    result = *(v0 + 124);
    if ( !result )
    {
        v4 = 0;
        result = *(v0 + 36);
        if ( result > 80 || (v4 = 1, result > 30) || (v4 = 2, *(v0 + 36)) )
        {
            v5 = 2 * v4;
            v6 = byte_810E8D4[v5 + 1];
            *(v0 + 16) = byte_810E8D4[v5];
            if ( v6 == 255 )
            {
                result = *(v0 + 100);
                if ( result )
                {
                    sub_80C4072(result);
                    result = 0;
                    *(v0 + 100) = 0;
                }
            }
            else
            {
                result = *(v0 + 100);
                if ( result )
                    *(result + 16) = v6;
                else
                    result = sub_810EB42();
            }
        }
    }
    return result;
}


// 0x810e8da
int sub_810E8DA()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0

    if ( object_getFlag() & 0x40000000 )
        return sub_8016EC4();
    result = battle_isTimeStop();
    if ( v2 )
    {
        result = battle_isPaused();
        if ( v2 )
        {
            v3 = *(v0 + 104);
            if ( v3 )
                result = sub_80165C2(v3);
            else
                result = (*(&off_810E914 + *(v0 + 10)))();
        }
    }
    return result;
}


// 0x810e928
signed int __noreturn sub_810E928()
{
    int v0; // r5
    int v1; // r0
    signed int result; // r0

    object_clearCollisionRegion();
    sub_801A5E2();
    sub_801A284();
    sub_801A29A();
    sub_801A2B0();
    sub_80101C4(v0);
    sub_801DC36();
    *(v0 + 26) = 0;
    *(v0 + 42) = -1;
    *(v0 + 76) = 0;
    v1 = sub_801A7F4();
    sub_802EF5C(v1);
    sub_802CDD0();
    sub_810EB42();
    object_reservePanel(*(v0 + 18), *(v0 + 19));
    *(v0 + 108) = 1;
    object_clearFlag(1051648);
    result = 4;
    *(v0 + 10) = 4;
    return result;
}


// 0x810e97a
int __fastcall sub_810E97A(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r5
    int result; // r0

    if ( *(v4 + 11) )
    {
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            *(v4 + 16) = 4;
            *(v4 + 32) = byte_810E7FC[*(v3 + 22)];
            result = 8;
            *(v4 + 10) = 8;
        }
    }
    else
    {
        *(v4 + 11) = 1;
        PlaySoundEffect(388, a2, a3);
        *(v4 + 16) = 3;
        result = *(v4 + 100);
        *(result + 16) = 8;
    }
    return result;
}


// 0x810e9b6
int sub_810E9B6()
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
        *(v0 + 16) = 5;
        *(*(v0 + 100) + 16) = 9;
        *(v0 + 32) = 32;
        result = 12;
        *(v0 + 10) = 12;
    }
    return result;
}


// 0x810e9d4
unsigned int __fastcall sub_810E9D4(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r5
    int v5; // r6
    int v6; // r4
    int v7; // r0
    unsigned __int8 v8; // vf

    if ( *(v4 + 32) == 8 )
    {
        v5 = *&byte_810E7E4[4 * *(v3 + 22)] | 0x800000;
        object_spawnCollisionRegion(*(v4 + 18), *(v4 + 19), 2, 0);
        v6 = *(v4 + 22) ^ *(v4 + 23);
        sub_801BD3C(*(v4 + 18), *(v4 + 19), 50, 16);
        sub_80C4072(*(v4 + 100));
        *(v4 + 100) = 0;
    }
    if ( *(v4 + 32) == 20 )
        PlaySoundEffect(389, a2, a3);
    v7 = *(v4 + 32);
    v8 = __OFSUB__(v7--, 1);
    *(v4 + 32) = v7;
    if ( (v7 < 0) ^ v8 )
    {
        sub_80C4072(*(v4 + 96));
        *(v4 + 10) = 16;
    }
    return sub_810EB5C();
}


// 0x810ea3e
int sub_810EA3E()
{
    int v0; // r5
    int result; // r0

    *(v0 + 104) = 1;
    sub_801DD34();
    result = 0;
    *(v0 + 10) = 0;
    return result;
}


// 0x810ea4e
int sub_810EA4E()
{
    unsigned __int8 *v0; // r6

    return (*(&off_810EA60 + *v0))();
}


// 0x810ea70
signed int sub_810EA70()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    signed int result; // r0

    result = *(v0 + 22);
    if ( *(v0 + 22) )
    {
        if ( *(v1 + 116) < 3 || (*(v1 + 116) = 0, sub_8109630(124, 73, 78)) )
        {
            result = 8;
            *v2 = 8;
        }
        else
        {
            *(v1 + 124) = 1;
            result = 12;
            *v2 = 12;
        }
    }
    return result;
}


// 0x810eaa2
void sub_810EAA2()
{
    ;
}


// 0x810eaa6
int sub_810EAA6()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int result; // r0

    ++*(v1 + 116);
    *(v3 + 40) = sub_810EB76;
    *(v3 + 24) = byte_810E804[*(v0 + 22)];
    *(v3 + 3) = 2;
    *(v3 + 12) = 20;
    *(v3 + 13) = 21;
    *(v3 + 48) = 3;
    *(v3 + 52) = 3;
    object_setAttack0();
    sub_8109952();
    result = 0;
    *v2 = 0;
    return result;
}


// 0x810eade
void __noreturn sub_810EADE()
{
    sub_810EBB0();
}


// 0x810eb42
int sub_810EB42()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 100);
    if ( !result )
    {
        result = sub_80C4038(0, 0, 7, 0);
        *(v0 + 100) = result;
    }
    return result;
}


// 0x810eb5c
unsigned int sub_810EB5C()
{
    int v0; // r5
    unsigned int v1; // r0
    unsigned __int8 v2; // cf
    unsigned int result; // r0

    v1 = *(v0 + 34) + 1;
    *(v0 + 34) = v1;
    v2 = __CFSHR__(v1, 3);
    result = v1 >> 3;
    if ( !v2 )
        result = sub_8109660(*(v0 + 18), *(v0 + 19), 16, 0);
    return result;
}


// 0x810eb76
void __fastcall __noreturn sub_810EB76(int a1, int a2, int a3)
{
    sub_810EB86(a1, a2, a3);
}


// 0x810eb86
void __fastcall __noreturn sub_810EB86(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_810EBA0);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x810ebb0
void __noreturn sub_810EBB0()
{
    sub_810EBB8();
}


// 0x810ebb8
int __noreturn sub_810EBB8()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    result = object_getClosestPanelMatchingRowFiltered(*(v0 + 22) ^ 1, 2, 0, 32);
    if ( result )
    {
        sub_81096FA(result, v2, v3, byte_810EC30);
        result = sub_8015D80(v4, v5, v6, v7);
    }
    return result;
}


// 0x810ed70
int sub_810ED70()
{
    int v0; // r5
    unsigned __int8 *v1; // r7
    int result; // r0

    if ( !**(v1 + 10) || !battle_isBattleOver() || sub_80103F8(*(v0 + 22) ^ 1) || dword_24 )
        result = (*(&off_810EDAC + *v1))();
    else
        result = (loc_801171C)();
    return result;
}


// 0x810edb8
int sub_810EDB8()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    if ( *(v1 + 1) )
    {
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            *(v1 + 52) = *(&off_810EFB0 + *(v1 + 12) - 1);
            ++*(v0 + 16);
            result = 4;
            *v1 = 4;
        }
    }
    else
    {
        *(v1 + 1) = 1;
        object_setFlag1(0x400000);
        *(v0 + 16) = 4 * *(v1 + 14) + 1;
        object_setCounterTime(30);
        result = 0;
        *(v1 + 15) = 0;
    }
    return result;
}


// 0x810ee04
signed int sub_810EE04()
{
    int v0; // r7
    int v1; // r0
    int v2; // r1
    unsigned __int8 *v3; // r4
    int v4; // r4
    int v5; // r6
    char *v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    int v10; // r1
    int v11; // r2
    signed int result; // r0

    v1 = sub_810EEDE();
    v3 = *(v0 + 52);
    *(v0 + 52) = v3 + 1;
    v4 = (*v3 << 8) | ((v1 | (v2 << 8)) << 16) | *(v0 + 13);
    v5 = *(v0 + 8);
    v6 = sub_810EF40();
    sub_80C59F6(v6, v7, v8, v9);
    PlaySoundEffect(390, v10, v11);
    *(v0 + 16) = 14;
    result = 8;
    *v0 = 8;
    return result;
}


// 0x810ee3e
int sub_810EE3E()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    int v5; // r0

    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v1 + 16) = result;
    if ( (result < 0) ^ v3 )
    {
        v5 = *(v1 + 12) - 1;
        *(v1 + 12) = v5;
        if ( v5 )
        {
            result = 4;
            *v1 = 4;
        }
        else
        {
            *(v0 + 16) = 4 * *(v1 + 14);
            result = (loc_801171C)();
        }
    }
    return result;
}


// 0x810ee64
int sub_810EE64()
{
    int v0; // r5
    _BYTE *v1; // r7
    int result; // r0

    if ( *v1 )
    {
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            *(v0 + 16) = 4 * v1[12];
            result = (loc_801171C)();
        }
    }
    else
    {
        *v1 = 1;
        result = 3;
        if ( v1[12] != 1 )
            result = 7;
        *(v0 + 16) = result;
    }
    return result;
}


// 0x810eede
int sub_810EEDE()
{
    unsigned __int8 *v0; // r5
    int v1; // r0
    int v2; // r1
    char v4; // r0
    int v5; // r2
    int v6; // r2
    int v7; // r3

    if ( object_getFlag() & 0xA000 )
    {
        GetPositiveSignedRNG2();
        sub_81096FA(v4 & 0xF, 15, v5, byte_810EF28);
        sub_8015C94(v0[18], v0[19], v6, v7);
    }
    v1 = sub_80103F8(v0[22] ^ 1);
    v2 = *(v1 + 19);
    return *(v1 + 18);
}


// 0x810ef40
char *sub_810EF40()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r4
    char v3; // r0
    char *result; // r0
    int v5; // r1
    int v6; // r3
    u32 v7; // r2

    v2 = object_getFrontDirection(v0);
    GetPositiveSignedRNG2();
    result = &byte_810EF74[16 * *(v1 + 14) + (v3 & 0xE)];
    v5 = v0->x + (*result * v2 << 16);
    v6 = result[1];
    v7 = v0->y;
    return result;
}


// 0x810f040
int sub_810F040()
{
    int v0; // r5
    int v1; // r10
    signed int v2; // r0
    char *v3; // r1
    int v4; // r3
    int v5; // r4
    signed int v6; // r6
    int result; // r0

    *(v0 + 104) = *(v0 + 36);
    v2 = 0;
    v3 = &(&off_810F088)[*(v0 + 22)][*(v1 + oToolkit_S2034880_Ptr)];
    v4 = 0;
    do
    {
        v5 = *v3;
        if ( *v3 )
        {
            v6 = *(v5 + 40);
            if ( v6 >= 79 && v6 <= 84 && *(v0 + 3) > *(v5 + 3) )
                ++v4;
        }
        ++v2;
        v3 += 4;
    }
    while ( v2 < 4 );
    result = 20 * v4;
    *(v0 + 108) = 20 * v4;
    return result;
}


// 0x810f090
char *sub_810F090()
{
    _DWORD *v0; // r5
    char *result; // r0

    result = v0[21];
    if ( *(result + 65) + *(result + 66) + *(result + 67) + *(result + 68) + *(result + 69) )
    {
        result = v0[24];
        if ( result != &byte_0[2] )
        {
            result = byte_0 + 1;
            v0[25] = 1;
        }
    }
    return result;
}


// 0x810f0c0
int sub_810F0C0()
{
    unsigned __int8 *v0; // r6

    return (*(&off_810F0D4 + *v0))();
}


// 0x810f0d8
void sub_810F0D8()
{
    int v0; // r4
    int v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // r0
    int v5; // r0
    signed int v6; // r0
    int v7; // r0
    __int16 v8; // r0

    if ( *(v1 + 100) )
    {
        *(v1 + 100) = 0;
        v4 = *(v1 + 96) + 1;
        *(v1 + 96) = v4;
        *(v3 + 12) = v4;
        object_setAttack0();
    }
    else if ( !sub_810F1B6() )
    {
        v5 = *(v1 + 108) - 1;
        *(v1 + 108) = v5;
        if ( v5 <= 0 )
        {
            *(v1 + 108) = 0;
            v6 = *(v2 + 4);
            *(v2 + 4) = v6 + 1;
            if ( v6 >= 3 && (*(v2 + 4) = 0, !battle_isBattleOver()) && (v7 = sub_80103F8(*(v1 + 22) ^ 1)) != 0 && *(v7 + 36) )
            {
                v8 = byte_810F18C[*(v0 + 22)];
                *(v3 + 8) = v8;
                *(v3 + 10) = v8;
                *(v3 + 12) = byte_810F192[sub_810F1E6()];
                *(v3 + 13) = *(v0 + 22);
                *(v3 + 14) = *(v1 + 96);
                *(v3 + 40) = v1 + 100;
                object_setAttack0();
            }
            else
            {
                *(v3 + 16) = byte_810F1A4[sub_810F1E6()];
                *(v3 + 44) = 0;
                *(v3 + 40) = sub_810F1F2;
                object_setAttack0();
            }
        }
    }
}


// 0x810f1b6
signed int sub_810F1B6()
{
    int v0; // r5
    signed int v1; // r6
    __int16 v2; // r0
    int v3; // r3
    int v4; // r4

    v1 = 0;
    v2 = sub_800ED90(v0);
    if ( v3 )
    {
        v4 = v2 & 0x1FF;
        if ( sub_800A704() >= byte_12C )
        {
            sub_80126E4(v4);
            object_setAttack0();
            sub_800F322();
            v1 = 1;
        }
    }
    return v1;
}


// 0x810f1e6
int sub_810F1E6()
{
    int v0; // r4
    int v1; // r5

    return *(v0 + 22) + 6 * *(v1 + 96);
}


// 0x810f1f2
int sub_810F1F2()
{
    int v0; // r5

    return *(v0 + 100);
}


// 0x810f2ec
int sub_810F2EC()
{
    unsigned __int8 *v0; // r7

    return (*(&off_810F300 + *v0))();
}


// 0x810f310
int sub_810F310()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    if ( *(v1 + 1) )
    {
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            *(v0 + 16) = 2;
            result = 4;
            *v1 = 4;
        }
    }
    else
    {
        *(v1 + 1) = 1;
        object_setCounterTime(16);
        result = 1;
        *(v0 + 16) = 1;
    }
    return result;
}


// 0x810f33c
int sub_810F33C()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    _DWORD *i; // r3
    int v4; // r1
    int v5; // r2
    int v6; // r4
    int v7; // r6
    int v8; // r7

    *(v1 + 16) = *(v1 + 14);
    *v1 = 8;
    v2 = (object_getFrontDirection(v0) + v0->panelX) | 16 * v0->panelY;
    for ( i = *(v1 + 52); *i; ++i )
        ;
    v4 = *(v1 + 60);
    v5 = *(v1 + 48);
    v6 = *(v1 + 13) | (*(v1 + 56) << 8);
    v7 = *(v1 + 8);
    v8 = *(v1 + 40);
    return sub_80CBAB8(v2, v4, v5, i);
}


// 0x810f376
int sub_810F376()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    int v5; // r0

    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v1 + 16) = result;
    if ( (result < 0) ^ v3 )
    {
        v5 = *(v1 + 12) - 1;
        *(v1 + 12) = v5;
        if ( v5 )
        {
            result = 4;
            *v1 = 4;
        }
        else
        {
            *(v1 + 16) = *(v1 + 24);
            *(v0 + 16) = 0;
            result = 12;
            *v1 = 12;
        }
    }
    return result;
}


// 0x810f3f8
Battle *__fastcall sub_810F3F8(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    Battle *result; // r0

    result = sub_80E5B62(a1, a2, a3, a4);
    *(v4 + 104) = result;
    return result;
}


// 0x810f402
int sub_810F402()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r0
    int v4; // r0

    v1 = *(v0 + 10);
    if ( !*(v0 + 10) )
    {
        v2 = *(v0 + 108);
        if ( v2 )
            sub_80CBAF2(v2);
        v3 = *(v0 + 112);
        if ( v3 )
            sub_80CBAF2(v3);
        v4 = *(v0 + 116);
        if ( v4 )
            sub_80CBAF2(v4);
        v1 = sub_80E5B6E(*(v0 + 104));
    }
    return sub_80165C2(v1);
}


// 0x810f434
int sub_810F434()
{
    unsigned __int8 *v0; // r6

    return (*(&off_810F448 + *v0))();
}


// 0x810f44c
void sub_810F44C()
{
    int v0; // r4
    _DWORD *v1; // r5
    int v2; // r7
    int v3; // r0
    int v4; // r1
    int v5; // r3
    int v6; // r0

    v3 = byte_810F3EC[*(v0 + 22)];
    v4 = v1[24];
    if ( v4 < v3 && !v4 )
    {
        *(v2 + 12) = v3;
        if ( object_getFlag() & 0x8000 )
            *(v2 + 12) = 1;
        *(v2 + 13) = byte_810F3E6[v5];
        *(v2 + 14) = byte_810F3F2[v5];
        *(v2 + 8) = byte_810F3E0[v5];
        *(v2 + 10) = 10;
        *(v2 + 48) = *&byte_810F3C8[4 * v5];
        *(v2 + 52) = v1 + 27;
        v6 = v1[25];
        *(v2 + 56) = v6;
        v1[25] = (v6 + 1) & 3;
        *(v2 + 60) = v1[26];
        *(v2 + 24) = 120;
        if ( object_getFlag() & 0x2000 )
            *(v2 + 24) += 60;
        *(v2 + 40) = v1 + 24;
        object_setAttack0();
    }
}


// 0x810f5d0
int sub_810F5D0()
{
    int v0; // r4
    int v1; // r5
    unsigned __int8 *v2; // r7
    int v3; // r0

    v3 = *(*(v1 + 84) + 112);
    if ( v3 )
    {
        if ( v3 & 0xC000000 )
        {
            sub_8110222(*&byte_810F640[4 * *(v1 + 126)]);
            object_clearCollisionRegion();
            if ( !*(v0 + 22) )
            {
                if ( object_getPanelParameters(*(v1 + 18), *(v1 + 19)) & &byte_400 )
                    object_setPanelType(*(v1 + 18), *(v1 + 19), 2);
            }
        }
    }
    return (*(&off_810F620 + *v2))();
}


// 0x810f660
int __fastcall sub_810F660(int a1, int a2, int a3)
{
    int v3; // r5
    _BYTE *v4; // r7
    int result; // r0

    if ( !v4[1] )
    {
        PlaySoundEffect(457, a2, a3);
        *(v3 + 16) = 1;
        v4[1] = 1;
    }
    result = *(v3 + 110) + 1;
    *(v3 + 110) = result;
    if ( result == 40 )
    {
        *(v3 + 110) = 0;
        sub_811016C(*(v3 + 18), *(v3 + 19), 0x200000);
        *(v3 + 112) = 1;
        object_setFlag1(64);
        *(v3 + 127) = 0;
        if ( object_getFlag() & 0xA000 )
            *(v3 + 127) = 1;
        *v4 = 4;
        result = 0;
        v4[1] = 0;
    }
    return result;
}


// 0x810f6c4
int sub_810F6C4()
{
    int v0; // r5
    int v1; // r7
    int v2; // r2
    int result; // r0
    int v4; // r0
    char v5; // r1
    char v6; // r1
    int v7; // r1
    int v8; // r2

    if ( !*(v1 + 1) )
    {
        *(v1 + 22) = 0;
        *(v0 + 18) = 0;
        *(v1 + 23) = 0;
        *(v0 + 19) = 0;
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        *(v1 + 1) = 1;
    }
    object_clearCollisionRegion();
    *v0 &= 0xFDu;
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        v4 = sub_810F9F6(0, 2, v2);
        if ( v4 )
        {
            *(v1 + 22) = v4;
            *(v0 + 18) = v4;
            *(v1 + 23) = v5;
            *(v0 + 19) = v5;
            object_setCoordinatesFromPanels(v0);
            *(v0 + 62) -= 36;
            object_updateCollisionPanels(v0);
            sub_810FC0C(1);
            v6 = *(v0 + 19);
            *(v0 + 108) = *(v0 + 18);
            *(v0 + 109) = v6;
            if ( sub_802D234() != 6 )
                object_setCounterTime(16);
            sub_810FAA0();
            sub_810FB30();
            PlaySoundEffect(247, v7, v8);
            object_setCollisionRegion(1);
            *v0 |= 2u;
            sub_8016934();
            *(v0 + 16) = 2;
            *v1 = 8;
            result = 0;
            *(v1 + 1) = 0;
        }
        else
        {
            *v1 = 20;
            result = 0;
            *(v1 + 1) = 0;
        }
    }
    return result;
}


// 0x810f770
int sub_810F770()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    *(v0 + 56) += *(v0 + 68);
    object_setPanelsFromCoordinates(v0);
    object_updateCollisionPanels(v0);
    sub_8109660(*(v0 + 18), *(v0 + 19), 1, *(v0 + 22) ^ *(v0 + 23));
    sub_810FBD8(0);
    sub_810FC30();
    result = 3 * (*(v0 + 116) ^ 1);
    if ( result == *(v0 + 19) )
    {
        if ( *(v0 + 103) && 5 * (*(v0 + 22) ^ 1) + 1 != *(v0 + 18) )
        {
            *(v0 + 119) = 0;
            *(v0 + 120) = *(v0 + 56);
            *v1 = 12;
            result = 0;
            *(v1 + 1) = 0;
        }
        else
        {
            sub_810FCA2();
            *v1 = 16;
            result = 0;
            *(v1 + 1) = 0;
        }
    }
    return result;
}


// 0x810f7ec
int sub_810F7EC()
{
    Battle *v0; // r5
    int v1; // r7
    signed int v2; // r2
    int v3; // r1
    int v4; // r2

    v2 = v0->extraVars[14] + 1;
    v0->extraVars[14] = v2;
    if ( v2 == v0->extraVars[21] )
    {
        --v0->extraVars[7];
        v0->extraVars[20] ^= 1u;
        v0->vy = -v0->vy;
        v3 = v0->panelY;
        v0->x = object_getCoordinatesForPanels(v0->panelX);
        v0->extraVars[14] = 0;
        PlaySoundEffect(247, 0, v4);
        *v1 = 8;
        *(v1 + 1) = 0;
    }
    else
    {
        v0->currAnimation = sub_810FA4C(v2) * *&byte_810F890[4 * v0->extraVars[20]] + *(&dword_810F888 + v0->extraVars[20]);
        v0->x += v0->vx;
        sub_810FA64();
        object_setPanelsFromCoordinates(v0);
        sub_810FBD8(1);
        sub_810FC30();
    }
    object_updateCollisionPanels(v0);
    return sub_8109660(v0->panelX, v0->panelY, 1, v0->Alliance ^ v0->directionFlip);
}


// 0x810f898
int sub_810F898()
{
    int v0; // r5
    _BYTE *v1; // r7
    int result; // r0
    char v3; // r0
    char v4; // r0

    if ( *(v0 + 110) )
    {
        --*(v0 + 110);
        *(v0 + 56) += *(v0 + 68);
        object_setPanelsFromCoordinates(v0);
        object_updateCollisionPanels(v0);
        sub_8109660(*(v0 + 18), *(v0 + 19), 1, *(v0 + 22) ^ *(v0 + 23));
        sub_810FBD8(0);
        result = sub_810FC30();
    }
    else
    {
        if ( !v1[1] )
        {
            v1[1] = 1;
            sub_810FC0C(*(v0 + 116));
        }
        object_clearCollisionRegion();
        *v0 &= 0xFDu;
        result = 124;
        if ( *(v0 + 124) )
        {
            *(v0 + 124) = 0;
            sub_810FB54(124);
            *(v0 + 96) = 0;
            *(v0 + 112) = 0;
            v3 = *(v0 + 100);
            v1[22] = v3;
            *(v0 + 18) = v3;
            v4 = *(v0 + 101);
            v1[23] = v4;
            *(v0 + 19) = v4;
            object_setCoordinatesFromPanels(v0);
            object_updateCollisionPanels(v0);
            *(v0 + 60) = 0;
            object_setCollisionRegion(1);
            *v0 |= 2u;
            sub_8016934();
            object_clearFlag(64);
            sub_811013C(*(v0 + 100), *(v0 + 101), 0x200000);
            object_removePanelReserve(*(v0 + 100), *(v0 + 101));
            JUMPOUT(*byte_810F954);
        }
    }
    return result;
}


// 0x810f96c
void __noreturn sub_810F96C()
{
    int v0; // r5
    _BYTE *v1; // r7
    char v2; // r0
    char v3; // r0

    if ( !v1[1] )
        v1[1] = 1;
    object_clearCollisionRegion();
    *v0 &= 0xFDu;
    *(v0 + 124) = 0;
    sub_810FB54(124);
    *(v0 + 96) = 0;
    *(v0 + 112) = 0;
    v2 = *(v0 + 100);
    v1[22] = v2;
    *(v0 + 18) = v2;
    v3 = *(v0 + 101);
    v1[23] = v3;
    *(v0 + 19) = v3;
    object_setCoordinatesFromPanels(v0);
    *(v0 + 60) = 0;
    object_updateCollisionPanels(v0);
    object_setCollisionRegion(1);
    *v0 |= 2u;
    object_clearFlag(64);
    sub_811013C(*(v0 + 100), *(v0 + 101), 0x200000);
    object_removePanelReserve(*(v0 + 100), *(v0 + 101));
    JUMPOUT(*byte_810F9DE);
}


// 0x810f9f6
int __fastcall sub_810F9F6(int a1, int a2, int a3)
{
    Battle *v3; // r5
    int v4; // r7
    int v5; // r4
    int v6; // r0
    int result; // r0

    if ( v3->extraVars[31] )
        sub_810FA2C(v3->extraVars[31], a2, a3);
    v5 = object_getFrontDirection(v3);
    v6 = *(v4 + 44);
    if ( v6 && *(v6 + 36) > 0 )
        result = *(v6 + 18) - v5;
    else
        result = 0;
    return result;
}


// 0x810fa2c
void __fastcall __noreturn sub_810FA2C(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_810FA3C);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x810fa4c
signed int __fastcall sub_810FA4C(signed int result)
{
    __asm
    {
        SVC         6
        SVC         6
    }
    if ( result == 5 )
        result = 4;
    return result;
}


// 0x810fa64
int sub_810FA64()
{
    int v0; // r5
    int v1; // r3
    int result; // r0

    v1 = *(v0 + 119) + *(v0 + 118);
    *(v0 + 119) = v1;
    result = 3072 * *&math_sinTable[2 * v1] * *&byte_810FA98[4 * *(v0 + 116)];
    *(v0 + 56) = *(v0 + 120) + result;
    return result;
}


// 0x810faa0
char *sub_810FAA0()
{
    int v0; // r4
    int v1; // r2
    int v2; // r1
    char *result; // r0
    char *v4; // ST00_4
    int v5; // ST04_4

    v1 = 0;
    v2 = 4 * *(v0 + 22);
    result = &byte_810FD58[v2];
    do
    {
        v4 = result;
        v5 = v1;
        sub_80C1400(result, v2, v1, result[v1]);
        result = v4;
        v1 = v5 + 1;
    }
    while ( v5 != 3 );
    return result;
}


// 0x810faca
int __fastcall sub_810FACA(char a1, int a2)
{
    int v2; // r5
    int v3; // r7
    int v4; // r4
    int v5; // r6
    int v6; // r2
    int v7; // r7

    v4 = *&byte_810FAFC[4 * *(v2 + 126)];
    v5 = *(v3 + 8) | (*(v3 + 10) << 16);
    v6 = *(v3 + 2);
    v7 = *&byte_810FB18[4 * *(v2 + 126)];
    return object_spawnCollisionRegion(a1, a2, v6, 0);
}


// 0x810fb30
int sub_810FB30()
{
    int v0; // r4

    sub_801A082(
        4 * *(v0 + 22),
        *&byte_810FB88[4 * *(v0 + 22)],
        *&byte_810FB6C[4 * *(v0 + 22)],
        *&byte_810FBA4[4 * *(v0 + 22)]);
    return object_setCollisionStatusEffect1(*&byte_810FBC0[4 * *(v0 + 22)]);
}


// 0x810fb54
int __fastcall sub_810FB54(int a1)
{
    sub_801A082(a1, 16, 2, 3);
    return object_setCollisionStatusEffect1(0);
}


// 0x810fbd8
int __fastcall sub_810FBD8(int a1)
{
    _DWORD *v1; // r5
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r1
    int v6; // r2
    int v7; // r1
    bool v8; // zf
    int result; // r0
    int v10; // [sp-8h] [bp-1Ch]
    int v11; // [sp-4h] [bp-18h]

    if ( a1 )
    {
        v5 = v1[14];
        v2 = v1[13] + v1[16];
    }
    else
    {
        v2 = v1[13];
        v3 = v1[14];
        v4 = v1[17];
    }
    v6 = v1[15];
    v10 = sub_800E258(v2);
    v11 = v7;
    v8 = (object_getPanelParameters(v10, v7) & 0x800000) == 0;
    result = v10;
    if ( !v8 )
        result = sub_810FACA(v10, v11);
    return result;
}


// 0x810fc0c
void __fastcall sub_810FC0C(int result)
{
    Battle *v1; // r5
    u32 v2; // t1

    if ( result )
    {
        v2 = v1->z;
        SpawnT4BattleObjectWithId0(v1, (v1->Alliance ^ v1->directionFlip) << 8, v1->x, v1->y, 0);
    }
}


// 0x810fc30
int sub_810FC30()
{
    unsigned __int8 *v0; // r5
    int result; // r0
    unsigned __int8 v2; // r1

    result = v0[18];
    if ( result != v0[108] || v0[19] != v0[109] )
    {
        sub_810FC68(v0[108], v0[109]);
        v2 = v0[19];
        v0[108] = v0[18];
        v0[109] = v2;
        result = object_setCollisionRegion(1);
    }
    return result;
}


// 0x810fc68
int __fastcall sub_810FC68(int result, int a2)
{
    int v2; // r4
    bool v3; // zf
    signed int v4; // r2
    int v5; // [sp-8h] [bp-1Ch]
    int v6; // [sp-4h] [bp-18h]

    if ( result > 0 && result < 7 && a2 > 0 && a2 < 4 )
    {
        v5 = result;
        v6 = a2;
        v3 = object_isPanelSolid(result, a2) == 0;
        result = v5;
        if ( !v3 )
        {
            v4 = byte_810FC9C[*(v2 + 22)];
            if ( v4 != 255 )
                object_setPanelType(v5, v6, v4);
        }
    }
    return result;
}


// 0x810fca2
int sub_810FCA2()
{
    int v0; // r5
    int result; // r0

    result = *&byte_810FCC4[4 * *(v0 + 116)];
    *(v0 + 68);
    __asm { SVC         6 }
    *(v0 + 110) = result;
    return result;
}


// 0x810fd70
int sub_810FD70()
{
    int v0; // r5
    int v1; // r0

    v1 = *(*(v0 + 84) + 112);
    if ( v1 && v1 & 0xC000000 )
        object_clearCollisionRegion();
    return sub_8016B02();
}


// 0x810fd90
int sub_810FD90()
{
    int v0; // r5
    int v1; // r0

    v1 = *(*(v0 + 84) + 112);
    if ( v1 && v1 & 0xC000000 )
        object_clearCollisionRegion();
    return sub_8016B36();
}


// 0x810fdb0
int sub_810FDB0()
{
    int v0; // r5
    int v1; // r0

    v1 = *(*(v0 + 84) + 112);
    if ( v1 && v1 & 0xC000000 )
        object_clearCollisionRegion();
    return sub_8016B72();
}


// 0x810fdd0
int sub_810FDD0()
{
    unsigned __int8 *v0; // r6

    return (*(&off_810FDE4 + *v0))();
}


// 0x810fdf0
int sub_810FDF0()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 10);
    if ( !*(v0 + 10) )
    {
        v1 = object_getFlag();
        if ( v1 & 0x40000000 )
        {
            sub_80C10E8(*(v0 + 104));
            v1 = 0;
            *(v0 + 104) = 0;
        }
    }
    return sub_80165C2(v1);
}


// 0x810fe18
int sub_810FE18()
{
    int v0; // r5
    _BYTE *v1; // r6
    int result; // r0
    signed int v3; // r0
    int v4; // r1

    object_setCollisionRegion(1);
    result = sub_8109630(96, 91, 96);
    if ( !result )
    {
        v3 = 125;
        if ( *(v0 + 125) )
        {
            *(v0 + 125) = 0;
LABEL_5:
            *(v0 + v3) = 0;
            *(v0 + 96) = 1;
            result = 4;
            *v1 = 4;
            return result;
        }
        v3 = 102;
        v4 = *(v0 + 102) + 1;
        *(v0 + 102) = v4;
        if ( v4 > 2 )
            goto LABEL_5;
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x810fe5c
int __fastcall sub_810FE5C(int a1)
{
    int v1; // r4
    int v2; // r5
    _BYTE *v3; // r6
    int v4; // r7
    int v6; // r0
    int v7; // r1
    int v8; // r1
    int v9; // ST00_4
    int v10; // r0
    int v11; // r2
    int result; // r0

    object_canMove(a1);
    if ( _ZF )
    {
        *(v2 + 96) = 0;
    }
    else
    {
        v6 = *(v2 + 18);
        v7 = *(v2 + 19);
        *(v2 + 100) = v6;
        *(v2 + 101) = v7;
        object_reservePanel(v6, v7);
        *(v4 + 44) = sub_80103F8(*(v2 + 22) ^ 1);
        v8 = *(v1 + 22);
        *(v4 + 24) = byte_810FD30[v8];
        *(v4 + 8) = byte_810FD1A[v8];
        *(v2 + 68) = *&byte_810FD38[4 * v8];
        v9 = v8;
        v10 = object_getFrontDirection(v2);
        *(v2 + 64) = v10 * v11;
        __asm { SVC         6 }
        *(v2 + 117) = 0;
        __asm { SVC         6 }
        *(v2 + 118) = -128;
        *(v2 + 103) = byte_810FD50[v9];
        *(v2 + 116) = 0;
        *(v4 + 10) = byte_810FD20[v9];
        *(v4 + 16) = byte_810FD28[v9];
        object_setFlag1(64);
        object_setAttack0();
        *(v4 + 1) = 0;
        *(v2 + 110) = 0;
        *(v2 + 111) = 0;
    }
    result = 0;
    *v3 = 0;
    return result;
}


// 0x810ff1c
int sub_810FF1C()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int result; // r0

    *(v3 + 40) = sub_810FF68;
    *(v3 + 44) = sub_80103F8(*(v1 + 22) ^ 1);
    *(v3 + 24) = byte_810FD14[*(v0 + 22)];
    if ( object_getFlag() & 0x8000 )
        *(v3 + 24) += 60;
    *(v3 + 3) = 2;
    *(v3 + 12) = 20;
    *(v3 + 13) = 21;
    *(v3 + 48) = 3;
    *(v3 + 52) = 3;
    object_setAttack0();
    sub_8109952();
    result = 0;
    *v2 = 0;
    return result;
}


// 0x810ff68
__int64 __noreturn sub_810FF68()
{
    int v0; // r5
    __int64 v1; // r0
    int v2; // r2
    __int64 v3; // ST00_8

    object_reservePanel(*(v0 + 18), *(v0 + 19));
    LODWORD(v1) = sub_810FF9C();
    if ( !v1 )
    {
        LODWORD(v1) = sub_810FFC4();
        if ( !v1 )
            sub_8110000(0, SHIDWORD(v1), v2);
    }
    v3 = v1;
    object_removePanelReserve(*(v0 + 18), *(v0 + 19));
    return v3;
}


// 0x810ff9c
int sub_810FF9C()
{
    unsigned __int8 *v0; // r5
    int result; // r0
    int v2; // r2
    int v3; // r6
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    result = sub_80103F8(v0[22] ^ 1);
    if ( result )
    {
        sub_81096FA(v0[18], v0[19], v2, byte_81100A0);
        v3 = v0[22];
        result = sub_811000E(v4, v5, v6, v7);
    }
    return result;
}


// 0x810ffc4
int sub_810FFC4()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // ST00_4
    int v13; // [sp+0h] [bp-2Ch]

    result = sub_80103F8(*(v0 + 22) ^ 1);
    if ( result )
    {
        sub_81096FA(*(result + 19), v2, v3, byte_81100A0);
        result = object_getPanelsIgnoreColumnFiltered(v4, v5, v6, v7);
        if ( result )
        {
            v8 = result;
            GetPositiveSignedRNG2();
            __asm { SVC         6 }
            result = *(&v13 + v8) & 7;
        }
    }
    return result;
}


// 0x8110000
void __fastcall __noreturn sub_8110000(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_81100A0);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x811000e
int __fastcall sub_811000E(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r4

    v5 = *(&off_8019B78 + v4);
    return sub_8110020(a1, a2, a3, a4);
}


// 0x8110020
int __fastcall sub_8110020(int a1, int a2, int a3, int a4)
{
    char *v4; // r4
    int v5; // r5
    int v6; // r6
    int v7; // r6
    int v8; // r0
    int v9; // r1
    int result; // r0
    int v15; // [sp+0h] [bp-4Ch]
    int v16; // [sp+1Ch] [bp-30h]
    int v17; // [sp+20h] [bp-2Ch]
    int v18; // [sp+24h] [bp-28h]
    int v19; // [sp+28h] [bp-24h]
    int v20; // [sp+2Ch] [bp-20h]
    int v21; // [sp+30h] [bp-1Ch]
    int v22; // [sp+34h] [bp-18h]

    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = a4;
    v20 = object_getAllianceDirection(v6);
    v7 = 0;
    while ( 1 )
    {
        v8 = *v4;
        if ( v8 == 127 )
            break;
        v9 = v4[1];
        v21 = v8 * v20 + v16;
        v22 = v9 + v17;
        if ( object_checkPanelParameters(v21, v9 + v17, v18, v19) )
        {
            if ( v22 != *(v5 + 19) )
                *(&v15 + v7++) = v21 | 16 * v22;
        }
        v4 += 2;
    }
    result = v7;
    if ( v7 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v15 + v7) & 7;
    }
    return result;
}


// 0x81100b0
int __fastcall sub_81100B0(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    char v5; // r1
    int v6; // r1
    int result; // r0

    *(v4 + 96) = 0;
    *(v4 + 112) = 0;
    *(v4 + 125) = 0;
    v5 = *(v4 + 19);
    *(v4 + 100) = *(v4 + 18);
    *(v4 + 101) = v5;
    *(v4 + 102) = 0;
    v6 = *(*(v4 + 88) + 22);
    *(v4 + 126) = v6;
    result = sub_80C10C8(126, v6, 101, a4);
    *(v4 + 104) = result;
    return result;
}


// 0x81100e2
signed int sub_81100E2()
{
    int v0; // r5
    signed int result; // r0

    result = *(v0 + 96);
    if ( !result )
    {
        result = *&byte_8110108[4 * *(v0 + 126)];
        if ( *(*(v0 + 84) + result) )
        {
            result = 125;
            *(v0 + 125) = 1;
        }
    }
    return result;
}


// 0x811013c
void __fastcall sub_811013C(char a1, int a2, int a3)
{
    Battle *v3; // r5
    int v4; // r4
    int v5; // ST04_4
    int v6; // r0
    int v7; // r1

    v4 = a3;
    v5 = (v3->Alliance ^ v3->directionFlip) << 8;
    v6 = object_getCoordinatesForPanels(a1);
    SpawnT4BattleObjectWithId0(v3, v5, v6, v7, v4);
}


// 0x811016c
void __fastcall sub_811016C(char a1, int a2, int a3)
{
    Battle *v3; // r5
    int v4; // r4
    int v5; // ST04_4
    int v6; // r0
    int v7; // r1

    v4 = a3;
    v5 = (v3->Alliance ^ v3->directionFlip) << 8;
    v6 = object_getCoordinatesForPanels(a1);
    SpawnT4BattleObjectWithId0(v3, v5, v6, v7, v4);
}


// 0x8110222
void __fastcall sub_8110222(int a1)
{
    Battle *v1; // r5
    int v2; // ST04_4
    int v3; // ST00_4
    int v4; // r1
    int v5; // r0
    int v6; // r1

    v2 = a1;
    v3 = (v1->Alliance ^ v1->directionFlip) << 8;
    v4 = v1->panelY;
    v5 = object_getCoordinatesForPanels(v1->panelX);
    SpawnT4BattleObjectWithId0(v1, v2, v5, v6, 0);
}


// 0x8110254
int sub_8110254()
{
    int v0; // r5
    int result; // r0

    result = byte_810FD20[*(*(v0 + 88) + 22)];
    *(v0 + 46) = result;
    return result;
}


// 0x811037c
int sub_811037C()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8110390 + *v0))();
}


// 0x81103a0
int sub_81103A0()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int *v3; // r1
    int v4; // r2
    int v5; // r1
    int v6; // r2
    signed int v7; // r0
    int v8; // r0
    int v9; // r0
    unsigned __int8 v10; // vf
    int result; // r0

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        v0->currAnimation = 1;
        SpawnT4BattleObjectWithId0(v0, &v0->vx, v0->x, v0->y, v0->z);
        v2 = sub_80C4038(0x200000, 1, 5, 0);
        v3 = *(v1 + 40);
        *v3 = v2;
        PlaySoundEffect(302, v3, v4);
        PlaySoundEffect(138, v5, v6);
    }
    v7 = *(v1 + 16);
    if ( v7 <= 16 && !(v7 & 4) )
    {
        v8 = object_getFrontDirection(v0);
        sub_8109660(v8 + v0->panelX, v0->panelY, 8, v0->directionFlip ^ v0->Alliance);
    }
    v9 = *(v1 + 16);
    v10 = __OFSUB__(v9, 1);
    result = v9 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v10) | (result == 0) )
    {
        object_setCounterTime(30);
        *v1 = 4;
        result = sub_8110416();
    }
    return result;
}


// 0x8110416
signed int sub_8110416()
{
    Battle *v0; // r5
    int v1; // r7
    char v2; // r0
    int v3; // r6
    int v4; // r4
    int v5; // r7
    int v6; // r0
    int v7; // r1
    int v8; // r2
    signed int result; // r0
    int v10; // [sp+0h] [bp-10h]

    *(**(v1 + 40) + 16) = 6;
    v0->currAnimation = 2;
    v2 = object_getFrontDirection(v0);
    v3 = *(v1 + 8);
    v4 = (*(v1 + 18) << 8) + 1;
    v5 = *(v1 + 52);
    sub_80D5890(v2 + v0->panelX, v0->panelY, 3, 0);
    v6 = sub_80C4038(0, 0, 4, 0);
    *(*(v10 + 52) + 4) = v6;
    sub_80C4090(v6);
    PlaySoundEffect(410, v7, v8);
    result = 8;
    *v10 = 8;
    return result;
}


// 0x811046a
int sub_811046A()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    int *v5; // r2
    int v6; // r0
    int *v7; // r2
    int v8; // r0

    if ( object_getFlag() & 0x1000
        || !**(v1 + 52)
        || (v2 = *(v1 + 18), v3 = __OFSUB__(v2, 1),
                                                 result = v2 - 1,
                                                 *(v1 + 18) = result,
                                                 ((result < 0) ^ v3) | (result == 0)) )
    {
        **(v1 + 52) = 0;
        v5 = *(v1 + 40);
        v6 = *v5;
        *v5 = 0;
        sub_80C4072(v6);
        v7 = (*(v1 + 52) + 4);
        v8 = *v7;
        *v7 = 0;
        sub_80C4072(v8);
        *(v0 + 16) = 3;
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x81104b2
void sub_81104B2()
{
    Battle *v0; // r5
    int v1; // r7

    if ( sprite_getFrameParameters() & 0x80 )
    {
        **(v1 + 48) = 0;
        object_exitAttackState(v0);
    }
}


// 0x8110518
int sub_8110518()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0

    v1 = *(v0 + 10);
    if ( !*(v0 + 10) )
    {
        *(v0 + 104) = 0;
        v2 = *(v0 + 108);
        if ( v2 )
        {
            sub_80C4072(v2);
            *(v0 + 108) = 0;
        }
        v1 = *(v0 + 100);
        if ( v1 )
        {
            sub_80C4072(v1);
            v1 = 0;
            *(v0 + 100) = 0;
        }
    }
    return sub_80165C2(v1);
}


// 0x8110546
int sub_8110546()
{
    int v0; // r5
    int result; // r0

    *(v0 + 104) = 0;
    result = *(v0 + 108);
    if ( result )
    {
        sub_80C4072(result);
        result = 0;
        *(v0 + 108) = 0;
    }
    return result;
}


// 0x811055c
int sub_811055C()
{
    unsigned __int8 *v0; // r6

    return (*(&off_8110570 + *v0))();
}


// 0x8110574
int sub_8110574()
{
    int v0; // r4
    int v1; // r5
    int v2; // r6
    int v3; // r7
    signed int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf
    int result; // r0
    int v8; // r1

    if ( !*(v2 + 2) )
    {
        *(v2 + 2) = 1;
        *(v2 + 8) = *(&loc_8110506 + *(v0 + 22));
        if ( object_getFlag() & 0x2000 )
            *(v2 + 8) += 120;
    }
    if ( *(v1 + 96) )
        goto LABEL_12;
    v4 = *(v2 + 8);
    if ( v4 <= 60 && v4 & 4 )
        sub_8109660(*(v1 + 18), *(v1 + 19), 1, *(v1 + 22) ^ *(v1 + 23));
    v5 = *(v2 + 8);
    v6 = __OFSUB__(v5, 1);
    result = v5 - 1;
    *(v2 + 8) = result;
    if ( ((result < 0) ^ v6) | (result == 0) )
    {
        if ( !(object_getFlag() & 0x8000) )
            sub_800E360(*(v1 + 38), 0);
LABEL_12:
        v8 = *(v0 + 22);
        *(v3 + 8) = byte_8110500[v8];
        *(v3 + 10) = 10;
        *(v3 + 16) = byte_811050C[v8];
        *(v3 + 18) = byte_8110512[v8];
        *(v3 + 48) = v1 + 96;
        *(v3 + 52) = v1 + 104;
        *(v3 + 40) = v1 + 100;
        object_setAttack0();
        result = 0;
        *(v2 + 2) = 0;
    }
    return result;
}


// 0x811060a
signed int sub_811060A()
{
    int v0; // r5
    signed int result; // r0

    result = 1;
    *(v0 + 96) = 1;
    return result;
}


// 0x8110714
int sub_8110714()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8110728 + *v0))();
}


// 0x811072c
void sub_811072C()
{
    int v0; // r5
    int v1; // r6
    int v2; // r7
    int v3; // r0
    int v4; // r0
    char v5; // r2
    int v6; // [sp-4h] [bp-8h]

    v3 = sub_80103F8(*(v0 + 22) ^ 1);
    if ( v3
        && *(v3 + 36)
        && *(v3 + 19) == *(v0 + 19)
        && (v6 = v3, object_getFrontDirection(v0) * (*(v3 + 18) - *(v0 + 18)) > 0)
        && (*(v2 + 44) = v6, !sub_8109630(108, 103, 108)) )
    {
        *(v0 + 108) = 1;
        sub_8110D18();
        v4 = *(v2 + 44);
        v5 = *(v4 + 19);
        *(v0 + 128) = *(v4 + 18);
        *(v0 + 129) = v5;
        *v1 = 8;
        *(v1 + 2) = 0;
        (loc_801171C)();
    }
    else
    {
        *(v2 + 16) = *(v2 + 24);
        object_setAttack0();
    }
}


// 0x81107a0
int sub_81107A0()
{
    unsigned __int8 *v0; // r7

    return (*(&off_81107B4 + *v0))();
}


// 0x81107bc
void __noreturn sub_81107BC()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1

    if ( object_checkPanelParameters(*(v1 + 22), *(v1 + 23), *(v1 + 52), *(v1 + 56)) )
    {
        v2 = *(v1 + 22);
        *(v0 + 20) = v2;
        v3 = *(v1 + 23);
        *(v0 + 21) = v3;
        object_reservePanel(v2, v3);
        *v1 = 4;
        sub_8110840();
        sub_81107F2();
    }
    else
    {
        *(v1 + 26) = 0;
        (loc_801171C)();
    }
}


// 0x81107f2
void sub_81107F2()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0
    int v5; // r1

    v0->x += v0->vx;
    v0->y += v0->vy;
    if ( *(v1 + 16) == *(v1 + 18) )
    {
        object_setPanelsFromCoordinates(v0);
        object_updateCollisionPanels(v0);
    }
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2--, 1);
    *(v1 + 16) = v2;
    if ( (v2 < 0) ^ v3 )
    {
        v4 = v0->futurePanelX;
        v0->panelX = v4;
        v5 = v0->futurePanelY;
        v0->panelY = v5;
        object_removePanelReserve(v4, v5);
        object_setCoordinatesFromPanels(v0);
        object_setCollisionPanelsToCurrent();
        *(v1 + 26) = 1;
        *(v1 + 16) = *(v1 + 24);
        object_setAttack0();
    }
}


// 0x8110840
unsigned int sub_8110840()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1
    unsigned int v3; // r0
    int v4; // r0
    unsigned int result; // r0
    int v6; // r1

    v2 = *(v1 + 48) * (*(v1 + 23) - *(v0 + 19));
    if ( v2 )
    {
        *(v0 + 68) = v2;
        *(v0 + 64) = 0;
        v3 = 1572864;
    }
    else
    {
        v4 = (*(v1 + 22) - *(v0 + 18)) * *(v1 + 48);
        if ( !v4 )
        {
            *(v0 + 64) = 0;
            *(v0 + 68) = 0;
            result = 1;
            *(v1 + 16) = 1;
            *(v1 + 18) = 1;
            return result;
        }
        *(v0 + 64) = v4;
        *(v0 + 68) = 0;
        v3 = 2621440;
    }
    v6 = *(v1 + 48);
    __asm { SVC         6 }
    *(v1 + 16) = v3;
    result = v3 >> 1;
    *(v1 + 18) = result;
    return result;
}


// 0x811088a
int sub_811088A()
{
    int v0; // r5
    unsigned __int8 *v1; // r7
    int v2; // r0

    v2 = *(*(v0 + 84) + 112);
    if ( v2 && v2 & 0xC000000 )
        object_clearCollisionRegion();
    (*(&off_81108B4 + *v1))();
    return sub_8110D7C();
}


// 0x81108e4
int sub_81108E4()
{
    Battle *v0; // r5
    int v1; // r7
    u8 v2; // r1
    int result; // r0
    int v4; // r0
    char v5; // r0
    int v6; // r1
    u8 v7; // r0
    u8 v8; // r1

    if ( !*(v1 + 1) )
    {
        *(v1 + 16) = *(v1 + 52);
        v2 = v0->panelY;
        v0->extraVars[34] = v0->panelX;
        v0->extraVars[35] = v2;
        *(v1 + 1) = 1;
    }
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        v4 = object_getFrontDirection(v0);
        if ( object_isValidPanel(*(*(v1 + 44) + 18) - v4, *(*(v1 + 44) + 19)) )
        {
            v5 = object_getFrontDirection(v0);
            v6 = *(v1 + 44);
            v7 = *(v6 + 18) - v5;
            v8 = *(v6 + 19);
        }
        else
        {
            v7 = v0->extraVars[32] - object_getFrontDirection(v0);
            v8 = v0->extraVars[33];
        }
        v0->extraVars[26] = v7;
        v0->extraVars[27] = v8;
        sub_8110CC6();
        v0->currAnimation = 0;
        object_setFlag1(1);
        *v1 = 4;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x811095e
signed int sub_811095E()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    char v4; // r0
    char v5; // r1

    v2 = *(v0 + 124);
    v3 = __OFSUB__(v2--, 1);
    *(v0 + 124) = v2;
    if ( !((v2 < 0) ^ v3) )
        sub_8110D34();
    v4 = *(v0 + 122);
    v5 = *(v0 + 19);
    *(v1 + 22) = v4;
    *(v0 + 18) = v4;
    *(v1 + 23) = v5;
    *(v0 + 19) = v5;
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    *v1 = 8;
    *(v1 + 1) = 0;
    object_setPanelsFromCoordinates(v0);
    return object_updateCollisionPanels(v0);
}


// 0x81109f6
signed int sub_81109F6()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    char v4; // r0
    char v5; // r1

    v2 = *(v0 + 126);
    v3 = __OFSUB__(v2--, 1);
    *(v0 + 126) = v2;
    if ( !((v2 < 0) ^ v3) )
        sub_8110D58();
    v4 = *(v0 + 18);
    v5 = *(v0 + 123);
    *(v1 + 22) = v4;
    *(v0 + 18) = v4;
    *(v1 + 23) = v5;
    *(v0 + 19) = v5;
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    *v1 = 12;
    *(v1 + 1) = 0;
    object_setPanelsFromCoordinates(v0);
    return object_updateCollisionPanels(v0);
}


// 0x8110a8e
int sub_8110A8E()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int result; // r0
    int v4; // r0

    if ( !*(v1 + 1) )
    {
        *(v1 + 16) = *(v1 + 54);
        *(v1 + 1) = 1;
    }
    v2 = *(v1 + 16) - 1;
    *(v1 + 16) = v2;
    if ( v2 )
    {
        result = *(v1 + 16);
        if ( !(result & 4) )
        {
            v4 = object_getFrontDirection(v0);
            result = sub_8109660(v4 + v0->panelX, v0->panelY, 21, v0->Alliance ^ v0->directionFlip);
        }
    }
    else
    {
        object_setCounterTime(16);
        v0->currAnimation = 4;
        object_clearFlag(1);
        *(v1 + 16) = *(v1 + 14);
        *v1 = 16;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x8110ae4
int sub_8110AE4()
{
    Battle *v0; // r5
    int v1; // r7
    int result; // r0
    char v3; // r0
    int v4; // r4
    int v5; // r6
    int v6; // r7

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        v0->currAnimation = 5;
        *v1 = 20;
        *(v1 + 1) = 0;
        v3 = object_getFrontDirection(v0);
        v4 = *(v1 + 12);
        v5 = *(v1 + 8);
        v6 = *(v1 + 40);
        result = sub_80D6B78(v3 + v0->panelX, v0->panelY, 3, 0);
    }
    return result;
}


// 0x8110b16
int sub_8110B16()
{
    int v0; // r7
    int result; // r0

    if ( !*(v0 + 1) )
        *(v0 + 1) = 1;
    result = *(v0 + 16) - 1;
    *(v0 + 16) = result;
    if ( !result )
    {
        *(v0 + 16) = *(v0 + 48);
        *v0 = 24;
        result = 0;
        *(v0 + 1) = 0;
    }
    return result;
}


// 0x8110b38
int sub_8110B38()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        *(v0 + 16) = 6;
        *v1 = 28;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x8110b50
int sub_8110B50()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 0;
        object_setFlag1(1);
        *v1 = 32;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x8110b70
signed int sub_8110B70()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    char v4; // r0
    char v5; // r1

    if ( !*(v1 + 1) )
    {
        *(v0 + 108) = 0;
        *(v0 + 122) = *(v0 + 120);
        *(v0 + 123) = *(v0 + 121);
        sub_8110CC6();
        *(v1 + 16) = *(v1 + 50);
        *(v1 + 1) = 1;
    }
    v2 = *(v0 + 126);
    v3 = __OFSUB__(v2--, 1);
    *(v0 + 126) = v2;
    if ( !((v2 < 0) ^ v3) )
        sub_8110D58();
    v4 = *(v0 + 18);
    v5 = *(v0 + 123);
    *(v1 + 22) = v4;
    *(v0 + 18) = v4;
    *(v1 + 23) = v5;
    *(v0 + 19) = v5;
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    *v1 = 36;
    *(v1 + 1) = 0;
    object_setPanelsFromCoordinates(v0);
    return object_updateCollisionPanels(v0);
}


// 0x8110c26
signed int __noreturn sub_8110C26()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    char v4; // r0
    char v5; // r1

    v2 = *(v0 + 124);
    v3 = __OFSUB__(v2--, 1);
    *(v0 + 124) = v2;
    if ( !((v2 < 0) ^ v3) )
        sub_8110D34();
    v4 = *(v0 + 122);
    v5 = *(v0 + 123);
    *(v1 + 22) = v4;
    *(v0 + 18) = v4;
    *(v1 + 23) = v5;
    *(v0 + 19) = v5;
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    object_removePanelReserve(*(v0 + 18), *(v0 + 19));
    object_setCollisionRegion(1);
    *v1 = 40;
    *(v1 + 1) = 0;
    object_setPanelsFromCoordinates(v0);
    return object_updateCollisionPanels(v0);
}


// 0x8110cc6
int sub_8110CC6()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r1
    int v8; // r0
    int v9; // r1
    int result; // r0

    *(v1 + 124) = 0;
    *(v1 + 126) = 0;
    v2 = *&byte_8110E0C[4 * *(v0 + 22)];
    *(v1 + 64) = v2;
    *(v1 + 68) = v2;
    v3 = *(v1 + 64);
    if ( *(v1 + 122) - *(v1 + 18) < 0 )
        v3 = -v3;
    *(v1 + 64) = v3;
    __asm { SVC         6 }
    *(v1 + 124) = 0;
    v8 = *(v1 + 123) - *(v1 + 19);
    v9 = *(v1 + 68);
    if ( v8 < 0 )
        v9 = -v9;
    *(v1 + 68) = v9;
    result = 1572864 * v8;
    __asm { SVC         6 }
    *(v1 + 126) = result;
    return result;
}


// 0x8110d18
Battle *sub_8110D18()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1

    v1 = sub_8018810(*(v0 + 40), 5, *(v0 + 22), *(v0 + 23));
    return sub_80E8124(v1, v1 << 16, 0, v2 << 16);
}


// 0x8110d34
BOOL __noreturn sub_8110D34()
{
    _DWORD *v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r0
    int v4; // r1

    v1 = v0[14];
    v2 = v0[15];
    v3 = sub_800E258(v0[13] + v0[16]);
    return (object_getPanelParameters(v3, v4) & 0x3800000) != 0;
}


// 0x8110d58
BOOL __noreturn sub_8110D58()
{
    int *v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r2
    int v4; // r0
    int v5; // r1

    v1 = v0[14];
    v2 = v0[17];
    v3 = v0[15];
    v4 = sub_800E258(v0[13]);
    return (object_getPanelParameters(v4, v5) & 0x3800000) != 0;
}


// 0x8110d7c
int sub_8110D7C()
{
    unsigned __int8 *v0; // r5
    int result; // r0
    int v2; // r1

    result = v0[18];
    v2 = v0[19];
    if ( result != v0[130] || v2 != v0[131] )
    {
        v0[130] = result;
        v0[131] = v2;
        result = object_setCollisionRegion(1);
    }
    return result;
}


// 0x8110e76
int sub_8110E76()
{
    int v0; // r5
    char v1; // r0
    int result; // r0

    object_setFlag1(1);
    object_setFlag1(64);
    GetPositiveSignedRNG2();
    result = v1 & 3;
    *(v0 + 104) = result;
    return result;
}


// 0x8110e90
int sub_8110E90()
{
    unsigned __int8 *v0; // r6
    int result; // r0

    result = object_getFlag();
    if ( !(result & 0xA000) )
        result = (*(&off_8110EAC + *v0))();
    return result;
}


// 0x8110eb8
int sub_8110EB8()
{
    int v0; // r5
    int v1; // r6

    *(v0 + 108) = 0;
    object_setFlag1(1);
    return (*(&off_8110ED4 + *(v1 + 2)))();
}


// 0x8110ed8
void __fastcall sub_8110ED8(int a1, int a2, int a3)
{
    _BYTE *v3; // r6
    int v4; // r7
    int v5; // r0
    char v6; // r1

    v5 = sub_8110F8C(a1, a2, a3);
    if ( v5 )
    {
        sub_8111030(v5, v6);
        *v3 = 4;
    }
    else
    {
        *(v4 + 16) = 80;
        object_setAttack0();
    }
}


// 0x8110ef8
int sub_8110EF8()
{
    int v0; // r4
    int v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // r1
    int result; // r0

    *(v1 + 108) = 0;
    object_setFlag1(1);
    if ( !sub_8109630(108, 103, 108) )
    {
        v4 = *(v0 + 22);
        *(v3 + 16) = byte_8110E40[v4];
        *(v3 + 24) = byte_8110E48[v4];
        *(v3 + 44) = v1 + 116;
        object_setAttack0();
    }
    *v2 = 0;
    result = 0;
    *(v2 + 2) = 0;
    return result;
}


// 0x8110f36
int __noreturn sub_8110F36()
{
    int v0; // r4
    unsigned __int8 *v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int v4; // r0
    int v5; // r1
    int v6; // r1
    int result; // r0

    v4 = v1[18];
    v5 = v1[19];
    v1[120] = v4;
    v1[121] = v5;
    object_reservePanel(v4, v5);
    v6 = *(v0 + 22);
    *(v3 + 14) = byte_8110E60[v6];
    *(v3 + 48) = byte_8110E68[v6];
    *(v3 + 50) = byte_8110E70[v6];
    *(v3 + 52) = byte_8110E50[v6];
    *(v3 + 54) = byte_8110E58[v6];
    *(v3 + 8) = byte_8110E30[v6];
    *(v3 + 10) = 10;
    *(v3 + 12) = *&byte_8110E24[2 * v6];
    *(v3 + 40) = v1 + 112;
    object_setAttack0();
    result = 0;
    *v2 = 0;
    return result;
}


// 0x8110f8c
int __fastcall sub_8110F8C(int a1, int a2, int a3)
{
    int result; // r0
    int v4; // r1
    int v5; // r2

    result = sub_8110FA2(a1, a2, a3);
    if ( !result )
        result = sub_8110FF4(0, v4, v5);
    return result;
}


// 0x8110fa2
int __fastcall sub_8110FA2(int a1, int a2, int a3)
{
    int v3; // r5
    char (*v4)[8]; // r4
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    v4 = off_8110FC4[*(v3 + 104)];
    sub_81096FA(*(v3 + 18), *(v3 + 19), a3, byte_8111020);
    return sub_8015D80(v5, v6, v7, v8);
}


// 0x8110ff4
int __fastcall sub_8110FF4(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    sub_81096FA(*(v3 + 18), *(v3 + 19), a3, byte_8111020);
    return sub_8015D80(v4, v5, v6, v7);
}


// 0x8111030
int __fastcall sub_8111030(char a1, char a2)
{
    int v2; // r4
    int v3; // r5
    int v4; // r7
    int v5; // r2
    signed int v6; // r3
    int v7; // r0
    int v8; // r1
    int v9; // r0
    int v10; // r1

    *(v4 + 22) = a1;
    *(v4 + 23) = a2;
    *(v4 + 3) = 1;
    *(v4 + 48) = *&byte_8110DF4[4 * *(v2 + 22)];
    *(v4 + 24) = byte_8110E38[*(v2 + 22)];
    *(v4 + 52) = 0;
    *(v4 + 56) = 260571264;
    *(v4 + 44) = v3 + 116;
    v5 = object_getFrontDirection(v3);
    v6 = 0;
    v7 = *(v3 + 18);
    v8 = *(v4 + 22);
    if ( v7 == v8 )
    {
        v9 = *(v3 + 19);
        v10 = *(v4 + 23);
        if ( v9 != v10 )
            v6 = v10 - v9 > 0;
    }
    else if ( (v8 - v7) * v5 > 0 )
    {
        v6 = 3;
    }
    else
    {
        v6 = 2;
    }
    *(v3 + 104) = v6;
    object_setAttack0();
    return sub_81107A0();
}


// 0x811109c
void __fastcall sub_811109C(char a1)
{
    Battle *v1; // r5
    int v2; // ST04_4
    int v3; // r0
    int v4; // r1

    v2 = (v1->Alliance ^ v1->directionFlip) << 8;
    v3 = object_getCoordinatesForPanels(a1);
    SpawnT4BattleObjectWithId0(v1, v2, v3, v4, 0);
}


// 0x81110c8
void __fastcall sub_81110C8(char a1)
{
    Battle *v1; // r5
    int v2; // ST04_4
    int v3; // r0
    int v4; // r1

    v2 = (v1->Alliance ^ v1->directionFlip) << 8;
    v3 = object_getCoordinatesForPanels(a1);
    SpawnT4BattleObjectWithId0(v1, v2, v3, v4, 0);
}


// 0x811121c
int sub_811121C()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8111230 + *v0))();
}


// 0x811123c
int sub_811123C()
{
    _BYTE *v0; // r5
    int v1; // r7
    int v2; // r0
    int result; // r0

    v2 = *(v1 + 16) - 1;
    *(v1 + 16) = v2;
    if ( v2 )
    {
        result = *(v1 + 16);
        if ( !(result & 4) )
            result = sub_8109660(*(v1 + 12) & 7, *(v1 + 12) >> 4, 1, v0[22] ^ v0[23]);
    }
    else
    {
        object_setCounterTime(24);
        v0[16] = *(&off_8111288 + v0[105]);
        *(v1 + 16) = 11;
        *v1 = 4;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x811128c
int sub_811128C()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int result; // r0

    if ( !*(v1 + 1) )
    {
        v2 = *(v1 + 16) - 1;
        *(v1 + 16) = v2;
        if ( !v2 )
        {
            sub_81112DC();
            PlaySoundEffect(178, v3, v4);
            *(v1 + 1) = 1;
        }
    }
    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = *(&off_81112D8 + *(v0 + 105));
        *(v0 + 96) = 0;
        object_clearFlag(64);
        *(v1 + 16) = *(v1 + 24);
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x81112dc
int sub_81112DC()
{
    int v0; // r4
    Battle *v1; // r5
    int v2; // r7
    int v3; // r6
    unsigned int v4; // r4
    int v5; // r0

    v3 = *(v2 + 8) | (*(v2 + 10) << 16);
    v4 = byte_8111328[*(v0 + 22)] | ((*(v2 + 12) & 7) << 16) | (*(v2 + 12) >> 4 << 24) | (*(v2 + 13) << 8);
    v5 = object_getFrontDirection(v1);
    return sub_80D9CA4(v5 << 20, v1->x + (v5 << 20), v1->y, v1->z + 0x200000);
}


// 0x8111384
void sub_8111384()
{
    int v0; // r5
    unsigned __int8 *v1; // r6
    int v2; // r7

    if ( !*(v0 + 105) || *(v0 + 104) )
    {
        (*(&off_81113B8 + *v1))();
    }
    else
    {
        *(v0 + 104) = 1;
        *(v2 + 16) = 120;
        object_setAttack0();
    }
}


// 0x81113c4
signed int sub_81113C4()
{
    int v0; // r5
    _BYTE *v1; // r6
    signed int result; // r0

    if ( *(v0 + 103) < 4 )
    {
        result = 8;
        *v1 = 8;
    }
    else
    {
        *(v0 + 103) = 0;
        result = 4;
        *v1 = 4;
    }
    return result;
}


// 0x81113de
int __fastcall sub_81113DE(int a1)
{
    int v1; // r4
    int v2; // r5
    _BYTE *v3; // r6
    int v4; // r7
    char v5; // zf
    int v6; // r1
    int v7; // r0
    char v8; // r1
    int result; // r0

    object_canMove(a1);
    if ( !v5 && !sub_8109630(96, 109, 114) )
    {
        v6 = *(v1 + 22);
        *(v4 + 24) = 24;
        *(v4 + 8) = byte_8111374[v6];
        *(v4 + 10) = byte_811137C[v6];
        *(v4 + 16) = 12;
        v7 = sub_81116D2();
        if ( v7 )
        {
            *(v4 + 12) = v7 | 16 * v8;
            *(v2 + 96) = 1;
            object_setFlag1(64);
            object_setAttack0();
        }
    }
    result = 0;
    *v3 = 0;
    return result;
}


// 0x8111438
int sub_8111438()
{
    int v0; // r4
    unsigned __int8 *v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int v4; // r1
    int v5; // r0
    int result; // r0

    v4 = v1[103] + 1;
    v1[103] = v4;
    if ( v4 == 4 )
        sub_8111674();
    if ( sub_81114C8() )
    {
        *(v3 + 40) = sub_81114C8;
        *(v3 + 44) = sub_80103F8(v1[22] ^ 1);
        *(v3 + 24) = byte_811136C[*(v0 + 22)];
        *(v3 + 3) = 3;
        *(v3 + 12) = 20;
        *(v3 + 13) = 21;
        if ( v1[104] )
        {
            *(v3 + 14) = 3;
            *(v3 + 15) = 3;
        }
        else
        {
            *(v3 + 14) = 0;
            *(v3 + 15) = 4;
        }
        v5 = byte_8111364[*(v0 + 22)];
        *(v3 + 48) = v5;
        *(v3 + 52) = v5;
        object_setAttack0();
        sub_8109974();
        result = 0;
        *v2 = 0;
    }
    else
    {
        result = 0;
        *v2 = 0;
    }
    return result;
}


// 0x81114c8
void sub_81114C8()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    char v4; // r0
    char v5; // r1

    v1 = sub_81114EE();
    if ( !v1 )
    {
        v1 = sub_811152C(0, v2, v3);
        if ( !v1 )
            sub_8111650();
    }
    sub_81117DA(v1, v2);
    *(v0 + 101) = v4;
    *(v0 + 102) = v5;
}


// 0x81114ee
int sub_81114EE()
{
    unsigned __int8 *v0; // r5
    int v1; // r6
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3

    sub_81096FA(
        v0[18] + byte_8111524[2 * v0[100]],
        v0[19] + byte_8111524[2 * v0[100] + 1],
        byte_8111524[2 * v0[100]],
        byte_8111740);
    v1 = v0[22];
    return sub_8015E46(v2, v3, v4, v5);
}


// 0x811152c
int __fastcall sub_811152C(int a1, int a2, int a3)
{
    unsigned __int8 *v3; // r5
    int v4; // r0
    int result; // r0
    int v6; // r2
    int v7; // r6
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3
    int v12; // r0
    int v13; // r1
    int v14; // r2
    int v15; // r3
    int v16; // r1
    int v17; // r2
    int v18; // r2
    int v19; // r0
    int v20; // r1
    int v21; // r2
    int v22; // r3
    int v23; // r6
    int v24; // r0
    int v25; // r1
    int v26; // r2
    int v27; // r3
    char v28; // zf
    int v29; // r2
    int v30; // r6
    int v31; // r0
    int v32; // r1
    int v33; // r2
    int v34; // r3
    char v35; // zf
    int v36; // r0
    int v37; // r1
    int v38; // r2
    int v39; // r3
    int v40; // r2
    int v41; // r6
    int v42; // r0
    int v43; // r1
    int v44; // r2
    int v45; // r3
    int v46; // r0
    int v47; // r1
    int v48; // r2
    int v49; // r3

    v4 = v3[19];
    switch ( v4 )
    {
        case 1:
            if ( sub_810971A(v3[19] + 1, a2, a3)
                || (sub_81096FA(v3[18], v3[19] + 1, v6, byte_8111740), v7 = v3[22],
                                                                                                                             (result = sub_8015E46(v8, v9, v10, v11)) == 0) )
            {
                sub_81096FA(v3[18], v3[19], v6, byte_8111740);
                result = sub_8015D80(v12, v13, v14, v15);
            }
            break;
        case 2:
            sub_810971A(v3[19] - 1, a2, a3);
            if ( !v28 )
            {
                sub_81096FA(v3[18], v3[19] + 1, v17, byte_8111740);
                v23 = v3[22];
                result = sub_8015E46(v24, v25, v26, v27);
                if ( !v28 )
                    return result;
LABEL_17:
                sub_81096FA(v3[18], v3[19], v29, byte_8111740);
                return sub_8015D80(v36, v37, v38, v39);
            }
            sub_810971A(v3[19] + 1, v16, v17);
            if ( v28 )
            {
                sub_81096FA(v3[18], v3[19], v18, byte_8111740);
                return sub_8015D80(v19, v20, v21, v22);
            }
            sub_81096FA(v3[18], v3[19] - 1, v18, byte_8111740);
            v30 = v3[22];
            result = sub_8015E46(v31, v32, v33, v34);
            if ( v35 )
                goto LABEL_17;
            break;
        case 3:
            if ( sub_810971A(v3[19] - 1, a2, a3)
                || (sub_81096FA(v3[18], v3[19] - 1, v40, byte_8111740),
                        v41 = v3[22],
                        (result = sub_8015E46(v42, v43, v44, v45)) == 0) )
            {
                sub_81096FA(v3[18], v3[19], v40, byte_8111740);
                result = sub_8015D80(v46, v47, v48, v49);
            }
            return result;
        default:
            return 0;
    }
    return result;
}


// 0x8111650
void __noreturn sub_8111650()
{
    sub_8015C48();
}


// 0x8111674
void __noreturn sub_8111674()
{
    unsigned __int8 *v0; // r5
    int v1; // r2
    int v2; // r6
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r0
    unsigned __int8 v8; // r1
    char v9; // r0
    unsigned __int8 *v10; // [sp+0h] [bp-18h]

    object_reservePanel(v0[18], v0[19]);
    sub_80103F8(v0[22] ^ 1);
    sub_81096FA(5 * v0[22] + 1, 2, v1, byte_8111740);
    v2 = v0[22];
    v7 = sub_8111750(v3, v4, v5, v6);
    if ( v7 )
    {
        v10[101] = v7;
        v10[102] = v8;
        GetRNG2();
        v10[100] = v9 & 3;
    }
    object_removePanelReserve(v10[18], v10[19]);
    JUMPOUT(loc_81116CE);
}


// 0x81116d2
int sub_81116D2()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2

    v1 = object_getFlag();
    if ( v1 & 0xA000 )
        sub_8111726(v1, 40960, v2);
    return (*(&off_8111704 + *(v0 + 105)))();
}


// 0x811170c
int sub_811170C()
{
    Battle *v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r1

    result = v0->panelX + 3 * object_getFrontDirection(v0);
    v3 = v0->panelY;
    if ( result )
        *(v1 + 13) = 0;
    return result;
}


// 0x8111726
void __fastcall __noreturn sub_8111726(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_8111740);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x8111750
int __fastcall sub_8111750(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r4

    v5 = *(&off_8019B78 + v4);
    return sub_8111764(a1, a2, a3, a4);
}


// 0x8111764
int __fastcall sub_8111764(int a1, int a2, int a3, int a4)
{
    char *v4; // r4
    int v5; // r5
    int v6; // r6
    int v7; // r6
    int v8; // r0
    int v9; // r1
    int result; // r0
    int v15; // [sp+0h] [bp-4Ch]
    int v16; // [sp+1Ch] [bp-30h]
    int v17; // [sp+20h] [bp-2Ch]
    int v18; // [sp+24h] [bp-28h]
    int v19; // [sp+28h] [bp-24h]
    int v20; // [sp+2Ch] [bp-20h]
    int v21; // [sp+30h] [bp-1Ch]
    int v22; // [sp+34h] [bp-18h]

    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = a4;
    v20 = object_getAllianceDirection(v6);
    v7 = 0;
    while ( 1 )
    {
        v8 = *v4;
        if ( v8 == 127 )
            break;
        v9 = v4[1];
        v21 = v8 * v20 + v16;
        v22 = v9 + v17;
        if ( object_checkPanelParameters(v21, v9 + v17, v18, v19) )
        {
            if ( v22 != *(v5 + 19) )
                *(&v15 + v7++) = v21 | 16 * v22;
        }
        v4 += 2;
    }
    result = v7;
    if ( v7 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v15 + v7) & 7;
    }
    return result;
}


// 0x81117da
void __fastcall sub_81117DA(int a1, int a2)
{
    _BYTE *v2; // r5
    int v3; // r0
    int v4; // r1

    v3 = a1 - v2[101];
    v4 = a2 - v2[102];
    if ( v3 )
    {
        if ( v3 == 1 )
            v2[100] = 1;
        else
            v2[100] = 3;
    }
    else if ( v4 )
    {
        if ( v4 == 1 )
            v2[100] = 2;
        else
            v2[100] = 0;
    }
}


// 0x8111816
int sub_8111816()
{
    int v0; // r5
    char v1; // r0
    char v2; // r1
    int result; // r0

    *(v0 + 96) = 0;
    GetRNG2();
    *(v0 + 100) = v1 & 3;
    v2 = *(v0 + 19);
    *(v0 + 101) = *(v0 + 18);
    *(v0 + 102) = v2;
    *(v0 + 103) = 0;
    result = 0;
    *(v0 + 104) = 0;
    *(v0 + 105) = 0;
    return result;
}


// 0x8111846
int __fastcall sub_8111846(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int result; // r0
    int v6; // r1
    int v7; // r0
    int v8; // r1
    int v9; // r0

    result = *(v4 + 36);
    if ( *(v4 + 36) )
    {
        result = *(*(v4 + 84) + 60);
        if ( result >= 0 )
        {
            result = *(v4 + 84);
            v6 = *(result + 112);
            if ( v6 )
            {
                if ( v6 & 0xA00 && !*(v4 + 105) )
                {
                    sub_80BCB12(result, (*(result + 15) & 0x14) != 0, 0, a4);
                    *(v4 + 96) = 0;
                    object_clearFlag2(12);
                    *(v4 + 31) = 0;
                    v7 = *(v4 + 20);
                    v8 = *(v4 + 21);
                    *(v4 + 18) = v7;
                    *(v4 + 19) = v8;
                    object_removePanelReserve(v7, v8);
                    object_setCoordinatesFromPanels(v4);
                    object_updateCollisionPanels(v4);
                    v9 = object_clearFlag(5247040);
                    (loc_801171C)(v9);
                    if ( *(v4 + 92) )
                    {
                        *(v4 + 92) = 0;
                        if ( !*(v4 + 92) )
                            *(v4 + 92) = *(v4 + 8);
                    }
                    *(v4 + 16) = 3;
                    result = 1;
                    *(v4 + 105) = 1;
                }
            }
        }
    }
    return result;
}


// 0x8111a00
int sub_8111A00()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8111A14 + *v0))();
}


// 0x8111a28
void __fastcall sub_8111A28(int a1)
{
    Battle *v1; // r5
    int v2; // r7
    char v3; // zf
    int v4; // r0
    int v5; // r1

    object_canMove(a1);
    if ( v3 || !object_checkPanelParameters(*(v2 + 22), *(v2 + 23), *(v2 + 52), *(v2 + 56)) )
    {
        *(v2 + 26) = 0;
        object_exitAttackState(v1);
    }
    else
    {
        v4 = *(v2 + 22);
        v1->futurePanelX = v4;
        v5 = *(v2 + 23);
        v1->futurePanelY = v5;
        object_reservePanel(v4, v5);
        object_setFlag1(64);
        v1->currAnimation = 1;
        *(v2 + 12) = 16;
        *v2 = 4;
        sub_8111B06();
        sub_8111A72();
    }
}


// 0x8111a72
int sub_8111A72()
{
    int v0; // r5
    _WORD *v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 2;
        *v1 = 8;
        result = sub_8111A8C();
    }
    return result;
}


// 0x8111a8c
int sub_8111A8C()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    int v5; // r0
    int v6; // r1

    v0->x += v0->vx;
    v0->y += v0->vy;
    if ( *(v1 + 16) == *(v1 + 18) )
    {
        object_setPanelsFromCoordinates(v0);
        object_updateCollisionPanels(v0);
    }
    if ( *(v1 + 16) == 4 )
        v0->currAnimation = 3;
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v1 + 16) = result;
    if ( (result < 0) ^ v3 )
    {
        v5 = v0->futurePanelX;
        v0->panelX = v5;
        v6 = v0->futurePanelY;
        v0->panelY = v6;
        object_removePanelReserve(v5, v6);
        object_setCoordinatesFromPanels(v0);
        object_setCollisionPanelsToCurrent();
        object_clearFlag(64);
        object_setFlag1(0x80000);
        *(v1 + 26) = 1;
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x8111aec
int sub_8111AEC()
{
    int v0; // r5
    _WORD *v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 0;
        v1[8] = v1[12];
        result = 16;
        *v1 = 16;
    }
    return result;
}


// 0x8111b06
int sub_8111B06()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    *(v0 + 64) = 0;
    *(v0 + 68) = 0;
    *(v1 + 16) = 16;
    *(v1 + 18) = 8;
    if ( *(v1 + 23) != *(v0 + 19) )
    {
        __asm { SVC         6 }
        *(v0 + 68) = 1572864 * (*(v1 + 23) - *(v0 + 19));
    }
    result = *(v1 + 22) - *(v0 + 18);
    if ( *(v1 + 22) != *(v0 + 18) )
    {
        __asm { SVC         6 }
        result *= 2621440;
        *(v0 + 64) = result;
    }
    return result;
}


// 0x8111b4a
int sub_8111B4A()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8111B5C + *v0))();
}


// 0x8111b70
signed int sub_8111B70()
{
    int v0; // r5
    _WORD *v1; // r7
    signed int result; // r0

    *(v0 + 16) = 4;
    v1[9] = 30;
    object_setFlag1(0x400000);
    result = 4;
    *v1 = 4;
    return result;
}


// 0x8111b88
int sub_8111B88()
{
    int v0; // r7
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    int v4; // r1
    int v5; // r2

    if ( *(v0 + 18) == 17 )
        object_setCounterTime(20);
    v1 = *(v0 + 18);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 18) = result;
    if ( (result < 0) ^ v2 )
    {
        sub_8111BDE(*(v0 + 3));
        PlaySoundEffect(384, v4, v5);
        result = 8;
        *v0 = 8;
    }
    return result;
}


// 0x8111bb2
int sub_8111BB2()
{
    int v0; // r5
    _WORD *v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 5;
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x8111bc8
int sub_8111BC8()
{
    int v0; // r5
    _WORD *v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 0;
        result = 16;
        *v1 = 16;
    }
    return result;
}


// 0x8111bde
int __fastcall sub_8111BDE(int a1)
{
    int v1; // r7
    int v2; // r4
    int v3; // r6
    int result; // r0

    v2 = a1;
    v3 = 0;
    *(v1 + 12) = 0;
    do
    {
        result = sub_8111BFE(v3);
        if ( result )
        {
            if ( !--v2 )
                break;
        }
        ++v3;
    }
    while ( v3 < 5 );
    return result;
}


// 0x8111bfe
int __fastcall sub_8111BFE(int a1)
{
    Battle *v1; // r5
    int v2; // r7
    int (*v3)(void); // r6
    int v4; // r0
    int v5; // r2
    int result; // r0
    int v7; // r4
    unsigned int v12; // r4
    int v13; // r0
    int v14; // r6
    int v15; // r7
    int v16; // [sp+0h] [bp-28h]

    v3 = *(&off_8111C74 + a1);
    v4 = object_getFlag();
    if ( v4 & 0xA000 )
        result = sub_8111D28(v4, 40960, v5);
    else
        result = v3();
    if ( result )
    {
        v7 = result;
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        v12 = (((((*(&v16 + v7) >> 4 << 8) | *(&v16 + v7) & 7) << 8) + 40) << 8) | *(v2 + 16);
        v13 = object_getFrontDirection(v1);
        v14 = *(v2 + 8);
        v15 = *(v2 + 40);
        sub_80C579E(v13, v1->x + 196608 * v13, v1->y, v1->z + 786432);
        result = 1;
    }
    return result;
}


// 0x8111c88
BOOL __noreturn sub_8111C88()
{
    _BYTE *v0; // r4
    int v1; // r5
    int v2; // r7
    int v3; // r0
    int v4; // r6
    int v5; // r2
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3
    BOOL result; // r0

    v3 = sub_80103F8(*(v1 + 22) ^ 1);
    v4 = v3;
    sub_81096FA(*(v3 + 18), *(v3 + 19), v5, &off_8111D70);
    result = object_checkPanelParameters(v6, v7, v8, v9);
    if ( result )
    {
        *v0 = *(v4 + 18) | 16 * *(v4 + 19);
        *(v2 + 12) = *(v4 + 18);
        result = 1;
    }
    return result;
}


// 0x8111cba
int __fastcall sub_8111CBA(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r7
    int v5; // r0
    int v6; // r1
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3

    v5 = 5 * (*(v3 + 22) ^ 1) + 1;
    v6 = *(v4 + 12);
    if ( v5 == v6 )
        return 0;
    sub_81096FA(v5, v6, a3, &off_8111D70);
    return object_getPanelsInColumnFiltered(v8, v9, v10, v11);
}


// 0x8111ce0
int __fastcall sub_8111CE0(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r7
    int v5; // r0
    int v6; // r1
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r3

    v5 = 3 * (*(v3 + 22) ^ 1) + 2;
    v6 = *(v4 + 12);
    if ( v5 == v6 )
        return 0;
    sub_81096FA(v5, v6, a3, &off_8111D70);
    return object_getPanelsInColumnFiltered(v8, v9, v10, v11);
}


// 0x8111d06
int __fastcall sub_8111D06(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    sub_81096FA((*(v3 + 22) ^ 1) + 3, 2, a3, &off_8111D70);
    v4 = *(v3 + 22) ^ 1;
    return object_getPanelRegion(v5, v6, v7, v8);
}


// 0x8111d28
int __fastcall sub_8111D28(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    sub_81096FA(5 * *(v3 + 22) + 1, 2, a3, &off_8111D70);
    v4 = *(v3 + 22);
    return object_getPanelRegion(v5, v6, v7, v8);
}


// 0x8111d46
int __fastcall sub_8111D46(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3

    sub_81096FA(5 * *(v3 + 22) + 1, 2, a3, byte_8111D80);
    v4 = *(v3 + 22);
    return object_getPanelRegion(v5, v6, v7, v8);
}


// 0x8111df0
int sub_8111DF0()
{
    int v0; // r6

    *(v0 + 4) = 1;
    return sub_80165B8();
}


// 0x8111dfc
int sub_8111DFC()
{
    unsigned __int8 *v0; // r6

    return (*(&off_8111E10 + *v0))();
}


// 0x8111e14
int sub_8111E14()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    if ( *(v0 + 96) == 1 )
        *(v0 + 96) = 0;
    result = sub_8111FAE();
    if ( !result )
    {
        if ( !*(v1 + 4) )
            sub_8111F70();
        *(v1 + 4) = 0;
        sub_8111F08();
    }
    return result;
}


// 0x8111f08
void __noreturn sub_8111F08()
{
    Battle *v0; // r5
    int v1; // r6
    int v2; // r0
    int v3; // r1
    int v4; // r2

    v2 = object_getFrontDirection(v0);
    if ( !*(v1 + 5) )
        sub_8111F38(v2, v3, v4);
    sub_8111F38(-v2, v3, v4);
}


// 0x8111f38
int __fastcall __noreturn sub_8111F38(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // ST00_4
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    bool v9; // zf
    int result; // r0

    v4 = a1 + *(v3 + 18);
    sub_81096FA(v4, *(v3 + 19), a3, byte_8111F60);
    v9 = object_checkPanelParameters(v5, v6, v7, v8) == 0;
    result = v4;
    if ( v9 )
        result = 0;
    return result;
}


// 0x8111f70
signed int __noreturn sub_8111F70()
{
    Battle *v0; // r5
    int v1; // r0
    int v2; // r1
    signed int result; // r0

    v1 = object_getFrontDirection(v0);
    v2 = object_getPanelParameters(v1 + v0->panelX, v0->panelY) & 0x20;
    result = 1;
    if ( v2 == 32 * v0->Alliance )
        result = 0;
    return result;
}


// 0x8111f94
int sub_8111F94()
{
    if ( sub_8109630(96, 115, 120) >= 2 )
        sub_8111F70();
    return 0;
}


// 0x8111fae
signed int sub_8111FAE()
{
    int v0; // r5
    signed int v1; // r6
    __int16 v2; // r0
    int v3; // r3
    int v4; // r4

    v1 = 0;
    v2 = sub_800ED90(v0);
    if ( v3 )
    {
        v4 = v2 & 0x1FF;
        if ( sub_800A704() >= byte_12C )
        {
            sub_80126E4(v4);
            object_setAttack0();
            sub_800F322();
            v1 = 1;
        }
    }
    return v1;
}


// 0x81120e4
int sub_81120E4()
{
    unsigned __int8 *v0; // r7

    return (*(&off_81120F8 + *v0))();
}


// 0x8112104
int sub_8112104()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r4
    int v4; // r3
    int v5; // r2
    int v6; // r0
    int v7; // r1
    int v8; // ST00_4
    int v9; // ST04_4
    int v10; // ST08_4
    int v11; // ST0C_4
    int result; // r0

    if ( *(v1 + 1) )
    {
        if ( v0->currAnimation == 2 && sprite_getFrameParameters() & 0x80 )
            v0->currAnimation = 3;
    }
    else
    {
        *(v1 + 1) = 1;
        v2 = v0->panelY;
        if ( *(v1 + 12) && v2 != 3 )
        {
            if ( v2 == 1 )
            {
                LOBYTE(v2) = 2;
            }
            else
            {
                LOBYTE(v2) = 2;
                if ( *(*(v1 + 44) + 19) > 2 )
                    LOBYTE(v2) = 3;
            }
        }
        *(v1 + 15) = v2;
        v0->currAnimation = 3;
    }
    if ( !(*(v1 + 16) & 4) )
    {
        v3 = object_getFrontDirection(v0);
        v4 = v0->Alliance ^ v0->directionFlip;
        v5 = 1;
        if ( *(v1 + 12) )
            v5 = 24;
        v6 = v0->panelX + v3;
        v7 = *(v1 + 15);
        do
        {
            v8 = v6;
            v9 = v7;
            v10 = v5;
            v11 = v4;
            sub_8109660(v6, v7, v5, v4);
            v7 = v9;
            v5 = v10;
            v4 = v11;
            v6 = v8 + v3;
        }
        while ( v8 + v3 && v6 <= 6 );
    }
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        v0->currAnimation = 4;
        object_setCounterTime(30);
        *(v1 + 16) = 0;
        result = 4;
        *v1 = 4;
    }
    return result;
}


// 0x811219c
int sub_811219C()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // ST00_4
    char v4; // r0
    int v5; // r1
    int v6; // r4
    int v7; // r6
    int v8; // r7
    int v9; // r1
    int v10; // r2
    int v11; // r1
    int v12; // r2
    int result; // r0

    v2 = *(v1 + 16) + 1;
    *(v1 + 16) = v2;
    if ( v2 == 25 )
    {
        v3 = v1;
        v4 = object_getFrontDirection(v0);
        v5 = *(v1 + 15);
        v6 = *(v1 + 12) & 0xFFFFFF;
        v7 = *(v1 + 8);
        v8 = *(v1 + 40);
        sub_80D1442(v4 + v0->panelX, v5, 4, 0x80000);
        v1 = v3;
        PlaySoundEffect(422, v9, v10);
        PlaySoundEffect(423, v11, v12);
    }
    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v1 + 16) = *(v1 + 24);
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x8112278
int sub_8112278()
{
    unsigned __int8 *v0; // r6
    int result; // r0

    result = sub_8112600();
    if ( !result )
        result = (*(&off_8112294 + *v0))();
    return result;
}


// 0x81122a0
int sub_81122A0()
{
    int v0; // r4
    int v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // r0
    signed __int16 v5; // r0
    int result; // r0

    v4 = object_getFlag();
    if ( v4 & 0xA000 )
    {
        *(v2 + 12) = byte_811223C;
        *(v2 + 4) = 1;
        v5 = 60;
LABEL_5:
        *(v3 + 16) = v5;
        object_setAttack0();
        *v2 = 4;
        *(v1 + 96) = *(v1 + 18);
        *(v1 + 100) = *(v1 + 19);
LABEL_11:
        result = 0;
        *(v2 + 8) = 0;
        return result;
    }
    if ( !sub_81123EC(v4, 40960) )
    {
        *(v2 + 12) = byte_8112224;
        *(v2 + 4) = 4;
        sub_8112648();
        v5 = byte_8112260[*(v0 + 22)];
        goto LABEL_5;
    }
    sub_8112630();
    if ( !sub_81124D4() )
    {
        *(v3 + 24) = 18;
        *(v3 + 40) = sub_81123EC;
        sub_8112666();
        goto LABEL_11;
    }
    result = *(v2 + 8) + 1;
    *(v2 + 8) = result;
    if ( result >= 60 )
    {
        result = sub_8109630(108, 121, 126);
        if ( !result )
        {
            *(v1 + 108) = 1;
            *(v3 + 24) = 5;
            *(v3 + 44) = sub_80103F8(*(v1 + 22) ^ 1);
            *(v3 + 40) = sub_81124F2;
            sub_8112666();
            *v2 = 8;
            goto LABEL_11;
        }
    }
    return result;
}


// 0x8112340
int __fastcall sub_8112340(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    int v5; // r7
    int v6; // r0
    int v7; // r0
    int v8; // r1
    int v9; // r4
    int v10; // r2
    int v11; // r3
    int v12; // r1
    int v13; // r0
    int v14; // r2
    int v15; // r2
    int v16; // r3
    int result; // r0
    int v18; // [sp-4h] [bp-8h]

    v6 = *(v4 + 4) - 1;
    *(v4 + 4) = v6;
    if ( v6 >= 0 && (v7 = sub_811252C(v6, a2, a3)) != 0 )
    {
        *(v5 + 22) = v7;
        *(v5 + 23) = v8;
        v9 = *(v3 + 22) ^ *(v3 + 23);
        v10 = *(v3 + 18);
        *(v3 + 96) = v10;
        v11 = *(v3 + 19);
        *(v3 + 100) = v11;
        *(v3 + 104) = sub_800E994(v7, v8, v10, v11);
        *(v5 + 3) = 1;
        v12 = *(v4 + 12);
        v13 = *(v12 + 4 * *(v18 + 22));
        *(v5 + 48) = v13;
        sub_81096FA(v13, v12, v14, byte_81125E0);
        *(v5 + 52) = v15;
        *(v5 + 56) = v16;
        object_setAttack0();
        result = sub_8109804();
    }
    else
    {
        result = 0;
        *v4 = 0;
    }
    return result;
}


// 0x811239a
int sub_811239A()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int v4; // r1
    int result; // r0

    if ( *(v3 + 26) )
    {
        v4 = *(v0 + 22);
        *(v3 + 12) = v4;
        *(v3 + 16) = byte_8112266[v4];
        *(v3 + 24) = byte_811226C[v4];
        *(v3 + 13) = byte_8112272[v4];
        *(v3 + 14) = byte_811225A[v4];
        *(v3 + 8) = byte_8112254[v4];
        *(v3 + 10) = 10;
        *(v3 + 40) = v1 + 108;
        *(v3 + 44) = sub_80103F8(*(v1 + 22) ^ 1);
        object_setAttack0();
    }
    else
    {
        *(v1 + 108) = 0;
    }
    result = 0;
    *v2 = 0;
    return result;
}


// 0x81123ec
_BYTE *__fastcall sub_81123EC(int a1, int a2)
{
    int v2; // r0
    _BYTE *result; // r0
    _BYTE *v4; // r4
    int v9; // [sp+10h] [bp+10h]

    v2 = object_getPanelsExceptCurrentFilterred(a1, a2, 0x800000, 0);
    if ( v2 && (result = sub_8112426(v2)) != 0 || (result = sub_8112466()) != 0 )
    {
        v4 = result;
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = (*(&v9 + v4) & 7);
    }
    return result;
}


// 0x8112426
_BYTE *__fastcall sub_8112426(int a1)
{
    Battle *v1; // r5
    unsigned __int8 *v2; // r7
    int v3; // r4
    int v4; // r6
    int v5; // r1
    int v6; // r2
    int v7; // r2
    int v8; // r3
    _BYTE *v9; // r5
    unsigned int v10; // r0
    int v11; // ST08_4
    int v12; // ST0C_4
    bool v13; // zf
    int v15; // [sp-14h] [bp-28h]
    unsigned int v16; // [sp-10h] [bp-24h]
    int v17; // [sp-4h] [bp-18h]

    v3 = a1;
    v4 = object_getFrontDirection(v1);
    sub_81096FA(v4, v5, v6, byte_81125E0);
    v9 = v2 + 16;
    v17 = (v2 + 16);
    do
    {
        v10 = *v2;
        v15 = (v10 & 7) - v4;
        v16 = v10 >> 4;
        v11 = v7;
        v12 = v8;
        v13 = object_checkPanelParameters(v15, v10 >> 4, v7, v8) == 0;
        v7 = v11;
        v8 = v12;
        if ( !v13 )
            *v9++ = v15 | 16 * v16;
        ++v2;
        --v3;
    }
    while ( v3 );
    return &v9[-v17];
}


// 0x8112466
int sub_8112466()
{
    Battle *v0; // r5
    _DWORD *v1; // r7
    int result; // r0
    int v3; // r6
    int v4; // r2
    int v5; // r4
    int v6; // r3
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3
    int v11; // r3
    int v12; // r3
    char v13; // [sp-Ch] [bp-20h]
    char v14; // [sp-8h] [bp-1Ch]
    int v15; // [sp-4h] [bp-18h]

    result = object_getEnemyByNameRange(v1, 1, 174, v0->Alliance);
    v3 = result;
    if ( result )
    {
        v5 = object_getFrontDirection(v0);
        v1[8] = 0;
        v1[7] = 0;
        v6 = v1;
        do
        {
            v15 = v6;
            if ( *v6 != v0 )
            {
                sub_81096FA(*(*v6 + 18) - v5, *(*v6 + 19), v4, byte_81125E0);
                v13 = v7;
                v14 = v8;
                if ( object_checkPanelParameters(v7, v8, v9, v10) )
                {
                    v4 = *(*v1 + 36);
                    v11 = v1[7];
                    if ( v4 >= v11 )
                    {
                        if ( v4 != v11 )
                        {
                            v1[7] = v4;
                            v1[8] = 0;
                        }
                        v12 = v1[8];
                        v4 = v12 + 1;
                        v1[8] = v12 + 1;
                        *(v1 + v12 + 16) = v13 | 16 * v14;
                    }
                }
            }
            v6 = v15 + 4;
            --v3;
        }
        while ( v3 );
        result = v1[8];
    }
    return result;
}


// 0x81124d4
int sub_81124D4()
{
    Battle *v0; // r5
    int v1; // r0
    int v2; // r0
    signed int v3; // r1

    v1 = object_getFrontDirection(v0);
    v2 = object_getPanelParameters(v1 + v0->panelX, v0->panelY);
    v3 = 142606336;
    if ( v0->Alliance )
        v3 = 75497472;
    return v2 & v3;
}


// 0x81124f2
int __fastcall sub_81124F2(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r4
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int result; // r0
    int v10; // r2
    bool v11; // zf
    int v12; // r0
    int v13; // r1
    int v14; // r2
    int v15; // r3
    int v16; // r6
    int v17; // [sp-10h] [bp-1Ch]
    int v18; // [sp-Ch] [bp-18h]
    int v19; // [sp-8h] [bp-14h]
    int v20; // [sp-4h] [bp-10h]

    v4 = a1;
    sub_81096FA(*(v3 + 22) ^ *(v3 + 23), *(a1 + 19), a3, byte_81125F0);
    result = object_getClosestPanelMatchingRowFiltered(v5, v6, v7, v8);
    if ( !v11 )
    {
        sub_81096FA(result, *(v4 + 19), v10, byte_81125E0);
        v17 = v12;
        v18 = v13;
        v19 = v14;
        v20 = v15;
        v11 = object_checkPanelParameters(v12, v13, v14, v15) == 0;
        result = v17;
        if ( v11 )
        {
            v16 = *(v3 + 22) ^ *(v3 + 23);
            result = sub_8015E46(v17, v18, v19, v20);
        }
    }
    return result;
}


// 0x811252c
int __fastcall sub_811252C(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r4
    int v8; // r2
    int v9; // r4
    int v10; // r1
    int v11; // r2

    result = sub_810971A(*(v3 + 19), a2, a3);
    if ( !result || (v6 = 4 * *(v3 + 104), v7 = *(&off_8112584 + v6), (result = sub_8112562(result, v5, v6)) == 0) )
    {
        v8 = 4 * *(v3 + 104);
        v9 = *(&off_811259C + v8);
        result = sub_8112562(result, v5, v8);
        if ( !result )
            result = sub_8112562(0, v10, v11);
    }
    return result;
}


// 0x8112562
int __fastcall sub_8112562(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    sub_81096FA(*(v3 + 18), *(v3 + 19), a3, byte_81125E0);
    return sub_8015D80(v4, v5, v6, v7);
}


// 0x8112600
signed int sub_8112600()
{
    int v0; // r5
    signed int v1; // r6
    __int16 v2; // r0
    int v3; // r3
    int v4; // r4

    v1 = 0;
    v2 = sub_800ED90(v0);
    if ( v3 )
    {
        v4 = v2 & 0x1FF;
        if ( sub_800A704() >= byte_12C )
        {
            sub_80126E4(v4);
            object_setAttack0();
            sub_800F322();
            v1 = 1;
        }
    }
    return v1;
}


// 0x8112630
int sub_8112630()
{
    int v0; // r5
    int result; // r0

    *(v0 + 16) = 0;
    result = *(v0 + 112);
    if ( result )
    {
        sub_80C4072(*(v0 + 112));
        result = 0;
        *(v0 + 112) = 0;
    }
    return result;
}


// 0x8112648
int sub_8112648()
{
    int v0; // r5
    int result; // r0

    *(v0 + 16) = 1;
    result = *(v0 + 112);
    if ( !result )
    {
        result = sub_80C4038(0, 0, 5, 0);
        *(v0 + 112) = result;
    }
    return result;
}


// 0x8112666
void sub_8112666()
{
    int v0; // r7

    *(v0 + 3) = 2;
    *(v0 + 12) = 18;
    *(v0 + 13) = 19;
    *(v0 + 48) = 3;
    *(v0 + 52) = 3;
    object_setAttack0();
}


// 0x81127c8
int sub_81127C8()
{
    unsigned __int8 *v0; // r7

    return (*(&off_81127DC + *v0))();
}


// 0x81127e8
void __fastcall sub_81127E8(int a1)
{
    Battle *v1; // r5
    int v2; // r7
    char v3; // zf
    int v4; // r0
    int v5; // r1

    object_canMove(a1);
    if ( v3 || (v4 = (*(v2 + 40))()) == 0 )
    {
        *(v2 + 26) = 0;
        object_exitAttackState(v1);
    }
    else
    {
        v1->futurePanelX = v4;
        v1->futurePanelY = v5;
        object_reservePanel(v4, v5);
        object_setFlag1(64);
        v1->currAnimation = 1;
        *(v2 + 16) = 30;
        *v2 = 4;
    }
}


// 0x8112820
int sub_8112820()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    signed int v2; // r0
    __int64 v3; // r0
    int v4; // r1
    int v5; // r0
    int v6; // r1
    int result; // r0
    int v8; // r0
    int v9; // r1

    v2 = v1[8];
    if ( v2 >= 3 )
    {
        if ( v2 == 3 )
        {
            v4 = v0->futurePanelY;
            v5 = object_getCoordinatesForPanels(v0->futurePanelX);
            SpawnT4BattleObjectWithId0(v0, v5, v5, v6, 0x100000);
        }
        else if ( !(v2 & 4) )
        {
            LODWORD(v3) = v0->futurePanelX;
            HIDWORD(v3) = v0->futurePanelY;
            object_highlightPanel(v3);
        }
    }
    result = v1[8] - 1;
    v1[8] = result;
    if ( !result )
    {
        SpawnT4BattleObjectWithId0(v0, &v0->vx, v0->x, v0->y, v0->z + 0x100000);
        v8 = v0->futurePanelX;
        v0->panelX = v8;
        v9 = v0->futurePanelY;
        v0->panelY = v9;
        object_removePanelReserve(v8, v9);
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        sub_81096BA();
        v1[8] = 3;
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x811288c
void sub_811288C()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0

    v2 = *(v1 + 16) - 1;
    *(v1 + 16) = v2;
    if ( !v2 )
    {
        object_clearFlag(64);
        object_setFlag1(0x80000);
        v0->currAnimation = 0;
        *(v1 + 26) = 1;
        object_exitAttackState(v0);
    }
}


// 0x81128b2
int sub_81128B2()
{
    unsigned __int8 *v0; // r7

    return (*(&off_81128C4 + *v0))();
}


// 0x81128da
int __fastcall sub_81128DA(int a1)
{
    int v1; // r5
    int v2; // r7
    int result; // r0

    if ( !a1 )
    {
        *(v2 + 1) = 1;
        *(v1 + 16) = 1;
    }
    result = *(v2 + 16) - 1;
    *(v2 + 16) = result;
    if ( !result )
    {
        *(v1 + 16) = 2;
        result = 4;
        *v2 = 4;
    }
    return result;
}


// 0x81128fa
int sub_81128FA()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 3;
        *(v1 + 14) = 0;
        if ( object_getFlag() & 0x2000 )
            *(v1 + 15) = 1;
        else
            *(v1 + 15) = 3;
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x8112928
int sub_8112928()
{
    int v0; // r7
    int v1; // r1
    int v2; // r2
    int result; // r0
    int v4; // r0

    if ( !*(v0 + 1) )
    {
        *(v0 + 1) = 1;
        sub_8112968();
        PlaySoundEffect(424, v1, v2);
        *(v0 + 16) = *(v0 + 18);
    }
    result = *(v0 + 16) - 1;
    *(v0 + 16) = result;
    if ( !result )
    {
        v4 = *(v0 + 14) + 1;
        *(v0 + 14) = v4;
        if ( v4 < *(v0 + 15) )
        {
            result = 0;
            *(v0 + 1) = 0;
        }
        else
        {
            *(v0 + 16) = *(v0 + 24);
            result = 12;
            *v0 = 12;
        }
    }
    return result;
}


// 0x8112968
int sub_8112968()
{
    Battle *v0; // r5
    int v1; // r7
    char v2; // r0
    int v3; // r2
    int v4; // r3
    int v5; // r3
    int v6; // r4
    int v7; // r6
    int v8; // r7

    v2 = object_getFrontDirection(v0) + v0->panelX;
    v3 = v0 + *(v1 + 13);
    v4 = *(v1 + 14);
    if ( *(v1 + 14) )
    {
        v5 = 4 * v4;
        v3 += v5;
        v4 = v3 - v5;
    }
    v6 = *(v1 + 3) | (*(v1 + 14) << 8);
    v7 = *(v1 + 8);
    v8 = v0 + *(v1 + 12);
    return sub_80D1EB8(v2, v0->panelY, v3, v4);
}


// 0x81129ee
signed int sub_81129EE()
{
    int v0; // r5
    signed int result; // r0

    result = *(v0 + 9);
    if ( result != 11 )
    {
        result = *(v0 + 84);
        if ( *(result + 130) + *(result + 132) + *(result + 134) + *(result + 136) + *(result + 138) )
        {
            result = 1;
            *(v0 + 96) = 1;
        }
    }
    return result;
}


// 0x8112a1e
int sub_8112A1E()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r0

    v1 = *(v0 + 10);
    if ( !*(v0 + 10) )
    {
        v2 = *(v0 + 104);
        if ( v2 )
            sub_80D1EE8(v2);
        v3 = *(v0 + 108);
        if ( v3 )
            sub_80D1EE8(v3);
        v1 = *(v0 + 112);
        if ( v1 )
            v1 = sub_80D1EE8(v1);
    }
    return sub_80165C2(v1);
}


// 0x8112a4a
int sub_8112A4A()
{
    unsigned __int8 *v0; // r6

    return (*(&off_8112A5C + *v0))();
}


// 0x8112a64
void sub_8112A64()
{
    int v0; // r4
    int v1; // r6

    *(v1 + 8) = byte_81129D6[*(v0 + 22)];
    *v1 = 4;
    sub_8112A78();
}


// 0x8112a78
void sub_8112A78()
{
    int v0; // r4
    _DWORD *v1; // r5
    int v2; // r6
    int v3; // r7
    int v4; // r0
    int v5; // r0
    int v6; // r1

    v1[29] = 0;
    v4 = *(v2 + 8);
    if ( v4 == 255 || (v5 = v4 - 1, *(v2 + 8) = v5, v5) )
    {
        if ( v1[24] )
        {
            v1[24] = 0;
            if ( !sub_8109630(116, 127, 132) && !sub_8109630(100, 127, 132) && !(object_getFlag() & 0x8000) )
            {
                v1[29] = 1;
                v6 = *(v0 + 22);
                *(v3 + 3) = v6;
                *(v3 + 16) = byte_81129DC[v6];
                *(v3 + 18) = byte_81129E2[v6];
                *(v3 + 24) = byte_81129E8[v6];
                *(v3 + 8) = byte_81129D0[v6];
                *(v3 + 10) = 10;
                *(v3 + 12) = 100;
                *(v3 + 13) = 104;
                v1[26] = 0;
                v1[27] = 0;
                v1[28] = 0;
                object_setAttack0();
            }
        }
    }
    else
    {
        *(v3 + 40) = sub_8112B06;
        object_setAttack0();
        *v2 = 0;
    }
}


// 0x8112b06
__int64 __noreturn sub_8112B06()
{
    int v0; // r4
    int v1; // r5
    int v2; // r1
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r0
    int v12; // r1
    int v13; // r2
    int v14; // r3
    int v15; // r7
    unsigned int v20; // r0
    __int64 v21; // ST00_8
    int v23; // [sp+0h] [bp-24h]

    object_reservePanel(*(v1 + 18), *(v1 + 19));
    sub_81096FA(*(v0 + 19), v2, v3, byte_8112B60);
    v8 = sub_800D45C(v4, v5, v6, v7);
    if ( !v8 )
    {
        sub_81096FA(*(v0 + 19), v9, v10, byte_8112B60);
        object_getPanelsFiltered(v11, v12, v13, v14);
    }
    v15 = v8;
    GetPositiveSignedRNG2();
    __asm { SVC         6 }
    v20 = *(&v23 + v15);
    LODWORD(v21) = v20 & 7;
    HIDWORD(v21) = v20 >> 4;
    object_removePanelReserve(*(v1 + 18), *(v1 + 19));
    return v21;
}


// 0x8112c80
int sub_8112C80()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8112C94 + *v0))();
}


// 0x8112ca4
int sub_8112CA4()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r0
    int v9; // r1
    int v10; // r2

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        *(v1 + 40) = 0;
        *(v1 + 16) = *(v1 + 12);
        v0->currAnimation = 1;
    }
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        v5 = *(v1 + 23);
        v6 = object_getCoordinatesForPanels(*(v1 + 22));
        SpawnT4BattleObjectWithId0(v0, v6, v6, v7, 786432);
        if ( v8 )
        {
            v9 = *(v1 + 13);
            *(v8 + 32) = v9;
        }
        *(v1 + 40) = v8;
        *(v1 + 16) = *(v1 + 13);
        PlaySoundEffect(189, v9, v10);
        result = 4;
        *v1 = 4;
    }
    return result;
}


// 0x8112cf4
int sub_8112CF4()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    int v5; // r0

    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        *(v0 + 16) = 2;
        v5 = sub_80C4038(0, 0, 0, 0);
        *(v1 + 48) = v5;
        *(sub_80C4086(v5) + 32) = 10 * *(v1 + 14);
        object_setCounterTime(30);
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x8112d2a
int sub_8112D2A()
{
    int v0; // r7
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    int v4; // r0

    if ( !*(v0 + 1) )
    {
        *(v0 + 1) = 1;
        sub_8112F34();
        *(v0 + 16) = 10;
    }
    v1 = *(v0 + 16);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 16) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        v4 = *(v0 + 14) - 1;
        *(v0 + 14) = v4;
        if ( v4 )
        {
            result = 0;
            *(v0 + 1) = 0;
        }
        else
        {
            sub_80C4072(*(v0 + 48));
            result = 12;
            *v0 = 12;
        }
    }
    return result;
}


// 0x8112d60
void sub_8112D60()
{
    Battle *v0; // r5
    int v1; // r7

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        v0->currAnimation = 3;
    }
    if ( sprite_getFrameParameters() & 0x80 )
    {
        v0->currAnimation = 0;
        object_exitAttackState(v0);
    }
}


// 0x8112d84
char *sub_8112D84()
{
    int v0; // r7
    char *result; // r0
    __int64 v2; // r0

    result = (*(v0 + 18) + 1);
    *(v0 + 18) = result;
    if ( !(result & 4) )
    {
        LODWORD(v2) = *(v0 + 22);
        HIDWORD(v2) = *(v0 + 23);
        result = object_highlightPanel(v2);
    }
    return result;
}


// 0x8112d9c
int sub_8112D9C()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8112DB0 + *v0))();
}


// 0x8112dc0
int sub_8112DC0()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    int v5; // r2
    int v6; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r3

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        *(v1 + 40) = 0;
        *(v1 + 16) = *(v1 + 12);
        v0->currAnimation = 1;
    }
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        object_getFrontDirection(v0);
        sub_81096FA(v0->panelX, v0->panelY, v5, byte_8112E24);
        object_getFirstPanelInDirectionFiltered(v6, v7, v8, v9);
    }
    return result;
}


// 0x8112e34
u32 *sub_8112E34()
{
    Battle *v0; // r5
    int v1; // r7
    u32 *result; // r0
    int v3; // r0

    result = v0->parent;
    if ( result == &byte_0[1] )
    {
        v0->currAnimation = 2;
        *(v1 + 40) = 0;
        v3 = sub_80C4038(0, 0, 0, 0);
        *(v1 + 48) = v3;
        *(sub_80C4086(v3) + 32) = 10 * *(v1 + 14);
        *(v1 + 52) = object_getFrontDirection(v0);
        object_setCounterTime(30);
        result = &dword_8;
        *v1 = 8;
    }
    else if ( !result )
    {
        result = &dword_C;
        *v1 = 12;
    }
    return result;
}


// 0x8112e7c
int __fastcall sub_8112E7C(int a1, int a2, int a3)
{
    int v3; // r7
    int v4; // r0
    unsigned __int8 v5; // vf
    int result; // r0
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r0

    if ( !*(v3 + 1) )
    {
        *(v3 + 1) = 1;
        sub_8112F34();
        *(v3 + 16) = 10;
    }
    v4 = *(v3 + 16);
    v5 = __OFSUB__(v4, 1);
    result = v4 - 1;
    *(v3 + 16) = result;
    if ( ((result < 0) ^ v5) | (result == 0) )
    {
        v7 = *(v3 + 14) - 1;
        *(v3 + 14) = v7;
        if ( v7 )
        {
            *(v3 + 1) = 0;
            result = sub_8112EFA(0, a2, a3);
            if ( !result )
            {
                v10 = -*(v3 + 52);
                *(v3 + 52) = v10;
                result = sub_8112EFA(v10, v8, v9);
            }
        }
        else
        {
            sub_80C4072(*(v3 + 48));
            result = 12;
            *v3 = 12;
        }
    }
    return result;
}


// 0x8112ec4
void sub_8112EC4()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        v0->currAnimation = 3;
        *(v1 + 16) = *(v1 + 24);
    }
    if ( v0->currAnimation && sprite_getFrameParameters() & 0x80 )
        v0->currAnimation = 0;
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2--, 1);
    *(v1 + 16) = v2;
    if ( ((v2 < 0) ^ v3) | (v2 == 0) )
        object_exitAttackState(v0);
}


// 0x8112efa
BOOL __fastcall sub_8112EFA(int a1, int a2, int a3)
{
    int v3; // r7
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    BOOL result; // r0
    char v9; // [sp-8h] [bp-Ch]
    char v10; // [sp-4h] [bp-8h]

    sub_81096FA(*(v3 + 22) + *(v3 + 52), *(v3 + 23), a3, byte_8112F24);
    v9 = v4;
    v10 = v5;
    result = object_checkPanelParameters(v4, v5, v6, v7);
    if ( result )
    {
        *(v3 + 22) = v9;
        *(v3 + 23) = v10;
    }
    return result;
}


// 0x8112f34
int sub_8112F34()
{
    int v0; // r7
    int v1; // r4
    int v2; // r6

    v1 = *(v0 + 15) + 2560;
    v2 = *(v0 + 8);
    return sub_80DFF84(*(v0 + 22), *(v0 + 23), 0, 0);
}


// 0x8112f4e
int sub_8112F4E()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8112F60 + *v0))();
}


// 0x8112f70
int sub_8112F70()
{
    _BYTE *v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r4

    if ( *(v1 + 1) )
    {
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            v3 = *(v1 + 12) | 0x100;
            *(v1 + 40) = sub_80E3CF2(v0[18], v0[19], *(v1 + 48), 786432);
            result = 4;
            *v1 = 4;
        }
    }
    else
    {
        *(v1 + 1) = 1;
        *(v1 + 40) = 0;
        result = 1;
        v0[16] = 1;
    }
    return result;
}


// 0x8112fba
u32 *sub_8112FBA()
{
    Battle *v0; // r5
    int v1; // r7
    u32 *result; // r0
    int v3; // r0

    result = v0->parent;
    if ( result == &byte_0[1] )
    {
        v0->currAnimation = 2;
        *(v1 + 40) = 0;
        v3 = sub_80C4038(0, 0, 0, 0);
        *(v1 + 48) = v3;
        *(sub_80C4086(v3) + 32) = 10 * *(v1 + 14);
        *(v1 + 52) = object_getFrontDirection(v0);
        object_setCounterTime(30);
        result = &dword_8;
        *v1 = 8;
    }
    else if ( !result )
    {
        result = &dword_C;
        *v1 = 12;
    }
    return result;
}


// 0x8113002
int sub_8113002()
{
    int v0; // r7
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    int v4; // r0

    if ( !*(v0 + 1) )
    {
        *(v0 + 1) = 1;
        sub_8112F34();
        *(v0 + 16) = 10;
    }
    v1 = *(v0 + 16);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 16) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        v4 = *(v0 + 14) - 1;
        *(v0 + 14) = v4;
        if ( v4 )
        {
            result = 0;
            *(v0 + 1) = 0;
        }
        else
        {
            sub_80C4072(*(v0 + 48));
            result = 12;
            *v0 = 12;
        }
    }
    return result;
}


// 0x8113038
void sub_8113038()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        v0->currAnimation = 3;
        *(v1 + 16) = *(v1 + 24);
    }
    if ( v0->currAnimation && sprite_getFrameParameters() & 0x80 )
        v0->currAnimation = 0;
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2--, 1);
    *(v1 + 16) = v2;
    if ( ((v2 < 0) ^ v3) | (v2 == 0) )
        object_exitAttackState(v0);
}


// 0x81130e4
int sub_81130E4()
{
    sub_8113114();
    return sub_8016B02();
}


// 0x81130f0
int sub_81130F0()
{
    sub_8113114();
    return sub_8016CE8();
}


// 0x81130fc
int sub_81130FC()
{
    sub_8113114();
    return sub_8016B36();
}


// 0x8113108
int sub_8113108()
{
    sub_8113114();
    return sub_8016B72();
}


// 0x8113114
int sub_8113114()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    int result; // r0

    v2 = *(v0 + 22) & 1;
    result = 0;
    *(v1 + 76) = 0;
    return result;
}


// 0x8113124
int sub_8113124()
{
    unsigned __int8 *v0; // r6
    int result; // r0

    result = sub_81131D8();
    if ( !result )
    {
        result = object_getFlag();
        if ( !(result & 0xA000) )
            result = (*(sub_8113148 + *v0))();
    }
    return result;
}


// 0x8113148
int sub_8113148()
{
    int v0; // r4
    _BYTE *v1; // r6
    int result; // r0

    result = 4 * (*(v0 + 22) & 1) + 4;
    *v1 = result;
    return result;
}


// 0x8113162
void __fastcall sub_8113162(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r5
    int v5; // r7
    int v6; // r1

    if ( sub_810971A(*(v4 + 19), a2, a3) )
    {
        v6 = *(v3 + 22);
        *(v5 + 15) = byte_81130DE[v6];
        *(v5 + 14) = byte_81130D8[v6];
        *(v5 + 12) = byte_81130C6[v6];
        *(v5 + 24) = byte_81130D2[v6];
        *(v5 + 8) = byte_81130C0[v6];
        *(v5 + 10) = 10;
        *(v5 + 48) = *&byte_81130A8[4 * v6];
        object_setAttack0();
    }
}


// 0x81131d8
signed int sub_81131D8()
{
    int v0; // r5
    signed int v1; // r6
    __int16 v2; // r0
    int v3; // r3

    v1 = 0;
    v2 = sub_800ED90(v0);
    if ( v3 && *(v0 + 36) <= (*(v0 + 38) >> 1) )
    {
        sub_80126E4(v2 & 0x1FF);
        object_setAttack0();
        sub_800F322();
        v1 = 1;
    }
    return v1;
}


// 0x8113330
int sub_8113330()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8113344 + *v0))();
}


// 0x8113350
int __fastcall sub_8113350(int a1)
{
    Battle *v1; // r5
    int v2; // r6
    int v3; // r7
    BOOL v4; // r0
    int v6; // r0
    int v7; // r1
    int v8; // r1
    int v9; // r2

    v4 = object_canMove(a1);
    if ( _ZF )
        return (loc_801171C)(v4);
    object_setFlag1(64);
    if ( *(v2 + 4) == 1 )
    {
        v6 = v1->panelX;
        v1->futurePanelX = v6;
        v7 = v1->panelY;
        v1->futurePanelY = v7;
        object_reservePanel(v6, v7);
        PlaySoundEffect(425, v8, v9);
    }
    v1->vx = object_getFrontDirection(v1) * *(v3 + 48);
    __asm { SVC         6 }
    *(v3 + 16) = 0;
    *(v3 + 18) = 0;
    *v3 = 4;
    return sub_811339A();
}


// 0x811339a
int sub_811339A()
{
    int v0; // r5
    int v1; // r6
    unsigned __int8 *v2; // r7
    int v3; // r0
    int v4; // r0
    unsigned __int8 v5; // vf
    int result; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r1

    if ( *(*(v0 + 84) + 112) & 0xC000000 )
    {
        *(v2 + 15) = *(v0 + 18);
        object_clearCollisionRegion();
    }
    if ( *(v0 + 18) != *(v2 + 15) )
        object_setCollisionRegion(1);
    *(v0 + 52) += *(v0 + 64);
    object_setPanelsFromCoordinates(v0);
    v3 = *(v0 + 18);
    if ( !*(v0 + 18) || v3 == 7 || object_checkPanelParameters(v3, *(v0 + 19), *(v2 + 13), *(v2 + 14)) )
    {
        object_updateCollisionPanels(v0);
        v4 = *(v2 + 8);
        v5 = __OFSUB__(v4, 1);
        result = v4 - 1;
        *(v2 + 8) = result;
        if ( !(((result < 0) ^ v5) | (result == 0)) )
            return result;
        if ( !object_isCurrentPanelValid() )
        {
            *(v0 + 18) -= 6 * object_getFrontDirection(v0);
            if ( *(v1 + 4) == 1 && (v7 = *(v2 + 11)) != 0 && *(*(v0 + 88) + 22) )
                *(v0 + 19) = *(v7 + 19);
            else
                *(v0 + 19) = *(v0 + 21);
        }
        if ( *(v0 + 20) != *(v0 + 18) )
        {
            object_setCoordinatesFromPanels(v0);
            result = *(v2 + 9);
            *(v2 + 8) = result;
            return result;
        }
    }
    else
    {
        SpawnT4BattleObjectWithId0(v0, v0 + 64, *(v0 + 52), *(v0 + 56), *(v0 + 60) + 0x100000);
        *(v2 + 8) = 60;
        *(v1 + 4) = 0;
        *v2 = 8;
    }
    if ( *(v1 + 4) != 1 )
    {
        v8 = *(v0 + 20);
        *(v0 + 18) = v8;
        v9 = *(v0 + 21);
        *(v0 + 19) = v9;
        object_removePanelReserve(v8, v9);
    }
    object_setCoordinatesFromPanels(v0);
    object_setCollisionPanelsToCurrent();
    object_clearFlag(64);
    object_setFlag1(0x80000);
    object_setCollisionRegion(1);
    result = *v2;
    if ( result != 8 )
        result = (loc_801171C)();
    return result;
}


// 0x811348e
int sub_811348E()
{
    unsigned __int8 *v0; // r7

    return (*(&off_81134A0 + *v0))();
}


// 0x81134b0
int sub_81134B0()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    int v5; // r6

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        v0->currAnimation = 1;
        *(v1 + 16) = 30;
    }
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        v0->currAnimation = 2;
        *(v1 + 18) = 9;
        *(v1 + 23) = 1;
        v5 = v0->panelX + object_getFrontDirection(v0);
        sub_800D5F0(v5, v0->Alliance);
    }
    return result;
}


// 0x8113510
int sub_8113510()
{
    int v0; // r5
    int v1; // r7
    int v2; // r4
    int v3; // r6
    int v4; // r0
    unsigned __int8 v5; // vf
    int result; // r0
    int v7; // r0
    int v8; // r0
    char *v9; // r1
    int v10; // r0
    int v11; // r2

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        v2 = *(v1 + 12) << 8;
        v3 = *(v1 + 8);
        sub_80DFF84(*(v1 + 22), *(v1 + 23), 0, 0);
        *(v1 + 16) = *(v1 + 12);
    }
    v4 = *(v1 + 16);
    v5 = __OFSUB__(v4, 1);
    result = v4 - 1;
    *(v1 + 16) = result;
    if ( ((result < 0) ^ v5) | (result == 0) )
    {
        v7 = *(v1 + 18) - 1;
        *(v1 + 18) = v7;
        if ( v7
            && (v8 = object_getFrontDirection(v0),
                    v9 = &byte_8113594[2 * (8 - *(v1 + 18))],
                    v10 = v8 * *v9,
                    *(v1 + 23) += v9[1],
                    v11 = *(v1 + 22) + v10,
                    *(v1 + 22) = v11,
                    v11 >= 1)
            && v11 <= 6 )
        {
            result = 0;
            *(v1 + 1) = 0;
        }
        else
        {
            *(v0 + 16) = 3;
            sub_80C4072(*(v0 + 104));
            *(v0 + 104) = 0;
            result = 8;
            *v1 = 8;
        }
    }
    return result;
}


// 0x81135a4
int sub_81135A4()
{
    int v0; // r5
    _WORD *v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 0;
        v1[8] = v1[12];
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x8113626
int __fastcall sub_8113626(int a1, int a2, int a3)
{
    _DWORD *v3; // r5
    int result; // r0

    v3[24] = sub_80B89DC(a1, a2, a3, 0);
    v3[15] = 0x80000;
    result = 0;
    v3[26] = 0;
    return result;
}


// 0x811363c
int sub_811363C()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 10);
    if ( !*(v0 + 10) )
    {
        v1 = *(v0 + 96);
        if ( v1 )
        {
            sub_80B8A0A(v1);
            v1 = sub_80C4072(*(v0 + 104));
        }
    }
    return sub_80165C2(v1);
}


// 0x811365a
int sub_811365A()
{
    unsigned __int8 *v0; // r6

    return (*(&off_811366C + *v0))();
}


// 0x8113674
signed int sub_8113674()
{
    int v0; // r4
    _BYTE *v1; // r6
    int v2; // r7
    signed int result; // r0

    *(v2 + 16) = byte_8113620[*(v0 + 22)];
    object_setAttack0();
    result = 4;
    *v1 = 4;
    return result;
}


// 0x811368a
void sub_811368A()
{
    int v0; // r4
    int v1; // r5
    int v2; // r6
    int v3; // r7
    signed int v4; // r0
    int v5; // r1

    *(v1 + 100) = 0;
    v4 = *(v2 + 4);
    if ( v4 < 2 )
        goto LABEL_10;
    *(v2 + 4) = 0;
    if ( object_getFlag() & 0x8000 )
    {
        LOBYTE(v4) = *(v2 + 4);
LABEL_10:
        *(v2 + 4) = v4 + 1;
        *(v3 + 52) = 0;
        *(v3 + 56) = 58720256;
        *(v3 + 48) = *&byte_81135FC[4 * *(v0 + 22)];
        *(v3 + 44) = sub_80103F8(*(v1 + 22) ^ 1);
        object_setAttack0();
        sub_8113330();
        return;
    }
    if ( object_getFlag() & 0x2000 )
    {
        *(v3 + 16) = 60;
        object_setAttack0();
    }
    else
    {
        if ( sub_8109630(100, 139, 144) )
        {
            *(v3 + 16) = byte_8113620[*(v0 + 22)];
        }
        else
        {
            *(v1 + 100) = 1;
            v5 = *(v0 + 22);
            *(v3 + 12) = byte_811361A[v5];
            *(v3 + 24) = byte_8113620[v5];
            *(v3 + 8) = byte_8113614[v5];
            *(v3 + 10) = 10;
        }
        object_setAttack0();
    }
}


// 0x8113840
int sub_8113840()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8113854 + *v0))();
}


// 0x811387c
int sub_811387C()
{
    _BYTE *v0; // r7
    int result; // r0

    *v0 = *off_8113894[v0[12]];
    result = 0;
    v0[1] = 0;
    return result;
}


// 0x811389e
int sub_811389E()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    if ( *(v1 + 1) )
    {
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            *(v0 + 16) = 2;
            sub_80C00C2(*(v0 + 104), 8);
            *v1 = 8;
            result = 0;
            *(v1 + 1) = 0;
        }
    }
    else
    {
        *(v0 + 16) = 1;
        sub_80C00C2(*(v0 + 104), 7);
        result = 1;
        *(v1 + 1) = 1;
    }
    return result;
}


// 0x81138d8
int sub_81138D8()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r1
    int v4; // r2

    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        object_setCounterTime(24);
        *(v0 + 16) = 3;
        sub_80C00C2(*(v0 + 104), 9);
        sub_8113C48();
        sub_8113BAC();
        PlaySoundEffect(186, v3, v4);
        *(v1 + 16) = *(v1 + 24);
        *v1 = 12;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x8113910
int sub_8113910()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        *(v0 + 16) = 0;
        sub_80C00C2(*(v0 + 104), 6);
        *(v1 + 16) = 1;
        object_clearFlag(64);
        *v1 = 36;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x811393a
int sub_811393A()
{
    int v0; // r5
    int v1; // r7
    char v2; // r0
    char v3; // r1
    char v4; // zf
    int v5; // r1
    int v6; // r2
    int result; // r0

    v2 = sub_8113B20();
    if ( v4 )
    {
        *v1 = 32;
    }
    else
    {
        *(v0 + 108) = v2;
        *(v0 + 109) = v3;
        *(v0 + 16) = 4;
        sub_80C00C2(*(v0 + 104), 10);
        *(v0 + 110) = 0;
        *(v0 + 111) = 0;
        sub_8113CC8();
        sub_8113C84(*(v1 + 44));
        PlaySoundEffect(189, v5, v6);
        *v1 = 20;
    }
    result = 0;
    *(v1 + 1) = 0;
    return result;
}


// 0x8113984
signed int sub_8113984()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r0
    char v4; // r0
    char v5; // r1

    if ( !*(v1 + 1) )
    {
        if ( !(sprite_getFrameParameters() & 0x80) )
            goto LABEL_10;
        v2 = *(v0 + 111) + 1;
        *(v0 + 111) = v2;
        if ( v2 != 20 )
            goto LABEL_10;
        *(v1 + 1) = 1;
    }
    v3 = *(v0 + 110) - 1;
    *(v0 + 110) = v3;
    if ( v3 )
    {
        *(v0 + 52) += *(v0 + 64);
        *(v0 + 56) += *(v0 + 68);
        if ( v3 & 2 )
        {
            sub_8114192();
            sub_80C0136(*(v0 + 104));
        }
        object_clearCollisionRegion();
    }
    else
    {
        v4 = *(v0 + 108);
        v5 = *(v0 + 109);
        *(v1 + 22) = v4;
        *(v0 + 18) = v4;
        *(v1 + 23) = v5;
        *(v0 + 19) = v5;
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        *(v0 + 23) = *(v0 + 103);
        sub_800F2C6();
        *(v0 + 110) = 0;
        object_setCollisionRegion(1);
        *v1 = 24;
        *(v1 + 1) = 0;
    }
LABEL_10:
    object_setPanelsFromCoordinates(v0);
    return object_updateCollisionPanels(v0);
}


// 0x8113a1c
int sub_8113A1C()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int result; // r0
    int v4; // r0

    if ( !*(v1 + 1) )
        *(v1 + 1) = 1;
    v2 = *(v1 + 16) - 1;
    *(v1 + 16) = v2;
    if ( v2 )
    {
        result = *(v1 + 16);
        if ( !(result & 4) )
        {
            v4 = object_getFrontDirection(v0);
            result = sub_8109660(v4 + *(v0 + 18), *(v0 + 19), 1, *(v0 + 22) ^ *(v0 + 23));
        }
    }
    else
    {
        object_setCounterTime(16);
        *(v0 + 16) = 5;
        sub_80C00C2(*(v0 + 104), 11);
        *(v1 + 16) = *(v1 + 24);
        *(v0 + 110) = 0;
        *v1 = 28;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x8113a76
int sub_8113A76()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r1
    int v4; // r2
    int result; // r0

    if ( !*(v1 + 1) )
    {
        v2 = *(v0 + 110) + 1;
        *(v0 + 110) = v2;
        if ( v2 == 3 )
        {
            sub_8113BEC();
            sub_8113C18();
            PlaySoundEffect(176, v3, v4);
            *(v1 + 1) = 1;
        }
    }
    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        result = *(v1 + 16) - 1;
        *(v1 + 16) = result;
        if ( !result )
        {
            *v1 = 32;
            result = 0;
            *(v1 + 1) = 0;
        }
    }
    return result;
}


// 0x8113ab8
void __noreturn sub_8113AB8()
{
    int v0; // r4
    int v1; // r5
    int v2; // r7
    __int16 v3; // r0
    int v4; // r1
    char v5; // r0
    char v6; // r0
    int v7; // r1

    *(v1 + 96) = 0;
    object_clearFlag(64);
    v3 = byte_8113D84[*(v0 + 22)];
    *(v2 + 24) = v3;
    *(v2 + 16) = v3;
    *(v1 + 16) = 0;
    sub_80C00C2(*(v1 + 104), 6);
    v4 = *(v1 + 19);
    sub_81141E8(*(v1 + 18));
    v5 = *(v1 + 100);
    *(v2 + 22) = v5;
    *(v1 + 18) = v5;
    v6 = *(v1 + 101);
    *(v2 + 23) = v6;
    *(v1 + 19) = v6;
    object_setCoordinatesFromPanels(v1);
    object_updateCollisionPanels(v1);
    v7 = *(v1 + 101);
    sub_81141BC(*(v1 + 100));
    *(v1 + 23) = 0;
    sub_800F2C6();
    object_removePanelReserve(*(v1 + 100), *(v1 + 101));
    JUMPOUT(loc_8113B1A);
}


// 0x8113b20
void sub_8113B20()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r4
    int v3; // r6
    int v4; // r0
    int v5; // r0
    int v6; // r0
    int v7; // [sp-8h] [bp-1Ch]

    v2 = -object_getFrontDirection(v0);
    v3 = *(v1 + 44);
    v4 = *(v1 + 44);
    if ( v4 && *(v4 + 36) )
    {
        if ( (v7 = *(v3 + 18) + v2, v5 = object_getPanelParameters(v7, *(v3 + 19)), v5 & 0x10) && !(v5 & 0xF800000)
            || (v7 = *(v3 + 18) - v2, v6 = object_getPanelParameters(v7, *(v3 + 19)), v6 & 0x10) && !(v6 & 0xF800000) )
        {
            sub_8113B7A(v7);
        }
    }
}


// 0x8113b7a
void __fastcall sub_8113B7A(int a1)
{
    Battle *v1; // r5
    int v2; // r7
    int v3; // r2
    int v4; // ST00_4

    v3 = *(v2 + 44);
    if ( v3 )
    {
        if ( *(v3 + 36) )
        {
            v4 = a1 - *(v3 + 18);
            v1->extraVars[7] = v4 * object_getFrontDirection(v1) > 0;
        }
    }
}


// 0x8113bac
int sub_8113BAC()
{
    int v0; // r4
    Battle *v1; // r5
    int v2; // r7
    int v3; // r6
    int v4; // r4
    char v5; // r0
    int v6; // r1
    int v7; // r0
    int v8; // r3
    int v9; // r5
    int v10; // r1

    v3 = *(v2 + 8) | (*(v2 + 10) << 16);
    v4 = *(v0 + 22) | (v1->Alliance << 8) | (v1->directionFlip << 16);
    v5 = object_getFrontDirection(v1);
    v6 = v1->panelY;
    v7 = object_getCoordinatesForPanels(v5 + v1->panelX);
    v8 = *(v2 + 2);
    v9 = *(v2 + 44);
    return sub_80DD25E(v7, v10, 1835008);
}


// 0x8113bec
int sub_8113BEC()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r6
    char v3; // r0

    v2 = *(v1 + 8) | (*(v1 + 10) << 16);
    v3 = object_getFrontDirection(v0);
    return object_spawnCollisionRegion(v3 + v0->panelX, v0->panelY, *(v1 + 2), 0);
}


// 0x8113c18
void sub_8113C18()
{
    Battle *v0; // r5
    int v1; // ST00_4
    char v2; // r0
    int v3; // r1
    int v4; // r0
    int v5; // r1

    v1 = (v0->Alliance ^ v0->directionFlip) << 8;
    v2 = object_getFrontDirection(v0);
    v3 = v0->panelY;
    v4 = object_getCoordinatesForPanels(v2 + v0->panelX);
    SpawnT4BattleObjectWithId0(v0, v1, v4, v5, 0);
}


// 0x8113c48
void sub_8113C48()
{
    int v0; // r4
    Battle *v1; // r5
    int v2; // ST00_4
    int v3; // r1
    int v4; // r0
    int v5; // r1
    int v6; // r0

    v2 = ((v1->Alliance ^ v1->directionFlip) << 8) | ((*(v0 + 22) + 16) << 16);
    v3 = v1->panelY;
    v4 = object_getCoordinatesForPanels(v1->panelX);
    SpawnT4BattleObjectWithId0(v1, v2, v4, v5, 0);
    if ( v6 )
        sub_80E060E(v6);
}


// 0x8113c84
void __fastcall sub_8113C84(int result)
{
    Battle *v1; // r5
    int v2; // r4
    int v3; // r1
    int v4; // r0
    int v5; // r1
    int v6; // r0

    if ( result && *(result + 36) )
    {
        v2 = (v1->Alliance ^ v1->directionFlip) << 8;
        v3 = *(result + 19);
        v4 = object_getCoordinatesForPanels(*(result + 18));
        SpawnT4BattleObjectWithId0(v1, v2, v4, v5, 1114112);
        if ( v6 )
            *(v6 + 32) = v1->extraVars[14] + 32;
    }
}


// 0x8113cc8
int sub_8113CC8()
{
    int v0; // r5
    int v1; // r2
    int result; // r0
    int v3; // r1
    signed int v4; // r2
    signed int v9; // r2

    *(v0 + 64) = 0;
    *(v0 + 68) = 0;
    v1 = *(v0 + 108);
    result = v1 - *(v0 + 18);
    v3 = *(v0 + 109) - *(v0 + 19);
    if ( v1 == *(v0 + 18) )
    {
        if ( *(v0 + 109) == *(v0 + 19) )
        {
            result = 1;
            *(v0 + 110) = 1;
        }
        else
        {
            v9 = 786432;
            if ( v3 <= 0 )
            {
                LOBYTE(v3) = *(v0 + 19) - *(v0 + 109);
                v9 = -786432;
            }
            *(v0 + 68) = v9;
            *(v0 + 110) = 2 * v3;
        }
    }
    else
    {
        v4 = 1310720;
        if ( result <= 0 )
        {
            result = -result;
            v4 = -1310720;
        }
        *(v0 + 64) = v4;
        *(v0 + 110) = 2 * result;
        if ( v3 )
        {
            result = 1572864 * v3;
            __asm { SVC         6 }
        }
        else
        {
            result = 0;
        }
        *(v0 + 68) = result;
    }
    return result;
}


// 0x8113dd8
int sub_8113DD8()
{
    unsigned __int8 *v0; // r6

    return (*(&off_8113DEC + *v0))();
}


// 0x8113dfc
int sub_8113DFC()
{
    int v0; // r5
    _BYTE *v1; // r6
    int v2; // r7
    int result; // r0
    int v4; // r0
    int v5; // r1
    int v6; // [sp-4h] [bp-18h]

    result = object_getFlag();
    if ( !(result & 0xA000) )
    {
        v4 = sub_8114316(*(v0 + 22) ^ 1);
        if ( v4 )
        {
            v6 = v4;
            result = sub_8109630(96, 145, 150);
            if ( !result )
            {
                *(v2 + 44) = v6;
                *(v0 + 96) = 1;
                result = 8;
                *v1 = 8;
            }
        }
        else
        {
            v5 = *(v0 + 102) + 1;
            *(v0 + 102) = v5;
            if ( v5 < 3 )
            {
                result = 12;
                *v1 = 12;
            }
            else
            {
                *(v0 + 102) = 0;
                result = 4;
                *v1 = 4;
            }
        }
    }
    return result;
}


// 0x8113e54
int __fastcall sub_8113E54(int a1)
{
    int v1; // r4
    int v2; // r5
    _BYTE *v3; // r6
    int v4; // r7
    char v5; // zf
    int v6; // r1
    int result; // r0

    object_canMove(a1);
    if ( !v5 )
    {
        *(v4 + 44) = sub_80103F8(*(v2 + 22) ^ 1);
        v6 = *(v1 + 22);
        *(v4 + 24) = byte_8113DB0[v6];
        *(v4 + 8) = byte_8113D8A[v6];
        *(v4 + 10) = byte_8113D98[v6];
        *(v4 + 16) = byte_8113DA8[v6];
        *(v4 + 12) = 0;
        object_setFlag1(64);
        object_setAttack0();
        *(v4 + 1) = 0;
    }
    result = 0;
    *v3 = 0;
    return result;
}


// 0x8113eac
int __fastcall sub_8113EAC(int a1)
{
    int v1; // r4
    int v2; // r5
    _BYTE *v3; // r6
    int v4; // r7
    char v5; // zf
    int v6; // r0
    int v7; // r1
    int v8; // r1
    int result; // r0

    object_canMove(a1);
    if ( v5 )
    {
        *(v2 + 96) = 0;
    }
    else
    {
        v6 = *(v2 + 18);
        v7 = *(v2 + 19);
        *(v2 + 100) = v6;
        *(v2 + 101) = v7;
        object_reservePanel(v6, v7);
        v8 = *(v1 + 22);
        *(v4 + 24) = byte_8113DB8[v8];
        *(v4 + 8) = byte_8113D90[v8];
        *(v4 + 10) = byte_8113D98[v8];
        *(v4 + 16) = byte_8113DA0[v8];
        *(v4 + 12) = 1;
        object_setFlag1(64);
        object_setAttack0();
        *(v4 + 1) = 0;
    }
    result = 0;
    *v3 = 0;
    return result;
}


// 0x8113f10
int sub_8113F10()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int result; // r0

    *(v1 + 16) = 0;
    *(v3 + 40) = sub_8113F94;
    *(v3 + 44) = sub_80103F8(*(v1 + 22) ^ 1);
    *(v3 + 24) = byte_8113D84[*(v0 + 22)];
    *(v3 + 3) = 2;
    *(v3 + 12) = 20;
    *(v3 + 13) = 21;
    *(v3 + 48) = 3;
    *(v3 + 52) = 3;
    object_setAttack0();
    sub_8114214();
    result = 0;
    *v2 = 0;
    return result;
}


// 0x8113f60
__int64 __noreturn sub_8113F60()
{
    int v0; // r5
    __int64 v1; // r0
    int v2; // r2
    __int64 v3; // ST00_8

    object_reservePanel(*(v0 + 18), *(v0 + 19));
    LODWORD(v1) = sub_8113FC0();
    if ( !v1 )
    {
        LODWORD(v1) = sub_8113FE8();
        if ( !v1 )
            sub_8114030(0, SHIDWORD(v1), v2);
    }
    v3 = v1;
    object_removePanelReserve(*(v0 + 18), *(v0 + 19));
    return v3;
}


// 0x8113f94
void __noreturn sub_8113F94()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r0
    int v4; // r1

    object_reservePanel(*(v0 + 18), *(v0 + 19));
    if ( !sub_8114040() && !sub_8114060(0, v1, v2) )
    {
        v3 = *(v0 + 18);
        v4 = *(v0 + 19);
    }
    object_removePanelReserve(*(v0 + 18), *(v0 + 19));
    JUMPOUT(loc_8113FBC);
}


// 0x8113fc0
int sub_8113FC0()
{
    unsigned __int8 *v0; // r5
    int result; // r0
    int v2; // r2
    int v3; // r6
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    result = sub_80103F8(v0[22] ^ 1);
    if ( result )
    {
        sub_81096FA(v0[18], v0[19], v2, byte_8114160);
        v3 = v0[22];
        result = sub_8114074(v4, v5, v6, v7);
    }
    return result;
}


// 0x8113fe8
int sub_8113FE8()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3
    int v8; // ST00_4
    int v13; // [sp+0h] [bp-2Ch]

    result = sub_80103F8(*(v0 + 22) ^ 1);
    if ( result )
    {
        sub_81096FA(*(result + 19), v2, v3, byte_8114160);
        result = object_getPanelsIgnoreColumnFiltered(v4, v5, v6, v7);
        if ( result )
        {
            v8 = result;
            GetPositiveSignedRNG2();
            __asm { SVC         6 }
            result = *(&v13 + v8) & 7;
        }
    }
    return result;
}


// 0x8114030
void __fastcall __noreturn sub_8114030(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_8114160);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x8114040
int sub_8114040()
{
    int v0; // r5
    char v1; // r0
    char (*v2)[3]; // r4
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    GetPositiveSignedRNG2();
    v2 = off_8114100[v1 & 0xF];
    sub_81096FA(*(v0 + 18), *(v0 + 19), v3, byte_8114160);
    return sub_8015D80(v4, v5, v6, v7);
}


// 0x8114060
int __fastcall sub_8114060(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    sub_81096FA(*(v3 + 18), *(v3 + 19), a3, byte_8114160);
    return sub_8015D80(v4, v5, v6, v7);
}


// 0x8114074
int __fastcall sub_8114074(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r4

    v5 = *(&off_8019B78 + v4);
    return sub_8114088(a1, a2, a3, a4);
}


// 0x8114088
int __fastcall sub_8114088(int a1, int a2, int a3, int a4)
{
    char *v4; // r4
    int v5; // r5
    int v6; // r6
    int v7; // r6
    int v8; // r0
    int v9; // r1
    int result; // r0
    int v15; // [sp+0h] [bp-4Ch]
    int v16; // [sp+1Ch] [bp-30h]
    int v17; // [sp+20h] [bp-2Ch]
    int v18; // [sp+24h] [bp-28h]
    int v19; // [sp+28h] [bp-24h]
    int v20; // [sp+2Ch] [bp-20h]
    int v21; // [sp+30h] [bp-1Ch]
    int v22; // [sp+34h] [bp-18h]

    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = a4;
    v20 = object_getAllianceDirection(v6);
    v7 = 0;
    while ( 1 )
    {
        v8 = *v4;
        if ( v8 == 127 )
            break;
        v9 = v4[1];
        v21 = v8 * v20 + v16;
        v22 = v9 + v17;
        if ( object_checkPanelParameters(v21, v9 + v17, v18, v19) )
        {
            if ( v22 != *(v5 + 19) )
                *(&v15 + v7++) = v21 | 16 * v22;
        }
        v4 += 2;
    }
    result = v7;
    if ( v7 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v15 + v7) & 7;
    }
    return result;
}


// 0x8114170
int __fastcall sub_8114170(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    char v5; // r1
    int result; // r0

    *(v4 + 96) = 0;
    v5 = *(v4 + 19);
    *(v4 + 100) = *(v4 + 18);
    *(v4 + 101) = v5;
    *(v4 + 102) = 0;
    result = sub_80C0098(102, 0, 0, a4);
    *(v4 + 104) = result;
    return result;
}


// 0x8114192
int sub_8114192()
{
    Battle *v0; // r5

    object_getFlip(v0);
    return sub_80E33FA(268548, v0->x, v0->y, v0->z);
}


// 0x81141bc
void __fastcall sub_81141BC(char a1)
{
    Battle *v1; // r5
    int v2; // ST04_4
    int v3; // r0
    int v4; // r1

    v2 = (v1->Alliance ^ v1->directionFlip) << 8;
    v3 = object_getCoordinatesForPanels(a1);
    SpawnT4BattleObjectWithId0(v1, v2, v3, v4, 0);
}


// 0x81141e8
void __fastcall sub_81141E8(char a1)
{
    Battle *v1; // r5
    int v2; // ST04_4
    int v3; // r0
    int v4; // r1

    v2 = (v1->Alliance ^ v1->directionFlip) << 8;
    v3 = object_getCoordinatesForPanels(a1);
    SpawnT4BattleObjectWithId0(v1, v2, v3, v4, 0);
}


// 0x8114214
int sub_8114214()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8114228 + *v0))();
}


// 0x8114238
void __fastcall sub_8114238(int a1)
{
    Battle *v1; // r5
    int v2; // r7
    char v3; // zf
    int v4; // r0
    int v5; // r1

    object_canMove(a1);
    if ( v3 || (v4 = (*(v2 + 40))(*(v2 + 44))) == 0 )
    {
        *(v2 + 26) = 0;
        object_exitAttackState(v1);
    }
    else
    {
        v1->futurePanelX = v4;
        v1->futurePanelY = v5;
        object_reservePanel(v4, v5);
        object_setFlag1(64);
        if ( *(v2 + 3) & 1 )
            v1->currAnimation = *(v2 + 14);
        *(v2 + 16) = *(v2 + 48);
        *v2 = 4;
    }
}


// 0x811427a
int sub_811427A()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r0
    int v4; // r4
    int v5; // r1
    int result; // r0
    int v7; // r4
    int v8; // r0
    int v9; // r1

    if ( *(v1 + 16) == 3 && *(v1 + 3) & 2 )
    {
        v2 = v0->futurePanelY;
        v3 = object_getCoordinatesForPanels(v0->futurePanelX);
        v4 = *(v1 + 13);
        SpawnT4BattleObjectWithId0(v0, v3, v3, v5, 0x100000);
    }
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        if ( *(v1 + 3) & 2 )
        {
            v7 = *(v1 + 12);
            SpawnT4BattleObjectWithId0(v0, &v0->vx, v0->x, v0->y, v0->z + 0x100000);
        }
        v8 = v0->futurePanelX;
        v0->panelX = v8;
        v9 = v0->futurePanelY;
        v0->panelY = v9;
        object_removePanelReserve(v8, v9);
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        sub_81096BA();
        if ( *(v1 + 3) & 1 )
            v0->currAnimation = *(v1 + 15);
        *(v1 + 16) = *(v1 + 52);
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x81142f0
int sub_81142F0()
{
    int v0; // r7
    int result; // r0

    result = *(v0 + 16) - 1;
    *(v0 + 16) = result;
    if ( !result )
    {
        object_clearFlag(64);
        object_setFlag1(0x80000);
        *(v0 + 16) = *(v0 + 24);
        *(v0 + 26) = 1;
        result = 12;
        *v0 = 12;
    }
    return result;
}


// 0x8114316
int __fastcall sub_8114316(int a1)
{
    int v1; // r5
    int v2; // r10
    int *v3; // r6
    signed int v4; // r4
    int v5; // r7
    int v6; // r5
    int v7; // r0
    __int16 v8; // r0
    int v9; // r2
    int v10; // r0
    int v11; // r2
    int v13; // [sp+0h] [bp-1Ch]
    int v14; // [sp+4h] [bp-18h]

    v13 = *(v1 + 18);
    v14 = *(v1 + 19);
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
                    v8 = object_getFlag();
                    if ( v8 & 0x800 )
                    {
                        if ( !(v8 & 0x200) )
                        {
                            v10 = sub_811438E(*(v6 + 18), *(v6 + 19), v9, &v13);
                            if ( !v5 || sub_811438E(*(v5 + 18), *(v5 + 19), v11, &v13) > v10 )
                                v5 = v6;
                        }
                    }
                }
            }
        }
        ++v3;
        --v4;
    }
    while ( v4 );
    return v5;
}


// 0x811438e
int __fastcall sub_811438E(int a1, int a2, int a3, _DWORD *a4)
{
    return (*a4 - a1) * (*a4 - a1) + (a4[1] - a2) * (a4[1] - a2);
}


// 0x81144b4
int sub_81144B4()
{
    int v0; // r5
    unsigned __int8 *v1; // r7
    int v2; // r0

    v2 = *(*(v0 + 84) + 112);
    if ( v2 && v2 & 0xC000000 )
        object_clearCollisionRegion();
    return (*(&off_81144D8 + *v1))();
}


// 0x81144e8
int sub_81144E8()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r2
    char v5; // r1
    int result; // r0

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        object_setCollisionRegion(1);
    }
    if ( !(object_getPanelParameters(*(v0 + 18), *(v0 + 19)) & 0x10) )
        *v0 &= 0xFDu;
    v2 = *(v1 + 16) - 1;
    *(v1 + 16) = v2;
    if ( v2 )
    {
        result = *(v1 + 16);
        if ( !(result & 4) )
            result = sub_8114694();
    }
    else
    {
        *(v0 + 114) = 0;
        if ( sub_802D234() != 6 )
            object_setCounterTime(30);
        sub_8114FB8(1441792, 1);
        *(v1 + 16) = 0;
        *(v0 + 124) = sub_80BC998(*(v0 + 18), *(v0 + 19), v0);
        PlaySoundEffect(225, v3, v4);
        v5 = *(v0 + 19);
        *(v0 + 120) = *(v0 + 18);
        *(v0 + 121) = v5;
        result = 4;
        *v1 = 4;
    }
    return result;
}


// 0x811456a
void __noreturn sub_811456A()
{
    int v0; // r5
    _WORD *v1; // r7
    int v2; // r1
    int v3; // r1
    int v4; // r0
    int v5; // r0
    int v6; // r2

    v2 = *(v0 + 132) - 1;
    *(v0 + 132) = v2;
    if ( v2 <= 0 )
    {
        *(v0 + 132) = 0;
        sub_80BC9BE(*(v0 + 124));
        *(v0 + 124) = 0;
    }
    *(v0 + 52) += *(v0 + 64);
    *(v0 + 60) = 5632 * *&math_sinTable[2 * (*(v0 + 110) >> 8)];
    v3 = *(v0 + 102);
    v4 = sub_8114F52(*(v0 + 100)) + 1;
    if ( v4 != *(v0 + 104) )
    {
        *(v0 + 16) = v4;
        *(v0 + 104) = v4;
    }
    *(v0 + 110) += *(v0 + 108);
    v5 = *(v0 + 100) + 1;
    *(v0 + 100) = v5;
    if ( v5 == *(v0 + 102) )
    {
        *(v0 + 128) = sub_80BC998(*(v0 + 18), *(v0 + 19), v0);
        PlaySoundEffect(446, 128, v6);
        *(v0 + 16) = 0;
        *(v0 + 60) = 0;
        v1[8] = v1[12];
        *v1 = 8;
    }
    object_setPanelsFromCoordinates(v0);
    object_updateCollisionPanels(v0);
    sub_81146CC();
    sub_8115028();
}


// 0x8114612
signed int sub_8114612()
{
    int v0; // r5
    _WORD *v1; // r7
    int v2; // r1
    signed int result; // r0
    int v4; // r1
    char v5; // r1

    v2 = *(v0 + 132) - 1;
    *(v0 + 132) = v2;
    if ( v2 <= 0 )
    {
        *(v0 + 132) = 0;
        sub_80BC9BE(*(v0 + 124));
        *(v0 + 124) = 0;
    }
    result = 134;
    v4 = *(v0 + 134) - 1;
    *(v0 + 134) = v4;
    if ( v4 <= 0 )
    {
        *(v0 + 134) = 0;
        sub_80BC9BE(*(v0 + 128));
        *(v0 + 128) = 0;
        *(v0 + 116) = 0;
        object_removePanelReserve(*(v0 + 106), *(v0 + 107));
        v5 = *(v0 + 107);
        *(v0 + 18) = *(v0 + 106);
        *(v0 + 19) = v5;
        object_setCoordinatesFromPanels(v0);
        sub_801DD34();
        *v0 &= 0xFDu;
        *(v0 + 97) = 1;
        object_clearCollisionRegion();
        v1[8] = 30;
        *v1 = 12;
        object_setPanelsFromCoordinates(v0);
        result = object_updateCollisionPanels(v0);
    }
    return result;
}


// 0x8114694
int sub_8114694()
{
    Battle *v0; // r5
    int v1; // r6
    int v2; // r4
    int result; // r0

    v1 = object_getFrontDirection(v0);
    v2 = 0;
    do
        result = sub_8109660(v0->panelX + v1 * v2++, v0->panelY, 1, v0->Alliance ^ v0->directionFlip);
    while ( v2 != 3 );
    return result;
}


// 0x81146bc
void sub_81146BC()
{
    _BYTE *v0; // r5

    *v0 &= 0xFDu;
    sub_81097BA();
}


// 0x81146cc
int sub_81146CC()
{
    unsigned __int8 *v0; // r5
    int result; // r0
    unsigned __int8 v2; // r1

    result = v0[18];
    if ( result != v0[120] || v0[19] != v0[121] )
    {
        v2 = v0[19];
        v0[120] = v0[18];
        v0[121] = v2;
        result = object_setCollisionRegion(1);
    }
    return result;
}


// 0x81147f4
int sub_81147F4()
{
    _BYTE *v0; // r5
    unsigned __int8 *v1; // r6

    if ( v0[97] )
        *v0 &= 0xFDu;
    return (*(&off_8114818 + *v1))();
}


// 0x8114824
signed int sub_8114824()
{
    _DWORD *v0; // r5
    _BYTE *v1; // r6
    signed int result; // r0

    v0[31] = 0;
    v0[32] = 0;
    if ( !sub_8114CF2() || sub_8109630(116, 151, 156) )
    {
        result = 4;
        *v1 = 4;
    }
    else
    {
        v0[29] = 1;
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x8114910
int sub_8114910()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    _WORD *v3; // r7
    int v4; // r1
    int v5; // ST00_4
    int v6; // r1
    int v7; // r0
    int v8; // r4
    int v9; // r1
    int v10; // r1
    int v11; // r2
    __int16 v12; // r3
    int v13; // r1

    *(v1 + 23) = 0;
    if ( sub_8114AF0() )
    {
        v4 = 4 * *(v0 + 22);
        *(v1 + 132) = *&byte_81147DC[v4];
        *(v1 + 134) = *&byte_81147DC[v4 + 2];
        *(v1 + 112) = *&byte_8114760[2 * *(v0 + 22)];
        v5 = v0;
        v6 = *(v1 + 99);
        v7 = object_getCoordinatesForPanels(*(v1 + 98));
        v8 = *(v1 + 112);
        *(v1 + 64) = sub_8114F6A((v1 + 52), v7, v9, 0);
        *(v1 + 68) = v10;
        *(v1 + 72) = v11;
        *(v1 + 108) = v12;
        *(v1 + 100) = 0;
        *(v1 + 102) = *(v1 + 112);
        *(v1 + 110) = 0;
        *(v1 + 16) = 0;
        *(v1 + 104) = 0;
        v13 = *(v5 + 22);
        v3[12] = 90;
        v3[4] = byte_8114750[v13];
        v3[5] = byte_8114758[v13];
        v3[8] = 20;
        v3[9] = 0;
        object_clearCollisionRegion();
        object_setAttack0();
        *v2 = 0;
        sub_8115028();
    }
    *v2 = 0;
    sub_800F2C6();
    return sub_8115074();
}


// 0x81149e0
void __fastcall __noreturn sub_81149E0(int a1, int a2, int a3)
{
    sub_8114A4A(a1, a2, a3);
}


// 0x8114a4a
void __fastcall __noreturn sub_8114A4A(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_8114C30);
    sub_8114C90(v3, v4, v5, v6);
}


// 0x8114a64
void __fastcall __noreturn sub_8114A64(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_8114C30);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x8114a84
void __fastcall __noreturn sub_8114A84(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_8114C40);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x8114aa4
void __fastcall __noreturn sub_8114AA4(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_8114C50);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x8114ac4
int __fastcall sub_8114AC4(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    sub_81096FA(*(v3 + 18), *(v3 + 19), a3, byte_8114C60);
    return sub_8015D80(v4, v5, v6, v7);
}


// 0x8114af0
unsigned __int8 *sub_8114AF0()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r2
    int v4; // r1
    unsigned __int8 *result; // r0
    u8 v6; // ST08_1
    u8 v7; // ST0C_1
    u8 v8; // r1
    int v9; // r0
    u8 v10; // r1
    int v11; // ST08_4

    v2 = object_getFlag();
    v4 = 0x2000;
    if ( v2 & 0x2000 )
        goto LABEL_8;
    result = sub_80103F8(v0->Alliance ^ 1);
    if ( !result )
        return result;
    *(v1 + 44) = result;
    v2 = sub_8114BB4(result[18], result[19], result[22]);
    if ( !v2 )
LABEL_8:
        sub_8114BF0(v2, v4, v3);
    v6 = v2;
    v7 = v4;
    object_reservePanel(v0->panelX, v0->panelY);
    v8 = v0->panelY;
    v0->extraVars[10] = v0->panelX;
    v0->extraVars[11] = v8;
    v0->panelX = v6;
    v0->panelY = v7;
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    v9 = sub_8114D8E();
    v0->extraVars[2] = v9;
    v0->extraVars[3] = v10;
    v11 = v9;
    sub_8114DAC();
    return v11;
}


// 0x8114bb4
int __fastcall sub_8114BB4(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, 5 * a3 + 1, byte_8114C70);
    return sub_8015D80(v3, v4, v5, v6);
}


// 0x8114bf0
void __fastcall __noreturn sub_8114BF0(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_8114C70);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x8114c04
int __fastcall sub_8114C04(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_8114C80);
    return sub_8015D80(v3, v4, v5, v6);
}


// 0x8114c90
void __fastcall __noreturn sub_8114C90(int a1, int a2, int a3, int a4)
{
    sub_8114CBC(a1, a2, a3, a4);
}


// 0x8114cbc
int __fastcall __noreturn sub_8114CBC(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r1
    int v6; // r0
    int v7; // ST0C_4
    int v8; // r4
    int v9; // r6
    int v11; // [sp+0h] [bp-24h]
    int v12; // [sp+4h] [bp-20h]
    int v13; // [sp+8h] [bp-1Ch]
    int v14; // [sp+10h] [bp-14h]
    int v15; // [sp+14h] [bp-10h]

    v5 = 3;
    do
    {
        v6 = 6;
        do
        {
            v11 = v6;
            v12 = v5;
            v13 = a3;
            v7 = a4;
            v8 = object_getPanelParameters(v6, v5);
            v5 = v12;
            a3 = v13;
            a4 = v7;
            v9 = v14;
            if ( !(v8 & v7) && (v8 & v13) == v13 && v12 != *(v4 + 19) )
            {
                *(v15 + v14) = 16 * v12 | v11;
                v9 = v14 + 1;
            }
            v6 = v11 - 1;
        }
        while ( v11 != 1 );
        v5 = v12 - 1;
    }
    while ( v12 != 1 );
    return v9;
}


// 0x8114cf2
int sub_8114CF2()
{
    int v0; // r4
    int result; // r0

    if ( object_getFlag() & 0x8000 )
        result = 0;
    else
        result = (*(&off_8114D14 + *(v0 + 22)))();
    return result;
}


// 0x8114d2c
signed int sub_8114D2C()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r1

    result = 0;
    v2 = *(v0 + 105) + 1;
    *(v0 + 105) = v2;
    if ( v2 > 3 )
    {
        *(v0 + 105) = 0;
        result = 1;
    }
    return result;
}


// 0x8114d44
int sub_8114D44()
{
    char v0; // r0

    GetPositiveSignedRNG2();
    return byte_8114D64[v0 & 0xF];
}


// 0x8114d74
int sub_8114D74()
{
    Battle *v0; // r5
    int result; // r0
    char v2; // r3

    result = object_getFrontDirection(v0);
    v2 = 0;
    if ( result != v0->extraVars[2] - v0->panelX )
        v2 = 1;
    v0->directionFlip = v2;
    return result;
}


// 0x8114d8e
int sub_8114D8E()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r1

    if ( *(*(v1 + 44) + 18) - *(v0 + 18) >= 0 )
        result = *(v0 + 18) + 2;
    else
        result = *(v0 + 18) - 2;
    v3 = *(v0 + 19);
    return result;
}


// 0x8114dac
int sub_8114DAC()
{
    Battle *v0; // r5
    int result; // r0
    char v2; // r3

    v0->directionFlip = 0;
    result = object_getFrontDirection(v0);
    v2 = 0;
    if ( result != (v0->extraVars[2] - v0->panelX) >> 1 )
        v2 = 1;
    v0->directionFlip = v2;
    return result;
}


// 0x8114df2
int sub_8114DF2()
{
    int v0; // r5
    char v1; // t1
    char v2; // r1
    int result; // r0

    *(v0 + 132) = 0;
    *(v0 + 134) = 0;
    *(v0 + 116) = 0;
    *(v0 + 105) = 0;
    v1 = *(v0 + 97);
    sub_801A082(97, 58, 2, 3);
    v2 = *(v0 + 19);
    *(v0 + 106) = *(v0 + 18);
    *(v0 + 107) = v2;
    result = 0;
    *(v0 + 124) = 0;
    *(v0 + 128) = 0;
    return result;
}


// 0x8114e30
int sub_8114E30()
{
    int v0; // r5
    int result; // r0

    result = byte_8114758[*(*(v0 + 88) + 22)];
    *(v0 + 46) = result;
    return result;
}


// 0x8114e44
void __noreturn sub_8114E44()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r1
    int v4; // r0
    int v5; // r0
    int v6; // r2

    v2 = *(v0 + 132) - 1;
    *(v0 + 132) = v2;
    if ( v2 <= 0 )
    {
        *(v0 + 132) = 0;
        sub_80BC9BE(*(v0 + 124));
        *(v0 + 124) = 0;
    }
    object_setCollisionRegion(1);
    *(v0 + 52) += *(v0 + 64);
    *(v0 + 60) = 5632 * *&math_sinTable[2 * (*(v0 + 110) >> 8)];
    v3 = *(v0 + 102);
    v4 = sub_8114F52(*(v0 + 100)) + 1;
    if ( v4 != *(v0 + 104) )
    {
        *(v0 + 16) = v4;
        *(v0 + 104) = v4;
    }
    *(v0 + 110) += *(v0 + 108);
    v5 = *(v0 + 100) + 1;
    *(v0 + 100) = v5;
    if ( v5 == *(v0 + 102) )
    {
        *(v0 + 128) = sub_80BC998(*(v0 + 18), *(v0 + 19), v0);
        PlaySoundEffect(446, 128, v6);
        *(v0 + 16) = 0;
        *(v0 + 60) = 0;
        *(v1 + 16) = 23;
        object_setAttack0();
        object_removePanelReserve(*(v0 + 106), *(v0 + 107));
    }
    object_setPanelsFromCoordinates(v0);
    object_updateCollisionPanels(v0);
    sub_8115028();
}


// 0x8114efc
void __noreturn sub_8114EFC()
{
    int v0; // r5
    int v1; // r1
    int v2; // r1

    v1 = *(v0 + 132) - 1;
    *(v0 + 132) = v1;
    if ( v1 <= 0 )
    {
        *(v0 + 132) = 0;
        sub_80BC9BE(*(v0 + 124));
        *(v0 + 124) = 0;
    }
    if ( !(object_getPanelParameters(*(v0 + 18), *(v0 + 19)) & 0x10) )
        *v0 &= 0xFDu;
    v2 = *(v0 + 134) - 1;
    *(v0 + 134) = v2;
    if ( v2 <= 0 )
    {
        *(v0 + 134) = 0;
        sub_80BC9BE(*(v0 + 128));
        *(v0 + 128) = 0;
        sub_81097B4();
    }
}


// 0x8114f52
signed int __fastcall sub_8114F52(signed int result)
{
    __asm
    {
        SVC         6
        SVC         6
    }
    if ( result == 4 )
        result = 3;
    return result;
}


// 0x8114f6a
int __fastcall sub_8114F6A(_DWORD *a1, int a2, int a3, int a4)
{
    int v4; // ST04_4
    int v9; // r2

    v4 = a3 - a1[1];
    __asm
    {
        SVC         6
        SVC         6
        SVC         6
        SVC         6
    }
    v9 = a4 - a1[2];
    return a2 - *a1;
}


// 0x8114faa
int sub_8114FAA()
{
    object_setFlag1(64);
    return sub_80165B8();
}


// 0x8114fb8
int __fastcall sub_8114FB8(int a1, int a2)
{
    int v2; // r4
    int v3; // r5
    int v4; // r7
    int result; // r0
    int v6; // [sp-8h] [bp-1Ch]

    v4 = *(v2 + 22);
    result = 0;
    do
    {
        v6 = result;
        if ( (**(&off_8115010 + a2))[result] != 255 )
            sub_80BE6D8(*(v3 + 98), *(v3 + 99), v4, (**(&off_8115004 + a2))[7 * v4 + result]);
        result = v6 + 1;
    }
    while ( v6 + 1 < 7 );
    return result;
}


// 0x8115028
int __noreturn sub_8115028()
{
    _DWORD *v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r1
    bool v4; // zf
    int result; // r0
    int v6; // [sp-8h] [bp-1Ch]
    int v7; // [sp-4h] [bp-18h]

    v1 = v0[14];
    v2 = v0[15];
    v6 = sub_800E258(v0[13] + v0[16]);
    v7 = v3;
    v4 = (object_getPanelParameters(v6, v3) & 0x800000) == 0;
    result = v6;
    if ( !v4 )
        result = sub_811504C(v6, v7);
    return result;
}


// 0x811504c
int __fastcall sub_811504C(char a1, int a2)
{
    int v2; // r7
    int v3; // r6

    v3 = *(v2 + 8) | (*(v2 + 10) << 16);
    return object_spawnCollisionRegion(a1, a2, *(v2 + 2), 0);
}


// 0x8115074
int sub_8115074()
{
    _BYTE *v0; // r5
    int result; // r0

    result = 97;
    if ( v0[97] )
    {
        v0[97] = 0;
        sub_801DC7C(0, 0);
        *v0 |= 2u;
        result = sub_8016934();
    }
    return result;
}


// 0x8115098
void sub_8115098()
{
    ;
}


// 0x81151a0
int sub_81151A0()
{
    unsigned __int8 *v0; // r7

    return (*(&off_81151B4 + *v0))();
}


// 0x81151cc
void sub_81151CC()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    char v3; // zf
    int v4; // r0
    unsigned __int8 v5; // vf
    int v6; // r0

    if ( *(v1 + 1) )
    {
        if ( *(v1 + 12) == 1 )
            sub_8115466();
        sub_81154B8();
        sub_8115432();
        v0->x += v0->vx;
        if ( *(v1 + 16) == *(v1 + 18) )
        {
            object_setPanelsFromCoordinates(v0);
            object_updateCollisionPanels(v0);
        }
        v4 = *(v1 + 16);
        v5 = __OFSUB__(v4--, 1);
        *(v1 + 16) = v4;
        if ( (v4 < 0) ^ v5 )
        {
            v0->panelX = *(v1 + 22);
            v0->panelY = *(v1 + 23);
            object_setCoordinatesFromPanels(v0);
            object_setCollisionPanelsToCurrent();
            v6 = *(v1 + 12) - 1;
            *(v1 + 12) = v6;
            if ( v6 )
            {
                *(v1 + 1) = 0;
            }
            else
            {
                *(v1 + 16) = *(v1 + 24);
                *v1 = 12;
            }
        }
        sub_8115492();
    }
    else
    {
        *(v1 + 1) = 1;
        v2 = object_canMove(1);
        if ( v3 )
        {
            object_exitAttackState(v0);
        }
        else
        {
            sub_801A082(v2, 53, 2, 3);
            object_setFlag1(64);
            object_setFlag1(0x400000);
            if ( sub_802D234() != 6 )
                object_setCounterTime(16);
            *(v1 + 52) = *(&loc_8115234 + *(v1 + 12));
            v0->currAnimation = 2;
            *(v1 + 16) = 12;
            *(v1 + 13) = 1;
            *(v1 + 14) = 1;
            *v1 = 4;
            sub_8115492();
        }
    }
}


// 0x8115340
int sub_8115340()
{
    int v0; // r5
    _WORD *v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    int v5; // r1
    int v6; // r0
    int v7; // r1
    int v8; // r2

    if ( *(*(v0 + 84) + 112) & 0xC000000 )
        object_clearCollisionRegion();
    sub_81154B8();
    sub_8115432();
    v2 = v1[8];
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    v1[8] = result;
    if ( (result < 0) ^ v3 )
    {
        v5 = *(v0 + 21);
        v6 = object_getCoordinatesForPanels(*(v0 + 20));
        v1[8] = 30;
        *(v0 + 64) = sub_8001330((v0 + 52), v6, v7);
        *(v0 + 72) = v8;
        object_clearCollisionRegion();
        object_clearFlag(1);
        *(v0 + 16) = 4;
        *v1 = 16;
        result = sub_8115398();
    }
    return result;
}


// 0x8115398
int sub_8115398()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    u32 v2; // r1
    int v3; // r0
    unsigned __int8 v4; // vf
    int result; // r0
    int v6; // r0
    int v7; // r1

    v0->x += v0->vx;
    v2 = v0->vz;
    v0->z += v2;
    v0->vz = v2 - 40960;
    object_setPanelsFromCoordinates(v0);
    object_updateCollisionPanels(v0);
    if ( v1[8] == 8 )
        v0->currAnimation = 5;
    v3 = v1[8];
    v4 = __OFSUB__(v3, 1);
    result = v3 - 1;
    v1[8] = result;
    if ( (result < 0) ^ v4 )
    {
        v6 = v0->futurePanelX;
        v0->panelX = v6;
        v7 = v0->futurePanelY;
        v0->panelY = v7;
        object_removePanelReserve(v6, v7);
        v0->z = 0;
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        object_setCollisionRegion(1);
        object_clearFlag(64);
        object_setFlag1(0x80000);
        sub_8115446();
        v1[8] = 24;
        result = 20;
        *v1 = 20;
    }
    return result;
}


// 0x8115404
void sub_8115404()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0

    if ( v0->currAnimation && sprite_getFrameParameters() & 0x80 )
        v0->currAnimation = 0;
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    *(v1 + 16) = v4;
    if ( (v4 < 0) ^ v3 )
    {
        sub_801A082(v4, 1, 2, 3);
        object_exitAttackState(v0);
    }
}


// 0x8115432
void sub_8115432()
{
    int v0; // r7
    int v1; // r0

    v1 = *(v0 + 13) - 1;
    *(v0 + 13) = v1;
    if ( !v1 )
    {
        *(v0 + 13) = 16;
        sub_8115446();
    }
}


// 0x8115446
void sub_8115446()
{
    Battle *v0; // r5
    int v1; // r0

    v1 = object_getFrontDirection(v0);
    SpawnT4BattleObjectWithId0(v0, &v0->vx, v0->x - 917504 * v1, v0->y, v0->z + 0x80000);
}


// 0x8115466
void sub_8115466()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r0

    v2 = *(v1 + 14) - 1;
    *(v1 + 14) = v2;
    if ( !v2 )
    {
        *(v1 + 14) = 4;
        v3 = object_getFrontDirection(v0);
        SpawnT4BattleObjectWithId0(v0, &v0->vx, v0->x + 917504 * v3, v0->y, v0->z + 0x80000);
    }
}


// 0x8115492
int sub_8115492()
{
    Battle *v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r0

    result = *(v1 + 15) + 1;
    *(v1 + 15) = result;
    if ( !(result & 4) )
    {
        v3 = object_getFrontDirection(v0);
        result = sub_8109660(v3 + v0->futurePanelX, v0->panelY, *(v1 + 52), v0->Alliance ^ v0->directionFlip);
    }
    return result;
}


// 0x81154b8
int sub_81154B8()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 16);
    if ( result == 2 )
    {
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            *(v0 + 16) = 3;
            result = object_setFlag1(1);
        }
    }
    return result;
}


// 0x811555c
int sub_811555C()
{
    int v0; // r5
    char v1; // r0

    *(*(v0 + 84) + 7) = 10;
    GetPositiveSignedRNG2();
    *(v0 + 96) = (v1 & 2) - 1;
    *(v0 + 108) = 0;
    return sub_80165B8();
}


// 0x811557c
int sub_811557C()
{
    unsigned __int8 *v0; // r6

    return (*(&off_8115590 + *v0))();
}


// 0x8115598
signed int sub_8115598()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int v4; // r1
    int v5; // r2
    int v6; // r2
    signed int result; // r0
    signed int v8; // r0
    int v9; // r2
    int v10; // r1
    int v11; // r0
    int v12; // r1
    int v13; // r2
    int v14; // r0
    int v15; // r2
    int v16; // r3

    *(v1 + 104) = 0;
    if ( object_getFlag() & 0xA000
        || (sub_8109630(104, 157, 162), v5 = *(v1 + 19), (1 << v5) & v4)
        || !sub_810971A(*(v1 + 19), v4, v5) )
    {
        *(v3 + 26) = 0;
        v8 = object_getFlag();
        if ( !(v8 & 0xA000) )
            sub_8115668(v8, 40960, v9);
        v10 = 0x8000;
        if ( v8 & 0x8000 )
        {
            v10 = 108;
            *(v1 + 108) = 0;
            v8 = 4;
            *v2 = 4;
        }
        v11 = sub_81156AC(v8, v10, v9);
        if ( v11 )
        {
            *(v3 + 22) = v11;
            *(v3 + 23) = v12;
            v13 = *(v1 + 19) ^ v12;
            *(v1 + 100) = v13;
            *(v3 + 3) = 1;
            v14 = *&byte_8115520[4 * *(v0 + 22)];
            *(v3 + 48) = v14;
            sub_81096FA(v14, byte_8115520, v13, byte_81156D0);
            *(v3 + 52) = v15;
            *(v3 + 56) = v16;
            object_setAttack0();
            sub_8109804();
            result = 1;
            *(v1 + 16) = 1;
        }
        else
        {
            result = 0;
            *(v1 + 100) = 0;
        }
    }
    else
    {
        v6 = *(v0 + 22);
        *(v3 + 12) = byte_8115556[v6];
        *(v3 + 24) = byte_8115550[v6];
        *(v3 + 48) = *&byte_8115538[4 * v6];
        object_setAttack0();
        result = 1 << *(v1 + 19);
        *(v1 + 104) = result;
    }
    return result;
}


// 0x8115654
signed int sub_8115654()
{
    int v0; // r5
    _BYTE *v1; // r6
    signed int result; // r0
    int v3; // r1

    result = 108;
    v3 = *(v0 + 108) + 1;
    *(v0 + 108) = v3;
    if ( v3 >= 60 )
    {
        result = 0;
        *v1 = 0;
    }
    return result;
}


// 0x8115668
void __fastcall __noreturn sub_8115668(int a1, int a2, int a3)
{
    sub_811567E(a1, a2, a3);
}


// 0x811567e
int __fastcall __noreturn sub_811567E(int a1, int a2, int a3)
{
    int v3; // r5
    signed int v4; // r0
    int v5; // r1
    int v6; // r0
    int v7; // ST00_4
    int v8; // r1
    int v9; // r2
    int v10; // r3
    bool v11; // zf
    int result; // r0

    v4 = *(v3 + 96);
    v5 = *(v3 + 19);
    if ( v5 != 2 )
    {
        v4 = 1;
        if ( v5 != 1 )
            v4 = -1;
    }
    *(v3 + 96) = v4;
    sub_81096FA(*(v3 + 18), v5 + v4, a3, byte_81156D0);
    v7 = v6;
    v11 = object_checkPanelParameters(v6, v8, v9, v10) == 0;
    result = v7;
    if ( v11 )
        result = 0;
    return result;
}


// 0x81156ac
int __fastcall sub_81156AC(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    sub_81096FA(*(v3 + 18), *(v3 + 19), a3, byte_81156D0);
    return sub_8015D80(v4, v5, v6, v7);
}


// 0x81157f0
int sub_81157F0()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8115804 + *v0))();
}


// 0x811581c
int sub_811581C()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r2
    int v4; // r1
    char v5; // r0
    int v6; // r0
    int v7; // r1
    int v8; // r2

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        *(v0 + 16) = 1;
        v2 = object_getFlag();
        if ( v2 & 0x2000 )
            sub_811592A(v2, 0x2000, v3);
        v4 = *(v1 + 44);
        v5 = *(v4 + 18);
        LOBYTE(v4) = *(v4 + 19);
        *(v1 + 22) = v5;
        *(v1 + 23) = v4;
    }
    v6 = *(v1 + 16) - 1;
    *(v1 + 16) = v6;
    if ( !v6 )
    {
        *(v0 + 16) = 2;
        object_setCounterTime(60);
        *(v1 + 16) = *(v1 + 18);
        PlaySoundEffect(392, v7, v8);
        *v1 = 4;
    }
    return sub_811590A();
}


// 0x8115876
int sub_8115876()
{
    int v0; // r7
    int v1; // r0
    int v2; // r1
    int v3; // r0

    v1 = *(v0 + 18) - 2;
    v2 = *(v0 + 16);
    v3 = v2 - 1;
    *(v0 + 16) = v3;
    if ( !v3 )
    {
        sub_80B87AC(*(v0 + 40), *(v0 + 8), *(v0 + 22), *(v0 + 23));
        *(v0 + 16) = 63;
        *v0 = 8;
    }
    return sub_811590A();
}


// 0x81158a4
int sub_81158A4()
{
    int v0; // r5
    _WORD *v1; // r7
    int result; // r0

    if ( v1[8] >= 60 )
        sub_811590A();
    result = v1[8] - 1;
    v1[8] = result;
    if ( !result )
    {
        *(v0 + 16) = 3;
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x81158c2
int sub_81158C2()
{
    int v0; // r5
    _WORD *v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 4;
        v1[8] = 3;
        result = 16;
        *v1 = 16;
    }
    return result;
}


// 0x81158dc
int sub_81158DC()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        sub_80B87F0(*(v1 + 40));
        *(v0 + 16) = 0;
        *(v1 + 16) = *(v1 + 24);
        if ( object_getFlag() & 0x2000 )
            *(v1 + 16) = *(v1 + 24) + 60;
        result = 20;
        *v1 = 20;
    }
    return result;
}


// 0x811590a
int sub_811590A()
{
    int v0; // r5
    unsigned __int8 *v1; // r7
    int result; // r0

    result = v1[12] + 1;
    v1[12] = result;
    if ( !(result & 4) )
        result = sub_8109660(v1[22], v1[23], 4, *(v0 + 23) ^ *(v0 + 22));
    return result;
}


// 0x811592a
void __fastcall __noreturn sub_811592A(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_8115938);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x81159b0
int __fastcall sub_81159B0(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r1
    int v7; // r6
    int result; // r0

    v5 = *(v4 + 88);
    v6 = 4 * *(v5 + 22);
    v7 = *&byte_8115980[v6];
    result = sub_80B8786(v5, v6, a3, a4);
    *(v4 + 96) = result;
    return result;
}


// 0x81159dc
int sub_81159DC()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = battle_isPaused();
    if ( v2 )
    {
        result = battle_isTimeStop();
        if ( v2 )
        {
            result = *(v0 + 100);
            if ( result )
            {
                *(v0 + 100) = --result;
                if ( result & 2 )
                    result = sprite_setColorShader(v0, 15);
            }
        }
    }
    return result;
}


// 0x8115a02
int sub_8115A02()
{
    unsigned __int8 *v0; // r6
    int result; // r0

    result = object_getFlag();
    if ( !(result & 0x8000) )
        result = (*(&off_8115A20 + *v0))();
    return result;
}


// 0x8115a2c
void __noreturn sub_8115A2C()
{
    Battle *v0; // r5
    char *v1; // r6
    int v2; // r7
    int v3; // r0
    int v4; // r0
    void (__noreturn *v5)(); // r1
    char v6; // r3

    v3 = object_getFrontDirection(v0);
    v4 = object_getPanelParameters(v3 + v0->panelX, v0->panelY);
    v5 = GameEntryPoint;
    if ( v0->Alliance )
        v5 = &LCDControl;
    v6 = 4;
    if ( v4 & v5 )
        v6 = 8;
    *v1 = v6;
    *(v2 + 16) = 240;
    object_setAttack0();
}


// 0x8115a5c
signed int sub_8115A5C()
{
    int v0; // r4
    _BYTE *v1; // r6
    int v2; // r7
    int v3; // r1
    int (__noreturn *v4)(); // r0
    signed int result; // r0

    v3 = *(v0 + 22);
    if ( *(v0 + 22) )
    {
        *(v2 + 24) = byte_8115998[v3];
        *(v2 + 3) = 2;
        *(v2 + 12) = 18;
        *(v2 + 13) = 19;
        v4 = sub_8115AD0;
        if ( !v3 )
            v4 = sub_8015C48;
        *(v2 + 40) = v4;
        *(v2 + 48) = 3;
        *(v2 + 52) = 3;
        object_setAttack0();
        sub_8109952();
    }
    result = 8;
    *v1 = 8;
    return result;
}


// 0x8115a96
signed int sub_8115A96()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int v4; // r1
    signed int result; // r0

    v4 = *(v0 + 22);
    *(v3 + 16) = byte_811599E[v4];
    *(v3 + 18) = byte_81159A4[v4];
    *(v3 + 24) = byte_81159AA[v4];
    *(v3 + 8) = *&byte_8115980[4 * v4];
    *(v3 + 40) = *(v1 + 96);
    *(v3 + 44) = sub_80103F8(*(v1 + 22) ^ 1);
    object_setAttack0();
    result = 4;
    *v2 = 4;
    return result;
}


// 0x8115ad0
int sub_8115AD0()
{
    Battle *v0; // r5
    _DWORD *v1; // r7
    int v2; // r6
    int v3; // r2
    int v4; // r4
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    int v9; // r3
    int result; // r0
    int v11; // r3
    unsigned __int8 *v12; // r4
    int v13; // r6
    unsigned __int8 *v14; // r2
    char v19; // [sp-8h] [bp-34h]
    char v20; // [sp-4h] [bp-30h]
    int v21; // [sp-4h] [bp-30h]
    int v22; // [sp+0h] [bp-2Ch]
    int v23; // [sp+10h] [bp-1Ch]
    int v24; // [sp+14h] [bp-18h]
    unsigned __int8 v25; // [sp+18h] [bp-14h]

    v2 = object_getEnemyByNameRange(v1, 1, 174, v0->Alliance);
    if ( !v2 )
        goto LABEL_23;
    v4 = object_getFrontDirection(v0);
    v24 = 0;
    v23 = 0xFFFF;
    do
    {
        if ( *v1 != v0 )
        {
            sub_81096FA(*(*v1 + 18) + v4, *(*v1 + 19), v3, byte_8115BA0);
            v19 = v5;
            v20 = v6;
            if ( object_checkPanelParameters(v5, v6, v7, v8) )
            {
                v3 = *(*v1 + 36);
                if ( v3 <= v23 )
                {
                    if ( v3 != v23 )
                    {
                        v23 = *(*v1 + 36);
                        v24 = 0;
                    }
                    v9 = v24;
                    v3 = v24++ + 1;
                    *(&v22 + v9 + 24) = v19 | 16 * v20;
                }
            }
        }
        ++v1;
        --v2;
    }
    while ( v2 );
    if ( v24 < 1 )
LABEL_23:
        sub_8015C48();
    if ( v24 > 1 || (result = (v0->panelX | 16 * v0->panelY) - v25, (v0->panelX | 16 * v0->panelY) != v25) )
    {
        v11 = v24;
        v12 = &v25;
        v13 = v0->panelX | 16 * v0->panelY;
        do
        {
            if ( *v12 == v13 )
            {
                --v24;
                v14 = v12;
                v21 = v11;
                do
                {
                    *v14 = v14[1];
                    ++v14;
                    --v11;
                }
                while ( v11 );
                v11 = v21;
                --v12;
            }
            ++v12;
            --v11;
        }
        while ( v11 );
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v25 + v24) & 7;
    }
    return result;
}


// 0x8115bb0
signed int sub_8115BB0()
{
    int v0; // r5
    signed int result; // r0

    result = 24;
    *(v0 + 100) = 24;
    return result;
}


// 0x8115cd8
int sub_8115CD8()
{
    unsigned __int8 *v0; // r7

    return (*(&off_8115CEC + *v0))();
}


// 0x8115cf8
int sub_8115CF8()
{
    Battle *v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r0

    if ( !*(v1 + 1) )
    {
        result = *(v1 + 18) - 1;
        *(v1 + 18) = result;
        if ( result )
            return result;
        *(v1 + 1) = 1;
    }
    v3 = *(v1 + 16) - 1;
    *(v1 + 16) = v3;
    if ( v3 )
    {
        result = *(v1 + 16);
        if ( !(result & 4) )
        {
            v6 = object_getFrontDirection(v0);
            result = sub_8109660(v6 + v0->panelX, v0->panelY, 4, v0->Alliance ^ v0->directionFlip);
        }
    }
    else
    {
        object_setCounterTime(16);
        v0->currAnimation = 2;
        sub_8115D76();
        sub_8115DA4();
        PlaySoundEffect(266, v4, v5);
        *v1 = 4;
        result = 0;
        *(v1 + 1) = 0;
    }
    return result;
}


// 0x8115d58
int sub_8115D58()
{
    int v0; // r5
    _WORD *v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 100) = 0;
        v1[8] = v1[12];
        *(v0 + 16) = 4;
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x8115d76
int sub_8115D76()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r6
    char v3; // r0

    v2 = *(v1 + 8) | (*(v1 + 10) << 16);
    v3 = object_getFrontDirection(v0);
    return object_spawnCollisionRegion(v3 + v0->panelX, v0->panelY, *(v1 + 2), 0);
}


// 0x8115da4
void sub_8115DA4()
{
    Battle *v0; // r5
    int v1; // ST00_4
    char v2; // r0
    int v3; // r1
    int v4; // r0
    int v5; // r1

    v1 = (v0->Alliance ^ v0->directionFlip) << 8;
    v2 = object_getFrontDirection(v0);
    v3 = v0->panelY;
    v4 = object_getCoordinatesForPanels(v2 + v0->panelX);
    SpawnT4BattleObjectWithId0(v0, v1, v4, v5, 0);
}


// 0x8115e4c
int sub_8115E4C()
{
    unsigned __int8 *v0; // r6

    return (*(&off_8115E60 + *v0))();
}


// 0x8115e6c
int sub_8115E6C()
{
    int v0; // r5

    return (*(&off_8115E84 + *(v0 + 96)))();
}


// 0x8115e94
signed int sub_8115E94()
{
    int v0; // r5
    int v1; // r2
    signed int result; // r0
    int v3; // r1

    object_clearCollisionRegion();
    result = 107;
    v3 = *(v0 + 107) + 1;
    *(v0 + 107) = v3;
    if ( v3 == 60 )
    {
        *(v0 + 107) = 0;
        *(v0 + 16) = 5;
        PlaySoundEffect(323, 0, v1);
        result = 4;
        *(v0 + 96) = 4;
    }
    return result;
}


// 0x8115ebc
int sub_8115EBC()
{
    int v0; // r5
    int result; // r0

    object_clearCollisionRegion();
    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 4;
        object_setCollisionRegion(1);
        result = 8;
        *(v0 + 96) = 8;
    }
    return result;
}


// 0x8115edc
signed int sub_8115EDC()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r1

    result = 107;
    v2 = *(v0 + 107) + 1;
    *(v0 + 107) = v2;
    if ( v2 == 60 )
    {
        *(v0 + 107) = 0;
        result = 12;
        *(v0 + 96) = 12;
    }
    return result;
}


// 0x8115ef4
AI *sub_8115EF4()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r1

    if ( object_getFlag() & 0xA000 )
    {
        *(v1 + 107) = 0;
LABEL_5:
        *v2 = 8;
        return sub_800F2C6();
    }
    v3 = *(v1 + 107) + 1;
    *(v1 + 107) = v3;
    if ( v3 <= byte_8115E34[*(v0 + 22)] )
        goto LABEL_5;
    *(v1 + 107) = 0;
    *v2 = 4;
    return sub_800F2C6();
}


// 0x8115f2e
int sub_8115F2E()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int v4; // r1
    int result; // r0

    if ( !sub_8109630(100, 169, 174) )
    {
        v4 = *(v0 + 22);
        *(v3 + 24) = byte_8115E44[v4];
        *(v3 + 8) = byte_8115E14[v4];
        *(v3 + 10) = byte_8115E1C[v4];
        *(v3 + 16) = byte_8115E3C[v4];
        *(v3 + 18) = 16;
        *(v1 + 16) = 1;
        *(v1 + 100) = 1;
        object_setAttack0();
        *(v3 + 1) = 0;
    }
    result = 0;
    *v2 = 0;
    return result;
}


// 0x8115f74
int sub_8115F74()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int v4; // r0
    __int16 v5; // r3
    int v6; // r0
    int result; // r0

    *(v1 + 16) = 4;
    *(v3 + 40) = sub_8115FCE;
    *(v3 + 44) = sub_80103F8(*(v1 + 22) ^ 1);
    v4 = byte_8115E2C[*(v0 + 22)];
    if ( object_getFlag() & 0xA000 )
        v5 += 60;
    *(v3 + 24) = v5;
    *(v3 + 3) = 2;
    *(v3 + 12) = 20;
    *(v3 + 13) = 21;
    v6 = byte_8115E24[*(v0 + 22)];
    *(v3 + 48) = v6;
    *(v3 + 52) = v6;
    object_setAttack0();
    sub_8109974();
    result = 0;
    *v2 = 0;
    return result;
}


// 0x8115fce
__int64 __noreturn sub_8115FCE()
{
    unsigned __int8 *v0; // r5
    int v1; // r0
    int v2; // r2
    int v3; // r0
    int v4; // r1
    __int64 v5; // r0
    __int64 v6; // ST00_8

    object_reservePanel(v0[18], v0[19]);
    v1 = object_getFlag();
    if ( v1 & 0xA000 )
        sub_81160B0(v1, 40960, v2);
    v3 = sub_8116044();
    if ( v3 || (v3 = sub_811606A()) != 0 )
    {
        sub_81161B0(v3, v4);
        sub_8116210();
        v0[105] = v5;
        v0[106] = BYTE4(v5);
    }
    else
    {
        LODWORD(v5) = sub_8116090();
        if ( !v5 )
        {
            LODWORD(v5) = v0[105];
            HIDWORD(v5) = v0[106];
        }
    }
    v6 = v5;
    object_removePanelReserve(v0[18], v0[19]);
    return v6;
}


// 0x8116044
int sub_8116044()
{
    int v0; // r5
    int v1; // r0
    char (*v2)[16]; // r4
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    v1 = sub_80103F8(*(v0 + 22) ^ 1);
    v2 = off_81160C4[*(v0 + 104)];
    sub_81096FA(*(v1 + 18), *(v1 + 19), v3, byte_8116190);
    return sub_8015D80(v4, v5, v6, v7);
}


// 0x811606a
int sub_811606A()
{
    int v0; // r5
    int v1; // r0
    char (*v2)[16]; // r4
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    v1 = sub_80103F8(*(v0 + 22) ^ 1);
    v2 = off_81160E0[*(v0 + 104)];
    sub_81096FA(*(v1 + 18), *(v1 + 19), v3, byte_8116190);
    return sub_8015D80(v4, v5, v6, v7);
}


// 0x8116090
int sub_8116090()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    v1 = sub_80103F8(*(v0 + 22) ^ 1);
    sub_81096FA(*(v1 + 18), *(v1 + 19), v2, byte_8116190);
    return sub_8015D80(v3, v4, v5, v6);
}


// 0x81160b0
void __fastcall __noreturn sub_81160B0(int a1, int a2, int a3)
{
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3

    sub_81096FA(a1, a2, a3, byte_81161A0);
    sub_8015C94(v3, v4, v5, v6);
}


// 0x81161b0
void __fastcall sub_81161B0(int a1, int a2)
{
    int v2; // r5
    int v3; // ST00_4
    int v4; // ST04_4
    int v5; // r0
    int v6; // ST00_4
    int v7; // ST04_4
    int v8; // r0

    v3 = a1;
    v4 = a2;
    v5 = sub_80103F8(*(v2 + 22) ^ 1);
    v6 = v3 - *(v5 + 18);
    v7 = v4 - *(v5 + 19);
    v8 = v6 * object_getEnemyDirection();
    if ( v7 )
        *(v2 + 23) = v8 >= 1;
    else
        *(v2 + 23) = v8 >= 1;
}


// 0x8116210
void sub_8116210()
{
    unsigned __int8 *v0; // r5
    int v1; // ST00_4
    int v2; // r0
    int v3; // r3
    int v4; // r0
    int v5; // r1

    v1 = object_getEnemyDirection();
    v2 = sub_80103F8(v0[22] ^ 1);
    v3 = *(v2 + 19);
    v4 = (v0[18] - *(v2 + 18)) * v1;
    v5 = v0[19] - v3;
    if ( v0[19] == v3 )
    {
        if ( v4 >= 1 )
            v0[104] = 5;
        else
            v0[104] = 4;
    }
    else if ( v4 >= 1 )
    {
        if ( v5 >= 1 )
            v0[104] = 3;
        else
            v0[104] = 1;
    }
    else if ( v5 >= 1 )
    {
        v0[104] = 2;
    }
    else
    {
        v0[104] = 0;
    }
}


// 0x811627a
int sub_811627A()
{
    int v0; // r5
    char v1; // r0
    char v2; // r1

    *(v0 + 100) = 0;
    GetRNG2();
    *(v0 + 104) = v1 & 3;
    v2 = *(v0 + 19);
    *(v0 + 105) = *(v0 + 18);
    *(v0 + 106) = v2;
    *(v0 + 107) = 0;
    *(v0 + 96) = 0;
    return object_setFlag1(64);
}


// 0x81162aa
void sub_81162AA()
{
    ;
}


// 0x81162ae
int sub_81162AE()
{
    sub_80165B8();
    object_setFlag1(0x800000);
    return object_clearCollisionRegion();
}


// 0x8116414
int sub_8116414()
{
    int v0; // r5
    int result; // r0

    object_clearCollisionRegion();
    *(v0 + 18) = 7;
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    *(v0 + 96) = 0;
    *(v0 + 98) = 0;
    *(v0 + 98) = *&byte_811645C[2 * *(*(v0 + 88) + 22)];
    __asm { SVC         6 }
    *(v0 + 102) = 0x4000;
    result = *&byte_8116468[2 * *(*(v0 + 88) + 22)];
    *(v0 + 100) = result;
    return result;
}


// 0x8116470
unsigned int sub_8116470()
{
    int v0; // r5
    unsigned int v1; // r0
    unsigned __int8 v2; // cf
    unsigned int result; // r0

    *v0 &= 0xFDu;
    v1 = sub_800139A();
    v2 = __CFSHR__(v1, 2);
    result = v1 >> 2;
    if ( v2 )
    {
        *(v0 + 9) = 1;
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x811648c
signed int sub_811648C()
{
    int v0; // r5
    signed int result; // r0

    sub_800A11C();
    sub_80077B4(v0);
    result = 8;
    *(v0 + 8) = 8;
    return result;
}


// 0x811649e
signed int sub_811649E()
{
    int v0; // r5
    int v1; // r0

    if ( !battle_isBattleOver() )
    {
        v1 = sub_80103F8(*(v0 + 22) ^ 1);
        if ( v1 )
        {
            if ( *(v1 + 36) )
                (*(&off_81164E8 + *(*(v0 + 88) + 128)))();
        }
    }
    *v0 &= 0xFDu;
    return sub_801DFA2(*(v0 + 96) * *(v0 + 102));
}


// 0x81164ec
int sub_81164EC()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    if ( !*(v1 + 2) )
    {
        *(v1 + 2) = 1;
        *(v1 + 8) = *(v0 + 100);
        sub_8116510();
    }
    result = *(v1 + 8) - 1;
    *(v1 + 8) = result;
    if ( !result )
    {
        result = 0;
        *(v1 + 2) = 0;
    }
    return result;
}


// 0x8116510
int sub_8116510()
{
    int v0; // r4
    int v1; // r5
    int result; // r0
    int v3; // ST04_4
    char (*v4)[16]; // ST00_4
    char v5; // r0
    int v6; // ST00_4
    char v7; // r0

    result = sub_80103F8(*(v1 + 22) ^ 1);
    if ( result )
    {
        v3 = result;
        v4 = off_8116554[*(v0 + 22)];
        GetPositiveSignedRNG2();
        v6 = (*v4)[v5 & 0xF];
        GetPositiveSignedRNG2();
        result = sub_80DFAD6(v6, *(sub_8116594 + (v7 & 0xF)), v3);
    }
    return result;
}


// 0x8116594
signed int sub_8116594()
{
    _WORD *v0; // r5
    signed int result; // r0

    result = v0[48];
    if ( v0[49] <= result )
    {
        result = 0;
        v0[18] = 0;
    }
    return result;
}


// 0x81166d4
signed int sub_81166D4()
{
    int v0; // r5
    __int16 v1; // t1
    signed int result; // r0

    object_clearCollisionRegion();
    *(v0 + 18) = 7;
    object_setCoordinatesFromPanels(v0);
    object_updateCollisionPanels(v0);
    v1 = *(v0 + 38);
    result = 0x4000;
    __asm { SVC         6 }
    *(v0 + 128) = 0x4000;
    return result;
}


// 0x81166f2
unsigned int sub_81166F2()
{
    int v0; // r5
    unsigned int v1; // r0
    unsigned __int8 v2; // cf
    unsigned int result; // r0

    *v0 &= 0xFDu;
    v1 = sub_800139A();
    v2 = __CFSHR__(v1, 2);
    result = v1 >> 2;
    if ( v2 )
    {
        *(v0 + 9) = 1;
        result = 0;
        *(v0 + 10) = 0;
    }
    return result;
}


// 0x811670e
signed int sub_811670E()
{
    int v0; // r5
    signed int result; // r0

    sub_800A11C();
    sub_80077B4(v0);
    result = 8;
    *(v0 + 8) = 8;
    return result;
}


// 0x8116720
signed int sub_8116720()
{
    int v0; // r5

    (*(&off_8116754 + *(*(v0 + 88) + 128)))();
    *v0 &= 0xFDu;
    return sub_801DFA2((*(v0 + 38) - *(v0 + 36)) * *(v0 + 128));
}


// 0x8116758
int sub_8116758()
{
    int v0; // r6
    int result; // r0

    if ( !*(v0 + 2) )
    {
        *(v0 + 2) = 1;
        *(v0 + 8) = 30;
        sub_811677A();
    }
    result = *(v0 + 8) - 1;
    *(v0 + 8) = result;
    if ( !result )
    {
        result = 0;
        *(v0 + 2) = 0;
    }
    return result;
}


// 0x811677a
_DWORD *sub_811677A()
{
    int v0; // r5
    _DWORD *result; // r0
    signed int v2; // r3
    int v3; // r0
    int v4; // r1
    int v5; // r4
    int v6; // r6

    result = (v0 + 96);
    v2 = 8;
    do
    {
        if ( !*result )
        {
            v3 = sub_81167D2();
            v5 = (byte_81167C8[v3] << 8) | v3;
            v6 = byte_81167CD[v3];
            sub_8015C94(v3, v4, 0x10000, 260571264);
        }
        ++result;
        --v2;
    }
    while ( v2 );
    return result;
}


// 0x81167d2
int sub_81167D2()
{
    int v0; // r5
    int result; // r0
    char v2; // r0

    result = sub_8116834();
    if ( result != 4 )
    {
        GetPositiveSignedRNG2();
        result = byte_81167F4[16 * *(v0 + 4) + (v2 & 0xF)];
    }
    return result;
}


// 0x8116834
signed int sub_8116834()
{
    int v0; // r5
    signed int v1; // r7
    int *v2; // r0
    signed int v3; // r3
    signed int v4; // r4
    signed int v5; // r6
    int v6; // r1
    char v7; // r0

    v1 = 0;
    v2 = (v0 + 96);
    v3 = 8;
    v4 = 0;
    v5 = 0;
    do
    {
        v6 = *v2;
        if ( *v2 )
        {
            ++v4;
            if ( *(v6 + 4) == 4 )
                return v1;
            if ( *(v6 + 6) >= 1 )
                ++v5;
        }
        ++v2;
        --v3;
    }
    while ( v3 );
    if ( v4 >= 5 && v5 >= 3 )
    {
        GetPositiveSignedRNG2();
        if ( (v7 & 7) == 4 )
            v1 = 4;
    }
    return v1;
}


// 0x8116878
int __fastcall sub_8116878(int result)
{
    int v1; // r1

    v1 = *(result + 36);
    if ( v1 > 0 )
        *(result + 36) = v1 - 1;
    return result;
}


// 0x8116894
int sub_8116894()
{
    int v0; // r5

    return (*(&off_81168A8 + *(v0 + 8)))();
}


// 0x81168b4
void __fastcall __noreturn sub_81168B4(int a1, int a2)
{
    Battle *v2; // r5

    v2->objFlags = 35;
    initGuiSprite_8002770(62, a2);
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(0);
    sprite_setPallete(0);
    sub_8002E14(3);
    sub_800306C(&dword_390);
    sub_8003060(0);
    v2->currState = 4;
    sprite_setCoordinates(200, 7);
    sub_8116904();
}


// 0x8116904
void __noreturn sub_8116904()
{
    Battle *v0; // [sp+0h] [bp-8h]

    reqBBS_813EE58();
    sprite_update(v0);
}


// 0x811691c
int sub_811691C()
{
    return sub_804668A();
}


// 0x8116924
int sub_8116924()
{
    int v0; // r5

    return (*(&off_8116938 + *(v0 + 8)))();
}


// 0x8116944
void __fastcall __noreturn sub_8116944(int a1, int a2)
{
    int v2; // r5
    char v3; // r0
    char v4; // r1

    initGuiSprite_8002770(1, a2);
    sprite_setAnimation(v2, *(v2 + 4));
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(12);
    sprite_setPallete(0);
    sub_8002E14(0);
    sub_800306C(724);
    sub_8003060(0);
    *(v2 + 8) = 4;
    v3 = 0;
    v4 = 1;
    if ( *(v2 + 5) )
    {
        v3 = 8;
        v4 = 35;
    }
    *(v2 + 9) = v3;
    *v2 = v4;
    sprite_setCoordinates(176, 64);
    *(v2 + 4) = -1;
    *(v2 + 12) = 6;
    sub_81169B0();
}


// 0x81169b0
void sub_81169B0()
{
    Battle *v0; // r5

    (*(&off_81169CC + v0->currAction))();
    sprite_update(v0);
}


// 0x81169d8
int sub_81169D8()
{
    Battle *v0; // r5
    int v1; // r7
    int result; // r0

    result = 16;
    if ( !*(v1 + 16) )
    {
        result = v0->pad_0C[0] - 1;
        v0->pad_0C[0] = result;
        if ( !result )
        {
            v0->currAction = 4;
            v0->objFlags = 35;
            sprite_setAnimation(v0, 1u);
            sprite_loadAnimationData(v0);
            result = sprite_noShadow(v0);
        }
    }
    return result;
}


// 0x8116a04
int sub_8116A04()
{
    Battle *v0; // r5
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0xC0 )
    {
        sprite_setAnimation(v0, 0);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        sub_8116A44();
    }
    return result;
}


// 0x8116a28
void __noreturn sub_8116A28()
{
    int v0; // r5
    _BYTE *v1; // r7

    if ( *v1 == 8 )
        *(v0 + 8) = 8;
    sub_8116A44();
}


// 0x8116a3c
int sub_8116A3C()
{
    return sub_804668A();
}


// 0x8116a44
signed int __noreturn sub_8116A44()
{
    signed int *v0; // r7
    signed int v1; // r6
    signed int *v2; // r7
    signed int v3; // r6
    signed int *v4; // r7
    signed int v5; // r6
    signed int result; // r0

    v0 = &dword_8116A94;
    v1 = 0;
    do
    {
        sub_802FE28(*v0, *(dword_4 + v0), 0, 1);
        v0 += 2;
        ++v1;
    }
    while ( v1 < 3 );
    v2 = &dword_8116AB0;
    v3 = 0;
    do
    {
        sub_802FE28(*v2, *(dword_4 + v2), 0, 1);
        v2 += 2;
        ++v3;
    }
    while ( v3 < 3 );
    v4 = &dword_8116ACC;
    v5 = 0;
    do
    {
        result = sub_802FE28(*v4, *(dword_4 + v4), 0, 1);
        v4 += 2;
        ++v5;
    }
    while ( v5 < 2 );
    return result;
}


// 0x8116adc
int sub_8116ADC()
{
    int v0; // r5

    return (*(&off_8116AF0 + *(v0 + 8)))();
}


// 0x8116b00
void __noreturn sub_8116B00()
{
    int v0; // r5
    int v1; // r7
    char v2; // r0
    int v3; // r4
    __int16 v4; // r1
    int v5; // r0

    v2 = 35;
    if ( *(v0 + 4) )
        v2 = 67;
    *v0 = v2;
    (loc_8002774)(0);
    v3 = *(v0 + 4);
    if ( v3 == 3 && getPETNaviSelect() )
        LOBYTE(v3) = 8;
    sprite_setAnimation(v0, v3);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(13);
    sprite_setPallete(1);
    sub_8002E14(0);
    sub_800306C(dword_350);
    sub_8003060(0);
    *(v0 + 8) = 4;
    *(v0 + 9) = 0;
    v4 = 32;
    if ( *(v0 + 5) && (v4 = byte_8116BEC[2 * *(v0 + 4)], *(v1 + 4) == *(v0 + 4)) )
        v5 = 30;
    else
        v5 = 22;
    sprite_setCoordinates(v5, v4);
    *(v0 + 13) = 1;
    *(v0 + 12) = 0;
    sub_8116B9C();
}


// 0x8116b9c
void __noreturn sub_8116B9C()
{
    Battle *v0; // r5

    (*(&off_8116BB4 + v0->currAction))();
    sprite_update(v0);
}


// 0x8116bc0
int sub_8116BC0()
{
    int v0; // r5
    int result; // r0
    int v2; // r2
    signed int v3; // r1

    sprite_addCoordinates(0, 8);
    result = sprite_getCoordinates();
    v2 = 2 * *(v0 + 4);
    if ( *&byte_8116BEC[v2] <= v3 )
    {
        sprite_setCoordinates(result, *&byte_8116BEC[v2]);
        result = 4;
        *(v0 + 9) = 4;
    }
    return result;
}


// 0x8116bfc
signed int sub_8116BFC()
{
    int v0; // r5
    unsigned __int8 *v1; // r7
    signed int result; // r0

    sub_8116C40();
    sub_8116C78();
    result = *v1;
    if ( result == 8 )
    {
        result = 8;
        *(v0 + 9) = 8;
    }
    return result;
}


// 0x8116c14
int sub_8116C14()
{
    int v0; // r7
    int result; // r0

    sprite_addCoordinates(8 * *(v0 + 16), 0);
    result = sprite_getCoordinates();
    if ( result < 0 )
        result = sub_804668A();
    return result;
}


// 0x8116c38
int sub_8116C38()
{
    return sub_804668A();
}


// 0x8116c40
int sub_8116C40()
{
    int v0; // r5
    int v1; // r7
    unsigned int v2; // r4
    int result; // r0
    signed int v4; // r1
    signed int v5; // r3
    int v6; // r2

    v2 = sub_8116CD4();
    result = 22;
    v4 = -2;
    v5 = 0;
    if ( *(v1 + 4) == *(v0 + 4) )
    {
        result = 30;
        v4 = 2;
        v5 = 1;
    }
    v6 = *(v2 + 12) + v4;
    if ( v5 )
    {
        if ( v6 < result )
            goto LABEL_7;
    }
    else if ( v6 > result )
    {
LABEL_7:
        result = *(v2 + 12) + v4;
        goto LABEL_8;
    }
LABEL_8:
    *(v2 + 12) = result;
    return result;
}


// 0x8116c78
void sub_8116C78()
{
    _BYTE *v0; // r5
    int v1; // r7
    int v2; // r4
    int v3; // r6
    signed int v4; // r2
    int v5; // r1
    int v6; // r1
    int v7; // r2
    unsigned __int8 v8; // vf
    int v9; // r1

    v2 = 1;
    v3 = 13;
    v4 = 0;
    if ( *(v1 + 4) == v0[4] )
    {
        v2 = 0;
        v3 = 12;
        v4 = 1;
    }
    *v0 &= 0xBFu;
    if ( v4 )
    {
        v5 = 4 * v0[12];
        v3 = byte_8116CCC[v5];
        v6 = v5 + 1;
        v2 = byte_8116CCC[v6];
        v7 = v0[13];
        v8 = __OFSUB__(v7--, 1);
        v0[13] = v7;
        if ( (v7 < 0) ^ v8 )
        {
            v9 = v6 + 1;
            v0[12] = byte_8116CCC[v9];
            v0[13] = byte_8116CCC[v9 + 1];
        }
    }
    sub_800304A(v3);
    sprite_setPallete(v2);
}


// 0x8116cd4
unsigned int sub_8116CD4()
{
    int v0; // r5

    return 16 * (*(v0 + 2) >> 4) + v0;
}


// 0x8116ce0
int sub_8116CE0()
{
    int v0; // r5

    return (*(&off_8116CF4 + *(v0 + 8)))();
}


// 0x8116d00
void __fastcall __noreturn sub_8116D00(int a1, int a2)
{
    int v2; // r5
    u8 v3; // r0
    int *v4; // r0
    char v5; // r2

    *v2 = 35;
    initGuiSprite_8002770(2, a2);
    v3 = *(v2 + 4);
    *(v2 + 12) = v3;
    *(v2 + 13) = v3;
    sprite_setAnimation(v2, v3);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(12);
    sprite_setPallete(0);
    sub_8002E14(0);
    sub_800306C(907);
    sub_8003060(0);
    *(v2 + 8) = 4;
    v4 = (byte_119 + 1);
    v5 = 0;
    if ( *(v2 + 5) )
    {
        v4 = &dword_AA;
        v5 = 4;
    }
    *(v2 + 9) = v5;
    sprite_setCoordinates(v4, 151);
    sub_8116D6C();
}


// 0x8116d6c
void __noreturn sub_8116D6C()
{
    Battle *v0; // r5

    (*(&off_8116D84 + v0->currAction))();
    sprite_update(v0);
}


// 0x8116d90
int sub_8116D90()
{
    int v0; // r5
    int result; // r0
    __int16 v2; // r1

    sprite_addCoordinates(-16, 0);
    result = sprite_getCoordinates();
    if ( result <= 170 )
    {
        sprite_setCoordinates(170, v2);
        result = 4;
        *(v0 + 9) = 4;
    }
    return result;
}


// 0x8116db4
void __noreturn sub_8116DB4()
{
    Battle *v0; // r5
    signed int v1; // r0

    v1 = 0;
    if ( byte_200DF24 == 8 )
        v1 = 1;
    v0->pad_0C[0] = v1;
    if ( v1 != v0->unk_0D )
    {
        v0->unk_0D = v1;
        sprite_setAnimation(v0, v1);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
    }
    sprite_update(v0);
    if ( ePETMenuData == 8 )
        v0->currAction = 8;
}


// 0x8116dec
int sub_8116DEC()
{
    int v0; // r5
    int result; // r0

    result = sprite_addCoordinates(22, 0);
    if ( result >= 282 )
    {
        result = 8;
        *(v0 + 8) = 8;
    }
    return result;
}


// 0x8116e08
int sub_8116E08()
{
    return sub_804668A();
}


// 0x8116e10
int sub_8116E10()
{
    int v0; // r5

    return (*(&off_8116E24 + *(v0 + 8)))();
}


// 0x8116e30
void __noreturn sub_8116E30()
{
    int v0; // r5
    char v1; // r0
    int v2; // r4

    v1 = 35;
    v2 = *(v0 + 4);
    if ( *(v0 + 4) )
        v1 = -93;
    *v0 = v1;
    initGuiSprite_8002770(6, *(&off_8116F0C + *(v0 + 5)));
    sprite_setAnimation(v0, byte_8116F18[v2]);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(byte_8116F1D[v2]);
    sub_8002E14((*off_8116EB8[*(v0 + 5)])[v2]);
    sub_800306C(off_8116EC8[*(v0 + 5)][v2]);
    sub_800304A((*off_8116EEC[*(v0 + 5)])[v2]);
    sub_8003060((*off_8116EFC[*(v0 + 5)])[v2]);
    *(v0 + 8) = 4;
    sub_8116F34();
}


// 0x8116f34
void __noreturn sub_8116F34()
{
    int v0; // r5

    (*(&jt_8116F4C + *(v0 + 4)))();
    sprite_update(v0);
}


// 0x8116f60
void __noreturn sub_8116F60()
{
    int v0; // r5
    u8 v1; // r0

    v1 = 0;
    if ( !*(v0 + 14) )
        v1 = 1;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    if ( *(v0 + 4) != 3 && !*(v0 + 5) )
        sub_81170AC();
}


// 0x8116f8c
int sub_8116F8C()
{
    int v0; // r5

    sub_81170AC();
    return sub_81170C0(*(v0 + 12));
}


// 0x8116f9c
signed int sub_8116F9C()
{
    int v0; // r5
    char v1; // r0
    signed int result; // r0

    v1 = -93;
    if ( !*(v0 + 14) )
        v1 = 1;
    *v0 = v1;
    sub_81170AC();
    sub_81170C0(*(v0 + 14));
    result = sSubmenu.unk_00;
    if ( sSubmenu.unk_00 == 24 || sSubmenu.unk_00 == 8 )
    {
        result = sprite_getCoordinates();
        if ( result < 56 )
        {
            result = 1;
            *v0 = 1;
        }
    }
    return result;
}


// 0x8116fd4
int sub_8116FD4()
{
    return sub_804668A();
}


// 0x8116fdc
int __fastcall sub_8116FDC(signed int a1, __int16 a2, int a3)
{
    int v3; // r4
    int v4; // r7
    int v5; // r1
    char v6; // zf
    _BYTE *v7; // r5
    signed int v8; // r6
    int result; // r0
    signed int v10; // [sp+0h] [bp-24h]
    __int16 v11; // [sp+4h] [bp-20h]
    int v12; // [sp+8h] [bp-1Ch]
    int v13; // [sp+Ch] [bp-18h]

    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = 0;
    v3 = a3;
    v4 = a3 + 3;
    do
    {
        getStructFrom2008450(v3);
        if ( !v6 )
        {
            v7 = v5;
            v8 = *&byte_8117060[8 * v13];
            if ( v12 != v3 && !*(v5 + 14) )
            {
                v8 = -3;
                if ( *(v5 + 12) < 10 )
                    v8 = -7;
            }
            sprite_setCoordinates(v10 + v8, v11 + *&byte_8117060[8 * v13 + 4]);
            if ( v10 >= 56 || sSubmenu.unk_00 != 24 && sSubmenu.unk_00 != 8 )
                *v7 |= 2u;
            else
                *v7 &= 0xFDu;
        }
        result = v13++ + 1;
        ++v3;
    }
    while ( v3 < v4 );
    return result;
}


// 0x8117084
int __fastcall sub_8117084(__int16 a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r6
    int result; // r0
    int v6; // r1
    char v7; // zf
    __int16 v8; // [sp+0h] [bp-1Ch]
    int v9; // [sp+4h] [bp-18h]

    v8 = a1;
    v9 = a2;
    v3 = a3;
    v4 = a3 + 3;
    do
    {
        result = getStructFrom2008450(v3);
        if ( v7 )
            break;
        *(v6 + 12) = v8;
        result = v9;
        *(v6 + 14) = v9;
        ++v3;
    }
    while ( v3 < v4 );
    return result;
}


// 0x81170ac
void sub_81170AC()
{
    int v0; // r5
    int v1; // r0

    v1 = 1;
    if ( *(v0 + 12) == *(v0 + 14) )
        v1 = 0;
    sprite_setPallete(v1);
}


// 0x81170c0
int __fastcall sub_81170C0(char a1)
{
    __asm
    {
        SVC         6
        SVC         6
    }
    return sprite_setUnk0x2c(~(0x80000000 >> a1) & 0x7FFFFE00);
}


// 0x8117110
int sub_8117110()
{
    int v0; // r5

    return (*(&off_8117124 + *(v0 + 8)))();
}


// 0x8117130
void __noreturn sub_8117130()
{
    int v0; // r5
    char v1; // r0
    int v2; // r0

    v1 = 35;
    if ( !(*(v0 + 6) & 2) )
        v1 = 1;
    *v0 = v1;
    initGuiSprite_8002770(11, *(&off_81171AC + *(v0 + 5)));
    sprite_setAnimation(v0, *(v0 + 4));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(off_8117198[*(v0 + 4)]);
    v2 = 10;
    if ( *(v0 + 4) >= 2 )
        v2 = 4;
    sub_800304A(v2);
    sub_8003060(3);
    *(v0 + 8) = 4;
    sub_81171B4();
}


// 0x81171b4
void __noreturn sub_81171B4()
{
    int v0; // r5
    char v1; // r0

    v1 = 35;
    if ( !(*(v0 + 6) & 2) )
        v1 = 1;
    *v0 = v1;
    sprite_update(v0);
}


// 0x81171cc
int sub_81171CC()
{
    return sub_804668A();
}


// 0x81171d4
int __fastcall sub_81171D4(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-1Ch]
    __int16 v6; // [sp+4h] [bp-18h]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x81171f4
int __fastcall sub_81171F4(int a1, int a2)
{
    int result; // r0
    int v3; // r1
    char v4; // zf
    char v5; // r2
    char v6; // r2
    int v7; // [sp+0h] [bp-1Ch]

    v7 = a1;
    result = getStructFrom2008450(a2);
    if ( !v4 )
    {
        v5 = *(v3 + 6);
        result = v7;
        if ( v7 )
            v6 = v5 & 0xFD;
        else
            v6 = v5 | 2;
        *(v3 + 6) = v6;
    }
    return result;
}


// 0x8117218
int sub_8117218()
{
    int v0; // r5

    return (*(&off_811722C + *(v0 + 8)))();
}


// 0x8117238
void __noreturn sub_8117238()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    (loc_8002774)(24);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(8);
    sub_800306C(&dword_380);
    sub_8002E14(2);
    sprite_setCoordinates(0, 0);
    v0->currState = 4;
    sub_811727C();
}


// 0x811727c
void __noreturn sub_811727C()
{
    int v0; // r5
    char v1; // r4
    int v2; // r1
    char v3; // zf

    v1 = 33;
    v2 = *(v0 + 4);
    sub_803C316();
    if ( !v3 )
    {
        v1 = 35;
        sprite_setCoordinates(25, 32 * *(v0 + 4) + 41);
    }
    *v0 = v1;
    sprite_update(v0);
}


// 0x81172a6
int sub_81172A6()
{
    return sub_804668A();
}


// 0x81172b0
int sub_81172B0()
{
    int v0; // r5

    return (*(&off_81172C4 + *(v0 + 8)))();
}


// 0x81172d0
void __fastcall __noreturn sub_81172D0(int a1, void *a2)
{
    int v2; // r5
    int v3; // r0

    *v2 = 35;
    v3 = *(v2 + 4);
    if ( v3 == 28 )
    {
        a2 = &unk_2032A04;
    }
    else if ( v3 == 29 )
    {
        a2 = &unk_2032A04;
    }
    initGuiSprite_8002770(v3, a2);
    sprite_setAnimation(v2, *(v2 + 5) & 0x7F);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(*(v2 + 3) + 1);
    sub_800306C(&byte_100[64 * *(v2 + 3)]);
    sub_8002E14(3);
    sub_8003060(4);
    sprite_setCoordinates(*(v2 + 6), *(v2 + 7));
    if ( *(v2 + 5) & 0x80 )
        sprite_setFlip(v2, 1);
    *(v2 + 8) = 4;
    sub_811734C();
}


// 0x811734c
void __noreturn sub_811734C()
{
    Battle *v0; // r5

    sprite_update(v0);
}


// 0x8117354
int sub_8117354()
{
    return sub_804668A();
}


// 0x8117404
int sub_8117404()
{
    int v0; // r5

    return (*(&off_8117418 + *(v0 + 8)))();
}


// 0x8117424
void __noreturn sub_8117424()
{
    int v0; // r5

    *v0 = 35;
    (loc_8002774)(12);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_makeScalable();
    sprite_setScaleParameters(0, 128, 128);
    sub_800304A(*(v0 + 5) + 5);
    sub_800306C(&byte_200[16 * *(v0 + 5)]);
    sub_8002E14(3);
    sub_8003060(0);
    sprite_setCoordinates(0, 0);
    *(v0 + 8) = 4;
    sub_81175AC();
    sub_8117488();
}


// 0x8117488
void sub_8117488()
{
    Battle *v0; // r5
    unsigned __int16 *v1; // r0
    char v2; // zf

    do
    {
        v1 = sub_81175C4();
        (*(&off_81174A4 + *v1))();
    }
    while ( !v2 );
    sprite_update(v0);
}


// 0x81174b8
int sub_81174B8()
{
    return sub_804668A();
}


// 0x81174c0
signed int sub_81174C0()
{
    int v0; // r5
    unsigned __int16 *v1; // r0
    int v2; // r1
    int v3; // r1
    int v4; // r0
    int v5; // r1
    int v6; // r0
    unsigned __int8 v7; // vf

    if ( !*(v0 + 9) )
    {
        *(v0 + 9) = 1;
        v1 = sub_81175C4();
        *(v0 + 16) = v1[1];
        v2 = v1[2];
        *(v0 + 20) = *&math_sinTable[2 * v2];
        *(v0 + 24) = *&math_cosTable[2 * v2];
        v3 = v1[3];
        *(v0 + 20) *= 16 * v3;
        *(v0 + 24) *= 16 * v3;
        sprite_setScaleParameters(256 - v1[2], 64, 64);
    }
    v4 = sprite_getCoordinates();
    sprite_setCoordinates(((v4 << 16) + *(v0 + 20)) >> 16, ((v5 << 16) + *(v0 + 24)) >> 16);
    v6 = *(v0 + 16);
    v7 = __OFSUB__(v6--, 1);
    *(v0 + 16) = v6;
    if ( !((v6 < 0) ^ v7) )
        return 0;
    *(v0 + 9) = 0;
    *(v0 + 16) = 0;
    sub_81175BC(8);
    return 1;
}


// 0x811753c
signed int sub_811753C()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf

    if ( !*(v0 + 9) )
    {
        *(v0 + 9) = 1;
        *(v0 + 16) = *(sub_81175C4() + 2);
    }
    v1 = *(v0 + 16);
    v2 = __OFSUB__(v1--, 1);
    *(v0 + 16) = v1;
    if ( !((v1 < 0) ^ v2) )
        return 0;
    *(v0 + 9) = 0;
    *(v0 + 16) = 0;
    sub_81175BC(4);
    return 1;
}


// 0x811756c
signed int sub_811756C()
{
    int v0; // r0

    v0 = sub_81175C4();
    sprite_setCoordinates(*(v0 + 2), *(v0 + 4));
    sub_81175BC(6);
    return 1;
}


// 0x8117588
signed int sub_8117588()
{
    sub_81175AC();
    return 1;
}


// 0x8117592
signed int __noreturn sub_8117592()
{
    Battle *v0; // r5
    int v1; // r0

    v1 = sub_81175C4();
    sprite_setAnimation(v0, *(v1 + 2));
    sprite_loadAnimationData(v0);
    sub_81175BC(4);
    return 1;
}


// 0x81175ac
char (*sub_81175AC())[24]
{
    int v0; // r5
    char (*result)[24]; // r0

    result = off_811735C[*(v0 + 5)];
    *(v0 + 12) = result;
    return result;
}


// 0x81175bc
int __fastcall sub_81175BC(int a1)
{
    int v1; // r5
    int result; // r0

    result = a1 + *(v1 + 12);
    *(v1 + 12) = result;
    return result;
}


// 0x81175c4
int sub_81175C4()
{
    int v0; // r5

    return *(v0 + 12);
}


// 0x81175d0
int sub_81175D0()
{
    int v0; // r5

    return (*(&off_81175E4 + *(v0 + 8)))();
}


// 0x81175f0
void __noreturn sub_81175F0()
{
    int v0; // r5

    *v0 = 35;
    initGuiSprite_8002770(13, byte_2016A04);
    sprite_setAnimation(v0, *(v0 + 4));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(0);
    sub_800306C(*&byte_8117640[4 * *(v0 + 3)]);
    sub_8002E14(2);
    sprite_setCoordinates(*(v0 + 5), *(v0 + 6));
    *(v0 + 8) = 4;
    sub_8117680();
}


// 0x8117680
void __noreturn sub_8117680()
{
    Battle *v0; // r5

    sprite_update(v0);
}


// 0x8117688
int sub_8117688()
{
    return sub_804668A();
}


// 0x8117690
int sub_8117690()
{
    int v0; // r5

    return (*(&off_81176A4 + *(v0 + 8)))();
}


// 0x81176b0
int sub_81176B0()
{
    _BYTE *v0; // r5

    *v0 = 1;
    v0[8] = 4;
    return sub_81176C0();
}


// 0x81176c0
int sub_81176C0()
{
    return sub_81176D0();
}


// 0x81176c8
int sub_81176C8()
{
    return sub_804668A();
}


// 0x81176d0
signed int sub_81176D0()
{
    int v0; // r5
    int v1; // r4
    signed int v2; // r6
    __int16 v3; // r0
    signed int result; // r0

    v1 = (*&byte_8117724[4 * *(v0 + 4)] << 16) | *&byte_8117724[4 * *(v0 + 4) + 2];
    v2 = 0;
    do
    {
        v3 = (*(&off_8117740 + v2))();
        sub_802FE28(v1, v3 | 0xA800, 0, 3);
        result = 0x80000;
        v1 += 0x80000;
        ++v2;
    }
    while ( v2 < 3 );
    return result;
}


// 0x811774c
signed int sub_811774C()
{
    int v0; // r5
    signed int result; // r0

    result = byte_201C400[2 * *(v0 + 4) + 1];
    if ( result > 8 )
        result = 8;
    return result;
}


// 0x8117768
int sub_8117768()
{
    int result; // r0

    result = CheckKeyItem(117);
    if ( result < 4 )
        return 4;
    if ( result > 8 )
        result = 8;
    return result;
}


// 0x8117780
int sub_8117780()
{
    int v0; // r5

    return (*(&off_8117794 + *(v0 + 8)))();
}


// 0x81177a4
void __noreturn sub_81177A4()
{
    int v0; // r5

    *v0 = 35;
    initGuiSprite_8002770(15, byte_202FA04);
    *(v0 + 12) = 0;
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(8);
    sub_800306C(&byte_40);
    sub_8003060(1);
    sub_8002E14(0);
    *(v0 + 8) = 4;
    sub_81177EC();
}


// 0x81177ec
void __noreturn sub_81177EC()
{
    int v0; // r5
    signed int v1; // r0

    sprite_setCoordinates(120, 64);
    sub_8117872();
    sub_8117820();
    v1 = sub_811788C();
    if ( v1 != *(v0 + 12) )
    {
        *(v0 + 12) = v1;
        sprite_setAnimation(v0, v1);
        sprite_loadAnimationData(v0);
    }
    sprite_update(v0);
}


// 0x8117818
int sub_8117818()
{
    return sub_804668A();
}


// 0x8117820
int sub_8117820()
{
    int v0; // r0
    _BYTE *v1; // r7
    signed int v2; // r4
    int v3; // r0
    unsigned int v4; // r2
    int v5; // r6

    v0 = sub_81178AC();
    if ( !v0 )
        return sprite_setUnk0x2c(-1);
    v1 = sub_813B7A0(v0 - 144, 0) + 8;
    v2 = 0;
    v3 = 0xFFFFFFF;
    v4 = 0x8000000;
    v5 = 0;
    do
    {
        if ( *v1 )
            v3 &= ~v4;
        v4 >>= 1;
        ++v1;
        if ( ++v5 >= 5 )
        {
            v5 = 0;
            v1 += 2;
        }
        ++v2;
    }
    while ( v2 < 25 );
    return sprite_setUnk0x2c(v3);
}


// 0x8117872
void sub_8117872()
{
    int v0; // r0

    v0 = sub_81178AC();
    if ( v0 )
        v0 = *(sub_813B780(v0 - 144) + 3) - 1;
    sprite_setPallete(v0);
}


// 0x811788c
signed int sub_811788C()
{
    int v0; // r0
    signed int v1; // r2
    int *v2; // r0

    v0 = sub_81178AC();
    v1 = 0;
    if ( v0 )
    {
        v2 = sub_813B780(v0 - 144);
        v1 = 0;
        if ( *(v2 + 1) )
            v1 = 1;
    }
    return v1;
}


// 0x81178ac
int sub_81178AC()
{
    int v0; // r6
    char *v1; // r7
    int result; // r0

    v1 = &byte_2019A00[8 * (*(v0 + 20) + *(v0 + 24))];
    if ( *v1 == 3 )
        result = sub_803D148(*(v1 + 1) + 144, *(v1 + 2));
    else
        result = 0;
    return result;
}


// 0x81178d8
int sub_81178D8()
{
    int v0; // r5

    return (*(&off_81178EC + *(v0 + 8)))();
}


// 0x81178fc
void __noreturn sub_81178FC()
{
    int v0; // r5
    u8 v1; // r0

    *v0 = 35;
    (loc_8002774)(16, byte_2030204);
    v1 = sub_8117998();
    *(v0 + 5) = v1;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(*(v0 + 4) + 9);
    sub_800306C(&byte_180);
    sub_8003060(1);
    sub_8002E14(0);
    *(v0 + 8) = 4;
    sub_811794C();
}


// 0x811794c
void __noreturn sub_811794C()
{
    int v0; // r5
    int v1; // r7
    char v2; // r4
    char *v3; // r0
    int v4; // r0

    v2 = 35;
    v3 = sub_8047D84();
    if ( *v3 == 1 && *(v3 + 1) == 112 )
        v2 = 33;
    *v0 = v2;
    sprite_setCoordinates(8 * (42 - *(v1 + 8)) + 36, 56);
    v4 = sub_8117998();
    if ( v4 != *(v0 + 5) )
    {
        *(v0 + 5) = v4;
        sprite_setAnimation(v0, v4);
        sprite_loadAnimationData(v0);
    }
    sprite_update(v0);
}


// 0x8117990
int sub_8117990()
{
    return sub_804668A();
}


// 0x8117998
int sub_8117998()
{
    int v0; // r5

    return 2 * (*sub_8047D84() - 1) + *(v0 + 4);
}


// 0x81179ae
int sub_81179AE()
{
    char *v0; // r0

    v0 = sub_8047D84();
    return (*(&off_81179CC + *v0))();
}


// 0x81179e0
void sub_81179E0()
{
    ;
}


// 0x81179e4
int __noreturn sub_81179E4()
{
    int v0; // r4
    int v1; // r7
    int v2; // r10

    *(*(v2 + oToolkit_Unk200a220_Ptr) + 8) = CheckKeyItem(*(v0 + 2));
    return renderTextGfx_8045F8C(*(v1 + 36), 18, &unk_2016200, 100742432);
}


// 0x8117a14
int __fastcall sub_8117A14(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    unsigned __int8 *v5; // r5
    signed int v6; // r4

    ZeroFillByEightWords(&unk_2016300, 512);
    v5 = getChip8021DA8(*(v4 + 2));
    sub_8117A84(*v5);
    sub_8117A84(v5[1]);
    sub_8117A84(v5[2]);
    sub_8117A84(v5[3]);
    v6 = *(v4 + 2);
    sub_8117AA0(v6, *v5);
    sub_8117AA0(v6, v5[1]);
    sub_8117AA0(v6, v5[2]);
    sub_8117AA0(v6, v5[3]);
    return (loc_8000AC8)(&unk_2016300, 100744000, 512);
}


// 0x8117a84
void __fastcall sub_8117A84(signed int a1)
{
    int v1; // r6

    if ( a1 <= 26 )
        CopyByEightWords(&unk_2031344 + 64 * a1, v1, 0x40u);
}


// 0x8117aa0
void __fastcall sub_8117AA0(signed int result, int a2)
{
    int v2; // r0

    if ( a2 <= 26 )
    {
        v2 = GetChipCountOfCode(result, a2);
        sub_8117B94(v2);
    }
}


// 0x8117ab4
int sub_8117AB4()
{
    int v0; // r4
    int *v1; // r7
    int *v2; // r7

    sub_8117B5C();
    v1 = sub_813B780(*(v0 + 2));
    sub_8117B4A(*(v1 + 3));
    v1 += 4;
    sub_8117B4A(*(v1 + 3));
    v1 += 4;
    sub_8117B4A(*(v1 + 3));
    sub_8117B4A(*(v1 + 19));
    ZeroFillByEightWords(&unk_2016400, 256);
    v2 = sub_813B780(*(v0 + 2));
    sub_8117B38(*(v0 + 2), *(v2 + 3));
    v2 += 4;
    sub_8117B38(*(v0 + 2), *(v2 + 3));
    v2 += 4;
    sub_8117B38(*(v0 + 2), *(v2 + 3));
    sub_8117B38(*(v0 + 2), *(v2 + 19));
    return (loc_8000AC8)(&unk_2016400, 100744256, 256);
}


// 0x8117b38
void __fastcall sub_8117B38(int a1, int a2)
{
    int v2; // r0

    if ( a2 )
    {
        v2 = sub_803D138(a1 + 144, a2);
        sub_8117B94(v2);
    }
}


// 0x8117b4a
int __fastcall sub_8117B4A(int result)
{
    _WORD *v1; // r6

    if ( result )
    {
        result = *&byte_8117B78[2 * result];
        *v1 = result;
    }
    return result;
}


// 0x8117b5c
int sub_8117B5C()
{
    _WORD *v0; // r6
    __int16 v1; // r0
    int result; // r0

    v1 = word_3001684;
    *v0 = word_3001684;
    v0[2] = v1;
    result = *byte_3001686;
    v0[1] = *byte_3001686;
    v0[3] = result;
    return result;
}


// 0x8117b94
void __fastcall sub_8117B94(int a1)
{
    int v1; // r6

    __asm { SVC         6 }
    if ( a1 )
        CopyByEightWords(&unk_2031204 + 32 * a1, v1, 0x20u);
    CopyByEightWords(&unk_2031344, v1 + 32, 0x20u);
}


// 0x8117bc8
int sub_8117BC8()
{
    int v0; // r5

    return (*(&off_8117BDC + *(v0 + 8)))();
}


// 0x8117be8
void __noreturn sub_8117BE8()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    initGuiSprite_8002770(10, &unk_2034B6C);
    v0->pad_0C[0] = 0;
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(9);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(&byte_170);
    sub_8003060(0);
    sprite_setCoordinates(&loc_D4, 12);
    v0->currState = 4;
    v0->currAction = 0;
    sub_8117C4C();
}


// 0x8117c4c
void __noreturn sub_8117C4C()
{
    Battle *v0; // r5

    (*(&off_8117C64 + v0->currAction))();
    sprite_update(v0);
}


// 0x8117c70
int sub_8117C70()
{
    Battle *v0; // r5
    int result; // r0

    v0->objFlags = 35;
    if ( v0->pad_0C[0] )
    {
        v0->pad_0C[0] = 0;
        sprite_setAnimation(v0, 0);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
    }
    result = sprite_getFrameParameters();
    if ( result & 0xC0 )
        result = sub_8117CD4();
    return result;
}


// 0x8117c9c
int sub_8117C9C()
{
    Battle *v0; // r5
    int result; // r0

    if ( v0->pad_0C[0] != 1 )
    {
        v0->pad_0C[0] = 1;
        sprite_setAnimation(v0, 1u);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
    }
    result = sprite_getFrameParameters();
    if ( result & 0xC0 )
    {
        result = 1;
        v0->objFlags = 1;
    }
    return result;
}


// 0x8117cc4
int sub_8117CC4()
{
    return sub_8117CD4();
}


// 0x8117ccc
int sub_8117CCC()
{
    return sub_804668A();
}


// 0x8117cd4
int sub_8117CD4()
{
    MenuControl *v0; // r7
    char v1; // zf
    __int16 v2; // r1
    int v3; // r0
    int v4; // r3

    v0 = &sSubmenu;
    sub_81355D8();
    if ( !v1 )
        v0 = sub_81312F4();
    v2 = 20800;
    v3 = v0->unk_17;
    v4 = *&v0->unk_1E;
    if ( v3 != v4 )
        v2 = 24896;
    return sub_812068C(v3, v2, 12615683 - (*&v0->unk_18 << 19), v4);
}


// 0x8117d10
int __fastcall sub_8117D10(int a1, int a2)
{
    int v2; // r6
    int result; // r0
    int v4; // r1
    char v5; // zf

    v2 = a1;
    result = getStructFrom2008450(a2);
    if ( !v5 )
    {
        if ( v2 )
            result = 4;
        else
            result = 0;
        *(v4 + 9) = result;
    }
    return result;
}


// 0x8117d2c
int sub_8117D2C()
{
    int v0; // r5

    return (*(&off_8117D40 + *(v0 + 8)))();
}


// 0x8117d4c
int __noreturn sub_8117D4C()
{
    int v0; // r5
    u8 v1; // r0

    *v0 = 35;
    initGuiSprite_8002770(97, byte_20251B0);
    v1 = *(v0 + 4) + 5;
    *(v0 + 12) = v1;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(*(&off_8117DB4 + *(v0 + 3)));
    sub_800304A(*(&dword_8117DC4 + *(v0 + 3)));
    sub_8003060(3);
    sprite_setCoordinates(120, 32 * *(v0 + 3) + 40);
    *(v0 + 8) = 4;
    return sub_8117DC8();
}


// 0x8117dc8
int sub_8117DC8()
{
    int v0; // r5

    return (*(&off_8117DDC + *(v0 + 5)))();
}


// 0x8117de0
void sub_8117DE0()
{
    Battle *v0; // r5

    if ( sSubmenu.jo_01 == 8 )
        sprite_update(v0);
    else
        (*(&off_8117E00 + sSubmenu.unk_02))();
}


// 0x8117e20
void __noreturn sub_8117E20()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r0

    if ( *(v1 + 13) == *(v0 + 3) )
    {
        v2 = *(v0 + 4);
        if ( v2 != *(v0 + 12) )
        {
            *(v0 + 12) = v2;
            sprite_setAnimation(v0, v2);
            sprite_loadAnimationData(v0);
            sprite_noShadow(v0);
        }
    }
    else
    {
        v3 = *(v0 + 4) + 5;
        if ( v3 != *(v0 + 12) )
        {
            *(v0 + 12) = v3;
            sprite_setAnimation(v0, v3);
            sprite_loadAnimationData(v0);
            sprite_noShadow(v0);
        }
    }
    sprite_update(v0);
}


// 0x8117e60
void __noreturn sub_8117E60()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r0
    int v4; // r0

    if ( *(v1 + 13) >> 1 == *(v0 + 3) )
    {
        v2 = *(v0 + 4);
        if ( *(v1 + 13) != 2 && *(v1 + 13) )
            ++v2;
        if ( v2 != *(v0 + 12) )
        {
            *(v0 + 12) = v2;
            sprite_setAnimation(v0, v2);
            sprite_loadAnimationData(v0);
            sprite_noShadow(v0);
        }
    }
    else
    {
        v3 = *(v0 + 4);
        if ( *(v1 + 13) >= 2 && *(v1 + 33) )
            ++v3;
        v4 = v3 + 5;
        if ( v4 != *(v0 + 12) )
        {
            *(v0 + 12) = v4;
            sprite_setAnimation(v0, v4);
            sprite_loadAnimationData(v0);
            sprite_noShadow(v0);
        }
    }
    sprite_update(v0);
}


// 0x8117ec0
int sub_8117EC0()
{
    return sub_804668A();
}


// 0x8117ec8
int sub_8117EC8()
{
    int v0; // r5

    return (*(&off_8117EDC + *(v0 + 8)))();
}


// 0x8117ee8
void __noreturn sub_8117EE8()
{
    int v0; // r5
    __int16 v1; // r1

    *v0 = 35;
    initGuiSprite_8002770(17, &unk_201DD70);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(3);
    sub_800306C(off_8117F44[*(v0 + 4)]);
    sub_8003060(3);
    *(v0 + 8) = 4;
    *(v0 + 9) = 0;
    *(v0 + 10) = 0;
    v1 = *&byte_8117F68[2 * *(v0 + 4)];
    *(v0 + 20) = v1;
    sprite_setCoordinates(184, v1);
    sub_8117F78();
}


// 0x8117f78
void sub_8117F78()
{
    Battle *v0; // r5

    (*(&off_8117F94 + v0->currAction))();
    sub_8118234();
    sprite_update(v0);
}


// 0x8117f9c
signed int sub_8117F9C()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r0

    if ( *(v0 + 10) )
    {
        sub_8118104();
        sub_8118134();
        v2 = sub_81181DC();
        sub_81182A4(v2);
        *(v0 + 9) = 4;
        result = 0;
        *(v0 + 10) = 0;
    }
    else
    {
        result = 4;
        *(v0 + 10) = 4;
    }
    return result;
}


// 0x8117fc4
unsigned int sub_8117FC4()
{
    int v0; // r5
    unsigned int result; // r0

    (*(&off_8117FE0 + *(v0 + 10)))();
    result = sub_8118314();
    *(result + 14) = *(v0 + 20);
    return result;
}


// 0x8117ff8
MenuControl *__fastcall sub_8117FF8(int a1)
{
    int v1; // r5
    MenuControl *result; // r0

    sub_81182A4(a1);
    result = *(v1 + 10);
    if ( !*(v1 + 10) )
    {
        result = &sSubmenu;
        sSubmenu.unk_0D = 0;
    }
    return result;
}


// 0x811800c
signed int sub_811800C()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 20) = sub_8118320(*(v0 + 22), *(v0 + 20));
    result = *(v0 + 22);
    if ( result == *(v0 + 20) )
    {
        *(v0 + 10) = 8;
        result = 2;
        *(v0 + 18) = 2;
    }
    return result;
}


// 0x8118030
int sub_8118030()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    v1 = *(v0 + 18);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 18) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        *(v0 + 20) = *(v0 + 16);
        *(v0 + 10) = 0;
        sSubmenu.unk_0D >>= 1;
        sub_8118104();
        sub_8118134();
        result = sub_81181DC();
    }
    return result;
}


// 0x811805c
int sub_811805C()
{
    char *v0; // r5
    int v1; // r2
    int result; // r0
    char v3; // r3
    int v4; // r0
    unsigned __int8 v5; // vf

    v1 = v0[18] + 48;
    if ( v1 >= 255 )
        v1 = 255;
    v0[18] = v1;
    sprite_setScaleParameters(0, 64, v1);
    result = v0[18];
    if ( result == 255 )
    {
        v0[10] = 16;
        v3 = 1;
        v4 = sSubmenu.unk_24 + v0[3];
        v5 = __OFSUB__(v4, 2);
        result = v4 - 2;
        if ( !((result < 0) ^ v5) && result < *&sSubmenu.unk_1E )
            v3 = 35;
        *v0 = v3;
    }
    return result;
}


// 0x81180e0
MenuControl *sub_81180E0()
{
    int v0; // r5
    MenuControl *result; // r0

    *(v0 + 10) = 0;
    sub_8118104();
    sub_8118134();
    sub_81181DC();
    result = &sSubmenu;
    sSubmenu.unk_0C = 0;
    return result;
}


// 0x81180fc
int sub_81180FC()
{
    return sub_804668A();
}


// 0x8118104
signed int sub_8118104()
{
    _BYTE *v0; // r5
    signed int v1; // r0
    signed int result; // r0

    v1 = sSubmenu.unk_24;
    if ( sSubmenu.unk_24 >= 1 )
        v1 = 1;
    if ( v1 + v0[4] < 2 || sSubmenu.unk_24 + v0[4] - 2 >= *&sSubmenu.unk_1E )
    {
        result = 1;
        *v0 = 1;
    }
    else
    {
        result = 35;
        *v0 = 35;
    }
    return result;
}


// 0x8118134
int sub_8118134()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    __int16 *v5; // r1
    char v6; // r4
    int *v7; // r2

    v2 = sSubmenu.unk_24 + *(v0 + 4);
    v3 = __OFSUB__(v2, 2);
    result = v2 - 2;
    if ( !((result < 0) ^ v3) && result < *&sSubmenu.unk_1E )
    {
        v5 = &word_201DA80[2 * result];
        v6 = 4;
        v7 = *v5;
        if ( v7 != &dword_14C )
        {
            v7 = v5[1];
            v6 = 0;
            if ( !v5[1] )
                v6 = 2;
        }
        *(v0 + 14) = v6;
        *(*(v1 + oToolkit_Unk200a220_Ptr) + 8) = v7;
        result = renderTextGfx_8045F8C(
                             byte_873EA50,
                             (*v5 - 144) >> 2,
                             (&off_811819C)[*(v0 + 4)],
                             *&byte_81181C0[4 * *(v0 + 4)]);
    }
    return result;
}


// 0x81181dc
int sub_81181DC()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    v1 = sSubmenu.unk_24 + *(v0 + 4);
    v2 = __OFSUB__(v1, 2);
    result = v1 - 2;
    if ( !((result < 0) ^ v2) && result < *&sSubmenu.unk_1E )
        result = sprite_setUnk0x2c(*&byte_811820C[4 * word_201DA80[2 * result + 1]]);
    return result;
}


// 0x8118234
void sub_8118234()
{
    _BYTE *v0; // r5
    signed int v1; // r4
    signed int v2; // r6
    signed int v3; // r7
    int v4; // r1
    int v5; // r1
    int v6; // r2
    unsigned __int8 v7; // vf
    int v8; // r1

    v1 = 1;
    v2 = 10;
    v3 = 0;
    if ( sSubmenu.unk_02 == 4 && *&sSubmenu.unk_20 + 2 == v0[4] )
    {
        v1 = 0;
        v2 = 9;
        v3 = 1;
    }
    *v0 &= 0xBFu;
    if ( v3 )
    {
        v4 = 4 * v0[12];
        v2 = byte_811829C[v4];
        v5 = v4 + 1;
        v1 = byte_811829C[v5];
        v6 = v0[13];
        v7 = __OFSUB__(v6--, 1);
        v0[13] = v6;
        if ( (v6 < 0) ^ v7 )
        {
            v8 = v5 + 1;
            v0[12] = byte_811829C[v8];
            v0[13] = byte_811829C[v8 + 1];
        }
    }
    sub_800304A(v2 + (v0[14] >> 1));
    sprite_setPallete(v1 + v0[14]);
}


// 0x81182a4
MenuControl *__fastcall sub_81182A4(int a1)
{
    int v1; // r5
    unsigned int v2; // r3
    char v3; // r7
    MenuControl *result; // r0
    int v5; // r4
    int v6; // r0

    v2 = sub_8118314();
    v3 = 0;
    result = &sSubmenu;
    v5 = sSubmenu.unk_0C;
    if ( sSubmenu.unk_0C )
    {
        if ( sSubmenu.unk_0C == 16 )
        {
            result = *(v2 + 14);
            *(v1 + 20) = result;
            v3 = 20;
        }
        else
        {
            *(v2 + 12) = 184;
            v6 = *(v2 + 14);
            *(v1 + 16) = v6;
            *(v1 + 20) = v6;
            if ( v5 == 12 )
            {
                sprite_makeScalable();
                *(v1 + 18) = 64;
                sprite_setScaleParameters(0, 64, 64);
                result = sprite_setUnk0x2c(0x3FFFFFF);
                v3 = 12;
            }
            else
            {
                result = (v6 + *&byte_8118304[v5]);
                *(v1 + 22) = result;
                v3 = 4;
            }
        }
    }
    *(v1 + 10) = v3;
    return result;
}


// 0x8118314
unsigned int sub_8118314()
{
    int v0; // r5

    return 16 * (*(v0 + 2) >> 4) + v0;
}


// 0x8118320
int __fastcall sub_8118320(int a1, int a2)
{
    int v2; // r2
    int v3; // r0
    signed int v4; // r0

    v2 = a1;
    v3 = a2 - a1;
    if ( v3 < 0 )
    {
        if ( (-v3 >> 1) > 1 )
            v2 += v3 >> 1;
    }
    else
    {
        v4 = v3 >> 1;
        if ( v4 > 1 )
            v2 += v4;
    }
    return v2;
}


// 0x8118344
int sub_8118344()
{
    int v0; // r5

    return (*(&off_8118358 + *(v0 + 8)))();
}


// 0x8118368
void __noreturn sub_8118368()
{
    Battle *v0; // r5
    int v1; // r6

    v0->objFlags = 35;
    initGuiSprite_8002770(18, &unk_201F6F0);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(3);
    sub_800306C(&byte_1C0);
    sub_8003060(1);
    sub_800304A(8);
    v0->currState = 4;
    sprite_setCoordinates(230, 20 * *(v1 + 32) + 27);
    v0->pad_0C[0] = 0;
    sub_81183C4();
}


// 0x81183c4
void sub_81183C4()
{
    Battle *v0; // r5
    int v1; // r6
    u8 v2; // r0

    (*(&off_81183E8 + *(v1 + 2)))();
    v2 = sub_81185C0();
    sprite_setAnimation(v0, v2);
    sprite_loadAnimationData(v0);
    sprite_update(v0);
}


// 0x8118424
signed int sub_8118424()
{
    _BYTE *v0; // r5
    signed int result; // r0

    result = 1;
    *v0 = 1;
    return result;
}


// 0x811842c
int sub_811842C()
{
    char *v0; // r5
    int v1; // r6
    char v2; // r4
    char v3; // zf

    v2 = 1;
    if ( *v1 == 40 || (chatbox_check_eFlags2009F38(128), v3) )
    {
        if ( *(v1 + 12) != 12 && *(v1 + 32) + *(v1 + 36) != *(v1 + 30) - 1 )
            v2 = 35;
    }
    *v0 = v2;
    v0[12] = 4;
    sprite_setCoordinates(230, 18 * *(v1 + 32) + 27);
    sprite_disableAlpha();
    sprite_zeroColorShader();
    sub_81185E4();
    return sub_8118604();
}


// 0x811847c
int sub_811847C()
{
    char *v0; // r5
    int v1; // r6
    char v2; // r4
    char v3; // zf
    char v4; // r1

    v2 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v3 )
        v2 = 35;
    v4 = 2;
    if ( !*(v1 + 16) )
    {
        v4 = 0;
        v2 = 1;
    }
    v0[12] = v4;
    *v0 = v2;
    sub_81186A8();
    sub_81185E4();
    return sub_8118604();
}


// 0x81184a8
int sub_81184A8()
{
    _BYTE *v0; // r5

    *v0 = 1;
    v0[12] = 0;
    sub_8118744();
    sub_81185E4();
    return sub_8118658();
}


// 0x81184c0
int sub_81184C0()
{
    char *v0; // r5
    char v1; // r4
    char v2; // zf

    v1 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v2 )
        v1 = 35;
    *v0 = v1;
    v0[12] = 0;
    sub_8002C7A(10);
    sprite_zeroColorShader();
    sub_81186A8();
    sub_81185E4();
    return sub_8118658();
}


// 0x81184ec
int sub_81184EC()
{
    _BYTE *v0; // r5

    v0[12] = 0;
    *v0 = 35;
    sub_8002C7A(10);
    sprite_zeroColorShader();
    sub_81186A8();
    sub_81185E4();
    return sub_8118658();
}


// 0x8118510
int sub_8118510()
{
    char *v0; // r5
    int v1; // r6
    char v2; // r4
    char v3; // zf
    char v4; // r4
    char v5; // r4

    v2 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v3 )
        v2 = 35;
    *v0 = v2;
    v0[12] = 0;
    if ( *(v1 + 2) == 40 )
    {
        v4 = 0;
        sub_8118794();
        if ( !v3 )
            v4 = 1;
        *(v1 + 13) = v4;
    }
    else
    {
        v5 = 0;
        sub_81186A8();
        if ( !v3 )
            v5 = 1;
        *(v1 + 13) = v5;
    }
    sub_81185E4();
    return sub_8118658();
}


// 0x8118550
int sub_8118550()
{
    char *v0; // r5
    char v1; // r4
    char v2; // zf

    v1 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v2 )
        v1 = 35;
    *v0 = v1;
    v0[12] = 0;
    sub_8002C7A(10);
    sprite_zeroColorShader();
    sub_811870C();
    sub_81185E4();
    return sub_8118658();
}


// 0x811857c
int sub_811857C()
{
    char *v0; // r5
    char v1; // r4
    char v2; // zf

    v1 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v2 )
        v1 = 35;
    v0[12] = 0;
    *v0 = v1;
    sub_8002C7A(10);
    sprite_zeroColorShader();
    sub_81186A8();
    sub_81185E4();
    return sub_8118658();
}


// 0x81185a8
int sub_81185A8()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    result = chatbox_check_eFlags2009F38(128);
    if ( !v2 )
    {
        result = 1;
        *v0 = 1;
    }
    return result;
}


// 0x81185b8
int sub_81185B8()
{
    return sub_804668A();
}


// 0x81185c0
int sub_81185C0()
{
    int v0; // r5
    int v1; // r6
    int *v2; // r1
    int result; // r0

    v2 = sub_813B780(word_201DA80[2 * (*(v1 + 58) + *(v1 + 56))] - 144);
    result = *(v0 + 12);
    if ( *(v2 + 1) )
        ++result;
    return result;
}


// 0x81185e4
void sub_81185E4()
{
    int v0; // r6
    int *v1; // r0

    v1 = sub_813B780(word_201DA80[2 * (*(v0 + 58) + *(v0 + 56))] - 144);
    sprite_setPallete(*(v1 + 3) - 1);
}


// 0x8118604
int sub_8118604()
{
    int v0; // r6
    _BYTE *v1; // r7
    signed int v2; // r4
    int v3; // r6
    int v4; // r0
    unsigned int v5; // r2

    v1 = sub_813B7A0(word_201DA80[2 * (*(v0 + 58) + *(v0 + 56))] - 144, *(v0 + 14)) + 8;
    v2 = 0;
    v3 = 0;
    v4 = 0x7FFFFFFF;
    v5 = 0x40000000;
    do
    {
        if ( *v1 )
            v4 &= ~v5;
        v5 >>= 1;
        if ( ++v3 >= 5 )
        {
            v3 = 0;
            v1 += 2;
            v2 += 2;
        }
        ++v1;
        ++v2;
    }
    while ( v2 < 49 );
    return sprite_setUnk0x2c(v4);
}


// 0x8118658
int sub_8118658()
{
    int v0; // r6
    _BYTE *v1; // r7
    signed int v2; // r4
    int v3; // r6
    int v4; // r0
    unsigned int v5; // r2

    v1 = sub_813B7A0(word_201DA80[2 * (*(v0 + 58) + *(v0 + 56))] - 144, *(v0 + 14)) + 8;
    v2 = 0;
    v3 = 0;
    v4 = -1;
    v5 = 2147483648;
    do
    {
        if ( *v1 )
            v4 &= ~v5;
        v5 >>= 1;
        if ( ++v3 >= 5 )
        {
            v3 = 0;
            v1 += 2;
            v2 += 2;
        }
        ++v1;
        ++v2;
    }
    while ( v2 < 49 );
    return sprite_setUnk0x2c(v4);
}


// 0x81186a8
signed int sub_81186A8()
{
    int v0; // r6
    unsigned int v1; // r0
    unsigned int v2; // r7
    char *v3; // r4
    int v4; // ST00_4
    int v5; // r0
    int v6; // ST00_4
    int v7; // r0
    signed int v9; // [sp+4h] [bp-18h]

    v9 = 0;
    v1 = sub_81187DC();
    v2 = v1;
    v3 = &byte_811873C[2 * *(v0 + 15)];
    v4 = 20 * *(v0 + 40) + *v3 - 1;
    v5 = sub_8118320(v4, *(v1 + 12));
    *(v2 + 12) = v5;
    if ( v5 == v4 )
        v9 = 1;
    v6 = 20 * *(v0 + 44) + v3[1] - 1;
    v7 = sub_8118320(v6, *(v2 + 14));
    *(v2 + 14) = v7;
    if ( v7 == v6 )
        ++v9;
    return v9;
}


// 0x811870c
int sub_811870C()
{
    int v0; // r6
    unsigned int v1; // r0
    unsigned int v2; // r7
    char *v3; // r4
    int result; // r0

    v1 = sub_81187DC();
    v2 = v1;
    v3 = &byte_811873C[2 * *(v0 + 15)];
    *(v1 + 12) = 20 * *(v0 + 40) + *v3;
    result = 20 * *(v0 + 44) + v3[1];
    *(v2 + 14) = result;
    return result;
}


// 0x8118744
signed int sub_8118744()
{
    int v0; // r6
    unsigned int v1; // r0
    unsigned int v2; // r7
    int v3; // r0
    int v4; // ST00_4
    int v5; // r0
    signed int v7; // [sp+4h] [bp-18h]

    v7 = 0;
    v1 = sub_81187DC();
    v2 = v1;
    v3 = sub_8118320(182, *(v1 + 12));
    *(v2 + 12) = v3;
    if ( v3 == 182 )
        v7 = 1;
    v4 = 18 * *(v0 + 32) + 27;
    v5 = sub_8118320(v4, *(v2 + 14));
    *(v2 + 14) = v5;
    if ( v5 == v4 )
        ++v7;
    return v7;
}


// 0x8118794
signed int sub_8118794()
{
    unsigned int v0; // r0
    unsigned int v1; // r7
    int v2; // r0
    int v3; // r0
    signed int v5; // [sp+4h] [bp-18h]

    v5 = 0;
    v0 = sub_81187DC();
    v1 = v0;
    v2 = sub_8118320(182, *(v0 + 12));
    *(v1 + 12) = v2;
    if ( v2 == 182 )
        v5 = 1;
    v3 = sub_8118320(47, *(v1 + 14));
    *(v1 + 14) = v3;
    if ( v3 == 47 )
        ++v5;
    return v5;
}


// 0x81187dc
unsigned int sub_81187DC()
{
    int v0; // r5

    return 16 * (*(v0 + 2) >> 4) + v0;
}


// 0x81187e8
int sub_81187E8()
{
    int v0; // r5

    return (*(&off_81187FC + *(v0 + 8)))();
}


// 0x811880c
void __noreturn sub_811880C()
{
    Battle *v0; // r5
    int v1; // r6

    v0->objFlags = 35;
    initGuiSprite_8002770(21, &unk_20218F0);
    v0->pad_0C[0] = 0;
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(3);
    sub_800306C(dword_1D8);
    sub_8003060(3);
    sub_800304A(7);
    sprite_setPallete(0);
    v0->currState = 4;
    v0->unk_0D = -1;
    sprite_setCoordinates(136, 20 * *(v1 + 32) + 27);
    v0->pad_0C[0] = 0;
    sub_8118874();
}


// 0x8118874
void sub_8118874()
{
    Battle *v0; // r5
    int v1; // r6

    v0->unk_0D = v0->pad_0C[0];
    (*(&off_8118890 + *(v1 + 2)))();
    sprite_update(v0);
}


// 0x81188cc
int sub_81188CC()
{
    Battle *v0; // r5
    int result; // r0

    v0->objFlags = 1;
    sub_8118AB0();
    result = 2;
    v0->pad_0C[0] = 2;
    if ( v0->unk_0D != 2 )
    {
        sprite_setAnimation(v0, 2u);
        result = sprite_loadAnimationData(v0);
    }
    return result;
}


// 0x81188ec
int sub_81188EC()
{
    Battle *v0; // r5
    int v1; // r6
    int result; // r0

    v0->objFlags = 35;
    v0->pad_0C[0] = 4;
    sprite_setCoordinates(136, 18 * *(v1 + 32) + 27);
    result = 3;
    v0->pad_0C[0] = 3;
    if ( v0->unk_0D != 3 )
    {
        sprite_setAnimation(v0, 3u);
        result = sprite_loadAnimationData(v0);
    }
    return result;
}


// 0x811891c
int sub_811891C()
{
    Battle *v0; // r5
    int v1; // r6
    char v2; // r4
    char v3; // zf
    char v4; // r7
    char v5; // r4
    int result; // r0

    v2 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v3 )
        v2 = 35;
    v0->objFlags = v2;
    v4 = 0;
    if ( *(v1 + 16) )
    {
        v4 = 2;
    }
    else
    {
        sub_813B9B4(*(v1 + 40), *(v1 + 44));
        if ( !v3 )
            v4 = 1;
    }
    v0->pad_0C[0] = v4;
    v5 = 0;
    sub_8118AB0();
    if ( !v3 )
        v5 = 1;
    *(v1 + 13) = v5;
    result = v0->pad_0C[0];
    if ( result != v0->unk_0D )
    {
        sprite_setAnimation(v0, result);
        result = sprite_loadAnimationData(v0);
    }
    return result;
}


// 0x8118964
int sub_8118964()
{
    Battle *v0; // r5
    int v1; // r6
    char v2; // r4
    char v3; // zf
    char v4; // r4
    int result; // r0

    v2 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v3 )
        v2 = 35;
    v0->objFlags = v2;
    v0->pad_0C[0] = 3;
    v4 = 0;
    sub_8118B48();
    if ( !v3 )
        v4 = 1;
    *(v1 + 13) = v4;
    result = v0->pad_0C[0];
    if ( result != v0->unk_0D )
    {
        sprite_setAnimation(v0, result);
        result = sprite_loadAnimationData(v0);
    }
    return result;
}


// 0x8118998
int sub_8118998()
{
    Battle *v0; // r5
    int v1; // r6
    char v2; // zf
    int result; // r0

    v0->objFlags = 35;
    sub_8118AB0();
    if ( v2 )
        *(v1 + 13) = 1;
    v0->pad_0C[0] = 4;
    result = v0->pad_0C[0];
    if ( result != v0->unk_0D )
    {
        sprite_setAnimation(v0, result);
        result = sprite_loadAnimationData(v0);
    }
    return result;
}


// 0x81189c0
int sub_81189C0()
{
    _BYTE *v0; // r5
    int v1; // r6
    char v2; // r4
    int result; // r0
    char v4; // zf

    *v0 = 1;
    v2 = 0;
    result = sub_8118AB0();
    if ( !v4 )
        v2 = 1;
    *(v1 + 13) = v2;
    return result;
}


// 0x81189d4
int sub_81189D4()
{
    _BYTE *v0; // r5

    *v0 = 35;
    return sub_8118AB0();
}


// 0x81189e0
int sub_81189E0()
{
    Battle *v0; // r5
    int v1; // r6
    int result; // r0

    v0->objFlags = 35;
    *(v1 + 13) = 1;
    v0->pad_0C[0] = 2;
    result = v0->pad_0C[0];
    if ( result != v0->unk_0D )
    {
        sprite_setAnimation(v0, result);
        result = sprite_loadAnimationData(v0);
    }
    return result;
}


// 0x8118a00
int sub_8118A00()
{
    Battle *v0; // r5
    char v1; // r4
    char v2; // zf
    int result; // r0

    v1 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v2 )
        v1 = 35;
    v0->objFlags = v1;
    v0->pad_0C[0] = 2;
    sub_8118AB0();
    result = v0->pad_0C[0];
    if ( result != v0->unk_0D )
    {
        sprite_setAnimation(v0, result);
        result = sprite_loadAnimationData(v0);
    }
    return result;
}


// 0x8118a2c
int sub_8118A2C()
{
    Battle *v0; // r5
    char v1; // r4
    char v2; // zf
    int result; // r0

    v1 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v2 )
        v1 = 35;
    v0->objFlags = v1;
    v0->pad_0C[0] = 0;
    sub_8118AB0();
    result = v0->pad_0C[0];
    if ( result != v0->unk_0D )
    {
        sprite_setAnimation(v0, result);
        result = sprite_loadAnimationData(v0);
    }
    return result;
}


// 0x8118a58
int sub_8118A58()
{
    Battle *v0; // r5
    int v1; // r6
    int result; // r0

    v0->objFlags = 1;
    v0->pad_0C[0] = 4;
    sprite_setCoordinates(136, 18 * *(v1 + 32) + 27);
    result = 3;
    v0->pad_0C[0] = 3;
    if ( v0->unk_0D != 3 )
    {
        sprite_setAnimation(v0, 3u);
        result = sprite_loadAnimationData(v0);
    }
    return result;
}


// 0x8118a88
void __noreturn sub_8118A88()
{
    Battle *v0; // r5
    int v1; // r0

    v0->objFlags = 1;
    v0->pad_0C[0] = 0;
    v1 = v0->pad_0C[0];
    if ( v1 != v0->unk_0D )
    {
        sprite_setAnimation(v0, v1);
        sprite_loadAnimationData(v0);
    }
    sprite_update(v0);
}


// 0x8118aa8
int sub_8118AA8()
{
    return sub_804668A();
}


// 0x8118ab0
signed int sub_8118AB0()
{
    int v0; // r6
    unsigned int v1; // r0
    unsigned int v2; // r7
    char *v3; // r4
    int v4; // ST00_4
    int v5; // r0
    int v6; // ST00_4
    int v7; // r0
    signed int v9; // [sp+4h] [bp-18h]

    v9 = 0;
    v1 = sub_8118B98();
    v2 = v1;
    v3 = &byte_8118B40[2 * *(v0 + 15)];
    v4 = 20 * *(v0 + 40) + *v3;
    v5 = sub_8118320(v4, *(v1 + 12));
    *(v2 + 12) = v5;
    if ( v5 == v4 )
        v9 = 1;
    v6 = 20 * *(v0 + 44) + v3[1];
    v7 = sub_8118320(v6, *(v2 + 14));
    *(v2 + 14) = v7;
    if ( v7 == v6 )
        ++v9;
    return v9;
}


// 0x8118b48
signed int sub_8118B48()
{
    int v0; // r6
    unsigned int v1; // r0
    unsigned int v2; // r7
    int v3; // r0
    int v4; // ST00_4
    int v5; // r0
    signed int v7; // [sp+4h] [bp-18h]

    v7 = 0;
    v1 = sub_8118B98();
    v2 = v1;
    v3 = sub_8118320(136, *(v1 + 12));
    *(v2 + 12) = v3;
    if ( v3 == 136 )
        v7 = 1;
    v4 = 18 * *(v0 + 32) + 27;
    v5 = sub_8118320(v4, *(v2 + 14));
    *(v2 + 14) = v5;
    if ( v5 == v4 )
        ++v7;
    return v7;
}


// 0x8118b98
unsigned int sub_8118B98()
{
    int v0; // r5

    return 16 * (*(v0 + 2) >> 4) + v0;
}


// 0x8118ba4
int sub_8118BA4()
{
    int v0; // r5

    return (*(&off_8118BB8 + *(v0 + 8)))();
}


// 0x8118bc8
void __noreturn sub_8118BC8()
{
    Battle *v0; // r5
    int v1; // r6

    v0->objFlags = 35;
    initGuiSprite_8002770(19, &unk_2021FF0);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(3);
    sub_800306C(&byte_1E0);
    sub_8003060(4);
    sub_800304A(6);
    sprite_setPallete(0);
    v0->currState = 4;
    sprite_setCoordinates(128, 20 * *(v1 + 32) + 27);
    v0->pad_0C[0] = -1;
    v0->unk_0D = -1;
    sub_8118C2C();
}


// 0x8118c2c
void __noreturn sub_8118C2C()
{
    Battle *v0; // r5
    int v1; // r6

    v0->unk_0D = v0->pad_0C[0];
    (*(&off_8118C48 + *(v1 + 2)))();
    sprite_update(v0);
}


// 0x8118c84
signed int sub_8118C84()
{
    _BYTE *v0; // r5
    signed int result; // r0

    result = 1;
    *v0 = 1;
    return result;
}


// 0x8118c8c
int sub_8118C8C()
{
    char *v0; // r5
    int v1; // r6
    char v2; // r4
    char v3; // zf
    int v4; // r0
    unsigned __int8 v5; // vf
    int v6; // r0
    int v7; // r1

    v2 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v3 )
        v2 = 67;
    v4 = sub_813B9B4(*(v1 + 40), *(v1 + 44));
    if ( v3 )
        v2 = 1;
    *v0 = v2;
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if ( !((v6 < 0) ^ v5) )
    {
        v7 = *sub_813B9FC(v6) >> 2;
        if ( v7 != v0[13] )
        {
            v0[12] = v7;
            v0[14] = renderTextGfx_8045F8C(byte_873EA50, v7, byte_2017A00, 100744192);
        }
    }
    return sub_8118CF4();
}


// 0x8118cec
int sub_8118CEC()
{
    return sub_804668A();
}


// 0x8118cf4
int sub_8118CF4()
{
    int v0; // r5
    int v1; // r6
    unsigned int v2; // r7
    char *v3; // r4
    signed int v4; // r0
    signed int v5; // r2
    signed int v6; // r0
    int result; // r0

    v2 = sub_8118D54();
    v3 = &byte_8118D4C[2 * *(v1 + 15)];
    if ( *(v1 + 40) > 0 )
    {
        v4 = *(v1 + 40);
        if ( v4 >= 4 )
            LOWORD(v4) = 4;
    }
    else
    {
        LOWORD(v4) = 1;
    }
    *(v2 + 12) = 20 * v4 + *v3 + 8 * ((8 - *(v0 + 14)) >> 1);
    v5 = 6;
    v6 = *(v1 + 44);
    if ( v6 >= 6 )
    {
        v6 = 4;
        v5 = 16;
    }
    result = 20 * v6 + v3[1] + v5;
    *(v2 + 14) = result;
    return result;
}


// 0x8118d54
unsigned int sub_8118D54()
{
    int v0; // r5

    return 16 * (*(v0 + 2) >> 4) + v0;
}


// 0x8118d60
int sub_8118D60()
{
    int v0; // r5

    return (*(&off_8118D74 + *(v0 + 8)))();
}


// 0x8118d84
void __noreturn sub_8118D84()
{
    Battle *v0; // r5
    int v1; // r6

    v0->objFlags = 35;
    initGuiSprite_8002770(20, &unk_20222F0);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(3);
    sub_800306C(byte_200);
    sub_8003060(4);
    sub_800304A(5);
    sprite_setPallete(0);
    v0->currState = 4;
    sprite_setCoordinates(128, 20 * *(v1 + 32) + 27);
    sub_8118DE0();
}


// 0x8118de0
void __noreturn sub_8118DE0()
{
    Battle *v0; // r5

    (*(&off_8118DF8 + v0->currAction))();
    sprite_update(v0);
}


// 0x8118dfc
int sub_8118DFC()
{
    int v0; // r6

    sub_8118E24();
    return sprite_setUnk0x2c(*(&off_8118E14 + *(v0 + 48)));
}


// 0x8118e1c
int sub_8118E1C()
{
    return sub_804668A();
}


// 0x8118e24
int sub_8118E24()
{
    int v0; // r6
    unsigned int v1; // r7
    char *v2; // r4
    signed int v3; // r0
    signed int v4; // r2
    signed int v5; // r0
    int result; // r0

    v1 = sub_8118E78();
    v2 = &byte_8118E70[2 * *(v0 + 15)];
    if ( *(v0 + 40) > 0 )
    {
        v3 = *(v0 + 40);
        if ( v3 >= 6 )
            LOWORD(v3) = 5;
    }
    else
    {
        LOWORD(v3) = 1;
    }
    *(v1 + 12) = 20 * v3 + *v2;
    v4 = 20;
    v5 = *(v0 + 44);
    if ( v5 >= 5 )
        v4 = -30;
    result = 20 * v5 + v2[1] + v4;
    *(v1 + 14) = result;
    return result;
}


// 0x8118e78
unsigned int sub_8118E78()
{
    int v0; // r5

    return 16 * (*(v0 + 2) >> 4) + v0;
}


// 0x8118e84
int sub_8118E84()
{
    int v0; // r5

    return (*(&off_8118E98 + *(v0 + 8)))();
}


// 0x8118ea8
void __noreturn sub_8118EA8()
{
    Battle *v0; // r5
    int v1; // r6

    v0->objFlags = 35;
    initGuiSprite_8002770(23, &unk_20226F0);
    sprite_setAnimation(v0, *(v1 + 15));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(0);
    sub_800306C(byte_220);
    sub_8003060(4);
    sub_800304A(4);
    sprite_setPallete(0);
    sprite_setObjWindowMode();
    v0->currState = 4;
    sprite_setCoordinates(byte_8118F0C[2 * *(v1 + 15)], byte_8118F0C[2 * *(v1 + 15) + 1]);
    sub_8118F14();
}


// 0x8118f14
void __noreturn sub_8118F14()
{
    Battle *v0; // r5

    sprite_update(v0);
}


// 0x8118f1c
int sub_8118F1C()
{
    return sub_804668A();
}


// 0x8118f24
int sub_8118F24()
{
    int v0; // r5

    return (*(&off_8118F38 + *(v0 + 8)))();
}


// 0x8118f44
void __noreturn sub_8118F44()
{
    int v0; // r5
    u8 v1; // r0

    *v0 = 35;
    (loc_8002774)(8, &unk_201E284);
    v1 = *(v0 + 4);
    *(v0 + 12) = v1;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(0);
    sub_81190E0();
    sub_8003060(4);
    sprite_setCoordinates(*&byte_8118FA4[4 * *(v0 + 5)], *&byte_8118FA4[4 * *(v0 + 5) + 2]);
    *(v0 + 8) = 4;
    sub_8118FC0();
}


// 0x8118fc0
void __noreturn sub_8118FC0()
{
    int v0; // r5

    (*(&off_8118FD8 + *(v0 + 6)))();
    sprite_update(v0);
}


// 0x8118fe0
void sub_8118FE0()
{
    ;
}


// 0x8118fe4
void sub_8118FE4()
{
    int v0; // r5

    (*(&off_8119010 + *(v0 + 9)))();
    JUMPOUT(loc_8118FF2);
}


// 0x8119018
int __noreturn sub_8119018()
{
    int v0; // r5
    int v1; // r1
    char (*v2)[4]; // r2
    int v3; // r3
    unsigned int v4; // r0
    unsigned __int8 *v5; // r0
    int v6; // r2
    int v7; // r3

    *(v0 + 9) = 4;
    v1 = *(v0 + 3) - 7;
    v2 = (&off_811905C)[v1];
    v3 = *&byte_811906C[4 * v1];
    v4 = sub_8137884(v1);
    v5 = sub_804A24C(v4 >> 4);
    return sub_3006B94(v5, sub_3006B94, v6, v7);
}


// 0x8119084
signed int __noreturn sub_8119084()
{
    int v0; // r5
    int v1; // r0
    int v2; // r6
    signed int v3; // r4
    signed int v4; // r7
    signed int result; // r0
    unsigned __int8 v6; // vf

    v1 = 4 * (*(v0 + 3) - 7);
    v2 = *&byte_81190CC[v1];
    v3 = *&byte_81190B8[v1];
    v4 = 8;
    do
    {
        sub_802FE28(v3, v2, 0, 5);
        v3 += 0x80000;
        result = 2;
        LOWORD(v2) = v2 + 2;
        v6 = __OFSUB__(v4--, 1);
    }
    while ( !(((v4 < 0) ^ v6) | (v4 == 0)) );
    return result;
}


// 0x81190d8
int sub_81190D8()
{
    return sub_804668A();
}


// 0x81190e0
int sub_81190E0()
{
    int v0; // r5

    return sub_800304A(*(off_81190F4 + *(v0 + 4)));
}


// 0x81190f8
signed int __fastcall sub_81190F8(int a1)
{
    signed int v1; // r4
    char v2; // zf

    v1 = 0;
    getStructFrom2008450(a1);
    if ( !v2 && sprite_getFrameParameters() & 0xC0 )
        v1 = 1;
    return v1;
}


// 0x8119118
int __fastcall sub_8119118(int a1)
{
    int result; // r0
    int v2; // r1
    char v3; // zf

    result = getStructFrom2008450(a1);
    if ( !v3 )
    {
        result = 8;
        *(v2 + 8) = 8;
    }
    return result;
}


// 0x8119364
int sub_8119364()
{
    int v0; // r5

    return (*(&off_8119378 + *(v0 + 8)))();
}


// 0x8119384
void __fastcall __noreturn sub_8119384(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r1
    int v7; // r4

    if ( *(v4 + 4) & 0x10 )
    {
        *(v4 + 4) &= 0xEFu;
        *(v4 + 10) = 1;
    }
    v5 = 131;
    v6 = *(v4 + 4);
    if ( v6 == 1 )
        v5 = 35;
    *v4 = v5;
    if ( !v6 )
        sub_81195E4(v5, 0, 16, a4);
    v7 = *(v4 + 4);
    initGuiSprite_8002770(*(&dword_8119624 + v7), off_81191B4[*(v4 + 5)][v7]);
    sprite_setAnimation(v4, *(&dword_811963C + v7));
    sprite_loadAnimationData(v4);
    sprite_noShadow(v4);
    sprite_setPallete(0);
    sub_8002E14(*(off_8119208[*(v4 + 5)] + v7));
    sub_800306C(off_8119128[*(v4 + 5)][v7]);
    sub_800304A(*(off_8119170[*(v4 + 5)] + v7));
    sub_8003060(*(off_8119228[*(v4 + 5)] + v7));
    if ( !v7 )
        sub_8002FEC(off_811924C[*(v4 + 5)]);
    *(v4 + 8) = 4;
    *(v4 + 16) = 255;
    *(v4 + 13) = -1;
    *(v4 + 26) = 255;
    *(v4 + 19) = 0;
    sub_81196A0();
}


// 0x8119438
int __fastcall sub_8119438(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    _DWORD *v6; // r0
    _DWORD *v7; // r7
    int v9; // ST04_4
    int v10; // ST08_4
    int v11; // r0
    char *v12; // r1
    signed int v13; // r2
    signed int v14; // r6
    int v15; // ST00_4
    char *v16; // ST04_4
    signed int v17; // ST08_4
    int v18; // r3
    signed int v19; // r0
    int v20; // r2
    int *v21; // r0
    signed int v22; // r1
    u32 *v23; // [sp+0h] [bp-18h]

    v5 = *(v4 + 14);
    if ( !*(v4 + 14) )
        return sub_81195E4(v5, a2, a3, a4);
    v6 = getChip8021DA8(v5);
    v7 = v6;
    v5 = v6[9];
    if ( !v5 )
        return sub_81195E4(v5, a2, a3, a4);
    v23 = (32 * *off_8119128[*(v4 + 5)] + 100728832);
    v9 = v5;
    v10 = 32 * *off_8119128[*(v4 + 5)] + 100728832;
    ZeroFillByEightWords(v23, 2048);
    v11 = v9;
    v12 = v10;
    v13 = 224;
    v14 = 0;
    do
    {
        v15 = v11;
        v16 = v12;
        v17 = v13;
        (loc_8000AC8)();
        v13 = v17;
        v11 = v15 + 224;
        v12 = &byte_100[v16];
        ++v14;
    }
    while ( v14 < 6 );
    CopyWords(v7[10], &byte_3001550[32 * *off_8119170[*(v4 + 5)]], 0x20u);
    (loc_8000AC8)(&dword_86E2E98[16 * *(v4 + 12)], v23 + 512, 64);
    CopyWords(byte_86E587C, &byte_3001550[32 * *off_8119304[*(v4 + 5)]], 0x20u);
    (loc_8000AC8)(&dword_86E3B9C[32 * *(v7 + 6)], v23 + 528, 128);
    CopyWords(dword_86E43DC, &byte_3001550[32 * *off_8119330[*(v4 + 5)]], 0x20u);
    v19 = *(v7 + 13);
    if ( *(v7 + 9) & 0x10 )
    {
        sub_8119594(43690, v23, 16, v18);
    }
    else
    {
        v20 = 2;
        if ( *(v7 + 9) & 2 )
        {
            if ( v19 > &byte_3E8 )
            {
                if ( *(v4 + 10) && sSubmenu.unk_00 == 24 && sSubmenu.jo_01 == 28 )
                    v19 = sub_8010CE0(*(v4 + 14));
                else
                    v19 = sub_8010C76(*(v4 + 14));
            }
            sub_8119594(v19, v23, v20, v18);
        }
        else
        {
            ZeroFillByEightWords(v23 + 560, byte_100);
        }
    }
    v21 = TextScriptChipDesc1;
    v22 = *(v4 + 14);
    if ( v22 <= 255 )
        v21 = TextScriptChipDescriptions0;
    return renderTextGfx_8045F8C(v21, v22, dword_811919C[*(v4 + 5)], 32 * off_8119128[*(v4 + 5)][2] + 100728832);
}


// 0x8119594
void __fastcall sub_8119594(int a1, int a2, int a3, int a4)
{
    u32 *v4; // r1
    char *v5; // r7
    signed int v6; // r6
    unsigned int v7; // r4
    int v8; // r0
    unsigned __int8 v9; // vf
    int v10; // [sp+0h] [bp-18h]

    v4 = (a2 + 2240);
    v5 = &loc_C0 + v4;
    v10 = a1;
    ZeroFillByEightWords(v4, &loc_C0);
    if ( v10 == 43690 )
    {
        v6 = 3;
        v7 = 43690;
    }
    else
    {
        v7 = sub_8000C00(v10);
        v6 = sub_8000C5C(v7);
    }
    do
    {
        v8 = v7 & 0xF;
        v7 >>= 4;
        CopyByEightWords(&dword_86E411C[16 * v8], v5, 0x40u);
        v5 -= 64;
        v9 = __OFSUB__(v6--, 1);
    }
    while ( !(((v6 < 0) ^ v9) | (v6 == 0)) );
}


// 0x81195e4
__int64 __fastcall sub_81195E4(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    __int64 v5; // ST00_8

    LODWORD(v5) = a1;
    ZeroFillByEightWords((32 * *off_8119128[*(v4 + 5)] + 100728832), 2560);
    HIDWORD(v5) = 32 * off_8119128[*(v4 + 5)][2] + 100728832;
    ZeroFillByEightWords(HIDWORD(v5), 1920);
    return v5;
}


// 0x81196a0
void sub_81196A0()
{
    int v0; // r5

    (*(&off_81196B8 + *(v0 + 4)))();
    sprite_update(v0);
}


// 0x81196c4
int sub_81196C4()
{
    int v0; // r5

    (*(&off_81196DC + *(v0 + 9)))();
    return sub_81198E8();
}


// 0x81196f0
signed int sub_81196F0()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char v5; // zf
    signed int result; // r0
    int v7; // r4
    int v8; // r6
    int v9; // r3

    v1 = sub_8119880();
    if ( v5 )
    {
        v7 = *(v0 + 14);
        v8 = *(v0 + 12);
        v9 = *(v0 + 24);
        if ( v9 != *(v0 + 26) || v7 != *(v0 + 16) || (result = *(v0 + 13), v8 != result) )
        {
            *(v0 + 26) = v9;
            *(v0 + 16) = v7;
            *(v0 + 13) = v8;
            result = 4;
            *(v0 + 9) = 4;
        }
    }
    else
    {
        sub_8119438(v1, v2, v3, v4);
        *(v0 + 16) = *(v0 + 14);
        *(v0 + 13) = *(v0 + 12);
        result = *(v0 + 24);
        *(v0 + 26) = result;
    }
    return result;
}


// 0x8119730
signed int sub_8119730()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 18) = -112;
    sprite_makeScalable();
    sprite_setScaleParameters(0, 144, 64);
    result = 8;
    *(v0 + 9) = 8;
    return result;
}


// 0x811974c
signed int sub_811974C()
{
    _BYTE *v0; // r5
    signed int result; // r0

    *v0 &= 0xFDu;
    result = 12;
    v0[9] = 12;
    return result;
}


// 0x811975c
int __fastcall sub_811975C(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    sub_8119438(a1, a2, a3, a4);
    *(v4 + 9) = 16;
    return sub_811976C();
}


// 0x811976c
int sub_811976C()
{
    _BYTE *v0; // r5
    int v1; // r0

    *v0 |= 2u;
    v1 = v0[18] - 48;
    v0[18] = v1;
    if ( v1 > 64 )
        return sprite_setScaleParameters(0, v1, 64);
    v0[18] = -64;
    v0[9] = 0;
    return sprite_makeUnscalable();
}


// 0x811979c
int sub_811979C()
{
    int v0; // r5

    return (*(&off_81197B0 + *(v0 + 9)))();
}


// 0x81197b4
void sub_81197B4()
{
    int v0; // r5
    char v1; // zf
    __int16 v2; // r4
    char v3; // r6
    int v4; // r0
    _BYTE *v5; // r0

    sub_81198B0();
    if ( !v1 || !(**(v0 + 20) & 2) )
    {
        v2 = *(v0 + 14);
        v3 = *(v0 + 12);
        v4 = *(v0 + 19);
        if ( !*(v0 + 19) )
        {
            v5 = getChip8021DA8(*(v0 + 14));
            if ( v5[9] & 0x20 )
                v4 = 3;
            else
                v4 = byte_81197F8[v5[7]];
        }
        sprite_setPallete(v4);
        *(v0 + 16) = v2;
        *(v0 + 13) = v3;
    }
}


// 0x8119800
void sub_8119800()
{
    ;
}


// 0x8119804
int sub_8119804()
{
    return sub_804668A();
}


// 0x811980c
int __fastcall sub_811980C(__int16 a1, char a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r7
    int result; // r0
    int v7; // r1
    char v8; // zf
    __int16 v9; // [sp+0h] [bp-24h]
    char v10; // [sp+4h] [bp-20h]
    int v11; // [sp+Ch] [bp-18h]

    v9 = a1;
    v10 = a2;
    v11 = a4;
    v4 = a3;
    v5 = a3 + 3;
    do
    {
        result = getStructFrom2008450(v4);
        if ( !v8 )
        {
            *(v7 + 14) = v9;
            *(v7 + 12) = v10;
            result = v11;
            *(v7 + 24) = v11;
        }
        ++v4;
    }
    while ( v4 < v5 );
    return result;
}


// 0x811983c
int __fastcall sub_811983C(int a1, int a2)
{
    int result; // r0
    int v3; // r1
    char v4; // zf
    int v5; // [sp+0h] [bp-18h]

    v5 = a1;
    result = getStructFrom2008450(a2);
    if ( !v4 )
    {
        result = v5;
        *(v3 + 19) = v5;
    }
    return result;
}


// 0x8119854
int __fastcall sub_8119854(int a1, __int16 a2, int a3)
{
    int v3; // r4
    int v4; // r7
    int result; // r0
    char v6; // zf
    int v7; // [sp+0h] [bp-20h]
    __int16 v8; // [sp+4h] [bp-1Ch]

    v7 = a1;
    v8 = a2;
    v3 = a3;
    v4 = a3 + 3;
    do
    {
        result = getStructFrom2008450(v3);
        if ( !v6 )
            result = sprite_setCoordinates(v7, v8);
        ++v3;
    }
    while ( v3 < v4 );
    return result;
}


// 0x8119880
int sub_8119880()
{
    char v0; // zf
    int v1; // r5
    int result; // r0
    MenuControl *v3; // r6
    int v4; // r1

    result = byte_811935C[*(v1 + 5)];
    if ( !v0 )
    {
        v3 = &sSubmenu;
        sub_81355D8();
        if ( !v0 )
            v3 = sub_81312F4();
        result = v3->unk_0E;
        v4 = v3->unk_0F;
    }
    return result;
}


// 0x81198b0
signed int sub_81198B0()
{
    int v0; // r5
    int v1; // r0
    MenuControl *v2; // r6
    char v3; // zf
    signed int result; // r0
    int v5; // r1

    v1 = *(v0 + 5);
    if ( v1 == 1 || v1 == 2 || v1 == 3 || v1 == 4 || v1 == 5 )
        return 1;
    v2 = &sSubmenu;
    sub_81355D8();
    if ( !v3 )
        v2 = sub_81312F4();
    result = v2->unk_0E;
    v5 = v2->unk_0F;
    return result;
}


// 0x81198e8
int sub_81198E8()
{
    int v0; // r5
    int v1; // r0

    v1 = 0;
    if ( *(v0 + 12) == 255 )
        v1 = 0x40000000;
    return sprite_setUnk0x2c(v1);
}


// 0x811997c
int sub_811997C()
{
    int v0; // r5

    return (*(&off_8119990 + *(v0 + 8)))();
}


// 0x81199a0
void __noreturn sub_81199A0()
{
    int v0; // r5
    int v1; // r6

    *v0 = 1;
    *(v0 + 12) = 0;
    *(v0 + 16) = 0;
    *(v0 + 20) = 0;
    *(v0 + 24) = 0;
    *(v0 + 8) = 4;
    *(v0 + 12) = ~*(v1 + 28);
    sub_81199C0();
}


// 0x81199c0
void __noreturn sub_81199C0()
{
    int v0; // r6

    if ( !*(v0 + 19) && *(v0 + 28) == 255 )
    {
        *(v0 + 28) = 255;
        sub_8119A48();
    }
    sub_81199E4();
}


// 0x81199dc
int sub_81199DC()
{
    return sub_804668A();
}


// 0x81199e4
int __noreturn sub_81199E4()
{
    int v0; // r5
    int v1; // r6
    int v2; // r1
    int result; // r0
    int v4; // [sp+0h] [bp-1Ch]
    int v5; // [sp+4h] [bp-18h]

    *(v0 + 16) = 0;
    v2 = 10;
    if ( *(v0 + 4) )
        v2 = *(v1 + 28);
    renderTextGfx_8045F8C(&eTextScript201D280, v2, byte_201B200, 100710400);
    *(v4 + 20) = renderTextGfx_8045F8C(byte_873EA50, *(v5 + 28), byte_201B480, 100711040);
    result = 0;
    *(v4 + 24) = 0;
    return result;
}


// 0x8119a48
int __noreturn sub_8119A48()
{
    int v0; // r5
    int v1; // r2
    int v2; // r1
    int v3; // r4
    int v4; // r1
    char v5; // zf
    int result; // r0
    unsigned int v7; // [sp-8h] [bp-1Ch]

    v1 = 40;
    v2 = *(v0 + 16) + 2;
    *(v0 + 16) = v2;
    if ( v2 < 4 * *(v0 + 20) )
    {
        v1 = v2;
        v3 = *(v0 + 24) + 1;
        *(v0 + 24) = v3;
        if ( !(v3 & 3) )
        {
            chatbox_check_eFlags2009F38(128);
            if ( v5 )
                PlaySoundEffect(126, v4, v1);
        }
    }
    v7 = v1;
    CopyBackgroundTiles(18, 13, 0, byte_8119904, 10, &byte_0[2]);
    result = *(v0 + 4);
    if ( !*(v0 + 4) )
        sub_8119AA0(18, 15, v7 >> 2);
    return result;
}


// 0x8119aa0
int __fastcall __spoils<R0,R2,R3,R12> __noreturn sub_8119AA0(int result, int a2, int a3)
{
    u16 *v3; // r3
    int v4; // r4
    int v5; // ST08_4
    int v6; // [sp-14h] [bp-28h]
    u16 *v7; // [sp-8h] [bp-1Ch]
    int v8; // [sp-4h] [bp-18h]

    v3 = byte_811992C;
    v4 = 0;
    do
    {
        v6 = result;
        v5 = a3;
        v7 = v3;
        v8 = v4;
        CopyBackgroundTiles(result, a2, 0, v3, 1, &byte_0[2]);
        result = v6;
        a3 = v5 - 1;
        if ( v5 <= 1 )
            break;
        result = v6 + 1;
        v3 = v7 + 2;
        ++v4;
    }
    while ( v8 + 1 < 10 );
    return result;
}


// 0x8119acc
int sub_8119ACC()
{
    int v0; // r5

    return (*(&off_8119AE0 + *(v0 + 8)))();
}


// 0x8119aec
void __noreturn sub_8119AEC()
{
    Battle *v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r4
    char v4; // zf
    int v5; // r0
    int v6; // r0

    v0->objFlags = 35;
    v1 = getPETNaviSelect();
    if ( v1 )
    {
        v2 = *&byte_8119B74[4 * v1];
    }
    else
    {
        v3 = GetCurPETNaviStatsByte(0);
        notZero_eByte200AD04();
        if ( !v4 && (TestEventFlagFromImmediate(1, 99), v4) )
            v5 = v3 + 12;
        else
            v5 = 0;
        v2 = *&byte_8119B74[4 * v5];
    }
    initGuiSprite_8002770(v2, byte_8119B74);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v6 = sub_8119C08();
    sprite_setPallete(v6);
    sub_8002E14(2);
    sub_800306C(0);
    sub_800304A(0);
    sub_8003060(3);
    v0->currState = 4;
    sub_8119BD0(4);
}


// 0x8119bd0
void __fastcall __noreturn sub_8119BD0(int a1)
{
    Battle *v1; // r5
    int v2; // r0

    v2 = sub_8119C08();
    sprite_setPallete(v2);
    sprite_update(v1);
}


// 0x8119be0
int sub_8119BE0()
{
    return sub_804668A();
}


// 0x8119be8
int __fastcall sub_8119BE8(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-1Ch]
    __int16 v6; // [sp+4h] [bp-18h]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x8119c08
int sub_8119C08()
{
    char v0; // zf
    int v1; // r0
    int v2; // r0

    if ( getPETNaviSelect() )
        return sub_8119C58(0);
    notZero_eByte200AD04();
    if ( v0 )
    {
        v2 = GetCurPETNaviStatsByte(0);
        if ( v2 )
            v1 = 5 * v2 + 18;
        else
            v1 = byte_80203EA[0];
    }
    else
    {
        v1 = 0;
    }
    return sub_8119C58(v1);
}


// 0x8119c58
int __fastcall sub_8119C58(int a1)
{
    int v1; // r7
    int v2; // r0
    int result; // r0

    v1 = a1;
    v2 = getPETNaviSelect();
    if ( GetCurPETNaviStatsByte(v2) == 255 )
        result = v1 + 4;
    else
        result = v1;
    return result;
}


// 0x8119c74
int __fastcall sub_8119C74(int a1, int a2)
{
    int result; // r0
    _BYTE *v3; // r1
    char v4; // zf
    int v5; // [sp+0h] [bp-18h]

    v5 = a1;
    result = getStructFrom2008450(a2);
    if ( !v4 )
    {
        result = 35;
        if ( !v5 )
            result = 1;
        *v3 = result;
    }
    return result;
}


// 0x8119c94
int sub_8119C94()
{
    int v0; // r0
    int v1; // r4
    char v2; // zf
    int v3; // r4
    int result; // r0
    int v5; // r1

    v0 = getPETNaviSelect();
    if ( v0 )
    {
        v1 = v0 + 11;
    }
    else
    {
        v1 = GetCurPETNaviStatsByte(0);
        TestEventFlagFromImmediate(1, 99);
        if ( !v2 )
            v1 += 23;
    }
    v3 = 4 * v1;
    result = *&byte_8119CCC[v3];
    v5 = *&byte_8119CCC[v3 + 2];
    return result;
}


// 0x8119d54
int sub_8119D54()
{
    int v0; // r5

    return (*(&off_8119D68 + *(v0 + 8)))();
}


// 0x8119d74
void __noreturn sub_8119D74()
{
    int v0; // r5
    void *v1; // r1

    *v0 = -93;
    v1 = &unk_201D774;
    if ( *(v0 + 4) )
        v1 = &unk_2024A00;
    initGuiSprite_8002770(45, v1);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002FEC(0);
    sub_8002E14(2);
    sub_800306C(32);
    sub_8003060(3);
    *(v0 + 8) = 4;
    sub_8119DE8();
}


// 0x8119de8
void __noreturn sub_8119DE8()
{
    Battle *v0; // r5
    int v1; // r1
    _BYTE *v2; // r6
    char v3; // r4
    char v4; // zf
    int v5; // r0
    unsigned int v6; // r0

    getStructFrom2008450(0);
    v2 = v1;
    sprite_setCoordinates(*(v1 + 44), *(v1 + 46));
    v3 = *v2 | 0x80;
    TestEventFlagFromImmediate(23, 32);
    if ( v4 )
        v3 = 1;
    v0->objFlags = v3;
    v5 = sprite_getMosaicScalingParameters(v2);
    (sprite_setAlpha)(v5);
    v6 = sub_8002F3E(v2);
    (loc_8002F02)(v6);
    sprite_update(v0);
}


// 0x8119e38
int sub_8119E38()
{
    return sub_804668A();
}


// 0x8119e40
int sub_8119E40()
{
    int v0; // r5

    return (*(&off_8119E54 + *(v0 + 8)))();
}


// 0x8119e60
void __fastcall __noreturn sub_8119E60(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int v6; // r1
    int v7; // r4

    v5 = 131;
    v6 = *(v4 + 4);
    if ( v6 == 1 )
        v5 = 35;
    *v4 = v5;
    if ( !v6 )
        sub_8119F88(v5, 0, a3, a4);
    v7 = *(v4 + 4);
    initGuiSprite_8002770(*(&dword_8119FC8 + v7), (&off_8119FF8)[*(v4 + 5)][v7]);
    sprite_setAnimation(v4, *(&dword_811A01C + v7));
    sprite_loadAnimationData(v4);
    sprite_noShadow(v4);
    sprite_setPallete(0);
    sub_8002E14(LOBYTE(dword_811A024[*(v4 + 5)]));
    sub_800306C((&off_8119FD0)[*(v4 + 5)][v7]);
    sub_800304A(*((&off_811A010)[*(v4 + 5)] + v7));
    sub_8003060(*((&off_811A02C)[*(v4 + 5)] + v7));
    *(v4 + 8) = 4;
    *(v4 + 16) = 255;
    *(v4 + 13) = -1;
    *(v4 + 26) = 255;
    sub_811A0A4();
}


// 0x8119eec
int __fastcall sub_8119EEC(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0
    int *v7; // r0
    signed int v8; // r1
    int v9; // [sp-4h] [bp-1Ch]

    v5 = *(v4 + 14);
    if ( !*(v4 + 14) )
        return sub_8119F88(v5, a2, a3, a4);
    v9 = *(v4 + 14);
    sub_811A268();
    v5 = v9;
    if ( !a3 )
    {
        if ( a2 )
            return sub_8119F88(v5, a2, a3, a4);
    }
    v5 = *(getChip8021DA8(v9) + 9);
    if ( !v5 )
        return sub_8119F88(v5, a2, a3, a4);
    renderTextGfx_8045F8C(
        &unk_2028000,
        5 * (*(v4 + 14) - dword_140) + *(v4 + 12),
        *(&off_8119FF0 + *(v4 + 5)),
        32 * *(&off_8119FD0)[*(v4 + 5)] + 100728832);
    v7 = TextScriptChipDesc1;
    v8 = *(v4 + 14);
    if ( v8 <= 255 )
        v7 = TextScriptChipDescriptions0;
    return renderTextGfx_8045F8C(v7, v8, *(&off_8119FE8 + *(v4 + 5)), 32 * (&off_8119FD0)[*(v4 + 5)][2] + 100728832);
}


// 0x8119f88
__int64 __fastcall sub_8119F88(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    __int64 v5; // ST00_8

    LODWORD(v5) = a1;
    ZeroFillByEightWords((32 * *(&off_8119FD0)[*(v4 + 5)] + 100728832), 2560);
    HIDWORD(v5) = 32 * (&off_8119FD0)[*(v4 + 5)][2] + 100728832;
    ZeroFillByEightWords(HIDWORD(v5), 1920);
    return v5;
}


// 0x811a0a4
void sub_811A0A4()
{
    int v0; // r5

    (*(&off_811A0BC + *(v0 + 4)))();
    sprite_update(v0);
}


// 0x811a0cc
int sub_811A0CC()
{
    int v0; // r5

    return (*(&off_811A0E0 + *(v0 + 9)))();
}


// 0x811a0f4
signed int sub_811A0F4()
{
    int v0; // r5
    int v1; // r4
    int v2; // r6
    int v3; // r3
    signed int result; // r0

    v1 = *(v0 + 14);
    v2 = *(v0 + 12);
    v3 = *(v0 + 24);
    if ( v3 != *(v0 + 26) || v1 != *(v0 + 16) || (result = *(v0 + 13), v2 != result) )
    {
        *(v0 + 26) = v3;
        *(v0 + 16) = v1;
        *(v0 + 13) = v2;
        result = 4;
        *(v0 + 9) = 4;
    }
    return result;
}


// 0x811a11c
signed int sub_811A11C()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 18) = -112;
    sprite_makeScalable();
    sprite_setScaleParameters(0, 144, 64);
    result = 8;
    *(v0 + 9) = 8;
    return result;
}


// 0x811a138
signed int sub_811A138()
{
    _BYTE *v0; // r5
    signed int result; // r0

    *v0 &= 0xFDu;
    result = 12;
    v0[9] = 12;
    return result;
}


// 0x811a148
int __fastcall sub_811A148(int a1, int a2, int a3, int a4)
{
    int v4; // r5

    if ( !*(v4 + 4) )
        sub_8119EEC(*(v4 + 4), a2, a3, a4);
    *(v4 + 9) = 16;
    return sub_811A160();
}


// 0x811a160
int sub_811A160()
{
    _BYTE *v0; // r5
    int v1; // r0

    *v0 |= 2u;
    v1 = v0[18] - 32;
    v0[18] = v1;
    if ( v1 > 64 )
        return sprite_setScaleParameters(0, v1, 64);
    v0[18] = -64;
    v0[9] = 0;
    return sprite_makeUnscalable();
}


// 0x811a190
int sub_811A190()
{
    int v0; // r5

    (*(&off_811A1AC + *(v0 + 9)))();
    sub_811A29C();
    return sub_811A2EC();
}


// 0x811a1b0
void sub_811A1B0()
{
    int v0; // r5
    char v1; // zf
    __int16 v2; // r4
    char v3; // r6
    unsigned __int8 *v4; // r0

    sub_811A24C();
    if ( !v1 || !(**(v0 + 20) & 2) )
    {
        v2 = *(v0 + 14);
        v3 = *(v0 + 12);
        v4 = getChip8021DA8(*(v0 + 14));
        sprite_setPallete(byte_811A1E0[v4[7]]);
        *(v0 + 16) = v2;
        *(v0 + 13) = v3;
    }
}


// 0x811a1e8
void sub_811A1E8()
{
    ;
}


// 0x811a1ec
int sub_811A1EC()
{
    return sub_804668A();
}


// 0x811a1f4
int __fastcall sub_811A1F4(__int16 a1, char a2, int a3, int a4)
{
    signed int v4; // r4
    int result; // r0
    int v6; // r1
    char v7; // zf
    __int16 v8; // [sp+0h] [bp-18h]
    char v9; // [sp+4h] [bp-14h]
    int v10; // [sp+Ch] [bp-Ch]

    v8 = a1;
    v9 = a2;
    v10 = a4;
    v4 = a3;
    do
    {
        result = getStructFrom2008450(v4);
        if ( !v7 )
        {
            *(v6 + 14) = v8;
            *(v6 + 12) = v9;
            result = v10;
            *(v6 + 24) = v10;
        }
        ++v4;
    }
    while ( v4 < 4 );
    return result;
}


// 0x811a220
int __fastcall sub_811A220(int a1, __int16 a2, int a3)
{
    int v3; // r4
    int v4; // r7
    int result; // r0
    char v6; // zf
    int v7; // [sp+0h] [bp-20h]
    __int16 v8; // [sp+4h] [bp-1Ch]

    v7 = a1;
    v8 = a2;
    v3 = a3;
    v4 = a3 + 4;
    do
    {
        result = getStructFrom2008450(v3);
        if ( !v6 )
            result = sprite_setCoordinates(v7, v8);
        ++v3;
    }
    while ( v3 < v4 );
    return result;
}


// 0x811a24c
int sub_811A24C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 5);
    if ( result != 2 && result != 3 )
        result = sSubmenu.unk_0E;
    return result;
}


// 0x811a268
int sub_811A268()
{
    MenuControl *v0; // r6
    int *v1; // r3
    int result; // r0
    int v3; // r1
    int v4; // r2

    v0 = &sSubmenu;
    if ( sSubmenu.unk_00 != 8 )
        v0 = &eT4BattleObjects[3872];
    v1 = &dword_201FC20[LOWORD(v0->unk_40) + v0->unk_3C];
    result = *v1;
    v3 = *(v1 + 2);
    v4 = *(v1 + 3);
    return result;
}


// 0x811a29c
int sub_811A29C()
{
    int v0; // r0
    int v1; // r1
    int v2; // r2
    char v3; // r4
    int v4; // r0
    int result; // r0
    int v6; // r0

    v0 = sub_811A268();
    if ( v0 && (v2 || !v1) )
    {
        v3 = byte_8124B1C[v0 - dword_140];
        v4 = sprite_getUnk0x2c();
        result = sprite_setUnk0x2c((v4 | 0x7E) & ~(0x40u >> v3));
    }
    else
    {
        v6 = sprite_getUnk0x2c();
        result = sprite_setUnk0x2c(v6 & 0xFFFFFF81 | 0x3E);
    }
    return result;
}


// 0x811a2ec
int sub_811A2EC()
{
    int v0; // r1
    int v1; // r2
    char v2; // r4
    int v3; // r0
    int result; // r0
    int v5; // r0

    if ( sub_811A268() && (v1 || !v0) )
    {
        v2 = v1 + 1;
        v3 = sprite_getUnk0x2c();
        result = sprite_setUnk0x2c((v3 | 0x1FC0) & ~(0x1000u >> v2));
    }
    else
    {
        v5 = sprite_getUnk0x2c();
        result = sprite_setUnk0x2c(v5 & 0xFFFFE03F | 0xF80);
    }
    return result;
}


// 0x811a338
int sub_811A338()
{
    int v0; // r5

    return (*(&off_811A34C + *(v0 + 8)))();
}


// 0x811a358
void __noreturn sub_811A358()
{
    int v0; // r5

    *(v0 + 8) = 4;
    sub_811A3AC();
}


// 0x811a370
void __noreturn sub_811A370()
{
    Battle *v0; // r5
    int v1; // r0
    int v2; // r0

    v1 = v0->pad_0C[0] + 1;
    v0->pad_0C[0] = v1;
    if ( v1 >= 5 )
    {
        v0->pad_0C[0] = 0;
        v2 = v0->unk_0D + 1;
        if ( v2 >= 3 )
            v2 = 0;
        v0->unk_0D = v2;
        sprite_setPallete(*(&dword_811A3A0 + v2));
    }
    sprite_update(v0);
}


// 0x811a3a4
int sub_811A3A4()
{
    return sub_804668A();
}


// 0x811a3ac
int __noreturn sub_811A3AC()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    initGuiSprite_8002770(40, &unk_201D700);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(0);
    sub_800304A(8);
    return sub_8003060(3);
}


// 0x811a414
int sub_811A414()
{
    int v0; // r5

    return (*(&off_811A428 + *(v0 + 8)))();
}


// 0x811a434
void __noreturn sub_811A434()
{
    int v0; // r5
    int v1; // r4
    char *v2; // r7
    u8 v3; // r0

    *v0 = 35;
    v1 = 36;
    v2 = byte_20231A0;
    if ( sSubmenu.jo_01 == 28 )
        v2 = byte_20231A0;
    if ( *(v0 + 4) )
    {
        v1 = 35;
        v2 = eGuiSprite2022AA0;
        if ( sSubmenu.jo_01 == 28 )
            v2 = eGuiSprite2022AA0;
    }
    initGuiSprite_8002770(v1, v2);
    v3 = *(v0 + 5);
    *(v0 + 12) = v3;
    sprite_setAnimation(v0, v3);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(*&byte_811A4BC[4 * *(v0 + 4)]);
    sub_800304A(*(&off_811A4D8 + *(v0 + 4)));
    sub_8003060(3);
    sub_811A5BC();
    if ( *(v0 + 4) )
        sub_811A640();
    *(v0 + 8) = 4;
    sub_811A4DC();
}


// 0x811a4dc
void sub_811A4DC()
{
    int v0; // r5

    (*(&off_811A4F4 + *(v0 + 4)))();
    sprite_update(v0);
}


// 0x811a4fc
void sub_811A4FC()
{
    ;
}


// 0x811a500
int sub_811A500()
{
    int v0; // r5

    return (*(&off_811A514 + *(v0 + 7)))();
}


// 0x811a51c
signed int sub_811A51C()
{
    int v0; // r5
    int v1; // r7
    signed int v2; // r6
    int v3; // r0
    int v4; // r1
    int v5; // r1
    signed int result; // r0

    v1 = 0;
    v2 = 0;
    do
    {
        v3 = sprite_getCoordinates();
        v5 = v4 - 9;
        result = v3 - 32 + 8 * v1;
        if ( result >= 0 )
            result = sub_802FE28((result << 16) | v5 | 0x8000, (*&byte_811A56C[4 * *(v0 + 6)] | 0x800) + 2 * v1, 0, 4);
        ++v1;
        ++v2;
    }
    while ( v2 < 8 );
    return result;
}


// 0x811a57c
signed int sub_811A57C()
{
    int v0; // r5

    sprite_addCoordinates(16, 0);
    if ( sprite_getCoordinates() >= 60 )
    {
        sprite_setCoordinates(60, *&byte_811A5AC[2 * *(v0 + 6)]);
        *(v0 + 7) = 0;
    }
    return sub_811A51C();
}


// 0x811a5b4
int sub_811A5B4()
{
    return sub_804668A();
}


// 0x811a5bc
int sub_811A5BC()
{
    _BYTE *v0; // r5
    char *v1; // r3

    v1 = &dword_811A5FC;
    if ( v0[4] )
    {
        v1 = byte_811A5EC;
        if ( v0[7] )
            v1 = byte_811A600;
    }
    return sprite_setCoordinates(*&v1[4 * v0[6]], *&v1[4 * v0[6] + 2]);
}


// 0x811a610
int __fastcall sub_811A610(int a1, int a2)
{
    int v2; // r4
    int result; // r0
    Battle *v4; // r1
    char v5; // zf
    Battle *v6; // r5

    v2 = a1;
    result = getStructFrom2008450(a2);
    if ( !v5 )
    {
        result = v4->objFlags;
        if ( !(result & 8) )
        {
            v6 = v4;
            result = v4->pad_0C[0];
            if ( v2 != result )
            {
                v4->pad_0C[0] = v2;
                sprite_setAnimation(v4, v2);
                sprite_loadAnimationData(v6);
                result = sprite_noShadow(v6);
            }
        }
    }
    return result;
}


// 0x811a640
int (*sub_811A640())(void)
{
    int v0; // r5
    int (*result)(void); // r0
    int v2; // r1

    if ( sSubmenu.jo_01 == 28 )
        sub_811A704(28, *(v0 + 6));
    result = *(&dword_811A66C + sSubmenu.unk_02);
    if ( result )
    {
        v2 = *(v0 + 6);
        result = result();
    }
    return result;
}


// 0x811a68c
void __fastcall __noreturn sub_811A68C(int a1, int a2)
{
    sub_811A718(*(&dword_811A69C + a2), a2);
}


// 0x811a6a0
void __fastcall __noreturn sub_811A6A0(int a1, int a2)
{
    sub_811A718(*(&dword_811A6B0 + a2), a2);
}


// 0x811a6b4
void __fastcall __noreturn sub_811A6B4(int a1, int a2)
{
    sub_811A718(*(&dword_811A6C4 + a2), a2);
}


// 0x811a6c8
void __fastcall __noreturn sub_811A6C8(int a1, int a2)
{
    sub_811A718(*(&dword_811A6D8 + a2), a2);
}


// 0x811a6dc
void __fastcall __noreturn sub_811A6DC(int a1, int a2)
{
    int v2; // r7
    int v3; // r0

    if ( a2 != 2 || *(v2 + 27) & 2 )
        v3 = *(&dword_811A700 + a2);
    else
        v3 = HIBYTE(dword_811A700);
    sub_811A718(v3, a2);
}


// 0x811a704
void __fastcall __noreturn sub_811A704(int a1, int a2)
{
    sub_811A718(*(&dword_811A714 + a2), a2);
}


// 0x811a718
int __fastcall __noreturn sub_811A718(int a1, int a2)
{
    return renderTextGfx_8045F8C(eTextScript201BA20, a1, (&off_811A740)[a2], *&byte_811A754[4 * a2]);
}


// 0x811a768
signed int __fastcall sub_811A768(int a1, int a2)
{
    signed int v2; // r4
    int v3; // r5

    v2 = 1;
    v3 = a2;
    sprite_addCoordinates(a1, 0);
    if ( sprite_getCoordinates() < -48 )
    {
        *(v3 + 8) = 8;
        v2 = 0;
    }
    return v2;
}


// 0x811a78c
int sub_811A78C()
{
    int v0; // r5

    return (*(&off_811A7A0 + *(v0 + 8)))();
}


// 0x811a7ac
void __noreturn sub_811A7AC()
{
    int v0; // r5

    *v0 = 35;
    initGuiSprite_8002770(42, eGuiSprite2022AA0);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(&byte_1D0);
    sub_800304A(10);
    sub_8003060(3);
    sub_811A838(byte_811A810[*(v0 + 4)], byte_811A813[*(v0 + 4)], 6);
    *(v0 + 8) = 4;
    sub_811A818();
}


// 0x811a818
void __noreturn sub_811A818()
{
    Battle *v0; // r5
    char v1; // r4
    char v2; // zf

    v1 = 35;
    chatbox_check_eFlags2009F38(128);
    if ( !v2 )
        v1 = 1;
    v0->objFlags = v1;
    sprite_update(v0);
}


// 0x811a830
int sub_811A830()
{
    return sub_804668A();
}


// 0x811a838
int __fastcall sub_811A838(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-1Ch]
    __int16 v6; // [sp+4h] [bp-18h]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x811a858
int sub_811A858()
{
    int v0; // r5

    return (*(&off_811A86C + *(v0 + 8)))();
}


// 0x811a878
void __noreturn sub_811A878()
{
    _BYTE *v0; // r5

    *v0 = 35;
    initGuiSprite_8002770(43, eGuiSprite2022FA0);
    sub_811A940(0, 6);
}


// 0x811a8d0
void __noreturn sub_811A8D0()
{
    Battle *v0; // r5
    u8 v1; // r4
    char v2; // zf
    u8 v3; // r4

    v1 = v0->objFlags;
    chatbox_check_eFlags2009F38(128);
    if ( v2 )
        v3 = v1 | 2;
    else
        v3 = v1 & 0xFD;
    v0->objFlags = v3;
    sprite_update(v0);
}


// 0x811a8ec
int sub_811A8EC()
{
    return sub_804668A();
}


// 0x811a8f4
int __fastcall sub_811A8F4(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-1Ch]
    __int16 v6; // [sp+4h] [bp-18h]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x811a914
int __fastcall sub_811A914(int a1, int a2)
{
    int v2; // r4
    unsigned __int8 *v3; // r1
    unsigned __int8 *v4; // r5

    v2 = a1;
    getStructFrom2008450(a2);
    v4 = v3;
    sprite_setUnk0x2c(*&byte_811A938[4 * v2]);
    return *v4;
}


// 0x811a940
int __fastcall __noreturn sub_811A940(int a1, int a2)
{
    int v2; // r4
    Battle *v3; // r1
    Battle *v4; // r5
    int result; // r0

    v2 = a1;
    getStructFrom2008450(a2);
    v4 = v3;
    sprite_setAnimation(v3, v2);
    sprite_loadAnimationData(v4);
    result = sprite_noShadow(v4);
    if ( v2 == 1 )
        result = sprite_setUnk0x2c(0);
    return result;
}


// 0x811a968
int __fastcall sub_811A968(int a1)
{
    getStructFrom2008450(a1);
    return sub_804668A();
}


// 0x811a978
int sub_811A978()
{
    int v0; // r5

    return (*(&off_811A98C + *(v0 + 8)))();
}


// 0x811a998
void __noreturn sub_811A998()
{
    int v0; // r5
    u8 v1; // r0

    *v0 = 35;
    (loc_8002774)(38, &unk_202488C);
    v1 = *(v0 + 4);
    *(v0 + 12) = v1;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(0);
    sub_811AB14();
    sub_8003060(4);
    sprite_setCoordinates(*&byte_811A9F8[4 * *(v0 + 5)], *&byte_811A9F8[4 * *(v0 + 5) + 2]);
    *(v0 + 8) = 4;
    sub_811AA14();
}


// 0x811aa14
void sub_811AA14()
{
    int v0; // r5

    (*(&off_811AA44 + *(v0 + 9)))();
    JUMPOUT(loc_811AA22);
}


// 0x811aa4c
int __noreturn sub_811AA4C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    unsigned int v4; // r0
    unsigned __int8 *v5; // r0
    int v6; // r2
    int v7; // r3

    *(v0 + 9) = 4;
    v1 = *(v0 + 3);
    v2 = *(&off_811AA90 + v1);
    v3 = *&byte_811AAA0[4 * v1];
    v4 = sub_8137884(v1);
    v5 = sub_804A24C(v4 >> 4);
    return sub_3006B94(v5, sub_3006B94, v6, v7);
}


// 0x811aab8
signed int __noreturn sub_811AAB8()
{
    int v0; // r5
    int v1; // r0
    int v2; // r6
    signed int v3; // r4
    signed int v4; // r7
    signed int result; // r0
    unsigned __int8 v6; // vf

    v1 = 4 * *(v0 + 3);
    v2 = *&byte_811AB00[v1];
    v3 = *&byte_811AAEC[v1];
    v4 = 8;
    do
    {
        sub_802FE28(v3, v2, 0, 5);
        v3 += 0x80000;
        result = 2;
        LOWORD(v2) = v2 + 2;
        v6 = __OFSUB__(v4--, 1);
    }
    while ( !(((v4 < 0) ^ v6) | (v4 == 0)) );
    return result;
}


// 0x811ab0c
int sub_811AB0C()
{
    return sub_804668A();
}


// 0x811ab14
int sub_811AB14()
{
    int v0; // r5

    return sub_800304A(*(off_811AB28 + *(v0 + 4)));
}


// 0x811ab5c
int sub_811AB5C()
{
    int v0; // r5

    return (*(&off_811AB70 + *(v0 + 8)))();
}


// 0x811ab7c
void __noreturn sub_811AB7C()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    (loc_8002774)(8, &unk_2024E8C);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(0);
    sub_800304A(0);
    sub_8003060(2);
    v0->currState = 4;
    sub_811ABC8();
}


// 0x811abc8
void sub_811ABC8()
{
    int v0; // r5
    signed int v1; // r0

    v1 = 35;
    if ( *(v0 + 12) == 128 )
        v1 = 1;
    *v0 = v1;
    if ( v1 != 1 )
        (*(&off_811ABF0 + *(v0 + 9)))();
    sprite_update(v0);
}


// 0x811abf8
int __noreturn sub_811ABF8()
{
    int v0; // r5
    char *v1; // r4
    int v2; // ST00_4
    int v3; // r0
    int v4; // r1

    *(v0 + 9) = 4;
    v1 = &unk_202714C;
    if ( sub_803DD60(4) )
        v1 = &unk_20270EC;
    if ( *(v0 + 12) & 0x7FFF )
    {
        if ( !*(v0 + 3) )
        {
            v2 = (*(v0 + 12) & 0x7FFF) - 1;
            v3 = sub_8137884(v2);
            v4 = v2;
            if ( v3 >= 34 )
                v4 = 2;
            v1 = sub_804A24C(v4);
        }
    }
    else
    {
        v1 = byte_811AC9C;
    }
    return sub_3006B94(v1, sub_3006B94, *(&off_811AC6C + *(v0 + 3)), *&byte_811AC7C[4 * *(v0 + 3)]);
}


// 0x811aca8
signed int __noreturn sub_811ACA8()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r4
    int v4; // r6
    signed int v5; // r7
    signed int result; // r0
    unsigned __int8 v7; // vf

    v1 = sprite_getCoordinates();
    v3 = ((v1 - 32) << 16) | (v2 - 8) | 0x8000;
    v4 = *&byte_811ACF0[4 * *(v0 + 3)];
    v5 = 8;
    do
    {
        sub_802FE28(v3, v4, 0, 3);
        v3 += 0x80000;
        result = 2;
        LOWORD(v4) = v4 + 2;
        v7 = __OFSUB__(v5--, 1);
    }
    while ( !(((v5 < 0) ^ v7) | (v5 == 0)) );
    return result;
}


// 0x811acfc
int sub_811ACFC()
{
    return sub_804668A();
}


// 0x811ad04
int __fastcall sub_811AD04(__int16 a1, int a2, int a3)
{
    __int16 v3; // r4
    int result; // r0
    int v5; // r1
    char v6; // zf

    v3 = a1;
    result = getStructFrom2008450(a3);
    if ( !v6 )
    {
        *(v5 + 12) = v3;
        result = 0;
        *(v5 + 9) = 0;
    }
    return result;
}


// 0x811ad18
int __fastcall sub_811AD18(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-20h]
    __int16 v6; // [sp+4h] [bp-1Ch]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x811ad38
int sub_811AD38()
{
    int v0; // r5

    return (*(&off_811AD4C + *(v0 + 8)))();
}


// 0x811ad58
void __noreturn sub_811AD58()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    initGuiSprite_8002770(104, eGuiSprite2022FA0);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(&loc_A0);
    sub_800304A(2);
    sub_8003060(3);
    v0->currState = 4;
    sub_811AE5C(*&byte_811ADB8[4 * v0->objMemIndex], *&byte_811ADB8[4 * v0->objMemIndex + 2], v0->objMemIndex);
    sub_811ADC0();
}


// 0x811adc0
void __noreturn sub_811ADC0()
{
    Battle *v0; // r5

    (*(&off_811ADF4 + v0->currAction))();
    sprite_update(v0);
    JUMPOUT(loc_811ADD2);
}


// 0x811ae00
void sub_811AE00()
{
    ;
}


// 0x811ae04
int sub_811AE04()
{
    int v0; // r5
    int v1; // r2
    int result; // r0

    v1 = *(v0 + 16) - 48;
    if ( v1 <= 64 )
        v1 = 64;
    *(v0 + 16) = v1;
    sprite_setScaleParameters(0, 64, v1);
    result = *(v0 + 16);
    if ( result == 64 )
    {
        sprite_makeUnscalable();
        result = 0;
        *(v0 + 9) = 0;
    }
    return result;
}


// 0x811ae2c
signed int sub_811AE2C()
{
    _BYTE *v0; // r5
    int v1; // r2
    signed int result; // r0

    v1 = v0[16] + 48;
    if ( v1 >= 255 )
        v1 = 255;
    v0[16] = v1;
    sprite_setScaleParameters(0, 64, v1);
    result = v0[16];
    if ( result == 255 )
    {
        v0[9] = 0;
        result = 1;
        *v0 = 1;
    }
    return result;
}


// 0x811ae54
int sub_811AE54()
{
    return sub_804668A();
}


// 0x811ae5c
int __fastcall sub_811AE5C(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-1Ch]
    __int16 v6; // [sp+4h] [bp-18h]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x811ae7c
int __fastcall sub_811AE7C(int a1, int a2)
{
    int result; // r0
    char *v3; // r1
    char v4; // zf
    char *v5; // r5
    char v6; // r1
    unsigned int v7; // r0
    unsigned int v8; // r6
    int v9; // r4
    int v10; // [sp+0h] [bp-1Ch]
    int v11; // [sp+4h] [bp-18h]

    v10 = a1;
    v11 = a2;
    result = getStructFrom2008450(a2);
    if ( !v4 )
    {
        v5 = v3;
        v6 = 1;
        result = v10;
        if ( v10 )
        {
            v7 = **(&off_811AEFC + v11);
            v8 = v7 >> 4;
            v9 = v7 & 0xF;
            (loc_8000AC8)(off_811AF08[v9], *&byte_811AF3C[4 * v11], byte_80);
            (loc_8000AC8)(off_811AF4C[v9], off_811AF80[v11], 32);
            (loc_8000AC8)(*(&off_811AF8C + v8), *&byte_811AFBC[4 * v11], byte_200);
            result = (loc_8000AC8)(&off_86DC3F8, off_811AFC8[v11], 32);
            v6 = 35;
        }
        *v5 = v6;
    }
    return result;
}


// 0x811afd8
int __fastcall sub_811AFD8(int a1)
{
    int result; // r0
    _BYTE *v2; // r1
    char v3; // zf
    _BYTE *v4; // r5

    result = getStructFrom2008450(a1);
    if ( !v3 )
    {
        v4 = v2;
        *v2 = 35;
        sprite_makeScalable();
        *(v4 + 8) = 64;
        sprite_setScaleParameters(0, 64, 64);
        result = 8;
        v4[9] = 8;
    }
    return result;
}


// 0x811affc
int __fastcall sub_811AFFC(int a1)
{
    int result; // r0
    _BYTE *v2; // r1
    char v3; // zf

    result = getStructFrom2008450(a1);
    if ( !v3 )
    {
        *v2 = 35;
        result = 4;
        v2[9] = 4;
    }
    return result;
}


// 0x811b010
int __fastcall sub_811B010(int a1)
{
    int result; // r0
    int v2; // r1
    char v3; // zf

    result = getStructFrom2008450(a1);
    if ( !v3 )
    {
        result = *(v2 + 17);
        if ( result & 3 )
            result = sprite_makeUnscalable();
    }
    return result;
}


// 0x811b028
void __noreturn sub_811B028()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r1

    v1 = **(&off_811B074 + *(v0 + 3));
    v2 = sprite_getCoordinates();
    sub_8132A50(v2 + 36, v3 - 22, *(&dword_811B094 + (4 * *(v0 + 3) >> 2)), off_811B080[*(v0 + 3)]);
}


// 0x811b098
int sub_811B098()
{
    int v0; // r5
    int v1; // r0
    int v2; // ST00_4
    int v3; // r1
    unsigned int v4; // r3
    int v5; // r5

    v1 = **&byte_811B0E0[4 * *(v0 + 3)];
    v2 = sprite_getCoordinates();
    v4 = 4 * *(v0 + 3);
    v5 = *&byte_811B0EC[v4];
    return (*(&dword_8132A9C + 2))(v2 - 109, v3 - 8, *(&dword_811B100 + (v4 >> 2)));
}


// 0x811b104
int sub_811B104()
{
    int v0; // r5
    int v1; // ST00_4
    int v2; // r1
    int v3; // r5

    v1 = sprite_getCoordinates();
    v3 = *&byte_811B13C[4 * *(v0 + 3)];
    return sub_81329C8(v1 - 88, v2 - 5, 0);
}


// 0x811b14c
int sub_811B14C()
{
    int v0; // r5
    int v1; // ST00_4
    int v2; // r1
    int v3; // r5

    v1 = sprite_getCoordinates();
    v3 = *&byte_811B184[4 * *(v0 + 3)];
    return sub_81329C8(v1 - 2, v2 - 5, 1);
}


// 0x811b194
void __noreturn sub_811B194()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r5

    v1 = sprite_getCoordinates();
    v3 = *(v0 + 3);
    v4 = *&byte_811B1D0[4 * v3];
    sub_8132A14(v1 - 92, v2 - 14, 0, **&byte_811B1DC[4 * v3]);
}


// 0x811b1ec
int sub_811B1EC()
{
    int v0; // r5

    return (*(&off_811B200 + *(v0 + 8)))();
}


// 0x811b20c
void __noreturn sub_811B20C()
{
    int v0; // r5
    u8 v1; // r0

    *v0 = 35;
    initGuiSprite_8002770(9, *(&off_811B278 + *(v0 + 4)));
    v1 = *(v0 + 4);
    if ( *(v0 + 4) )
    {
        v1 = 2;
        if ( !eT4BattleObjects[3884] )
            v1 = 1;
    }
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(&dword_130);
    sub_800304A(2);
    sub_8003060(5);
    sub_811B298();
    *(v0 + 8) = 4;
    *(v0 + 12) = 0;
    sub_811B284(0);
}


// 0x811b284
void __fastcall __noreturn sub_811B284(int a1)
{
    Battle *v1; // r5

    sub_811B298();
    sprite_update(v1);
}


// 0x811b290
int sub_811B290()
{
    return sub_804668A();
}


// 0x811b298
int sub_811B298()
{
    int v0; // r5
    int v1; // r7
    u8 v2; // r0
    int v3; // r1

    v1 = *(&off_811B2E4 + *(v0 + 4));
    if ( *(v0 + 4) && *(v0 + 12) != *(v1 + 12) )
    {
        v2 = 2;
        v3 = *(v1 + 12);
        *(v0 + 12) = v3;
        if ( !v3 )
            v2 = 1;
        sprite_setAnimation(v0, v2);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
    }
    return sprite_setCoordinates((**(&off_811B2F0 + *(v0 + 4)))[*(v1 + 12)], 32);
}


// 0x811b314
int __fastcall sub_811B314(int a1, char a2)
{
    char v2; // r4
    int result; // r0
    Battle *v4; // r1
    char v5; // zf
    Battle *v6; // r5

    v2 = a2;
    result = getStructFrom2008450(a1);
    if ( !v5 )
    {
        result = v4->objFlags;
        if ( !(result & 8) )
        {
            v6 = v4;
            sprite_setAnimation(v4, v2);
            sprite_loadAnimationData(v6);
            result = sprite_noShadow(v6);
        }
    }
    return result;
}


// 0x811b338
int sub_811B338()
{
    int v0; // r5

    return (*(&off_811B34C + *(v0 + 8)))();
}


// 0x811b35c
void __noreturn sub_811B35C()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    initGuiSprite_8002770(20, &unk_2026A00);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(0);
    sub_800306C(byte_210);
    sub_8003060(2);
    sub_800304A(10);
    sprite_setPallete(0);
    v0->currState = 4;
    sprite_setCoordinates(32, 80);
    sub_811B3B0();
}


// 0x811b3b0
void sub_811B3B0()
{
    Battle *v0; // r5

    (*(&off_811B3C8 + v0->currAction))();
    sprite_update(v0);
}


// 0x811b3cc
int sub_811B3CC()
{
    int v0; // r6

    return sprite_setUnk0x2c(*&byte_811B3E0[4 * *(v0 + 38)]);
}


// 0x811b3ec
int sub_811B3EC()
{
    return sub_804668A();
}


// 0x811b3f4
int sub_811B3F4()
{
    int v0; // r5

    return (*(jt_811B408 + *(v0 + 8)))();
}


// 0x811b414
void __fastcall __noreturn sub_811B414(int a1, int a2)
{
    Battle *v2; // r5
    u8 v3; // r0

    v2->objFlags = 1;
    initGuiSprite_8002770(44, a2);
    v3 = sub_80101F8();
    sprite_setAnimation(v2, v3);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(&loc_C0);
    sub_800304A(6);
    sub_8003060(4);
    v2->currState = 4;
    sub_811B45C();
}


// 0x811b45c
void __noreturn sub_811B45C()
{
    Battle *v0; // r5

    sprite_update(v0);
}


// 0x811b464
int sub_811B464()
{
    return sub_804668A();
}


// 0x811b46c
int __fastcall sub_811B46C(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-1Ch]
    __int16 v6; // [sp+4h] [bp-18h]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x811b48c
int __fastcall sub_811B48C(int a1, int a2)
{
    int result; // r0
    _BYTE *v3; // r1
    char v4; // zf
    int v5; // [sp+0h] [bp-18h]

    v5 = a1;
    result = getStructFrom2008450(a2);
    if ( !v4 )
    {
        result = 35;
        if ( !v5 )
            result = 1;
        *v3 = result;
    }
    return result;
}


// 0x811b4ac
int sub_811B4AC()
{
    int v0; // r5

    return (*(&loc_811B4C0 + *(v0 + 8)))();
}


// 0x811b570
void sub_811B570()
{
    Battle *v0; // r5

    (*(jt_811B58C + v0->currAction))();
    sub_811B8C8();
    sprite_update(v0);
}


// 0x811b594
signed int sub_811B594()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r0

    if ( *(v0 + 10) )
    {
        sub_811B6E0();
        sub_811B71C();
        sub_811B7D4();
        v2 = sub_811B814();
        sub_811B914(v2);
        *(v0 + 9) = 4;
        result = 0;
        *(v0 + 10) = 0;
    }
    else
    {
        result = 4;
        *(v0 + 10) = 4;
    }
    return result;
}


// 0x811b5c0
unsigned int sub_811B5C0()
{
    int v0; // r5
    unsigned int result; // r0

    (*(&loc_811B5DC + *(v0 + 10)))();
    result = sub_811B984();
    *(result + 14) = *(v0 + 20);
    return result;
}


// 0x811b620
int sub_811B620()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0

    v1 = *(v0 + 18);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 18) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        *(v0 + 20) = *(v0 + 16);
        *(v0 + 10) = 0;
        sub_811B6E0();
        sub_811B71C();
        sub_811B7D4();
        result = sub_811B814();
    }
    return result;
}


// 0x811b648
signed int sub_811B648()
{
    int v0; // r5
    int v1; // r2
    signed int result; // r0

    v1 = *(v0 + 18) + 48;
    if ( v1 >= 255 )
        v1 = 255;
    *(v0 + 18) = v1;
    sprite_setScaleParameters(0, 64, v1);
    result = *(v0 + 18);
    if ( result == 255 )
    {
        result = 16;
        *(v0 + 10) = 16;
    }
    return result;
}


// 0x811b6b8
char *sub_811B6B8()
{
    int v0; // r5
    char *result; // r0

    *(v0 + 10) = 0;
    sub_811B6E0();
    sub_811B71C();
    sub_811B7D4();
    sub_811B814();
    result = &eT4BattleObjects[3872];
    eT4BattleObjects[3884] = 0;
    return result;
}


// 0x811b6d8
int sub_811B6D8()
{
    return sub_804668A();
}


// 0x811b6e0
signed int sub_811B6E0()
{
    int v0; // r5
    signed int v1; // r0
    signed int v2; // r1
    signed int result; // r0

    v1 = *&eT4BattleObjects[3908];
    if ( *&eT4BattleObjects[3908] >= 1 )
        v1 = 1;
    if ( v1 + *(v0 + 4) < 2
        || *&eT4BattleObjects[3908] + *(v0 + 4) - 2 >= *&eT4BattleObjects[3902]
        || (v2 = *(v0 + 20), v2 <= 20)
        || v2 > 128 )
    {
        result = 1;
        *v0 = 1;
    }
    else
    {
        result = 35;
        *v0 = 35;
    }
    return result;
}


// 0x811b71c
int sub_811B71C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0
    __int16 *v5; // r1
    char v6; // r4
    int *v7; // r2

    v2 = *&eT4BattleObjects[3908] + *(v0 + 4);
    v3 = __OFSUB__(v2, 2);
    result = v2 - 2;
    if ( !((result < 0) ^ v3) && result < *&eT4BattleObjects[3902] )
    {
        v5 = &word_2023FA0[2 * result];
        v6 = 4;
        v7 = *v5;
        if ( v7 != &dword_14C )
        {
            v7 = v5[1];
            v6 = 0;
            if ( !v5[1] )
                v6 = 2;
        }
        *(v0 + 14) = v6;
        *(*(v1 + oToolkit_Unk200a220_Ptr) + 8) = v7;
        result = renderTextGfx_8045F8C(
                             byte_873EA50,
                             (*v5 - 144) >> 2,
                             (&off_811B784)[*(v0 + 4)],
                             *&byte_811B7B0[4 * *(v0 + 4)]);
    }
    return result;
}


// 0x811b7d4
int sub_811B7D4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    v2 = *&eT4BattleObjects[3908] + *(v0 + 4);
    v3 = __OFSUB__(v2, 2);
    result = v2 - 2;
    if ( !((result < 0) ^ v3) && result < *&eT4BattleObjects[3902] )
    {
        *(*(v1 + oToolkit_Unk200a220_Ptr) + 8) = word_2023FA0[2 * result + 1];
        result = renderTextGfx_8045F8C(eTextScript201BA20, 70, *(&off_811B878 + *(v0 + 4)), *&byte_811B8A4[4 * *(v0 + 4)]);
    }
    return result;
}


// 0x811b814
int sub_811B814()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    int v4; // r0
    int v5; // r0
    int v6; // ST00_4
    int *v7; // r0

    v1 = *&eT4BattleObjects[3908] + *(v0 + 4);
    v2 = __OFSUB__(v1, 2);
    result = v1 - 2;
    if ( !((result < 0) ^ v2) && result < *&eT4BattleObjects[3902] )
    {
        v4 = word_2023FA0[2 * result] - 144;
        if ( v4 )
        {
            v6 = v4;
            sprite_setUnk0x2c(0);
            v5 = v6;
        }
        else
        {
            sprite_setUnk0x2c(0x100000);
            v5 = 0;
        }
        v7 = sub_813B780(v5);
        sprite_setAnimation(v0, *(v7 + 3));
        sprite_loadAnimationData(v0);
        result = sprite_noShadow(v0);
    }
    return result;
}


// 0x811b8c8
int sub_811B8C8()
{
    int v0; // r5
    int v1; // r10
    int result; // r0

    sprite_zeroColorShader();
    if ( *&eT4BattleObjects[3904] + 2 == *(v0 + 4) )
        result = sprite_setColorShader(v0, *&byte_811B904[2 * ((**(v1 + oToolkit_CurFramePtr) & 0xFu) >> 1)]);
    else
        result = sprite_setColorShader(v0, 41224);
    return result;
}


// 0x811b914
int __fastcall sub_811B914(int a1)
{
    int v1; // r5
    unsigned int v2; // r3
    char v3; // r7
    int result; // r0
    int v5; // r4
    int v6; // r0

    v2 = sub_811B984();
    v3 = 0;
    result = &eT4BattleObjects[3872];
    v5 = eT4BattleObjects[3884];
    if ( eT4BattleObjects[3884] )
    {
        if ( eT4BattleObjects[3884] == 16 )
        {
            result = *(v2 + 14);
            *(v1 + 20) = result;
            v3 = 20;
        }
        else
        {
            *(v2 + 12) = 176;
            v6 = *(v2 + 14);
            *(v1 + 16) = v6;
            *(v1 + 20) = v6;
            if ( v5 == 12 )
            {
                sprite_makeScalable();
                *(v1 + 18) = 64;
                sprite_setScaleParameters(0, 64, 64);
                result = sprite_setUnk0x2c(0x3FFFFFF);
                v3 = 12;
            }
            else
            {
                result = v6 + *&byte_811B974[v5];
                *(v1 + 22) = result;
                v3 = 4;
            }
        }
    }
    *(v1 + 10) = v3;
    return result;
}


// 0x811b984
unsigned int sub_811B984()
{
    int v0; // r5

    return 16 * (*(v0 + 2) >> 4) + v0;
}


// 0x811b990
int __fastcall sub_811B990(int a1, int a2)
{
    int v2; // r2
    int v3; // r0
    signed int v4; // r0

    v2 = a1;
    v3 = a2 - a1;
    if ( v3 < 0 )
    {
        if ( (-v3 >> 1) > 1 )
            v2 += v3 >> 1;
    }
    else
    {
        v4 = v3 >> 1;
        if ( v4 > 1 )
            v2 += v4;
    }
    return v2;
}


// 0x811b9d8
void __noreturn sub_811B9D8()
{
    int v0; // r5
    int v1; // r4
    int v2; // r0
    char v3; // r4

    *v0 = 35;
    initGuiSprite_8002770(18, &unk_2025AE8);
    sprite_setAnimation(v0, 6u);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(3);
    sub_8003060(1);
    if ( *(v0 + 4) )
    {
        v1 = *(v0 + 3);
        sub_800306C(*(&off_811BA4C + v1));
        v2 = v1 + 11;
    }
    else
    {
        sub_800306C(*(&off_811BA4C + *(v0 + 4)));
        v2 = 11;
    }
    sub_800304A(v2);
    *(v0 + 8) = 4;
    v3 = 4;
    if ( !*(v0 + 4) )
        v3 = 0;
    *(v0 + 9) = v3;
    *(v0 + 12) = 6;
    sub_811BA58();
}


// 0x811ba58
void sub_811BA58()
{
    int v0; // r5

    (*(&off_811BA80 + *(v0 + 9)))();
    JUMPOUT(loc_811BA66);
}


// 0x811ba88
int sub_811BA88()
{
    char *v0; // r5
    int v1; // r6
    char v2; // r4
    char v3; // zf
    int v4; // r0

    v2 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v3 )
    {
        if ( *(v1 + 12) != 12 )
        {
            v4 = *(v1 + 32) + *(v1 + 36);
            if ( v4 )
            {
                if ( v4 != *(v1 + 30) )
                    v2 = 35;
            }
        }
    }
    *v0 = v2;
    v0[12] = 6;
    sprite_disableAlpha();
    sprite_zeroColorShader();
    sub_811BB30();
    return sub_811BB64();
}


// 0x811bac4
int __noreturn sub_811BAC4()
{
    int v0; // r5
    char v1; // r1
    u8 v2; // r0

    v1 = 35;
    if ( *(v0 + 14) == 144 )
        v1 = 1;
    *v0 = v1;
    sub_811BB50();
    sub_811BBB8();
    v2 = sub_811BB18();
    sprite_setAnimation(v0, v2);
    return sprite_loadAnimationData(v0);
}


// 0x811baec
int sub_811BAEC()
{
    return sub_804668A();
}


// 0x811baf4
int sub_811BAF4()
{
    int v0; // r5
    int v1; // r6
    int *v2; // r1
    int result; // r0

    v2 = sub_813B780(word_2023FA0[2 * (*(v1 + 60) + *(v1 + 62))] - 144);
    result = *(v0 + 12);
    if ( *(v2 + 1) )
        ++result;
    return result;
}


// 0x811bb18
int sub_811BB18()
{
    int v0; // r5
    int *v1; // r1
    int result; // r0

    v1 = sub_813B780(*(v0 + 14) - 144);
    result = *(v0 + 12);
    if ( *(v1 + 1) )
        ++result;
    return result;
}


// 0x811bb30
void sub_811BB30()
{
    int v0; // r6
    int *v1; // r0

    v1 = sub_813B780(word_2023FA0[2 * (*(v0 + 62) + *(v0 + 60))] - 144);
    sprite_setPallete(*(v1 + 3) - 1);
}


// 0x811bb50
void sub_811BB50()
{
    int v0; // r5
    int *v1; // r0

    v1 = sub_813B780(*(v0 + 14) - 144);
    sprite_setPallete(*(v1 + 3) - 1);
}


// 0x811bb64
int sub_811BB64()
{
    int v0; // r6
    _BYTE *v1; // r7
    signed int v2; // r4
    int v3; // r6
    int v4; // r0
    unsigned int v5; // r2

    v1 = sub_813B7A0(word_2023FA0[2 * (*(v0 + 62) + *(v0 + 60))] - 144, 0) + 8;
    v2 = 0;
    v3 = 0;
    v4 = -1;
    v5 = 0x8000000;
    do
    {
        if ( *v1 )
            v4 &= ~v5;
        v5 >>= 1;
        if ( ++v3 >= 5 )
        {
            v3 = 0;
            v1 += 2;
            v2 += 2;
        }
        ++v1;
        ++v2;
    }
    while ( v2 < 49 );
    return sprite_setUnk0x2c(v4);
}


// 0x811bbb8
int sub_811BBB8()
{
    int v0; // r5
    _BYTE *v1; // r7
    signed int v2; // r4
    int v3; // r6
    int v4; // r0
    unsigned int v5; // r2

    v1 = sub_813B7A0(*(v0 + 14) - 144, 0) + 8;
    v2 = 0;
    v3 = 0;
    v4 = -1;
    v5 = 0x8000000;
    do
    {
        if ( *v1 )
            v4 &= ~v5;
        v5 >>= 1;
        if ( ++v3 >= 5 )
        {
            v3 = 0;
            v1 += 2;
            v2 += 2;
        }
        ++v1;
        ++v2;
    }
    while ( v2 < 49 );
    return sprite_setUnk0x2c(v4);
}


// 0x811bc00
int __fastcall sub_811BC00(__int16 a1, int a2, int a3, __int16 a4)
{
    int result; // r0
    int v5; // r1
    char v6; // zf
    __int16 v7; // [sp+0h] [bp-24h]
    int v8; // [sp+4h] [bp-20h]
    __int16 v9; // [sp+Ch] [bp-18h]

    v7 = a1;
    v8 = a2;
    v9 = a4;
    result = getStructFrom2008450(a3);
    if ( !v6 )
    {
        *(v5 + 14) = v7;
        *(v5 + 24) = v9;
        result = v8;
        *(v5 + 9) = v8;
    }
    return result;
}


// 0x811bc24
int __fastcall sub_811BC24(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-20h]
    __int16 v6; // [sp+4h] [bp-1Ch]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x811bc44
int sub_811BC44()
{
    int v0; // r5

    return (*(&off_811BC58 + *(v0 + 8)))();
}


// 0x811bc68
void __noreturn sub_811BC68()
{
    int v0; // r5

    *v0 = 35;
    initGuiSprite_8002770(41, *(&off_811BCCC + *(v0 + 4)));
    sprite_setAnimation(v0, 3u);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C((&off_811BCBC)[*(v0 + 5)]);
    sub_800304A(8);
    sub_8003060(3);
    *(v0 + 8) = 4;
    sub_811BD34();
}


// 0x811bcd8
signed int __noreturn sub_811BCD8()
{
    int v0; // r5
    signed int result; // r0
    int v2; // [sp+0h] [bp-18h]

    renderTextGfx_8045F8C(
        eTextScript201BF20,
        *(&dword_811BD30 + *(v0 + 5)),
        *(&off_811BD10 + *(v0 + 5)),
        *&byte_811BD20[4 * *(v0 + 5)]);
    result = 8;
    *(v2 + 8) = 8;
    return result;
}


// 0x811bd34
void __noreturn sub_811BD34()
{
    Battle *v0; // r5

    sprite_update(v0);
}


// 0x811bd3c
int sub_811BD3C()
{
    return sub_804668A();
}


// 0x811bd64
int sub_811BD64()
{
    int v0; // r5
    int v1; // r10
    int v2; // r6

    v2 = *(v1 + oToolkit_SubmenuPtr);
    return (*(&off_811BD7C + *(v0 + 8)))();
}


// 0x811bd88
void sub_811BD88()
{
    int v0; // r5
    int v1; // r0
    int v2; // r4
    char v3; // zf
    int v4; // r0

    *v0 = 1;
    v1 = getPETNaviSelect();
    if ( v1 )
    {
        v4 = v1 + 11;
    }
    else
    {
        v2 = GetCurPETNaviStatsByte(0);
        notZero_eByte200AD04();
        if ( !v3 )
        {
            TestEventFlagFromImmediate(1, 99);
            if ( v3 )
                v2 += 23;
        }
        v4 = v2;
    }
    *(v0 + 12) = v4;
    sub_811BE1C(v4);
    *(v0 + 8) = 4;
    sub_811BDCC();
}


// 0x811bdcc
void sub_811BDCC()
{
    Battle *v0; // r5
    char v1; // zf

    (*(&off_811BDE8 + v0->currAction))();
    sub_811BE90();
    if ( !v1 )
        sprite_update(v0);
}


// 0x811bdec
int sub_811BDEC()
{
    return sub_811BE9C();
}


// 0x811bdf4
int sub_811BDF4()
{
    return sub_804668A();
}


// 0x811bdfc
int __fastcall sub_811BDFC(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-1Ch]
    __int16 v6; // [sp+4h] [bp-18h]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x811be1c
int __fastcall sub_811BE1C(int a1)
{
    Battle *v1; // r5
    int result; // r0
    signed int v3; // r1
    int v4; // r0
    int v5; // r0

    v1->objFlags = 1;
    result = byte_811BF94[a1];
    if ( result )
    {
        initGuiSprite_8002770(result, &byte_0[1]);
        v1->objFlags = 35;
        sprite_setAnimation(v1, 0);
        sprite_loadAnimationData(v1);
        sprite_noShadow(v1);
        sub_800304A(4);
        v3 = v1->pad_0C[0];
        if ( v3 == 23 )
        {
            v4 = getPETNaviSelect();
            if ( GetCurPETNaviStatsByte(v4) == 255 )
            {
                v5 = 12;
LABEL_7:
                sprite_setPallete(v5);
                sub_800306C(&dword_120);
                sub_8002E14(2);
                sub_8003060(byte_811BFB6[v1->pad_0C[0]]);
                return sprite_setCoordinates(*&byte_811BF0C[4 * v1->pad_0C[0]], *&byte_811BF0C[4 * v1->pad_0C[0] + 2]);
            }
            v3 = 23;
        }
        v5 = byte_811BFD8[v3];
        goto LABEL_7;
    }
    return result;
}


// 0x811be90
int sub_811BE90()
{
    int v0; // r5

    return byte_811BF94[*(v0 + 12)];
}


// 0x811be9c
int sub_811BE9C()
{
    char *v0; // r5
    int v1; // ST00_4
    __int16 v2; // r1
    char v3; // r1
    int result; // r0

    v1 = sprite_getCoordinates();
    sprite_setCoordinates(*&byte_811BF0C[4 * v0[12]] + v1, *&byte_811BF0C[4 * v0[12] + 2] + v2);
    v3 = 1;
    result = byte_811BF94[v0[12]];
    if ( byte_811BF94[v0[12]] )
        v3 = 35;
    *v0 = v3;
    return result;
}


// 0x811bed4
int __fastcall sub_811BED4(int a1, int a2)
{
    int v2; // r4
    int result; // r0
    _BYTE *v4; // r1
    char v5; // zf

    v2 = a1;
    result = getStructFrom2008450(a2);
    if ( !v5 )
    {
        result = 1;
        if ( v2 )
        {
            if ( byte_811BF94[v4[12]] )
                result = 35;
        }
        *v4 = result;
    }
    return result;
}


// 0x811c01c
void __noreturn sub_811C01C()
{
    int v0; // r5

    *v0 = 35;
    (loc_8002774)(52);
    sprite_setAnimation(v0, *(v0 + 4) + 8);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800306C(dword_1F8);
    sub_800304A(11);
    sprite_setPallete(0);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setCoordinates(*(&dword_811C078 + 2 * *(v0 + 4)), *(&dword_811C078 + 2 * *(v0 + 4) + 1));
    *(v0 + 8) = 4;
    sub_811C07C();
}


// 0x811c07c
void __noreturn sub_811C07C()
{
    Battle *v0; // r5

    sprite_update(v0);
}


// 0x811c084
int sub_811C084()
{
    return sub_804668A();
}


// 0x811c08c
int sub_811C08C()
{
    int v0; // r5

    return (*(&off_811C0A0 + *(v0 + 8)))();
}


// 0x811c0ac
void __fastcall __noreturn sub_811C0AC(int a1, int a2)
{
    Battle *v2; // r5

    v2->objFlags = 35;
    initGuiSprite_8002770(61, a2);
    sprite_setAnimation(v2, 4u);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800306C(&dword_3C0);
    sub_800304A(15);
    sub_8003060(0);
    sub_8002E14(1);
    sprite_setCoordinates(120, v2->objParams);
    v2->currState = 4;
    LOBYTE(v2->objParams) = 16;
    sub_811C0F8();
}


// 0x811c0f8
void __noreturn sub_811C0F8()
{
    int v0; // r5
    int v1; // r0

    sprite_update(v0);
    v1 = *(v0 + 4) - 1;
    *(v0 + 4) = v1;
    if ( v1 <= 0 )
        *(v0 + 8) = 8;
}


// 0x811c10e
int sub_811C10E()
{
    (loc_8002676)();
    return sub_804668A();
}


// 0x811c11c
int sub_811C11C()
{
    int v0; // r5

    return (*(&off_811C130 + *(v0 + 8)))();
}


// 0x811c13c
void __fastcall __noreturn sub_811C13C(int a1, int a2)
{
    Battle *v2; // r5

    v2->objFlags = 35;
    initGuiSprite_8002770(62, a2);
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(0);
    sprite_setPallete(0);
    sub_8002E14(3);
    sub_800306C(&dword_390);
    sub_8003060(0);
    v2->currState = 4;
    sprite_setCoordinates(216, 7);
    sub_811C18C();
}


// 0x811c18c
void __noreturn sub_811C18C()
{
    Battle *v0; // [sp+0h] [bp-8h]

    reqBBS_81406FC();
    sprite_update(v0);
}


// 0x811c1a4
int sub_811C1A4()
{
    return sub_804668A();
}


// 0x811c1ac
int sub_811C1AC()
{
    int v0; // r5

    return (*(&off_811C1C0 + *(v0 + 8)))();
}


// 0x811c1cc
void __noreturn sub_811C1CC()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    initGuiSprite_8002770(105, &unk_20222A0);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(&loc_F0);
    sub_800304A(5);
    sub_8003060(3);
    v0->currState = 4;
    sub_811C23C(&dword_78, dword_28, v0->objMemIndex);
    sub_811C22C();
}


// 0x811c22c
void __noreturn sub_811C22C()
{
    Battle *v0; // r5

    sprite_update(v0);
}


// 0x811c234
int sub_811C234()
{
    return sub_804668A();
}


// 0x811c23c
int __fastcall sub_811C23C(int a1, __int16 a2, int a3)
{
    int result; // r0
    char v4; // zf
    int v5; // [sp+0h] [bp-1Ch]
    __int16 v6; // [sp+4h] [bp-18h]

    v5 = a1;
    v6 = a2;
    result = getStructFrom2008450(a3);
    if ( !v4 )
        result = sprite_setCoordinates(v5, v6);
    return result;
}


// 0x811c25c
int sub_811C25C()
{
    int v0; // r5

    return (*(&off_811C270 + *(v0 + 8)))();
}


// 0x811c27c
void __noreturn sub_811C27C()
{
    _BYTE *v0; // r5

    *v0 = 1;
    v0[8] = 4;
    sprite_setCoordinates(176, 64);
    v0[8] = 4;
    sub_811C298();
}


// 0x811c298
void __noreturn sub_811C298()
{
    Battle *v0; // r5

    sprite_update(v0);
}


// 0x811c2a0
int sub_811C2A0()
{
    return sub_804668A();
}


// 0x811c2a8
int __fastcall sub_811C2A8(int a1, int a2)
{
    int result; // r0
    Battle *v3; // r1
    char v4; // zf
    Battle *v5; // r5
    unsigned int v6; // r4
    int *v7; // r1
    int v8; // r0
    unsigned __int8 v9; // cf
    unsigned int v10; // r0
    int v11; // [sp+0h] [bp-10h]

    v11 = a1;
    result = getStructFrom2008450(a2);
    if ( !v4 )
    {
        v5 = v3;
        v3->objFlags = 35;
        v6 = 4 * v11;
        v7 = SpritePointerArr811C3A4;
        v8 = SpritePointerArr811C3A4[v11];
        v9 = __CFSHL__(v8, 1);
        v10 = 2 * v8;
        if ( v9 )
        {
            SWI_LZ77UnCompReadNormalWrite8bit((v10 >> 1), &unk_201D2F8);
            v7 = &unk_201D2FC;
        }
        initGuiSprite_8002770(*&byte_811C324[v6], v7);
        sprite_setAnimation(v5, *(&off_811C420 + (v6 >> 2)));
        sprite_loadAnimationData(v5);
        sprite_noShadow(v5);
        sprite_setPallete(0);
        sub_8002E14(0);
        sub_800306C(0);
        sub_800304A(0);
        sub_8003060(3);
        result = sub_811C440(v6 >> 2);
    }
    return result;
}


// 0x811c440
int __fastcall sub_811C440(int a1)
{
    return sprite_setCoordinates(*&byte_811C460[4 * a1] + 176, *&byte_811C460[4 * a1 + 2] + 64);
}


// 0x811c4d8
int __fastcall sub_811C4D8(int a1)
{
    int result; // r0
    _BYTE *v2; // r1
    char v3; // zf

    result = getStructFrom2008450(a1);
    if ( !v3 )
    {
        result = 1;
        *v2 = 1;
    }
    return result;
}


// 0x811c4e8
int sub_811C4E8()
{
    int v0; // r5

    return (*(&off_811C4FC + *(v0 + 8)))();
}


// 0x811c508
void sub_811C508()
{
    _BYTE *v0; // r5

    *v0 = 1;
    v0[8] = 4;
    sprite_setCoordinates(128, 128);
    v0[8] = 4;
    v0[18] = 0;
    v0[19] = 0;
    sub_811C52C();
}


// 0x811c52c
void sub_811C52C()
{
    _BYTE *v0; // r5

    if ( *v0 & 2 )
        sub_811C654();
}


// 0x811c53c
int sub_811C53C()
{
    return sub_804668A();
}


// 0x811c544
int __fastcall sub_811C544(int a1)
{
    int result; // r0
    int v2; // r1
    char v3; // zf

    result = getStructFrom2008450(a1);
    if ( !v3 )
    {
        result = 1;
        *(v2 + 18) = 1;
    }
    return result;
}


// 0x811c554
int __fastcall sub_811C554(int a1, int a2)
{
    int result; // r0
    Battle *v3; // r1
    char v4; // zf
    Battle *v5; // r5
    unsigned int v6; // r4
    u16 *v7; // r1
    int v8; // r0
    unsigned __int8 v9; // cf
    unsigned int v10; // r0
    int v11; // [sp+0h] [bp-10h]

    v11 = a1;
    result = getStructFrom2008450(a2);
    if ( !v4 )
    {
        v5 = v3;
        v3->objFlags = 35;
        v6 = 4 * v11;
        v7 = dword_811C5FC;
        v8 = dword_811C5FC[v11];
        v9 = __CFSHL__(v8, 1);
        v10 = 2 * v8;
        if ( v9 )
        {
            SWI_LZ77UnCompReadNormalWrite8bit((v10 >> 1), &unk_2018A00);
            v7 = eTileIds2018A04;
        }
        initGuiSprite_8002770(*&byte_811C5E0[v6], v7);
        sprite_setAnimation(v5, byte_811C618[v6 >> 2]);
        sprite_loadAnimationData(v5);
        sprite_noShadow(v5);
        sprite_setPallete(0);
        sub_8002E14(2);
        sub_800306C(*&byte_811C5D0[v6]);
        sub_800304A(byte_811C61B[v6 >> 2]);
        sub_8003060(3);
        result = sub_811C620(v6 >> 2);
    }
    return result;
}


// 0x811c620
int __fastcall sub_811C620(int a1)
{
    return sprite_setCoordinates(*&byte_811C640[4 * a1] + 128, *&byte_811C640[4 * a1 + 2] + 128);
}


// 0x811c654
void sub_811C654()
{
    int v0; // r5
    int v1; // r0
    char *v2; // r3
    char v3; // zf

    if ( !*(v0 + 11) )
    {
        v1 = *(v0 + 19) + 1;
        if ( v1 >= 6 )
            v1 = 0;
        *(v0 + 19) = v1;
        v2 = &(*off_811C6D4[*(v0 + 3)])[10 * v1];
        *(v0 + 26) = *v2;
        *(v0 + 30) = *(v2 + 1);
        *(v0 + 20) = *(v2 + 2);
        *(v0 + 22) = *(v2 + 3);
        sprite_setAnimation(v0, *(v2 + 4));
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        *(v0 + 11) = 1;
    }
    if ( *(v0 + 11) == 1 )
    {
        sub_811C754();
        if ( !v3 )
        {
            if ( *(v0 + 18) )
                *(v0 + 8) = 8;
            else
                *(v0 + 11) = 2;
        }
    }
    else
    {
        sub_811C754();
        if ( v3 )
        {
            *(v0 + 9) = 0;
            *(v0 + 10) = 0;
        }
    }
    sub_811C784();
    sub_811C7A0();
    sprite_update(v0);
}


// 0x811c754
BOOL sub_811C754()
{
    int v0; // r0
    signed int v1; // r1

    v0 = sprite_getCoordinates();
    return v0 >= -32 && v1 >= -32 && v0 <= &byte_110 && v1 <= &loc_C0;
}


// 0x811c784
int sub_811C784()
{
    int v0; // r5
    int result; // r0

    *(v0 + 24) += 16 * *(v0 + 20);
    result = *(v0 + 28) + 16 * *(v0 + 22);
    *(v0 + 28) = result;
    return result;
}


// 0x811c7a0
int sub_811C7A0()
{
    int v0; // r5

    return sprite_setCoordinates(*(v0 + 26), *(v0 + 30));
}


// 0x811c9fc
int sub_811C9FC()
{
    int v0; // r5

    return (*(&off_811CA10 + *(v0 + 8)))();
}


// 0x811ca1c
void __noreturn sub_811CA1C()
{
    int v0; // r5

    *v0 = 35;
    (loc_8002774)(137, &unk_201BA04);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_makeScalable();
    sprite_setScaleParameters(0, 128, 128);
    sub_800304A(*(v0 + 4));
    sub_800306C(&byte_80[48 * *(v0 + 4)]);
    sub_8002E14(0);
    sub_8003060(0);
    sprite_setCoordinates(0, 0);
    *(v0 + 8) = 4;
    if ( sub_811CC4E() )
        sub_811CA94();
    else
        sub_804668A();
}


// 0x811ca94
void sub_811CA94()
{
    int v0; // r5
    unsigned __int16 *v1; // r0
    char v2; // zf
    char v3; // r4

    do
    {
        v1 = sub_811CC68();
        (*(&off_811CAC4 + *v1))();
    }
    while ( !v2 );
    v3 = *v0 & 0xFD;
    if ( *(v0 + 26) >= 4432 )
        v3 |= 2u;
    *v0 = v3;
    sprite_update(v0);
}


// 0x811cae4
int sub_811CAE4()
{
    return sub_804668A();
}


// 0x811caec
signed int sub_811CAEC()
{
    int v0; // r5
    unsigned __int16 *v1; // r0
    int v2; // r1
    int v3; // ST00_4
    int v4; // ST04_4
    int v5; // r1
    unsigned int v6; // r2
    int v7; // r0
    int v8; // r1
    int v9; // r0
    unsigned __int8 v10; // vf
    int v12; // [sp+0h] [bp-14h]
    int v13; // [sp+4h] [bp-10h]

    if ( !*(v0 + 9) )
    {
        *(v0 + 9) = 1;
        v1 = sub_811CC68();
        *(v0 + 16) = v1[1];
        *(v0 + 22) = v1[3];
        *(v0 + 24) = v1[4];
        *(v0 + 28) = v1[5];
        *(v0 + 30) = v1[6];
    }
    v2 = *(sub_811CC68() + 4);
    v3 = *&math_sinTable[2 * v2];
    v4 = *&math_cosTable[2 * v2];
    v5 = *(v0 + 22) + *(v0 + 20);
    *(v0 + 20) = v5;
    v12 = v3 * v5 >> 4;
    v13 = v4 * v5 >> 4;
    v6 = *(v0 + 26) - *(v0 + 28);
    if ( (v6 & 0x80000000) != 0 )
        v6 = 0;
    *(v0 + 26) = v6;
    sprite_setScaleParameters(0, v6 >> 8, v6 >> 8);
    *(v0 + 22) += *(v0 + 24);
    *(v0 + 28) += *(v0 + 30);
    v7 = sprite_getCoordinates();
    sprite_setCoordinates(((v7 << 16) + v12) >> 16, ((v8 << 16) + v13) >> 16);
    v9 = *(v0 + 16);
    v10 = __OFSUB__(v9--, 1);
    *(v0 + 16) = v9;
    if ( !((v9 < 0) ^ v10) )
        return 0;
    *(v0 + 9) = 0;
    *(v0 + 16) = 0;
    sub_811CC60(14);
    return 1;
}


// 0x811cba0
signed int sub_811CBA0()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf

    if ( !*(v0 + 9) )
    {
        *(v0 + 9) = 1;
        *(v0 + 16) = *(sub_811CC68() + 2);
    }
    v1 = *(v0 + 16);
    v2 = __OFSUB__(v1--, 1);
    *(v0 + 16) = v1;
    if ( !((v1 < 0) ^ v2) )
        return 0;
    *(v0 + 9) = 0;
    *(v0 + 16) = 0;
    sub_811CC60(4);
    return 1;
}


// 0x811cbd0
signed int sub_811CBD0()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    unsigned int v3; // r1

    v1 = sub_811CC68();
    sprite_setCoordinates(*(v1 + 2), *(v1 + 4));
    v2 = sub_811CC68();
    *(v0 + 20) = *(v2 + 6);
    v3 = *(v2 + 8);
    *(v0 + 26) = v3;
    sprite_setScaleParameters(0, v3 >> 8, v3 >> 8);
    sub_811CC60(10);
    return 1;
}


// 0x811cc02
signed int sub_811CC02()
{
    sub_811CC4E();
    return 1;
}


// 0x811cc0c
signed int __fastcall __noreturn sub_811CC0C(int a1)
{
    Battle *v1; // r5
    int v2; // r0

    v2 = sub_811CC68();
    sprite_setAnimation(v1, *(v2 + 2));
    sprite_loadAnimationData(v1);
    sub_811CC60(4);
    return 1;
}


// 0x811cc26
signed int sub_811CC26()
{
    _BYTE *v0; // r5

    *v0 |= 2u;
    sub_811CC60(2);
    return 1;
}


// 0x811cc3a
signed int sub_811CC3A()
{
    _BYTE *v0; // r5

    *v0 &= 0xFDu;
    sub_811CC60(2);
    return 1;
}


// 0x811cc4e
int sub_811CC4E()
{
    int v0; // r5
    int result; // r0

    result = *(&off_811C9C0 + *(v0 + 4));
    *(v0 + 12) = result;
    return result;
}


// 0x811cc60
int __fastcall sub_811CC60(int a1)
{
    int v1; // r5
    int result; // r0

    result = a1 + *(v1 + 12);
    *(v1 + 12) = result;
    return result;
}


// 0x811cc68
int sub_811CC68()
{
    int v0; // r5

    return *(v0 + 12);
}


// 0x811cc74
int sub_811CC74()
{
    int v0; // r5

    return (*(&off_811CC88 + *(v0 + 8)))();
}


// 0x811cc94
void sub_811CC94()
{
    _BYTE *v0; // r5

    *v0 = 1;
    v0[8] = 4;
    sprite_setCoordinates(-8, 128);
    v0[8] = 4;
    v0[18] = 0;
    v0[12] = 0;
    (*(&off_811CCD0 + v0[4]))();
    sub_811CD08();
}


// 0x811cd08
void sub_811CD08()
{
    int v0; // r5

    (*(&off_811CD28 + *(v0 + 4)))();
    if ( !*(v0 + 7) )
        sprite_update(v0);
}


// 0x811cd60
int sub_811CD60()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // r2
    int v3; // r0

    if ( v0[9] )
    {
        v2 = 2;
        v3 = v0[18];
        if ( v3 & 2 )
            v2 = 0;
        *v0 ^= v2;
        result = v3 - 1;
        v0[18] = result;
        if ( !result )
        {
            result = 8;
            v0[8] = 8;
        }
    }
    else
    {
        result = v0[12];
        if ( v0[12] )
        {
            v0[18] = result;
            result = 1;
            v0[9] = 1;
        }
    }
    return result;
}


// 0x811cd94
int sub_811CD94()
{
    int v0; // r5

    return (*(&off_811CDA8 + *(v0 + 9)))();
}


// 0x811cdc8
int __fastcall sub_811CDC8(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    signed int v4; // r0
    int result; // r0

    v4 = v3[12];
    if ( v4 == 15 )
    {
        if ( v3[4] == 1 )
            PlaySoundEffect(141, a2, a3);
        v4 = 15;
    }
    result = v4 - 1;
    v3[12] = result;
    if ( !result )
    {
        v3[9] = 4;
        sprite_zeroColorShader();
        result = 32;
        v3[12] = 32;
    }
    return result;
}


// 0x811cdf4
int __fastcall sub_811CDF4(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int result; // r0
    int v5; // r1
    int v6; // r2

    result = v3[12] - 1;
    v3[12] = result;
    if ( !result )
    {
        if ( v3[4] == 1 )
            sub_811D5F8();
        *v3 &= 0xFDu;
        v3[5] += 5;
        v3[12] = 15;
        v3[9] = 8;
        PlaySoundEffect(byte_1CD, 2, a3);
        result = PlaySoundEffect(247, v5, v6);
    }
    return result;
}


// 0x811ce34
int sub_811CE34()
{
    _BYTE *v0; // r5
    int result; // r0

    result = v0[12] - 1;
    v0[12] = result;
    if ( !result )
    {
        v0[12] = 16;
        if ( v0[4] == 1 )
        {
            v0[9] = 28;
            sub_811DBD0();
            v0[12] = 16;
            result = 0;
            v0[14] = 0;
        }
        else
        {
            v0[9] = 12;
            result = sub_811D6F4();
        }
    }
    return result;
}


// 0x811ce64
int sub_811CE64()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        *(v0 + 9) = 16;
        sprite_zeroColorShader();
        *(v0 + 12) = 20;
        result = PlaySoundEffect(byte_100, v2, v3);
    }
    return result;
}


// 0x811ce88
int sub_811CE88()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        *(v0 + 9) = 20;
        *(v0 + 12) = 10;
        result = *(v0 + 7);
        if ( !*(v0 + 7) )
        {
            sprite_setAnimation(v0, byte_811CEBC[*(v0 + 5) - 5]);
            sprite_loadAnimationData(v0);
            result = sprite_noShadow(v0);
        }
    }
    return result;
}


// 0x811cec4
int __fastcall sub_811CEC4(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0
    int v5; // r4
    int v6; // r0

    result = *(v3 + 12) - 1;
    *(v3 + 12) = result;
    if ( !result )
    {
        if ( !*(v3 + 7) )
        {
            sprite_setAnimation(v3, byte_811CF3C[*(v3 + 5) - 5]);
            sprite_loadAnimationData(v3);
            sprite_noShadow(v3);
        }
        if ( *(v3 + 4) == 5 )
        {
            *(v3 + 11) = 16;
            v5 = 2 * (*(v3 + 5) - 5);
            PlaySoundEffect(*&byte_811CF28[v5], byte_811CF28, a3);
            v6 = *&byte_811CF32[v5];
            if ( v6 != 0xFFFF )
                PlaySoundEffect(v6, 0xFFFF, 65280);
        }
        *(v3 + 12) = 40;
        result = 24;
        *(v3 + 9) = 24;
    }
    return result;
}


// 0x811cf44
int sub_811CF44()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        result = 8;
        *(v0 + 8) = 8;
    }
    return result;
}


// 0x811cf64
int sub_811CF64()
{
    Battle *v0; // r5
    int v1; // r0
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0

    v1 = v0->Element + 2;
    if ( v1 >= 31 )
        LOBYTE(v1) = 31;
    v0->Element = v1;
    v2 = v0->pad_0C[0];
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if ( ((v4 < 0) ^ v3) | (v4 == 0) )
    {
        v0->currState = 8;
        LOBYTE(v4) = 0;
    }
    v0->pad_0C[0] = v4;
    return sprite_setColorShader(v0, v0->Element | 32 * v0->Element | (v0->Element << 10));
}


// 0x811cf94
int sub_811CF94()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 18) - 1;
    *(v0 + 18) = result;
    if ( !result )
    {
        result = 8;
        *(v0 + 8) = 8;
    }
    return result;
}


// 0x811cfa4
int sub_811CFA4()
{
    int v0; // r5

    return (*(&off_811CFB8 + *(v0 + 9)))();
}


// 0x811cfd0
int sub_811CFD0()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        *(v0 + 12) = 30;
        result = 4;
        *(v0 + 9) = 4;
    }
    return result;
}


// 0x811cfec
int sub_811CFEC()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    int v4; // r2

    v1 = *(v0 + 12);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    if ( ((result < 0) ^ v2) | (result == 0) || (*(v0 + 12) = result, !result) )
    {
        sprite_setColorShader(v0, 0xFFFF);
        *(v0 + 14) = 31;
        *v0 = 35;
        *(v0 + 12) = 3;
        *(v0 + 9) = 8;
        result = PlaySoundEffect(&dword_194, 35, v4);
    }
    return result;
}


// 0x811d020
int sub_811D020()
{
    int v0; // r5
    int result; // r0
    int v2; // r0
    signed __int16 v3; // r0

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        v2 = *(v0 + 14) - 1;
        *(v0 + 14) = v2;
        if ( v2 )
        {
            v3 = 3;
        }
        else
        {
            *(v0 + 9) = 12;
            v3 = 60;
        }
        *(v0 + 12) = v3;
        result = sprite_setColorShader(v0, *(v0 + 14) | 32 * *(v0 + 14) | (*(v0 + 14) << 10) | 0x8000);
    }
    return result;
}


// 0x811d058
int sub_811D058()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        sprite_setAnimation(v0, *(v0 + 16) + 4);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        *(v0 + 12) = 15;
        result = 16;
        *(v0 + 9) = 16;
    }
    return result;
}


// 0x811d080
int sub_811D080()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        sprite_setAnimation(v0, *(v0 + 16) + 5);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        *(v0 + 9) = 20;
        result = 50;
        *(v0 + 12) = 50;
    }
    return result;
}


// 0x811d0a8
void sub_811D0A8()
{
    ;
}


// 0x811d0ac
int sub_811D0AC()
{
    int v0; // r5

    return (*(&off_811D0C0 + *(v0 + 9)))();
}


// 0x811d0cc
int sub_811D0CC()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2

    sprite_setCoordinates(128, 128);
    *(v0 + 12) = 16;
    *(v0 + 9) = 4;
    return PlaySoundEffect(118, v1, v2);
}


// 0x811d0ec
int __fastcall sub_811D0EC(int a1, int a2)
{
    Battle *v2; // r5
    int result; // r0

    result = v2->pad_0C[0] - 1;
    v2->pad_0C[0] = result;
    if ( !result )
    {
        initGuiSprite_8002770(138, a2);
        sprite_setAnimation(v2, 0);
        sprite_loadAnimationData(v2);
        sprite_noShadow(v2);
        sub_8002E14(2);
        sub_8003060(3);
        v2->pad_0C[0] = 30;
        result = 8;
        v2->currAction = 8;
    }
    return result;
}


// 0x811d120
void sub_811D120()
{
    ;
}


// 0x811d124
int sub_811D124()
{
    int v0; // r5

    return (*(&off_811D138 + *(v0 + 9)))();
}


// 0x811d148
int sub_811D148()
{
    int v0; // r5
    int result; // r0

    *(v0 + 12) = 207;
    *(v0 + 9) = 4;
    result = 0;
    *(v0 + 10) = 0;
    return result;
}


// 0x811d15c
int sub_811D15C()
{
    int v0; // r5
    int result; // r0
    int v2; // r4
    __int16 v3; // r0
    int v4; // r1
    int v5; // r2

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        v2 = *(v0 + 10);
        v3 = *(&dword_811D198 + v2);
        *(v0 + 12) = *(&dword_811D198 + v2 + 2);
        sprite_setAnimation(v0, v3);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        if ( !*(v0 + 5) )
            PlaySoundEffect(454, v4, v5);
        result = 8;
        *(v0 + 9) = 8;
    }
    return result;
}


// 0x811d19c
int sub_811D19C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        result = 1;
        *(v0 + 12) = 1;
        *(v0 + 9) = 12;
        *(v0 + 10) = 1;
    }
    return result;
}


// 0x811d1b4
void sub_811D1B4()
{
    ;
}


// 0x811d1b8
int sub_811D1B8()
{
    int v0; // r5

    return (*(&off_811D1CC + *(v0 + 9)))();
}


// 0x811d1dc
signed int sub_811D1DC()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 12) = *&byte_811D1F4[4 * *(v0 + 5)];
    result = 4;
    *(v0 + 9) = 4;
    return result;
}


// 0x811d20c
int sub_811D20C()
{
    int v0; // r5
    int result; // r0
    int v2; // r0

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        *(v0 + 12) = 10;
        v2 = byte_811D240[*(v0 + 5)];
        if ( v2 != 255 )
        {
            sprite_setAnimation(v0, v2);
            sprite_loadAnimationData(v0);
            sprite_noShadow(v0);
            *v0 = 35;
        }
        result = 8;
        *(v0 + 9) = 8;
    }
    return result;
}


// 0x811d248
int sub_811D248()
{
    int v0; // r5
    int result; // r0
    int v2; // r2
    int v3; // r4

    result = *(v0 + 12) - 1;
    *(v0 + 12) = result;
    if ( !result )
    {
        *v0 = 35;
        sprite_setAnimation(v0, byte_811D2B8[*(v0 + 5)]);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        *(v0 + 9) = 12;
        result = *(v0 + 4);
        if ( result == 9 )
        {
            result = *(v0 + 5);
            if ( result != 5 )
            {
                v3 = 2 * *(v0 + 5);
                PlaySoundEffect(*&byte_811D2A4[v3], byte_811D2A4, v2);
                result = *&byte_811D2AE[v3];
                if ( result != 0xFFFF )
                    result = PlaySoundEffect(result, 0xFFFF, 65280);
            }
        }
    }
    return result;
}


// 0x811d2c0
void sub_811D2C0()
{
    ;
}


// 0x811d2c4
void sub_811D2C4()
{
    ;
}


// 0x811d2c8
void __noreturn sub_811D2C8()
{
    int v0; // r5

    if ( *(v0 + 12) )
        --*(v0 + 12);
    else
        *v0 = 35;
    sprite_update(v0);
}


// 0x811d2e0
int sub_811D2E0()
{
    return sub_804668A();
}


// 0x811d2e8
int __fastcall sub_811D2E8(int a1)
{
    int result; // r0
    char v2; // zf

    result = getStructFrom2008450(a1);
    if ( !v2 )
        result = sub_804668A();
    return result;
}


// 0x811d2f8
signed int __noreturn sub_811D2F8()
{
    int v0; // r5
    int v1; // r4
    unsigned int v2; // r6
    void *v3; // r1
    int v4; // r0
    unsigned __int8 v5; // cf
    unsigned int v6; // r0
    int v7; // r7
    int v8; // r0
    __int16 v9; // r1
    int v10; // r0

    *v0 = 35;
    v1 = 4 * *(v0 + 5);
    v2 = 4 * *(v0 + 6);
    v3 = &off_811D3C8;
    v4 = *(&off_811D3C8 + v1);
    v5 = __CFSHL__(v4, 1);
    v6 = 2 * v4;
    if ( v5 )
    {
        v7 = *(&off_811D3BC + v2);
        SWI_LZ77UnCompReadNormalWrite8bit((v6 >> 1), *(&off_811D3BC + v2));
        v3 = (v7 + 4);
    }
    initGuiSprite_8002770(*&byte_811D39C[v1], v3);
    sprite_setAnimation(v0, byte_811D404[v2 >> 2]);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(*&byte_811D390[v2]);
    sub_800304A(byte_811D40B[v2 >> 2]);
    sub_8003060(3);
    sub_811DC00(*&byte_811D3FC[v2], *&byte_811D3FC[v2 + 2]);
    *(v0 + 26) = v8;
    *(v0 + 30) = v9;
    sprite_setCoordinates(v8, v9);
    *(v0 + 20) = *(&off_811D3F4 + v2);
    *(v0 + 22) = 0;
    v10 = 0;
    if ( v2 )
        v10 = 1;
    return sprite_setFlip(v0, v10);
}


// 0x811d410
signed int __noreturn sub_811D410()
{
    Battle *v0; // r5
    int v1; // r0
    __int16 v2; // r1
    signed int result; // r0

    v0->objFlags = 35;
    initGuiSprite_8002770(142, &dword_20 + 3);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    sub_8002E14(2);
    sub_800306C(&byte_180);
    sub_800304A(3);
    sub_8003060(5);
    sub_811DC00(120, 112);
    sprite_setCoordinates(v1, v2);
    result = 21;
    v0->panelX = 21;
    return result;
}


// 0x811d464
int __noreturn sub_811D464()
{
    int v0; // r5
    char *v1; // r0
    int v2; // r0
    int v3; // r0
    __int16 v4; // r1
    char v5; // r0

    *v0 = 35;
    initGuiSprite_8002770(*&byte_811D4E8[4 * *(v0 + 5)], byte_811D4E8);
    sprite_setAnimation(v0, byte_811D51C[*(v0 + 5)]);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(byte_811D526[*(v0 + 5)]);
    sub_8002E14(2);
    v1 = byte_100;
    if ( *(v0 + 4) != 1 )
        v1 = byte_200;
    sub_800306C(v1);
    v2 = 2;
    if ( *(v0 + 4) != 1 )
        v2 = 6;
    sub_800304A(v2);
    sub_8003060(4);
    sub_811DC00(120, 128);
    sprite_setCoordinates(v3, v4);
    v5 = 16;
    if ( *(v0 + 4) != 1 )
        v5 = 17;
    *(v0 + 12) = v5;
    return sprite_setColorShader(v0, 0x7FFF);
}


// 0x811d530
int __noreturn sub_811D530()
{
    int v0; // r5

    *v0 = 1;
    initGuiSprite_8002770(*&byte_811D5B0[4 * *(v0 + 5)], byte_811D5B0);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(byte_811D5F2[*(v0 + 5)]);
    sub_8002E14(3);
    sub_800306C(*&byte_811D598[4 * *(v0 + 5)]);
    sub_800304A(byte_811D5E8[*(v0 + 5)]);
    sub_8003060(byte_811D5ED[*(v0 + 5)]);
    return sprite_setCoordinates(*&byte_811D5D4[4 * *(v0 + 5)], *&byte_811D5D4[4 * *(v0 + 5) + 2]);
}


// 0x811d5f8
int __noreturn sub_811D5F8()
{
    Battle *v0; // r5
    int v1; // r0
    __int16 v2; // r1

    SWI_LZ77UnCompReadNormalWrite8bit(comp_82FCA14, &unk_201AA00);
    initGuiSprite_8002770(143, &unk_201AA04);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_811DC00(128, 128);
    return sprite_setCoordinates(v1, v2);
}


// 0x811d634
int __fastcall sub_811D634(int a1, int a2, int a3)
{
    int result; // r0
    char v4; // zf

    result = getStructFrom2008450(a3);
    if ( !v4 )
    {
        sub_811D6CC();
        result = sub_811D6E8();
    }
    return result;
}


// 0x811d66c
int __fastcall sub_811D66C(int a1, int a2)
{
    int v2; // r6
    int result; // r0
    int v4; // r1
    int v9; // [sp+0h] [bp-18h]

    v9 = a1;
    v2 = a2;
    result = getStructFrom2008450(a2);
    if ( !_ZF )
    {
        result = 100 * v9;
        __asm { SVC         6 }
        if ( v2 )
            result = -100 * v9;
        *(v4 + 20) = result;
    }
    return result;
}


// 0x811d69c
int __fastcall sub_811D69C(int a1, int a2)
{
    int v2; // r6
    int result; // r0
    int v4; // r1
    int v9; // [sp+0h] [bp-18h]

    v9 = a1;
    v2 = a2;
    result = getStructFrom2008450(a2);
    if ( !_ZF )
    {
        result = 100 * v9;
        __asm { SVC         6 }
        if ( v2 )
            result = -100 * v9;
        *(v4 + 20) = result;
    }
    return result;
}


// 0x811d6cc
int sub_811D6CC()
{
    int v0; // r5
    int result; // r0

    *(v0 + 24) += *(v0 + 20) << 8;
    result = *(v0 + 28) + (*(v0 + 22) << 8);
    *(v0 + 28) = result;
    return result;
}


// 0x811d6e8
int sub_811D6E8()
{
    int v0; // r5

    return sprite_setCoordinates(*(v0 + 26), *(v0 + 30));
}


// 0x811d6f4
signed int sub_811D6F4()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r0
    __int16 v3; // r1

    *v0 = 1;
    if ( byte_811D7B0[*(v0 + 5)] )
    {
        initGuiSprite_8002770(byte_811D7B0[*(v0 + 5)], &byte_0[1]);
        *v0 = 35;
        sprite_setAnimation(v0, 0);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        sub_800304A(4);
        sprite_setPallete(byte_811D7C4[*(v0 + 5)]);
        sub_800306C(&loc_1A0);
        sub_8002E14(2);
        sub_8003060(byte_811D7BA[*(v0 + 5)]);
        sub_811DC00(*&byte_811D788[4 * *(v0 + 5)] + 120, *&byte_811D788[4 * *(v0 + 5) + 2] + 128);
        sprite_setCoordinates(v2, v3);
        *(v0 + 12) = 16;
        result = sprite_setColorShader(v0, 0x7FFF);
    }
    else
    {
        result = 1;
        *(v0 + 7) = 1;
    }
    return result;
}


// 0x811d7d0
signed int sub_811D7D0()
{
    int v0; // r5
    int v1; // r6
    signed int result; // r0
    int v3; // r0
    __int16 v4; // r1
    int v5; // r0

    *v0 = 1;
    if ( byte_811D884[*(v0 + 5)] )
    {
        initGuiSprite_8002770(byte_811D884[*(v0 + 5)], &byte_0[1]);
        *v0 = 35;
        sprite_setAnimation(v0, 0);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        sub_800304A(5);
        sprite_setPallete(byte_811D88E[*(v0 + 5)]);
        sub_800306C(&byte_1E0);
        sub_8002E14(2);
        sub_8003060(byte_811D889[*(v0 + 5)]);
        sub_811DC00(*&byte_811D87C[4 * *(v0 + 6)], *&byte_811D87C[4 * *(v0 + 6) + 2]);
        *(v0 + 26) = v3;
        *(v0 + 30) = v4;
        sprite_setCoordinates(v3, v4);
        *(v0 + 20) = *(&off_811D874 + *(v0 + 6));
        *(v0 + 22) = 0;
        v5 = 0;
        if ( v1 )
            v5 = 1;
        result = sprite_setFlip(v0, v5);
    }
    else
    {
        result = 1;
        *(v0 + 7) = 1;
    }
    return result;
}


// 0x811d894
signed int sub_811D894()
{
    int v0; // r5
    signed int result; // r0

    *v0 = 1;
    if ( byte_811D940[*(v0 + 5)] )
    {
        initGuiSprite_8002770(byte_811D940[*(v0 + 5)], &byte_0[1]);
        sprite_setAnimation(v0, 0);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        sub_800304A(byte_811D945[*(v0 + 5)]);
        sprite_setPallete(byte_811D94F[*(v0 + 5)]);
        sub_800306C(*(&off_811D904 + *(v0 + 5)));
        sub_8002E14(3);
        sub_8003060(byte_811D94A[*(v0 + 5)]);
        result = sprite_setCoordinates(*&byte_811D92C[4 * *(v0 + 5)], *&byte_811D92C[4 * *(v0 + 5) + 2]);
    }
    else
    {
        result = 1;
        *(v0 + 7) = 1;
    }
    return result;
}


// 0x811d954
signed int __noreturn sub_811D954()
{
    int v0; // r5
    u8 v1; // r0
    signed int result; // r0

    *v0 = 1;
    initGuiSprite_8002770(147, &unk_201AA04);
    v1 = *(&dword_811D9F4 + *(v0 + 5));
    *(v0 + 16) = v1;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(byte_811D9F8[*(v0 + 5)]);
    sprite_setPallete(0);
    sub_800306C(off_811D9BC[*(v0 + 5)]);
    sub_8002E14(2);
    sub_8003060(*(&dword_811D9F0 + *(v0 + 5)));
    *(v0 + 26) = 128;
    *(v0 + 30) = 96;
    sprite_setCoordinates(128, 96);
    result = 16;
    *(v0 + 12) = 16;
    return result;
}


// 0x811da00
int sub_811DA00()
{
    int v0; // r5
    int v1; // r1
    int result; // r0

    *v0 = 1;
    v1 = 4 * *(v0 + 5);
    result = *&byte_811DA74[v1];
    if ( result )
    {
        initGuiSprite_8002770(result, v1);
        *v0 = 35;
        sprite_setAnimation(v0, *(&dword_811DA90 + *(v0 + 5)));
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        sub_800304A(byte_811DA68[*(v0 + 5)]);
        sprite_setPallete(0);
        sub_800306C(*&byte_811DA68[4 * *(v0 + 5)]);
        sub_8002E14(3);
        sub_8003060(byte_811DA8E[*(v0 + 5)]);
        result = sprite_setCoordinates(128, 144);
    }
    return result;
}


// 0x811da94
int __fastcall __noreturn sub_811DA94(int a1, int a2)
{
    Battle *v2; // r5
    int v3; // r1
    int v4; // r2
    int v5; // r1
    int v6; // r2

    initGuiSprite_8002770(150, a2);
    v2->objFlags = 35;
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(6);
    sprite_setPallete(0);
    sub_800306C(&byte_320);
    sub_8002E14(2);
    sub_8003060(1);
    PlaySoundEffect(403, v3, v4);
    PlaySoundEffect(243, v5, v6);
    return sprite_setCoordinates(192, 100);
}


// 0x811daf0
int __fastcall __noreturn sub_811DAF0(int a1, int a2)
{
    int v2; // r5
    int result; // r0

    initGuiSprite_8002770(151, a2);
    *v2 = 1;
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(6);
    sprite_setPallete(0);
    sub_800306C(&byte_320);
    sub_8002E14(2);
    sub_8003060(1);
    sprite_setCoordinates(*&byte_811DB58[4 * *(v2 + 5)] + 176, *&byte_811DB58[4 * *(v2 + 5) + 2] + 108);
    result = *(&off_811DB74 + *(v2 + 5));
    *(v2 + 12) = result;
    return result;
}


// 0x811db7c
int __fastcall __noreturn sub_811DB7C(int a1, int a2)
{
    Battle *v2; // r5

    initGuiSprite_8002770(30, a2);
    v2->objFlags = 1;
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(12);
    sprite_setPallete(0);
    sub_800306C(dword_3A0);
    sub_8002E14(2);
    sub_8003060(1);
    return sprite_setCoordinates(byte_38, &word_8C);
}


// 0x811dbd0
char *sub_811DBD0()
{
    int v0; // r5
    char *result; // r0

    *(v0 + 5) += 5;
    result = sub_8046670(58, 6, (*(v0 + 4) >> 8 << 8) | 5);
    result[9] = 12;
    return result;
}


// 0x811dbf0
int __fastcall sub_811DBF0(int a1)
{
    int result; // r0
    int v2; // r1
    char v3; // zf

    result = getStructFrom2008450(a1);
    if ( !v3 )
    {
        result = 12;
        *(v2 + 12) = 12;
    }
    return result;
}


// 0x811dc00
void __fastcall sub_811DC00(int a1, int a2)
{
    int v2; // r1

    if ( byte_2011E42 == 4 || byte_2011E42 == 8 || byte_2011E42 == 12 )
        v2 = a2 + *&byte_811DC28[2 * byte_2011E46];
}


// 0x811dc34
int sub_811DC34()
{
    int v0; // r5

    return (*(&off_811DC48 + *(v0 + 8)))();
}


// 0x811dc54
void sub_811DC54()
{
    _BYTE *v0; // r5

    *v0 = 1;
    v0[8] = 4;
    sprite_setCoordinates(176, 64);
    v0[8] = 4;
    sub_811DC70();
}


// 0x811dc70
void sub_811DC70()
{
    Battle *v0; // r5

    if ( v0->objFlags & 2 )
        sprite_update(v0);
}


// 0x811dc80
int sub_811DC80()
{
    return sub_804668A();
}


// 0x811dc88
int __fastcall sub_811DC88(int a1, int a2)
{
    int result; // r0
    Battle *v3; // r1
    char v4; // zf
    Battle *v5; // r5
    unsigned int v6; // r4
    char *v7; // r1
    unsigned __int8 v8; // cf
    unsigned int v9; // r0
    int v10; // [sp+0h] [bp-10h]

    v10 = a1;
    result = getStructFrom2008450(a2);
    if ( !v4 )
    {
        v5 = v3;
        v3->objFlags = 1;
        v6 = 4 * v10;
        v7 = byte_811DD94;
        result = *&byte_811DD94[4 * v10];
        if ( result )
        {
            v8 = __CFSHL__(result, 1);
            v9 = 2 * result;
            if ( v8 )
            {
                SWI_LZ77UnCompReadNormalWrite8bit((v9 >> 1), &unk_20212F8);
                v7 = &unk_20212FC;
            }
            initGuiSprite_8002770(*&byte_811DD14[v6], v7);
            v5->objFlags = 35;
            sprite_setAnimation(v5, *(&off_811DE18 + (v6 >> 2)));
            sprite_loadAnimationData(v5);
            sprite_noShadow(v5);
            sprite_setPallete(byte_811DE54[v6 >> 2]);
            sub_8002E14(0);
            sub_800306C(byte_80);
            sub_800304A(1);
            sub_8003060(byte_811DE36[v6 >> 2]);
            result = sub_811DE74(v6 >> 2);
        }
    }
    return result;
}


// 0x811de74
int __fastcall sub_811DE74(int a1)
{
    return sprite_setCoordinates(*&byte_811DE94[4 * a1] + 176, *&byte_811DE94[4 * a1 + 2] + 64);
}


// 0x811df0c
int __fastcall sub_811DF0C(int a1)
{
    int result; // r0
    _BYTE *v2; // r1
    char v3; // zf

    result = getStructFrom2008450(a1);
    if ( !v3 )
    {
        result = 1;
        *v2 = 1;
    }
    return result;
}


// 0x811df1c
int sub_811DF1C()
{
    int v0; // r5

    return (*(&off_811DF30 + *(v0 + 8)))();
}


// 0x811df40
void __noreturn sub_811DF40()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    (loc_8002774)(59);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(11);
    sprite_setPallete(0);
    sub_8003060(0);
    sub_800306C(dword_270);
    sub_8002E14(1);
    sprite_setCoordinates(210, 10);
    v0->currAction = 0;
    v0->currState = 4;
    sub_811DF94();
}


// 0x811df94
void __noreturn sub_811DF94()
{
    Battle *v0; // r5
    int v1; // r6
    char v2; // zf

    if ( !*(v1 + 11) )
    {
        *(v1 + 4) = -1;
        sprite_setAnimation(v0, 0);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
LABEL_5:
        sub_811DFD4();
        goto LABEL_6;
    }
    TestEventFlagFromImmediate(11, 242);
    if ( v2 )
        goto LABEL_5;
    sub_811E000();
LABEL_6:
    sprite_update(v0);
}


// 0x811dfcc
int sub_811DFCC()
{
    return sub_80468E0();
}


// 0x811dfd4
int sub_811DFD4()
{
    int v0; // r6
    int v1; // r0
    int result; // r0
    int v3; // r0

    v1 = *(v0 + 4);
    if ( v1 == 255 )
    {
        *(v0 + 32) = 1065353216;
        result = sprite_setUnk0x2c(1065353216);
    }
    else
    {
        v3 = *(v0 + 32) & ~(1 << (29 - v1));
        *(v0 + 32) = v3;
        result = sprite_setUnk0x2c(v3);
    }
    return result;
}


// 0x811e000
int sub_811E000()
{
    Battle *v0; // r5
    int v1; // r3
    int result; // r0

    v1 = v0->currAction;
    if ( v1 <= 0 )
    {
        v0->currAction = v1 + 1;
        sprite_setUnk0x2c(1);
        sprite_setAnimation(v0, 1u);
        sprite_loadAnimationData(v0);
        result = sprite_noShadow(v0);
    }
    return result;
}


// 0x811e024
int sub_811E024()
{
    int v0; // r5

    return (*(&off_811E038 + *(v0 + 8)))();
}


// 0x811e048
void __fastcall __noreturn sub_811E048(int a1, int a2)
{
    Battle *v2; // r5

    v2->objFlags = 35;
    initGuiSprite_8002770(49, a2);
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(11);
    sub_800306C(&dword_298);
    sub_8003060(0);
    sub_8002E14(1);
    sprite_setPallete(0);
    v2->currState = 4;
    sub_811E090();
}


// 0x811e090
void __noreturn sub_811E090()
{
    Battle *v0; // r5
    int v1; // r6
    u8 v2; // r4
    u8 v3; // r4

    v2 = v0->objFlags;
    if ( *(v1 + 14) )
        v3 = v2 & 0xFD;
    else
        v3 = v2 | 2;
    v0->objFlags = v3;
    sprite_setCoordinates(188, 10);
    sprite_update(v0);
}


// 0x811e0b2
int sub_811E0B2()
{
    return sub_80468E0();
}


// 0x811e0ba
int __fastcall sub_811E0BA(int a1, int a2, int a3, int a4)
{
    char *v4; // r7
    int v5; // r4
    unsigned int v6; // r0
    int v7; // r6
    unsigned int v8; // r2
    signed int v9; // r6

    v4 = &byte_2027200;
    ZeroFillByWord(&byte_2027200, 320);
    v5 = dword_2001020;
    if ( dword_2001020 )
    {
        BYTE2(dword_2001020) = 0;
        v6 = 192;
        if ( dword_2001020 < 40 )
        {
            v6 = 208;
            if ( dword_2001020 < 20 )
                v6 = 224;
        }
        v7 = 0;
        do
        {
            LOBYTE(v8) = 0;
            if ( v7 < v5 )
            {
                v8 = v6 >> 4;
                if ( ++v7 < v5 )
                    LOBYTE(v8) = (v6 >> 4) | v6;
            }
            *v4 = v8;
            v4[4] = v8;
            v4[8] = v8;
            v4[12] = v8;
            v4[16] = v8;
            v4[20] = v8;
            v4[24] = v8;
            (v4++)[28] = v8;
            if ( !(++v7 & 7) )
                v4 += 28;
        }
        while ( v7 < v5 );
    }
    else if ( (++BYTE2(dword_2001020) & 0x3F) >= 32 )
    {
        v9 = 0;
        do
        {
            *v4 = -18;
            v4[4] = -18;
            v4[8] = -18;
            v4[12] = -18;
            v4[16] = -18;
            v4[20] = -18;
            v4[24] = -18;
            (v4++)[28] = -18;
            v9 += 2;
            if ( !(v9 & 7) )
                v4 += 28;
        }
        while ( v9 < 80 );
    }
    return (loc_8000AC8)(&byte_2027200, 100750720, 320);
}


// 0x811e168
int sub_811E168()
{
    int v0; // r5

    return (*(&off_811E17C + *(v0 + 8)))();
}


// 0x811e18c
void __fastcall __noreturn sub_811E18C(int a1, int a2)
{
    Battle *v2; // r5

    v2->objFlags = 35;
    initGuiSprite_8002770(50, a2);
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(10);
    sub_800306C(dword_258);
    sub_8003060(0);
    sub_8002E14(1);
    sprite_setPallete(0);
    v2->currState = 4;
    sub_811E1D4();
}


// 0x811e1d4
void __noreturn sub_811E1D4()
{
    Battle *v0; // r5
    int v1; // r6
    u8 v2; // r4
    int v3; // r0
    u8 v4; // r4

    v2 = v0->objFlags;
    v3 = *(v1 + 14);
    if ( *(v1 + 14) )
        v4 = v2 & 0xFD;
    else
        v4 = v2 | 2;
    v0->objFlags = v4;
    sub_811E202(v3);
    sprite_setCoordinates(204, 30);
    sprite_update(v0);
}


// 0x811e1fa
int sub_811E1FA()
{
    return sub_80468E0();
}


// 0x811e202
int __fastcall sub_811E202(int a1)
{
    char v1; // r0
    char v6; // r1

    v1 = sub_81418E4();
    __asm
    {
        SVC         6
        SVC         6
    }
    return sprite_setUnk0x2c(~(0x10000000u >> v1) & 0x1FFF7FF8 & ~(0x8000u >> v6) & 0xFFFFFFFB);
}


// 0x811e248
int sub_811E248()
{
    int v0; // r5

    return (*(&off_811E25C + *(v0 + 8)))();
}


// 0x811e26c
void __noreturn sub_811E26C()
{
    int v0; // r5
    u8 v1; // r0

    *v0 = 35;
    (loc_8002774)(51);
    v1 = *(v0 + 4);
    *(v0 + 5) = v1;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(11);
    sub_800306C(&dword_290);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setPallete(0);
    *(v0 + 8) = 4;
    sub_811E2B4();
}


// 0x811e2b4
void __noreturn sub_811E2B4()
{
    Battle *v0; // r5
    int v1; // r6
    u8 v2; // r4
    u8 v3; // r4
    int v4; // r0
    int v5; // r0
    __int16 v6; // r1
    char v7; // zf

    v2 = v0->objFlags;
    if ( *(v1 + 13) )
        v3 = v2 & 0xFD;
    else
        v3 = v2 | 2;
    v0->objFlags = v3;
    if ( LOBYTE(v0->objParams) )
    {
        v4 = sub_81421D0() + 1;
        if ( v4 != BYTE1(v0->objParams) )
        {
            BYTE1(v0->objParams) = v4;
            sprite_setAnimation(v0, v4);
            sprite_loadAnimationData(v0);
        }
    }
    sub_8036F70(&dword_8089128);
    v5 = 220;
    v6 = 36;
    if ( !v7 )
    {
        v5 = 200;
        v6 = 44;
    }
    sprite_setCoordinates(v5, v6);
    sub_811E314();
    sprite_update(v0);
}


// 0x811e30c
int sub_811E30C()
{
    return sub_80468E0();
}


// 0x811e314
int sub_811E314()
{
    unsigned int v0; // r7
    unsigned int v1; // r7
    unsigned int v2; // r7
    char v3; // r0

    v0 = ~(0x8000000u >> sub_8142190(0)) & 0xFFFFFFF;
    v1 = v0 & ~(0x100000u >> sub_8142190(1));
    v2 = v1 & ~(0x2000u >> sub_8142190(2));
    v3 = sub_8142190(3);
    return sprite_setUnk0x2c(v2 & ~(0x40u >> v3));
}


// 0x811e360
int sub_811E360()
{
    int v0; // r5

    return (*(&off_811E374 + *(v0 + 8)))();
}


// 0x811e384
void __fastcall __noreturn sub_811E384(int a1, int a2)
{
    Battle *v2; // r5

    v2->objFlags = 35;
    initGuiSprite_8002770(54, a2);
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800304A(10);
    sub_800306C(dword_280);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setPallete(0);
    v2->currState = 4;
    sub_811E3CC();
}


// 0x811e3cc
void __noreturn sub_811E3CC()
{
    Battle *v0; // r5
    int v1; // r6
    u8 v2; // r4
    u8 v3; // r4
    int v4; // r0
    __int16 v5; // r1
    char v6; // zf
    int v7; // [sp-4h] [bp-8h]

    v2 = v0->objFlags;
    if ( *(v1 + 13) )
        v3 = v2 & 0xFD;
    else
        v3 = v2 | 2;
    v0->objFlags = v3;
    v7 = 16 * sub_81421D0() + 12;
    sub_8036F70(&dword_8089128);
    v4 = 220;
    v5 = v7;
    if ( !v6 )
    {
        v4 = 200;
        v5 = v7 + 8;
    }
    sprite_setCoordinates(v4, v5);
    sprite_update(v0);
}


// 0x811e40c
int sub_811E40C()
{
    return sub_80468E0();
}


// 0x811e418
int sub_811E418()
{
    int v0; // r5

    return (*(&off_811E42C + *(v0 + 8)))();
}


// 0x811e438
void __fastcall __noreturn sub_811E438(int a1, int a2)
{
    Battle *v2; // r5

    v2->objFlags = 35;
    initGuiSprite_8002770(161, a2);
    sprite_setAnimation(v2, 1u);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800306C(dword_280);
    sub_800304A(12);
    sprite_setPallete(0);
    sub_8003060(0);
    sub_8002E14(2);
    sub_811E51C();
    sub_811E548();
    v2->currState = 4;
    v2->currAction = 1;
    sub_811E490();
}


// 0x811e490
void __noreturn sub_811E490()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r0

    if ( byte_2011E42 >= 16 )
    {
        if ( *(v0 + 9) != 2 )
        {
            *(v0 + 9) = 2;
            *(v0 + 28) = 0;
        }
        sub_811E558();
    }
    if ( *(v0 + 9) == 1 )
    {
        v3 = *(v0 + 7) - 1;
        *(v0 + 7) = v3;
        if ( !v3 )
            *(v0 + 9) = 0;
        goto LABEL_12;
    }
    v1 = *(v0 + 20) + 0x8000;
    *(v0 + 20) = v1;
    v2 = *(v0 + 12) - v1;
    *(v0 + 12) = v2;
    if ( v2 >> 16 >= -168 )
    {
LABEL_12:
        sprite_setCoordinates(*(v0 + 14), *(v0 + 18));
        goto LABEL_13;
    }
    if ( *(v0 + 9) != 2 )
    {
        sub_811E51C();
        sub_811E548();
        ++*(v0 + 9);
        goto LABEL_12;
    }
    *(v0 + 8) = 8;
LABEL_13:
    sprite_update(v0);
}


// 0x811e510
void __noreturn sub_811E510()
{
    Battle *v0; // r5

    sub_811E558();
    sprite_update(v0);
}


// 0x811e51c
signed int sub_811E51C()
{
    int v0; // r5
    char v1; // r0
    __int16 v2; // r1
    signed int result; // r0

    GetRNG2();
    v2 = 32 * *(v0 + 3) + (v1 & 0x1F) + 16;
    *(v0 + 14) = 350;
    *(v0 + 18) = v2;
    sprite_setCoordinates(350, v2);
    result = 1572864;
    *(v0 + 20) = 1572864;
    return result;
}


// 0x811e548
int sub_811E548()
{
    int v0; // r5
    char v1; // r0
    int result; // r0

    GetRNG2();
    result = v1 & 0x3F;
    *(v0 + 7) = result;
    return result;
}


// 0x811e558
int sub_811E558()
{
    int v0; // r5
    int result; // r0

    sprite_setColorShader(v0, *(v0 + 28) | 32 * *(v0 + 28) | (*(v0 + 28) << 10) | 0x8000);
    result = *(v0 + 28) + 1;
    if ( result < 32 )
        *(v0 + 28) = result;
    return result;
}


// 0x811e57c
int sub_811E57C()
{
    int v0; // r5

    return (*(&off_811E590 + *(v0 + 8)))();
}


// 0x811e59c
void __fastcall __noreturn sub_811E59C(int a1, int a2)
{
    Battle *v2; // r5

    v2->objFlags = 35;
    initGuiSprite_8002770(58, a2);
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800306C(dword_280);
    sub_800304A(10);
    sprite_setPallete(0);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setCoordinates(216, 14);
    v2->currState = 4;
    sub_811E5EC();
}


// 0x811e5ec
void __noreturn sub_811E5EC()
{
    Battle *v0; // r5

    sub_811E600();
    sprite_update(v0);
}


// 0x811e5f8
int sub_811E5F8()
{
    return sub_80468E0();
}


// 0x811e600
int sub_811E600()
{
    char v0; // r0

    v0 = sub_8143198();
    return sprite_setUnk0x2c(~(0x20000000u >> v0) & 0x3FF00000);
}


// 0x811e61c
int sub_811E61C()
{
    int v0; // r5

    return (*(&off_811E630 + *(v0 + 8)))();
}


// 0x811e63c
void __fastcall __noreturn sub_811E63C(int a1, int a2)
{
    Battle *v2; // r5

    v2->objFlags = 35;
    initGuiSprite_8002770(57, a2);
    sprite_setAnimation(v2, 0);
    sprite_loadAnimationData(v2);
    sprite_noShadow(v2);
    sub_800306C(dword_2A8);
    sub_800304A(11);
    sprite_setPallete(0);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setCoordinates(220, 44);
    v2->currState = 4;
    sub_811E68C();
}


// 0x811e68c
void __noreturn sub_811E68C()
{
    Battle *v0; // r5

    sub_811E6A0();
    sprite_update(v0);
}


// 0x811e698
int sub_811E698()
{
    return sub_80468E0();
}


// 0x811e6a0
int sub_811E6A0()
{
    int v0; // r0

    v0 = sub_81433DA();
    return sprite_setUnk0x2c(byte_811E6B8[v0] << 24);
}


// 0x811e6c0
int sub_811E6C0()
{
    int v0; // r5

    return (*(&off_811E6D4 + *(v0 + 8)))();
}


// 0x811e6e4
void __noreturn sub_811E6E4()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    (loc_8002774)(99);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(11);
    sub_800306C(byte_1F0);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setPallete(0);
    v0->currState = 4;
    sub_811E72C();
}


// 0x811e72c
void __noreturn sub_811E72C()
{
    Battle *v0; // r5

    sprite_setCoordinates(120, 120);
    sprite_update(v0);
}


// 0x811e73c
int sub_811E73C()
{
    return sub_80468E0();
}


// 0x811e744
int __fastcall sub_811E744(int a1, int a2, int a3, int a4)
{
    int v4; // r6
    char *v5; // r7
    signed int v6; // r4
    int v7; // r0
    signed int v8; // r3

    ZeroFillByWord(&unk_2027000, 832);
    v4 = sub_8144010();
    v5 = &unk_2027000;
    v6 = 0;
    do
    {
        v7 = *&byte_811E7A0[v6];
        if ( v4 < 8 )
        {
            v7 &= 0xFFFFFFFF >> (32 - 4 * v4);
            v4 = 8;
        }
        v8 = 0;
        do
        {
            *&v5[v8] = v7;
            v8 += 4;
        }
        while ( v8 < 40 );
        v4 -= 8;
        v5 += 64;
        v6 += 4;
    }
    while ( v6 < 52 );
    return (loc_8000AC4)(&unk_2027000, 100745600, 832);
}


// 0x811e7d4
int sub_811E7D4()
{
    int v0; // r5

    return (*(&off_811E7E8 + *(v0 + 8)))();
}


// 0x811e7f8
void __noreturn sub_811E7F8()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    (loc_8002774)(100);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(11);
    sub_800306C(&dword_230);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setPallete(0);
    v0->currState = 4;
    sub_811E840();
}


// 0x811e840
void __noreturn sub_811E840()
{
    Battle *v0; // r5

    sprite_setCoordinates(120, 120);
    sprite_update(v0);
}


// 0x811e850
int sub_811E850()
{
    return sub_80468E0();
}


// 0x811e858
int sub_811E858()
{
    int v0; // r5

    return (*(&off_811E86C + *(v0 + 8)))();
}


// 0x811e87c
void __noreturn sub_811E87C()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    (loc_8002774)(101);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(15);
    sub_800306C(&dword_290);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setPallete(0);
    v0->currState = 4;
    sub_811E8C4();
}


// 0x811e8c4
void __noreturn sub_811E8C4()
{
    Battle *v0; // r5

    sub_811E8E0();
    sprite_setCoordinates(224, 62);
    sprite_update(v0);
}


// 0x811e8d8
int sub_811E8D8()
{
    return sub_80468E0();
}


// 0x811e8e0
int sub_811E8E0()
{
    unsigned int v0; // r0

    v0 = sub_8143F90();
    __asm { SVC         6 }
    return sprite_setUnk0x2c(*&byte_811E8FC[4 * (v0 >> 16)]);
}


// 0x811e914
int sub_811E914()
{
    int v0; // r5

    return (*(&off_811E928 + *(v0 + 8)))();
}


// 0x811e938
void __noreturn sub_811E938()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    (loc_8002774)(102);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(15);
    sub_800306C(dword_2A8);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setPallete(0);
    v0->currState = 4;
    sub_811E980();
}


// 0x811e980
void __noreturn sub_811E980()
{
    Battle *v0; // r5
    int v1; // r0

    v1 = sub_8143F90();
    sprite_setCoordinates(224, 66 - HIWORD(v1));
    sprite_update(v0);
}


// 0x811e998
int sub_811E998()
{
    return sub_80468E0();
}


// 0x811e9a0
int sub_811E9A0()
{
    int v0; // r5

    return (*(&off_811E9B4 + *(v0 + 8)))();
}


// 0x811e9c4
void __noreturn sub_811E9C4()
{
    Battle *v0; // r5

    v0->objFlags = 35;
    (loc_8002774)(103);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_800304A(15);
    sub_800306C(&dword_250);
    sub_8003060(0);
    sub_8002E14(0);
    sprite_setPallete(0);
    v0->currState = 4;
    sub_811EA0C();
}


// 0x811ea0c
void __noreturn sub_811EA0C()
{
    Battle *v0; // r5

    sub_811EA28();
    sprite_setCoordinates(206, 12);
    sprite_update(v0);
}


// 0x811ea20
int sub_811EA20()
{
    return sub_80468E0();
}


// 0x811ea28
int sub_811EA28()
{
    char v0; // r0
    char v5; // r1

    v0 = sub_8143D4C();
    __asm
    {
        SVC         6
        SVC         6
    }
    return sprite_setUnk0x2c(~(0x10000000u >> v0) & 0x1FFFDFFF & ~(0x2000u >> v5));
}


// 0x811ebe0
// (u8 flags) -> zf
void sub_811EBE0()
{
    ;
}


// 0x811ebe8
int __fastcall sub_811EBE8(int result)
{
    eFlags200DF25 |= result;
    return result;
}


// 0x811ebf4
int __fastcall sub_811EBF4(int result)
{
    eFlags200DF25 &= ~result;
    return result;
}


// 0x811ec00
void __fastcall sub_811EC00(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&ePETMenuData, 24);
}


// 0x811ec10
void __fastcall sub_811EC10(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    char v5; // r1

    ZeroFillByWord(*(v4 + oToolkit_SubmenuPtr), 128);
    ZeroFillByWord(&ePETMenuData, 24);
    sub_811EBE8(1);
    word_200DF30 = -32;
    byte_200DF2A = sub_8120CC8(0, byte_811EBDA);
    byte_200DF2B = v5;
    sub_8046664();
}


// 0x811ec50
void __noreturn sub_811EC50()
{
    sub_811EC68();
    sub_811EFB8();
}


// 0x811ec68
int sub_811EC68()
{
    int v0; // r6
    int v1; // r7
    char (*v2)[32]; // r0
    int v3; // r7
    int v4; // r1
    signed int v5; // r1
    int v6; // r7
    int v7; // r0

    v0 = 0;
    v1 = 0;
    do
    {
        v2 = *(&off_811ECFC + v1);
        v3 = v1 + 4;
        v4 = *(&off_811ECFC + v3);
        v1 = v3 + 4;
        *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
        v0 += 4;
        v5 = 0;
        do
        {
            *(&unk_20096E0 + v0) = *(&off_811ECFC + v1);
            v0 += 4;
            v1 += 4;
            ++v5;
        }
        while ( v5 < 2 );
    }
    while ( v1 < 32 );
    v6 = 0;
    do
    {
        v7 = *(&off_811ECB4 + v6);
        *(&unk_20096E0 + v0) = v7;
        v6 += 4;
        v0 += 4;
    }
    while ( v7 );
    return decomp_initGfx_8000B8E(&unk_20096E0);
}


// 0x811ed1c
// () -> void
int ho_811ED1C()
{
    (*(jt_811ED3C + ePETMenuData))();
    sub_80465BC();
    sub_80465F8();
    return sub_811F508();
}


// 0x811ed58
// () -> void
void sub_811ED58()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf

    v1 = *(v0 + 16);
    v2 = __OFADD__(v1, 4);
    v1 += 4;
    *(v0 + 16) = v1;
    if ( !((v1 < 0) ^ v2) )
    {
        sub_8001B1C(byte_811EA68);
        sub_8001B1C(byte_811EAB8);
        *(v0 + 16) = 0;
        *(v0 + 9) = 0;
        *(v0 + 14) = 0;
        *(v0 + 13) = 2;
        *v0 = 4;
        sub_80465A0(byte_811EB78);
        sub_811F1B8();
    }
    sub_811F0C8();
    sub_811F11C();
    CopyBackgroundTiles_PET_811EF70();
    if ( *(v0 + 16) >= 0 )
        CopyBackgroundTiles_onNaviSelect_811F54C();
}


// 0x811edb4
void sub_811EDB4()
{
    _BYTE *v0; // r5
    int v1; // r10
    char v2; // zf
    int v3; // r4
    int v4; // r1
    int v5; // r2
    int v6; // r1
    int v7; // r2
    int v8; // r1
    int v9; // r2

    CopyBackgroundTiles_PET_811EF70();
    CopyBackgroundTiles_onNaviSelect_811F54C();
    sub_811F24C();
    sub_8001B84(16);
    if ( v2 )
    {
        if ( v0[9] )
        {
            --v0[9];
            goto LABEL_22;
        }
        IsPaletteFadeActive();
        if ( !v2 )
        {
            JoypadKeyPressed();
            if ( !v2 )
                goto LABEL_10;
            JoypadKeyPressed();
            if ( !v2 )
            {
                if ( v0[4] >= 8 )
                {
LABEL_10:
                    *v0 = 8;
                    v0[13] = 1;
                    sub_8001B1C(byte_811EB04);
                    sub_8001B1C(byte_811EB5C);
                    goto LABEL_22;
                }
                v3 = v0[4];
                TestEventFlagFromImmediate(23, 6);
                if ( v2 || v3 != 6 && v3 != 7 )
                {
                    PlaySoundEffect(129, v4, v5);
                    *v0 = 16;
                    v0[1] = 4;
                    goto LABEL_22;
                }
                PlaySoundEffect(105, v4, v5);
            }
            if ( v0[4] < 8 )
            {
                JoypadKeyPressed();
                if ( v2 )
                {
                    v0[4] = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 4), 8, 1, v0[4]);
                }
                else
                {
                    PlaySoundEffect(127, v8, v9);
                    v0[3] = v0[4];
                    v0[4] = 8;
                    v0[6] = 0;
                    v0[7] = 0;
                }
            }
            else
            {
                JoypadKeyPressed();
                if ( !v2 )
                {
                    PlaySoundEffect(127, v6, v7);
                    v0[4] = v0[3];
                    v0[9] = 3;
                }
            }
        }
    }
LABEL_22:
    sub_811F1B8();
}


// 0x811ee98
void __noreturn sub_811EE98()
{
    int v0; // r5
    int v1; // r0
    char v2; // zf

    v1 = *(v0 + 16) - 4;
    *(v0 + 16) = v1;
    if ( v1 <= -32 )
    {
        *(v0 + 16) = -32;
        sub_8001B84(16);
        if ( v2 )
            *v0 = 12;
    }
    sub_811F0C8();
    sub_811F11C();
    CopyBackgroundTiles_PET_811EF70();
    CopyBackgroundTiles_onNaviSelect_811F54C();
}


// 0x811eed0
void __noreturn sub_811EED0()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    char v3; // zf

    copyMemory_8001850();
    sub_8033978();
    sub_811EBF4(1);
    PlaySoundEffect(124, v1, v2);
    TestEventFlagFromImmediate(1, 99);
    if ( !v3 )
        getPETNaviSelect();
    *(v0 + 1) = 8;
    sub_811F0C8();
    sub_811F11C();
    CopyBackgroundTiles_PET_811EF70();
}


// 0x811ef0c
void __fastcall __noreturn sub_811EF0C(int a1)
{
    sub_811F1B8();
}


// 0x811ef28
void __noreturn sub_811EF28()
{
    int v0; // r5

    *(v0 + 16) = 0;
    sub_8046664();
    sub_80465A0(byte_811EBA4);
    *v0 = 4;
    sub_8001B1C(byte_811EAD4);
    sub_8001B1C(byte_811EAEC);
    sub_811F1B8();
}


// 0x811ef70
// [disable] PET: (The PET graphics on top is gone)
void __cdecl CopyBackgroundTiles_PET_811EF70()
{
    int v0; // r5

    CopyBackgroundTiles(*(v0 + 16), 0, 0, PET_Gfx_tileIds, 30, dword_14);
}


// 0x811ef8c
void sub_811EF8C()
{
    decompAndCopyData(&off_811EF9C);
}


// 0x811efb8
int __noreturn sub_811EFB8()
{
    int v0; // r10
    int v1; // r6
    int v2; // r4

    v1 = *(v0 + oToolkit_Unk200a220_Ptr);
    if ( sub_8123360() )
    {
        v2 = getPETNaviSelect();
        *(v1 + 8) = GetField16FromSelectedS20047CCStruct(v2);
        *(v1 + 12) = GetField16FromSelectedS20047CCStruct(v2);
    }
    else
    {
        *(v1 + 8) = 0;
        *(v1 + 12) = 0;
    }
    renderTextGfx_8045F8C(byte_86CB360, 240, &unk_200BEA0, 0);
    return sub_811F5DC(&unk_200BEA0, byte_200CC20, 100749312, 9);
}


// 0x811f014
int __noreturn sub_811F014()
{
    int v0; // r10

    *(*(v0 + oToolkit_Unk200a220_Ptr) + 8) = sub_803D06C();
    renderTextGfx_8045F8C(byte_86CB360, 241, &unk_200C0E0, 0);
    return sub_811F5DC(&unk_200C0E0, byte_200CF20, 100749888, 7);
}


// 0x811f050
int __noreturn sub_811F050()
{
    int v0; // r10

    *(*(v0 + oToolkit_Unk200a220_Ptr) + 8) = sub_803D0F4();
    renderTextGfx_8045F8C(byte_86CB360, 242, &unk_200C2A0, 0);
    return sub_811F5DC(&unk_200C2A0, byte_200D220, 100750336, 6);
}


// 0x811f08c
int __fastcall __noreturn sub_811F08C(int a1)
{
    int v1; // r0

    v1 = sub_811F290();
    renderTextGfx_8045F8C(byte_86CB360, v1, byte_200C620, 0);
    return sub_811F5DC(byte_200C620, byte_200C920, 100751232, 12);
}


// 0x811f0c8
int sub_811F0C8()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // r1

    if ( v0[4] == 8 )
    {
        result = sub_811F184(&word_3001B2C, off_811F0F8, v0[6], v0[7]);
        v0[7] = result;
        v0[6] = v2;
    }
    else
    {
        result = 410;
        word_3001B2C = 410;
    }
    return result;
}


// 0x811f11c
int sub_811F11C()
{
    int v0; // r5
    signed int v1; // r0
    int v2; // r0
    int result; // r0
    char v4; // zf

    v1 = 0;
    do
    {
        **&byte_811F158[v1] = 21375;
        v1 += 4;
    }
    while ( v1 < 32 );
    v2 = *(v0 + 4);
    if ( v2 != 8 )
        **&byte_811F158[4 * v2] = 31742;
    result = TestEventFlagFromImmediate(23, 6);
    if ( !v4 )
    {
        word_3001B58 = 23162;
        word_3001B56 = 23162;
    }
    return result;
}


// 0x811f184
int __fastcall sub_811F184(_WORD *a1, char *a2, int a3, int a4)
{
    Toolkit *tk; // r10
    unsigned __int8 v5; // vf
    int v6; // r3
    _WORD *v8; // r7
    __int16 *v9; // r6
    int v10; // r2
    __int16 v11; // r0

    v5 = __OFSUB__(a4, 1);
    v6 = a4 - 1;
    if ( !(((v6 < 0) ^ v5) | (v6 == 0)) )
        return v6;
    v8 = a1;
    v9 = *&a2[4 * *(tk->unk_2001C04 + 6)];
    v10 = 2 * a3;
    v11 = v9[v10];
    if ( !v9[v10] )
    {
        v10 = 0;
        v11 = *v9;
    }
    *v8 = v11;
    return v9[v10 + 1];
}


// 0x811f1b8
signed int __noreturn sub_811F1B8()
{
    signed int *v0; // r7
    signed int v1; // r6
    signed int *v2; // r7
    signed int v3; // r6
    signed int result; // r0

    v0 = &dword_811F1F0;
    v1 = 0;
    do
    {
        sub_802FE28(*v0, *(dword_4 + v0), 0, 1);
        v0 += 2;
        ++v1;
    }
    while ( v1 < 2 );
    v2 = &dword_811F204;
    v3 = 0;
    do
    {
        result = sub_802FE28(*v2, *(dword_4 + v2), 0, 1);
        v2 += 2;
        ++v3;
    }
    while ( v3 < 2 );
    return result;
}


// 0x811f214
signed int __noreturn sub_811F214()
{
    signed int *v0; // r7
    signed int v1; // r6
    signed int result; // r0

    v0 = &dword_811F234;
    v1 = 0;
    do
    {
        result = sub_802FE28(*v0, *(dword_4 + v0), 0, 1);
        v0 += 2;
        ++v1;
    }
    while ( v1 < 3 );
    return result;
}


// 0x811f24c
int sub_811F24C()
{
    int v0; // r5
    int v1; // r0
    signed int *v2; // r7
    int v3; // r6
    int result; // r0

    v1 = *(v0 + 12) + 1;
    if ( v1 <= 3 )
        *(v0 + 12) = v1;
    v2 = &dword_811F278;
    v3 = 0;
    do
    {
        sub_802FE28(*v2, *(dword_4 + v2), 0, 1);
        v2 += 2;
        ++v3;
        result = *(v0 + 12);
    }
    while ( v3 < result );
    return result;
}


// 0x811f290
int sub_811F290()
{
    int v0; // r10
    int v1; // r2
    signed int v2; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = *(v1 + oGameState_MapGroup);
    if ( v2 >= 128 )
        v2 -= 121;
    return (*off_811F2B0[v2])[*(v1 + oGameState_MapNumber)];
}


// 0x811f508
// () -> void
int sub_811F508()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    char v3; // r1

    result = 0x100000;
    if ( !*(v0 + 16) )
    {
        result = sub_811FAF4(*(v0 + 16) | 0x100000, 0, *(v0 + 10), byte_811EBD0);
        v2 = *(v0 + 11) - 1;
        *(v0 + 11) = v2;
        if ( !v2 )
        {
            *(v0 + 10) = result;
            result = sub_8120CC8(result, byte_811EBDA);
            *(v0 + 11) = v3;
        }
    }
    return result;
}


// 0x811f54c
// () -> void
void CopyBackgroundTiles_onNaviSelect_811F54C()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    signed int v3; // r3
    bool v4; // nf
    unsigned __int8 v5; // vf
    signed int v6; // [sp+0h] [bp-1Ch]
    signed int v7; // [sp+4h] [bp-18h]

    v7 = 0;
    if ( getPETNaviSelect() )
        v7 = 1;
    v1 = *(v0 + 13) - 1;
    *(v0 + 13) = v1;
    if ( !v1 )
    {
        *(v0 + 13) = 2;
        v2 = *(v0 + 14) + 1;
        if ( v2 < 8 )
            *(v0 + 14) = v2;
    }
    v6 = *(v0 + 14);
    do
    {
        v3 = v6;
        if ( v6 == 3 )
        {
            if ( v7 )
                v3 = 8;
        }
        CopyBackgroundTiles(*(v0 + 16) + 4, 2 * v6 + 3, 0, off_811F5B8[v3], 9, &byte_0[2]);
        v5 = __OFSUB__(v6, 1);
        v4 = v6-- - 1 < 0;
    }
    while ( !(v4 ^ v5) );
}


// 0x811f5dc
int __fastcall sub_811F5DC(int a1, int a2, int a3, signed int a4)
{
    int v4; // r5
    int v5; // r4
    char *v6; // r3
    signed int v7; // r2
    signed int v8; // r2
    signed int v9; // r2
    char *v11; // [sp+0h] [bp-2Ch]
    int v12; // [sp+4h] [bp-28h]
    int v13; // [sp+Ch] [bp-20h]
    signed int v14; // [sp+10h] [bp-1Ch]
    signed int v15; // [sp+14h] [bp-18h]

    v13 = a3;
    v14 = a4;
    v15 = a4;
    v11 = 0;
    v12 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while ( 1 )
    {
        while ( 1 )
        {
            while ( v15 >= 4 )
            {
                v15 -= 4;
                while ( 1 )
                {
                    v9 = 0;
                    do
                    {
                        *(a2 + v5) = *&v6[a1];
                        v5 += 4;
                        v6 += 4;
                        v9 += 4;
                    }
                    while ( v9 < 32 );
                    v6 += 32;
                    if ( ++v12 >= 4 )
                    {
                        v6 = v11 + 32;
                        v12 = 0;
                        if ( ++v4 >= 2 )
                            break;
                    }
                }
                v12 = 0;
                v4 = 0;
                v6 = &byte_100[v11];
                v11 = &byte_100[v11];
            }
            if ( v15 < 2 )
                break;
            v15 -= 2;
            while ( 1 )
            {
                v8 = 0;
                do
                {
                    *(a2 + v5) = *&v6[a1];
                    v5 += 4;
                    v6 += 4;
                    v8 += 4;
                }
                while ( v8 < 32 );
                v6 += 32;
                if ( ++v12 >= 2 )
                {
                    v6 = v11 + 32;
                    v12 = 0;
                    if ( ++v4 >= 2 )
                        break;
                }
            }
            v12 = 0;
            v4 = 0;
            v6 = v11 + 128;
            v11 += 128;
        }
        if ( v15 < 1 )
            break;
        --v15;
        v7 = 0;
        do
        {
            *(a2 + v5) = *&v6[a1];
            v5 += 4;
            v6 += 4;
            v7 += 4;
        }
        while ( v7 < 64 );
        v12 = 0;
        v4 = 0;
        v6 = v11 + 64;
        v11 += 64;
    }
    return (loc_8000AC8)(a2, v13, v14 << 6);
}


// 0x811f6c0
int __fastcall sub_811F6C0(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    _BYTE *v5; // r4
    int result; // r0

    v5 = *(v4 + oToolkit_SubmenuPtr);
    ZeroFillByWord(*(v4 + oToolkit_SubmenuPtr), 128);
    *v5 = 4 * byte_200DF24;
    result = *(v4 + oToolkit_GameStatePtr);
    *(result + oGameState_LastMapGroup) = *(result + oGameState_MapGroup);
    return result;
}


// 0x811f6e0
int __fastcall sub_811F6E0(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    _BYTE *v5; // r4
    int result; // r0

    v5 = *(v4 + oToolkit_SubmenuPtr);
    ZeroFillByWord(*(v4 + oToolkit_SubmenuPtr), 128);
    *v5 = 16;
    v5[13] = 1;
    result = *(v4 + oToolkit_GameStatePtr);
    *(result + oGameState_LastMapGroup) = *(result + oGameState_MapGroup);
    return result;
}


// 0x811f708
signed int sub_811F708()
{
    int v0; // r10
    signed int result; // r0

    sub_811F728();
    *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_16) = 8;
    ePETMenuData = 20;
    byte_200DF21 = 0;
    byte_200DF28 = 0;
    result = 3;
    byte_200DF29 = 3;
    return result;
}


// 0x811f728
int sub_811F728()
{
    int v0; // r10

    **v0 = 4;
    **(v0 + oToolkit_GameStatePtr) = 0;
    **(v0 + oToolkit_RenderInfoPtr) = &byte_40;
    sub_80015FC(6);
    sub_809F68C();
    chatbox_8040818();
    return chatbox_clear_eFlags2009F38(64);
}


// 0x811f758
int __noreturn sub_811F758()
{
    int v0; // r10
    _BYTE *v1; // r0
    int v2; // r2
    int v3; // r3

    sub_8005524();
    v1 = *(v0 + oToolkit_SubmenuPtr);
    *v1 = 24;
    return sub_8129248(v1, 24, v2, v3);
}


// 0x811f774
// () -> void
void SubMenuControl()
{
    int v0; // r10
    unsigned __int8 *v1; // r5
    int v2; // r0

    v1 = *(v0 + oToolkit_SubmenuPtr);
    (*(&JumpTable811F7A0 + *v1))();
    if ( *v1 != 24 || (v2 = v1[1], v2 != 24) && v2 != 28 )
        GetRNG2();
}


// 0x811f7ec
void JoypadKeyPressed()
{
    Toolkit *tk; // r10
    int v1; // r1

    v1 = tk->joystick->IQR;
}


// 0x811f7f8
signed int __fastcall sub_811F7F8(int a1, unsigned int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r8
    unsigned int v6; // r12
    signed int v7; // r9
    int v8; // r6
    int v9; // r2
    int v10; // r3
    unsigned int v11; // r4
    unsigned __int8 v12; // vf
    unsigned int v13; // r4
    signed int v14; // r7
    char v16; // [sp+8h] [bp-1Ch]

    v16 = a3;
    v5 = a4;
    v6 = a3 & 0xFFFFFFFD;
    v7 = (a2 & 0xFFFFFF3F) - 1;
    v8 = *(v4 + a4 + 30) - 1;
    v9 = *(v4 + a4 + 32);
    v10 = *(v4 + a4 + 36);
    v11 = a2 & 0xFFFFFF3F;
    if ( !(a2 >> 7) && byte_200 & a1 )
    {
LABEL_10:
        v12 = __OFSUB__(v10, v11);
        v10 -= v11;
        if ( ((v10 < 0) ^ v12) | (v10 == 0) )
            v10 = 0;
        goto LABEL_25;
    }
    if ( !(2 * a2 >> 7) )
    {
        v11 = 1;
        if ( a1 & 0x40 )
        {
            v12 = __OFSUB__(v9--, 1);
            if ( (v9 < 0) ^ v12 )
            {
                v9 = 0;
                if ( v6 && !v10 )
                {
                    v9 = (a2 & 0xFFFFFF3F) - 1;
                    v10 = v8 - v7 + 1;
                }
                goto LABEL_10;
            }
        }
    }
    v13 = a2 & 0xFFFFFF3F;
    if ( !(a2 >> 7) && byte_100 & a1 )
    {
LABEL_21:
        if ( v8 >= v7 )
        {
            v10 += v13;
            if ( v10 > (*(v4 + v5 + 30) - (a2 & 0xFFFFFF3F)) )
            {
                v10 = *(v4 + v5 + 30) - (a2 & 0xFFFFFF3F);
                if ( v6 )
                {
                    v9 = 0;
                    v10 = 0;
                }
            }
        }
        goto LABEL_25;
    }
    if ( !(2 * a2 >> 7) )
    {
        v13 = 1;
        if ( a1 & 0x80 )
        {
            if ( v8 >= v7 )
                v8 = (a2 & 0xFFFFFF3F) - 1;
            if ( ++v9 > v8 )
            {
                v9 = v8;
                goto LABEL_21;
            }
        }
    }
LABEL_25:
    if ( v9 != *(v4 + v5 + 32) || v10 != *(v4 + v5 + 36) )
    {
        if ( !(v16 & 2) )
            PlaySoundEffect(127, 2, v9);
        v14 = 255;
    }
    else
    {
        v14 = 0;
    }
    *(v4 + v5 + 32) = v9;
    *(v4 + v5 + 36) = v10;
    return v14;
}


// 0x811f91c
signed int __fastcall sub_811F91C(int a1, unsigned int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r8
    int v6; // r12
    signed int v7; // r9
    int v8; // r6
    int v9; // r2
    int v10; // r3
    signed int v11; // r4
    char *v12; // r1
    unsigned __int8 v13; // vf
    signed int v14; // r4
    signed int v15; // r7
    unsigned int v17; // [sp+0h] [bp-1Ch]

    v17 = a2;
    v5 = a4;
    v6 = a3;
    v7 = (a2 & 0xFFFFFF7F) - 1;
    v8 = *(v4 + a4 + 30) - 1;
    v9 = *(v4 + a4 + 32);
    v10 = *(v4 + a4 + 36);
    v11 = 5;
    if ( !(a2 >> 7) )
    {
        v12 = byte_200;
        if ( byte_200 & a1 )
        {
LABEL_9:
            v13 = __OFSUB__(v10, v11);
            v10 -= v11;
            if ( ((v10 < 0) ^ v13) | (v10 == 0) )
                v10 = 0;
            goto LABEL_23;
        }
    }
    v11 = 1;
    v12 = &byte_40;
    if ( a1 & 0x40 )
    {
        v13 = __OFSUB__(v9--, 1);
        if ( (v9 < 0) ^ v13 )
        {
            v9 = 0;
            if ( v6 && !v10 )
            {
                v9 = v7;
                v10 = v8 - v7 + 1;
            }
            goto LABEL_9;
        }
    }
    v14 = 5;
    if ( !(v17 >> 7) )
    {
        v12 = byte_100;
        if ( byte_100 & a1 )
        {
LABEL_19:
            if ( v8 >= v7 )
            {
                v10 += v14;
                if ( v10 > *(v4 + v5 + 30) - v7 - 1 )
                {
                    v10 = *(v4 + v5 + 30) - v7 - 1;
                    if ( v6 )
                    {
                        v9 = 0;
                        v10 = 0;
                    }
                }
            }
            goto LABEL_23;
        }
    }
    v14 = 1;
    v12 = byte_80;
    if ( a1 & 0x80 )
    {
        if ( v8 >= v7 )
            v8 = v7;
        if ( ++v9 > v8 )
        {
            v9 = v8;
            goto LABEL_19;
        }
    }
LABEL_23:
    if ( v9 != *(v4 + v5 + 32) || v10 != *(v4 + v5 + 36) )
    {
        PlaySoundEffect(127, v12, v9);
        v15 = 255;
    }
    else
    {
        v15 = 0;
    }
    *(v4 + v5 + 32) = v9;
    *(v4 + v5 + 36) = v10;
    return v15;
}


// 0x811fa0c
void sub_811FA0C()
{
    JUMPOUT(&loc_811FA36);
}


// 0x811fa22
int __fastcall sub_811FA22(char a1, int a2, int a3, int a4)
{
    int v4; // r2
    int v5; // r4
    signed int v6; // r6
    char v8; // [sp+Ch] [bp-18h]

    v8 = a3;
    v4 = a3 & 0xFFFFFFFD;
    v5 = a4;
    v6 = 0;
    if ( a1 & 0x40 )
    {
        v6 = 1;
        v5 = a4 - 1;
        if ( a4 - 1 < 0 )
        {
            if ( v4 )
            {
                v6 = 1;
                v5 = a2 - 1;
                if ( a2 - 1 == a4 )
                    v6 = 0;
                goto LABEL_12;
            }
LABEL_10:
            v5 = 0;
            if ( !a4 )
                return v5;
            v6 = 1;
            goto LABEL_12;
        }
    }
    else if ( a1 & 0x80 )
    {
        v6 = 1;
        v5 = a4 + 1;
        if ( a4 + 1 >= a2 )
        {
            if ( !v4 )
                return a4;
            goto LABEL_10;
        }
    }
LABEL_12:
    if ( v6 && !(v8 & 2) )
        PlaySoundEffect(127, 2, v4);
    return v5;
}


// 0x811fa98
signed int __fastcall sub_811FA98(signed int result, unsigned int a2, int a3, int a4)
{
    int v4; // r4
    __int16 v5; // r6
    int v6; // r7
    int v7; // r1
    unsigned int v12; // [sp+0h] [bp-24h]
    int v13; // [sp+8h] [bp-1Ch]

    v12 = a2 >> 16;
    v13 = a2;
    v7 = a2 >> 8;
    if ( result >= 0 && a3 > v4 )
    {
        __asm { SVC         6 }
        result = sub_802FE28(
                             (result >> 16 << 16) | (result + (((v6 << 16) * a4) >> 12)) | 0x8000,
                             v5 | (v12 << 10),
                             v7,
                             v13);
    }
    return result;
}


// 0x811faf4
unsigned int __fastcall sub_811FAF4(int a1, unsigned int a2, int a3, int *a4)
{
    int v4; // r4
    int v5; // r10
    unsigned int v6; // r7
    int v7; // r6
    unsigned int v8; // r2
    int v9; // r0
    unsigned int v11; // [sp+0h] [bp-20h]

    v11 = a2 >> 16;
    a2 = a2;
    v6 = (2 * a3) >> 1;
    if ( a1 >= 0 )
    {
        v7 = v4 | a1;
        if ( a3 >= 0 || **(v5 + oToolkit_CurFramePtr) & 3 )
        {
            v8 = 2 * a3;
            v9 = *(a4 + v8);
            if ( v9 == 0xFFFF )
            {
                v8 -= 2;
                LOWORD(v9) = *(a4 + v8);
            }
            else if ( !*(a4 + v8) )
            {
                v9 = *a4;
                v8 = 0;
            }
            v6 = (v8 >> 1) + 1;
            sub_802FE28(v7, v9 | (v11 << 10), a2 >> 8, a2);
        }
    }
    return v6;
}


// 0x811fb64
int __fastcall sub_811FB64(char a1, int a2, int a3)
{
    int v3; // r5

    *(v3 + 1) = a1;
    PlaySoundEffect(131, a2, a3);
    return engine_setScreeneffect(12, 16);
}


// 0x811fb78
int sub_811FB78()
{
    int v0; // r10
    int result; // r0

    result = 0;
    *(*(v0 + oToolkit_Unk2001c04_Ptr) + 6) = 0;
    return result;
}


// 0x811fb84
char (*__fastcall sub_811FB84(char (*a1)[32], int a2))[32]
{
    int v2; // r10
    signed int v3; // r4
    int v4; // r1
    int v5; // r7
    char (*(*v6)[2])[32]; // r3
    int v7; // r1

    v3 = -1;
    v4 = a2;
    v5 = v4 * 4;
    v6 = off_811FBBC[v4];
    v7 = 0;
    while ( (*v6)[v7] != a1 )
    {
        ++v7;
        if ( a1 == -1 )
            return v3;
    }
    return (*(*(&off_811FBD4 + v5))[v7])[*(*(v2 + oToolkit_Unk2001c04_Ptr) + 6)];
}


// 0x811fca4
void sub_811FCA4()
{
    JUMPOUT(&loc_811FCD0);
}


// 0x811fcb8
signed int __fastcall sub_811FCB8(int a1, int *a2, int a3, int a4)
{
    int v4; // r10
    int *v5; // r5
    unsigned __int16 *v6; // r7
    int v7; // r0
    int v8; // r1
    unsigned __int8 *v9; // r6
    int v10; // r3
    int v11; // r0
    int v12; // r3
    int v13; // r4
    signed int v14; // r4
    int *v15; // r5
    u32 *i; // r7
    int v18; // [sp+0h] [bp-2Ch]
    int v19; // [sp+4h] [bp-28h]
    int v20; // [sp+8h] [bp-24h]
    int *v21; // [sp+Ch] [bp-20h]
    int v22; // [sp+10h] [bp-1Ch]
    u32 *v23; // [sp+14h] [bp-18h]

    v22 = a3;
    v5 = a2;
    v21 = a2;
    v23 = a4;
    v6 = (*(v4 + oToolkit_S_Chip_2002178_Ptr) + 60 * a1);
    v20 = *(v4 + oToolkit_S_Chip_2002178_Ptr) + 60 * a1;
    sub_811FE34(a2, a2, 60, a4);
    ZeroFillByEightWords(v23, 120);
    do
    {
        v7 = split9BitsFromBitfield_8021AE0(*v6);
        v18 = v7;
        v19 = v8;
        v5[7] |= (v7 << 7) | v8;
        if ( !v7 )
            return 1;
        v9 = getChip8021DA8(v7);
        v10 = 0;
        while ( v9[v10] != v19 )
        {
            if ( ++v10 > 3 )
                return 1;
        }
        if ( !v22 )
            TakeChips(v18, v19, 1);
        v11 = *(v9 + 14);
        v12 = v19 | (v11 << 7);
        *v5 = (v11 << 16) | v12;
        v5[2] = (v19 << 16) | v12;
        v13 = v19 | (v11 << 7);
        v5[1] = (*(v9 + 12) << 16) | v12;
        v5[4] = (sub_811FF54(v9[6]) << 16) | v13;
        v5[6] = (v9[8] << 16) | v13;
        v5[3] = (sub_811FF80(v18) << 16) | v13;
        v5[5] = v13 | 0x10000;
        sub_811FE48(v23);
        v5 += 8;
        ++v6;
    }
    while ( v6 < word_3C + v20 );
    v14 = 0;
    v15 = v21;
    do
    {
        for ( i = v23; *(v15 + 14) != *i; ++i )
            ;
        v15[5] = v15[5] & 0xFFFF | (*(i + 1) << 16);
        v15 += 8;
        ++v14;
    }
    while ( v14 < 30 );
    return 0;
}


// 0x811fdb8
signed int __fastcall sub_811FDB8(int a1)
{
    int v1; // r10
    int v2; // r4
    signed int v3; // r6
    int v4; // r5
    unsigned __int16 *v5; // r7
    int v6; // r0
    int v7; // r1
    unsigned __int8 *v8; // r2
    int v9; // r3
    unsigned __int8 v10; // vf
    int v12; // [sp+0h] [bp-28h]
    int v13; // [sp+4h] [bp-24h]
    int v14; // [sp+10h] [bp-18h]

    v2 = a1;
    v3 = *(*(v1 + oToolkit_Unk2001c04_Ptr) + 5);
    if ( v3 <= 1 )
        return 0;
    v4 = 0;
    v14 = *(v1 + oToolkit_S_Chip_2002178_Ptr);
    while ( v2 == v4 )
    {
LABEL_11:
        ++v4;
        v10 = __OFSUB__(v3--, 1);
        if ( ((v3 < 0) ^ v10) | (v3 == 0) )
            return 0;
    }
    v5 = (v14 + 60 * v4);
    while ( 1 )
    {
        v6 = split9BitsFromBitfield_8021AE0(*v5);
        v12 = v6;
        v13 = v7;
        if ( !v6 )
            return 1;
        v8 = getChip8021DA8(v6);
        v9 = 0;
        while ( v8[v9] != v13 )
        {
            if ( ++v9 > 3 )
                return 1;
        }
        TakeChips(v12, v13, 1);
        ++v5;
        if ( v5 >= &word_3C[30 * v4] + v14 )
            goto LABEL_11;
    }
}


// 0x811fe34
void __fastcall sub_811FE34(int a1, int a2, int a3, int a4)
{
    ZeroFillByEightWords(a1, &dword_3C0);
}


// 0x811fe48
int __fastcall sub_811FE48(int a1)
{
    int v1; // r5
    int v2; // r4
    signed int v3; // r3
    int result; // r0
    int v5; // r3

    v2 = a1;
    v3 = 0;
    result = *(v1 + 28);
    while ( *(v2 + v3) )
    {
        if ( result == *(v2 + v3) )
        {
            v5 = v3 + 2;
            result = *(v2 + v5) + 1;
            *(v2 + v5) = result;
            return result;
        }
        v3 += 4;
        if ( v3 >= 120 )
            return result;
    }
    *(v2 + v3) = result;
    result = 1;
    *(v2 + v3 + 2) = 1;
    return result;
}


// 0x811fe7c
int __fastcall sub_811FE7C(int *a1, int a2, int a3, int a4)
{
    int *v4; // r6
    int v5; // r7
    _BYTE *v6; // r5
    signed int v7; // r4
    int v8; // r1
    char *v9; // r0
    int v10; // r3
    int v11; // r3
    int v12; // r0
    int v13; // r3
    signed int v14; // r0
    int v15; // r3
    int result; // r0
    int v21; // [sp+0h] [bp-2Ch]
    int v22; // [sp+4h] [bp-28h]
    int *v23; // [sp+10h] [bp-1Ch]
    int v24; // [sp+14h] [bp-18h]

    v24 = a2;
    v23 = a1;
    v4 = a1;
    sub_811FF6C(a1, a2, a3, a4);
    v5 = 1;
    do
    {
        v6 = getChip8021DA8(v5);
        v7 = 0;
        if ( !v24 || v5 != 311 && v6[7] != 2 && !(v6[9] & 0x20) )
        {
            do
            {
                if ( v6[22] & 0x20 )
                    break;
                v8 = v6[v7];
                v21 = v8;
                if ( v8 != 255 )
                {
                    v9 = chip_8021C7C(v5, v8);
                    v22 = *v9;
                    if ( *v9 )
                    {
                        v4[7] = (sub_81376CC(v9, v10) << 16) | (v5 << 7) | v21;
                        v11 = (*(v6 + 14) << 7) | v21;
                        *v4 = (*(v6 + 14) << 16) | v11;
                        v4[2] = (v21 << 16) | v11;
                        v4[1] = (*(v6 + 12) << 16) | v11;
                        v12 = sub_811FF54(v6[6]);
                        v4[4] = (v12 << 16) | v13;
                        v4[6] = (v6[8] << 16) | v13;
                        v4[5] = (v22 << 16) | v13;
                        v14 = sub_811FF80(v5);
                        v4[3] = (v14 << 16) | v15;
                        v4 += 8;
                    }
                }
                ++v7;
            }
            while ( v7 <= 3 );
        }
        ++v5;
    }
    while ( v5 <= 314 );
    result = v4 - v23;
    __asm { SVC         6 }
    return result;
}


// 0x811ff54
int __fastcall sub_811FF54(int a1)
{
    return byte_811FF60[a1];
}


// 0x811ff6c
void __fastcall sub_811FF6C(int a1, int a2, int a3, int a4)
{
    ZeroFillByEightWords(a1, 40960);
}


// 0x811ff80
signed int __fastcall sub_811FF80(int a1)
{
    int v1; // r4
    _BYTE *v2; // r0
    int v3; // r2

    v1 = a1;
    v2 = getChip8021DA8(a1);
    if ( v2[9] & 0x10 )
        return 1;
    if ( !(v2[9] & 2) )
        return 5;
    v3 = *(v2 + 13);
    if ( v3 > 999 )
        v3 = sub_8010C76(v1);
    return v3;
}


// 0x811ffc0
// () -> void
__int16 *sub_811FFC0()
{
    __int16 *result; // r0
    __int16 *v1; // r7
    _BYTE *v2; // r0
    _BYTE *v3; // r5
    signed int v4; // r6
    int v5; // r1

    result = (byte_0 + 1);
    do
    {
        v1 = result;
        v2 = getChip8021DA8(result);
        v3 = v2;
        if ( v1 <= 310 && (v1 == (&dword_134 + 3) || v1 == &word_138 || v2[9] & 0x60) )
        {
            v4 = 3;
            do
            {
                v5 = v3[v4];
                if ( v5 != 255 )
                    GiveChips(v1, v5, 90);
                --v4;
            }
            while ( v4 >= 0 );
        }
        result = (v1 + 1);
    }
    while ( v1 + 1 < dword_140 );
    return result;
}


// 0x8120018
signed int __fastcall sub_8120018(signed int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // r2
    int v6; // r1
    unsigned __int8 v7; // vf
    int v8; // r7
    int v9; // r2
    signed int result; // r0
    int v11; // r7
    int v12; // r2
    int v13; // r1
    int v14; // r7
    signed int v15; // [sp+0h] [bp-18h]
    int v16; // [sp+4h] [bp-14h]
    int v17; // [sp+8h] [bp-10h]
    int v18; // [sp+Ch] [bp-Ch]
    signed int v19; // [sp+10h] [bp-8h]

    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    if ( a4 )
    {
        v8 = a2 - 1;
        v9 = 4 * a3;
        do
        {
            *(a1 + 32 * v8 + v9) = ~(*(a1 + 32 * v8 + v9) & 0xFFFF) & 0xFFFF | (*(a1 + 32 * v8 + v9) >> 16 << 16);
            v7 = __OFSUB__(v8--, 1);
        }
        while ( !((v8 < 0) ^ v7) );
    }
    else
    {
        v4 = a2 - 1;
        v5 = 4 * a3;
        do
        {
            v6 = a1 + 32 * v4;
            if ( !(*(v6 + v5) & 0xFFFF) )
                *(v6 + v5) = 0x7FFFFFFF;
            v7 = __OFSUB__(v4--, 1);
        }
        while ( !((v4 < 0) ^ v7) );
    }
    (*&byte_81200E0[a4])(a1, v16, v17);
    result = v15;
    if ( v18 )
    {
        v14 = v16 - 1;
        do
        {
            *(v15 + 32 * v14 + 4 * v17) = ~(*(v15 + 32 * v14 + 4 * v17) & 0xFFFF) & 0xFFFF | (*(v15 + 32 * v14 + 4 * v17) >> 16 << 16);
            v7 = __OFSUB__(v14--, 1);
        }
        while ( !((v14 < 0) ^ v7) );
    }
    else
    {
        v11 = v16 - 1;
        v12 = 4 * v17;
        do
        {
            v13 = result + 32 * v11;
            v19 = result;
            result = 0x7FFFFFFF;
            if ( *(v13 + v12) == 0x7FFFFFFF )
            {
                result = v19;
                *(v13 + v12) = 0;
            }
            v7 = __OFSUB__(v11--, 1);
        }
        while ( !((v11 < 0) ^ v7) );
    }
    return result;
}


// 0x81200ec
int __fastcall sub_81200EC(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r5
    _WORD *v5; // r3
    int v6; // r6
    int v7; // r1
    unsigned __int8 *v8; // r0
    int v9; // r0
    int v10; // r2
    int v11; // r3
    int v12; // ST00_4
    _WORD *v13; // ST04_4
    int result; // r0
    int v15; // [sp+4h] [bp-20h]

    v15 = v3;
    v4 = 32 * a1 + a2;
    v5 = (a3 + 16);
    v6 = 0;
    do
    {
        v7 = *(v4 + 28) >> 7;
        if ( v7 )
        {
            if ( v7 == 311 )
            {
                v8 = &unk_2001186;
            }
            else if ( v7 == 313 )
            {
                v8 = &unk_200119E;
            }
            else
            {
                v9 = *(&off_8120178 + (*(v4 + 28) >> 15));
                v7 = *(v9 + 2 * v7);
                v8 = (v9 + v7);
            }
            sub_81202B4(v8, v7, a3, v5);
        }
        else
        {
            v12 = a3;
            v13 = v5;
            WordFill(a3, 32, 0);
            v10 = v12 + 16;
            v11 = (v13 + 8);
        }
        v4 += 32;
        a3 = v10 + 16;
        v5 = (v11 + 16);
        ++v6;
        result = v15;
    }
    while ( v6 < v15 );
    return result;
}


// 0x8120194
int __fastcall sub_8120194(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r5
    _WORD *v5; // r3
    int v6; // r6
    unsigned int v7; // r1
    int v8; // ST00_4
    _WORD *v9; // ST04_4
    int v10; // r2
    int v11; // r3
    char *v12; // r0
    int result; // r0
    int v14; // [sp+4h] [bp-24h]
    signed int v15; // [sp+10h] [bp-18h]

    v14 = v3;
    v15 = 0;
    v4 = 32 * a1 + a2;
    v5 = (a3 + 16);
    v6 = 0;
    do
    {
        v7 = *(v4 + 28) >> 7;
        if ( v7 )
        {
            v12 = *(&off_8120218 + (*(v4 + 28) >> 15));
            v7 = v7;
        }
        else
        {
            if ( v15 )
            {
                v8 = a3;
                v9 = v5;
                WordFill(a3, 32, 0);
                v10 = v8 + 16;
                v11 = (v9 + 8);
                goto LABEL_8;
            }
            v15 = 1;
            v12 = eTextScript201BA20;
            v7 = 49;
        }
        sub_81202B4(&v12[*&v12[2 * v7]], *&v12[2 * v7], a3, v5);
LABEL_8:
        v4 += 32;
        a3 = v10 + 16;
        v5 = (v11 + 16);
        ++v6;
        result = v14;
    }
    while ( v6 < v14 );
    return result;
}


// 0x8120228
int __fastcall sub_8120228(int a1, int a2, _WORD *a3)
{
    unsigned int v3; // r4
    char *v4; // r0
    signed int v5; // r1

    if ( v3 )
    {
        v4 = *(&off_8120270 + (v3 >> 8));
        v5 = v3;
    }
    else
    {
        v4 = eTextScript201BA20;
        v5 = 49;
    }
    return sub_81202B4(&v4[*&v4[2 * v5]], *&v4[2 * v5], a3, a3 + 8);
}


// 0x8120280
int __fastcall sub_8120280(int a1, int a2, _WORD *a3)
{
    int v3; // r4

    return sub_81202B4(&byte_873EA50[*&byte_873EA50[2 * v3]], *&byte_873EA50[2 * v3], a3, a3 + 8);
}


// 0x81202b4
int __fastcall sub_81202B4(unsigned __int8 *a1, int a2, _WORD *a3, _WORD *a4)
{
    __int16 v4; // r4
    int v5; // r5
    int v6; // r7
    signed int v7; // r1
    __int16 v8; // r1
    int v9; // r6

    v6 = 0;
    while ( 1 )
    {
        v7 = *a1;
        if ( v7 >= 230 )
            break;
        if ( v7 != 229 )
        {
            if ( v7 == 228 )
                v7 = (*a1 << 8) | 0xE4;
            v8 = 2 * v7;
            *a3 = v4 + v8;
            *a4 = v4 + v8 + 1;
            ++a3;
            ++a4;
            ++v6;
        }
        ++a1;
    }
    v9 = v6;
    while ( v6 < v5 )
    {
        *a3 = 0;
        *a4 = 0;
        ++a3;
        ++a4;
        ++v6;
    }
    return v9;
}


// 0x81202fc
int __fastcall sub_81202FC(int a1, _WORD *a2, int a3, int a4)
{
    int v4; // r4
    int v5; // ST10_4
    _WORD *v6; // r3
    _WORD *v7; // r2
    int v8; // r4
    unsigned __int8 v9; // vf
    unsigned int v11; // [sp+0h] [bp-28h]

    v5 = a4;
    v11 = (a3 << 12) | byte_200;
    v6 = &a2[v4];
    v7 = a2;
    v8 = v5;
    do
    {
        *v7 = v11;
        *v6 = v11;
        ++v7;
        ++v6;
        v9 = __OFSUB__(v8--, 1);
    }
    while ( !(((v8 < 0) ^ v9) | (v8 == 0)) );
    return sub_81202B4(TextScriptFolderNames + *(TextScriptFolderNames + a1), TextScriptFolderNames, v7, v6);
}


// 0x8120348
int __fastcall sub_8120348(int a1, _WORD *a2, int a3, int a4)
{
    int v4; // r4
    int v5; // ST10_4
    _WORD *v6; // r3
    _WORD *v7; // r2
    int v8; // r4
    unsigned __int8 v9; // vf
    unsigned __int8 *v10; // r0
    int v11; // r1
    _WORD *v12; // r2
    _WORD *v13; // r3
    unsigned int v15; // [sp+0h] [bp-28h]

    v5 = a4;
    v15 = (a3 << 12) | byte_200;
    v6 = &a2[v4];
    v7 = a2;
    v8 = v5;
    do
    {
        *v7 = v15;
        *v6 = v15;
        ++v7;
        ++v6;
        v9 = __OFSUB__(v8--, 1);
    }
    while ( !(((v8 < 0) ^ v9) | (v8 == 0)) );
    v10 = sub_804A24C(a1);
    return sub_81202B4(v10, v11, v12, v13);
}


// 0x8120390
int __fastcall sub_8120390(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // ST00_4
    int v7; // ST04_4
    int v8; // ST08_4
    int v9; // r5
    int v10; // r6
    _DWORD *v11; // r7
    int v12; // r0
    _DWORD *v13; // r0
    int result; // r0
    int v15; // [sp+Ch] [bp-18h]

    v6 = a1;
    v7 = a2;
    v8 = a3;
    v15 = v5;
    CopyWords(a4, a3, 0x38u);
    v9 = 32 * v6 + v7;
    v10 = 0;
    v11 = v8;
    do
    {
        v12 = *(v9 + 28) >> 7;
        if ( v12 )
        {
            v13 = getChip8021DA8(v12);
            (loc_8000AC4)(v13[8], v4, 128);
        }
        else
        {
            *v11 = 0;
            v11[1] = 0;
        }
        v9 += 32;
        v4 += 128;
        v11 += 2;
        ++v10;
        result = v15;
    }
    while ( v10 < v15 );
    return result;
}


// 0x81203e4
int __fastcall sub_81203E4(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r5
    int v6; // ST00_4
    int v7; // ST04_4
    int v8; // ST08_4
    int v9; // r5
    int v10; // r6
    int v11; // r7
    int v12; // r0
    unsigned __int8 *v13; // r0
    int v14; // r0
    int v15; // r3
    int result; // r0
    int v17; // [sp+Ch] [bp-1Ch]
    int v18; // [sp+10h] [bp-18h]

    v6 = a1;
    v7 = a2;
    v8 = a3;
    v18 = a4;
    v17 = v5;
    ZeroFillByWord(a3, 56);
    v9 = 32 * v6 + v7;
    v10 = 0;
    v11 = v8;
    do
    {
        v12 = *(v9 + 28) >> 7;
        if ( v12 )
        {
            v13 = getChip8021DA8(v12);
            v14 = sub_811FF54(v13[6]);
            v15 = ((v18 + 4 * v14 + 1) << 16) | (v18 + 4 * v14);
            *(v11 + 4 * v10) = v15;
            *(v11 + 4 * v10 + 4) = v15 + 131074;
        }
        else
        {
            *(v11 + 4 * v10) = 0;
            *(v11 + 4 * v10 + 4) = 0;
        }
        v9 += 32;
        v4 += 128;
        v11 += 4;
        ++v10;
        result = v17;
    }
    while ( v10 < v17 );
    return result;
}


// 0x8120458
int __fastcall sub_8120458(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // ST00_4
    int v6; // ST04_4
    int v7; // r5
    int v8; // r6
    unsigned int v9; // r1
    int v10; // r4
    unsigned __int8 *v11; // r0
    int v12; // r3
    int v13; // r2
    int v14; // r4
    int result; // r0
    int v16; // [sp+8h] [bp-20h]
    int v17; // [sp+Ch] [bp-1Ch]

    v5 = a1;
    v6 = a2;
    v16 = a3;
    v17 = v4;
    ZeroFillByHalfword(a3, 0xEu, a3, a4);
    v7 = 32 * v5 + v6;
    v8 = 0;
    do
    {
        v9 = *(v7 + 28);
        if ( v9 >> 7 )
        {
            v10 = v9 & 0x7F;
            v11 = getChip8021DA8(v9 >> 7);
            v13 = 0;
            while ( v11[v13] != v10 )
            {
                if ( ++v13 > 3 )
                    goto LABEL_8;
            }
            v14 = 2 * v10 + v12;
            *(v16 + 4 * v8) = v14;
            *(v16 + 4 * v8 + 2) = v14 + 1;
        }
        else
        {
LABEL_8:
            *(v16 + 4 * v8) = 0;
            *(v16 + 4 * v8 + 2) = 0;
        }
        v7 += 32;
        ++v8;
        result = v17;
    }
    while ( v8 < v17 );
    return result;
}


// 0x81204c4
int __fastcall sub_81204C4(int a1, int a2, _DWORD *a3, int a4)
{
    int v4; // r5
    int v5; // r5
    int v6; // r6
    int *v7; // r7
    int v8; // r4
    int v9; // r0
    unsigned __int8 *v10; // r0
    int result; // r0
    int v12; // [sp+0h] [bp-18h]

    v12 = v4;
    v5 = 32 * a1 + a2;
    v6 = 0;
    v7 = a3;
    v8 = a4;
    do
    {
        v9 = *(v5 + 28) >> 7;
        if ( v9 )
        {
            v10 = getChip8021DA8(v9);
            sub_8120504(v10[8], v7, v8);
        }
        else
        {
            *v7 = 0;
            v7[1] = 0;
        }
        v5 += 32;
        v7 += 2;
        ++v6;
        result = v12;
    }
    while ( v6 < v12 );
    return result;
}


// 0x8120504
int __fastcall sub_8120504(int a1, int *a2, int a3)
{
    int *v3; // r7
    int v8; // r1
    int result; // r0

    v3 = a2;
    __asm { SVC         6 }
    if ( a1 )
        v8 = a1 + a3 + 1;
    else
        v8 = a3;
    *v3 = ((a3 + 11) << 16) | v8;
    result = ((a3 + 12) << 16) | (a3 + 11);
    v3[1] = result;
    return result;
}


// 0x812053c
signed int __fastcall sub_812053C(int a1, __int16 a2, int a3)
{
    __int16 v3; // r4
    signed int result; // r0
    unsigned __int8 v5; // vf

    v3 = a2;
    result = sub_81205C0(a1, a2, a3, 0);
    if ( !((result < 0) ^ v5) )
        result = sub_802FE28(result & 0x3FFF7FFF | 0x4000, v3 + 12, 0, 1);
    return result;
}


// 0x81205c0
int __fastcall sub_81205C0(int a1, __int16 a2, int a3, int a4)
{
    int v4; // r7
    __int16 v5; // r4
    int v6; // r5
    signed int v11; // r6
    int v12; // r1
    int v13; // r1
    int v14; // r7
    int v15; // r7
    int v17; // [sp+0h] [bp-1Ch]
    int v18; // [sp+4h] [bp-18h]

    v4 = a3;
    v5 = a2;
    v6 = a4;
    __asm { SVC         6 }
    v18 = 10;
    v17 = a1;
    v11 = 0;
    do
    {
        if ( v4 >= 0 )
        {
            v12 = *(&v17 + v11);
            if ( v11 || v12 )
                ++v12;
            sub_802FE28(v4, (v12 << v6) + v5, 0, 1);
        }
        v13 = v4;
        v14 = v4 >> 16;
        if ( v6 )
            v15 = v14 + 8;
        else
            v15 = v14 + 7;
        v4 = (v15 << 16) | v13;
        v11 += 4;
    }
    while ( v11 < 8 );
    return v4;
}


// 0x8120618
int __fastcall sub_8120618(int a1, int a2, int *a3, int a4)
{
    int v4; // r5
    int v5; // r5
    int v6; // r6
    int *v7; // r7
    unsigned int v8; // r0
    signed int v9; // r0
    int v14; // r1
    int v15; // r0
    int result; // r0
    int v17; // [sp+0h] [bp-18h]

    v17 = v4;
    v5 = 32 * a1 + a2;
    v6 = 0;
    v7 = a3;
    do
    {
        if ( *(v5 + 28) >> 7 && (v8 = *(v5 + 20), v8) )
        {
            v9 = v8 >> 16;
            if ( v9 > 99 )
                v9 = 99;
            __asm { SVC         6 }
            if ( v9 )
                v14 = 2 * (v9 + 1) + a4;
            else
                v14 = a4;
            v15 = ((a4 + 22) << 16) | v14;
            *v7 = v15;
            v7[1] = v15 + 65537;
        }
        else
        {
            *v7 = 0;
            v7[1] = 0;
        }
        v5 += 32;
        v7 += 2;
        ++v6;
        result = v17;
    }
    while ( v6 < v17 );
    return result;
}


// 0x812068c
int __fastcall sub_812068C(int a1, __int16 a2, int a3, int a4)
{
    __int16 v4; // r4
    int v5; // r6
    int v6; // r0
    int v7; // r7

    v4 = a2;
    v5 = a4;
    v6 = sub_81205C0(a1, a2, a3, 1);
    v7 = v6;
    if ( v6 >= 0 )
        sub_802FE28(v6, v4 + 22, 0, 1);
    return sub_81205C0(v5, v4, (((v7 >> 16) + 8) << 16) | v7, 1);
}


// 0x81206c4
int __fastcall sub_81206C4(int result)
{
    int v1; // r5
    int v2; // r4
    int v3; // r5
    int v4; // r7

    v2 = 0;
    v3 = *(v1 + 40);
    if ( v3 )
    {
        v4 = result + 32 * (v3 - 1);
        do
        {
            result = *(v4 + 28) << 16 >> 23;
            if ( result )
                result = GiveChips(result, *(v4 + 28) & 0x7F, *(v4 + 20) >> 16);
            v4 -= 32;
            ++v2;
        }
        while ( v2 < v3 );
    }
    return result;
}


// 0x81206f8
int __fastcall sub_81206F8(int a1, int a2)
{
    int v2; // r5
    int v3; // r10
    int v4; // r4
    _WORD *v5; // r7
    int v6; // r0
    int v7; // r1
    int result; // r0
    int v9; // [sp+0h] [bp-18h]

    v4 = a1;
    v5 = (*(v3 + oToolkit_S_Chip_2002178_Ptr) + 60 * a2);
    v9 = a1 + 960;
    do
    {
        v6 = (*(v4 + 28) << 16) >> 23;
        v7 = *(v4 + 28) & 0x7F;
        if ( !is_mul_ok(0x200u, *(v4 + 28) << 16) )
        {
            if ( !*(v2 + 2) )
                *v5 = (v7 << 9) | v6;
            sub_8021B2A(v6, v7, 1);
        }
        ++v5;
        v4 += 32;
        result = v9;
    }
    while ( v4 < v9 );
    return result;
}


// 0x8120740
signed int __fastcall sub_8120740(int a1)
{
    int v1; // r10
    int v2; // r4
    signed int v3; // r6
    int v4; // r5
    unsigned __int16 *v5; // r7
    int v6; // r0
    int v7; // r1
    unsigned __int8 *v8; // r2
    int v9; // r3
    unsigned __int8 v10; // vf
    int v12; // [sp+0h] [bp-24h]
    int v13; // [sp+4h] [bp-20h]
    int v14; // [sp+8h] [bp-1Ch]
    int v15; // [sp+8h] [bp-1Ch]

    v2 = a1;
    v3 = *(*(v1 + oToolkit_Unk2001c04_Ptr) + 5);
    if ( v3 <= 1 )
        return 0;
    v4 = 0;
    while ( 1 )
    {
        v14 = *(v1 + oToolkit_S_Chip_2002178_Ptr);
        if ( v2 != v4 )
            break;
LABEL_11:
        ++v4;
        v10 = __OFSUB__(v3--, 1);
        if ( ((v3 < 0) ^ v10) | (v3 == 0) )
            return 0;
    }
    v5 = (v14 + 60 * v4);
    v15 = v14 + 60 * v4;
    while ( 1 )
    {
        v6 = split9BitsFromBitfield_8021AE0(*v5);
        v12 = v6;
        v13 = v7;
        if ( !v6 )
            return 1;
        v8 = getChip8021DA8(v6);
        v9 = 0;
        while ( v8[v9] != v13 )
        {
            if ( ++v9 > 3 )
                return 1;
        }
        sub_8021B2A(v12, v13, 1);
        ++v5;
        if ( v5 >= word_3C + v15 )
            goto LABEL_11;
    }
}


// 0x81207c4
int __fastcall sub_81207C4(int a1, _WORD *a2)
{
    int v2; // r4
    _WORD *v3; // r7
    int v4; // r0
    int v5; // r1
    int result; // r0
    int v7; // [sp+0h] [bp-18h]

    v2 = a1;
    v3 = a2;
    v7 = a1 + 960;
    do
    {
        v4 = (*(v2 + 28) << 16) >> 23;
        v5 = *(v2 + 28) & 0x7F;
        if ( !is_mul_ok(0x200u, *(v2 + 28) << 16) )
            *v3 = (v5 << 9) | v4;
        ++v3;
        v2 += 32;
        result = v7;
    }
    while ( v2 < v7 );
    return result;
}


// 0x81207f8
int __fastcall sub_81207F8(int a1)
{
    int v1; // r5
    unsigned __int16 *v2; // r4
    int v3; // r6
    signed int v4; // r7
    char v5; // zf
    char *v6; // r0
    unsigned __int8 *v7; // r0

    v1 = a1;
    v2 = &word_8120888;
    v3 = 0;
    v4 = 0;
    do
    {
        if ( v1 == 4 )
            v2 = &word_8120890;
        TestEventFlag(*v2 + v4);
        if ( !v5 || (TestEventFlag(v2[1] + v4), !v5) || (TestEventFlag(v2[2] + v4), !v5) )
        {
            if ( v1 == 4 )
                v6 = dword_140 + v4;
            else
                v6 = v4;
            v7 = getChip8021DA8(v6);
            if ( v1 != 6 )
            {
                if ( !(v7[9] & 0x40) )
                    goto LABEL_21;
                if ( v1 == 5 )
                {
                    if ( !(v7[22] & 1) )
                        goto LABEL_21;
LABEL_20:
                    ++v3;
                    goto LABEL_21;
                }
            }
            if ( v7[9] & 0x20 || !(v7[22] & 1) && v7[7] == v1 )
                goto LABEL_20;
        }
LABEL_21:
        ++v4;
    }
    while ( v4 <= v2[3] );
    return v3;
}


// 0x8120898
int __fastcall sub_8120898(signed int a1)
{
    signed int v1; // r5
    int v2; // r6
    int v3; // r7
    unsigned __int8 *v4; // r0
    signed int v5; // r5
    unsigned __int8 *v6; // r4
    signed int v8; // [sp-4h] [bp-18h]

    v1 = a1;
    v2 = 0;
    v3 = 1;
    do
    {
        v4 = getChip8021DA8(v3);
        if ( v4[9] & 0x20 && v1 == 6 )
            goto LABEL_11;
        if ( !(v4[9] & 0x40) )
            goto LABEL_14;
        if ( v1 >= 5 && v1 != 6 )
        {
            if ( !(v4[22] & 1) )
                goto LABEL_14;
LABEL_11:
            v8 = v1;
            v5 = 0;
            v6 = v4;
            do
                v2 += GetChipCountOfCode(v3, v6[v5++]);
            while ( v5 <= 3 );
            v1 = v8;
            goto LABEL_14;
        }
        if ( !(v4[22] & 1) && v4[7] == v1 )
            goto LABEL_11;
LABEL_14:
        ++v3;
    }
    while ( v3 <= 319 );
    return v2;
}


// 0x8120900
void __fastcall __noreturn sub_8120900(_WORD *a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r6
    int v6; // ST04_4
    u16 *v7; // r7
    _WORD *v8; // r6
    signed int v9; // r4
    signed int v10; // r5
    char v11; // r2
    unsigned int v12; // r0
    int v13; // r0
    int v14; // r4
    signed int v15; // r5
    char v16; // r2
    unsigned int v17; // r0
    int v18; // r0
    signed int v19; // [sp+0h] [bp-28h]
    signed int v20; // [sp+4h] [bp-24h]
    int v21; // [sp+8h] [bp-20h]
    int v22; // [sp+Ch] [bp-1Ch]
    int v23; // [sp+10h] [bp-18h]

    v6 = a3;
    v21 = a4;
    v22 = v4;
    v23 = v5;
    v7 = a1;
    v8 = a1 + 11;
    v19 = sub_8000C00(a2);
    v20 = sub_8000C00(v6);
    *v7 = v21;
    *v8 = v21 + 1;
    v9 = 1;
    v10 = 0;
    v11 = 12;
    do
    {
        v12 = (v19 & (15 << v11)) >> v11;
        if ( v12 || v10 || v9 == 4 )
        {
            v13 = 2 * v12 + 2 + v21;
            v7[v9] = v13;
            v8[v9] = v13 + 1;
            v10 = 1;
        }
        else
        {
            v7[v9] = v21 + 24;
            v8[v9] = v21 + 25;
        }
        v11 -= 4;
        ++v9;
    }
    while ( v9 < 5 );
    v7[v9] = v21 + 22;
    v8[v9] = v21 + 23;
    v14 = v9 * 2 + 2;
    v15 = 0;
    v16 = 12;
    do
    {
        v17 = (v20 & (15 << v16)) >> v16;
        if ( v17 || v15 || v14 == 18 )
        {
            v18 = 2 * v17 + 2 + v21;
            *(v7 + v14) = v18;
            *(v8 + v14) = v18 + 1;
            v15 = 1;
        }
        else
        {
            *(v7 + v14) = v21 + 24;
            *(v8 + v14) = v21 + 25;
        }
        v16 -= 4;
        v14 += 2;
    }
    while ( v14 < 20 );
    *(v7 + v14) = v21 | 0x400;
    *(v8 + v14) = (v21 | 0x400) + 1;
    CopyBackgroundTiles(v22, v23, 2, v7, 11, &byte_0[2]);
}


// 0x81209dc
int __fastcall sub_81209DC(signed int a1)
{
    signed int v1; // r7
    char *v2; // r6
    unsigned __int8 v3; // r1
    unsigned __int8 v8; // r6

    v1 = a1;
    v2 = (&off_8120A14)[a1];
    GetPositiveSignedRNG1();
    v3 = v2;
    __asm { SVC         6 }
    if ( v1 >= 2 )
        v3 = v2 + 96;
    v8 = v3;
    GetPositiveSignedRNG2();
    __asm { SVC         6 }
    return v8;
}


// 0x8120a38
__int64 sub_8120A38()
{
    __int64 v0; // ST00_8

    sub_8120A88();
    LODWORD(v0) = sub_8120898(0);
    HIDWORD(v0) = sub_8120898(1);
    GetTotalChipCount(311);
    sub_8120898(2);
    sub_8120898(5);
    sub_8120AB8();
    return v0;
}


// 0x8120a88
signed int sub_8120A88()
{
    int v0; // r10
    int v1; // r4
    int v2; // r7
    signed int v3; // r6
    int v4; // r0
    int v5; // r1
    signed int result; // r0
    unsigned __int8 v7; // vf

    v1 = *(*(v0 + oToolkit_Unk2001c04_Ptr) + 5);
    do
    {
        v2 = *(v0 + oToolkit_S_Chip_2002178_Ptr) + 60 * (v1 - 1);
        v3 = 0;
        do
        {
            v4 = split9BitsFromBitfield_8021AE0(*(v2 + v3));
            result = TakeChips(v4, v5, 1);
            v3 += 2;
        }
        while ( v3 < 60 );
        v7 = __OFSUB__(v1--, 1);
    }
    while ( !(((v1 < 0) ^ v7) | (v1 == 0)) );
    return result;
}


// 0x8120ab8
int sub_8120AB8()
{
    int v0; // r10
    int v1; // r4
    int v2; // r7
    signed int v3; // r6
    int v4; // r0
    int v5; // r1
    int result; // r0
    unsigned __int8 v7; // vf

    v1 = *(*(v0 + oToolkit_Unk2001c04_Ptr) + 5);
    do
    {
        v2 = *(v0 + oToolkit_S_Chip_2002178_Ptr) + 60 * (v1 - 1);
        v3 = 0;
        do
        {
            v4 = split9BitsFromBitfield_8021AE0(*(v2 + v3));
            result = sub_8021B2A(v4, v5, 1);
            v3 += 2;
        }
        while ( v3 < 60 );
        v7 = __OFSUB__(v1--, 1);
    }
    while ( !(((v1 < 0) ^ v7) | (v1 == 0)) );
    return result;
}


// 0x8120ae8
int __fastcall sub_8120AE8(int a1)
{
    int v1; // r10
    int v2; // r0
    int v3; // r4
    signed int v4; // r7
    int v5; // r6
    int v6; // r0
    int v8; // [sp+0h] [bp-18h]

    v8 = a1;
    v2 = getPETNaviSelect();
    v3 = *(v1 + oToolkit_S_Chip_2002178_Ptr) + 60 * GetCurPETNaviStatsByte(v2);
    v4 = 0;
    v5 = 0;
    do
    {
        v6 = split9BitsFromBitfield_8021AE0(*(v3 + v4));
        if ( *(getChip8021DA8(v6) + 7) == v8 )
            ++v5;
        v4 += 2;
    }
    while ( v4 < 60 );
    return v5;
}


// 0x8120b28
int __fastcall sub_8120B28(int a1, int a2)
{
    int v2; // r4
    signed int v3; // r7
    int v4; // r6
    int v5; // r0
    int v7; // [sp+0h] [bp-18h]

    v7 = a1;
    v2 = a2;
    v3 = 0;
    v4 = 0;
    do
    {
        v5 = split9BitsFromBitfield_8021AE0(*(v2 + v3));
        if ( *(getChip8021DA8(v5) + 7) == v7 )
            ++v4;
        v3 += 2;
    }
    while ( v3 < 60 );
    return v4;
}


// 0x8120b54
signed int sub_8120B54()
{
    char v0; // zf
    int v1; // r2
    signed int v2; // r6
    int v3; // r3

    notZero_eByte200AD04();
    if ( v0 )
        return 255;
    if ( sub_803F674() >= 2 && !(sub_802D246() & 8) )
    {
        sub_8144D30();
        return 255;
    }
    if ( sub_803F740(4) >> 32 )
        return 255;
    v2 = 0;
LABEL_7:
    v3 = 0;
    while ( *&byte_8120BB4[v2] + v3 != v1 )
    {
        if ( ++v3 >= 15 )
        {
            v2 += 4;
            if ( v2 < 24 )
                goto LABEL_7;
            v2 = 20;
            return *&byte_8120BCC[v2];
        }
    }
    return *&byte_8120BCC[v2];
}


// 0x8120be4
int sub_8120BE4()
{
    char v0; // ST00_1
    char v1; // ST04_1
    char v2; // ST08_1
    char v3; // ST0C_1
    char v4; // ST10_1
    int v5; // r6

    v0 = GetCurPETNaviStatsByte(0);
    v1 = GetCurPETNaviStatsByte(0);
    v2 = GetCurPETNaviStatsByte(0);
    v3 = GetCurPETNaviStatsByte(0);
    v4 = GetCurPETNaviStatsByte(0);
    v5 = getPETNaviSelect();
    SetCurPETNaviStatsByte(v5, 9, v0);
    SetCurPETNaviStatsByte(v5, 45, v1);
    SetCurPETNaviStatsByte(v5, 46, v2);
    SetCurPETNaviStatsByte(v5, 47, v3);
    return SetCurPETNaviStatsByte(v5, 48, v4);
}


// 0x8120c94
int __fastcall sub_8120C94(int a1, int a2, int a3, int a4)
{
    int v4; // ST00_4
    int v5; // ST0C_4
    int v6; // r3
    int v7; // r4
    int v8; // r7
    int v9; // r2
    int result; // r0
    int v11; // r1
    int v12; // r3
    int v13; // [sp+4h] [bp-20h]
    int v14; // [sp+8h] [bp-1Ch]

    v4 = a1;
    v13 = a2;
    v14 = a3;
    v5 = a4;
    ZeroFillByHalfword(a1, 2 * a2 * a3, a3, a4);
    v6 = v5;
    v7 = 2 * v13;
    v8 = v4;
    v9 = 0;
    do
    {
        result = 0;
        v11 = 2 * v13;
        do
        {
            *(v8 + result) = v6;
            v12 = v6 + 1;
            *(v8 + v11) = v12;
            v6 = v12 + 1;
            result += 2;
            v11 = v7 + result;
        }
        while ( result < v7 );
        v8 += v11;
        ++v9;
    }
    while ( v9 < v14 );
    return result;
}


// 0x8120cc8
int __fastcall sub_8120CC8(int result, unsigned __int8 *a2)
{
    int v2; // r1

    if ( a2[result] == 255 )
    {
        result = 0;
        v2 = *a2;
    }
    return result;
}


// 0x8120d10
int __fastcall sub_8120D10(int a1)
{
    int v1; // r10
    int v2; // r4
    int v3; // r4
    int result; // r0
    signed int v5; // r2
    char v6; // ST00_1
    int v7; // r0
    char v8; // zf
    int v9; // [sp+0h] [bp-1Ch]
    int v10; // [sp+4h] [bp-18h]

    v9 = a1;
    v10 = getPETNaviSelect();
    v2 = GetCurPETNaviStatsByte(v10);
    if ( sub_8120AE8(1) > v2 || (v3 = GetCurPETNaviStatsByte(v10), result = sub_8120AE8(2), result > v3) )
    {
        if ( *(*(v1 + oToolkit_Unk2001c04_Ptr) + 5) == 1 )
        {
            sub_8137718(34);
            LOBYTE(v5) = *(*(v1 + oToolkit_Unk2001c04_Ptr) + 5) - 1;
        }
        else
        {
            v5 = sub_81377EC(0x22u);
            if ( v5 >= 3 || !v9 && (v6 = v5, v7 = sub_8137890(v5), sub_8120DAC(v7), LOBYTE(v5) = v6, !v8) )
            {
                sub_8137718(34);
                LOBYTE(v5) = *(*(v1 + oToolkit_Unk2001c04_Ptr) + 5) - 1;
            }
        }
        result = SetCurPETNaviStatsByte(v10, 45, v5);
    }
    return result;
}


// 0x8120dac
signed int __fastcall sub_8120DAC(int a1)
{
    int v1; // r4
    signed int v2; // r7
    int v3; // r6
    int v4; // r6
    int v6; // [sp+0h] [bp-18h]

    v1 = a1;
    v2 = 1;
    v6 = getPETNaviSelect();
    v3 = GetCurPETNaviStatsByte(v6);
    if ( sub_8120B28(1, v1) <= v3 )
    {
        v4 = GetCurPETNaviStatsByte(v6);
        if ( sub_8120B28(2, v1) <= v4 )
            v2 = 0;
    }
    return v2;
}


// 0x8120df0
int reloadCurNaviBaseStats_8120df0()
{
    int v0; // r10
    int *v1; // r7
    int i; // r6
    int v3; // r1
    int v4; // r0
    int v5; // r0
    int v6; // r7
    int result; // r0
    char v8; // zf
    int *v9; // r7
    int j; // r6
    int v11; // r1
    int *v12; // r7
    int k; // r6
    int v14; // r0
    int v15; // r1
    int v16; // ST00_4
    int v17; // ST04_4
    int v18; // r4
    int v19; // r2
    unsigned int v20; // r0
    int v21; // r2
    int v22; // r6
    int v23; // r4
    int v24; // r2
    unsigned int v25; // r0
    int v26; // r2
    int v27; // r6
    int v28; // r0
    int v29; // r1
    int v30; // r2
    int v31; // r3
    __int16 v32; // r6
    int v33; // [sp+0h] [bp-54h]

    v1 = &v33;
    for ( i = 0; ; i += 4 )
    {
        v3 = *&byte_81210C8[i];
        if ( v3 == -1 )
            break;
        v4 = *(*(v0 + oToolkit_Unk2001c04_Ptr) + 7);
        if ( v3 == 64 )
            v5 = GetField16FromSelectedS20047CCStruct(v4);
        else
            v5 = GetCurPETNaviStatsByte(v4);
        *v1 = v5;
        ++v1;
    }
    v6 = getPETNaviSelect();
    if ( !v6 )
    {
        result = TestEventFlagFromImmediate(1, 99);
        if ( v8 )
        {
            v9 = &v33;
            for ( j = 0; ; j += 4 )
            {
                v11 = *&byte_81210C8[j];
                if ( v11 != 64 )
                {
                    if ( v11 == -1 )
                        return result;
                    result = SetCurPETNaviStatsByte(0, v11, *v9);
                }
                ++v9;
            }
        }
    }
    SelectS20047CCStruct8014018(v6);
    init_8013B4E();
    v12 = &v33;
    for ( k = 0; ; k += 4 )
    {
        v14 = getPETNaviSelect();
        v15 = *&byte_81210C8[k];
        if ( v15 == 64 )
        {
            SetField16ToSelectedS20047CCStruct(v14, 64, *v12);
            goto LABEL_25;
        }
        if ( v15 == -1 )
            break;
        if ( v15 != 11 && v15 != 12 && v15 != 10
            || (v16 = v14, v17 = *&byte_81210C8[k], TestEventFlagFromImmediate(1, 99), v14 = v16, v15 = v17, v8) )
        {
            SetCurPETNaviStatsByte(v14, v15, *v12);
        }
LABEL_25:
        ++v12;
    }
    TestEventFlagFromImmediate(1, 99);
    if ( v8 )
    {
        result = getPETNaviSelect();
        if ( result )
        {
            v18 = result;
            v19 = *(&off_8120F44 + result);
            v20 = sub_8121108();
            v22 = *(v21 + 4 * v20);
            SetField16ToSelectedS20047CCStruct(v18, 66, v22);
            SetField16ToSelectedS20047CCStruct(v18, 62, v22);
            result = *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup);
            if ( result < 128 )
                result = SetField16ToSelectedS20047CCStruct(v18, 64, v22);
        }
    }
    else
    {
        v23 = getPETNaviSelect();
        v24 = *(&off_8120F44 + v23);
        v25 = sub_8121108();
        v27 = *(v26 + 4 * v25);
        SetField16ToSelectedS20047CCStruct(v23, 66, v27);
        v28 = SetField16ToSelectedS20047CCStruct(v23, 62, v27);
        sub_8121154(v28, v29, v30, v31);
        v32 = GetField16FromSelectedS20047CCStruct(v23);
        result = *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup);
        if ( result < 128 )
            result = SetField16ToSelectedS20047CCStruct(v23, 64, v32);
    }
    return result;
}


// 0x8121108
unsigned int sub_8121108()
{
    unsigned int v0; // r6
    char v1; // zf
    unsigned __int8 v2; // vf

    v0 = 24;
    while ( 1 )
    {
        TestEventFlag(*(&off_8121128 + v0));
        if ( !v1 )
            break;
        v2 = __OFSUB__(v0, 4);
        v0 -= 4;
        if ( ((v0 & 0x80000000) != 0) ^ v2 )
        {
            v0 = 0;
            return v0 >> 2;
        }
    }
    return v0 >> 2;
}


// 0x8121144
void __fastcall zeroFill_8121144(int unused, int unused_1, int a3, int a4)
{
    ZeroFillByHalfword(&word_200DCF0, 0x18u, a3, a4);
}


// 0x8121154
int __fastcall sub_8121154(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // r4
    int v6; // r0
    _DWORD *i; // r4

    zeroFill_8121144(a1, a2, a3, a4);
    v5 = *(*(v4 + 64) + 48);
    v6 = getPETNaviSelect();
    for ( i = *(*(&pt_8121200)[v6] + v5 - *&byte_81211B4[2 * v6]); *i != -1; i += 2 )
        (*(off_81211D0 + *i))(i[1]);
    return sub_8123208();
}


// 0x8121198
int sub_8121198()
{
    int v0; // r10
    int v1; // r4

    v1 = *(*(v0 + oToolkit_Unk2001c04_Ptr) + 48);
    return v1 - *&byte_81211B4[2 * getPETNaviSelect()];
}


