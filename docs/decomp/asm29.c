// 0x80a4984
int ho_80A4984()
{
    int v0; // r5
    char *v1; // r7

    v1 = &byte_80A3A44[16 * *(v0 + 4)];
    return (*(&jt_80A49A0 + *(v0 + 8)))();
}


// 0x80a49b0
void sub_80A49B0()
{
    int v0; // r5
    unsigned __int8 *v1; // r7
    int v2; // r0
    int v3; // r6

    sprite_load(v0, 128, *v1, v1[1]);
    sprite_setAnimation(v0, v1[2]);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v2 = v1[3];
    if ( v2 == 255 )
    {
        v3 = *(v0 + 20);
        *(v0 + 20) = sub_8031612(v0 + 12) << 16;
        v2 = sub_8035694((v0 + 12));
        *(v0 + 20) = v3;
    }
    sub_8002E14(v2);
    sub_8002FA6(*(v1 + 1));
    sprite_setPallete(v1[8]);
    *(v0 + 8) = 4;
    *(v0 + 6) = 0;
    *(v0 + 7) = 0;
    event_80A4A08();
}


// 0x80a4a08
void event_80A4A08()
{
    int v0; // r5
    int v1; // r7
    char v2; // zf
    int v3; // r4

    *(v0 + 7) = 0;
    *v0 = 1;
    if ( *(v1 + 12) )
        SetEventFlag(*(v1 + 12));
    if ( *(v1 + 14) )
        SetEventFlag(*(v1 + 14));
    if ( !*(v1 + 10) || (TestEventFlag(*(v1 + 10)), !v2) )
    {
        *(v0 + 7) = 1;
        *v0 = 3;
        if ( *(v1 + 12) )
            ClearEventFlag(*(v1 + 12));
        if ( *(v1 + 14) )
            ClearEventFlag(*(v1 + 14));
        v3 = *(v1 + 9);
        TestEventFlagFromImmediate(23, 28);
        if ( v2 )
            v3 = *(v1 + 8);
        if ( v3 == 255 )
            sprite_forceWhitePallete();
        sprite_setPallete(v3);
    }
    if ( *(v0 + 6) & *(v0 + 7) )
    {
        *(v0 + 6) = *(v0 + 7);
        sprite_setAnimation(v0, *(v1 + 2));
        sprite_loadAnimationData(v0);
    }
    sprite_update(v0);
}


// 0x80a4a90
int sub_80A4A90()
{
    return FreeOverworldMapObject();
}


// 0x80a4a98
int sub_80A4A98()
{
    int v0; // r5

    return (*(&off_80A4AAC + *(v0 + 8)))();
}


// 0x80a4ab8
int sub_80A4AB8()
{
    int v0; // r5

    *(v0 + 8) = 4;
    *(v0 + 36) = *(v0 + 5);
    *(v0 + 40) = *(v0 + 6);
    return sub_80A4ACC();
}


// 0x80a4acc
int sub_80A4ACC()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    _DWORD *v4; // r7
    unsigned int v8; // r0
    int v9; // r1
    int v10; // r2
    int v11; // r0

    v1 = *(v0 + 36);
    _VF = __OFSUB__(v1, 1);
    result = v1 - 1;
    if ( ((result < 0) ^ _VF) | (result == 0) )
    {
        *(v0 + 36) = *(v0 + 5);
        v4 = *(&off_80A4B88 + ((*(v0 + 7) & 0xC0u) >> 3))
             + (*(v0 + 7) & 0x3F) * *(&off_80A4B88 + ((*(v0 + 7) & 0xC0u) >> 3) + 4);
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        GetPositiveSignedRNG2();
        SpawnOverworldMapObject(
            2,
            ((*sub_80A4BD4 + (v8 & 0xF) - 7) << 16) + *v4 + *(v0 + 12),
            ((loc_80A4BD6 + ((v8 >> 8) & 0xF) - 7) << 16) + v4[1] + *(v0 + 16),
            ((*(&loc_80A4BD6 + 1) + ((v8 >> 16) & 0xF) - 7) << 16) + v4[2] + *(v0 + 20));
        v11 = *(v0 + 40);
        _VF = __OFSUB__(v11, 1);
        result = v11 - 1;
        if ( ((result < 0) ^ _VF) | (result == 0) )
        {
            result = *(v0 + 6);
            *(v0 + 40) = result;
            if ( result )
                result = PlaySoundEffect(112, v9, v10);
        }
        else
        {
            *(v0 + 40) = result;
        }
    }
    else
    {
        *(v0 + 36) = result;
    }
    return result;
}


// 0x80a4bd4
int sub_80A4BD4()
{
    return FreeOverworldMapObject();
}


// 0x80a4bdc
int sub_80A4BDC()
{
    int v0; // r5

    return (*(&off_80A4BF0 + *(v0 + 8)))();
}


// 0x80a4bfc
void __noreturn sub_80A4BFC()
{
    int v0; // r5
    int v1; // r6
    int v2; // r0

    *v0 = 3;
    sprite_load(v0, 128, *(v0 + 6), *(v0 + 7));
    v1 = *(v0 + 20);
    *(v0 + 20) = sub_8031612(v0 + 12) << 16;
    v2 = sub_8035694((v0 + 12));
    *(v0 + 20) = v1;
    sub_8002E14(v2);
    sprite_setAnimation(v0, *(v0 + 4));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(*(v0 + 5));
    *(v0 + 8) = 4;
    sub_80A4C46();
}


// 0x80a4c46
void __noreturn sub_80A4C46()
{
    Battle *v0; // r5

    if ( sprite_getFrameParameters() & 0x80 )
        v0->currState = 8;
    sprite_update(v0);
}


// 0x80a4c5c
int sub_80A4C5C()
{
    return FreeOverworldMapObject();
}


// 0x80a51c4
int sub_80A51C4()
{
    int v0; // r5
    char *v1; // r7

    v1 = &byte_80A4C64[16 * *(v0 + 4)];
    return (*(&off_80A51E0 + *(v0 + 8)))();
}


// 0x80a51f8
int sub_80A51F8()
{
    Battle *v0; // r5
    unsigned __int16 *v1; // r7
    char v2; // zf

    TestEventFlag(*v1);
    if ( !v2 )
    {
        v0->objFlags = 3;
        sprite_load(v0, 128, *(v1 + 6), *(v1 + 7));
        sub_8002E14(*(v1 + 12));
        sprite_setAnimation(v0, *(v1 + 8));
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        sub_8002FA6(*(v1 + 10) << 24);
        sprite_setPallete(*(v1 + 11));
        ClearEventFlag(v1[1]);
        ClearEventFlag(v1[2]);
        v0->currState = 4;
        sub_80A5268();
    }
    SetEventFlag(v1[1]);
    SetEventFlag(v1[2]);
    v0->currState = 16;
    return sub_80A5350();
}


// 0x80a5268
void __noreturn sub_80A5268()
{
    int v0; // r5
    unsigned __int16 *v1; // r7
    char v2; // zf
    int v3; // r2
    int v4; // r1
    int v5; // r0
    int v6; // r0

    TestEventFlag(*v1);
    if ( v2 )
    {
        if ( !((sub_80062C8() >> 2) & 1) )
        {
            if ( *(v1 + 7) == 1 )
            {
                v4 = *(v1 + 8);
                sprite_setAnimation(v0, *(v1 + 9));
                sprite_loadAnimationData(v0);
                SetEventFlag(v1[2]);
                *(v0 + 36) = 0;
                *(v0 + 8) = 12;
                goto LABEL_11;
            }
            v5 = v1[7];
            if ( v5 != 0xFFFF )
                PlaySoundEffect(v5, 0xFFFF, v3);
        }
        SetEventFlag(v1[2]);
        v6 = *(v1 + 9);
        if ( v6 == *(v1 + 8) )
        {
            SetEventFlag(v1[1]);
            *(v0 + 8) = 16;
        }
        else
        {
            sprite_setAnimation(v0, v6);
            sprite_loadAnimationData(v0);
            *(v0 + 8) = 8;
        }
    }
LABEL_11:
    sprite_update(v0);
}


// 0x80a52e4
void __noreturn sub_80A52E4()
{
    Battle *v0; // r5
    int v1; // r7

    if ( sprite_getFrameParameters() & 0x80 )
    {
        SetEventFlag(*(v1 + 2));
        v0->currState = 16;
    }
    sprite_update(v0);
}


// 0x80a5304
void __noreturn sub_80A5304()
{
    int v0; // r5
    int v1; // r7
    int v2; // r2
    int v3; // r1

    if ( sprite_getFrameParameters() & 0x80 )
    {
        SetEventFlag(*(v1 + 2));
        *(v0 + 8) = 16;
    }
    else
    {
        v3 = *(v0 + 36) + 1;
        *(v0 + 36) = v3;
        switch ( v3 )
        {
            case 50:
                PlaySoundEffect(&dword_14C, 50, v2);
                break;
            case 74:
                PlaySoundEffect(230, 74, v2);
                break;
            case 93:
                PlaySoundEffect(153, 93, v2);
                break;
        }
    }
    sprite_update(v0);
}


// 0x80a5350
int sub_80A5350()
{
    return FreeOverworldMapObject();
}


// 0x80a5428
int sub_80A5428()
{
    int v0; // r5

    return (*(&off_80A543C + *(v0 + 8)))();
}


// 0x80a5448
void __noreturn sub_80A5448()
{
    int v0; // r5
    unsigned __int8 *v1; // r7
    unsigned __int16 *v2; // r1
    u8 v3; // r0

    *v0 = 3;
    v1 = sub_80A54A4();
    *(v0 + 12) = *v2 << 16;
    *(v0 + 16) = v2[1] << 16;
    *(v0 + 20) = 0;
    sprite_load(v0, 128, *v1, v1[1]);
    v3 = v1[2];
    *(v0 + 5) = v3;
    sprite_setAnimation(v0, v3);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(2);
    *(v0 + 5) = v1[3];
    *(v0 + 8) = 4;
    sub_80A5494();
}


// 0x80a5494
void __noreturn sub_80A5494()
{
    Battle *v0; // r5

    sprite_update(v0);
}


// 0x80a549c
int sub_80A549C()
{
    return FreeOverworldMapObject();
}


// 0x80a54a4
char *sub_80A54A4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    signed int v3; // r2
    signed int v4; // r2
    int v5; // r3
    char *result; // r0
    char *v7; // r1

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 133 )
        v3 = 2;
    else
        v3 = *(v2 + oGameState_MapNumber);
    v4 = v3;
    v5 = 4 * *(v0 + 4);
    result = &(*off_80A54D8[v4])[v5];
    v7 = &(*off_80A54E4[v4])[v5];
    return result;
}


// 0x80a54f0
int sub_80A54F0()
{
    int v0; // r5

    return (*(&off_80A5504 + *(v0 + 8)))();
}


// 0x80a5514
void __noreturn sub_80A5514()
{
    int v0; // r5
    int v1; // r6
    int v2; // r10
    int v3; // r2
    int v4; // r0
    int v5; // r1

    *v0 = 3;
    if ( *(*(v2 + oToolkit_GameStatePtr) + oGameState_MapGroup) == 133 )
        v3 = 78;
    else
        v3 = 11;
    sprite_load(v0, 128, 28, v3);
    sprite_setAnimation(v0, *(v1 + 5));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v4 = sub_8035694((v0 + 12));
    sub_8002E14(v4);
    v5 = *(v0 + 16);
    *(v0 + 36) = *(v0 + 12);
    *(v0 + 40) = v5;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 44) = 18;
    *(v0 + 7) = *(v1 + 5);
    if ( !(*(v0 + 4) & 1) )
    {
        PlaySoundEffect(383, 0, 1);
        if ( !*(v0 + 4) )
            *(v1 + 15) = 10;
    }
    *(v0 + 8) = 4;
    sub_80A5588();
}


// 0x80a5588
void sub_80A5588()
{
    Battle *v0; // r5
    int v1; // r6
    char v2; // zf

    s_2011C50_8036F40();
    if ( v2 )
    {
        sub_8036F58();
        if ( v2 )
        {
            chatbox_check_eFlags2009F38(128);
            if ( v2 )
            {
                sub_809E462();
                if ( v2 )
                {
                    sub_80A55D4();
                    TestEventFlagFromImmediate(4, 234);
                    if ( v2 )
                    {
                        TestEventFlagFromImmediate(4, 235);
                        if ( v2 )
                        {
                            if ( *(v1 + 8) != 2 )
                                sub_80A5744();
                        }
                    }
                    sprite_update(v0);
                }
            }
        }
    }
}


// 0x80a55cc
int sub_80A55CC()
{
    return FreeOverworldMapObject();
}


// 0x80a55d4
signed int sub_80A55D4()
{
    int v0; // r5
    int v1; // r6
    int v2; // r0
    signed int result; // r0
    int v4; // r4
    int v5; // r3
    int v6; // r2
    int v7; // r2
    char v8; // zf
    int v9; // r1

    v2 = *(v0 + 44) - 1;
    *(v0 + 44) = v2;
    if ( !v2 )
    {
        *(v0 + 44) = 18;
        *(v0 + 6) = 0;
    }
    result = *(v0 + 6);
    if ( result != 1 )
    {
        v4 = sub_80A5764();
        v5 = *(v0 + 7);
        if ( *(v0 + 7) )
        {
            if ( v5 == 1 )
            {
                *(v0 + 16) += v4;
            }
            else if ( v5 == 2 )
            {
                *(v0 + 12) -= v4;
            }
            else
            {
                *(v0 + 16) -= v4;
            }
        }
        else
        {
            *(v0 + 12) += v4;
        }
        if ( sub_80A5690() != 1 && (sub_8003694((v0 + 12)), v6) )
        {
            result = 1;
            *(v0 + 5) = 1;
        }
        else
        {
            TestEventFlagFromImmediate(4, 235);
            if ( v8 && *(v1 + 8) != 2 )
            {
                result = *(v0 + 5);
                if ( *(v0 + 5) )
                {
                    v9 = *(v0 + 40);
                    *(v0 + 12) = *(v0 + 36);
                    *(v0 + 16) = v9;
                    *(v0 + 5) = 0;
                    *(v0 + 6) = 1;
                    result = *(v1 + 15);
                    if ( !*(v1 + 15) )
                    {
                        PlaySoundEffect(383, v9, v7);
                        result = 10;
                        *(v1 + 15) = 10;
                    }
                }
            }
            else
            {
                result = 8;
                *(v0 + 8) = 8;
            }
        }
    }
    return result;
}


// 0x80a5690
signed int sub_80A5690()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r0
    char (*v4)[44]; // r4
    signed int v5; // r7
    char *v6; // r1
    int v7; // r0
    int v8; // r1
    int v9; // r2
    int v10; // r3
    int v11; // r0
    int v12; // r1
    int v13; // r1
    int v15; // [sp-4h] [bp-18h]

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 133 )
        v3 = 2;
    else
        v3 = *(v2 + 5);
    v4 = off_80A5714[v3];
    *(v0 + 6) = *(&dword_80A5720 + v3);
    v5 = 0;
    do
    {
        v6 = &(*v4)[4 * v5];
        v7 = (*v6 - 8) << 16;
        v8 = (*(v6 + 1) + 8) << 16;
        v9 = *(v0 + 12);
        v10 = *(v0 + 16);
        if ( v7 < v9 )
            v11 = v9 - v7;
        else
            v11 = v7 - v9;
        if ( v8 < v10 )
            v12 = v10 - v8;
        else
            v12 = v8 - v10;
        v15 = v12;
        if ( v11 <= sub_80A5724() << 16 && v15 <= v13 << 16 )
            return 1;
        ++v5;
    }
    while ( v5 < *(v0 + 6) );
    return 0;
}


// 0x80a5724
int sub_80A5724()
{
    int v0; // r6
    int v1; // r3
    int result; // r0
    int v3; // r1

    v1 = *(v0 + 5);
    result = *(&dword_80A573C + v1);
    v3 = *(&dword_80A5740 + v1);
    return result;
}


// 0x80a5744
unsigned int sub_80A5744()
{
    int v0; // r5
    int v1; // r6
    unsigned int result; // r0

    result = *(v0 + 5);
    if ( *(v0 + 5) )
    {
        result = reqBBS_81409E4() - 192;
        if ( result != *(v1 + 5) )
            result = SetEventFlagFromImmediate(4, 234);
    }
    return result;
}


// 0x80a5764
int sub_80A5764()
{
    int v0; // r10
    char *v1; // r7

    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) == 133 )
        v1 = byte_80A579C;
    else
        v1 = byte_80A578C;
    return *&v1[4 * reqBBS_81409D0(4)];
}


// 0x80a57ac
int sub_80A57AC()
{
    int v0; // r5

    return (*(&off_80A57C0 + *(v0 + 8)))();
}


// 0x80a57d0
void __noreturn sub_80A57D0()
{
    int v0; // r5
    int v1; // r0
    char v2; // t1
    char v3; // zf

    *v0 = 1;
    sprite_load(v0, 128, 24, 60);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v1 = sub_8035694((v0 + 12));
    sub_8002E14(v1);
    sprite_setPallete(0);
    sub_80A5890();
    *(v0 + 48) = 0;
    *(v0 + 6) = 0;
    *(v0 + 9) = 0;
    v2 = *(v0 + 7);
    TestEventFlagFromImmediate(5, 242);
    if ( !v3 )
        sub_80A5A1C();
    *(v0 + 8) = 4;
    sub_80A5828();
}


// 0x80a5828
void __noreturn sub_80A5828()
{
    int v0; // r5
    int v1; // r6
    int v2; // r0
    int v3; // r0

    v2 = *(v1 + 7);
    if ( !*(v1 + 7) )
        goto LABEL_9;
    if ( v2 == 3 )
    {
        *v0 = 1;
        *(v1 + 7) = 0;
        goto LABEL_11;
    }
    if ( v2 == 1 )
    {
        if ( !*(v0 + 9) )
        {
            *(v0 + 12) = *(v1 + 136);
            *(v0 + 16) = *(v1 + 140);
            *(v0 + 20) = *(v1 + 144);
            *v0 = 3;
            *(v0 + 9) = 1;
        }
        sub_80A58E0();
        if ( !v3 )
        {
            *(v1 + 7) = 0;
            *(v0 + 9) = 0;
LABEL_9:
            sub_80A5890();
            goto LABEL_11;
        }
    }
    else
    {
        sub_80A58AC();
    }
LABEL_11:
    sub_80A5A5C();
    sprite_update(v0);
}


// 0x80a5888
int sub_80A5888()
{
    return FreeOverworldMapObject();
}


// 0x80a5890
int sub_80A5890()
{
    _DWORD *v0; // r5
    _DWORD *v1; // r6
    int v2; // r1
    int v3; // r2

    v2 = v1[32];
    v3 = v1[33];
    v0[3] = v1[31];
    v0[4] = v2;
    v0[5] = v3;
    return sub_80A5974();
}


// 0x80a58ac
int sub_80A58AC()
{
    _DWORD *v0; // r5
    int v1; // r6
    int v2; // r1
    int v3; // r2
    int result; // r0
    int v5; // r1
    int v6; // r2

    v2 = *(v1 + 140);
    v3 = *(v1 + 144);
    v0[9] = *(v1 + 136);
    v0[10] = v2;
    v0[11] = v3;
    result = sub_80A58F4(0x10000);
    if ( result != 1 )
    {
        *(v1 + 7) = 0;
        result = sub_80A5954();
        v0[3] = result;
        v0[4] = v5;
        v0[5] = v6;
    }
    return result;
}


// 0x80a58e0
void sub_80A58E0()
{
    sub_80A5954();
    sub_80A596C();
    sub_80A59B8();
    JUMPOUT(&loc_80A58FA);
}


// 0x80a58f4
signed int __fastcall sub_80A58F4(int a1)
{
    int v1; // r5
    signed int v2; // r4
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r0
    int v7; // r0
    int v8; // r1
    int v9; // r0
    int v10; // r0

    v2 = 0;
    v3 = a1;
    v4 = *(v1 + 12);
    v5 = *(v1 + 36);
    if ( v4 != v5 )
    {
        if ( v4 > v5 )
        {
            if ( v4 - v5 < v3 )
                goto LABEL_8;
            v6 = v4 - v3;
            v2 = 1;
        }
        else
        {
            if ( v5 - v4 < v3 )
                goto LABEL_8;
            v6 = v4 + v3;
            v2 = 1;
        }
        *(v1 + 12) = v6;
        *(v1 + 6) = v2;
    }
LABEL_8:
    v7 = *(v1 + 16);
    v8 = *(v1 + 40);
    if ( v7 != v8 )
    {
        if ( v7 > v8 )
        {
            if ( v7 - v8 >= v3 )
            {
                v9 = v7 - v3;
                v2 = 1;
                goto LABEL_14;
            }
        }
        else if ( v8 - v7 >= v3 )
        {
            v9 = v7 + v3;
            v2 = 1;
LABEL_14:
            *(v1 + 16) = v9;
            v10 = sub_8031612(v1 + 12) << 16;
            *(v1 + 20) = v10;
            *(v1 + 32) = v10;
            return v2;
        }
    }
    return v2;
}


// 0x80a5954
int sub_80A5954()
{
    _DWORD *v0; // r5
    _DWORD *v1; // r6
    int result; // r0
    int v3; // r1
    int v4; // r2

    result = v1[31];
    v3 = v1[32];
    v4 = v1[33];
    v0[9] = result;
    v0[10] = v3;
    v0[11] = v4;
    return result;
}


// 0x80a596c
void sub_80A596C()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1

    v1 = *(v0 + 36);
    v2 = *(v0 + 40);
    JUMPOUT(&loc_80A597A);
}


// 0x80a5974
int sub_80A5974()
{
    int v0; // r5
    __int64 v1; // r0
    int result; // r0
    int v3; // r4

    v1 = sub_809E1AE();
    LODWORD(v1) = v1 - *(v0 + 12);
    HIDWORD(v1) -= *(v0 + 16);
    result = sub_800118A(v1);
    if ( result )
    {
        result = byte_80A59B0[result];
        v3 = result;
        if ( result != *(v0 + 48) )
        {
            sprite_setAnimation(v0, result);
            sprite_loadAnimationData(v0);
            result = sprite_noShadow(v0);
            *(v0 + 48) = v3;
        }
    }
    return result;
}


// 0x80a59b8
int sub_80A59B8()
{
    _DWORD *v0; // r5
    int v1; // r10
    unsigned int v2; // r0
    signed int v3; // r1
    int v4; // r4
    char v5; // zf
    int result; // r0

    v2 = calcAngle_800117C(v0[9] - v0[3], v0[10] - v0[4]);
    v3 = 0;
    if ( v2 == 32 || v2 == 160 )
        v3 = 1;
    v4 = 4 * v3;
    if ( (**(v1 + oToolkit_JoypadPtr) & 0xF) != 2 )
    {
        TestEventFlagFromImmediate(23, 22);
        if ( v5 )
            return *&byte_80A5A0C[v4];
    }
    result = *&byte_80A5A14[v4];
    v0[13] = result;
    return result;
}


// 0x80a5a1c
int sub_80A5A1C()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    __int64 v4; // r0
    int v5; // r0
    int result; // r0

    v1 = dword_2000F88;
    v2 = *algn_2000F8C;
    v3 = unk_2000F90;
    *(v0 + 12) = dword_2000F88;
    *(v0 + 36) = v1;
    *(v0 + 16) = v2;
    *(v0 + 40) = v2;
    *(v0 + 20) = v3;
    *(v0 + 44) = v3;
    v4 = sub_809E1AE();
    LODWORD(v4) = v4 - dword_2000F88;
    HIDWORD(v4) -= *algn_2000F8C;
    v5 = sub_800118A(v4);
    (loc_80A598C)(v5);
    *v0 = 3;
    result = byte_2000EC0[0];
    *(v0 + 9) = byte_2000EC0[0];
    return result;
}


// 0x80a5a5c
int sub_80A5A5C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 9);
    byte_2000EC0[0] = *(v0 + 9);
    return result;
}


// 0x80a5ad4
int sub_80A5AD4()
{
    int v0; // r5

    return (*(&off_80A5AE8 + *(v0 + 8)))();
}


// 0x80a5af8
char *sub_80A5AF8()
{
    int v0; // r5
    char *result; // r0
    char *v2; // r4
    unsigned __int16 v3; // r0
    int v4; // r0
    char v5; // zf

    *v0 = 3;
    result = sub_80A5D0C();
    if ( result )
    {
        v2 = result;
        *(v0 + 12) = *result << 16;
        *(v0 + 16) = *(result + 1) << 16;
        *(v0 + 20) = *(result + 2) << 16;
        sprite_load(v0, 128, 24, 60);
        v3 = *(v2 + 3);
        *(v0 + 5) = v3;
        *(v0 + 52) = v3;
        sprite_setAnimation(v0, v3);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        v4 = sub_8035694((v0 + 12));
        sub_8002E14(v4);
        *(v0 + 6) = v2[7];
        *(v0 + 7) = 1;
        *(v0 + 36) = 0;
        sub_80A5F84();
        TestEventFlagFromImmediate(5, 242);
        if ( !v5 )
            sub_80A5FD0();
        *(v0 + 8) = 4;
        sub_80A5B70();
    }
    return result;
}


// 0x80a5b70
void __noreturn sub_80A5B70()
{
    int v0; // r5
    int v1; // r6
    int v2; // r4
    int v3; // r7
    signed int v4; // r0
    char v5; // r0
    char v6; // zf

    v2 = *(v1 + 5);
    if ( !*(v1 + 5) )
        goto LABEL_24;
    if ( v2 == 3 )
    {
        sub_80A5EC8();
        goto LABEL_21;
    }
    if ( *(v0 + 36) == 1 )
    {
        ClearEventFlagFromImmediate(23, 7);
        ClearEventFlagFromImmediate(23, 40);
        if ( v2 == 1 )
        {
            *v0 = 1;
            *(v0 + 7) = 0;
            *(v1 + 5) = 0;
            *(v0 + 36) = 0;
        }
        else if ( v2 == 2 && sub_80A5D48() != 1 )
        {
            *(v0 + 36) = 0;
            *(v1 + 5) = 0;
        }
    }
    else
    {
LABEL_24:
        if ( !*(v0 + 7) )
            goto LABEL_21;
        v3 = *(v0 + 9);
        if ( v3 <= 0 )
        {
            if ( !sub_80A5C74() || !*(v0 + 36) )
                goto LABEL_21;
            SetEventFlagFromImmediate(23, 7);
            SetEventFlagFromImmediate(23, 40);
            *(v0 + 9) = v3 + 1;
        }
        v4 = sub_80A5C9C();
        if ( v4 == 1 )
        {
            *(v0 + 9) = 0;
            *(v1 + 8) = *(v1 + 6);
            v5 = *(v0 + 6);
            *(v1 + 6) = v5;
            *(v1 + 13) = v5 + 1;
            *(v1 + 136) = *(v0 + 12);
            *(v1 + 140) = *(v0 + 16);
            *(v1 + 144) = *(v0 + 20);
            TestEventFlagFromImmediate(5, 242);
            if ( v6 )
            {
                SetEventFlagFromImmediate(5, 243);
                sub_80A5E8C();
                reqBBS_setFlag_e17b0f7_8140A00();
            }
            else
            {
                SetEventFlagFromImmediate(5, 244);
            }
        }
        else if ( v4 != 2 )
        {
            sub_80A5CF0();
            *(v0 + 36) = 0;
            *(v0 + 9) = 0;
            ClearEventFlagFromImmediate(23, 7);
            ClearEventFlagFromImmediate(23, 40);
        }
    }
LABEL_21:
    sub_80A6014();
    sprite_update(v0);
}


// 0x80a5c6c
int sub_80A5C6C()
{
    return FreeOverworldMapObject();
}


// 0x80a5c74
signed int sub_80A5C74()
{
    int v0; // r5
    signed int v1; // r4
    int v2; // r0

    v1 = 0;
    v2 = reqBBS_81409F4();
    if ( v2 >= 192 )
    {
        v1 = 0;
        if ( v2 == sub_8031A7A(v0 + 12) )
        {
            v1 = 1;
            *(v0 + 36) = 1;
        }
    }
    return v1;
}


// 0x80a5c9c
signed int sub_80A5C9C()
{
    int v0; // r5
    int v1; // r4
    char v2; // zf
    signed int v3; // r4

    v1 = *(v0 + 10);
    if ( v1 <= 0 )
    {
        sub_80A5CE4();
        updateFlags_809E0B0();
        sub_80A5E44();
        reqBBS_RunTextScriptWhoAmI(0, *(v0 + 6));
        *(v0 + 10) = v1 + 1;
        return 2;
    }
    chatbox_check_eFlags2009F38(128);
    if ( !v2 )
        return 2;
    v3 = 0;
    if ( !chatbox_8045F4C() )
        v3 = 1;
    *(v0 + 10) = 0;
    sub_809E122();
    return v3;
}


// 0x80a5ce4
int sub_80A5CE4()
{
    __int64 v0; // r0

    v0 = sub_809E1AE();
    return sub_80A5E08(v0, SHIDWORD(v0));
}


// 0x80a5cf0
int sub_80A5CF0()
{
    int v0; // r5
    int result; // r0
    int v2; // r4

    result = *(v0 + 5);
    if ( result != *(v0 + 52) )
    {
        v2 = *(v0 + 5);
        sprite_setAnimation(v0, result);
        sprite_loadAnimationData(v0);
        result = sprite_noShadow(v0);
        *(v0 + 52) = v2;
    }
    return result;
}


// 0x80a5d0c
char *sub_80A5D0C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    signed int v3; // r2

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 129 )
        v3 = *(v2 + oGameState_MapNumber);
    else
        v3 = 3;
    return &(*off_80A5D38[v3])[8 * *(v0 + 4)];
}


// 0x80a5d48
signed int sub_80A5D48()
{
    int v0; // r5
    int v1; // r6
    signed int v2; // r1
    signed int result; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r0

    v2 = sub_80A5D80();
    result = 1;
    if ( !v2 )
    {
        v4 = *(v1 + 140);
        v5 = *(v1 + 144);
        *(v0 + 12) = *(v1 + 136);
        *(v0 + 16) = v4;
        *(v0 + 20) = v5;
        *(v0 + 6) = *(v1 + 8);
        v6 = *(v0 + 5);
        *(v0 + 52) = v6;
        sprite_setAnimation(v0, v6);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        result = 0;
    }
    return result;
}


// 0x80a5d80
signed int sub_80A5D80()
{
    _DWORD *v0; // r5
    signed int v1; // r4
    int v2; // r0
    int v3; // r1
    int v4; // r0
    int v5; // r0
    int v6; // r1
    int v7; // r0
    int v8; // r0

    sub_80A5DE8();
    sub_80A5E00();
    v1 = 0;
    v2 = v0[3];
    v3 = v0[10];
    if ( v2 != v3 )
    {
        if ( v2 > v3 )
        {
            if ( v2 - v3 < 0x10000 )
                goto LABEL_8;
            v4 = v2 - 0x10000;
            v1 = 1;
        }
        else
        {
            if ( v3 - v2 < 0x10000 )
                goto LABEL_8;
            v4 = v2 + 0x10000;
            v1 = 1;
        }
        v0[3] = v4;
    }
LABEL_8:
    v5 = v0[4];
    v6 = v0[11];
    if ( v5 != v6 )
    {
        if ( v5 > v6 )
        {
            if ( v5 - v6 >= 0x10000 )
            {
                v7 = v5 - 0x10000;
                v1 = 1;
                goto LABEL_14;
            }
        }
        else if ( v6 - v5 >= 0x10000 )
        {
            v7 = v5 + 0x10000;
            v1 = 1;
LABEL_14:
            v0[4] = v7;
            v8 = sub_8031612((v0 + 3)) << 16;
            v0[5] = v8;
            v0[8] = v8;
            return v1;
        }
    }
    return v1;
}


// 0x80a5de8
int sub_80A5DE8()
{
    _DWORD *v0; // r5
    _DWORD *v1; // r6
    int result; // r0
    int v3; // r1
    int v4; // r2

    result = v1[31];
    v3 = v1[32];
    v4 = v1[33];
    v0[10] = result;
    v0[11] = v3;
    v0[12] = v4;
    return result;
}


// 0x80a5e00
void sub_80A5E00()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1

    v1 = *(v0 + 40);
    v2 = *(v0 + 44);
    JUMPOUT(&loc_80A5E0A);
}


// 0x80a5e08
int __fastcall sub_80A5E08(int a1, int a2)
{
    int v2; // r5
    __int64 v3; // r0
    int result; // r0
    int v5; // r4

    LODWORD(v3) = a1 - *(v2 + 12);
    HIDWORD(v3) = a2 - *(v2 + 16);
    result = sub_800118A(v3);
    if ( result )
    {
        result = byte_80A5E3C[result];
        v5 = result;
        if ( result != *(v2 + 52) )
        {
            sprite_setAnimation(v2, result);
            sprite_loadAnimationData(v2);
            result = sprite_noShadow(v2);
            *(v2 + 52) = v5;
        }
    }
    return result;
}


// 0x80a5e44
int sub_80A5E44()
{
    int v0; // r5
    __int64 v1; // r0
    int result; // r0
    int v3; // r4

    v1 = sub_809E1AE();
    LODWORD(v1) = *(v0 + 12) - v1;
    HIDWORD(v1) = *(v0 + 16) - HIDWORD(v1);
    result = sub_800118A(v1);
    if ( result )
    {
        v3 = result;
        sub_809E13C(byte_80A5E7C[result]);
        result = sub_809E2AE(byte_80A5E84[v3]);
    }
    return result;
}


// 0x80a5e8c
unsigned int sub_80A5E8C()
{
    int v0; // r5

    return SetEventFlag(*&byte_80A5EB8[4 * *(v0 + 4)]);
}


// 0x80a5ea0
unsigned int sub_80A5EA0()
{
    int v0; // r5

    return ClearEventFlag(*&byte_80A5EB8[4 * *(v0 + 4)]);
}


// 0x80a5ec8
int sub_80A5EC8()
{
    int v0; // r5
    int v1; // r6
    int result; // r0
    char v3; // zf
    int v4; // r4
    int v5; // r0

    result = TestEventFlagFromImmediate(5, 241);
    if ( !v3 )
        return result;
    if ( !sub_80A5F84() )
        return sub_80A5E8C();
    if ( *(v0 + 7) )
    {
LABEL_11:
        result = sub_80A5D0C()[7];
        *(v0 + 6) = result;
        return result;
    }
    v4 = *(v0 + 11);
    if ( v4 <= 0 )
    {
        SetEventFlagFromImmediate(5, 224);
        sub_80A5F68();
        *v0 = 3;
        sprite_setAnimation(v0, *(v0 + 5) + 25);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        *(v0 + 11) = v4 + 1;
    }
    result = TestEventFlagFromImmediate(5, 224);
    if ( v3 )
    {
        v5 = *(v0 + 5);
        *(v0 + 52) = v5;
        sprite_setAnimation(v0, v5);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        *(v0 + 11) = 0;
        *(v1 + 5) = 0;
        *(v0 + 7) = 1;
        sub_80A5EA0();
        goto LABEL_11;
    }
    return result;
}


// 0x80a5f48
int sub_80A5F48()
{
    int v0; // r10
    int v1; // r0
    char *v2; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    if ( *(v1 + oGameState_MapGroup) == 129 )
        v2 = *(v1 + 5);
    else
        v2 = &byte_0[3];
    return byte_80A5F64[v2];
}


// 0x80a5f68
int sub_80A5F68()
{
    int *v0; // r5
    int v1; // r1
    int v2; // r2

    SpawnOverworldMapObject(20, v0[3], v0[4], v0[5]);
    return PlaySoundEffect(118, v1, v2);
}


// 0x80a5f84
signed int sub_80A5F84()
{
    _BYTE *v0; // r5
    signed int v1; // r0
    signed int v2; // r4
    char v3; // zf

    v1 = v0[6];
    if ( v1 >= 50 )
        v1 -= 40;
    v2 = 1;
    TestEventFlag(*&byte_80A5FB4[2 * v1]);
    if ( !v3 )
    {
        *v0 = 1;
        sub_80A5E8C();
        v2 = 0;
        v0[7] = 0;
    }
    return v2;
}


// 0x80a5fd0
signed int sub_80A5FD0()
{
    int v0; // r5
    _DWORD *v1; // r6
    int v2; // r4
    int v3; // r0
    signed int result; // r0

    v2 = *(v0 + 4);
    *(v0 + 36) = byte_2000EC0[v2 + 10];
    v3 = byte_2000EC0[v2 + 14];
    *(v0 + 7) = v3;
    if ( !v3 )
    {
        *v0 = 1;
        sub_80A5E8C();
    }
    *(v0 + 6) = byte_2000EC0[v2 + 18];
    v1[34] = dword_2000F94;
    v1[35] = dword_2000F98;
    result = 144;
    v1[36] = dword_2000F9C;
    return result;
}


// 0x80a6014
signed int sub_80A6014()
{
    int v0; // r5
    _DWORD *v1; // r6
    int v2; // r4
    signed int result; // r0

    v2 = *(v0 + 4);
    byte_2000EC0[v2 + 10] = *(v0 + 36);
    byte_2000EC0[v2 + 14] = *(v0 + 7);
    byte_2000EC0[v2 + 18] = *(v0 + 6);
    dword_2000F94 = v1[34];
    dword_2000F98 = v1[35];
    result = 144;
    dword_2000F9C = v1[36];
    return result;
}


// 0x80a6a16
int sub_80A6A16()
{
    int v0; // r5

    return (*(&off_80A6A28 + *(v0 + 8)))();
}


// 0x80a6a34
void sub_80A6A34()
{
    int v0; // r5

    *v0 = 3;
    sprite_load(v0, 128, *(v0 + 5), *(v0 + 6));
    sprite_setAnimation(v0, *(v0 + 7));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    *(v0 + 8) = 4;
    sub_80A6E50();
    sub_80A6A62();
}


// 0x80a6a62
void sub_80A6A62()
{
    int v0; // r5
    unsigned __int16 *v1; // r0
    char v2; // zf
    unsigned __int16 *v3; // r0
    int v4; // r4
    int v5; // r0

    do
    {
        v1 = sub_80A6E78();
        (*(&JumpTable_80A6ABC + *v1))();
    }
    while ( !v2 );
    do
    {
        v3 = sub_80A6E78();
        if ( !v3 )
            break;
        (*(&JumpTable_80A6ABC + *v3))();
    }
    while ( !v2 );
    v4 = *(v0 + 20);
    *(v0 + 20) = sub_8031612(v0 + 12) << 16;
    v5 = sub_8035694((v0 + 12));
    *(v0 + 20) = v4;
    sub_8002E14(v5);
    sprite_update(v0);
}


// 0x80a6b08
int sub_80A6B08()
{
    return FreeOverworldMapObject();
}


// 0x80a6b10
signed int __fastcall sub_80A6B10(int a1, int a2)
{
    int v2; // r4
    _DWORD *v3; // r5
    int v4; // r7
    signed __int16 *v5; // r0
    signed __int16 v6; // r1
    int v11; // r1
    int v12; // r2
    int v13; // r3
    int v14; // r2
    int v15; // r2
    int v16; // r2
    int v17; // ST08_4
    int v18; // ST04_4
    int v19; // r2
    int v20; // r1
    signed int result; // r0
    int v22; // r1
    int v23; // r2

    if ( !*(v3 + v2) )
    {
        *(v3 + v2) = 1;
        v5 = sub_80A6E78();
        v3[6] = v5[1] << 16;
        v3[7] = v5[2] << 16;
        v3[8] = v5[3] << 16;
        v6 = v5[4];
        *(v3 + v4) = v6;
        __asm { SVC         6 }
        v3[14] = 0x4000;
        *(v3 + v4) = 0x4000 - v6;
        v11 = v3[4];
        v12 = v3[5];
        v3[11] = v3[3];
        v3[12] = v11;
        v3[13] = v12;
    }
    v13 = *(v3 + v4);
    v14 = v3[14];
    _VF = __OFSUB__(v13, v14);
    v15 = v13 - v14;
    if ( ((v15 < 0) ^ _VF) | (v15 == 0) )
    {
        v22 = v3[7];
        v23 = v3[8];
        v3[3] = v3[6];
        v3[4] = v22;
        v3[5] = v23;
        *(v3 + v2) = 0;
        *(v3 + v4) = 0;
        sub_80A6E70(10);
        result = 1;
    }
    else
    {
        *(v3 + v4) = v15;
        v16 = *&math_sinTable[2 * (64 - (v15 >> 8))];
        v17 = ((v3[6] - v3[11]) >> 8) * v16;
        v18 = ((v3[7] - v3[12]) >> 8) * v16;
        v19 = ((v3[8] - v3[13]) >> 8) * v16 + v3[13];
        v20 = v18 + v3[12];
        v3[3] = v17 + v3[11];
        v3[4] = v20;
        v3[5] = v19;
        result = 0;
    }
    return result;
}


// 0x80a6bd8
signed int __fastcall sub_80A6BD8(int a1, int a2)
{
    int v2; // r4
    _DWORD *v3; // r5
    int v4; // r7
    signed __int16 *v5; // r0
    signed __int16 v6; // r1
    __int16 v11; // r1
    __int16 v12; // t1
    int v13; // r3
    int v14; // r2
    int v15; // r2
    __int16 v16; // t1
    signed int result; // r0
    int v18; // r1

    if ( !*(v3 + v2) )
    {
        *(v3 + v2) = 1;
        v5 = sub_80A6E78();
        v3[6] = v5[1] << 16;
        v3[7] = v5[2] << 16;
        v3[8] = v5[3] << 14;
        v6 = v5[4];
        *(v3 + v4) = v6;
        __asm { SVC         6 }
        v3[14] = 0x4000;
        *(v3 + v4) = 0x4000 - v6;
        v3[13] = 0;
        v11 = *(sub_80A6E78() + 8);
        __asm { SVC         6 }
        v3[11] = v3[6] - v3[3];
        v12 = *(sub_80A6E78() + 8);
        __asm { SVC         6 }
        v3[12] = v3[7] - v3[4];
    }
    v13 = *(v3 + v4);
    v14 = v3[14];
    _VF = __OFSUB__(v13, v14);
    v15 = v13 - v14;
    if ( ((v15 < 0) ^ _VF) | (v15 == 0) )
    {
        v18 = v3[7];
        v3[3] = v3[6];
        v3[4] = v18;
        v3[5] += v3[13];
        *(v3 + v2) = 0;
        *(v3 + v4) = 0;
        sub_80A6E70(10);
        result = 1;
    }
    else
    {
        *(v3 + v4) = v15;
        v16 = *&math_sinTable[2 * ((64 - (v15 >> 8)) >> 1)];
        v3[3] += v3[11];
        v3[4] += v3[12];
        v3[5] += v3[13];
        v3[13] += v3[8];
        result = 0;
    }
    return result;
}


// 0x80a6ca4
signed int __fastcall sub_80A6CA4(int a1, int a2)
{
    int v2; // r4
    int v3; // r5
    int v4; // r7
    int v5; // r0
    unsigned __int8 v6; // vf

    if ( !*(v3 + v2) )
    {
        *(v3 + v2) = 1;
        *(v3 + v4) = *(sub_80A6E78() + 2);
    }
    v5 = *(v3 + v4);
    v6 = __OFSUB__(v5--, 1);
    *(v3 + v4) = v5;
    if ( !((v5 < 0) ^ v6) )
        return 0;
    *(v3 + v2) = 0;
    *(v3 + v4) = 0;
    sub_80A6E70(4);
    return 1;
}


// 0x80a6cd4
signed int __fastcall sub_80A6CD4(int a1)
{
    _DWORD *v1; // r5
    signed __int16 *v2; // r0

    v2 = sub_80A6E78();
    v1[3] = v2[1] << 16;
    v1[4] = v2[2] << 16;
    v1[5] = v2[3] << 16;
    sub_80A6E70(8);
    return 1;
}


// 0x80a6cfc
signed int __noreturn sub_80A6CFC()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2

    v1 = getPETNaviSelect();
    sprite_load(v0, 128, 24, *(v1 + 134861608));
    sprite_setAnimation(v0, 1u);
    sprite_loadAnimationData(v0);
    sprite_removeShadow();
    *(v0 + 12) = sub_809E1AE();
    *(v0 + 20) = v2;
    sub_80A6E70(2);
    return 1;
}


// 0x80a6d38
signed int sub_80A6D38()
{
    sub_80A6E50();
    return 1;
}


// 0x80a6d42
signed int __fastcall __noreturn sub_80A6D42(int a1)
{
    Battle *v1; // r5
    int v2; // r0

    v2 = sub_80A6E78();
    sprite_setAnimation(v1, *(v2 + 2));
    sprite_loadAnimationData(v1);
    sub_80A6E70(4);
    return 1;
}


// 0x80a6d5c
signed int sub_80A6D5C()
{
    int v0; // r0

    sprite_makeScalable();
    v0 = sub_80A6E78();
    sprite_setScaleParameters(0, *(v0 + 2), *(v0 + 4));
    sub_80A6E70(6);
    return 1;
}


// 0x80a6d7a
signed int sub_80A6D7A()
{
    sprite_makeUnscalable();
    sub_80A6E70(2);
    return 1;
}


// 0x80a6d8a
signed int __fastcall sub_80A6D8A(int a1)
{
    int v1; // r5
    int v2; // r0

    v2 = *(sub_80A6E78() + 2);
    *(v1 + 5) = v2;
    *(v1 + 40) = *(&off_80A619C + v2);
    sub_80A6E70(4);
    return 1;
}


// 0x80a6dac
signed int __fastcall sub_80A6DAC(int a1, int a2)
{
    int v2; // r5
    int v3; // r6

    *(v2 + 5) = 0;
    *(v2 + 40) = 0;
    if ( v3 != 36 )
        return 0;
    sub_80A6E70(2);
    return 1;
}


// 0x80a6dc6
signed int __fastcall sub_80A6DC6(int a1)
{
    int v1; // r0

    v1 = sub_80A6E78();
    sub_8002C7A(*(v1 + 2));
    sub_80A6E70(4);
    return 1;
}


// 0x80a6ddc
signed int sub_80A6DDC()
{
    sub_8002CCE();
    sub_80A6E70(2);
    return 1;
}


// 0x80a6dec
signed int __fastcall sub_80A6DEC(int a1, int a2)
{
    _BYTE *v2; // r5

    *v2 = 3;
    sub_80A6E70(2);
    return 1;
}


// 0x80a6dfc
signed int __fastcall sub_80A6DFC(int a1, int a2)
{
    _BYTE *v2; // r5

    *v2 = 1;
    sub_80A6E70(2);
    return 1;
}


// 0x80a6e0c
signed int __fastcall sub_80A6E0C(int a1)
{
    int v1; // r0
    int v2; // r1
    int v3; // r2

    v1 = sub_80A6E78();
    PlaySoundEffect(*(v1 + 2), v2, v3);
    sub_80A6E70(4);
    return 1;
}


// 0x80a6e22
signed int __fastcall sub_80A6E22(int a1)
{
    int v1; // r0

    v1 = sub_80A6E78();
    sprite_setMosaicSize(*(v1 + 2), *(v1 + 2));
    sub_80A6E70(4);
    return 1;
}


// 0x80a6e3a
signed int sub_80A6E3A()
{
    sub_8002F2C();
    sub_80A6E70(2);
    return 1;
}


// 0x80a6e4a
int sub_80A6E4A()
{
    return 0;
}


// 0x80a6e50
char (*sub_80A6E50())[28]
{
    int v0; // r5
    int v1; // r6
    int v2; // r0
    char (**v3)[28]; // r1
    char (*result)[28]; // r0

    if ( v1 == 36 )
    {
        v2 = *(v0 + 4);
        v3 = PtrTable_80A6050;
    }
    else
    {
        v2 = *(v0 + 5);
        v3 = &off_80A619C;
    }
    result = v3[v2];
    *(v0 + v1) = result;
    return result;
}


// 0x80a6e70
int __fastcall sub_80A6E70(int a1)
{
    int v1; // r5
    int v2; // r6
    int result; // r0

    result = a1 + *(v1 + v2);
    *(v1 + v2) = result;
    return result;
}


// 0x80a6e78
int sub_80A6E78()
{
    int v0; // r5
    int v1; // r6

    return *(v0 + v1);
}


// 0x80a6e98
int sub_80A6E98()
{
    int v0; // r5

    return (*(&off_80A6EAC + *(v0 + 8)))();
}


// 0x80a6ebc
void __noreturn sub_80A6EBC()
{
    int v0; // r5
    int v1; // r0
    unsigned __int16 *v2; // r0
    char v3; // zf

    *v0 = 3;
    sprite_load(v0, 128, 28, 47);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v1 = sub_8035694((v0 + 12));
    sub_8002E14(v1);
    sprite_setPallete(1);
    v2 = sub_80A70C0();
    if ( !v2 )
        JUMPOUT(&loc_80A6F66);
    *(v0 + 12) = *v2 << 16;
    *(v0 + 16) = v2[1] << 16;
    *(v0 + 20) = 0;
    *(v0 + 44) = 0;
    *(v0 + 52) = 0;
    *(v0 + 6) = 0;
    *(v0 + 56) = 17;
    TestEventFlagFromImmediate(5, 229);
    if ( !v3 )
        sub_80A7208();
    *(v0 + 8) = 4;
    sub_80A6F2C();
}


// 0x80a6f2c
void __noreturn sub_80A6F2C()
{
    Battle *v0; // r5
    int v1; // r6
    char v2; // zf
    int v3; // r1
    int v4; // r2
    int v5; // r0

    s_2011C50_8036F40();
    if ( v2 )
    {
        sub_8036F58();
        if ( v2 )
        {
            chatbox_check_eFlags2009F38(128);
            if ( v2 )
            {
                if ( *(v1 + 9) && *(v1 + 9) == 1 )
                {
                    v5 = v0->x;
                    if ( v5 )
                        sub_80A7160(v5, v3, v4);
                    else
                        v0->currState = 8;
                }
                else
                {
                    sub_80A6F78();
                    sub_80A70FC();
                }
            }
        }
    }
    sprite_update(v0);
    sub_80A7238();
}


// 0x80a6f70
int sub_80A6F70()
{
    return FreeOverworldMapObject();
}


// 0x80a6f78
int sub_80A6F78()
{
    int v0; // r5
    int v1; // r2
    signed int v2; // r4
    int v3; // r0
    int v4; // r1
    int v5; // r0
    int result; // r0
    int v7; // r1

    sub_80A6FDC();
    sub_80A704C();
    v1 = sub_80A708C();
    v2 = 0;
    v3 = *(v0 + 12);
    v4 = *(v0 + 36);
    if ( v3 != v4 )
    {
        if ( v3 > v4 )
        {
            if ( v3 - v4 < v1 )
                goto LABEL_8;
            v5 = v3 - v1;
            v2 = 1;
        }
        else
        {
            if ( v4 - v3 < v1 )
                goto LABEL_8;
            v5 = v3 + v1;
            v2 = 1;
        }
        *(v0 + 12) = v5;
    }
LABEL_8:
    result = *(v0 + 16);
    v7 = *(v0 + 40);
    if ( result == v7 )
        goto LABEL_15;
    if ( result > v7 )
    {
        if ( result - v7 < v1 )
            goto LABEL_15;
        result -= v1;
        v2 = 1;
    }
    else
    {
        if ( v7 - result < v1 )
            goto LABEL_15;
        result += v1;
        v2 = 1;
    }
    *(v0 + 16) = result;
LABEL_15:
    if ( !v2 )
    {
        result = *(v0 + 6) + 1;
        *(v0 + 6) = result;
    }
    return result;
}


// 0x80a6fdc
int sub_80A6FDC()
{
    int v0; // r5
    char *v1; // r2
    int v2; // r0
    int result; // r0
    int v4; // r1

    while ( 1 )
    {
        v1 = &(*(**(&off_80A7010 + *(v0 + 5)))[*(v0 + 4)])[4 * *(v0 + 6)];
        v2 = *v1;
        if ( v2 != 255 )
            break;
        *(v0 + 6) = 0;
    }
    result = v2 << 16;
    v4 = *(v1 + 1) << 16;
    *(v0 + 36) = result;
    *(v0 + 40) = v4;
    return result;
}


// 0x80a704c
int sub_80A704C()
{
    int v0; // r5
    __int64 v1; // r0
    int result; // r0
    int v3; // r4

    LODWORD(v1) = *(v0 + 36) - *(v0 + 12);
    HIDWORD(v1) = *(v0 + 40) - *(v0 + 16);
    result = sub_800118A(v1);
    if ( result )
    {
        result = byte_80A7084[result];
        v3 = result;
        if ( result != *(v0 + 44) )
        {
            sprite_setAnimation(v0, result);
            sprite_loadAnimationData(v0);
            result = sprite_noShadow(v0);
            *(v0 + 44) = v3;
        }
    }
    return result;
}


// 0x80a708c
int sub_80A708C()
{
    _DWORD *v0; // r5
    unsigned int v1; // r0
    signed int v2; // r1
    int result; // r0

    v1 = calcAngle_800117C(v0[9] - v0[3], v0[10] - v0[4]);
    v2 = 0;
    if ( v1 == 32 || v1 == 160 )
        v2 = 1;
    result = *&byte_80A70B8[4 * v2];
    v0[12] = result;
    return result;
}


// 0x80a70c0
int sub_80A70C0()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    signed int v3; // r2

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 129 )
        v3 = *(v2 + oGameState_MapNumber);
    else
        v3 = 3;
    *(v0 + 5) = v3;
    return off_80A70EC[v3] + 4 * *(v0 + 4);
}


// 0x80a70fc
signed int sub_80A70FC()
{
    int *v0; // r5
    int *v1; // r6
    signed int result; // r0
    char v3; // zf
    __int64 v4; // r0
    int v5; // r2

    result = TestEventFlagFromImmediate(5, 241);
    if ( v3 )
    {
        if ( (v4 = sub_809E1AE(), !v5) && sub_80011D6(v0[3], v0[4], v4, SHIDWORD(v4)) == 1 && !v1[33]
            || (result = v0[3], !v1[33]) && (result = sub_80011D6(result, v0[4], v1[31], v1[32]), result == 1) )
        {
            SetEventFlagFromImmediate(5, 241);
            result = 1;
            v0[13] = 1;
        }
    }
    return result;
}


// 0x80a7160
int __fastcall sub_80A7160(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    signed int v5; // r4
    int result; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r1
    int v10; // r2

    v5 = *(v3 + 9);
    if ( v5 <= 0 )
    {
        sprite_setAnimation(v3, *(v3 + 44) + 10);
        sprite_loadAnimationData(v3);
        result = sprite_noShadow(v3);
        *(v3 + 9) = v5 + 1;
        return result;
    }
    if ( v5 <= 1 )
    {
        result = sprite_getFrameParameters();
        a2 = 128;
        if ( !(result & 0x80) )
            return result;
        *(v3 + 9) = ++v5;
    }
    if ( v5 > 2 )
    {
        *(v4 + 7) = 3;
        sub_80A71EC(3, a2, a3);
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            *(v4 + 5) = 3;
            reqBBS_clearFlag_8140A0C();
            *(v3 + 9) = 0;
            *(v3 + 52) = 0;
            *(v4 + 9) = 2;
            result = sub_80A6F70();
        }
    }
    else
    {
        v7 = *(v4 + 128);
        v8 = *(v4 + 132);
        *(v3 + 12) = *(v4 + 124);
        *(v3 + 16) = v7;
        *(v3 + 20) = v8;
        sprite_setAnimation(v3, 9u);
        sprite_loadAnimationData(v3);
        sprite_noShadow(v3);
        result = PlaySoundEffect(225, v9, v10);
        *(v3 + 9) = v5 + 1;
    }
    return result;
}


// 0x80a71ec
int __fastcall sub_80A71EC(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0

    result = *(v3 + 56);
    if ( result )
    {
        if ( result == 1 )
            result = PlaySoundEffect(226, a2, a3);
        *(v3 + 56) = --result;
    }
    return result;
}


// 0x80a7208
int sub_80A7208()
{
    int v0; // r5
    int v1; // r3
    int result; // r0

    *(v0 + 5) = byte_2000ED6;
    v1 = *(v0 + 4);
    *(v0 + 6) = byte_2000EC0[v1 + 23];
    result = v1 + 38;
    *(v0 + 52) = byte_2000EC0[v1 + 38];
    v1 *= 4;
    *(v0 + 12) = *&byte_2000EC0[v1 + 44];
    *(v0 + 16) = *&byte_2000EC0[v1 + 68];
    return result;
}


// 0x80a7238
int sub_80A7238()
{
    int v0; // r5
    int v1; // r3
    int result; // r0

    byte_2000ED6 = *(v0 + 5);
    v1 = *(v0 + 4);
    byte_2000EC0[v1 + 23] = *(v0 + 6);
    result = v1 + 38;
    byte_2000EC0[v1 + 38] = *(v0 + 52);
    v1 *= 4;
    *&byte_2000EC0[v1 + 44] = *(v0 + 12);
    *&byte_2000EC0[v1 + 68] = *(v0 + 16);
    return result;
}


// 0x80a72b4
int sub_80A72B4()
{
    int v0; // r5

    return (*(&off_80A72C8 + *(v0 + 8)))();
}


// 0x80a72d8
void __noreturn sub_80A72D8()
{
    int v0; // r5
    char *v1; // r4
    __int16 v2; // r0
    int v3; // r0
    char v4; // zf

    *v0 = 3;
    v1 = sub_80A75A4();
    sprite_load(v0, 128, 28, 47);
    v2 = *(v1 + 2);
    *(v0 + 5) = v2;
    sprite_setAnimation(v0, v2);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v3 = sub_8035694((v0 + 12));
    sub_8002E14(v3);
    sprite_setPallete(0);
    *(v0 + 12) = *v1 << 16;
    *(v0 + 16) = *(v1 + 1) << 16;
    *(v0 + 20) = 0;
    *(v0 + 44) = v1[6];
    *(v0 + 48) = v1[7];
    sub_80A7514();
    *(v0 + 36) = 0;
    *(v0 + 52) = 17;
    TestEventFlagFromImmediate(5, 229);
    if ( !v4 )
        sub_80A76E8();
    *(v0 + 8) = 4;
    sub_80A7354();
}


// 0x80a7354
void __noreturn sub_80A7354()
{
    int v0; // r5
    int v1; // r6
    char v2; // zf
    int v3; // r1
    int v4; // r2
    int v5; // r0

    s_2011C50_8036F40();
    if ( v2 )
    {
        sub_8036F58();
        if ( v2 )
        {
            chatbox_check_eFlags2009F38(128);
            if ( v2 )
            {
                if ( *(v1 + 9) && *(v1 + 9) == 1 )
                {
                    v5 = *(v0 + 36);
                    if ( v5 )
                        sub_80A7640(v5, v3, v4);
                    else
                        *(v0 + 8) = 8;
                }
                else
                {
                    sub_80A73A0();
                    sub_80A75DC();
                }
            }
        }
    }
    sprite_update(v0);
    sub_80A775C();
}


// 0x80a7398
int sub_80A7398()
{
    return FreeOverworldMapObject();
}


// 0x80a73a0
int sub_80A73A0()
{
    int v0; // r5
    char v1; // r0
    int v2; // r2
    int v3; // r0
    int v4; // r6
    int v5; // r7
    int v6; // r4
    int result; // r0

    sub_8003694((v0 + 12));
    v1 = 0;
    if ( v2 && *(v0 + 6) >= 3 )
        v1 = 1;
    *(v0 + 7) = v1;
    if ( sub_80A743C() == 1 )
    {
        ++*(v0 + 6);
        if ( *(v0 + 7) )
        {
            sub_80A74A8();
            sub_80A7514();
            *(v0 + 6) = 0;
        }
        else
        {
            sub_80A7454();
            sub_80A7514();
        }
    }
    v3 = sub_80A7590();
    v4 = *(v0 + 24);
    v5 = *(v0 + 28);
    v6 = *(v0 + 5);
    if ( !*(v0 + 5) )
    {
        result = *(v0 + 12) + v3;
        if ( result >= v4 )
            result = *(v0 + 24);
LABEL_19:
        *(v0 + 12) = result;
        return result;
    }
    if ( v6 == 1 )
    {
        result = *(v0 + 16) + v3;
        if ( result >= v5 )
            result = *(v0 + 28);
    }
    else
    {
        if ( v6 == 2 )
        {
            result = *(v0 + 12) - v3;
            if ( result <= v4 )
                result = *(v0 + 24);
            goto LABEL_19;
        }
        result = *(v0 + 16) - v3;
        if ( result <= v5 )
            result = *(v0 + 28);
    }
    *(v0 + 16) = result;
    return result;
}


// 0x80a743c
signed int sub_80A743C()
{
    _DWORD *v0; // r5
    signed int result; // r0

    result = 0;
    if ( v0[6] == v0[3] && v0[7] == v0[4] )
        result = 1;
    return result;
}


// 0x80a7454
int sub_80A7454()
{
    int v0; // r5
    __int64 v1; // r0
    int v2; // r0
    int v3; // r4
    int v4; // r4
    char *v5; // r7
    int result; // r0
    int v7; // r4
    int v8; // r1
    char v9; // r4

    v1 = sub_809E1AE();
    LODWORD(v1) = v1 - *(v0 + 12);
    HIDWORD(v1) -= *(v0 + 16);
    v2 = sub_800118A(v1);
    if ( v2 )
        v3 = v2 - 1;
    else
        v3 = *(v0 + 5);
    v4 = 2 * v3;
    v5 = sub_80A7528();
    do
    {
        result = v5[v4];
        v7 = v4 + 1;
        v8 = v5[v7];
        if ( v7 == 7 )
            v4 = 0;
        else
            v4 = v7 + 1;
    }
    while ( result == 255 );
    v9 = result;
    *(v0 + 48) = v8;
    if ( result != *(v0 + 5) )
    {
        sprite_setAnimation(v0, result);
        sprite_loadAnimationData(v0);
        result = sprite_noShadow(v0);
        *(v0 + 5) = v9;
    }
    return result;
}


// 0x80a74a8
int sub_80A74A8()
{
    int v0; // r5
    int v1; // r4
    char *v2; // r0
    char *v3; // r7
    int result; // r0
    int v5; // r1
    __int64 v6; // r0
    int v7; // r0
    int v8; // r0
    int v9; // r4
    int v10; // r4
    char v11; // r4

    v1 = *(v0 + 5);
    v2 = sub_80A7528();
    v3 = v2;
    result = v2[2 * v1];
    v5 = v3[2 * v1 + 1];
    if ( result != 255 )
        goto LABEL_12;
    v6 = sub_809E1AE();
    LODWORD(v6) = v6 - *(v0 + 12);
    HIDWORD(v6) -= *(v0 + 16);
    v7 = sub_800118A(v6);
    if ( v7 )
    {
        if ( v7 >= 4 )
        {
            v8 = 1;
            goto LABEL_7;
        }
    }
    else
    {
        v7 = v1;
    }
    v8 = v7 + 1;
LABEL_7:
    v9 = 2 * (v8 - 1);
    do
    {
        result = v3[v9];
        v10 = v9 + 1;
        v5 = v3[v10];
        if ( v10 == 7 )
            v9 = 0;
        else
            v9 = v10 + 1;
    }
    while ( result == 255 );
LABEL_12:
    v11 = result;
    *(v0 + 48) = v5;
    if ( result != *(v0 + 5) )
    {
        sprite_setAnimation(v0, result);
        sprite_loadAnimationData(v0);
        result = sprite_noShadow(v0);
        *(v0 + 5) = v11;
    }
    return result;
}


// 0x80a7514
char *sub_80A7514()
{
    int v0; // r5
    char *result; // r0
    int v2; // r2

    result = sub_80A755C();
    v2 = *(result + 1) << 16;
    *(v0 + 24) = *result << 16;
    *(v0 + 28) = v2;
    return result;
}


// 0x80a7528
char *sub_80A7528()
{
    int v0; // r5
    int v1; // r10
    int v2; // r3
    signed int v3; // r3

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 129 )
        v3 = *(v2 + 5);
    else
        v3 = 3;
    return &(**(&off_80A754C + v3))[8 * *(v0 + 48)];
}


// 0x80a755c
char *sub_80A755C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r3
    signed int v3; // r3

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 129 )
        v3 = *(v2 + 5);
    else
        v3 = 3;
    return &(**(&off_80A7580 + v3))[4 * *(v0 + 48)];
}


// 0x80a7590
int sub_80A7590()
{
    int v0; // r5
    int result; // r0

    result = *&byte_8140C60[4 * *(v0 + 44)];
    *(v0 + 40) = result;
    return result;
}


// 0x80a75a4
char *sub_80A75A4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    signed int v3; // r2

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 129 )
        v3 = *(v2 + oGameState_MapNumber);
    else
        v3 = 3;
    return &(*off_80A75CC[v3])[8 * *(v0 + 4)];
}


// 0x80a75dc
signed int sub_80A75DC()
{
    int *v0; // r5
    int *v1; // r6
    signed int result; // r0
    char v3; // zf
    __int64 v4; // r0
    int v5; // r2

    result = TestEventFlagFromImmediate(5, 241);
    if ( v3 )
    {
        if ( (v4 = sub_809E1AE(), !v5) && sub_80011D6(v0[3], v0[4], v4, SHIDWORD(v4)) == 1 && !v1[33]
            || (result = v0[3], !v1[33]) && (result = sub_80011D6(result, v0[4], v1[31], v1[32]), result == 1) )
        {
            SetEventFlagFromImmediate(5, 241);
            result = 1;
            v0[9] = 1;
        }
    }
    return result;
}


// 0x80a7640
int __fastcall sub_80A7640(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r6
    signed int v5; // r4
    int result; // r0
    int v7; // r1
    int v8; // r2
    int v9; // r1
    int v10; // r2

    v5 = *(v3 + 9);
    if ( v5 <= 0 )
    {
        sprite_setAnimation(v3, *(v3 + 5) + 10);
        sprite_loadAnimationData(v3);
        result = sprite_noShadow(v3);
        *(v3 + 9) = v5 + 1;
        return result;
    }
    if ( v5 <= 1 )
    {
        result = sprite_getFrameParameters();
        a2 = 128;
        if ( !(result & 0x80) )
            return result;
        *(v3 + 9) = ++v5;
    }
    if ( v5 > 2 )
    {
        *(v4 + 7) = 3;
        sub_80A76CC(3, a2, a3);
        result = sprite_getFrameParameters();
        if ( result & 0x80 )
        {
            *(v4 + 5) = 3;
            reqBBS_clearFlag_8140A0C();
            *(v3 + 9) = 0;
            *(v3 + 36) = 0;
            *(v4 + 9) = 2;
            result = sub_80A7398();
        }
    }
    else
    {
        v7 = *(v4 + 128);
        v8 = *(v4 + 132);
        *(v3 + 12) = *(v4 + 124);
        *(v3 + 16) = v7;
        *(v3 + 20) = v8;
        sprite_setAnimation(v3, 9u);
        sprite_loadAnimationData(v3);
        sprite_noShadow(v3);
        result = PlaySoundEffect(225, v9, v10);
        *(v3 + 9) = v5 + 1;
    }
    return result;
}


// 0x80a76cc
int __fastcall sub_80A76CC(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0

    result = *(v3 + 52);
    if ( result )
    {
        if ( result == 1 )
            result = PlaySoundEffect(226, a2, a3);
        *(v3 + 52) = --result;
    }
    return result;
}


// 0x80a76e8
unsigned int __noreturn sub_80A76E8()
{
    int v0; // r5
    int v1; // r10
    int v2; // r3
    int v3; // r4
    int v4; // r4
    signed int v5; // r2
    unsigned int result; // r0

    v2 = *(v0 + 4);
    v3 = byte_2000EC6;
    *(v0 + 44) = byte_2000EC0[v2 + 26];
    *(v0 + 5) = byte_2000EC0[v2 + 29];
    *(v0 + 6) = byte_2000EC0[v2 + 32];
    *(v0 + 48) = byte_2000EC0[v2 + 35];
    v4 = v3 + v2;
    *(v0 + 36) = byte_2000EC0[v4 + 38];
    v4 *= 4;
    *(v0 + 12) = *&byte_2000EC0[v4 + 44];
    *(v0 + 16) = *&byte_2000EC0[v4 + 68];
    sub_80A7514();
    sprite_setAnimation(v0, *(v0 + 5));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v5 = 1;
    if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) != 129 )
        v5 = 2;
    result = *(v0 + 4);
    if ( result == v5 )
        result = ClearEventFlagFromImmediate(5, 229);
    return result;
}


// 0x80a775c
int sub_80A775C()
{
    int v0; // r5
    int v1; // r6
    int v2; // r3
    int v3; // r4
    int v4; // r4
    int result; // r0

    v2 = *(v0 + 4);
    v3 = *(v1 + 10);
    byte_2000EC0[v2 + 26] = *(v0 + 44);
    byte_2000EC0[v2 + 29] = *(v0 + 5);
    byte_2000EC0[v2 + 32] = *(v0 + 6);
    byte_2000EC0[v2 + 35] = *(v0 + 48);
    v4 = v3 + v2;
    byte_2000EC0[v4 + 38] = *(v0 + 36);
    v4 *= 4;
    *&byte_2000EC0[v4 + 44] = *(v0 + 12);
    result = *(v0 + 16);
    *&byte_2000EC0[v4 + 68] = result;
    return result;
}


// 0x80a77a8
int sub_80A77A8()
{
    int v0; // r5

    return (*(&off_80A77BC + *(v0 + 8)))();
}


// 0x80a77c8
void __noreturn sub_80A77C8()
{
    int v0; // r5

    *v0 = 3;
    sprite_load(v0, 128, 28, *(v0 + 7));
    sprite_setAnimation(v0, *(v0 + 4));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(*(v0 + 5));
    sub_8002E14(*(v0 + 6));
    *(v0 + 8) = 4;
    sprite_update(v0);
}


// 0x80a77fc
void __noreturn sub_80A77FC()
{
    Battle *v0; // r5

    if ( sprite_getFrameParameters() & 0x80 )
        v0->currState = 8;
    sprite_update(v0);
}


// 0x80a7812
int sub_80A7812()
{
    return FreeOverworldMapObject();
}


// 0x80a781c
int sub_80A781C()
{
    int v0; // r5

    return (*(&off_80A7830 + *(v0 + 8)))();
}


// 0x80a783c
void __noreturn sub_80A783C()
{
    int v0; // r5
    u8 v1; // r0
    char v2; // r1

    *v0 = 3;
    sprite_load(v0, 128, 28, 71);
    v1 = *(v0 + 4);
    *(v0 + 5) = v2;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(0);
    *(v0 + 8) = 4;
    sub_80A786C();
}


// 0x80a786c
void __noreturn sub_80A786C()
{
    int v0; // r4
    int v1; // r5
    int v2; // r2
    char v3; // r3
    int v4; // r0
    char v5; // r4
    int v6; // r0

    *(v1 + 12) = sub_809BA14();
    *(v1 + 20) = v2;
    *(v1 + 4) = v3;
    v4 = v0;
    if ( !v0 )
    {
        v5 = 1;
        goto LABEL_5;
    }
    v5 = 3;
    if ( v4 == 16 )
LABEL_5:
        sub_8002CCE();
    *v1 = v5;
    sub_8002E14(2);
    v6 = *(v1 + 4);
    if ( v6 != *(v1 + 5) )
    {
        sprite_setAnimation(v1, v6);
        LOBYTE(v6) = sprite_loadAnimationData(v1);
    }
    *(v1 + 5) = v6;
    sprite_update(v1);
}


// 0x80a78ae
int sub_80A78AE()
{
    return FreeOverworldMapObject();
}


// 0x80a78b8
int sub_80A78B8()
{
    int v0; // r5

    sub_8142068(*(v0 + 4));
    return (*(&off_80A78D0 + *(v0 + 8)))();
}


// 0x80a78e0
void __noreturn sub_80A78E0()
{
    int v0; // r5
    int v1; // r6

    *v0 = 3;
    sprite_load(v0, 128, 28, 73);
    sprite_setAnimation(v0, *(v1 + 2));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(2);
    *(v0 + 36) = 0;
    *(v0 + 8) = 4;
    sub_80A7912();
}


// 0x80a7912
void sub_80A7912()
{
    int v0; // r5
    _DWORD *v1; // r6
    unsigned __int8 *v2; // r7
    char v3; // zf

    *(v0 + 12) = v1[2];
    *(v0 + 16) = v1[3];
    *(v0 + 20) = v1[4];
    do
    {
        sub_8142050(*(v0 + 4));
        v2 += *v1;
        (*(&off_80A7950 + *v2))();
    }
    while ( !v3 );
    sub_80A7BC0();
    v1[2] = *(v0 + 12);
    v1[3] = *(v0 + 16);
    v1[4] = *(v0 + 20);
    sprite_update(v0);
}


// 0x80a796c
void __noreturn sub_80A796C()
{
    int v0; // r5
    int v1; // r3
    int v2; // r0

    v1 = byte_80A79B0[*(v0 + 36) >> 1];
    if ( v1 == 255 )
    {
        FreeOverworldMapObject();
    }
    else
    {
        *(v0 + 20) += v1 << 16;
        v2 = byte_80A79C4[*(v0 + 36) >> 1];
        sprite_setColorShader(v0, v2 | 32 * v2 | (v2 << 10));
    }
    ++*(v0 + 36);
    sprite_update(v0);
}


// 0x80a79d4
int sub_80A79D4()
{
    return FreeOverworldMapObject();
}


// 0x80a79dc
signed int __noreturn sub_80A79DC()
{
    int v0; // r5
    int v1; // r6
    _BYTE *v2; // r7
    u8 v3; // r0
    char *v4; // r3
    int v5; // r2
    int v6; // r1
    int v7; // r0
    int v8; // r2
    int v13; // r1

    v3 = v2[1];
    *(v1 + 2) = v3;
    sprite_setAnimation(v0, v3);
    sprite_loadAnimationData(v0);
    v4 = &byte_80A7A38[2 * *(v1 + 2)];
    v5 = v2[3];
    v6 = (v4[1] << 16) * v5;
    v7 = (*v4 << 16) * v5 + *(v0 + 12);
    v8 = *(v0 + 16);
    *(v1 + 28) = v7;
    *(v1 + 32) = v6 + v8;
    LOWORD(v6) = v2[2];
    __asm { SVC         6 }
    *(v1 + 36) = 0x4000;
    *(v1 + 6) = 0x4000 - v6;
    v13 = *(v0 + 16);
    *(v1 + 20) = *(v0 + 12);
    *(v1 + 24) = v13;
    sub_80A7BA2(4);
    return 1;
}


// 0x80a7a40
signed int sub_80A7A40()
{
    int v0; // r5
    int v1; // r6
    char v2; // zf
    int v3; // r3
    int v4; // r4
    unsigned __int8 v5; // vf
    int v6; // r4
    int v7; // r4
    int v8; // r1
    int v10; // r1

    sub_80A7C58();
    if ( !v2 )
        return 0;
    v3 = *(v1 + 6);
    v4 = *(v1 + 36);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if ( !(((v6 < 0) ^ v5) | (v6 == 0)) )
    {
        *(v1 + 6) = v6;
        v7 = *&math_sinTable[2 * (64 - (v6 >> 8))];
        v8 = ((*(v1 + 32) - *(v1 + 24)) >> 8) * v7 + *(v1 + 24);
        *(v0 + 12) = ((*(v1 + 28) - *(v1 + 20)) >> 8) * v7 + *(v1 + 20);
        *(v0 + 16) = v8;
        return 0;
    }
    v10 = *(v1 + 32);
    *(v0 + 12) = *(v1 + 28);
    *(v0 + 16) = v10;
    sub_80A7BA2(1);
    return 1;
}


// 0x80a7aa4
signed int sub_80A7AA4()
{
    int v0; // r6
    int v1; // r7
    char v2; // zf
    int v3; // r0
    unsigned __int8 v4; // vf

    sub_80A7C58();
    if ( !v2 )
        return 0;
    if ( !*(v0 + 3) )
    {
        *(v0 + 4) = *(v1 + 1);
        *(v0 + 3) = 1;
    }
    v3 = *(v0 + 4);
    v4 = __OFSUB__(v3--, 1);
    *(v0 + 4) = v3;
    if ( !((v3 < 0) ^ v4) )
        return 0;
    *(v0 + 3) = 0;
    sub_80A7BA2(2);
    return 1;
}


// 0x80a7ad4
signed int sub_80A7AD4()
{
    sub_80A7B9E(0);
    return 1;
}


// 0x80a7ae0
signed int sub_80A7AE0()
{
    int v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r4

    sub_80A7B7A((v1 + 1));
    v3 = v2;
    sub_8142050(*(v0 + 4));
    sub_80A7B9E(v3 - v1);
    return 1;
}


// 0x80a7afa
signed int __noreturn sub_80A7AFA()
{
    int v0; // r5
    int v1; // r6
    unsigned __int8 *v2; // r7
    int v3; // r1
    int v4; // r1
    u8 v5; // r1

    sub_80A7B90(v2 + 1);
    *(v0 + 12) = v3 << 16;
    sub_80A7B90(v2 + 3);
    *(v0 + 16) = v4 << 16;
    *(v0 + 20) = sub_81420B0();
    sub_80A7B90(v2 + 5);
    *(v1 + 2) = v5;
    sprite_setAnimation(v0, v5);
    sprite_loadAnimationData(v0);
    sub_80A7BA2(7);
    return 1;
}


// 0x80a7b32
signed int sub_80A7B32()
{
    _DWORD *v0; // r5
    int v1; // r7
    int v2; // r10
    char v3; // zf
    _DWORD *v4; // r4
    int v5; // r0
    int v6; // r1
    int v7; // r0
    int v8; // r3

    sub_80A7C58();
    if ( !v3 )
        return 0;
    v4 = *(*(v2 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    v5 = v0[5];
    v6 = v4[9];
    if ( !v3 )
        return 0;
    v7 = (v0[3] - v4[7]) >> 16;
    v8 = (v0[4] - v4[8]) >> 16;
    if ( v7 * v7 + v8 * v8 >= 2 * *(v1 + 1) * *(v1 + 1) )
        return 0;
    sub_80A7BA2(2);
    return 1;
}


// 0x80a7b7a
unsigned __int8 *__fastcall sub_80A7B7A(unsigned __int8 *result)
{
    int v1; // r1

    v1 = *result | (result[1] << 8) | (result[2] << 16) | (result[3] << 24);
    return result;
}


// 0x80a7b90
unsigned __int8 *__fastcall sub_80A7B90(unsigned __int8 *result)
{
    int v1; // r1

    v1 = (*result | (result[1] << 8));
    return result;
}


// 0x80a7b9e
int __fastcall sub_80A7B9E(int result)
{
    _BYTE *v1; // r6

    *v1 = result;
    return result;
}


// 0x80a7ba2
int __fastcall sub_80A7BA2(int result)
{
    _BYTE *v1; // r6

    *v1 += result;
    return result;
}


// 0x80a7baa
int __fastcall sub_80A7BAA(int result)
{
    int v1; // r6

    *(v1 + 1) |= result;
    return result;
}


// 0x80a7bb2
int __fastcall sub_80A7BB2(int result)
{
    int v1; // r6

    *(v1 + 1) &= ~result;
    return result;
}


// 0x80a7bba
void sub_80A7BBA()
{
    int v0; // r6
    int v1; // r1

    v1 = *(v0 + 1);
}


// 0x80a7bc0
void *sub_80A7BC0()
{
    int v0; // r5
    int v1; // r10
    void *result; // r0
    char v3; // zf
    int v4; // r7
    int v5; // r2
    int v6; // r3
    int v7; // r1
    unsigned __int8 v8; // vf
    int v9; // r2
    int v10; // r3
    int v11; // r0
    int v12; // r1
    int v13; // r2
    void *v14; // r2
    void *v15; // r4
    int v16; // r0
    int v17; // r0
    int v18; // r2
    int v19; // r3

    result = sub_80A7C58();
    if ( v3 )
    {
        v4 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
        result = *(v0 + 20);
        if ( result == *(v4 + 36) )
        {
            v5 = *(v4 + 28) + 0x80000;
            v6 = *(v4 + 32) + 0x80000;
            result = *(v0 + 12);
            v7 = *(v0 + 16);
            v8 = __OFSUB__(v5, result);
            v9 = v5 - result;
            if ( !((v9 < 0) ^ v8) )
            {
                v8 = __OFSUB__(v6, v7);
                v10 = v6 - v7;
                if ( !((v10 < 0) ^ v8) )
                {
                    result = 0x100000;
                    if ( v9 <= 0x100000 && v10 <= 0x100000 )
                    {
                        v11 = sub_81420F0(*(v0 + 4));
                        SetEventFlag(v11);
                        *(v0 + 8) = 8;
                        PlaySoundEffect(115, v12, v13);
                        sub_81418F0();
                        sub_81418E4();
                        v15 = v14;
                        v16 = sub_8142080();
                        result = sub_81420C8(v16);
                        if ( result == v15 )
                        {
                            SetEventFlagFromImmediate(23, 49);
                            v17 = sub_8142080();
                            result = StartCutscene(byte_8089DD8, v17, v18, v19);
                        }
                    }
                }
            }
        }
    }
    return result;
}


// 0x80a7c58
signed int sub_80A7C58()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        s_2011C50_ptr_1C_isNull();
        if ( v1 )
        {
            sub_809E462();
            if ( v1 )
            {
                IsPaletteFadeActive();
                if ( !v1 )
                {
                    sub_809E3A2();
                    if ( !v1 )
                        v0 = 0;
                }
            }
        }
    }
    return v0;
}


// 0x80a7c84
int sub_80A7C84()
{
    int v0; // r5

    return (*(&off_80A7C98 + *(v0 + 8)))();
}


// 0x80a7ca4
void __noreturn sub_80A7CA4()
{
    int v0; // r5

    *v0 = 3;
    sprite_load(v0, 128, 28, 75);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(2);
    sprite_setPallete(1);
    SpawnOverworldMapObject(0, *(v0 + 12), *(v0 + 16), *(v0 + 20));
    *(v0 + 8) = 4;
    sub_80A7CEA();
}


// 0x80a7cea
void __noreturn sub_80A7CEA()
{
    Battle *v0; // r5

    sub_80A7CFE();
    sprite_update(v0);
}


// 0x80a7cf6
int sub_80A7CF6()
{
    return FreeOverworldMapObject();
}


// 0x80a7cfe
void *sub_80A7CFE()
{
    _DWORD *v0; // r5
    int v1; // r10
    _DWORD *v2; // r7
    int v3; // r2
    int v4; // r3
    void *result; // r0
    int v6; // r1
    unsigned __int8 v7; // vf
    int v8; // r2
    int v9; // r3
    char v10; // zf
    int v11; // r2
    int v12; // r3
    void *v13; // r4
    int v14; // r2
    int v15; // r3

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    v3 = v2[7] + 917504;
    v4 = v2[8] + 917504;
    result = v0[3];
    v6 = v0[4];
    v7 = __OFSUB__(v3, result);
    v8 = v3 - result;
    if ( !((v8 < 0) ^ v7) )
    {
        v7 = __OFSUB__(v4, v6);
        v9 = v4 - v6;
        if ( !((v9 < 0) ^ v7) )
        {
            result = 1835008;
            if ( v8 <= 1835008 && v9 <= 1835008 )
            {
                result = chatbox_check_eFlags2009F38(128);
                if ( v10 )
                {
                    result = s_2011C50_ptr_1C_isNull();
                    if ( v10 )
                    {
                        result = sub_809E462();
                        if ( v10 )
                        {
                            result = IsPaletteFadeActive();
                            if ( !v10 )
                            {
                                SetEventFlagFromImmediate(23, 49);
                                v13 = v2[9];
                                if ( v0[5] == v13 )
                                {
                                    result = StartCutscene(byte_8089E44, v0, v11, v12);
                                }
                                else
                                {
                                    result = sub_81420B0();
                                    if ( result == v13 )
                                        result = StartCutscene(byte_8089FD8, v0, v14, v15);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return result;
}


// 0x80a7d90
int sub_80A7D90()
{
    int v0; // r5

    sub_81428C2(*(v0 + 4));
    return (*(&off_80A7DAC + *(v0 + 8)))();
}


// 0x80a7db8
void __noreturn sub_80A7DB8()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r0

    *v0 = 3;
    sprite_load(v0, 128, 28, 78);
    sprite_setAnimation(v0, *(v1 + 3));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_80A8020();
    v2 = *(v1 + 4);
    *(v0 + 12) = GetSoulWeaponCursorCameraCoords();
    *(v0 + 16) = v3;
    *(v0 + 20) = 16384000;
    *(v0 + 20) = sub_8031612(v0 + 12) << 16;
    v4 = sub_8035694((v0 + 12));
    sub_8002E14(v4);
    *(v0 + 8) = 4;
    sub_80A7E14();
}


// 0x80a7e0c
int sub_80A7E0C()
{
    return FreeOverworldMapObject();
}


// 0x80a7e14
void __noreturn sub_80A7E14()
{
    Battle *v0; // r5
    int v1; // r7

    (*(&off_80A7E2C + *(v1 + 6)))();
    sprite_update(v0);
}


// 0x80a7e44
int sub_80A7E44()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(v0 + 9) = 0;
    return result;
}


// 0x80a7e4c
int sub_80A7E4C()
{
    int v0; // r5

    return (*(&off_80A7E60 + *(v0 + 9)))();
}


// 0x80a7e6c
signed int __noreturn sub_80A7E6C()
{
    int v0; // r5
    int v1; // r7
    signed int v2; // r6
    int v3; // r0
    int v4; // r0
    signed int result; // r0

    sprite_setAnimation(v0, *(v1 + 3) + 4);
    sprite_loadAnimationData(v0);
    *(v0 + 36) = 30;
    v2 = 1;
    v3 = sub_809E2B8();
    if ( sub_80A8038(v3) == *(v1 + 3) )
        v2 = *(v1 + 2);
    v4 = *(v1 + 2) - v2;
    *(v1 + 2) = v4;
    if ( v4 > 0 )
        sub_80A8020();
    result = 4;
    *(v0 + 9) = 4;
    return result;
}


// 0x80a7ea4
int sub_80A7EA4()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int result; // r0

    v2 = *(v0 + 36);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v0 + 36) = result;
    if ( ((result < 0) ^ v3) | (result == 0) )
    {
        sprite_setAnimation(v0, *(v1 + 3));
        sprite_loadAnimationData(v0);
        result = 8;
        *(v0 + 9) = 8;
    }
    return result;
}


// 0x80a7ebe
int sub_80A7EBE()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    if ( *(v1 + 2) > 0 )
        *(v1 + 6) = 0;
    else
        *(v1 + 6) = 8;
    result = 0;
    *(v0 + 9) = 0;
    return result;
}


// 0x80a7eda
int sub_80A7EDA()
{
    int v0; // r5

    return (*(&off_80A7EEC + *(v0 + 9)))();
}


// 0x80a7ef8
signed int __noreturn sub_80A7EF8()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r2
    signed int result; // r0

    sprite_setAnimation(v0, *(v1 + 3) + 12);
    sprite_loadAnimationData(v0);
    PlaySoundEffect(381, v2, v3);
    result = 4;
    v0->currAction = 4;
    return result;
}


// 0x80a7f14
int sub_80A7F14()
{
    int v0; // r5
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        result = 8;
        *(v0 + 9) = 8;
    }
    return result;
}


// 0x80a7f26
int sub_80A7F26()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0

    *(v1 + 4) = 0;
    *(v1 + 6) = 0;
    v2 = sub_81427A4(*(v0 + 4));
    SetEventFlag(v2);
    sub_8142184();
    SetEventFlag(*(v0 + 4) + 5712);
    return FreeOverworldMapObject();
}


// 0x80a7f58
int sub_80A7F58()
{
    int v0; // r5

    return (*(&off_80A7F6C + *(v0 + 9)))();
}


// 0x80a7f78
signed int __noreturn sub_80A7F78()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    u8 v3; // r0
    signed int result; // r0

    sub_8142204(*(v1 + 2));
    sub_8142990();
    sub_8142816(*(v0 + 12), *(v0 + 16));
    v2 = sub_8142896();
    v3 = sub_80A8038(v2);
    *(v0 + 7) = v3;
    sprite_setAnimation(v0, v3);
    sprite_loadAnimationData(v0);
    *(v0 + 36) = 30;
    result = 4;
    *(v0 + 9) = 4;
    return result;
}


// 0x80a7fac
int sub_80A7FAC()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    int v4; // r1
    int v5; // r2

    v1 = *(v0 + 36);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    *(v0 + 36) = result;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        sprite_setAnimation(v0, *(v0 + 7) + 8);
        sprite_loadAnimationData(v0);
        PlaySoundEffect(298, v4, v5);
        *(v0 + 36) = 4;
        result = 8;
        *(v0 + 9) = 8;
    }
    return result;
}


// 0x80a7fd4
int sub_80A7FD4()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r2
    int v4; // r0
    unsigned __int8 v5; // vf

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        PlaySoundEffect(298, 128, v3);
        v4 = *(v0 + 36);
        v5 = __OFSUB__(v4, 1);
        result = v4 - 1;
        *(v0 + 36) = result;
        if ( (result < 0) ^ v5 )
        {
            sprite_setAnimation(v0, *(v0 + 7));
            sprite_loadAnimationData(v0);
            *(v1 + 6) = 16;
            result = 0;
            *(v0 + 9) = 0;
        }
    }
    return result;
}


// 0x80a8006
void sub_80A8006()
{
    ;
}


// 0x80a800a
int __noreturn sub_80A800A()
{
    Battle *v0; // r5
    int v1; // r7
    int result; // r0

    sprite_setAnimation(v0, *(v1 + 3));
    sprite_loadAnimationData(v0);
    *(v1 + 6) = 0;
    result = 0;
    v0->currAction = 0;
    return result;
}


// 0x80a8020
void sub_80A8020()
{
    int v0; // r7

    sprite_setPallete(*(&off_80A8034 + *(v0 + 2)));
}


// 0x80a8038
int __fastcall sub_80A8038(int a1)
{
    return byte_80A8044[a1];
}


// 0x80a8208
int sub_80A8208()
{
    int v0; // r5

    return (*(&off_80A821C + *(v0 + 8)))();
}


// 0x80a822c
void __noreturn sub_80A822C()
{
    int v0; // r5
    u8 v1; // r0
    char *v2; // r0

    *v0 = 3;
    sprite_load(v0, 128, 28, 86);
    sub_80A8324();
    v1 = sub_80A82DC();
    *(v0 + 5) = v1;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(2);
    v2 = sub_80A82A4();
    *(v0 + 12) = *v2 << 16;
    *(v0 + 16) = *(v2 + 1) << 16;
    *(v0 + 20) = *(v2 + 2) << 16;
    *(v0 + 8) = 4;
    sub_80A827C(4);
}


// 0x80a827c
void __fastcall __noreturn sub_80A827C(int a1)
{
    int v1; // r5
    signed int v2; // r0

    v2 = sub_80A82DC();
    if ( v2 != *(v1 + 5) )
    {
        sprite_setAnimation(v1, v2);
        sprite_loadAnimationData(v1);
        sprite_noShadow(v1);
    }
    sprite_update(v1);
}


// 0x80a829c
int sub_80A829C()
{
    return FreeOverworldMapObject();
}


// 0x80a82a4
char *sub_80A82A4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r1

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 133 )
        v3 = 3;
    else
        v3 = *(v2 + oGameState_MapNumber);
    return &(**(&off_80A82CC + v3))[8 * *(v0 + 4)];
}


// 0x80a82dc
signed int sub_80A82DC()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r1
    signed int v4; // r4
    char v5; // zf

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 133 )
        v3 = 3;
    else
        v3 = *(v2 + oGameState_MapNumber);
    v4 = 0;
    TestEventFlag(*&(**(&off_80A8314 + v3))[2 * *(v0 + 4)]);
    if ( !v5 )
    {
        v4 = 1;
        sub_8002E14(3);
    }
    return v4;
}


// 0x80a8324
unsigned int sub_80A8324()
{
    int v0; // r5
    int v1; // r10
    unsigned int result; // r0
    char v3; // zf
    int v4; // r0
    signed int v5; // r4
    int v6; // r4
    int v7; // r6
    unsigned int v8; // r7
    unsigned int v9; // r6

    result = TestEventFlagFromImmediate(9, 214);
    if ( !v3 )
    {
        v4 = *(v1 + oToolkit_GameStatePtr);
        if ( *(v4 + oGameState_MapGroup) == 133 )
            v5 = 3;
        else
            v5 = *(v4 + oGameState_MapNumber);
        v6 = 4 * v5;
        v7 = 2 * *(v0 + 4);
        v8 = *&(**(&off_80A8374 + v6))[v7];
        v9 = *&(**(&off_80A8384 + v6))[v7];
        TestEventFlag(v8);
        if ( v3 )
            result = SetEventFlag(v9);
        else
            result = ClearEventFlag(v9);
    }
    return result;
}


// 0x80a8394
int sub_80A8394()
{
    int v0; // r5

    return (*(&off_80A83A8 + *(v0 + 8)))();
}


// 0x80a83b8
void __noreturn sub_80A83B8()
{
    int v0; // r5
    int v1; // r6
    int v2; // r0
    char v3; // zf
    int v4; // r1

    *v0 = 3;
    sprite_load(v0, 128, 28, 82);
    sub_80A84C4();
    sub_80A8548();
    sprite_setAnimation(v0, *(v0 + 4));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v2 = sub_8035694((v0 + 12));
    sub_8002E14(v2);
    ClearEventFlagFromImmediate(9, 255);
    TestEventFlagFromImmediate(9, 215);
    if ( !v3 )
    {
        v4 = *(v1 + 24);
        *(v0 + 12) = *(v1 + 22) << 16;
        *(v0 + 16) = v4 << 16;
        *(v0 + 20) = 0;
        *(v0 + 9) = 1;
        ClearEventFlagFromImmediate(9, 215);
    }
    *(v0 + 8) = 4;
    sub_80A8424();
}


// 0x80a8424
void __noreturn sub_80A8424()
{
    int v0; // r5
    char v1; // zf
    int v2; // r4

    TestEventFlagFromImmediate(9, 255);
    if ( v1 )
    {
        s_2011C50_ptr_1C_isNull();
        if ( v1 )
        {
            sub_809E462();
            if ( v1 )
            {
                chatbox_check_eFlags2009F38(128);
                if ( v1 )
                {
                    TestEventFlagFromImmediate(9, 212);
                    if ( v1 )
                    {
                        sub_811EBE0();
                        if ( v1 )
                        {
                            v2 = *(v0 + 9);
                            if ( v2 <= 0 )
                            {
                                sub_80A856C();
                                if ( !v1 )
                                    goto LABEL_18;
                                *(v0 + 9) = v2 + 1;
                            }
                            sub_80A85B4();
                            sub_80A860C();
                        }
                    }
                }
            }
        }
    }
    else
    {
        *(v0 + 8) = 8;
        *(v0 + 7) = 1;
    }
LABEL_18:
    sub_80A8644();
    sprite_update(v0);
}


// 0x80a8484
signed int sub_80A8484()
{
    int v0; // r5
    signed int result; // r0
    char v2; // zf

    result = sub_8036F70(byte_808C74C);
    if ( v2 )
    {
        result = *(v0 + 7) - 1;
        *(v0 + 7) = result;
        if ( !result )
        {
            sub_8001172(0);
            ClearEventFlagFromImmediate(9, 216);
            ClearEventFlagFromImmediate(9, 255);
            ClearEventFlagFromImmediate(9, 217);
            reqBBS_clearFlag_8140A0C();
            result = FreeOverworldMapObject();
        }
    }
    return result;
}


// 0x80a84c4
int sub_80A84C4()
{
    _DWORD *v0; // r5
    int v1; // r0
    int v2; // r4
    int v3; // r6
    __int64 v4; // r0
    int result; // r0
    int v6; // r2

    v1 = 2 * sub_80A84FC();
    v2 = 24576 * *&math_cosTable[v1];
    v3 = 24576 * *&math_sinTable[v1];
    v4 = sub_809E1AE();
    result = v4 + v2;
    v0[3] = result;
    v0[4] = HIDWORD(v4) + v3;
    v0[5] = v6 + 0x800000;
    return result;
}


// 0x80a84fc
int sub_80A84FC()
{
    return byte_80A8510[reqBBS_81409D0(8)];
}


// 0x80a8518
int __fastcall sub_80A8518(int a1, int a2)
{
    int v2; // r5
    __int64 v3; // r0
    int v4; // r0
    int result; // r0

    LODWORD(v3) = (a1 << 16) - *(v2 + 12);
    HIDWORD(v3) = (a2 << 16) - *(v2 + 16);
    v4 = sub_800118A(v3);
    if ( v4 )
        result = byte_80A8540[v4];
    else
        result = *(v2 + 4);
    return result;
}


// 0x80a8548
int sub_80A8548()
{
    int v0; // r5
    int v1; // r6
    int result; // r0
    char v3; // r4

    result = sub_80A8518(*(v1 + 26), *(v1 + 28));
    v3 = result;
    if ( result != *(v0 + 4) )
    {
        sprite_setAnimation(v0, result);
        sprite_loadAnimationData(v0);
        result = sprite_noShadow(v0);
        *(v0 + 4) = v3;
    }
    return result;
}


// 0x80a856c
int sub_80A856C()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 20) - 0x40000;
    *(v0 + 20) = result;
    if ( result <= 0 )
        result = 0;
    return result;
}


// 0x80a8580
int sub_80A8580()
{
    int v0; // r5
    int v1; // r6
    signed int v2; // r4
    unsigned int v3; // r0

    v2 = 0;
    v3 = calcAngle_800117C((*(v1 + 26) << 16) - *(v0 + 12), (*(v1 + 28) << 16) - *(v0 + 16));
    if ( v3 == 32 || v3 == 160 )
        v2 = 4;
    return *&byte_80A85AC[v2];
}


// 0x80a85b4
int sub_80A85B4()
{
    int v0; // r5
    int v1; // r6
    signed int v2; // r4
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r0
    int result; // r0
    int v8; // r1

    v2 = 0;
    sub_80A8548();
    v3 = sub_80A8580();
    v4 = *(v0 + 12);
    v5 = *(v1 + 26) << 16;
    if ( v4 != v5 )
    {
        if ( v4 > v5 )
        {
            if ( v4 - v5 < v3 )
                goto LABEL_8;
            v6 = v4 - v3;
        }
        else
        {
            if ( v5 - v4 < v3 )
                goto LABEL_8;
            v6 = v4 + v3;
        }
        v2 = 1;
        *(v0 + 12) = v6;
    }
LABEL_8:
    result = *(v0 + 16);
    v8 = *(v1 + 28) << 16;
    if ( result != v8 )
    {
        if ( result > v8 )
        {
            if ( result - v8 >= v3 )
            {
                result -= v3;
                goto LABEL_14;
            }
        }
        else if ( v8 - result >= v3 )
        {
            result += v3;
LABEL_14:
            v2 = 1;
            *(v0 + 16) = result;
            goto LABEL_15;
        }
    }
LABEL_15:
    *(v1 + 12) = v2;
    return result;
}


// 0x80a860c
int sub_80A860C()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    __int64 v3; // r0

    result = TestEventFlagFromImmediate(23, 23);
    if ( v2 )
    {
        v3 = sub_809E1AE();
        result = sub_80011D6(*(v0 + 12), *(v0 + 16), v3, SHIDWORD(v3));
        if ( result == 1 )
        {
            SetEventFlagFromImmediate(9, 217);
            *(v0 + 8) = 8;
            result = 80;
            *(v0 + 7) = 80;
        }
    }
    return result;
}


// 0x80a8644
int sub_80A8644()
{
    int v0; // r5
    int v1; // r6
    int result; // r0
    int v3; // r1

    result = *(v0 + 12) >> 16;
    v3 = *(v0 + 16) >> 16;
    *(v1 + 22) = result;
    *(v1 + 24) = v3;
    return result;
}


// 0x80a8654
int sub_80A8654()
{
    int v0; // r5

    return (*(&off_80A8668 + *(v0 + 8)))();
}


// 0x80a8674
void __noreturn sub_80A8674()
{
    int v0; // r5

    sub_80A86B4();
    sprite_load(v0, 128, 16, 39);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    *(v0 + 8) = 4;
    *(v0 + 36) = 0;
    sub_80A86A0();
}


// 0x80a86a0
void __noreturn sub_80A86A0()
{
    Battle *v0; // r5

    sub_80A86B4();
    sprite_update(v0);
}


// 0x80a86ac
int sub_80A86AC()
{
    return FreeOverworldMapObject();
}


// 0x80a86b4
void sub_80A86B4()
{
    int v0; // r5
    char v1; // r4
    int v2; // r6
    int v3; // r0
    int v4; // r1
    int v5; // r2
    char v6; // zf
    int v7; // r1
    int v8; // r2
    int v9; // r0
    int v10; // r4

    v1 = 1;
    v2 = *&sub_81421D8()[4 * *(v0 + 4)];
    if ( v2 )
    {
        v3 = sub_81421D0();
        sub_8142190(v3);
        if ( !v6 )
        {
            v1 = 3;
            if ( !*(v0 + 4) && !*(v0 + 36) )
            {
                *(v0 + 36) = 1;
                PlaySoundEffect(189, v4, v5);
            }
        }
    }
    *v0 = v1;
    *(v0 + 12) = GetSoulWeaponCursorCameraCoords();
    *(v0 + 16) = v7;
    sub_809E1AE();
    *(v0 + 20) = v8;
    v9 = sub_8035694((v0 + 12));
    sub_8002E14(v9);
    *(v0 + 20) += 786432;
    v10 = 4;
    sub_8142B04(v2);
    if ( !v6 )
        v10 = 5;
    sprite_setPallete(v10);
}


// 0x80a8728
int sub_80A8728()
{
    int v0; // r5

    return (*(&off_80A873C + *(v0 + 8)))();
}


// 0x80a8748
void __noreturn sub_80A8748()
{
    int v0; // r5
    int v1; // r0
    int v2; // r6
    unsigned __int8 *v3; // r7
    int v4; // r2
    int v5; // r0
    int v6; // r2
    int v7; // r1
    int v8; // r6

    v1 = *(v0 + 4);
    if ( !*(v0 + 4) )
        v1 = sub_81421D0();
    v2 = v1;
    v3 = &byte_80A87B0[4 * v1];
    *v0 = 3;
    sprite_load(v0, 128, *v3, v3[1]);
    sprite_setAnimation(v0, v3[2]);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_809E1AE();
    *(v0 + 20) = v4;
    v5 = sub_8035694((v0 + 12));
    sub_8002E14(v5);
    v7 = v3[3] << 16;
    *(v0 + 20) += v7;
    v8 = 2 * v2;
    if ( *&byte_80A87C8[v8] )
        PlaySoundEffect(*&byte_80A87C8[v8], v7, v6);
    *(v0 + 8) = 4;
    sprite_update(v0);
}


// 0x80a87d2
void __noreturn sub_80A87D2()
{
    Battle *v0; // r5

    if ( sprite_getFrameParameters() & 0x80 )
        v0->currState = 8;
    sprite_update(v0);
}


// 0x80a87e8
int sub_80A87E8()
{
    return FreeOverworldMapObject();
}


// 0x80a87f0
int sub_80A87F0()
{
    int v0; // r5

    return (*(&off_80A8804 + *(v0 + 8)))();
}


// 0x80a8814
void __noreturn sub_80A8814()
{
    int v0; // r5
    int v1; // r0

    *v0 = 3;
    sprite_load(v0, 128, 28, 0);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v1 = sub_8035694((v0 + 12));
    sub_8002E14(v1);
    *(v0 + 8) = 4;
    sub_80A8848();
}


// 0x80a8848
void __noreturn sub_80A8848()
{
    Battle *v0; // r5

    if ( sprite_getFrameParameters() & 0x80 )
        v0->currState = 8;
    sprite_update(v0);
}


// 0x80a8860
int sub_80A8860()
{
    ClearEventFlagFromImmediate(5, 224);
    return FreeOverworldMapObject();
}


// 0x80a8870
int sub_80A8870()
{
    int v0; // r5

    return (*(&off_80A8884 + *(v0 + 8)))();
}


// 0x80a8894
void __noreturn sub_80A8894()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1

    *v0 = 3;
    sprite_load(v0, 128, 28, byte_80A88E0[*(v0 + 5)]);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v1 = sub_8035694((v0 + 12));
    sub_8002E14(v1);
    *(v0 + 40) = 0;
    v2 = *(v0 + 16);
    *(v0 + 44) = *(v0 + 12);
    *(v0 + 48) = v2;
    *(v0 + 36) = 0;
    *(v0 + 8) = 4;
    sub_80A88E2();
}


// 0x80a88e2
void __noreturn sub_80A88E2()
{
    int v0; // r5

    sub_80A8988();
    sub_80037AC(*(v0 + 12), *(v0 + 16), *(v0 + 20), 2058);
    *(v0 + 40) = 0;
    sprite_update(v0);
}


// 0x80a8918
void __noreturn sub_80A8918()
{
    int v0; // r5
    int v1; // r3
    int v2; // r0

    v1 = byte_80A895C[*(v0 + 36) >> 1];
    if ( v1 == 255 )
    {
        FreeOverworldMapObject();
    }
    else
    {
        *(v0 + 20) += v1 << 16;
        v2 = byte_80A8970[*(v0 + 36) >> 1];
        sprite_setColorShader(v0, v2 | 32 * v2 | (v2 << 10));
    }
    ++*(v0 + 36);
    sprite_update(v0);
}


// 0x80a8980
int sub_80A8980()
{
    return FreeOverworldMapObject();
}


// 0x80a8988
unsigned int sub_80A8988()
{
    int v0; // r5
    unsigned int result; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r0
    int v5; // r1
    int v6; // r2
    unsigned int v7; // r1

    result = *(v0 + 40);
    if ( result & 0x10000 )
    {
        if ( *(v0 + 5) )
        {
            sprite_removeShadow();
            *(v0 + 8) = 8;
            PlaySoundEffect(420, v5, v6);
            sub_81430B6(*(v0 + 4));
            SetEventFlag(v7);
            result = sub_81433E4(1);
        }
        else
        {
            sprite_removeShadow();
            *(v0 + 8) = 8;
            PlaySoundEffect(115, v2, v3);
            v4 = sub_81430B6(*(v0 + 4));
            result = SetEventFlag(v4);
        }
    }
    return result;
}


// 0x80a89dc
int sub_80A89DC()
{
    int v0; // r5

    return (*(&off_80A89F0 + *(v0 + 8)))();
}


// 0x80a89fc
void __noreturn sub_80A89FC()
{
    int v0; // r5
    int v1; // r0

    *v0 = 3;
    sprite_load(v0, 128, 28, 106);
    sprite_setAnimation(v0, byte_80A8A48[(*(v0 + 4) + 16) >> 5]);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    *(v0 + 36) = 0;
    *(v0 + 8) = 4;
    sub_80A8A7C();
    sub_80A8A7C();
    sub_80A8A7C();
    v1 = sub_80A8A7C();
    sub_80A8A50(v1);
}


// 0x80a8a50
void __fastcall __noreturn sub_80A8A50(int a1)
{
    int v1; // r5
    int v2; // r0

    sub_80A8A7C();
    if ( *(v1 + 6) <= 0 )
        FreeOverworldMapObject();
    v2 = sub_8035694((v1 + 12));
    sub_8002E14(v2);
    sprite_update(v1);
}


// 0x80a8a74
int sub_80A8A74()
{
    return FreeOverworldMapObject();
}


// 0x80a8a7c
int sub_80A8A7C()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf
    int result; // r0

    v1 = 2 * *(v0 + 4);
    v2 = *&math_sinTable[v1];
    v3 = *&math_cosTable[v1];
    v4 = *(v0 + 5);
    *(v0 + 12) += v2 * v4 << 6;
    *(v0 + 16) += v3 * v4 << 6;
    v5 = *(v0 + 6);
    v6 = __OFSUB__(v5, 1);
    result = v5 - 1;
    if ( !((result < 0) ^ v6) )
        *(v0 + 6) = result;
    return result;
}


// 0x80a8ab4
int sub_80A8AB4()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r7
    int v3; // r1
    int v4; // r2
    int result; // r0
    int v6; // r1
    int v7; // r2

    v1 = sub_81431F8(*(v0 + 4));
    v2 = v1;
    v3 = *(v1 + 3);
    v4 = *(v1 + 4);
    *(v0 + 12) = *(v1 + 2);
    *(v0 + 16) = v3;
    *(v0 + 20) = v4;
    (*(&off_80A8AE8 + *(v0 + 8)))();
    result = *(v0 + 12);
    v6 = *(v0 + 16);
    v7 = *(v0 + 20);
    *(v2 + 2) = result;
    *(v2 + 3) = v6;
    *(v2 + 4) = v7;
    return result;
}


// 0x80a8af4
int __noreturn sub_80A8AF4()
{
    int v0; // r5
    u8 v1; // r0

    *v0 = 3;
    sprite_load(v0, 128, 28, 102);
    v1 = sub_80A8C7C();
    *(v0 + 7) = v1;
    sprite_setAnimation(v0, v1);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    *(v0 + 36) = 0;
    *(v0 + 8) = 4;
    return sub_80A8B2C();
}


// 0x80a8b24
int sub_80A8B24()
{
    return FreeOverworldMapObject();
}


// 0x80a8b2c
int sub_80A8B2C()
{
    int v0; // r7

    return (*(&off_80A8B40 + *(v0 + 1)))();
}


// 0x80a8b4c
void __noreturn sub_80A8B4C()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    int v3; // r2
    int v4; // r2
    int v5; // r0

    sub_80A8DF0();
    if ( v1 )
    {
        sub_80A8DB0();
        sub_80A8D42();
        sub_80A8CCC();
        v2 = 2 * (sub_80A8D02(133) >> 8);
        v3 = *&math_sinTable[v2] << 8;
        *(v0 + 12) -= *&math_cosTable[v2] << 8;
        *(v0 + 16) -= v3;
        sub_809E1AE();
        *(v0 + 20) = v4 + 1310720;
        sub_80A8C98();
        v5 = sub_80A8C7C();
        sub_80A8CB8(v5);
        sub_80A8D7C();
    }
    sprite_update(v0);
}


// 0x80a8bbc
void __noreturn sub_80A8BBC()
{
    int v0; // r5
    int v1; // r7
    char v2; // zf
    int v3; // r1
    int v4; // r1
    int v5; // r0

    sub_80A8DF0();
    if ( v2 )
    {
        sub_80A8DB0();
        sub_80A8D02(&byte_400);
        v4 = v3 << 8;
        if ( v4 < 0 )
            v4 = -v4;
        if ( v4 <= &byte_400 )
        {
            *(v1 + 1) = 0;
            sub_8143204(*(v0 + 4));
            sub_8143220(*(v0 + 4));
        }
        sub_80A8C98();
        v5 = sub_80A8C7C();
        sub_80A8CB8(v5);
        sub_80A8D7C();
    }
    sprite_update(v0);
}


// 0x80a8c08
void __noreturn sub_80A8C08()
{
    int v0; // r5
    _BYTE *v1; // r7
    int v2; // r10
    char v3; // zf
    int v4; // r0
    int v5; // r2
    int v6; // r2

    sub_80A8DF0();
    if ( v3 )
    {
        v4 = 2
             * calcAngle_800117C(
                     *(v0 + 16) - *(*(*(v2 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 32),
                     *(v0 + 12) - *(*(*(v2 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 28));
        v5 = *&math_sinTable[v4] << 12;
        *(v0 + 12) += *&math_cosTable[v4] << 12;
        *(v0 + 16) += v5;
        sub_809E1AE();
        *(v0 + 20) = v6 + 1310720;
        sub_8002E04();
        if ( v3 )
        {
            *v1 = 0;
            FreeOverworldMapObject();
        }
        sub_80A8C98();
    }
    sprite_update(v0);
}


// 0x80a8c7c
int sub_80A8C7C()
{
    int v0; // r7

    return *(&dword_80A8C94 + (((*(v0 + 4) >> 8) + 32) >> 6));
}


// 0x80a8c98
int sub_80A8C98()
{
    int v0; // r5
    int v1; // r4
    int v2; // r0

    v1 = *(v0 + 20);
    *(v0 + 20) = sub_8031612(v0 + 12) << 16;
    v2 = sub_8035694((v0 + 12));
    *(v0 + 20) = v1;
    return sub_8002E14(v2);
}


// 0x80a8cb8
int __fastcall sub_80A8CB8(int result)
{
    int v1; // r5

    if ( result != *(v1 + 7) )
    {
        *(v1 + 7) = result;
        sprite_setAnimation(v1, result);
        result = sprite_loadAnimationData(v1);
    }
    return result;
}


// 0x80a8ccc
int sub_80A8CCC()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int result; // r0
    signed __int16 v8; // r6
    char v9; // r0

    if ( *v1 != 2 )
        return sub_8143220(*(v0 + 4));
    v2 = *(v1 + 2);
    _VF = __OFSUB__(v2, 1);
    result = v2 - 1;
    *(v1 + 2) = result;
    if ( ((result < 0) ^ _VF) | (result == 0) )
    {
        GetRNG2();
        __asm { SVC         6 }
        v8 = 24576;
        GetRNG2();
        if ( (v9 & 7) < 4 )
            v8 = -24576;
        *(v1 + 4) += v8;
        return sub_8143220(*(v0 + 4));
    }
    return result;
}


// 0x80a8d02
int __fastcall sub_80A8D02(int a1)
{
    int v1; // r5
    int v2; // r7
    int v3; // r10
    int v4; // r4
    int v5; // r0
    int v6; // r1
    int result; // r0

    v4 = a1;
    v5 = ((calcAngle_800117C(
                     *(v1 + 16) - *(*(*(v3 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 32),
                     *(v1 + 12) - *(*(*(v3 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 28)) << 8)
            - *(v2 + 4));
    v6 = v5;
    if ( v5 < 0 )
        v6 = -v5;
    if ( v6 > v4 )
        v6 = v4;
    if ( v5 < 0 )
        v6 = -v6;
    result = *(v2 + 4) + v6;
    *(v2 + 4) = result;
    return result;
}


// 0x80a8d42
int sub_80A8D42()
{
    int v0; // r5
    int v1; // r7
    int v2; // r10
    int v3; // r0
    unsigned __int8 v4; // vf
    int result; // r0

    if ( sub_80014D4(
                 *(v0 + 16) - *(*(*(v2 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 32),
                 *(v0 + 12) - *(*(*(v2 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 28)) >= 1310720 )
        return sub_8143204(*(v0 + 4));
    v3 = *(v1 + 6);
    v4 = __OFSUB__(v3, 1);
    result = v3 - 1;
    *(v1 + 6) = result;
    if ( ((result < 0) ^ v4) | (result == 0) )
    {
        result = 4;
        *(v1 + 1) = 4;
    }
    return result;
}


// 0x80a8d7c
int sub_80A8D7C()
{
    int *v0; // r5
    int result; // r0
    int v2; // [sp+4h] [bp-20h]

    sub_80037AC(v0[3], v0[4], v0[5] - 1310720, 2056);
    result = 0;
    *(v2 + 36) = 0;
    return result;
}


// 0x80a8db0
int sub_80A8DB0()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r0
    int v4; // r2
    int v5; // r3
    int v6; // r1
    int v7; // r2

    result = sub_8034C36();
    if ( !v2 )
    {
        sub_8002E04();
        if ( v2 )
            JUMPOUT(&loc_80A8E0A);
        result = *(v0 + 36);
        if ( result & 0x10000 )
        {
            v3 = sub_8143088();
            StartCutscene(134791957, v3, v4, v5);
            PlaySoundEffect(290, v6, v7);
            sub_8143204(*(v0 + 4));
            result = sub_8143220(*(v0 + 4));
        }
    }
    return result;
}


// 0x80a8df0
signed int sub_80A8DF0()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        sub_8036F70(134791920);
        if ( !v1 || (s_2011C50_ptr_1C_isNull(), v1) )
        {
            sub_809E462();
            if ( v1 )
            {
                IsPaletteFadeActive();
                if ( !v1 )
                    v0 = 0;
            }
        }
    }
    return v0;
}


// 0x80a8e74
int sub_80A8E74()
{
    int v0; // r5

    return (*(&off_80A8E88 + *(v0 + 8)))();
}


// 0x80a8e9c
int __noreturn sub_80A8E9C()
{
    int v0; // r5
    int v1; // r0
    char v2; // zf

    *v0 = 3;
    sprite_load(v0, 128, 28, 108);
    sprite_setAnimation(v0, 0x18u);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v1 = sub_8035694((v0 + 12));
    sub_8002E14(v1);
    sub_80A90B0();
    TestEventFlagFromImmediate(11, 251);
    if ( v2 )
    {
        *(v0 + 40) = 0;
        *(v0 + 9) = 0;
        *(v0 + 36) = 1;
        goto LABEL_6;
    }
    sub_80A91D4();
    if ( v2 )
    {
        sub_80A9268();
LABEL_6:
        sub_80A908C();
        *(v0 + 8) = 4;
        sub_80A8F08();
    }
    *(v0 + 8) = 12;
    return sub_80A8FFC();
}


// 0x80a8f08
void __noreturn sub_80A8F08()
{
    Battle *v0; // r5
    char v1; // zf

    TestEventFlagFromImmediate(11, 239);
    if ( !v1 )
    {
        v0->currState = 8;
        sub_80A8FA0(8);
    }
    s_2011C50_8036F40();
    if ( v1 )
    {
        sub_8036F58();
        if ( v1 )
        {
            chatbox_check_eFlags2009F38(128);
            if ( v1 )
            {
                sub_80A8F48();
                sub_80A91A4();
            }
        }
    }
    sub_80A91F4();
    sprite_update(v0);
    sub_80A9218();
}


// 0x80a8f48
int sub_80A8F48()
{
    unsigned __int8 *v0; // r5
    int v1; // r4
    int v2; // r0
    int result; // r0
    char v4; // zf

    v1 = v0[9];
    if ( v1 <= 0 )
    {
        v2 = v0[36] - 1;
        v0[36] = v2;
        if ( v2 )
        {
            sub_80A9038();
            result = sub_80A90CC();
            if ( !v4 )
            {
                v0[36] = v0[38];
                result = sub_80A90E4();
            }
            return result;
        }
        v0[36] = v0[38];
        sub_80A9004();
        result = sub_80A9150();
        if ( v4 )
            return result;
        v0[9] = v1 + 1;
        v0[37] = v0[39];
    }
    result = v0[37] - 1;
    v0[37] = result;
    if ( !result )
        v0[9] = 0;
    return result;
}


// 0x80a8fa0
void __fastcall __noreturn sub_80A8FA0(int a1)
{
    Battle *v1; // r5
    char v2; // zf
    int v3; // r1
    int v4; // r2

    sub_80A91D4();
    if ( !v2 )
    {
        sprite_setAnimation(v1, 0x19u);
        sprite_loadAnimationData(v1);
        sprite_noShadow(v1);
        v1->currState = 12;
        PlaySoundEffect(dword_160, v3, v4);
        sub_80A8FE4();
    }
    TestEventFlagFromImmediate(11, 239);
    if ( v2 )
    {
        v1->currState = 4;
        sub_80A8F08();
    }
    sprite_update(v1);
}


// 0x80a8fe4
void __noreturn sub_80A8FE4()
{
    Battle *v0; // r5

    if ( sprite_getFrameParameters() & 0x80 )
        FreeOverworldMapObject();
    sprite_update(v0);
}


// 0x80a8ffc
int sub_80A8FFC()
{
    return FreeOverworldMapObject();
}


// 0x80a9004
int sub_80A9004()
{
    unsigned __int8 *v0; // r5
    int v1; // r6
    int v2; // r0
    int v3; // r2
    int v4; // r1
    int v5; // r3
    int v6; // r2
    int result; // r0

    v2 = reqBBS_81409D0(8);
    v3 = v0[4];
    v4 = v3 + 49;
    v5 = v3 + 25;
    v6 = *(v1 + v3 + 49);
    *(v1 + v5) = v5;
    if ( v2 == v6 )
    {
        if ( v2 < 7 )
            LOBYTE(v2) = v2 + 1;
        else
            LOBYTE(v2) = 0;
    }
    *(v1 + v4) = v2;
    v0[5] = v2;
    result = v0[40] + 1;
    v0[40] = result;
    return result;
}


// 0x80a9038
int sub_80A9038()
{
    int v0; // r5
    int v1; // r4
    int result; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r4

    v1 = *(v0 + 44);
    result = *(v0 + 5);
    v3 = *(v0 + 12);
    v4 = *(v0 + 16);
    if ( *(v0 + 5) )
    {
        switch ( result )
        {
            case 1:
                v3 += v1;
                break;
            case 3:
                v4 += v1;
                break;
            case 4:
                v3 -= v1;
                v4 += v1;
                break;
            case 5:
                v3 -= v1;
                break;
            case 7:
                v4 -= v1;
                break;
            default:
                v5 = *(v0 + 48);
                if ( result == 2 )
                {
                    v3 += v5;
                    v4 += v5;
                }
                else
                {
                    v3 -= v5;
                    v4 -= v5;
                }
                break;
        }
    }
    else
    {
        v3 += v1;
        v4 -= v1;
    }
    *(v0 + 12) = v3;
    *(v0 + 16) = v4;
    return result;
}


// 0x80a908c
int sub_80A908C()
{
    int v0; // r5
    char *v1; // r0
    char *v2; // r7
    unsigned int v3; // r0
    int result; // r0

    v1 = sub_80A916C();
    v2 = v1;
    v3 = *v1;
    *(v0 + 44) = v3;
    *(v0 + 48) = v3 >> 1;
    *(v0 + 38) = *(v2 + 2);
    *(v0 + 39) = *(v2 + 3);
    result = *(v2 + 6);
    *(v0 + 7) = result;
    return result;
}


// 0x80a90b0
signed int sub_80A90B0()
{
    _DWORD *v0; // r5
    char *v1; // r0
    signed int result; // r0

    v1 = sub_80A916C();
    v0[3] = *(v1 + 4) << 16;
    v0[4] = *(v1 + 5) << 16;
    result = 0x400000;
    v0[5] = 0x400000;
    return result;
}


// 0x80a90cc
signed int sub_80A90CC()
{
    int v0; // r5
    signed int v1; // r4

    v1 = 0;
    if ( sub_8031A7A(v0 + 12) == 192 )
        v1 = 1;
    return v1;
}


// 0x80a90e4
int sub_80A90E4()
{
    int v0; // r5
    int v1; // r6
    int v2; // r4
    int v3; // r0
    int v4; // r1
    char v5; // zf
    int v6; // r0
    int v7; // r3
    int result; // r0

    v2 = *(v0 + 4);
    while ( 1 )
    {
        do
        {
            v3 = reqBBS_81409D0(8);
            v4 = *(v0 + 5);
            *(v0 + 6) = v4;
        }
        while ( v3 == v4 );
        *(v0 + 5) = v3;
        *(v0 + 24) = *(v0 + 12);
        *(v0 + 28) = *(v0 + 16);
        sub_80A9038();
        sub_80A90CC();
        if ( v5 )
            break;
        *(v0 + 12) = *(v0 + 24);
        *(v0 + 16) = *(v0 + 28);
        *(v0 + 5) = *(v0 + 6);
    }
    if ( *(v0 + 5) == *(v1 + *(v0 + 4) + 25) )
        v6 = *(v0 + 5);
    v7 = *(v0 + 4);
    *(v1 + v7 + 25) = *(v1 + v7 + 49);
    *(v1 + v7 + 49) = *(v0 + 6);
    result = *(v0 + 40) + 1;
    *(v0 + 40) = result;
    return result;
}


// 0x80a9150
signed int sub_80A9150()
{
    int v0; // r5
    signed int v1; // r3

    v1 = 0;
    if ( *(v0 + 40) >= *(v0 + 7) )
    {
        v1 = 1;
        *(v0 + 40) = 0;
    }
    return v1;
}


// 0x80a916c
char *sub_80A916C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r1

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 133 )
        v3 = 3;
    else
        v3 = *(v2 + oGameState_MapNumber);
    return (*(&off_80A9194 + v3))[*(v0 + 4)];
}


// 0x80a91a4
int sub_80A91A4()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    __int64 v3; // r0

    result = TestEventFlagFromImmediate(11, 228);
    if ( !v2 )
    {
        v3 = sub_809E1AE();
        result = sub_80011D6(*(v0 + 12), *(v0 + 16), v3, SHIDWORD(v3));
        if ( result == 1 )
            result = SetEventFlagFromImmediate(11, 230);
    }
    return result;
}


// 0x80a91d4
int sub_80A91D4()
{
    int v0; // r5

    return TestEventFlag(*&byte_80A91EC[2 * *(v0 + 4)]);
}


// 0x80a91f4
int sub_80A91F4()
{
    int v0; // r5
    char v1; // zf
    int v3; // r0

    TestEventFlagFromImmediate(11, 230);
    if ( !v1 )
        return sub_8002E14(1);
    v3 = sub_8035694((v0 + 12));
    return sub_8002E14(v3);
}


// 0x80a9218
int sub_80A9218()
{
    int v0; // r5
    int v1; // r6
    int v2; // r4
    int result; // r0

    v2 = *(v0 + 4);
    *(v1 + v2 + 40) = *(v0 + 9);
    *(v1 + v2 + 49) = *(v0 + 5);
    *(v1 + v2 + 55) = *(v0 + 36);
    *(v1 + v2 + 58) = *(v0 + 37);
    *(v1 + v2 + 61) = *(v0 + 40);
    *(v1 + 2 * v2 + 64) = *(v0 + 12) >> 16;
    result = *(v0 + 16) >> 16;
    *(v1 + 2 * v2 + 70) = result;
    return result;
}


// 0x80a9268
int sub_80A9268()
{
    int v0; // r5
    int v1; // r6
    int v2; // r4
    int result; // r0

    v2 = *(v0 + 4);
    *(v0 + 9) = *(v1 + v2 + 40);
    *(v0 + 5) = *(v1 + v2 + 49);
    *(v0 + 36) = *(v1 + v2 + 55);
    *(v0 + 37) = *(v1 + v2 + 58);
    *(v0 + 40) = *(v1 + v2 + 61);
    *(v0 + 12) = *(v1 + 2 * v2 + 64) << 16;
    result = *(v1 + 2 * v2 + 70) << 16;
    *(v0 + 16) = result;
    return result;
}


// 0x80a92b8
int sub_80A92B8()
{
    int v0; // r5

    return (*(&off_80A92CC + *(v0 + 8)))();
}


// 0x80a92e0
void __noreturn sub_80A92E0()
{
    int v0; // r5
    int v1; // r6

    *v0 = 3;
    sprite_load(v0, 128, 28, 108);
    sprite_setAnimation(v0, *(v0 + 4));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(*(v0 + 5));
    sprite_setPallete(*(v1 + 28));
    *(v0 + 6) = 0;
    *(v0 + 7) = 0;
    *(v0 + 36) = 0;
    *(v0 + 8) = 4;
    sub_80A931C();
}


// 0x80a931c
void __noreturn sub_80A931C()
{
    Battle *v0; // r5
    char v1; // zf
    int v2; // r1
    int v3; // r2
    int v4; // r0

    TestEventFlagFromImmediate(11, 230);
    if ( !v1 )
    {
        sub_8002E14(3);
        v0->currState = 8;
        v4 = PlaySoundEffect(107, v2, v3);
        sub_80A9360(v4);
    }
    TestEventFlagFromImmediate(11, 228);
    if ( v1 )
    {
        sub_80A93D8();
        sub_80A93E8();
    }
    else
    {
        v0->currState = 12;
        sub_80A93D0();
    }
    sprite_update(v0);
}


// 0x80a9360
void __fastcall __noreturn sub_80A9360(int a1)
{
    int v1; // r5
    int v2; // r0

    sub_80A93D8();
    sub_80A937C();
    v2 = sub_8035694((v1 + 12));
    sub_8002E14(v2);
    sprite_update(v1);
}


// 0x80a937c
int sub_80A937C()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    if ( byte_80A93C0[*(v0 + 36) >> 1] == 255 )
    {
        *(v0 + 8) = 12;
        sub_80A93D0();
        SetEventFlagFromImmediate(11, 231);
    }
    else
    {
        v1 = byte_80A93C0[*(v0 + 36) >> 1];
        sprite_setColorShader(v0, v1 | 32 * v1 | (v1 << 10));
    }
    result = *(v0 + 36) + 1;
    *(v0 + 36) = result;
    return result;
}


// 0x80a93d0
int sub_80A93D0()
{
    return FreeOverworldMapObject();
}


// 0x80a93d8
int sub_80A93D8()
{
    return sub_8002FA6(234881024);
}


// 0x80a93e8
signed int sub_80A93E8()
{
    int v0; // r5
    int v1; // r0
    signed int result; // r0
    int v3; // r0

    if ( *(v0 + 6) )
    {
        v3 = *(v0 + 7) + 1;
        *(v0 + 7) = v3;
        if ( v3 < 24 )
        {
            result = 0x4000;
            *(v0 + 20) += 0x4000;
        }
        else
        {
            *(v0 + 6) = 0;
            result = 0;
            *(v0 + 7) = 0;
        }
    }
    else
    {
        v1 = *(v0 + 7) + 1;
        *(v0 + 7) = v1;
        if ( v1 < 24 )
        {
            result = 0x4000;
            *(v0 + 20) -= 0x4000;
        }
        else
        {
            *(v0 + 6) = 1;
            result = 0;
            *(v0 + 7) = 0;
        }
    }
    return result;
}


// 0x80a9430
int sub_80A9430()
{
    int v0; // r5

    return (*(&off_80A9444 + *(v0 + 8)))();
}


// 0x80a9458
int __noreturn sub_80A9458()
{
    int v0; // r5
    char *v1; // r4
    int v2; // r0
    int v3; // r0
    char v4; // zf

    *v0 = 3;
    sprite_load(v0, 128, 28, 107);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(2);
    v1 = sub_80A9570();
    *(v0 + 12) = *v1 << 16;
    *(v0 + 16) = *(v1 + 1) << 16;
    *(v0 + 20) = *(v1 + 2) << 16;
    v2 = v1[7];
    *(v0 + 4) = v2;
    sprite_setPallete(v2);
    v3 = v1[6];
    *(v0 + 7) = v3;
    if ( v3 )
    {
        sprite_hasShadow();
        sub_80A95EC();
    }
    ClearEventFlagFromImmediate(11, 252);
    *(v0 + 36) = 0;
    TestEventFlagFromImmediate(11, 251);
    if ( v4 || (sub_80A9628(), v4) )
    {
        *(v0 + 8) = 4;
        sub_80A94DC();
    }
    *(v0 + 8) = 12;
    return sub_80A9568();
}


// 0x80a94dc
void __noreturn sub_80A94DC()
{
    Battle *v0; // r5
    char v1; // zf

    TestEventFlagFromImmediate(11, 252);
    if ( v1 )
        sub_80A95A8();
    sub_80A95EC();
    sprite_update(v0);
}


// 0x80a94f8
void __noreturn sub_80A94F8()
{
    int v0; // r5
    int v1; // r3
    int v2; // r0

    v1 = byte_80A9544[*(v0 + 36) >> 1];
    if ( v1 == 255 )
    {
        ClearEventFlagFromImmediate(11, 252);
        sub_80A9568();
    }
    else
    {
        *(v0 + 20) += v1 << 16;
        v2 = byte_80A9558[*(v0 + 36) >> 1];
        sprite_setColorShader(v0, v2 | 32 * v2 | (v2 << 10));
    }
    ++*(v0 + 36);
    sprite_update(v0);
}


// 0x80a9568
int sub_80A9568()
{
    return FreeOverworldMapObject();
}


// 0x80a9570
char *sub_80A9570()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    signed int v3; // r1

    v2 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v2 + oGameState_MapGroup) == 133 )
        v3 = 3;
    else
        v3 = *(v2 + oGameState_MapNumber);
    return &(*off_80A9598[v3])[8 * *(v0 + 4)];
}


// 0x80a95a8
int sub_80A95A8()
{
    int v0; // r5
    int v1; // r6
    __int64 v2; // r0
    int v3; // r2
    int v4; // r1
    int v5; // r2

    v2 = sub_809E1AE();
    if ( v3 == *(v0 + 20) )
    {
        LODWORD(v2) = sub_80011D6(*(v0 + 12), *(v0 + 16), v2, SHIDWORD(v2));
        if ( v2 == 1 )
        {
            SetEventFlagFromImmediate(11, 252);
            *(v1 + 4) = *(v0 + 4);
            sub_80A9614();
            sprite_removeShadow();
            *(v0 + 8) = 8;
            LODWORD(v2) = PlaySoundEffect(&loc_1A4, v4, v5);
        }
    }
    return v2;
}


// 0x80a95ec
int sub_80A95EC()
{
    int v0; // r5
    int result; // r0
    int v2; // r2
    int v3; // r0

    result = *(v0 + 7);
    if ( *(v0 + 7) )
    {
        sub_809E1AE();
        if ( v2 )
        {
            v3 = sub_8035694((v0 + 12));
            result = sub_8002E14(v3);
        }
        else
        {
            result = sub_8002E14(3);
        }
    }
    return result;
}


// 0x80a9614
unsigned int sub_80A9614()
{
    int v0; // r5

    return SetEventFlag(*&byte_80A9648[2 * *(v0 + 4)]);
}


// 0x80a9628
signed int sub_80A9628()
{
    int v0; // r5
    signed int v1; // r4
    char v2; // zf

    v1 = 0;
    TestEventFlag(*&byte_80A9648[2 * *(v0 + 4)]);
    if ( !v2 )
        v1 = 1;
    return v1;
}


// 0x80a9658
int sub_80A9658()
{
    int v0; // r5

    return (*(&off_80A966C + *(v0 + 8)))();
}


// 0x80a9680
void __noreturn sub_80A9680()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2

    *v0 = 3;
    sprite_load(v0, 128, 28, 107);
    sprite_setAnimation(v0, 8u);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v1 = sub_8035694((v0 + 12));
    sub_8002E14(v1);
    *(v0 + 36) = 0;
    sub_80A97F4();
    PlaySoundEffect(435, v2, v3);
    *(v0 + 8) = 4;
    sub_80A96C8();
}


// 0x80a96c8
void sub_80A96C8()
{
    Battle *v0; // r5
    char v1; // zf

    sub_80A979C();
    sub_80A971C();
    if ( !v1 )
    {
        v0->currState = 8;
        sprite_setAnimation(v0, 7u);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        sub_80A974C();
    }
    sprite_update(v0);
}


// 0x80a96f0
void __fastcall __noreturn sub_80A96F0(int a1)
{
    sub_80A974C();
}


// 0x80a96fc
unsigned int sub_80A96FC()
{
    FreeOverworldMapObject();
    ClearEventFlagFromImmediate(11, 232);
    ClearEventFlagFromImmediate(23, 7);
    return ClearEventFlagFromImmediate(23, 57);
}


// 0x80a971c
signed int sub_80A971C()
{
    int v0; // r5
    int v1; // r6
    signed int v2; // r4
    char v3; // zf
    signed int v4; // r0

    v2 = 0;
    TestEventFlagFromImmediate(11, 229);
    if ( v3 || (TestEventFlagFromImmediate(11, 232), !v3) || (v4 = *(v1 + 6), v4 >= 25) && v4 - 25 == *(v0 + 4) )
        v2 = 1;
    return v2;
}


// 0x80a974c
void __noreturn sub_80A974C()
{
    int v0; // r5
    int v1; // r0

    if ( byte_80A978C[*(v0 + 36) >> 1] == 255 )
    {
        *(v0 + 8) = 12;
        sub_80A96FC();
    }
    else
    {
        v1 = byte_80A978C[*(v0 + 36) >> 1];
        sprite_setColorShader(v0, v1 | 32 * v1 | (v1 << 10));
    }
    ++*(v0 + 36);
    sprite_update(v0);
}


// 0x80a979c
int sub_80A979C()
{
    int v0; // r5
    int v1; // r6
    int result; // r0
    char v3; // zf
    int v4; // r3
    __int64 v5; // r0
    int v6; // r1
    int v7; // r2

    result = TestEventFlagFromImmediate(11, 232);
    if ( v3 )
    {
        result = *(v1 + 6);
        if ( result >= 5 )
        {
            v4 = 0;
            result = *(v1 + 6);
            if ( result >= 25 )
                v4 = result - 25;
            if ( *(v0 + 4) == v4 )
            {
                result = TestEventFlagFromImmediate(11, 228);
                if ( !v3 )
                {
                    v5 = sub_809E1AE();
                    result = sub_80011D6(*(v0 + 12), *(v0 + 16), v5, SHIDWORD(v5));
                    if ( result == 1 )
                    {
                        SetEventFlagFromImmediate(11, 232);
                        result = PlaySoundEffect(215, v6, v7);
                    }
                }
            }
        }
    }
    return result;
}


// 0x80a97f4
int sub_80A97F4()
{
    int v0; // r5
    signed int v1; // r4
    int v6; // r4
    int result; // r0

    v1 = *(v0 + 4);
    if ( v1 >= 25 )
    {
        __asm { SVC         6 }
        v1 = 25;
    }
    v6 = 2 * v1;
    *&byte_2011B30[v6] = *(v0 + 12) >> 16;
    result = *(v0 + 16) >> 16;
    *&byte_2011B30[v6 + 60] = result;
    return result;
}


// 0x80a9824
int sub_80A9824()
{
    int v0; // r5

    return (*(&off_80A9838 + *(v0 + 8)))();
}


// 0x80a9844
int sub_80A9844()
{
    int v0; // r5

    *(v0 + 8) = 4;
    *(v0 + 36) = *(v0 + 5);
    *(v0 + 40) = *(v0 + 6);
    return sub_80A9858();
}


// 0x80a9858
int sub_80A9858()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int result; // r0
    unsigned int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r0

    v1 = *(v0 + 36);
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    if ( ((result < 0) ^ v2) | (result == 0) )
    {
        *(v0 + 36) = *(v0 + 5);
        GetPositiveSignedRNG2();
        SpawnOverworldMapObject(
            2,
            (*(v0 + 14) + (v4 & 0xF) - 7) << 16,
            (*(v0 + 18) + ((v4 >> 8) & 0xF) - 7) << 16,
            (*(v0 + 22) - BYTE1(dword_200A6AC)) << 16);
        v7 = *(v0 + 40);
        v2 = __OFSUB__(v7, 1);
        result = v7 - 1;
        if ( ((result < 0) ^ v2) | (result == 0) )
        {
            *(v0 + 40) = *(v0 + 6);
            result = PlaySoundEffect(112, v5, v6);
        }
        else
        {
            *(v0 + 40) = result;
        }
    }
    else
    {
        *(v0 + 36) = result;
    }
    return result;
}


// 0x80a98cc
int sub_80A98CC()
{
    return FreeOverworldMapObject();
}


// 0x80a98d4
int sub_80A98D4()
{
    int v0; // r5

    return (*(&off_80A98E8 + *(v0 + 8)))();
}


// 0x80a98f4
int sub_80A98F4()
{
    int v0; // r5

    *(v0 + 8) = 4;
    *(v0 + 36) = *(v0 + 5);
    *(v0 + 40) = *(v0 + 6);
    return sub_80A9908();
}


// 0x80a9908
int sub_80A9908()
{
    int v0; // r5
    int v1; // r0
    int result; // r0
    char (*v7)[48]; // r4
    unsigned int v8; // r0
    int v9; // r0

    v1 = *(v0 + 36);
    _VF = __OFSUB__(v1, 1);
    result = v1 - 1;
    if ( ((result < 0) ^ _VF) | (result == 0) )
    {
        *(v0 + 36) = *(v0 + 5);
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        v7 = *(off_80A999C + *(v0 + 4)) + 1;
        GetPositiveSignedRNG2();
        SpawnOverworldMapObject(
            32,
            ((*v7 + (v8 & 0xF) - 7) << 16) + *(v0 + 12),
            ((*&(*v7)[2] + ((v8 >> 8) & 0xF) - 7) << 16) + *(v0 + 16),
            ((*&(*v7)[4] + ((v8 >> 16) & 0xF) - 7) << 16) + *(v0 + 20));
        v9 = *(v0 + 40);
        _VF = __OFSUB__(v9, 1);
        result = v9 - 1;
        if ( ((result < 0) ^ _VF) | (result == 0) )
            result = *(v0 + 6);
        *(v0 + 40) = result;
    }
    else
    {
        *(v0 + 36) = result;
    }
    return result;
}


// 0x80a9a04
int sub_80A9A04()
{
    return FreeOverworldMapObject();
}


// 0x80a9a0c
int sub_80A9A0C()
{
    int v0; // r5

    return (*(&off_80A9A20 + *(v0 + 8)))();
}


// 0x80a9a2c
void __noreturn sub_80A9A2C()
{
    int v0; // r5
    int v1; // r6
    int v2; // r0

    *v0 = 3;
    sprite_load(v0, 128, *(v0 + 6), *(v0 + 7));
    v1 = *(v0 + 20);
    *(v0 + 20) = sub_8031612(v0 + 12) << 16;
    v2 = sub_8035694((v0 + 12));
    *(v0 + 20) = v1;
    sub_8002E14(v2);
    sprite_setAnimation(v0, *(v0 + 4));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sprite_setPallete(*(v0 + 5));
    *(v0 + 8) = 4;
    sub_80A9A76();
}


// 0x80a9a76
void __noreturn sub_80A9A76()
{
    int v0; // r5

    *(v0 + 20) += 0x20000;
    if ( sprite_getFrameParameters() & 0x80 )
        *(v0 + 8) = 8;
    sprite_update(v0);
}


// 0x80a9a96
int sub_80A9A96()
{
    return FreeOverworldMapObject();
}


// 0x80a9b70
int sub_80A9B70()
{
    int v0; // r5
    char *v1; // r7

    v1 = &byte_80A9AA0[16 * *(v0 + 4)];
    return (*(&JumpTable80A9B8C + *(v0 + 8)))();
}


// 0x80a9b9c
void sub_80A9B9C()
{
    int v0; // r5
    unsigned __int16 *v1; // r7
    char v2; // zf
    int v3; // r0
    int v4; // r6

    *v0 = 3;
    *(v0 + 36) = 0;
    TestEventFlag(*v1);
    if ( v2 )
    {
        *v0 = 1;
        ClearEventFlag(v1[1]);
    }
    else
    {
        SetEventFlag(v1[1]);
        ClearEventFlag(v1[2]);
    }
    sprite_load(v0, 128, *(v1 + 6), *(v1 + 7));
    v3 = *(v1 + 12);
    if ( v3 == 255 )
    {
        v4 = *(v0 + 20);
        *(v0 + 20) = sub_8031612(v0 + 12) << 16;
        v3 = sub_8035694((v0 + 12));
        *(v0 + 20) = v4;
    }
    sub_8002E14(v3);
    sprite_setAnimation(v0, *(v1 + 8));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002FA6(*(v1 + 10) << 24);
    sprite_setPallete(*(v1 + 11));
    sprite_setFlip(v0, *(v1 + 13));
    *(v0 + 8) = 4;
    sub_80A9C26();
}


// 0x80a9c26
void __noreturn sub_80A9C26()
{
    void *sprite; // r5
    unsigned __int16 *v1; // r7
    char v2; // zf
    int v3; // r1
    int v4; // r2

    TestEventFlag(*v1);
    if ( v2 )
    {
        *sprite = 1;
        ClearEventFlag(v1[1]);
    }
    else
    {
        *sprite = 3;
        SetEventFlag(v1[1]);
        ClearEventFlag(v1[2]);
    }
    TestEventFlag(*v1);
    if ( !v2 )
    {
        if ( sub_80A9CAE() )
        {
            if ( !*(sprite + 9) )
            {
                *(sprite + 9) = 1;
                sprite_setAnimation(sprite, 3u);
                sprite_loadAnimationData(sprite);
                sprite_noShadow(sprite);
                PlaySoundEffect(472, v3, v4);
            }
        }
        else if ( *(sprite + 9) )
        {
            sprite_setAnimation(sprite, 5u);
            sprite_loadAnimationData(sprite);
            sprite_noShadow(sprite);
            *(sprite + 9) = 0;
        }
    }
    sprite_update(sprite);
}


// 0x80a9ca6
int sub_80A9CA6()
{
    return FreeOverworldMapObject();
}


// 0x80a9cae
signed int sub_80A9CAE()
{
    _DWORD *v0; // r5
    int v1; // r2
    int v2; // r0
    int v3; // r1
    signed int result; // r0

    if ( *&eOWPlayerObject[36] != v0[5] + 0x400000 )
        goto LABEL_12;
    v1 = v0[3] - 0x400000;
    v2 = *&eOWPlayerObject[28] - v1;
    v3 = *&eOWPlayerObject[32] - (v0[4] + 0x400000);
    if ( *&eOWPlayerObject[28] - v1 < 0 )
        v2 = v1 - *&eOWPlayerObject[28];
    if ( v3 < 0 )
        v3 = v0[4] + 0x400000 - *&eOWPlayerObject[32];
    if ( v2 > 0x100000 || v3 > 0x100000 )
LABEL_12:
        result = 0;
    else
        result = 1;
    return result;
}


// 0x80a9d10
int sub_80A9D10()
{
    int v0; // r5

    return (*(&off_80A9D24 + *(v0 + 8)))();
}


// 0x80a9d30
void __noreturn sub_80A9D30()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    int v4; // r0

    *v0 = 1;
    sub_809C890();
    *(v0 + 12) = v1;
    *(v0 + 16) = v2;
    *(v0 + 20) = v3;
    *(v0 + 48) = v1;
    *(v0 + 52) = v2;
    *(v0 + 56) = v3;
    sprite_load(v0, 128, 28, 158);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v4 = sub_8035694((v0 + 12));
    sub_8002E14(v4);
    *(v0 + 36) = 0;
    *(v0 + 38) = 0;
    *(v0 + 40) = 174762;
    *(v0 + 44) = 5825;
    *(v0 + 8) = 4;
    *(v0 + 9) = 0;
    sub_80A9D86();
}


// 0x80a9d86
void sub_80A9D86()
{
    Battle *v0; // r5

    (*(&off_80A9DA4 + v0->currAction))();
    sprite_update(v0);
}


// 0x80a9db8
int sub_80A9DB8()
{
    return FreeOverworldMapObject();
}


// 0x80a9dc0
int sub_80A9DC0()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2

    result = *(v0 + 36) + 1;
    *(v0 + 36) = result;
    if ( result == 5 )
    {
        result = 3;
        *v0 = 3;
    }
    else if ( result >= 30 )
    {
        *(v0 + 36) = 0;
        sprite_setAnimation(v0, 1u);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        if ( !*(v0 + 4) )
            PlaySoundEffect(291, v2, v3);
        result = 4;
        *(v0 + 9) = 4;
    }
    return result;
}


// 0x80a9dfe
int __fastcall sub_80A9DFE(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r1
    int result; // r0

    *(v3 + 20) += *(v3 + 40);
    v4 = *(v3 + 44);
    *(v3 + 40) -= v4;
    result = *(v3 + 36) + 1;
    *(v3 + 36) = result;
    if ( result == 12 )
    {
        if ( !*(v3 + 4) )
            PlaySoundEffect(309, v4, a3);
        sprite_setAnimation(v3, 2u);
        sprite_loadAnimationData(v3);
        result = sprite_noShadow(v3);
    }
    else if ( result >= 30 )
    {
        *(v3 + 36) = 0;
        result = 8;
        *(v3 + 9) = 8;
    }
    return result;
}


// 0x80a9e48
int sub_80A9E48()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 36) + 1;
    *(v0 + 36) = result;
    if ( result >= 8 )
    {
        *(v0 + 36) = 0;
        result = 12;
        *(v0 + 9) = 12;
    }
    return result;
}


// 0x80a9e5e
int sub_80A9E5E()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    *(v0 + 20) += *(v0 + 40);
    *(v0 + 40) -= *(v0 + 44);
    result = *(v0 + 36) + 1;
    *(v0 + 36) = result;
    if ( result > 30 )
    {
        *(v0 + 36) = 0;
        sprite_setFlip(v0, *(v0 + 5));
        sprite_setAnimation(v0, 5u);
        sprite_loadAnimationData(v0);
        sprite_noShadow(v0);
        sub_809C940();
        v2 = *(v0 + 48);
        v3 = *(v0 + 52);
        v4 = *(v0 + 56);
        *(v0 + 12) = v2;
        *(v0 + 16) = v3;
        *(v0 + 20) = v4;
        if ( !*(v0 + 4) )
            PlaySoundEffect(429, v2, v3);
        result = 16;
        *(v0 + 9) = 16;
    }
    return result;
}


// 0x80a9eb6
signed int sub_80A9EB6()
{
    signed int result; // r0

    result = 1;
    byte_2011C58 = 1;
    return result;
}


// 0x80a9ecc
int sub_80A9ECC()
{
    int v0; // r5

    return (*(&off_80A9EE0 + *(v0 + 8)))();
}


// 0x80a9eec
void __noreturn sub_80A9EEC()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    int v4; // r0
    int v5; // r1
    int v6; // r2

    *v0 = 3;
    sub_809C890();
    *(v0 + 12) = v1;
    *(v0 + 16) = v2;
    *(v0 + 20) = v3;
    sprite_load(v0, 128, 28, 0);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v4 = sub_8035694((v0 + 12));
    sub_8002E14(v4);
    PlaySoundEffect(118, v5, v6);
    *(v0 + 8) = 4;
    sub_80A9F30();
}


// 0x80a9f30
void __noreturn sub_80A9F30()
{
    Battle *v0; // r5

    if ( sprite_getFrameParameters() & 0x80 )
        v0->currState = 8;
    sprite_update(v0);
}


// 0x80a9f4e
int sub_80A9F4E()
{
    return FreeOverworldMapObject();
}


// 0x80a9f58
int sub_80A9F58()
{
    int v0; // r5

    return (*(&off_80A9F6C + *(v0 + 8)))();
}


// 0x80a9f78
void __noreturn sub_80A9F78()
{
    int v0; // r5

    *v0 = 3;
    sprite_load(v0, 128, 28, *(v0 + 5));
    sprite_setAnimation(v0, *(v0 + 6));
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    sub_8002E14(*(v0 + 7));
    sprite_setPallete(0);
    *(v0 + 20) = sub_80AA04C(*(v0 + 4));
    *(v0 + 36) = 0;
    *(v0 + 8) = 4;
    sub_80A9FB8();
}


// 0x80a9fb8
void __noreturn sub_80A9FB8()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    signed int v3; // r4

    v1 = sub_80AA04C(*(v0 + 4));
    v2 = *(v0 + 20);
    if ( v1 != v2 )
    {
        if ( v1 < v2 )
            v3 = -65536;
        else
            v3 = 0x10000;
        *(v0 + 20) = v2 + v3;
    }
    if ( *(v0 + 4) == 8 )
    {
        SetEventFlagFromImmediate(22, 64);
        if ( *(v0 + 20) >> 16 != 32 )
            ClearEventFlagFromImmediate(22, 64);
    }
    sprite_update(v0);
}


// 0x80a9ffc
int sub_80A9FFC()
{
    return FreeOverworldMapObject();
}


// 0x80aa004
int __fastcall sub_80AA004(int a1)
{
    CopyBytes(&byte_80AA01C[16 * a1], byte_2001130, 16);
    return 0;
}


// 0x80aa04c
int __fastcall sub_80AA04C(int a1)
{
    return byte_2001130[a1] << 16;
}


// 0x80aa058
int sub_80AA058()
{
    int v0; // r5

    return (*(&off_80AA06C + *(v0 + 8)))();
}


// 0x80aa078
void __noreturn sub_80AA078()
{
    int v0; // r5

    *v0 = 3;
    sprite_load(v0, 128, 28, *(v0 + 5));
    sprite_setAnimation(v0, *(v0 + 6));
    sprite_loadAnimationData(v0);
    sprite_removeShadow();
    sub_8002E14(*(v0 + 7));
    sprite_setPallete(0);
    *(v0 + 20) = sub_80AA134(*(v0 + 4));
    *(v0 + 36) = 0;
    *(v0 + 8) = 4;
    sub_80AA0B8();
}


// 0x80aa0b8
void __noreturn sub_80AA0B8()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    signed int v3; // r4

    v1 = sub_80AA134(*(v0 + 4));
    v2 = *(v0 + 20);
    if ( v1 != v2 )
    {
        if ( v1 < v2 )
            v3 = -65536;
        else
            v3 = 0x10000;
        *(v0 + 20) = v2 + v3;
    }
    if ( !*(v0 + 4) )
    {
        SetEventFlagFromImmediate(22, 64);
        if ( *(v0 + 20) >> 16 != 32 )
            ClearEventFlagFromImmediate(22, 64);
    }
    sprite_update(v0);
}


// 0x80aa0fc
int sub_80AA0FC()
{
    return FreeOverworldMapObject();
}


// 0x80aa104
int __fastcall sub_80AA104(int a1)
{
    CopyBytes(&byte_80AA11C[8 * a1], byte_20018B0, 8);
    return 0;
}


// 0x80aa134
int __fastcall sub_80AA134(int a1)
{
    return byte_20018B0[a1] << 16;
}


// 0x80aa140
int sub_80AA140()
{
    int v0; // r5

    return (*(&off_80AA154 + *(v0 + 8)))();
}


// 0x80aa160
void __noreturn sub_80AA160()
{
    int v0; // r5
    int v1; // r0

    *v0 = 3;
    sprite_load(v0, 128, 28, 130);
    sprite_setAnimation(v0, 2u);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    v1 = sub_8035694((v0 + 12));
    sub_8002E14(v1);
    *(v0 + 8) = 4;
    sub_80AA194();
}


// 0x80aa194
void __noreturn sub_80AA194()
{
    int v0; // r5
    int v1; // r0
    char v2; // zf
    int v3; // r1
    int v4; // r2

    v1 = sub_8143B5E(*(v0 + 4));
    TestEventFlag(v1);
    if ( !v2 )
    {
        sprite_setAnimation(v0, 1u);
        sprite_loadAnimationData(v0);
        camera_initShakeEffect_80302a8(2, 20);
        PlaySoundEffect(379, v3, v4);
        *(v0 + 8) = 8;
    }
    sprite_update(v0);
}


// 0x80aa1c8
void __noreturn sub_80AA1C8()
{
    Battle *v0; // r5

    if ( sprite_getFrameParameters() & 0x80 )
        FreeOverworldMapObject();
    sprite_update(v0);
}


// 0x80aa1e0
int sub_80AA1E0()
{
    int v0; // r5

    return (*(&off_80AA1F4 + *(v0 + 8)))();
}


// 0x80aa204
void __noreturn sub_80AA204()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2

    *v0 = 3;
    sprite_load(v0, 128, 28, 130);
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_hasShadow();
    v1 = sub_8035694((v0 + 12));
    sub_8002E14(v1);
    v2 = *(v0 + 16);
    v3 = *(v0 + 20);
    *(v0 + 40) = *(v0 + 12);
    *(v0 + 44) = v2;
    *(v0 + 48) = v3;
    *(v0 + 36) = 0;
    *(v0 + 8) = 4;
    sub_80AA248();
}


// 0x80aa248
void __noreturn sub_80AA248()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r1
    int v4; // r2
    int v5; // r1
    int v6; // r2

    v1 = *(v0 + 20);
    v2 = __OFSUB__(v1, 327680);
    v1 -= 327680;
    *(v0 + 20) = v1;
    if ( (v1 < 0) ^ v2 )
    {
        *(v0 + 20) = 0;
        sprite_setAnimation(v0, 1u);
        sprite_loadAnimationData(v0);
        camera_initShakeEffect_80302a8(1, 10);
        PlaySoundEffect(218, v3, v4);
        PlaySoundEffect(192, v5, v6);
        *(v0 + 8) = 8;
    }
    sprite_update(v0);
}


// 0x80aa282
void __noreturn sub_80AA282()
{
    int v0; // r5
    char v1; // r0

    if ( sprite_getFrameParameters() & 0x80 )
    {
        *v0 = 1;
        GetRNG2();
        *(v0 + 36) = (v1 & 0x1F) + 8;
        *(v0 + 8) = 12;
    }
    sprite_update(v0);
}


// 0x80aa2a8
void __noreturn sub_80AA2A8()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r1
    int v4; // r2

    v1 = *(v0 + 36);
    v2 = __OFSUB__(v1--, 1);
    *(v0 + 36) = v1;
    if ( ((v1 < 0) ^ v2) | (v1 == 0) )
    {
        *v0 = 3;
        sprite_setAnimation(v0, 0);
        sprite_loadAnimationData(v0);
        v3 = *(v0 + 44);
        v4 = *(v0 + 48);
        *(v0 + 12) = *(v0 + 40);
        *(v0 + 16) = v3;
        *(v0 + 20) = v4;
        *(v0 + 8) = 4;
    }
    sprite_update(v0);
}


// 0x80aa2d8
int sub_80AA2D8()
{
    int v0; // r5

    return (*(&off_80AA2EC + *(v0 + 8)))();
}


// 0x80aa2f8
void __noreturn sub_80AA2F8()
{
    int v0; // r5

    *v0 = 3;
    sprite_load(v0, 128, 28, 152);
    *(v0 + 4) = 0;
    sprite_setAnimation(v0, 0);
    sprite_loadAnimationData(v0);
    sprite_noShadow(v0);
    *(v0 + 8) = 4;
    sub_80AA322();
}


// 0x80aa322
void __noreturn sub_80AA322()
{
    int v0; // r5
    char v1; // r4
    char v2; // zf
    int v3; // r1
    int v4; // r2
    int v5; // r0

    v1 = 1;
    sub_81279A8();
    if ( v2 )
    {
        sub_8036F70(byte_8088514);
        if ( v2 )
        {
            sub_8036F70(byte_8088708);
            if ( v2 )
                v1 = 3;
        }
    }
    *v0 = v1;
    v3 = *&eOverworldNPCObjects[40];
    v4 = *&eOverworldNPCObjects[44];
    *(v0 + 12) = *&eOverworldNPCObjects[36];
    *(v0 + 16) = v3;
    *(v0 + 20) = v4;
    v5 = sub_8035694((v0 + 12));
    sub_8002E14(v5);
    sprite_update(v0);
}


// 0x80aa36c
int sub_80AA36C()
{
    return FreeOverworldMapObject();
}


// 0x80aa374
int sub_80AA374()
{
    int v0; // r5

    return (*(&off_80AA388 + *(v0 + 8)))();
}


// 0x80aa394
void __noreturn sub_80AA394()
{
    int v0; // r5
    char v1; // r4
    char v2; // zf

    *v0 = 3;
    v1 = 0;
    TestEventFlagFromImmediate(23, 41);
    if ( v2 )
        v1 = 2;
    *(v0 + 5) = v1;
    sub_80AA3C2(0);
    *(v0 + 36) = 90;
    *(v0 + 40) = 1;
    *(v0 + 8) = 4;
    sub_80AA402();
}


// 0x80aa3c2
int __fastcall sub_80AA3C2(int a1)
{
    int v1; // r5
    char *v2; // r4
    char *v3; // r6
    int result; // r0
    int v5; // r1
    unsigned int v6; // r0
    int v7; // r0
    int v8; // r1

    v2 = &byte_80AA430[8 * a1];
    v3 = &v2[*(v1 + 5)];
    result = 128;
    v5 = *v3;
    if ( v5 != 255 )
    {
        sprite_load(v1, 128, v5, v3[1]);
        v6 = *(v1 + 4);
        if ( *v3 != 24 )
            v6 >>= 1;
        sprite_setAnimation(v1, v6);
        sprite_loadAnimationData(v1);
        sprite_hasShadow();
        v7 = sub_8035694((v1 + 12));
        result = sub_8002E14(v7);
        v8 = v2[4];
    }
    return result;
}


// 0x80aa402
void __noreturn sub_80AA402()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r1
    int v4; // r2

    v1 = *(v0 + 36);
    v2 = __OFSUB__(v1--, 1);
    *(v0 + 36) = v1;
    if ( (v1 < 0) ^ v2 )
    {
        sub_80AA3C2(*(v0 + 40));
        if ( v3 != 255 )
        {
            PlaySoundEffect(462, v3, v4);
            ++*(v0 + 40);
        }
        *(v0 + 36) = v3;
    }
    sprite_update(v0);
}


// 0x80aa4b8
int sub_80AA4B8()
{
    return FreeOverworldMapObject();
}


// 0x80aa4c0
unsigned int sub_80AA4C0()
{
    int v0; // r10
    int v1; // r7
    int v2; // r6
    unsigned int result; // r0
    int v4; // r3
    int v5; // r3
    int v6; // r4
    int v7; // r0
    unsigned int v8; // r3
    int v9; // ST04_4
    char v10; // r0
    char v11; // r2
    char v12; // r0
    int v17; // r0
    int v18; // r0
    int v19; // r1
    int v20; // r1
    unsigned int v21; // ST04_4
    int v22; // r0
    unsigned int v23; // ST04_4
    int v24; // r4
    int v25; // r0
    int v26; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = *(v0 + oToolkit_Unk2001c04_Ptr);
    result = 0;
    v4 = *(v1 + oGameState_MapGroup);
    if ( v4 - 128 >= 0 )
    {
        v5 = v4 - 128;
        if ( *(v2 + 18) - *(v2 + 20) - 64 >= 0 )
        {
            *(v2 + 20) = *(v2 + 18);
            if ( byte_8020CE4[16 * v5 + *(v1 + oGameState_MapNumber)] != 7 )
            {
                v6 = byte_8020CE4[16 * v5 + *(v1 + oGameState_MapNumber)];
                v7 = getPETNaviSelect();
                if ( GetCurPETNaviStatsByte(v7) )
                    v6 = 0;
                v8 = *(v2 + 18) >> 6;
                if ( (v8 - 17) >= 0 )
                    v8 = 16;
                v9 = byte_8020C5C[8 * v8 + v6];
                GetRNG2();
                v11 = v10;
                result = 0;
                if ( (v11 & 0x1F) < v9 )
                {
                    if ( *(v2 + 40) && (GetPositiveSignedRNG2(), !(v12 & 1)) && (result = *(v2 + 44)) != 0 && result >> 24 == 8 )
                    {
                        *(v1 + oGameState_CurBattleDataPtr) = result;
                    }
                    else
                    {
                        if ( HIWORD(dword_2000B30)
                            || dword_2000B30 < 8
                            || (result = sub_80AA5F4(dword_2000B30, &dword_2000B30, 64)) == 0 )
                        {
                            GetPositiveSignedRNG2();
                            __asm { SVC         6 }
                            v17 = getPETNaviSelect();
                            v18 = GetCurPETNaviStatsByte(v17);
                            result = sub_80AA5F4(v18, v19, v18);
                            if ( !result )
                                result = sub_80AA5F4(0, v20, 31);
                        }
                        else
                        {
                            HIWORD(dword_2000B30) = 1;
                        }
                        *(v1 + oGameState_CurBattleDataPtr) = result;
                        if ( *(v2 + 36) || (v21 = result, v22 = getPETNaviSelect(), _ZF = GetCurPETNaviStatsByte(v22) == 0, result = v21, !_ZF) )
                        {
                            v23 = result;
                            v24 = sub_802D266(result);
                            v25 = getPETNaviSelect();
                            v26 = GetField16FromSelectedS20047CCStruct(v25) + 4;
                            __asm { SVC         6 }
                            _VF = __OFSUB__(v26, v24);
                            _ZF = v26 == v24;
                            _NF = v26 - v24 < 0;
                            result = v23;
                            if ( !((_NF ^ _VF) | _ZF) )
                            {
                                result = 0;
                                *(v2 + 18) = 0;
                                *(v2 + 20) = 0;
                            }
                        }
                    }
                }
            }
        }
    }
    return result;
}


// 0x80aa5e4
int __fastcall chooseRandomEncounterMaybe_80aa5e4(int a1, int a2)
{
    int v2; // r10
    int v3; // r7
    int result; // r0

    v3 = *(v2 + oToolkit_GameStatePtr);
    result = sub_80AA5F4(a1, a2, 31);
    *(v3 + oGameState_CurBattleDataPtr) = result;
    return result;
}


// 0x80aa5f4
int __fastcall sub_80AA5F4(int a1, int a2, int a3)
{
    int v3; // r10
    int (*(**v5)[22])[49]; // r3
    int v6; // r4
    signed int v7; // r0
    unsigned __int8 *v8; // r7
    int v9; // r4
    int *v10; // r5
    int v11; // r6
    int v13; // r1
    unsigned __int16 *i; // r5
    int v18; // r0
    int v19; // [sp+0h] [bp-100h]
    int v20; // [sp+E8h] [bp-18h]

    v20 = a3;
    TestEventFlagFromImmediate(6, 127);
    if ( _ZF )
    {
        TestEventFlagFromImmediate(6, 128);
        if ( _ZF )
        {
            TestEventFlagFromImmediate(6, 129);
            if ( _ZF )
                v5 = &off_8020170;
            else
                v5 = &off_8020188;
        }
        else
        {
            v5 = &off_8020180;
        }
    }
    else
    {
        v5 = &off_8020178;
    }
    v6 = *(v3 + oToolkit_GameStatePtr);
    v7 = *(v6 + oGameState_MapGroup);
    if ( v7 >= 128 )
    {
        v7 -= 128;
        ++v5;
    }
    v8 = (*(**v5)[v7])[*(v6 + oGameState_MapNumber)];
    v9 = 0;
    v10 = &v19;
    v11 = v20;
    while ( *v8 != 255 )
    {
        if ( sub_80AA6A4(v8[7]) )
        {
            if ( sub_80AA824(v8) & v11 )
            {
                ++v9;
                *v10 = 1;
                v10[1] = v8;
                v10 += 2;
            }
        }
        v8 += 16;
    }
    if ( !v9 )
        return 0;
    v13 = v9;
    __asm { SVC         6 }
    for ( i = &v19; ; i += 4 )
    {
        v18 = *i;
        _VF = __OFSUB__(v13, v18);
        v13 -= v18;
        if ( (v13 < 0) ^ _VF )
            break;
    }
    return *(i + 1);
}


// 0x80aa6a4
int __fastcall sub_80AA6A4(int a1)
{
    return (*(&JumpTable80AA6B8 + a1))();
}


// 0x80aa6e8
signed int sub_80AA6E8()
{
    return 1;
}


// 0x80aa6ec
signed int sub_80AA6EC()
{
    int v0; // r7
    signed int v1; // r6
    char v2; // zf
    int v3; // r4
    signed int v4; // r5
    _BYTE *i; // r7
    int v6; // r0
    char *v7; // r0

    v1 = 0;
    TestEventFlagFromImmediate(1, 216);
    if ( !v2 )
    {
        v3 = 0;
        v4 = 0;
        for ( i = *(v0 + 12); ; i += 4 )
        {
            v6 = *i & 0xFE;
            if ( v6 == 240 )
                break;
            if ( v6 == 16 )
            {
                v7 = sub_80182B4(i[2] + ((i[3] << 8) & 0xFFF));
                if ( !v7[1] && *v7 >= 4 )
                {
                    v4 = *v7;
                    v3 = v7[2];
                }
            }
        }
        if ( v4 >= 4 && sub_802D652(v3) >= *(&word_80AA754 + v4 - 4) )
            v1 = 1;
    }
    return v1;
}


// 0x80aa756
signed int sub_80AA756()
{
    signed int result; // r0

    result = 0;
    if ( dword_2000B30 >= 8 )
        result = 1;
    return result;
}


// 0x80aa764
signed int sub_80AA764()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(2, 18);
    if ( !v1 )
        v0 = 1;
    return v0;
}


// 0x80aa778
signed int sub_80AA778()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(2, 19);
    if ( !v1 )
        v0 = 1;
    return v0;
}


// 0x80aa78c
signed int sub_80AA78C()
{
    signed int v0; // r4
    char v1; // zf
    unsigned __int8 v2; // r0

    v0 = 0;
    TestEventFlagFromImmediate(2, 20);
    if ( !v1 )
    {
        GetPositiveSignedRNG2();
        if ( v2 <= 192 )
            v0 = 1;
    }
    return v0;
}


// 0x80aa7ac
signed int sub_80AA7AC()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(2, 21);
    if ( !v1 )
        v0 = 1;
    return v0;
}


// 0x80aa7c0
signed int sub_80AA7C0()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(2, 22);
    if ( !v1 )
        v0 = 1;
    return v0;
}


// 0x80aa7d4
signed int sub_80AA7D4()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(2, 23);
    if ( !v1 )
        v0 = 1;
    return v0;
}


// 0x80aa7e8
signed int sub_80AA7E8()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(2, 24);
    if ( !v1 )
        v0 = 1;
    return v0;
}


// 0x80aa7fc
signed int sub_80AA7FC()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(2, 25);
    if ( !v1 )
        v0 = 1;
    return v0;
}


// 0x80aa810
signed int sub_80AA810()
{
    signed int v0; // r4
    char v1; // zf

    v0 = 0;
    TestEventFlagFromImmediate(2, 34);
    if ( !v1 )
        v0 = 1;
    return v0;
}


// 0x80aa824
signed int __fastcall sub_80AA824(int a1)
{
    signed int v1; // r7
    _BYTE *v2; // r6
    int v3; // r0
    char *v4; // r0

    v1 = 0;
    v2 = *(a1 + 12);
    if ( *(a1 + 7) == 2 )
        v1 = 64;
    while ( 1 )
    {
        v3 = *v2 & 0xF0;
        if ( v3 == 240 )
            break;
        if ( v3 == 16 )
        {
            v4 = enemy_getStruct2(v2[2] + ((v2[3] << 8) & 0xFFF));
            v1 |= 1 << ((*v4 >> 12) & 0xF);
            if ( v4[2] >= 4 )
                return 32;
        }
        v2 += 4;
    }
    return v1;
}


// 0x80aa86e
void sub_80AA86E()
{
    ;
}


// 0x80aa88c
int sub_80AA88C()
{
    int v0; // r10
    unsigned int v1; // r0
    unsigned int v2; // r7
    int *v3; // r4
    signed int v4; // r6
    int v5; // r5
    char *v6; // r0
    unsigned int v7; // r7
    int v8; // r1
    int v9; // r0
    int result; // r0
    int v11; // [sp+0h] [bp-1Ch]
    __int16 v12; // [sp+4h] [bp-18h]

    GetPositiveSignedRNG2();
    v2 = v1;
    v11 = 0;
    v3 = (*(v0 + oToolkit_S2034880_Ptr) + 144);
    v4 = 0;
    do
    {
        v5 = *v3;
        if ( *v3 )
        {
            v6 = sub_80AED50(*(v5 + 40));
            v7 = v2 >> 4;
            v8 = v7 & 0x1E;
            v2 = v7 >> 5;
            v9 = *&v6[v8];
            if ( v9 != 0xFFFF )
            {
                v11 = v5;
                v12 = v9;
            }
        }
        ++v3;
        ++v4;
    }
    while ( v4 < 4 );
    result = v11;
    if ( v11 )
    {
        *(v11 + 42) = v12;
        *(v11 + 26) = 1;
    }
    return result;
}


// 0x80aa8e0
__int64 __fastcall sub_80AA8E0(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    __int64 v6; // [sp+1Ch] [bp-20h]

    v6 = 0LL;
    if ( a2 )
    {
        LODWORD(v6) = sub_80AA910(a1, a2, a3, a4);
        HIDWORD(v6) = *(*(v4 + oToolkit_S2034880_Ptr) + 54);
    }
    return v6;
}


// 0x80aa910
int __fastcall sub_80AA910(int a1, int a2, int a3, int a4)
{
    unsigned int v4; // r4
    int v5; // r5
    char v6; // r0
    int v7; // r0
    char *v8; // r0
    int result; // r0
    int v10; // r0
    char *v11; // r4
    int v12; // r0
    char *v13; // r4
    int v14; // r0
    int v15; // r2
    char *v16; // r5
    signed int v17; // r3
    signed int v19; // r2
    char *v20; // r5
    signed int v21; // r3
    int v25; // [sp+0h] [bp-40h]
    int v26; // [sp+4h] [bp-3Ch]
    int v27; // [sp+8h] [bp-38h]
    int v28; // [sp+Ch] [bp-34h]
    unsigned int v29; // [sp+10h] [bp-30h]
    int v30; // [sp+24h] [bp-1Ch]
    int v31; // [sp+28h] [bp-18h]

    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = v4;
    v6 = sub_80136CC(v5, 38);
    if ( v6 & 1 )
    {
        v7 = sub_80AAA3C(v25, v26, 0);
        v8 = sub_80AAE98(v7);
        result = sub_80AAB04(v8, v28, v4);
    }
    else if ( v6 & 2 )
    {
        v12 = sub_80AAA3C(v25, v26, 1);
        if ( v12 )
        {
            v13 = sub_80AAE98(v12);
            v14 = sub_80AAA98(v27, v28, v29, 2);
            if ( v14 >= 20 )
            {
                v13 += 20;
                v14 -= 20;
            }
            v15 = v14;
            while ( 1 )
            {
                v16 = &v13[v15];
                v31 = 0;
                v17 = 0;
                do
                {
                    if ( !(*v16 >> 14) )
                        *(&v30 + v31++) = *v16;
                    v16 -= 2;
                    ++v17;
                }
                while ( v17 < 2 );
                if ( v31 )
                    break;
                _VF = __OFSUB__(v15, 4);
                v15 -= 4;
                if ( (v15 < 0) ^ _VF )
                {
                    v19 = v14;
                    if ( v14 >= 18 )
                        goto LABEL_23;
                    while ( 1 )
                    {
                        v20 = &v13[v19];
                        v31 = 0;
                        v21 = 0;
                        do
                        {
                            if ( !(*v20 >> 14) )
                                *(&v30 + v31++) = *v20;
                            v20 -= 2;
                            ++v21;
                        }
                        while ( v21 < 2 );
                        if ( v31 )
                            goto LABEL_24;
                        v19 += 4;
                        if ( v19 >= 20 )
                            goto LABEL_23;
                    }
                }
            }
LABEL_24:
            GetPositiveSignedRNG2();
            __asm { SVC         6 }
            result = *(&v30 + v31);
        }
        else
        {
LABEL_23:
            result = -1;
        }
    }
    else
    {
        v10 = sub_80AAA3C(v25, v26, 0);
        v11 = sub_80AAE98(v10);
        result = *&v11[sub_80AAA98(v27, v28, v29, 0)];
    }
    return result;
}


// 0x80aaa1c
int __fastcall sub_80AAA1C(int a1)
{
    char *v1; // r3
    int result; // r0
    signed int v3; // r4

    v1 = sub_80AAE98(a1);
    result = 0;
    v3 = 0;
    do
    {
        result |= 1 << (*v1 >> 14);
        v1 += 2;
        ++v3;
    }
    while ( v3 < 20 );
    return result;
}


// 0x80aaa3c
int __fastcall sub_80AAA3C(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r5
    int result; // r0
    int v10; // r6
    int v11; // r0
    int v12; // r1
    int v13; // [sp+0h] [bp-20h]
    int v14; // [sp+4h] [bp-1Ch]
    int v15; // [sp+8h] [bp-18h]

    v3 = a1;
    v4 = a2;
    if ( a3 )
    {
        v15 = 0;
        v10 = 0;
        do
        {
            v11 = *(v3 + 2 * v10);
            v14 = *(v3 + 2 * v10);
            if ( sub_80AAA1C(v11) & 1 )
            {
                v12 = v15;
                *(&v13 + v15) = v14;
                v15 = v12 + 1;
            }
            ++v10;
        }
        while ( v10 < v4 );
        result = v15;
        if ( v15 )
        {
            GetPositiveSignedRNG2();
            __asm { SVC         6 }
            result = *(&v13 + v15);
        }
    }
    else
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(v3 + 2 * v4);
    }
    return result;
}


// 0x80aaa98
int __fastcall sub_80AAA98(int a1, int a2, unsigned int a3, int a4)
{
    int v4; // r4
    signed int v5; // r0
    unsigned int v6; // r0
    unsigned int v7; // r0
    int v9; // [sp+0h] [bp-20h]
    int v10; // [sp+Ch] [bp-14h]
    signed int v11; // [sp+14h] [bp-Ch]

    v9 = a1;
    v4 = a4;
    v5 = 20;
    if ( a2 > (3 * (a3 >> 3)) )
        v5 = 0;
    v11 = v5;
    GetPositiveSignedRNG2();
    v7 = v6 >> 8;
    v10 = 2 * (v7 & 1);
    if ( !v4 )
        return byte_8020B9C[16 * v9 + ((v7 >> 8) & 0xF)] + v10 + v11;
    if ( v4 != 1 )
    {
        if ( v4 != 2 )
        {
            while ( 1 )
                ;
        }
        v10 = 2;
        return byte_8020B9C[16 * v9 + ((v7 >> 8) & 0xF)] + v10 + v11;
    }
    return v10 + v11;
}


// 0x80aab04
int __fastcall sub_80AAB04(int a1, int a2, unsigned int a3)
{
    signed int v3; // r0
    signed int v4; // r4
    int v5; // r6
    _WORD *v6; // r7
    char v7; // r0
    int result; // r0
    int v13; // [sp+0h] [bp-38h]
    int v14; // [sp+0h] [bp-38h]
    int v15; // [sp+Ch] [bp-2Ch]

    v13 = a1;
    v3 = 20;
    if ( a2 > (3 * (a3 >> 3)) )
        v3 = 0;
    v14 = v3 + v13;
    v4 = 0;
    v5 = 0;
    v6 = v14;
    do
    {
        if ( *v6 >> 14 == 1 )
            *(&v15 + v5++) = *v6;
        ++v6;
        ++v4;
    }
    while ( v4 < 10 );
    if ( v5 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        result = *(&v15 + v5);
    }
    else
    {
        GetPositiveSignedRNG2();
        result = *(v14 + 2 * (v7 & 1));
    }
    return result;
}


// 0x80aab68
unsigned int __fastcall sub_80AAB68(int a1)
{
    int v1; // r4
    char v2; // r0

    v1 = a1;
    GetRNG2();
    return byte_8020B9C[16 * v1 + (v2 & 0xF)] >> 2;
}


// 0x80aab88
int __fastcall sub_80AAB88(int a1, int a2, int a3)
{
    signed int v3; // r3
    int v4; // r6
    int result; // r0

    v3 = 0;
    v4 = a1;
    do
    {
        result = ~(*(v4 + v3) | *(a2 + v3));
        *(a3 + v3++) = result;
    }
    while ( v3 < 40 );
    return result;
}


// 0x80aaba4
char *__fastcall sub_80AABA4(int a1)
{
    int v1; // r4
    _BYTE *v2; // r0
    int v3; // r1
    unsigned int v4; // r3
    int v5; // r1
    int v7; // r1
    int *v11; // r6
    int v12; // r1
    int v13; // r0
    unsigned __int8 *v14; // r0
    int v15; // r2
    signed int v16; // r3
    int v17; // r1
    int v18; // r4
    unsigned __int8 *v19; // r5
    signed int v20; // r0
    unsigned int v22; // [sp+0h] [bp-24h]
    __int64 v23; // [sp+4h] [bp-20h]
    int v24; // [sp+Ch] [bp-18h]

    v22 = sub_80AAB68(a1);
    v1 = 0;
    v23 = 0LL;
    do
    {
        if ( byte_2036750[v1 >> 3] & (0x80u >> (v1 & 7)) )
        {
            v2 = getChip8021DA8(v1);
            if ( v2[9] & 8 )
            {
                v3 = v2[5];
                v4 = 2 * *(&v23 + v3);
                *(&dword_2033000[64 * v3] + v4) = v1;
                *(&v23 + v3) = (v4 >> 1) + 1;
            }
        }
        ++v1;
    }
    while ( v1 < dword_140 );
    if ( !v23 )
        return byte_201;
    v5 = v22;
    while ( !*(&v23 + v5) )
    {
        _VF = __OFSUB__(v5--, 1);
        if ( (v5 < 0) ^ _VF )
        {
            v7 = v22;
            while ( 1 )
            {
                v5 = v7 + 4;
                if ( *(&v22 + v5) )
                    break;
                v7 = v5 + 1;
                if ( v7 >= 5 )
                {
                    while ( 1 )
                        ;
                }
            }
            break;
        }
    }
    v22 = v5;
    GetPositiveSignedRNG2();
    __asm { SVC         6 }
    v11 = &dword_2033000[64 * v22];
    v12 = 2 * *(&v22 + v22 + 4);
    v13 = *(v11 + v12);
    v24 = *(v11 + v12);
    v14 = getChip8021DA8(v13);
    v15 = 0;
    v16 = 0;
    do
    {
        v17 = v14[v16];
        if ( v17 == 26 )
            break;
        if ( v17 == 255 )
            break;
        ++v15;
        ++v16;
    }
    while ( v16 < 4 );
    v18 = v15;
    v19 = v14;
    v20 = 26;
    if ( v15 )
    {
        GetPositiveSignedRNG2();
        __asm { SVC         6 }
        v20 = v19[v18];
    }
    return ((v20 << 9) | v24);
}


// 0x80aac8c
signed int __fastcall sub_80AAC8C(int a1)
{
    unsigned __int8 v1; // r0
    unsigned int v3; // r0
    int v4; // r1
    signed int v5; // r2
    int v6; // r0
    int v7; // r1
    int v9; // r4
    int v10; // r6
    int v14; // [sp+0h] [bp-20h]
    int v15; // [sp+4h] [bp-1Ch]

    v14 = a1;
    GetPositiveSignedRNG2();
    if ( v1 < 8 && !sub_80AAE36() )
        return 0xFFFF;
    sub_80AADA6();
    sub_80AAD70(&v15);
    v3 = sub_80AAB68(v14);
    v4 = 2 * v3;
    v5 = 0;
    while ( !*(&v15 + v4) )
    {
        if ( v5 )
        {
            v4 += 2;
            if ( v4 > 10 )
            {
                v6 = 0;
                v7 = 0;
                return v6 | (v7 << 9);
            }
        }
        else
        {
            _VF = __OFSUB__(v4, 2);
            v4 -= 2;
            if ( (v4 < 0) ^ _VF )
            {
                v5 = 1;
                v4 = 2 * v3;
            }
        }
    }
    v9 = *(&v15 + v4);
    v10 = v4 >> 1;
    GetPositiveSignedRNG2();
    __asm { SVC         6 }
    v6 = sub_80AAD04(v10, v9);
    return v6 | (v7 << 9);
}


// 0x80aad04
int __fastcall sub_80AAD04(int a1, int a2)
{
    int *v2; // r6
    int v3; // r7
    int v4; // r4
    int v5; // r5
    unsigned __int8 *v6; // r0
    int *v8; // r4
    int v9; // r1
    int v10; // r3
    int v11; // ST08_4
    int v15; // r1
    unsigned __int8 *v17; // [sp+0h] [bp-28h]
    int v18; // [sp+Ch] [bp-1Ch]

    v2 = &dword_203300C;
    v3 = a1;
    v4 = a2;
    v5 = 1;
    do
    {
        v6 = *v2;
        if ( *v2 )
        {
            v6 = getChip8021DA8(v5);
            if ( v6[5] == v3 )
            {
                _VF = __OFSUB__(v4--, 1);
                if ( (v4 < 0) ^ _VF )
                    break;
            }
        }
        v2 += 3;
        ++v5;
    }
    while ( v5 < dword_140 );
    v17 = v6;
    v8 = &v18;
    v9 = 0;
    v10 = 0;
    do
    {
        if ( *(&dword_2033000[3 * v5] + v10) )
        {
            *v8 = v10;
            v8 = (v8 + 1);
            ++v9;
        }
        ++v10;
    }
    while ( v10 - 4 < 0 );
    v11 = v9;
    GetPositiveSignedRNG2();
    __asm { SVC         6 }
    v15 = v17[*(&v18 + v11)];
    return v5;
}


// 0x80aad70
char *__fastcall sub_80AAD70(_DWORD *a1)
{
    _DWORD *v1; // r7
    char **v2; // r6
    int v3; // r4
    char *result; // r0
    int v5; // r1
    int v6; // r1

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v1 = a1;
    v2 = &dword_203300C;
    v3 = 1;
    do
    {
        result = *v2;
        if ( *v2 )
        {
            result = getChip8021DA8(v3);
            v5 = result[5];
            if ( v5 != 255 )
            {
                v6 = 2 * v5;
                result = (*(v1 + v6) + 1);
                *(v1 + v6) = result;
            }
        }
        v2 += 3;
        ++v3;
    }
    while ( v3 < dword_140 );
    return result;
}


// 0x80aada6
signed int sub_80AADA6()
{
    _DWORD *v0; // r10
    _WORD *v1; // r7
    int v2; // r4
    _WORD *v3; // r7
    int v4; // r4
    __int16 *v5; // r4
    int *v6; // r7
    _BYTE *v7; // r0
    signed int result; // r0

    v1 = v0[0x12];
    v2 = 30 * *(v0[oToolkit_S2011c50_Ptr] + 5);
    do
    {
        TakeChips(*v1 & 0x1FF, *v1 / 0x200u, 1);
        ++v1;
        --v2;
    }
    while ( v2 );
    CopyWords(v0[0x13], dword_2033000, &loc_F00);
    v3 = v0[0x12];
    v4 = 30 * *(v0[oToolkit_S2011c50_Ptr] + 5);
    do
    {
        sub_8021B2A(*v3 & 0x1FF, *v3 / 0x200u, 1);
        ++v3;
        --v4;
    }
    while ( v4 );
    v5 = 0;
    v6 = dword_2033000;
    do
    {
        v7 = getChip8021DA8(v5);
        if ( v7[7] == 2 || v7[9] & 0x20 || v5 == (&dword_134 + 3) || v5 == &word_138 || v5 == (&word_138 + 1) )
            *v6 = 0;
        v6 += 3;
        v5 = (v5 + 1);
        result = 320;
    }
    while ( v5 < 320 );
    return result;
}


// 0x80aae36
signed int sub_80AAE36()
{
    unsigned int v0; // r4

    v0 = 1;
    while ( !(*(getChip8021DA8(v0) + 9) & 8) || !(byte_2036750[v0 >> 3] & (0x80u >> (v0 & 7))) )
    {
        if ( ++v0 >= dword_140 )
            return 1;
    }
    return 0;
}


// 0x80aae98
char *__fastcall sub_80AAE98(int a1)
{
    return &byte_80AAEA8[40 * a1];
}


