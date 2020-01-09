// 0x807931c
unsigned int Underground_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_80790A4[*(v0 + 5)];
    Underground_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(*(&off_8079380 + *(v0 + 5)));
    chatbox_uncompMapTextArchives_803FD08();
    Underground_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x807939a
int __fastcall Underground_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_80793AC[a2]);
}


// 0x80793e8
void Underground_LoadBGAnim()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_8079420 + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_8079444[*(v1 + oGameState_MapNumber)]);
}


// 0x8079468
int Underground_UnkFunction_8079468()
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
int Underground_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(pt_80794A4[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


