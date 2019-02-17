// 0x8080d90
int sub_8080D90()
{
    return ZeroFillByByte(&dword_2009690, 8);
}


// 0x8080da0
int sub_8080DA0()
{
    signed int v0; // r0
    signed int v1; // r4
    void **v2; // r7
    int v3; // r0
    int result; // r0

    v0 = sub_8081308();
    v1 = v0;
    v2 = &off_8080E34 + 4 * v0;
    sub_800195C(*v2, v2[1], v2[2]);
    v3 = sub_8001780();
    sRender_08_setRenderingState(v3 | v2[3]);
    sub_80304E8((&off_8080F98)[v1]);
    sub_8002354(off_8081220[v1]);
    result = sub_802D234();
    if ( result != 1 )
    {
        sub_803537C();
        result = sub_8035424();
    }
    return result;
}


// 0x8080dea
int __fastcall sub_8080DEA(int a1, signed int a2)
{
    signed int v2; // r0
    signed int v3; // r4
    void **v4; // r7
    int v5; // r0

    v2 = sub_808137C(a1, a2);
    v3 = v2;
    v4 = &off_8080E34 + 4 * v2;
    sub_800195C(*v4, v4[1], v4[2]);
    v5 = sub_8001780();
    sRender_08_setRenderingState(v5 | v4[3]);
    sub_80304E8((&off_8080F98)[v3]);
    sub_8002354(off_8081220[v3]);
    sub_803537C();
    return sub_8035424();
}


// 0x8081308
signed int sub_8081308()
{
    int v0; // r10
    signed int result; // r0
    int v2; // r0
    signed int v3; // r1
    int v4; // r0
    char *v5; // r2
    __int16 *i; // r3
    char v7; // zf

    result = *(*(*(v0 + oToolkit_S2034880_Ptr) + 60) + 4);
    if ( result == 255 )
    {
        v2 = *(v0 + oToolkit_GameStatePtr);
        v3 = *(v2 + oGameState_MapGroup);
        v4 = *(v2 + oGameState_MapNumber);
        if ( v3 >= 128 && (v5 = pt_808139C[v3 - 128]) != 0 )
        {
            result = v5[v4];
            if ( result == 16 )
            {
                for ( i = &word_8081368; *i; i += 2 )
                {
                    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) == *i )
                    {
                        TestEventFlag(i[1]);
                        result = 16;
                        if ( v7 )
                            result = 21;
                        return result;
                    }
                }
            }
        }
        else
        {
            result = 7;
        }
    }
    return result;
}


// 0x808137c
signed int __fastcall sub_808137C(int a1, signed int a2)
{
    char *v2; // r2
    signed int result; // r0

    if ( a2 >= 128 && (v2 = pt_808139C[a2 - 128]) != 0 )
        result = v2[a1];
    else
        result = 7;
    return result;
}


