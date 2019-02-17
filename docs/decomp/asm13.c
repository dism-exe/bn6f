// 0x806fc08
unsigned int sub_806FC08()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_806FA98[*(v0 + 5)];
    sub_806FD54();
    sub_803037C(*(v0 + 4), *(v0 + 5));
    sub_8030AA4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    sub_8030472();
    sub_80028D4(byte_2037800, v3, v4, v5);
    uncompSprite_8002906(off_806FC6C[*(v0 + 5)]);
    chatbox_uncompBasedOnMap_803FD08();
    sub_806FFDA();
    return sub_8034FB8();
}


// 0x806fcf8
int __fastcall sub_806FCF8(int a1, int a2)
{
    return sub_8002354(off_806FD0C[a2]);
}


// 0x806fd54
void sub_806FD54()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    __int16 v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_806FD8C + 4 * *(v1 + oGameState_MapNumber);
    sub_800195C(*v2, v2[1], v2[2]);
    v3 = sub_8001780();
    sRender_08_setRenderingState(v3 | v2[3]);
    sub_80304E8(off_806FE90[*(v1 + oGameState_MapNumber)]);
}


// 0x806ff08
int __fastcall sub_806FF08(int a1, int a2)
{
    int v2; // r10
    int v3; // ST00_4
    int v4; // ST04_4

    v3 = a1;
    v4 = a2;
    SetEventFlagFromImmediate(0, 142);
    ClearEventFlagFromImmediate(0, 143);
    return (*(&jt_806FF34 + *(*(v2 + oToolkit_GameStatePtr) + oGameState_MapNumber)))(v3, v4);
}


// 0x806ff74
void nullsub_27()
{
    ;
}


// 0x806ff76
int __fastcall sub_806FF76(int result, int a2)
{
    if ( result != 2 || a2 != 10 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806ff94
unsigned int __fastcall sub_806FF94(int a1, int a2)
{
    int v2; // r10
    unsigned int result; // r0

    if ( a1 != 3 || a2 != 2 || (result = *(*(v2 + oToolkit_GameStatePtr) + oGameState_Unk_3c)) == 0 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806ffbc
int __fastcall sub_806FFBC(int result, int a2)
{
    if ( result != 3 || a2 != 4 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806ffda
int sub_806FFDA()
{
    int v0; // r10

    return sub_8003570(pt_806FFF4[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


