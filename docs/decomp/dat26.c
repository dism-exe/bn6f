// 0x8092e44
signed int sub_8092E44()
{
    int v0; // r5
    signed int v1; // r4
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0
    int v5; // r0

    v1 = 1;
    if ( *(v0 + 10) == 128 )
    {
        v2 = sub_8143F72();
        v3 = __OFSUB__(v2, 150);
        v4 = v2 - 150;
        if ( ((v4 < 0) ^ v3) | (v4 == 0) )
        {
            sub_8143F68(0);
        }
        else
        {
            sub_8143F68(v4);
            v5 = *(v0 + 11) + 1;
            *(v0 + 11) = v5;
            if ( v5 != 3 )
                return v1;
        }
        v1 = 0;
        *(v0 + 10) = -127;
    }
    return v1;
}


// 0x8092e78
int sub_8092E78()
{
    unsigned __int8 *v0; // r5

    return (*(&off_8092E90 + *v0))();
}


// 0x8092ec4
signed int __fastcall sub_8092EC4(int a1)
{
    _BYTE *v1; // r5
    int *v2; // r7
    __int64 v3; // ST00_8
    int v4; // r0
    int v5; // r1
    __int64 v6; // ST00_8
    int v7; // r0
    int v8; // r1
    unsigned int v9; // r0
    int v10; // r1
    int v11; // r2

    *v2 = sub_8143DEA(a1);
    v3 = sub_809E1AE();
    sub_8143EA4();
    v4 = ConvertGroundmanMinigameGridCoordsToMapCoords();
    sub_809323A(v4, v5, v3, SHIDWORD(v3));
    v6 = sub_809E1AE();
    sub_8143EA4();
    v7 = ConvertGroundmanMinigameGridCoordsToMapCoords();
    v9 = calcAngle_800117C(v7 - v6, HIDWORD(v6) - v8);
    sub_809E13C(((((((v9 + 16) >> 4) & 0xF) >> 1) - 1) & 7) + 8);
    PlaySoundEffect(129, v10, v11);
    *v1 = 4;
    return 1;
}


// 0x8092f1e
signed int __fastcall sub_8092F1E(int a1)
{
    _BYTE *v1; // r5
    int *v2; // r7
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // r0
    int v7; // r0

    sub_8093258(a1);
    sub_8093202();
    if ( !v3 )
    {
        sub_8143EA4();
        v4 = ConvertGroundmanMinigameGridCoordsToMapCoords();
        (loc_809E1A4)(v4);
        sub_8143EA4();
        v5 = *v2;
        v6 = sub_8143EB0();
        sub_809E2AE(v6);
        v7 = sub_809E2B8();
        sub_809E13C(byte_8092F5C[v7]);
        *v1 = 8;
    }
    return 1;
}


// 0x8092f64
signed int sub_8092F64()
{
    _BYTE *v0; // r5

    sub_8143FAA();
    sub_8093212();
    *v0 = 12;
    return 1;
}


// 0x8092f76
signed int __fastcall sub_8092F76(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int v4; // r10
    __int16 v5; // r4
    int v6; // r1
    int v7; // r2
    int v8; // r1
    int v9; // r2

    v5 = *(*(v4 + 4) + 2);
    if ( v5 & 2 )
    {
        sub_809322A();
        PlaySoundEffect(131, v6, v7);
        sub_80931FA(10);
        *v3 = 16;
    }
    else if ( v5 & 1 )
    {
        sub_80931FA(30);
        PlaySoundEffect(386, v8, v9);
        *v3 = 20;
    }
    else
    {
        sub_8143FC4(1, a2, a3);
    }
    return 1;
}


// 0x8092fbe
signed int __fastcall sub_8092FBE(int a1)
{
    int v1; // r5
    char v2; // zf

    sub_8093202();
    if ( v2 )
        return 1;
    *(v1 + 8) = 1;
    return 0;
}


// 0x8092fd2
signed int __fastcall sub_8092FD2(int a1)
{
    _BYTE *v1; // r5
    int *v2; // r7
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // ST00_4
    int v7; // ST04_4
    int v8; // r0
    int v9; // r1
    int v10; // r1
    int v11; // r2

    sub_8093202();
    if ( !v3 )
    {
        sub_809322A();
        v4 = *v2;
        v6 = ConvertGroundmanMinigameGridCoordsToMapCoords();
        v7 = v5;
        sub_8143EA4();
        v8 = ConvertGroundmanMinigameGridCoordsToMapCoords();
        sub_809323A(v8, v9, v6, v7);
        sub_80931FA(8);
        sub_8144010();
        v1[9] = v10;
        PlaySoundEffect(448, v10, v11);
        *v1 = 24;
    }
    return 1;
}


// 0x8093012
signed int __fastcall sub_8093012(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf

    sub_8093258(a1);
    sub_8093202();
    if ( !v2 )
        *v1 = 28;
    return 1;
}


// 0x8093026
signed int __fastcall sub_8093026(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf
    int v3; // r0

    sub_8093202();
    if ( !v2 )
    {
        v3 = sub_809E2B8();
        sub_809E13C(byte_809304C[v3]);
        sub_80931FA(60);
        *v1 = 32;
    }
    return 1;
}


// 0x8093054
signed int __fastcall sub_8093054(int a1)
{
    _BYTE *v1; // r5
    int v2; // r0
    char v3; // zf
    int v4; // r1
    int v5; // r2

    v2 = sub_8093202();
    if ( !v3 )
    {
        sub_8093074(v2);
        owPlayer_disableWallCollision_809e254();
        PlaySoundEffect(455, v4, v5);
        *v1 = 36;
    }
    return 1;
}


// 0x8093074
int __fastcall sub_8093074(int a1)
{
    unsigned int *v1; // r7
    int v2; // r1
    int v3; // ST00_4
    int v4; // ST04_4
    int v5; // r4
    int v6; // r0
    int v7; // r0
    int v8; // r1

    sub_8143EA4();
    v3 = ConvertGroundmanMinigameGridCoordsToMapCoords();
    v4 = v2;
    v5 = sub_8143EA4();
    v6 = sub_809E2B8();
    *v1 = sub_8143E68(v5, v6, 1);
    v7 = ConvertGroundmanMinigameGridCoordsToMapCoords();
    return sub_809323A(v7, v8, v3, v4);
}


// 0x80930a4
signed int __fastcall sub_80930A4(int a1)
{
    _BYTE *v1; // r5
    int *v2; // r7
    int v3; // r0
    char v4; // zf
    int v5; // r1
    int v6; // r0
    unsigned int v7; // r1
    unsigned int v8; // r4
    int v9; // r0
    unsigned __int8 v10; // vf
    int v11; // r0
    int v12; // r1
    int v13; // ST00_4
    int v14; // ST04_4
    int v15; // r4
    int v16; // r0
    int v17; // r0
    int v18; // r1
    int v19; // r1
    int v20; // r2
    char v21; // r0

    v3 = sub_8093258(a1);
    if ( (dword_80931FE)(v3) != 5 )
    {
LABEL_7:
        sub_8093202();
        if ( !v4 )
        {
            v9 = v1[9];
            v10 = __OFSUB__(v9, 1);
            v11 = v9 - 1;
            v1[9] = v11;
            if ( ((v11 < 0) ^ v10) | (v11 == 0) )
            {
                sub_8143EA4();
                v13 = ConvertGroundmanMinigameGridCoordsToMapCoords();
                v14 = v12;
                v15 = sub_8143EA4();
                v16 = sub_809E2B8();
                sub_8143E68(v15, v16, 1);
                v17 = ConvertGroundmanMinigameGridCoordsToMapCoords();
                sub_809323A(v17, v18, v13, v14);
                sub_80931FA(16);
                owPlayer_enableWallCollision_809e248();
                *v1 = 40;
            }
            else
            {
                sub_8093074(v11);
                owPlayer_disableWallCollision_809e254();
                sub_8143EDC(*v2);
                if ( v4 )
                    owPlayer_enableWallCollision_809e248();
            }
        }
        return 1;
    }
    if ( v1[9] )
    {
        sub_8143BB0(*v2);
        if ( !v4 )
        {
            v21 = sub_809E2B8();
            sub_809E13C(v21);
            owPlayer_enableWallCollision_809e248();
            v1[8] = 0;
            return 0;
        }
        sub_8143EDC(*v2);
        if ( !v4 )
        {
            v6 = sub_8143B5E(v5);
            v8 = v7;
            SetEventFlag(v6);
            SetEventFlag(v8);
        }
        goto LABEL_7;
    }
    camera_initShakeEffect_80302a8(2, 20);
    sub_80931FA(30);
    PlaySoundEffect(192, v19, v20);
    *v1 = 44;
    return 1;
}


// 0x809316c
signed int __fastcall sub_809316C(int a1)
{
    int v1; // r5
    char v2; // zf
    char v3; // r0

    sub_8093258(a1);
    sub_8093202();
    if ( v2 )
        return 1;
    v3 = sub_809E2B8();
    sub_809E13C(v3);
    owPlayer_enableWallCollision_809e248();
    *(v1 + 8) = 1;
    return 0;
}


// 0x809319c
signed int __fastcall sub_809319C(int a1)
{
    _BYTE *v1; // r5
    int *v2; // r7
    char v3; // zf
    int v4; // r0
    int v5; // r1
    int v6; // ST00_4
    int v7; // ST04_4
    int v8; // r0
    int v9; // r1

    sub_8093202();
    if ( !v3 )
    {
        v4 = *v2;
        v6 = ConvertGroundmanMinigameGridCoordsToMapCoords();
        v7 = v5;
        sub_8143EA4();
        v8 = ConvertGroundmanMinigameGridCoordsToMapCoords();
        sub_809323A(v8, v9, v6, v7);
        sub_80931FA(16);
        *v1 = 48;
    }
    return 1;
}


// 0x80931ca
signed int __fastcall sub_80931CA(int a1)
{
    int v1; // r5
    char v2; // zf
    char v3; // r0

    sub_8093258(a1);
    sub_8093202();
    if ( v2 )
        return 1;
    v3 = sub_809E2B8();
    sub_809E13C(v3);
    owPlayer_enableWallCollision_809e248();
    *(v1 + 8) = 1;
    return 0;
}


// 0x80931ee
void __fastcall sub_80931EE(int a1)
{
    int v1; // r5

    chatbox_runScript(*(v1 + 48), a1);
}


// 0x80931fa
int __fastcall sub_80931FA(int result)
{
    int v1; // r5

    *(v1 + 24) = result;
    return result;
}


// 0x8093202
signed int sub_8093202()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r0

    v1 = *(v0 + 24);
    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if ( (v3 < 0) ^ v2 )
        return 1;
    *(v0 + 24) = v3;
    return 0;
}


// 0x8093212
char *sub_8093212()
{
    sub_80468C6(10, 3, 0);
    return sub_80468C6(11, 4, 0);
}


// 0x809322a
int sub_809322A()
{
    sub_80468EC(3);
    return sub_80468EC(4);
}


// 0x809323a
int __fastcall sub_809323A(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r7

    __asm { SVC         6 }
    *(v5 + 4) = a1 - a3;
    __asm { SVC         6 }
    *(v5 + 8) = a2 - a4;
    return sub_80931FA(v4);
}


// 0x8093258
int __fastcall sub_8093258(int a1)
{
    int v1; // r7
    __int64 v2; // r0

    v2 = sub_809E1AE();
    return (loc_809E1A4)(v2 + *(v1 + 4), HIDWORD(v2) + *(v1 + 8));
}


// 0x809332c
int sub_809332C()
{
    int v0; // r1
    int v1; // r2
    int v2; // r3
    int v3; // r1
    int v4; // r2

    sub_809E1BC();
    SpawnOverworldMapObject(2, v0 + 0x80000, v1 + 0x80000, v2 + 2359296);
    PlaySoundEffect(165, v3, v4);
    return 0;
}


