// 0x80871f4
int sub_80871F4()
{
    _BYTE *v0; // r5
    signed int v1; // r1
    signed int v2; // r2
    signed int v3; // r4
    int result; // r0

    byte_2000EC0[1] = v0[5];
    byte_2000EC0[2] = v0[6];
    byte_2000EC0[3] = v0[7];
    byte_2000EC0[4] = v0[8];
    byte_2000EC0[5] = v0[9];
    byte_2000EC6 = v0[10];
    byte_2000EC7 = v0[11];
    byte_2000EC8 = v0[12];
    byte_2000EC9 = v0[13];
    v1 = 16;
    v2 = 92;
    v3 = 0;
    do
    {
        result = *&v0[v1];
        *&byte_2000EC0[v2] = result;
        v1 += 4;
        v2 += 4;
        ++v3;
    }
    while ( v3 < 33 );
    return result;
}


// 0x8087238
unsigned int sub_8087238()
{
    _BYTE *v0; // r5
    signed int v1; // r1
    signed int v2; // r2
    signed int v3; // r4

    v0[5] = byte_2000EC0[1];
    v0[6] = byte_2000EC0[2];
    v0[7] = byte_2000EC0[3];
    v0[8] = byte_2000EC0[4];
    v0[9] = byte_2000EC0[5];
    v0[10] = byte_2000EC6;
    v0[11] = byte_2000EC7;
    v0[12] = byte_2000EC8;
    v0[13] = byte_2000EC9;
    v1 = 16;
    v2 = 92;
    v3 = 0;
    do
    {
        *&v0[v1] = *&byte_2000EC0[v2];
        v1 += 4;
        v2 += 4;
        ++v3;
    }
    while ( v3 < 33 );
    return reqBBS_setFlag_e17b0f7_8140A00();
}


