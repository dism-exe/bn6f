// 0x8086f18
int sub_8086F18()
{
  int v0; // r10
  int v1; // r6
  int v2; // r0
  signed int v3; // r0
  int v4; // r7

  v1 = 0;
  v2 = *(v0 + oToolkit_GameStatePtr);
  if ( *(v2 + oGameState_MapGroup) == 129 )
    v3 = *(v2 + 5);
  else
    v3 = 3;
  v4 = *(&dword_8086F58 + v3);
  byte_2011A9A = *(&dword_8086F58 + v3);
  do
  {
    sub_80047E0(9, 0, 0, 0);
    ++v1;
  }
  while ( v1 < v4 );
  return 0;
}


// 0x8086f5c
int sub_8086F5C()
{
  int v0; // r10
  int v1; // r6
  int v2; // r0
  signed int v3; // r0
  int v4; // r7

  v1 = 0;
  v2 = *(v0 + oToolkit_GameStatePtr);
  if ( *(v2 + oGameState_MapGroup) == 129 )
    v3 = *(v2 + 5);
  else
    v3 = 3;
  v4 = *(&dword_8086F9C + v3);
  byte_2011A9B = *(&dword_8086F9C + v3);
  do
  {
    sub_80047E0(10, 0, 0, 0);
    ++v1;
  }
  while ( v1 < v4 );
  return 0;
}


// 0x8086fa4
signed int sub_8086FA4()
{
  int v0; // r10
  int v1; // r0
  signed int v2; // r0
  signed int v3; // r4
  char v4; // zf

  v1 = *(v0 + 60);
  if ( *(v1 + 4) == 129 )
    v2 = *(v1 + 5);
  else
    v2 = 3;
  v3 = 0;
  TestEventFlag(*&byte_8086FD0[2 * v2]);
  if ( !v4 )
    v3 = 1;
  return v3;
}


// 0x8086fd8
void *sub_8086FD8()
{
  _BYTE *v0; // r5
  int v1; // r10
  int v2; // r0
  int v3; // r4
  int v4; // r1
  void *result; // r0
  char *v6; // r0
  char v7; // zf
  int v8; // r2
  int v9; // r3
  int v10; // r0
  int v11; // r0
  int v12; // r2

  if ( !v0[1] )
  {
    v2 = reqBBS_81409F4();
    if ( v2 >= 192 || v2 < 176 )
    {
      TestEventFlagFromImmediate(5, 241);
      if ( v7 )
      {
        TestEventFlagFromImmediate(5, 243);
        if ( v7 )
        {
          result = TestEventFlagFromImmediate(5, 244);
          if ( v7 )
            return result;
          v0[5] = 2;
          v0[7] = 2;
          ClearEventFlagFromImmediate(5, 244);
          v6 = &off_8086D1C + 4;
        }
        else
        {
          v0[5] = 1;
          v0[7] = 1;
          v0[1] = 1;
          ClearEventFlagFromImmediate(5, 243);
          SetEventFlagFromImmediate(5, 242);
          v6 = &off_8086D1C + 4;
        }
      }
      else
      {
        v0[9] = 1;
        v6 = &byte_8086D2C[4];
      }
    }
    else
    {
      v3 = v2 - 176;
      v0[12] = v2 + 80;
      sub_80871C0();
      if ( !v7 || (TestEventFlagFromImmediate(5, 242), v7) )
      {
        v4 = v3;
        v6 = byte_8086D5C;
      }
      else
      {
        v4 = v3;
        v6 = byte_8086D74;
      }
    }
    return init_s_02011C50_8036E90(v6, v4, v8, v9);
  }
  v0[1] = 0;
  v10 = *(v1 + oToolkit_GameStatePtr);
  if ( *(v10 + oGameState_MapGroup) == 133 )
  {
    TestEventFlagFromImmediate(15, 192);
    if ( !v7 )
      goto LABEL_31;
    SetEventFlagFromImmediate(15, 192);
    v6 = &byte_8086460[8];
    return init_s_02011C50_8036E90(v6, v4, v8, v9);
  }
  v11 = *(v10 + oGameState_MapNumber);
  if ( v11 )
  {
    if ( v11 == 1 )
    {
      TestEventFlagFromImmediate(5, 226);
      if ( !v7 )
        goto LABEL_31;
      SetEventFlagFromImmediate(5, 226);
      v6 = &byte_8086340[104];
    }
    else
    {
      TestEventFlagFromImmediate(5, 227);
      if ( !v7 )
        goto LABEL_31;
      SetEventFlagFromImmediate(5, 227);
      v6 = &byte_8086340[188];
    }
    return init_s_02011C50_8036E90(v6, v4, v8, v9);
  }
  TestEventFlagFromImmediate(5, 225);
  if ( v7 )
  {
    SetEventFlagFromImmediate(5, 225);
    v6 = &byte_8086340[20];
    return init_s_02011C50_8036E90(v6, v4, v8, v9);
  }
LABEL_31:
  if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) == 129 )
    sub_800060A(35, 129, v12);
  sub_8086F18();
  return sub_8086F5C();
}


// 0x808711c
void *__fastcall sub_808711C(int a1, int a2, int a3, int a4)
{
  int v4; // r5
  char *v5; // r0
  int v6; // r1
  int v7; // r2

  v5 = &byte_80868C8[32];
  v6 = *(v4 + 12);
  v7 = *(v4 + 6);
  if ( v7 >= 50 )
    v7 -= 40;
  if ( v6 != v7 )
    v5 = &byte_8086678[32];
  return init_s_02011C50_8036E90(v5, v6, v7, a4);
}


// 0x8087140
int sub_8087140()
{
  int v0; // r10

  return *(*(*(v0 + 60) + 24) + 19);
}


// 0x8087150
int sub_8087150()
{
  int v0; // r5
  int result; // r0
  int v2; // r1
  int v3; // r2
  signed int v4; // r6
  signed int v5; // r3
  signed int v6; // r3
  signed int v7; // r6
  signed int v8; // r3
  signed int v9; // r6

  result = sub_809E1AE();
  v4 = 0;
  v5 = 16;
  do
  {
    *(v0 + v5) = result;
    v5 += 12;
    ++v4;
  }
  while ( v4 < 10 );
  v6 = 20;
  v7 = 0;
  do
  {
    *(v0 + v6) = v2;
    v6 += 12;
    ++v7;
  }
  while ( v7 < 10 );
  v8 = 24;
  v9 = 0;
  do
  {
    *(v0 + v8) = v3;
    v8 += 12;
    ++v9;
  }
  while ( v9 < 10 );
  return result;
}


// 0x8087184
int sub_8087184()
{
  _DWORD *v0; // r5
  int v1; // r3
  int v2; // r4
  signed int v3; // r6
  int v4; // r0
  int v5; // r3
  int v6; // r1
  int v7; // r2
  int v8; // r4
  int result; // r0
  int v10; // r1
  int v11; // r2

  v1 = 112;
  v2 = 124;
  v3 = 0;
  do
  {
    v4 = *(v0 + v1);
    v5 = v1 + 4;
    v6 = *(v0 + v5);
    v5 += 4;
    v7 = *(v0 + v5);
    v1 = v5 - 20;
    *(v0 + v2) = v4;
    v8 = v2 + 4;
    *(v0 + v8) = v6;
    v8 += 4;
    *(v0 + v8) = v7;
    v2 = v8 - 20;
    ++v3;
  }
  while ( v3 < 9 );
  result = sub_809E1AE();
  v0[4] = result;
  v0[5] = v10;
  v0[6] = v11;
  return result;
}


// 0x80871c0
int sub_80871C0()
{
  int v0; // r5

  return TestEventFlag(*&byte_80871D8[2 * *(v0 + 12)]);
}


