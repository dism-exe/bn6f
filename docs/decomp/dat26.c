// 0x8092e44
signed int sub_8092E44()
{
  int v0; // r5
  signed int v1; // r4
  int v2; // r0
  unsigned __int8 v3; // vf
  int v4; // r0
  int v5; // r0

  v1 = 1;
  if ( *(v0 + 10) == 128 )
  {
    v2 = sub_8143F72();
    v3 = __OFSUB__(v2, 150);
    v4 = v2 - 150;
    if ( ((v4 < 0) ^ v3) | (v4 == 0) )
    {
      sub_8143F68(0);
    }
    else
    {
      sub_8143F68(v4);
      v5 = *(v0 + 11) + 1;
      *(v0 + 11) = v5;
      if ( v5 != 3 )
        return v1;
    }
    v1 = 0;
    *(v0 + 10) = -127;
  }
  return v1;
}


// 0x8092e78
int sub_8092E78()
{
  unsigned __int8 *v0; // r5

  return (*(&off_8092E90 + *v0))();
}


// 0x8092ec4
signed int sub_8092EC4()
{
  _BYTE *v0; // r5
  int *v1; // r7
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r1
  int v7; // ST00_4
  int v8; // ST04_4
  int v9; // r0
  int v10; // r0
  int v11; // r1
  unsigned int v12; // r0

  v2 = sub_8143DEA();
  *v1 = v2;
  sub_809E1AE(v2);
  v3 = sub_8143EA4();
  v4 = sub_8143DBC(v3);
  v5 = sub_809323A(v4);
  v7 = sub_809E1AE(v5);
  v8 = v6;
  v9 = sub_8143EA4();
  v10 = sub_8143DBC(v9);
  v12 = calcAngle_800117C(v10 - v7, v8 - v11);
  sub_809E13C(((((((v12 + 16) >> 4) & 0xF) >> 1) - 1) & 7) + 8);
  sound_play(129);
  *v0 = 4;
  return 1;
}


// 0x8092f1e
signed int sub_8092F1E()
{
  _BYTE *v0; // r5
  _DWORD *v1; // r7
  int v2; // r0
  int v3; // r0
  char v4; // zf
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r0

  v2 = sub_8093258();
  v3 = sub_8093202(v2);
  if ( !v4 )
  {
    v5 = sub_8143EA4(v3);
    v6 = sub_8143DBC(v5);
    v7 = (loc_809E1A4)(v6);
    v8 = sub_8143EA4(v7);
    v9 = sub_8143EB0(v8, *v1);
    v10 = sub_809E2AE(v9);
    v11 = sub_809E2B8(v10);
    sub_809E13C(byte_8092F5C[v11]);
    *v0 = 8;
  }
  return 1;
}


// 0x8092f64
signed int sub_8092F64()
{
  _BYTE *v0; // r5
  int v1; // r0

  v1 = sub_8143FAA();
  sub_8093212(v1);
  *v0 = 12;
  return 1;
}


// 0x8092f76
signed int sub_8092F76()
{
  _BYTE *v0; // r5
  int v1; // r10
  __int16 v2; // r4

  v2 = *(*(v1 + 4) + 2);
  if ( v2 & 2 )
  {
    sub_809322A();
    sound_play(131);
    sub_80931FA(10);
    *v0 = 16;
  }
  else if ( v2 & 1 )
  {
    sub_80931FA(30);
    sound_play(386);
    *v0 = 20;
  }
  else
  {
    sub_8143FC4();
  }
  return 1;
}


// 0x8092fbe
signed int __fastcall sub_8092FBE(int a1)
{
  int v1; // r5
  char v2; // zf

  sub_8093202(a1);
  if ( v2 )
    return 1;
  *(v1 + 8) = 1;
  return 0;
}


// 0x8092fd2
signed int __fastcall sub_8092FD2(int a1)
{
  _BYTE *v1; // r5
  _DWORD *v2; // r7
  int v3; // r0
  char v4; // zf
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  char v9; // r1

  v3 = sub_8093202(a1);
  if ( !v4 )
  {
    sub_809322A(v3);
    v5 = sub_8143DBC(*v2);
    v6 = sub_8143EA4(v5);
    v7 = sub_8143DBC(v6);
    sub_809323A(v7);
    v8 = sub_80931FA(8);
    sub_8144010(v8);
    v1[9] = v9;
    sound_play(448);
    *v1 = 24;
  }
  return 1;
}


// 0x8093012
signed int sub_8093012()
{
  _BYTE *v0; // r5
  int v1; // r0
  char v2; // zf

  v1 = sub_8093258();
  sub_8093202(v1);
  if ( !v2 )
    *v0 = 28;
  return 1;
}


// 0x8093026
signed int __fastcall sub_8093026(int a1)
{
  _BYTE *v1; // r5
  int v2; // r0
  char v3; // zf
  int v4; // r0

  v2 = sub_8093202(a1);
  if ( !v3 )
  {
    v4 = sub_809E2B8(v2);
    sub_809E13C(byte_809304C[v4]);
    sub_80931FA(60);
    *v1 = 32;
  }
  return 1;
}


// 0x8093054
signed int __fastcall sub_8093054(int a1)
{
  _BYTE *v1; // r5
  int v2; // r0
  char v3; // zf
  int v4; // r0

  v2 = sub_8093202(a1);
  if ( !v3 )
  {
    v4 = sub_8093074(v2);
    sub_809E254(v4);
    sound_play(455);
    *v1 = 36;
  }
  return 1;
}


// 0x8093074
int __fastcall sub_8093074(int a1)
{
  int *v1; // r7
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r4
  int v6; // r0
  int v7; // r0
  int v8; // r0

  v2 = sub_8143EA4(a1);
  v3 = sub_8143DBC(v2);
  v4 = sub_8143EA4(v3);
  v5 = v4;
  v6 = sub_809E2B8(v4);
  v7 = sub_8143E68(v5, v6, 1);
  *v1 = v7;
  v8 = sub_8143DBC(v7);
  return sub_809323A(v8);
}


// 0x80930a4
signed int sub_80930A4()
{
  _BYTE *v0; // r5
  _DWORD *v1; // r7
  int v2; // r0
  unsigned int v3; // r0
  int v4; // r0
  char v5; // zf
  int v6; // r1
  unsigned int v7; // r0
  unsigned int v8; // r1
  unsigned int v9; // r4
  int v10; // r0
  unsigned __int8 v11; // vf
  int v12; // r0
  int v13; // r0
  int v14; // r0
  int v15; // r0
  int v16; // r0
  int v17; // r0
  int v18; // r4
  int v19; // r0
  int v20; // r0
  int v21; // r0
  int v22; // r0
  int v23; // r0
  int v24; // r0

  v2 = sub_8093258();
  v3 = (dword_80931FE)(v2);
  if ( v3 != 5 )
  {
LABEL_7:
    sub_8093202(v3);
    if ( !v5 )
    {
      v10 = v0[9];
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      v0[9] = v12;
      if ( ((v12 < 0) ^ v11) | (v12 == 0) )
      {
        v15 = sub_8143EA4(v12);
        v16 = sub_8143DBC(v15);
        v17 = sub_8143EA4(v16);
        v18 = v17;
        v19 = sub_809E2B8(v17);
        v20 = sub_8143E68(v18, v19, 1);
        v21 = sub_8143DBC(v20);
        sub_809323A(v21);
        v22 = sub_80931FA(16);
        sub_809E248(v22);
        *v0 = 40;
      }
      else
      {
        v13 = sub_8093074(v12);
        sub_809E254(v13);
        v14 = sub_8143EDC(*v1);
        if ( v5 )
          sub_809E248(v14);
      }
    }
    return 1;
  }
  if ( v0[9] )
  {
    v4 = sub_8143BB0(*v1);
    if ( !v5 )
    {
      v23 = sub_809E2B8(v4);
      v24 = sub_809E13C(v23);
      sub_809E248(v24);
      v0[8] = 0;
      return 0;
    }
    v3 = sub_8143EDC(*v1);
    if ( !v5 )
    {
      v7 = sub_8143B5E(v6);
      v9 = v8;
      SetEventFlag(v7);
      v3 = SetEventFlag(v9);
    }
    goto LABEL_7;
  }
  sub_80302A8(2, 20);
  sub_80931FA(30);
  sound_play(192);
  *v0 = 44;
  return 1;
}


// 0x809316c
signed int sub_809316C()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  char v3; // zf
  int v4; // r0
  int v5; // r0

  v1 = sub_8093258();
  v2 = sub_8093202(v1);
  if ( v3 )
    return 1;
  v4 = sub_809E2B8(v2);
  v5 = sub_809E13C(v4);
  sub_809E248(v5);
  *(v0 + 8) = 1;
  return 0;
}


// 0x809319c
signed int __fastcall sub_809319C(int a1)
{
  _BYTE *v1; // r5
  _DWORD *v2; // r7
  char v3; // zf
  int v4; // r0
  int v5; // r0
  int v6; // r0

  sub_8093202(a1);
  if ( !v3 )
  {
    v4 = sub_8143DBC(*v2);
    v5 = sub_8143EA4(v4);
    v6 = sub_8143DBC(v5);
    sub_809323A(v6);
    sub_80931FA(16);
    *v1 = 48;
  }
  return 1;
}


// 0x80931ca
signed int sub_80931CA()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  char v3; // zf
  int v4; // r0
  int v5; // r0

  v1 = sub_8093258();
  v2 = sub_8093202(v1);
  if ( v3 )
    return 1;
  v4 = sub_809E2B8(v2);
  v5 = sub_809E13C(v4);
  sub_809E248(v5);
  *(v0 + 8) = 1;
  return 0;
}


// 0x80931ee
void __fastcall sub_80931EE(int a1)
{
  int v1; // r5

  chatbox_runScript(*(v1 + 48), a1);
}


// 0x80931fa
__int16 __fastcall sub_80931FA(__int16 result)
{
  int v1; // r5

  *(v1 + 24) = result;
  return result;
}


// 0x8093202
signed int sub_8093202()
{
  int v0; // r5
  int v1; // r0
  unsigned __int8 v2; // vf
  int v3; // r0

  v1 = *(v0 + 24);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if ( (v3 < 0) ^ v2 )
    return 1;
  *(v0 + 24) = v3;
  return 0;
}


// 0x8093212
char *sub_8093212()
{
  sub_80468C6(10, 3, 0);
  return sub_80468C6(11, 4, 0);
}


// 0x809322a
int sub_809322A()
{
  sub_80468EC(3);
  return sub_80468EC(4);
}


// 0x809323a
int __fastcall sub_809323A(int a1, int a2, int a3, int a4)
{
  __int16 v4; // r4
  int v5; // r7

  __asm { SVC     6 }
  *(v5 + 4) = a1 - a3;
  __asm { SVC     6 }
  *(v5 + 8) = a2 - a4;
  return sub_80931FA(v4);
}


// 0x8093258
int __fastcall sub_8093258(int a1)
{
  int v1; // r7
  int v2; // r0
  int v3; // r1

  v2 = sub_809E1AE(a1);
  return (loc_809E1A4)(v2 + *(v1 + 4), v3 + *(v1 + 8));
}


// 0x809332c
int sub_809332C()
{
  int v0; // r1
  int v1; // r2
  int v2; // r3

  sub_809E1BC();
  sub_80047E0(2, v0 + 0x80000, v1 + 0x80000, v2 + 2359296);
  sound_play(165);
  return 0;
}


