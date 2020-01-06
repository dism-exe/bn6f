// 0x807a8e0
unsigned int SkyACDCArea_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8079F74 + *(v0 + 5));
    SkyACDCArea_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(off_807A944[*(v0 + 5)]);
    chatbox_uncompBasedOnMap_803FD08();
    SkyACDCArea_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x807a974
int __fastcall SkyACDCArea_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_807A988[a2]);
}


// 0x807a9cc
void SkyACDCArea_LoadBGAnim()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_807AA34 + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_807AA68[*(v1 + oGameState_MapNumber)]);
}


// 0x807a9fe
int sub_807A9FE()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_807AA34 + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    return sub_8030540(off_807AA68[*(v1 + oGameState_MapNumber)]);
}


// 0x807aaac
int SkyACDCArea_UnkFunction_807aaac()
{
    int v0; // r10

    return (*(&off_807AAC4 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x807aad0
void nullsub_81()
{
    ;
}


// 0x807aad2
void nullsub_82()
{
    ;
}


// 0x807aad4
void nullsub_83()
{
    ;
}


// 0x807aad6
int SkyACDCArea_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(pt_807AAF0[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


