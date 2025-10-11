// 0x807ecd0
unsigned int GraveyardImmortalArea_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_807EA6C + *(v0 + 5));
    GraveyardImmortalArea_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_init_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(*(&off_807ED34 + *(v0 + 5)));
    chatbox_uncompMapTextArchives_803FD08();
    GraveyardImmortalArea_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x807ed6c
int __fastcall GraveyardImmortalArea_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_807ED80[a2]);
}


// 0x807edd4
void GraveyardImmortalArea_LoadBGAnim()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_807EE0C + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_807EE40[*(v1 + oGameState_MapNumber)]);
}


// 0x807ee68
int GraveyardImmortalArea_UnkFunction_807ee68()
{
    int v0; // r10

    return (*(&off_807EE80 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x807ee8c
void nullsub_88()
{
    ;
}


// 0x807ee8e
void nullsub_89()
{
    ;
}


// 0x807ee90
void nullsub_90()
{
    ;
}


// 0x807ee92
int GraveyardImmortalArea_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(pt_807EEAC[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


