// 0x8052688
char (*CyberAcademy_EnterMapGroup())[8]
{
	int v0; // r5
	int v1; // r10
	int v2; // r4
	int v3; // r1
	int v4; // r2
	int v5; // r3
	char (*result)[8]; // r0

	*(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_8052244[*(v0 + 5)];
	initMapTilesState_803037c(*(v0 + 4), *(v0 + 5));
	decompressCoordEventData_8030aa4(*(v0 + 4), *(v0 + 5));
	v2 = *(v0 + 5);
	camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
	decompAndCopyMapTiles_8030472();
	initUncompSpriteState_80028d4(&eT4BattleObjects[4000], v3, v4, v5);
	uncompSprite_8002906(*(&off_80526F4 + *(v0 + 5)));
	chatbox_uncompMapTextArchives_803FD08();
	CyberAcademy_SpawnMapObjectsForMap();
	result = off_8052EE8[*(v0 + 5)];
	*(v0 + 100) = result;
	return result;
}


// 0x8052764
int __fastcall CyberAcademy_LoadGFXAnims(int a1, int a2)
{
	return LoadGFXAnims(off_8052778[a2]);
}


// 0x80527f0
int CyberAcademy_SpawnMapObjectsForMap()
{
	int v0; // r10

	return SpawnObjectsFromList(*(&off_8052808 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)));
}


