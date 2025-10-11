// 0x806d8f8
unsigned int Comps1_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_806D6B0 + *(v0 + 5));
    Comps1_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_init_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(*(&off_806D95C + *(v0 + 5)));
    chatbox_uncompMapTextArchives_803FD08();
    Comps1_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x806d9fc
int __fastcall Comps1_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_806DA10[a2]);
}


// 0x806da58
void Comps1_LoadBGAnim()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_806DA90 + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_806DB94[*(v1 + oGameState_MapNumber)]);
}


// 0x806dc0c
int __fastcall Comps1_UnkFunction_806dc0c(int a1, int a2)
{
    int v2; // r10
    int v3; // ST00_4
    int v4; // ST04_4

    v3 = a1;
    v4 = a2;
    SetEventFlagFromImmediate(0, 142);
    ClearEventFlagFromImmediate(0, 143);
    return (*(&off_806DC38 + *(*(v2 + oToolkit_GameStatePtr) + oGameState_MapNumber)))(v3, v4);
}


// 0x806dc78
void nullsub_70()
{
    ;
}


// 0x806dc7a
int __fastcall sub_806DC7A(int result, int a2)
{
    if ( result != 2 || a2 != 9 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806dc98
int __fastcall sub_806DC98(int result, int a2)
{
    if ( result != 4 || a2 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806dcb6
int __fastcall sub_806DCB6(int result, int a2)
{
    if ( result != 5 || a2 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806dcd4
int Comps1_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(pt_806DCEC[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


