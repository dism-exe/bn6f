// 0x80002bc
void __noreturn main_()
{
    Toolkit *tk; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    char zf; // zf

    main_initToolkitAndOtherSubsystems();
    SeedRNG2();
    clear_e200AD04();
    sub_803D1A8();
    while ( 1 )
    {
        main_pollGeneralLCDStatus_STAT_LYC_();
        main_awaitFrame();
        sub_80007BE();
        CallBGScrollCallback1();
        render_800172C();
        copyObjAttributesToIWRAM_802FE0C();
        objRender_8000A44();
        getPalleteAndTransition_80023E0();
        copyPalletesToIWRAM_8001808();
        copyPalletesToIWRAM_8002650();
        sprite_resetObjVars_800289C(v1, v2, v3, v4);
        copyToVRAMAndClear_iBGTileIdBlocks_Ptr();
        main_static_80003E4();
        ++*tk->currFrame;
        sub_8000E10();
        (*(&main_subsystemJumpTable + *tk->jo_gameSubsysSel))();
        GetRNG1();
        isSameSubsystem_800A732();
        if ( !zf )
            subsystem_triggerTransition_800630A();
        chatbox_onUpdate();
        CallBGScrollCallback0();
        PET_onUpdate_8001B94();
        sub_3006814();
        main_static_8000454();
    }
}


// 0x80003a0
void __cdecl main_awaitFrame()
{
    do
    {
        while ( !(GeneralLCDStatus_STAT_LYC_ & 1) )
            ;
    }
    while ( dword_200A870 < dword_2009930 );
    dword_200A870 = 0;
}


// 0x80003d0
// () -> void
void __cdecl main_pollGeneralLCDStatus_STAT_LYC_()
{
    while ( GeneralLCDStatus_STAT_LYC_ & 1 )
        ;
}


// 0x80003e4
Joystick *main_static_80003E4()
{
    Toolkit *tk; // r10
    Joystick *joystick; // r0
    int v2; // r7
    int v3; // r4
    int v4; // r5
    int v5; // r6
    signed int v6; // r1
    char v7; // r3
    signed int v8; // r2
    int v9; // r2

    joystick = tk->joystick;
    v2 = joystick->Counter + 1;
    if ( v2 > 4 )
        LOBYTE(v2) = 0;
    joystick->Counter = v2;
    v3 = ~KeyStatus;
    v4 = joystick->keyState;
    joystick->keyState_dup = v4;
    joystick->keyState = v3;
    v5 = v3 & v4;
    v6 = 8;
    v7 = 0;
    do
    {
        if ( (1 << v7) & v5 )
        {
            v8 = *(&joystick->keyState + v6);
            if ( v8 < 16 )
            {
                v9 = v8 + 1;
                *(&joystick->keyState + v6) = v9;
                if ( v9 == 1 )
                    goto LABEL_10;
LABEL_7:
                v5 &= ~(1 << v7);
                goto LABEL_10;
            }
            if ( joystick->Counter )
                goto LABEL_7;
        }
        else
        {
            *(&joystick->keyState + v6) = 0;
        }
LABEL_10:
        ++v7;
        ++v6;
    }
    while ( v6 < 18 );
    joystick->keyPress = v5;
    joystick->IQR = v3 & ~v4;
    return joystick;
}


// 0x8000454
void __cdecl main_static_8000454()
{
    Toolkit *tk; // r10
    char zf; // zf
    Joystick *v2; // r0
    u16 v3; // r2
    u16 v4; // r0
    u8 *v5; // r1
    u8 v6; // r4

    IsPaletteFadeActive();
    if ( !zf )
    {
        sub_813D60C();
        if ( zf )
        {
            if ( *tk->jo_gameSubsysSel != 16 )
            {
                v2 = tk->joystick;
                v3 = v2->IQR;
                v4 = v2->keyState;
                v5 = tk->jo_gameSubsysSel + 4;
                v6 = *v5 - 1;
                if ( *v5 - 1 <= 0 )
                {
                    v6 = 0;
                    if ( (v4 & 0xF) == 15 )
                    {
                        if ( v3 & 0xF )
                            start_800023C();
                    }
                }
                *v5 = v6;
            }
        }
    }
}


// 0x80004a4
void __cdecl main_initToolkitAndOtherSubsystems()
{
    Toolkit *tk; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    tk = SetPrimaryToolkitPointers();
    RandomizeExtraToolkitPointers();
    v1 = SetRenderInfoLCDControl(&loc_C0);
    main_zeroFill_80017EC(v1, v2, v3, v4);
    render_800172C();
    copyMemory_8001850();
    main_static_8000570();
    zeroFill_80007B2();
    SetDummyBGScrollCallbacks();
    zeroFill_80024A2();
    sub_8003962();
    zeroFill_8003AB2();
    sub_80015B4();
    sub_800260C();
    sub_80027C4();
    sub_802FDB0();
    clearWord_e200AC1C();
    clearChatboxAndEvent();
    cleareMemory_802FF2C();
    reqBBS_init_8004DF0();
    sub_8004D48();
    sub_8036ED4();
    sub_8036F24();
    zeroFill_e20094C0();
    zeroFill_e20097A0();
    zeroFill_e2009740();
    zeroFill_e200F3A0();
    sub_80062EC();
    sub_8006910();
    sub_803DE5C();
    sub_8144240();
    sub_803EBC8();
    sub_813D960();
    sub_80071B4();
    sub_804657C();
    sub_80467D8();
    LOWORD(dword_2009930) = 1;
    ZeroFillByWord(tk->jo_gameSubsysSel, 8);
    sub_803D1A8();
    sub_803E900();
}


// 0x8000570
__int16 *__cdecl main_static_8000570()
{
    __int16 *result; // r0

    sub_814E8A0();
    sub_814EE2C(9634829);
    SetInterruptCallback(8, sub_3005D78);
    result = &GeneralLCDStatus_STAT_LYC_;
    GeneralLCDStatus_STAT_LYC_ = GeneralLCDStatus_STAT_LYC_ | 0x5020;
    return result;
}
