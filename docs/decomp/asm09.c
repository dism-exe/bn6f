// 0x8062ab0
char (*sub_8062AB0())[8]
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3
    char (*result)[8]; // r0

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8062728 + *(v0 + 5));
    sub_803037C(*(v0 + 4), *(v0 + 5));
    sub_8030AA4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    sub_8030472();
    sub_80028D4(byte_2037800, v3, v4, v5);
    uncompSprite_8002906(*(&off_8062B1C + *(v0 + 5)));
    chatbox_uncompBasedOnMap_803FD08();
    sub_8062BCC();
    result = off_8063008[*(v0 + 5)];
    *(v0 + 100) = result;
    return result;
}


// 0x8062b64
int __fastcall sub_8062B64(int a1, int a2)
{
    return sub_8002354(*(&off_8062B78 + a2));
}


// 0x8062bcc
int sub_8062BCC()
{
    int v0; // r10

    return sub_8003570(pt_8062BE4[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


