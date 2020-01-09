// 0x80946c4
int sub_80946C4()
{
    decompAndCopyData(&initRefs_80946D4);
    return 0;
}


// 0x8094708
int sub_8094708()
{
    sub_8094738(&unk_2025404);
    return 0;
}


// 0x8094714
int sub_8094714()
{
    sub_8094738(&unk_2026404);
    return 0;
}


// 0x8094720
int __fastcall sub_8094720(int a1, int a2, int a3, int a4)
{
    ZeroFillByWord(&unk_2026404, 4096);
    sub_8094738(&unk_2026404);
    return 0;
}


// 0x8094738
int __fastcall sub_8094738(int a1)
{
    int v1; // r6
    int v2; // r7
    int v3; // r5
    signed int v4; // r4

    v1 = 2 * eMapTilesState200be70;
    v2 = dword_200BE7C + *(dword_200BE7C + 8) + 66 + 86 * eMapTilesState200be70;
    v3 = a1;
    v4 = 0;
    do
    {
        CopyHalfwords((100 * v4 + v3), (v4 * v1 + v2), 100);
        ++v4;
    }
    while ( v4 < 34 );
    sub_80307D8();
    return 0;
}


