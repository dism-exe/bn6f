// 0x8071b50
unsigned int sub_8071B50()
{
    int v0; // r5
    int v1; // r10
    int v2; // r4
    int v3; // r1
    int v4; // r2
    int v5; // r3

    *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8071584 + *(v0 + 5));
    sub_8071C30();
    sub_803037C(*(v0 + 4), *(v0 + 5));
    sub_8030AA4(*(v0 + 4), *(v0 + 5));
    v2 = *(v0 + 5);
    camera_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
    sub_8030472();
    sub_80028D4(&eT4BattleObjects[4000], v3, v4, v5);
    uncompSprite_8002906(*(&off_8071BB4 + *(v0 + 5)));
    chatbox_uncompBasedOnMap_803FD08();
    sub_8071CEE();
    return sub_8034FB8();
}


// 0x8071be4
int __fastcall sub_8071BE4(int a1, int a2)
{
    return sub_8002354(off_8071BF8[a2]);
}


// 0x8071c30
void sub_8071C30()
{
    int v0; // r10
    int v1; // r5
    void **v2; // r7
    int v3; // r0

    v1 = *(v0 + oToolkit_GameStatePtr);
    v2 = &off_8071C68 + 4 * *(v1 + oGameState_MapNumber);
    sub_800195C(*v2, v2[1], v2[2]);
    v3 = sub_8001780();
    sRender_08_setRenderingState(v3 | v2[3]);
    sub_80304E8(off_8071C9C[*(v1 + oGameState_MapNumber)]);
}


// 0x8071cc4
int sub_8071CC4()
{
    int v0; // r10

    return (*(&off_8071CDC + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x8071ce8
void nullsub_71()
{
    ;
}


// 0x8071cea
void nullsub_72()
{
    ;
}


// 0x8071cec
void nullsub_73()
{
    ;
}


// 0x8071cee
int sub_8071CEE()
{
    int v0; // r10

    return SpawnObjectsFromList(*(&off_8071D08 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)));
}


// 0x8072b54
int sub_8072B54()
{
    int v0; // r10
    int v1; // r5
    int result; // r0

    v1 = *(v0 + oToolkit_Unk2001c04_Ptr);
    result = *(v1 + 56) + 1;
    if ( result >= 10 )
    {
        sub_80302C0(0, 4);
        result = 0;
    }
    *(v1 + 56) = result;
    return result;
}


// 0x8072b70
int __fastcall sub_8072B70(int a1)
{
    int v1; // r10
    int v2; // r5
    int v3; // r4
    int result; // r0
    char v5; // zf
    int v6; // r0
    unsigned __int8 v7; // vf
    __int16 v8; // r0
    int v9; // r2

    v2 = *(v1 + oToolkit_Unk2001c04_Ptr);
    v3 = a1;
    result = sub_8034C36();
    if ( !v5 )
    {
        v6 = *(v2 + 60);
        v7 = __OFSUB__(v6, 1);
        result = v6 - 1;
        if ( (result < 0) ^ v7 )
        {
            GetRNG2();
            *(v2 + 60) = dword_258 + (v8 & 0x1FF);
            result = sound_play(*&byte_8072BC0[2 * v3], dword_258, v9);
        }
        else
        {
            *(v2 + 60) = result;
        }
    }
    return result;
}


// 0x8072ba4
int sub_8072BA4()
{
    int v0; // r10
    int v1; // r5
    int result; // r0

    v1 = *(v0 + oToolkit_Unk2001c04_Ptr);
    *(v1 + 60) = 16;
    result = 0;
    *(v1 + 56) = 0;
    return result;
}


