// 0x8077d00
unsigned int GreenArea_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8077618 + *(v0 + 5));
    GreenArea_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_init_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(*(&off_8077D64 + *(v0 + 5)));
    chatbox_uncompMapTextArchives_803FD08();
    GreenArea_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x8077d8a
int __fastcall GreenArea_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_8077D9C[a2]);
}


// 0x8077de0
void GreenArea_LoadBGAnim()
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
int GreenArea_UnkFunction_8077e60()
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
int GreenArea_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(pt_8077E9C[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


