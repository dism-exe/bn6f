// 0x812eaac
void __noreturn sub_812EAAC()
{
    copyTiles(0, 0, 1, &unk_201EE20, 30, dword_14);
}


// 0x812eac4
int sub_812EAC4()
{
    char *v0; // r5
    signed int v1; // r4
    int v2; // r7
    int v3; // r6
    signed int v4; // r0
    int result; // r0
    int v6; // r1
    signed int v7; // r1
    __int16 *v8; // [sp+0h] [bp-18h]

    v8 = &word_2023FA4;
    v0 = sub_812ED2C();
    ZeroFillByEightWords(word_2023FA0, 4 * &loc_BC);
    word_2023FA0[0] = 144;
    word_2023FA2 = 1;
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
            while ( v3 < 49 );
            if ( v2 && *(sub_813B780(v1 - 144) + 3) )
            {
                *v8 = v1;
                v8[1] = v2;
                v8 += 2;
            }
        }
        ++v1;
    }
    while ( v1 < &dword_14C );
    v4 = (v8 - word_2023FA0) >> 2;
    *(v0 + 15) = v4;
    if ( v4 < 7 )
    {
        v7 = *(v0 + 16);
        if ( v7 >= v4 )
            v7 = (v8 - word_2023FA0) >> 2;
        *(v0 + 16) = v7;
        result = 0;
        *(v0 + 18) = 0;
    }
    else
    {
        result = v4 - 7;
        if ( *(v0 + 18) > result )
        {
            *(v0 + 18) = result;
            v6 = *(v0 + 16) - result;
            if ( v6 > 7 )
                *(v0 + 16) = v6;
        }
    }
    return result;
}


// 0x812eb78
void sub_812EB78()
{
    sub_80465A0(&byte_812DA94);
}


// 0x812eb88
void sub_812EB88()
{
    JUMPOUT(&loc_812EB9A);
}


// 0x812eb92
int sub_812EB92()
{
    int result; // r0
    char v1; // zf

    result = getStructFrom2008450(0);
    if ( v1 )
        result = sub_812EBD8(byte_812DAC4, 0, 60);
    return result;
}


// 0x812ebb8
int sub_812EBB8()
{
    int result; // r0
    char v1; // zf

    result = getStructFrom2008450(1);
    if ( v1 )
        result = sub_812EBD8(byte_812DACC, 1, 180);
    return result;
}


// 0x812ebd8
int __fastcall sub_812EBD8(void *a1, int a2, int a3)
{
    int v3; // r6
    int result; // r0
    char v5; // zf
    __int16 v6; // r1
    int v7; // [sp+0h] [bp-18h]

    v7 = a3;
    v3 = a2;
    sub_80465A0(a1);
    result = getStructFrom2008450(v3);
    if ( !v5 )
    {
        if ( v7 == 68 )
            v6 = 52;
        else
            v6 = 68;
        result = sprite_setCoordinates(v7, v6);
    }
    return result;
}


// 0x812ec04
int sub_812EC04()
{
    char *v0; // r0

    v0 = sub_812ED2C();
    return sub_811BC00(word_2023FA0[2 * (*(v0 + 16) + *(v0 + 18))], 0, 9, *(v0 + 16) + *(v0 + 18));
}


// 0x812ec2c
int __fastcall sub_812EC2C(__int16 a1, int a2, int a3)
{
    int v3; // r4

    v3 = a1 & 0x7FFF;
    sub_811BC00(a1 & 0x7FFF, a3, a2, 0);
    return v3;
}


// 0x812ecac
void sub_812ECAC()
{
    int v0; // r5
    int v1; // r10
    char *v2; // r7
    __int16 v3; // r1
    int v4; // r2
    char v5; // zf
    int v6; // r1
    int v7; // r0

    v2 = sub_812ED2C();
    *(v2 + 17) = *(v2 + 16);
    *(v2 + 19) = *(v2 + 18);
    if ( *(v2 + 15) )
    {
        if ( sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 6u, 0, 0) )
            sub_812EF20();
        if ( v2[12] != 12 )
            v2[12] = sub_812EEEC();
        v3 = *(v2 + 16);
        *(v2 + 31) = *(v2 + 18);
        *(v2 + 30) = v3;
    }
    isJoystickIRQActive();
    if ( !v5 )
        goto LABEL_17;
    isJoystickIRQActive();
    if ( v5 )
        return;
    v6 = 4;
    if ( *(v0 + 17) )
    {
LABEL_17:
        *(v0 + 27) |= 1u;
        v6 = 8;
    }
    *(v0 + 38) = v6;
    v7 = 129;
    if ( v6 != 4 )
        v7 = 131;
    sound_play(v7, v6, v4);
}


// 0x812ed2c
char *sub_812ED2C()
{
    return &eT4BattleObjects[3872];
}


// 0x812ed34
int sub_812ED34()
{
    char *v0; // r0

    v0 = sub_812ED2C();
    return word_2023FA0[2 * (*(v0 + 18) + *(v0 + 16))] | 0x8000;
}


// 0x812ed58
void sub_812ED58()
{
    _BYTE *v0; // r5
    int v1; // r1

    if ( sub_80062C8() == 12 )
        engine_setScreeneffect(8, 16);
    v0[2] = 28;
    v0[12] = 0;
    v0[3] = 0;
    if ( !(v0[27] & 1) )
    {
        if ( eStruct200BC30_getRef()[14] == 2 )
            v1 = 48;
        chatbox_runScript_803FD9C_on_eTextScript201BA20(v1);
    }
}


// 0x812ed94
void __fastcall __noreturn sub_812ED94(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r0

    sub_800183C();
    sub_8046664();
    copyTiles(0, 0, 1, &unk_201E920, 30, dword_14);
    sub_812EB92();
    v5 = sub_812EC2C(*(v4 + 42), 0, 4);
    sub_812EDFC(v5, 0);
    (loc_812EE38)(0);
}


// 0x812ede4
void sub_812EDE4()
{
    sub_80465A0(byte_812DAD4);
}


// 0x812edfc
int __fastcall sub_812EDFC(int a1, int a2)
{
    return sub_8120280(a1, 4 * a2, *(&off_812EE18 + a2));
}


// 0x812ee20
void __noreturn sub_812EE20()
{
    int v0; // r5
    int v1; // r2

    v1 = *(&off_812EED8 + *(v0 + 48));
    sub_80018D0(4, 9, 2, 0);
    JUMPOUT(loc_812EE66);
}


// 0x812ee78
void __fastcall sub_812EE78(int a1)
{
    int v1; // r5
    int v2; // r0
    int v3; // r3
    int v4; // r1

    v2 = 4 * a1;
    v3 = *(&off_812EEB0 + v2);
    if ( v2 )
        v4 = 8 - *(v1 + 48);
    sub_80018D0(*&byte_812EEBC[v2], *&byte_812EEBC[v2 + 8], 2, 0);
}


// 0x812eeec
signed int sub_812EEEC()
{
    char *v0; // r0
    char *v1; // r7
    int v2; // r1
    signed int v3; // r4
    int v4; // r0
    int v5; // r1
    int v6; // r2

    v0 = sub_812ED2C();
    v1 = v0;
    if ( v2 )
        return 12;
    v3 = 0;
    v4 = *(v0 + 18);
    v5 = *(v1 + 19);
    v6 = v4 - v5;
    if ( v4 < v5 )
        v6 = v5 - v4;
    if ( v6 == 6 )
        return 12;
    if ( v4 != v5 )
    {
        v3 = 8;
        if ( v4 <= v5 )
            v3 = 4;
    }
    return v3;
}


// 0x812ef20
void __noreturn sub_812EF20()
{
    char *v0; // r0

    v0 = sub_812ED2C();
    sub_812EF60((word_2023FA0[2 * (*(v0 + 16) + *(v0 + 18))] - 144) >> 2);
}


// 0x812ef60
void __fastcall __noreturn sub_812EF60(int a1)
{
    renderTextGfx_8045F8C(&unk_2025070, a1, byte_201B200, 100710400);
    JUMPOUT(loc_812EF76);
}


// 0x812efa4
__int64 sub_812EFA4()
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


// 0x812efd4
void sub_812EFD4()
{
    ;
}


