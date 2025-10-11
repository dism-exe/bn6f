// 0x80663d0
unsigned int RobotControlComp_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_8066020[*(v0 + 5)];
    RobotControlComp_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_init_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(off_8066434[*(v0 + 5)]);
    chatbox_uncompMapTextArchives_803FD08();
    RobotControlComp_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x8066450
int __fastcall RobotControlComp_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_8066464[a2]);
}


// 0x806649c
void RobotControlComp_LoadBGAnim()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_80664D4 + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_80664F8[*(v1 + oGameState_MapNumber)]);
}


// 0x806651c
int RobotControlComp_UnkFunction_806651c()
{
    int v0; // r10

    return (*(&off_8066534 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x806653c
void nullsub_29()
{
    ;
}


// 0x806653e
void nullsub_30()
{
    ;
}


// 0x8066540
int RobotControlComp_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(off_8066558[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


// 0x8067b5c
unsigned int AquariumComp_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_80676E8 + *(v0 + 5));
    AquariumComp_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_init_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(off_8067BC0[*(v0 + 5)]);
    chatbox_uncompMapTextArchives_803FD08();
    AquariumComp_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x8067be4
int __fastcall AquariumComp_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_8067BF8[a2]);
}


// 0x8067c88
void AquariumComp_LoadBGAnim()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_8067CC0 + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_8067CF4[*(v1 + oGameState_MapNumber)]);
}


// 0x8067d1c
int AquariumComp_UnkFunction_8067d1c()
{
    int v0; // r10

    return (*(&off_8067D34 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x8067d40
void nullsub_64()
{
    ;
}


// 0x8067d42
void nullsub_65()
{
    ;
}


// 0x8067d44
void nullsub_66()
{
    ;
}


// 0x8067d46
int AquariumComp_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(pt_8067D60[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


