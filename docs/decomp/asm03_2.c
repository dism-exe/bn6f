// 0x8045f8c
int __fastcall render_graphicalText_8045F8C(int a1, int a2, int a3, int a4)
{
  int v4; // r10

  *(*(v4 + oToolkit_Unk200a220_Ptr) + 64) = a1;
  return sub_3006B94((a1 + *(a1 + 2 * a2)), sub_3006B94, a3, a4);
}


// 0x8045fbc
void sub_8045FBC()
{
  JUMPOUT(&loc_8045FEE);
}


// 0x8045fc6
void sub_8045FC6()
{
  JUMPOUT(&loc_8045FEE);
}


// 0x8045fd0
int __fastcall sub_8045FD0(int a1, unsigned int a2)
{
  int v2; // r10
  int v3; // r2

  v3 = *(v2 + oToolkit_Unk200a220_Ptr);
  *(v3 + 3) = 1;
  *(v3 + 4) = 1;
  *(v3 + 56) = *(dword_3006B84 + (a2 >> 16));
  sub_8046154(a1 + *(a1 + (2 * a2 & 0x1FFFF)));
  return dword_200A25C;
}


// 0x8046038
signed int __fastcall sub_8046038(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5
  int v6; // r8
  int v7; // r9
  int v8; // r7
  char *v9; // r6
  signed int result; // r0
  int v11; // r1
  signed int v12; // r12
  int v13; // [sp-1Ch] [bp-28h]
  int v14; // [sp-18h] [bp-24h]
  int v15; // [sp-14h] [bp-20h]

  v6 = a3;
  v15 = a3;
  v7 = a4;
  v8 = v4;
  v14 = v4;
  v9 = &byte_80460BC[8 * a1];
  result = 0x40000000;
  v11 = *v9;
  v13 = *v9;
  do
  {
    do
    {
      sub_802FE28(result | (v4 << 16) | v5, v11 | (v9[5] << 10), v9[4], v9[6]);
      v8 += 16;
      v4 = v8;
      result = v12;
      LOWORD(v11) = v13 + 4;
      v13 += 4;
      --v6;
    }
    while ( v6 > 0 );
    v5 += 16;
    v4 = v14;
    v8 = v14;
    v6 = v15;
    --v7;
  }
  while ( v7 > 0 );
  return result;
}


// 0x8046154
int __fastcall sub_8046154(unsigned __int8 *a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5
  int v6; // r6
  int v7; // r7
  int v8; // r10
  int v9; // r1
  int v10; // r4
  unsigned __int8 *v11; // r6
  unsigned int v12; // r1
  int v13; // r2
  int v14; // r3
  unsigned __int8 *v15; // r0
  signed int v16; // r3
  int v17; // r1
  int v18; // r1
  int v20; // [sp+0h] [bp-18h]

  v9 = *(v8 + oToolkit_Unk200a220_Ptr);
  v10 = 8 * v4;
  *v9 = v10;
  *(v9 + 2) = v5;
  *(v9 + 24) = v6;
  *(v9 + 1) = 0;
  *(v9 + 28) = 0;
  *(v9 + 52) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = a3;
  *(v9 + 36) = v7;
  *(v9 + 60) = 0;
  v11 = a1;
  v20 = a4;
  FillByEightWords(a3, v10 * 16 * v5, *(v9 + 56), a4);
  ZeroFillByEightWords(v7, v12, v13, v14);
  v15 = v11;
  v16 = 1;
  while ( v16 )
  {
    v17 = *v15;
    if ( v17 < 229 )
    {
      if ( v17 == 228 )
      {
        v18 = v15[1];
        v15 = (sub_80461D0() + 2);
      }
      else
      {
        v15 = (sub_80461D0() + 1);
      }
    }
    else
    {
      v15 = (*(&off_80460F4 + v17 - 229))();
    }
  }
  return sub_8046290(v20);
}


// 0x80461d0
void __fastcall __spoils<R1,R2,R3,R12> sub_80461D0(int a1, int a2)
{
  int *v2; // r8
  int v3; // r9
  _DWORD *v4; // r7
  int v5; // r3
  char v6; // r10
  signed int v7; // r6
  int v8; // r3
  unsigned int v9; // r2
  unsigned int v10; // r1
  unsigned __int8 v11; // vf
  int v12; // [sp-Ch] [bp-18h]

  v12 = dword_200A258;
  v2 = (4 * (dword_200A23C >> 5) + dword_200A240);
  v3 = dword_200A23C & 0x1F;
  v4 = (96 * a2 + dword_200A238);
  v5 = (*off_8046284[byte_200A223])[a2];
  dword_200A25C += v5;
  v5 *= 4;
  dword_200A23C += v5;
  v6 = 64 - v5;
  v7 = 11;
  v8 = v5 + v3;
  do
  {
    v9 = ((v4[1] + v12) << v6) >> v6 >> (32 - v3);
    v10 = (((v4[1] + v12) << v6) >> v6 << v3) | ((*v4 + v12) >> (32 - v3));
    *v2 = ((*v4 + v12) << v3) | ((*v2 << (32 - v3)) >> (32 - v3));
    if ( v8 > 32 )
    {
      v2[1] = v10;
      if ( v8 - 32 > 32 )
        v2[2] = v9;
    }
    v4 += 2;
    v2 = (v2 + byte_200A220);
    v11 = __OFSUB__(v7--, 1);
  }
  while ( !((v7 < 0) ^ v11) );
}


// 0x8046290
int sub_8046290()
{
  unsigned int v0; // r1
  unsigned int v1; // r9
  int v2; // r2
  _DWORD *v3; // r7
  int v4; // r5
  int v5; // r12
  _DWORD *v6; // r6
  signed int v7; // r3
  _DWORD *v8; // r8
  signed int v9; // r4
  _DWORD *v10; // r6
  _DWORD *v11; // r6
  _DWORD *v12; // r6
  unsigned __int8 v13; // vf
  int v14; // r7
  int v16; // [sp-14h] [bp-1Ch]
  int v17; // [sp-10h] [bp-18h]

  v17 = byte_200A222;
  v0 = byte_200A220;
  v1 = byte_200A220 >> 3;
  v2 = 2 * byte_200A220;
  v3 = dword_200A244;
  v4 = 0;
  v5 = 0;
  v16 = dword_200A240;
  do
  {
    while ( 1 )
    {
      v6 = (v16 + v4);
      if ( !v1 )
        break;
      --v1;
      v7 = 2;
      do
      {
        v8 = v6;
        v9 = 2;
        do
        {
          *v3 = *v6;
          v3[1] = *(v6 + v0);
          v10 = (v6 + v2);
          v3[2] = *v10;
          v3[3] = *(v10 + v0);
          v11 = (v10 + v2);
          v3[4] = *v11;
          v3[5] = *(v11 + v0);
          v12 = (v11 + v2);
          v3[6] = *v12;
          v3[7] = *(v12 + v0);
          v6 = v8 + 1;
          v3 += 8;
          ++v8;
          v13 = __OFSUB__(v9--, 1);
        }
        while ( !(((v9 < 0) ^ v13) | (v9 == 0)) );
        v6 += 2 * v0 - 2;
        --v7;
      }
      while ( v7 > 0 );
      v4 += 8;
    }
    ++v5;
    v16 += 16 * v0;
    v4 = 0;
    v1 = v0 >> 3;
  }
  while ( v5 != v17 );
  v14 = v3 - dword_200A244;
  if ( !byte_200A224 )
    (loc_8000AC8)();
  return v14;
}


// 0x804634c
int sub_804634C()
{
  return sub_8046356();
}


// 0x8046356
int __fastcall sub_8046356(int a1)
{
  unsigned int v1; // r7
  unsigned __int8 v2; // vf
  _DWORD *v3; // r7
  int v4; // r6
  unsigned int v5; // r4
  int v6; // r1
  signed int v7; // r3
  int v8; // r4

  v1 = 4 * (dword_200A23C >> 5);
  v2 = __OFADD__(v1, dword_200A240);
  v3 = (v1 + dword_200A240);
  v4 = dword_200A23C & 0x1F;
  v5 = dword_200A258 >> (dword_200A23C & 0x1F) << (dword_200A23C & 0x1F);
  v6 = byte_200A220;
  v7 = 11;
  do
  {
    if ( !(((v4 < 0) ^ v2) | (v4 == 0)) )
      *v3 |= v5;
    v3 = (v3 + v6);
    v2 = __OFSUB__(v7--, 1);
  }
  while ( !((v7 < 0) ^ v2) );
  v8 = byte_200A221++ + 1;
  dword_200A23C = 112 * byte_200A220 * v8;
  return a1 + 1;
}


// 0x80463a0
int __fastcall sub_80463A0(int a1)
{
  unsigned int v1; // r8
  signed int v2; // r7
  int v3; // r1
  int v4; // r3
  int v5; // r3
  int v6; // r7
  int v7; // ST04_4
  int v8; // r3
  int v9; // r3
  int v10; // r0
  int v11; // r1
  int v12; // ST08_4
  int v14; // [sp+0h] [bp-18h]
  int v15; // [sp+Ch] [bp-Ch]

  v14 = a1;
  v1 = sub_8000C00(*&byte_200A220[4 * *(a1 + 1) + 8]);
  v2 = sub_8000C5C(v1);
  v3 = 4 * (v2 - 1);
  v4 = *(v14 + 2);
  if ( v4 >= 128 )
  {
    v9 = v4 - 128 - v2;
    v10 = 0;
    if ( v9 >= 64 )
    {
      v9 -= 64;
      v10 = 1;
    }
    while ( v9 > 0 )
      sub_80461D0(v10, v10);
    v11 = 4 * (v2 - 1);
    v15 = v14;
    do
    {
      v12 = v11;
      sub_80461D0(15, ((v1 >> v11) & 0xF) + 1);
      v11 = v12 - 4;
    }
    while ( v12 >= 4 );
  }
  else
  {
    v5 = v4 - v2;
    v6 = 0;
    if ( v5 >= 64 )
      v6 = 1;
    v15 = v14;
    do
    {
      v7 = v3;
      sub_80461D0(15, ((v1 >> v3) & 0xF) + 1);
      v3 = v7 - 4;
    }
    while ( v7 >= 4 );
    while ( v8 > 0 )
      sub_80461D0(v6, v6);
  }
  return v15 + 3;
}


// 0x8046450
int __fastcall sub_8046450(int a1)
{
  return (dword_8046464[*(a1 + 1)])();
}


// 0x804657c
// () -> void
signed int __fastcall sub_804657C(int a1, int a2, int a3, int a4)
{
  char *v4; // r5
  signed int v5; // r7
  signed int result; // r0

  ZeroFillByWord(&byte_2008450, dword_528, a3, a4);
  v4 = &byte_2008450;
  v5 = 0;
  do
  {
    result = 32;
    v4[2] = 32;
    v4[3] = v5;
    v4 += 88;
    ++v5;
  }
  while ( v5 < 15 );
  return result;
}


// 0x80465a0
// (void *a1) -> void
void __cdecl sub_80465A0(void *a1)
{
  char *v1; // ST00_4

  while ( *a1 != 255 )
  {
    v1 = a1;
    sub_8046670(*a1, *(a1 + 1), *(a1 + 1));
    a1 = v1 + 4;
  }
}


// 0x80465bc
int sub_80465BC()
{
  char *v0; // r5
  signed int v1; // r7
  int result; // r0

  v0 = &byte_2008450;
  v1 = 0;
  do
  {
    result = *v0;
    if ( result & 1 )
      result = (*(&off_804646C + v0[1]))();
    v0 += 88;
    ++v1;
  }
  while ( v1 < 15 );
  return result;
}


// 0x80465f8
// () -> void
int sub_80465F8()
{
  char *v0; // r5
  signed int v1; // r7
  int result; // r0
  char v3; // r0
  char v4; // [sp-10h] [bp-30h]

  v0 = &byte_2008450;
  v1 = 0;
  do
  {
    result = *v0;
    if ( result & 2 )
    {
      v4 = *v0;
      sub_80466D8();
      v3 = v4;
      if ( !(v4 & 0x40) )
      {
        if ( !(v4 & 0x80) )
        {
          sub_8002818();
          v3 = v4;
        }
        if ( v3 & 0x20 )
          sub_8002874();
      }
      sub_8002694(0, 0);
    }
    v0 += 88;
    ++v1;
  }
  while ( v1 < 15 );
  return result;
}


// 0x8046664
// () -> void
signed int sub_8046664()
{
  int v0; // r0
  int v1; // r1
  int v2; // r2
  int v3; // r3

  v0 = sub_80466AA();
  return sub_804657C(v0, v1, v2, v3);
}


// 0x8046670
char *__fastcall sub_8046670(char a1, int a2, int a3)
{
  int v3; // r1
  char *v4; // r5

  v3 = 88 * a2;
  v4 = &byte_2008450[v3];
  v4[1] = a1;
  *v4 = 9;
  *(v4 + 1) = a3;
  *(v4 + 2) = 0;
  return &byte_2008450[v3];
}


// 0x804668a
int sub_804668A()
{
  _BYTE *v0; // r5

  *v0 = 0;
  return sprite_makeUnscalable();
}


// 0x8046696
int __fastcall sub_8046696(int a1)
{
  byte_2008450[88 * a1] = 0;
  return sprite_makeUnscalable();
}


// 0x80466aa
// () -> void
int sub_80466AA()
{
  char *v0; // r5
  signed int v1; // r7
  int result; // r0

  v0 = byte_2008450;
  v1 = 0;
  do
  {
    result = *v0;
    if ( *v0 )
      result = sub_804668A();
    v0 += 88;
    ++v1;
  }
  while ( v1 < 15 );
  return result;
}


// 0x80466c4
int __fastcall sub_80466C4(int a1)
{
  return byte_2008450[88 * a1];
}


// 0x80466d8
signed int sub_80466D8()
{
  int v0; // r5
  int v1; // r12
  signed int v2; // r0
  signed int v3; // r8
  signed int v4; // r0
  signed int v5; // r9
  signed int result; // r0
  unsigned __int8 *v7; // r2
  int v8; // r7
  unsigned int v9; // r4
  int v10; // r3
  int v11; // r3
  int v12; // r3
  int v13; // r3
  char v14; // r3
  char v15; // r3
  char v16; // r3

  v1 = *(v0 + 14);
  v2 = 0;
  if ( *(v0 + 19) & 0x10 )
    v2 = 1;
  v3 = v2;
  v4 = 0;
  if ( *(v0 + 19) & 0x20 )
    v4 = 1;
  v5 = v4;
  result = *(*(v0 + 28) + 12);
  v7 = (*(*(v0 + 24) + result + 4 * **(v0 + 32)) + *(v0 + 24) + result);
  v8 = 0;
  v9 = 2147483648;
  while ( *v7 != 255 )
  {
    v10 = v7[1];
    if ( v3 )
      v10 = -v10;
    v11 = v10 + *(v0 + 12);
    result = -64;
    if ( v11 >= -64 )
    {
      result = 305;
      if ( v11 < 305 )
      {
        v12 = v7[2];
        if ( v5 )
          v12 = -v12;
        v13 = v12 + v1;
        result = -32;
        if ( v13 >= -32 )
        {
          result = 193;
          if ( v13 < 193 )
            v8 |= v9;
        }
      }
    }
    v1 = *(v0 + 14);
    v9 >>= 1;
    v7 += 5;
  }
  v14 = *(v0 + 3);
  if ( *(v0 + 3) & 4 )
  {
    v16 = v14 & 0xF5;
    if ( v8 )
      v16 |= 0xAu;
  }
  else
  {
    v15 = v14 & 0xF7;
    if ( v8 & 0x7FFFFFFF )
      v15 |= 8u;
    v16 = v15 & 0xFD;
    if ( v8 )
      v16 |= 2u;
  }
  *(v0 + 3) = v16;
  *(v0 + 40) = v8;
  return result;
}


// 0x80467d8
signed int __fastcall sub_80467D8(int a1, int a2, int a3, int a4)
{
  char *v4; // r5
  signed int v5; // r7
  signed int result; // r0

  ZeroFillByWord(&byte_2011860, &loc_1B8, a3, a4);
  v4 = &byte_2011860;
  v5 = 0;
  do
  {
    result = 32;
    v4[2] = 32;
    v4[3] = v5;
    v4 += 88;
    ++v5;
  }
  while ( v5 < 5 );
  return result;
}


// 0x80467fc
unsigned __int8 *__fastcall sub_80467FC(unsigned __int8 *result)
{
  unsigned __int8 *v1; // ST00_4

  while ( *result != 255 )
  {
    v1 = result;
    sub_80468C6(*result, result[1], *(result + 1));
    result = v1 + 4;
  }
  return result;
}


// 0x8046818
int sub_8046818()
{
  char *v0; // r5
  signed int v1; // r7
  int result; // r0

  v0 = &byte_2011860;
  v1 = 0;
  do
  {
    result = *v0;
    if ( result & 1 )
      result = (*(&off_804679C + v0[1]))();
    v0 += 88;
    ++v1;
  }
  while ( v1 < 5 );
  return result;
}


// 0x8046854
int sub_8046854()
{
  char *v0; // r5
  signed int v1; // r7
  int result; // r0
  char v3; // r0
  char v4; // [sp-Ch] [bp-2Ch]

  v0 = &byte_2011860;
  v1 = 0;
  do
  {
    result = *v0;
    if ( result & 2 )
    {
      v4 = *v0;
      sub_804692C();
      v3 = v4;
      if ( !(v4 & 0x40) )
      {
        if ( !(v4 & 0x80) )
        {
          sub_8002818();
          v3 = v4;
        }
        if ( v3 & 0x20 )
          sub_8002874();
      }
      sub_8002694(0, 0);
    }
    v0 += 88;
    ++v1;
  }
  while ( v1 < 5 );
  return result;
}


// 0x80468ba
signed int sub_80468BA()
{
  int v0; // r0
  int v1; // r1
  int v2; // r2
  int v3; // r3

  v0 = sub_8046900();
  return sub_80467D8(v0, v1, v2, v3);
}


// 0x80468c6
char *__fastcall sub_80468C6(char a1, int a2, int a3)
{
  int v3; // r1
  char *v4; // r5

  v3 = 88 * a2;
  v4 = &byte_2011860[v3];
  v4[1] = a1;
  *v4 = 9;
  *(v4 + 1) = a3;
  *(v4 + 2) = 0;
  return &byte_2011860[v3];
}


// 0x80468e0
int sub_80468E0()
{
  _BYTE *v0; // r5

  *v0 = 0;
  return sprite_makeUnscalable();
}


// 0x80468ec
int __fastcall sub_80468EC(int a1)
{
  byte_2011860[88 * a1] = 0;
  return sprite_makeUnscalable();
}


// 0x8046900
int sub_8046900()
{
  char *v0; // r5
  signed int v1; // r7
  int result; // r0

  v0 = byte_2011860;
  v1 = 0;
  do
  {
    result = *v0;
    if ( *v0 )
      result = sub_80468E0();
    v0 += 88;
    ++v1;
  }
  while ( v1 < 5 );
  return result;
}


// 0x804691a
int __fastcall sub_804691A(int a1)
{
  return byte_2011860[88 * a1];
}


// 0x804692c
signed int sub_804692C()
{
  int v0; // r5
  int v1; // r12
  signed int v2; // r0
  signed int v3; // r8
  signed int v4; // r0
  signed int v5; // r9
  signed int result; // r0
  unsigned __int8 *v7; // r2
  int v8; // r7
  unsigned int v9; // r4
  int v10; // r3
  int v11; // r3
  int v12; // r3
  int v13; // r3
  char v14; // r3
  char v15; // r3
  char v16; // r3

  v1 = *(v0 + 14);
  v2 = 0;
  if ( *(v0 + 19) & 0x10 )
    v2 = 1;
  v3 = v2;
  v4 = 0;
  if ( *(v0 + 19) & 0x20 )
    v4 = 1;
  v5 = v4;
  result = *(*(v0 + 28) + 12);
  v7 = (*(*(v0 + 24) + result + 4 * **(v0 + 32)) + *(v0 + 24) + result);
  v8 = 0;
  v9 = 2147483648;
  while ( *v7 != 255 )
  {
    v10 = v7[1];
    if ( v3 )
      v10 = -v10;
    v11 = v10 + *(v0 + 12);
    result = -64;
    if ( v11 >= -64 )
    {
      result = 305;
      if ( v11 < 305 )
      {
        v12 = v7[2];
        if ( v5 )
          v12 = -v12;
        v13 = v12 + v1;
        result = -32;
        if ( v13 >= -32 )
        {
          result = 193;
          if ( v13 < 193 )
            v8 |= v9;
        }
      }
    }
    v1 = *(v0 + 14);
    v9 >>= 1;
    v7 += 5;
  }
  v14 = *(v0 + 3);
  if ( *(v0 + 3) & 4 )
  {
    v16 = v14 & 0xF5;
    if ( v8 )
      v16 |= 0xAu;
  }
  else
  {
    v15 = v14 & 0xF7;
    if ( v8 & 0x7FFFFFFF )
      v15 |= 8u;
    v16 = v15 & 0xFD;
    if ( v8 )
      v16 |= 2u;
  }
  *(v0 + 3) = v16;
  *(v0 + 40) = v8;
  return result;
}


// 0x8046cc8
int __fastcall sub_8046CC8(int a1, int a2, int a3, int a4)
{
  int v4; // r10
  int v5; // r4
  int v6; // r1
  int result; // r0

  v5 = a1;
  ZeroFillByWord(&byte_2011C10, 0x34u, a3, a4);
  byte_2011C14 = v5;
  dword_2011C2C = &dword_8046B98[4 * v5];
  dword_2011C34 = &reqBBS_requestInfo_textOffsets;
  v6 = *(v4 + oToolkit_GameStatePtr);
  result = *(v6 + oGameState_MapGroup);
  *(v6 + oGameState_LastMapGroup) = result;
  return result;
}


// 0x8046cf8
int cb_8046CF8()
{
  return (*(&off_8046D1C + byte_2011C10))();
}


// 0x8046d4c
void __noreturn sub_8046D4C()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0

  v1 = sub_8048DF8(*(v0 + 4), &byte_2019A00, &byte_201AE00);
  v2 = copyData_804747C(v1);
  uncomp_80471F8(v2);
  *(v0 + 18) = sub_8047B88(0);
  sub_804754C();
}


// 0x8046ddc
void __noreturn sub_8046DDC()
{
  _BYTE *v0; // r5
  int v1; // r0

  v1 = v0[8] + 2;
  v0[8] = v1;
  if ( v1 >= 21 )
  {
    v0[8] = 21;
    *v0 = 8;
  }
  sub_8047134();
}


// 0x8046df8
void __noreturn sub_8046DF8()
{
  int v0; // r0

  v0 = sub_8047950();
  sub_8047134(v0);
}


// 0x8046e06
void __noreturn sub_8046E06()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf

  v1 = chatbox_8045F3C(8);
  if ( !v2 )
  {
    v1 = sub_8047366(*(v0 + 40));
    if ( v2 )
    {
      v1 = *(v0 + 8) - 2;
      *(v0 + 8) = v1;
      if ( v1 <= 0 )
      {
        *(v0 + 8) = 0;
        v1 = *(v0 + 10) + 1;
        *(v0 + 10) = v1;
        if ( v1 >= 16 )
        {
          *(v0 + 10) = 0;
          *v0 = 16;
          v1 = engine_setScreeneffect(12, 12);
        }
      }
    }
  }
  sub_8047134(v1);
}


// 0x8046e48
void __fastcall __noreturn sub_8046E48(int a1)
{
  sub_8047134(a1);
}


// 0x8046e84
void __fastcall __noreturn sub_8046E84(int a1)
{
  sub_8047134(a1);
}


// 0x8046ed2
void __fastcall __noreturn sub_8046ED2(int a1)
{
  sub_8047134(a1);
}


// 0x8047028
void __fastcall __noreturn sub_8047028(int a1)
{
  sub_8047134(a1);
}


// 0x8047050
void __fastcall __noreturn sub_8047050(int a1)
{
  sub_8047134(a1);
}


// 0x8047066
void __fastcall __noreturn sub_8047066(int a1)
{
  sub_8047134(a1);
}


// 0x804709c
void __fastcall __noreturn sub_804709C(int a1)
{
  sub_8047134(a1);
}


// 0x8047134
void __noreturn sub_8047134()
{
  int v0; // r0
  int v1; // r0
  int v2; // r0
  char v3; // zf
  int v4; // r0
  int v5; // [sp+0h] [bp-18h]

  sub_80018D0(0, 0, 2, 0);
  sub_80465BC();
  v0 = sub_80465F8();
  v1 = sub_81179AE(v0);
  v2 = sub_80473E6(v1);
  if ( v3 )
  {
    v2 = *(v5 + 14);
    if ( !*(v5 + 14) )
    {
      if ( !*(v5 + 13) )
        sub_804758C();
      *(v5 + 13) = 0;
      v2 = sub_8047B88(0);
      *(v5 + 18) = v2;
    }
  }
  v4 = sub_8047CB6(v2);
  sub_8047CEC(v4);
  sub_8047594(*(v5 + 24), &byte_2019A00);
}


// 0x80471f8
void uncomp_80471F8()
{
  int v0; // r5

  SWI_LZ77UnCompReadNormalWrite8bit(*(*(v0 + 28) + 4), &unk_2029A00);
  SWI_LZ77UnCompReadNormalWrite8bit(comp_873DE4C, &unk_202BA00);
  SWI_LZ77UnCompReadNormalWrite8bit(comp_873ECC8, &unk_202DA00);
}


// 0x804722c
signed int __fastcall sub_804722C(signed int result, int a2, __int16 a3)
{
  int v3; // r5
  int v4; // r10

  if ( !*(v3 + 5) )
    result = sub_802FE28((result << 16) | a2, *&byte_8047268[2 * (**(v4 + oToolkit_CurFramePtr) & 0x1F)] + 2 * a3, 0, 1);
  return result;
}


// 0x80472e8
signed int __fastcall __noreturn sub_80472E8(int a1, int a2, int a3)
{
  return sub_802FE28(a2 | (a1 << 16) | 0x40000000, *&byte_8047318[2 * a3], 0, 0);
}


// 0x804733c
void __fastcall __spoils<R2,R3,R12> sub_804733C(int a1)
{
  int v1; // r5
  int v2; // r4
  unsigned __int8 v3; // r0

  v2 = a1;
  do
    v3 = sub_8001532();
  while ( !v3 );
  *(v1 + 48) = ~(((v2 + v3) << 8) | (v3 >> 4 << 28) | v3 & 0xF ^ (v3 >> 4));
}


// 0x8047366
void sub_8047366()
{
  ;
}


// 0x8047384
void __fastcall __spoils<R2,R3,R12> sub_8047384(int a1, int a2)
{
  int v2; // r5
  int v3; // r9
  _DWORD *v4; // r7
  int v5; // r4
  char *v6; // r7
  int v7; // r1
  int v8; // r2
  int v9; // r3
  char v10; // zf

  v3 = a2;
  v4 = *(v2 + 28);
  if ( *v4 == 2 )
  {
    sub_8006F1E(a1, a2);
    if ( !v10 )
    {
LABEL_5:
      ZeroFillByWord(&byte_2019A00, 0x80u, v8, v9);
      word_2011C22 = 0;
      *(v2 + 14) = 1;
      return;
    }
  }
  else
  {
    v5 = v4[3];
    v6 = &byte_8047DA0[*(*(v2 + 28) + 8)];
    v7 = *(v6 + 1);
    sub_804743C();
    if ( !v10 )
      goto LABEL_5;
    sub_8047456(v3, v6[4]);
    if ( !v10 )
      goto LABEL_5;
  }
}


// 0x80473e6
signed int __fastcall sub_80473E6(int a1, int a2, int a3)
{
  int v3; // r5
  _DWORD *v4; // r7
  int v5; // r3
  int v6; // r4
  char *v7; // r6
  char *v8; // r7
  char v9; // zf

  v4 = *(v3 + 28);
  if ( *v4 == 2 )
    return 0;
  v5 = 0;
  v6 = v4[3];
  v7 = &byte_2019A00;
  while ( 1 )
  {
    if ( *v7 )
    {
      v8 = &byte_8047DA0[*(*(v3 + 28) + 8)];
      sub_804743C(*(v7 + 1), *(v8 + 1), a3, v5);
      if ( !v9 )
        break;
      sub_8047456(v7[4], v8[4]);
      if ( !v9 )
        break;
    }
    v7 += 8;
    if ( ++v5 >= v6 )
      return 0;
  }
  ZeroFillByWord(&byte_2019A00, 0x80u, a3, v5);
  word_2011C22 = 0;
  return 1;
}


// 0x804743c
int __fastcall sub_804743C(int result)
{
  int v1; // r4
  int v2; // r7
  int v3; // r3

  v3 = 0;
  do
  {
    if ( result == *(v2 + 2) )
      break;
    v2 += 8;
    ++v3;
  }
  while ( v3 < v1 );
  return result;
}


// 0x8047456
int __fastcall sub_8047456(int result)
{
  int v1; // r4
  int v2; // r7
  int v3; // r3

  v3 = 0;
  do
  {
    if ( result == *(v2 + 4) )
      break;
    v2 += 8;
    ++v3;
  }
  while ( v3 < v1 );
  return result;
}


// 0x804747c
void __fastcall copyData_804747C(int a1, int a2, int a3, int a4)
{
  sub_800183C(a1, a2, a3, a4);
  sub_8046664();
  decompAndCopyData_8000B30(off_8047494);
}


// 0x804754c
int __noreturn sub_804754C()
{
  int v0; // r5
  int v1; // r10

  CopyByEightWords(byte_2017204, *(v1 + oToolkit_GFX30025c0_Ptr) + 2048, 0x800u);
  return render_graphicalText_8045F8C(*(v0 + 36), 16, &unk_2015E00, 100671488);
}


// 0x804758c
int __noreturn sub_804758C()
{
  return sub_80478D4();
}


// 0x8047594
void __fastcall __noreturn sub_8047594(int a1, int a2)
{
  unsigned __int8 *v2; // r7
  int v3; // r3
  int v4; // r3
  int v5; // r4
  int v6; // r0
  int v7; // r4
  int v8; // r0

  v2 = (a2 + 8 * a1);
  v3 = *v2;
  if ( v3 == 1 )
    sub_804760E(0, *(v2 + 1));
  if ( v3 == 2 )
  {
    v4 = v2[1];
    v5 = v2[5];
    v6 = sub_8047CFA(0, *(v2 + 1), v2[4]);
    sub_8047664(v6);
  }
  if ( v3 == 3 )
  {
    v7 = v2[5];
    v8 = sub_8047CFA(0, *(v2 + 1), v2[4]);
    sub_8047708(v8);
  }
  sub_8047760(0);
}


// 0x804760e
void __fastcall __spoils<R1,R2,R3,R12> __noreturn sub_804760E(int a1, int a2)
{
  int v2; // [sp+0h] [bp-18h]
  int v3; // [sp+4h] [bp-14h]

  render_graphicalText_8045F8C(byte_873D9FC, a2, &decomp_2013A00[512 * a1], (a1 << 10) + 100697088);
  render_graphicalText_8045F8C(*(v3 + 36), 16, &unk_2013C00 + v2, v2 + 100697600);
}


// 0x8047664
void __fastcall __spoils<R1,R2,R3,R12> __noreturn sub_8047664(int a1, unsigned int a2, int a3, int a4)
{
  int v4; // ST08_4
  int v5; // r3
  char v6; // zf
  unsigned int v7; // [sp+0h] [bp-24h]
  int v8; // [sp+4h] [bp-20h]
  int v9; // [sp+Ch] [bp-18h]

  v7 = a2;
  v8 = a3;
  v4 = a4;
  render_graphicalText_8045F8C(*(&off_80476E4 + (a2 >> 8)), a2, &decomp_2013A00[512 * a1], (a1 << 10) + 100697088);
  if ( v4 )
  {
    v5 = v8;
    if ( MEMORY[0x4E3A020] == 2 )
    {
      TestEventFlag(v7 + 7712);
      v5 = v8;
      if ( v6 )
      {
        TestEventFlag(v7 + 9248);
        v5 = v8;
        if ( v6 )
          v5 = 27;
      }
    }
  }
  else
  {
    v5 = 27;
  }
  render_graphicalText_8045F8C(byte_86EF71C, v5, &unk_2013C00 + v9, v9 + 100697600);
}


// 0x8047708
void __fastcall __spoils<R1,R2,R3,R12> __noreturn sub_8047708(int a1, unsigned int a2)
{
  int v2; // [sp+0h] [bp-18h]
  int v3; // [sp+4h] [bp-14h]

  render_graphicalText_8045F8C(byte_873EA50, a2 >> 2, &decomp_2013A00[512 * a1], (a1 << 10) + 100697088);
  render_graphicalText_8045F8C(*(v3 + 36), 16, &unk_2013C00 + v2, v2 + 100697600);
}


// 0x8047760
void __fastcall __spoils<R1,R2,R3,R12> __noreturn sub_8047760(int a1)
{
  int v1; // r5

  render_graphicalText_8045F8C(*(v1 + 36), 16, &decomp_2013A00[512 * a1], (a1 << 10) + 100697088);
}


// 0x8047790
void __fastcall __spoils<R1,R2,R3,R12> __noreturn sub_8047790(int a1, int a2, int a3)
{
  int v3; // r4
  int v4; // r5
  int v5; // r10
  int v6; // r7
  int v7; // r3
  int v8; // r4
  int v9; // r1
  int v10; // r0
  int v11; // r1
  int v12; // r6
  int v13; // ST00_4
  int v14; // ST04_4
  char v15; // zf
  int v16; // [sp+0h] [bp-14h]

  v6 = 8 * v3;
  v16 = a3;
  v8 = sub_8047CDC() << 10;
  *(*(v5 + oToolkit_Unk200a220_Ptr) + 8) = v9;
  v10 = *(v4 + 36);
  v11 = 15;
  v12 = **(v4 + 28);
  if ( v12 == 1 )
    v11 = 13;
  if ( v12 == 2 && v6 && (v13 = *(v4 + 36), v14 = v11, TestEventFlag(v7 + 9248), v10 = v13, v11 = v14, v15) )
  {
    v11 = 16;
  }
  else if ( !v16 )
  {
    v11 = 17;
  }
  render_graphicalText_8045F8C(v10, v11, &unk_2013C40 + v8, v8 + 100697664);
}


// 0x8047800
int __noreturn sub_8047800()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0

  v1 = *(v0 + 8);
  copyTiles();
  v2 = *(v0 + 8) - 21;
  return copyTiles();
}


// 0x8047834
void sub_8047834()
{
  int v0; // r5
  char *v1; // r7
  int v2; // r3

  if ( *(v0 + 5) )
  {
    v1 = &byte_2019A00[8 * (*(v0 + 20) + *(v0 + 24))];
    v2 = *v1;
    if ( v2 == 2 )
    {
      sub_80478B8();
      sub_80465A0(byte_8046B74);
      sub_811980C(*(v1 + 1), v1[4], 0, 0);
      sub_8119854(120, 80, 0);
      chatbox_runScript(&unk_202BA04, 127);
    }
    else if ( v2 == 1 )
    {
      chatbox_runScript(&unk_202BA04, *(v1 + 1));
      sub_80478B8();
    }
    else
    {
      chatbox_runScript(&unk_202DA04, *(v1 + 1) >> 2);
      sub_80478B8();
      sub_80465A0(byte_8046B84);
    }
  }
}


// 0x80478b8
int sub_80478B8()
{
  sub_8046696(0);
  sub_8046696(1);
  sub_8046696(2);
  return sub_8046696(3);
}


// 0x80478d4
int sub_80478D4()
{
  int v0; // r5
  int v1; // r10
  int v2; // r0
  int v3; // r0
  int v4; // r1

  v2 = 42 - *(v0 + 8);
  **(v0 + 28);
  copyTiles();
  v3 = *(v0 + 8) - 13;
  copyTiles();
  v4 = 14;
  if ( **(v0 + 28) == 1 )
    v4 = 13;
  *(*(v1 + oToolkit_Unk200a220_Ptr) + 8) = *(v0 + 40);
  return render_graphicalText_8045F8C(*(v0 + 36), v4, &unk_2015A00, 100705280);
}


// 0x8047950
signed int sub_8047950()
{
  int v0; // r5
  int v1; // r10
  int v2; // r4
  __int16 v3; // r0
  int v4; // r0
  __int16 v5; // r7
  int v6; // r0
  unsigned __int8 v7; // vf
  int v8; // r0
  int v9; // r0
  int v10; // r0
  signed int v11; // r1
  int v12; // r0
  int v13; // r1
  int v14; // r2
  int v15; // r1
  int v16; // r2
  signed int result; // r0

  *(v0 + 26) = *(v0 + 24);
  *(v0 + 22) = *(v0 + 20);
  v2 = **(v0 + 28);
  v3 = *(*(v1 + oToolkit_JoypadPtr) + 2);
  if ( v3 & 2 )
  {
    if ( !*(v0 + 5) )
    {
      sub_8047A80();
      goto LABEL_37;
    }
    goto LABEL_7;
  }
  if ( !*(v0 + 18) )
    goto LABEL_37;
  if ( v2 != 2 && *(*(v1 + oToolkit_JoypadPtr) + 2) & 0x100 )
  {
LABEL_7:
    sound_play(102);
    v4 = *(v0 + 5) ^ 0xFF;
    *(v0 + 5) = ~*(v0 + 5);
    if ( !v4 )
    {
      chatbox_runScript(*(v0 + 36), 1);
      sub_80478B8();
    }
    *(v0 + 13) = -1;
    goto LABEL_37;
  }
  if ( !*(v0 + 18) )
    goto LABEL_37;
  if ( v3 & 1 )
  {
    if ( !*(v0 + 5) )
    {
      sub_8047A96();
      goto LABEL_37;
    }
    goto LABEL_7;
  }
  v5 = *(*(v1 + oToolkit_JoypadPtr) + 4);
  if ( v5 & 0x40 )
  {
    v6 = *(v0 + 20);
    v7 = __OFSUB__(v6--, 1);
    *(v0 + 20) = v6;
    if ( (v6 < 0) ^ v7 )
    {
      *(v0 + 20) = 0;
      v8 = *(v0 + 24);
      v7 = __OFSUB__(v8--, 1);
      *(v0 + 24) = v8;
      if ( (v8 < 0) ^ v7 )
        *(v0 + 24) = 0;
    }
  }
  else if ( *(v0 + 18) > 5 && v2 == 2 && *(*(v1 + oToolkit_JoypadPtr) + 4) & 0x200 )
  {
    v9 = *(v0 + 24);
    v7 = __OFSUB__(v9, 5);
    v9 -= 5;
    *(v0 + 24) = v9;
    if ( (v9 < 0) ^ v7 )
      *(v0 + 24) = 0;
  }
  else if ( v5 & 0x80 )
  {
    v10 = *(v0 + 20) + 1;
    *(v0 + 20) = v10;
    v11 = *(v0 + 18);
    if ( v11 > 5 )
      v11 = 5;
    if ( v10 >= v11 )
    {
      v12 = v11 - 1;
      *(v0 + 20) = v11 - 1;
      v13 = *(v0 + 24) + 1;
      *(v0 + 24) = v13;
      v14 = *(v0 + 18) - v12;
      if ( v13 >= v14 )
        *(v0 + 24) = v14 - 1;
    }
  }
  else if ( *(v0 + 18) > 5 && v2 == 2 )
  {
    if ( *(*(v1 + oToolkit_JoypadPtr) + 4) & 0x100 )
    {
      v15 = *(v0 + 24) + 5;
      *(v0 + 24) = v15;
      v16 = *(v0 + 18) - 5;
      if ( v15 >= v16 )
        *(v0 + 24) = v16;
    }
  }
LABEL_37:
  if ( *(v0 + 20) != *(v0 + 22) || (result = *(v0 + 24), result != *(v0 + 26)) )
  {
    sound_play(102);
    result = 255;
    *(v0 + 13) = -1;
  }
  return result;
}


// 0x8047a80
int sub_8047A80()
{
  int v0; // r5

  *v0 = 20;
  chatbox_runScript(*(v0 + 36), 2);
  return sound_play(104);
}


// 0x8047a96
void sub_8047A96()
{
  int v0; // r5
  char *v1; // r7
  int v2; // r4
  int v3; // r1
  int v4; // r1
  char v5; // zf
  signed int v6; // r1
  int v7; // r2
  int v8; // r7
  int v9; // r6

  v1 = &byte_2019A00[8 * (*(v0 + 20) + *(v0 + 24))];
  *(v0 + 32) = v1;
  v2 = *(v1 + 1);
  if ( *v1 == 3 )
    v2 += 144;
  v3 = *(v1 + 3);
  sub_8047CDC();
  chatbox_8045EFC(v2, v1[4], v4, v4);
  if ( **(v0 + 28) != 2 )
  {
    sub_8047CA0(*v1, *(v1 + 1));
    if ( !v5 )
    {
      sound_play(105);
      return;
    }
    v6 = 5;
    v7 = *v1;
    if ( v7 != 2 )
    {
      v6 = 4;
      if ( v7 != 1 )
        v6 = 11;
    }
    v8 = v6;
    *v0 = 24;
    *(v0 + 7) = 0;
    goto LABEL_20;
  }
  v9 = v1[1];
  v8 = 5;
  *v0 = 24;
  *(v0 + 7) = 0;
  TestEventFlag(v2 + 7712);
  if ( v5 )
  {
    TestEventFlag(v2 + 9248);
    if ( v5 )
    {
      v8 = 24;
      *(v0 + 6) = 27;
      sub_8048F68(v2);
      if ( !v5 )
      {
        v8 = 26;
        *(v0 + 6) = 27;
      }
      *v0 = 36;
      *(v0 + 1) = 24;
      if ( !v9 )
      {
        v8 = 25;
        *(v0 + 6) = 28;
        *(v0 + 1) = 28;
        sub_8048F68(v2);
        if ( !v5 )
        {
          v8 = 26;
          *(v0 + 6) = 29;
        }
        goto LABEL_21;
      }
      goto LABEL_20;
    }
  }
  if ( v9 )
  {
LABEL_20:
    sound_play(103);
    goto LABEL_21;
  }
  v8 = 28;
  *v0 = 28;
LABEL_21:
  chatbox_runScript(*(v0 + 36), v8);
}


// 0x8047b88
int __fastcall sub_8047B88(int a1, int a2, int a3, int a4)
{
  int v4; // r5
  int v5; // r10
  _DWORD *v6; // r7
  int v7; // r5
  unsigned __int8 *v8; // r7
  unsigned __int8 *v9; // r6
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r4
  bool v14; // zf
  char *v15; // r7
  int result; // r0
  int v17; // r1
  int v18; // r5
  char *v19; // r7
  _WORD *v20; // r6
  int v21; // r4
  int v22; // r3
  int v23; // r1
  int v24; // r0
  char v25; // r0
  char *v26; // r7
  int v27; // r1
  int v28; // [sp-Ch] [bp-20h]
  int v29; // [sp-8h] [bp-1Ch]
  int v30; // [sp-4h] [bp-18h]

  ZeroFillByWord(byte_2019A00, 0x80u, a3, a4);
  v6 = *(v4 + 28);
  if ( *v6 == 2 )
  {
    v18 = v6[3];
    v19 = &byte_201AE00;
    v20 = &unk_20199F8;
    v21 = 0;
    do
    {
      sub_8047CA8(*(v19 + 1));
      if ( v14 )
      {
        v20 += 4;
        *v20 = *v19;
        v23 = *(v19 + 1);
        v20[1] = v23;
        *(v20 + 4) = v19[4];
        *(v20 + 5) = v19[5];
        v20[3] = *(v19 + 3);
        v24 = v19[1];
        *(v20 + 1) = v24;
        if ( v23 == v22 && v24 != 255 )
        {
          v25 = v24 - 1;
          v19[1] = v25;
          *(v20 + 1) = v25;
        }
      }
      v19 += 8;
      ++v21;
    }
    while ( v21 < v18 );
    v26 = byte_2019A00;
    result = 0;
    v27 = 0;
    do
    {
      if ( *(v26 + 1) )
        ++result;
      v26 += 8;
      ++v27;
    }
    while ( v27 < v18 );
  }
  else
  {
    v7 = v6[3];
    v8 = (v6[2] + *(v5 + oToolkit_Unk20032c8_Ptr));
    v9 = &unk_20199F8;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if ( *v8 && v8[1] && (*v8 != v10 || *(v8 + 1) != v11 || v8[4] != v12) )
      {
        v28 = v10;
        v29 = v11;
        v30 = v12;
        sub_8047CB0(*v8, *(v8 + 1));
        v10 = v28;
        v11 = v29;
        v12 = v30;
        if ( v14 )
        {
          v14 = getPETNaviSelect() == 0;
          v10 = v28;
          v11 = v29;
          v12 = v30;
          if ( v14 || *v8 != 1 || *(v8 + 1) != 112 )
          {
            v9 += 8;
            *v9 = *v8;
            v9[1] = v8[1];
            *(v9 + 1) = *(v8 + 1);
            v9[4] = v8[4];
            v9[5] = v8[5];
            *(v9 + 3) = *(v8 + 3);
            v10 = *v9;
            v11 = *(v9 + 1);
            v12 = v9[4];
          }
        }
      }
      v8 += 8;
      ++v13;
    }
    while ( v13 < v7 );
    v15 = byte_2019A00;
    result = 0;
    v17 = 0;
    do
    {
      if ( v15[1] )
        ++result;
      v15 += 8;
      ++v17;
    }
    while ( v17 < v7 );
  }
  return result;
}


// 0x8047ca0
int sub_8047CA0()
{
  return 0;
}


// 0x8047ca8
int sub_8047CA8()
{
  return 0;
}


// 0x8047cb0
int sub_8047CB0()
{
  return 0;
}


// 0x8047cb6
int sub_8047CB6()
{
  unsigned __int16 *v0; // r5
  int result; // r0

  result = v0[9];
  if ( result <= 4 )
  {
    if ( v0[9] )
    {
      if ( --result <= v0[10] )
        v0[10] = result;
    }
  }
  else if ( result < v0[12] + 5 )
  {
    result -= 5;
    v0[12] = result;
  }
  return result;
}


// 0x8047cdc
void __spoils<R1,R2,R3> sub_8047CDC()
{
  int v0; // r5

  **(v0 + 28);
}


// 0x8047cec
void sub_8047CEC()
{
  CopyWords(byte_80469F0, byte_202F800, dword_168);
}


// 0x8047cfa
void __fastcall __spoils<R2,R3,R12> sub_8047CFA(int a1, signed int a2, int a3)
{
  __int16 v3; // r4
  int v4; // r6
  int v5; // r6
  int v6; // r0
  int v7; // r6
  signed __int16 v8; // r2
  char *v9; // r7
  int v10; // r3
  signed int v11; // r0
  signed int v12; // r3
  signed int v13; // r0

  if ( v4 )
  {
    v5 = a1;
    if ( sub_803D138() )
      return;
    v6 = v5;
  }
  else
  {
    v7 = a1;
    if ( sub_8021BC0(a2, a3) )
      return;
    v6 = v7;
  }
  v8 = 12288;
  if ( v6 & 1 )
    v8 = 0x4000;
  v9 = &byte_202F800[72 * v6];
  v10 = 0;
  v11 = 0;
  do
  {
    *&v9[v10] = (*&v9[v10] & 0xFFF | v8) + (v3 << 13);
    v10 += 2;
    ++v11;
  }
  while ( v11 < 10 );
  v12 = 36;
  v13 = 0;
  do
  {
    *&v9[v12] = (*&v9[v12] & 0xFFF | v8) + (v3 << 13);
    v12 += 2;
    ++v13;
  }
  while ( v13 < 10 );
}


// 0x8047d84
char *sub_8047D84()
{
  return &byte_2019A00[8 * (word_2011C24 + word_2011C28)];
}


// 0x8048c24
signed int __fastcall sub_8048C24(int a1)
{
  int v1; // r10
  int *v2; // r2
  int v3; // r4
  int v4; // r2
  int v5; // r0
  int v6; // ST00_4
  bool v7; // zf
  int v9; // [sp-8h] [bp-1Ch]

  v2 = &dword_8046B98[4 * a1];
  v3 = v2[3];
  v4 = v2[2] + *(v1 + oToolkit_Unk20032c8_Ptr);
  v5 = 0;
  do
  {
    if ( *(v4 + 1) )
    {
      v6 = v5;
      v9 = v4;
      v7 = getPETNaviSelect() == 0;
      v5 = v6;
      v4 = v9;
      if ( v7 || *v9 != 1 || *(v9 + 2) != 112 )
        return 1;
    }
    v4 += 8;
    ++v5;
  }
  while ( v5 < v3 );
  return 0;
}


// 0x8048c68
char *__fastcall sub_8048C68(int a1, int a2, int a3, int a4)
{
  int v4; // r10
  char *result; // r0
  int v6; // r1
  signed int v7; // r2
  unsigned __int8 v8; // vf
  char *v9; // ST00_4
  int v10; // ST04_4
  signed int v11; // ST08_4

  ZeroFillByWord(*(v4 + oToolkit_Unk20032c8_Ptr), 0xE80u, a3, a4);
  result = byte_8047DA0;
  v6 = *(v4 + oToolkit_Unk20032c8_Ptr);
  v7 = 3712;
  while ( 1 )
  {
    v8 = __OFSUB__(v7, 8);
    v7 -= 8;
    if ( (v7 < 0) ^ v8 )
      break;
    if ( result[1] )
    {
      v9 = result;
      v10 = v6;
      v11 = v7;
      CopyBytes(result, v6, 8);
      result = v9;
      v6 = v10;
      v7 = v11;
    }
    result += 8;
    v6 += 8;
  }
  return result;
}


// 0x8048c98
char *sub_8048C98()
{
  int v0; // r10
  char *result; // r0
  int v2; // r1
  signed int v3; // r2
  unsigned __int8 v4; // vf

  result = byte_8047DA0;
  v2 = *(v0 + oToolkit_Unk20032c8_Ptr);
  v3 = 3712;
  while ( 1 )
  {
    v4 = __OFSUB__(v3, 8);
    v3 -= 8;
    if ( (v3 < 0) ^ v4 )
      break;
    if ( result[1] )
    {
      *v2 = *result;
      *(v2 + 2) = *(result + 1);
      *(v2 + 4) = result[4];
      *(v2 + 6) = *(result + 3);
    }
    result += 8;
    v2 += 8;
  }
  return result;
}


// 0x8048ccc
int __fastcall sub_8048CCC(int a1, unsigned __int8 *a2)
{
  int v2; // r10
  unsigned __int8 *v3; // r6
  int *v4; // r7
  int v5; // r5
  int v6; // r8
  int result; // r0
  int v8; // r1
  unsigned __int8 *v9; // r7
  int v10; // r4
  int v11; // r1
  _BYTE *v12; // r7
  int v13; // ST00_4

  v3 = a2;
  v4 = &dword_8046B98[4 * a1];
  v5 = v4[3];
  v6 = v4[2] + *(v2 + oToolkit_Unk20032c8_Ptr);
  result = 0;
  do
  {
    if ( *v3 )
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if ( *v9 && *v3 == *v9 && *(v3 + 1) == *(v9 + 1) && v3[4] == v9[4] )
        {
          v10 = v9[1] + v3[1];
          if ( v10 > 255 )
            LOBYTE(v10) = -1;
          v9[1] = v10;
          goto LABEL_16;
        }
        v9 += 8;
        ++v8;
      }
      while ( v8 < v5 );
      v11 = 0;
      v12 = v6;
      while ( *v12 )
      {
        v12 += 8;
        if ( ++v11 >= v5 )
          goto LABEL_16;
      }
      v13 = result;
      CopyBytes(v3, v12, 8);
      result = v13;
    }
LABEL_16:
    v3 += 8;
    ++result;
  }
  while ( result < v5 );
  return result;
}


// 0x8048d60
int __fastcall sub_8048D60(int a1, int a2)
{
  int v2; // r10
  int v3; // r6
  int v4; // r7
  __int64 v5; // r0
  int v6; // r4

  v3 = a2;
  LODWORD(v5) = 16 * a1;
  v4 = *(&dword_8046B98[2] + v5) + *(v2 + oToolkit_Unk20032c8_Ptr);
  v5 = v5;
  while ( !*v4 || v3 != *(v4 + 2) )
  {
    v4 += 8;
    if ( ++HIDWORD(v5) >= *(&dword_8046B98[3] + v5) )
      return v5;
  }
  v6 = *(v4 + 1) + 1;
  if ( v6 > 255 )
    LOBYTE(v6) = -1;
  *(v4 + 1) = v6;
  return v5;
}


// 0x8048d9c
int __fastcall sub_8048D9C(int a1)
{
  int v1; // r10

  return dword_8046B98[4 * a1 + 2] + *(v1 + oToolkit_Unk20032c8_Ptr);
}


// 0x8048dae
signed int __fastcall sub_8048DAE(int a1, int a2, int a3, int a4)
{
  int v4; // r10
  int v5; // r0
  unsigned __int8 *v6; // r7
  int v7; // r6
  int v8; // r4

  v5 = 4 * a1;
  v6 = (dword_8046B98[v5 + 2] + *(v4 + oToolkit_Unk20032c8_Ptr));
  v7 = 0;
  while ( 1 )
  {
    if ( *v6 )
    {
      if ( *v6 == a2 && *(v6 + 1) == a3 && v6[4] == a4 )
      {
        v8 = v6[1];
        if ( v8 > 0 )
          break;
      }
    }
    v6 += 8;
    if ( ++v7 >= dword_8046B98[v5 + 3] )
      return 0;
  }
  if ( v8 != 255 )
    v6[1] = v8 - 1;
  return 1;
}


// 0x8048df8
int __fastcall sub_8048DF8(int a1, int a2, unsigned __int8 *a3)
{
  int v3; // r10
  int *v4; // r7
  int result; // r0
  int v6; // r4
  int v7; // r3
  int v8; // r7
  int v9; // r5
  unsigned __int8 *v10; // r6
  unsigned int v11; // r4
  int v12; // r8
  int v13; // r9
  int v14; // r3
  unsigned __int8 *v15; // r4
  char v16; // zf
  char *v17; // r0
  int v18; // r12
  int v19; // r0
  char v20; // r1
  int v21; // r4
  int v22; // r4

  v4 = &dword_8046B98[4 * a1];
  result = *v4;
  v6 = v4[3];
  v7 = *(v3 + oToolkit_Unk20032c8_Ptr);
  v8 = v4[2] + v7;
  if ( result == 2 )
  {
    v9 = a2;
    v10 = a3;
    v11 = 16 * v6;
    v12 = a2 + v11;
    ZeroFillByWord(a2, v11, a2 + v11, v7);
    v13 = &v10[v11];
    ZeroFillByWord(v10, v11, &v10[v11], v14);
    while ( *v8 )
    {
      v15 = v10;
      TestEventFlag(*(v8 + 2) + 7712);
      if ( v16 )
      {
        TestEventFlag(*(v8 + 2) + 8224);
        if ( v16 )
        {
          TestEventFlag(*(v8 + 2) + 8736);
          if ( v16 )
            v15 = v9;
        }
      }
      v17 = getChip_8021DA8(*(v8 + 2));
      v19 = &v15[8 * (*(v17 + 14) + v18)];
      *v19 = *v8;
      *(v19 + 1) = *(v8 + 1);
      *(v19 + 2) = *(v8 + 2);
      *(v19 + 4) = *(v8 + 4);
      v20 = 0;
      if ( !v18 )
        v20 = 1;
      *(v19 + 5) = v20;
      *(v19 + 6) = *(v8 + 6);
      v8 += 8;
    }
    do
    {
      if ( !*v9 )
      {
        v21 = v9 + 8;
        while ( !*v21 )
        {
          v21 += 8;
          if ( v21 >= v12 )
            goto LABEL_21;
        }
        *v9 = *v21;
        *(v9 + 1) = *(v21 + 1);
        *(v9 + 2) = *(v21 + 2);
        *(v9 + 4) = *(v21 + 4);
        *(v9 + 5) = *(v21 + 5);
        *(v9 + 6) = *(v21 + 6);
        *v21 = 0;
        *(v21 + 1) = 0;
        *(v21 + 2) = 0;
        *(v21 + 4) = 0;
        *(v21 + 5) = 0;
        *(v21 + 6) = 0;
      }
      v9 += 8;
    }
    while ( v9 < v12 );
    do
    {
LABEL_21:
      result = *v10;
      if ( !*v10 )
      {
        v22 = (v10 + 8);
        while ( !*v22 )
        {
          v22 += 8;
          if ( v22 >= v13 )
            return result;
        }
        *v10 = *v22;
        v10[1] = *(v22 + 1);
        *(v10 + 1) = *(v22 + 2);
        v10[4] = *(v22 + 4);
        v10[5] = *(v22 + 5);
        *(v10 + 3) = *(v22 + 6);
        *v22 = 0;
        *(v22 + 1) = 0;
        *(v22 + 2) = 0;
        *(v22 + 4) = 0;
        *(v22 + 5) = 0;
        *(v22 + 6) = 0;
      }
      v10 += 8;
    }
    while ( v10 < v13 );
  }
  return result;
}


// 0x8048f68
int __fastcall sub_8048F68(int result)
{
  __int16 *i; // r1

  for ( i = &word_8048BE0; *i && result != *i; ++i )
    ;
  return result;
}


// 0x8048f88
int sub_8048F88()
{
  return sub_8048CCC(4, byte_8048BE4);
}


// 0x8048f9c
signed int __fastcall sub_8048F9C(__int16 a1, int a2, int a3, int a4)
{
  _BYTE **v4; // r10
  __int16 v5; // r4
  signed int result; // r0

  v5 = a1;
  ZeroFillByWord(&byte_200A290, &loc_1B0, a3, a4);
  **v4 = 48;
  word_200A2B2 = v5;
  word_200A2B4 = 8;
  result = 10;
  word_200A2B6 = 10;
  return result;
}


// 0x8048fc4
int sub_8048FC4()
{
  return byte_200A290;
}


// 0x8048fd4
signed int cb_8048FD4()
{
  signed int result; // r0
  char v1; // zf

  (*(&off_8048FF8 + byte_200A290))();
  result = sub_800A7D0();
  if ( v1 )
    result = sub_803C59C(218, 2);
  return result;
}


// 0x804900c
int sub_804900C()
{
  int v0; // r5
  int v1; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int v5; // r0
  char v6; // zf
  int result; // r0

  chatbox_8040818();
  sub_8001778(&byte_40);
  sub_8001788();
  sub_80017A0();
  v1 = sub_80015FC(17);
  sub_8005F40(v1, v2, v3, v4);
  sub_803BEC0();
  v5 = sub_8049CBC();
  sub_8049D42(v5);
  if ( v6 || *(v0 + 34) )
  {
    *v0 = 12;
    result = 0;
    *(v0 + 1) = 0;
  }
  else
  {
    *v0 = 8;
    result = 0;
    *(v0 + 1) = 0;
  }
  return result;
}


// 0x8049058
int sub_8049058()
{
  int result; // r0
  int v1; // r1
  int v2; // r2
  int v3; // r3
  char v4; // zf
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r0

  result = engine_isScreeneffectAnimating();
  if ( !v4 )
  {
    sub_80017AA(result, v1, v2, v3);
    sub_800183C(v5, v6, v7, v8);
    sub_8001850();
    chatbox_8040818();
    v9 = sub_8001778(&byte_40);
    sub_811F758(v9);
  }
  return result;
}


// 0x8049080
int sub_8049080()
{
  int v0; // r5

  (*(&off_8049098 + *(v0 + 1)))();
  return sub_803CB78();
}


// 0x8049104
signed int sub_8049104()
{
  int v0; // r5
  signed int v1; // r0
  int v2; // r0
  signed int result; // r0

  sub_8001778(8000);
  sub_8001788();
  sub_80017A0();
  sub_80015FC(18);
  v1 = sub_8046664();
  copyData_8049AAC(v1);
  chatbox_8040818();
  v2 = sub_803BE30(2);
  sub_8049D70(v2);
  sub_803C1A8(v0 + 240, v0 + 48, v0 + 256, v0 + 144);
  sub_803C320();
  sub_803C26A();
  result = 4;
  *(v0 + 1) = 4;
  return result;
}


// 0x8049158
int sub_8049158()
{
  int v0; // r5

  *(v0 + 1) = 8;
  return sub_803A1B0();
}


// 0x8049164
int sub_8049164()
{
  int v0; // r5
  char v1; // zf

  sub_813D648();
  if ( v1 )
  {
    *(v0 + 1) = 12;
  }
  else
  {
    engine_setScreeneffect(8, 16);
    sub_803BB2C(19);
    *(v0 + 1) = 16;
  }
  return sub_803A1B0();
}


// 0x804918a
int __fastcall sub_804918A(int a1)
{
  int v1; // r5
  int v2; // r0
  int v3; // r0
  int v4; // r0

  sub_8146588(a1);
  v2 = sub_814695C(v1 + 240);
  v3 = sub_8049D7C(v2);
  v4 = sub_81469BC(v1 + 256, v3);
  sub_8132664(v4);
  engine_setScreeneffect(8, 16);
  sub_803BB2C(10);
  *(v1 + 1) = 24;
  return sub_803A1B0();
}


// 0x80491c4
int sub_80491C4()
{
  int v0; // r5
  char v1; // zf

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    chatbox_8045F3C(8);
    if ( !v1 )
    {
      engine_setScreeneffect(12, 16);
      *(v0 + 1) = 20;
    }
  }
  return sub_803A1B0();
}


// 0x80491e6
int sub_80491E6()
{
  _BYTE *v0; // r5
  char v1; // zf

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    *v0 = 4;
    v0[1] = 0;
  }
  return sub_803A1B0();
}


// 0x80491fc
int sub_80491FC()
{
  int v0; // r5
  char v1; // zf

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    sub_803C320();
    *(v0 + 1) = 28;
    sub_803BB7C(30);
    sub_803BB90(0);
  }
  return sub_803A1B0();
}


// 0x804921e
int sub_804921E()
{
  int v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r0

  sub_803BB80();
  if ( !v2 )
  {
    if ( *(*(v1 + oToolkit_JoypadPtr) + 2) & 2 )
    {
      if ( !(sub_803CAF8() & 8) )
        sub_803C28A(131);
    }
    else
    {
      chatbox_8045F3C(8);
      if ( !v2 )
      {
        sub_803BB94();
        if ( !v2 )
        {
          sub_803C558();
          v3 = sub_803BB90(30);
          sub_813D638(v3);
          if ( !v2 )
          {
            sub_803BB2C(11);
            *(v0 + 1) = 32;
          }
        }
      }
    }
  }
  return sub_803A1B0();
}


// 0x8049272
int sub_8049272()
{
  _BYTE *v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    v0[14] = 0;
    v0[11] = 0;
    v0[12] = 4;
    v0[1] = 36;
  }
  return sub_803A1B0();
}


// 0x8049290
int sub_8049290()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf
  signed int v3; // r0
  int v4; // r0

  sub_803CB00(1);
  sub_803CB18();
  if ( v2 )
  {
    sub_813D638(v1);
    if ( v2 )
    {
      sub_803C320();
      *(v0 + 1) = 28;
      sub_803BB7C(30);
      sub_803BB90(0);
      sub_803BB2C(14);
    }
    else
    {
      v3 = sub_803A5F4(127);
      if ( !v2 )
        (dword_80492E4[v3])();
    }
  }
  v4 = sub_803A104();
  return sub_8049BC0(v4);
}


// 0x80492f4
int sub_80492F4()
{
  int v0; // r5
  char v1; // zf

  sub_803CB18();
  if ( v1 )
  {
    sub_803C28A(131);
    *(v0 + 1) = 92;
  }
  return 0;
}


// 0x804930c
signed int __fastcall sub_804930C(int a1)
{
  _BYTE *v1; // r5
  int v2; // r2
  int v3; // r0
  int v4; // r1
  char *v5; // ST00_4
  int v6; // ST04_4
  signed int result; // r0

  v2 = sub_813D638(a1);
  v3 = v1[14] + v1[11];
  if ( v3 >= v2 )
  {
    sound_play(105);
    result = 0;
  }
  else
  {
    v5 = sub_803C440(v3);
    v6 = v4;
    sub_803C150(v5, &unk_202AB00, v4, &unk_202AF00);
    sub_803C2AA(&unk_202AB00, &unk_202AF00, v5, v6);
    sub_803BB2C(12);
    v1[1] = 40;
    sound_play(129);
    result = 1;
  }
  return result;
}


// 0x8049360
int sub_8049360()
{
  _BYTE *v0; // r5
  char v1; // zf
  int v2; // r0
  int v3; // r1
  char v4; // ST00_1
  int v5; // r0

  chatbox_8045F3C(8);
  if ( !v1 )
  {
    if ( chatbox_8045F4C() || (v2 = sub_813D638(0), v3 = v0[11], v0[14] + v3 >= v2) )
    {
      sub_803BB2C(11);
      v0[1] = 48;
    }
    else
    {
      v4 = v0[14] + v3;
      sub_813D5C8();
      v0[22] = v4;
      sub_803CB00(4);
      sub_803CB00(256);
      sub_803BB2C(13);
      v0[1] = 44;
    }
  }
  v5 = sub_803A104();
  return sub_8049BC0(v5);
}


// 0x80493bc
int sub_80493BC()
{
  int v0; // r5
  char v1; // zf
  int v2; // r0

  sub_803CB18();
  if ( !v1 )
    goto LABEL_10;
  sub_803CB18();
  if ( !v1 )
  {
LABEL_9:
    *(v0 + 1) = 60;
    goto LABEL_10;
  }
  sub_803C330();
  if ( !v1 )
  {
    sub_803C2A0();
    sub_803CB00(32);
    goto LABEL_9;
  }
  sub_803CB18();
  if ( !v1 )
    *(v0 + 1) = 68;
LABEL_10:
  v2 = sub_803A104();
  return sub_8049BC0(v2);
}


// 0x80493fe
int sub_80493FE()
{
  int v0; // r5
  char v1; // zf
  int v2; // r0

  chatbox_8045F3C(128);
  if ( v1 )
    *(v0 + 1) = 36;
  v2 = sub_803A104();
  return sub_8049BC0(v2);
}


// 0x8049416
int sub_8049416()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf
  int v3; // r0
  int v4; // r0

  v1 = sub_8049680();
  if ( !v2 )
  {
    if ( !sub_814656C(v1) )
    {
      sub_803BB2C(15);
      *(v0 + 1) = 56;
    }
    goto LABEL_11;
  }
  sub_803CB18();
  if ( !v2 )
  {
LABEL_8:
    *(v0 + 1) = 60;
    goto LABEL_11;
  }
  sub_803C330();
  if ( !v2 )
  {
    sub_803C2A0();
    sub_803CB00(32);
    goto LABEL_8;
  }
  sub_803CB18();
  if ( !v2 )
  {
    v3 = sub_8132648();
    sub_8148D24(v3);
    *(v0 + 1) = 68;
  }
LABEL_11:
  v4 = sub_803A104();
  return sub_8049BC0(v4);
}


// 0x804946e
int sub_804946E()
{
  int v0; // r5
  char v1; // zf
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0

  sub_80496B4();
  if ( !v1 )
  {
    v2 = chatbox_8045F3C(8);
    if ( !v1 )
    {
      sub_8146588(v2);
      v3 = sub_814695C(v0 + 240);
      v4 = sub_8049D7C(v3);
      v5 = sub_81469BC(v0 + 256, v4);
      v6 = sub_8132664(v5);
      if ( sub_81465BC(v6) )
      {
        sub_803BB2C(10);
        *(v0 + 1) = 24;
      }
      else
      {
        sub_803C320();
        sub_803BB2C(19);
        *(v0 + 1) = 16;
      }
    }
  }
  v7 = sub_803A104();
  return sub_8049BC0(v7);
}


// 0x80494ca
int sub_80494CA()
{
  int v0; // r0

  v0 = sub_803A104();
  return sub_8049BC0(v0);
}


// 0x80494d6
int sub_80494D6()
{
  return sub_81291D8();
}


// 0x80494de
int sub_80494DE()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf
  int v3; // r4
  int v4; // r0

  sub_803CB18();
  if ( v2 )
  {
    sub_813D60C(v1);
    if ( v2 )
    {
      sound_play(131);
      v3 = 15;
      sub_803CB18();
      if ( v2 )
      {
        v3 = 16;
        sub_803CB18();
        if ( v2 )
          v3 = 17;
      }
      sub_803BB2C(v3);
      *(v0 + 1) = 64;
    }
  }
  else
  {
    sub_803CB0C(256);
    *(v0 + 1) = 68;
  }
  v4 = sub_803A104();
  return sub_8049BC0(v4);
}


// 0x804952c
int sub_804952C()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0

  v1 = chatbox_8045F3C(8);
  if ( !v2 )
  {
    sub_8146588(v1);
    v3 = sub_814695C(v0 + 240);
    v4 = sub_8049D7C(v3);
    v5 = sub_81469BC(v0 + 256, v4);
    v6 = sub_8132664(v5);
    if ( sub_81465BC(v6) )
    {
      sub_803BB2C(10);
      *(v0 + 1) = 24;
    }
    else
    {
      sub_803C320();
      sub_803BB2C(19);
      *(v0 + 1) = 16;
    }
  }
  v7 = sub_803A104();
  return sub_8049BC0(v7);
}


// 0x8049582
int sub_8049582()
{
  int v0; // r5
  char v1; // zf

  sub_8049704();
  if ( !v1 )
  {
    engine_setScreeneffect(12, 16);
    *(v0 + 1) = 80;
  }
  return sub_803A1B0();
}


// 0x804959c
int sub_804959C()
{
  char v0; // zf
  int v1; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r3

  engine_isScreeneffectAnimating();
  if ( v0 )
    return sub_803A1B0();
  sub_8001850();
  return sub_803CCC0(v1, v2, v3, v4);
}


// 0x80495b4
int sub_80495B4()
{
  int v0; // r5
  char v1; // zf

  sub_80496B4();
  if ( !v1 )
  {
    engine_setScreeneffect(12, 16);
    *(v0 + 1) = 88;
  }
  return sub_803A1B0();
}


// 0x80495ce
int sub_80495CE()
{
  char v0; // zf
  int v1; // r1
  int v2; // r2
  int v3; // r3

  engine_isScreeneffectAnimating();
  if ( v0 )
    return sub_803A1B0();
  sub_8001850();
  return sub_803CB8C(sub_8039570, v1, v2, v3);
}


// 0x80495ec
int sub_80495EC()
{
  int v0; // r5
  char v1; // zf

  sub_80496B4();
  if ( !v1 )
  {
    engine_setScreeneffect(12, 16);
    *(v0 + 1) = 96;
  }
  return sub_803A1B0();
}


// 0x8049606
int sub_8049606()
{
  _BYTE *v0; // r5
  char v1; // zf

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    *v0 = 4;
    v0[1] = 0;
  }
  return sub_803A1B0();
}


// 0x804961c
int sub_804961C()
{
  int v0; // r5
  char v1; // zf

  sub_80496B4();
  if ( !v1 )
  {
    engine_setScreeneffect(12, 16);
    *(v0 + 1) = 104;
  }
  return sub_803A1B0();
}


// 0x8049636
int sub_8049636()
{
  _BYTE *v0; // r5
  char v1; // zf

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    *v0 = 4;
    v0[1] = 0;
  }
  return sub_803A1B0();
}


// 0x804964c
signed int sub_804964C()
{
  int v0; // r5
  int v1; // r0
  int v2; // r4
  int v3; // r1
  signed int result; // r0

  v1 = sub_803C620();
  v2 = v1;
  if ( v3 || !v1 )
  {
    sub_8147F98();
    result = 0;
  }
  else
  {
    sub_813D978(v1);
    *(v0 + 1) = *(&dword_804967C + v2);
    sub_8147F98();
    result = 1;
  }
  return result;
}


// 0x8049680
signed int sub_8049680()
{
  int v0; // r5
  int v1; // r0
  int v2; // r4
  int v3; // r1
  int v4; // r4
  int v5; // r0
  signed int result; // r0

  v1 = sub_803C620();
  v2 = v1;
  if ( v3 || !v1 )
  {
    (sub_8148224)();
    result = 0;
  }
  else
  {
    sub_813D978(v1);
    v4 = 2 * v2;
    *(v0 + 1) = dword_80496EC[v4];
    v5 = (dword_80496EC[v4 + 1])();
    sub_8148224(v5);
    result = 1;
  }
  return result;
}


// 0x80496b4
signed int sub_80496B4()
{
  int v0; // r5
  int v1; // r0
  int v2; // r1
  char v3; // zf

  v1 = sub_803C620();
  if ( !v2 )
  {
    if ( v1 == 1 )
    {
      *(v0 + 1) = &byte_4C;
      v1 = sub_813D750();
    }
    else
    {
      v1 = sub_813D60C(v1);
      if ( v3 )
        return 1;
    }
  }
  sub_8148224(v1);
  return 0;
}


// 0x8049704
signed int sub_8049704()
{
  int v0; // r0
  int v1; // r0
  char v2; // zf

  v0 = sub_803C620();
  v1 = sub_813D60C(v0);
  if ( v2 )
    return 1;
  sub_8148224(v1);
  return 0;
}


// 0x804971c
int sub_804971C()
{
  int v0; // r5

  return (*(&off_8049730 + *(v0 + 1)))();
}


// 0x8049770
void __noreturn sub_8049770()
{
  _BYTE *v0; // r5
  signed int v1; // r0

  sub_8001778(8000);
  sub_8001788();
  sub_80017A0();
  sub_80015FC(19);
  v1 = sub_8046664();
  copyData_8049A18(v1);
  engine_setScreeneffect(8, 16);
  v0[8] = 0;
  v0[18] = 0;
  v0[28] = 0;
  v0[29] = 0;
  v0[19] = 0;
  sub_803BEC0();
  sub_8049CBC();
  sub_803A740();
  sub_803A752();
}


// 0x80497d0
void __noreturn sub_80497D0()
{
  int v0; // r5
  char v1; // zf

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    sub_803BB2C(20);
    sub_803BB7C(15);
    *(v0 + 1) = 8;
  }
  sub_803A820();
}


// 0x80497ee
void __noreturn sub_80497EE()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    sub_803BB80();
    if ( !v1 )
      *(v0 + 1) = 12;
  }
  sub_803A820();
}


// 0x8049808
void sub_8049808()
{
  signed int v0; // r0
  char v1; // zf

  v0 = sub_803AFC2(0);
  if ( !v1 )
    (dword_804982C[v0])();
  sub_803A7B8();
}


// 0x8049844
void __noreturn sub_8049844()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    if ( chatbox_8045F4C() )
    {
      *(v0 + 1) = 12;
    }
    else
    {
      engine_setScreeneffect(12, 16);
      *(v0 + 1) = 20;
    }
  }
  sub_803A820();
}


// 0x804986e
void __noreturn sub_804986E()
{
  _BYTE *v0; // r5
  int v1; // r0
  char v2; // zf

  v1 = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    sub_8049CBC(v1);
    *v0 = 4;
    v0[1] = 0;
  }
  sub_803A820();
}


// 0x8049888
void __noreturn sub_8049888()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    if ( chatbox_8045F4C() )
      *(v0 + 1) = 12;
    else
      *(v0 + 1) = 32;
  }
  sub_803A820();
}


// 0x80498aa
void __noreturn sub_80498AA()
{
  _BYTE *v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    v0[19] = 0;
    sub_803C0BE(16, 48);
    v0[16] = sub_803C132(16, 48);
    v0[1] = 12;
  }
  sub_803A820();
}


// 0x80498d4
void __noreturn sub_80498D4()
{
  int v0; // r5

  *(v0 + 8) = 0;
  *(v0 + 1) = 36;
  sub_803A820();
}


// 0x80498e4
void __noreturn sub_80498E4()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
    *(v0 + 1) = 40;
  sub_803A820();
}


// 0x80498f8
void sub_80498F8()
{
  signed int v0; // r0
  char v1; // zf

  v0 = sub_803AFC2(0);
  if ( !v1 )
    (dword_804991C[v0])();
  sub_803A7EC();
}


// 0x8049934
void __noreturn sub_8049934()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    if ( *(v0 + 3) == 1 )
    {
      *(v0 + 1) = 12;
    }
    else if ( chatbox_8045F4C() )
    {
      *(v0 + 1) = 40;
    }
    else
    {
      engine_setScreeneffect(12, 16);
      *(v0 + 1) = 48;
    }
  }
  sub_803A820();
}


// 0x804996a
void __noreturn sub_804996A()
{
  _BYTE *v0; // r5
  int v1; // r0
  char v2; // zf

  v1 = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    sub_8049CBC(v1);
    *v0 = 4;
    v0[1] = 0;
  }
  sub_803A820();
}


// 0x8049984
void __noreturn sub_8049984()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    if ( chatbox_8045F4C() )
    {
      *(v0 + 1) = 40;
    }
    else
    {
      engine_setScreeneffect(12, 16);
      *(v0 + 1) = 60;
    }
  }
  sub_803A820();
}


// 0x80499ae
void __noreturn sub_80499AE()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    *(v0 + 19) = 0;
    sub_803C0BE(17, 144);
    *(v0 + 1) = 40;
  }
  sub_803A820();
}


// 0x80499ce
void __noreturn sub_80499CE()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf
  char v3; // r4
  int v4; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r0

  v1 = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    v3 = 0;
    v4 = sub_8049D42(v1);
    if ( !v2 )
      v3 = 1;
    *(v0 + 4) = v3;
    v5 = sub_8049D70(v4);
    v6 = sub_8049D4A(v5);
    sub_8049D3A(v6);
    v7 = sub_803F79E();
    sub_80017AA(v7, v8, v9, v10);
    sub_800183C(v11, v12, v13, v14);
    sub_8001850();
    sub_8001778(&byte_40);
    v15 = chatbox_8040818();
    sub_811F758(v15);
  }
  sub_803A820();
}


// 0x8049a18
int __fastcall copyData_8049A18(int a1, int a2, int a3, int a4)
{
  int v4; // r10
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  _WORD *v9; // r3

  sub_80017AA(a1, a2, a3, a4);
  sub_800183C(v5, v6, v7, v8);
  sub_8001850();
  decompAndCopyData_8000B30(&initRefs_8049A54);
  v9 = *(v4 + oToolkit_RenderInfoPtr);
  v9[11] -= 4;
  v9[10] -= 2;
  v9[13] -= 2;
  v9[12] -= 4;
  return sub_803B91C(3);
}


// 0x8049aac
int __fastcall copyData_8049AAC(int a1, int a2, int a3, int a4)
{
  int v4; // r5
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int result; // r0

  sub_80017AA(a1, a2, a3, a4);
  sub_800183C(v5, v6, v7, v8);
  sub_8001850();
  decompAndCopyData_8000B30(byte_8049AD8);
  sub_803B91C(4);
  sub_803B91C(5);
  result = 0;
  *(v4 + 24) = 0;
  return result;
}


// 0x8049bc0
void sub_8049BC0()
{
  int v0; // r4
  int v1; // r0
  char v2; // zf
  int v3; // r1
  unsigned int v4; // r0
  int v5; // r6
  unsigned int v6; // r7

  v0 = 0;
  do
  {
    sub_803C316();
    if ( !v2 && v0 < sub_813D638(v1) )
    {
      sub_803C440(v0);
      v4 = sub_8146738(v3);
      v5 = v4 & 0xF;
      v6 = v4 >> 4;
      CopyWords(off_8049C84[v5], off_8049C70[v0], 0x20u);
      sub_802FE28(32 * v0 + 1074855968, (byte_8049C58[v5] + 2864) | (*(&dword_8049C68 + v0) << 12), 2, 0);
      (loc_8000AC8)(&unk_202BA04 + 512 * v6, (v0 << 9) + 100756992, 512);
      sub_8132A50(166, 32 * v0 + 19, 1, 16 * v0 + 880);
    }
    ++v0;
  }
  while ( v0 < 4 );
}


// 0x8049cbc
int sub_8049CBC()
{
  int v0; // r5
  int result; // r0

  CopyBytes(&unk_2001808, v0 + 48, 32);
  CopyBytes(&unk_2001828, v0 + 144, 32);
  *(v0 + 16) = sub_803C132(16, 48);
  result = sub_803C132(17, 144);
  *(v0 + 17) = result;
  return result;
}


// 0x8049cf8
void *__fastcall sub_8049CF8(int a1, int a2, int a3, int a4)
{
  void *result; // r0

  ZeroFillByWord(&word_2001800, 0x48u, a3, a4);
  HalfwordFill(&unk_2001808, 0x20u, 58853, 58624);
  byte_2001818 = -26;
  HalfwordFill(&unk_2001828, 0x20u, 58853, 58624);
  result = &unk_2001828;
  byte_200183C = -26;
  return result;
}


// 0x8049d3a
__int16 *sub_8049D3A()
{
  __int16 *result; // r0

  result = &word_2001800;
  byte_2001802 = 1;
  return result;
}


// 0x8049d42
int sub_8049D42()
{
  return byte_2001802;
}


// 0x8049d4a
int sub_8049D4A()
{
  CopyBytes(&unk_200A300, &unk_2001808, 32);
  return CopyBytes(&unk_200A360, &unk_2001828, 32);
}


// 0x8049d70
int sub_8049D70()
{
  int result; // r0

  result = change_20013F0_800151C();
  word_2001800 = result;
  return result;
}


// 0x8049d7c
int sub_8049D7C()
{
  return word_2001800;
}


// 0x8049d82
void *sub_8049D82()
{
  return &unk_2001808;
}


// 0x8049d98
void sub_8049D98()
{
  sub_803BEC0();
}


// 0x8049da0
_DWORD *__fastcall sub_8049DA0(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v2; // ST00_4

  v2 = a2;
  sub_803C1BC(a1, &unk_2001808, 8);
  return sub_803C1BC(v2, &unk_2001828, 10);
}


// 0x8049dc4
int __fastcall sub_8049DC4(__int64 a1, __int64 a2)
{
  __int64 v2; // ST00_8

  v2 = a2;
  sub_803C168(a1, 8, 0x20u);
  return sub_803C168(v2, 10, 0x20u);
}


// 0x8049ddc
signed int __fastcall sub_8049DDC(__int16 a1, int a2, int a3, int a4)
{
  _BYTE **v4; // r10
  __int16 v5; // r4
  signed int result; // r0

  v5 = a1;
  ZeroFillByWord(&byte_200A290, &loc_1B0, a3, a4);
  **v4 = 76;
  word_200A2B2 = v5;
  word_200A2B4 = 8;
  result = 1;
  word_200A2B6 = 1;
  return result;
}


// 0x8049e04
int cb_8049E04()
{
  return (*(&off_8049E18 + byte_200A290))();
}


// 0x8049e28
int __noreturn sub_8049E28()
{
  _BYTE *v0; // r5
  int v1; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int result; // r0

  chatbox_8040818();
  sub_8001778(&byte_40);
  sub_8001788();
  sub_80017A0();
  v1 = sub_80015FC(17);
  sub_8005F40(v1, v2, v3, v4);
  sub_803BEC0();
  sub_804A14C();
  *v0 = 8;
  result = 0;
  v0[1] = 0;
  return result;
}


// 0x8049e5c
int sub_8049E5C()
{
  int result; // r0
  int v1; // r1
  int v2; // r2
  int v3; // r3
  char v4; // zf
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r0

  result = engine_isScreeneffectAnimating();
  if ( !v4 )
  {
    sub_80017AA(result, v1, v2, v3);
    sub_800183C(v5, v6, v7, v8);
    sub_8001850();
    chatbox_8040818();
    v9 = sub_8001778(&byte_40);
    result = sub_8123408(v9);
  }
  return result;
}


// 0x8049e84
int sub_8049E84()
{
  int v0; // r5

  return (*(&off_8049E98 + *(v0 + 1)))();
}


// 0x8049ebc
void __noreturn sub_8049EBC()
{
  _BYTE *v0; // r5
  signed int v1; // r0

  sub_8001778(8000);
  sub_8001788();
  sub_80017A0();
  sub_80015FC(19);
  v1 = sub_8046664();
  copyData_804A0AC(v1);
  engine_setScreeneffect(8, 16);
  v0[8] = 0;
  v0[28] = 0;
  v0[29] = 0;
  v0[19] = 0;
  v0[18] = 0;
  sub_803BEC0();
  sub_804A14C();
  sub_803A740();
  sub_803A752();
}


// 0x8049f20
int __noreturn sub_8049F20()
{
  int v0; // r4
  int result; // r0

  v0 = 41;
  do
    result = sub_803B674(v0++);
  while ( v0 <= 44 );
  return result;
}


// 0x8049f32
void __noreturn sub_8049F32()
{
  int v0; // r5
  char v1; // zf

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    sub_803BB2C(20);
    sub_803BB7C(15);
    *(v0 + 1) = 8;
  }
  sub_8049F70();
}


// 0x8049f50
void __noreturn sub_8049F50()
{
  int v0; // r1
  int v1; // r2
  int v2; // r3

  sub_803BA64();
  sub_803BAE2(0);
  sub_803B522(10, v0, v1, v2);
  sub_803B674(40);
  sub_803A8B4();
}


// 0x8049f70
void __noreturn sub_8049F70()
{
  int v0; // r1
  int v1; // r2
  int v2; // r3

  sub_803BA64();
  sub_803B522(10, v0, v1, v2);
  sub_803B674(40);
  sub_803A8B4();
}


// 0x8049f8a
void __noreturn sub_8049F8A()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    sub_803BB80();
    if ( !v1 )
      *(v0 + 1) = 12;
  }
  sub_8049F70();
}


// 0x8049fa4
void sub_8049FA4()
{
  signed int v0; // r0
  char v1; // zf

  v0 = sub_803AFC2(1);
  if ( !v1 )
    (dword_8049FC8[v0])();
  sub_8049F50();
}


// 0x8049fe0
void __noreturn sub_8049FE0()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    if ( chatbox_8045F4C() )
    {
      *(v0 + 1) = 12;
    }
    else
    {
      engine_setScreeneffect(12, 16);
      *(v0 + 1) = 20;
    }
  }
  sub_8049F70();
}


// 0x804a00a
void __noreturn sub_804A00A()
{
  _BYTE *v0; // r5
  int v1; // r0
  char v2; // zf

  v1 = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    sub_804A14C(v1);
    *v0 = 4;
    v0[1] = 0;
  }
  sub_8049F70();
}


// 0x804a024
void __noreturn sub_804A024()
{
  int v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    if ( chatbox_8045F4C() )
    {
      *(v0 + 1) = 12;
    }
    else
    {
      engine_setScreeneffect(12, 16);
      *(v0 + 1) = 32;
    }
  }
  sub_8049F70();
}


// 0x804a04e
void __noreturn sub_804A04E()
{
  _BYTE *v0; // r5
  char v1; // zf

  chatbox_8045F3C(128);
  if ( v1 )
  {
    v0[19] = 0;
    sub_803C0BE(16, 48);
    v0[16] = sub_803C132(16, 48);
    v0[1] = 12;
  }
  sub_8049F70();
}


// 0x804a078
int sub_804A078()
{
  int v0; // r5
  char v1; // zf
  int v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r0

  engine_isScreeneffectAnimating();
  if ( v1 )
    sub_8049F70();
  v2 = sub_804A230(*(v0 + 34));
  sub_80017AA(v2, v3, v4, v5);
  sub_800183C(v6, v7, v8, v9);
  sub_8001850();
  sub_8001778(&byte_40);
  v10 = chatbox_8040818();
  return sub_8123408(v10);
}


// 0x804a0ac
int __fastcall copyData_804A0AC(int a1, int a2, int a3, int a4)
{
  int v4; // r10
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  _WORD *v9; // r3

  sub_80017AA(a1, a2, a3, a4);
  sub_800183C(v5, v6, v7, v8);
  sub_8001850();
  decompAndCopyData_8000B30(byte_804A0E8);
  v9 = *(v4 + oToolkit_RenderInfoPtr);
  v9[11] -= 4;
  v9[10] -= 2;
  v9[13] -= 2;
  v9[12] -= 4;
  return sub_803B91C(3);
}


// 0x804a14c
int sub_804A14C()
{
  int v0; // r5
  int result; // r0

  CopyBytes(&unk_2001850 + byte_804A178[*(v0 + 34)], v0 + 48, 32);
  result = sub_803C132(16, 48);
  *(v0 + 16) = result;
  return result;
}


// 0x804a17a
char *__fastcall sub_804A17A(int a1, int a2, int a3, int a4)
{
  char *result; // r0

  ZeroFillByWord(&unk_2001850, 0x60u, a3, a4);
  HalfwordFill(&unk_2001850, 0x20u, 58853, 58624);
  sub_804A1FC(0, &unk_2001850);
  byte_2001860 = -26;
  HalfwordFill(&algn_2001861[15], 0x20u, 58853, 58624);
  sub_804A1FC(1, &algn_2001861[15]);
  result = &algn_2001861[15];
  byte_2001880 = -26;
  return result;
}


// 0x804a1d0
char *__fastcall sub_804A1D0(int a1)
{
  int v1; // r7
  char *result; // r0

  v1 = a1;
  HalfwordFill(&algn_2001881[15], 0x20u, 58853, 58624);
  sub_804A1FC(v1, &algn_2001881[15]);
  result = &algn_2001881[15];
  byte_20018A0 = -26;
  return result;
}


// 0x804a1fc
signed int __fastcall sub_804A1FC(int a1, _BYTE *a2)
{
  unsigned __int8 *v2; // r4
  signed int result; // r0

  v2 = dword_86CF4AC + *(dword_86CF4AC + a1);
  while ( 1 )
  {
    result = *v2;
    if ( result < 228 )
    {
      *a2 = result;
      ++v2;
      goto LABEL_8;
    }
    if ( result == 228 )
    {
      *a2 = -28;
      a2[1] = v2[1];
      v2 += 2;
      goto LABEL_8;
    }
    if ( result == 230 )
      return result;
LABEL_8:
    a2 += 2;
  }
}


// 0x804a230
int __fastcall sub_804A230(int a1)
{
  return CopyBytes(&unk_200A300, &unk_2001850 + *(&dword_804A25C + a1), 32);
}


// 0x804a24c
char *__fastcall sub_804A24C(int a1)
{
  return &unk_2001850 + *(&dword_804A25C + a1);
}


// 0x804a2cc
signed int __fastcall sub_804A2CC(int a1)
{
  int v1; // r10
  int v2; // ST00_4

  v2 = a1;
  sub_804A2E8();
  dword_200ACB0 = v2;
  *(*(v1 + oToolkit_GameStatePtr) + oGameState_LastMapGroup) = *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup);
  return sub_8046664();
}


// 0x804a2e8
void __fastcall sub_804A2E8(int a1, int a2, int a3, int a4)
{
  int v4; // r10
  int v5; // r2
  int v6; // r3

  ZeroFillByWord(&unk_200AC80, 0x58u, a3, a4);
  ZeroFillByWord(*(v4 + oToolkit_SubmenuPtr), 0x80u, v5, v6);
}


// 0x804a304
int __noreturn cb_804A304()
{
  int v0; // r8
  int v1; // r0
  int v2; // r0

  (*(&off_804A33C + sSubmenu.unk_00))();
  sub_80465BC();
  v1 = sub_80465F8();
  v2 = sub_804AFB8(v1);
  sub_804AFE4(v2);
  change_20013F0_800151C();
  return v0;
}


// 0x804a360
void __fastcall __noreturn sub_804A360(int a1, int a2, int a3, int a4)
{
  int v4; // r5
  int v5; // r10
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int v14; // r2
  int v15; // r3
  int v16; // r0
  int v17; // r1

  sub_80017AA(a1, a2, a3, a4);
  sub_80017E0(v6, v7, v8, v9);
  sub_800183C(v10, v11, v12, v13);
  sub_80015FC(16);
  sub_8046664();
  ZeroFillByWord(&word_202A020, &dword_3C0, v14, v15);
  sub_8120A88();
  v16 = sub_811FE7C(&unk_202A3E0, 1);
  *(v4 + 40) = v16;
  sub_8120018(&unk_202A3E0, v16, 5, 4);
  v17 = *(v5 + oToolkit_Unk2001c04_Ptr);
  *(v17 + 2) = 5;
  *(v17 + 3) = 4;
  sub_804A61C();
}


// 0x804a3fc
void __noreturn sub_804A3FC()
{
  int v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r0

  engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    *(v0 + 3) = 0;
    v3 = sub_804AAA4();
    if ( !v2 || (v3 = sub_804AAD0(v3), !v2) )
LABEL_11:
      sub_804A8F4(v3);
    sub_811F7EC(16);
    if ( !v2 )
    {
      sound_play(156);
      *v0 = 24;
      v3 = 0;
      *(v0 + 1) = 0;
      goto LABEL_11;
    }
    *(v0 + 3) = 4;
    sub_804AB10();
  }
  v3 = *(v0 + 40);
  if ( *(v0 + 40) )
    v3 = sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 7, 0, 10);
  goto LABEL_11;
}


// 0x804a460
void __fastcall __noreturn sub_804A460(int a1)
{
  sub_804A8F4(a1);
}


// 0x804a4d4
int sub_804A4D4()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf

  v1 = chatbox_8045F3C(128);
  if ( !v2 )
  {
    v1 = chatbox_8045F3C(32);
    if ( !v2 )
    {
      if ( chatbox_8045F4C() )
      {
        *v0 = 4;
        *(v0 + 3) = 0;
        v1 = sub_804AF20(*(v0 + 30));
      }
      else
      {
        *v0 = 16;
        v1 = engine_setScreeneffect(12, 16);
      }
    }
  }
  sub_804AA58(v1);
  return 0;
}


// 0x804a514
void __fastcall __noreturn sub_804A514(int a1)
{
  int v1; // r5
  int v2; // r10
  int v3; // r0
  char v4; // zf
  int v5; // r0
  int v6; // r0

  v3 = sub_804AAD0(a1);
  if ( !v4 )
  {
    v6 = sub_804AA58(v3);
    sub_804A8F4(v6);
  }
  v5 = sub_804AE04(v3);
  if ( v4 )
  {
    v5 = sub_811FA22(*(*(v2 + oToolkit_JoypadPtr) + 4), 7, 1, *(v1 + 52));
    *(v1 + 52) = v5;
  }
  sub_804AE50(v5);
}


// 0x804a54c
int sub_804A54C()
{
  int v0; // r5
  int v1; // r0

  v1 = (*(&off_804A564 + *(v0 + 1)))();
  return sub_804AA58(v1);
}


// 0x804a574
int sub_804A574()
{
  int v0; // r5
  int v1; // r2
  int result; // r0

  v1 = *(&unk_202A3E0 + 8 * (*(v0 + 42) + *(v0 + 46)) + 7);
  sub_811980C((v1 << 16) >> 23, v1 & 0x7F, 0, 0);
  sub_8119854(-40, 88, 0);
  *(v0 + 1) = 4;
  result = 0;
  *(v0 + 24) = 0;
  return result;
}


// 0x804a5b4
int sub_804A5B4()
{
  int v0; // r5
  int v1; // r0

  v1 = *(v0 + 24) + 16;
  if ( v1 > 40 )
  {
    *(v0 + 1) = 8;
    v1 = 40;
  }
  *(v0 + 24) = v1;
  return sub_8119854(v1, 88, 0);
}


// 0x804a5d4
int sub_804A5D4()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = sub_811F7EC(226);
  if ( !v2 )
  {
    *(v0 + 1) = 12;
    result = sound_play(158);
  }
  return result;
}


// 0x804a5ec
int sub_804A5EC()
{
  int v0; // r5
  int v1; // r0

  v1 = *(v0 + 24) - 16;
  if ( v1 < -40 )
  {
    sub_811980C(0, 0, 0, 0);
    *v0 = 4;
    v1 = -40;
  }
  *(v0 + 24) = v1;
  return sub_8119854(v1, 88, 0);
}


// 0x804a61c
int __noreturn sub_804A61C()
{
  int v0; // r6
  int v1; // r7
  int v2; // r0
  int v3; // r7
  int v4; // r1
  signed int v5; // r1

  v0 = 0;
  v1 = 0;
  do
  {
    v2 = *(&off_804A69C + v1);
    v3 = v1 + 4;
    v4 = *(&off_804A69C + v3);
    v1 = v3 + 4;
    *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
    v0 += 4;
    v5 = 0;
    do
    {
      *(&unk_20096E0 + v0) = *(&off_804A69C + v1);
      v0 += 4;
      v1 += 4;
      ++v5;
    }
    while ( v5 < 2 );
  }
  while ( v1 < 64 );
  *(&unk_20096E0 + v0) = 0;
  decompAndCopyData_8000B30(&unk_20096E0);
  decompAndCopyData_8000B30(&initRefs_804A6E4);
  copyTiles();
  copyTiles();
  return copyTiles();
}


// 0x804a7c0
int __noreturn sub_804A7C0()
{
  int v0; // r5

  sub_81200EC(*(v0 + 46), &unk_202A3E0, &unk_20345FC, 11);
  copyTiles();
  sub_8120390(*(v0 + 46), &unk_202A3E0, &unk_20346DC, byte_804A264);
  copyTiles();
  sub_81203E4(*(v0 + 46), &unk_202A3E0, &unk_2034714, &dword_35C | 0xA000);
  copyTiles();
  sub_8120458(*(v0 + 46), &unk_202A3E0, &unk_203474C, 45590);
  copyTiles();
  sub_81204C4(*(v0 + 46), &unk_202A3E0, &unk_2034768, 37711);
  copyTiles();
  sub_8120618(*(v0 + 46), &unk_202A3E0, &unk_20347A0, &byte_200 | 0xB000);
  return copyTiles();
}


// 0x804a8f4
int __noreturn sub_804A8F4()
{
  int v0; // r5

  sub_81200EC(*(v0 + 36), &word_202A020, &unk_2034458, 11);
  copyTiles();
  sub_8120458(*(v0 + 36), &word_202A020, &unk_20345A8, 45590);
  return copyTiles();
}


// 0x804a970
int sub_804A970()
{
  int v0; // r5
  __int16 *v1; // r7
  int v2; // r6
  int v3; // r4
  int result; // r0

  v1 = &word_202A020;
  v2 = *(v0 + 30);
  v3 = 0;
  do
  {
    sub_8021B92(*(v1 + 7) << 16 >> 23, *(v1 + 7) & 0x7F, 1);
    result = sub_8048D60(9, *v1);
    v1 += 16;
    ++v3;
  }
  while ( v3 < v2 );
  return result;
}


// 0x804a9a0
int sub_804A9A0()
{
  return sub_804A9F0(0, 32, 42, 19);
}


// 0x804a9c4
int sub_804A9C4()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 36);
  if ( *(v0 + 36) )
    result = sub_804A9F0(0xFFFFFFF0, 32, 0, 18);
  return result;
}


// 0x804a9f0
int __fastcall sub_804A9F0(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5
  int v6; // r0
  int v7; // r2
  unsigned int v8; // ST14_4
  int v9; // r0
  int v10; // r1
  int result; // r0
  int v12; // [sp+8h] [bp-1Ch]

  v12 = a4;
  v6 = a1 << 16;
  if ( a3 )
    v7 = *(v5 + a3);
  else
    v7 = 0;
  v8 = *(v5 + a4);
  v9 = sub_811FAF4(v6 | (a2 + 16 * v7), 131074, v8 & 0xF, v4);
  v10 = (v8 >> 4) - 1;
  if ( v8 >> 4 == 1 )
    *(v5 + v12) = sub_8120CC8(v9, &dword_804A2AC);
  result = *(v5 + v12) & 0xF | 16 * v10;
  *(v5 + v12) = result;
  return result;
}


// 0x804aa58
int sub_804AA58()
{
  return sub_804AA74(146, 28, 40, 46);
}


// 0x804aa74
int __fastcall sub_804AA74(int a1, int a2, int a3, int a4)
{
  int v4; // r5

  return sub_811FA98((a1 << 16) | a2, 131074, *(v4 + a3), *(v4 + a4));
}


// 0x804aaa4
int sub_804AAA4()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = sub_811F7EC(2);
  if ( !v2 )
  {
    if ( *(v0 + 30) )
    {
      result = sub_804AF20(*(v0 + 30));
    }
    else
    {
      sound_play(104);
      *v0 = 8;
      result = engine_setScreeneffect(12, 16);
    }
  }
  return result;
}


// 0x804aad0
int sub_804AAD0()
{
  int v0; // r5
  char v1; // zf
  int result; // r0

  sub_811F7EC(8);
  if ( v1 )
  {
    if ( *v0 != 20 )
      return 0;
    result = sub_811F7EC(2);
    if ( v1 )
      return result;
  }
  if ( *v0 == 20 )
  {
    *v0 = 4;
    result = sound_play(131);
  }
  else
  {
    *v0 = 20;
    *(v0 + 52) = 0;
    result = sound_play(129);
  }
  return result;
}


// 0x804ab10
signed int sub_804AB10()
{
  _BYTE *v0; // r5
  signed int v1; // r6
  char v2; // zf

  v1 = 0;
  sub_811F7EC(1);
  if ( !v2 )
  {
    v1 = 1;
    v0[68] = (v0[3] >> 2) + 1;
    sub_804AB4C();
    v0[69] = v0[68];
    sub_804AB6C();
    sound_play(129);
  }
  return v1;
}


// 0x804ab4c
int __fastcall sub_804AB4C(int result)
{
  int v1; // r4
  int v2; // r5
  __int16 v3; // r1
  __int16 v4; // r2

  v3 = *(v2 + 42);
  v4 = *(v2 + 46);
  if ( result == 1 )
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 36);
  }
  *(v2 + 64) = result;
  *(v2 + 60) = v3;
  *(v2 + 62) = v4;
  *(v2 + v1 + 2) = v3 + v4;
  return result;
}


// 0x804ab6c
int sub_804AB6C()
{
  int v0; // r5
  __int16 *v1; // r7
  int v2; // r2
  __int16 *v3; // r7
  int v4; // r2
  int v5; // r3
  char *v6; // r1
  int v7; // r1
  int v8; // r7
  int v9; // r6
  int v10; // r1
  int v11; // r0
  int v12; // r6
  int v13; // r0
  int v14; // r1
  int v15; // r3
  int v16; // r2
  int v17; // r0
  int v18; // r0
  signed int v19; // r0
  int result; // r0

  v1 = dword_804ACB0[*(v0 + 68)];
  v2 = *(v0 + 70);
  if ( word_202A020 == v1 )
  {
    v3 = &v1[16 * v2];
    if ( v3[10] )
    {
      if ( !sub_804AD60(v3[14]) )
      {
        v6 = &unk_202A3E0 + 32 * *(v0 + 40);
        v3[11] = 1;
        CopyByEightWords(v3, v6, 0x20u);
        ++*(v0 + 40);
      }
      ZeroFillByEightWords(v3, 0x20u, v4, v5);
      *(v0 + 23) = sub_804ACC8(*(v0 + 30));
      v7 = *(v0 + 30);
      sub_804ADD0(dword_200ACB0);
    }
    else
    {
      sound_play(105);
    }
  }
  else
  {
    v8 = &v1[16 * v2];
    v9 = *(v8 + 20) >> 16;
    if ( v9 )
    {
      v10 = 0;
      while ( word_202A020[v10] )
      {
        v10 += 16;
        if ( v10 >= 16 * dword_200ACB0 )
          goto LABEL_11;
      }
      v11 = *(v0 + 30) + 1;
      *(v0 + 30) = v11;
      if ( v11 > 7 )
        *(v0 + 36) = v11 - 7;
      v12 = v9 - 1;
      if ( v12 )
      {
        *(v8 + 20) = (v12 << 16) | *(v8 + 20) & 0xFFFF;
        CopyByEightWords(v8, &word_202A020[v10], 0x20u);
        *(v0 + 23) = sub_804ACC8(*(v0 + 30));
        (sub_804ADD0)();
      }
      else
      {
        CopyByEightWords(v8, &word_202A020[v10], 0x20u);
        *(v0 + 23) = sub_804ACC8(*(v0 + 30));
        v13 = v8 + 32;
        v14 = v8;
        v15 = *(v0 + 46) + *(v0 + 42);
        v16 = *(v0 + 40) - 1;
        *(v0 + 40) = v16;
        if ( v16 == v15 )
          v13 = sub_804AD98(v13, v8);
        v17 = sub_804ADE0(v13, v14);
        v18 = sub_804ADB0(v17);
        sub_804ADD0(v18);
      }
      if ( dword_200ACB0 <= *(v0 + 30) )
      {
        v19 = 2;
        if ( dword_200ACB0 != 3 )
          v19 = 8;
        sub_804AF10(v19);
        *v0 = 12;
      }
    }
    else
    {
LABEL_11:
      sound_play(105);
    }
  }
  *(v0 + 60) = 0x7FFF;
  *(v0 + 68) = 0;
  result = 0;
  *(v0 + 72) = 0;
  return result;
}


// 0x804acc8
int __fastcall sub_804ACC8(int a1, int a2, int a3, int a4)
{
  __int16 *v4; // r7
  __int16 *v5; // r5
  int v6; // r4
  int v7; // r0
  __int16 *v8; // r7
  int v9; // r4
  int v11; // [sp+0h] [bp-18h]

  v11 = 0;
  v4 = word_202A020;
  v5 = &word_202A020[16 * a1];
  ZeroFillByEightWords(byte_20343E0, &dword_78, a3, a4);
  do
  {
    v6 = 0;
    v7 = *v4;
    if ( *v4 )
    {
      ++v11;
      while ( *&byte_20343E0[v6] )
      {
        if ( v7 == *&byte_20343E0[v6] )
        {
          ++*&byte_20343E0[v6 + 2];
          goto LABEL_9;
        }
        v6 += 4;
      }
      *&byte_20343E0[v6] = v7;
      byte_20343E0[v6 + 2] = 1;
    }
LABEL_9:
    v4 += 16;
  }
  while ( v4 < v5 );
  v8 = word_202A020;
  do
  {
    v9 = 0;
    if ( v8[10] )
    {
      while ( *&byte_20343E0[v9] && v8[10] != *&byte_20343E0[v9] )
        v9 += 4;
      *(v8 + 5) = (*&byte_20343E0[v9 + 2] << 16) | *(v8 + 5) & 0xFFFF;
    }
    v8 += 16;
  }
  while ( v8 < v5 );
  return v11;
}


// 0x804ad60
signed int __fastcall sub_804AD60(int a1)
{
  int v1; // r5
  signed int v2; // r4
  _WORD *v3; // r7
  char *v4; // r2
  int v5; // r7

  v2 = 0;
  if ( *(v1 + 40) )
  {
    v3 = &unk_202A3E0;
    v4 = &unk_202A3E0 + 32 * *(v1 + 40);
    do
    {
      if ( !v3[10] )
        break;
      if ( a1 == v3[14] )
      {
        v5 = (v3 + 1);
        a1 = *(v5 + 20) + 1;
        *(v5 + 20) = a1;
        v3 = (v5 - 2);
        v2 = 1;
      }
      v3 += 16;
    }
    while ( v3 < v4 );
  }
  return v2;
}


// 0x804ad98
void __spoils<> sub_804AD98()
{
  int v0; // r5
  int v1; // r0
  unsigned __int8 v2; // vf
  int v3; // r0
  int v4; // r0
  int v5; // r0

  v1 = *(v0 + 42);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if ( (v3 < 0) ^ v2 )
  {
    v4 = *(v0 + 46);
    v2 = __OFSUB__(v4, 1);
    v5 = v4 - 1;
    if ( !((v5 < 0) ^ v2) )
      *(v0 + 46) = v5;
  }
  else
  {
    *(v0 + 42) = v3;
  }
}


// 0x804adb0
void sub_804ADB0()
{
  unsigned __int16 *v0; // r5
  signed int v1; // r1
  int v2; // r0
  __int16 v3; // r1

  v1 = v0[20];
  if ( v1 >= 7 )
  {
    v2 = v0[23] + 7;
    if ( v2 > v1 )
    {
      v3 = v2 - v1;
      v0[23] -= v3;
      v0[21] += v3;
    }
  }
}


// 0x804add0
_BYTE *sub_804ADD0()
{
  int v0; // r10
  _BYTE *result; // r0

  result = *(v0 + oToolkit_Unk2001c04_Ptr);
  *result = -1;
  result[2] = -1;
  return result;
}


// 0x804ade0
void __fastcall sub_804ADE0(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r6

  v4 = a2;
  v5 = a3;
  if ( a3 )
  {
    CopyByEightWords(a1, a2, 32 * a3);
    v4 += 32 * v5;
  }
  ZeroFillByEightWords(v4, 0x20u, a3, a4);
}


// 0x804ae04
int sub_804AE04()
{
  int v0; // r5
  int v1; // r10
  int result; // r0
  char v3; // zf
  int v4; // r0
  int v5; // r2
  int v6; // r3
  int v7; // r3

  result = sub_811F7EC(1);
  if ( !v3 )
  {
    sound_play(129);
    v4 = *(v1 + oToolkit_Unk2001c04_Ptr);
    v5 = *(v0 + 52);
    v6 = *(v4 + 2);
    *(v4 + 2) = v5;
    if ( v5 == v6 )
      v7 = *(v4 + 3) ^ 4;
    else
      v7 = *(v5 + 50358688) ^ 4;
    *(v4 + 3) = v7;
    result = sub_8120018(&unk_202A3E0, *(v0 + 40), v5, v7);
  }
  return result;
}


// 0x804ae50
int __noreturn sub_804AE50()
{
  return copyTiles();
}


// 0x804ae68
int sub_804AE68()
{
  int v0; // r5
  unsigned int v1; // ST00_4
  int v2; // r0
  int v3; // r1
  int result; // r0

  v1 = *(v0 + 21);
  v2 = sub_811FAF4((16 * *(v0 + 52) + 32) | 0xA40000, 2, v1 & 0xF, byte_804A29C);
  v3 = (v1 >> 4) - 1;
  if ( v1 >> 4 == 1 )
    *(v0 + 21) = sub_8120CC8(v2, &dword_804A2AC);
  result = *(v0 + 21) & 0x15 | 16 * v3;
  *(v0 + 21) = result;
  return result;
}


// 0x804aec4
signed int __fastcall sub_804AEC4(int a1, int a2, int a3)
{
  _BYTE *v3; // r5
  int v4; // r10
  signed int v5; // r0
  signed int result; // r0

  if ( a1 )
  {
    *(*(v4 + oToolkit_ChatboxPtr) + 76) = a2;
    if ( a3 == 5 )
    {
      v5 = 16;
    }
    else
    {
      v5 = 7;
      if ( a3 == 1 )
        v5 = 6;
    }
  }
  else if ( a3 == 5 )
  {
    v5 = 15;
  }
  else if ( a3 )
  {
    if ( a3 == 1 )
      v5 = 4;
    else
      v5 = 5;
  }
  else
  {
    v5 = 3;
  }
  sub_804AF10(v5);
  sound_play(105);
  v3[13] = v3[3];
  result = 8;
  v3[2] = 8;
  return result;
}


// 0x804af10
void __fastcall sub_804AF10(int a1)
{
  chatbox_803FD78(scripts_86C580C, a1);
}


// 0x804af20
int __fastcall sub_804AF20(signed int a1)
{
  int v1; // r5
  signed int v2; // r7
  int v3; // r0
  int result; // r0

  v2 = a1;
  if ( a1 <= 7 )
  {
    *(v1 + 32) = a1 - 1;
    *(v1 + 36) = 0;
  }
  else
  {
    *(v1 + 36) = a1 - 7;
    *(v1 + 32) = 6;
  }
  v3 = (*(v1 + 3) >> 2) + 1;
  *(v1 + 68) = v3;
  sub_804AB4C(v3);
  *(v1 + 69) = *(v1 + 68);
  sub_804AB6C();
  --*(v1 + 30);
  if ( v2 > 7 )
    --*(v1 + 36);
  result = dword_200ACB0 - 1;
  if ( dword_200ACB0 - 1 != *(v1 + 30) )
    result = sound_play(131);
  return result;
}


// 0x804af84
int sub_804AF84()
{
  int v0; // r7
  int v1; // r6
  int result; // r0
  int v3; // r1
  char v4; // zf
  int v5; // r5

  sub_80465A0(byte_804A2B0);
  v1 = 0;
  do
  {
    result = sub_80466C4(v1);
    if ( !v4 )
    {
      if ( !v1 )
        v0 = v3;
      v5 = v3;
      result = sub_800307C(-40, 88);
      *(v5 + 20) = v0;
    }
    ++v1;
  }
  while ( v1 < 3 );
  return result;
}


// 0x804afb8
int sub_804AFB8()
{
  sub_81202FC(10, &unk_2034814, 11, 12);
  return copyTiles();
}


// 0x804afe4
int sub_804AFE4()
{
  int v0; // r5

  sub_8117084(*(v0 + 30), dword_200ACB0, 3);
  return sub_8116FDC(&loc_CC, 27, 3);
}


// 0x804bd00
int sub_804BD00()
{
  int v0; // r1
  int v1; // r0
  int v2; // r1
  int v3; // r2
  char v4; // zf
  int result; // r0
  int v6; // [sp-8h] [bp-1Ch]
  int v7; // [sp-4h] [bp-18h]

  dword_200ACCC = sub_804BFF0();
  dword_200ACD0 = v0;
  if ( sub_804BD7C(&dword_804B008, 2) )
    goto LABEL_3;
  while ( !sub_804BDB4(dword_200ACCC, algn_200ACB4) )
  {
LABEL_3:
    if ( sub_804BE1C(dword_200ACCC, algn_200ACB4) )
      break;
  }
  v1 = sub_804BD7C(dword_200ACD0, 5);
  v6 = sub_804BE88(off_804B018[v1], algn_200ACB4, v1);
  v7 = v2;
  v3 = getChip_8021DA8(v6)[5];
  sub_804BEEC();
  if ( v4 )
    result = sub_804BF94(dword_200ACCC, v7);
  else
    result = sub_804BF18(v6, v7, dword_200ACCC);
  return result;
}


// 0x804bd7c
int __fastcall sub_804BD7C(int a1, int a2)
{
  int v2; // ST08_4
  int v3; // r7
  int v4; // r1
  int v9; // r2
  int v10; // r0
  int v12; // [sp+0h] [bp-10h]

  v12 = a1;
  v2 = a2;
  change_20013F0_800151C();
  v3 = v2 - 1;
  v4 = 0;
  do
  {
    v4 += *(v12 + v3);
    _VF = __OFSUB__(v3--, 1);
  }
  while ( !((v3 < 0) ^ _VF) );
  __asm { SVC     6 }
  v9 = 0;
  v10 = 0;
  while ( 1 )
  {
    v10 += *(v12 + v9);
    if ( v10 >= v4 )
      break;
    ++v9;
  }
  return v9;
}


// 0x804bdb4
unsigned int __fastcall sub_804BDB4(_WORD *a1, _DWORD *a2)
{
  int v2; // r5
  int v3; // r9
  int v4; // r3
  _DWORD *v5; // r8
  _WORD *v6; // r9
  _WORD *v7; // r6
  int *v8; // r7
  int v9; // r3
  int v10; // r3
  char v11; // zf
  int v12; // r2
  unsigned int result; // r0
  int v14; // [sp-10h] [bp-18h]
  int v15; // [sp-Ch] [bp-14h]

  v4 = v3;
  *a2 = 0;
  a2[1] = 0;
  v5 = a2;
  v6 = a1;
  ZeroFillByWord(&dword_2035800, 0x1000u, 0, v4);
  v7 = v6;
  v8 = &dword_2035800;
  v9 = 0;
  while ( *v7 )
  {
    v14 = *v7;
    v15 = v9;
    TestEventFlag(v14 + 7712);
    v10 = v15;
    if ( !v11 )
    {
      *v8 = v14;
      *(v8 + 2) = v15;
      v12 = getChip_8021DA8(v14)[5];
      ++*(v5 + v12);
      v10 = v15;
      *(v8 + 3) = v12;
      ++v8;
    }
    v9 = v10 + 1;
    v7 += 3;
  }
  result = (v8 - &dword_2035800) >> 2;
  *(v2 + 72) = result;
  return result;
}


// 0x804be1c
unsigned int __fastcall sub_804BE1C(_WORD *a1, _DWORD *a2, int a3, int a4)
{
  int v4; // r5
  _DWORD *v5; // r8
  _WORD *v6; // r9
  int v7; // r3
  _WORD *v8; // r6
  int *v9; // r7
  int v10; // r3
  char v11; // zf
  int v12; // r2
  unsigned int result; // r0
  int v14; // [sp-10h] [bp-20h]
  int v15; // [sp-Ch] [bp-1Ch]

  *a2 = 0;
  a2[1] = 0;
  v5 = a2;
  v6 = a1;
  ZeroFillByWord(&dword_2035800, 0x1000u, 0, a4);
  v8 = v6;
  v9 = &dword_2035800;
  while ( *v8 )
  {
    v14 = *v8;
    v15 = v7;
    TestEventFlag(v14 + 7712);
    v10 = v15;
    if ( v11 )
    {
      *v9 = v14;
      *(v9 + 2) = v15;
      v12 = getChip_8021DA8(v14)[5];
      ++*(v5 + v12);
      v10 = v15;
      *(v9 + 3) = v12;
      ++v9;
    }
    v7 = v10 + 1;
    v8 += 3;
  }
  result = (v9 - &dword_2035800) >> 2;
  *(v4 + 72) = result;
  return result;
}


// 0x804be88
int __fastcall sub_804BE88(int a1, int a2, int a3)
{
  int v3; // r5
  int i; // r7
  int v5; // r3
  int v6; // r8
  int v7; // r0
  int v8; // r2
  int *v9; // r6
  int *v10; // r7
  int *v15; // r7
  int result; // r0
  int v17; // r1

  for ( i = 0; ; ++i )
  {
    v5 = *(a1 + i);
    if ( *(a2 + v5) )
      break;
  }
  v6 = *(a1 + i);
  ZeroFillByWord(dword_2034800, 0x1000u, a3, v5);
  v7 = *(v3 + 72);
  v8 = 0;
  v9 = &dword_2035800;
  v10 = dword_2034800;
  do
  {
    if ( *(v9 + 3) == v6 )
    {
      *v10 = *v9;
      ++v10;
      ++v8;
    }
    ++v9;
    _VF = __OFSUB__(v7--, 1);
  }
  while ( !(((v7 < 0) ^ _VF) | (v7 == 0)) );
  *(v3 + 72) = v8;
  change_20013F0_800151C();
  __asm { SVC     6 }
  v15 = &dword_2034800[*(v3 + 72)];
  result = *v15;
  v17 = *(v15 + 2);
  return result;
}


// 0x804beec
signed int __fastcall sub_804BEEC(signed int a1, int a2, signed int a3)
{
  int v3; // r0
  signed int result; // r0

  if ( a3 < 3 )
    goto LABEL_9;
  v3 = sub_8021BD8(a1);
  if ( v3 >= 4 )
    v3 = 4;
  if ( sub_804BD7C(off_804B048[v3], 2) )
LABEL_9:
    result = 1;
  else
    result = 0;
  return result;
}


// 0x804bf18
void __fastcall __spoils<R1,R2,R3,R12> sub_804BF18(signed int a1, int a2, unsigned __int16 *a3)
{
  int v3; // r5
  unsigned __int16 *v4; // r7
  int v5; // r2
  int v6; // r3
  int v7; // r4
  int v8; // r1
  signed int v9; // ST00_4
  bool v10; // zf
  int v11; // r1
  int v12; // r1
  char v13; // [sp-14h] [bp-20h]
  int v14; // [sp-10h] [bp-1Ch]
  int v15; // [sp-Ch] [bp-18h]
  int v16; // [sp-8h] [bp-14h]

  while ( *a3 != a1 )
    a3 += 3;
  v4 = a3;
  v5 = 2;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(v4 + v5);
    if ( v8 == 255 )
      break;
    v9 = a1;
    v13 = *(v4 + v5);
    v14 = v5;
    v15 = v6;
    v10 = sub_8021BC0(a1, v8) == 0;
    a1 = v9;
    v6 = v15;
    if ( v10 )
    {
      *(v3 + v7++ + 64) = v13;
    }
    else
    {
      *(v3 + v15 + 56) = v13;
      v6 = v15 + 1;
    }
    v5 = v14 + 1;
  }
  while ( v14 + 1 <= 5 );
  v16 = v6;
  if ( sub_804BD7C(byte_804B068, 2) )
  {
    if ( v16 )
    {
LABEL_11:
      v11 = *(v3 + sub_804BD7C(byte_804B06A, v16) + 56);
      return;
    }
  }
  else if ( !v7 )
  {
    goto LABEL_11;
  }
  v12 = *(v3 + sub_804BD7C(byte_804B06A, v7) + 64);
}


// 0x804bf94
int __fastcall sub_804BF94(__int16 *a1, int a2, int a3, int a4)
{
  int v4; // r5
  __int16 *v5; // r8
  __int16 *v6; // r6
  int *v7; // r7
  __int16 v8; // r0
  signed int v9; // r1
  int v10; // r3
  int *v15; // r7
  int result; // r0
  int v17; // r1

  v5 = a1;
  ZeroFillByWord(dword_2035800, 0x1000u, a3, a4);
  v6 = v5;
  v7 = dword_2035800;
  while ( 1 )
  {
    v8 = *v6;
    if ( !*v6 )
      break;
    v9 = 2;
    do
    {
      v10 = *(v6 + v9);
      if ( v10 == 255 )
        break;
      *v7 = v8;
      *(v7 + 2) = v10;
      ++v7;
      ++v9;
    }
    while ( v9 <= 5 );
    v6 += 3;
  }
  *(v4 + 72) = (v7 - dword_2035800) >> 2;
  change_20013F0_800151C();
  __asm { SVC     6 }
  v15 = &dword_2035800[*(v4 + 72)];
  result = *v15;
  v17 = *(v15 + 2);
  return result;
}


// 0x804bff0
int sub_804BFF0()
{
  int v0; // r10
  int *v1; // r2
  signed int v2; // r3
  int result; // r0
  int v4; // r1

  v1 = &off_804C01C;
  v2 = 0;
  while ( 1 )
  {
    result = *v1;
    if ( *v1 == ((*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) << 8) | *(*(v0 + oToolkit_GameStatePtr)
                                                                                 + oGameState_MapNumber)) )
      break;
    v1 += 3;
    v2 += 12;
    if ( v2 >= 60 )
      return result;
  }
  result = v1[1];
  v4 = v1[2];
  return result;
}


// 0x804c058
int sub_804C058()
{
  int v0; // r5

  return (*(&off_804C06C + *(v0 + 16)))();
}


// 0x804c074
unsigned int sub_804C074()
{
  int v0; // r10
  _WORD *v1; // r1
  unsigned int result; // r0

  ClearEventFlagFromImmediate(4, 254);
  v1 = *(v0 + oToolkit_RenderInfoPtr);
  result = *v1 & ~&byte_400;
  *v1 = result;
  return result;
}


// 0x804c08c
int sub_804C08C()
{
  _BYTE *v0; // r5
  int v1; // r10
  _WORD *v2; // r1
  _BYTE *v3; // r1
  int v4; // r0
  char v5; // zf
  int v6; // r0

  (loc_8000AC8)(byte_869D76C, 100715520, &loc_C0);
  (loc_8000AC8)(byte_869D74C, byte_3001B00, 32);
  v2 = *(v1 + oToolkit_RenderInfoPtr);
  v2[4] = 7689;
  v2[11] = 0;
  v2[10] = 0;
  v3 = *(v1 + oToolkit_Unk2009740_Ptr);
  *v3 = 68;
  v3[1] = 59;
  v3[2] = 0;
  v3[3] = 16;
  v0[20] = 10;
  v0[19] = 0;
  v0[21] = 0;
  v0[22] = 0;
  v0[23] = 0;
  v0[17] = 0;
  v0[24] = 2;
  v4 = TestEventFlagFromImmediate(4, 251);
  if ( !v5 )
  {
    v4 = TestEventFlagFromImmediate(4, 254);
    if ( !v5 )
      v4 = sub_804C2D0(v4);
  }
  sub_804C144(v4);
  v0[16] = 4;
  v6 = SetEventFlagFromImmediate(4, 254);
  return sub_804C11C(v6);
}


// 0x804c11c
int sub_804C11C()
{
  int result; // r0
  char v1; // zf
  int v2; // r0

  result = sub_811EBE0(1);
  if ( v1 )
  {
    result = s_2011C50_8036F40();
    if ( v1 )
    {
      result = sub_8036F58();
      if ( v1 )
      {
        result = chatbox_8045F3C(128);
        if ( v1 )
        {
          v2 = sub_804C144(result);
          result = sub_804C298(v2);
        }
      }
    }
  }
  return result;
}


// 0x804c144
int sub_804C144()
{
  _BYTE *v0; // r5
  int v1; // r10
  int v2; // r0
  signed int v3; // r6
  int v4; // r0
  char (*v5)[2048]; // r3
  int result; // r0

  **(v1 + oToolkit_RenderInfoPtr) |= &byte_400;
  if ( word_2013974 <= 36 )
  {
    if ( word_2013974 <= 0 )
    {
      result = 4;
      **(v1 + oToolkit_RenderInfoPtr) = 4;
      v0[17] = 0;
      return result;
    }
    v2 = sub_804C244();
  }
  else
  {
    v2 = sub_804C214();
  }
  sub_804C1D4(v2);
  v3 = v0[19];
  v4 = v0[20] - 1;
  v0[20] = v4;
  if ( !v4 )
  {
    v0[20] = 10;
    if ( v3 >= 7 )
      v3 = 0;
    else
      ++v3;
    v0[19] = v3;
  }
  v5 = off_804C1B4[v3];
  return copyTiles();
}


// 0x804c1d4
int sub_804C1D4()
{
  int v0; // r5
  int v1; // r10
  int v2; // r2
  int v3; // r4
  __int16 v4; // r0
  __int16 v5; // r3
  int v6; // r0
  int v7; // r3
  int result; // r0

  v2 = byte_804C20C[byte_2013965];
  v3 = *(v1 + oToolkit_RenderInfoPtr);
  v4 = *(v3 + 20);
  v5 = *(v0 + 21) + *(&dword_804C208 + byte_2013965);
  *(v0 + 21) = v5;
  *(v3 + 20) = v4 + v5;
  v6 = *(v3 + 22);
  v7 = *(v0 + 22) + v2;
  *(v0 + 22) = v7;
  result = v6 + v7;
  *(v3 + 22) = result;
  return result;
}


// 0x804c214
int sub_804C214()
{
  int v0; // r5
  int v1; // r10
  int result; // r0
  _BYTE *v3; // r4
  signed int v4; // r0

  result = *(v0 + 24) - 1;
  *(v0 + 24) = result;
  if ( !result )
  {
    *(v0 + 24) = 2;
    v3 = *(v1 + oToolkit_Unk2009740_Ptr);
    v4 = v3[2];
    if ( v4 < 16 )
    {
      v3[2] = v4 + 1;
      result = v3[3];
      if ( v3[3] )
        v3[3] = --result;
    }
    else
    {
      result = 4;
      *v3 = 4;
    }
  }
  return result;
}


// 0x804c244
int sub_804C244()
{
  int v0; // r5
  int v1; // r10
  int v2; // r6
  _BYTE *v3; // r1
  int result; // r0
  int v5; // r4

  v2 = *(v0 + 17);
  if ( v2 <= 0 )
  {
    v3 = *(v1 + oToolkit_Unk2009740_Ptr);
    result = *(v1 + 3);
    if ( result >= 16 )
      return result;
    *v3 = 68;
    v3[1] = 59;
    v3[2] = 16;
    v3[3] = 0;
    *(v0 + 24) = 2;
    *(v0 + 17) = v2 + 1;
  }
  result = *(v0 + 24) - 1;
  *(v0 + 24) = result;
  if ( !result )
  {
    *(v0 + 24) = 2;
    v5 = *(v1 + oToolkit_Unk2009740_Ptr);
    result = *(v5 + 3);
    if ( result < 16 )
    {
      *(v5 + 3) = result + 1;
      result = *(v5 + 2);
      if ( *(v5 + 2) )
        *(v5 + 2) = --result;
    }
  }
  return result;
}


// 0x804c298
int sub_804C298()
{
  _BYTE *v0; // r5
  int v1; // r10
  int v2; // r2
  int v3; // r2
  int result; // r0

  byte_2000ACF = v0[16];
  byte_2000AD1 = v0[17];
  byte_2000AD3 = v0[19];
  byte_2000AD5 = v0[21];
  byte_2000AD6 = v0[23];
  byte_2000AD7 = v0[24];
  v2 = *(v1 + oToolkit_RenderInfoPtr);
  word_2000ADA = *(v2 + 20);
  word_2000ADC = *(v2 + 22);
  v3 = *(v1 + oToolkit_Unk2009740_Ptr);
  byte_2000AD8 = *(v3 + 2);
  result = *(v3 + 3);
  byte_2000AD9 = *(v3 + 3);
  return result;
}


// 0x804c2d0
int sub_804C2D0()
{
  _BYTE *v0; // r5
  int v1; // r10
  int v2; // r2
  char v3; // t1
  int v4; // r2
  int result; // r0

  v0[16] = byte_2000ACF;
  v0[17] = byte_2000AD1;
  v0[19] = byte_2000AD3;
  v0[21] = byte_2000AD5;
  v0[23] = byte_2000AD6;
  v0[24] = byte_2000AD7;
  v2 = *(v1 + oToolkit_RenderInfoPtr);
  *(v2 + 20) = word_2000ADA;
  *(v2 + 22) = word_2000ADC;
  v3 = *(v1 + 3);
  v4 = *(v1 + oToolkit_Unk2009740_Ptr);
  *(v4 + 2) = byte_2000AD8;
  result = byte_2000AD9;
  *(v4 + 3) = byte_2000AD9;
  return result;
}


// 0x804c30c
int sub_804C30C()
{
  int v0; // r5

  return (*(&off_804C320 + *(v0 + 16)))();
}


// 0x804c328
void sub_804C328()
{
  int v0; // r10
  _WORD *v1; // r1

  v1 = *(v0 + oToolkit_RenderInfoPtr);
  *v1 &= 0xF7FFu;
  v1[5] = 7947;
  **(v0 + oToolkit_Unk2009740_Ptr) = 8;
  JUMPOUT(&locret_804C3C2);
}


// 0x804c348
// write access to const memory has been detected, the output may be wrong!
int sub_804C348()
{
  int v0; // r5
  int v1; // r10
  _WORD *v2; // r1
  _BYTE *v3; // r1

  (loc_8000AC8)(byte_86A10D0, 100715008, &byte_320);
  (loc_8000AC8)(byte_86A10B0, byte_3001B00, 32);
  v2 = *(v1 + oToolkit_RenderInfoPtr);
  v2[5] = 7945;
  v2[13] = 0;
  v2[12] = 0;
  v3 = *(v1 + oToolkit_Unk2009740_Ptr);
  *v3 = 72;
  v3[1] = 55;
  v3[2] = 8;
  v3[3] = 16;
  *(v0 + 19) = 2;
  sub_80018D0(0, 0, 3, 0);
  sub_804C3C4();
  LOBYTE(dword_30) = 4;
  return sub_804C3BC();
}


// 0x804c3bc
int sub_804C3BC()
{
  return sub_804C3C4();
}


// 0x804c3c4
int sub_804C3C4()
{
  int v0; // r10

  **(v0 + oToolkit_RenderInfoPtr) |= 0x800u;
  return copyTiles();
}


// 0x804c404
int sub_804C404()
{
  int v0; // r5
  int v1; // r0

  v1 = 20 * *(v0 + 12);
  return (*(&off_804C420 + *(v0 + 16)))();
}


// 0x804c42c
int sub_804C42C()
{
  int v0; // r10
  _WORD *v1; // r1
  int result; // r0

  v1 = *(v0 + oToolkit_RenderInfoPtr);
  result = *v1 & 0xB7FF;
  *v1 = result;
  return result;
}


// 0x804c43c
int sub_804C43C()
{
  int v0; // r5
  int v1; // r10
  int v2; // r1

  (loc_8000AC8)(byte_86A1480, 100715264, dword_4C0);
  *(*(v1 + oToolkit_RenderInfoPtr) + 10) = 8066;
  v2 = *(v1 + oToolkit_Unk200f3a0_Ptr);
  *(v2 + 9) = 63;
  *(v2 + 10) = 23;
  *(v0 + 16) = 4;
  return sub_804C478();
}


// 0x804c478
int sub_804C478()
{
  int v0; // r5
  int v1; // r7
  int v2; // r10
  int v3; // r2
  int v4; // r3
  int v6; // [sp+0h] [bp-20h]
  int v7; // [sp+4h] [bp-1Ch]
  int v8; // [sp+8h] [bp-18h]

  **(v2 + oToolkit_RenderInfoPtr) |= 0x4800u;
  v3 = *(v1 + 4);
  v4 = *(v1 + 8) - (*(v0 + 13) << 16);
  v6 = *v1;
  v7 = v3;
  v8 = v4;
  return (loc_80024D8)(&v6, *(v1 + 12), *(v1 + 16), *(v1 + 17), v6, v3, v4);
}


// 0x804c510
int sub_804C510()
{
  int v0; // r5

  return (*(&off_804C524 + *(v0 + 16)))();
}


// 0x804c52c
int sub_804C52C()
{
  int v0; // r10
  _WORD *v1; // r1
  int result; // r0

  v1 = *(v0 + oToolkit_RenderInfoPtr);
  result = *v1 & 0xF7FF;
  *v1 = result;
  return result;
}


// 0x804c53c
int sub_804C53C()
{
  int v0; // r5
  int v1; // r10

  (loc_8000AC8)(*(off_804C58C + *(v0 + 12)), 100716352, *&byte_804C59C[*(v0 + 12)]);
  (loc_8000AC8)(*(off_804C5A8 + *(v0 + 12)), byte_3001B00, 32);
  *(*(v1 + oToolkit_RenderInfoPtr) + 10) = 7945;
  sub_8001974();
  if ( *(v0 + 12) )
  {
    sub_8001B1C(&dword_804C4B0);
    sub_8001B1C(&dword_804C4E0);
  }
  *(v0 + 16) = 4;
  return sub_804C5C0();
}


// 0x804c5c0
int sub_804C5C0()
{
  int v0; // r5
  int v1; // r10
  int v2; // r3

  **(v1 + oToolkit_RenderInfoPtr) |= 0x800u;
  (*(&off_804C608 + *(v0 + 12)))();
  (*(&off_804C614 + *(v0 + 13)))();
  v2 = *(&off_804C5FC + *(v0 + 12));
  return copyTiles();
}


// 0x804c624
int sub_804C624()
{
  unsigned __int16 *v0; // r4
  int v1; // r5
  int v2; // r10
  int v3; // r1
  int v4; // r0
  unsigned __int8 v5; // vf
  int v6; // r1
  int result; // r0

  v0[12] = *&byte_80065E0[**(v2 + oToolkit_CurFramePtr) & 0x1FE] >> 4;
  v3 = *(v1 + 20);
  v4 = v0[11];
  *(v1 + 20) = v4;
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if ( (v6 < 0) ^ v5 )
    v6 = 0;
  result = v0[13] - 2 - v6;
  v0[13] = result;
  return result;
}


// 0x804c658
int sub_804C658()
{
  int v0; // r4
  int result; // r0

  *(v0 + 26) -= 12;
  result = *(v0 + 24) + 12;
  *(v0 + 24) = result;
  return result;
}


// 0x804c668
void sub_804C668()
{
  ;
}


// 0x804c66c
int sub_804C66C()
{
  return sub_804C6C4(off_804C67C);
}


// 0x804c694
void sub_804C694()
{
  int v0; // r5
  int v1; // r1
  int v2; // r2
  int v3; // r3

  sub_804C6C4(off_804C6AC);
  if ( !*(v0 + 13) )
    sub_8002484(*(v0 + 13), v1, v2, v3);
}


// 0x804c6c4
void __fastcall sub_804C6C4(int a1)
{
  int v1; // r5
  int v2; // r10
  int v3; // r3
  _BYTE *v4; // r2
  _BYTE *v5; // r1
  int v6; // r0

  v3 = *(v1 + 12);
  v4 = (*(a1 + v3) + 2 * (*(v1 + 24) >> 3));
  v5 = *(v2 + oToolkit_Unk2009740_Ptr);
  *v5 = 72;
  v5[1] = 55;
  v5[2] = *v4;
  v5[3] = v4[1];
  v6 = *(v1 + 24) + 1;
  *(v1 + 24) = v6;
  if ( v6 >= 64 )
  {
    *(v1 + 24) = 0;
    *(v1 + 13) = 0;
    sub_8001820(0, v5, v4, v3);
  }
}


// 0x804c700
int sub_804C700()
{
  int v0; // r5

  return (*(&off_804C714 + *(v0 + 16)))();
}


// 0x804c71c
int sub_804C71C()
{
  int v0; // r10
  _WORD *v1; // r1
  int result; // r0

  v1 = *(v0 + oToolkit_RenderInfoPtr);
  result = *v1 & 0xF7FF;
  *v1 = result;
  return result;
}


// 0x804c72c
int sub_804C72C()
{
  int v0; // r5
  int v1; // r10

  (loc_8000AC8)(byte_86A2C00, 100716352, byte_80);
  (loc_8000AC8)(byte_86A2BE0, byte_3001B00, 32);
  *(*(v1 + oToolkit_RenderInfoPtr) + 10) = 7945;
  sub_804C844();
  *(v0 + 16) = 4;
  return sub_804C770();
}


// 0x804c770
int sub_804C770()
{
  int v0; // r5
  int v1; // r10
  _WORD *v2; // r4
  int v3; // r0

  v2 = *(v1 + oToolkit_RenderInfoPtr);
  *v2 |= 0x800u;
  v2[13] -= 12;
  v2[12] += 12;
  v3 = (*(&off_804C7B4 + *(v0 + 13)))();
  sub_804C818(v3);
  return copyTiles();
}


// 0x804c7c4
void sub_804C7C4()
{
  ;
}


// 0x804c7c8
void sub_804C7C8()
{
  sub_804C6C4(&off_804C7D8);
}


// 0x804c7ec
void sub_804C7EC()
{
  int v0; // r5
  int v1; // r1
  int v2; // r2
  int v3; // r3

  sub_804C6C4(&off_804C804);
  if ( !*(v0 + 13) )
    sub_8002484(*(v0 + 13), v1, v2, v3);
}


// 0x804c818
int sub_804C818()
{
  int v0; // r5
  int v1; // r0
  unsigned __int8 v2; // vf
  int result; // r0
  int v4; // r1

  v1 = *(v0 + 20);
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if ( (result < 0) ^ v2 )
  {
    *(v0 + 20) = &byte_12C[change_20013F0_800151C()];
    v4 = *(v0 + 14);
    result = *&byte_804C858[v4];
    if ( *&byte_804C858[v4] )
      result = sound_play(result);
  }
  else
  {
    *(v0 + 20) = result;
  }
  return result;
}


// 0x804c844
signed int sub_804C844()
{
  int v0; // r5
  signed int result; // r0

  result = 16;
  *(v0 + 20) = 16;
  return result;
}


// 0x804ca90
int sub_804CA90()
{
  int v0; // r5
  int v1; // r1
  int v2; // r2
  int v4; // [sp+0h] [bp-3Ch]
  int v5; // [sp+18h] [bp-24h]
  int v6; // [sp+1Ch] [bp-20h]
  int v7; // [sp+20h] [bp-1Ch]

  if ( *&byte_804C860[40 * *(v0 + 12) + 24] == 1 )
  {
    CopyWords(&byte_804C860[40 * *(v0 + 12)], &v4, 0x28u);
    v5 = sub_809E1AE();
    v6 = v1;
    v7 += v2;
  }
  return (*(&off_804CAD0 + *(v0 + 16)))();
}


// 0x804cae0
signed int __fastcall sub_804CAE0(int a1, int a2, int a3, int a4)
{
  int v4; // r10

  sub_8001820(a1, a2, a3, a4);
  sub_8001708(
    *(*(v4 + oToolkit_GameStatePtr) + oGameState_MapGroup),
    *(*(v4 + oToolkit_GameStatePtr) + oGameState_MapNumber));
  **(v4 + oToolkit_RenderInfoPtr) &= 0xD7FFu;
  return sub_8006A5C();
}


// 0x804cb0c
int sub_804CB0C()
{
  int v0; // r5
  int *v1; // r7
  int v2; // r10
  _WORD *v3; // r1
  int v4; // r2
  int v5; // r3

  (loc_8000AC8)(byte_86A34C0, 100716512, 32);
  (loc_8000AC8)(&byte_86A3480[32 * *(v0 + 13)], byte_3001B00, 32);
  v3 = *(v2 + oToolkit_RenderInfoPtr);
  v3[5] = 7945;
  v3[13] = 0;
  v3[12] = 0;
  sub_8006920(v1, sub_8006920, v4, v5);
  *(v0 + 16) = 4;
  return sub_804CB64();
}


// 0x804cb64
signed int sub_804CB64()
{
  int v0; // r10
  signed int result; // r0
  char v2; // zf
  int v3; // [sp+0h] [bp-18h]

  **(v0 + oToolkit_RenderInfoPtr) |= 0x2800u;
  copyTiles();
  result = sub_8006990();
  if ( !v2 )
  {
    result = 8;
    *(v3 + 16) = 8;
  }
  return result;
}


// 0x804cba0
void sub_804CBA0()
{
  ;
}


// 0x804cba4
int sub_804CBA4()
{
  int v0; // r5

  return (*(&off_804CBB8 + *(v0 + 16)))();
}


// 0x804cbc0
void __fastcall sub_804CBC0(int a1, int a2, int a3, int a4)
{
  int v4; // r10
  _WORD *v5; // r1

  v5 = *(v4 + oToolkit_RenderInfoPtr);
  *v5 &= 0xF7FFu;
  v5[5] = 16139;
  sub_8001820(16139, v5, 2048, a4);
}


// 0x804cbdc
int sub_804CBDC()
{
  int v0; // r5
  int v1; // r10
  _BYTE *v2; // r1
  int v3; // r0

  (loc_8000AC8)(byte_86A39B0, 100716512, 32);
  (loc_8000AC8)(byte_86A3990, byte_3001B00, 32);
  *(*(v1 + oToolkit_RenderInfoPtr) + 10) = 7945;
  v2 = *(v1 + oToolkit_Unk2009740_Ptr);
  *v2 = 72;
  v2[1] = 55;
  sub_8001974();
  v3 = (*(&off_804CC40 + *(v0 + 12)))();
  sub_804CCF0(v3);
  *(v0 + 16) = 4;
  return sub_804CC8E();
}


// 0x804cc58
signed int sub_804CC58()
{
  int v0; // r10
  int v1; // r1
  signed int result; // r0

  sub_8001B6C(3);
  v1 = *(v0 + oToolkit_Unk2009740_Ptr);
  *(v1 + 2) = 12;
  result = 16;
  *(v1 + 3) = 16;
  return result;
}


// 0x804cc6e
signed int sub_804CC6E()
{
  int v0; // r10
  int v1; // r1
  signed int result; // r0

  v1 = *(v0 + oToolkit_Unk2009740_Ptr);
  *(v1 + 2) = 12;
  result = 16;
  *(v1 + 3) = 16;
  return result;
}


// 0x804cc7e
signed int sub_804CC7E()
{
  int v0; // r10
  int v1; // r1
  signed int result; // r0

  v1 = *(v0 + oToolkit_Unk2009740_Ptr);
  *(v1 + 2) = 8;
  result = 16;
  *(v1 + 3) = 16;
  return result;
}


// 0x804cc8e
int sub_804CC8E()
{
  int v0; // r5

  return (*(&off_804CCA4 + *(v0 + 12)))();
}


// 0x804ccbc
void sub_804CCBC()
{
  ;
}


// 0x804ccc0
signed int sub_804CCC0()
{
  int v0; // r10
  int v1; // r1
  signed int result; // r0

  v1 = *(v0 + oToolkit_Unk2009740_Ptr);
  *(v1 + 2) = byte_804CCE0[**(v0 + oToolkit_CurFramePtr) & 0xF];
  result = 16;
  *(v1 + 3) = 16;
  return result;
}


// 0x804ccf0
int sub_804CCF0()
{
  int v0; // r10
  _WORD *v1; // r1

  v1 = *(v0 + oToolkit_RenderInfoPtr);
  *v1 |= 0x800u;
  v1[13] = 0;
  v1[12] = 0;
  return copyTiles();
}


// 0x804cd20
int sub_804CD20()
{
  int v0; // r5

  return (*(&off_804CD34 + *(v0 + 16)))();
}


// 0x804cd5c
int sub_804CD5C()
{
  _BYTE *v0; // r5
  int v1; // r10
  _WORD *v2; // r1
  _BYTE *v3; // r1
  int v4; // r0

  (loc_8000AC8)(byte_86A3EA0, 100715520, &loc_A0);
  (loc_8000AC8)(byte_86A3E80, byte_3001B00, 32);
  v2 = *(v1 + oToolkit_RenderInfoPtr);
  v2[5] = 7945;
  v2[13] = 0;
  v2[12] = 0;
  v3 = *(v1 + oToolkit_Unk2009740_Ptr);
  *v3 = 72;
  v3[1] = 55;
  v3[2] = 16;
  v3[3] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[17] = 0;
  v0[21] = 2;
  v4 = sub_8001974();
  sub_804CDD4(v4);
  v0[16] = 4;
  return sub_804CDCC();
}


// 0x804cdcc
int __fastcall sub_804CDCC(int a1)
{
  return sub_804CDD4(a1);
}


// 0x804cdd4
int sub_804CDD4()
{
  int v0; // r10
  int v1; // r0
  char v2; // zf

  **(v0 + oToolkit_RenderInfoPtr) |= 0x800u;
  v1 = TestEventFlagFromImmediate(11, 240);
  if ( !v2 )
    v1 = sub_804CE3C(v1);
  sub_804CE0C(v1);
  return copyTiles();
}


// 0x804ce0c
int sub_804CE0C()
{
  int v0; // r5
  int v1; // r10
  int v2; // r2
  int v3; // r4
  __int16 v4; // r0
  __int16 v5; // r3
  int v6; // r0
  int v7; // r3
  int result; // r0

  v2 = byte_0[dword_804CE38 + 1];
  v3 = *(v1 + oToolkit_RenderInfoPtr);
  v4 = *(v3 + 24);
  v5 = *(v0 + 19) + dword_804CE38;
  *(v0 + 19) = v5;
  *(v3 + 24) = v4 + v5;
  v6 = *(v3 + 26);
  v7 = *(v0 + 20) + v2;
  *(v0 + 20) = v7;
  result = v6 + v7;
  *(v3 + 26) = result;
  return result;
}


// 0x804ce3c
int sub_804CE3C()
{
  int v0; // r5
  int v1; // r10
  int result; // r0
  int v3; // r4

  result = *(v0 + 21) - 1;
  *(v0 + 21) = result;
  if ( !result )
  {
    *(v0 + 21) = 2;
    v3 = *(v1 + oToolkit_Unk2009740_Ptr);
    result = *(v3 + 3);
    if ( result < 16 )
    {
      *(v3 + 3) = result + 1;
      result = *(v3 + 2);
      if ( *(v3 + 2) )
        *(v3 + 2) = --result;
    }
  }
  return result;
}


// 0x804ce90
char (*sub_804CE90())[8]
{
  int v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r0
  char (*result)[8]; // r0

  *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_804CE68[*(v0 + 5)];
  sub_803037C(*(v0 + 4), *(v0 + 5));
  sub_8030AA4(*(v0 + 4), *(v0 + 5));
  v2 = *(v0 + 5);
  sub_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
  sub_8030472();
  sub_80028D4(byte_2037800, v3, v4, v5);
  sub_8002906(off_804CEFC[*(v0 + 5)]);
  v6 = chatbox_uncomp_803FD08();
  sub_804CF84(v6);
  result = off_804D0E4[*(v0 + 5)];
  *(v0 + 100) = result;
  return result;
}


// 0x804cf32
int __fastcall sub_804CF32(int a1, int a2)
{
  return sub_8002354(off_804CF44[a2]);
}


// 0x804cf84
int sub_804CF84()
{
  int v0; // r10

  return sub_8003570(off_804CF9C[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


