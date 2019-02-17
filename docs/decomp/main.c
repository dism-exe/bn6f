// 0x80002bc
void __noreturn main_()
{
    unsigned __int8 **v0; // r10
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3
    int v5; // r0
    int v6; // r1
    int v7; // r2
    int v8; // r3
    char v9; // zf
    int *v10; // r0
    int v11; // r0

    main_static_80004A4();
    sub_8001514();
    v1 = clear_200AD04();
    sub_803D1A8(v1, v2, v3, v4);
    while ( 1 )
    {
        main_static_await_80003D0();
        main_awaitFrame_80003A0();
        sub_80007BE();
        sub_80019A0();
        render_800172C();
        objRender_802FE0C();
        objRender_8000A44();
        getPalleteAndTransition_80023E0();
        renderPalletes_8001808();
        renderPalletesAndObjs_8002650();
        sprite_handleObjSprites_800289C(v5, v6, v7, v8);
        render_80015D0();
        main_static_80003E4();
        ++*v0[9];
        sub_8000E10();
        (*(main_jt_subsystem + **v0))();
        rng_800154C();
        isSameSubsystem_800A732();
        if ( !v9 )
            subsystem_triggerTransition_800630A();
        chatbox_onUpdate_803FEB4();
        v10 = cb_call_200A880();
        PET_onUpdate_8001B94(v10);
        v11 = sub_3006814();
        main_static_8000454(v11);
    }
}


// 0x80003a0
void main_awaitFrame_80003A0()
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
__int16 *main_static_await_80003D0()
{
    __int16 *result; // r0

    result = &GeneralLCDStatus_STAT_LYC_;
    while ( GeneralLCDStatus_STAT_LYC_ & 1 )
        ;
    return result;
}


// 0x80003e4
unsigned __int16 *main_static_80003E4()
{
    int v0; // r10
    unsigned __int16 *result; // r0
    int v2; // r7
    int v3; // r4
    int v4; // r5
    int v5; // r6
    signed int v6; // r1
    char v7; // r3
    signed int v8; // r2
    int v9; // r2

    result = *(v0 + oToolkit_JoypadPtr);
    v2 = *(result + 19) + 1;
    if ( v2 > 4 )
        LOBYTE(v2) = 0;
    *(result + 19) = v2;
    v3 = ~KeyStatus;
    v4 = *result;
    result[3] = v4;
    *result = v3;
    v5 = v3 & v4;
    v6 = 8;
    v7 = 0;
    do
    {
        if ( (1 << v7) & v5 )
        {
            v8 = *(result + v6);
            if ( v8 < 16 )
            {
                v9 = v8 + 1;
                *(result + v6) = v9;
                if ( v9 == 1 )
                    goto LABEL_10;
LABEL_7:
                v5 &= ~(1 << v7);
                goto LABEL_10;
            }
            if ( *(result + 19) )
                goto LABEL_7;
        }
        else
        {
            *(result + v6) = 0;
        }
LABEL_10:
        ++v7;
        ++v6;
    }
    while ( v6 < 18 );
    result[2] = v5;
    result[1] = v3 & ~v4;
    return result;
}


// 0x8000454
int __fastcall main_static_8000454(int a1)
{
    Toolkit *toolkit; // r10
    int result; // r0
    char v3; // zf
    Joystick *v4; // r0
    u16 v5; // r2
    u8 *v6; // r1
    u8 v7; // r4

    result = IsPaletteFadeActive();
    if ( !v3 )
    {
        result = sub_813D60C();
        if ( v3 )
        {
            result = *toolkit->jo_gameSubsysSel;
            if ( result != 16 )
            {
                v4 = toolkit->joystick;
                v5 = v4->IQR;
                result = v4->keyState;
                v6 = toolkit->jo_gameSubsysSel + 4;
                v7 = *v6 - 1;
                if ( *v6 - 1 <= 0 )
                {
                    v7 = 0;
                    result &= 0xFu;
                    if ( result == 15 )
                    {
                        if ( v5 & 0xF )
                            start_800023C();
                    }
                }
                *v6 = v7;
            }
        }
    }
    return result;
}


// 0x80004a4
void main_static_80004A4()
{
    int v0; // r0
    int v1; // r0
    int v2; // r1
    int v3; // r2
    int v4; // r3

    v0 = CpuSet_toolKit();
    sub_8006C22(v0);
    v1 = sub_8001778(&loc_C0);
    main_static_80017EC(v1, v2, v3, v4);
    render_800172C();
    sub_8001850();
    main_static_8000570();
}


// 0x8000570
__int16 *__noreturn main_static_8000570()
{
    __int16 *result; // r0

    sub_814E8A0();
    sub_814EE2C(9634829);
    start_800024C(8, sub_3005D78);
    result = &GeneralLCDStatus_STAT_LYC_;
    GeneralLCDStatus_STAT_LYC_ = GeneralLCDStatus_STAT_LYC_ | 0x5020;
    return result;
}


