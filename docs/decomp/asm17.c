// 0x807931c
unsigned int sub_807931C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_80790A4[*(v0 + 5)];
    sub_80793E8();
    sub_803037C(*(v0 + 4), *(v0 + 5));
    sub_8030AA4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    sub_8030472();
    sub_80028D4(byte_2037800, v3, v4, v5);
    uncompSprite_8002906(*(&off_8079380 + *(v0 + 5)));
    chatbox_uncompBasedOnMap_803FD08();
    sub_807948C();
    return sub_8034FB8();
}


// 0x807939a
int __fastcall sub_807939A(int a1, int a2)
{
    return sub_8002354(off_80793AC[a2]);
}


// 0x80793e8
void sub_80793E8()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    __int16 v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_8079420 + 4 * *(v1 + oGameState_MapNumber);
    sub_800195C(*v2, v2[1], v2[2]);
    v3 = sub_8001780();
    sRender_08_setRenderingState(v3 | v2[3]);
    sub_80304E8(off_8079444[*(v1 + oGameState_MapNumber)]);
}


// 0x8079468
int sub_8079468()
{
    int v0; // r10

    return (*(&off_8079480 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x8079488
void nullsub_79()
{
    ;
}


// 0x807948a
void nullsub_80()
{
    ;
}


// 0x807948c
int sub_807948C()
{
    int v0; // r10

    return sub_8003570(pt_80794A4[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


