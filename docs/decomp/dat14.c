// 0x8073efc
int sub_8073EFC()
{
  int v0; // r5
  int v1; // r10
  int v2; // r7
  int v3; // r0
  int v4; // r1
  int result; // r0

  v2 = *(v1 + 16);
  v3 = *(v0 + 44);
  v4 = *(v2 + 116) - *(v2 + 120);
  *(v2 + 116) = v4;
  result = v3 + v4;
  *(v0 + 44) = result;
  if ( v4 <= 0 )
    result = sub_809F904();
  return result;
}


