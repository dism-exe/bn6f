// 0x813e07c
char (**__fastcall reqBBS_813E07C(int a1, int a2, int a3, int a4))[108]
{
    int v4; // ST00_4
    char (**result)[108]; // r0

    v4 = a1;
    ZeroFillByWord(&reqBBS_eStruct2001150, 44);
    byte_2001154 = v4;
    result = &off_813DF74 + 9 * v4;
    dword_2001178 = (&off_813DF74 + 9 * v4);
    return result;
}


// 0x813e0a4
int reqBBS_cb_draw_813E0A4()
{
    return (*(reqBBS_jtDraw_813E0CC + reqBBS_eStruct2001150))();
}


// 0x813e0f8
// () -> int
void __usercall reqBBS_static_draw_813E0F8(reqBBS_GUI *gui@<R5>, int a1@<R0>, int a2@<R1>, int a3@<R2>, int a4@<R3>)
{
    Toolkit *tk; // r10

    gui->animationTimer0 = 0;
    gui->cursorPos = 0;
    gui->pagePos = 0;
    gui->RO_pagePos = 0;
    gui->animationTimer1 = 0;
    gui->unk_0B = 0;
    reqBBS_vram_813E6D0(gui);
    reqBBS_813E834(gui);
    reqBBS_813E890(gui);
    reqBBS_uncomp_813E5A0(gui);
    reqBBS_813E8CC(gui, gui->pagePos);
    reqBBS_813EEF4(gui);
    renderInfo_8001788();
    renderInfo_80017A0();
    sub_80015FC(23);
    engine_setScreeneffect(8, 16);
    sub_80465A0(byte_813DBDC);
    if ( gui->totalNewRequests && !gui->numNewRequests )
    {
        gui->jto_0 = 4;
        gui->animationTimer0 = 5;
        reqBBS_drawHeaderText();
        tk->sRender_08->renderingState = 0x5E40;
    }
    else
    {
        gui->jto_0 = 40;
        gui->animationTimer0 = 5;
        tk->sRender_08->renderingState = 0x5F40;
    }
}


// 0x813e188
// () -> int
void __usercall reqBBS_draw_813E188(reqBBS_GUI *gui@<R5>)
{
    Toolkit *tk; // r10
    _BYTE *v2; // r7
    int v3; // r0
    unsigned int v4; // r0
    int v5; // r1
    int v6; // r2
    char v7; // zf

    sRender_08_setRenderingState(8000);
    v2 = tk->unk_2009740;
    v3 = v2[6];
    if ( v3 > 0 )
    {
        v4 = v3 - 8;
        v2[6] = v4;
        v2[4] = v4 >> 4;
    }
    gui->RO_cursorPos = gui->cursorPos;
    gui->RO_pagePos = gui->pagePos;
    IsPaletteFadeActive();
    if ( !v7 )
        reqBBS_static_813EC10(0, v5, v6);
    reqBBS_813E534();
}


// 0x813e1c8
void __noreturn reqBBS_draw_813E1C8()
{
    int v0; // r10

    **(v0 + oToolkit_RenderInfoPtr) = 8000;
    reqBBS_813E534();
}


// 0x813e224
void __noreturn reqBBS_draw_813E224()
{
    reqBBS_GUI *reqBBS; // r5
    Toolkit *tk; // r10
    _BYTE *v2; // r7
    unsigned int v3; // r0
    _BYTE *v4; // r0
    int v5_timer; // r0
    unsigned __int8 v6; // vf

    tk->sRender_08->renderingState = 0x5F40;
    v2 = tk->unk_2009740;
    v3 = v2[6] + 8;
    v2[6] = v3;
    v2[4] = v3 >> 4;
    v4 = tk->unk_200F3A0;
    v4[7] -= 8;
    v4[6] += 8;
    v5_timer = reqBBS->animationTimer0;
    v6 = __OFSUB__(v5_timer--, 1);
    reqBBS->animationTimer0 = v5_timer;
    if ( !(((v5_timer < 0) ^ v6) | (v5_timer == 0)) )
        reqBBS_813E534();
    tk->chatbox->unk_4C = 4;
    chatbox_reqBBS_80404C0(
        *(reqBBS->reqBBS_textualPointers + 1),
        reqBBS_eRequestEntriesIDs[reqBBS->cursorPos + reqBBS->pagePos],
        off_813E294[reqBBS->unk_04]);
    reqBBS_draw_chatbox();
}


// 0x813e2ac
void reqBBS_draw_813E2AC()
{
    reqBBS_GUI *v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    unsigned int v4; // r0
    char v5; // zf
    unsigned int v6; // r8
    _BYTE *v7; // r7

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6);
    if ( v3 < 64 )
    {
        v4 = v3 + 8;
        *(v2 + 6) = v4;
        *(v2 + 4) = v4 >> 4;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    }
    chatbox_check_eFlags2009F38(8);
    if ( !v5 )
    {
        v6 = reqBBS_eRequestEntriesIDs[v0->cursorPos + v0->pagePos] + *(v0->reqBBS_textualPointers + 3);
        TestEventFlag(v6);
        if ( !v5 )
        {
            ClearEventFlag(v6);
            v0->numNewRequests = v0->numNewRequests;
        }
        chatbox_8040818();
        reqBBS_813E834(v0);
        v0->jto_0 = 20;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
        v0->animationTimer0 = 6;
        v7 = *(v1 + oToolkit_Unk2009740_Ptr);
        *v7 = -9;
        v7[4] = 4;
        v7[6] = 64;
        reqBBS_813E534();
    }
    reqBBS_813E534();
}


// 0x813e33c
void reqBBS_draw_813E33C()
{
    reqBBS_GUI *v0; // r5
    int v1; // r10
    int v2; // r7
    unsigned int v3; // r0
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf
    _BYTE *v7; // r0

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6) - 8;
    *(v2 + 6) = v3;
    *(v2 + 4) = v3 >> 4;
    *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    v4 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v4 + 7) += 8;
    *(v4 + 6) -= 8;
    v5 = v0->animationTimer0;
    v6 = __OFSUB__(v5--, 1);
    v0->animationTimer0 = v5;
    if ( ((v5 < 0) ^ v6) | (v5 == 0) )
    {
        v0->jto_0 = 4;
        reqBBS_813E890(v0);
        v7 = *(v1 + oToolkit_Unk200f3a0_Ptr);
        v7[9] = 63;
        v7[10] = 63;
        v7[3] = -1;
        v7[2] = 0;
        v7[7] = -1;
        v7[6] = 0;
    }
    reqBBS_813E534();
}


// 0x813e398
void reqBBS_draw_813E398()
{
    _BYTE *v0; // r5
    int v1; // r10
    _BYTE *v2; // r0
    char v3; // zf
    _BYTE *v4; // r7
    _BYTE *v5; // r0

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    v2[9] = 26;
    v2[10] = 54;
    v2[3] = 0;
    v2[2] = -1;
    v2[7] = 80;
    v2[6] = 80;
    IsPaletteFadeActive();
    if ( !v3 )
    {
        v4 = *(v1 + oToolkit_Unk2009740_Ptr);
        *v4 = -9;
        v4[4] = 0;
        v4[6] = 0;
        *v0 = 12;
        v5 = *(v1 + oToolkit_Unk200f3a0_Ptr);
        v5[9] = 26;
        v5[10] = 54;
        v5[3] = 0;
        v5[2] = -1;
        v5[7] = 80;
        v5[6] = 80;
    }
    reqBBS_813E534();
}


// 0x813e3f4
void reqBBS_draw_813E3F4()
{
    _BYTE *v0; // r5
    int v1; // r10
    _BYTE *v2; // r0
    char v3; // zf
    _BYTE *v4; // r7
    _BYTE *v5; // r0

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    v2[9] = 26;
    v2[10] = 54;
    v2[3] = 0;
    v2[2] = -1;
    v2[7] = 80;
    v2[6] = 80;
    IsPaletteFadeActive();
    if ( !v3 )
    {
        v4 = *(v1 + oToolkit_Unk2009740_Ptr);
        *v4 = -9;
        v4[4] = 0;
        v4[6] = 0;
        *v0 = 28;
        v5 = *(v1 + oToolkit_Unk200f3a0_Ptr);
        v5[9] = 26;
        v5[10] = 54;
        v5[3] = 0;
        v5[2] = -1;
        v5[7] = 80;
        v5[6] = 80;
    }
    reqBBS_813E534();
}


// 0x813e450
void __noreturn reqBBS_draw_813E450()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    unsigned int v3; // r0
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf
    int v7; // r0

    **(v1 + oToolkit_RenderInfoPtr) = 24384;
    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6) + 8;
    *(v2 + 6) = v3;
    *(v2 + 4) = v3 >> 4;
    v4 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v4 + 7) -= 8;
    *(v4 + 6) += 8;
    v5 = *(v0 + 8);
    v6 = __OFSUB__(v5--, 1);
    *(v0 + 8) = v5;
    if ( ((v5 < 0) ^ v6) | (v5 == 0) )
    {
        v7 = 0;
        if ( !*(v0 + 30) )
            v7 = 1;
        chatbox_runScript(reqBBS_eTextScript, v7);
        reqBBS_drawHeaderText();
        *v0 = 32;
    }
    reqBBS_813E534();
}


// 0x813e4ac
void __noreturn reqBBS_draw_813E4AC()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    unsigned int v4; // r0
    char v5; // zf

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6);
    if ( v3 < 64 )
    {
        v4 = v3 + 8;
        *(v2 + 6) = v4;
        *(v2 + 4) = v4 >> 4;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    }
    chatbox_check_eFlags2009F38(8);
    if ( !v5 )
    {
        chatbox_8040818();
        *v0 = 36;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 31;
        v0[8] = 5;
        engine_setScreeneffect(16, 8);
    }
    reqBBS_813E534();
}


// 0x813e4f4
void __noreturn reqBBS_draw_813E4F4()
{
    reqBBS_GUI *v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r0
    unsigned __int8 v4; // vf

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v2 + 7) += 8;
    *(v2 + 6) -= 8;
    v3 = v0->animationTimer0;
    v4 = __OFSUB__(v3--, 1);
    v0->animationTimer0 = v3;
    if ( ((v3 < 0) ^ v4) | (v3 == 0) )
    {
        if ( v0->totalNewRequests )
        {
            v0->jto_0 = 4;
            reqBBS_813E890(v0);
        }
        else
        {
            engine_setScreeneffect(12, 16);
            v0->jto_0 = 8;
        }
    }
    reqBBS_813E534();
}


// 0x813e534
void __noreturn reqBBS_813E534()
{
    reqBBS_GUI *v0; // r5

    sub_80465BC();
    sub_80465F8();
    reqBBS_813E8CC(v0, v0->pagePos);
    reqBBS_drawRequestBBS();
}


// 0x813e5a0
// () -> void
void __usercall reqBBS_uncomp_813E5A0(reqBBS_GUI *gui@<R5>)
{
    void **v1; // ST00_4

    v1 = (&off_813E04C + 2 * gui->unk_04);
    SWI_LZ77UnCompReadNormalWrite8bit(*v1, &unk_2025A00);
    SWI_LZ77UnCompReadNormalWrite8bit(v1[1], &unk_2029A00);
    SWI_LZ77UnCompReadNormalWrite8bit(dword_87EE1AC, &unk_2033A00);
}


// 0x813e5dc
int __fastcall reqBBS_addBBSMessage_813e5dc(unsigned int a1)
{
    unsigned int v1; // r7
    unsigned int v2; // r7
    int v3; // r3
    int v4; // r0
    int result; // r0

    v1 = a1;
    SetEventFlag(a1);
    SetEventFlag(&loc_19A0 + v1 - &loc_17A0);
    v2 = v1 - &loc_17A0;
    v3 = 4 * (v2 >> 6) & 0xFFFFFFF;
    v4 = *(&unk_2000FC0 + v3);
    byte_2001400[64 * (v2 >> 6) + v4] = v2 & 0x3F;
    result = v4 + 1;
    *(&unk_2000FC0 + v3) = result;
    return result;
}


// 0x813e616
void reqBBS_813E616()
{
    ByteFill(byte_2001400, byte_200, 0x40u);
    ZeroFillByWord(&unk_2000FC0, 32);
    ZeroFillByWord(&unk_2000FF0, 32);
}


// 0x813e634
void __fastcall reqBBS_dead_813E634(int a1)
{
    int v1; // r4

    v1 = a1;
    ByteFill(&byte_2001400[64 * a1], 64, 0x40u);
    ZeroFillByWord(&unk_2000FC0 + 4 * v1, 4);
    ZeroFillByWord(&unk_2000FF0 + 4 * v1, 4);
}


// 0x813e660
unsigned int reqBBS_813E660()
{
    char *v0; // r3
    int v1; // r1
    int v2; // r2
    int v3; // r1
    unsigned int v4; // ST00_4
    int v5; // ST08_4
    char *v6; // ST0C_4
    unsigned int result; // r0
    unsigned int v8; // [sp-Ch] [bp-18h]

    v0 = byte_813E68C;
    v1 = 0;
    do
    {
        v2 = 0;
        v3 = 4 * v1;
        do
        {
            v4 = *&v0[v3] + v2;
            v8 = v3;
            v5 = v2;
            v6 = v0;
            reqBBS_addBBSMessage_813e5dc(v4);
            result = v4;
            v3 = v8;
            v0 = v6;
            v2 = v5 + 1;
        }
        while ( v5 != 30 );
        v1 = (v8 >> 2) + 1;
    }
    while ( v1 != 6 );
    return result;
}


// 0x813e6d0
void __usercall reqBBS_vram_813E6D0(reqBBS_GUI *gui@<R5>)
{
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    zeroFillVRAM();
    ZeroFill_byte_3001960(v1, v2, v3, v4);
    decompAndCopyData(byte_813E6FC);
    decompAndCopyData(off_813E758[gui->unk_04]);
    ZeroFillGFX30025c0();
    sub_8046664();
}


// 0x813e834
int __usercall reqBBS_813E834@<R0>(reqBBS_GUI *gui@<R5>)
{
    int v1; // r1
    _DWORD **v2; // r6
    int v3; // r0
    _DWORD *v4; // r6
    char *i; // r7
    unsigned __int8 v6; // vf
    int v7; // r3
    int result; // r0
    int v9; // r1
    u8 v10; // r7
    int v11; // ST04_4
    char v12; // zf
    int v13; // [sp-8h] [bp-1Ch]

    ByteFill(reqBBS_eRequestEntriesIDs, 48, 0x2Fu);
    v2 = gui->reqBBS_textualPointers;
    v3 = *v2[4];
    gui->totalNewRequests = v3;
    v4 = v2[6];
    for ( i = reqBBS_eRequestEntriesIDs; ; ++i )
    {
        v6 = __OFSUB__(v3--, 1);
        if ( (v3 < 0) ^ v6 )
            break;
        v7 = *(v4 + v3);
        *i = v7;
        if ( !gui->jto_0 )
            reqBBS_813ED60(v3, v1, gui->jto_0, v7);
    }
    result = 0;
    v9 = *(gui->reqBBS_textualPointers + 3);
    v10 = 0;
    if ( gui->totalNewRequests )
    {
        do
        {
            v13 = result;
            v11 = v9;
            TestEventFlag(result + v9);
            v9 = v11;
            if ( !v12 )
                ++v10;
            result = v13 + 1;
        }
        while ( v13 + 1 < 48 );
    }
    gui->numNewRequests = v10;
    return result;
}


// 0x813e890
void __usercall reqBBS_813E890(reqBBS_GUI *gui@<R5>)
{
    CopyBackgroundTiles(5, 3, 2, &tileIds_813DBE4, 23, &dword_10);
    CopyBackgroundTiles(0, 0, 1, *(gui->reqBBS_textualPointers + 7), 30, dword_14);
    call_sub_3005EBA(0, 0, 3, 0);
}


// 0x813e8cc
void __usercall reqBBS_813E8CC(reqBBS_GUI *gui@<R5>, int requestEntryIdx@<R0>)
{
    void *v2; // r7
    char *v3; // r5
    void *v4; // r0
    int v5; // r1
    __int16 *v6; // r2
    int v7; // r3
    void *v8; // ST00_4
    int v9; // ST04_4
    __int16 *v10; // ST08_4
    int v11; // ST0C_4

    v2 = *gui->reqBBS_textualPointers;
    v3 = &reqBBS_eRequestEntriesIDs[requestEntryIdx];
    v4 = v2;
    v5 = 0;
    v6 = eDecompBuffer2013A00;
    v7 = 0x6004000;
    do
    {
        v8 = v4;
        v9 = v5;
        v10 = v6;
        v11 = v7;
        renderTextGfx_8045F8C(v4, v3[v5], v6, v7);
        v4 = v8;
        v6 = v10 + 1024;
        v7 = v11 + 2048;
        v5 = v9 + 1;
    }
    while ( v9 + 1 < 8 );
}


// 0x813e910
signed __int64 __fastcall reqBBS_dead_813E910(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r10
    int v6; // r3
    int v7; // r3
    char *v8; // r4
    int v9; // r7
    signed int v10; // r6
    int v11; // ST0C_4
    char v12; // zf

    ZeroFillByHalfword(eTileIds2018A04, 0x40u, a3, a4);
    v7 = v6 + 2 * (**(v5 + oToolkit_CurFramePtr) & 0x1F);
    v8 = &reqBBS_eRequestEntriesIDs[*(v4 + 36)];
    v9 = *(*(v4 + 40) + 12);
    v10 = 0;
    do
    {
        v11 = v7;
        TestEventFlag(v8[v10] + v9);
        v7 = v11;
        if ( !v12 )
        {
            v7 = 4 * (**(v5 + oToolkit_CurFramePtr) & 0x1F);
            *&eTileIds2018A04[4 * v10] = *&byte_813E990[v7];
            *&eTileIds2018A04[4 * v10 + 2] = *&byte_813EA10[v7];
        }
        ++v10;
    }
    while ( v10 < 8 );
    return 12884901890LL;
}


// 0x813ea94
void __fastcall __noreturn reqBBS_static_813EA94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int (__fastcall *a13)(int, int, int, int))
{
    int v13; // r5
    int v14; // r10
    int v15; // r4
    char v16; // zf
    int v17; // r0
    int v18; // r1
    int v19; // r2
    int v20; // r3

    v15 = **(v14 + oToolkit_CurFramePtr) & 0x1F;
    TestEventFlag(
        reqBBS_eRequestEntriesIDs[*(v13 + offsetof(reqBBS_GUI, pagePos))]
    + *(*(v13 + offsetof(reqBBS_GUI, reqBBS_textualPointers)) + 12));
    if ( v16 )
    {
        call_sub_3005EBA(2, 3, 2, 0);
        JUMPOUT(loc_813EAEC);
    }
    CopyBackgroundTiles(2, 3, 2, off_813EB10[v15], 2, &byte_0[2]);
    sub_813EAEE(v17, v18, v19, v20, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}


// 0x813eaee
int __fastcall sub_813EAEE(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int (__fastcall *a13)(int, int, int, int))
{
    int v13; // r4
    int v14; // r6

    if ( v14 != 7 )
        JUMPOUT(&loc_813EAA6);
    CopyBackgroundTiles(19, 0, 2, *(off_813EB10 + v13), 2, &byte_0[2]);
    return a13(a5, a6, a7, a8);
}


// 0x813ec10
int __fastcall reqBBS_static_813EC10(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r7
    int result; // r0

    v5 = *(v4 + oToolkit_JoypadPtr);
    result = *(v5 + 2);
    if ( result & 2 )
        return reqBBS_static_813EC54();
    if ( *(v3 + 30) )
    {
        if ( result & 1 )
            reqBBS_static_813EC6C(result, 1, a3);
        result = *(v5 + 4);
        if ( result & &dword_3C0 )
        {
            result = sub_811F7F8(result, 8u, 0, 0);
            *(v3 + 11) = v5;
        }
    }
    return result;
}


// 0x813ec54
int reqBBS_static_813EC54()
{
    _BYTE *v0; // r5
    int v1; // r1
    int v2; // r2

    engine_setScreeneffect(12, 16);
    *v0 = 8;
    return PlaySoundEffect(104, v1, v2);
}


// 0x813ec6c
void __fastcall __noreturn reqBBS_static_813EC6C(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int v4; // r10
    _BYTE *v5; // r0

    *v3 = 24;
    v5 = *(v4 + oToolkit_Unk200f3a0_Ptr);
    v5[9] = 27;
    v5[10] = 54;
    v5[3] = 0;
    v5[2] = -1;
    v5[7] = 80;
    v5[6] = 80;
    PlaySoundEffect(103, 80, a3);
    v3[8] = 6;
    call_sub_3005EBA(0, 0, 3, 0);
    JUMPOUT(loc_813ECAA);
}


// 0x813ecc0
void __noreturn reqBBS_draw_chatbox()
{
    CopyBackgroundTiles(2, 5, 1, eTileIds2018A04, 26, &dword_8 + 2);
}


// 0x813ecd8
void __noreturn reqBBS_dead_813ECD8()
{
    call_sub_3005EBA(3, 5, 1, 0);
}


// 0x813ecf4
void dead_813ECF4()
{
    CopyBackgroundTiles(3, 5, 1, eTileIds2018A04, 24, &dword_8 + 2);
}


// 0x813ed0c
int reqBBS_drawHeaderText()
{
    int v0; // r5

    return renderTextGfx_8045F8C(
                     **(v0 + offsetof(reqBBS_GUI, reqBBS_textualPointers)),
                     reqBBS_eRequestEntriesIDs[*(v0 + offsetof(reqBBS_GUI, pagePos)) + *(v0 + offsetof(reqBBS_GUI, cursorPos))],
                     byte_201B200,
                     100697088);
}


// 0x813ed40
void reqBBS_813ED40()
{
    Toolkit *toolkit; // r10

    (loc_8000AC8)(byte_813DEC4, toolkit->gfx_30025C0 + 384, 128);
}


// 0x813ed5c
void reqBBS_813ED5C()
{
    ;
}


// 0x813ed60
void __fastcall reqBBS_813ED60(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r7
    int v6; // r7
    char v7; // zf
    signed __int16 v8; // r0
    __int16 v9; // r2

    if ( *(v4 + 30) )
    {
        v6 = v5 - reqBBS_eRequestEntriesIDs;
        TestEventFlag(a4 + *(*(v4 + 40) + 12));
        if ( !v7 )
        {
            v8 = v6;
            v9 = v6 - 7;
            if ( v6 >= 7 )
                v8 = 7;
            else
                v9 = 0;
            *(v4 + offsetof(reqBBS_GUI, cursorPos)) = v8;
            *(v4 + offsetof(reqBBS_GUI, pagePos)) = v9;
            *(v4 + offsetof(reqBBS_GUI, RO_pagePos)) = v9;
        }
    }
}


// 0x813ed98
void reqBBS_813ED98()
{
    unsigned __int16 *v0; // r5
    int v1; // r10
    int v2; // r6
    int v3; // r4
    __int16 v4; // r0
    int v5; // r7

    v2 = v0[offsetof(reqBBS_GUI, pad_10)];
    v3 = v0[0x12];
    v4 = *(*(v1 + oToolkit_JoypadPtr) + 4);
    if ( v4 & 0x40 )
    {
        if ( v0[offsetof(reqBBS_GUI, pad_10)] )
        {
            v0[16] = v2 - 1;
        }
        else if ( v0[0x12] )
        {
            v0[18] = v3 - 1;
        }
    }
    else if ( v4 & 0x80 )
    {
        v5 = v0[offsetof(reqBBS_GUI, unk_0F)] - 1;
        if ( v2 == v5 || v2 == 7 )
        {
            if ( v3 + v2 != v5 )
                v0[18] = v3 + 1;
        }
        else
        {
            v0[16] = v2 + 1;
        }
    }
}


// 0x813ede4
void reqBBS_813EDE4()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2

    (loc_8000AC8)(&unk_201AA04 + 128 * *(&dword_813EE40 + *(v0 + 9) + 2), 100761472, 128);
    v1 = (16 * *(v0 + 32) + 24) | 0x30000;
    v2 = *(v0 + 9) + 1;
    if ( *(&dword_813EE40 + v2 + 2) == 255 )
        LOBYTE(v2) = 1;
    *(v0 + 9) = v2;
    sub_802FE28(v1 | 0x40000000, 50172, 0, 3);
}


// 0x813ee58
int reqBBS_813EE58()
{
    int v0; // r5
    signed int v1; // r1
    char v2; // r1
    char v3; // r2
    int v4; // r0
    signed int v5; // r1
    char v6; // r1
    char v7; // r2

    v1 = *(v0 + 30);
    if ( v1 < 40 )
    {
        if ( v1 < 30 )
        {
            if ( v1 < 20 )
            {
                if ( v1 < 10 )
                {
                    v2 = 0;
                    v3 = 14;
                }
                else
                {
                    v2 = 10;
                    v3 = 13;
                }
            }
            else
            {
                v2 = 20;
                v3 = 12;
            }
        }
        else
        {
            v2 = 30;
            v3 = 11;
        }
    }
    else
    {
        v2 = 40;
        v3 = 10;
    }
    v4 = (1 << v3) ^ 0x3FFFFFFF ^ (1 << (9 - (*(v0 + 30) - v2)));
    v5 = *(v0 + 5);
    if ( v5 < 40 )
    {
        if ( v5 < 30 )
        {
            if ( v5 < 20 )
            {
                if ( v5 < 10 )
                {
                    v6 = 0;
                    v7 = 29;
                }
                else
                {
                    v6 = 10;
                    v7 = 28;
                }
            }
            else
            {
                v6 = 20;
                v7 = 27;
            }
        }
        else
        {
            v6 = 30;
            v7 = 26;
        }
    }
    else
    {
        v6 = 40;
        v7 = 25;
    }
    return sprite_setUnk0x2c(v4 ^ (1 << v7) ^ (1 << (24 - (*(v0 + 5) - v6))));
}


// 0x813eef4
void __usercall reqBBS_813EEF4(reqBBS_GUI *gui@<R5>)
{
    renderTextGfx_8045F8C(reqBBS_eTextScript, byte_813EF24[gui->unk_04], byte_201CA00, 100678656);
}


// 0x813ef2c
void __noreturn reqBBS_drawRequestBBS()
{
    CopyBackgroundTiles(1, 0, 2, tileIds_813DF44, 12, &byte_0[2]);
}


// 0x813f3c0
char (**__fastcall reqBBS_init_s_2005780(int a1))[108]
{
    int v1; // ST0C_4
    u8 v2; // ST00_1
    u8 v3; // ST04_1
    char v4; // ST08_1
    char (**result)[108]; // r0

    v1 = a1;
    v2 = eReqBBSGui.numPoints;
    v3 = eReqBBSGui.totalPointsIndex;
    v4 = byte_200578F[0];
    ZeroFillByWord(&eReqBBSGui, 44);
    eReqBBSGui.numPoints = v2;
    eReqBBSGui.totalPointsIndex = v3;
    byte_200578F[0] = v4;
    eReqBBSGui.unk_04 = v1;
    result = &reqBBS_textualPointers + 11 * v1;
    dword_20057A8 = (&reqBBS_textualPointers + 11 * v1);
    return result;
}


// 0x813f404
int reqBBS_subsystemCotnrol()
{
    return (*(&ReqBBSSubSystemJumpTable + eReqBBSGui.jto_0))();
}


// 0x813f474
void __noreturn OpenReqBBSMenu813F474()
{
    int v0; // r5
    int v1; // r1
    int v2; // r2
    int v3; // r3
    char v4; // zf

    TestEventFlagFromImmediate(23, 58);
    if ( !v4 )
    {
        TestEventFlag(byte_200578F[0] + 7264);
        if ( !v4 )
        {
            SetEventFlag(byte_200578F[0] + 7200);
            ClearEventFlagFromImmediate(23, 58);
            v1 = 15;
            v3 = 0;
            byte_200578F[0] = 0;
        }
    }
    *(v0 + 8) = 0;
    *(v0 + 32) = 0;
    *(v0 + 36) = 0;
    *(v0 + 38) = 0;
    *(v0 + 9) = 0;
    *(v0 + 11) = 0;
    reqBBS_813FDA8(0, v1, v2, v3);
    reqBBS_813FE54();
    reqBBS_813FEB0();
}


// 0x813f550
void __noreturn UpdateReqBBSMenu813F550()
{
    _WORD *v0; // r5
    int v1; // r10
    int v2; // r7
    int v3; // r0
    unsigned int v4; // r0
    int v5; // r1
    int v6; // r2
    char v7; // zf

    sRender_08_setRenderingState(8000);
    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6);
    if ( v3 > 0 )
    {
        v4 = v3 - 8;
        *(v2 + 6) = v4;
        *(v2 + 4) = v4 >> 4;
    }
    v0[17] = v0[16];
    v0[19] = v0[18];
    IsPaletteFadeActive();
    if ( !v7 )
        reqBBS_8140358(0, v5, v6);
    reqBBS_813F8F0();
}


// 0x813f590
void __noreturn ExitReqBBSMenu813F590()
{
    int v0; // r10

    **(v0 + oToolkit_RenderInfoPtr) = 8000;
    reqBBS_813F8F0();
}


// 0x813f5ec
void __noreturn reqBBS_813F5EC()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    unsigned int v3; // r0
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf

    **(v1 + oToolkit_RenderInfoPtr) = 24384;
    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6) + 8;
    *(v2 + 6) = v3;
    *(v2 + 4) = v3 >> 4;
    v4 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v4 + 7) -= 8;
    *(v4 + 6) += 8;
    v5 = *(v0 + 8);
    v6 = __OFSUB__(v5--, 1);
    *(v0 + 8) = v5;
    if ( !(((v5 < 0) ^ v6) | (v5 == 0)) )
        reqBBS_813F8F0();
    *(*(v1 + oToolkit_ChatboxPtr) + 76) = 4;
    chatbox_reqBBS_80404C0(*(*(v0 + 40) + 4), reqBBS_eRequestEntriesIDs[*(v0 + 32) + *(v0 + 36)], reqBBS_textualShades);
    reqBBS_8140600();
    reqBBS_drawChatbox_dup1();
}


// 0x813f65c
void __noreturn reqBBS_813F65C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    unsigned int v4; // r0
    char v5; // zf
    unsigned int v6; // r8
    int v7; // r1

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6);
    if ( v3 < 64 )
    {
        v4 = v3 + 8;
        *(v2 + 6) = v4;
        *(v2 + 4) = v4 >> 4;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    }
    chatbox_check_eFlags2009F38(8);
    if ( !v5 )
    {
        v6 = reqBBS_eRequestEntriesIDs[*(v0 + 32) + *(v0 + 36)] + *(*(v0 + 40) + 12);
        TestEventFlag(v6);
        if ( !v5 )
        {
            ClearEventFlag(v6);
            *(v0 + 5) = *(v0 + 5);
        }
        chatbox_8040818();
        if ( reqBBS_8140868(reqBBS_eRequestEntriesIDs[*(v0 + 36) + *(v0 + 32)]) )
            v7 = 2;
        else
            v7 = 17;
        chatbox_reqBBS_80404C0(reqBBS_eTextScript, v7, reqBBS_textualShades);
        *v0 = 64;
    }
    reqBBS_813F8F0();
}


// 0x813f6f8
void __noreturn reqBBS_813F6F8()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r7
    unsigned int v3; // r0
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6) - 8;
    *(v2 + 6) = v3;
    *(v2 + 4) = v3 >> 4;
    *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    v4 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v4 + 7) += 8;
    *(v4 + 6) -= 8;
    v5 = v0[8];
    v6 = __OFSUB__(v5--, 1);
    v0[8] = v5;
    if ( !(((v5 < 0) ^ v6) | (v5 == 0)) )
        reqBBS_813F8F0();
    *v0 = 4;
    reqBBS_813FEB0();
}


// 0x813f754
void __noreturn reqBBS_813F754()
{
    _BYTE *v0; // r5
    int v1; // r10
    _BYTE *v2; // r0
    char v3; // zf
    _BYTE *v4; // r7
    _BYTE *v5; // r0

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    v2[9] = 26;
    v2[10] = 54;
    v2[3] = 0;
    v2[2] = -1;
    v2[7] = 80;
    v2[6] = 80;
    IsPaletteFadeActive();
    if ( !v3 )
    {
        v4 = *(v1 + oToolkit_Unk2009740_Ptr);
        *v4 = -9;
        v4[4] = 0;
        v4[6] = 0;
        *v0 = 12;
        v5 = *(v1 + oToolkit_Unk200f3a0_Ptr);
        v5[9] = 26;
        v5[10] = 54;
        v5[3] = 0;
        v5[2] = -1;
        v5[7] = 80;
        v5[6] = 80;
    }
    reqBBS_813F8F0();
}


// 0x813f7b0
void __noreturn reqBBS_813F7B0()
{
    _BYTE *v0; // r5
    int v1; // r10
    _BYTE *v2; // r0
    char v3; // zf
    _BYTE *v4; // r7
    _BYTE *v5; // r0

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    v2[9] = 26;
    v2[10] = 54;
    v2[3] = 0;
    v2[2] = -1;
    v2[7] = 80;
    v2[6] = 80;
    IsPaletteFadeActive();
    if ( !v3 )
    {
        v4 = *(v1 + oToolkit_Unk2009740_Ptr);
        *v4 = -9;
        v4[4] = 0;
        v4[6] = 0;
        *v0 = 28;
        v5 = *(v1 + oToolkit_Unk200f3a0_Ptr);
        v5[9] = 26;
        v5[10] = 54;
        v5[3] = 0;
        v5[2] = -1;
        v5[7] = 80;
        v5[6] = 80;
    }
    reqBBS_813F8F0();
}


// 0x813f80c
void __noreturn reqBBS_813F80C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    unsigned int v3; // r0
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf
    int v7; // r0

    **(v1 + oToolkit_RenderInfoPtr) = 24384;
    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6) + 8;
    *(v2 + 6) = v3;
    *(v2 + 4) = v3 >> 4;
    v4 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v4 + 7) -= 8;
    *(v4 + 6) += 8;
    v5 = *(v0 + 8);
    v6 = __OFSUB__(v5--, 1);
    *(v0 + 8) = v5;
    if ( !(((v5 < 0) ^ v6) | (v5 == 0)) )
        reqBBS_813F8F0();
    v7 = 0;
    if ( !*(v0 + 30) )
        v7 = 1;
    chatbox_runScript(reqBBS_eTextScript, v7);
    reqBBS_renderSelectedEntry_HeaderText();
}


// 0x813f868
void __noreturn reqBBS_813F868()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    unsigned int v4; // r0
    char v5; // zf

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6);
    if ( v3 < 64 )
    {
        v4 = v3 + 8;
        *(v2 + 6) = v4;
        *(v2 + 4) = v4 >> 4;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    }
    chatbox_check_eFlags2009F38(8);
    if ( !v5 )
    {
        chatbox_8040818();
        *v0 = 36;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 31;
        v0[8] = 5;
        engine_setScreeneffect(16, 8);
    }
    reqBBS_813F8F0();
}


// 0x813f8b0
void __noreturn reqBBS_813F8B0()
{
    int v0; // r5
    int v1; // r10
    int v2; // r0
    int v3; // r0
    unsigned __int8 v4; // vf

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v2 + 7) += 8;
    *(v2 + 6) -= 8;
    v3 = *(v0 + 8);
    v4 = __OFSUB__(v3--, 1);
    *(v0 + 8) = v3;
    if ( ((v3 < 0) ^ v4) | (v3 == 0) )
    {
        if ( *(v0 + 30) )
        {
            *v0 = 4;
            reqBBS_813FEB0();
        }
        engine_setScreeneffect(12, 16);
        *v0 = 8;
    }
    reqBBS_813F8F0();
}


// 0x813f8f0
void __noreturn reqBBS_813F8F0()
{
    int v0; // r5

    sub_80465BC();
    sub_80465F8();
    reqBBS_renderRequestNames(*(v0 + 36));
}


// 0x813f964
void reqBBS_copyTextDataToRAM()
{
    int v0; // r5
    void **v1; // ST00_4

    v1 = (&off_813F378 + 2 * *(v0 + 4));
    SWI_LZ77UnCompReadNormalWrite8bit(*v1, &unk_2025A00);
    SWI_LZ77UnCompReadNormalWrite8bit(v1[1], &unk_2029A00);
    SWI_LZ77UnCompReadNormalWrite8bit(byte_87EFE14, &unk_2033A00);
}


// 0x813f9a0
int __fastcall reqBBS_addRequest_813F9A0(unsigned int a1)
{
    unsigned int v1; // r7
    unsigned int v2; // r7
    int v3; // r3
    int v4; // r0
    int result; // r0

    v1 = a1;
    SetEventFlag(a1);
    SetEventFlag(&loc_1BA0 + v1 - &loc_1B60);
    v2 = v1 - &loc_1B60;
    v3 = 4 * (v2 >> 6) & 0xFFFFFFF;
    v4 = *&reqBBS_numRequestsSent[v3];
    reqBBS_requestEntriesList[64 * (v2 >> 6) + v4] = v2 & 0x3F;
    result = v4 + 1;
    *&reqBBS_numRequestsSent[v3] = result;
    return result;
}


// 0x813f9da
void reqBBS_initMemory_813F9DA()
{
    ByteFill(reqBBS_requestEntriesList, 128, 0x80u);
    ZeroFillByWord(reqBBS_numRequestsSent, 4);
    ZeroFillByWord(&unk_2000770, 4);
}


// 0x813f9f8
void __fastcall reqBBS_dead_initMemory_813F9F8(int a1)
{
    int v1; // r4

    v1 = a1;
    ByteFill(&reqBBS_requestEntriesList[128 * a1], 128, 0x80u);
    ZeroFillByWord(&reqBBS_numRequestsSent[4 * v1], 4);
    ZeroFillByWord(&unk_2000770 + 4 * v1, 4);
}


// 0x813fa24
unsigned int sub_813FA24()
{
    int *v0; // r3
    int v1; // r1
    int v2; // r2
    int v3; // r1
    unsigned int v4; // ST00_4
    int v5; // ST08_4
    int *v6; // ST0C_4
    unsigned int result; // r0
    unsigned int v8; // [sp-Ch] [bp-18h]

    v0 = &dword_813FA50;
    v1 = 0;
    do
    {
        v2 = 0;
        v3 = 4 * v1;
        do
        {
            v4 = *(v0 + v3) + v2;
            v8 = v3;
            v5 = v2;
            v6 = v0;
            reqBBS_addRequest_813F9A0(v4);
            result = v4;
            v3 = v8;
            v0 = v6;
            v2 = v5 + 1;
        }
        while ( v5 != 47 );
        v1 = (v8 >> 2) + 1;
    }
    while ( v1 != 1 );
    return result;
}


// 0x813fa54
void __noreturn reqBBS_813FA54()
{
    _BYTE *v0; // r5
    int v1; // r10
    _BYTE *v2; // r0
    char v3; // zf
    _BYTE *v4; // r7
    _BYTE *v5; // r0

    v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    v2[9] = 26;
    v2[10] = 54;
    v2[3] = 0;
    v2[2] = -1;
    v2[7] = 80;
    v2[6] = 80;
    IsPaletteFadeActive();
    if ( !v3 )
    {
        v4 = *(v1 + oToolkit_Unk2009740_Ptr);
        *v4 = -9;
        v4[4] = 0;
        v4[6] = 0;
        *v0 = 48;
        v5 = *(v1 + oToolkit_Unk200f3a0_Ptr);
        v5[9] = 26;
        v5[10] = 54;
        v5[3] = 0;
        v5[2] = -1;
        v5[7] = 80;
        v5[6] = 80;
    }
    reqBBS_813F8F0();
}


// 0x813fab0
void __noreturn reqBBS_813FAB0()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    unsigned int v3; // r0
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf

    **(v1 + oToolkit_RenderInfoPtr) = 24384;
    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6) + 8;
    *(v2 + 6) = v3;
    *(v2 + 4) = v3 >> 4;
    v4 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v4 + 7) -= 8;
    *(v4 + 6) += 8;
    v5 = *(v0 + 8);
    v6 = __OFSUB__(v5--, 1);
    *(v0 + 8) = v5;
    if ( !(((v5 < 0) ^ v6) | (v5 == 0)) )
        reqBBS_813F8F0();
    eChatbox.unk_50 = byte_200578F[0];
    chatbox_reqBBS_80404C0(reqBBS_eTextScript, 6, reqBBS_textualShades);
    reqBBS_drawSelectChatbox();
}


// 0x813fb24
void __noreturn reqBBS_813FB24()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    unsigned int v4; // r0
    char v5; // zf
    _BYTE *v6; // r7

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6);
    if ( v3 < 64 )
    {
        v4 = v3 + 8;
        *(v2 + 6) = v4;
        *(v2 + 4) = v4 >> 4;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    }
    chatbox_check_eFlags2009F38(8);
    if ( !v5 )
    {
        TestEventFlagFromImmediate(23, 58);
        if ( !v5 )
        {
            chatbox_reqBBS_80404C0(&reqBBS_requestInfo_textOffsets, byte_200578F[0], reqBBS_textualShades);
            *v0 = 56;
            reqBBS_drawChatbox_dup1();
        }
        chatbox_8040818();
        reqBBS_813FE54();
        *v0 = 60;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
        v0[8] = 6;
        v6 = *(v1 + oToolkit_Unk2009740_Ptr);
        *v6 = -9;
        v6[4] = 4;
        v6[6] = 64;
        reqBBS_813F8F0();
    }
    reqBBS_813F8F0();
}


// 0x813fbc0
void __noreturn reqBBS_813FBC0()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    unsigned int v4; // r0
    char v5; // zf
    _BYTE *v6; // r7

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6);
    if ( v3 < 64 )
    {
        v4 = v3 + 8;
        *(v2 + 6) = v4;
        *(v2 + 4) = v4 >> 4;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    }
    chatbox_check_eFlags2009F38(8);
    if ( !v5 )
    {
        chatbox_8040818();
        reqBBS_813FE54();
        *v0 = 60;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
        v0[8] = 6;
        v6 = *(v1 + oToolkit_Unk2009740_Ptr);
        *v6 = -9;
        v6[4] = 4;
        v6[6] = 64;
        reqBBS_813F8F0();
    }
    reqBBS_813F8F0();
}


// 0x813fc30
void __noreturn reqBBS_813FC30()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r7
    unsigned int v3; // r0
    int v4; // r0
    int v5; // r0
    unsigned __int8 v6; // vf

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6) - 8;
    *(v2 + 6) = v3;
    *(v2 + 4) = v3 >> 4;
    *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    v4 = *(v1 + oToolkit_Unk200f3a0_Ptr);
    *(v4 + 7) += 8;
    *(v4 + 6) -= 8;
    v5 = v0[8];
    v6 = __OFSUB__(v5--, 1);
    v0[8] = v5;
    if ( !(((v5 < 0) ^ v6) | (v5 == 0)) )
        reqBBS_813F8F0();
    *v0 = 4;
    reqBBS_813FEB0();
}


// 0x813fc8c
void __noreturn reqBBS_813FC8C()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    unsigned int v4; // r0
    int v5; // r0
    char v6; // zf
    _BYTE *v7; // r7

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6);
    if ( v3 < 64 )
    {
        v4 = v3 + 8;
        *(v2 + 6) = v4;
        *(v2 + 4) = v4 >> 4;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    }
    v5 = reqBBS_81408F0();
    if ( v5 )
    {
        chatbox_runScript(reqBBS_eTextScript, v5);
        *v0 = 68;
    }
    else
    {
        chatbox_check_eFlags2009F38(8);
        if ( !v6 )
        {
            chatbox_8040818();
            reqBBS_813FE54();
            *v0 = 20;
            *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
            v0[8] = 6;
            v7 = *(v1 + oToolkit_Unk2009740_Ptr);
            *v7 = -9;
            v7[4] = 4;
            v7[6] = 64;
            reqBBS_813F8F0();
        }
    }
    reqBBS_813F8F0();
}


// 0x813fd14
void __noreturn reqBBS_813FD14()
{
    _BYTE *v0; // r5
    int v1; // r10
    int v2; // r7
    signed int v3; // r0
    unsigned int v4; // r0
    char v5; // zf
    _BYTE *v6; // r7

    v2 = *(v1 + oToolkit_Unk2009740_Ptr);
    v3 = *(v2 + 6);
    if ( v3 < 64 )
    {
        v4 = v3 + 8;
        *(v2 + 6) = v4;
        *(v2 + 4) = v4 >> 4;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
    }
    chatbox_check_eFlags2009F38(8);
    if ( !v5 )
    {
        chatbox_8040818();
        reqBBS_813FE54();
        *v0 = 20;
        *(*(v1 + oToolkit_Unk200f3a0_Ptr) + 9) = 27;
        v0[8] = 6;
        v6 = *(v1 + oToolkit_Unk2009740_Ptr);
        *v6 = -9;
        v6[4] = 4;
        v6[6] = 64;
        reqBBS_813F8F0();
    }
    reqBBS_813F8F0();
}


// 0x813fda8
void __fastcall reqBBS_813FDA8(int a1, int a2, int a3, int a4)
{
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    zeroFillVRAM();
    ZeroFill_byte_3001960(v4, v5, v6, v7);
    decompAndCopyData(byte_813FDCC);
    reqBBS_8140600();
    ZeroFillGFX30025c0();
    sub_8046664();
}


// 0x813fe54
int reqBBS_813FE54()
{
    unsigned __int8 *v0; // r5
    int v1; // r1
    int v2; // r6
    int v3; // r0
    int v4; // r6
    char *i; // r7
    unsigned __int8 v6; // vf
    int v7; // r3
    int result; // r0
    int v9; // r1
    unsigned __int8 v10; // r7
    int v11; // ST04_4
    char v12; // zf
    int v13; // [sp-8h] [bp-1Ch]

    ByteFill(reqBBS_eRequestEntriesIDs, 48, 0x2Fu);
    v2 = *(v0 + 10);
    v3 = **(v2 + 28);
    *(v0 + 15) = v3;
    v4 = *(v2 + 36);
    for ( i = reqBBS_eRequestEntriesIDs; ; ++i )
    {
        v6 = __OFSUB__(v3--, 1);
        if ( (v3 < 0) ^ v6 )
            break;
        v7 = *(v4 + v3);
        *i = v7;
        if ( !*v0 )
            reqBBS_8140604(v3, v1, *v0, v7);
    }
    result = 0;
    v9 = *(*(v0 + 10) + 12);
    v10 = 0;
    if ( *(v0 + 15) )
    {
        do
        {
            v13 = result;
            v11 = v9;
            TestEventFlag(result + v9);
            v9 = v11;
            if ( !v12 )
                ++v10;
            result = v13 + 1;
        }
        while ( v13 + 1 < 48 );
    }
    v0[5] = v10;
    return result;
}


// 0x813feb0
void __noreturn reqBBS_813FEB0()
{
    CopyBackgroundTiles(5, 3, 2, tileIds_813EF4C, 23, &dword_10);
    JUMPOUT(loc_813FEC4);
}


// 0x813feec
void *__fastcall __noreturn reqBBS_renderRequestNames(int a1)
{
    int v1; // r5
    void *v2; // r7
    char *v3; // r5
    void *result; // r0
    int v5; // r1
    __int16 *v6; // r2
    int v7; // r3
    void *v8; // ST00_4
    int v9; // ST04_4
    __int16 *v10; // ST08_4
    int v11; // ST0C_4

    v2 = **(v1 + 40);
    v3 = &reqBBS_eRequestEntriesIDs[a1];
    result = v2;
    v5 = 0;
    v6 = eDecompBuffer2013A00;
    v7 = 100679680;
    do
    {
        v8 = result;
        v9 = v5;
        v10 = v6;
        v11 = v7;
        renderTextGfx_8045F8C(result, v3[v5], v6, v7);
        result = v8;
        v6 = v10 + 1024;
        v7 = v11 + 2048;
        v5 = v9 + 1;
    }
    while ( v9 + 1 < 8 );
    return result;
}


// 0x813ff30
void sub_813FF30()
{
    ;
}


// 0x814004c
void __noreturn reqBBS_anim_814004C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    int v3; // r4
    int v4; // r6
    char v5; // zf

    v2 = *(v0 + 36);
    v3 = **(v1 + oToolkit_CurFramePtr) & 0x1F;
    v4 = 0;
    do
    {
        TestEventFlag(reqBBS_eRequestEntriesIDs[v2 + v4] + *(*(v0 + 40) + 12));
        if ( v5 )
            call_sub_3005EBA(2, 2 * v4 + 3, 2, 0);
        else
            CopyBackgroundTiles(2, 2 * v4 + 3, 2, pt_81400C8[v3], 2, &byte_0[2]);
        ++v4;
    }
    while ( v4 != 8 );
    CopyBackgroundTiles(21, 0, 2, pt_81400C8[v3], 2, &byte_0[2]);
}


// 0x81401c8
void reqBBS_renderRequestStatus()
{
    int v0; // r5
    int v1; // r7
    int v2; // r6
    char v3; // zf

    v1 = *(v0 + offsetof(reqBBS_GUI, pagePos));
    v2 = 0;
    do
    {
        TestEventFlag(reqBBS_eRequestEntriesIDs[v1 + v2] + *(*(v0 + offsetof(reqBBS_GUI, reqBBS_textualPointers)) + 20));
        if ( v3 )
        {
            TestEventFlag(reqBBS_eRequestEntriesIDs[v1 + v2] + *(*(v0 + 40) + 16));
            if ( !v3 )
                CopyBackgroundTiles(2, 2 * v2 + 3, 2, byte_8140244, 2, &byte_0[2]);
        }
        else
        {
            CopyBackgroundTiles(2, 2 * v2 + 3, 2, byte_8140238, 2, &byte_0[2]);
        }
        ++v2;
    }
    while ( v2 != 8 );
}


// 0x814024c
int reqBBS_renderRankStars()
{
    int v0; // r5
    int v1; // r7
    int v2; // r6
    int result; // r0
    char v4; // zf
    int v5; // r1
    int v6; // r1
    int v7; // ST10_4
    int v8; // ST14_4

    v1 = *(v0 + offsetof(reqBBS_GUI, pagePos));
    v2 = 0;
    do
    {
        result = TestEventFlag(reqBBS_eRequestEntriesIDs[v1 + v2] + *(*(v0 + offsetof(reqBBS_GUI, reqBBS_textualPointers))
                                                                                                                                + 8));
        if ( !v4 )
        {
            call_sub_3005EBA(22, 2 * v2 + 3, 2, 0);
            v5 = reqBBS_eRequestEntriesIDs[v1 + v2];
            result = byte_813F380[v5] + 1;
            if ( byte_813F380[v5] != -1 )
            {
                v6 = 0;
                do
                {
                    v7 = result;
                    v8 = v6;
                    CopyBackgroundTiles(26 - v6, 2 * v2 + 3, 2, &dword_81402C8, 1, &byte_0[2]);
                    result = v7;
                    v6 = v8 + 1;
                }
                while ( v8 + 1 != v7 );
            }
        }
        ++v2;
    }
    while ( v2 != 8 );
    return result;
}


// 0x81402cc
int reqBBS_81402CC()
{
    int result; // r0
    int v1; // r1
    int v2; // ST10_4
    int v3; // ST14_4

    result = byte_813F380[reqBBS_81408C8()] + 1;
    if ( result )
    {
        v1 = 0;
        do
        {
            v2 = result;
            v3 = v1;
            CopyBackgroundTiles(26 - v1, 6, 1, &dword_8140308, 1, &byte_0[2]);
            result = v2;
            v1 = v3 + 1;
        }
        while ( v3 + 1 != v2 );
    }
    return result;
}


// 0x814030c
int reqBBS_814030C()
{
    int result; // r0
    int v1; // r1
    int v2; // ST10_4
    int v3; // ST14_4

    result = byte_813F380[byte_200578F[0]] + 1;
    if ( byte_813F380[byte_200578F[0]] != -1 )
    {
        v1 = 0;
        do
        {
            v2 = result;
            v3 = v1;
            CopyBackgroundTiles(26 - v1, 6, 1, &dword_8140354, 1, &byte_0[2]);
            result = v2;
            v1 = v3 + 1;
        }
        while ( v3 + 1 != v2 );
    }
    return result;
}


// 0x8140358
int __fastcall reqBBS_8140358(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r10
    int v5; // r7
    int result; // r0

    v5 = *(v4 + oToolkit_JoypadPtr);
    result = *(v5 + 2);
    if ( result & 2 )
        return reqBBS_81403A8();
    if ( *(v3 + 30) )
    {
        if ( result & 4 )
            reqBBS_8140414(result, 4, a3);
        if ( result & 1 )
            reqBBS_81403C0(result, 1, a3);
        result = *(v5 + 4);
        if ( result & &dword_3C0 )
        {
            result = sub_811F7F8(result, 8u, 0, 0);
            *(v3 + 11) = v5;
        }
    }
    return result;
}


// 0x81403a8
int reqBBS_81403A8()
{
    _BYTE *v0; // r5
    int v1; // r1
    int v2; // r2

    engine_setScreeneffect(12, 16);
    *v0 = 8;
    return PlaySoundEffect(104, v1, v2);
}


// 0x81403c0
void __fastcall __noreturn reqBBS_81403C0(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int v4; // r10
    _BYTE *v5; // r0

    *v3 = 24;
    v5 = *(v4 + oToolkit_Unk200f3a0_Ptr);
    v5[9] = 27;
    v5[10] = 54;
    v5[3] = 0;
    v5[2] = -1;
    v5[7] = 80;
    v5[6] = 80;
    PlaySoundEffect(103, 80, a3);
    v3[8] = 6;
    call_sub_3005EBA(0, 0, 3, 0);
    JUMPOUT(loc_81403FE);
}


// 0x8140414
void __fastcall __noreturn reqBBS_8140414(int a1, int a2, int a3)
{
    _BYTE *v3; // r5
    int v4; // r10
    _BYTE *v5; // r0

    *v3 = 44;
    v5 = *(v4 + oToolkit_Unk200f3a0_Ptr);
    v5[9] = 27;
    v5[10] = 54;
    v5[3] = 0;
    v5[2] = -1;
    v5[7] = 80;
    v5[6] = 80;
    PlaySoundEffect(103, 80, a3);
    v3[8] = 6;
    call_sub_3005EBA(0, 0, 3, 0);
    JUMPOUT(loc_8140452);
}


// 0x81404a0
void __noreturn reqBBS_drawChatbox_dup1()
{
    CopyBackgroundTiles(2, 5, 1, eTileIds2018A04, 26, &dword_8 + 2);
}


// 0x81404b8
void __noreturn reqBBS_drawSelectChatbox()
{
    CopyBackgroundTiles(5, 5, 1, &unk_201BA04, 20, &dword_8 + 2);
    JUMPOUT(locret_81404CA);
}


// 0x81404e8
int __noreturn reqBBS_renderSelectedEntry_HeaderText()
{
    int v0; // r5

    return renderTextGfx_8045F8C(
                     **(v0 + offsetof(reqBBS_GUI, reqBBS_textualPointers)),
                     reqBBS_eRequestEntriesIDs[*(v0 + offsetof(reqBBS_GUI, pagePos)) + *(v0 + offsetof(reqBBS_GUI, cursorPos))],
                     byte_201B200,
                     100697088);
}


// 0x814051c
int __noreturn reqBBS_setChatboxHeaderBasedOn_0F()
{
    int v0; // r5

    return renderTextGfx_8045F8C(
                     **(v0 + offsetof(reqBBS_GUI, reqBBS_textualPointers)),
                     byte_200578F[0],
                     byte_201B200,
                     100697088);
}


// 0x8140554
void reqBBS_changeChatboxHeader()
{
    reqBBS_getRequestBBSRank();
    sub_8045FC6();
}


// 0x8140588
void reqBBS_8140588()
{
    int v0; // r10

    (loc_8000AC8)(byte_813F22C, *(v0 + oToolkit_iBGTileIdBlocks_Ptr) + 384, 128);
    JUMPOUT(locret_814059C);
}


// 0x81405a4
int reqBBS_81405A4()
{
    int v0; // r10

    return (loc_8000AC8)(byte_813F2AC, *(v0 + oToolkit_iBGTileIdBlocks_Ptr) + 384, 128);
}


// 0x81405c0
int __noreturn reqBBS_81405C0()
{
    return renderTextGfx_8045F8C(reqBBS_eTextScript, 18, byte_201CA00, 100678656);
}


// 0x81405e8
void __noreturn reqBBS_81405E8()
{
    CopyBackgroundTiles(10, 0, 2, byte_813F32C, 8, &byte_0[2]);
    JUMPOUT(locret_81405FA);
}


// 0x8140600
void reqBBS_8140600()
{
    ;
}


// 0x8140604
void __fastcall reqBBS_8140604(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r7
    int v6; // r7
    char v7; // zf
    signed __int16 v8; // r0
    __int16 v9; // r2

    if ( *(v4 + 30) )
    {
        v6 = v5 - reqBBS_eRequestEntriesIDs;
        TestEventFlag(a4 + *(*(v4 + 40) + 12));
        if ( !v7 )
        {
            v8 = v6;
            v9 = v6 - 7;
            if ( v6 >= 7 )
                v8 = 7;
            else
                v9 = 0;
            *(v4 + 32) = v8;
            *(v4 + 36) = v9;
            *(v4 + 38) = v9;
        }
    }
}


// 0x8140688
void reqBBS_animateCursor()
{
    int v0; // r5
    int v1; // r0
    int v2; // r2

    (loc_8000AC8)(
        &unk_201AA04 + 128 * *(&dword_81406E4 + *(v0 + offsetof(reqBBS_GUI, animationTimer1)) + 2),
        100761472,
        128);
    v1 = (16 * *(v0 + 32) + 24) | 0x30000;
    v2 = *(v0 + 9) + 1;
    if ( *(&dword_81406E4 + v2 + 2) == 255 )
        LOBYTE(v2) = 1;
    *(v0 + 9) = v2;
    sub_802FE28(v1 | 0x40000000, 50172, 0, 3);
}


// 0x81406fc
int reqBBS_81406FC()
{
    int v0; // r5
    signed int v1; // r1
    char v2; // r1
    char v3; // r2
    int v4; // r0
    signed int v5; // r1
    char v6; // r1
    char v7; // r2

    v1 = *(v0 + 30);
    if ( v1 < 40 )
    {
        if ( v1 < 30 )
        {
            if ( v1 < 20 )
            {
                if ( v1 < 10 )
                {
                    v2 = 0;
                    v3 = 14;
                }
                else
                {
                    v2 = 10;
                    v3 = 13;
                }
            }
            else
            {
                v2 = 20;
                v3 = 12;
            }
        }
        else
        {
            v2 = 30;
            v3 = 11;
        }
    }
    else
    {
        v2 = 40;
        v3 = 10;
    }
    v4 = (1 << v3) ^ 0x3FFFFFFF ^ (1 << (9 - (*(v0 + 30) - v2)));
    v5 = *(v0 + 5);
    if ( v5 < 40 )
    {
        if ( v5 < 30 )
        {
            if ( v5 < 20 )
            {
                if ( v5 < 10 )
                {
                    v6 = 0;
                    v7 = 29;
                }
                else
                {
                    v6 = 10;
                    v7 = 28;
                }
            }
            else
            {
                v6 = 20;
                v7 = 27;
            }
        }
        else
        {
            v6 = 30;
            v7 = 26;
        }
    }
    else
    {
        v6 = 40;
        v7 = 25;
    }
    return sprite_setUnk0x2c(v4 ^ (1 << v7) ^ (1 << (24 - (*(v0 + 5) - v6))));
}


// 0x8140798
// () -> u8
int reqBBS_getRequestBBSRank()
{
    return eReqBBSGui.totalPointsIndex;
}


// 0x81407a8
int __fastcall reqBBS_81407A8(int result)
{
    eReqBBSGui.totalPointsIndex = result;
    return result;
}


// 0x81407b8
int reqBBS_81407B8()
{
    return eReqBBSGui.numPoints;
}


// 0x81407c8
int __fastcall reqBBS_81407C8(int result)
{
    eReqBBSGui.numPoints = result;
    return result;
}


// 0x81407d8
signed int reqBBS_81407D8()
{
    char v0; // zf

    TestEventFlagFromImmediate(23, 58);
    if ( v0
        || !reqBBS_814084C(byte_200578F[0])
        || !byte_8140828[eReqBBSGui.totalPointsIndex]
        || byte_8140828[eReqBBSGui.totalPointsIndex] > eReqBBSGui.numPoints )
    {
        return 0;
    }
    ++eReqBBSGui.totalPointsIndex;
    return 1;
}


// 0x814084c
signed int __fastcall reqBBS_814084C(int a1)
{
    char v1; // zf
    signed int result; // r0

    TestEventFlag(a1 + 7264);
    if ( v1 )
        result = 0;
    else
        result = 1;
    return result;
}


// 0x8140868
signed int __fastcall reqBBS_8140868(int a1)
{
    char v1; // zf
    signed int result; // r0

    TestEventFlag(a1 + 7200);
    if ( v1 )
        result = 0;
    else
        result = 1;
    return result;
}


// 0x8140884
BOOL __fastcall reqBBS_8140884(int a1)
{
    return reqBBS_getRequestBBSRank() < byte_813F380[a1];
}


// 0x81408a0
unsigned int __fastcall reqBBS_81408A0(int a1)
{
    return SetEventFlag(a1 + 7136);
}


// 0x81408b4
unsigned int __fastcall reqBBS_81408B4(int a1)
{
    return SetEventFlag(a1 + 7264);
}


// 0x81408c8
int reqBBS_81408C8()
{
    int v0; // r5

    return reqBBS_eRequestEntriesIDs[*(v0 + 36) + *(v0 + 32)];
}


// 0x81408dc
int reqBBS_81408DC()
{
    int result; // r0

    result = reqBBS_81408C8();
    byte_200578F[0] = result;
    return result;
}


// 0x81408f0
signed int reqBBS_81408F0()
{
    char v0; // zf
    int v1; // r0
    int v2; // r0
    int v3; // r0

    chatbox_check_eFlags2009F38(128);
    if ( v0 )
        return 14;
    chatbox_check_eFlags2009F38(32);
    if ( v0 )
        return 0;
    chatbox_check_eFlags2009F38(&byte_110);
    if ( !v0 )
        return 0;
    v1 = reqBBS_81408C8();
    if ( reqBBS_8140868(v1) )
        return 14;
    TestEventFlagFromImmediate(23, 58);
    if ( !v0 )
        return 15;
    v2 = reqBBS_81408C8();
    if ( reqBBS_8140884(v2) )
        return 16;
    TestEventFlagFromImmediate(23, 29);
    if ( !v0 && !getPETNaviSelect() )
    {
        SetEventFlagFromImmediate(23, 58);
        SetEventFlagFromImmediate(23, 60);
        v3 = reqBBS_81408C8();
        reqBBS_81408A0(v3);
        reqBBS_81408DC();
    }
    return 13;
}


// 0x8140974
int reqBBS_8140974()
{
    return byte_200578F[0];
}


// 0x8140984
reqBBS_GUI *reqBBS_8140984()
{
    reqBBS_GUI *result; // r0

    result = &eReqBBSGui;
    eReqBBSGui.numPoints = 0;
    eReqBBSGui.totalPointsIndex = 0;
    byte_200578F[0] = 0;
    return result;
}


// 0x81409d0
// (int a1) -> int
int __fastcall reqBBS_81409D0(int a1)
{
    int v1; // r6

    v1 = a1;
    GetRNG2();
    __asm { SVC         6 }
    return v1;
}


// 0x81409e4
signed int reqBBS_81409E4()
{
    int v0; // r10

    return sub_8031A7A(*(*(v0 + oToolkit_GameStatePtr) + oGameState_OverworldPlayerObjectPtr) + offsetof(NPC, scriptArrayOffset));
}


// 0x81409f4
int reqBBS_81409F4()
{
    int v0; // r10

    return *(*(v0 + oToolkit_GameStatePtr) + oGameState_Unk_0e);
}


// 0x8140a00
unsigned int reqBBS_setFlag_e17b0f7_8140A00()
{
    return SetEventFlagFromImmediate(23, 0);
}


// 0x8140a0c
int reqBBS_clearFlag_8140A0C()
{
    int v0; // r10
    int v1; // r5
    int result; // r0

    ClearEventFlagFromImmediate(23, 0);
    v1 = *(v0 + oToolkit_Unk2001c04_Ptr);
    result = *(v1 + 20);
    *(v1 + 18) = result;
    return result;
}


// 0x8140a24
int reqBBS_setFlags_8140A24()
{
    SetEventFlagRangeFromImmediate(22, 64, 64);
    SetEventFlagRangeFromImmediate(22, 192, 16);
    return 0;
}


// 0x8140a40
int reqBBS_setFlags_8140A40()
{
    SetEventFlagRangeFromImmediate(22, 243, 13);
    SetEventFlagRangeFromImmediate(22, 192, 16);
    return 0;
}


// 0x8140a5c
void __fastcall reqBBS_RunTextScriptWhoAmI(int a1, int a2)
{
    chatbox_runScript(*(&TextScriptWhoAmIPtr + a1), a2);
}


