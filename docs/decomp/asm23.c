// 0x8088ca0
int sub_8088CA0()
{
    sub_8005D88();
    return 0;
}


// 0x8089160
signed int __fastcall sub_8089160(int a1, int a2)
{
    _BYTE *v2; // r5
    int v3; // r1
    int v4; // r2

    sub_80301B2(0, a2);
    doPETEffect_8033fc0(0, v3, v4);
    sub_8089244(0);
    *v2 = 4;
    return 1;
}


// 0x808917c
signed int __fastcall sub_808917C(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int v4; // r10
    __int16 *v5; // r7
    __int16 v6; // r0
    int v7; // r4
    signed int v8; // r7
    __int64 v9; // r0
    char *v10; // r3
    int v11; // r2
    char v12; // zf
    int v14; // [sp-Ch] [bp-20h]
    int v15; // [sp-8h] [bp-1Ch]
    int v16; // [sp-4h] [bp-18h]

    v5 = *(v4 + 4);
    if ( v5[1] & 0x200 )
    {
        PlaySoundEffect(131, 512, a3);
        *v3 = 8;
    }
    else
    {
        v6 = *v5;
        v7 = 0;
        while ( (byte_8089208[v7] & v6) != byte_8089208[v7] )
        {
            if ( ++v7 >= 8 )
                goto LABEL_12;
        }
        v8 = 0;
        if ( v6 & 2 )
            v8 = 16;
        v9 = sub_80301D0();
        v10 = &off_8089214 + 2 * v7 + v8;
        HIDWORD(v9) += v10[1] << 16;
        v14 = v9 + (*v10 << 16);
        v15 = HIDWORD(v9);
        v16 = v11;
        sub_80303FC(&v14);
        if ( !v12 )
            sub_8089370(v7);
        sub_80301DC(v14, v15, v16);
LABEL_12:
        sub_8089280();
    }
    return 1;
}


// 0x8089234
int sub_8089234()
{
    int v0; // r1
    int v1; // r2

    sub_80301BC();
    doPETEffect_8033fc0(1, v0, v1);
    return 0;
}


// 0x8089244
int __fastcall sub_8089244(int a1)
{
    int v1; // r1
    int v2; // r2

    CopyWords(&dword_87DE44C[8 * a1], byte_30016F0, 0x20u);
    decompAndCopyData(byte_8089268);
    return PlaySoundEffect(127, v1, v2);
}


// 0x8089280
int sub_8089280()
{
    int v0; // r10
    char *v1; // r0

    v1 = byte_80892A4;
    if ( (**(v0 + oToolkit_CurFramePtr) & 0x1F) < 8 )
        v1 = byte_80892F4;
    sub_8001158(v1);
    return sub_8001158(byte_8089344);
}


// 0x8089370
signed int __fastcall __noreturn sub_8089370(int a1)
{
    return sub_802FE28(*&byte_808938C[8 * a1], *&byte_808938C[8 * a1 + 4], 0, 1);
}


// 0x80895a8
int sub_80895A8()
{
    unsigned __int8 *v0; // r5

    return (*(&jt_80895C0 + *v0))();
}


// 0x808964c
signed int sub_808964C()
{
    _BYTE *v0; // r5
    int v1; // r0
    char v2; // zf
    char v3; // r0
    int v4; // r0
    int v5; // r0

    v1 = sub_814219C();
    if ( v2 )
    {
        sub_809E2AE(4);
        v3 = sub_809E2B8();
        sub_809E13C(v3);
        sub_8089CB0(0);
        *v0 = 116;
    }
    else
    {
        sub_81428D4(v1);
        sub_8142990();
        v4 = sub_8142896();
        sub_809E2AE(v4);
        v5 = sub_809E2B8();
        sub_809E13C(byte_80896A8[v5]);
        sub_8089D26();
        sub_81421C8(0);
        sub_8089CC4();
        *v0 = 4;
    }
    return 1;
}


// 0x80896b0
signed int __fastcall sub_80896B0(int a1, int a2, int a3, int a4)
{
    _BYTE *v4; // r5

    if ( !v4[19] )
    {
        sub_8089CF8(v4[19], a2, a3, a4);
        *v4 = 12;
    }
    return 1;
}


// 0x80896c4
signed int sub_80896C4()
{
    _BYTE *v0; // r5

    if ( !v0[19] )
        *v0 = 12;
    return 1;
}


// 0x80896d4
signed int __fastcall sub_80896D4(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    signed int v4; // r0
    char v5; // zf

    v4 = sub_8089704(a1, a2, a3);
    if ( !v5 )
    {
        if ( v4 == 1 )
        {
            sub_8089CC4();
        }
        else if ( v4 == 2 )
        {
            *v3 = 16;
        }
        else
        {
            sub_8089CDC();
            sub_80468EC(1);
            *v3 = 24;
        }
    }
    return 1;
}


// 0x8089704
signed int __fastcall sub_8089704(int a1, int a2, int a3)
{
    int v3; // r10
    __int16 v4; // r7
    signed int v5; // r4
    int v6; // r0
    int v7; // r1
    int v8; // r2
    char v9; // zf
    int v10; // r1
    int v11; // r2
    __int16 v12; // r7
    int v13; // r0
    unsigned __int8 v14; // vf
    int v15; // r0
    int v16; // r0

    v4 = *(*(v3 + oToolkit_JoypadPtr) + 2);
    v5 = 0;
    if ( v4 & 1 )
    {
        v6 = sub_81421D0();
        sub_8142190(v6);
        if ( v9 )
        {
            PlaySoundEffect(105, v7, v8);
        }
        else
        {
            sub_8142A84();
            if ( !v9 )
            {
                PlaySoundEffect(103, v10, v11);
                v5 = 2;
            }
        }
    }
    else if ( v4 & 2 )
    {
        PlaySoundEffect(104, a2, a3);
        v5 = 3;
    }
    else
    {
        v12 = *(*(v3 + oToolkit_JoypadPtr) + 4);
        if ( v12 & 0x40 )
        {
            PlaySoundEffect(102, a2, a3);
            v13 = sub_81421D0();
            v14 = __OFSUB__(v13, 1);
            v15 = v13 - 1;
            if ( (v15 < 0) ^ v14 )
                v15 = 3;
            sub_81421C8(v15);
            v5 = 1;
        }
        else if ( v12 & 0x80 )
        {
            PlaySoundEffect(102, a2, a3);
            v16 = sub_81421D0() + 1;
            if ( v16 >= 4 )
                v16 = 0;
            sub_81421C8(v16);
            v5 = 1;
        }
    }
    return v5;
}


// 0x8089792
signed int __fastcall sub_8089792(int a1)
{
    _BYTE *v1; // r5
    int v2; // r0

    v2 = sub_81421D0();
    sub_8089CA4(v2 + 2);
    *v1 = 20;
    return 1;
}


// 0x80897a6
signed int sub_80897A6()
{
    _BYTE *v0; // r5
    char v1; // zf
    int v2; // r0

    if ( !v0[19] )
    {
        chatbox_check_eFlags2009F38(128);
        if ( v1 )
        {
            if ( chatbox_8045F4C() )
            {
                sub_8089D26();
                *v0 = 12;
            }
            else
            {
                sub_8089D0E();
                v2 = sub_81421D0();
                sub_81421B2(v2);
                sub_80468EC(1);
                sub_8089CB0(10);
                *v0 = 32;
            }
        }
    }
    return 1;
}


// 0x80897e8
signed int sub_80897E8()
{
    _BYTE *v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        sub_8089CB4();
        if ( !v1 )
        {
            engine_setScreeneffect(4, 255);
            *v0 = 36;
        }
    }
    return 1;
}


// 0x8089808
signed int sub_8089808()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        engine_setScreeneffect(0, 16);
        sub_8089CB0(5);
        *v0 = 40;
    }
    return 1;
}


// 0x8089826
signed int __fastcall sub_8089826(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf

    sub_8089CB4();
    if ( !v2 )
    {
        sub_8142BB6();
        *v1 = 44;
    }
    return 1;
}


// 0x808983a
signed int sub_808983A()
{
    _BYTE *v0; // r5
    int v1; // r7
    char v2; // zf

    IsPaletteFadeActive();
    if ( !v2 )
    {
        sub_8089D44();
        *(v1 + 12) = sub_814216E();
        sub_8089CB0(30);
        *v0 = 48;
    }
    return 1;
}


// 0x808985a
signed int sub_808985A()
{
    _BYTE *v0; // r5
    int v1; // r7
    int v2; // r4
    char v3; // zf

    v2 = sub_8142C20(0);
    if ( sub_814216E() == v2 )
    {
        sub_8089CB4();
        if ( !v3 )
        {
            if ( sub_814216E() == *(v1 + 12) )
            {
                sub_8142ADA();
                if ( v3 )
                {
                    sub_8089CDC();
                    *v0 = 24;
                }
                else
                {
                    *v0 = 60;
                }
            }
            else
            {
                *v0 = 52;
            }
        }
    }
    return 1;
}


// 0x808989c
signed int __fastcall sub_808989C(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf

    sub_8089CB4();
    if ( !v2 )
    {
        sub_8089CA4(7);
        *v1 = 56;
    }
    return 1;
}


// 0x80898b2
signed int sub_80898B2()
{
    _BYTE *v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        sub_814216E();
        if ( v1 )
        {
            sub_8089CB0(30);
            *v0 = 92;
        }
        else
        {
            sub_8142ADA();
            if ( v1 )
            {
                sub_8089CDC();
                *v0 = 24;
            }
            else
            {
                *v0 = 60;
            }
        }
    }
    return 1;
}


// 0x80898e8
signed int __fastcall sub_80898E8(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf

    sub_8089CB4();
    if ( !v2 )
    {
        sub_8142BFA();
        *v1 = 64;
    }
    return 1;
}


// 0x80898fc
signed int sub_80898FC()
{
    _BYTE *v0; // r5

    if ( sub_8142C20(16) )
    {
        sub_8089CA4(8);
        sub_8089CB0(30);
        *v0 = 68;
    }
    return 1;
}


// 0x808991c
signed int sub_808991C()
{
    _BYTE *v0; // r5
    char v1; // zf
    int v2; // r0
    int v3; // r0

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        sub_8089CB4();
        if ( !v1 )
        {
            v2 = sub_8142B58();
            sub_809E2AE(v2);
            v3 = sub_809E2B8();
            sub_809E13C(byte_8089958[v3]);
            sub_8089CDC();
            sub_8089CB0(30);
            *v0 = 72;
        }
    }
    return 1;
}


// 0x8089960
signed int sub_8089960()
{
    _BYTE *v0; // r5
    char v1; // zf

    if ( !v0[19] )
    {
        sub_8089CB4();
        if ( !v1 )
        {
            engine_setScreeneffect(4, 255);
            *v0 = 76;
        }
    }
    return 1;
}


// 0x808997e
signed int sub_808997E()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        engine_setScreeneffect(0, 16);
        sub_8089CB0(5);
        *v0 = 80;
    }
    return 1;
}


// 0x808999c
signed int __fastcall sub_808999C(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf
    int v3; // r0
    int v4; // r0

    sub_8089CB4();
    if ( !v2 )
    {
        v3 = sub_8142224();
        if ( v3 && (sub_8142C46(v3), v4 = getPETNaviSelect(), sub_80010D4(v4)) )
        {
            sub_8089CB0(30);
        }
        else
        {
            sub_814223E();
            sub_8089CB0(30);
            *v1 = 84;
        }
    }
    return 1;
}


// 0x80899d8
signed int sub_80899D8()
{
    _BYTE *v0; // r5
    char v1; // zf

    IsPaletteFadeActive();
    if ( !v1 )
    {
        sub_8089CB4();
        if ( !v1 )
        {
            sub_8142BF4();
            *v0 = 88;
        }
    }
    return 1;
}


// 0x80899f2
signed int sub_80899F2()
{
    _BYTE *v0; // r5
    int v1; // r4

    v1 = sub_8142C20(0);
    if ( sub_814216E() == v1 )
    {
        sub_8089CDC();
        *v0 = 24;
    }
    return 1;
}


// 0x8089a10
signed int __fastcall sub_8089A10(int a1)
{
    int v1; // r5
    char v2; // zf
    char (*v3)[8]; // r0

    sub_8089CB4();
    if ( !v2 )
    {
        v3 = off_8089A40[sub_81426CE()];
        *(v1 + 60) = v3;
        sub_8036F98(v3);
        *(v1 + 19) = 1;
        sub_8089CB0(60);
        *v1 = 96;
    }
    return 1;
}


// 0x8089a60
signed int __fastcall sub_8089A60(int a1)
{
    _BYTE *v1; // r5
    int v2; // r7
    int v3; // r10
    char v4; // zf
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r0
    int v9; // r1
    int v10; // r2

    sub_8089CB4();
    if ( !v4 )
    {
        v5 = sub_81427CE();
        ClearEventFlag(v5);
        *(v2 + 16) = sub_814219C();
        sub_81422B4();
        SetEventFlagFromImmediate(7, 64);
        ClearEventFlagFromImmediate(2, 37);
        *(*(v3 + oToolkit_GameStatePtr) + oGameState_Unk_15) = 0;
        TestEventFlagFromImmediate(0, 40);
        if ( v4 && sub_81426CE() < 6 )
        {
            sub_8035408();
            PlaySoundEffect(356, v6, v7);
            v8 = sub_8036E44();
            sub_8036E78(v8, v9, v10);
        }
        sub_8089CB0(30);
        *v1 = 100;
    }
    return 1;
}


// 0x8089aca
signed int __fastcall sub_8089ACA(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf

    sub_8089CB4();
    if ( !v2 )
    {
        sub_8089CA4(12);
        sub_8089CB0(30);
        *v1 = 104;
    }
    return 1;
}


// 0x8089ae8
signed int sub_8089AE8()
{
    _BYTE *v0; // r5
    int v1; // r7
    char v2; // zf
    char v3; // r0

    chatbox_check_eFlags2009F38(128);
    if ( v2 )
    {
        sub_8089CB4();
        if ( !v2 )
        {
            sub_8036FAA();
            v0[19] = 0;
            sub_809E2AE(4);
            v3 = sub_809E2B8();
            sub_809E13C(v3);
            if ( *(v1 + 16) )
            {
                sub_8089CB0(30);
                *v0 = 108;
            }
            else
            {
                sub_8089CB0(0);
                *v0 = 112;
            }
        }
    }
    return 1;
}


// 0x8089b2e
signed int __fastcall sub_8089B2E(int a1)
{
    _BYTE *v1; // r5
    int v2; // r7
    char v3; // zf

    sub_8089CB4();
    if ( !v3 )
    {
        chatbox_8045EDC(2, *(v2 + 16));
        sub_8089CA4(17);
        sub_8089CB0(30);
        *v1 = 112;
    }
    return 1;
}


// 0x8089b54
signed int sub_8089B54()
{
    _BYTE *v0; // r5
    char v1; // zf
    char v2; // r0

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        sub_8089CB4();
        if ( !v1 )
        {
            sub_809E2AE(4);
            v2 = sub_809E2B8();
            sub_809E13C(v2);
            reqBBS_clearFlag_8140A0C();
            *v0 = 24;
        }
    }
    return 1;
}


// 0x8089b7e
signed int __fastcall sub_8089B7E(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf

    sub_8089CB4();
    if ( !v2 )
    {
        sub_8089CA4(0);
        *v1 = 120;
    }
    return 1;
}


// 0x8089b94
signed int sub_8089B94()
{
    int v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( !v1 )
        return 1;
    *(v0 + 8) = 1;
    return 0;
}


// 0x8089baa
signed int __fastcall sub_8089BAA(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf

    sub_8089CB4();
    if ( !v2 )
    {
        sub_8089CA4(13);
        *v1 = -128;
    }
    return 1;
}


// 0x8089bc0
signed int sub_8089BC0()
{
    _BYTE *v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        SetEventFlagFromImmediate(7, 69);
        v0[8] = 0;
        sub_8089CB0(30);
        *v0 = 28;
    }
    return 1;
}


// 0x8089be4
signed int __fastcall sub_8089BE4(int a1)
{
    _BYTE *v1; // r5
    char v2; // zf

    sub_8089CB4();
    if ( !v2 )
    {
        sub_8089CA4(14);
        *v1 = -120;
    }
    return 1;
}


// 0x8089bfa
signed int sub_8089BFA()
{
    _BYTE *v0; // r5
    char v1; // zf

    chatbox_check_eFlags2009F38(128);
    if ( v1 )
    {
        v0[8] = 0;
        sub_8089CB0(30);
        *v0 = 28;
    }
    return 1;
}


// 0x8089c16
signed int sub_8089C16()
{
    _BYTE *v0; // r5
    int v1; // r0
    char v2; // r0
    char v3; // zf

    if ( !v0[19] )
    {
        v0[8] = 1;
        v1 = getPETNaviSelect();
        if ( sub_80010D4(v1) )
        {
            v2 = sub_809E2B8();
            sub_809E13C(v2);
            sub_8089CB0(30);
            sub_814216E();
            if ( !v3 && (sub_814219C(), v3) )
            {
                *v0 = 124;
            }
            else
            {
                sub_8089CB0(0);
                *v0 = 28;
            }
        }
        else
        {
            v0[8] = 0;
            if ( !getPETNaviSelect() )
                sub_809E13C(58);
            sub_8089CB0(30);
            *v0 = -124;
        }
    }
    return 1;
}


// 0x8089c78
signed int __fastcall sub_8089C78(int a1)
{
    int v1; // r5
    char v2; // zf

    sub_8089CB4();
    if ( v2 )
        return 1;
    sub_8036FAA();
    *(v1 + 19) = 0;
    *(v1 + 52) = &byte_80894D4[16 * sub_81426CE()];
    return 0;
}


// 0x8089ca4
void __fastcall sub_8089CA4(int a1)
{
    int v1; // r5

    chatbox_runScript(*(v1 + 48), a1);
}


// 0x8089cb0
int __fastcall sub_8089CB0(int result)
{
    int v1; // r5

    *(v1 + 24) = result;
    return result;
}


// 0x8089cb4
signed int sub_8089CB4()
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


// 0x8089cc4
signed int sub_8089CC4()
{
    int v0; // r5
    signed int result; // r0

    sub_81429CA();
    *(v0 + 60) = byte_8089480;
    sub_8036F98(byte_8089480);
    result = 1;
    *(v0 + 19) = 1;
    return result;
}


// 0x8089cdc
char *sub_8089CDC()
{
    int v0; // r5

    *(v0 + 60) = byte_808948A;
    sub_8036F98(byte_808948A);
    *(v0 + 19) = 1;
    sub_8089D0E();
    return sub_8089D44();
}


// 0x8089cf8
int __fastcall sub_8089CF8(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    _DWORD *v5; // r7
    signed int v6; // r4
    int result; // r0

    v6 = 0;
    do
    {
        result = sub_8004822(18, a2, a3, a4);
        *v5 = v4;
        ++v5;
        ++v6;
    }
    while ( v6 < 3 );
    return result;
}


// 0x8089d0e
int sub_8089D0E()
{
    _DWORD *v0; // r7
    signed int v1; // r4
    int result; // r0

    v1 = 0;
    do
    {
        if ( *v0 )
            result = FreeOverworldMapObject();
        ++v0;
        ++v1;
    }
    while ( v1 < 3 );
    return result;
}


// 0x8089d26
char *sub_8089D26()
{
    sub_80468C6(4, 1, 0);
    sub_80468EC(0);
    return sub_80468C6(3, 0, 1);
}


// 0x8089d44
char *sub_8089D44()
{
    sub_80468EC(0);
    return sub_80468C6(3, 0, 0);
}


