// 0x8077d00
unsigned int sub_8077D00()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8077618 + *(v0 + 5));
    sub_8077DE0();
    sub_803037C(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    sub_8030472();
    sub_80028D4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(*(&off_8077D64 + *(v0 + 5)));
    chatbox_uncompMapTextArchives_803FD08();
    sub_8077E84();
    return sub_8034FB8();
}


// 0x8077d8a
int __fastcall sub_8077D8A(int a1, int a2)
{
    return LoadGFXAnims(off_8077D9C[a2]);
}


// 0x8077de0
void sub_8077DE0()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_8077E18 + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_8077E3C[*(v1 + oGameState_MapNumber)]);
}


// 0x8077e60
int sub_8077E60()
{
    int v0; // r10

    return (*(&off_8077E78 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x8077e80
void nullsub_77()
{
    ;
}


// 0x8077e82
void nullsub_78()
{
    ;
}


// 0x8077e84
int sub_8077E84()
{
    int v0; // r10

    return SpawnObjectsFromList(pt_8077E9C[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


