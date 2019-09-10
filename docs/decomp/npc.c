// 0x809e570
int npc_809E570()
{
    int v0; // r5

    return (*(&jt_809E580 + *(v0 + 8)))();
}


// 0x809e590
void npc_init_809E590()
{
    int v0; // r5

    sub_809F506(*(v0 + 96));
    *(v0 + 104) = 0;
    *(v0 + 108) = 0;
    *(v0 + 14) = 0;
    *(v0 + 15) = 0;
    *(v0 + 23) = 0;
    *(v0 + 7) = 0;
    *(v0 + 22) = 0;
    *(v0 + 96) = 0;
    *(v0 + 100) = 0;
    *(v0 + 80) = 0;
    *(v0 + 84) = 0;
    *(v0 + 88) = 0;
    *(v0 + 17) = 0;
    *(v0 + 18) = 0;
    *(v0 + 19) = 0;
    *(v0 + 60) = 255;
    *(v0 + 62) = 255;
    *(v0 + 20) = -1;
    *(v0 + 21) = -1;
    *(v0 + 8) = 4;
    *(v0 + 12) = 4;
    *(v0 + 13) = 8;
    sprite_load(v0, 128, 28, 160);
    sprite_loadAnimationData(v0);
    npc_standard_809E5E2();
}


// 0x809e5e2
void npc_standard_809E5E2()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int v3; // r0
    int v4; // r0

    if ( *(v0 + 24) )
    {
        sub_809F5FC();
    }
    else
    {
        npc_runPrimaryScript_809ebdc();
        (*(&NPCCurActionJumptable + *(v0 + 9)))();
        v1 = 0;
        if ( *(v0 + 96) & 8 )
            v1 = 1;
        sprite_setFlip(v0, v1);
        if ( *(v0 + 60) != *(v0 + 62) )
        {
            sprite_load(v0, 128, *(v0 + 120), *(v0 + 60));
            sprite_loadAnimationData(v0);
            if ( *(v0 + 96) & 0x80 )
            {
                if ( *(v0 + 96) & byte_100 )
                    sprite_hasShadow();
                else
                    sprite_removeShadow();
            }
            else
            {
                sprite_noShadow(v0);
            }
            *(v0 + 21) = -1;
        }
        v2 = *(v0 + 20);
        if ( v2 != *(v0 + 21) )
        {
            sprite_setAnimation(v0, v2);
            sprite_loadAnimationData(v0);
        }
    }
    sprite_update(v0);
    sprite_setPallete(*(v0 + 22));
    v3 = *(v0 + 104);
    if ( v3 != *(v0 + 108) )
        sprite_setUnk0x2c(v3);
    *(v0 + 15) = *(v0 + 14);
    *(v0 + 21) = *(v0 + 20);
    *(v0 + 62) = *(v0 + 60);
    *(v0 + 108) = *(v0 + 104);
    sub_809F526();
    v4 = *(v0 + 100);
    if ( !v4 )
        v4 = sub_8035694((v0 + 36));
    sub_8002E14(v4);
    if ( *(v0 + 96) & 0x40 )
        sub_809F922();
}


// 0x809e6c8
int npc_waitTimer_809e6c8()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 32) - 1;
    *(v0 + 32) = v1;
    if ( !v1 )
        npc_enableScript0x19_809f516();
    return npc_runSecondaryScriptMaybe_809ebf8();
}


// 0x809e6dc
int npc_doNonCutsceneMovement_809E6DC()
{
    int v0; // r5

    (*(&jt_809E6F0 + *(v0 + 10)))();
    return npc_runSecondaryScriptMaybe_809ebf8();
}


// 0x809e704
int npc_nonCutsceneMovementInit_809E704()
{
    int v0; // r5
    char *v1; // r7
    int v2; // r0
    _DWORD *v3; // r5
    char *v4; // r7
    int v5; // r4
    int v7; // [sp+0h] [bp-8h]

    v1 = &NPCMovementIterationDeltas[4 * *(v0 + 14)];
    *(v0 + 112) = *(v0 + 36) + (*v1 << 16);
    *(v0 + 116) = *(v0 + 40) + (*(v1 + 1) << 16);
    v2 = SWI_Div(0x80000, *(v0 + 4));
    v3 = v7;
    *(v7 + 32) = (v2 + 4095) >> 12;
    v4 = &NPCMovementSubiterationDeltas[2 * *(v7 + 14)];
    v5 = *(v7 + 4);
    *(v7 + 64) = *v4 * v5 << 12;
    *(v7 + 68) = v4[1] * v5 << 12;
    *(v7 + 72) = 0;
    *(v7 + 10) = 4;
    v3[12] = v3[9] + v3[16];
    v3[13] = v3[10] + v3[17];
    *(v7 + 56) = *(v7 + 44) + *(v7 + 72);
    return sub_809F5B0();
}


// 0x809e7d8
int npc_nonCutsceneMovementUpdate_809E7D8()
{
    int v0; // r5
    int v1; // r0
    int v2; // r0
    int result; // r0
    int v4; // r0

    if ( !(*(v0 + 96) & 0x10) && sub_809F638() )
        return sub_809F5B0();
    *(v0 + 36) = *(v0 + 48);
    *(v0 + 40) = *(v0 + 52);
    *(v0 + 44) = *(v0 + 56);
    v1 = *(v0 + 32) - 1;
    *(v0 + 32) = v1;
    if ( v1 )
    {
        *(v0 + 48) += *(v0 + 64);
        *(v0 + 52) += *(v0 + 68);
        if ( !(*(v0 + 96) & 0x200) )
        {
            v4 = sub_8031612(v0 + 36) << 16;
            *(v0 + 44) = v4;
            *(v0 + 56) = v4;
        }
        result = sub_809F5B0();
    }
    else
    {
        *(v0 + 36) = *(v0 + 112);
        *(v0 + 40) = *(v0 + 116);
        v2 = *(v0 + 5) - 1;
        *(v0 + 5) = v2;
        if ( v2 )
            result = npc_nonCutsceneMovementInit_809E704();
        else
            result = npc_enableScript0x19_809f516();
    }
    return result;
}


// 0x809e84e
int npc_doVerticalMovement_809e84e()
{
    int v0; // r5
    int v1; // r1
    __int16 v2; // r2
    int result; // r0

    v1 = *(v0 + 5);
    v2 = *(v0 + 6);
    if ( !*(v0 + 4) )
        return npc_enableScript0x19_809f516();
    result = *(v0 + 4) - 1;
    *(v0 + 4) = result;
    if ( v1 )
        *(v0 + 46) -= v2;
    else
        *(v0 + 46) += v2;
    return result;
}


// 0x809e878
int npc_809E878()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int result; // r0

    if ( !*(v0 + 4) )
        return npc_enableScript0x19_809f516();
    --*(v0 + 4);
    v1 = 2 * *(v0 + 6);
    v2 = byte_809E8C4[v1];
    result = *(v0 + 7);
    if ( byte_809E8C4[v1 + 1] )
        *(v0 + v2) -= result;
    else
        *(v0 + v2) += result;
    if ( *(v0 + 5) )
        --*(v0 + 46);
    else
        ++*(v0 + 46);
    return result;
}


// 0x809e8cc
int npc_doHopMovement_809e8cc()
{
    int v0; // r5

    (*(&jt_809E8E0 + *(v0 + 10)))();
    return npc_runSecondaryScriptMaybe_809ebf8();
}


// 0x809e8fc
signed int npc_initHopMovement_809e8fc()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 72) = *(v0 + 4) << 12;
    *(v0 + 68) = *(v0 + 5) << 12;
    *(v0 + 23) = 1;
    result = 4;
    *(v0 + 10) = 4;
    return result;
}


// 0x809e916
int npc_updateHopMovement_809e916()
{
    int v0; // r5
    int v1; // r2
    int v2; // r0
    int result; // r0

    v1 = sub_8031612(v0 + 36) << 16;
    v2 = *(v0 + 72) + *(v0 + 68);
    *(v0 + 72) = v2;
    result = v2 + *(v0 + 44);
    if ( result - v1 >= 0 )
    {
        *(v0 + 44) = result;
    }
    else
    {
        *(v0 + 44) = v1;
        *(v0 + 23) = 0;
        result = npc_enableScript0x19_809f516();
    }
    return result;
}


// 0x809e944
signed int npc_initLeapMovement_809e944()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 72) = *(v0 + 4) << 12;
    *(v0 + 68) = *(v0 + 5) << 12;
    *(v0 + 23) = 1;
    result = 12;
    *(v0 + 10) = 12;
    return result;
}


// 0x809e95e
int npc_updateLeapMovement_809e95e()
{
    int v0; // r5
    int v1; // r3
    int v2; // r0
    __int16 v3; // r2
    int v4; // r0
    int result; // r0
    int v6; // [sp-4h] [bp-8h]

    v6 = sub_8031612(v0 + 36) << 16;
    v1 = 2 * *(v0 + 6);
    v2 = NPCLeapDirectionTable[v1];
    v3 = *(v0 + 7);
    if ( NPCLeapDirectionTable[v1 + 1] )
        *(v0 + v2) -= v3;
    else
        *(v0 + v2) += v3;
    v4 = *(v0 + 72) + *(v0 + 68);
    *(v0 + 72) = v4;
    result = v4 + *(v0 + 44);
    if ( result - v6 >= 0 )
    {
        *(v0 + 44) = result;
    }
    else
    {
        *(v0 + 44) = v6;
        *(v0 + 23) = 0;
        result = npc_enableScript0x19_809f516();
    }
    return result;
}


// 0x809e9c0
signed int npc_initDiagonalLeapMovement_809e9c0()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 72) = *(v0 + 4) << 12;
    *(v0 + 68) = *(v0 + 5) << 12;
    *(v0 + 23) = 1;
    result = 20;
    *(v0 + 10) = 20;
    return result;
}


// 0x809e9da
int npc_updateDiagonalLeapMovement_809e9da()
{
    int v0; // r5
    int v1; // ST00_4
    int v2; // r3
    int v3; // r0
    __int16 v4; // r2
    int v5; // r0
    int result; // r0

    v1 = sub_8031612(v0 + 36) << 16;
    v2 = 2 * *(v0 + 6);
    v3 = byte_809EA34[v2];
    v4 = *(v0 + 7);
    if ( byte_809EA34[v2 + 1] )
        *(v0 + v3) -= v4;
    else
        *(v0 + v3) += v4;
    v5 = *(v0 + 72) + *(v0 + 68);
    *(v0 + 72) = v5;
    if ( v5 > 0 )
    {
        result = v5 + *(v0 + 44);
        *(v0 + 44) = result;
    }
    else
    {
        *(v0 + 23) = 0;
        result = npc_enableScript0x19_809f516();
    }
    return result;
}


// 0x809ea3c
int npc_waitAnimFrame_809ea3c()
{
    int v0; // r5
    int v1; // r7

    if ( *(v0 + 10) )
    {
        v1 = *(v0 + 128);
        if ( v1 & 0xC0 )
        {
            if ( sprite_getFrameParameters() & v1 )
                npc_enableScript0x19_809f516();
        }
        else if ( sprite_getFrameParameters() == v1 )
        {
            npc_enableScript0x19_809f516();
        }
    }
    else
    {
        *(v0 + 10) = 4;
    }
    return npc_runSecondaryScriptMaybe_809ebf8();
}


// 0x809ea74
int npc_runNativeCallback_809ea74()
{
    int v0; // r5

    (*(v0 + 124))();
    return npc_runSecondaryScriptMaybe_809ebf8();
}


// 0x809ea82
int npc_waitCutsceneVar_809ea82()
{
    int v0; // r5
    int v1; // r10

    if ( *(*(v1 + oToolkit_S2011c50_Ptr) + *(v0 + 128)) == *(v0 + 132) )
        npc_enableScript0x19_809f516();
    return npc_runSecondaryScriptMaybe_809ebf8();
}


// 0x809eaa0
int npc_waitMysteryDataTaken_809eaa0()
{
    int v0; // r5
    char v1; // zf

    TestEventFlag(*(v0 + 128));
    if ( !v1 )
    {
        npc_enableScript0x19_809f516();
        *(v0 + 96) |= 1u;
        *v0 = 1;
        sprite_load(v0, 128, 28, 160);
        sprite_loadAnimationData(v0);
        FreeOverworldNPCObject();
        npc_disableScript0x19_809f51e();
    }
    return npc_runSecondaryScriptMaybe_809ebf8();
}


// 0x809eada
void npc_inChatbox_809EADA()
{
    int v0; // r5

    (*(&off_809EAFC + *(v0 + 9)))();
    sprite_update(v0);
    sub_809F526();
    if ( *(v0 + 96) & 0x40 )
        sub_809F922();
}


// 0x809eb04
int npc_inChatbox_curAction_809EB04()
{
    int v0; // r5

    return (*(&off_809EB14 + *(v0 + 10)))();
}


// 0x809eb20
int __fastcall npc_inChatbox_curAction_init_809EB20(int a1, int a2, int a3, int a4)
{
    NPC *npc; // r5
    Toolkit *tk; // r10
    u32 flags; // r0
    unsigned int angle; // r0
    u32 v8; // r2
    ChatBoxPropreties *chatbox; // r7
    int v10; // r0
    u32 v11; // r1
    u8 v12; // r2

    flags = npc->flags_60;
    if ( !(flags & 2) )
    {
        angle = calcAngle_800117C(tk->gamestate->player->y - npc->y, tk->gamestate->player->x - npc->x);
        sprite_setAnimation(npc, 2 * (((angle + 32) & 0xC0) >> 6) + 1);
        flags = sprite_loadAnimationData(npc);
    }
    v8 = npc->flags_60;
    if ( v8 & &byte_400 )
    {
        if ( v8 & 0x800 )
        {
            chatbox = tk->chatbox;
            v10 = *npc->pad_90;
            chatbox->unk_4C = v10;
            flags = sub_809FC96(v10);
            chatbox->unk_54 = flags;
            chatbox->unk_58 = v11;
            npc->scriptArrayOffset = v12;
        }
        if ( a4 == 8 && flags == 112 && getPETNaviSelect() )
            chatbox_runScript(npc->scriptArray, 120);
        else
            chatbox_runScript(npc->scriptArray, npc->scriptArrayOffset);
    }
    else
    {
        chatbox_runScript_202da04(npc->scriptArrayOffset);
    }
    npc->walkingFlag_0A = 4;
    return npc_inChatbox_curAction_waitClose_809EBBC();
}


// 0x809ebbc
int npc_inChatbox_curAction_waitClose_809EBBC()
{
    int v0; // r5
    int v1; // r10
    int result; // r0
    char v3; // zf
    int v4; // r7

    result = TestEventFlagFromImmediate(23, 21);
    if ( v3 )
    {
        v4 = *(v1 + oToolkit_GameStatePtr);
        result = *(v4 + oGameState_Unk_10);
        if ( !*(v4 + oGameState_Unk_10) )
        {
            *(v0 + 7) = 0;
            result = sub_809F612();
        }
    }
    return result;
}


// 0x809ebdc
int npc_runPrimaryScript_809ebdc()
{
    int v0; // r5
    int result; // r0
    unsigned __int8 *v2; // r6

    while ( 1 )
    {
        result = *(v0 + 25);
        if ( *(v0 + 25) )
            break;
        v2 = *(v0 + 76);
        (NPCCommandsJumptable[*v2])();
        *(v0 + 76) = v2;
    }
    return result;
}


// 0x809ebf8
int npc_runSecondaryScriptMaybe_809ebf8()
{
    int v0; // r5
    int result; // r0
    unsigned __int8 *v2; // r6

    while ( 1 )
    {
        result = *(v0 + 31);
        if ( *(v0 + 31) )
            break;
        v2 = *(v0 + 92);
        if ( !v2 )
            return result;
        (NPCCommandsJumptable[*v2])();
        *(v0 + 92) = v2;
    }
    return npc_decrementSecondaryTimer_809ec1c();
}


// 0x809ec1c
int npc_decrementSecondaryTimer_809ec1c()
{
    int v0; // r5
    int result; // r0

    result = *(v0 + 34) - 1;
    *(v0 + 34) = result;
    if ( !result )
    {
        result = 0;
        *(v0 + 31) = 0;
    }
    return result;
}


// 0x809ed80
int __fastcall NPCCommand_end(int a1)
{
    return npc_disableScript0x19_809f51e();
}


// 0x809ed88
int NPCCommand_jump()
{
    int v0; // r6

    return ReadNPCScriptWord((v0 + 1));
}


// 0x809ed94
int __noreturn NPCCommand_free_and_end()
{
    Battle *v0; // r5

    v0->objFlags = 1;
    sprite_load(v0, 128, 28, 160);
    sprite_loadAnimationData(v0);
    FreeOverworldNPCObject();
    return npc_disableScript0x19_809f51e();
}


// 0x809edb2
int NPCCommand_jump_if_flag_set()
{
    int v0; // r6
    int v1; // r0
    int result; // r0
    char v3; // zf

    v1 = ReadNPCScriptHalfword((v0 + 1));
    result = TestEventFlag(v1);
    if ( !v3 )
        result = ReadNPCScriptWord((v0 + 3));
    return result;
}


// 0x809edd0
int NPCCommand_jump_if_flag_clear()
{
    int v0; // r6
    int v1; // r0
    int result; // r0
    char v3; // zf

    v1 = ReadNPCScriptHalfword((v0 + 1));
    result = TestEventFlag(v1);
    if ( v3 )
        result = ReadNPCScriptWord((v0 + 3));
    return result;
}


// 0x809edee
unsigned int NPCCommand_set_event_flag()
{
    int v0; // r6
    int v1; // r0

    v1 = ReadNPCScriptHalfword((v0 + 1));
    return SetEventFlag(v1);
}


// 0x809ee00
unsigned int NPCCommand_clear_event_flag()
{
    int v0; // r6
    int v1; // r0

    v1 = ReadNPCScriptHalfword((v0 + 1));
    return ClearEventFlag(v1);
}


// 0x809ee12
signed int NPCCommand_set_active_and_visible()
{
    _BYTE *v0; // r5
    signed int result; // r0

    result = 3;
    *v0 = 3;
    return result;
}


// 0x809ee1a
signed int NPCCommand_set_active_and_invisible()
{
    _BYTE *v0; // r5
    signed int result; // r0

    result = 1;
    *v0 = 1;
    return result;
}


// 0x809ee22
int NPCCommand_set_collision_radius()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    result = *(v1 + 1);
    *(v0 + 12) = result;
    return result;
}


// 0x809ee2a
int NPCCommand_set_z_reach()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    result = *(v1 + 1);
    *(v0 + 13) = result;
    return result;
}


// 0x809ee32
int NPCCommand_shift_center()
{
    _BYTE *v0; // r5
    _BYTE *v1; // r6
    int result; // r0

    v0[17] = v1[1];
    v0[18] = v1[2];
    result = v1[3];
    v0[19] = result;
    return result;
}


// 0x809ee48
signed int NPCCommand_enable_npc_interaction()
{
    int v0; // r5
    signed int result; // r0

    result = -2;
    *(v0 + 96) &= 0xFFFFFFFE;
    return result;
}


// 0x809ee56
signed int NPCCommand_disable_npc_interaction()
{
    int v0; // r5
    signed int result; // r0

    result = 1;
    *(v0 + 96) |= 1u;
    return result;
}


// 0x809ee62
int NPCCommand_set_npc_palette_index()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    result = *(v1 + 1);
    *(v0 + 22) = result;
    return result;
}


// 0x809ee6c
int NPCCommand_pause()
{
    int v0; // r5
    int v1; // r6

    *(v0 + 9) = 0;
    *(v0 + 10) = 0;
    *(v0 + 32) = *(v1 + 1);
    return npc_disableScript0x19_809f51e();
}


// 0x809ee82
int NPCCommand_init_hop()
{
    int v0; // r5
    int v1; // r6

    *(v0 + 4) = *(v1 + 1);
    *(v0 + 5) = *(v1 + 2);
    *(v0 + 9) = 8;
    *(v0 + 10) = 0;
    return npc_disableScript0x19_809f51e();
}


// 0x809ee9c
signed int NPCCommand_face_player_when_interacted()
{
    int v0; // r5
    signed int result; // r0

    result = -3;
    *(v0 + 96) &= 0xFFFFFFFD;
    return result;
}


// 0x809eeaa
signed int NPCCommand_do_not_face_player_when_interacted()
{
    int v0; // r5
    signed int result; // r0

    result = 2;
    *(v0 + 96) |= 2u;
    return result;
}


// 0x809eeb6
int NPCCommand_set_coords()
{
    _DWORD *v0; // r5
    unsigned __int8 *v1; // r6
    int result; // r0

    v0[9] = ReadNPCScriptHalfword(v1 + 1) << 16;
    v0[10] = ReadNPCScriptHalfword(v1 + 3) << 16;
    result = ReadNPCScriptHalfword(v1 + 5) << 16;
    v0[11] = result;
    return result;
}


// 0x809eeda
int NPCCommand_move_in_direction()
{
    int v0; // r5
    _BYTE *v1; // r6

    *(v0 + 14) = v1[1];
    *(v0 + 4) = v1[2];
    *(v0 + 5) = v1[3];
    *(v0 + 9) = 4;
    *(v0 + 10) = 0;
    return npc_disableScript0x19_809f51e();
}


// 0x809eef8
int NPCCommand_set_animation()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    result = *(v1 + 1);
    *(v0 + 20) = result;
    return result;
}


// 0x809ef00
unsigned int NPCCommand_set_sprite()
{
    int v0; // r5
    int v1; // r6
    int v2; // r0
    int i; // r3
    int v4; // r2
    int v5; // r3
    unsigned int result; // r0

    v2 = *(v1 + 1);
    *(v0 + 60) = v2;
    *(v0 + 22) = 0;
    *(v0 + 104) = 0;
    for ( i = 0; ; i += 3 )
    {
        v4 = OverworldNPCSpriteVariations[i];
        if ( v4 == v2 )
            break;
        if ( v4 == 255 )
            goto LABEL_6;
    }
    v5 = i + 1;
    *(v0 + 104) = OverworldNPCSpriteVariations[v5] << 24;
    *(v0 + 22) = OverworldNPCSpriteVariations[v5 + 1];
LABEL_6:
    *(v0 + 120) = 24;
    result = *(v0 + 96) & 0xFFFFFF7F;
    *(v0 + 96) = result;
    return result;
}


// 0x809ef40
int NPCCommand_set_text_script_index()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    result = *(v1 + 1);
    *(v0 + 28) = result;
    return result;
}


// 0x809ef48
int NPCCommand_disable_layer_priority_override()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(v0 + 100) = 0;
    return result;
}


// 0x809ef50
signed int NPCCommand_set_layer_priority_override_to_2()
{
    int v0; // r5
    signed int result; // r0

    result = 2;
    *(v0 + 100) = 2;
    return result;
}


// 0x809ef58
signed int NPCCommand_set_layer_priority_override_to_3()
{
    int v0; // r5
    signed int result; // r0

    result = 3;
    *(v0 + 100) = 3;
    return result;
}


// 0x809ef60
int NPCCommand_write_hidden_oam_pieces()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    result = ReadNPCScriptWord((v1 + 1));
    *(v0 + 104) = result;
    return result;
}


// 0x809ef6e
unsigned int NPCCommand_set_individual_hidden_oam_piece()
{
    int v0; // r5
    int v1; // r6
    unsigned int result; // r0

    result = *(v0 + 104) | (0x80000000 >> *(v1 + 1));
    *(v0 + 104) = result;
    return result;
}


// 0x809ef82
unsigned int NPCCommand_clear_individual_hidden_oam_piece()
{
    int v0; // r5
    int v1; // r6
    char v2; // t1
    unsigned int result; // r0

    v2 = *(v1 + 1);
    result = *(v0 + 104) & ~(0x80000000 >> *(v1 + 1));
    *(v0 + 104) = result;
    return result;
}


// 0x809ef9a
signed int NPCCommand_disable_collision()
{
    int v0; // r5
    signed int result; // r0

    result = 4;
    *(v0 + 96) |= 4u;
    return result;
}


// 0x809efa6
signed int NPCCommand_enable_collision()
{
    int v0; // r5
    signed int result; // r0

    result = -5;
    *(v0 + 96) &= 0xFFFFFFFB;
    return result;
}


// 0x809efb4
int NPCCommand_give_attached_shadow()
{
    int v0; // r5

    *(v0 + 96) &= 0xFFFFFF7F;
    return sprite_noShadow(v0);
}


// 0x809efc6
int NPCCommand_give_detatched_shadow()
{
    int v0; // r5

    *(v0 + 96) |= 0x180u;
    return sprite_hasShadow();
}


// 0x809efd8
int NPCCommand_remove_shadow()
{
    int v0; // r5

    *(v0 + 96) |= 0x80u;
    *(v0 + 96) &= 0xFFFFFEFF;
    return sprite_removeShadow();
}


// 0x809effc
unsigned int NPCCommand_set_sprite_to_cur_pet_navi()
{
    int v0; // r5
    unsigned int result; // r0

    *(v0 + 60) = PETNaviToNPCSpriteTable[getPETNaviSelect()];
    *(v0 + 120) = 24;
    result = *(v0 + 96) & 0xFFFFFF7F;
    *(v0 + 96) = result;
    return result;
}


// 0x809f01c
unsigned int NPCCommand_set_sprite_with_category()
{
    int v0; // r5
    int v1; // r6
    unsigned int result; // r0

    *(v0 + 60) = *(v1 + 1);
    *(v0 + 120) = *(v1 + 2);
    result = *(v0 + 96) & 0xFFFFFF7F;
    *(v0 + 96) = result;
    return result;
}


// 0x809f030
signed int NPCCommand_toggle_sprite_mirror()
{
    int v0; // r5
    signed int result; // r0

    result = 8;
    *(v0 + 96) ^= 8u;
    return result;
}


// 0x809f03c
signed int NPCCommand_disable_collision_alternate()
{
    int v0; // r5
    signed int result; // r0

    result = 16;
    *(v0 + 96) |= 0x10u;
    return result;
}


// 0x809f048
int NPCCommand_play_sound()
{
    int v0; // r6
    int v1; // r0
    int v2; // r1
    int v3; // r2

    v1 = ReadNPCScriptHalfword((v0 + 1));
    return PlaySoundEffect(v1, v2, v3);
}


// 0x809f058
int NPCCommand_init_mystery_data()
{
    int v0; // r5
    int v1; // r6
    int v2; // r0
    int v3; // r0
    int v4; // r1
    signed __int16 *v5; // r2
    int result; // r0

    *(v0 + 96) |= 0xC02u;
    v2 = ReadNPCScriptHalfword((v1 + 1));
    *(v0 + 144) = v2;
    v3 = sub_809FC1C(v2);
    if ( v3 )
    {
        *(v0 + 22) = byte_809F0E4[v3];
        *(v0 + 96) |= v4 << 6;
        *(v0 + 28) = -1;
        *(v0 + 148) = dword_873D108;
        *(v0 + 36) = *v5 << 16;
        *(v0 + 40) = v5[1] << 16;
        *(v0 + 44) = v5[2] << 16;
        *(v0 + 12) = 4;
        *(v0 + 17) = 2;
        result = -2;
        *(v0 + 18) = -2;
    }
    else
    {
        *v0 = 1;
        sprite_load(v0, 128, 28, 160);
        sprite_loadAnimationData(v0);
        FreeOverworldNPCObject();
        result = npc_disableScript0x19_809f51e();
    }
    return result;
}


// 0x809f0ec
int NPCCommand_wait_anim_frame()
{
    int v0; // r5
    int v1; // r6

    *(v0 + 128) = *(v1 + 1);
    *(v0 + 9) = 12;
    *(v0 + 10) = 0;
    return npc_disableScript0x19_809f51e();
}


// 0x809f104
int NPCCommand_set_color_shader()
{
    Battle *v0; // r5
    int v1; // r6
    int v2; // r0

    v2 = ReadNPCScriptHalfword((v1 + 1));
    return sprite_setColorShader(v0, v2);
}


// 0x809f114
int NPCCommand_set_mosaic()
{
    int v0; // r6
    int result; // r0
    int v2; // r1

    sprite_clearMosaic();
    result = *(v0 + 1);
    v2 = *(v0 + 2);
    if ( result + v2 )
        result = sprite_setMosaicSize(result, v2);
    return result;
}


// 0x809f12c
int NPCCommand_set_animation_force_update()
{
    int v0; // r5
    int v1; // r6
    int v2; // r0
    int result; // r0

    v2 = *(v1 + 1);
    *(v0 + 20) = v2;
    result = ~v2;
    *(v0 + 21) = result;
    return result;
}


// 0x809f138
int NPCCommand_set_transform()
{
    unsigned __int8 *v0; // r6

    sprite_makeUnscalable();
    sprite_makeScalable();
    return sprite_setScaleParameters(v0[1], v0[2], v0[3]);
}


// 0x809f150
int NPCCommand_remove_transform()
{
    return sprite_makeUnscalable();
}


// 0x809f15a
signed int NPCCommand_set_alpha()
{
    int v0; // r6
    signed int result; // r0

    sprite_disableAlpha();
    result = *(v0 + 1);
    if ( *(v0 + 1) )
        result = sub_8002C7A(result);
    return result;
}


// 0x809f16e
int NPCCommand_run_secondary_script()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    result = ReadNPCScriptWord((v1 + 1));
    *(v0 + 92) = result;
    return result;
}


// 0x809f17c
signed int NPCCommand_pause_secondary_script()
{
    int v0; // r5
    int v1; // r6
    signed int result; // r0

    *(v0 + 11) = 0;
    *(v0 + 34) = *(v1 + 1);
    result = 1;
    *(v0 + 31) = 1;
    return result;
}


// 0x809f18e
int NPCCommand_end_secondary_script()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(v0 + 92) = 0;
    *(v0 + 34) = 0;
    return result;
}


// 0x809f198
int NPCCommand_init_native_callback()
{
    int v0; // r5
    int v1; // r6
    signed int v2; // r1

    *(v0 + 140) = v1 + 5;
    *(v0 + 124) = ReadNPCScriptWord((v1 + 1));
    *(v0 + 9) = 16;
    *(v0 + 10) = 0;
    v2 = 128;
    do
    {
        *(v0 + v2) = 0;
        v2 += 4;
    }
    while ( v2 <= 140 );
    return npc_disableScript0x19_809f51e();
}


// 0x809f1c6
int NPCCommand_jump_with_link()
{
    int v0; // r5
    int v1; // r6

    *(v0 + 140) = v1 + 5;
    return ReadNPCScriptWord((v1 + 1));
}


// 0x809f1d8
int NPCCommand_init_native_callback_with_args()
{
    int v0; // r5
    _BYTE *v1; // r6
    signed int v2; // r1

    *(v0 + 140) = v1 + 9;
    *(v0 + 14) = v1[1];
    *(v0 + 4) = v1[2];
    *(v0 + 5) = v1[3];
    *(v0 + 32) = v1[4];
    *(v0 + 124) = ReadNPCScriptWord(v1 + 5);
    *(v0 + 9) = 16;
    *(v0 + 10) = 0;
    v2 = 128;
    do
    {
        *(v0 + v2) = 0;
        v2 += 4;
    }
    while ( v2 <= 140 );
    return npc_disableScript0x19_809f51e();
}


// 0x809f218
int NPCCommand_init_movement()
{
    int v0; // r5
    _BYTE *v1; // r6

    *(v0 + 140) = v1 + 8;
    *(v0 + 129) = v1[1];
    *(v0 + 130) = v1[2];
    *(v0 + 131) = v1[3];
    return ReadNPCScriptWord(v1 + 4);
}


// 0x809f23e
int NPCCommand_change_movement_direction()
{
    int v0; // r5
    int v1; // r6

    *(v0 + 14) = (*(v0 + 129) + *(v1 + 1)) & 7;
    *(v0 + 4) = *(v0 + 130);
    *(v0 + 5) = *(v0 + 131);
    *(v0 + 9) = 4;
    *(v0 + 10) = 0;
    return npc_disableScript0x19_809f51e();
}


// 0x809f26a
void NPCCommand_return_to_link()
{
    int v0; // r5
    int v1; // r6

    v1 = *(v0 + 140);
}


// 0x809f270
signed int NPCCommand_jump_if_progress_in_range()
{
    unsigned __int8 *v0; // r6
    int v1; // r10
    signed int result; // r0

    result = *(*(v1 + oToolkit_GameStatePtr) + oGameState_GameProgress);
    if ( result >= v0[1] && result <= v0[2] )
        result = ReadNPCScriptWord(v0 + 3);
    return result;
}


// 0x809f292
int NPCCommand_write_cutscene_var()
{
    int v0; // r6
    int v1; // r10
    int result; // r0

    result = *(v0 + 1);
    *(*(v1 + oToolkit_S2011c50_Ptr) + result) = *(v0 + 2);
    return result;
}


// 0x809f2a2
int NPCCommand_jump_if_cutscene_var_equals()
{
    unsigned __int8 *v0; // r6
    int v1; // r10
    int result; // r0

    result = *(*(v1 + oToolkit_S2011c50_Ptr) + v0[1]);
    if ( result == v0[2] )
        result = ReadNPCScriptWord(v0 + 3);
    return result;
}


// 0x809f2c0
int NPCCommand_jump_if_cutscene_var_not_equal()
{
    unsigned __int8 *v0; // r6
    int v1; // r10
    int result; // r0

    result = *(*(v1 + oToolkit_S2011c50_Ptr) + v0[1]);
    if ( result != v0[2] )
        result = ReadNPCScriptWord(v0 + 3);
    return result;
}


// 0x809f2de
int NPCCommand_wait_cutscene_var()
{
    int v0; // r5
    int v1; // r6

    *(v0 + 9) = 20;
    *(v0 + 10) = 0;
    *(v0 + 128) = *(v1 + 1);
    *(v0 + 132) = *(v1 + 2);
    return npc_disableScript0x19_809f51e();
}


// 0x809f2fc
signed int NPCCommand_set_unk_flags_60_flag_0x200()
{
    int v0; // r5
    signed int result; // r0

    result = 512;
    *(v0 + 96) &= 0xFFFFFDFF;
    return result;
}


// 0x809f30c
signed int NPCCommand_clear_unk_flags_60_flag_0x200()
{
    int v0; // r5
    signed int result; // r0

    result = 512;
    *(v0 + 96) |= 0x200u;
    return result;
}


// 0x809f31c
int NPCCommand_set_text_script_index_and_ptr()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    *(v0 + 28) = *(v1 + 1);
    *(v0 + 96) |= &byte_400;
    result = ReadNPCScriptWord((v1 + 2));
    *(v0 + 148) = result;
    return result;
}


// 0x809f338
int NPCCommand_wait_mystery_data_taken()
{
    int v0; // r5
    int v1; // r6

    *(v0 + 9) = 24;
    *(v0 + 10) = 0;
    *(v0 + 128) = ReadNPCScriptHalfword((v1 + 1));
    return npc_disableScript0x19_809f51e();
}


// 0x809f354
signed int NPCCommand_set_obj_window_mode()
{
    int v0; // r6
    int v1; // r10
    int v2; // r4
    signed int result; // r0

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    sprite_disableObjWindowMode();
    result = *(v0 + 1);
    if ( !*(v0 + 1) )
        result = sprite_setObjWindowMode();
    return result;
}


// 0x809f36e
int NPCCommand_play_music()
{
    int v0; // r6
    int v1; // r0
    int v2; // r1
    int v3; // r2

    v1 = ReadNPCScriptHalfword((v0 + 1));
    return PlaySong(v1, v2, v3);
}


// 0x809f37e
int NPCCommand_set_sprite_0x3_bit5()
{
    return sprite_setField0x3Bit5();
}


// 0x809f388
int NPCCommand_remove_shadow_ignore_flags()
{
    return sprite_removeShadow();
}


// 0x809f392
int NPCCommand_do_camera_shake()
{
    int v0; // r6
    __int16 v1; // r0

    v1 = ReadNPCScriptHalfword((v0 + 2));
    return camera_initShakeEffect_80302a8(*(v0 + 1), v1);
}


// 0x809f3a6
int NPCCommand_jump_if_anim_not_equal()
{
    int v0; // r5
    int v1; // r6
    int result; // r0

    result = *(v1 + 1);
    if ( *(v0 + 20) != result )
        result = ReadNPCScriptWord((v1 + 2));
    return result;
}


// 0x809f3c0
char *NPCCommand_set_text_script_index_and_ptr_to_decomp_buffer()
{
    int v0; // r5
    int v1; // r6
    char *result; // r0

    *(v0 + 28) = *(v1 + 1);
    result = &byte_400;
    *(v0 + 96) |= &byte_400;
    *(v0 + 148) = byte_202FA04;
    return result;
}


// 0x809f3e8
int NPCCommand_jump_alt()
{
    int v0; // r6

    return ReadNPCScriptWord((v0 + 5));
}


// 0x809f3f6
int NPCCommand_init_leap()
{
    int v0; // r5
    _BYTE *v1; // r6

    *(v0 + 4) = v1[1];
    *(v0 + 5) = v1[2];
    *(v0 + 6) = v1[3];
    *(v0 + 7) = v1[4];
    *(v0 + 9) = 8;
    *(v0 + 10) = 8;
    return npc_disableScript0x19_809f51e();
}


// 0x809f418
int NPCCommand_init_vertical_movement()
{
    int v0; // r5
    _BYTE *v1; // r6

    *(v0 + 4) = v1[1];
    *(v0 + 5) = v1[2];
    *(v0 + 6) = v1[3];
    *(v0 + 9) = 4;
    *(v0 + 10) = 8;
    return npc_disableScript0x19_809f51e();
}


// 0x809f438
int NPCCommand_init_diagonal_leap()
{
    int v0; // r5
    _BYTE *v1; // r6

    *(v0 + 4) = v1[1];
    *(v0 + 5) = v1[2];
    *(v0 + 6) = v1[3];
    *(v0 + 7) = v1[4];
    *(v0 + 9) = 8;
    *(v0 + 10) = 16;
    return npc_disableScript0x19_809f51e();
}


// 0x809f45a
int NPCCommand_init_groundman_minigame_prog()
{
    int v0; // r5
    int v1; // r6
    int v2; // r0
    char v3; // zf
    int v4; // r0
    char v5; // r2
    int v6; // r1
    int v7; // r1
    int v8; // r2
    int result; // r0

    v2 = ReadNPCScriptHalfword((v1 + 1));
    TestEventFlag(v2);
    if ( v3 && (v4 = ReadNPCScriptHalfword((v1 + 1)), GetGroundmanMinigameProgGridCoordsAndTextScriptIndex(v4), v6) )
    {
        *(v0 + 28) = v5;
        *(v0 + 148) = TextScriptGroundmanMinigame;
        *(v0 + 36) = ConvertGroundmanMinigameGridCoordsToMapCoords();
        *(v0 + 40) = v7;
        *(v0 + 44) = v8;
        result = 5120;
        *(v0 + 96) |= 0x1400u;
    }
    else
    {
        *v0 = 1;
        sprite_load(v0, 128, 28, 160);
        sprite_loadAnimationData(v0);
        FreeOverworldNPCObject();
        result = npc_disableScript0x19_809f51e();
    }
    return result;
}


// 0x809f4b8
int NPCCommand_jack_out()
{
    int v0; // r5
    char v1; // r2
    char v2; // r0
    int v3; // r1
    int v4; // r2

    sprite_getFrameParameters();
    v2 = (v1 & 7) + 33;
    *(v0 + 20) = v2;
    *(v0 + 21) = ~v2;
    *(v0 + 96) |= 0x11u;
    SpawnOverworldMapObject(0, *(v0 + 36), *(v0 + 40), *(v0 + 44));
    return PlaySoundEffect(118, v3, v4);
}


// 0x809f4ee
int NPCCommand_jump_if_screen_fade_active()
{
    int v0; // r6
    int result; // r0
    int v2; // r1

    result = sub_80062C8();
    if ( v2 )
        result = ReadNPCScriptWord((v0 + 1));
    return result;
}


// 0x809f506
int __fastcall sub_809F506(int a1)
{
    int v1; // r5
    int result; // r0

    *(v1 + 76) = a1;
    result = 0;
    *(v1 + 25) = 0;
    *(v1 + 24) = 0;
    *(v1 + 31) = 0;
    *(v1 + 92) = 0;
    return result;
}


// 0x809f516
int npc_enableScript0x19_809f516()
{
    int v0; // r5
    int result; // r0

    result = 0;
    *(v0 + 25) = 0;
    return result;
}


// 0x809f51e
signed int npc_disableScript0x19_809f51e()
{
    int v0; // r5
    signed int result; // r0

    result = 1;
    *(v0 + 25) = 1;
    return result;
}


