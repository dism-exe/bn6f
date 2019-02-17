// 0x807544c
unsigned int sub_807544C()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8074F30 + *(v0 + 5));
    sub_8075530();
    sub_803037C(*(v0 + 4), *(v0 + 5));
    sub_8030AA4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    sub_8030472();
    sub_80028D4(byte_2037800, v3, v4, v5);
    uncompSprite_8002906(*(&off_80754B0 + *(v0 + 5)));
    chatbox_uncompBasedOnMap_803FD08();
    sub_80755EE();
    return sub_8034FB8();
}


// 0x80754e2
int __fastcall sub_80754E2(int a1, int a2)
{
    return sub_8002354(off_80754F4[a2]);
}


// 0x8075530
void sub_8075530()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    __int16 v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_8075568 + 4 * *(v1 + oGameState_MapNumber);
    sub_800195C(*v2, v2[1], v2[2]);
    v3 = sub_8001780();
    sRender_08_setRenderingState(v3 | v2[3]);
    sub_80304E8(off_807559C[*(v1 + oGameState_MapNumber)]);
}


// 0x80755c4
int sub_80755C4()
{
    int v0; // r10

    return (*(&off_80755DC + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x80755e8
void nullsub_74()
{
    ;
}


// 0x80755ea
void nullsub_75()
{
    ;
}


// 0x80755ec
void nullsub_76()
{
    ;
}


// 0x80755ee
int sub_80755EE()
{
    int v0; // r10

    return sub_8003570(*(&off_8075608 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)));
}


