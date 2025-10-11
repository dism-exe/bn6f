// 0x807544c
unsigned int SeasideArea_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8074F30 + *(v0 + 5));
    SeasideArea_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_init_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(*(&off_80754B0 + *(v0 + 5)));
    chatbox_uncompMapTextArchives_803FD08();
    SeasideArea_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x80754e2
int __fastcall SeasideArea_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_80754F4[a2]);
}


// 0x8075530
void SeasideArea_LoadBGAnim()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_8075568 + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_807559C[*(v1 + oGameState_MapNumber)]);
}


// 0x80755c4
int SeasideArea_UnkFunction_80755c4()
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
int SeasideArea_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(*(&off_8075608 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)));
}


