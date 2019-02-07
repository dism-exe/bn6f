// 0x80652b8
int sub_80652B8()
{
    int v0; // r5
    int v1; // r10
    int v2; // r7
    int v3; // r0
    int v4; // r1
    int v5; // r0
    int result; // r0

    v2 = *(v1 + 16);
    v3 = *(v0 + 44);
    v4 = *(v2 + 116) - *(v2 + 120);
    *(v2 + 116) = v4;
    v5 = v3 + v4;
    *(v0 + 44) = v5;
    if ( v5 <= -2097152 )
    {
        *(v0 + 44) = -2097152;
        result = sub_809F904();
    }
    else
    {
        result = *(v0 + 36) - 0x20000;
        *(v0 + 36) = result;
    }
    return result;
}


