// 0x8083d44
signed int sub_8083D44()
{
  bool v0; // zf

  v0 = byte_2013966-- == 1;
  if ( v0 )
    return 0;
  if ( byte_201396F )
    --byte_201396F;
  if ( (byte_2013966 & 0xF) == 15 )
    sound_play(byte_12C);
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
  int v5; // r0
  int v6; // r0
  int result; // r0
  char v8; // zf
  int v9; // r0
  int v10; // r2
  int v11; // r0

  ZeroFillByWord(&unk_2011A90, 0x94u, a3, a4);
  byte_2011A94 = 10;
  byte_2011A9D[0] = 15;
  byte_2011A93 = 1;
  v5 = sub_8087150();
  v6 = sub_8086ED8(v5);
  sub_8086EEC(v6);
  result = TestEventFlagFromImmediate(5, 242);
  if ( !v8 )
  {
    sub_8087238(result);
    v9 = TestEventFlagFromImmediate(5, 228);
    if ( v8 )
    {
      result = sub_8086FA4(v9);
      if ( !result )
        return result;
      v9 = TestEventFlagFromImmediate(5, 255);
      if ( !v8 )
        v9 = SetEventFlagFromImmediate(5, 229);
    }
    if ( *(*(v4 + 60) + 4) == 129 )
      v9 = sub_800060A(35, 129, v10);
    v11 = sub_8086F18(v9);
    sub_8086F5C(v11);
    result = 0;
  }
  return result;
}


// 0x8086ed8
int sub_8086ED8()
{
  return sub_80047E0(6, 0, 0, 0);
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
    result = sub_80047E0(7, 0, 0, 0);
    ++v1;
  }
  while ( v1 < v2 );
  return result;
}


