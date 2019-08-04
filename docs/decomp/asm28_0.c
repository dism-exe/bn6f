// 0x8098be8
int sub_8098BE8()
{
    int v0; // r5
    int v1; // r1

    v1 = *(v0 + 6);
    if ( v1 != 255 )
    {
        addMail_802f238(v1 + 7328);
        if ( *(v0 + 7) )
        {
            ClearEventFlag(*(v0 + 6) + 7456);
            SetEventFlag(*(v0 + 6) + 7584);
        }
    }
    return 0;
}


// 0x8099218
int RunLMessageTextScript()
{
    Toolkit *tk; // r10
    char zf; // zf
    int v2; // r0
    void *v3; // r0
    int v4; // r0
    void *v5; // r0

    if ( getPETNaviSelect() )
        goto LABEL_12;
    if ( tk->gamestate->MapSelect < 128 )
    {
        TestEventFlagFromImmediate(23, 41);
        if ( !zf )
            goto LABEL_12;
        TestEventFlagFromImmediate(23, 29);
        if ( zf )
            goto LABEL_12;
        TestEventFlagFromImmediate(23, 42);
        if ( !zf )
            goto LABEL_12;
    }
    v2 = getPETNaviSelect();
    if ( GetNaviStatsByte(v2, 37) == 1 )
    {
        v3 = uncomp_8037AEC(-2005693660);
        chatbox_runScript(v3, 0);
    }
    else
    {
        v4 = getPETNaviSelect();
        if ( GetNaviStatsByte(v4, 95) != 1 )
        {
LABEL_12:
            chatbox_uncomp_803FD3C();
            chatbox_runTrainScript(tk->gamestate->scriptOffIdx_LMsg_15);
            return 0;
        }
        v5 = uncomp_8037AEC(-2005687000);
        chatbox_runScript(v5, 0);
    }
    return 0;
}


// 0x8099d44
int sub_8099D44()
{
    int v0; // r5
    char *v1; // r7
    int v2; // r1

    v1 = &byte_809929C[20 * *(v0 + 4)];
    if ( *v1 )
        *(v0 + 48) = *v1;
    *(v0 + 5) = v1[4];
    if ( v1[7] )
    {
        sub_809E2AE(v1[5]);
        (loc_809E1A4)(*(v1 + 4) << 16, *(v1 + 5) << 16, *(v1 + 6) << 16);
        sub_80301B2(0, v2);
        sub_80301DC(*(v1 + 7) << 16, *(v1 + 8) << 16, *(v1 + 9) << 16);
        ClearEventFlagFromImmediate(23, 21);
    }
    return 0;
}


// 0x8099dac
int sub_8099DAC()
{
    int v0; // r10

    sub_80301B2(1, *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 28);
    return 0;
}


// 0x8099ffc
int __fastcall sub_8099FFC(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    char v5; // r1
    int v6; // r0

    v4 = doPETEffect_8033fc0(0, a2, a3);
    (*byte_809A284)(v4);
    *(v3 + 8) = v5;
    *(v3 + 4) = v5;
    if ( *(v3 + 8) == 50 )
        v6 = sub_802D15E();
    else
        v6 = sub_803D0F4();
    *(v3 + 112) = v6;
    sub_8003984();
    sub_8003AD4();
    return 0;
}


// 0x809a02c
int sub_809A02C()
{
    int v0; // r5

    sub_809A2DC();
    *(v0 + 116) = 32;
    return 0;
}


// 0x809a03c
signed int sub_809A03C()
{
    int v0; // r5
    int v1; // r0
    signed int result; // r0

    v1 = *(v0 + 116) - 2;
    *(v0 + 116) = v1;
    if ( v1 > 21 )
    {
        sub_809A360(v1);
        result = 1;
    }
    else
    {
        *(v0 + 116) = 21;
        sub_809A360(21);
        result = 0;
    }
    return result;
}


// 0x809a05c
int sub_809A05C()
{
    int v0; // r5

    chatbox_runScript(TextScriptChipTrader86C580C, *(v0 + 8));
    sub_809A360(*(v0 + 116));
    *(v0 + 9) = 0;
    return 0;
}


// 0x809a078
signed int sub_809A078()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r0
    int v7; // r1
    int v8; // r6
    int v9; // r2
    int v10; // r2

    chatbox_check_eFlags2009F38(128);
    if ( !v2 )
    {
        chatbox_check_eFlags2009F38(8);
        if ( v2 )
        {
            sub_809A360(*(v0 + 116));
            return 1;
        }
        if ( !chatbox_8045F4C() )
        {
            sub_804A2E8(0, v3, v4, v5);
            sub_804BD00();
            word_200AC84 = v6;
            word_200AC86 = v7;
            GiveChips(v6, v7, 1);
            TakeBugfrags();
            *(*(v1 + 60) + 12) = *(*(v1 + 60) + 4);
            sub_803F798();
            v8 = *(v1 + 44);
            v9 = word_200AC84;
            *(v8 + 76) = word_200AC84;
            *(v0 + 124) = v9;
            v10 = word_200AC86;
            *(v8 + 80) = word_200AC86;
            *(v0 + 128) = v10;
            chatbox_runScript(TextScriptChipTrader86C580C, 15);
            LOWORD(dword_200ACB0) = 0;
            word_200AC84 = 0;
            word_200AC86 = 0;
            *(v0 + 6) = 0;
            *(v0 + 5) = 0;
            *(v0 + 12) = 40;
            *(v0 + 9) = 1;
        }
    }
    sub_809A360(*(v0 + 116));
    return 0;
}


// 0x809a104
signed int sub_809A104()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    signed int result; // r0

    chatbox_check_eFlags2009F38(8);
    if ( v1 && (chatbox_check_eFlags2009F38(128), !v1) || (v2 = *(v0 + 116) + 2, *(v0 + 116) = v2, v2 < 32) )
    {
        sub_809A360(*(v0 + 116));
        result = 1;
    }
    else
    {
        *(v0 + 116) = 32;
        sub_809A360(*(v0 + 116));
        result = 0;
    }
    return result;
}


// 0x809a138
signed int sub_809A138()
{
    int v0; // r5
    int v2; // r0
    int v4; // r0

    TestEventFlagFromImmediate(0, 246);
    if ( !_ZF )
    {
        v2 = *(v0 + 12);
        _VF = __OFSUB__(v2, 1);
        v4 = v2 - 1;
        if ( (v4 < 0) ^ _VF )
        {
            *(v0 + 112) = sub_803D0F4();
            TestEventFlagFromImmediate(0, 245);
            if ( !_ZF )
            {
                *(v0 + 4) = 32;
                sub_809A308();
                sub_8046664();
                sub_80465A0(byte_8099E90);
                sub_811980C(*(v0 + 124), *(v0 + 128), 0, 0);
                sub_8119854(-48, 88, 0);
                ClearEventFlagFromImmediate(0, 246);
                return 0;
            }
        }
        else
        {
            *(v0 + 12) = v4;
            __asm { SVC         6 }
        }
    }
    sub_809A360(*(v0 + 116));
    return 1;
}


// 0x809a1b4
signed int sub_809A1B4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r6
    char v4; // zf
    signed int result; // r0

    v2 = *(v0 + 4) + 16;
    if ( v2 > 96 )
    {
        v3 = *(v1 + 44);
        *(v0 + 6) = *(v3 + 76);
        *(v0 + 5) = *(v3 + 80);
        v2 = 96;
    }
    *(v0 + 4) = v2;
    sub_8119854(v2 - 48, 88, 0);
    sub_80465BC();
    sub_80465F8();
    sub_809A360(*(v0 + 116));
    TestEventFlagFromImmediate(0, 245);
    if ( v4 )
        result = 0;
    else
        result = 1;
    return result;
}


// 0x809a1fc
signed int sub_809A1FC()
{
    int v0; // r5
    int v1; // r0
    char v2; // zf
    signed int result; // r0

    v1 = *(v0 + 4) - 16;
    if ( v1 < 0 )
        v1 = 0;
    *(v0 + 4) = v1;
    sub_8119854(v1 - 48, 88, 0);
    sub_80465BC();
    sub_80465F8();
    chatbox_check_eFlags2009F38(8);
    if ( v2 )
    {
        sub_809A360(*(v0 + 116));
        result = 1;
    }
    else
    {
        if ( sub_803D0F4() < 10 || chatbox_8045F4C() )
        {
            *(v0 + 9) = 0;
            sub_809A360(*(v0 + 116));
        }
        else
        {
            *(v0 + 9) = 1;
            sub_809A360(*(v0 + 116));
        }
        result = 0;
    }
    return result;
}


// 0x809a260
int __fastcall sub_809A260(int a1, int a2, int a3)
{
    doPETEffect_8033fc0(1, a2, a3);
    copyMemory_8001850();
    sub_8033978();
    sub_8003962();
    zeroFill_8003AB2();
    sub_800399A();
    sub_8003AEA();
    return 0;
}


// 0x809a2dc
void sub_809A2DC()
{
    decompAndCopyData(byte_809A2EC);
}


// 0x809a308
void sub_809A308()
{
    decompAndCopyData(&initRefs_809A318);
}


// 0x809a334
void sub_809A334()
{
    decompAndCopyData(&initRefs_809A344);
}


// 0x809a360
int __fastcall sub_809A360(int a1)
{
    int v1; // r5
    int v2; // r10
    int v3; // r7

    v3 = a1;
    *(*(v2 + oToolkit_Unk200a220_Ptr) + 8) = *(v1 + 112);
    CopyBackgroundTiles(a1, 0, 0, byte_86C54D4, 9, dword_4 + 1);
    CopyBackgroundTiles(v3 + 1, 2, 0, byte_8099E5C, 7, &byte_0[2]);
    return renderTextGfx_8045F8C(TextScriptChipTrader86C580C, 64, &unk_200EF40, 100717568);
}


// 0x809a3bc
int sub_809A3BC()
{
    int v0; // r5

    sub_809A334();
    *(v0 + 116) = 32;
    return 0;
}


// 0x809a3cc
signed int sub_809A3CC()
{
    int v0; // r5
    int v1; // r0
    signed int result; // r0

    v1 = *(v0 + 116) - 2;
    *(v0 + 116) = v1;
    if ( v1 > 21 )
    {
        sub_809A80C(v1);
        result = 1;
    }
    else
    {
        *(v0 + 116) = 21;
        sub_809A80C(21);
        result = 0;
    }
    return result;
}


// 0x809a3ec
int __noreturn sub_809A3EC()
{
    int v0; // r5

    chatbox_runScript(TextScriptChipTrader86C580C, *(v0 + 8));
    sub_809A80C(*(v0 + 116));
    return 0;
}


// 0x809a404
signed int sub_809A404()
{
    int v0; // r5
    char v1; // zf

    sub_809A80C(*(v0 + 116));
    chatbox_check_eFlags2009F38(8);
    if ( v1 )
        return 1;
    if ( chatbox_8045F4C() )
    {
        *(v0 + 9) = 0;
    }
    else
    {
        chatbox_runScript(TextScriptChipTrader86C580C, 51);
        ClearEventFlagFromImmediate(23, 37);
        *(v0 + 132) = 8;
        *(v0 + 9) = 1;
    }
    return 0;
}


// 0x809a44c
signed int sub_809A44C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r2
    char v3; // zf
    int v4; // r0
    int v5; // r1

    sub_809A80C(*(v0 + 116));
    TestEventFlagFromImmediate(23, 37);
    if ( !v3 )
    {
        v4 = *(v0 + 132);
        if ( v4 )
            *(v0 + 132) = v4 - 1;
        v5 = *(*(v1 + oToolkit_JoypadPtr) + 2) & 2;
        if ( *(*(v1 + oToolkit_JoypadPtr) + 2) & 2 )
        {
            *(v0 + 9) = 1;
            PlaySoundEffect(104, v5, v2);
            chatbox_8040818();
            return 0;
        }
    }
    chatbox_check_eFlags2009F38(8);
    if ( !v3 )
    {
        *(v0 + 136) = *(*(v1 + oToolkit_ChatboxPtr) + 76);
        sub_809A868();
        chatbox_runScript(TextScriptChipTrader86C580C, 53);
        *(v0 + 9) = 0;
        return 0;
    }
    return 1;
}


// 0x809a4b8
signed int sub_809A4B8()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    signed int result; // r0

    chatbox_check_eFlags2009F38(8);
    if ( v1 && (chatbox_check_eFlags2009F38(128), !v1) || (v2 = *(v0 + 116) + 2, *(v0 + 116) = v2, v2 < 32) )
    {
        sub_809A80C(*(v0 + 116));
        result = 1;
    }
    else
    {
        *(v0 + 116) = 32;
        sub_809A80C(*(v0 + 116));
        result = 0;
    }
    return result;
}


// 0x809a4ec
int sub_809A4EC()
{
    int v0; // r1
    int v1; // r2

    ClearEventFlagFromImmediate(0, 245);
    ClearEventFlagFromImmediate(23, 37);
    doPETEffect_8033fc0(1, v0, v1);
    copyMemory_8001850();
    sub_8033978();
    sub_8003962();
    zeroFill_8003AB2();
    sub_800399A();
    sub_8003AEA();
    return 0;
}


// 0x809a520
signed int sub_809A520()
{
    int v0; // r5
    int v1; // r10
    signed int v3; // r0
    int v4; // r1
    signed int v5; // r2
    int v6; // r3
    int v7; // r0
    int i; // r6
    signed int v9; // r0
    int v10; // r1
    int v11; // r2
    __int16 v12; // r0

    sub_809A80C(*(v0 + 116));
    chatbox_check_eFlags2009F38(128);
    if ( _ZF )
        return 1;
    chatbox_check_eFlags2009F38(32);
    if ( _ZF )
        return 1;
    if ( chatbox_8045F4C() )
    {
        chatbox_runScript(TextScriptChipTrader86C580C, 51);
        *(v0 + 132) = 8;
        *(v0 + 9) = 0;
    }
    else
    {
        v3 = sub_813D48C(*(v0 + 136));
        if ( v3 && v3 != 2 )
        {
            if ( v4 == 1 )
            {
                *(*(v1 + oToolkit_ChatboxPtr) + 76) = v5;
                if ( v5 == 134 )
                {
                    for ( i = 0; ; ++i )
                    {
                        v9 = byte_809A628[i];
                        if ( v9 == 255 )
                            break;
                        sub_803CD98(v9, 1);
                    }
                }
                else
                {
                    sub_803CD98(v5, 1);
                }
                *(v0 + 140) = 56;
            }
            else if ( v4 == 2 )
            {
                *(*(v1 + oToolkit_ChatboxPtr) + 76) = v5;
                GiveBugfrags();
                *(v0 + 140) = 57;
            }
            else
            {
                *(v0 + 124) = v5;
                *(v0 + 128) = v6;
                v7 = *(v1 + oToolkit_ChatboxPtr);
                *(v7 + 76) = v5;
                *(v7 + 80) = v6;
                GiveChips(v5, v6, 1);
                *(v0 + 140) = 55;
            }
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_LastMapGroup) = *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup);
            sub_803F798();
            sub_803F9E4();
            *(v0 + 9) = 1;
            PlaySoundEffect(138, v10, v11);
            v12 = sub_809A880();
            *(v0 + 26) = v12;
            *(v0 + 14) = *(&off_809A624 + *(v0 + 136));
            *(v0 + 12) = 10;
            __asm { SVC         6 }
            *(v0 + 15) = v12;
        }
        else
        {
            chatbox_runScript(TextScriptChipTrader86C580C, 54);
            *(v0 + 9) = 2;
        }
    }
    return 0;
}


// 0x809a630
signed int sub_809A630()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0

    TestEventFlagFromImmediate(0, 246);
    if ( !v1 )
    {
        v2 = *(v0 + 12);
        v3 = __OFSUB__(v2, 1);
        v4 = v2 - 1;
        if ( (v4 < 0) ^ v3 )
        {
            *(v0 + 112) = sub_802D15E();
            TestEventFlagFromImmediate(0, 245);
            if ( !v1 )
            {
                *(v0 + 4) = 32;
                sub_809A308();
                sub_8046664();
                sub_80465A0(byte_8099E90);
                sub_811980C(*(v0 + 124), *(v0 + 128), 0, 0);
                sub_8119854(-48, 88, 0);
                ClearEventFlagFromImmediate(0, 246);
                return 0;
            }
        }
        else
        {
            *(v0 + 12) = v4;
            *(v0 + 112) -= *(v0 + 15);
        }
    }
    sub_809A80C(*(v0 + 116));
    return 1;
}


// 0x809a6a4
signed int sub_809A6A4()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r6
    char v4; // zf
    signed int result; // r0

    v2 = *(v0 + 4) + 16;
    if ( v2 > 96 )
    {
        v3 = *(v1 + oToolkit_ChatboxPtr);
        *(v0 + 6) = *(v3 + 76);
        *(v0 + 5) = *(v3 + 80);
        v2 = 96;
    }
    *(v0 + 4) = v2;
    sub_8119854(v2 - 48, 88, 0);
    sub_80465BC();
    sub_80465F8();
    sub_809A80C(*(v0 + 116));
    TestEventFlagFromImmediate(0, 245);
    if ( v4 )
        result = 0;
    else
        result = 1;
    return result;
}


// 0x809a6ec
signed int sub_809A6EC()
{
    int v0; // r5
    int v1; // r0
    char v2; // zf
    signed int result; // r0

    v1 = *(v0 + 4) - 16;
    if ( v1 < 0 )
        v1 = 0;
    *(v0 + 4) = v1;
    sub_8119854(v1 - 48, 88, 0);
    sub_80465BC();
    sub_80465F8();
    chatbox_check_eFlags2009F38(8);
    if ( v2 )
    {
        sub_809A80C(*(v0 + 116));
        result = 1;
    }
    else
    {
        if ( chatbox_8045F4C() )
        {
            *(v0 + 9) = 0;
        }
        else
        {
            chatbox_runScript(TextScriptChipTrader86C580C, 51);
            ClearEventFlagFromImmediate(23, 37);
            *(v0 + 132) = 8;
            *(v0 + 9) = 1;
        }
        sub_809A80C(*(v0 + 116));
        result = 0;
    }
    return result;
}


// 0x809a75c
int sub_809A75C()
{
    int v0; // r5
    char v1; // r1

    sub_809A80C(*(v0 + 116));
    chatbox_runScript(TextScriptChipTrader86C580C, *(v0 + 140));
    v1 = 1;
    if ( *(v0 + 140) != 55 )
        v1 = 0;
    *(v0 + 9) = v1;
    return 0;
}


// 0x809a784
signed int sub_809A784()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    signed int result; // r0

    chatbox_check_eFlags2009F38(128);
    if ( v1 && (v2 = *(v0 + 116) + 2, *(v0 + 116) = v2, v2 >= 32) )
    {
        *(v0 + 116) = 32;
        sub_809A80C(*(v0 + 116));
        result = 0;
    }
    else
    {
        sub_809A80C(*(v0 + 116));
        result = 1;
    }
    return result;
}


// 0x809a7b0
signed int sub_809A7B0()
{
    int v0; // r5
    int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r0
    char v4; // zf

    v1 = *(v0 + 12);
    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if ( !((v3 < 0) ^ v2) )
    {
        *(v0 + 12) = v3;
        *(v0 + 112) -= *(v0 + 15);
LABEL_8:
        sub_809A80C(*(v0 + 116));
        return 1;
    }
    chatbox_check_eFlags2009F38(32);
    if ( v4 )
        goto LABEL_8;
    if ( chatbox_8045F4C() )
    {
        chatbox_8040818();
        *(v0 + 9) = 1;
    }
    else
    {
        sub_809A80C(*(v0 + 116));
        *(v0 + 9) = 0;
        chatbox_runScript(TextScriptChipTrader86C580C, 51);
        ClearEventFlagFromImmediate(23, 37);
        *(v0 + 132) = 8;
    }
    return 0;
}


// 0x809a80c
int __fastcall sub_809A80C(int a1)
{
    int v1; // r5
    Toolkit *tk; // r10
    int v3; // r7

    v3 = a1;
    *(tk->unk_200A220 + 2) = *(v1 + 112);
    CopyBackgroundTiles(a1, 0, 0, tileIds86C5790, 9, dword_4 + 1);
    CopyBackgroundTiles(v3 + 2, 2, 0, tileIds8099E78, 6, &byte_0[2]);
    return renderTextGfx_8045F8C(&eTextScript2033404, 6, &unk_200EF40, 100717568);
}


// 0x809a868
int sub_809A868()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int result; // r0

    v2 = *(v1 + oToolkit_ChatboxPtr);
    *(v2 + 76) = *(&dword_809A890 + *(v0 + 136));
    result = 0;
    *(v2 + 80) = 0;
    return result;
}


// 0x809a880
int sub_809A880()
{
    int v0; // r5

    return *(&dword_809A890 + *(v0 + 136));
}


// 0x809a8e4
int __fastcall sub_809A8E4(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r6
    int v6; // r2
    int v7; // r2
    char v8; // r1

    doPETEffect_8033fc0(0, a2, a3);
    v5 = *(v4 + oToolkit_ChatboxPtr);
    v6 = word_200AC84;
    *(v5 + 76) = word_200AC84;
    *(v3 + 124) = v6;
    v7 = word_200AC86;
    *(v5 + 80) = word_200AC86;
    *(v3 + 128) = v7;
    v8 = 3;
    if ( dword_200ACB0 != 3 )
        v8 = 9;
    *(v3 + 4) = v8;
    LOWORD(dword_200ACB0) = 0;
    word_200AC84 = 0;
    word_200AC86 = 0;
    *(v3 + 6) = 0;
    *(v3 + 5) = 0;
    sub_8003984();
    sub_8003AD4();
    sub_8046664();
    decompAndCopyData(byte_809A934);
    return 0;
}


// 0x809a950
signed int sub_809A950()
{
    int v0; // r5
    char v1; // zf

    TestEventFlagFromImmediate(0, 245);
    if ( v1 )
        return 1;
    *(v0 + 4) = 0;
    sub_80465A0(byte_809A898);
    sub_811980C(*(v0 + 124), *(v0 + 128), 0, 0);
    sub_8119854(-48, 88, 0);
    return 0;
}


// 0x809a98c
signed int sub_809A98C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r6
    char v4; // zf
    signed int result; // r0

    v2 = *(v0 + 4) + 16;
    if ( v2 > 96 )
    {
        v3 = *(v1 + oToolkit_ChatboxPtr);
        *(v0 + 6) = *(v3 + 76);
        *(v0 + 5) = *(v3 + 80);
        v2 = 96;
    }
    *(v0 + 4) = v2;
    sub_8119854(v2 - 48, 88, 0);
    sub_80465BC();
    sub_80465F8();
    TestEventFlagFromImmediate(0, 245);
    if ( v4 )
        result = 0;
    else
        result = 1;
    return result;
}


// 0x809a9cc
signed int sub_809A9CC()
{
    int v0; // r5
    int v1; // r0
    char v2; // zf
    signed int result; // r0

    v1 = *(v0 + 4) - 16;
    if ( v1 < 0 )
        v1 = 0;
    *(v0 + 4) = v1;
    sub_8119854(v1 - 48, 88, 0);
    sub_80465BC();
    sub_80465F8();
    chatbox_check_eFlags2009F38(128);
    if ( v2 )
        result = 0;
    else
        result = 1;
    return result;
}


// 0x809aa04
int __fastcall sub_809AA04(int a1, int a2, int a3, int a4)
{
    int v4; // r1
    int v5; // r2

    sub_8003962();
    zeroFill_8003AB2();
    sub_800399A();
    sub_8003AEA();
    doPETEffect_8033fc0(1, v4, v5);
    return 0;
}


// 0x809aab8
int __fastcall sub_809AAB8(int a1, int a2, int a3)
{
    int v3; // r5
    int result; // r0

    doPETEffect_8033fc0(0, a2, a3);
    sub_8003984();
    sub_8003AD4();
    chatbox_runScript(&eTextScript2033404, 10);
    sub_8046664();
    result = 0;
    *(v3 + 8) = 0;
    return result;
}


// 0x809aadc
signed int sub_809AADC()
{
    int v0; // r5
    char v1; // zf
    signed int result; // r0

    chatbox_check_eFlags2009F38(8);
    if ( v1 )
        return 1;
    if ( chatbox_8045F4C() )
    {
        chatbox_runScript(&eTextScript2033404, 11);
        result = 0;
        *(v0 + 8) = 0;
    }
    else
    {
        chatbox_runScript(&eTextScript2033404, 12);
        *(v0 + 8) = 1;
        ClearEventFlagFromImmediate(23, 37);
        *(v0 + 132) = 8;
        result = 0;
    }
    return result;
}


// 0x809ab20
signed int sub_809AB20()
{
    int v0; // r4
    int v1; // r5
    int v2; // r10
    int v3; // r2
    char v4; // zf
    int v5; // r0
    int v6; // r1
    signed int v7; // r0
    int v8; // r1
    signed int v9; // r2
    int v10; // r3
    int v11; // r4
    signed int v12; // r0
    char v13; // r1
    int v15; // [sp-8h] [bp-1Ch]
    int v16; // [sp-4h] [bp-18h]

    TestEventFlagFromImmediate(23, 37);
    if ( !v4 )
    {
        v5 = *(v1 + 132);
        if ( v5 )
            *(v1 + 132) = v5 - 1;
        v6 = *(*(v2 + oToolkit_JoypadPtr) + 2) & 2;
        if ( *(*(v2 + oToolkit_JoypadPtr) + 2) & 2 )
        {
            *(v1 + 8) = 4;
            PlaySoundEffect(104, v6, v3);
            chatbox_runScript(&eTextScript2033404, 11);
            return 0;
        }
    }
    chatbox_check_eFlags2009F38(8);
    if ( !v4 )
    {
        CopyWords(*(v2 + oToolkit_ChatboxPtr) + 76, &v15, 8u);
        v7 = sub_813D41C(&v15);
        *(v1 + 120) = v0;
        if ( v7 == 1 )
        {
            v11 = *(v2 + oToolkit_ChatboxPtr);
            *(v11 + offsetof(ChatBoxPropreties, unk_4C)) = v9;
            *(v11 + offsetof(ChatBoxPropreties, unk_50)) = v10;
            if ( v8 == 1 )
            {
                v16 = v9;
                sub_803CD98(v9, 1);
                v12 = sub_809AC48(v16);
                v13 = 3;
            }
            else if ( v8 == 2 )
            {
                if ( sub_803CD98(v9, 1) )
                {
                    v12 = 18;
                    v13 = 0;
                }
                else
                {
                    v12 = 17;
                    v13 = 3;
                }
            }
            else
            {
                if ( v8 == 3 )
                {
                    *(v11 + 76) = v9;
                    GiveNaviCustPrograms(v9, v10, 1);
                    v12 = 19;
                }
                else
                {
                    *(v1 + 124) = v9;
                    *(v1 + 128) = v10;
                    *(v1 + 6) = 0;
                    *(v1 + 5) = 0;
                    GiveChips(v9, v10, 1);
                    decompAndCopyData(&dword_809AC2C);
                    v12 = 15;
                }
                v13 = 3;
            }
            *(v1 + 116) = v12;
            *(v1 + 8) = v13;
            chatbox_runScript(&TextScriptLottery86C67E4, 14);
        }
        else
        {
            if ( v7 == 2 )
                chatbox_runScript(&eTextScript2033404, 20);
            else
                chatbox_runScript(&eTextScript2033404, 13);
            *(v1 + 8) = 1;
        }
        return 0;
    }
    return 1;
}


// 0x809ac48
signed int __fastcall sub_809AC48(int a1)
{
    char *v1; // r1
    int v2; // r2
    int v3; // r3

    v1 = &byte_809AC68;
    while ( 1 )
    {
        v2 = *v1;
        v3 = v1[1];
        v1 += 2;
        if ( v2 == 255 )
            break;
        if ( a1 == v2 )
            return v3;
    }
    return 26;
}


// 0x809ac70
int sub_809AC70()
{
    int v0; // r5

    ClearEventFlag(*(v0 + 120));
    chatbox_runScript(&TextScriptLottery86C67E4, *(v0 + 116));
    return 0;
}


// 0x809ac88
int sub_809AC88()
{
    int v0; // r5
    char v1; // r1

    chatbox_runScript(&TextScriptLottery86C67E4, *(v0 + 116));
    v1 = 28;
    if ( *(v0 + 116) != 15 )
        v1 = 0;
    *(v0 + 8) = v1;
    return 0;
}


// 0x809aca4
int sub_809ACA4()
{
    int v0; // r5

    *(v0 + 4) = 0;
    sub_80465A0(byte_809AA24);
    sub_811980C(*(v0 + 124), *(v0 + 128), 0, 0);
    sub_8119854(-48, 88, 0);
    return 0;
}


// 0x809acd0
signed int sub_809ACD0()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r6
    signed int v4; // r7

    v2 = *(v0 + 4) + 16;
    if ( v2 <= 96 )
    {
        *(v0 + 4) = v2;
        sub_8119854(v2 - 48, 88, 0);
        v4 = 1;
    }
    else
    {
        v3 = *(v1 + 44);
        *(v0 + 6) = *(v3 + 76);
        *(v0 + 5) = *(v3 + 80);
        *(v0 + 4) = 96;
        v4 = 0;
    }
    sub_80465BC();
    sub_80465F8();
    return v4;
}


// 0x809ad0c
signed int sub_809AD0C()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    signed int v3; // r7

    TestEventFlagFromImmediate(0, 245);
    if ( !v1 )
    {
        v2 = *(v0 + 4) - 16;
        if ( v2 < 0 )
            v2 = 0;
        *(v0 + 4) = v2;
        sub_8119854(v2 - 48, 88, 0);
    }
    sub_80465BC();
    sub_80465F8();
    v3 = 1;
    chatbox_check_eFlags2009F38(128);
    if ( v1 )
        v3 = 0;
    return v3;
}


// 0x809ad4c
int sub_809AD4C()
{
    int v0; // r1
    int v1; // r2

    ClearEventFlagFromImmediate(0, 245);
    ClearEventFlagFromImmediate(23, 37);
    doPETEffect_8033fc0(1, v0, v1);
    sub_8003962();
    zeroFill_8003AB2();
    sub_800399A();
    sub_8003AEA();
    return 0;
}


// 0x809ada8
int sub_809ADA8()
{
    sub_8136D8C();
    return 0;
}


// 0x809af00
int sub_809AF00()
{
    int v0; // r5
    int v1; // r10
    char *v2; // r7
    int v3; // r4
    unsigned int v4; // r0
    char v5; // r4
    int v6; // r1
    char v7; // zf

    v2 = &byte_809ADB4[60 * *(*(v1 + 60) + 18)];
    (loc_809E1A4)(*(v2 + 9), *(v2 + 10), 0);
    sub_809E2AE(*(v2 + 11));
    sub_809E13C(*(v2 + 11));
    sub_809E2FC();
    sub_809E4F8();
    v3 = *(v2 + 14);
    SpawnOverworldMapObject(46, *(v2 + 12), *(v2 + 13), 0);
    v4 = *(v2 + 8);
    if ( v4 )
        SetEventFlag(v4);
    v5 = 45;
    TestEventFlagFromImmediate(23, 41);
    if ( !v7 )
        v5 = 46;
    *(v0 + 4) = v5;
    sub_80301B2(0, v6);
    sub_80301DC((*(v2 + 9) + *(v2 + 12)) >> 1, (*(v2 + 10) + *(v2 + 13)) >> 1, 0);
    return 0;
}


// 0x809af7c
int sub_809AF7C()
{
    int v0; // r5
    int v1; // r10
    char *v2; // r7
    signed int v3; // r6
    char v4; // zf
    int v5; // r7

    v2 = &byte_809ADB4[60 * *(*(v1 + 60) + 18)];
    v3 = 0;
    TestEventFlagFromImmediate(23, 41);
    if ( v4 )
        v3 = 16;
    v5 = &v2[v3];
    *(v0 + 52) = v5;
    (loc_809E1A4)(*(v5 + 4), *(v5 + 8), *(v5 + 12));
    sub_809E2AE(*(v5 + 3));
    sub_809E13C(*(v5 + 3));
    sub_809E2FC();
    return 0;
}


// 0x809b00c
int sub_809B00C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    signed __int16 v4; // r0

    v2 = *(v1 + oToolkit_GameStatePtr);
    *(v0 + 4) = *(&dword_809B050 + sub_8031A7A(*(v2 + oGameState_OverworldPlayerObjectPtr) + 28) - 192);
    *(v0 + 5) = 26;
    v3 = 2;
    if ( *(*(v2 + oGameState_OverworldPlayerObjectPtr) + 36) >> 16 < 60 )
        v3 = 3;
    *(v0 + 6) = v3;
    if ( v3 == 2 )
        v4 = 0;
    else
        v4 = 24;
    *(v0 + 26) = v4;
    *(v0 + 24) = -1;
    return 0;
}


// 0x809b054
signed int sub_809B054()
{
    unsigned __int8 *v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    int v4; // r1
    unsigned __int16 *v6; // r3
    int v7; // ST04_4
    int v8; // ST08_4
    int v9; // ST0C_4
    int v10; // r1
    int v11; // r2
    int v12; // r3
    unsigned __int16 *v13; // r3
    int v14; // ST04_4
    int v15; // ST08_4
    int v16; // ST0C_4

    v2 = *(v1 + 60);
    v3 = 2;
    if ( *(*(v2 + 24) + 36) >> 16 < 60 )
        v3 = 3;
    v0[7] = v3;
    v4 = v0[6];
    if ( v4 == 2 )
    {
        if ( v0[16] )
            return 1;
        v13 = *(v2 + 24);
        v14 = v13[15] - 64;
        v15 = v13[17] + 64;
        v16 = v13[19] + 80;
        PlaySoundEffect(226, v14, v15);
        (loc_809E2FE)(4);
        v10 = v14;
        v11 = v15;
        v12 = v16;
    }
    else
    {
        if ( v3 == v4 )
            return 1;
        v6 = *(v2 + 24);
        v7 = v6[15] - 64;
        v8 = v6[17] + 64;
        v9 = v6[19] + 64;
        PlaySoundEffect(225, v7, v8);
        sub_809E2FC();
        v10 = v7;
        v11 = v8;
        v12 = v9;
    }
    SpawnOverworldMapObject(11, v10 << 16, v11 << 16, v12 << 16);
    return 0;
}


// 0x809b0d8
signed int sub_809B0D8()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0
    __int16 v6; // r0
    int v7; // r4

    if ( *(v0 + 6) == 2 )
    {
        v2 = *(v0 + 26);
        v3 = __OFSUB__(v2--, 1);
        *(v0 + 26) = v2;
        if ( !(((v2 < 0) ^ v3) | (v2 == 0)) )
            return 1;
LABEL_8:
        v6 = *(v0 + 24) + 1;
        *(v0 + 24) = v6;
        if ( !(v6 & 7) )
        {
            v7 = (*(v0 + 7) << 16) | 0x48000001;
            SpawnOverworldMapObject(11, *(*(*(v1 + 60) + 24) + 28), *(*(*(v1 + 60) + 24) + 32), *(*(*(v1 + 60) + 24) + 36));
        }
        return 1;
    }
    v4 = *(v0 + 26);
    v3 = __OFSUB__(v4--, 1);
    *(v0 + 26) = v4;
    if ( !(((v4 < 0) ^ v3) | (v4 == 0)) )
    {
        if ( *(v0 + 7) != 2 )
            return 1;
        goto LABEL_8;
    }
    return 1;
}


// 0x809b130
int sub_809B130()
{
    int v0; // r10
    signed int v1; // r0
    unsigned __int8 v2; // vf
    int v3; // r0
    int v4; // r2
    int v5; // r3
    char v6; // zf

    v1 = sub_8031A7A(*(*(v0 + 60) + 24) + 28);
    v2 = __OFSUB__(v1, 192);
    v3 = v1 - 192;
    if ( !((v3 < 0) ^ v2) && v3 <= 15 )
    {
        TestEventFlagFromImmediate(23, 41);
        if ( v6 )
            init_s_02011C50_8036E90(134841220, 134283266, v4, v5);
        else
            init_s_02011C50_8036E90(byte_809AFC0, 0, v4, v5);
    }
    return 0;
}


// 0x809b7a4
int sub_809B7A4()
{
    int v0; // r5
    int v1; // r10
    char *v2; // r4
    int v3; // r0

    v2 = &byte_809B7D4[4 * *(*(v1 + 60) + 4)];
    *(v0 + 4) = *v2;
    v3 = v2[1];
    *(v0 + 5) = v3;
    sub_809E2AE(v3);
    sub_809E13C(v2[2]);
    *(*(v1 + 20) + 16) = 0;
    return 0;
}


// 0x809b7ec
int __fastcall sub_809B7EC(int a1)
{
    int v1; // r5

    *(v1 + 5) = (sub_809E2B8() + 4) & 7;
    return 0;
}


// 0x809b800
int sub_809B800()
{
    int v0; // r5
    char *v1; // r7
    int *v2; // r6
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v7; // [sp+0h] [bp-18h]

    v1 = &byte_809B174[52 * *(v0 + 8)];
    *(v0 + 52) = v1;
    v2 = (v0 + 112);
    v3 = *(v1 + 8) << 16;
    *v2 = v3;
    v4 = *(v1 + 9) << 16;
    v2[1] = v4;
    v5 = *(v1 + 10) << 16;
    v2[2] = v5;
    v2[3] = *(v1 + 11) >> 1;
    SpawnOverworldMapObject(12, v3, v4, v5);
    v2[4] = v0;
    v2[5] = *(v1 + 15);
    v2[7] = 0;
    *(v7 + 20) = 0;
    SetEventFlagFromImmediate(0, 56);
    SetEventFlagFromImmediate(0, 57);
    if ( *(v1 + 16) )
        ClearEventFlag(*(v1 + 16));
    return 0;
}


// 0x809b868
int sub_809B868()
{
    int v0; // r5

    *(v0 + 52) = &byte_809B174[52 * *(v0 + 8)];
    SetEventFlagFromImmediate(0, 56);
    SetEventFlagFromImmediate(0, 57);
    return 0;
}


// 0x809b890
signed int __fastcall sub_809B890(int a1, int a2, int a3)
{
    _DWORD *v3; // r5
    unsigned __int16 *v4; // r7
    int v5; // r0
    unsigned __int8 v6; // vf
    int v7; // r0
    int v8; // r3
    int v9; // r0
    int v11; // r5
    int v12; // r1
    int v13; // r2
    char v14; // zf
    int v15; // [sp-8h] [bp-1Ch]

    v4 = v3[13];
    ++v3[5];
    v5 = v3[33];
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if ( !((v7 < 0) ^ v6) )
        v3[33] = v7;
    v8 = v3[5];
    v9 = v4[12];
    if ( v8 >= v9 )
    {
        v9 = v4[13];
        if ( v8 >= v9 )
        {
            v9 = v4[14];
            if ( v8 >= v9 )
                return 0;
        }
    }
    sub_809B9EC(v9, a2, a3, byte_809B8F0);
    if ( !v3[35] )
    {
        v15 = (v3 + 28);
        v11 = v3[32];
        sub_8002E04();
        if ( !v14 )
        {
            *(v15 + 28) = 1;
            PlaySoundEffect(396, v12, v13);
        }
    }
    return 1;
}


// 0x809b910
int sub_809B910()
{
    int v0; // r5
    int v1; // r7
    _DWORD *v2; // r6

    v1 = *(v0 + 52);
    v2 = (v0 + 112);
    *v2 = *(v1 + 34) << 16;
    v2[1] = *(v1 + 36) << 16;
    v2[2] = *(v1 + 38) << 16;
    v2[3] = *(v1 + 40) >> 1;
    v2[6] = *(v1 + 48);
    v2[5] = 16;
    v2[7] = 0;
    *(v0 + 20) = 0;
    SetEventFlagFromImmediate(0, 56);
    SetEventFlagFromImmediate(0, 57);
    if ( *(v1 + 50) )
        ClearEventFlag(*(v1 + 50));
    *(v0 + 9) = 0;
    sub_80301B2(1, v0 + 112);
    return 0;
}


// 0x809b974
signed int __fastcall sub_809B974(int a1, int a2, int a3)
{
    int v3; // r5
    unsigned __int16 *v4; // r7
    int v5; // r0
    unsigned __int8 v6; // vf
    int v7; // r0
    int v8; // r3
    int v9; // r0
    int v10; // r1
    int v11; // r2

    v4 = *(v3 + 52);
    ++*(v3 + 20);
    v5 = *(v3 + 136);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if ( (v7 < 0) ^ v6 )
        *(v3 + 9) = 1;
    else
        *(v3 + 136) = v7;
    v8 = *(v3 + 20);
    v9 = v4[21];
    if ( v8 >= v9 )
    {
        v9 = v4[22];
        if ( v8 >= v9 )
            v9 = v4[23];
    }
    sub_809B9EC(v9, a2, a3, byte_809B9CC);
    if ( !*(v3 + 140) )
    {
        *(v3 + 140) = 1;
        PlaySoundEffect(397, v10, v11);
    }
    return 1;
}


// 0x809b9ec
int __fastcall sub_809B9EC(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    _DWORD *v5; // r6
    char *v6; // r3
    int result; // r0
    int v8; // r2

    v6 = (a4 + 8 * v5[3] + 2 * v4);
    result = *v6 << 14;
    v8 = v6[1] << 14;
    *v5 += result;
    v5[1] += v8;
    return result;
}


// 0x809ba14
__int64 sub_809BA14()
{
    int v0; // r10
    int v1; // r5
    __int64 result; // r0
    int v3; // r2
    int v4; // r3

    v1 = *(v0 + oToolkit_S2011c50_Ptr);
    result = *(v1 + 112);
    v3 = *(v1 + 120);
    v4 = *(v1 + 124);
    *(v1 + 132);
    return result;
}


// 0x809bdb8
int sub_809BDB8()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    signed int v3; // r0
    char *v4; // r4
    int v5; // r2
    int v6; // r3
    int v7; // r2
    int *v8; // r6
    char *v9; // r7
    int v10; // r1
    int v11; // r2
    int v12; // r3

    TestEventFlagFromImmediate(1, 40);
    if ( v2 )
    {
        v4 = byte_809BE6C;
        v5 = *(v1 + 60);
        v6 = *(v5 + 12);
        v7 = *(v5 + 4);
        v3 = 0;
        while ( *(v4 + 1) != v7 || *v4 != v6 )
        {
            v4 += 4;
            ++v3;
        }
    }
    else
    {
        v3 = 3;
    }
    *(v0 + 8) = v3;
    if ( v3 < 16 )
    {
        v8 = (v0 + 112);
        v9 = &byte_809BA30[20 * v3];
        v8[7] = v9;
        v10 = *v9 << 16;
        *v8 = v10;
        v11 = *(v9 + 1) << 16;
        v8[1] = v11;
        v12 = *(v9 + 2) << 16;
        v8[2] = v12;
        v8[3] = *(v9 + 3) >> 1;
        SpawnOverworldMapObject(12, v10, v11, v12);
        v8[4] = v0;
        v8[5] = *(v9 + 7);
        *(v0 + 20) = 0;
        SetEventFlagFromImmediate(0, 56);
        SetEventFlagFromImmediate(0, 57);
        if ( *(v9 + 8) )
            ClearEventFlag(*(v9 + 8));
        sub_80301B2(1, v8);
    }
    (loc_809E1A4)(*(*(v1 + 60) + 36), *(*(v1 + 60) + 40), *(*(v1 + 60) + 44));
    return 0;
}


// 0x809bec0
signed int __fastcall sub_809BEC0(int a1, int a2, int a3)
{
    _DWORD *v3; // r5
    unsigned __int16 *v4; // r7
    int v5; // r0
    unsigned __int8 v6; // vf
    int v7; // r0
    int v8; // r3
    int v9; // r0

    v4 = v3[35];
    ++v3[5];
    v5 = v3[33];
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if ( !((v7 < 0) ^ v6) )
        v3[33] = v7;
    v8 = v3[5];
    v9 = v4[4];
    if ( v8 >= v9 )
    {
        v9 = v4[5];
        if ( v8 >= v9 )
        {
            v9 = v4[6];
            if ( v8 >= v9 )
                return 0;
        }
    }
    sub_809B9EC(v9, a2, a3, byte_809BF04);
    return 1;
}


// 0x809bfe8
int sub_809BFE8()
{
    int v0; // r5
    int v1; // r10
    char *v2; // r0
    int v3; // r2
    int v4; // r1

    v2 = &byte_809BF24[28 * *(v0 + 4)];
    *(v0 + 52) = v2;
    *(v0 + 5) = v2[19];
    *(v0 + 6) = v2[16];
    *(v0 + 7) = v2[17];
    v3 = *(v1 + oToolkit_GameStatePtr);
    v4 = v2[18];
    if ( v4 != 255 )
    {
        *(v3 + oGameState_Unk_16) = v4;
        *(v3 + oGameState_Unk_17) = 16;
    }
    return 0;
}


// 0x809c01c
int sub_809C01C()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    int v3; // r7
    int v4; // r0

    TestEventFlag(*(*(v0 + 52) + 22));
    if ( !v2 )
    {
        TestEventFlagFromImmediate(1, 32);
        if ( !v2 )
        {
            storeGameProgressToGameProgressBuffer_8035364(0);
            *(*(v1 + oToolkit_GameStatePtr) + oGameState_GameProgress) = -128;
        }
    }
    v3 = *(v0 + 52);
    if ( *(v3 + 24) )
        ClearEventFlag(*(v3 + 24));
    writeCurPETNaviToS2001c04_Unk07_80010c6();
    sub_80010BE(*(v3 + 20));
    v4 = reloadCurNaviBaseStats_8120df0();
    sub_8033FDC(v4);
    return 0;
}


// 0x809c09c
int sub_809C09C()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r0

    v1 = reqBBS_8140974();
    addMail_802f238(*(v0 + 6) + 7328 + v1);
    if ( *(v0 + 7) )
    {
        v2 = reqBBS_8140974();
        ClearEventFlag(*(v0 + 6) + 7456 + v2);
        v3 = reqBBS_8140974();
        SetEventFlag(*(v0 + 6) + 7584 + v3);
    }
    return 0;
}


// 0x809c7a0
int sub_809C7A0()
{
    int v0; // r5
    _DWORD *v1; // r0

    v1 = *(v0 + 4);
    *(v0 + 112) = v1;
    byte_20065E0 = 0;
    *byte_20065E1 = 16 * (*v1 >> 16);
    *byte_20065E3 = 16 * (v1[1] >> 16);
    *byte_20065E5 = 16 * (v1[2] >> 16);
    byte_20065E7[0] = 8;
    *(v0 + 19) = 1;
    *(v0 + 60) = &byte_20065E0;
    sub_8036F98(&byte_20065E0);
    return 0;
}


// 0x809c7fc
int sub_809C7FC()
{
    int v0; // r5

    sub_809E188(**(v0 + 112), *(*(v0 + 112) + 4), *(*(v0 + 112) + 8));
    return 0;
}


// 0x809c814
int sub_809C814()
{
    int v0; // r5

    sub_809E13C(*(&dword_809C82C + *(*(v0 + 112) + 12)));
    return 0;
}


// 0x809c830
int sub_809C830()
{
    int v0; // r5

    *(v0 + 5) = *(off_809C850[*(*(v0 + 112) + 12)] + *(*(v0 + 112) + 13));
    return 0;
}


// 0x809c870
int sub_809C870()
{
    int v0; // r5

    *(v0 + 6) = byte_809C884[*(v0 + 5)];
    return 0;
}


// 0x809c890
int sub_809C890()
{
    int v0; // r5
    unsigned int v1; // r1
    unsigned int v2; // r2
    char *v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r4

    sub_809E1BC();
    v3 = &(*off_809C8CC[*(dword_2011CC0 + 12)])[8 * *(v0 + 4)];
    v4 = ((v1 >> 16) + *v3) << 16;
    v3 += 2;
    v5 = ((v2 >> 16) + *v3) << 16;
    v6 = *(v3 + 1);
    return 0;
}


// 0x809c940
unsigned int sub_809C940()
{
    return ClearEventFlag(*(dword_2011CC0 + 20));
}


// 0x809c954
int sub_809C954()
{
    int v0; // r5

    SetEventFlag(*(*(v0 + 112) + 16));
    return 0;
}


// 0x809c968
unsigned int sub_809C968()
{
    int v0; // r10
    int v1; // r7
    signed int v2; // r0
    char v4; // zf
    int v5; // r1
    int v6; // r4
    int v7; // r0
    int v8; // r2
    int v9; // r3
    int v10; // r1

    sub_8034C36();
    if ( v4 )
        goto LABEL_23;
    TestEventFlagFromImmediate(2, 36);
    if ( v4 )
        goto LABEL_23;
    TestEventFlagFromImmediate(1, 185);
    if ( v4 )
    {
        if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
        {
            s_2011C50_ptr_1C_isNull();
            if ( v4 )
            {
                v1 = *(v0 + oToolkit_GameStatePtr);
                v2 = *(v1 + oGameState_Unk_0e);
                if ( *(v1 + oGameState_Unk_0e) )
                {
                    if ( v2 >= 48 && v2 <= 51 )
                    {
                        eOWPlayerObject[131] = v2;
                        return SetEventFlagFromImmediate(1, 185);
                    }
                }
            }
        }
LABEL_23:
        ClearEventFlagFromImmediate(1, 186);
        return ClearEventFlagFromImmediate(1, 185);
    }
    TestEventFlagFromImmediate(1, 186);
    if ( !v4 )
    {
        if ( !*(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0e) )
        {
            v5 = (&off_809C0F0)[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) - 144][*(*(v0 + oToolkit_GameStatePtr)
                                                                                                                                                                                + oGameState_MapNumber)];
            if ( v5 )
            {
                v6 = 24 * (eOWPlayerObject[131] - 48) + v5;
                TestEventFlag(*(v6 + 16));
                if ( v4 )
                {
                    v7 = CheckKeyItem(44);
                    v10 = *(v6 + 13) + 1;
                    if ( v7 < v10 )
                        PlaySoundEffect(105, v10, v8);
                    else
                        init_s_02011C50_8036E90(byte_809C354, v6, v8, v9);
                }
            }
        }
        goto LABEL_23;
    }
    return SetEventFlagFromImmediate(1, 186);
}


// 0x809ca40
BOOL __fastcall sub_809CA40(signed int a1)
{
    int v1; // r10
    int v2; // r1
    char v3; // zf
    BOOL result; // r0

    result = 0;
    if ( a1 >= 48 && a1 <= 51 )
    {
        v2 = (&off_809C0F0)[*(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) - 144][*(*(v1 + oToolkit_GameStatePtr)
                                                                                                                                                                            + oGameState_MapNumber)];
        if ( v2 )
        {
            TestEventFlag(*(24 * (a1 - 48) + v2 + 16));
            if ( !v3 )
                result = 1;
        }
    }
    return result;
}


// 0x809ca84
int sub_809CA84()
{
    int v0; // r10
    int v1; // r1
    int result; // r0

    v1 = (&off_809C0F0)[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) - 144][*(*(v0 + oToolkit_GameStatePtr)
                                                                                                                                                                        + oGameState_MapNumber)];
    if ( v1 )
        result = *(24 * (eOWPlayerObject[131] - 48) + v1 + 13) + 1;
    else
        result = 0;
    return result;
}


// 0x809cb68
int __fastcall sub_809CB68(int a1, int a2, int a3)
{
    void *v3; // r5
    int result; // r0

    doPETEffect_8033fc0(0, a2, a3);
    sub_8003984();
    sub_8003AD4();
    chatbox_runScript(&eTextScript2033404, 30);
    result = 0;
    *(v3 + 8) = 0;
    *(v3 + 28) = 0;
    return result;
}


// 0x809cb88
signed int sub_809CB88()
{
    int v0; // r5
    char v1; // zf
    signed int result; // r0

    chatbox_check_eFlags2009F38(8);
    if ( !v1 )
    {
        chatbox_check_eFlags2009F38(256);
        if ( !v1 )
        {
            chatbox_runScript(&eTextScript2033404, 32);
            *(v0 + 8) = 2;
            return 0;
        }
        if ( chatbox_8045F4C() )
        {
            TestEventFlagFromImmediate(1, 99);
            if ( v1 )
                goto LABEL_10;
        }
        else
        {
            TestEventFlagFromImmediate(1, 99);
            if ( !v1 )
            {
                writeCurPETNaviToS2001c04_Unk07_80010c6();
                sub_80010BE(0);
                *(v0 + 112) = 0;
LABEL_10:
                chatbox_runScript(&eTextScript2033404, 32);
                result = 0;
                *(v0 + 8) = 0;
                return result;
            }
        }
        chatbox_runScript(&eTextScript2033404, 31);
        *(v0 + 8) = 1;
        return 0;
    }
    return 1;
}


// 0x809cc00
signed int sub_809CC00()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    int v4; // r4
    char v5; // zf

    if ( !*(v0 + 112) )
    {
        *(v0 + 112) = 1;
        clear_e200AD04();
        sub_803F6B0(0, v1, v2, v3);
        (loc_803F512)();
        return 1;
    }
    v4 = 1;
    sub_803F560();
    if ( !v5 )
    {
        v4 = 0;
        if ( word_200AD04[1] )
        {
            --word_200AD04[1];
            return 1;
        }
    }
    sub_803F4EC(v4);
    *(v0 + 8) = v4;
    if ( v4 )
        chatbox_runScript(&eTextScript2033404, 34);
    return 0;
}


// 0x809cc60
signed int sub_809CC60()
{
    int v0; // r5
    _DWORD *v1; // r10
    char v2; // zf
    signed int result; // r0
    int v4; // r0
    signed int v5; // r4
    int v6; // r3
    int v7; // r0
    int v8; // r1
    int v9; // r2

    sub_809CE14();
    if ( v2 )
    {
        chatbox_check_eFlags2009F38(8);
        if ( v2 )
        {
LABEL_12:
            result = 1;
        }
        else
        {
            v4 = *(v0 + 116);
            v5 = 0;
            do
            {
                v6 = *&byte_809CCF8[v5];
                if ( v4 >= v6 && v4 < v6 + 15 )
                {
                    *(v1[16] + 48) = *(v0 + 116);
                    *(v0 + 120) = *&byte_809CD18[v5];
                    SetEventFlagFromImmediate(1, 99);
                    writeCurPETNaviToS2001c04_Unk07_80010c6();
                    v7 = *(v0 + 120);
                    *(v1[11] + 76) = v7;
                    sub_80010BE(v7);
                    PlaySoundEffect(141, v8, v9);
                    chatbox_runScript(&eTextScript2033404, 35);
                    goto LABEL_11;
                }
                v5 += 4;
            }
            while ( v5 < 28 );
            if ( !(*(v1[1] + 2) & 2) )
                goto LABEL_12;
            PlaySoundEffect(104, 2, byte_809CCF8);
            writeCurPETNaviToS2001c04_Unk07_80010c6();
            chatbox_runScript(&eTextScript2033404, 32);
LABEL_11:
            sub_81440D8();
            *(v0 + 8) = 1;
            result = 0;
        }
    }
    else
    {
        *(v0 + 8) = 0;
        result = 0;
    }
    return result;
}


// 0x809cd34
int sub_809CD34()
{
    chatbox_runScript(&eTextScript2033404, 33);
    return 0;
}


// 0x809cd44
int __fastcall sub_809CD44(int a1, int a2, int a3)
{
    doPETEffect_8033fc0(1, a2, a3);
    sub_8003962();
    zeroFill_8003AB2();
    sub_800399A();
    sub_8003AEA();
    return 0;
}


// 0x809cd60
signed int sub_809CD60()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    int v4; // r4
    char v5; // zf

    if ( *(v0 + 112) )
    {
        v4 = 1;
        sub_803F560();
        if ( v5 || (v4 = 0, !word_200AD04[1]) )
        {
            sub_803F4EC(v4);
            *(v0 + 8) = v4;
            ClearEventFlagFromImmediate(1, 99);
            chatbox_runScript(&eTextScript2033404, 49);
            return 0;
        }
        --word_200AD04[1];
    }
    else
    {
        *(v0 + 112) = 1;
        clear_e200AD04();
        sub_803F6B0(0, v1, v2, v3);
        (loc_803F512)();
    }
    return 1;
}


// 0x809cdc4
int sub_809CDC4()
{
    chatbox_runScript(&eTextScript2033404, 31);
    return 0;
}


// 0x809cdd4
int sub_809CDD4()
{
    int v0; // r1
    char v1; // zf
    int v2; // r0

    if ( getPETNaviSelect() )
        reloadCurNaviBaseStats_8120df0();
    else
        sub_809CE40();
    reloadCurNaviStatBoosts_813c3ac();
    sub_8120D10(0);
    if ( v1 )
        return 0;
    v2 = 50;
    if ( v0 != 16 )
    {
        v2 = 52;
        if ( v0 != 15 )
            v2 = 51;
    }
    chatbox_runScript(&eTextScript2033404, v2);
    return 0;
}


// 0x809ce14
signed int sub_809CE14()
{
    int v0; // r5
    signed int v1; // r4
    char v2; // zf
    int v3; // r2

    v1 = 1;
    if ( !sub_803F560() )
    {
        sub_803F644();
        if ( !v2 && !(sub_803F740(4) >> 32) )
        {
            *(v0 + 116) = v3;
            v1 = 0;
        }
    }
    return v1;
}


// 0x809ce40
signed int sub_809CE40()
{
    int v0; // r10
    int v1; // r4
    int i; // r5
    int j; // r5
    int v4; // r1
    signed int result; // r0
    int v6; // [sp+0h] [bp-3Ch]

    v1 = *(*(v0 + 64) + 7);
    for ( i = 0; *&byte_809CE84[i] != -1; i += 4 )
        *(&v6 + i) = GetCurPETNaviStatsByte(v1);
    for ( j = 0; ; j += 4 )
    {
        v4 = *&byte_809CE84[j];
        result = -1;
        if ( v4 == -1 )
            break;
        SetCurPETNaviStatsByte(0, v4, *(&v6 + j));
    }
    return result;
}


// 0x809cf2c
void *sub_809CF2C()
{
    void *result; // r0
    char v1; // zf
    int v2; // r3

    result = sub_8034C36();
    if ( !v1 )
    {
        result = reqBBS_81407D8();
        if ( result )
            result = init_s_02011C50_8036E90(byte_809CEB4, eReqBBSGui.totalPointsIndex + 49, 14, v2);
    }
    return result;
}


// 0x809d19c
void sub_809D19C()
{
    Battle *v0; // r5
    int v1; // r10
    char v2; // zf
    int v3; // r0
    int v4; // r0
    int v5; // r0

    ClearEventFlagFromImmediate(23, 22);
    TestEventFlagFromImmediate(11, 228);
    if ( v2 )
    {
        v3 = getPETNaviSelect();
        if ( GetCurPETNaviStatsByte(v3) )
        {
            if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
                SetEventFlagFromImmediate(23, 22);
        }
    }
    (*(&off_809D25C + v0->currState))();
    v4 = v0->futurePanelX;
    if ( v4 != v0->futurePanelY )
    {
        v0->futurePanelY = v4;
        sprite_setAnimation(v0, v4);
        sprite_loadAnimationData(v0);
    }
    if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
    {
        sprite_makeScalable();
        if ( byte_2000AA2 || byte_2000AA0 != 64 || byte_2000AA1 != 64 )
            sprite_setScaleParameters(byte_2000AA2, byte_2000AA0, byte_2000AA1);
        else
            sprite_makeUnscalable();
        v5 = word_2000AA6;
        if ( word_2000AA6 )
            goto LABEL_17;
    }
    sub_8002EE8();
    if ( sub_8031A7A(&v0->unk_1C) == 60 )
    {
        v5 = 41224;
LABEL_17:
        sprite_setColorShader(v0, v5);
    }
    sprite_setPallete(byte_2000AA5);
    TestEventFlagFromImmediate(23, 61);
    if ( v2 || *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_10) )
        sprite_update(v0);
}


// 0x809d270
unsigned int sub_809D270()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r6
    char v4; // zf
    int v5; // r0
    int v6; // r1
    int v7; // r2

    *v0 = 3;
    v2 = byte_809D328[getPETNaviSelect()];
    v3 = 24;
    if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) < 128 && (v2 = 55, TestEventFlagFromImmediate(23, 41), v4) )
    {
        v2 = 0;
        v3 = 24;
    }
    else if ( byte_2000AA4 )
    {
        v5 = 2 * (byte_2000AA4 - 1);
        v3 = byte_809D338[v5];
        v2 = byte_809D338[v5 + 1];
    }
    sprite_load(v0, 128, v3, v2);
    *(v0 + 20) = 0;
    *(v0 + 21) = -1;
    sprite_noShadow(v0);
    *(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) = v0;
    *(v0 + 8) = 4;
    ZeroFillByWord((v0 + 72), 32);
    *(v0 + 23) = 1;
    *(v0 + 12) = 1;
    *(v0 + 22) = 0;
    *(v0 + 16) &= 7u;
    *(v0 + 17) = -1;
    *(v0 + 76) = 0;
    *(v0 + 78) = 0;
    *(v0 + 56) = 0;
    *(v0 + 60) = 0;
    *(v0 + 64) = 0;
    *(v0 + 68) = 0;
    *(v0 + 13) = 0;
    *(v0 + 14) = 0;
    *(v0 + 15) = 0;
    *(v0 + 24) = 0;
    *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_10) = 0;
    v6 = *(v0 + 32);
    v7 = *(v0 + 36);
    *(v0 + 40) = *(v0 + 28);
    *(v0 + 44) = v6;
    *(v0 + 48) = v7;
    return sub_809D348();
}


// 0x809d348
unsigned int sub_809D348()
{
    int v0; // r5
    Toolkit *tk; // r10
    int v2; // r1
    int v3; // r2
    char v4; // zf
    int v5; // r0
    int v6; // r1
    _WORD *v7; // r7
    int v8; // r0
    unsigned __int8 v9; // vf
    int v10; // r0
    int v11; // r0
    int v12; // r0

    tk->gamestate->unk_11 = 0;
    *(v0 + 19) = 0;
    *(v0 + 19) = 0;
    *(v0 + 15) = *(v0 + 14);
    *(v0 + 14) = *(v0 + 13);
    *(v0 + 13) = 0;
    v2 = *(v0 + 32);
    v3 = *(v0 + 36);
    *(v0 + 40) = *(v0 + 28);
    *(v0 + 44) = v2;
    *(v0 + 48) = v3;
    (*(&off_809D450 + *(v0 + 9)))();
    if ( *(v0 + 12) )
    {
        sub_809E3D6();
        if ( sub_8030B6A(v0 + 28) )
        {
            TestEventFlagFromImmediate(23, 22);
            if ( !v4 )
            {
                TestEventFlagFromImmediate(23, 61);
                if ( !v4 )
                    SetEventFlagFromImmediate(23, 63);
                ClearEventFlagFromImmediate(23, 61);
                ClearEventFlagFromImmediate(23, 62);
                sub_809DE60();
            }
        }
    }
    sub_809E46E();
    sub_809DB60();
    sub_809E3A2();
    if ( v4 )
    {
        if ( *(v0 + 23) )
        {
            TestEventFlagFromImmediate(11, 228);
            if ( v4 )
                *(v0 + 36) = sub_8031612(v0 + 28) << 16;
        }
    }
    TestEventFlagFromImmediate(23, 24);
    if ( !v4 )
    {
        ClearEventFlagFromImmediate(23, 24);
        sub_809E0C8();
    }
    v5 = *(v0 + 22);
    if ( !*(v0 + 22) )
        v5 = sub_8035694((v0 + 28));
    sub_8002E14(v5);
    if ( sub_809DFA0() && !s_2011C50_ptr_1C_isNull() )
    {
        v6 = *(v0 + 19);
        v7 = tk->unk_2001C04;
        v7[9] += v6;
        v8 = *(v7 + 9);
        if ( v8 )
        {
            v9 = __OFSUB__(v8, v6);
            v10 = v8 - v6;
            if ( (v10 < 0) ^ v9 )
                v10 = 0;
            *(v7 + 9) = v10;
        }
        v11 = *(v7 + 10);
        if ( v11 )
        {
            v9 = __OFSUB__(v11, v6);
            v12 = v11 - v6;
            if ( (v12 < 0) ^ v9 )
                v12 = 0;
            *(v7 + 10) = v12;
        }
    }
    sub_809DFC0();
    return sub_809DE98();
}


// 0x809d470
int sub_809D470()
{
    _BYTE *v0; // r5
    int v1; // r7
    char v2; // zf
    int result; // r0

    sub_809D9E0();
    if ( !v0[10] )
    {
        v0[20] = v0[16];
        v0[10] = 4;
    }
    sub_809DB50();
    if ( !v2 )
        return sub_809E004(20);
    if ( sub_809DAF8() )
        return sub_809E004(4);
    if ( sub_809DB02() )
        return sub_809E004(8);
    if ( sub_809DED4() )
        return sub_809E004(12);
    result = sub_809DF28();
    if ( result )
    {
        *(v1 + 1) = 0;
        result = sub_809E004(16);
    }
    return result;
}


// 0x809d4dc
int sub_809D4DC()
{
    _BYTE *v0; // r5
    int v1; // r7
    int result; // r0

    if ( sub_809D9E0() )
    {
        if ( v0[16] != v0[17] )
            v0[10] = 0;
        v1 = *(&off_809D554 + v0[10]);
        (v1)();
    }
    if ( sub_809DF28() )
    {
        *(v1 + 1) = 0;
        result = sub_809E004(16);
    }
    else if ( sub_809DED4() )
    {
        result = sub_809E004(12);
    }
    else
    {
        if ( !sub_809DB02() )
            JUMPOUT(byte_809D530);
        sub_809E004(8);
        result = v0[19];
        v0[19] = result;
    }
    return result;
}


// 0x809d560
signed int sub_809D560()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    char (**v3)[96]; // r7
    char v4; // zf
    int v5; // r7
    int v6; // r7
    signed int result; // r0
    int v8; // [sp-14h] [bp-18h]
    int v9; // [sp-10h] [bp-14h]

    v2 = 0;
    if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
        v2 = byte_2000AA3;
    v3 = off_809D5B0;
    v8 = *(v0 + 16);
    v9 = v2;
    TestEventFlagFromImmediate(23, 22);
    if ( !v4 )
        v3 = &off_809D5BC;
    v5 = *(v3 + v9);
    if ( dword_200ACF8 )
        v5 = dword_200AD00;
    v6 = v5 + 12 * v8;
    *(v0 + 56) = *(v6 + 4);
    *(v0 + 60) = *(v6 + 8);
    *(v0 + 20) = *v6;
    result = 4;
    *(v0 + 10) = 4;
    return result;
}


// 0x809d5c4
int sub_809D5C4()
{
    int v0; // r5
    char v1; // r2
    char v2; // r3
    int v3; // r1
    char v4; // zf
    int result; // r0
    int v6; // r1
    int v7; // r2

    if ( sub_809DDCC() )
    {
        sub_8031612(v0 + 28);
        v1 = 0;
        v2 = 1;
        if ( v3 == 1 )
        {
            TestEventFlagFromImmediate(23, 22);
            v2 = 2;
            if ( !v4 )
            {
                v1 = 0;
                v2 = 1;
            }
        }
        *(v0 + 19) = v2;
        *(v0 + 28) += *(v0 + 56) << v1;
        result = *(v0 + 60) << v1;
        *(v0 + 32) += result;
    }
    else
    {
        result = *(v0 + 40);
        v6 = *(v0 + 44);
        v7 = *(v0 + 48);
        *(v0 + 28) = result;
        *(v0 + 32) = v6;
        *(v0 + 36) = v7;
    }
    return result;
}


// 0x809d61a
int sub_809D61A()
{
    _BYTE *v0; // r5
    int v1; // r7
    char v2; // zf

    TestEventFlagFromImmediate(23, 22);
    if ( v2 || (TestEventFlagFromImmediate(23, 61), v2) )
    {
        if ( !sub_809D9E0() )
            goto LABEL_8;
        if ( v0[16] != v0[17] )
            v0[10] = 0;
    }
    v1 = *(&off_809D6B0 + v0[10]);
    (v1)();
LABEL_8:
    if ( sub_809DF28() )
    {
        *(v1 + 1) = 0;
        sub_809E004(16);
        return sub_809DE30();
    }
    if ( sub_809DED4() )
        return sub_809E004(12);
    sub_809DB50();
    if ( !v2 )
    {
        sub_809E004(20);
        return sub_809DE30();
    }
    if ( sub_809DAF8() )
    {
        sub_809E004(4);
    }
    else if ( !sub_809DB02() )
    {
        return sub_809E004(0);
    }
    return sub_809DDF0();
}


// 0x809d6bc
signed int sub_809D6BC()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    char (**v3)[96]; // r7
    char v4; // zf
    int v5; // r7
    signed int result; // r0
    int v7; // [sp-14h] [bp-18h]
    int v8; // [sp-10h] [bp-14h]

    v2 = 0;
    if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
        v2 = byte_2000AA3;
    v3 = &off_809D71C;
    v7 = *(v0 + 16);
    v8 = v2;
    TestEventFlagFromImmediate(23, 22);
    if ( !v4 )
    {
        TestEventFlagFromImmediate(23, 61);
        if ( !v4 || (TestEventFlagFromImmediate(23, 63), v4) )
            v3 = off_809D728;
    }
    v5 = &(**(v3 + v8))[12 * v7];
    *(v0 + 56) = *(v5 + 4);
    *(v0 + 60) = *(v5 + 8);
    *(v0 + 20) = *v5;
    result = 4;
    *(v0 + 10) = 4;
    return result;
}


// 0x809d730
signed int sub_809D730()
{
    int v0; // r5
    signed int result; // r0
    int v2; // r1
    int v3; // r2

    if ( sub_809DDCC() )
    {
        *(v0 + 28) += *(v0 + 56);
        *(v0 + 32) += *(v0 + 60);
        result = 2;
        *(v0 + 19) = 2;
    }
    else
    {
        result = *(v0 + 40);
        v2 = *(v0 + 44);
        v3 = *(v0 + 48);
        *(v0 + 28) = result;
        *(v0 + 32) = v2;
        *(v0 + 36) = v3;
    }
    return result;
}


// 0x809d75e
int sub_809D75E()
{
    _BYTE *v0; // r5
    int v1; // r10
    int result; // r0

    (*(&off_809D798 + v0[10]))();
    if ( byte_200ACFC != 255 )
    {
        v0[20] = byte_200ACFC;
        byte_200ACFC = -1;
    }
    result = sub_809DF28();
    if ( result )
    {
        byte_200ACE1 = 2;
        *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_10) = 0;
        v0[7] = 0;
        result = sub_809E004(16);
    }
    return result;
}


// 0x809d7a8
signed int sub_809D7A8()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    signed int result; // r0

    if ( s_2011C50_ptr_1C_isNull() )
    {
        *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_10) = 0;
        *(v0 + 7) = 0;
        *(v0 + 9) = 0;
        result = 0;
        *(v0 + 10) = 0;
    }
    else
    {
        *(v0 + 20) = *(v0 + 16);
        v2 = *(v0 + 88);
        result = *(v2 + 23);
        if ( !*(v2 + 23) )
        {
            *(v2 + 24) = 1;
            result = 4;
            *(v0 + 10) = 4;
        }
    }
    return result;
}


// 0x809d7f8
int sub_809D7F8()
{
    return FreeOWPlayerObject();
}


// 0x809d800
int sub_809D800()
{
    int v0; // r5
    void (*v1)(void); // r7
    int v2; // r1
    int v3; // r2
    char v4; // zf
    int v5; // r0

    v1 = &byte_200ACE0;
    v2 = *(v0 + 32);
    v3 = *(v0 + 36);
    *(v0 + 40) = *(v0 + 28);
    *(v0 + 44) = v2;
    *(v0 + 48) = v3;
    *(v0 + 28) = dword_200ACE8;
    *(v0 + 32) = dword_200ACEC;
    *(v0 + 36) = dword_200ACF0;
    if ( byte_200ACF5 )
    {
        v1 = *(&off_809D8B0 + *(v0 + 11));
        v1();
    }
    else
    {
        *(v0 + 20) = byte_200ACE2;
    }
    if ( !sub_809DF36() )
        *(v0 + 8) = *&byte_809D89C[4 * byte_0[v1 + 1]];
    if ( *(v0 + 12) )
    {
        sub_809E3D6();
        sub_8030B6A(v0 + 28);
    }
    dword_200ACE8 = *(v0 + 28);
    dword_200ACEC = *(v0 + 32);
    dword_200ACF0 = *(v0 + 36);
    sub_809E3A2();
    if ( v4 )
    {
        if ( *(v0 + 23) )
        {
            TestEventFlagFromImmediate(11, 228);
            if ( v4 )
                *(v0 + 36) = sub_8031612(v0 + 28) << 16;
        }
    }
    v5 = *(v0 + 22);
    if ( !*(v0 + 22) )
        v5 = sub_8035694((v0 + 28));
    return sub_8002E14(v5);
}


// 0x809d8cc
int sub_809D8CC()
{
    _BYTE *v0; // r5
    int result; // r0
    char v2; // zf

    if ( !v0[10] )
    {
        v0[16] = 4;
        v0[20] = 4;
        v0[10] = 4;
    }
    result = chatbox_check_eFlags2009F38(128);
    if ( v2 )
    {
        v0[9] = 0;
        result = 0;
        v0[10] = 0;
        v0[11] = 0;
    }
    return result;
}


// 0x809d8f4
int sub_809D8F4()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    v1 = *(&off_809D91C + *(v0 + 10));
    (v1)();
    result = sub_809DF28();
    if ( result )
    {
        *(v1 + 1) = 0;
        ClearEventFlagFromImmediate(23, 23);
        result = sub_809E004(16);
    }
    return result;
}


// 0x809d92c
signed int sub_809D92C()
{
    int v0; // r5
    signed int v1; // r0
    int v2; // r0
    signed int result; // r0

    v1 = *(v0 + 100);
    if ( v1 <= 3 )
        v1 += 4;
    *(v0 + 102) = v1;
    v2 = 12 * v1;
    *(v0 + 56) = *&byte_809D07C[v2 + 4];
    *(v0 + 60) = *&byte_809D07C[v2 + 8];
    LOBYTE(v2) = byte_809D07C[v2];
    *(v0 + 20) = v2;
    *(v0 + 16) = v2;
    *(v0 + 17) = v2;
    *(v0 + 10) = 4;
    result = 1;
    *(v0 + 92) = 1;
    return result;
}


// 0x809d964
int __fastcall sub_809D964(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r0
    int result; // r0

    v4 = *(v3 + 92) - 1;
    *(v3 + 92) = v4;
    if ( !v4 )
    {
        *(v3 + 92) = 6;
        PlaySoundEffect(152, 92, a3);
    }
    if ( *(v3 + 100) == *(v3 + 102) )
        *(v3 + 10) = 8;
    *(v3 + 28) += *(v3 + 56);
    result = *(v3 + 60);
    *(v3 + 32) += result;
    return result;
}


// 0x809d9a0
int sub_809D9A0()
{
    int v0; // r5
    signed int v1; // r0
    int result; // r0

    v1 = sub_8031A7A(v0 + 28);
    if ( v1 < 76 || v1 > 79 )
    {
        ClearEventFlagFromImmediate(23, 23);
        *(v0 + 9) = 0;
        result = 0;
        *(v0 + 10) = 0;
        *(v0 + 11) = 0;
    }
    else
    {
        *(v0 + 28) += *(v0 + 56);
        result = *(v0 + 60);
        *(v0 + 32) += result;
    }
    return result;
}


// 0x809d9e0
int sub_809D9E0()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    char v3; // zf
    int v4; // ST08_4
    int result; // r0
    _WORD *v6; // r7
    __int16 v7; // r1
    _WORD *v8; // ST08_4
    char (*v9)[24]; // r7
    int v10; // r0
    int v11; // r0
    int v12; // [sp+0h] [bp-10h]
    int v13; // [sp+4h] [bp-Ch]
    int v14; // [sp+8h] [bp-8h]

    if ( !byte_200ACF5 )
    {
        v2 = IsPaletteFadeActive();
        if ( !v3 )
        {
            v4 = v2;
            TestEventFlagFromImmediate(23, 20);
            result = v4;
            if ( v3 )
                goto LABEL_15;
            TestEventFlagFromImmediate(23, 23);
            if ( v3 )
            {
                s_2011C50_ptr_1C_isNull();
                if ( v3 )
                {
                    *(v0 + 17) = *(v0 + 16);
                    result = 0;
                    v6 = *(v1 + oToolkit_JoypadPtr);
                    v7 = v6[1];
                    if ( !(v7 & 8) )
                    {
                        if ( v7 & 1 )
                        {
                            v8 = *(v1 + oToolkit_JoypadPtr);
                            v9 = off_809DC0C[*(v0 + 16)];
                            v12 = *(v0 + 28) + *v9;
                            v13 = *(v0 + 32) + *&(*v9)[4];
                            v14 = *(v0 + 36) + *&(*v9)[8];
                            *(v0 + 13) = sub_8031A7A(&v12);
                            *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_11) = 1;
                            result = 0;
                            v6 = v8;
                        }
                        if ( *v6 & 0xF0 )
                        {
                            v10 = byte_809DAD8[(*v6 & 0xF0u) >> 4];
                            if ( *v6 & 2 )
                                result = v10 | 0x20;
                            else
                                result = v10 | 0x10;
                        }
                    }
                    goto LABEL_15;
                }
            }
        }
        result = 0;
LABEL_15:
        *(v0 + 76) = result;
        if ( result & 0xF )
            *(v0 + 16) = (result & 0xF) - 1;
        return result;
    }
    *(v0 + 17) = *(v0 + 16);
    result = 0;
    if ( dword_200ACF8 & 0xF00000 )
    {
        v11 = byte_809DAD8[(BYTE2(dword_200ACF8) & 0xF0u) >> 4];
        if ( dword_200ACF8 & 0x20000 )
            result = v11 | 0x20;
        else
            result = v11 | 0x10;
    }
    *(v0 + 76) = result;
    if ( result & 0xF )
        *(v0 + 16) = (result & 0xF) - 1;
    return result;
}


// 0x809daf8
int sub_809DAF8()
{
    int v0; // r5

    return *(v0 + 76) & 0x10;
}


// 0x809db02
int sub_809DB02()
{
    int v0; // r5
    char v1; // zf
    int v2; // r1
    int v3; // r2
    __int16 v5; // [sp-8h] [bp-Ch]

    v5 = *(v0 + 76);
    if ( v5 & 0x20 )
    {
        TestEventFlagFromImmediate(23, 61);
        if ( v1 )
        {
            TestEventFlagFromImmediate(23, 63);
            if ( v1 )
            {
                TestEventFlagFromImmediate(23, 22);
                if ( !v1 )
                {
                    SetEventFlagFromImmediate(23, 61);
                    SetEventFlagFromImmediate(23, 62);
                    PlaySoundEffect(309, v2, v3);
                }
            }
        }
    }
    return v5 & 0x20;
}


// 0x809db50
int sub_809DB50()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(23, 23);
    if ( v1 )
        result = 0;
    return result;
}


// 0x809db60
int sub_809DB60()
{
    int v0; // r5
    int v1; // r10
    char v2; // zf
    int result; // r0

    sub_809DBC4(byte_809DBF4, (v0 + 52));
    TestEventFlagFromImmediate(23, 61);
    if ( !v2 || **(v1 + oToolkit_JoypadPtr) & 0xF0 )
        sub_809DBC4(off_809DCEC[*(v0 + 16)], (v0 + 80));
    if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_11) )
        sub_809DBC4(off_809DC0C[*(v0 + 16)], (v0 + 72));
    result = 0;
    *(v0 + 52) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    return result;
}


// 0x809dbc4
int __fastcall sub_809DBC4(_DWORD *a1, _DWORD *a2)
{
    _DWORD *v2; // r5
    _DWORD *v3; // r7
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r4
    int v8; // r5

    v3 = a1;
    *a2 = 0;
    v4 = *a1 + v2[7];
    v5 = v3[1] + v2[8];
    v6 = v3[2] + v2[9];
    v7 = v3[4];
    v8 = v3[5];
    return sub_80037AC(v4, v5, v6, v3[3]);
}


// 0x809ddcc
signed int sub_809DDCC()
{
    int v0; // r5
    signed int result; // r0

    result = 0;
    if ( *(v0 + 24) )
    {
        --*(v0 + 24);
        result = 1;
    }
    else if ( !(*(v0 + 80) & 0xC00000) )
    {
        result = 1;
    }
    return result;
}


// 0x809ddf0
int sub_809DDF0()
{
    int v0; // r5
    int result; // r0
    char v2; // zf

    result = TestEventFlagFromImmediate(23, 22);
    if ( !v2 )
    {
        result = TestEventFlagFromImmediate(23, 61);
        if ( !v2 )
        {
            if ( *(v0 + 80) & 0xC00000 )
            {
                ClearEventFlagFromImmediate(23, 61);
                ClearEventFlagFromImmediate(23, 62);
                SetEventFlagFromImmediate(23, 63);
                result = sub_809DE60();
            }
        }
    }
    return result;
}


// 0x809de30
int sub_809DE30()
{
    int result; // r0
    char v1; // zf

    result = TestEventFlagFromImmediate(23, 22);
    if ( !v1 )
    {
        TestEventFlagFromImmediate(23, 61);
        if ( !v1 )
            SetEventFlagFromImmediate(23, 63);
        ClearEventFlagFromImmediate(23, 61);
        result = ClearEventFlagFromImmediate(23, 62);
    }
    return result;
}


// 0x809de60
int sub_809DE60()
{
    int v0; // r5
    int v1; // r10
    int v2; // r1
    char *v3; // r7
    int result; // r0

    v2 = 0;
    if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
        v2 = byte_2000AA3;
    v3 = &(**(&off_809DE90 + v2))[12 * *(v0 + 16)];
    *(v0 + 56) = *(v3 + 1);
    result = *(v3 + 2);
    *(v0 + 60) = result;
    return result;
}


// 0x809de98
unsigned int sub_809DE98()
{
    int v0; // r10
    char v1; // zf
    unsigned int result; // r0

    TestEventFlagFromImmediate(23, 22);
    if ( v1 )
    {
        ClearEventFlagFromImmediate(23, 61);
        ClearEventFlagFromImmediate(23, 62);
        result = ClearEventFlagFromImmediate(23, 63);
    }
    else
    {
        result = **(v0 + oToolkit_JoypadPtr);
        if ( !(result & 2) )
            result = ClearEventFlagFromImmediate(23, 63);
    }
    return result;
}


// 0x809ded4
int sub_809DED4()
{
    int v0; // r5
    char v1; // zf
    int result; // r0

    sub_811EBE0();
    if ( v1 )
    {
        s_2011C50_ptr_1C_isNull();
        if ( v1 )
            return (*(&off_809DEF8 + *(v0 + 7)))();
    }
    result = 0;
    *(v0 + 7) = 0;
    return result;
}


// 0x809df00
signed int sub_809DF00()
{
    int v0; // r5
    int v1; // r10
    signed int result; // r0
    int v3; // r0
    int v4; // r7

    if ( sub_809E01C() )
    {
        v3 = *(v0 + 15);
        v4 = *(v1 + oToolkit_GameStatePtr);
        *(v4 + oGameState_Unk_0e) = v3;
        if ( v3 )
            *(v4 + oGameState_Unk_03) = v3;
        result = 0;
    }
    else
    {
        *(*(v1 + oToolkit_GameStatePtr) + oGameState_Unk_10) = 1;
        result = 1;
    }
    return result;
}


// 0x809df28
int sub_809DF28()
{
    int v0; // r5

    if ( *(v0 + 9) != 16 )
        JUMPOUT(&loc_809DF3A);
    return 0;
}


// 0x809df36
int sub_809DF36()
{
    return byte_200ACE0;
}


// 0x809df44
int __fastcall sub_809DF44(int a1, int a2)
{
    void **v2; // r7
    int v3; // r4

    v2 = &off_809DF9C + 2 * a1;
    v3 = v2[1] * a2;
    return *v2 * a2;
}


// 0x809dfa0
signed int sub_809DFA0()
{
    _DWORD *v0; // r5
    signed int result; // r0

    result = 1;
    if ( v0[7] == v0[10] && v0[8] == v0[11] && v0[9] == v0[12] )
        result = 0;
    return result;
}


// 0x809dfc0
int sub_809DFC0()
{
    int v0; // r5
    int v1; // r0
    int result; // r0

    v1 = *(v0 + 9);
    if ( v1 != 4 && v1 != 8 || sub_809DFA0() )
    {
        result = 0;
        *(v0 + 86) = 0;
    }
    else
    {
        result = *(v0 + 86) | byte_809DFFC[*(v0 + 16)];
        *(v0 + 86) = result;
        if ( result == 15 )
        {
            *(v0 + 24) = 10;
            result = 0;
            *(v0 + 86) = 0;
        }
    }
    return result;
}


// 0x809e004
int __fastcall sub_809E004(int result)
{
    _BYTE *v1; // r5

    v1[10] = 0;
    if ( v1[9] == 16 )
        v1[11] = result;
    else
        v1[9] = result;
    return result;
}


// 0x809e01c
signed int sub_809E01C()
{
    int v0; // r5
    char *v1; // r7
    signed int result; // r0

    v1 = eOverworldNPCObjects;
    while ( !(*(v1 + 20) & 1) )
    {
        v1 += 216;
        if ( v1 >= byte_2006530 )
            return 1;
    }
    result = *(v1 + 24);
    if ( !(result & 1) )
    {
        *(v0 + 88) = v1;
        result = 0;
    }
    return result;
}


// 0x809e04c
void sub_809E04C()
{
    eOWPlayerObject[13] = 0;
    eOWPlayerObject[14] = 0;
    eOWPlayerObject[15] = 0;
}


// 0x809e064
int __fastcall sub_809E064(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int result; // r0
    _DWORD *v7; // r6

    result = SpawnOWPlayerObject(0, a2, a3, a4);
    if ( v4 )
    {
        v7 = *(v5 + oToolkit_GameStatePtr);
        v7[oGameState_GameProgress] = v4;
        *(v4 + 28) = v7[oGameState_Unk_09];
        *(v4 + 32) = v7[oGameState_Unk_0a];
        *(v4 + 36) = v7[oGameState_Unk_0b];
        *(v4 + 16) = v7[oGameState_LastMapGroup];
    }
    return result;
}


// 0x809e08a
int sub_809E08A()
{
    int v0; // r10
    int v1; // r5

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    return FreeOWPlayerObject();
}


// 0x809e098
unsigned int setEventFlag_809E098()
{
    return SetEventFlagFromImmediate(23, 20);
}


// 0x809e0a4
// () -> void
unsigned int clearEventFlag_809E0A4()
{
    return ClearEventFlagFromImmediate(23, 20);
}


// 0x809e0b0
// () -> void
unsigned int updateFlags_809E0B0()
{
    byte_200ACE0 = 1;
    SetEventFlagFromImmediate(23, 24);
    return clearEventFlag_809E0A4();
}


// 0x809e0c6
void nullsub_26()
{
    ;
}


// 0x809e0c8
int sub_809E0C8()
{
    int v0; // r10
    _DWORD *v1; // r1
    int result; // r0
    char v3; // zf

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    dword_200ACE8 = v1[7];
    dword_200ACEC = v1[8];
    dword_200ACF0 = v1[9];
    result = TestEventFlagFromImmediate(23, 25);
    if ( v3 )
    {
        result = *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 16) & 7;
        byte_200ACE2 = *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 16) & 7;
    }
    return result;
}


// 0x809e0fc
int sub_809E0FC()
{
    int result; // r0

    byte_200ACF5 = 1;
    result = 0;
    dword_200ACF8 = 0;
    dword_200AD00 = byte_809CF5C;
    return result;
}


// 0x809e114
int sub_809E114()
{
    int result; // r0

    byte_200ACF5 = 0;
    result = 0;
    dword_200ACF8 = 0;
    dword_200AD00 = 0;
    return result;
}


// 0x809e122
unsigned int sub_809E122()
{
    byte_200ACE0 = 0;
    setEventFlag_809E098();
    return ClearEventFlagFromImmediate(23, 25);
}


// 0x809e13c
unsigned int __fastcall sub_809E13C(char a1)
{
    byte_200ACE2 = a1;
    return SetEventFlagFromImmediate(23, 25);
}


// 0x809e14c
int __fastcall sub_809E14C(int a1)
{
    char v1; // r4
    int result; // r0
    char v3; // zf

    v1 = a1;
    result = sub_809E462();
    if ( v3 )
    {
        byte_200ACE2 = v1;
        result = SetEventFlagFromImmediate(23, 25);
    }
    else
    {
        byte_200ACFC = v1;
    }
    return result;
}


// 0x809e168
unsigned int __fastcall sub_809E168(char a1)
{
    int v1; // r10

    byte_200ACE2 = a1;
    *(*(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 21) = ~a1;
    return SetEventFlagFromImmediate(23, 25);
}


// 0x809e188
int __fastcall sub_809E188(int result, int a2, int a3)
{
    int v3; // r10
    _DWORD *v4; // r3

    v4 = *(*(v3 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    v4[10] = v4[7];
    v4[11] = v4[8];
    v4[12] = v4[9];
    v4[7] = result;
    v4[8] = a2;
    v4[9] = a3;
    dword_200ACE8 = result;
    dword_200ACEC = a2;
    dword_200ACF0 = a3;
    return result;
}


// 0x809e1ae
__int64 sub_809E1AE()
{
    int v0; // r10
    int v1; // r3
    __int64 result; // r0
    int v3; // r2

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    result = *(v1 + 28);
    v3 = *(v1 + 36);
    return result;
}


// 0x809e1bc
void sub_809E1BC()
{
    int v0; // r10
    _DWORD *v1; // r3
    int v2; // r1
    int v3; // r2
    int v4; // r3

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    v2 = v1[7];
    v3 = v1[8];
    v4 = v1[9];
}


// 0x809e1ca
int sub_809E1CA()
{
    int v0; // r10
    _DWORD *v1; // r3
    int result; // r0
    int v3; // r1
    int v4; // r2

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    result = v1[8];
    v3 = v1[7];
    v4 = v1[9];
    return result;
}


// 0x809e1d8
int __fastcall sub_809E1D8(int a1, int a2, int a3)
{
    int v3; // r10
    _DWORD *v4; // r7
    int v5; // r3
    int v6; // r3
    int v7; // r3

    v4 = *(*(v3 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    v5 = v4[7];
    v4[10] = v5;
    v4[7] = v5 + a1;
    v6 = v4[8];
    v4[11] = v6;
    v4[8] = v6 + a2;
    v7 = v4[9];
    v4[12] = v7;
    v4[9] = v7 + a3;
    return sub_809E1FA(a1, a2, a3);
}


// 0x809e1fa
int __fastcall sub_809E1FA(int result, int a2, int a3)
{
    dword_200ACE8 += result;
    dword_200ACEC += a2;
    dword_200ACF0 += a3;
    return result;
}


// 0x809e218
int __fastcall sub_809E218(int result)
{
    if ( byte_200ACF5 )
        HIWORD(dword_200ACF8) = result;
    return result;
}


// 0x809e228
int sub_809E228()
{
    return 0;
}


// 0x809e230
signed int sub_809E230()
{
    int v0; // r10
    signed int result; // r0

    result = 1;
    *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 23) = 1;
    return result;
}


// 0x809e23c
int sub_809E23C()
{
    int v0; // r10
    int result; // r0

    result = 0;
    *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 23) = 0;
    return result;
}


// 0x809e248
signed int sub_809E248()
{
    int v0; // r10
    signed int result; // r0

    result = 1;
    *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 12) = 1;
    return result;
}


// 0x809e254
int sub_809E254()
{
    int v0; // r10
    int result; // r0

    result = 0;
    *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 12) = 0;
    return result;
}


// 0x809e260
int __fastcall sub_809E260(int result)
{
    int v1; // r10

    *(*(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 22) = result;
    return result;
}


// 0x809e26a
int sub_809E26A()
{
    int v0; // r10
    int result; // r0

    result = 0;
    *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 22) = 0;
    return result;
}


// 0x809e276
int sub_809E276()
{
    int v0; // r10

    return sprite_noShadow(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr));
}


// 0x809e284
int sub_809E284()
{
    int v0; // r10
    int v1; // r5

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    return sprite_hasShadow();
}


// 0x809e292
int sub_809E292()
{
    int v0; // r10
    int v1; // r5

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    return sub_8002E52();
}


// 0x809e2a0
void __fastcall sub_809E2A0(int a1)
{
    int v1; // r10
    int v2; // r5

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    sprite_setPallete(a1);
}


// 0x809e2ae
int __fastcall sub_809E2AE(int result)
{
    int v1; // r10

    *(*(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 16) = result;
    return result;
}


// 0x809e2b8
int sub_809E2B8()
{
    int v0; // r10

    return *(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 16);
}


// 0x809e2c2
signed __int64 sub_809E2C2()
{
    signed __int64 result; // r0

    result = 274877907008LL;
    byte_2000AA0 = 64;
    byte_2000AA1 = 64;
    byte_2000AA2 = 0;
    return result;
}


// 0x809e2d2
int sub_809E2D2()
{
    return byte_2000AA0;
}


// 0x809e2dc
int __fastcall sub_809E2DC(int result, char a2, char a3)
{
    byte_2000AA0 += result;
    byte_2000AA1 += a2;
    byte_2000AA2 += a3;
    return result;
}


// 0x809e2f4
int sub_809E2F4()
{
    int result; // r0

    result = 0;
    word_2000AA6 = 0;
    return result;
}


// 0x809e2fc
int sub_809E2FC()
{
    int result; // r0

    result = 0;
    byte_2000AA5 = 0;
    return result;
}


// 0x809e304
int sub_809E304()
{
    int result; // r0

    result = 0;
    byte_2000AA3 = 0;
    return result;
}


// 0x809e30c
int sub_809E30C()
{
    return byte_2000AA3;
}


// 0x809e312
int sub_809E312()
{
    int result; // r0

    result = 0;
    byte_2000AA4 = 0;
    return result;
}


// 0x809e31a
void sub_809E31A()
{
    int v0; // r10
    Battle *v1; // r5

    byte_2000AA8 = 0;
    byte_2000AA4 = 0;
    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    sprite_load(v1, 128, 24, 72);
    sprite_setAnimation(v1, v1->futurePanelX);
    sprite_loadAnimationData(v1);
    sprite_noShadow(v1);
    sprite_update(v1);
    sub_8001172(0);
    SetEventFlagFromImmediate(6, 142);
    ClearEventFlagFromImmediate(6, 143);
}


// 0x809e35e
void __cdecl sub_809E35E()
{
    Toolkit *tk; // r10
    Battle *player; // r5

    byte_2000AA8 = 1;
    byte_2000AA4 = 1;
    player = tk->gamestate->player;
    sprite_load(player, 128, 28, 84);
    sprite_setAnimation(player, player->futurePanelX);
    sprite_loadAnimationData(player);
    sprite_noShadow(player);
    sprite_update(player);
    sub_8001172(84);
    ClearEventFlagFromImmediate(6, 142);
    SetEventFlagFromImmediate(6, 143);
}


// 0x809e3a2
int sub_809E3A2()
{
    return byte_2000AA8;
}


// 0x809e3aa
int sub_809E3AA()
{
    int result; // r0

    result = 0;
    byte_2000AA8 = 0;
    return result;
}


// 0x809e3b2
int sub_809E3B2()
{
    int result; // r0

    result = 0;
    byte_2000AAB = 0;
    LOWORD(dword_2000AAC) = 0;
    LOWORD(dword_2000AB0) = 0;
    LOWORD(dword_2000AB4) = 0;
    LOWORD(dword_2000AB8) = 0;
    return result;
}


// 0x809e3c4
signed int __fastcall sub_809E3C4(int a1, int a2, int a3, int a4)
{
    signed int result; // r0

    dword_2000AAC = a1;
    dword_2000AB0 = a2;
    dword_2000AB4 = a3;
    dword_2000AB8 = a4;
    result = 1;
    byte_2000AAB = 1;
    return result;
}


// 0x809e3d6
int sub_809E3D6()
{
    int v0; // r10
    int result; // r0
    char v2; // t1
    _DWORD *v3; // r7

    result = byte_2000AAB;
    if ( byte_2000AAB )
    {
        v2 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup);
        v3 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
        if ( dword_2000AAC <= v3[7] )
        {
            if ( dword_2000AB4 >= v3[7] )
            {
                if ( dword_2000AB0 <= v3[8] )
                {
                    result = dword_2000AB8;
                    if ( dword_2000AB8 < v3[8] )
                    {
                        v3[8] = dword_2000AB8;
                        result = v3[10];
                        v3[7] = result;
                    }
                }
                else
                {
                    v3[8] = dword_2000AB0;
                    result = v3[10];
                    v3[7] = result;
                }
            }
            else
            {
                v3[7] = dword_2000AB4;
                result = v3[11];
                v3[8] = result;
            }
        }
        else
        {
            v3[7] = dword_2000AAC;
            result = v3[11];
            v3[8] = result;
        }
    }
    return result;
}


// 0x809e434
int sub_809E434()
{
    int v0; // r10
    int v1; // r5

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    return sprite_getFrameParameters();
}


// 0x809e442
int sub_809E442()
{
    int v0; // r10
    _BYTE *v1; // r3
    int result; // r0

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    result = *v1 | 2;
    *v1 = result;
    return result;
}


// 0x809e452
int sub_809E452()
{
    int v0; // r10
    _BYTE *v1; // r3
    int result; // r0

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    result = *v1 & 0xFD;
    *v1 = result;
    return result;
}


// 0x809e462
int sub_809E462()
{
    int v0; // r10

    return *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_10);
}


// 0x809e46e
signed int sub_809E46E()
{
    int v0; // r10
    int v1; // r7
    signed int result; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    result = sub_8031A7A(*(v1 + oGameState_OverworldPlayerObjectPtr) + 28);
    if ( result >= 72 && result <= 79 )
    {
        *(*(v1 + oGameState_OverworldPlayerObjectPtr) + 100) = result - 72;
        result = SetEventFlagFromImmediate(23, 23);
    }
    return result;
}


// 0x809e496
int __fastcall sub_809E496(int result)
{
    dword_200AD00 = result;
    return result;
}


// 0x809e4a0
signed int __fastcall sub_809E4A0(char a1)
{
    int v1; // r10
    int v2; // r5

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    return sub_8002C7A(a1);
}


// 0x809e4ae
signed int sub_809E4AE()
{
    int v0; // r10
    int v1; // r5

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    return sub_8002CCE();
}


// 0x809e4bc
void __noreturn sub_809E4BC()
{
    int v0; // r10
    Battle *v1; // r5
    int v2; // r4
    char v3; // zf

    ToggleEventFlagFromImmediate(23, 41);
    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    v2 = 55;
    TestEventFlagFromImmediate(23, 41);
    if ( v3 )
        v2 = 0;
    sprite_load(v1, 128, 24, v2);
    sprite_setAnimation(v1, v1->futurePanelX);
    sprite_loadAnimationData(v1);
    sprite_noShadow(v1);
    sprite_update(v1);
}


// 0x809e4f8
void sub_809E4F8()
{
    int v0; // r10
    Battle *v1; // r5

    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    sprite_load(v1, 128, 24, 0);
    sprite_setAnimation(v1, v1->futurePanelX);
    sprite_loadAnimationData(v1);
    sprite_noShadow(v1);
    sprite_update(v1);
}


// 0x809e520
signed int sub_809E520()
{
    int v0; // r10
    signed int result; // r0

    result = *(*(v0 + oToolkit_GameStatePtr) + oGameState_PETNaviIndex);
    if ( result > 6 )
        result -= 5;
    return result;
}


