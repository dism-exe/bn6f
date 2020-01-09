// 0x806fc08
unsigned int Comps2_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_806FA98[*(v0 + 5)];
    Comps2_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(off_806FC6C[*(v0 + 5)]);
    chatbox_uncompMapTextArchives_803FD08();
    Comps2_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x806fcf8
int __fastcall Comps2_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_806FD0C[a2]);
}


// 0x806fd54
void Comps2_LoadBGAnim()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_806FD8C + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_806FE90[*(v1 + oGameState_MapNumber)]);
}


// 0x806ff08
int __fastcall Comps2_UnkFunction_806ff08(int a1, int a2)
{
    int v2; // r10
    int v3; // ST00_4
    int v4; // ST04_4

    v3 = a1;
    v4 = a2;
    SetEventFlagFromImmediate(0, 142);
    ClearEventFlagFromImmediate(0, 143);
    return (*(&jt_806FF34 + *(*(v2 + oToolkit_GameStatePtr) + oGameState_MapNumber)))(v3, v4);
}


// 0x806ff74
void nullsub_27()
{
    ;
}


// 0x806ff76
int __fastcall sub_806FF76(int result, int a2)
{
    if ( result != 2 || a2 != 10 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806ff94
unsigned int __fastcall sub_806FF94(int a1, int a2)
{
    int v2; // r10
    unsigned int result; // r0

    if ( a1 != 3 || a2 != 2 || (result = *(*(v2 + oToolkit_GameStatePtr) + oGameState_SavedRealWorldZ)) == 0 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806ffbc
int __fastcall sub_806FFBC(int result, int a2)
{
    if ( result != 3 || a2 != 4 )
    {
        ClearEventFlagFromImmediate(0, 142);
        result = SetEventFlagFromImmediate(0, 143);
    }
    return result;
}


// 0x806ffda
int Comps2_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(pt_806FFF4[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


