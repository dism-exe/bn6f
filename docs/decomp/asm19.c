// 0x807cdec
unsigned int Undernet_EnterMapGroup()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_807C82C + *(v0 + 5));
    Undernet_LoadBGAnim();
    initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
    decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_init_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    decompAndCopyMapTiles_8030472();
    initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(*(&off_807CE50 + *(v0 + 5)));
    chatbox_uncompMapTextArchives_803FD08();
    Undernet_SpawnMapObjectsForMap();
    return sub_8034FB8();
}


// 0x807ce90
int __fastcall Undernet_LoadGFXAnims(int a1, int a2)
{
    return LoadGFXAnims(off_807CEA4[a2]);
}


// 0x807cf24
void Undernet_LoadBGAnim()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_807CF5C + 4 * *(v1 + oGameState_MapNumber);
    SetBGScrollCallbacks(*v2, v2[1], v2[2]);
    v3 = GetRenderInfoLCDControl();
    SetRenderInfoLCDControl(v3 | v2[3]);
    LoadBGAnimData(off_807CFA0[*(v1 + oGameState_MapNumber)]);
}


// 0x807cfb8
int __fastcall sub_807CFB8(int a1, int a2, int a3)
{
    __int16 v3; // t1
    __int16 v4; // t1

    v3 = *(a1 + 50);
    v4 = *(a3 + 58);
    return Undernet_UnkFunction_807cfcc();
}


// 0x807cfcc
int Undernet_UnkFunction_807cfcc()
{
    int v0; // r10

    return (*(&off_807CFE4 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x807cff4
void nullsub_84()
{
    ;
}


// 0x807cff6
void nullsub_85()
{
    ;
}


// 0x807cff8
void nullsub_86()
{
    ;
}


// 0x807cffa
void nullsub_87()
{
    ;
}


// 0x807cffc
int Undernet_SpawnMapObjectsForMap()
{
    int v0; // r10

    return SpawnObjectsFromList(pt_807D014[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


