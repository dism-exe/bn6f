// 0x803fd08
// () -> int
int chatbox_uncompMapTextArchives_803FD08()
{
    int (*v0)[19]; // r0
    int (*v1)[205]; // r0
    void *v2; // r0

    v0 = chatbox_selectCompTextByMap_8040730(0);
    SWI_LZ77UnCompReadNormalWrite8bit(v0, &eDecompressedTextArchive202DA00);
    v1 = chatbox_selectCompTextByMap_8040794();
    SWI_LZ77UnCompReadNormalWrite8bit(v1, &DecompressionBuf2033400);
    v2 = chatbox_selectCompTextByMap_80407C8();
    SWI_LZ77UnCompReadNormalWrite8bit(v2, eDecompressedTextArchive202FA00);
    return 0;
}


// 0x803fd3c
int chatbox_uncompMapTextArchives_803FD3C()
{
    int (*v0)[19]; // r0

    v0 = chatbox_selectCompTextByMap_8040730(1);
    SWI_LZ77UnCompReadNormalWrite8bit(v0, &eDecompressionBuf2034A00);
    return 0;
}


// 0x803fd54
int chatbox_uncompMapTextArchives_803FD54()
{
    int (*v0)[205]; // r0

    v0 = chatbox_selectCompTextByMap_8040794();
    SWI_LZ77UnCompReadNormalWrite8bit(v0, &DecompressionBuf2033400);
    return 0;
}


// 0x803fd68
// (u8 scriptID) -> void
void __fastcall chatbox_runScript_202da04(int a1)
{
    chatbox_runScript(eTextScript202DA04, a1);
}


// 0x803fd78
// (void *textScript, u8 scriptIdx) -> void
void __fastcall chatbox_runScript_803FD78(int a1, int a2)
{
    int v2; // r10

    chatbox_runScript(a1, a2);
    CopyHalfwords(byte_803FD94, (*(v2 + oToolkit_ChatboxPtr) + offsetof(ChatBoxPropreties, unk_68)), 8);
}


// 0x803fd9c
// (void *textScript, u8 scriptIdx) -> void
void __fastcall chatbox_runScript_803FD9C(int a1, int a2)
{
    int v2; // r10

    chatbox_runScript(a1, a2);
    (loc_8000AC8)(byte_86BFBA0, 100719744, dword_280);
    CopyByEightWords(byte_86BFE20, &unk_3001B40, 0x20u);
    CopyHalfwords(byte_803FDE4, (*(v2 + oToolkit_ChatboxPtr) + 104), 8);
}


// 0x803fe08
// (void *textScript, u8 scriptIdx) -> void
void chatbox_runScript_803FE08()
{
    JUMPOUT(&loc_803FE14);
}


// 0x803fe10
void __fastcall chatbox_runScript_803FE10(int a1, int a2)
{
    int v2; // r10

    chatbox_runScript(a1, a2);
    (loc_8000AC8)(byte_86C05E0, 100719744, &byte_320);
    CopyByEightWords(byte_86C0920, &unk_3001B40, 0x20u);
    CopyHalfwords(byte_803FE50, (*(v2 + oToolkit_ChatboxPtr) + 104), 8);
}


// 0x803fe74
// (u16 *scriptList, u8 scriptOffIdx) -> void
void __fastcall chatbox_runScriptAndSetWhiteDot803FE74(int a1, int a2)
{
    chatbox_runScript(a1, a2);
    (loc_8000AC8)(spriteWhiteDot, 100719744, &dword_6F8);
    CopyByEightWords(spriteWhiteDot, &unk_3001B40, 0x20u);
}


// 0x803feb4
void __cdecl chatbox_onUpdate()
{
    Toolkit *tk; // r10
    ChatBoxPropreties *cb; // r5
    char zf; // zf
    Joystick *joystick; // r7
    u32 v4; // r1

    cb = tk->chatbox;
    if ( cb->bVisible )
    {
        chatbox_clear_eFlags2009F38(&dword_338);
        chatbox_mask_eFlags2009F38(64);
        if ( zf )
        {
            joystick = tk->joystick;
            cb->keyState = joystick->keyState;
            cb->keysFlags = joystick->IQR;
            cb->keyPress = joystick->keyPress;
        }
        else
        {
            cb->keyState = 0;
            cb->keysFlags = 0;
            cb->keyPress = 0;
        }
        chatbox_maskFlags_3e(1u);
        if ( zf )
        {
            v4 = cb->unk_78;
            if ( !v4 )
            {
                chatbox_8040154();
                goto LABEL_11;
            }
            cb->unk_78 = v4 - 1;
        }
        cb->bxoff_11 = 1;
LABEL_11:
        (*(&jt_803FF30 + cb->bxoff_11))();                    // interprete char
        if ( *&cb[3].chatbox_y )
            chatbox_8040CD0();
    }
}


// 0x803ff50
// () ->
int chatbox_interpreteAndDrawDialogChar()
{
    ChatBoxPropreties *cb; // r5
    u8 *v1; // r4
    int v2; // r1
    int v3; // r0
    int v4; // r2
    int v5; // r0
    int v6; // r1
    u32 v7; // r6
    u32 v8; // r6
    char zf; // zf
    int v10; // r0

    cb->bxoff_11 = 1;
    do
    {
        v1 = cb->pScriptCursor;
        v2 = *v1;
        if ( v2 - 229 < 0 )
        {
            chatbox_clearFlags_3e(1);
            v3 = 0;
            v4 = cb->bNumCharacterTyped;
            if ( v4 > 0 )
            {
LABEL_15:
                cb->bNumCharacterTyped = v4 - 1;
                goto LABEL_16;
            }
            cb->bNumCharacterTyped = cb->typingSpeed;
            v5 = chatbox_maskFlags_3e(0x40u);
            if ( zf )
                v5 = PlaySoundEffect(cb->unk_68, v6, offsetof(ChatBoxPropreties, unk_68));
            if ( v6 == 228 )
            {
                v8 = cb->unk_7C;
                sub_3006F8C(0, v1[1] + 228);
                v1 += 2;
            }
            else
            {
                v7 = cb->unk_7C;
                sub_3006F8C(v5, v6);
                ++v1;
            }
            chatbox_8040C44();
            v3 = 1;
        }
        else
        {
            v3 = 0;
            v4 = cb->bNumCharacterTyped;
            if ( v4 > 0 )
                goto LABEL_15;
            v3 = (TextScriptBytecodeJumptable[v2 - 0xE5])(0);
            if ( v3 != 2 )
                chatbox_8040C9C();
        }
LABEL_16:
        cb->pScriptCursor = v1;
    }
    while ( v3 );
    chatbox_maskFlags_3e(0x100u);
    if ( zf )
        chatbox_CopyBackgroundTiles_8040344();
    chatbox_mask_eFlags2009F38(128);
    if ( !zf )
    {
        chatbox_maskFlags_3e(0x100u);
        if ( !zf || cb->chatboxOpenState == 3 )
        {
            v10 = cb->amount_of_box_appeared;
            if ( cb->unk_3D != 2 )
            {
                if ( cb->amount_of_box_appeared )
                    v10 = cb->currLine;
                sub_30070B4(v10);
                cb->currLine = cb->amount_of_box_appeared;
            }
            chatbox_804021C();
        }
    }
    chatbox_8040B8C();
    return chatbox_804082C();
}


// 0x804005c
signed int chatbox_interpreteAndDrawDialogChar_1()
{
    ChatBoxPropreties *cb; // r5
    u8 *v1; // r4
    int v2; // r1
    int v3; // r1
    u32 v4; // r6
    u32 v5; // r6
    int v6; // r2
    char v7; // zf
    int v8; // r1
    signed int result; // r0

    cb->bxoff_11 = 0;
    cb->unk_74 = 0;
    cb->unk_3D = 1;
    cb->currLine = cb->amount_of_box_appeared;
    v1 = cb->pScriptCursor;
    do
    {
        v2 = *v1;
        if ( v2 - 229 < 0 )
        {
            chatbox_setflags_3e(2112);
            if ( v3 == 228 )
            {
                v5 = cb->unk_7C;
                sub_3006F8C(0, v1[1] + 228);
                chatbox_8040C9C();
                v1 += 2;
            }
            else
            {
                v4 = cb->unk_7C;
                sub_3006F8C(0, v3);
                chatbox_8040C9C();
                ++v1;
            }
        }
        else
        {
            (TextScriptBytecodeJumptable[v2 - 0xE5])();
            chatbox_8040C9C();
        }
        cb->pScriptCursor = v1;
        v6 = cb->flags_3E & 1;
    }
    while ( !(cb->unk_74 | v6) || !(cb->bxoff_11 + v6) );
    chatbox_clearFlags_3e(64);
    chatbox_maskFlags_3e(byte_100);
    if ( v7 )
        chatbox_CopyBackgroundTiles_8040344();
    chatbox_mask_eFlags2009F38(128);
    if ( !v7 )
    {
        chatbox_maskFlags_3e(byte_100);
        if ( !v7 || cb->chatboxOpenState == 3 )
        {
            while ( 1 )
            {
                sub_30070B4(cb->currLine);
                v8 = cb->currLine + 1;
                if ( cb->amount_of_box_appeared < v8 )
                    break;
                cb->currLine = v8;
            }
            chatbox_804021C();
        }
    }
    chatbox_8040B8C();
    chatbox_804082C();
    result = 1;
    cb->bxoff_11 = 1;
    return result;
}


// 0x8040154
int chatbox_8040154()
{
    int v0; // r5
    int result; // r0

    if ( *(v0 + offsetof(ChatBoxPropreties, keyState)) & 2
        || *(v0 + offsetof(ChatBoxPropreties, keysFlags)) & 1
        || !*(v0 + 8) )
    {
        result = 0;
        *(v0 + 17) = 0;
    }
    return result;
}


// 0x804017c
int chatbox_804017C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r8
    signed __int16 v3; // r12
    signed int v4; // r7
    int result; // r0
    int v6; // ST00_4
    unsigned __int8 v7; // vf

    v1 = *(v0 + 24);
    v2 = *(v0 + 25);
    v3 = -7496;
    v4 = &dword_8;
    do
    {
        result = 5;
        do
        {
            v6 = result;
            sub_802FE28(
                *&byte_8040200[v4] | ((32 * result + v1) << 16) | (v2 + 4 * v4),
                v3 + 12 * v4 + (result << *&byte_8040210[v4]),
                0,
                3);
            result = v6 - 1;
        }
        while ( v6 >= 1 );
        v7 = __OFSUB__(v4, 4);
        v4 -= 4;
    }
    while ( !((v4 < 0) ^ v7) );
    return result;
}


// 0x804021c
signed int chatbox_804021C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r9
    signed __int16 v3; // r12
    unsigned int v4; // r7
    int v5; // r6
    unsigned int v6; // r7
    int v7; // r1
    int v8; // r1
    __int16 v9; // r12
    int v10; // ST00_4
    int v11; // r1
    __int16 v12; // r12
    signed int result; // r0

    v1 = *(v0 + offsetof(ChatBoxPropreties, textCoord));
    v2 = *(v0 + offsetof(ChatBoxPropreties, unk_19));
    v3 = -7496;
    v4 = 0;
    do
    {
        v5 = 0;
        do
        {
            v6 = 4 * v4;
            v7 = *&byte_8040314[v6];
            v6 >>= 2;
            sub_802FE28(((32 * v5 + v1) << 16) | v7 | (*(&dword_8040340 + v6) + v2), v3 + byte_8040324[8 * v6 + v5], 0, 3);
            v6 *= 4;
            v8 = *&byte_8040314[v6];
            v6 >>= 2;
            sub_802FE28(
                ((32 * (v5 + 1) + v1) << 16) | v8 | (*(&dword_8040340 + v6) + v2),
                v9 + byte_8040324[8 * v6 + 1 + v5],
                0,
                3);
            v10 = v5 + 2;
            v6 *= 4;
            v11 = *&byte_8040314[v6];
            v4 = v6 >> 2;
            result = sub_802FE28(
                                 ((32 * v10 + v1) << 16) | v11 | (*(&dword_8040340 + v4) + v2),
                                 v12 + byte_8040324[8 * v4 + v10],
                                 0,
                                 3);
            v5 += 3;
        }
        while ( v10 != 5 );
        ++v4;
    }
    while ( v4 != 3 );
    return result;
}


// 0x8040344
void __noreturn chatbox_CopyBackgroundTiles_8040344()
{
    ChatBoxPropreties *cb; // r5

    CopyBackgroundTiles(
        cb->unk_1C,
        cb->unk_1D,
        0,
        spritePtrArr8045CEC[8 * cb[3].unk_0A + 4 * cb->chatboxOpenState],
        cb->unk_1E,
        cb->unk_1F);
}


// 0x8040374
// (u8 scriptOffIdx) -> void
void __cdecl chatbox_runTrainScript(u8 scriptOffIdx)
{
    chatbox_runScript(eTextScript2034A04, scriptOffIdx);
}


// 0x8040384
// (void *scripts, u8 scriptOffIdx) -> void
void __fastcall chatbox_runScript(void *dialogScript, int scriptOffIdx)
{
    Toolkit *tk; // r10
    ChatBoxPropreties *chatbox; // r5
    u32 v4; // r4
    u32 v5; // r6
    u16 *v6; // ST00_4
    u32 v7; // ST08_4
    u32 v8; // ST0C_4
    int v9; // ST04_4
    int v10; // r0

    chatbox = tk->chatbox;
    v4 = chatbox->unk_54;
    v5 = chatbox->unk_58;
    v6 = dialogScript;
    v9 = scriptOffIdx;
    v7 = chatbox->unk_4C;
    v8 = chatbox->unk_50;
    ZeroFillByWord(tk->chatbox, 0x230);
    chatbox->unk_4C = v7;
    chatbox->unk_50 = v8;
    chatbox->unk_54 = v4;
    chatbox->unk_58 = v5;
    chatbox->pScriptArray = v6;
    chatbox->scriptID = v9;
    chatbox[offsetof(ChatBoxPropreties, scriptID)].chatPageState = v9;
    v10 = v6 + v6[v9];
    chatbox->pScriptCursor = v10;
    chatbox->pCurrScript = v10;
    chatbox->bVisible = 1;
    chatbox->typingSpeed = 2;
    chatbox->unk_38 = &unk_200B2B0;
    chatbox->chatbox_y = 1;
    chatbox->unk_74 = 1;
    chatbox->bxoff_11 = 1;
    chatbox->unk_78 = 4;
    CopyHalfwords(byte_8040494, &chatbox->unk_68, 8);
    chatbox->unk_1D = 12;
    chatbox->unk_1E = 30;
    chatbox->unk_1F = 8;
    chatbox->csrCoord = -30;
    chatbox->unk_1B = -115;
    chatbox->textCoord = 51;
    chatbox->unk_19 = 108;
    chatbox->unk_84 = 25;
    chatbox->unk_88 = 128;
    byte_1F0[chatbox] = 2;
    byte_1F1[chatbox] = 2;
    chatbox[3].pad_28[2] = 0;
    chatbox[3].pad_28[3] = 0;
    byte_1F4[chatbox] = 3;
    byte_1F5[chatbox] = 3;
    *eFlags2009F38 = 0;
    chatbox_set_eFlags2009F38(128);
    chatbox_8045F60();
    chatbox_setflags_3e(256);
    chatbox->unk_94 = chatbox->textCoord;
    chatbox->unk_90 = 13;
    (loc_8000AC8)(dword_86BEB20, 100719744, 352);
    CopyByEightWords(byte_86BEC80, &unk_3001B40, 0x20u);
    CopyByEightWords(dword_86B7AC0, byte_3001710, 0x20u);
}


// 0x80404c0
void __fastcall chatbox_reqBBS_80404C0(u16 *pDialogScript, int scriptIdx, int a3)
{
    Toolkit *tk; // r10
    int v4; // ST10_4
    ChatBoxPropreties *cb; // r5
    u32 v6; // r4
    u32 v7; // r6
    u16 *v8_pDialogScript; // ST00_4
    u32 v9; // ST08_4
    u32 v10; // ST0C_4
    int v11_scriptIdx; // ST04_4
    int v12; // r0

    v4 = a3;
    cb = tk->chatbox;
    v6 = cb->unk_54;
    v7 = cb->unk_58;
    v8_pDialogScript = pDialogScript;
    v11_scriptIdx = scriptIdx;
    v9 = cb->unk_4C;
    v10 = cb->unk_50;
    ZeroFillByWord(tk->chatbox, 0x230);
    cb->unk_4C = v9;
    cb->unk_50 = v10;
    cb->unk_54 = v6;
    cb->unk_58 = v7;
    cb->pScriptArray = v8_pDialogScript;
    cb->scriptID = v11_scriptIdx;
    cb[1].chatPageState = v11_scriptIdx;
    v12 = v8_pDialogScript + v8_pDialogScript[v11_scriptIdx];
    cb->pScriptCursor = v12;
    cb->pCurrScript = v12;
    cb->bVisible = 1;
    cb->typingSpeed = 2;
    cb->unk_38 = &unk_200B2B0;
    cb->chatbox_y = 1;
    cb->unk_74 = 1;
    cb->bxoff_11 = 1;
    cb->unk_78 = 4;
    CopyHalfwords(byte_80405CC, &cb->unk_68, 8);
    cb->unk_1D = 12;
    cb->unk_1E = 30;
    cb->unk_1F = 8;
    cb->csrCoord = -30;
    cb->unk_1B = -115;
    cb->textCoord = 51;
    cb->unk_19 = 108;
    cb->unk_84 = 25;
    cb->unk_88 = 128;
    cb[3].pad_28[0] = 2;
    cb[3].pad_28[1] = 2;
    cb[3].pad_28[2] = 0;
    cb[3].pad_28[3] = 0;
    LOBYTE(cb[3].pScriptCursor) = 3;
    BYTE1(cb[3].pScriptCursor) = 3;
    *eFlags2009F38 = 0;
    chatbox_set_eFlags2009F38(128);
    chatbox_8045F60();
    chatbox_setflags_3e(256);
    cb->unk_94 = cb->textCoord;
    cb->unk_90 = 13;
    (loc_8000AC8)(dword_86BEB20, 100719744, 352);
    CopyByEightWords(byte_86BEC80, &unk_3001B40, 0x20u);
    CopyByEightWords(v4, byte_3001710, 0x20u);
}


// 0x80405f8
void __fastcall dead_80405F8(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int v5; // ST10_4
    int v6; // ST14_4
    int v7; // r5
    int v8; // r4
    int v9; // r6
    int v10; // ST00_4
    int v11; // ST08_4
    int v12; // ST0C_4
    int v13; // ST04_4
    int v14; // r0
    int v15; // [sp+8h] [bp-14h]

    v5 = a3;
    v6 = a4;
    v7 = *(v4 + oToolkit_ChatboxPtr);
    v8 = *(v7 + 84);
    v9 = *(v7 + 88);
    v10 = a1;
    v13 = a2;
    v11 = *(v7 + 76);
    v12 = *(v7 + 80);
    ZeroFillByWord(*(v4 + oToolkit_ChatboxPtr), &dword_230);
    *(v7 + 76) = v11;
    *(v7 + 80) = v12;
    *(v7 + 84) = v8;
    *(v7 + 88) = v9;
    *(v7 + 48) = v10;
    *(v7 + 1) = v13;
    *(v7 + 156) = v13;
    v14 = v10 + *(v10 + 2 * v13);
    *(v7 + 44) = v14;
    *(v7 + 52) = v14;
    *v7 = 1;
    *(v7 + 8) = 2;
    *(v7 + 56) = &unk_200B2B0;
    *(v7 + 12) = 1;
    *(v7 + 116) = 1;
    *(v7 + 17) = 1;
    *(v7 + 120) = 4;
    CopyHalfwords(byte_8040704, (v7 + 104), 8);
    *(v7 + 29) = 12;
    *(v7 + 30) = 30;
    *(v7 + 31) = 8;
    *(v7 + 26) = -30;
    *(v7 + 27) = -115;
    *(v7 + 24) = 51;
    *(v7 + 25) = 108;
    *(v7 + 132) = 25;
    *(v7 + 136) = 128;
    byte_1F0[v7] = 2;
    byte_1F1[v7] = 2;
    *(v7 + 498) = 0;
    *(v7 + 499) = 0;
    byte_1F4[v7] = 3;
    byte_1F5[v7] = 3;
    *eFlags2009F38 = 0;
    chatbox_set_eFlags2009F38(128);
    chatbox_8045F60();
    chatbox_setflags_3e(byte_100);
    *(v7 + 148) = *(v7 + 24);
    *(v7 + 144) = 13;
    (loc_8000AC8)(v5, 100719744, v6);
    CopyByEightWords(v15, &unk_3001B40, 0x20u);
    CopyByEightWords(dword_86B7AC0, byte_3001710, 0x20u);
}


// 0x8040730
int (*__fastcall chatbox_selectCompTextByMap_8040730(int a1))[19]
{
    Toolkit *tk; // r10
    int boolVal; // r4
    GameState *gs; // r2
    int mapSelect; // r0
    signed int isInternetMap; // r6
    int v6; // r4
    int (**dest)[19]; // r3

    boolVal = a1;
    gs = tk->gamestate;
    mapSelect = gs->MapSelect;
    isInternetMap = 0;
    if ( mapSelect - 128 >= 0 )
    {
        isInternetMap = 1;
        mapSelect -= 128;
    }
    v6 = 2 * boolVal;                                                         // either 2 or 0, but why?
    dest = (&(&mapPtrs8040770)[v6])[isInternetMap][mapSelect];
    if ( !(v6 * 4) )
        dest = dest[gs->MapSubOffset];
    return dest[tk->gamestate->unk_08];
}


// 0x8040794
int (*chatbox_selectCompTextByMap_8040794())[205]
{
    Toolkit *tk; // r10
    GameState *v1; // r2
    int mapGroup; // r0
    int mapNumber; // r1
    int gameProgress; // r2
    signed int isInternetMap; // r6

    v1 = tk->gamestate;
    mapGroup = v1->MapSelect;
    mapNumber = v1->MapSubOffset;
    gameProgress = v1->gameProgress;
    isInternetMap = 0;
    if ( mapGroup - 128 >= 0 )
    {
        isInternetMap = 1;
        mapGroup -= 128;
    }
    return (&mapPtrs80407C0)[isInternetMap][mapGroup][mapNumber];
}


// 0x80407c8
int chatbox_selectCompTextByMap_80407C8()
{
    Toolkit *tk; // r10
    GameState *gs; // r2
    int mapSelect; // r0
    signed int isInternetMap; // r6

    gs = tk->gamestate;
    mapSelect = gs->MapSelect;
    isInternetMap = 0;
    if ( mapSelect - 128 >= 0 )
    {
        isInternetMap = 1;
        mapSelect -= 128;
    }
    return (*(&mapPtrs80407FC)[isInternetMap][mapSelect][gs->MapSubOffset])[4];
}


// 0x8040818
int chatbox_8040818()
{
    Toolkit *tk; // r10

    tk->chatbox->bVisible = 0;
    return chatbox_clear_eFlags2009F38(200);
}


// 0x804082c
signed int chatbox_804082C()
{
    unsigned __int8 *v0; // r5
    signed int result; // r0
    int v2; // r4
    char (*v3)[44]; // r6
    unsigned __int16 *v4; // r3
    int v5; // r0
    int v6; // r2
    int v7; // r1

    result = chatbox_maskFlags_3e(0x20u);
    if ( result )
    {
        v2 = v0[3];
        v3 = off_8040898[v2];
        (loc_8000AC8)(&dword_86A4740[96 * v2 + 32 * (*v3)[v0[23]]], 100761344, 128);
        v5 = (v0[26] << 16) | v0[27];
        v6 = v0[23] + 1;
        if ( (*v3)[v6] == 255 )
        {
            LOBYTE(v6) = 1;
            v7 = *v4;
        }
        v0[23] = v6;
        result = sub_802FE28(v5 | 0x40000000, 58360, 0, 4);
    }
    return result;
}


// 0x80408d0
// (int unused, u8 scriptID) -> void
int __fastcall chatbox_config_80408D0(int unused, int scriptID)
{
    ChatBoxPropreties *cb; // r5
    u8 *v3; // r0
    u8 v4; // t1

    cb->scriptID = scriptID;
    v3 = cb->pScriptArray + cb->pScriptArray[scriptID];
    cb->pScriptCursor = v3;
    cb->pCurrScript = v3;
    cb->chatPageState = 0;
    *&cb->unk_64 = 0;
    cb->unk_12 = 0;
    cb->currLine = 0;
    cb->unk_17 = 0;
    cb->unk_3D = 0;
    *&cb->unk_80 = 0;
    cb->bxoff_11 = 1;
    cb->unk_74 = 1;
    v4 = cb->typingSpeed;
    cb->unk_94 = cb->textCoord;
    chatbox_8045F60();
    return chatbox_clearFlags_3e(&byte_400 | 0x800);
}


// 0x8040920
// (int mask) -> void
void __cdecl chatbox_setflags_3e(int mask)
{
    int v1; // r5

    *(v1 + offsetof(ChatBoxPropreties, flags_3E)) |= mask;
}


// 0x804092c
// (int mask) -> void
int __fastcall chatbox_clearFlags_3e(int result)
{
    int v1; // r5

    *(v1 + offsetof(ChatBoxPropreties, flags_3E)) &= ~result;
    return result;
}


// 0x8040938
// (int mask) -> void
int __fastcall chatbox_maskFlags_3e(unsigned __int16 a1)
{
    int v1; // r5

    return a1 & *(v1 + offsetof(ChatBoxPropreties, flags_3E));
}


// 0x8040944
signed int chatbox_ED_select_8040944()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2

    (loc_8000AC8)(
        &byte_86A48C0[128 * *(&dword_80409B0 + *(v0 + offsetof(ChatBoxPropreties, unk_16)) + 2)],
        100761472,
        128);
    v1 = ((*(v0 + offsetof(ChatBoxPropreties, unk_70)) + *(v0 + 148) - 6) << 16) | (14 * *(v0 + 15) + *(v0 + 25) - 1);
    v2 = *(v0 + 22) + 1;
    if ( *(&dword_80409B0 + v2 + 2) == 255 )
        LOBYTE(v2) = 1;
    *(v0 + 22) = v2;
    return sub_802FE28(v1 | 0x40000000, 58364, 0, 4);
}


// 0x80409c8
int chatbox_80409C8()
{
    return (loc_8000AC8)(dword_86A4A40, 100761472, 128);
}


// 0x80409e0
signed int __usercall chatbox_80409E0@<R0>(ChatBoxPropreties *cb@<R5>)
{
    u32 v1; // r0
    int v2; // r4
    int v3; // r2
    int v4; // r0
    signed int v5; // r4
    signed int result; // r0
    int v7; // r2

    (loc_8000AC8)(&dword_86A4A40[32 * byte_8040A80[cb->unk_16]], 100761472, 128);
    v1 = cb->unk_70 + cb->textCoord + 4;
    if ( cb->choiceCursorPos == cb->unk_80 - 1 )
        v1 = cb->unk_70 + cb->textCoord + 11;
    v2 = (v1 << 16) | (14 * cb->amount_of_box_appeared + cb->unk_19 - 2);
    sub_802FE28(v2 | 0x8000, 58364, 0, 1);
    v4 = v2;
    v5 = 8;
    if ( cb->choiceCursorPos == cb->unk_80 - 1 )
        v5 = 18;
    result = sub_802FE28((v4 + (v5 << 16)) | 0x8000, 58366, v3, 1);
    v7 = cb->unk_16 + 1;
    if ( byte_8040A80[v7] == 255 )
        LOBYTE(v7) = 1;
    cb->unk_16 = v7;
    return result;
}


// 0x8040a9a
signed int chatbox_8040A9A()
{
    int v0; // r5
    int v1; // r4
    int v2; // r2
    signed int result; // r0
    int v4; // r2

    (loc_8000AC8)(&dword_86A4A40[32 * *(&word_8040B20 + *(v0 + 22))], 100761472, 128);
    v1 = ((*(v0 + 112) + *(v0 + 24) + 4) << 16) | (14 * *(v0 + 15) + *(v0 + 25) - 2);
    sub_802FE28(v1 | 0x8000, 58364, 0, 1);
    result = sub_802FE28((v1 + 1441792) | 0x8000, 58366, v2, 1);
    v4 = *(v0 + 22) + 1;
    if ( *(&word_8040B20 + v4) == 255 )
        LOBYTE(v4) = 1;
    *(v0 + 22) = v4;
    return result;
}


// 0x8040b8c
int chatbox_8040B8C()
{
    int v0; // r5
    int result; // r0
    char v2; // zf
    int v3; // r6
    int v4; // r4
    int v5; // r7
    char v6; // ST00_1
    char *v7; // r5
    int v8; // r1

    result = chatbox_maskFlags_3e(2u);
    if ( !v2 )
    {
        chatbox_maskFlags_3e(byte_100);
        if ( !v2 || (result = *(v0 + 16), result == 3) )
        {
            v3 = *(v0 + 64);
            chatbox_maskFlags_3e(4u);
            if ( v2 )
            {
                chatbox_maskFlags_3e(8u);
                if ( v2 )
                    goto LABEL_13;
                v4 = *(v0 + 64) + 2114;
                if ( (v4 & 0x1F) - 6 >= 0 )
                    chatbox_clearFlags_3e(10);
            }
            else
            {
                v4 = *(v0 + 64) - byte_421;
                if ( v4 < 0 )
                {
                    v4 = 0;
                    chatbox_clearFlags_3e(4);
                }
            }
            *(v0 + 64) = v4;
LABEL_13:
            v5 = v0;
            v6 = *(v0 + 7);
            v7 = dword_1F8 + v0;
            v7[4] = v6;
            v8 = *(v5 + 498);
            if ( v8 != *(v5 + 499) )
            {
                *(v5 + 499) = v8;
                *v7 = byte_1F0[v5];
                sprite_80026B6();
            }
            sprite_chatbox_80026D6();
            *(v7 + 3) = v3;
            sub_8002818();
            sub_8002874();
            sub_8002694(0, 3);
        }
    }
    return result;
}


// 0x8040c44
void chatbox_8040C44()
{
    int v0; // r5
    signed int v1; // r1
    char v2; // zf
    int v3; // r1

    chatbox_maskFlags_3e(0x10u);
    if ( v2 && v1 && v1 != 37 && (v1 < 64 || v1 >= 89 && v1 < 93) )
    {
        *(v0 + 498) = 1;
        byte_1F0[v0] = byte_1F1[v0];
    }
    else
    {
        *(v0 + 498) = 0;
        v3 = byte_1F1[v0];
        if ( v3 == 2 )
            LOBYTE(v3) = 1;
        if ( byte_1F0[v0] != 3 )
            byte_1F0[v0] = v3;
    }
}


// 0x8040c9c
void chatbox_8040C9C()
{
    ChatBoxPropreties *cb; // r5
    u8 v1; // r0
    u8 v2; // t1

    v1 = 0;
    if ( cb[3].pad_28[0] )
    {
        if ( cb[3].pad_28[0] == 3 )
        {
            v1 = 3;
        }
        else
        {
            cb[3].pad_28[2] = 0;
            v2 = cb[3].pad_28[1];
            v1 = 1;
        }
    }
    cb[3].pad_28[0] = v1;
}


// 0x8040cd0
signed int chatbox_8040CD0()
{
    int v0; // r5
    int i; // r6
    char (*v2)[8]; // ST00_4
    signed int result; // r0

    for ( i = *(v0 + 470) - 1; ; --i )
    {
        v2 = off_8045DD4[*(&dword_1EC + i + v0)];
        (loc_8000AC8)(*&(*v2)[8], *&(*v2)[12], *&(*v2)[16]);
        (loc_8000AC8)(*&(*v2)[20], *&(*v2)[24], *&(*v2)[28]);
        result = sub_802FE28(
                             *v2 | (14 * *(v0 + i + 488) + *(v0 + 25) - 4) | ((*(v0 + 4 * i + 472) + *(v0 + 148)) << 16),
                             *&(*v2)[4],
                             0,
                             4);
        if ( !i )
            break;
    }
    return result;
}


// 0x8040d5c
int __fastcall chatbox_8040D5C(int a1, int a2)
{
    char v2; // r7
    int v3; // r0
    int v4; // r3
    int result; // r0

    if ( a1 == 1 )
        v2 = 1;
    v3 = *&byte_8040D98[4 * (a1 - 1)];
    v4 = 0;
    do
    {
        a2 -= v3;
        ++v4;
    }
    while ( a2 >= 0 );
    result = v4 - 1;
    if ( v2 & 0xF )
        return v4;
    if ( v4 != 1 )
        result = v4;
    return result;
}


// 0x8040dbc
void __fastcall chatbox_8040DBC(int a1, int a2, int a3, int a4)
{
    char *v4; // r0
    int v5; // r1
    int v6; // r2
    char *v7; // ST00_4
    int v8; // ST04_4
    int v9; // ST08_4

    v4 = &unk_200BEA0;
    v5 = 64;
    v6 = 0;
    do
    {
        v7 = v4;
        v8 = v5;
        v9 = v6;
        ZeroFillByWord(v4, v5);
        v5 = v8;
        v4 = v7 + 96;
        v6 = v9 + 1;
    }
    while ( v9 + 1 <= 13 );
}


// 0x8040ddc
// (int v3) ->
void __fastcall chatbox_8040DDC(int a1, int a2, int a3, int a4)
{
    unsigned int v4; // r4
    char *v5; // r0
    int v6; // r1
    int v7; // r2
    char *v8; // ST00_4
    int v9; // ST04_4
    int v10; // ST08_4

    v4 = (16 * a1) >> 1;
    v5 = &unk_200BEA0;
    v6 = v4;
    v7 = 0;
    do
    {
        v8 = v5;
        v9 = v6;
        v10 = v7;
        ZeroFillByWord(v5, v6);
        v6 = v9;
        v5 = v8 + 96;
        v7 = v10 + 1;
    }
    while ( v10 + 1 <= 13 );
}


// 0x8040e90
// Description: do nothing (but make the script go on)
// Parameters: 0
signed int chatbox_E5_nop(int textScriptCursor@R4)
{
    return 2;
}


// 0x8040e98
// Description: ends the current script and closes message box
// Parameters: 0
void __cdecl chatbox_E6_end()
{
    ChatBoxPropreties *cb; // r5
    int v1; // r0
    int v2; // r4
    char zf; // zf

    if ( cb->unk_05 )
    {
        v1 = cb->unk_05 - 1;
        v2 = *(&cb[2].chatboxOpenState + v1);
        cb->unk_05 = v1;
        return;
    }
    chatbox_setflags_3e(1);
    chatbox_maskFlags_3e(0x100u);
    if ( !zf )
    {
        chatbox_maskFlags_3e(2u);
        if ( !zf )
        {
            chatbox_setflags_3e(8);
            return;
        }
        goto LABEL_9;
    }
    if ( chatbox_8041090() )
    {
LABEL_9:
        chatbox_clear_eFlags2009F38(128);
        cb->bVisible = 0;
        cb->chatPageState = 0;
    }
}


// 0x8040ef4
// E7 = buttonhalt
// Description: display an arrow at the lower right of the message box and stop processing until a button is pressed
// Parameters: 1
// Parameter 1 = mode
// E7 00 = wait for A button or B button
// E7 01 = wait for any button
int chatbox_E7_buttonhalt()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    signed __int16 v3; // r1
    signed int v4; // r0

    chatbox_setflags_3e(1024);
    chatbox_setflags_3e(33);
    *(v1 + offsetof(ChatBoxPropreties, unk_03)) = 0;
    v2 = *(v1 + offsetof(ChatBoxPropreties, chatPageState));
    if ( v2 == 1 )
    {
        if ( *(v1 + offsetof(ChatBoxPropreties, chatbox_y)) )
        {
            --*(v1 + offsetof(ChatBoxPropreties, chatbox_y));
            return 0;
        }
        *(v1 + offsetof(ChatBoxPropreties, chatPageState)) = 2;
LABEL_7:
        v3 = 3;
        if ( *(v0 + offsetof(ChatBoxPropreties, scriptID)) )
            v3 = 1023;
        if ( !(v3 & *(v1 + offsetof(ChatBoxPropreties, keysFlags))) )
        {
            if ( !(*(v1 + offsetof(ChatBoxPropreties, keyState)) & 2) )
                return 0;
            v4 = *(v1 + offsetof(ChatBoxPropreties, chatbox_y));
            if ( v4 < 10 )
            {
                *(v1 + offsetof(ChatBoxPropreties, chatbox_y)) = v4 + 1;
                return 0;
            }
        }
        chatbox_clearFlags_3e(33);
        *(v1 + offsetof(ChatBoxPropreties, chatPageState)) = 0;
        *(v1 + offsetof(ChatBoxPropreties, chatbox_y)) = 0;
        *(v1 + offsetof(ChatBoxPropreties, unk_74)) = 1;
        return 0;
    }
    if ( v2 == 2 )
        goto LABEL_7;
    *(v1 + offsetof(ChatBoxPropreties, chatbox_y)) = 5;
    *(v1 + offsetof(ChatBoxPropreties, chatPageState)) = 1;
    return 0;
}


// 0x8040f70
// E8 = msgbox
// Parameters: 1/3
// Parameter 1 = type/mode (msgbox type; even = open msgbox, odd = close msgbox)
// Parameter 2 = special msgbox type (only for modes 4-7)
// Parameter 3 = new buttonhalt arrow position (only for modes 4-7)
// Examples:
// E8 00 = open msgbox
// E8 01 = msgbox close
// E8 02 = open msgbox (no animation)
// E8 03 = msgbox close (no animation)
// E8 04 XX YY = open special msgbox (XX = type, YY = new buttonhalt arrow position)
// E8 05 XX YY = close special msgbox (XX = type, YY = new buttonhalt arrow position)
// E8 06 XX YY = open special msgbox (XX = type, YY = new buttonhalt arrow position) (no animation)
// E8 07 XX YY = close special msgbox (XX = type, YY = new buttonhalt arrow position) (no animation)
// E8 08 = open special msgbox 1
// E8 09 = special msgbox close 1
// E8 0A = open special msgbox 1 (no animation)
// E8 0B = special msgbox close 1 (no animation)
// E8 0C = open special msgbox 2
// E8 0D = special msgbox close 2
// E8 0E = open special msgbox 2 (no animation?)
// E8 0F = special msgbox close 2 (no animation?)
// E8 10 = open special msgbox 3
// E8 11 = special msgbox close 3
char *chatbox_E8_msgbox()
{
    unsigned __int8 *dialogScript; // r4
    ChatBoxPropreties *cb; // r5
    signed int mode; // r1
    int newPos; // r3
    int v4; // r3
    __int16 v5; // r2
    char *result; // r0
    int v7; // r4

    mode = dialogScript[1];
    if ( mode < 16 )
    {
        if ( mode < 12 )
        {
            if ( mode < 8 )
            {
                if ( mode > 3 )                                                 // between 04 and 07
                {
                    cb[3].unk_0A = dialogScript[2];             // XX type
                    newPos = dialogScript[3];                         // YY
                    if ( newPos != 255 )
                    {
                        v4 = 4 * newPos;
                        v5 = *&byte_8045DCC[v4 + 2];
                        cb->csrCoord = *&byte_8045DCC[v4];
                        cb->unk_1B = v5;
                    }
                }
                else
                {
                    cb[3].unk_0A = 0;
                }
            }
            else
            {
                cb[3].unk_0A = 4;
            }
        }
        else
        {
            cb[3].unk_0A = 5;
        }
    }
    else
    {
        cb[3].unk_0A = 6;
    }
    result = (*(&chatbox_EB_msgboxJumpTable + mode))();
    if ( result )
    {
        result = byte_804102C;
        v7 = &dialogScript[byte_804102C[dialogScript[1]]];
    }
    return result;
}


// 0x804103e
signed int chatbox_804103E()
{
    int v0; // r5
    int v2; // r0
    int v3; // r0
    char v4; // zf

    chatbox_setflags_3e(1);
    if ( *(v0 + 16) != 3 )
    {
        chatbox_clearFlags_3e(byte_100);
        if ( *(v0 + 12) )
        {
            --*(v0 + 12);
            return 0;
        }
        v2 = *(v0 + 16);
        if ( !*(v0 + 16) )
            v2 = *(v0 + 16);
        v3 = v2 + 1;
        *(v0 + 16) = v3;
        if ( v3 != 3 )
        {
            *(v0 + 12) = 0;
            return 0;
        }
    }
    chatbox_maskFlags_3e(4u);
    if ( !v4 )
        return 0;
    chatbox_clearFlags_3e(1);
    return 1;
}


// 0x8041090
signed int chatbox_8041090()
{
    int v0; // r5
    char v1; // zf
    int v2; // r0
    signed int result; // r0

    chatbox_maskFlags_3e(byte_100);
    if ( !v1 )
        return 0;
    chatbox_setflags_3e(1);
    chatbox_8045F60();
    chatbox_setflags_3e(8);
    chatbox_maskFlags_3e(2u);
    if ( !v1 )
        return 0;
    if ( *(v0 + 12) )
    {
        --*(v0 + 12);
        result = 0;
    }
    else
    {
        v2 = *(v0 + 16);
        if ( v2 == 3 )
            v2 = *(v0 + 16);
        if ( v2 )
        {
            *(v0 + 16) = v2 - 1;
            *(v0 + 12) = 0;
            result = 0;
        }
        else
        {
            *(v0 + 12) = 0;
            chatbox_clearFlags_3e(9);
            chatbox_setflags_3e(byte_100);
            result = 1;
        }
    }
    return result;
}


// 0x80410f8
signed int chatbox_80410F8()
{
    int v0; // r5

    chatbox_clearFlags_3e(&byte_101);
    *(v0 + 16) = 3;
    return 1;
}


// 0x804110c
signed int chatbox_804110C()
{
    int v0; // r5

    chatbox_setflags_3e(1);
    chatbox_8045F60();
    *(v0 + 12) = 0;
    *(v0 + 16) = 0;
    chatbox_setflags_3e(byte_100);
    chatbox_clearFlags_3e(8);
    return 1;
}


// 0x8041134
int chatbox_E9_newline()
{
    int v0; // r5
    int v1; // r2

    v1 = *(v0 + 15) + 1;
    *(v0 + 15) = v1;
    *(v0 + 112) = 0;
    if ( v1 == 3 )
        *(v0 + 140) = 1;
    else
        *(v0 + 124) = *&byte_803FCE4[4 * (v1 - 1)];
    return 0;
}


// 0x8041160
signed int chatbox_EA_flag()
{
    unsigned __int8 *v0; // r4

    (*(&off_8041184 + v0[1]))((v0[3] << 8) | v0[2]);
    return 1;
}


// 0x80411b0
unsigned int __fastcall chatbox_80411B0(unsigned int a1)
{
    return SetEventFlag(a1);
}


// 0x80411bc
unsigned int __fastcall chatbox_80411BC(unsigned int a1)
{
    return ClearEventFlag(a1);
}


// 0x80411c8
unsigned int __fastcall chatbox_80411C8(unsigned int a1)
{
    return ToggleEventFlag(a1);
}


// 0x80411d4
int __fastcall chatbox_80411D4(unsigned int a1)
{
    return addMail_802f238(a1);
}


// 0x80411e0
void chatbox_80411E0()
{
    ;
}


// 0x80411e8
unsigned int chatbox_80411E8()
{
    unsigned __int8 *v0; // r4

    return SetEventFlagRange((v0[3] << 8) | v0[2], v0[4], v0[4]);
}


// 0x8041200
unsigned int chatbox_8041200()
{
    unsigned __int8 *v0; // r4

    return ClearEventFlagRange((v0[3] << 8) | v0[2], v0[4], v0[4]);
}


// 0x8041218
unsigned int chatbox_8041218()
{
    int v0; // r4
    int v1; // r5

    return SetEventFlag(*(v1 + 4 * *(v0 + 2) + 76));
}


// 0x804122c
int __fastcall chatbox_804122C(int a1)
{
    return reqBBS_addBBSMessage_813e5dc(a1);
}


// 0x8041238
int __fastcall chatbox_8041238(int a1)
{
    return reqBBS_addRequest_813F9A0(a1);
}


// 0x8041244
signed int chatbox_EB_option()
{
    _BYTE *v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r2

    chatbox_setflags_3e(16);
    *(v1 + 12) = 10;
    v2 = *(v1 + 128);
    *(v1 + 16 * v2 + 160) = v0[1];
    *(v1 + 16 * v2 + 164) = v0[2];
    *(v1 + 16 * v2 + 165) = v0[3];
    v3 = 16 * v2 + 168;
    *(v1 + v3) = *(v1 + 112);
    *(v1 + 128) = ++v2;
    *(v1 + 18) = v2;
    *(v1 + 19) = 0;
    *(v1 + v3 + 4) = *(v1 + 15);
    return 1;
}


// 0x8041288
signed int chatbox_EC_label()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0

    if ( *(v0 + 1) == 1 )
        v2 = *(v0 + 2);
    else
        v2 = 8 * *(v0 + 2);
    *(v1 + 112) += v2;
    *(v1 + 124) += 4 * v2;
    return 1;
}


// 0x80412c8
signed int chatbox_ED_select()
{
    int v0; // r4
    int v1; // r5
    unsigned int v2; // r0
    char *v3; // r2
    signed int v4; // r3
    int v5; // r0
    int v6; // r1
    char v7; // t1
    int v8; // r0
    int v9; // r0
    __int16 v10; // r0
    int v11; // r2
    char v12; // r1
    char v13; // ST00_1
    signed int result; // r0
    int v15; // r2
    int v16; // r0
    int v17; // r0
    char v18; // r1
    int v19; // r4
    int v20; // r0
    int v21; // r2
    char v22; // r1
    char v23; // ST00_1
    int v24; // r1
    int v25; // r4

    chatbox_setflags_3e(1);
    v2 = *(v1 + 16 * *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos)) + 164);
    if ( *(v1 + offsetof(ChatBoxPropreties, chatPageState)) != 2 )
    {
        v3 = byte_8041484;
        v4 = 12;
        while ( !(*v3 & *(v1 + offsetof(ChatBoxPropreties, keyPress))) )
        {
            v3 += 2;
            v4 -= 4;
            if ( v4 < 0 )
                goto LABEL_8;
        }
        *(v1 + offsetof(ChatBoxPropreties, keyPress)) &= 0xFF0Fu;
        v5 = (v2 >> v4) & 0xF;
        v6 = *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos));
        *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos)) = v5;
        if ( v5 != v6 )
        {
            *(v1 + offsetof(ChatBoxPropreties, chatbox_y)) = 0;
            PlaySoundEffect(*(v1 + 108), v6, 108);
        }
    }
LABEL_8:
    v7 = *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos));
    if ( *(v1 + offsetof(ChatBoxPropreties, chatPageState)) )
    {
        v8 = *(v1 + offsetof(ChatBoxPropreties, chatbox_y));
        if ( v8 > 0 )
        {
            *(v1 + offsetof(ChatBoxPropreties, chatbox_y)) = v8 - 1;
LABEL_18:
            v11 = 16 * *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos));
            *(v1 + offsetof(ChatBoxPropreties, unk_70)) = *(v1 + v11 + 168);
            v12 = *(v1 + offsetof(ChatBoxPropreties, amount_of_box_appeared));
            *(v1 + offsetof(ChatBoxPropreties, amount_of_box_appeared)) = *(v1 + v11 + 172);
            v13 = v12;
            chatbox_ED_select_8040944();
            *(v1 + 15) = v13;
            return 0;
        }
    }
    v9 = *(v1 + offsetof(ChatBoxPropreties, chatPageState));
    if ( v9 != 1 )
    {
        if ( v9 != 2 )
        {
            if ( *(v0 + 2) & 0xF )
                *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos)) = *(v0 + 2) & 0xF;
            *(v1 + offsetof(ChatBoxPropreties, chatPageState)) = 1;
            chatbox_setflags_3e(16);
            return 0;
        }
        goto LABEL_22;
    }
    v10 = *(v1 + offsetof(ChatBoxPropreties, keysFlags));
    if ( v10 & 1 )
    {
        if ( !chatbox_maskFlags_3e(0x80u) )
            PlaySoundEffect(*(v1 + 110), 110, v15);
LABEL_22:
        chatbox_clearFlags_3e(80);
        chatbox_clear_eFlags2009F38(7);
        chatbox_set_eFlags2009F38(*(v1 + offsetof(ChatBoxPropreties, choiceCursorPos)));
        if ( *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos)) == *(v1 + 128) - 1 )
        {
            chatbox_set_eFlags2009F38(16);
            v16 = *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos));
        }
        v17 = *(v0 + *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos)) + 3);
        if ( v17 == 255 )
        {
            v18 = *(v0 + 2);
            v19 = v0 + *(v0 + 1);
            if ( v18 & 0x80 )
            {
                chatbox_8045F60();
                *(v1 + offsetof(ChatBoxPropreties, unk_64)) = 0;
                *(v1 + offsetof(ChatBoxPropreties, unk_74)) = 1;
                *(v1 + offsetof(ChatBoxPropreties, pScriptCursor)) = v19;
                *(v1 + offsetof(ChatBoxPropreties, pCurrScript)) = v19;
            }
        }
        else
        {
            chatbox_config_80408D0(v17, *(v0 + *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos)) + 3));
        }
        *(v1 + 4) = 0;
        *(v1 + offsetof(ChatBoxPropreties, unk_78)) = 4;
        chatbox_set_eFlags2009F38(32);
        return 0;
    }
    if ( !(v10 & 2) )
        goto LABEL_18;
    if ( *(v0 + 2) & 0x20 )
    {
        chatbox_set_eFlags2009F38(&dword_130);
        v24 = *(v0 + 2);
        v25 = v0 + *(v0 + 1);
        result = 1;
    }
    else
    {
        if ( !(*(v0 + 2) & 0x40) )
        {
            chatbox_set_eFlags2009F38(&byte_110);
            chatbox_clear_eFlags2009F38(7);
            v20 = *(v1 + offsetof(ChatBoxPropreties, unk_80));
            *(v1 + offsetof(ChatBoxPropreties, unk_12)) = v20--;
            *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos)) = v20;
            chatbox_set_eFlags2009F38(v20);
            if ( !chatbox_maskFlags_3e(0x80u) )
                PlaySoundEffect(*(v1 + 106), 106, v21);
            *(v1 + offsetof(ChatBoxPropreties, chatPageState)) = 2;
            *(v1 + offsetof(ChatBoxPropreties, chatbox_y)) = 3;
            chatbox_clearFlags_3e(16);
        }
        v22 = *(v1 + offsetof(ChatBoxPropreties, amount_of_box_appeared));
        *(v1 + offsetof(ChatBoxPropreties, amount_of_box_appeared)) = *(v1
                                                                                                                                    + 16
                                                                                                                                    * *(v1 + offsetof(ChatBoxPropreties, choiceCursorPos))
                                                                                                                                    + 172);
        v23 = v22;
        chatbox_ED_select_8040944();
        *(v1 + 15) = v23;
        result = 0;
    }
    return result;
}


// 0x80414a8
signed int chatbox_EE_pause()
{
    unsigned __int8 *v0; // r4
    int v1; // r5
    int v2; // r10
    int v3; // r1
    char v5; // zf

    v3 = v0[1];
    switch ( v3 )
    {
        case 255:
            chatbox_setflags_3e(1);
            chatbox_set_eFlags2009F38(8);
            return 0;
        case 2:
            TestEventFlag(v0[2] | (v0[3] << 8));
            if ( v5 )
            {
                chatbox_setflags_3e(1);
                return 0;
            }
            goto LABEL_11;
        case 3:
            if ( *(*(v2 + oToolkit_S2011c50_Ptr) + 8 + v0[2]) != v0[3] )
            {
                chatbox_setflags_3e(1);
                return 0;
            }
LABEL_11:
            chatbox_clearFlags_3e(1);
            *(v1 + 4) = 0;
            return 1;
    }
    if ( v3 != 4 )
    {
        if ( *(v1 + 17) || !v0[1] )
        {
            chatbox_setflags_3e(1);
            if ( !*(v1 + 4) )
            {
                *(v1 + 12) = v0[2] | (v0[3] << 8);
                *(v1 + 4) = 1;
            }
            if ( *(v1 + 12) )
            {
                --*(v1 + 12);
                return 0;
            }
        }
        goto LABEL_11;
    }
    TestEventFlag(v0[2] | (v0[3] << 8));
    if ( v5 )
        goto LABEL_11;
    chatbox_setflags_3e(1);
    return 0;
}


// 0x804156c
int chatbox_EF_checkflag()
{
    int v0; // r4

    return (jt_ctrl_8041580[*(v0 + 1)])();
}


// 0x8041670
signed int __fastcall chatbox_8041670(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r1

    v5 = **(&off_8043C84 + *(v4 + 2));
    if ( v5 != 255 )
        chatbox_config_80408D0(&off_8043C84, v5);
    return 1;
}


// 0x8041694
signed int chatbox_8041694()
{
    unsigned __int8 *v0; // r4
    int v1; // r1
    int v2; // r0
    char v3; // zf
    signed int v4; // r2
    int v5; // r1

    v1 = v0[4];
    v2 = (TestEventFlagRange)((v0[3] << 8) | v0[2]);
    if ( v3 )
        v4 = 6;
    else
        v4 = 5;
    v5 = v0[v4];
    if ( v5 != 255 )
        chatbox_config_80408D0(v2, v5);
    return 1;
}


// 0x80416c4
signed int chatbox_80416C4()
{
    int v0; // r4
    int v1; // r10
    signed int v2; // r3
    int v3; // r0
    int v4; // r1

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapNumber);
    v3 = 5;
    if ( v2 >= *(v0 + 2) && v2 <= *(v0 + 3) )
        v3 = 4;
    v4 = *(v0 + v3);
    if ( v4 != 255 )
        chatbox_config_80408D0(v3, v4);
    return 1;
}


// 0x80416f0
signed int chatbox_80416F0()
{
    int v0; // r4
    int v1; // r10
    signed int v2; // r3
    int v3; // r0
    int v4; // r1

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup);
    v3 = 5;
    if ( v2 >= *(v0 + 2) && v2 <= *(v0 + 3) )
        v3 = 4;
    v4 = *(v0 + v3);
    if ( v4 != 255 )
        chatbox_config_80408D0(v3, v4);
    return 1;
}


// 0x804171c
signed int chatbox_804171C()
{
    int v0; // r4
    int v1; // r0
    signed int v2; // r2
    char v3; // zf
    int v4; // r1

    v1 = TestEventFlag(*(v0 + 2) | (*(v0 + 3) << 8));
    if ( v3 )
        v2 = 1;
    v4 = *(v0 + v2 + 4);
    if ( v4 != 255 )
        chatbox_config_80408D0(v1, v4);
    return 1;
}


// 0x8041748
signed int chatbox_8041748()
{
    int v0; // r4
    int v1; // r10
    signed int v2; // r3
    int v3; // r0
    int v4; // r1

    v2 = *(*(v1 + oToolkit_GameStatePtr) + oGameState_GameProgress);
    v3 = 5;
    if ( v2 >= *(v0 + 2) && v2 <= *(v0 + 3) )
        v3 = 4;
    v4 = *(v0 + v3);
    if ( v4 != 255 )
        chatbox_config_80408D0(v3, v4);
    return 1;
}


// 0x8041774
signed int __fastcall chatbox_8041774(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r0
    int v6; // r1

    v5 = 5;
    if ( **(&off_8043C64 + *(v4 + 2)) == *(v4 + 3) )
        v5 = 4;
    v6 = *(v4 + v5);
    if ( v6 != 255 )
        chatbox_config_80408D0(v5, v6);
    return 1;
}


// 0x80417a4
signed int __fastcall chatbox_80417A4(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r1

    v5 = *(v4 + 3);
    if ( v5 != 255 )
        chatbox_config_80408D0(3, v5);
    return 1;
}


// 0x80417c0
signed int chatbox_80417C0()
{
    int v0; // r4
    char v1; // zf
    int v2; // r0
    int v3; // r1

    notZero_eByte200AD04();
    if ( v1 )
        v2 = 2;
    else
        v2 = 3;
    v3 = *(v0 + v2);
    if ( v3 != 255 )
        chatbox_config_80408D0(v2, v3);
    return 1;
}


// 0x80417e4
signed int chatbox_80417E4()
{
    int v0; // r4
    int v1; // r0
    int v2; // r1
    signed int v3; // r2
    int v4; // r1
    int v6; // [sp+0h] [bp-Ch]

    v1 = CheckKeyItem(*(v0 + 2));
    v2 = *(v6 + 3);
    v3 = 0;
    if ( v1 != v2 )
    {
        v3 = 1;
        if ( v1 <= v2 )
            v3 = 2;
    }
    v4 = *(v6 + v3 + 4);
    if ( v4 != 255 )
        chatbox_config_80408D0(v1, v4);
    return 1;
}


// 0x8041818
signed int chatbox_8041818()
{
    unsigned __int8 *v0; // r4
    int v1; // r0
    int v2; // r0
    int v3; // r1
    signed int v4; // r2
    int v5; // r1
    int v6; // ST00_4
    int v7; // r1
    signed int v8; // r2
    int v9; // r1
    signed int v10; // r2

    v1 = v0[1];
    if ( v1 == 9 )
    {
        v6 = GetChipCountOfCode(v0[2] | (v0[3] << 8), v0[4]);
        v2 = v6 - sub_8021C02(v0[2] | (v0[3] << 8), v0[4]);
        v7 = v0[5];
        v8 = 0;
        if ( v2 != v7 )
        {
            v8 = 1;
            if ( v2 <= v7 )
                v8 = 2;
        }
        v5 = v0[v8 + 6];
    }
    else if ( v1 == 42 )
    {
        v2 = GetTotalChipCount(v0[2] | (v0[3] << 8));
        v9 = v0[4];
        v10 = 0;
        if ( v2 != v9 )
        {
            v10 = 1;
            if ( v2 <= v9 )
                v10 = 2;
        }
        v5 = v0[v10 + 5];
    }
    else
    {
        v2 = GetChipCountOfCode(v0[2] | (v0[3] << 8), v0[4]);
        v3 = v0[5];
        v4 = 0;
        if ( v2 != v3 )
        {
            v4 = 1;
            if ( v2 <= v3 )
                v4 = 2;
        }
        v5 = v0[v4 + 6];
    }
    if ( v5 == 255 )
        v0[1];
    else
        chatbox_config_80408D0(v2, v5);
    return 1;
}


// 0x80418cc
signed int __fastcall chatbox_80418CC(int a1)
{
    int v1; // r4
    int v2; // r6
    int v3; // r3
    signed int v4; // r2
    signed int v5; // ST00_4
    int v6; // r1
    int v8; // [sp-Ch] [bp-14h]

    v2 = *(v1 + 3);
    v3 = 0;
    v4 = 0;
    while ( v3 != v2 )
    {
        v5 = v4;
        v8 = v3;
        a1 = CheckKeyItem(*(v1 + 2) + v3);
        v4 = v5;
        if ( a1 )
            goto LABEL_6;
        v3 = v8 + 1;
    }
    v4 = 1;
LABEL_6:
    v6 = *(v1 + v4 + 4);
    if ( v6 != 255 )
        chatbox_config_80408D0(a1, v6);
    return 1;
}


// 0x8041904
signed int __fastcall chatbox_8041904(int a1)
{
    int v1; // r4
    int v2; // r7
    int v3; // r6
    int v4; // r3
    signed int v5; // r2
    signed int v6; // ST00_4
    int v7; // ST04_4
    int v8; // r1

    v2 = 0;
    v3 = *(v1 + 3);
    v4 = 0;
    v5 = 0;
    while ( v4 != v3 )
    {
        v6 = v5;
        v7 = v4;
        a1 = CheckKeyItem(*(v1 + 2) + v4);
        v5 = v6;
        v4 = v7 + 1;
        if ( a1 )
            ++v2;
    }
    if ( v2 != 2 )
        v5 = 1;
    v8 = *(v1 + v5 + 4);
    if ( v8 != 255 )
        chatbox_config_80408D0(a1, v8);
    return 1;
}


// 0x8041944
signed int chatbox_8041944()
{
    int v0; // r4
    int v1; // r0
    int v2; // r1

    v1 = eStruct200A008_getBattleResult();
    v2 = *(v0 + v1 + 1);
    if ( v2 != 255 )
        chatbox_config_80408D0(v1, v2);
    return 1;
}


// 0x8041964
signed int __fastcall chatbox_8041964(int a1)
{
    int v1; // r4
    int v2; // r0
    char v3; // zf
    signed int v4; // r2
    int v5; // r1

    v2 = (TestEventFlagRange)(a1);
    if ( v3 )
        v4 = 3;
    else
        v4 = 2;
    v5 = *(v1 + v4);
    if ( v5 != 255 )
        chatbox_config_80408D0(v2, v5);
    return 1;
}


// 0x804198c
signed int __fastcall chatbox_804198C(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    int v5; // r0
    int v6; // r1

    v5 = **(&off_8043C64 + *(v4 + 2)) + 3;
    v6 = *(v4 + v5);
    if ( v6 != 255 )
        chatbox_config_80408D0(v5, v6);
    return 1;
}


// 0x80419b4
signed int chatbox_80419B4()
{
    int v0; // r4
    int v1; // r0
    int v2; // r1

    v1 = getPETNaviSelect() + 2;
    v2 = *(v0 + v1);
    if ( v2 != 255 )
        chatbox_config_80408D0(v1, v2);
    return 1;
}


// 0x80419d0
signed int chatbox_80419D0()
{
    int v0; // r4
    int v1; // r0
    signed int v2; // r1
    int v3; // r1
    int v5; // [sp+0h] [bp-Ch]

    v1 = sub_8048C24(*(v0 + 2));
    v2 = 4;
    if ( v1 )
        v2 = 3;
    v3 = *(v5 + v2);
    if ( v3 != 255 )
        chatbox_config_80408D0(v1, v3);
    return 1;
}


// 0x80419f8
signed int chatbox_80419F8()
{
    int v0; // r4
    int v1; // r0
    int v2; // r0
    signed int v3; // r3
    int v4; // r1

    v1 = getPETNaviSelect();
    v2 = GetField16FromSelectedS20047CCStruct(v1);
    v3 = 4;
    if ( v2 < (*(v0 + 2) | (*(v0 + 3) << 8)) )
        v3 = 5;
    v4 = *(v0 + v3);
    if ( v4 != 255 )
        chatbox_config_80408D0(v2, v4);
    return 1;
}


// 0x8041a28
signed int chatbox_8041A28()
{
    int v0; // r4
    signed int v1; // r0
    int v2; // r1

    v1 = sub_81207F8(6);
    if ( v1 >= 12 )
        v2 = *(v0 + 2);
    else
        v2 = *(v0 + 3);
    if ( v2 != 255 )
        chatbox_config_80408D0(v1, v2);
    return 1;
}


// 0x8041a4c
signed int chatbox_8041A4C()
{
    unsigned __int8 *v0; // r4
    signed int v1; // r0
    signed int v2; // r3
    int v3; // r1

    v1 = sub_81207F8(byte_8041AB4[v0[2]]);
    v2 = 6;
    if ( v1 >= v0[3] && v1 <= v0[4] )
        v2 = 5;
    v3 = v0[v2];
    if ( v3 != 255 )
        chatbox_config_80408D0(v1, v3);
    return 1;
}


// 0x8041a7c
signed int chatbox_8041A7C()
{
    unsigned __int8 *v0; // r4
    signed int v1; // r0
    signed int v2; // r3
    int v3; // r1

    v1 = sub_81207F8(byte_8041AB4[v0[1] - 52]);
    v2 = 5;
    if ( v1 >= v0[2] && v1 <= v0[3] )
        v2 = 4;
    v3 = v0[v2];
    if ( v3 != 255 )
        chatbox_config_80408D0(v1, v3);
    return 1;
}


// 0x8041abc
signed int chatbox_8041ABC()
{
    int v0; // r4
    int v1; // r0
    int v2; // r1

    v1 = reqBBS_getRequestBBSRank() + 2;
    v2 = *(v0 + v1);
    if ( v2 != 255 )
        chatbox_config_80408D0(v1, v2);
    return 1;
}


// 0x8041adc
signed int __fastcall chatbox_F0_jump(int a1, int a2, int a3, int a4)
{
    int v4; // r4
    ChatBoxPropreties *cb; // r5
    Toolkit *tk; // r10
    int v7; // r0
    int v8; // r1
    int v10; // r0
    int v11; // r6
    unsigned int v13; // r6
    char v14; // r2
    int v16; // r6
    int v17; // r2
    int v18; // r1
    int v21; // r3
    int v22; // r7
    int v23; // r1
    int v24; // r1
    char v25; // [sp-8h] [bp-Ch]
    char v26; // [sp-4h] [bp-8h]
    unsigned int v27; // [sp-4h] [bp-8h]

    v7 = *(v4 + 1);
    if ( v7 == 2 )
    {
        v24 = *(v4 + 2);
        if ( v24 != 255 )
        {
            cb[1].chatPageState = v24;
            return 1;
        }
        return 1;
    }
    if ( v7 != 1 )
    {
        if ( *(v4 + 1) )
        {
            v10 = *(v4 + 1);
            v11 = (*tk->currFrame & 3) + 2;
            do
            {
                GetRNG2();
                _VF = __OFSUB__(v11--, 1);
            }
            while ( !(((v11 < 0) ^ _VF) | (v11 == 0)) );
            v13 = *(v4 + 1) >> 7;
            v26 = *(v4 + 1);
            TestEventFlagFromImmediate(23, 9);
            v14 = v26;
            if ( _ZF )
                v13 = 0;
            v25 = v26;
            v27 = v13;
            v16 = v13 + 2;
            v17 = (v14 & 0x3F) + 2;
            v18 = 0;
            do
                v18 += *(v4 + v17--);
            while ( v17 >= v16 );
            __asm { SVC         6 }
            v21 = 0;
            v22 = v27 + 2;
            while ( 1 )
            {
                v7 = *(v4 + v22);
                v21 += v7;
                if ( v21 > v18 )
                    break;
                if ( ++v22 > (v25 & 0x3F) + 2 )
                {
                    v22 = 2;
                    break;
                }
            }
            v8 = *(v4 + (*(v4 + 1) & 0x3F) + 1 + v22);
        }
        else
        {
            v8 = *(v4 + 2);
        }
        if ( v8 != 255 )
        {
            chatbox_config_80408D0(v7, v8);
            return 1;
        }
        return 1;
    }
    v23 = cb[1].chatPageState;
    if ( v23 != 255 )
        chatbox_config_80408D0(1, v23);
    return 1;
}


// 0x8041ba4
signed int chatbox_F1_textspeed()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0

    v2 = *(v0 + 2);
    *(v1 + 8) = v2;
    *(v1 + 499) = v2 + 1;
    if ( v2 )
    {
        chatbox_setflags_3e(2048);
    }
    else
    {
        *(v1 + 499) = 1;
        chatbox_setflags_3e(64);
    }
    return 1;
}


// 0x8041bd8
signed int chatbox_F2_clearmsgbox()
{
    int v0; // r4
    int v1; // r5
    char v2; // t1

    chatbox_set_eFlags2009F38(byte_200);
    if ( *(v1 + 8) )
    {
        chatbox_setflags_3e(1);
        chatbox_clearFlags_3e(64);
    }
    chatbox_clearFlags_3e(&byte_400 | 0x800);
    *(v1 + 52) = v0 + 1;
    *(v1 + 4) = 0;
    *(v1 + 100) = 0;
    *(v1 + 18) = 0;
    *(v1 + 2) = 0;
    *(v1 + 23) = 0;
    *(v1 + 61) = 0;
    *(v1 + 128) = 0;
    *(v1 + 120) = 4;
    *(v1 + 17) = 1;
    *(v1 + 116) = 1;
    v2 = *(v1 + 8);
    *(v1 + 148) = *(v1 + 24);
    chatbox_8045F60();
    *(&dword_1D4 + v1) = 0;
    *(v1 + 470) = 0;
    return 1;
}


// 0x8041c54
signed int chatbox_F3_control()
{
    int v0; // r4

    if ( *(v0 + 1) )
    {
        if ( *(v0 + 1) == 1 )
            chatbox_clear_eFlags2009F38(64);
        else
            chatbox_set_eFlags2009F38(*(v0 + 2));
    }
    else
    {
        chatbox_set_eFlags2009F38(64);
    }
    return 1;
}


// 0x8041c84
// () ->
signed int __fastcall chatbox_F4_unk(int a1, int a2, int a3, int a4)
{
    unsigned __int8 *v4; // r4
    int v5; // r5
    unsigned int v6; // r0
    int v7; // r1
    signed int v8; // r0
    signed int result; // r0
    int (__fastcall *v10)(signed int); // [sp+0h] [bp-4h]

    v6 = v4[1];
    v7 = 16 * (v6 >> 4);
    if ( v7 == 16 )
        v6 = chatbox_8041DF4(v6, 16, a3, a4, v10);
    switch ( v6 )
    {
        case 0u:
            goto LABEL_13;
        case 1u:
            TakeItem(v4[2], v4[3]);
            return 1;
        case 2u:
            PlaySoundEffect(115, v7, a3);
            sub_803CDF8(v4[2], v4[3]);
            result = 1;
            break;
        default:
LABEL_13:
            PlaySoundEffect(115, v7, a3);
            v8 = v4[2];
            if ( v8 == 255 )
            {
                v8 = *(v5 + 84);
                *(v5 + 76) = v8 - 113;
            }
            GiveItem(v8, v4[3]);
            result = 1;
            break;
    }
    return result;
}


// 0x8041cf4
signed int chatbox_F5_mugshot()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    char v3; // zf
    int v4; // r0
    char v5; // r1
    char *i; // r2
    int v7; // r3
    int v8; // r7
    char v9; // r1
    char *j; // r2
    int v11; // r3
    char v12; // r0

    v2 = *(v0 + 1);
    switch ( v2 )
    {
        case 1:
            chatbox_clearFlags_3e(2);
            break;
        case 2:
            *(v1 + 7) = *(v0 + 2);
            break;
        case 3:
            v12 = *(v0 + 2);
            byte_1F0[v1] = v12;
            byte_1F1[v1] = v12;
            break;
        case 4:
            *(v1 + 144) = *(v0 + 2);
            break;
        default:
            chatbox_maskFlags_3e(2u);
            if ( v3 )
            {
                chatbox_setflags_3e(2);
                chatbox_setflags_3e(4);
                chatbox_maskFlags_3e(0x1000u);
                if ( v3 )
                    *(v1 + 64) = 6342;
            }
            v4 = *(v0 + 2);
            v5 = 0;
            for ( i = &byte_8044244; ; i += 2 )
            {
                v7 = *i;
                if ( v7 == 255 )
                    break;
                if ( v7 == v4 )
                {
                    v5 = i[1];
                    break;
                }
            }
            *(v1 + 7) = v5;
            v8 = byte_1F0[v1];
            if ( v8 != 3 )
                LOBYTE(v8) = 0;
            v9 = 1;
            for ( j = &byte_8044260; ; j += 2 )
            {
                v11 = *j;
                if ( v11 == 255 )
                    break;
                if ( v11 == v4 )
                {
                    LOBYTE(v8) = j[1];
                    v9 = 0;
                    break;
                }
            }
            *(v1 + 20) = v9;
            *(v1 + 10) = v8;
            *(v1 + 152) = v8;
            *(v1 + 11) = -1;
            (*(&dword_8040B38 + 2))();
            break;
    }
    return 1;
}


// 0x8041dbc
signed int chatbox_F6_textcolor()
{
    int v0; // r4
    int v1; // r5

    if ( *(v0 + 1) )
        CopyByEightWords(*(v1 + 4 * *(v0 + 2) + 76), byte_3001710, 0x20u);
    else
        CopyByEightWords(&dword_86B7AA0[8 * *(v0 + 2)], byte_3001710, 0x20u);
    return 1;
}


// 0x8041df4
int __fastcall chatbox_8041DF4(int a1, int a2, int a3, int a4, int (__fastcall *a5)(signed int))
{
    unsigned __int8 *v5; // r4
    int v6; // r5
    int v7; // r0
    int result; // r0
    int v9; // r0
    int v10; // r1

    v7 = a1 - 16;
    if ( v7 )
    {
        if ( v7 == 1 )
        {
            TakeChips(v5[2] | (v5[3] << 8), v5[4], v5[5]);
            result = a5(1);
        }
        else
        {
            if ( v7 == 2 )
            {
                PlaySoundEffect(115, a2, a3);
                sub_8021B78(v5[2] | (v5[3] << 8), v5[4], v5[5]);
            }
            else
            {
                PlaySoundEffect(115, a2, a3);
                sub_811FFC0();
            }
            result = a5(1);
        }
    }
    else
    {
        PlaySoundEffect(115, a2, a3);
        v9 = v5[2] | (v5[3] << 8);
        if ( v9 == 0xFFFF )
            v9 = *(v6 + 84);
        v10 = v5[4];
        if ( v10 == 255 )
            v10 = *(v6 + 88);
        GiveChips(v9, v10, v5[5]);
        result = a5(1);
    }
    return result;
}


// 0x8041e80
int chatbox_F8_playeranimation()
{
    int v0; // r4

    return (*(&off_8041E94 + *(v0 + 1)))();
}


// 0x8041eb0
signed int chatbox_8041EB0()
{
    int v0; // r5
    char v1; // r0

    chatbox_setflags_3e(1);
    if ( *(v0 + 4) )
    {
        if ( !sub_809E228() )
        {
            v1 = sub_809E2B8();
            sub_809E13C(v1);
            *(v0 + 4) = 0;
            return 1;
        }
    }
    else
    {
        updateFlags_809E0B0();
        *(v0 + 4) = 1;
    }
    return 0;
}


// 0x8041ee8
int chatbox_8041EE8()
{
    int v0; // r4
    int v1; // r5
    int v2; // r10

    chatbox_setflags_3e(1);
    *(v1 + 60) = *(*(*(v2 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 20);
    sub_809E14C(*(v0 + 2));
    return 0;
}


// 0x8041f10
signed int chatbox_8041F10()
{
    sub_809E122();
    return 1;
}


// 0x8041f1c
BOOL chatbox_8041F1C()
{
    int v0; // r10
    int v1; // r5

    chatbox_setflags_3e(1);
    v1 = *(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr);
    return (sprite_getFrameParameters() & 0x80) != 0;
}


// 0x8041f44
int chatbox_8041F44()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0

    chatbox_setflags_3e(1);
    v2 = *(v0 + 60);
    if ( v2 <= 7 )
        *(*(*(v1 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + 16) = v2;
    sub_809E14C(v2);
    return 0;
}


// 0x8041f68
int chatbox_FA_print()
{
    int v0; // r4

    return (jt_FA_print_8041F7C[*(v0 + 1)])();
}


// 0x8041fb4
signed int chatbox_8041FB4()
{
    int v0; // r4
    int v1; // r5
    unsigned int v2; // r1
    unsigned int v3; // r2
    int v4; // r1
    bool *v5; // ST00_4
    int v6; // r4

    ++*(v1 + 5);
    v2 = *(v0 + 2);
    v3 = *(v0 + 3);
    if ( v3 == 4 )
        v2 &= 0xFu;
    if ( v3 >> 4 )
    {
        v4 = *(v1 + 4 * ((v3 >> 4) - 1) + 76);
        if ( v3 == 20 )
            v4 &= 0xFu;
        v3 += (v4 & 0xF00u) >> 8;
        if ( (v3 & 0xF) != 5 && (v3 & 0xF) != 6 )
            v4 = v4;
        v2 = v4 - *&byte_8042090[4 * (v3 & 0xF)];
        if ( (v3 & 0xF) == 5 || (v3 & 0xF) == 6 )
            v2 >>= 2;
    }
    v5 = &byte_200AFA0[64 * *(v1 + 100)];
    CopyBytes(&(**(&off_8042064 + (v3 & 0xF)))[*&(**(&off_8042064 + (v3 & 0xF)))[2 * v2]], v5, 64);
    ++*(v1 + 100);
    *(v1 + 44) = v5;
    v6 = v0 + 4;
    *(v1 + 68) = v6;
    *(&dword_140[*(v1 + 5) - 1] + v1) = v6;
    return 1;
}


// 0x80420bc
signed int chatbox_80420BC()
{
    int v0; // r4
    int v1; // r5
    int v2; // r1
    int v3; // r0
    bool *v4; // ST00_4
    int v5; // r4

    ++*(v1 + 5);
    v2 = getPETNaviSelect();
    v3 = *(&off_8042118 + *(v0 + 2));
    v4 = &byte_200AFA0[64 * *(v1 + 100)];
    CopyBytes(v3 + *(v3 + 2 * v2), v4, 64);
    ++*(v1 + 100);
    *(v1 + 44) = v4;
    v5 = v0 + 3;
    *(v1 + 68) = v5;
    *(&dword_140[*(v1 + 5) - 1] + v1) = v5;
    return 1;
}


// 0x8042124
void chatbox_8042124()
{
    ;
}


// 0x8042128
signed int chatbox_8042128()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r4

    ++*(v1 + 5);
    if ( *(v0 + 3) )
        v2 = *(v1 + 4 * (*(v0 + 3) - 1) + 76);
    else
        v2 = sub_803D06C();
    chatbox_8042A14(v2, *(v0 + 2), &byte_200AFA0[64 * *(v0 + 3)]);
    *(v1 + 44) = &byte_200AFA0[64 * *(v0 + 3)];
    v3 = v0 + 4;
    *(v1 + 68) = v3;
    *(&dword_140[*(v1 + 5) - 1] + v1) = v3;
    return 1;
}


// 0x8042184
signed int chatbox_8042184()
{
    int v0; // r4
    int v1; // r5
    int v2; // r4

    ++*(v1 + 5);
    chatbox_8042A14(**(&off_8043C8C + *(v0 + 3)), *(v0 + 2), &unk_200AFE0);
    *(v1 + 44) = &unk_200AFE0;
    v2 = v0 + 4;
    *(v1 + 68) = v2;
    *(&dword_140[*(v1 + 5) - 1] + v1) = v2;
    return 1;
}


// 0x80421d8
signed int chatbox_80421D8()
{
    int v0; // r4
    int v1; // r5
    bool *v2; // ST00_4
    int v3; // r4

    ++*(v1 + 5);
    v2 = &byte_200AFA0[64 * *(v1 + 100)];
    CopyBytes(*(v1 + *(v0 + 2) + 76), v2, 3);
    v2[3] = -27;
    ++*(v1 + 100);
    *(v1 + 44) = v2;
    v3 = v0 + 3;
    *(v1 + 68) = v3;
    *(&dword_140[*(v1 + 5) - 1] + v1) = v3;
    return 1;
}


// 0x804222c
signed int chatbox_804222C()
{
    int v0; // r4
    int v1; // r5
    char *v2; // r0
    bool *v3; // ST00_4
    int v4; // r4

    ++*(v1 + 5);
    v2 = &byte_8043B54[8 * *(v0 + 2)];
    v3 = &byte_200AFA0[64 * *(v1 + 100)];
    CopyWords(*v2, v3, *(v2 + 1));
    ++*(v1 + 100);
    *(v1 + 44) = v3;
    v4 = v0 + 3;
    *(v1 + 68) = v4;
    *(&dword_140[*(v1 + 5) - 1] + v1) = v4;
    return 1;
}


// 0x804228c
void chatbox_804228C()
{
    ;
}


// 0x8042290
int chatbox_FD_sound()
{
    int v0; // r4

    return (*(&off_80422A4 + *(v0 + 1)))();
}


// 0x80422d4
signed int __fastcall chatbox_80422D4(int a1, int a2, int a3)
{
    int v3; // r4

    PlaySoundEffect(*(v3 + 2) | (*(v3 + 3) << 8), *(v3 + 3) << 8, a3);
    return 1;
}


// 0x80422e8
signed int __fastcall chatbox_80422E8(int a1, int a2, int a3)
{
    int v3; // r4

    PlaySong(*(v3 + 2) | (*(v3 + 3) << 8), *(v3 + 3) << 8, a3);
    return 1;
}


// 0x80422fc
signed int chatbox_80422FC()
{
    chatbox_clearFlags_3e(64);
    return 1;
}


// 0x804230c
signed int chatbox_804230C()
{
    chatbox_setflags_3e(64);
    return 1;
}


// 0x804231c
signed int __fastcall chatbox_804231C(int a1, int a2, int a3)
{
    musicGameState_8000784(a1, a2, a3);
    return 1;
}


// 0x8042328
signed int chatbox_8042328()
{
    int v0; // r4
    int v1; // r10

    sound_800068A(*(v0 + 2), *(v0 + 3));
    *(*(v1 + oToolkit_GameStatePtr) + oGameState_BGMusicIndicator) = 99;
    return 1;
}


// 0x8042340
signed int chatbox_8042340()
{
    chatbox_clearFlags_3e(128);
    return 1;
}


// 0x8042350
signed int chatbox_8042350()
{
    chatbox_setflags_3e(128);
    return 1;
}


// 0x8042360
signed int chatbox_8042360()
{
    int v0; // r0
    int v1; // r1
    int v2; // r2

    v0 = sub_8036E44();
    sub_8036E78(v0, v1, v2);
    return 1;
}


// 0x8042370
signed int chatbox_8042370()
{
    int v0; // r4

    sub_80006A2(*(v0 + 2), *(v0 + 3), 31);
    return 1;
}


// 0x8042388
int chatbox_FB_special()
{
    int v0; // r4

    return (jt_804239C[*(v0 + 1)])();
}


// 0x80423dc
signed int __fastcall chatbox_80423DC(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r5
    int v5; // r4

    PlaySoundEffect(115, a2, a3);
    *(v4 + 76) = *(4 * *(v3 + 2) + v3 + 3) | (*(4 * *(v3 + 2) + v3 + 4) << 8) | (*(4 * *(v3 + 2) + v3 + 5) << 16) | (*(4 * *(v3 + 2) + v3 + 6) << 24);
    GiveZenny();
    v5 = v3 + 4 * (*(v3 + 2) + 1) + 3;
    return 1;
}


// 0x8042418
signed int __fastcall chatbox_8042418(int a1, int a2, int a3)
{
    int v3; // r4
    _DWORD *v4; // r5
    unsigned __int8 *v5; // r0
    int v6; // r1
    int v7; // r0
    int v8; // r4

    PlaySoundEffect(115, a2, a3);
    v5 = (2 * *(v3 + 2) + v3 + 3);
    v4[21] = 1;
    v6 = v5[1];
    v4[20] = v6;
    v7 = *v5;
    v4[19] = v7;
    GiveChips(v7, v6, 1);
    v8 = v3 + 2 * (*(v3 + 2) + 1) + 3;
    return 1;
}


// 0x804244c
int chatbox_804244C()
{
    int v0; // r5
    int v1; // r1
    int v2; // r0

    chatbox_setflags_3e(1);
    if ( !*(v0 + 4) )
    {
        v2 = sub_80AA5F4(*(v0 + 4), v1, 31);
        gameState_8005BC8(v2, 1);
        engine_setScreeneffect(44, 16);
        *(v0 + 4) = 1;
    }
    return 0;
}


// 0x804247c
int chatbox_804247C()
{
    int v0; // r4
    int v1; // r5
    int v2; // r7
    char *v3; // r0

    chatbox_setflags_3e(1);
    if ( !*(v1 + 4) )
    {
        v2 = *(v0 + 2) | (*(v0 + 3) << 8);
        v3 = getBattleSettingsFromList0(v2);
        gameState_8005BC8(v3, 1);
        sub_803522E(v2);
        engine_setScreeneffect(44, 16);
        *(v1 + 4) = 1;
    }
    return 0;
}


// 0x80424bc
int chatbox_80424BC()
{
    int v0; // r4
    int v1; // r5
    int v2; // r1
    int v3; // r2
    int v4; // r3

    chatbox_setflags_3e(1);
    if ( !*(v1 + 4) )
    {
        subsystem_launchShop(*(v0 + 2), v2, v3, v4);
        *(v1 + 4) = 1;
    }
    return 0;
}


// 0x80424e0
signed int chatbox_80424E0()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r0
    char v4; // zf
    int v5; // r1

    if ( *(v1 + 4) )
    {
        chatbox_setflags_3e(1);
        return 0;
    }
    v2 = *(v0 + 2);
    if ( v2 != 1 )
    {
        v3 = subsystem_launchChipTrader(v2);
        if ( v4 )
        {
            *(v1 + 4) = 1;
            chatbox_setflags_3e(1);
            return 0;
        }
        goto LABEL_8;
    }
    v3 = sub_803D0F4();
    v5 = 255;
    if ( v3 < 10 )
LABEL_8:
        v5 = *(v0 + 3);
    if ( v5 != 255 )
        chatbox_config_80408D0(v3, v5);
    return 1;
}


// 0x804252c
int __fastcall chatbox_804252C(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r7
    int v5; // r0
    int v6; // r6
    int v7; // r0

    PlaySoundEffect(138, a2, a3);
    v4 = *(v3 + 2) | (*(v3 + 3) << 8);
    v5 = getPETNaviSelect();
    v6 = v5;
    v7 = sub_80010D4(v5);
    sub_80010EC(v6, v7 + v4);
    return 0;
}


// 0x8042554
signed int __fastcall sub_8042554(int a1, int a2, int a3)
{
    int v3; // r4
    int v4; // r5
    char v5; // r0
    signed int v6; // r0
    int v7; // r4

    PlaySoundEffect(115, a2, a3);
    GetRNG2();
    v6 = *((*(v3 + 2) & v5) + v3 + 3);
    *(v4 + 76) = v6;
    GiveItem(v6, 1);
    v7 = v3 + *(v3 + 2) + 1 + 3;
    return 1;
}


// 0x8042580
int chatbox_8042580()
{
    int v0; // r4
    int v1; // r5
    int v2; // r1
    int v3; // r2
    int v4; // r3

    chatbox_setflags_3e(1);
    if ( !*(v1 + 4) )
    {
        subsystem_launchBBS(*(v0 + 2), v2, v3, v4);
        *(v1 + 4) = 1;
    }
    return 0;
}


// 0x80425a0
int chatbox_80425A0()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0

    chatbox_setflags_3e(1);
    if ( !*(v1 + 4) )
    {
        v2 = *(v0 + 2);
        sub_8005EA2();
        *(v1 + 4) = 1;
    }
    return 0;
}


// 0x80425c0
int chatbox_80425C0()
{
    int v0; // r4
    int v1; // r5

    chatbox_setflags_3e(1);
    if ( !*(v1 + 4) )
    {
        subsystem_launchReqBBS(*(v0 + 2));
        *(v1 + 4) = 1;
    }
    return 0;
}


// 0x80425e0
int chatbox_80425E0()
{
    int v0; // r4

    GiveFolder(*(v0 + 2));
    return 0;
}


// 0x80425f0
int chatbox_80425F0()
{
    int v0; // r4
    int v1; // r5
    int v2; // r1
    int v3; // r2
    int v4; // r3

    chatbox_setflags_3e(1);
    if ( !*(v1 + 4) )
    {
        subsystem_launchMail(*(v0 + 2), v2, v3, v4);
        *(v1 + 4) = 1;
    }
    return 0;
}


// 0x8042610
int chatbox_FC_interface()
{
    int v0; // r4

    return (*(&off_8042624 + *(v0 + 1)))();
}


// 0x8042678
signed int chatbox_8042678()
{
    int v0; // r1
    int v1; // r2
    int v2; // r0
    int v3; // r1
    int v5; // [sp-4h] [bp-Ch]
    int v6; // [sp+0h] [bp-8h]

    sub_803F798();
    v5 = v2;
    if ( !v2 )
        PlaySoundEffect(116, v0, v1);
    v3 = *(v6 + v5 + 2);
    if ( v3 != 255 )
        chatbox_config_80408D0(v5 + 2, v3);
    return 1;
}


// 0x80426a8
signed int chatbox_80426A8()
{
    int v0; // r4

    (*(&jt_8043B00 + *(v0 + 2)))(*(v0 + 3));
    return 1;
}


// 0x80426c4
signed int chatbox_80426C4()
{
    engine_setScreeneffect(12, 12);
    return 1;
}


// 0x80426d4
// .global r4
int __cdecl chatbox_80426D4()
{
    sub_813C030();
    return 1;
}


// 0x80426e0
int __cdecl chatbox_80426E0()
{
    chatbox_setflags_3e(4096);
    return 1;
}


// 0x80426f4
signed int chatbox_80426F4()
{
    int v0; // r4
    int v1; // r0
    signed int v2; // r2
    int v3; // r1

    v1 = GetNaviStatsByte(0, 34);
    if ( v1 != 1 )
        v2 = 1;
    v3 = *(v0 + v2 + 2);
    if ( v3 != 255 )
        chatbox_config_80408D0(v1, v3);
    return 1;
}


// 0x804271c
signed int chatbox_804271C()
{
    int v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r0

    *(&dword_1D4 + v1) = 1;
    v2 = *(v1 + 470) + 1;
    if ( v2 <= 4 )
    {
        *(v1 + 470) = v2;
        v3 = v2 - 1;
        *(&dword_1E8 + v3 + v1) = *(v1 + 15);
        *(&dword_1EC + v3 + v1) = *(v0 + 2);
        *(&dword_1D8[v3] + v1) = *(v1 + 112);
    }
    return 1;
}


// 0x8042770
void __noreturn chatbox_sprite_8042770()
{
    int r4; // r4
    Toolkit *tk; // r10
    int v2; // r2

    v2 = *(r4 + 2);
    tk->gamestate->PET_naviSelect = v2;
    sprite_load(eOWPlayerObject, 128, 24, *(&dword_80427B0 + v2));// r5: player obj
    sprite_setAnimation(eOWPlayerObject, 0);
    sprite_noShadow(eOWPlayerObject);
    sprite_loadAnimationData(eOWPlayerObject);
    sprite_update(eOWPlayerObject);
}


// 0x80427b4
signed int chatbox_80427B4()
{
    int v0; // r1

    v0 = byte_813F380[byte_200578F[0]] + 1 + eReqBBSGui.numPoints;
    if ( v0 > 75 )
        LOBYTE(v0) = 75;
    eReqBBSGui.numPoints = v0;
    return 1;
}


// 0x80427e4
signed int chatbox_80427E4()
{
    int v0; // r5

    *(v0 + 76) = byte_813F380[byte_200578F[0]] + 1;
    return 1;
}


// 0x8042804
signed int chatbox_8042804()
{
    reqBBS_81408B4(byte_200578F[0]);
    return 1;
}


// 0x8042820
signed int chatbox_8042820()
{
    int v0; // r5

    *(v0 + 76) = sub_809CA84();
    return 1;
}


// 0x8042830
int chatbox_F7_move()
{
    int v0; // r4

    return (*(&off_8042844 + *(v0 + 1)))();
}


// 0x8042a14
signed int __fastcall __spoils<R0,R2,R3,R12> chatbox_8042A14(int a1, int a2, bool *a3)
{
    bool *v3; // ST04_4
    unsigned int v4; // r8
    signed int v5; // r0
    bool *v6; // r2
    bool v7; // r6
    int v8; // r3
    int v9; // r3
    int v10; // r4
    signed int result; // r0
    unsigned __int8 v12; // vf
    int v13; // r4
    char v14; // [sp+0h] [bp-14h]

    v3 = a3;
    v4 = sub_8000C00(a1);
    v5 = sub_8000C5C(v4);
    v6 = v3;
    v7 = (v14 & 0x40) != 0;
    v8 = v14 & 0xF;
    if ( !(v14 & 0xF) )
        v8 = v5;
    v9 = v8 - v5;
    if ( v14 & 0x80 )
    {
        v13 = 4 * (v5 - 1);
        while ( v9 > 0 )
        {
            --v9;
            *v6++ = v7;
        }
        result = 15;
        do
        {
            *v6++ = ((v4 >> v13) & 0xF) + 1;
            v12 = __OFSUB__(v13, 4);
            v13 -= 4;
        }
        while ( !((v13 < 0) ^ v12) );
    }
    else
    {
        v10 = 4 * (v5 - 1);
        result = 15;
        do
        {
            *v6++ = ((v4 >> v10) & 0xF) + 1;
            v12 = __OFSUB__(v10, 4);
            v10 -= 4;
        }
        while ( !((v10 < 0) ^ v12) );
        while ( v9 > 0 )
        {
            --v9;
            *v6++ = v7;
        }
    }
    *v6 = -26;
    v6[1] = 0;
    v6[2] = 0;
    return result;
}


// 0x8042a9c
signed int chatbox_8042A9C()
{
    unsigned __int8 *v0; // r4
    int v1; // r5
    int v2; // r0
    signed int v3; // r0
    signed int v4; // r0
    int v5; // r1
    int v6; // r2
    signed int v7; // ST04_4
    int v8; // r1
    int v9; // r1
    int v10; // r2
    int v12; // r0
    int v13; // r1
    signed int v14; // r2

    v2 = v0[1] - 10;
    if ( v0[1] == 10 )
    {
        v3 = v0[2];
        if ( v3 == 255 )
            v3 = *(v1 + 84);
        v4 = GiveItem(v3, v0[3]);
        if ( v4 != 1 )
        {
            v7 = v4;
            PlaySoundEffect(115, v5, v6);
            v4 = v7;
        }
        v12 = v4 + 4;
        v8 = v0[v12];
        goto LABEL_18;
    }
    if ( v2 == 1 )
    {
        v12 = TakeItem(v0[2], v0[3]) + 4;
        v8 = v0[v12];
LABEL_18:
        if ( v8 != 255 )
            chatbox_config_80408D0(v12, v8);
        return 1;
    }
    if ( v2 != 2 )
    {
        v12 = CheckKeyItem(v0[2]);
        v13 = v0[3];
        v14 = 0;
        if ( v12 != v13 )
        {
            v14 = 1;
            if ( v12 <= v13 )
                v14 = 2;
        }
        v8 = v0[v14 + 4];
        goto LABEL_18;
    }
    if ( sub_803CDF8(v0[2], v0[3]) != 1 )
        PlaySoundEffect(115, v9, v10);
    return 1;
}


// 0x8042b38
signed int chatbox_8042B38()
{
    unsigned __int8 *v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r0
    int v4; // r0
    int v5; // ST08_4
    int v6; // r1
    int v7; // r2
    int v8; // r0
    int v9; // r1
    int v10; // r0
    int v11; // r0
    int v12; // r0
    int v13; // r1
    int v14; // r2
    int v16; // r1
    signed int v17; // r2
    int v18; // [sp-Ch] [bp-10h]

    v2 = v0[1] - 14;
    if ( v0[1] == 14 )
    {
        v3 = v0[2] | (v0[3] << 8) | (v0[4] << 16) | (v0[5] << 24);
        if ( v3 == -1 )
            v3 = *(v1 + 84);
        *(v1 + 84) = v3;
        GiveZenny();
        v5 = v4;
        PlaySoundEffect(115, v6, v7);
        v8 = v5 + 6;
        v9 = v0[v5 + 6];
    }
    else if ( v2 == 1 )
    {
        v10 = v0[2] | (v0[3] << 8) | (v0[4] << 16) | (v0[5] << 24);
        TakeZenny();
        v8 = v11 + 6;
        v9 = v0[v8];
    }
    else
    {
        if ( v2 == 2 )
        {
            v12 = v0[2] | (v0[3] << 8) | (v0[4] << 16) | (v0[5] << 24);
            sub_803D02C();
            PlaySoundEffect(115, v13, v14);
            return 1;
        }
        v18 = v0[2] | (v0[3] << 8) | (v0[4] << 16) | (v0[5] << 24);
        v16 = sub_803D06C();
        v8 = v18;
        v17 = 0;
        if ( v16 != v18 )
        {
            v17 = 1;
            if ( v16 <= v18 )
                v17 = 2;
        }
        v9 = v0[v17 + 6];
    }
    if ( v9 != 255 )
        chatbox_config_80408D0(v8, v9);
    return 1;
}


// 0x8042c18
signed int chatbox_8042C18()
{
    unsigned __int8 *v0; // r4
    int v1; // r5
    int v2; // r0
    int v3; // r0
    int v4; // r0
    int v5; // ST08_4
    int v6; // r1
    int v7; // r2
    int v8; // r0
    int v9; // r1
    int v10; // r0
    int v11; // r0
    int v12; // r0
    int v13; // r1
    int v14; // r2
    int v16; // r1
    signed int v17; // r2
    int v18; // [sp-Ch] [bp-10h]

    v2 = v0[1] - 18;
    if ( v0[1] == 18 )
    {
        v3 = v0[2] | (v0[3] << 8) | (v0[4] << 16) | (v0[5] << 24);
        if ( v3 == -1 )
            v3 = *(v1 + 84);
        *(v1 + 84) = v3;
        GiveBugfrags();
        v5 = v4;
        PlaySoundEffect(115, v6, v7);
        v8 = v5 + 6;
        v9 = v0[v5 + 6];
    }
    else if ( v2 == 1 )
    {
        v10 = v0[2] | (v0[3] << 8) | (v0[4] << 16) | (v0[5] << 24);
        TakeBugfrags();
        v8 = v11 + 6;
        v9 = v0[v8];
    }
    else
    {
        if ( v2 == 2 )
        {
            v12 = v0[2] | (v0[3] << 8) | (v0[4] << 16) | (v0[5] << 24);
            sub_803D0B4();
            PlaySoundEffect(115, v13, v14);
            return 1;
        }
        v18 = v0[2] | (v0[3] << 8) | (v0[4] << 16) | (v0[5] << 24);
        v16 = sub_803D0F4();
        v8 = v18;
        v17 = 0;
        if ( v16 != v18 )
        {
            v17 = 1;
            if ( v16 <= v18 )
                v17 = 2;
        }
        v9 = v0[v17 + 6];
    }
    if ( v9 != 255 )
        chatbox_config_80408D0(v8, v9);
    return 1;
}


// 0x8042cf8
int chatbox_FE_numberinput()
{
    int v0; // r4

    return (jt_8042D0C[*(v0 + 1)])();
}


// 0x8042d68
int chatbox_8042D68()
{
    int v0; // r5
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r2
    int v6; // r0
    __int16 v7; // r0

    chatbox_setflags_3e(1);
    chatbox_8040DBC(v1, v2, v3, v4);
    v6 = *(v0 + 12);
    if ( v6 > 0 )
    {
        *(v0 + 12) = v6 - 1;
        return 0;
    }
    if ( *(v0 + 4) != 1 )
    {
        *(v0 + 19) = 0;
        *(v0 + 4) = 1;
        chatbox_setflags_3e(16);
        return 0;
    }
    v7 = *(v0 + 38);
    if ( !(v7 & 1) )
    {
        if ( v7 & 8 )
        {
            if ( *(v0 + 19) != 8 )
            {
                PlaySoundEffect(*(v0 + 108), 108, v5);
                *(v0 + 19) = 8;
            }
        }
        return 0;
    }
    if ( *(v0 + 19) != 8 )
        return 0;
    PlaySoundEffect(*(v0 + 110), 110, v5);
    chatbox_clearFlags_3e(17);
    chatbox_clear_eFlags2009F38(7);
    chatbox_set_eFlags2009F38(*(v0 + 19));
    *(v0 + 4) = 0;
    *(v0 + 12) = 0;
    *(v0 + 120) = 4;
    chatbox_set_eFlags2009F38(32);
    return 0;
}


// 0x8042ec8
signed int chatbox_8042EC8()
{
    _DWORD *v0; // r5
    int v1; // t1
    int v2; // r1
    int v3; // r4
    signed int result; // r0

    v1 = v0[21];
    v2 = v0[22];
    v3 = v0[19] + v0[20];
    v0[19] = v3;
    result = 0;
    if ( v3 == 7 )
        result = 1;
    return result;
}


// 0x8042ee8
signed int __fastcall chatbox_8042EE8(int a1, int a2)
{
    int v2; // r5
    char *v3; // r2
    unsigned __int8 *v4; // r0
    unsigned __int8 v5; // vf

    v3 = &byte_8045CCC[8 * a1];
    v4 = (v2 + 76);
    while ( *v3 == *v4 )
    {
        ++v4;
        ++v3;
        v5 = __OFSUB__(a2--, 1);
        if ( ((a2 < 0) ^ v5) | (a2 == 0) )
            return 1;
    }
    return 0;
}


// 0x8042f10
signed int chatbox_8042F10()
{
    int v0; // r5
    int v1; // r3
    signed int result; // r0
    char *i; // r2

    v1 = chatbox_8042F34(*(v0 + 76));
    result = 1;
    for ( i = byte_8044264; *i; i += 4 )
    {
        if ( v1 == *i )
            return 0;
    }
    return result;
}


// 0x8042f34
int __fastcall chatbox_8042F34(int result)
{
    int v1; // r1
    signed int v2; // r3
    char v3; // r2
    signed int v4; // r1
    int v5; // r1

    v1 = result;
    v2 = 255;
    v3 = 0;
    while ( 1 )
    {
        v4 = (v1 & v2) >> v3;
        if ( !v4 )
            break;
        if ( v4 >= 94 )
        {
            switch ( v4 )
            {
                case 143:
                    v5 = 47;
                    break;
                case 138:
                    v5 = 165;
                    break;
                case 137:
                    v5 = 46;
                    break;
                case 121:
                    v5 = 45;
                    break;
                default:
                    v5 = v4 - 29;
                    break;
            }
        }
        else
        {
            v5 = v4 + 47;
        }
        result = result & ~v2 | (v5 << v3);
        v3 += 8;
        v2 = 255 << v3;
        v1 = result;
    }
    return result;
}


// 0x8042f84
void chatbox_8042F84()
{
    ;
}


// 0x8042f88
unsigned int __fastcall sub_8042F88(unsigned int result)
{
    int v1; // r10
    int v2; // r5
    signed int v3; // r2
    int v4; // r4
    int v5; // r6
    int v6; // r4
    int v7; // r6
    unsigned __int8 v8; // vf

    v2 = *(v1 + oToolkit_ChatboxPtr);
    v3 = 28;
    v4 = 0;
    v5 = 0;
    do
    {
        v5 |= ((result >> v3) & 0xF) << v4;
        v4 += 8;
        v3 -= 4;
    }
    while ( v3 >= 16 );
    *(v2 + 84) = v5;
    v6 = 0;
    v7 = 0;
    do
    {
        v7 |= ((result >> v3) & 0xF) << v6;
        v6 += 8;
        v8 = __OFSUB__(v3, 4);
        v3 -= 4;
    }
    while ( !((v3 < 0) ^ v8) );
    *(v2 + 88) = v7;
    return result;
}


// 0x8042fc2
signed int sub_8042FC2()
{
    int v0; // r5
    signed int result; // r0

    *(v0 + 84) = 1734499951;
    result = 6845025;
    *(v0 + 88) = 6845025;
    return result;
}


// 0x8042fd8
int chatbox_F9_storebyte()
{
    int v0; // r4

    return (*(&off_8042FEC + *(v0 + 1)))();
}


// 0x8042ff4
signed int chatbox_8042FF4()
{
    int v0; // r4
    int v1; // r10

    *(*(v1 + oToolkit_S2011c50_Ptr) + 8 + *(v0 + 2)) = *(v0 + 3);
    return 1;
}


// 0x8043008
signed int chatbox_8043008()
{
    int v0; // r4

    **(&off_8043C64 + *(v0 + 2)) = *(v0 + 3);
    return 1;
}


// 0x8043020
int chatbox_FF_copytext()
{
    int v0; // r4

    return (*(&off_8043034 + *(v0 + 1)))();
}


// 0x804303c
signed int dead_804303C()
{
    int v0; // r4
    int v1; // r5
    int v2; // r2
    bool *v3; // ST00_4

    ++*(v1 + offsetof(ChatBoxPropreties, unk_05));
    v2 = *(v0 + 2);
    if ( *(v0 + 1) )
        v2 += 2;
    v3 = &byte_200AFA0[64 * *(v1 + 100)];
    CopyBytes(off_8043088[v2], v3, 64);
    ++*(v1 + 100);
    *(v1 + offsetof(ChatBoxPropreties, pScriptCursor)) = v3;
    *(v1 + offsetof(ChatBoxPropreties, unk_44)) = v0 + 3;
    return 1;
}


// 0x80430a0
signed int chatbox_80430A0()
{
    int v0; // r4
    int v1; // r5
    int v2; // r2
    bool *v3; // ST00_4
    int v4; // r4

    ++*(v1 + 5);
    v2 = *(v0 + 2);
    if ( *(v0 + 1) )
        v2 += 2;
    v3 = &byte_200AFA0[64 * *(v1 + 100)];
    CopyBytes(*&byte_80430FC[4 * v2], v3, 64);
    ++*(v1 + 100);
    *(v1 + 44) = v3;
    v4 = v0 + 3;
    *(v1 + 68) = v4;
    *(&dword_140[*(v1 + 5) - 1] + v1) = v4;
    return 1;
}


// 0x804312c
signed int sub_804312C()
{
    int v0; // r4
    int v1; // r5
    int v2; // r1
    char *v3; // r2

    *(v1 + *(v0 + 2) + 76) = 0;
    v2 = *&byte_1CC[v1];
    *&byte_1CC[v1] = v2 + 1;
    v3 = &byte_154[12 * v2];
    v3[v1] = *(v0 + 2);
    v3 += 4;
    *&v3[v1] = *(v1 + 112);
    *&v3[v1 + 4] = *(v1 + 124);
    return 1;
}


// 0x8043164
signed int __usercall __noreturn chatbox_8043164@<R0>(ChatBoxPropreties *cb@<R5>)
{
    Toolkit *tk; // r10
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r2
    int v7; // r1
    __int16 *v8; // r2
    signed int v9; // r3
    signed int v10; // r6
    int v11; // r0
    int v12; // r1
    u8 v13; // t1
    int v14; // r0
    u16 v15; // r0
    char *v16; // r0
    int v17; // r2
    char *v18; // ST00_4
    int v19; // ST08_4
    signed int v20; // ST0C_4
    signed int v21; // ST18_4
    int v22; // r6
    u16 v23; // r0
    unsigned int v25; // [sp-4h] [bp-8h]

    chatbox_setflags_3e(17);
    chatbox_8040DBC(v2, v3, v4, v5);
    v6 = 16 * cb->choiceCursorPos;
    v25 = *(&cb[1].chatbox_y + v6);
    cb->unk_70 = *(&cb[1].chatboxOpenState + v6);
    cb->amount_of_box_appeared -= 2;
    chatbox_80409E0(cb);
    cb->amount_of_box_appeared += 2;
    v7 = cb->keyPress;
    v8 = &word_80432C0;
    v9 = 12;
    while ( 1 )
    {
        v10 = *v8;
        if ( v10 & v7 )
            break;
        ++v8;
        v9 -= 4;
        if ( v9 < 0 )
            goto LABEL_7;
    }
    v10 = 240;
    cb->keyPress = v7 & 0xFF0F;
    v11 = (v25 >> v9) & 0xF;
    v12 = cb->choiceCursorPos;
    cb->choiceCursorPos = v11;
    if ( v11 != v12 )
        PlaySoundEffect(cb->unk_6C, v12, 108);
LABEL_7:
    v13 = cb->choiceCursorPos;
    v14 = cb->choiceCursorPos;
    if ( v14 != 8 )
    {
        v9 = *(&cb->unk_4C + v14);
        v15 = tk->joystick->keyPress;
        if ( v15 & 0x80 || v15 & 0x40 )
        {
            PlaySoundEffect(cb->unk_6C, 108, v8);
            *(&cb->unk_4C + cb->choiceCursorPos) = v9;
        }
    }
    v16 = &byte_154[cb];
    v17 = 0;
    do
    {
        v18 = v16;
        v19 = v17;
        v20 = v9;
        v21 = v10;
        v22 = 4 * *(v16 + 1);
        sub_3007038(1, *(&cb->unk_4C + *v16) + 1);
        v9 = v20;
        v10 = v21;
        v16 = v18 + 12;
        v17 = v19 + 1;
    }
    while ( v19 + 1 < 8 );
    if ( cb->chatPageState != 1 )
    {
        cb->chatPageState = 1;
        return 0;
    }
    if ( cb->bxoff_11 )
    {
        cb->currLine = 0;
        cb->unk_3D = 0;
    }
    v23 = cb->keysFlags;
    if ( !(v23 & 1) )
    {
        if ( v23 & 8 )
        {
            if ( cb->choiceCursorPos != 8 )
            {
                PlaySoundEffect(cb->unk_6C, 108, v17);
                cb->choiceCursorPos = 8;
            }
        }
        return 0;
    }
    if ( cb->choiceCursorPos != 8 )
        return 0;
    PlaySoundEffect(cb->unk_6E, 110, v17);
    chatbox_clearFlags_3e(17);
    chatbox_clear_eFlags2009F38(7);
    chatbox_set_eFlags2009F38(cb->choiceCursorPos);
    cb->chatPageState = 0;
    *&cb->chatbox_y = 0;
    cb->unk_78 = 4;
    chatbox_set_eFlags2009F38(32);
    return 0;
}


// 0x80432c8
signed int chatbox_80432C8()
{
    int v0; // r4
    int v1; // r5
    char v2; // r1
    int v3; // r2
    int v4; // r1
    char *v5; // r2

    v2 = 0;
    v3 = *(v0 + 1);
    if ( v3 != 2 )
    {
        v2 = 1;
        if ( v3 != 4 )
            v2 = 0;
    }
    *(v1 + *(v0 + 2) + 76) = v2;
    v4 = *&byte_1CC[v1];
    *&byte_1CC[v1] = v4 + 1;
    v5 = &byte_154[12 * v4];
    v5[v1] = *(v0 + 2);
    v5 += 4;
    *&v5[v1] = *(v1 + 112);
    *&v5[v1 + 4] = *(v1 + 124);
    return 1;
}


// 0x804330c
signed int __noreturn chatbox_804330C()
{
    int v0; // r4
    int v1; // r5
    int v2; // r10
    int v3; // r0
    int v4; // r1
    int v5; // r2
    int v6; // r3
    int v7; // r2
    int v8; // r1
    char *v9; // r2
    signed int v10; // r3
    signed int v11; // r6
    int v12; // r0
    int v13; // r1
    int v14; // r2
    int v15; // r2
    __int16 v16; // r0
    int v17; // r2
    char *v18; // r0
    int v19; // r2
    char *v20; // ST00_4
    int v21; // ST08_4
    signed int v22; // ST0C_4
    signed int v23; // ST18_4
    int v24; // r6
    int v25; // r0
    __int16 v26; // r0
    int v28; // r2
    int v29; // r2
    int v30; // r1
    unsigned int v31; // [sp-4h] [bp-8h]

    chatbox_setflags_3e(17);
    chatbox_8040DBC(v3, v4, v5, v6);
    v7 = 16 * *(v1 + 19);
    v31 = *(v1 + v7 + 164);
    *(v1 + 112) = *(v1 + v7 + 168);
    *(v1 + 15) -= 2;
    chatbox_80409E0(v1);
    *(v1 + 15) += 2;
    v8 = *(v1 + 36);
    v9 = byte_80434D8;
    v10 = 12;
    while ( 1 )
    {
        v11 = *v9;
        if ( v11 & v8 )
            break;
        v9 += 2;
        v10 -= 4;
        if ( v10 < 0 )
            goto LABEL_7;
    }
    v11 = 240;
    *(v1 + 36) = v8 & 0xFF0F;
    v12 = (v31 >> v10) & 0xF;
    v13 = *(v1 + 19);
    *(v1 + 19) = v12;
    if ( v12 != v13 )
        PlaySoundEffect(*(v1 + 108), v13, 108);
LABEL_7:
    if ( *(v1 + 128) - 1 != *(v1 + 19) )
    {
        v14 = *(v1 + 19);
        if ( v14 != *(v1 + 128) )
        {
            v15 = v14 + 76;
            v10 = *(v1 + v15);
            v16 = *(*(v2 + oToolkit_JoypadPtr) + 4);
            if ( v16 & 0x80 || v16 & 0x40 )
            {
                PlaySoundEffect(*(v1 + 108), 108, v15);
                *(v1 + v17) = v10;
            }
        }
    }
    v18 = &byte_154[v1];
    v19 = *(v1 + 128) - 2;
    do
    {
        v20 = v18;
        v21 = v19;
        v22 = v10;
        v23 = v11;
        v24 = 4 * *(v18 + 1);
        sub_3007038(1, *(v1 + *v18 + 76) + 1);
        v10 = v22;
        v11 = v23;
        v18 = v20 + 12;
        v19 = v21 - 1;
    }
    while ( v21 >= 1 );
    v25 = *(v1 + 12);
    if ( v25 > 0 )
    {
        *(v1 + 12) = v25 - 1;
        return 0;
    }
    if ( *(v1 + 4) != 1 )
    {
        *(v1 + 4) = 1;
        return 0;
    }
    if ( *(v1 + 17) )
    {
        *(v1 + 2) = 0;
        *(v1 + 61) = 0;
    }
    if ( *(v0 + 1) != 5 && *(v1 + 38) & 2 )
    {
        PlaySoundEffect(*(v1 + 106), 106, v19);
        goto LABEL_34;
    }
    v26 = *(v1 + 38);
    if ( !(v26 & 1) )
    {
        if ( v26 & 8 && *(v1 + 19) != *(v1 + 128) - 1 )
        {
            PlaySoundEffect(*(v1 + 108), 108, v19);
            *(v1 + 19) = *(v1 + 128) - 1;
        }
        return 0;
    }
    if ( *(v1 + 19) != *(v1 + 128) - 1 )
        return 0;
    chatbox_clearFlags_3e(17);
    *(v1 + 4) = 0;
    *(v1 + 12) = 0;
    *(v1 + 120) = 4;
    chatbox_set_eFlags2009F38(32);
    if ( *(v0 + 1) == 3 )
    {
        if ( !chatbox_8042EC8() )
            goto LABEL_34;
    }
    else if ( !chatbox_8042F10() )
    {
        goto LABEL_34;
    }
    PlaySoundEffect(*(v1 + 110), 110, v28);
LABEL_34:
    chatbox_clearFlags_3e(17);
    *(v1 + 120) = 4;
    v30 = *(v0 + v29);
    if ( v30 == 255 )
        return 0;
    chatbox_config_80408D0(4, v30);
    return 1;
}


// 0x80434e0
signed int __noreturn chatbox_80434E0()
{
    int v0; // r4
    int v1; // r5
    int v2; // r10
    int v3; // r1
    int v4; // r2
    int v5; // r3
    int v6; // r2
    int v7; // r1
    __int16 *v8; // r2
    signed int v9; // r3
    signed int v10; // r6
    int v11; // r0
    int v12; // r1
    int v13; // r2
    int v14; // r2
    __int16 v15; // r0
    int v16; // r2
    char *v17; // r0
    int v18; // r2
    char *v19; // ST00_4
    int v20; // ST08_4
    signed int v21; // ST0C_4
    signed int v22; // ST18_4
    int v23; // r6
    int v24; // r0
    __int16 v25; // r0
    int v27; // r2
    int v28; // r2
    int v29; // r1
    unsigned int v30; // [sp-4h] [bp-8h]

    chatbox_setflags_3e(17);
    chatbox_8040DDC(*(v1 + 128), v3, v4, v5);
    v6 = 16 * *(v1 + 19);
    v30 = *(v1 + v6 + 164);
    *(v1 + 112) = *(v1 + v6 + 168);
    *(v1 + 15) -= 2;
    chatbox_80409E0(v1);
    *(v1 + 15) += 2;
    v7 = *(v1 + 36);
    v8 = &word_80436A8;
    v9 = 12;
    while ( 1 )
    {
        v10 = *v8;
        if ( v10 & v7 )
            break;
        ++v8;
        v9 -= 4;
        if ( v9 < 0 )
            goto LABEL_7;
    }
    v10 = 240;
    *(v1 + 36) = v7 & 0xFF0F;
    v11 = (v30 >> v9) & 0xF;
    v12 = *(v1 + 19);
    *(v1 + 19) = v11;
    if ( v11 != v12 )
        PlaySoundEffect(*(v1 + 108), v12, 108);
LABEL_7:
    if ( *(v1 + 128) - 1 != *(v1 + 19) )
    {
        v13 = *(v1 + 19);
        if ( v13 != *(v1 + 128) )
        {
            v14 = v13 + 76;
            v9 = *(v1 + v14);
            v15 = *(*(v2 + oToolkit_JoypadPtr) + 4);
            if ( v15 & 0x80 || v15 & 0x40 )
            {
                PlaySoundEffect(*(v1 + 108), 108, v14);
                *(v1 + v16) = v9;
            }
        }
    }
    v17 = &byte_154[v1];
    v18 = *(v1 + 128) - 2;
    do
    {
        v19 = v17;
        v20 = v18;
        v21 = v9;
        v22 = v10;
        v23 = 4 * *(v17 + 1);
        sub_3007038(1, *(v1 + *v17 + 76) + 1);
        v9 = v21;
        v10 = v22;
        v17 = v19 + 12;
        v18 = v20 - 1;
    }
    while ( v20 >= 1 );
    v24 = *(v1 + 12);
    if ( v24 > 0 )
    {
        *(v1 + 12) = v24 - 1;
        return 0;
    }
    if ( *(v1 + 4) != 1 )
    {
        *(v1 + 4) = 1;
        return 0;
    }
    if ( *(v1 + 17) )
    {
        *(v1 + 2) = 0;
        *(v1 + 61) = 0;
    }
    if ( *(v1 + 38) & 2 )
    {
        PlaySoundEffect(*(v1 + 106), 106, v18);
    }
    else
    {
        v25 = *(v1 + 38);
        if ( !(v25 & 1) )
        {
            if ( v25 & 8 && *(v1 + 19) != *(v1 + 128) - 1 )
            {
                PlaySoundEffect(*(v1 + 108), 108, v18);
                *(v1 + 19) = *(v1 + 128) - 1;
            }
            return 0;
        }
        if ( *(v1 + 19) != *(v1 + 128) - 1 )
            return 0;
        chatbox_clearFlags_3e(17);
        *(v1 + 4) = 0;
        *(v1 + 12) = 0;
        *(v1 + 120) = 4;
        chatbox_set_eFlags2009F38(32);
        if ( chatbox_8042EE8(*(v0 + 5), *(v1 + 128) - 1) )
            PlaySoundEffect(*(v1 + 110), 110, v27);
    }
    chatbox_clearFlags_3e(17);
    *(v1 + 120) = 4;
    v29 = *(v0 + v28);
    if ( v29 == 255 )
        return 0;
    chatbox_config_80408D0(4, v29);
    return 1;
}


// 0x80436b0
signed int chatbox_80436B0()
{
    int v0; // r4
    int v1; // r5
    int v2; // r1
    char *v3; // r2

    *(v1 + 2 * *(v0 + 2) + 76) = 94;
    v2 = *&byte_1CC[v1];
    *&byte_1CC[v1] = v2 + 1;
    v3 = &byte_154[12 * v2];
    v3[v1] = *(v0 + 2);
    v3 += 4;
    *&v3[v1] = *(v1 + 112);
    *&v3[v1 + 4] = *(v1 + 124);
    return 1;
}


// 0x80436e8
signed int __noreturn chatbox_80436E8()
{
    int v0; // r4
    int v1; // r5
    int v2; // r10
    unsigned int v3; // r0
    int v4; // r1
    char *v5; // r2
    signed int v6; // r3
    signed int v7; // r6
    int v8; // r0
    int v9; // r1
    int v10; // r3
    int v11; // r1
    int v12; // r1
    __int16 v13; // r0
    unsigned __int8 *v14; // r0
    int v15; // r2
    unsigned __int8 *v16; // ST00_4
    int v17; // ST08_4
    int v18; // ST0C_4
    signed int v19; // ST18_4
    int v20; // r6
    int v21; // r0
    int v22; // r0
    int v23; // r2
    __int16 v24; // r0
    int v26; // r2
    int v27; // ST10_4
    int v28; // r1
    int v29; // [sp-4h] [bp-8h]

    chatbox_setflags_3e(17);
    *(v1 + 2) = 1;
    *(v1 + 61) = 1;
    v3 = *(v1 + 16 * *(v1 + 19) + 164);
    v29 = 16 * *(v1 + 19) + 168;
    v4 = *(v1 + 36);
    v5 = byte_80438A8;
    v6 = 12;
    while ( 1 )
    {
        v7 = *v5;
        if ( v7 & v4 )
            break;
        v5 += 2;
        v6 -= 4;
        if ( v6 < 0 )
            goto LABEL_7;
    }
    v7 = 240;
    *(v1 + 36) = v4 & 0xFF0F;
    v8 = (v3 >> v6) & 0xF;
    v9 = *(v1 + 19);
    *(v1 + 19) = v8;
    if ( v8 != v9 )
        PlaySoundEffect(*(v1 + 108), v9, 108);
LABEL_7:
    *(v1 + 112) = *(v1 + v29);
    --*(v1 + 15);
    chatbox_80409E0(v1);
    v10 = *(v1 + 15) + 1;
    *(v1 + 15) = v10;
    v11 = *(v1 + 19);
    if ( *(v1 + 128) - 1 != v11 && v11 != *(v1 + 128) - 1 )
    {
        v12 = 2 * v11 + 76;
        v10 = *(v1 + v12);
        v13 = *(*(v2 + oToolkit_JoypadPtr) + 4);
        if ( v13 & 0x80 )
        {
            if ( ++v10 > 441 )
                v10 = 1;
        }
        else if ( v13 & 0x40 )
        {
            if ( --v10 < 1 )
                v10 = 441;
        }
        *(v1 + v12) = v10;
    }
    v14 = (v1 + 340);
    v15 = *(v1 + 128) - 2;
    do
    {
        v16 = v14;
        v17 = v15;
        v18 = v10;
        v19 = v7;
        v20 = 4 * *(v14 + 1) + *&byte_803FCE4[4 * (*(v1 + 15) - 2)];
        sub_3007038(1, *(v1 + 2 * *v14 + 76));
        v10 = v18;
        v7 = v19;
        v14 = v16 + 12;
        v15 = v17 - 1;
    }
    while ( v17 >= 1 );
    v21 = *(v1 + 12);
    if ( v21 > 0 )
    {
        *(v1 + 12) = v21 - 1;
        return 0;
    }
    if ( *(v1 + 4) != 1 )
    {
        *(v1 + 4) = 1;
        return 0;
    }
    if ( *(v0 + 1) != 5 && *(v1 + 38) & 2 )
    {
        v22 = PlaySoundEffect(*(v1 + 106), 106, v15);
        v23 = 4;
        goto LABEL_38;
    }
    v24 = *(v1 + 38);
    if ( !(v24 & 1) )
    {
        if ( v24 & 8 && *(v1 + 19) != *(v1 + 128) - 1 )
        {
            PlaySoundEffect(*(v1 + 108), 108, v15);
            *(v1 + 19) = *(v1 + 128) - 1;
        }
        return 0;
    }
    if ( *(v1 + 19) != *(v1 + 128) - 1 )
        return 0;
    chatbox_clearFlags_3e(16);
    *(v1 + 4) = 0;
    *(v1 + 12) = 0;
    *(v1 + 120) = 4;
    chatbox_set_eFlags2009F38(32);
    if ( *(v0 + 1) == 3 )
    {
        v22 = chatbox_8042EC8();
        if ( v22 )
            goto LABEL_36;
    }
    else
    {
        v22 = chatbox_8042F10();
        if ( v22 )
        {
LABEL_36:
            v27 = v22;
            PlaySoundEffect(*(v1 + 110), 110, v26);
            v22 = v27;
            v26 = 0;
            goto LABEL_37;
        }
    }
LABEL_37:
    v23 = v26 + 2;
LABEL_38:
    v28 = *(v0 + v23);
    if ( v28 == 255 )
        return 0;
    chatbox_config_80408D0(v22, v28);
    return 1;
}


// 0x80438b4
signed int chatbox_80438B4()
{
    int v0; // r4
    int v1; // r5
    int v2; // r1
    char *v3; // r2

    *(v1 + *(v0 + 2) + 76) = 0;
    v2 = *&byte_1CC[v1];
    *&byte_1CC[v1] = v2 + 1;
    v3 = &byte_154[12 * v2];
    v3[v1] = *(v0 + 2);
    v3 += 4;
    *&v3[v1] = *(v1 + 112);
    *&v3[v1 + 4] = *(v1 + 124);
    return 1;
}


// 0x80438ec
int __noreturn chatbox_80438EC()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int v5; // r3
    unsigned int v6; // r0
    int v7; // r1
    __int16 *v8; // r2
    signed int v9; // r3
    signed int v10; // r6
    int v11; // r0
    int v12; // r1
    int v13; // r2
    int v14; // r3
    __int16 v15; // r0
    char v16; // r3
    char *v17; // r0
    int v18; // r2
    int v19; // r1
    int v20; // r1
    char *v21; // ST00_4
    int v22; // ST08_4
    signed int v23; // ST18_4
    int v24; // r6
    __int16 v25; // r0
    int v27; // [sp-4h] [bp-8h]

    chatbox_setflags_3e(17);
    chatbox_8040DBC(v2, v3, v4, v5);
    v6 = *(v0 + 16 * *(v0 + 19) + 164);
    v27 = 16 * *(v0 + 19) + 168;
    v7 = *(v0 + 36);
    v8 = &word_8043A48;
    v9 = 12;
    while ( 1 )
    {
        v10 = *v8;
        if ( v10 & v7 )
            break;
        ++v8;
        v9 -= 4;
        if ( v9 < 0 )
            goto LABEL_7;
    }
    v10 = 240;
    *(v0 + 36) = v7 & 0xFF0F;
    v11 = (v6 >> v9) & 0xF;
    v12 = *(v0 + 19);
    *(v0 + 19) = v11;
    if ( v11 != v12 )
        PlaySoundEffect(*(v0 + 108), v12, 108);
LABEL_7:
    *(v0 + 19) = *(v0 + 19);
    *(v0 + 112) = *(v0 + v27);
    *(v0 + 15) -= 2;
    chatbox_8040A9A();
    *(v0 + 15) += 2;
    v14 = *(v0 + *(v0 + 19) + 76);
    v15 = *(*(v1 + oToolkit_JoypadPtr) + 4);
    if ( v15 & 0x80 || v15 & 0x40 )
    {
        PlaySoundEffect(*(v0 + 108), 108, v13);
        *(v0 + *(v0 + 19) + 76) = v16;
    }
    v17 = &byte_154[v0];
    v18 = 0;
    do
    {
        v19 = *v17;
        if ( *v17 )
            v20 = *(v0 + v19 + 76);
        else
            v20 = byte_8043A54[*(v0 + v19 + 76)];
        v21 = v17;
        v22 = v18;
        v23 = v10;
        v24 = 4 * *(v17 + 1);
        sub_3007038(1, v20 + 1);
        v10 = v23;
        v17 = v21 + 12;
        v18 = v22 + 1;
    }
    while ( v22 + 1 < *&byte_1CC[v0] );
    if ( *(v0 + 4) != 1 )
    {
        *(v0 + 4) = 1;
        return 0;
    }
    if ( *(v0 + 17) )
    {
        *(v0 + 2) = 0;
        *(v0 + 61) = 0;
    }
    v25 = *(v0 + 38);
    if ( !(v25 & 1) )
    {
        if ( v25 & 8 )
            PlaySoundEffect(*(v0 + 108), 108, v18);
        return 0;
    }
    PlaySoundEffect(*(v0 + 110), 110, v18);
    chatbox_clearFlags_3e(17);
    chatbox_clear_eFlags2009F38(7);
    chatbox_set_eFlags2009F38(*(v0 + 19));
    *(v0 + 4) = 0;
    *(v0 + 12) = 0;
    *(v0 + 120) = 4;
    chatbox_set_eFlags2009F38(32);
    return 0;
}


// 0x8043a5c
signed int __fastcall chatbox_8043A5C(int a1, int a2, int a3)
{
    unsigned __int8 *v3; // r4
    int v4; // r5
    int v5; // r0
    int v6; // r0
    int v7; // r1
    signed int result; // r0
    int v9; // r0
    int v10; // r1
    signed int v11; // r2
    int v12; // r1

    v5 = v3[1] - 27;
    if ( v3[1] == 27 )
    {
        PlaySoundEffect(115, a2, a3);
        v6 = v3[2];
        if ( v6 == 255 )
            v6 = *(v4 + 84) - 144;
        v7 = v3[4];
        if ( v7 == 255 )
            v7 = *(v4 + 88);
        GiveNaviCustPrograms(v6 + 144, v7, v3[3]);
        result = 1;
    }
    else if ( v5 == 1 )
    {
        TakeNaviCustPrograms(v3[2] + 144, v3[4], v3[3]);
        result = 1;
    }
    else if ( v5 == 2 )
    {
        PlaySoundEffect(115, a2, a3);
        sub_803D118(v3[2] + 144, v3[4], v3[3]);
        result = 1;
    }
    else
    {
        v9 = sub_803D138(v3[2] + 144, v3[7]);
        v10 = v3[3];
        v11 = 0;
        if ( v9 != v10 )
        {
            v11 = 1;
            if ( v9 <= v10 )
                v11 = 2;
        }
        v12 = v3[v11 + 4];
        if ( v12 != 255 )
            chatbox_config_80408D0(v9, v12);
        result = 1;
    }
    return result;
}


// 0x8045ed0
int __fastcall chatbox_8045ED0(int a1)
{
    return byte_8043CA4[a1];
}


// 0x8045edc
int __fastcall chatbox_8045EDC(int a1, int a2)
{
    int v2; // r10
    int result; // r0

    result = 4 * a1;
    *(*(v2 + oToolkit_ChatboxPtr) + result + 76) = a2;
    return result;
}


// 0x8045eec
int __fastcall chatbox_8045EEC(int a1)
{
    int v1; // r10

    return *(*(v1 + oToolkit_ChatboxPtr) + 4 * a1 + 76);
}


// 0x8045efc
int __fastcall chatbox_8045EFC(int result, int a2, int a3, int a4)
{
    int v4; // r10
    _DWORD *v5; // r4

    v5 = *(v4 + oToolkit_ChatboxPtr);
    v5[19] = result;
    v5[20] = a2;
    v5[21] = a3;
    v5[22] = a4;
    return result;
}


// 0x8045f0c
__int64 sub_8045F0C()
{
    int v0; // r10
    int v1; // r4
    __int64 result; // r0
    int v3; // r2
    int v4; // r3

    v1 = *(v0 + oToolkit_ChatboxPtr);
    result = *(v1 + 76);
    v3 = *(v1 + 84);
    v4 = *(v1 + 88);
    return result;
}


// 0x8045f1c
// (int flags) -> void
int __fastcall chatbox_set_eFlags2009F38(int flags)
{
    *eFlags2009F38 |= flags;
    return flags;
}


// 0x8045f2c
// (int flags) -> void
int __fastcall chatbox_clear_eFlags2009F38(int result)
{
    *eFlags2009F38 &= ~result;
    return result;
}


// 0x8045f3c
int __fastcall chatbox_mask_eFlags2009F38(int a1)
{
    return a1 & *eFlags2009F38;
}


// 0x8045f4c
int chatbox_8045F4C()
{
    return eFlags2009F38[0] & 7;
}


// 0x8045f60
void __fastcall chatbox_8045F60()
{
    ChatBoxPropreties *cb; // r5
    int v1; // r1

    cb->unk_70 = 0;
    cb->amount_of_box_appeared = 0;
    cb->unk_0E = 0;
    cb->unk_7C = 0;
    ZeroFillByEightWords(&unk_200BEA0, 0xF00);
    ZeroFillByEightWords(&dword_200CDA0, v1);
}


