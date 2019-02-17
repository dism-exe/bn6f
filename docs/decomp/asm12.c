// 0x806d8f8
unsigned int sub_806D8F8()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_806D6B0 + *(v0 + 5));
    sub_806DA58();
    sub_803037C(*(v0 + 4), *(v0 + 5));
    sub_8030AA4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    sub_8030472();
    sub_80028D4(byte_2037800, v3, v4, v5);
    uncompSprite_8002906(*(&off_806D95C + *(v0 + 5)));
    chatbox_uncompBasedOnMap_803FD08();
    sub_806DCD4();
    return sub_8034FB8();
}


// 0x806d9fc
int __fastcall sub_806D9FC(int a1, int a2)
{
    return sub_8002354(off_806DA10[a2]);
}


// 0x806da58
void sub_806DA58()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    __int16 v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_806DA90 + 4 * *(v1 + oGameState_MapNumber);
    sub_800195C(*v2, v2[1], v2[2]);
    v3 = sub_8001780();
    sRender_08_setRenderingState(v3 | v2[3]);
    sub_80304E8(off_806DB94[*(v1 + oGameState_MapNumber)]);
}


// 0x806dc0c
int __fastcall sub_806DC0C(int a1, int a2)
{
    int v2; // r10
    int v3; // ST00_4
    int v4; // ST04_4

    v3 = a1;
    v4 = a2;
    SetEventFlagFromImmediate(0, 142);
    ClearEventFlagFromImmediate(0, 143);
    return (*(&off_806DC38 + *(*(v2 + oToolkit_GameStatePtr) + oGameState_MapNumber)))(v3, v4);
}


// 0x806dc78
void nullsub_70()
{
    ;
}


// 0x806dc7a
int __fastcall sub_806DC7A(int result, int a2)
{
    if ( result != 2 || a2 != 9 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806dc98
int __fastcall sub_806DC98(int result, int a2)
{
    if ( result != 4 || a2 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806dcb6
int __fastcall sub_806DCB6(int result, int a2)
{
    if ( result != 5 || a2 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806dcd4
int sub_806DCD4()
{
    int v0; // r10

    return sub_8003570(pt_806DCEC[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


