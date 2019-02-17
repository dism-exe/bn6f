// 0x8083d44
signed int __fastcall sub_8083D44(int a1, int a2, int a3)
{
    bool v3; // zf

    v3 = byte_2013966-- == 1;
    if ( v3 )
        return 0;
    if ( byte_201396F )
        --byte_201396F;
    if ( (byte_2013966 & 0xF) == 15 )
        sound_play(byte_12C, 15, a3);
    return 1;
}


// 0x8086c08
int sub_8086C08()
{
    byte_2011A97 = 3;
    return 0;
}


// 0x8086ce4
int sub_8086CE4()
{
    reqBBS_clearFlag_8140A0C();
    return 0;
}


// 0x8086d9c
signed int sub_8086D9C()
{
    if ( byte_2011A95 || byte_2011A97 )
        return 1;
    sub_80871F4();
    return 0;
}


// 0x8086df8
int __fastcall sub_8086DF8(int a1, int a2, int a3, int a4)
{
    int v4; // r10
    int result; // r0
    char v6; // zf
    int v7; // r2

    ZeroFillByWord(&unk_2011A90, 148);
    byte_2011A94 = 10;
    byte_2011A9D[0] = 15;
    byte_2011A93 = 1;
    sub_8087150();
    sub_8086ED8();
    sub_8086EEC();
    result = TestEventFlagFromImmediate(5, 242);
    if ( !v6 )
    {
        sub_8087238();
        TestEventFlagFromImmediate(5, 228);
        if ( v6 )
        {
            result = sub_8086FA4();
            if ( !result )
                return result;
            TestEventFlagFromImmediate(5, 255);
            if ( !v6 )
                SetEventFlagFromImmediate(5, 229);
        }
        if ( *(*(v4 + 60) + 4) == 129 )
            sub_800060A(35, 129, v7);
        sub_8086F18();
        sub_8086F5C();
        result = 0;
    }
    return result;
}


// 0x8086ed8
int sub_8086ED8()
{
    return SpawnOverworldMapObject(6, 0, 0, 0);
}


// 0x8086eec
int sub_8086EEC()
{
    int v0; // r10
    signed int v1; // r6
    signed int v2; // r7
    int result; // r0

    v1 = 0;
    v2 = 3;
    if ( *(*(v0 + 60) + 5) == 2 )
        v2 = 4;
    do
    {
        result = SpawnOverworldMapObject(7, 0, 0, 0);
        ++v1;
    }
    while ( v1 < v2 );
    return result;
}


