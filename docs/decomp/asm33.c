// 0x8123208
int sub_8123208()
{
  int v0; // r0
  int v1; // r7
  __int16 v2; // r0
  int v3; // r2
  int v4; // r2
  int v5; // r2
  int v6; // r2
  int v7; // r2
  int result; // r0

  v0 = getPETNaviSelect();
  v1 = v0;
  v2 = sub_80137FE(v0);
  sub_80137E6(v1, 66, word_200DCF0 + v2);
  v3 = word_200DCF2 + sub_80137B6(v1);
  if ( v3 > 4 )
    LOBYTE(v3) = 4;
  navicust_801379E(v1, 1, v3);
  v4 = word_200DCF8 + sub_80137B6(v1);
  if ( v4 > 4 )
    LOBYTE(v4) = 4;
  navicust_801379E(v1, 2, v4);
  v5 = word_200DCFA + sub_80137B6(v1);
  if ( v5 > 4 )
    LOBYTE(v5) = 4;
  navicust_801379E(v1, 3, v5);
  v6 = word_200DCF4 + sub_80137B6(v1);
  if ( v6 > 10 )
    LOBYTE(v6) = 10;
  navicust_801379E(v1, 11, v6);
  v7 = word_200DCF6 + sub_80137B6(v1);
  if ( v7 > 8 )
    LOBYTE(v7) = 8;
  result = navicust_801379E(v1, 10, v7);
  if ( word_200DCFC )
    result = navicust_801379E(v1, 7, 48);
  if ( word_200DCFE )
    result = navicust_801379E(v1, 28, 1);
  if ( word_200DD00 )
    result = navicust_801379E(v1, 27, 1);
  if ( word_200DD02 )
    result = navicust_801379E(v1, 35, 1);
  if ( word_200DD04 )
    result = navicust_801379E(v1, 7, 52);
  return result;
}


// 0x8123300
void __fastcall sub_8123300(int a1, int a2, _DWORD *a3)
{
  int v3; // r7
  int v4; // r0
  int v5; // r2
  int v6; // [sp+0h] [bp-14h]
  int v7; // [sp+4h] [bp-10h]
  _DWORD *v8; // [sp+8h] [bp-Ch]

  v6 = a1;
  v7 = a2;
  v8 = a3;
  v3 = 48;
  if ( sub_8123360() )
    v3 = 4 * getPETNaviSelect();
  SWI_LZ77UnCompReadNormalWrite8bit(*(v6 + v3), v8);
  v4 = (v8 + 1);
  v5 = (*v8 >> 8) - 4;
  if ( v5 & 1 )
  {
    CopyBytes(v4, v7, v5);
  }
  else if ( v5 & 3 )
  {
    CopyHalfwords(v4, v7, v5);
  }
  else if ( v5 & 0x1F )
  {
    CopyWords(v4, v7, v5);
  }
  else
  {
    CopyByEightWords(v4, v7, v5);
  }
}


// 0x8123360
signed int sub_8123360()
{
  int v0; // r10
  signed int v1; // r4
  char v2; // zf

  v1 = 0;
  if ( getPETNaviSelect() || (TestEventFlagFromImmediate(23, 42), v2) )
  {
    v1 = 1;
    if ( *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapGroup) < 128 )
    {
      v1 = 0;
      TestEventFlagFromImmediate(23, 29);
      if ( !v2 )
        v1 = 1;
    }
  }
  return v1;
}


// 0x8123408
signed int sub_8123408()
{
  _BYTE **v0; // r10
  signed int result; // r0

  CopyWords(byte_2037780, &sSubmenu, 0x80u);
  sSubmenu.unk_00 = 0;
  sSubmenu.jo_01 = 16;
  sSubmenu.unk_02 = 0;
  result = 40;
  **v0 = 40;
  return result;
}


// 0x8123434
int sub_8123434()
{
  int v0; // r5

  return (*(&off_8123448 + *(v0 + 1)))();
}


// 0x812345c
void __noreturn sub_812345C()
{
  int v0; // r0

  v0 = sub_81237E0(1);
  chipFolder_initGfx_812386C(v0);
}


// 0x812349c
void __noreturn sub_812349C()
{
  int v0; // r0

  v0 = sub_81237E0(0);
  chipFolder_initGfx_812386C(v0);
}


// 0x81234dc
void __noreturn sub_81234DC()
{
  sub_812349C();
}


// 0x8123514
int sub_8123514()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0

  v1 = (*(&off_812353C + *(v0 + 2)))();
  v2 = sub_8123A50(v1);
  v3 = sub_8123C98(v2);
  sub_8123E58(v3);
  sub_80465BC();
  return sub_80465F8();
}


// 0x8123558
int sub_8123558()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int result; // r0
  char v4; // zf

  v1 = sub_8123BC0();
  v2 = sub_8123BE0(v1);
  sub_8123C00(v2);
  result = engine_isScreeneffectAnimating();
  if ( !v4 )
  {
    result = 4;
    *(v0 + 2) = 4;
  }
  return result;
}


// 0x8123574
int sub_8123574()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int result; // r0
  char v5; // zf

  *(v0 + 32) = 2;
  v1 = sub_8123BC0();
  v2 = sub_8123BE0(v1);
  v3 = sub_8123C00(v2);
  sub_8123D70(v3);
  sub_811B314(1, 3);
  result = engine_isScreeneffectAnimating();
  if ( !v5 )
  {
    *(v0 + 2) = 12;
    result = 0;
    *(v0 + 3) = 0;
  }
  return result;
}


// 0x81235a4
void __noreturn sub_81235A4()
{
  int v0; // r5
  int v1; // r10
  char v2; // zf
  signed int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r1
  int v7; // r3

  sub_811F7EC();
  if ( v2 )
  {
    sub_811F7EC();
    if ( v2 )
    {
      *(v0 + 30) = 26;
      *(v0 + 40) = 26;
      *(v0 + 50) = 26;
      v3 = sub_811F91C(*(*(v1 + oToolkit_JoypadPtr) + 4), 1u, 0, *(&dword_8123640 + *(v0 + 12)));
      if ( !v3 )
      {
        v5 = *(*(v1 + oToolkit_JoypadPtr) + 4);
        v6 = *(*(v1 + oToolkit_Unk2001c04_Ptr) + 5);
        v7 = *(v0 + 12);
        sub_811FA0C();
        if ( v3 != *(v0 + 12) )
        {
          *(v0 + 12) = v3;
          v3 = sub_8123A80();
        }
      }
    }
    else
    {
      v4 = sub_8123E08();
      sub_8123D54(v4);
      sound_play(129);
      sub_811B314(1, 3);
      *(v0 + 2) = 12;
      *(v0 + 3) = 0;
      v3 = 0;
      *(v0 + 32) = 0;
    }
  }
  else
  {
    sub_811FB64(8);
    v3 = sound_play(131);
  }
  sub_8123AB8(v3);
}


// 0x8123644
int sub_8123644()
{
  _BYTE *v0; // r5
  int result; // r0
  char v2; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    chatbox_8040818();
    *v0 = 32;
    result = 0;
    v0[1] = 0;
    v0[2] = 0;
  }
  return result;
}


// 0x812365c
int sub_812365C()
{
  int v0; // r5

  return (*(&off_8123670 + *(v0 + 3)))();
}


// 0x8123678
signed int sub_8123678()
{
  int v0; // r5
  signed int result; // r0
  char v2; // zf

  result = sub_81190F8(0);
  if ( !v2 )
  {
    *(v0 + 3) = 4;
    result = sub_8123D70(4);
  }
  return result;
}


// 0x812368c
int sub_812368C()
{
  int v0; // r5
  int v1; // r10
  char v2; // zf
  int result; // r0
  int v4; // r0
  int v5; // r0
  char v6; // r4
  signed int v7; // r6
  int v8; // r0
  int v9; // r4

  sub_811F7EC();
  if ( !v2 )
  {
    *(v0 + 2) = 4;
    sub_811B314(1, 0);
    sound_play(131);
    return sub_8119118(0);
  }
  sub_811F7EC();
  if ( v2 )
  {
    v9 = 3;
    if ( (sub_8123E08)() )
      v9 = 1;
    v8 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 4), v9, 1, *(v0 + 32));
    *(v0 + 32) = v8;
    return sub_8123D70(v8);
  }
  v4 = sound_play(129);
  v5 = *(off_8123768[sub_8123E08(v4)] + *(v0 + 32));
  *(v0 + 2) = v5;
  if ( v5 != 12 )
  {
    v8 = engine_setScreeneffect(12, 16);
    return sub_8123D70(v8);
  }
  v6 = sub_80137B6(*(v0 + 20));
  navicust_801379E(*(v0 + 20), 45, *(v0 + 12));
  sub_8120D10(1);
  if ( v2 )
  {
    *(v0 + 2) = 4;
    sub_811B314(1, 0);
    sound_play(386);
    result = sub_8119118(0);
  }
  else
  {
    navicust_801379E(*(v0 + 20), 45, v6);
    v7 = 8;
    if ( (sub_8137884(*(v0 + 12)) >> 4) >= 2 )
      v7 = 9;
    sub_8123A40(v7);
    *(v0 + 2) = 16;
    result = sub_8119118(0);
  }
  return result;
}


// 0x812377c
int sub_812377C()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = chatbox_8045F3C(8);
  if ( !v2 )
  {
    *(v0 + 2) = 4;
    result = chatbox_8040818();
  }
  return result;
}


// 0x8123790
void sub_8123790()
{
  int v0; // r5
  char v1; // zf
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int v5; // r2
  int v6; // r3

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    chatbox_8040818();
    CopyWords(v0, byte_2037780, 0x80u);
    sub_8049DDC(*(v0 + 12), v2, v3, v4);
    ZeroFillByWord(v0, 0x80u, v5, v6);
  }
}


// 0x81237bc
int __fastcall __noreturn sub_81237BC(int a1)
{
  int v1; // r0
  int v2; // r0
  int result; // r0
  char v4; // zf

  v1 = sub_8123A50(a1);
  v2 = sub_8123C98(v1);
  sub_8123E58(v2);
  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v4 )
    result = sub_811F708();
  return result;
}


// 0x81237e0
int __fastcall sub_81237E0(int a1, int a2)
{
  int v2; // r5
  int v3; // r10
  int v4; // r4
  char v5; // r0
  char v6; // r1
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  _WORD *v15; // r0
  int result; // r0

  v4 = a1;
  *(v2 + 36) = 0;
  *(v2 + 38) = 0;
  *(v2 + 46) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 58) = 0;
  *(v2 + 76) = a2;
  *(v2 + 32) = 0;
  *(v2 + 34) = 0;
  *(v2 + 42) = 0;
  *(v2 + 44) = 0;
  *(v2 + 52) = 0;
  *(v2 + 54) = 0;
  *(v2 + 16) = 0;
  *(v2 + 17) = 0;
  *(v2 + 24) = 0;
  v5 = sub_8120CC8(0, &dword_81233D4);
  *(v2 + 18) = v5 | 16 * v6;
  v7 = getPETNaviSelect();
  *(v2 + 20) = v7;
  if ( v4 )
  {
    sub_80017AA(v7, v8, v9, v10);
    sub_80017E0(v11, v12, v13, v14);
    v7 = sub_80137B6(*(v2 + 20));
    *(v2 + 12) = v7;
  }
  sub_800183C(v7, v8, v9, v10);
  sub_80015FC(16);
  v15 = *(v3 + oToolkit_RenderInfoPtr);
  *v15 = 8000;
  v15[8] = 0;
  v15[9] = 0;
  v15[10] = 0;
  v15[11] = 0;
  v15[12] = 0;
  v15[13] = 0;
  *(v2 + 1) = 4;
  engine_setScreeneffect(8, 16);
  result = 0;
  *(v2 + 2) = 0;
  return result;
}


// 0x812386c
int __noreturn chipFolder_initGfx_812386C()
{
  int v0; // r6
  int v1; // r7
  char (*v2)[32]; // r0
  int v3; // r7
  int v4; // r1
  signed int v5; // r1

  v0 = 0;
  v1 = 0;
  do
  {
    v2 = *(&off_812391C + v1);
    v3 = v1 + 4;
    v4 = *(&off_812391C + v3);
    v1 = v3 + 4;
    *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
    v0 += 4;
    v5 = 0;
    do
    {
      *(&unk_20096E0 + v0) = *(&off_812391C + v1);
      v0 += 4;
      v1 += 4;
      ++v5;
    }
    while ( v5 < 2 );
  }
  while ( v1 < 64 );
  *(&unk_20096E0 + v0) = 0;
  decompAndCopyData_8000B30(&unk_20096E0);
  decompAndCopyData_8000B30(&dword_8123964);
  sub_8123300(&off_81238E4, &unk_201C220, decomp_2013A00);
  copyTiles();
  return copyTiles();
}


// 0x8123a40
void __fastcall sub_8123A40(int a1)
{
  chatbox_runScript_803FD9C(&unk_201C220, a1);
}


// 0x8123a50
signed int sub_8123A50()
{
  int v0; // r5

  return sub_811FA98(14286909, 0x20002u, 30, *(v0 + *(&dword_8123A7C + *(v0 + 12))));
}


// 0x8123a80
int sub_8123A80()
{
  int v0; // r5
  int v1; // r4
  int v2; // r6
  int result; // r0

  sub_811FCB8(*(v0 + 12), &unk_201D220, 1, byte_20343E0);
  v1 = 2 * *(v0 + 12) + 86;
  v2 = sub_80137B6(*(v0 + 20));
  result = sub_80137B6(*(v0 + 20)) + v2;
  *(v0 + 100) = result;
  return result;
}


// 0x8123ab8
int __noreturn sub_8123AB8()
{
  int v0; // r5
  int v1; // r7

  v1 = v0;
  sub_81200EC(*(v0 + *(&dword_8123BBC + *(v0 + 12))), &unk_201D220, &unk_201D6E0);
  copyTiles();
  sub_8120390(*(v1 + *(&dword_8123BBC + *(v1 + 12))), &unk_201D220, &unk_201D7C0, byte_8123394);
  copyTiles();
  sub_81203E4(*(v1 + *(&dword_8123BBC + *(v1 + 12))), &unk_201D220, &unk_201D7F8, &dword_35C | 0xA000);
  copyTiles();
  sub_8120458(*(v1 + *(&dword_8123BBC + *(v1 + 12))), &unk_201D220, &unk_201D830, 45590);
  copyTiles();
  sub_81204C4(*(v1 + *(&dword_8123BBC + *(v1 + 12))), &unk_201D220, &unk_201D84C, 37711);
  return copyTiles();
}


// 0x8123bc0
int sub_8123BC0()
{
  return sub_8123C20(&dword_8123BDC, 1, byte_81233D8, 4);
}


// 0x8123be0
int sub_8123BE0()
{
  return sub_8123C20(&dword_8123BFC, 32, byte_81233E0, 5);
}


// 0x8123c00
int sub_8123C00()
{
  return sub_8123C20(&dword_8123C1C, 64, byte_81233E8, 6);
}


// 0x8123c20
int __fastcall sub_8123C20(int a1, int a2, void *a3, int a4)
{
  int v4; // r4
  int v5; // r5
  int v6; // r6
  int v7; // r1
  int v8; // r0
  int result; // r0
  int v10; // r0
  int v11; // [sp+0h] [bp-1Ch]
  int v12; // [sp+4h] [bp-18h]
  void *v13; // [sp+8h] [bp-14h]
  int v14; // [sp+Ch] [bp-10h]

  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v7 = *(a1 + *(v5 + 12));
  v8 = sub_80137B6(*(v5 + 20));
  if ( v8 == 255 )
  {
    result = v12;
    if ( v12 & *(v5 + 76) )
      result = sub_81171F4(1, v14);
  }
  else
  {
    *(v5 + v4) = v8;
    if ( !(v12 & *(v5 + 76)) )
    {
      sub_80465A0(v13);
      *(v5 + 76) |= v12;
    }
    v10 = 10 * *(v5 + 12) + 36;
    if ( v12 == 1 )
      result = sub_81348DC(v10, 157, 72, v14, v11);
    else
      result = sub_8134930(v10, 157, 72, v6, v11);
  }
  return result;
}


// 0x8123c98
signed int sub_8123C98()
{
  int v0; // r5
  unsigned int v1; // r0
  int v2; // r0

  sub_80018D0(3, 6, 2, 0);
  v1 = sub_8137884(*(v0 + 12));
  sub_8120348(v1 >> 4, &unk_20347D8, 11, 1);
  copyTiles();
  v2 = sub_80137B6(*(v0 + 20));
  return sub_812053C(v2, 33120);
}


// 0x8123cfc
int sub_8123CFC()
{
  return sub_81348DC(36, 157, 72, 4);
}


// 0x8123d10
int __fastcall sub_8123D10(int a1, int a2)
{
  return sub_8134930(36, 157, 72, a2);
}


// 0x8123d24
char *sub_8123D24()
{
  int v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r6
  int v4; // r2
  char *result; // r0

  v2 = *(*(v1 + oToolkit_Unk2001c04_Ptr) + 5);
  v3 = 0;
  do
  {
    v4 = v3 << 8;
    if ( *(v0 + 12) == v3 )
      v4 |= 1u;
    result = sub_8046670(21, v3++ + 7, v4 | 0x10000);
  }
  while ( v3 < v2 );
  return result;
}


// 0x8123d54
void __fastcall sub_8123D54(int a1)
{
  int v1; // r1
  char *v2; // r0

  v1 = a1;
  v2 = byte_81233F0;
  if ( v1 )
    v2 = byte_81233F8;
  sub_80465A0(v2);
}


// 0x8123d70
int __fastcall sub_8123D70(int a1)
{
  int v1; // r0

  v1 = sub_8123E08(a1);
  return sub_8123D98(0, *&byte_8123D90[4 * v1], 32, 18);
}


// 0x8123d98
int __fastcall sub_8123D98(int a1, int a2, int a3, int a4)
{
  int *v4; // r4
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
  v9 = sub_811FAF4(v6 | (a2 + 16 * v7), 0x20005u, v8 & 0xF, v4);
  v10 = (v8 >> 4) - 1;
  if ( v8 >> 4 == 1 )
    *(v5 + v12) = sub_8120CC8(v9, &dword_81233D4);
  result = *(v5 + v12) & 0xF | 16 * v10;
  *(v5 + v12) = result;
  return result;
}


// 0x8123e08
signed int sub_8123E08()
{
  int v0; // r5
  signed int v1; // r2

  v1 = 0;
  if ( *(&unk_20018EC + *(v0 + 12)) & 0x20 )
    v1 = 1;
  return v1;
}


// 0x8123e24
int sub_8123E24()
{
  int v0; // r5
  signed int v1; // r4
  int result; // r0
  int v3; // r1
  char v4; // zf

  v1 = 0;
  do
  {
    result = sub_80466C4(*&byte_8123E4C[4 * v1]);
    if ( !v4 )
    {
      result = 0;
      if ( *(v0 + 12) == v1 )
        result = 1;
      *(v3 + 4) = result;
    }
    ++v1;
  }
  while ( v1 < 3 );
  return result;
}


// 0x8123e58
int sub_8123E58()
{
  unsigned __int8 *v0; // r5
  int v1; // r6
  int result; // r0

  v1 = 4 * sub_80137B6(v0[20]);
  if ( v0[17] )
  {
    sub_811FAF4(*&byte_8123F00[v1], 0x20005u, 0, &dword_81233C4);
    sub_811FAF4(*&byte_8123F1C[v1], 0x20005u, 0, &dword_81233C8);
  }
  else
  {
    sub_811FAF4(*&byte_8123EC8[v1], 0x20005u, 0, &dword_81233BC);
    sub_811FAF4(*&byte_8123EE4[v1], 0x20005u, 0, &dword_81233C0);
  }
  result = v0[16] + 1;
  if ( result >= 6 )
  {
    v0[17] ^= 1u;
    result = 0;
  }
  v0[16] = result;
  return result;
}


// 0x8123f5c
int ho_8123F5C()
{
  int v0; // r5

  return (*(&jt_8123F70 + *(v0 + 1)))();
}


// 0x8123f7c
void __fastcall sub_8123F7C(int a1, int a2, int a3, int a4)
{
  _BYTE *v4; // r5
  int v5; // r10
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  _WORD *v14; // r0
  signed int v15; // r0
  int v16; // r0

  sub_80017AA(a1, a2, a3, a4);
  sub_80017E0(v6, v7, v8, v9);
  sub_800183C(v10, v11, v12, v13);
  sub_80015FC(16);
  v14 = *(v5 + oToolkit_RenderInfoPtr);
  *v14 = 8000;
  v14[8] = 0;
  v14[9] = 0;
  v14[10] = 0;
  v14[11] = 0;
  v14[12] = 0;
  v14[13] = 0;
  v4[1] = 4;
  v4[2] = 0;
  engine_setScreeneffect(8, 16);
  v15 = sub_8046664();
  sub_8124384(v15);
  v4[12] = 6;
  subchip_initGfx_81243B0();
  v16 = sub_8120C94(&unk_201EC2C, 8, 6, 3170816);
  sub_81247EC(v16);
}


// 0x812407c
void __noreturn sub_812407C()
{
  int v0; // r5
  int v1; // r0

  (*(&off_81240A0 + *(v0 + 2)))();
  sub_80465BC();
  v1 = sub_80465F8();
  sub_812453C(v1);
}


// 0x81240bc
int sub_81240BC()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  sub_81244EC();
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    result = 4;
    *(v0 + 2) = 4;
  }
  return result;
}


// 0x81240d0
int sub_81240D0()
{
  int v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r0
  int v4; // r1

  sub_811F7EC();
  if ( v2 )
  {
    if ( !*(v0 + 12) || (sub_811F7EC(), v2) )
    {
      v3 = *(*(v1 + oToolkit_JoypadPtr) + 4);
      v4 = *(v0 + 12);
      if ( v4 > 1 )
      {
        v3 = sub_811FA22(v3, v4, 1, *(v0 + 20));
        *(v0 + 20) = v3;
      }
    }
    else if ( byte_201C400[2 * *(v0 + 20) + 1] )
    {
      sub_81245D4();
      v3 = sound_play(129);
    }
    else
    {
      v3 = sound_play(105);
    }
  }
  else
  {
    v3 = sub_811FB64(8);
  }
  return sub_81244EC(v3);
}


// 0x8124134
int sub_8124134()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = chatbox_8045F3C(128);
  if ( v2 )
  {
    result = 4;
    *(v0 + 2) = 4;
  }
  return result;
}


// 0x8124144
int sub_8124144()
{
  _BYTE *v0; // r5
  int result; // r0
  char v2; // zf

  if ( v0[17] & 1 )
    return (*(&off_8124188 + v0[3]))();
  result = chatbox_8045F3C(128);
  if ( !result )
    return result;
  chatbox_8045F3C(16);
  if ( !v2 )
    goto LABEL_12;
  result = chatbox_8045F3C(32);
  if ( v2 )
    return result;
  if ( !chatbox_8045F4C() )
    return (*(&off_8124188 + v0[3]))();
LABEL_12:
  result = 4;
  v0[2] = 4;
  return result;
}


// 0x81241a0
void __noreturn sub_81241A0()
{
  int v0; // r5
  int v1; // r10
  signed int v2; // r4
  signed int v3; // r7
  int v4; // r0
  int v5; // r1

  v2 = 1;
  if ( *(*(v1 + oToolkit_JoypadPtr) + 2) & 2 )
    v2 = *(v0 + 22);
  if ( !(*(v0 + 17) & 1) )
  {
    *(v0 + 17) |= 1u;
    sound_play(138);
  }
  v3 = 8;
  if ( *(v0 + 22) <= v2 )
    *(v0 + 2) = 16;
  v4 = *(v0 + 24) + v2;
  v5 = *(v0 + 26);
  if ( v4 > v5 )
  {
    *(v0 + 24) = v5;
    *(v0 + 2) = 16;
    v3 = 9;
  }
  else
  {
    *(v0 + 24) = v4;
    *(v0 + 22) -= v2;
  }
  if ( *(v0 + 2) == 16 )
  {
    sub_812474C(v3);
    *(v0 + 17) &= 0xFEu;
  }
  sub_8120900(&unk_201C4B0, *(v0 + 24), *(v0 + 26), 3183072);
}


// 0x8124230
int sub_8124230()
{
  int v0; // r5
  int v1; // r10

  SetEventFlagFromImmediate(23, 10);
  *(*(v1 + oToolkit_Unk2001c04_Ptr) + 36) = 6000;
  *(v0 + 2) = 16;
  *(*(v1 + oToolkit_ChatboxPtr) + 76) = *(v0 + 16);
  return sub_812474C(10);
}


// 0x812425c
int sub_812425C()
{
  int v0; // r5
  int v1; // r10

  SetEventFlagFromImmediate(23, 9);
  *(v0 + 2) = 16;
  *(*(v1 + oToolkit_ChatboxPtr) + 76) = *(v0 + 16);
  return sub_812474C(10);
}


// 0x812427c
int sub_812427C()
{
  int v0; // r5
  int v1; // r10
  _DWORD *v2; // r4

  SetEventFlagFromImmediate(23, 11);
  v2 = *(v1 + oToolkit_Unk2001c04_Ptr);
  v2[10] = 6000;
  v2[11] = v2[7];
  *(v0 + 2) = 16;
  *(*(v1 + oToolkit_ChatboxPtr) + 76) = *(v0 + 16);
  return sub_812474C(10);
}


// 0x81242ac
signed int sub_81242AC()
{
  int v0; // r5
  int v1; // r10
  int v2; // r4
  signed int result; // r0

  SetEventFlagFromImmediate(23, 8);
  *(v0 + 2) = 20;
  *(*(v1 + oToolkit_ChatboxPtr) + 76) = *(v0 + 16);
  sub_812474C(10);
  v2 = *(v1 + oToolkit_GameStatePtr);
  *(v2 + oGameState_Unk_16) = 12;
  result = 255;
  *(v2 + oGameState_Unk_17) = -1;
  return result;
}


// 0x81242d8
void __noreturn sub_81242D8()
{
  int v0; // r5
  signed int v1; // r0
  int v2; // r0

  if ( !chatbox_8045F3C(128) )
  {
    *(v0 + 2) = 4;
    v1 = sub_803CE08(*(v0 + 16), 1);
    sub_8124384(v1);
    v2 = *(v0 + 12) - 1;
    if ( v2 < *(v0 + 20) )
      *(v0 + 20) = v2;
  }
  sub_8124870();
}


// 0x8124308
int sub_8124308()
{
  int v0; // r5
  int result; // r0
  char v2; // zf
  signed int v3; // r0
  int v4; // r0

  result = chatbox_8045F3C(128);
  if ( v2 )
  {
    v3 = sub_803CE08(*(v0 + 16), 1);
    sub_8124384(v3);
    v4 = *(v0 + 12) - 1;
    if ( v4 < *(v0 + 20) )
      *(v0 + 20) = v4;
    engine_setScreeneffect(12, 12);
    *(v0 + 17) |= 2u;
    result = 24;
    *(v0 + 2) = 24;
  }
  return result;
}


// 0x8124340
int sub_8124340()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    result = 8;
    *(v0 + 1) = 8;
  }
  return result;
}


// 0x8124350
int __fastcall sub_8124350(int a1)
{
  int v1; // r5
  int result; // r0
  char v3; // zf

  sub_81244EC(a1);
  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v3 )
  {
    sub_8046664();
    if ( *(v1 + 17) & 2 )
    {
      sub_811EBF4(1);
      result = sub_811F728();
    }
    else
    {
      result = sub_811F708();
    }
  }
  return result;
}


// 0x8124384
int sub_8124384()
{
  signed int v0; // r7
  int result; // r0
  int v2; // r3

  ZeroFillByByte(byte_201C400, 16);
  v0 = 128;
  do
  {
    result = sub_803CE28(v0);
    byte_201C400[v2] = v0;
    byte_201C400[v2 + 1] = result;
    ++v0;
  }
  while ( v0 <= 133 );
  return result;
}


// 0x81243b0
int subchip_initGfx_81243B0()
{
  int v0; // r6
  int v1; // r7
  char (*v2)[32]; // r0
  int v3; // r7
  int v4; // r1
  signed int v5; // r1

  v0 = 0;
  v1 = 0;
  do
  {
    v2 = *(&off_8124450 + v1);
    v3 = v1 + 4;
    v4 = *(&off_8124450 + v3);
    v1 = v3 + 4;
    *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
    v0 += 4;
    v5 = 0;
    do
    {
      *(&unk_20096E0 + v0) = *(&off_8124450 + v1);
      v0 += 4;
      v1 += 4;
      ++v5;
    }
    while ( v5 < 2 );
  }
  while ( v1 < 48 );
  *(&unk_20096E0 + v0) = 0;
  decompAndCopyData_8000B30(&unk_20096E0);
  decompAndCopyData_8000B30(byte_8124488);
  sub_8123300(&off_8124410, &unk_201C100, decomp_2013A00);
  return copyTiles();
}


// 0x81244ec
void sub_81244EC()
{
  int v0; // r5
  int v1; // r0
  int v2; // r1
  char v3; // r1

  if ( *(v0 + 12) )
  {
    v1 = sub_811FAF4(&dword_30[4 * *(v0 + 20)] | 0x40000, 0x10002u, *(v0 + 13), byte_8123F34);
    v2 = *(v0 + 18) - 1;
    *(v0 + 18) = v2;
    if ( !v2 )
    {
      *(v0 + 13) = sub_8120CC8(v1, &dword_8123F3C);
      *(v0 + 18) = v3;
    }
  }
}


// 0x812453c
void __noreturn sub_812453C()
{
  int v0; // r5
  int v1; // r1

  *(v0 + 14) = 0;
  if ( *(v0 + 12) )
  {
    v1 = byte_201C400[2 * *(v0 + 20)] - 128;
    *(v0 + 15) = byte_201C400[2 * *(v0 + 20)] + -128;
    *(v0 + 14) = render_graphicalText_8045F8C(&unk_201C100, v1, &unk_201AA00, 100691968);
  }
  sub_8124588();
}


// 0x8124588
void __noreturn sub_8124588()
{
  int v0; // r5

  if ( *(v0 + 14) )
    copyTiles();
  else
    sub_80018D0(15, 12, 2, 0);
}


// 0x81245bc
int __noreturn sub_81245BC()
{
  return copyTiles();
}


// 0x81245d4
int sub_81245D4()
{
  int v0; // r5
  int v1; // r10

  if ( *(*(v1 + oToolkit_GameStatePtr) + oGameState_MapGroup) >= 128 )
    return (*(&off_812460C + byte_201C400[2 * *(v0 + 20)] - 128))();
  *(v0 + 2) = 8;
  return sub_812474C(6);
}


// 0x8124624
int __fastcall sub_8124624(char a1)
{
  int v1; // r5
  int v2; // r10
  int v3; // r7
  signed __int16 v4; // r1
  int v5; // r4
  int v6; // r0
  int result; // r0

  *(v1 + 16) = a1;
  v3 = *(v1 + 26);
  if ( *(v1 + 24) == v3 )
  {
    *(v1 + 2) = 8;
    result = sub_812474C(6);
  }
  else
  {
    *(v1 + 2) = 12;
    *(v1 + 3) = 0;
    v4 = 50;
    v5 = *(v2 + oToolkit_ChatboxPtr);
    v6 = *(v1 + 16);
    if ( v6 != 128 )
      v4 = v3;
    *(v1 + 22) = v4;
    *(v5 + 76) = v6;
    result = sub_812474C(7);
  }
  return result;
}


// 0x8124660
int __fastcall sub_8124660(char a1)
{
  _BYTE *v1; // r5
  int v2; // r10
  int result; // r0

  v1[16] = a1;
  if ( *(*(v2 + oToolkit_Unk2001c04_Ptr) + 36) )
  {
    v1[2] = 8;
    *(*(v2 + oToolkit_ChatboxPtr) + 76) = v1[16];
    result = sub_812474C(11);
  }
  else
  {
    v1[2] = 12;
    v1[3] = 8;
    *(*(v2 + oToolkit_ChatboxPtr) + 76) = v1[16];
    result = sub_812474C(7);
  }
  return result;
}


// 0x812469c
int __fastcall sub_812469C(char a1)
{
  _BYTE *v1; // r5
  int v2; // r10
  char v3; // zf
  int result; // r0

  v1[16] = a1;
  TestEventFlagFromImmediate(23, 9);
  if ( v3 )
  {
    v1[2] = 12;
    v1[3] = 12;
    *(*(v2 + oToolkit_ChatboxPtr) + 76) = v1[16];
    result = sub_812474C(7);
  }
  else
  {
    v1[2] = 8;
    *(*(v2 + oToolkit_ChatboxPtr) + 76) = v1[16];
    result = sub_812474C(11);
  }
  return result;
}


// 0x81246d8
int __fastcall sub_81246D8(char a1)
{
  _BYTE *v1; // r5
  int v2; // r10
  int v3; // r4
  int result; // r0
  signed int v5; // r0

  v1[16] = a1;
  v3 = *(v2 + oToolkit_Unk2001c04_Ptr);
  if ( *(v3 + 40) )
  {
    *(*(v2 + oToolkit_ChatboxPtr) + 76) = v1[16];
    v5 = 11;
  }
  else
  {
    if ( *(v3 + 28) )
    {
      v1[2] = 12;
      v1[3] = 16;
      *(*(v2 + oToolkit_ChatboxPtr) + 76) = v1[16];
      return sub_812474C(7);
    }
    v5 = 13;
  }
  sub_812474C(v5);
  result = 8;
  v1[2] = 8;
  return result;
}


// 0x812471c
int __fastcall sub_812471C(char a1)
{
  _BYTE *v1; // r5
  int v2; // r7
  int v3; // r10
  int result; // r0

  v1[16] = a1;
  sub_809F9BE();
  if ( v2 )
  {
    v1[2] = 12;
    v1[3] = 20;
    *(*(v3 + oToolkit_ChatboxPtr) + 76) = v1[16];
    result = sub_812474C(7);
  }
  else
  {
    v1[2] = 8;
    result = sub_812474C(12);
  }
  return result;
}


// 0x812474c
void __fastcall sub_812474C(int a1)
{
  chatbox_runScript_803FD9C(&unk_201C100, a1);
}


// 0x812475c
void __noreturn sub_812475C()
{
  int v0; // r10
  int v1; // r7
  char v2; // zf

  v1 = *(v0 + oToolkit_Unk2001c04_Ptr);
  if ( *(v1 + 36) )
    copyTiles();
  else
    sub_80018D0(21, 8, 2, 0);
  TestEventFlagFromImmediate(23, 9);
  if ( v2 )
    sub_80018D0(21, 5, 2, 0);
  else
    copyTiles();
  if ( *(v1 + 40) )
    copyTiles();
  else
    sub_80018D0(21, 2, 2, 0);
}


// 0x81247ec
int __noreturn sub_81247EC()
{
  int v0; // r4
  int result; // r0
  int v2; // [sp+0h] [bp-18h]

  v0 = 0;
  v2 = 0;
  do
  {
    result = render_graphicalText_8045F8C(
               byte_873D9FC,
               *&byte_8124864[2 * v0],
               *(&off_812482C + v0),
               *&byte_8124848[4 * v0]);
    v0 = v2 + 1;
    v2 = v0;
  }
  while ( v0 < 6 );
  return result;
}


// 0x8124870
void __noreturn sub_8124870()
{
  int v0; // r5
  int v1; // r0
  int v2; // r1
  unsigned int v3; // r2

  v1 = 3174880;
  v2 = *(v0 + 24);
  v3 = *(v0 + 26);
  if ( (v3 >> 2) >= v2 )
    v1 = 3178976;
  sub_8120900(&unk_201C4B0, v2, v3, v1);
}


// 0x8124b3c
int sub_8124B3C()
{
  int v0; // r5

  return (*(&off_8124B50 + *(v0 + 1)))();
}


// 0x8124b5c
void __fastcall __noreturn sub_8124B5C(int a1, int a2, int a3, int a4)
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
  _WORD *v14; // r0
  int v15; // r0

  sub_80017AA(a1, a2, a3, a4);
  sub_80017E0(v6, v7, v8, v9);
  sub_800183C(v10, v11, v12, v13);
  sub_80015FC(16);
  v14 = *(v5 + oToolkit_RenderInfoPtr);
  *v14 = 32576;
  v14[8] = 0;
  v14[9] = 0;
  v14[10] = 0;
  v14[11] = 0;
  v14[12] = 0;
  v14[13] = 0;
  sub_8126818(0);
  *(v4 + 1) = 4;
  *(v4 + 2) = 0;
  v15 = sub_8125280();
  sub_81254FC(v15);
}


// 0x8124c30
void sub_8124C30()
{
  int v0; // r5

  (*(&off_8124C44 + *(v0 + 2)))();
  JUMPOUT(locret_8124C3E);
}


// 0x8124c94
void __noreturn sub_8124C94()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf
  int v3; // r0

  sub_8126818(0);
  sub_811983C(0, 1);
  *(v0 + 13) = 0;
  *(v0 + 22) = *(v0 + 20);
  *(v0 + 26) = *(v0 + 24);
  v1 = engine_isScreeneffectAnimating();
  if ( !v2 )
    v1 = sub_8125594(0);
  v3 = sub_8125444(v1);
  sub_8125D10(v3);
}


// 0x8124ce8
void __noreturn sub_8124CE8()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0

  sub_8126818(0);
  v1 = *(v0 + 116) - 2;
  *(v0 + 116) = v1;
  if ( v1 <= 142 )
  {
    *(v0 + 116) = 142;
    *(v0 + 2) = 12;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  sub_8125D10(v2);
}


// 0x8124d30
void __noreturn sub_8124D30()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0

  sub_8126818(0);
  v1 = *(v0 + 116) + 2;
  *(v0 + 116) = v1;
  if ( v1 >= 160 )
  {
    *(v0 + 116) = 160;
    *(v0 + 2) = 0;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  sub_8125D10(v2);
}


// 0x8124d78
int sub_8124D78()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r1
  int v5; // r0
  int v6; // r0
  int v7; // r0

  sub_8126818(0);
  sub_811983C(1, 1);
  *(v0 + 13) = 1;
  *(v0 + 32) = *(v0 + 30);
  *(v0 + 36) = *(v0 + 34);
  v1 = sub_81255F8(10);
  v2 = sub_8125444(v1);
  v3 = sub_8125D94(v2);
  sub_812650C(v3);
  sub_8117084(*(v0 + 88), *(v0 + 18), 4);
  v4 = 0;
  v5 = *(v0 + 92);
  if ( v5 == 39 )
    v4 = *(v0 + 28);
  v6 = sub_8117084(v5, v4, 7);
  v7 = sub_812674C(v6);
  return sub_81267A8(v7);
}


// 0x8124dcc
int sub_8124DCC()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r1
  int v6; // r1
  int v7; // r0

  sub_8126818(0);
  v1 = *(v0 + 116) - 2;
  *(v0 + 116) = v1;
  if ( v1 <= 124 )
  {
    *(v0 + 116) = 124;
    *(v0 + 2) = 24;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  v3 = sub_8125D94(v2);
  sub_8125E78(v3);
  v4 = *(v0 + 88);
  v5 = *(v0 + 18);
  if ( *(v0 + 116) <= 134 )
  {
    v5 = 0;
    v4 = *(v0 + 96);
    if ( v4 == 5 )
      v5 = *(v0 + 38);
  }
  sub_8117084(v4, v5, 4);
  v6 = 0;
  v7 = *(v0 + 92);
  if ( v7 == 39 )
    v6 = *(v0 + 28);
  return sub_8117084(v7, v6, 7);
}


// 0x8124e24
int sub_8124E24()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r1
  int v6; // r1
  int v7; // r0

  sub_8126818(0);
  v1 = *(v0 + 116) + 2;
  *(v0 + 116) = v1;
  if ( v1 >= 142 )
  {
    *(v0 + 116) = 142;
    *(v0 + 2) = 12;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  v3 = sub_8125D94(v2);
  sub_8125E78(v3);
  v4 = *(v0 + 88);
  v5 = *(v0 + 18);
  if ( *(v0 + 116) <= 132 )
  {
    v5 = 0;
    v4 = *(v0 + 96);
    if ( v4 == 5 )
      v5 = *(v0 + 38);
  }
  sub_8117084(v4, v5, 4);
  v6 = 0;
  v7 = *(v0 + 92);
  if ( v7 == 39 )
    v6 = *(v0 + 28);
  return sub_8117084(v7, v6, 7);
}


// 0x8124e7c
int sub_8124E7C()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r1
  int v5; // r0
  int v6; // r1
  int v7; // r0
  int v8; // r0
  int v9; // r0

  sub_8126818(0);
  sub_811983C(2, 1);
  *(v0 + 13) = 2;
  *(v0 + 42) = *(v0 + 40);
  *(v0 + 46) = *(v0 + 44);
  v1 = sub_8125678(20);
  v2 = sub_8125444(v1);
  v3 = sub_8125E78(v2);
  sub_8126524(v3);
  v4 = 0;
  v5 = *(v0 + 96);
  if ( v5 == 5 )
    v4 = *(v0 + 38);
  sub_8117084(v5, v4, 4);
  v6 = 0;
  v7 = *(v0 + 92);
  if ( v7 == 39 )
    v6 = *(v0 + 28);
  v8 = sub_8117084(v7, v6, 7);
  v9 = sub_812674C(v8);
  return sub_81267A8(v9);
}


// 0x8124ed4
int sub_8124ED4()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r1
  int v5; // r0
  int v6; // r1
  int v7; // r0

  sub_8126818(0);
  v1 = *(v0 + 116) - 2;
  *(v0 + 116) = v1;
  if ( v1 <= 106 )
  {
    *(v0 + 116) = 106;
    *(v0 + 2) = 36;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  v3 = sub_8125E78(v2);
  sub_8125F5C(v3);
  v4 = 0;
  v5 = *(v0 + 92);
  if ( v5 == 39 )
    v4 = *(v0 + 28);
  if ( *(v0 + 116) <= 114 )
  {
    v4 = 0;
    v5 = *(v0 + 100);
    if ( v5 == 15 )
      v4 = *(v0 + 48);
  }
  sub_8117084(v5, v4, 7);
  v6 = 0;
  v7 = *(v0 + 96);
  if ( v7 == 5 )
    v6 = *(v0 + 38);
  return sub_8117084(v7, v6, 4);
}


// 0x8124f30
int sub_8124F30()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r1
  int v5; // r0
  int v6; // r1
  int v7; // r0

  sub_8126818(0);
  v1 = *(v0 + 116) + 2;
  *(v0 + 116) = v1;
  if ( v1 >= 124 )
  {
    *(v0 + 116) = 124;
    *(v0 + 2) = 24;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  v3 = sub_8125E78(v2);
  sub_8125F5C(v3);
  v4 = 0;
  v5 = *(v0 + 100);
  if ( v5 == 15 )
    v4 = *(v0 + 48);
  if ( *(v0 + 116) >= 114 )
  {
    v4 = 0;
    v5 = *(v0 + 92);
    if ( v5 == 39 )
      v4 = *(v0 + 28);
  }
  sub_8117084(v5, v4, 7);
  v6 = 0;
  v7 = *(v0 + 96);
  if ( v7 == 5 )
    v6 = *(v0 + 38);
  return sub_8117084(v7, v6, 4);
}


// 0x8124f8c
int sub_8124F8C()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r1
  int v6; // r0
  int v7; // r1
  int v8; // r0
  int v9; // r0
  int v10; // r0

  sub_8126818(0);
  *(v0 + 13) = 3;
  *(v0 + 52) = *(v0 + 50);
  *(v0 + 56) = *(v0 + 54);
  v1 = sub_8125704(30);
  v2 = sub_81268D8(v1);
  v3 = sub_8125444(v2);
  v4 = sub_8125F5C(v3);
  sub_812653C(v4);
  v5 = 0;
  v6 = *(v0 + 96);
  if ( v6 == 5 )
    v5 = *(v0 + 38);
  sub_8117084(v6, v5, 4);
  v7 = 0;
  v8 = *(v0 + 100);
  if ( v8 == 15 )
    v7 = *(v0 + 48);
  v9 = sub_8117084(v8, v7, 7);
  v10 = sub_812674C(v9);
  return sub_81267A8(v10);
}


// 0x8124fe0
int sub_8124FE0()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r1
  int v5; // r0
  int v6; // r1
  int v7; // r0

  sub_8126818(0);
  v1 = *(v0 + 116) - 2;
  *(v0 + 116) = v1;
  if ( v1 <= 88 )
  {
    *(v0 + 116) = 88;
    *(v0 + 2) = 48;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  v3 = sub_8125F5C(v2);
  sub_8126114(v3);
  v4 = 0;
  v5 = *(v0 + 96);
  if ( v5 == 5 )
    v4 = *(v0 + 38);
  if ( *(v0 + 116) <= 96 )
  {
    v4 = 0;
    v5 = *(v0 + 104);
    if ( v5 == 29 )
      v4 = *(v0 + 58);
  }
  sub_8117084(v5, v4, 4);
  v6 = 0;
  v7 = *(v0 + 100);
  if ( v7 == 15 )
    v6 = *(v0 + 48);
  return sub_8117084(v7, v6, 7);
}


// 0x812503c
int sub_812503C()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r1
  int v5; // r0
  int v6; // r1
  int v7; // r0
  int v8; // r0

  sub_8126818(1);
  v1 = *(v0 + 116) + 2;
  *(v0 + 116) = v1;
  if ( v1 >= 106 )
  {
    *(v0 + 116) = 106;
    *(v0 + 2) = 36;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  v3 = sub_8125F5C(v2);
  sub_8126114(v3);
  v4 = 0;
  v5 = *(v0 + 104);
  if ( v5 == 29 )
    v4 = *(v0 + 58);
  if ( *(v0 + 116) >= 96 )
  {
    v4 = 0;
    v5 = *(v0 + 96);
    if ( v5 == 5 )
      v4 = *(v0 + 38);
  }
  sub_8117084(v5, v4, 4);
  v6 = 0;
  v7 = *(v0 + 100);
  if ( v7 == 15 )
    v6 = *(v0 + 48);
  v8 = sub_8117084(v7, v6, 7);
  return sub_81267F0(v8);
}


// 0x812509c
int sub_812509C()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r0

  sub_8126818(1);
  *(v0 + 13) = 4;
  *(v0 + 62) = *(v0 + 60);
  *(v0 + 66) = *(v0 + 64);
  v1 = sub_8125784(40);
  sub_8125444(v1);
  v2 = *(v0 + 100);
  if ( v2 )
    v3 = sub_8126114(v2);
  else
    v3 = sub_8126184();
  v4 = sub_8126554(v3);
  v5 = sub_812674C(v4);
  v6 = sub_81267A8(v5);
  return sub_81267F0(v6);
}


// 0x81250e0
void __fastcall __noreturn sub_81250E0(int a1)
{
  int v1; // r0
  int v2; // r0
  int v3; // r0

  v1 = sub_812674C(a1);
  v2 = sub_81267A8(v1);
  v3 = sub_8125444(v2);
  sub_8125D10(v3);
}


// 0x8125104
int __fastcall sub_8125104(int a1)
{
  int v1; // r5
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int result; // r0
  char v7; // zf

  v2 = sub_812674C(a1);
  v3 = sub_81267A8(v2);
  v4 = sub_8125444(v3);
  v5 = sub_8125D94(v4);
  sub_812650C(v5);
  result = engine_isScreeneffectAnimating();
  if ( !v7 )
  {
    result = 8;
    *(v1 + 1) = 8;
  }
  return result;
}


// 0x8125128
int __fastcall sub_8125128(int a1)
{
  int v1; // r5
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int result; // r0
  char v7; // zf

  v2 = sub_812674C(a1);
  v3 = sub_81267A8(v2);
  v4 = sub_8125444(v3);
  v5 = sub_8125E78(v4);
  sub_8126524(v5);
  result = engine_isScreeneffectAnimating();
  if ( !v7 )
  {
    result = 8;
    *(v1 + 1) = 8;
  }
  return result;
}


// 0x812514c
int __fastcall sub_812514C(int a1)
{
  int v1; // r5
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int result; // r0
  char v7; // zf

  v2 = sub_812674C(a1);
  v3 = sub_81267A8(v2);
  v4 = sub_8125444(v3);
  v5 = sub_8125F5C(v4);
  sub_812653C(v5);
  result = engine_isScreeneffectAnimating();
  if ( !v7 )
  {
    result = 8;
    *(v1 + 1) = 8;
  }
  return result;
}


// 0x8125170
int __fastcall sub_8125170(int a1)
{
  int v1; // r5
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r0
  int result; // r0
  char v8; // zf

  v2 = sub_812674C(a1);
  v3 = sub_81267A8(v2);
  v4 = sub_8125444(v3);
  v5 = sub_8126114(v4);
  v6 = sub_8126554(v5);
  sub_81267F0(v6);
  result = engine_isScreeneffectAnimating();
  if ( !v8 )
  {
    result = 8;
    *(v1 + 1) = 8;
  }
  return result;
}


// 0x8125198
int sub_8125198()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r1
  int v5; // r0
  int v6; // r1
  int v7; // r0

  sub_8126818(0);
  v1 = *(v0 + 116) - 2;
  *(v0 + 116) = v1;
  if ( v1 <= 106 )
  {
    *(v0 + 116) = 106;
    *(v0 + 2) = 48;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  v3 = sub_8125E78(v2);
  sub_8126184(v3);
  v4 = 0;
  v5 = *(v0 + 96);
  if ( v5 == 5 )
    v4 = *(v0 + 38);
  sub_8117084(v5, v4, 4);
  v6 = 0;
  v7 = *(v0 + 104);
  if ( v7 == 39 )
    v6 = *(v0 + 28);
  if ( *(v0 + 116) <= 96 )
  {
    v6 = 0;
    v7 = *(v0 + 92);
    if ( v7 == 29 )
      v6 = *(v0 + 58);
  }
  return sub_8117084(v7, v6, 7);
}


// 0x81251f4
int sub_81251F4()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r1
  int v5; // r0
  int v6; // r1
  int v7; // r0
  int v8; // r0

  sub_8126818(1);
  v1 = *(v0 + 116) + 2;
  *(v0 + 116) = v1;
  if ( v1 >= 124 )
  {
    *(v0 + 116) = 124;
    *(v0 + 2) = 24;
  }
  *(v0 + 112) = 255;
  v2 = sub_8125444(255);
  v3 = sub_8125E78(v2);
  sub_8126184(v3);
  v4 = 0;
  v5 = *(v0 + 96);
  if ( v5 == 5 )
    v4 = *(v0 + 38);
  sub_8117084(v5, v4, 4);
  v6 = 0;
  v7 = *(v0 + 92);
  if ( v7 == 39 )
    v6 = *(v0 + 28);
  if ( *(v0 + 116) <= 114 )
  {
    v6 = 0;
    v7 = *(v0 + 104);
    if ( v7 == 29 )
      v6 = *(v0 + 58);
  }
  v8 = sub_8117084(v7, v6, 7);
  return sub_81267F0(v8);
}


// 0x8125254
signed int sub_8125254()
{
  char v0; // zf
  signed int result; // r0

  TestEventFlagFromImmediate(23, 17);
  if ( v0 )
  {
    sub_811F708();
    result = 0;
  }
  else
  {
    chatbox_8040818();
    chatbox_8045F2C(64);
    ClearEventFlagFromImmediate(23, 17);
    result = 1;
  }
  return result;
}


// 0x8125280
void sub_8125280()
{
  int v0; // r6
  int v1; // r7
  char (*v2)[32]; // r0
  int v3; // r7
  int v4; // r1
  signed int v5; // r1

  v0 = 0;
  v1 = 0;
  do
  {
    v2 = *(&off_8125310 + v1);
    v3 = v1 + 4;
    v4 = *(&off_8125310 + v3);
    v1 = v3 + 4;
    *(&unk_2029000 + v0) = sub_811FB84(v2, v4);
    v0 += 4;
    v5 = 0;
    do
    {
      *(&unk_2029000 + v0) = *(&off_8125310 + v1);
      v0 += 4;
      v1 += 4;
      ++v5;
    }
    while ( v5 < 2 );
  }
  while ( v1 < 80 );
  *(&unk_2029000 + v0) = 0;
  decompAndCopyData_8000B30(&unk_2029000);
  decompAndCopyData_8000B30(byte_8125368);
}


// 0x81252c0
int __noreturn sub_81252C0()
{
  int v0; // r5
  int v1; // r0

  sub_80018D0(0, 2, 2, 0);
  sub_80018D0(0, 2, 3, 0);
  copyTiles();
  v1 = *(v0 + 116);
  return copyTiles();
}


// 0x8125444
int sub_8125444()
{
  int v0; // r5
  int v1; // r0
  int result; // r0

  v1 = sub_81265DC();
  sub_8126630(v1);
  sub_80465BC();
  sub_80465F8();
  result = *(v0 + 112);
  if ( result )
  {
    *(v0 + 112) = 0;
    sub_81252C0();
  }
  return result;
}


// 0x812546c
int __noreturn sub_812546C()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v6; // r0

  v1 = *(v0 + 116);
  copyTiles();
  v2 = *(v0 + 116);
  copyTiles();
  v3 = *(v0 + 116);
  copyTiles();
  if ( *(v0 + 100) )
  {
    v6 = *(v0 + 116);
    copyTiles();
  }
  v4 = *(v0 + 116);
  return copyTiles();
}


// 0x81254fc
int __noreturn sub_81254FC()
{
  render_graphicalText_8045F8C(&unk_201CC20, 0, &unk_2018A00, 100700160);
  render_graphicalText_8045F8C(&unk_201CC20, 1, &unk_2018E00, 100701184);
  render_graphicalText_8045F8C(&unk_201CC20, 2, &unk_2019200, 100702208);
  render_graphicalText_8045F8C(&unk_201CC20, 5, &unk_2019600, 100703232);
  return render_graphicalText_8045F8C(&unk_201CC20, 3, byte_2019A00, 100704256);
}


// 0x8125594
int sub_8125594()
{
  int v0; // r5
  int v1; // r10
  unsigned __int16 *v2; // r7
  int result; // r0

  v2 = *(v1 + oToolkit_JoypadPtr);
  if ( v2[1] & 0xA )
    return sub_812580C(52);
  if ( v2[2] & 0x10 )
  {
    *(v0 + 2) = 4;
    result = sub_81258E8();
  }
  else
  {
    result = *(v0 + 18);
    if ( *(v0 + 18) )
    {
      result = v2[2];
      if ( result & byte_300 )
      {
        result = sub_8125820(result & 0xFFFFFF3F, 7, 0);
        *(v0 + 112) = v2;
      }
      else if ( !(*v2 & byte_300) )
      {
        if ( result & 0xC0 )
        {
          result = (sub_8125820)();
          *(v0 + 112) = v2;
        }
      }
    }
  }
  return result;
}


// 0x81255f8
int sub_81255F8()
{
  int v0; // r5
  int v1; // r10
  unsigned __int16 *v2; // r7
  int result; // r0
  unsigned __int16 v4; // r0
  __int16 v5; // [sp-4h] [bp-18h]

  v2 = *(v1 + oToolkit_JoypadPtr);
  if ( v2[1] & 0xA )
    return sub_812580C(56);
  v4 = v2[2];
  if ( v4 & 0x10 )
  {
    *(v0 + 2) = 16;
    result = sub_81258E8();
  }
  else if ( v4 & 0x20 )
  {
    *(v0 + 2) = 8;
    result = sub_81258E8();
  }
  else
  {
    result = *(v0 + 92);
    if ( result )
    {
      v5 = *(v0 + 28);
      *(v0 + 28) = result;
      result = v2[2];
      if ( result & byte_300 )
      {
        result = sub_8125820(result & 0xFFFFFF3F, 7, 0);
        *(v0 + 112) = v2;
      }
      else if ( !(*v2 & byte_300) )
      {
        if ( result & 0xC0 )
        {
          result = sub_8125820(result, 7, 0);
          *(v0 + 112) = v2;
        }
      }
      *(v0 + 28) = v5;
    }
  }
  return result;
}


// 0x8125678
int sub_8125678()
{
  int v0; // r5
  int v1; // r10
  unsigned __int16 *v2; // r7
  int result; // r0
  unsigned __int16 v4; // r0
  __int16 v5; // [sp-4h] [bp-18h]

  v2 = *(v1 + oToolkit_JoypadPtr);
  if ( v2[1] & 0xA )
    return sub_812580C(60);
  v4 = v2[2];
  if ( v4 & 0x10 )
  {
    if ( *(v0 + 100) )
      *(v0 + 2) = 28;
    else
      *(v0 + 2) = 72;
    result = sub_81258E8();
  }
  else if ( v4 & 0x20 )
  {
    *(v0 + 2) = 20;
    result = sub_81258E8();
  }
  else
  {
    result = *(v0 + 96);
    if ( result )
    {
      v5 = *(v0 + 38);
      *(v0 + 38) = result;
      result = v2[2];
      if ( result & byte_300 )
      {
        result = sub_8125820(result & 0xFFFFFF3F, 7, 0);
        *(v0 + 112) = v2;
      }
      else if ( !(*v2 & byte_300) && result & 0xC0 )
      {
        result = sub_8125820(result, 7, 0);
        *(v0 + 112) = v2;
      }
      *(v0 + 38) = v5;
    }
  }
  return result;
}


// 0x8125704
int sub_8125704()
{
  int v0; // r5
  int v1; // r10
  unsigned __int16 *v2; // r7
  int result; // r0
  unsigned __int16 v4; // r0
  __int16 v5; // [sp-4h] [bp-18h]

  v2 = *(v1 + oToolkit_JoypadPtr);
  if ( v2[1] & 0xA )
    return sub_812580C(64);
  v4 = v2[2];
  if ( v4 & 0x10 )
  {
    *(v0 + 2) = 40;
    result = sub_81258E8();
  }
  else if ( v4 & 0x20 )
  {
    *(v0 + 2) = 32;
    result = sub_81258E8();
  }
  else
  {
    result = *(v0 + 100);
    if ( result )
    {
      v5 = *(v0 + 48);
      *(v0 + 48) = result;
      result = v2[2];
      if ( result & byte_300 )
      {
        result = sub_8125820(result & 0xFFFFFF3F, 7, 0);
        *(v0 + 112) = v2;
      }
      else if ( !(*v2 & byte_300) )
      {
        if ( result & 0xC0 )
        {
          result = sub_8125820(result, 7, 0);
          *(v0 + 112) = v2;
        }
      }
      *(v0 + 48) = v5;
    }
  }
  return result;
}


// 0x8125784
int sub_8125784()
{
  int v0; // r5
  int v1; // r10
  unsigned __int16 *v2; // r7
  unsigned __int16 v3; // r0
  int result; // r0
  __int16 v5; // [sp-4h] [bp-18h]

  v2 = *(v1 + oToolkit_JoypadPtr);
  v3 = v2[1];
  if ( v3 & 0xA )
    return sub_812580C(68);
  if ( v3 & 1 )
    return sub_81266E0();
  if ( v2[2] & 0x20 )
  {
    if ( *(v0 + 100) )
      *(v0 + 2) = 44;
    else
      *(v0 + 2) = 76;
    result = sub_81258E8();
  }
  else
  {
    result = *(v0 + 104);
    if ( result )
    {
      v5 = *(v0 + 58);
      *(v0 + 58) = result;
      result = v2[2];
      if ( result & byte_300 )
      {
        result = sub_8125820(result & 0xFFFFFF3F, 7, 0);
        *(v0 + 112) = v2;
      }
      else if ( !(*v2 & byte_300) && result & 0xC0 )
      {
        result = sub_8125820(result, 7, 0);
        *(v0 + 112) = v2;
      }
      *(v0 + 58) = v5;
    }
  }
  return result;
}


// 0x812580c
int __fastcall sub_812580C(char a1)
{
  int v1; // r5

  *(v1 + 2) = a1;
  sound_play(131);
  return engine_setScreeneffect(12, 16);
}


// 0x8125820
int __fastcall sub_8125820(int a1, signed int a2, int a3)
{
  int v3; // r5
  int v4; // r8
  int v5; // r12
  int v6; // r9
  int v7; // r6
  int v8; // r2
  int v9; // r3
  signed int v10; // r4
  unsigned __int8 v11; // vf
  signed int v12; // r4
  int result; // r0

  v5 = a3;
  v6 = a2 - 1;
  v7 = *(v3 + v4 + 18) - 1;
  v8 = *(v3 + v4 + 20);
  v9 = *(v3 + v4 + 24);
  v10 = a2;
  if ( byte_200 & a1 )
  {
LABEL_8:
    v11 = __OFSUB__(v9, v10);
    v9 -= v10;
    if ( ((v9 < 0) ^ v11) | (v9 == 0) )
      v9 = 0;
    goto LABEL_21;
  }
  v10 = 1;
  if ( a1 & 0x40 )
  {
    v11 = __OFSUB__(v8--, 1);
    if ( (v8 < 0) ^ v11 )
    {
      v8 = 0;
      if ( v5 && !*(v3 + v4 + 24) )
      {
        v8 = a2 - 1;
        v9 = *(v3 + v4 + 18) - v6;
      }
      goto LABEL_8;
    }
  }
  v12 = a2;
  if ( byte_100 & a1 )
  {
LABEL_17:
    if ( v7 >= v6 )
    {
      v9 += v12;
      if ( v9 > *(v3 + v4 + 18) - a2 )
      {
        v9 = *(v3 + v4 + 18) - a2;
        if ( v5 )
        {
          v8 = 0;
          v9 = 0;
        }
      }
    }
    goto LABEL_21;
  }
  v12 = 1;
  if ( a1 & 0x80 )
  {
    if ( v7 >= v6 )
      v7 = a2 - 1;
    if ( ++v8 > v7 )
    {
      v8 = v7;
      goto LABEL_17;
    }
  }
LABEL_21:
  if ( v8 != *(v3 + v4 + 20) || v9 != *(v3 + v4 + 24) )
    sound_play(127);
  *(v3 + v4 + 20) = v8;
  result = v4 + 24;
  *(v3 + v4 + 24) = v9;
  return result;
}


// 0x81258e8
int sub_81258E8()
{
  return sound_play(122);
}


// 0x81258f8
int __fastcall sub_81258F8(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5
  char *v6; // r0
  char *v7; // r6
  char v8; // zf
  char v9; // r0

  ZeroFillByWord(&unk_201DC20, &byte_320, a3, a4);
  v4 = 1;
  v5 = 0;
  do
  {
    v6 = getChip_8021DA8(v4);
    if ( v6[9] & 0x40 )
    {
      if ( !(v6[22] & 1) )
      {
        v7 = &unk_201DC20 + 4 * (v6[21] - 1);
        if ( !v6[7] )
        {
          ++v5;
          TestEventFlag(v4 + 7712);
          if ( v8 )
          {
            TestEventFlag(v4 + 8736);
            if ( v8 )
            {
              TestEventFlag(v4 + 8224);
              if ( !v8 )
              {
                *v7 = v4;
                TestEventFlagFromImmediate(23, 17);
                if ( v8 )
                  v9 = 1;
                else
                  v9 = 2;
                v7[2] = v9;
              }
            }
            else
            {
              *v7 = v4;
              v7[2] = 1;
            }
          }
          else
          {
            *v7 = v4;
            v7[2] = 0;
          }
        }
      }
    }
    ++v4;
  }
  while ( v4 <= 319 );
  return v5;
}


// 0x8125994
int __fastcall sub_8125994(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5
  char *v6; // r0
  int v7; // r6
  int v8; // r2
  char v9; // zf
  int v10; // r2
  _WORD *v11; // r2
  int v12; // r2
  char v13; // r0
  int *v14; // r6
  signed int v15; // r4
  int *v16; // r0
  int *v17; // r1

  ZeroFillByWord(&dword_201E420, dword_578, a3, a4);
  v4 = 1;
  v5 = 0;
  do
  {
    v6 = getChip_8021DA8(v4);
    v7 = 4 * (v6[21] - 1);
    if ( v6[9] & 0x40 && !(v6[22] & 1) && v6[7] == 1 )
    {
      TestEventFlag(v4 + 7712);
      if ( v9 )
      {
        TestEventFlag(v4 + 8736);
        if ( v9 )
        {
          TestEventFlag(v4 + 8224);
          if ( !v9 )
          {
            ++v5;
            *v11 = v4;
            TestEventFlagFromImmediate(23, 17);
            if ( v9 )
              v13 = 1;
            else
              v13 = 2;
            *(v12 + 2) = v13;
            *v12;
          }
        }
        else
        {
          ++v5;
          *v10 = v4;
          *(v10 + 2) = 1;
        }
      }
      else
      {
        ++v5;
        *v8 = v4;
        *(v8 + 2) = 0;
      }
    }
    ++v4;
  }
  while ( v4 <= 319 );
  v14 = &dword_201E420;
  v15 = 0;
  do
  {
    if ( !*v14 )
    {
      v16 = v14;
      v17 = v14 + 1;
      do
      {
        if ( *v17 )
        {
          *v16 = *v17;
          *v17 = 0;
          ++v16;
        }
        ++v17;
      }
      while ( v17 < &unk_201E998 );
    }
    ++v14;
    ++v15;
  }
  while ( v15 < 319 );
  return v5;
}


// 0x8125a6c
int __fastcall sub_8125A6C(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5
  char *v6; // r0
  int v7; // r6
  int v8; // r2
  char v9; // zf
  int v10; // r2
  _WORD *v11; // r2
  int v12; // r2
  char v13; // r0
  int *v14; // r6
  signed int v15; // r4
  int *v16; // r0
  int *v17; // r1

  ZeroFillByWord(&dword_201EC20, dword_578, a3, a4);
  v4 = 1;
  v5 = 0;
  do
  {
    v6 = getChip_8021DA8(v4);
    v7 = 4 * (v6[21] - 1);
    if ( v6[9] & 0x40 && v6[7] == 2 )
    {
      TestEventFlag(v4 + 7712);
      if ( v9 )
      {
        TestEventFlag(v4 + 8736);
        if ( v9 )
        {
          TestEventFlag(v4 + 8224);
          if ( !v9 )
          {
            ++v5;
            *v11 = v4;
            TestEventFlagFromImmediate(23, 17);
            if ( v9 )
              v13 = 1;
            else
              v13 = 2;
            *(v12 + 2) = v13;
            *v12;
          }
        }
        else
        {
          ++v5;
          *v10 = v4;
          *(v10 + 2) = 1;
        }
      }
      else
      {
        ++v5;
        *v8 = v4;
        *(v8 + 2) = 0;
      }
    }
    ++v4;
  }
  while ( v4 <= 319 );
  v14 = &dword_201EC20;
  v15 = 0;
  do
  {
    if ( !*v14 )
    {
      v16 = v14;
      v17 = v14 + 1;
      do
      {
        if ( *v17 )
        {
          *v16 = *v17;
          *v17 = 0;
          ++v16;
        }
        ++v17;
      }
      while ( v17 < &unk_201F198 );
    }
    ++v14;
    ++v15;
  }
  while ( v15 < 319 );
  return v5;
}


// 0x8125b3c
int __fastcall sub_8125B3C(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5
  char *v6; // r0
  int v7; // r6
  int v8; // r2
  char v9; // zf
  int v10; // r2
  _WORD *v11; // r2
  int v12; // r2
  char v13; // r0
  int *v14; // r6
  signed int v15; // r4
  int *v16; // r0
  int *v17; // r1

  ZeroFillByWord(&dword_201F420, dword_578, a3, a4);
  v4 = 1;
  v5 = 0;
  do
  {
    v6 = getChip_8021DA8(v4);
    v7 = 4 * (v6[21] - 1);
    if ( v6[9] & 0x40 && v6[22] & 1 )
    {
      TestEventFlag(v4 + 7712);
      if ( v9 )
      {
        TestEventFlag(v4 + 8736);
        if ( v9 )
        {
          TestEventFlag(v4 + 8224);
          if ( !v9 )
          {
            ++v5;
            *v11 = v4;
            TestEventFlagFromImmediate(23, 17);
            if ( v9 )
              v13 = 1;
            else
              v13 = 2;
            *(v12 + 2) = v13;
          }
        }
        else
        {
          ++v5;
          *v10 = v4;
          *(v10 + 2) = 1;
        }
      }
      else
      {
        ++v5;
        *v8 = v4;
        *(v8 + 2) = 0;
      }
    }
    ++v4;
  }
  while ( v4 <= 319 );
  v14 = &dword_201F420;
  v15 = 0;
  do
  {
    if ( !*v14 )
    {
      v16 = v14;
      v17 = v14 + 1;
      do
      {
        if ( *v17 )
        {
          *v16 = *v17;
          *v17 = 0;
          ++v16;
        }
        ++v17;
      }
      while ( v17 < &unk_201F998 );
    }
    ++v14;
    ++v15;
  }
  while ( v15 < 319 );
  return v5;
}


// 0x8125c08
int __fastcall sub_8125C08(int a1, int a2, int a3, int a4)
{
  signed int v4; // r4
  int v5; // r5
  char *v6; // r0
  int v7; // r6
  int v8; // r2
  char v9; // zf
  int v10; // r2
  _WORD *v11; // r2
  int v12; // r2
  char v13; // r0
  int *v14; // r6
  signed int v15; // r4
  int *v16; // r0
  int *v17; // r1

  ZeroFillByWord(dword_201FC20, dword_578, a3, a4);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = getChip_8021DA8(dword_140 + v4);
    v7 = 4 * (v6[21] - 1);
    if ( v6[7] == 4 )
    {
      TestEventFlag(v4 + 8032);
      if ( v9 )
      {
        TestEventFlag(v4 + 9056);
        if ( v9 )
        {
          TestEventFlag(v4 + 8544);
          if ( !v9 )
          {
            ++v5;
            *v11 = dword_140 + v4;
            TestEventFlagFromImmediate(23, 17);
            if ( v9 )
            {
              v13 = 1;
              *(v12 + 2) = 1;
            }
            else
            {
              v13 = 2;
            }
            *(v12 + 2) = v13;
            *v12;
          }
        }
        else
        {
          ++v5;
          *v10 = dword_140 + v4;
          *(v10 + 2) = 1;
        }
      }
      else
      {
        ++v5;
        *v8 = dword_140 + v4;
        *(v8 + 2) = 0;
      }
    }
    ++v4;
  }
  while ( v4 <= 30 );
  v14 = dword_201FC20;
  v15 = 0;
  do
  {
    if ( !*v14 )
    {
      v16 = v14;
      v17 = v14 + 1;
      do
      {
        if ( *v17 )
        {
          *v16 = *v17;
          *v17 = 0;
          ++v16;
        }
        ++v17;
      }
      while ( v17 < &unk_2020198 );
    }
    ++v14;
    ++v15;
  }
  while ( v15 < 319 );
  return v5;
}


// 0x8125d10
void __noreturn sub_8125D10()
{
  int v0; // r5

  sub_81261FC(*(v0 + 24), byte_2017A00);
  sub_812625C(*(v0 + 116) - 148, 4, byte_2017A00, 7);
}


// 0x8125d94
int sub_8125D94()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 92);
  if ( result )
  {
    if ( result == 39 )
    {
      sub_81261FC(*(v0 + 34), byte_2017A00);
      sub_812625C(*(v0 + 116) - 130, 4, byte_2017A00, 7);
    }
    sub_812626C(*(v0 + 34), &dword_201E420, byte_2017A00, 10);
    sub_8126404(*(v0 + 116) - 128, 4, byte_2017A00, 14);
  }
  return result;
}


// 0x8125e78
int sub_8125E78()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 96);
  if ( result )
  {
    if ( result == 5 )
    {
      sub_81261FC(*(v0 + 44), byte_2017A00);
      sub_812625C(*(v0 + 116) - 112, 4, byte_2017A00, 5);
    }
    sub_812626C(*(v0 + 44), &dword_201EC20, byte_2017A00, 10);
    sub_8126404(*(v0 + 116) - 110, 4, byte_2017A00, 10);
  }
  return result;
}


// 0x8125f5c
int sub_8125F5C()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 100);
  if ( result )
  {
    if ( result == 15 )
    {
      sub_81261FC(*(v0 + 54), byte_2017A00);
      sub_812625C(*(v0 + 116) - 94, 4, byte_2017A00, 7);
    }
    sub_812626C(*(v0 + 54), &dword_201F420, byte_2017A00, 10);
    sub_8126404(*(v0 + 116) - 92, 4, byte_2017A00, 14);
  }
  return result;
}


// 0x8126030
int sub_8126030()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 100);
  if ( result )
  {
    if ( result == 15 )
    {
      sub_81261FC(*(v0 + 54), byte_2017A00);
      sub_812625C(*(v0 + 116) - 76, 4, byte_2017A00, 7);
    }
    sub_812626C(*(v0 + 54), &dword_201F420, byte_2017A00, 10);
    sub_8126404(*(v0 + 116) - 74, 4, byte_2017A00, 14);
  }
  return result;
}


// 0x8126114
int sub_8126114()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 104);
  if ( result )
  {
    if ( result == 29 )
    {
      sub_81261FC(*(v0 + 64), byte_2017A00);
      sub_812625C(*(v0 + 116) - 76, 4, byte_2017A00, 7);
    }
    sub_812626C(*(v0 + 64), dword_201FC20, byte_2017A00, 10);
    sub_8126404(*(v0 + 116) - 75, 4, byte_2017A00, 14);
  }
  return result;
}


// 0x8126184
int sub_8126184()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 104);
  if ( result )
  {
    if ( result == 29 )
    {
      sub_81261FC(*(v0 + 64), byte_2017A00);
      sub_812625C(*(v0 + 116) - 94, 4, byte_2017A00, 7);
    }
    sub_812626C(*(v0 + 64), dword_201FC20, byte_2017A00, 10);
    sub_8126404(*(v0 + 116) - 93, 4, byte_2017A00, 14);
  }
  return result;
}


// 0x81261fc
unsigned int __fastcall sub_81261FC(int a1, int a2)
{
  int v2; // ST00_4
  _WORD *v3; // ST04_4
  int v4; // r5
  _WORD *v5; // r7
  signed int v6; // r6
  unsigned int result; // r0
  signed int v8; // r2
  int v9; // r1
  int v10; // r1
  unsigned __int8 v11; // vf
  signed int v12; // [sp+8h] [bp-18h]

  v2 = a1;
  v3 = a2;
  CopyHalfwords(byte_8124950, a2, 0x54u);
  v4 = v2;
  v5 = v3;
  v6 = 0;
  do
  {
    v12 = 0;
    result = sub_8000C00(v4 + 1);
    v8 = 8;
    do
    {
      v9 = (result >> v8) & 0xF;
      if ( !v12 )
      {
        if ( !v9 )
          goto LABEL_7;
        v12 = 1;
      }
      v10 = 2 * v9 + 41474;
      *v5 = v10;
      v5[3] = v10 + 1;
LABEL_7:
      ++v5;
      v11 = __OFSUB__(v8, 4);
      v8 -= 4;
    }
    while ( !((v8 < 0) ^ v11) );
    v5 += 3;
    ++v4;
    ++v6;
  }
  while ( v6 < 7 );
  return result;
}


// 0x812625c
int __noreturn sub_812625C()
{
  return copyTiles();
}


// 0x812626c
int __fastcall sub_812626C(int a1, int a2, _DWORD *a3)
{
  unsigned int v3; // r5
  int v4; // r10
  signed int v5; // r9
  int v6; // r8
  unsigned __int16 *v7; // r5
  _DWORD *v8; // r3
  int v9; // r4
  void **v10; // r0
  unsigned int v11; // r1
  signed int v12; // ST04_4
  char v13; // zf
  int v14; // r2
  int v15; // r2
  int v16; // r3
  int result; // r0

  v5 = v3 >> 4;
  v6 = v3 & 0xF;
  v7 = (4 * a1 + a2);
  v8 = a3 + 4;
  v9 = 0;
  do
  {
    if ( *v7 )
    {
      v12 = *v7;
      sub_80070E6(v12);
      v10 = &off_81263B8;
      v11 = v12;
      if ( v13 )
      {
        *(v7 + 2);
      }
      else
      {
        v14 = *(v4 + oToolkit_SubmenuPtr);
        *(v14 + 124) |= 1u;
        *(v14 + 88) = 0;
        *(v14 + 92) = 0;
        *(v14 + 96) = 0;
        *(v14 + 100) = 0;
        *(v14 + 104) = 0;
        *(v14 + 18) = 0;
        *(v14 + 28) = 0;
        *(v14 + 38) = 0;
        *(v14 + 48) = 0;
        *(v14 + 58) = 0;
LABEL_4:
        v10 = &off_81263C4;
        v11 = 4;
      }
      sub_81263D0(v10[v11 >> 8] + *(v10[v11 >> 8] + v11));
      goto LABEL_10;
    }
    if ( !v6 )
      goto LABEL_4;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    v15 = (a3 + 4);
    v16 = (v8 + 4);
LABEL_10:
    v7 += 2;
    a3 = (v15 + 16);
    v8 = (v16 + 16);
    ++v9;
    result = v5;
  }
  while ( v9 < v5 );
  return result;
}


// 0x8126334
void **__fastcall sub_8126334(int a1, int a2, _DWORD *a3)
{
  int v3; // r5
  int v4; // r8
  unsigned __int16 *v5; // r5
  _DWORD *v6; // r3
  signed int v7; // r4
  void **result; // r0
  unsigned int v9; // r1
  int v10; // r2
  int v11; // r3

  v4 = v3;
  v5 = (4 * a1 + a2);
  v6 = a3 + 4;
  v7 = 0;
  do
  {
    result = &off_81263B8;
    v9 = *v5;
    if ( *v5 )
    {
      *(v5 + 2);
      goto LABEL_6;
    }
    if ( !v4 )
    {
      result = &off_81263C4;
      v9 = 4;
LABEL_6:
      result = sub_81263D0(result[v9 >> 8] + *(result[v9 >> 8] + v9));
      goto LABEL_8;
    }
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    v10 = (a3 + 4);
    v11 = (v6 + 4);
LABEL_8:
    v5 += 2;
    a3 = (v10 + 16);
    v6 = (v11 + 16);
    ++v7;
  }
  while ( v7 < 5 );
  return result;
}


// 0x81263d0
unsigned __int8 *__fastcall sub_81263D0(unsigned __int8 *result, int a2, _WORD *a3, _WORD *a4)
{
  __int16 v4; // r6
  signed int i; // r7
  signed int v6; // r1
  __int16 v7; // r1

  for ( i = 0; ; ++i )
  {
    v6 = *result;
    if ( v6 >= 229 )
      break;
    v7 = 2 * v6;
    *a3 = v4 + v7;
    *a4 = v4 + v7 + 1;
    ++a3;
    ++a4;
    ++result;
  }
  while ( i < 8 )
  {
    *a3 = 0;
    *a4 = 0;
    ++a3;
    ++a4;
    ++i;
  }
  return result;
}


// 0x8126404
void __fastcall __noreturn sub_8126404(int a1, int a2)
{
  int v2; // r7

  if ( *(v2 + 124) & 1 )
    sub_80018D0(a1, a2, 2, 0);
  else
    copyTiles();
}


// 0x8126430
void __fastcall sub_8126430(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // ST00_4
  int v6; // ST04_4
  _DWORD *v7; // ST08_4
  _DWORD *v8; // r2
  unsigned __int16 *v9; // r5
  signed int v10; // r7
  int v11; // r6
  _DWORD *v12; // ST08_4
  char *v13; // r0

  v5 = a1;
  v6 = a2;
  v7 = a3;
  CopyWords(a4, a3, 0x38u);
  v8 = v7;
  v9 = (4 * v5 + v6);
  v10 = 0;
  v11 = v4;
  do
  {
    if ( *v9 )
    {
      if ( *(v9 + 2) )
      {
        *v8 = 0;
        v8[1] = 0;
      }
      else
      {
        v12 = v8;
        v13 = getChip_8021DA8(*v9);
        CopyWords(*(v13 + 8), v11, 0x80u);
        v8 = v12;
      }
    }
    else
    {
      *v8 = 0;
      v8[1] = 0;
    }
    v9 += 2;
    v11 += 128;
    v8 += 2;
    ++v10;
  }
  while ( v10 < 7 );
}


// 0x8126484
int __noreturn sub_8126484()
{
  return copyTiles();
}


// 0x8126494
int __fastcall sub_8126494(int a1, int a2, _WORD *a3)
{
  _WORD *v3; // r5
  signed int v4; // r7
  int result; // r0
  _WORD *v6; // ST00_4
  char *v7; // r0

  v3 = (4 * a1 + a2);
  v4 = 0;
  do
  {
    result = *v3;
    if ( *v3 )
    {
      v6 = a3;
      v7 = getChip_8021DA8(result);
      a3 = v6;
      result = 3 * v7[5];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = result - 31936;
      v6[4] = result - 31935;
      v6[5] = result - 31934;
    }
    else
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[5] = 0;
    }
    v3 += 2;
    a3 += 6;
    ++v4;
  }
  while ( v4 < 7 );
  return result;
}


// 0x81264e4
int __noreturn sub_81264E4()
{
  return copyTiles();
}


// 0x81264f4
int sub_81264F4()
{
  return sub_8126570(90, 32, 20, 12);
}


// 0x812650c
int sub_812650C()
{
  return sub_8126570(90, 32, 30, 12);
}


// 0x8126524
int sub_8126524()
{
  return sub_8126570(90, 32, 40, 12);
}


// 0x812653c
int sub_812653C()
{
  return sub_8126570(90, 32, 50, 12);
}


// 0x8126554
int sub_8126554()
{
  return sub_8126570(90, 32, 60, 12);
}


// 0x8126570
int __fastcall sub_8126570(int a1, int a2, int a3, int a4)
{
  int *v4; // r4
  int v5; // r5
  unsigned __int8 *v6; // r7
  int v7; // r0
  int v8; // r2
  unsigned int v9; // ST14_4
  int v10; // r0
  int v11; // r1
  int result; // r0
  int v13; // [sp+8h] [bp-1Ch]

  v13 = a4;
  v7 = a1 << 16;
  if ( a3 )
    v8 = *(v5 + a3);
  else
    v8 = 0;
  v9 = *(v5 + a4);
  v10 = sub_811FAF4(v7 | (a2 + 16 * v8), 2u, v9 & 0xF, v4);
  v11 = (v9 >> 4) - 1;
  if ( v9 >> 4 == 1 )
    *(v5 + v13) = sub_8120CC8(v10, v6);
  result = *(v5 + v13) & 0xF | 16 * v11;
  *(v5 + v13) = result;
  return result;
}


// 0x81265dc
int sub_81265DC()
{
  int v0; // r5
  signed int v1; // r7
  int v2; // r4
  int *v3; // r0
  int result; // r0
  unsigned __int8 v5; // vf

  v1 = 1;
  v2 = 4;
  do
  {
    v3 = off_812661C[v1][*(v0 + 116) - byte_100];
    if ( v3 < -40 )
    {
      v3 = (&dword_120 + v3);
      if ( v3 < -40 )
        v3 = (&dword_120 + v3);
    }
    result = sub_8116FDC(v3, 27, v2);
    v2 += 3;
    v5 = __OFSUB__(v1--, 1);
  }
  while ( !((v1 < 0) ^ v5) );
  return result;
}


// 0x8126630
int sub_8126630()
{
  int v0; // r5
  int v1; // r4
  int result; // r0
  int v3; // r1
  char v4; // zf
  int v5; // r1
  int v6; // r1

  v1 = *(v0 + 13);
  if ( v1 == 4 )
  {
    result = sub_80466C4(0);
    if ( !v4 )
    {
      if ( *(v5 + 1) != 26 )
        sub_80465A0(byte_8124B08);
      v6 = *(v0 + 60) + *(v0 + 64);
      sub_811A1F4(dword_201FC20[v6], HIBYTE(dword_201FC20[v6]), 0, 0);
      result = sub_811A220(47, 88, 0);
    }
  }
  else
  {
    result = sub_80466C4(0);
    if ( !v4 )
    {
      if ( *(v3 + 1) != 22 )
      {
        sub_8046696(3);
        sub_80465A0(byte_8124AE0);
      }
      sub_811980C(*(*(&off_81266C4 + v1) + 2 * (*(v0 + 10 * v1 + 20) + *(v0 + 10 * v1 + 24))), 255, 0, 0);
      sub_8119854(47, 88, 0);
      result = sub_8126818(0);
    }
  }
  return result;
}


// 0x81266e0
int sub_81266E0()
{
  int v0; // r5
  int v1; // r2
  int v2; // r1
  int v3; // r2
  int result; // r0
  signed int v5; // r3
  int v6; // r7
  int v7; // [sp+4h] [bp-18h]

  v1 = *(v0 + 64) + *(v0 + 60);
  v2 = LOBYTE(dword_201FC20[v1]);
  v3 = v1 * 4 + 3;
  result = *(dword_201FC20 + v3 - 1);
  if ( !*(dword_201FC20 + v3 - 1) )
  {
    v7 = *(dword_201FC20 + v3);
    v5 = 0;
    do
    {
      if ( v2 == *&byte_8124AA4[v5] - byte_100 )
        break;
      v5 += 2;
    }
    while ( v5 < 58 );
    v6 = *(dword_201FC20 + v3) + 1;
    if ( v6 >= byte_8124B1C[v5 >> 1] )
      v6 = 0;
    *(dword_201FC20 + v3) = v6;
    result = v7;
    if ( v7 != v6 )
      result = sound_play(128);
  }
  return result;
}


// 0x812674c
int sub_812674C()
{
  int v0; // r5
  int result; // r0

  if ( !*(v0 + 13) || (sub_8126570(88, 20, 0, 15), result = *(v0 + 14), byte_81267A0[*(v0 + 13)] < result) )
    result = sub_8126570(226, 20, 0, 16);
  return result;
}


// 0x81267a8
signed int sub_81267A8()
{
  int v0; // r5
  int v1; // r2
  int v2; // r7
  signed int result; // r0

  v1 = *(v0 + 13);
  v2 = v0 + 10 * v1;
  if ( !*(v0 + 13) )
  {
    result = *(v2 + 18);
    if ( result < 7 )
      return result;
    return sub_811FA98(14811162, 0, *(v2 + 18), *(v2 + 24));
  }
  result = *(v0 + 4 * v1 + 88);
  if ( result >= 7 )
    return sub_811FA98(14811162, 0, *(v2 + 18), *(v2 + 24));
  return result;
}


// 0x81267f0
int sub_81267F0()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 58);
  if ( *(v0 + 58) )
    result = sub_8126570(67, 14, 0, 17);
  return result;
}


// 0x8126818
_BYTE *__fastcall sub_8126818(int a1)
{
  int v1; // r5
  int v2; // r10
  int v3; // r4
  _BYTE *result; // r0

  v3 = a1;
  result = *(v2 + oToolkit_Unk200f3a0_Ptr);
  result[8] = 63;
  result[9] = 34;
  result[10] = 50;
  result[1] = 88;
  result[5] = 0;
  *result = -16;
  result[4] = -102;
  if ( v3 )
  {
    if ( *(v1 + 58) )
    {
      result[3] = 14;
      result[7] = 17;
      result[2] = 71;
    }
    else
    {
      result[3] = 14;
      result[7] = 17;
      result[2] = 80;
    }
    result[6] = 18;
  }
  else
  {
    result[3] = 14;
    result[7] = 16;
    result[2] = 80;
    result[6] = 18;
  }
  return result;
}


// 0x812687c
_BYTE *sub_812687C()
{
  int v0; // r5
  int v1; // r10
  _BYTE *v2; // r0
  _BYTE *result; // r0

  v2 = *(v1 + 28);
  v2[8] = 63;
  v2[9] = 50;
  v2[10] = 50;
  result = *(v0 + 58);
  if ( *(v0 + 58) )
  {
    byte_0[*(v0 + 58) + 1] = 10;
    result[5] = 0;
    *result = -16;
    result[4] = -102;
    result[3] = 0;
    result[7] = 0;
    result[2] = 10;
  }
  else
  {
    byte_0[*(v0 + 58) + 1] = 0;
    result[5] = 0;
    *result = -16;
    result[4] = -102;
    result[3] = 0;
    result[7] = 0;
    result[2] = 0;
  }
  result[6] = -102;
  return result;
}


// 0x81268d8
int sub_81268D8()
{
  int v0; // r5
  char *v1; // r0

  v1 = getChip_8021DA8(LOWORD(dword_201F420[*(v0 + 50) + *(v0 + 54)]));
  return sub_811983C(v1[7], 1);
}


// 0x8126b4c
int sub_8126B4C()
{
  int v0; // r5

  return (*(&off_8126B60 + *(v0 + 1)))();
}


// 0x8126b6c
void __fastcall __noreturn sub_8126B6C(int a1, int a2, int a3, int a4)
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
  _WORD *v14; // r0
  signed int v15; // r0
  int v16; // r0
  int v17; // r0
  int v18; // r1
  int v19; // r0
  int v20; // r4
  int v21; // r0
  int v22; // r0
  int v23; // r0
  char v24; // zf
  int v25; // r1
  int v26; // r0

  sub_80017AA(a1, a2, a3, a4);
  sub_80017E0(v6, v7, v8, v9);
  sub_800183C(v10, v11, v12, v13);
  sub_80015FC(26);
  v14 = *(v5 + oToolkit_RenderInfoPtr);
  *v14 = 8000;
  v14[8] = 0;
  v14[9] = 0;
  v14[10] = 0;
  v14[11] = 0;
  v14[12] = 0;
  v14[13] = 0;
  *(v4 + 1) = 4;
  *(v4 + 2) = 0;
  v15 = sub_8046664();
  v16 = sub_81270D0(v15);
  sub_8127800(v16);
  *(v4 + 12) = 0;
  *(v4 + 13) = 0;
  *(v4 + 16) = 0;
  *(v4 + 17) = 0;
  *(v4 + 30) = 0;
  *(v4 + 36) = 0;
  *(v4 + 32) = 0;
  *(v4 + 46) = 0;
  *(v4 + 42) = 0;
  *(v4 + 26) = 0;
  *(v4 + 27) = 0;
  *(v4 + 28) = 0;
  *(v4 + 29) = 0;
  *(v4 + 58) = 0;
  *(v4 + 38) = 255;
  *(v4 + 50) = 474;
  *(v4 + 56) = 1;
  *(v4 + 40) = 3;
  v17 = sub_8120CC8(0, &dword_81268F8);
  v19 = v17 | 16 * v18;
  *(v4 + 19) = v19;
  *(v4 + 18) = v19;
  *(v4 + 72) = v19;
  v20 = getPETNaviSelect();
  *(v4 + 52) = sub_80137FE(v20);
  *(v4 + 54) = sub_80137FE(v20);
  v21 = getPETNaviSelect();
  *(v4 + 20) = sub_80137B6(v21);
  v22 = getPETNaviSelect();
  *(v4 + 21) = sub_80137B6(v22);
  v23 = getPETNaviSelect();
  *(v4 + 22) = sub_80137B6(v23);
  if ( !getPETNaviSelect() && (TestEventFlagFromImmediate(1, 99), v24) )
    *(v4 + 15) = 2;
  else
    *(v4 + 15) = 2;
  sub_8120D10(0);
  if ( v24 )
  {
    if ( *(v4 + 16) == 2 )
      goto LABEL_10;
    v25 = 0;
  }
  else
  {
    *(v4 + 2) = 20;
  }
  chatbox_runScript_803FD9C(byte_201BF20, v25);
LABEL_10:
  v26 = chatbox_8045F1C(64);
  sub_812741C(v26);
}


// 0x8126cc0
void sub_8126CC0()
{
  int v0; // r5
  int v1; // r0
  __int16 v2; // r0
  int v3; // r0
  __int16 v4; // r0
  int v5; // r7
  int v6; // r0
  int v7; // r4
  int v8; // r0
  int v9; // r1
  unsigned int v10; // r2
  int v11; // r3
  int v12; // r4

  *(v0 + 14) = *(v0 + 13);
  (*(&off_8126DC0 + *(v0 + 2)))();
  v1 = sub_80465BC();
  v2 = sub_81278D8(v1);
  v3 = sub_8119BE8(v2, *(v0 + 68), 0);
  v4 = sub_81278D8(v3);
  sub_811BDFC(v4, *(v0 + 68), 5);
  sub_811B46C(8 * *(v0 + 13) + *(v0 + 64), *(v0 + 68), 1);
  v5 = 0;
  v6 = getPETNaviSelect();
  if ( sub_80137B6(v6) == 255 )
    v5 = 1;
  if ( getPETNaviSelect() )
  {
    v7 = 1;
    if ( !sub_8123360() )
      v7 = 0;
  }
  else
  {
    v7 = 1;
    if ( !sub_8123360() )
      v7 = 0;
  }
  sub_8119C74(v7, 0);
  sub_811BED4(v7, 5);
  if ( !sub_8123360() )
    v5 = 0;
  sub_811B48C(v5, 1);
  sub_80465F8();
  if ( sub_8123360() )
  {
    v12 = *(v0 + 13) + 1;
    v9 = *(v0 + 52);
    v10 = *(v0 + 54);
    if ( (v10 >> 2) < v9 )
      v11 = 33248;
    else
      v11 = 37344;
  }
  else
  {
    v8 = *(v0 + 13);
    v9 = 0;
    v10 = 0;
    v11 = 33248;
  }
  sub_8120900(&unk_201D720, v9, v10, v11);
}


// 0x8126df8
int sub_8126DF8()
{
  int v0; // r5
  char v1; // zf

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    chatbox_8045F2C(64);
    *(v0 + 2) = 4;
  }
  return sub_81272C4();
}


// 0x8126e10
int sub_8126E10()
{
  _BYTE *v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r0
  int v4; // r0
  int v5; // r1
  int v6; // r3
  int v7; // r1

  sub_811F7EC();
  if ( v2 )
  {
    if ( v0[16] == 2 || (v3 = chatbox_8045F3C(128), !v2) )
    {
      v3 = sub_8127264();
      if ( !v2 )
        return sub_81272C4(v3);
      v4 = *(*(v1 + oToolkit_JoypadPtr) + 4);
      v5 = v0[15];
      v6 = v0[16];
      sub_811FA0C();
      v7 = v0[16];
      v0[17] = v7;
      if ( v3 != v7 )
      {
        v0[16] = v3;
        sound_play(122);
        v0[2] = 16;
        v3 = chatbox_8045F1C(64);
        return sub_81272C4(v3);
      }
    }
  }
  else
  {
    sub_811FB64(8);
    v3 = chatbox_8045F1C(64);
  }
  if ( v0[16] == 1 )
    v3 = sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 0x44u, 0, 0);
  return sub_81272C4(v3);
}


// 0x8126e88
int sub_8126E88()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf

  v1 = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    v1 = *(v0 + 12) | 1;
    *(v0 + 12) = v1;
    *(v0 + 1) = 8;
  }
  return sub_81272C4(v1);
}


// 0x8126ea4
int sub_8126EA4()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf

  v1 = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    v1 = *(v0 + 12) | 2;
    *(v0 + 12) = v1;
    *(v0 + 1) = 8;
  }
  return sub_81272C4(v1);
}


// 0x8126ec0
void __noreturn sub_8126EC0()
{
  _BYTE *v0; // r5
  int v1; // r1
  signed int v2; // r2
  int v3; // r1
  char v4; // zf
  int v5; // r1

  v1 = v0[13];
  v2 = v0[16];
  if ( v0[17] < v2 )
    v3 = v1 - 2;
  else
    v3 = v1 + 2;
  v0[13] = v3;
  if ( *&byte_8126F34[4 * v2] == v3 )
  {
    chatbox_8045F2C(64);
    if ( v0[16] == 2 )
    {
      chatbox_8040818();
    }
    else
    {
      chatbox_8045F3C(128);
      if ( v4 )
      {
        sub_8120D10(0);
        if ( v4 )
          v5 = 0;
        sub_81278C8(v5);
      }
    }
    v0[2] = 4;
  }
  sub_80018D0(0, 2, 2, 0);
  sub_80018D0(0, 2, 3, 0);
}


// 0x8126f40
void sub_8126F40()
{
  int v0; // r5
  char v1; // zf

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    chatbox_8045F2C(64);
    chatbox_8045F3C(8);
    if ( !v1 )
    {
      if ( *(v0 + 58) == 4112 )
      {
        engine_setScreeneffect(12, 16);
        *(v0 + 2) = 24;
        chatbox_8040818();
      }
      else
      {
        *(v0 + 2) = 4;
        if ( *(v0 + 16) == 2 )
          chatbox_8040818();
        else
          chatbox_runScript_803FD9C(byte_201BF20, 0);
      }
    }
  }
}


// 0x8126f94
int sub_8126F94()
{
  _BYTE *v0; // r5
  int result; // r0
  char v2; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    result = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 0;
  }
  return result;
}


// 0x8126fa8
int sub_8126FA8()
{
  _BYTE *v0; // r5
  int result; // r0
  char v2; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    result = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 0;
  }
  return result;
}


// 0x8126ff0
void sub_8126FF0()
{
  int v0; // r5
  int v1; // r10
  int v2; // r0
  int v3; // r0
  char v4; // zf
  int v5; // r2
  char v6; // r4
  int v7; // r2
  int v8; // r3

  sub_80465BC();
  if ( !sub_8123360() )
    sub_811BED4(0, 5);
  v2 = sub_80465F8();
  v3 = sub_81272C4(v2);
  sub_8127374(v3);
  engine_isScreeneffectAnimating();
  if ( !v4 )
  {
    chatbox_8045F2C(64);
    sub_81440D8();
    sub_8046664();
    ClearEventFlagFromImmediate(23, 19);
    v5 = *(v0 + 12);
    if ( v5 & 1 )
    {
      v6 = 36;
LABEL_8:
      chatbox_8040818();
      chatbox_8045F2C(64);
      ZeroFillByWord(*(v1 + oToolkit_SubmenuPtr), 0x80u, v7, v8);
      *v0 = v6;
      return;
    }
    if ( v5 & 2 )
    {
      v6 = 44;
      goto LABEL_8;
    }
    sub_811F708();
  }
}


// 0x8127060
int __noreturn sub_8127060()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r0

  copyTiles();
  v1 = *(v0 + 13);
  copyTiles();
  v2 = *(v0 + 13);
  copyTiles();
  v3 = *(v0 + 13);
  copyTiles();
  v4 = *(v0 + 13);
  return copyTiles();
}


// 0x81270d0
void sub_81270D0()
{
  int v0; // r6
  int v1; // r7
  char (*v2)[32]; // r0
  int v3; // r7
  int v4; // r1
  signed int v5; // r1

  v0 = 0;
  v1 = 0;
  do
  {
    v2 = *(&off_8127160 + v1);
    v3 = v1 + 4;
    v4 = *(&off_8127160 + v3);
    v1 = v3 + 4;
    *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
    v0 += 4;
    v5 = 0;
    do
    {
      *(&unk_20096E0 + v0) = *(&off_8127160 + v1);
      v0 += 4;
      v1 += 4;
      ++v5;
    }
    while ( v5 < 2 );
  }
  while ( v1 < 32 );
  *(&unk_20096E0 + v0) = 0;
  decompAndCopyData_8000B30(&unk_20096E0);
  decompAndCopyData_8000B30(byte_8127188);
  sub_8123300(off_8127120, byte_201BF20, decomp_2013A00);
}


// 0x8127264
signed int sub_8127264()
{
  int v0; // r5
  int v1; // r4
  char v2; // zf
  int v3; // r7
  char v4; // r0

  v1 = 0;
  chatbox_8045F3C(32);
  if ( !v2 )
  {
    v3 = 0;
    TestEventFlagFromImmediate(0, 242);
    if ( !v2 )
      v3 = 1;
    TestEventFlagFromImmediate(0, 247);
    if ( !v2 )
      v3 |= 2u;
    if ( v3 == 3 )
    {
      if ( getPETNaviSelect() )
      {
        engine_setScreeneffect(12, 12);
        goto LABEL_11;
      }
      v3 = chatbox_8045F4C() + 1;
    }
    engine_setScreeneffect(12, 12);
    v4 = 8;
    if ( v3 == 1 )
    {
LABEL_12:
      *(v0 + 2) = v4;
      return 1;
    }
LABEL_11:
    v4 = 12;
    goto LABEL_12;
  }
  return v1;
}


// 0x81272c4
int sub_81272C4()
{
  int v0; // r5
  int result; // r0

  if ( !*(v0 + 16)
    || (sub_812730C(4, 52, 0, 19), result = *(v0 + 15), result != 2) && (result = *(v0 + 16), result == 1) )
  {
    result = sub_812730C(232, 52, 0, 18);
  }
  return result;
}


// 0x812730c
int __fastcall sub_812730C(int a1, int a2, int a3, int a4)
{
  int *v4; // r4
  int v5; // r5
  unsigned __int8 *v6; // r7
  int v7; // r0
  int v8; // r2
  unsigned int v9; // ST14_4
  int v10; // r0
  int v11; // r1
  int result; // r0
  int v13; // [sp+8h] [bp-1Ch]

  v13 = a4;
  v7 = a1 << 16;
  if ( a3 )
    v8 = *(v5 + a3);
  else
    v8 = 0;
  v9 = *(v5 + a4);
  v10 = sub_811FAF4(v7 | (a2 + 16 * v8), 0x20002u, v9 & 0xF, v4);
  v11 = (v9 >> 4) - 1;
  if ( v9 >> 4 == 1 )
    *(v5 + v13) = sub_8120CC8(v10, v6);
  result = *(v5 + v13) & 0xF | 16 * v11;
  *(v5 + v13) = result;
  return result;
}


// 0x8127374
signed int sub_8127374()
{
  int v0; // r5
  signed int result; // r0
  int v2; // r0

  result = *(v0 + 30);
  if ( result >= 4 )
  {
    v2 = 8 * (*(v0 + 13) - *(v0 + 14)) + *(v0 + 50);
    *(v0 + 50) = v2;
    result = sub_811FA98((v2 << 16) | 0x14, 0x20002u, *(v0 + 30), *(v0 + 36));
  }
  return result;
}


// 0x81273b4
int sub_81273B4()
{
  int v0; // r10
  int result; // r0
  char v2; // zf
  int v3; // r6
  int v4; // r0
  signed int v5; // r0

  result = TestEventFlagFromImmediate(1, 99);
  if ( !v2 )
  {
    v3 = *(v0 + oToolkit_Unk200a220_Ptr);
    v4 = sub_8121198() + 1;
    if ( v4 == 15 )
    {
      v5 = 19;
    }
    else
    {
      *(v3 + 12) = v4;
      v5 = 18;
    }
    sub_8127578(v5, 0, 100707328, byte_201BF20);
  }
  return result;
}


// 0x81273f0
int sub_81273F0()
{
  int v0; // r5
  int result; // r0
  char v2; // zf
  int v3; // r0

  result = TestEventFlagFromImmediate(1, 99);
  if ( !v2 )
  {
    v3 = *(v0 + 13);
    result = copyTiles();
  }
  return result;
}


// 0x812741c
void __noreturn sub_812741C()
{
  int v0; // r10
  int v1; // r6
  int v2; // r0

  v1 = *(v0 + oToolkit_Unk200a220_Ptr);
  v2 = getPETNaviSelect();
  *(v1 + 8) = sub_80137B6(v2) + 1;
  sub_8127578(5, 0, 100696096, byte_201BF20);
}


// 0x8127578
void __noreturn sub_8127578()
{
  JUMPOUT(&loc_8127584);
}


// 0x8127580
int __fastcall __noreturn sub_8127580(int a1, int a2, int a3, int a4)
{
  int v4; // r4

  return render_graphicalText_8045F8C(a4, a1, v4 + a2, a3 + a2);
}


// 0x81275a8
int __noreturn sub_81275A8()
{
  int v0; // r5
  int v1; // r0

  v1 = *(v0 + 13);
  return copyTiles();
}


// 0x81275c8
void __noreturn sub_81275C8()
{
  int v0; // r5
  int v1; // r10

  *(*(v1 + oToolkit_Unk200a220_Ptr) + 8) = *(v0 + 20);
  sub_8127580(8, 0, 100700160, byte_201BF20);
}


// 0x8127618
int __noreturn sub_8127618()
{
  int v0; // r5
  int v1; // r0

  v1 = *(v0 + 13);
  return copyTiles();
}


// 0x8127638
char *sub_8127638()
{
  int v0; // r5
  char *v1; // r6
  signed int v2; // r4
  unsigned int v3; // r0
  unsigned int v4; // r7
  int v5; // r0
  char v6; // zf
  _DWORD *v7; // r7
  int v8; // r2
  char v9; // r1
  int v10; // r2
  _DWORD *v11; // r7
  signed int v12; // r4
  char *result; // r0
  char *v14; // r1

  v1 = byte_201D74C;
  ZeroFillByByte(byte_201D74C, 40);
  ZeroFillByByte(byte_2024394, 40);
  v2 = 0;
  do
  {
    v3 = *sub_813B9FC(v2);
    if ( v3 )
    {
      v4 = v3;
      if ( !getPETNaviSelect() )
      {
        byte_201D74C[v2] = v4 >> 2;
        ++*(v0 + 30);
      }
    }
    ++v2;
  }
  while ( v2 < 25 );
  v5 = TestEventFlagFromImmediate(1, 99);
  if ( !v6 )
  {
    v7 = sub_81276E4(v5);
    v8 = 0;
    while ( *v7 != -1 )
    {
      v9 = (*v7 >> 2) + 64;
      byte_201D74C[v2] = v9;
      byte_2024394[v8] = v9;
      v10 = v8 + 2;
      v11 = v7 + 1;
      *&byte_2024394[v10] = *v11;
      v8 = v10 + 2;
      ++*(v0 + 30);
      ++v2;
      v7 = v11 + 1;
    }
  }
  v12 = 0;
  do
  {
    result = *v1;
    if ( !*v1 )
    {
      result = v1;
      v14 = v1 + 1;
      do
      {
        if ( *v14 )
        {
          *result = *v14;
          *v14 = 0;
          ++result;
        }
        ++v14;
      }
      while ( v14 < &unk_201D76E );
    }
    ++v1;
    ++v12;
  }
  while ( v12 < 34 );
  return result;
}


// 0x81276e4
int sub_81276E4()
{
  int v0; // r10
  int v1; // r4
  int v2; // r0

  v1 = *(*(v0 + oToolkit_Unk2001c04_Ptr) + 48);
  v2 = getPETNaviSelect();
  return *(*(&pt_8121200)[v2] + v1 - *&byte_81211B4[2 * v2]);
}


// 0x8127718
int sub_8127718()
{
  int v0; // r5
  int v1; // r7
  int result; // r0
  int v3; // r0

  v1 = *(v0 + 36);
  result = *(v0 + 38);
  if ( v1 != result )
  {
    v3 = byte_201D74C[v1];
    if ( v3 >= 64 )
      v3 = sub_8127760();
    sub_8127580(v3, 0, 100704256, byte_873EA50);
  }
  return result;
}


// 0x8127760
int __fastcall sub_8127760(int result)
{
  int v1; // r5
  signed int v2; // r3

  v2 = 0;
  while ( *&byte_2024394[v2] != result )
  {
    v2 += 4;
    if ( v2 >= 32 )
    {
      v2 = 0;
      break;
    }
  }
  *(v1 + 2 * (result - 64) + 80) = *&byte_2024394[v2 + 2];
  return result;
}


// 0x8127788
int sub_8127788()
{
  int v0; // r5
  int v1; // r10
  int v2; // r7
  int result; // r0
  int v4; // r0
  int v5; // r2

  v2 = *(v0 + 36);
  result = *(v0 + 38);
  if ( v2 != result )
  {
    v4 = *&byte_201D74C[v2];
    v5 = v4 - 64;
    if ( v4 >= 64 && v5 <= 2 )
      *(*(v1 + 56) + 4 * v5 + 8) = *&byte_201D74C[v2 + 4];
    sub_8127580(v4, 0, 100704256, byte_873EA50);
  }
  return result;
}


// 0x81277e0
int __noreturn sub_81277E0()
{
  int v0; // r5
  int v1; // r0

  v1 = *(v0 + 13);
  return copyTiles();
}


// 0x8127800
int sub_8127800()
{
  signed int v0; // r6
  char v1; // zf
  int result; // r0

  v0 = 0;
  while ( 1 )
  {
    TestEventFlag(*&byte_8127834[v0]);
    if ( !v1 )
      break;
    result = TestEventFlag(*(&off_812787C + v0));
    if ( !v1 )
      break;
    v0 += 4;
    if ( v0 >= 52 )
      return result;
  }
  return SetEventFlagFromImmediate(0, 247);
}


// 0x81278c8
void __fastcall sub_81278C8(int a1)
{
  chatbox_runScript_803FD9C(byte_201BF20, a1);
}


// 0x81278d8
int sub_81278D8()
{
  int v0; // r5

  return 8 * *(v0 + 13) + *(v0 + 64);
}


// 0x81278e8
int sub_81278E8()
{
  int v0; // r5
  unsigned int v1; // r0

  sub_811FAF4((&byte_200[8 * *(v0 + 13)] << 16) | &byte_70, 0x20002u, 0, &dword_8126904);
  v1 = sub_811FAF4((&byte_220[8 * *(v0 + 13)] << 16) | &byte_70, 0x20002u, 0, &dword_8126908);
  return sub_8127944(v1);
}


// 0x8127944
int sub_8127944()
{
  int v0; // r5

  return sub_812730C(8 * *(v0 + 13) + 554, 110, 0, 72);
}


// 0x8127990
int __fastcall sub_8127990(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int result; // r0

  v4 = a1;
  result = sub_811F6C0(a1, a2, a3, a4);
  if ( v4 )
  {
    result = 1;
    sSubmenu.unk_0D = 1;
  }
  return result;
}


// 0x81279a8
signed int sub_81279A8()
{
  signed int v0; // r7
  int v1; // r4
  int v2; // r5
  int v3; // r6
  char v4; // zf

  v0 = 1;
  v1 = dword_2001140;
  if ( dword_2001140 )
  {
    v2 = 0;
    while ( 1 )
    {
      v3 = byte_2006530[v2];
      TestEventFlag(v3 + 7584);
      if ( v4 )
      {
        if ( byte_812851C[4 * v3] & 0x80 )
          break;
      }
      if ( ++v2 >= v1 )
        return v0;
    }
    v0 = 0;
  }
  return v0;
}


// 0x81279f8
int menuControl_cb_email()
{
  return (*(&off_8127A10 + sSubmenu.jo_01))();
}


// 0x8127a1c
void __fastcall __noreturn sub_8127A1C(int a1, int a2, int a3, int a4)
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
  _WORD *v14; // r0
  signed int v15; // r0

  sub_80017AA(a1, a2, a3, a4);
  sub_80017E0(v6, v7, v8, v9);
  sub_800183C(v10, v11, v12, v13);
  sub_80015FC(16);
  v14 = *(v5 + oToolkit_RenderInfoPtr);
  *v14 = 8000;
  v14[8] = 0;
  v14[9] = 0;
  v14[10] = 0;
  v14[11] = 0;
  v14[12] = 0;
  v14[13] = 0;
  *(v4 + 1) = 4;
  *(v4 + 2) = 0;
  engine_setScreeneffect(8, 16);
  v15 = sub_8046664();
  sub_8127CB8(v15);
}


// 0x8127acc
int sub_8127ACC()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r0

  v1 = (*(&off_8127AF8 + *(v0 + 2)))();
  v2 = sub_81281E0(v1);
  v3 = sub_8127F54(v2);
  v4 = sub_8127FE4(v3);
  sub_8128280(v4);
  sub_80465BC();
  return sub_80465F8();
}


// 0x8127b08
int sub_8127B08()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    result = 4;
    *(v0 + 2) = 4;
  }
  return result;
}


// 0x8127b18
signed int sub_8127B18()
{
  int v0; // r5
  int v1; // r10
  char v2; // zf
  signed int result; // r0
  int v4; // r0
  int v5; // r0
  char v6; // r1
  int v7; // r0

  sub_811F7EC();
  if ( !v2 )
    return sub_811FB64(8);
  sub_811F7EC();
  if ( v2 )
  {
    result = *(v0 + 30);
    if ( *(v0 + 30) )
    {
      sub_811F7EC();
      if ( v2 )
      {
        result = sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 4u, 0, 0);
        if ( result )
        {
          v7 = (sub_8128008)();
          result = sub_81281C0(v7);
        }
      }
      else
      {
        *(v0 + 2) = 12;
        sound_play(129);
        result = sub_8120CC8(0, &dword_8127980);
        *(v0 + 15) = result;
        *(v0 + 16) = v6;
      }
    }
  }
  else
  {
    if ( !*(v0 + 30) )
      return sub_811FB64(8);
    v4 = sub_8128318();
    v5 = sub_8128008(v4);
    sub_81281C0(v5);
    result = sound_play(129);
  }
  return result;
}


// 0x8127b94
int sub_8127B94()
{
  int v0; // r5
  int result; // r0
  char v2; // zf
  unsigned int v3; // r4
  unsigned int v4; // r0
  int v5; // r0

  result = chatbox_8045F3C(8);
  if ( !v2 )
  {
    v3 = dword_2027590[8 * (*(v0 + 32) + *(v0 + 36)) + 6] >> 16;
    ClearEventFlag(v3 + 7456);
    v4 = SetEventFlag(v3 + 7584);
    v5 = sub_8128008(v4);
    sub_81281C0(v5);
    *(v0 + 2) = 4;
    result = sub_8127ED4(1);
  }
  return result;
}


// 0x8127be4
void __noreturn sub_8127BE4()
{
  int v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0

  sub_811F7EC();
  if ( v2 )
  {
    sub_811F7EC();
    if ( v2 )
    {
      v3 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 4), 4, 1, *(v0 + 42));
      *(v0 + 42) = v3;
    }
    else
    {
      sound_play(129);
      v4 = *(&dword_8127C54 + *(v0 + 42));
      if ( v4 == byte_2000FE0 )
      {
        byte_2000FE1 ^= 4u;
      }
      else
      {
        byte_2000FE0 = v4;
        byte_2000FE1 = 0;
      }
      v5 = sub_8128500();
      v6 = sub_8128008(v5);
      v3 = sub_81281C0(v6);
    }
  }
  else
  {
    *(v0 + 2) = 4;
    v3 = sound_play(131);
  }
  v7 = sub_8127F90(v3);
  sub_812848C(v7);
}


// 0x8127c64
int __fastcall sub_8127C64(int a1)
{
  int v1; // r5
  int v2; // r10
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int result; // r0
  char v7; // zf
  signed int v8; // r0
  int v9; // r0
  int v10; // r1

  v3 = sub_81281E0(a1);
  v4 = sub_8127F54(v3);
  v5 = sub_8127FE4(v4);
  sub_8128280(v5);
  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v7 )
  {
    v8 = sub_8046664();
    v9 = sub_8127EF4(v8);
    v10 = *(v2 + oToolkit_GameStatePtr);
    if ( *(v1 + 13) & 1 )
      *(v10 + 120) = v9;
    else
      *(v10 + oGameState_Unk_13) = v9;
    if ( *(v1 + 13) & 1 )
    {
      sub_811EBF4(1);
      result = sub_811F728();
    }
    else
    {
      result = sub_811F708();
    }
  }
  return result;
}


// 0x8127cb8
int __noreturn sub_8127CB8()
{
  int v0; // r5
  int v1; // r6
  int v2; // r7
  char (*v3)[32]; // r0
  int v4; // r7
  int v5; // r1
  signed int v6; // r1
  u32 *v7; // r0
  char v9; // [sp+0h] [bp-18h]

  v9 = *(v0 + 13);
  v1 = 0;
  v2 = 0;
  do
  {
    v3 = *(&off_8127DB8 + v2);
    v4 = v2 + 4;
    v5 = *(&off_8127DB8 + v4);
    v2 = v4 + 4;
    *(&unk_20096E0 + v1) = sub_811FB84(v3, v5);
    v1 += 4;
    v6 = 0;
    do
    {
      *(&unk_20096E0 + v1) = *(&off_8127DB8 + v2);
      v1 += 4;
      v2 += 4;
      ++v6;
    }
    while ( v6 < 2 );
  }
  while ( v2 < 48 );
  *(&unk_20096E0 + v1) = 0;
  decompAndCopyData_8000B30(&unk_20096E0);
  decompAndCopyData_8000B30(byte_8127DF0);
  v7 = &off_8127D78;
  if ( v9 & 1 )
    v7 = &dword_8127D98;
  decompAndCopyData_8000B30(v7);
  sub_8123300(byte_8127D38, &unk_201BA00, decomp_2013A00);
  return copyTiles();
}


// 0x8127e9c
int sub_8127E9C()
{
  int v0; // r5
  int v1; // r10
  signed int v2; // r4
  int v3; // r0
  int v4; // r1
  int v5; // r1
  int result; // r0

  if ( *(v0 + 30) )
  {
    v3 = sub_8127EF4(*(v0 + 30));
    v4 = *(v1 + oToolkit_GameStatePtr);
    if ( *(v0 + 13) & 1 )
      v5 = *(v4 + (oGameState_Unk_70|oGameState_Unk_08));
    else
      v5 = *(v4 + 19);
    v2 = v3 == v5;
  }
  else
  {
    v2 = 2;
  }
  sub_8127ED4(v2);
  result = 0;
  *(v0 + 2) = 0;
  return result;
}


// 0x8127ed4
void __fastcall sub_8127ED4(int a1)
{
  int v1; // r5

  if ( *(v1 + 13) & 1 )
    (loc_803FDA4)(&unk_201BA00, a1 + 10);
  else
    chatbox_runScript_803FD9C(&unk_201BA00, a1);
}


// 0x8127ef4
int sub_8127EF4()
{
  int v0; // r5
  signed int v1; // r6
  int v2; // r4
  char v3; // zf

  v1 = 7328;
  v2 = 0;
  do
  {
    TestEventFlag(v1);
    if ( !v3 )
    {
      TestEventFlag(v1 + 128);
      if ( !v3 )
      {
        if ( byte_812851C[4 * (v1 - 7328)] & 0x80 )
        {
          if ( !(*(v0 + 13) & 1) )
            goto LABEL_9;
        }
        else if ( *(v0 + 13) & 1 )
        {
          goto LABEL_9;
        }
        ++v2;
      }
    }
LABEL_9:
    ++v1;
  }
  while ( v1 < 7456 );
  return v2;
}


// 0x8127f54
void sub_8127F54()
{
  int v0; // r5
  int v1; // r0
  int v2; // r1
  char v3; // r1

  if ( *(v0 + 30) && *(v0 + 2) != 12 )
  {
    v1 = sub_811FAF4((16 * *(v0 + 32) + 24) | 0xE0000, 0x20003u, *(v0 + 12), byte_8127978);
    v2 = *(v0 + 14) - 1;
    *(v0 + 14) = v2;
    if ( !v2 )
    {
      *(v0 + 12) = sub_8120CC8(v1, &dword_8127980);
      *(v0 + 14) = v3;
    }
  }
}


// 0x8127f90
int sub_8127F90()
{
  int v0; // r5
  int result; // r0
  int v2; // r1
  char v3; // r1

  result = sub_811FAF4((16 * *(v0 + 42) + 24) | 0x420000, 3u, *(v0 + 15), byte_8127978);
  v2 = *(v0 + 16) - 1;
  *(v0 + 16) = v2;
  if ( !v2 )
  {
    result = sub_8120CC8(result, &dword_8127980);
    *(v0 + 15) = result;
    *(v0 + 16) = v3;
  }
  return result;
}


// 0x8127fe4
signed int sub_8127FE4()
{
  int v0; // r5

  return sub_811FA98(14745620, 0x20002u, *(v0 + 30), *(v0 + 36));
}


// 0x8128008
int sub_8128008()
{
  int v0; // r5
  signed int v1; // r1
  int result; // r0
  int v3; // r1
  int *v4; // [sp+4h] [bp-18h]

  v1 = *(v0 + 30);
  if ( v1 > 4 )
    v1 = 4;
  result = sub_81280DC(byte_201, v1);
  if ( *(v0 + 30) )
  {
    v4 = &dword_2027590[8 * *(v0 + 36)];
    render_graphicalText_8045F8C(&unk_2025700, *(v4 + 20), byte_2017A20, 100679712);
    v3 = *(v4 + 16);
    JUMPOUT(1310008577);
  }
  return result;
}


// 0x81280dc
int __fastcall sub_81280DC(int a1, int a2)
{
  int result; // r0
  int v3; // r3
  signed int v4; // r4
  char *v5; // r7
  int v6; // r6
  int v7; // r0
  __int16 v8; // r2
  int v9; // r3
  int v10; // r0
  int v11; // r4
  int v12; // r4
  int v13; // [sp+8h] [bp-20h]
  int v14; // [sp+Ch] [bp-1Ch]

  v14 = a1;
  v13 = a2;
  result = ZeroFillByByte(&unk_2026700, &byte_170);
  if ( v13 )
  {
    v3 = 0;
    result = v14;
    do
    {
      v4 = 0;
      v5 = &unk_2026700 + &byte_5C * v3;
      v6 = (v5 + 46);
      v7 = sub_812818C(result);
      do
      {
        *&v5[v4] = v7 | v8;
        *(v6 + v4) = (v7 | v8) + 1;
        v7 += 2;
        v4 += 2;
      }
      while ( v4 < 22 );
      v10 = v7 + 2;
      v11 = v4 + 2;
      do
      {
        *&v5[v11] = v10 | 0x9000;
        *(v6 + v11) = (v10 | 0x9000) + 1;
        v10 += 2;
        v11 += 2;
      }
      while ( v11 < &dword_28 );
      result = v10 + 2;
      v12 = v11 + 2;
      do
      {
        *&v5[v12] = result | 0x7000;
        *(v6 + v12) = (result | 0x7000) + 1;
        result += 2;
        v12 += 2;
      }
      while ( v12 < 46 );
      v3 = v9 + 1;
    }
    while ( v3 < v13 );
  }
  return result;
}


// 0x812818c
void __fastcall __spoils<R2,R3,R12> sub_812818C(int a1, int a2, int a3, int a4)
{
  int v4; // r5

  TestEventFlag((dword_2027590[8 * (*(v4 + 36) + a4) + 6] >> 16) + 7456);
}


// 0x81281c0
int sub_81281C0()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 30);
  if ( *(v0 + 30) )
    result = copyTiles();
  return result;
}


// 0x81281e0
signed int sub_81281E0()
{
  int v0; // r5
  signed int v1; // r7
  signed int v2; // r6
  signed int result; // r0

  v1 = 0;
  v2 = *(v0 + 30);
  if ( *(v0 + 30) )
  {
    if ( v2 > 4 )
      v2 = 4;
    do
    {
      result = sub_802FE28(
                 (*&byte_8128250[4 * v1] << 16) | *&byte_8128250[4 * v1 + 2] | 0x40000000,
                 &byte_210[4 * ((dword_2027590[8 * (*(v0 + 36) + v1)] >> 16) & 0xFFFFFF7F)] | 0xA800,
                 0,
                 2);
      ++v1;
    }
    while ( v1 < v2 );
  }
  return result;
}


// 0x8128260
void __fastcall sub_8128260(int a1, int a2, int a3, int a4)
{
  HalfwordFill(&unk_2026870, byte_100, byte_812798A[0] << 8, a4);
}


// 0x8128280
int sub_8128280()
{
  int v0; // r5
  int v1; // r7
  signed int v2; // r4
  signed int v3; // r5
  int result; // r0
  char v5; // zf

  v1 = *(v0 + 36);
  v2 = *(v0 + 30);
  if ( *(v0 + 30) )
  {
    v3 = 0;
    do
    {
      result = TestEventFlag((dword_2027590[8 * (v1 + v3) + 6] >> 16) + 7584);
      if ( v5 )
        result = sub_81282C0(v3);
      ++v3;
    }
    while ( v3 < 4 && v3 < v2 );
  }
  return result;
}


// 0x81282c0
int __fastcall sub_81282C0(int a1)
{
  int v1; // r7
  int result; // r0
  int v3; // r1
  unsigned __int8 v4; // r1

  v1 = 2 * a1;
  result = sub_811FAF4((16 * a1 + 23) | 0x170000, 0x10002u, byte_2026870[2 * a1], byte_8127984);
  v3 = byte_2026870[v1 + 1] - 1;
  byte_2026870[v1 + 1] = v3;
  if ( !v3 )
  {
    result = sub_8120CC8(result, byte_812798A);
    byte_2026870[v1] = result;
    byte_2026870[v1 + 1] = v4;
  }
  return result;
}


// 0x8128318
signed int sub_8128318()
{
  int v0; // r5
  signed int result; // r0

  if ( *(v0 + 13) & 1 )
    chatbox_803FE10(&unk_201C700, dword_2027590[8 * (*(v0 + 32) + *(v0 + 36)) + 6] & 0xFFFF);
  else
    chatbox_runScript_803FE08();
  result = 8;
  *(v0 + 2) = 8;
  return result;
}


// 0x8128354
int sub_8128354()
{
  int v0; // r5

  return *(v0 + 13);
}


// 0x812835c
signed int sub_812835C()
{
  unsigned __int16 *v0; // r5
  int v1; // r4
  char v2; // zf
  unsigned __int8 v3; // vf
  signed int result; // r0

  v1 = v0[15] - 1;
  while ( 1 )
  {
    TestEventFlag(byte_2006530[v1] + 7456);
    if ( !v2 )
      break;
    v3 = __OFSUB__(v1--, 1);
    if ( ((v1 < 0) ^ v3) | (v1 == 0) )
    {
      result = 0;
      v0[16] = 0;
      v0[18] = 0;
      return result;
    }
  }
  if ( v1 > 4 )
  {
    v0[18] = v1 - 4;
    result = 4;
    v0[16] = 4;
  }
  else
  {
    v0[16] = v1;
    result = 0;
    v0[18] = 0;
  }
  return result;
}


// 0x81283a0
int *__fastcall sub_81283A0(int a1, int a2, int a3, int a4)
{
  int v4; // r5
  int *v5; // r4
  int *result; // r0
  int *v7; // r1
  int v8; // r6
  char *v9; // r7
  char *v10; // r2
  int v11; // r1
  int v12; // ST00_4
  int v13; // r5
  int v14; // r0
  int v15; // ST00_4
  unsigned __int8 v16; // vf
  int v17; // [sp+0h] [bp-20h]
  int v18; // [sp+4h] [bp-1Ch]
  int v19; // [sp+8h] [bp-18h]

  v18 = v4;
  v5 = dword_2027590;
  ZeroFillByEightWords(dword_2027590, 0x1000u, a3, a4);
  result = sub_81284B4();
  if ( *(v4 + 13) & 1 )
    v7 = result;
  v19 = v7;
  v8 = dword_2001140;
  if ( dword_2001140 )
  {
    *(v4 + 30) = 0;
    v9 = byte_2006530;
    while ( 1 )
    {
      v17 = *v9;
      v10 = &byte_812851C[4 * v17];
      if ( *(v18 + 13) & 1 )
      {
        if ( *v10 & 0x80 )
        {
          v11 = v19;
          v12 = *v10;
          v5[7] = (v19 << 16) | v19;
          v13 = ~v19 & 0xFFFF;
          v14 = v12;
LABEL_10:
          v19 = v11 - 1;
          *v5 = (v14 << 16) | v13;
          *(v5 + 4) = v10[1];
          v5[2] = (v10[2] << 16) | v13;
          v5[3] = (v10[3] << 16) | v13;
          *(v5 + 16) = 2 * v17;
          *(v5 + 20) = 2 * v17 + 1;
          v5[6] = (v17 << 16) | v17;
          ++*(v18 + 30);
          v5 += 8;
          goto LABEL_11;
        }
      }
      else if ( !(*v10 & 0x80) )
      {
        v11 = v19;
        v15 = *v10;
        v5[7] = (v19 << 16) | v19;
        v13 = ~v19 & 0xFFFF;
        v14 = v15;
        goto LABEL_10;
      }
LABEL_11:
      ++v9;
      v16 = __OFSUB__(v8--, 1);
      if ( ((v8 < 0) ^ v16) | (v8 == 0) )
      {
        result = dword_2027590;
        if ( *(v18 + 30) )
          result = sub_8120018(dword_2027590, *(v18 + 30), byte_2000FE0, byte_2000FE1);
        return result;
      }
    }
  }
  return result;
}


// 0x812848c
int __noreturn sub_812848C()
{
  return copyTiles();
}


// 0x81284a4
char *sub_81284A4()
{
  char *result; // r0

  result = &byte_2000FE0;
  byte_2000FE0 = 7;
  byte_2000FE1 = 4;
  return result;
}


// 0x81284b4
__int64 sub_81284B4()
{
  int v0; // r4
  char *v1; // r7
  unsigned __int8 v2; // vf
  __int64 v4; // [sp+0h] [bp-1Ch]

  v4 = 0LL;
  v0 = dword_2001140;
  v1 = byte_2006530;
  do
  {
    if ( byte_812851C[4 * *v1] & 0x80 )
      LODWORD(v4) = v4 + 1;
    else
      ++HIDWORD(v4);
    ++v1;
    v2 = __OFSUB__(v0--, 1);
  }
  while ( !(((v0 < 0) ^ v2) | (v0 == 0)) );
  return v4;
}


// 0x8128500
signed int sub_8128500()
{
  int v0; // r5

  return sub_8120018(dword_2027590, *(v0 + 30), byte_2000FE0, byte_2000FE1);
}


// 0x8128730
int sub_8128730()
{
  int v0; // r5

  return (*(&off_8128744 + *(v0 + 1)))();
}


// 0x8128750
int __fastcall sub_8128750(int a1, int a2, int a3, int a4)
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
  _WORD *v14; // r0
  int v15; // r0
  int v16; // r0
  int v17; // r0

  sub_80017AA(a1, a2, a3, a4);
  sub_80017E0(v6, v7, v8, v9);
  sub_800183C(v10, v11, v12, v13);
  sub_80015FC(16);
  v14 = *(v5 + oToolkit_RenderInfoPtr);
  *v14 = 8000;
  v14[8] = 0;
  v14[9] = 0;
  v14[10] = 0;
  v14[11] = 0;
  v14[12] = 0;
  v14[13] = 0;
  *(v4 + 1) = 4;
  *(v4 + 2) = 0;
  sub_81288FC();
  *(v4 + 15) = 0;
  *(v4 + 16) = 0;
  *(v4 + 38) = 255;
  *(v4 + 34) = 255;
  *(v4 + 14) = -1;
  v15 = sub_81289C4();
  v16 = sub_8128A44(v15);
  v17 = sub_8128AB0(v16);
  sub_8128B34(v17);
  return engine_setScreeneffect(8, 16);
}


// 0x81287b4
int sub_81287B4()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0

  v1 = (*(&off_81287D0 + *(v0 + 2)))();
  v2 = sub_8128C20(v1);
  return sub_8128B34(v2);
}


// 0x81287dc
int sub_81287DC()
{
  int v0; // r5
  char v1; // zf
  int v2; // r0
  int result; // r0

  engine_isScreeneffectAnimating();
  if ( !v1 )
    *(v0 + 2) = 4;
  v2 = sub_8128B4C();
  sub_8128B98(v2);
  *(v0 + 38) = *(v0 + 36);
  *(v0 + 34) = *(v0 + 32);
  result = *(v0 + 13);
  *(v0 + 14) = result;
  return result;
}


// 0x8128800
int sub_8128800()
{
  int v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r0
  signed int v4; // r1
  int v5; // r3
  int v6; // r0
  int v7; // r7
  signed int v8; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r0

  *(v0 + 38) = *(v0 + 36);
  *(v0 + 34) = *(v0 + 32);
  *(v0 + 14) = *(v0 + 13);
  if ( (*(v0 + 30) || (sub_811F7EC(), v2)) && ((v3 = chatbox_8045F3C(8), v2) || (sub_811F7EC(), v2)) )
  {
    v4 = 2;
    if ( *(v0 + 30) )
    {
      *(v0 + 36);
      *(v0 + 32);
      v5 = *(v0 + 13);
      v6 = *(*(v1 + oToolkit_JoypadPtr) + 4);
      sub_811FA0C();
      v4 = *(v0 + 13);
      if ( v3 == v4 )
      {
        v7 = *(v0 + 30);
        *(v0 + 30) = (v7 + 1) >> 1;
        v8 = sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 4u, 0, 0);
        *(v0 + 30) = v7;
        if ( v8 )
        {
          v9 = 2 * *(v0 + 36) + 2 * (*(v0 + 32) + 1);
          if ( v9 > *(v0 + 30) )
          {
            v9 = 0;
            *(v0 + 13) = 0;
          }
          v10 = sub_8128A44(v9);
          v3 = sub_8128AB0(v10);
        }
        else
        {
          sub_811F7EC();
          if ( !v2 )
            v3 = sub_8128BF0();
        }
      }
      else
      {
        *(v0 + 13) = v3;
      }
    }
  }
  else
  {
    v3 = sub_811FB64(8);
  }
  v11 = sub_8128B4C(v3, v4);
  return sub_8128B98(v11);
}


// 0x81288bc
int sub_81288BC()
{
  _BYTE *v0; // r5
  int result; // r0
  char v2; // zf
  int v3; // r2
  int v4; // r3

  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    CopyWords(v0, byte_2037780, 0x80u);
    ZeroFillByWord(v0, 0x80u, v3, v4);
    *v0 = 48;
    result = chatbox_8040818();
  }
  return result;
}


// 0x81288e4
int __fastcall sub_81288E4(int a1, int a2)
{
  int v2; // r0
  int result; // r0
  char v4; // zf

  v2 = sub_8128B4C(a1, a2);
  sub_8128C20(v2);
  result = engine_isScreeneffectAnimating();
  if ( !v4 )
    result = sub_811F708();
  return result;
}


// 0x81288fc
int sub_81288FC()
{
  int v0; // r6
  int v1; // r7
  char (*v2)[32]; // r0
  int v3; // r7
  int v4; // r1
  signed int v5; // r1

  v0 = 0;
  v1 = 0;
  do
  {
    v2 = *(&off_8128950 + v1);
    v3 = v1 + 4;
    v4 = *(&off_8128950 + v3);
    v1 = v3 + 4;
    *(&unk_20096E0 + v0) = sub_811FB84(v2, v4);
    v0 += 4;
    v5 = 0;
    do
    {
      *(&unk_20096E0 + v0) = *(&off_8128950 + v1);
      v0 += 4;
      v1 += 4;
      ++v5;
    }
    while ( v5 < 2 );
  }
  while ( v1 < 32 );
  *(&unk_20096E0 + v0) = 0;
  decompAndCopyData_8000B30(&unk_20096E0);
  decompAndCopyData_8000B30(byte_8128978);
  return copyTiles();
}


// 0x81289c4
signed int sub_81289C4()
{
  int v0; // r5
  __int16 v1; // r6
  signed int v2; // r4
  char v3; // r0
  char v4; // zf
  char *v5; // r7
  char *v6; // r6
  signed int v7; // r4
  char *v8; // r0
  _WORD *v9; // r1
  signed int result; // r0

  ZeroFillByByte(byte_201BF00, 222);
  v1 = 0;
  v2 = 0;
  do
  {
    v3 = sub_803CE28(v2);
    if ( !v4 )
    {
      v5 = &byte_201BF00[2 * byte_81286C4[v2]];
      *v5 = v2;
      v5[1] = v3;
      ++v1;
    }
    ++v2;
  }
  while ( v2 <= 111 );
  *(v0 + 30) = v1;
  v6 = byte_201BF00;
  v7 = 0;
  do
  {
    if ( !*v6 )
    {
      v8 = v6;
      v9 = v6 + 2;
      do
      {
        if ( *v9 )
        {
          *v8 = *v9;
          *v9 = 0;
          v8 += 2;
        }
        ++v9;
      }
      while ( v9 < 33669086 );
    }
    v6 += 2;
    ++v7;
    result = 111;
  }
  while ( v7 < 111 );
  return result;
}


// 0x8128a44
int sub_8128A44()
{
  int v0; // r5
  int v1; // r4
  signed int v2; // r6
  int result; // r0
  int v4; // r0
  int v5; // r5
  signed int v6; // ST08_4

  v1 = 2 * *(v0 + 36);
  v2 = 8;
  result = *(v0 + 30);
  if ( *(v0 + 30) )
  {
    v4 = result - v1;
    if ( v4 < 8 )
      v2 = v4;
    v5 = 0;
    do
    {
      v6 = v2;
      result = render_graphicalText_8045F8C(
                 byte_873D9FC,
                 byte_201BF00[2 * v1++],
                 &byte_2017A00[dword_280 * v5],
                 dword_280 * v5 + 100679712);
      ++v5;
      --v2;
    }
    while ( v6 != 1 );
  }
  return result;
}


// 0x8128ab0
int __fastcall sub_8128AB0(int a1, int a2, int a3, int a4)
{
  int v4; // r5
  char *v5; // r7
  int result; // r0
  char *v7; // r6
  signed int v8; // r2
  int v9; // r4
  signed int v10; // r3
  int v11; // r0
  int v12; // r4
  signed int v13; // r3
  int v14; // r0
  int v15; // [sp+0h] [bp-18h]
  int v16; // [sp+0h] [bp-18h]

  v15 = *(v4 + 30) - 2 * *(v4 + 36);
  v5 = &unk_201C040;
  HalfwordFill(&unk_201C040, &byte_170, 29184, a4);
  result = *(v4 + 30);
  if ( *(v4 + 30) )
  {
    v7 = &unk_201C06E;
    result = 29185;
    v8 = 4;
    do
    {
      v9 = 0;
      v10 = 0;
      do
      {
        *&v5[v9] = result;
        v11 = result + 1;
        *&v7[v9] = v11;
        result = v11 + 1;
        v9 += 2;
        v10 += 2;
      }
      while ( v10 < 20 );
      if ( v15 == 1 )
        break;
      v16 = v15 - 1;
      v12 = v9 + 6;
      v13 = 0;
      do
      {
        *&v5[v12] = result;
        v14 = result + 1;
        *&v7[v12] = v14;
        result = v14 + 1;
        v12 += 2;
        v13 += 2;
      }
      while ( v13 < 20 );
      if ( v16 == 1 )
        break;
      v15 = v16 - 1;
      v5 += 92;
      v7 += 92;
      --v8;
    }
    while ( v8 );
  }
  return result;
}


// 0x8128b34
int sub_8128B34()
{
  return copyTiles();
}


// 0x8128b4c
unsigned int sub_8128B4C()
{
  int v0; // r5
  unsigned int result; // r0
  signed int v2; // r0

  result = *(v0 + 30);
  if ( *(v0 + 30) )
  {
    v2 = 0x100000;
    if ( *(v0 + 13) & 1 )
      v2 = 7864320;
    result = sub_811FAF4(v2 | (16 * *(v0 + 32) + 24), 0x20002u, *(v0 + 12), byte_8128678);
    *(v0 + 12) = result;
  }
  return result;
}


// 0x8128b98
void sub_8128B98()
{
  int v0; // r5
  int v1; // r10
  int v2; // r0

  if ( *(v0 + 30) && (*(v0 + 13) != *(v0 + 14) || *(v0 + 36) != *(v0 + 38) || *(v0 + 32) != *(v0 + 34)) )
  {
    v2 = byte_201BF00[2 * (2 * (*(v0 + 36) + *(v0 + 32)) + *(v0 + 13))];
    if ( v2 == 44 )
    {
      *(*(v1 + oToolkit_ChatboxPtr) + 76) = sub_803CE28(44);
      v2 = 44;
    }
    chatbox_803FD78(&unk_201C1B0, v2);
  }
}


// 0x8128bf0
int sub_8128BF0()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 30);
  if ( *(v0 + 30) )
  {
    result = byte_201BF00[2 * (2 * (*(v0 + 36) + *(v0 + 32)) + *(v0 + 13))];
    if ( result == 64 )
    {
      *(v0 + 2) = 8;
      result = engine_setScreeneffect(12, 16);
    }
  }
  return result;
}


// 0x8128c20
signed int sub_8128C20()
{
  int v0; // r5

  return sub_811FA98(14745619, 0x20002u, *(v0 + 30) - 2 * (*(v0 + 30) >> 1) + (*(v0 + 30) >> 1), *(v0 + 36));
}


// 0x8128cbc
int sub_8128CBC()
{
  int v0; // r5

  return (*(&off_8128CD0 + *(v0 + 1)))();
}


// 0x8128cd8
void __noreturn sub_8128CD8()
{
  int v0; // r5
  int v1; // r10
  int v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  _WORD *v14; // r0
  int v15; // r3
  unsigned int v16; // r0
  char v17; // r1

  SetEventFlagFromImmediate(1, 151);
  v2 = SetEventFlagFromImmediate(1, 173);
  sub_80017AA(v2, v3, v4, v5);
  sub_80017E0(v6, v7, v8, v9);
  sub_800183C(v10, v11, v12, v13);
  sub_80015FC(8);
  v14 = *(v1 + oToolkit_RenderInfoPtr);
  *v14 = 8000;
  v14[8] = 0;
  v14[9] = 0;
  v14[10] = 0;
  v14[11] = 0;
  v14[12] = 0;
  v14[13] = 0;
  sub_8128F04();
  sub_802B4D4(byte_201BB60, 36976, 100699648, v15);
  sub_8129104(byte_201BB60, 36960, 100699136);
  sub_8046664();
  sub_80465A0(byte_8128CB0);
  v16 = sub_802B2A0(byte_201BDB8);
  *(v0 + 30) = v16;
  if ( v16 )
    sub_802B51C(byte_201BB60, 37076);
  *(v0 + 12) = sub_8120CC8(0, &dword_8129180);
  *(v0 + 13) = v17;
  *(v0 + 15) = 0;
  *(v0 + 16) = -1;
  *(v0 + 16) = -1;
  if ( *(v0 + 30) )
    sub_802B358(byte_201BDB8, decomp_2013A00);
  sub_8128F10();
}


// 0x8128dcc
int sub_8128DCC()
{
  int v0; // r5

  (*(&off_8128DE8 + *(v0 + 2)))();
  sub_80465BC();
  return sub_80465F8();
}


// 0x8128df4
int sub_8128DF4()
{
  int v0; // r5
  int v1; // ST00_4
  char v2; // zf
  int v3; // r0

  if ( !*(v0 + 3) )
  {
    v1 = *byte_201BDB8;
    sub_811C2A8(*byte_201BDB8, 0);
    sub_811DC88(v1, 1);
    *(v0 + 3) = 1;
  }
  engine_isScreeneffectAnimating();
  if ( !v2 )
    *(v0 + 2) = 4;
  v3 = sub_8128FF0();
  return sub_812907C(v3);
}


// 0x8128e2c
int sub_8128E2C()
{
  int v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r0

  *(v0 + 38) = *(v0 + 36);
  *(v0 + 34) = *(v0 + 32);
  if ( sub_811F7F8(*(*(v1 + oToolkit_JoypadPtr) + 4), 5u, 0, 0) )
  {
    if ( *(v0 + 36) != *(v0 + 38) )
      sub_802B358(byte_201BDB8, decomp_2013A00);
    if ( *(v0 + 32) != *(v0 + 34) )
    {
      sub_802B438(&unk_201BA00, byte_201BDB8);
      sub_81290A4(byte_201BDB8);
    }
  }
  else
  {
    sub_811F7EC();
    if ( !v2 )
    {
      engine_setScreeneffect(12, 16);
      *(v0 + 2) = 8;
    }
  }
  v3 = sub_8128FF0();
  return sub_812907C(v3);
}


// 0x8128ed4
int sub_8128ED4()
{
  _BYTE *v0; // r5
  int v1; // r0
  int result; // r0
  char v3; // zf

  v1 = sub_8128FF0();
  sub_812907C(v1);
  result = engine_isScreeneffectAnimating();
  if ( !v3 )
  {
    CopyWords(byte_2037780, v0, 0x80u);
    *v0 = 20;
    v0[1] = 0;
    v0[2] = 0;
    result = chatbox_8040818();
  }
  return result;
}


// 0x8128f04
void sub_8128F04()
{
  decompAndCopyData_8000B30(byte_8128F38);
}


// 0x8128f10
int __noreturn sub_8128F10()
{
  copyTiles();
  return copyTiles();
}


// 0x8128ff0
int sub_8128FF0()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 30);
  if ( *(v0 + 30) )
    result = sub_8129018(2, 18, 32, 12);
  return result;
}


// 0x8129018
int __fastcall sub_8129018(int a1, int a2, int a3, int a4)
{
  int *v4; // r4
  int v5; // r5
  unsigned int v6; // r7
  int v7; // r0
  int v8; // r2
  unsigned int v9; // ST14_4
  int v10; // r0
  int v11; // r1
  int result; // r0
  int v13; // [sp+8h] [bp-28h]

  v13 = a4;
  v7 = a1 << 16;
  if ( a3 )
    v8 = *(v5 + a3);
  else
    v8 = 0;
  v9 = *(v5 + a4);
  v10 = sub_811FAF4(v7 | (a2 + 16 * v8), v6, v9 & 0xF, v4);
  v11 = (v9 >> 4) - 1;
  if ( v9 >> 4 == 1 )
    *(v5 + v13) = sub_8120CC8(v10, &dword_8129180);
  result = *(v5 + v13) & 0xF | 16 * v11;
  *(v5 + v13) = result;
  return result;
}


// 0x812907c
signed int sub_812907C()
{
  int v0; // r5

  return sub_811FA98(6422540, 0x10002u, *(v0 + 30), *(v0 + 36));
}


// 0x81290a4
void __fastcall __noreturn sub_81290A4(int a1)
{
  int v1; // r5
  int v2; // r1

  v2 = *(a1 + 2 * (*(v1 + 36) + *(v1 + 32)));
  if ( v2 == 0xFFFF )
  {
    sub_80018D0(16, 12, 3, 0);
  }
  else
  {
    render_graphicalText_8045F8C(&unk_201C2F8, v2, byte_201B200, 100710400);
    copyTiles();
  }
}


// 0x8129104
int __fastcall sub_8129104(int result, __int16 a2)
{
  _WORD *v2; // r7
  signed int v3; // r5
  signed int v4; // r6
  _WORD *v5; // [sp-4h] [bp-1Ch]

  v2 = (result + 472);
  v3 = 0;
  do
  {
    v4 = 0;
    v5 = v2;
    do
    {
      *v2 = a2;
      ++v2;
      ++v4;
    }
    while ( v4 < 3 );
    v2 = v5 + 15;
    ++v3;
  }
  while ( v3 < 3 );
  return result;
}


// 0x81291d8
int sub_81291D8()
{
  return sub_812A76C();
}


// 0x81291e8
int sub_81291E8()
{
  int v0; // r5

  return (*(off_81291FC + *(v0 + 1)))();
}


// 0x8129248
int __fastcall sub_8129248(int a1, int a2, int a3, int a4)
{
  _BYTE *v4; // r5
  int v5; // r10
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  _WORD *v14; // r0
  char v15; // r1
  int result; // r0

  sub_80017AA(a1, a2, a3, a4);
  sub_80017E0(v6, v7, v8, v9);
  sub_800183C(v10, v11, v12, v13);
  sub_80015FC(16);
  sub_8046664();
  v14 = *(v5 + oToolkit_RenderInfoPtr);
  *v14 = 8000;
  v14[8] = 0;
  v14[9] = 0;
  v14[10] = 0;
  v14[11] = 0;
  v14[12] = 0;
  v14[13] = 0;
  sub_812AF18();
  v4[1] = 4;
  v4[2] = 0;
  byte_200BC3C = 60;
  v4[23] = sub_8120CC8(0, &dword_8129180);
  v4[24] = v15;
  result = 0;
  v4[27] = 0;
  return result;
}


// 0x81292a8
int sub_81292A8()
{
  int v0; // r5

  return (*(&off_81292BC + *(v0 + 2)))();
}


// 0x81292d8
int sub_81292D8()
{
  int v0; // r5
  int result; // r0
  char v2; // zf
  int v3; // r1
  int v4; // r2
  int v5; // r3

  sub_812B504();
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    sub_8046664();
    *(v0 + 2) = 4;
    sub_803EBAC(4, v3, v4, v5);
    sub_80465A0(byte_8129158);
    sub_812AFB0();
  }
  return result;
}


// 0x812933c
int sub_812933C()
{
  _BYTE *v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r4
  int v4; // r0
  signed int v5; // r4
  char v6; // r0

  engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    v3 = v0[13];
    v4 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 2), 2, 1, v3);
    if ( v3 == v4 )
    {
      sub_811F7EC();
      if ( v2 )
      {
        sub_811F7EC();
        if ( !v2 )
        {
          sound_play(131);
          sub_811FB64(64);
          engine_setScreeneffect(12, 16);
        }
      }
      else
      {
        sound_play(129);
        if ( v0[13] )
        {
          v0[2] = 8;
          v0[33] = 0;
        }
        else
        {
          eStruct200BC30_setJumpOffset00(0);
          v0[1] = 8;
          v0[2] = 0;
          v0[3] = 0;
          v0[14] = 0;
        }
        engine_setScreeneffect(12, 16);
      }
    }
    else
    {
      v0[13] = v4;
      v5 = *(&dword_81293FC + v4);
      v6 = sub_8006DEC();
      if ( v6 & 1 && v5 == 90 )
      {
        v5 = 95;
      }
      else if ( v6 & 2 && v5 == 91 )
      {
        v5 = 96;
      }
      sub_8132280(v5);
    }
  }
  sub_80465BC();
  sub_80465F8();
  return sub_812B29C(13);
}


// 0x8129400
int sub_8129400()
{
  int v0; // r5
  char v1; // zf
  int v2; // r1
  int v3; // r2
  int v4; // r3

  engine_isScreeneffectAnimating();
  if ( !v1 )
  {
    sub_8046664();
    *(v0 + 13) = 0;
    *(v0 + 2) = 12;
    sub_803EBAC(12, v2, v3, v4);
    sub_80465A0(byte_8129168);
    sub_812AFB0();
  }
  sub_80465BC();
  sub_80465F8();
  return sub_812B29C(13);
}


// 0x8129454
int sub_8129454()
{
  _BYTE *v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r0
  int v4; // r4
  int v5; // r0
  int v6; // r4
  int v7; // r0
  int v8; // r0
  signed int v9; // r0
  char v10; // r0

  engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    if ( v0[13] == 2 || (v3 = *(*(v1 + oToolkit_JoypadPtr) + 2), v4 = v0[13], sub_811FA0C(), v4 == v5) )
    {
      v6 = v0[13] >> 1;
      v7 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 2), 2, 1, v6);
      if ( v6 == v7 )
      {
        sub_811F7EC();
        if ( v2 )
        {
          sub_811F7EC();
          if ( !v2 )
          {
            sound_play(131);
            v0[2] = 24;
            engine_setScreeneffect(12, 16);
          }
        }
        else
        {
          sound_play(129);
          v9 = v0[13];
          if ( v9 <= 1 )
          {
            sub_813D960(v9);
            v10 = 8;
            if ( !v0[13] )
              v10 = 4;
            eStruct200BC30_setJumpOffset00(v10);
            v0[1] = 8;
            v0[2] = 0;
            v0[3] = 0;
            engine_setScreeneffect(12, 16);
          }
          else
          {
            v0[2] = 20;
            engine_setScreeneffect(12, 16);
          }
        }
      }
      else
      {
        v8 = 2 * v7;
        v0[13] = v8;
        if ( !v8 )
          v0[13] = v0[33];
        sub_8132280(*(&dword_8129528 + v8));
      }
    }
    else
    {
      v0[13] = v5;
      v0[33] = v5;
    }
  }
  sub_80465BC();
  sub_80465F8();
  return sub_812B288(13);
}


// 0x812952c
int sub_812952C()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    *(v0 + 2) = 12;
    result = engine_setScreeneffect(8, 16);
  }
  return result;
}


// 0x812954c
int sub_812954C()
{
  int v0; // r5
  int result; // r0
  char v2; // zf
  int v3; // r1
  int v4; // r2
  int v5; // r3

  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    chatbox_8040818();
    *(v0 + 2) = 8;
    result = sub_8048F9C(1, v3, v4, v5);
  }
  return result;
}


// 0x812956c
int sub_812956C()
{
  int v0; // r5
  int result; // r0
  char v2; // zf
  int v3; // r0

  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    *(v0 + 2) = 0;
    *(v0 + 13) = 1;
    result = eStruct200BC30_getJumpOffset00();
    if ( result )
    {
      v3 = sub_8149644(result);
      result = sub_8149568(v3);
    }
  }
  return result;
}


// 0x8129598
int sub_8129598()
{
  int v0; // r5

  if ( *(v0 + 2) )
    sub_812B504();
  return (*(&off_81295B4 + *(v0 + 2)))();
}


// 0x81295d8
int sub_81295D8()
{
  _BYTE *v0; // r5
  int result; // r0
  char v2; // zf
  int v3; // r0
  int v4; // r2
  int v5; // r3
  int v6; // r1

  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    v3 = eStruct200BC30_getJumpOffset00();
    if ( v3 <= 0 || (v3 = sub_8049D42(), !v2) )
      sub_812AFC8(v3);
    v6 = v0[27];
    if ( v6 & 4 )
    {
      v0[27] &= 0xFBu;
      v0[1] = 4;
      result = 0;
      v0[2] = 0;
    }
    else
    {
      sub_8048F9C(1, v6, v4, v5);
      result = 4;
      v0[27] |= 4u;
    }
  }
  return result;
}


// 0x8129658
int sub_8129658()
{
  int v0; // r5

  (*(&off_8129670 + *(v0 + 3)))();
  return sub_812B25C(14);
}


// 0x812968c
int sub_812968C()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    chatbox_8045F2C(64);
    result = 4;
    *(v0 + 3) = 4;
  }
  return result;
}


// 0x81296a0
int sub_81296A0()
{
  int v0; // r5
  char v1; // zf
  int result; // r0

  chatbox_8045F3C(8);
  if ( v1 )
  {
    result = chatbox_8045F3C(32);
    if ( !v1 )
    {
      result = chatbox_8045F3C(&byte_110);
      if ( !v1 )
      {
        *(v0 + 2) = 32;
        result = engine_setScreeneffect(12, 16);
      }
    }
  }
  else
  {
    *(v0 + 3) = 8;
    result = sub_812B3FC();
  }
  return result;
}


// 0x81296d8
void sub_81296D8()
{
  _BYTE *v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r0
  char v4; // zf

  v2 = v0[14];
  v3 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 2), 3, 1, v2);
  if ( v2 == v3 )
  {
    sub_811F7EC();
    if ( v4 )
    {
      sub_811F7EC();
      if ( !v4 )
      {
        sound_play(131);
        v0[3] = 24;
        engine_setScreeneffect(12, 16);
      }
    }
    else
    {
      sound_play(129);
      v0[3] = 12;
      v0[27] |= 1u;
      v0[28] = 0;
      v0[30] = 0;
    }
  }
  else
  {
    v0[14] = v3;
    sub_812B3FC();
  }
}


// 0x8129738
int sub_8129738()
{
  _BYTE *v0; // r5
  int result; // r0

  result = sub_812B318(3);
  if ( !result )
  {
    v0[29] = 3;
    v0[2] = sub_81325E4(v0[14]);
    result = 0;
    v0[3] = 0;
  }
  return result;
}


// 0x8129758
int sub_8129758()
{
  int v0; // r5
  int result; // r0
  int v2; // r2
  int v3; // r4
  int v4; // r1

  result = sub_812B318(*(v0 + 29));
  v3 = v2;
  if ( v4 )
    result = sub_812B218(result);
  if ( v3 == 3 )
  {
    *(v0 + 3) = 20;
    result = sub_811A610(0, 0);
  }
  return result;
}


// 0x812977c
signed int sub_812977C()
{
  int v0; // r5
  signed int v1; // r6
  signed int result; // r0
  signed int v3; // r6

  v1 = 0;
  while ( 1 )
  {
    result = *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3);
    if ( *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3) )
      break;
    v1 += 4;
    if ( v1 >= 12 )
    {
      v3 = 0;
      do
      {
        *(&unk_20251A0 + v3) &= 0x7FFFFFFFu;
        v3 += 4;
      }
      while ( v3 < 12 );
      *(v0 + 3) = 8;
      sub_812B3FC();
      result = 1;
      *(v0 + 27) &= 0xFEu;
      return result;
    }
  }
  return result;
}


// 0x81297c0
int sub_81297C0()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    *(v0 + 1) = 4;
    result = 0;
    *(v0 + 2) = 0;
  }
  return result;
}


// 0x81297dc
int sub_81297DC()
{
  int v0; // r5

  (*(&off_81297F4 + *(v0 + 3)))();
  return sub_812B25C(18);
}


// 0x8129808
int sub_8129808()
{
  int v0; // r5
  int result; // r0
  int v2; // r2
  int v3; // r4
  int v4; // r1

  result = sub_812B318(*(v0 + 29));
  v3 = v2;
  if ( v4 )
    result = sub_812B218(result);
  if ( v3 == 3 )
  {
    *(v0 + 3) = 4;
    result = sub_811A610(1, 0);
  }
  return result;
}


// 0x812982c
signed int sub_812982C()
{
  int v0; // r5
  signed int v1; // r6
  signed int result; // r0
  signed int v3; // r6

  v1 = 0;
  while ( 1 )
  {
    result = *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3);
    if ( *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3) )
      break;
    v1 += 4;
    if ( v1 >= 12 )
    {
      v3 = 0;
      do
      {
        *(&unk_20251A0 + v3) &= 0x7FFFFFFFu;
        v3 += 4;
      }
      while ( v3 < 12 );
      *(v0 + 3) = 8;
      sub_812B39C();
      result = 1;
      *(v0 + 27) &= 0xFEu;
      return result;
    }
  }
  return result;
}


// 0x8129870
void sub_8129870()
{
  _BYTE *v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r0
  char v4; // zf

  v2 = v0[18];
  v3 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 2), 3, 1, v2);
  if ( v2 == v3 )
  {
    sub_811F7EC();
    if ( v4 )
    {
      sub_811F7EC();
      if ( !v4 )
      {
        sound_play(131);
        v0[3] = 16;
        v0[28] = 0;
        v0[30] = 0;
        v0[27] |= 1u;
      }
    }
    else
    {
      sound_play(129);
      v0[3] = 12;
      v0[28] = 0;
      v0[30] = 0;
      v0[27] |= 1u;
    }
  }
  else
  {
    v0[18] = v3;
    sub_812B39C();
  }
}


// 0x81298d4
int sub_81298D4()
{
  _BYTE *v0; // r5
  int result; // r0

  result = sub_812B318(3);
  if ( !result )
  {
    v0[29] = 3;
    v0[32] = 2;
    v0[2] = sub_81325F4(v0[18]);
    result = 0;
    v0[3] = 0;
  }
  return result;
}


// 0x81298f8
int sub_81298F8()
{
  _BYTE *v0; // r5
  int result; // r0

  result = sub_812B318(3);
  if ( !result )
  {
    v0[29] = 3;
    v0[2] = 4;
    v0[3] = 16;
    result = 0;
    v0[18] = 0;
    v0[19] = 0;
  }
  return result;
}


// 0x8129918
int sub_8129918()
{
  int v0; // r5

  (*(&off_8129930 + *(v0 + 3)))();
  return sub_812B25C(18);
}


// 0x8129948
int sub_8129948()
{
  int v0; // r5
  int result; // r0
  int v2; // r2
  int v3; // r4
  int v4; // r1

  result = sub_812B318(*(v0 + 29));
  v3 = v2;
  if ( v4 )
    result = sub_812B218(result);
  if ( v3 == 3 )
  {
    *(v0 + 3) = 4;
    result = sub_811A610(3, 0);
  }
  return result;
}


// 0x812996c
signed int sub_812996C()
{
  int v0; // r5
  signed int v1; // r6
  signed int result; // r0
  signed int v3; // r6

  v1 = 0;
  while ( 1 )
  {
    result = *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3);
    if ( *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3) )
      break;
    v1 += 4;
    if ( v1 >= 12 )
    {
      v3 = 0;
      do
      {
        *(&unk_20251A0 + v3) &= 0x7FFFFFFFu;
        v3 += 4;
      }
      while ( v3 < 12 );
      *(v0 + 3) = 8;
      sub_812B3CC();
      result = 1;
      *(v0 + 27) &= 0xFEu;
      return result;
    }
  }
  return result;
}


// 0x81299b0
void sub_81299B0()
{
  _BYTE *v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r0
  char v4; // zf
  int v5; // r0

  v2 = v0[18];
  v3 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 2), 3, 1, v2);
  if ( v2 == v3 )
  {
    sub_811F7EC();
    if ( v4 )
    {
      sub_811F7EC();
      if ( !v4 )
      {
        sound_play(131);
        v0[3] = 12;
        v0[28] = 0;
        v0[30] = 0;
        v0[27] |= 1u;
      }
    }
    else
    {
      sound_play(129);
      v5 = v0[18];
      if ( v5 == 1 && (v5 = TestEventFlagFromImmediate(0, 242), v4) )
        sub_8132280(5);
      else
        sub_812B414(v5);
    }
  }
  else
  {
    v0[18] = v3;
    sub_812B3CC();
  }
}


// 0x8129a20
int sub_8129A20()
{
  return sub_81298F8();
}


// 0x8129a28
int sub_8129A28()
{
  int v0; // r5
  int result; // r0
  int v2; // r2
  int v3; // r4
  int v4; // r1

  result = sub_812B318(*(v0 + 29));
  v3 = v2;
  if ( v4 )
    result = sub_812B218(result);
  if ( v3 == 3 )
  {
    *(v0 + 3) = 20;
    sub_811A610(3, 0);
    result = engine_setScreeneffect(8, 16);
  }
  return result;
}


// 0x8129a54
signed int sub_8129A54()
{
  int v0; // r5
  signed int v1; // r6
  signed int result; // r0
  signed int v3; // r6

  v1 = 0;
  while ( 1 )
  {
    result = *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3);
    if ( *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3) )
      break;
    v1 += 4;
    if ( v1 >= 12 )
    {
      v3 = 0;
      do
      {
        *(&unk_20251A0 + v3) &= 0x7FFFFFFFu;
        v3 += 4;
      }
      while ( v3 < 12 );
      *(v0 + 3) = 8;
      sub_812B3FC();
      result = 1;
      *(v0 + 27) &= 0xFEu;
      return result;
    }
  }
  return result;
}


// 0x8129a98
int sub_8129A98()
{
  int v0; // r5

  (*(&off_8129AB0 + *(v0 + 3)))();
  return sub_812B25C(18);
}


// 0x8129ac8
int sub_8129AC8()
{
  int v0; // r5
  int result; // r0
  int v2; // r2
  int v3; // r1

  result = sub_812B318(*(v0 + 29));
  if ( v3 )
  {
    if ( v2 == 2 )
    {
      *(v0 + 3) = 4;
      result = sub_811A610(2, 0);
    }
    else
    {
      result = sub_812B218(result);
    }
  }
  return result;
}


// 0x8129af0
signed int sub_8129AF0()
{
  int v0; // r5
  signed int v1; // r6
  signed int result; // r0
  signed int v3; // r6

  v1 = 0;
  while ( 1 )
  {
    result = *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3);
    if ( *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3) )
      break;
    v1 += 4;
    if ( v1 >= 8 )
    {
      v3 = 0;
      do
      {
        *(&unk_20251A0 + v3) &= 0x7FFFFFFFu;
        v3 += 4;
      }
      while ( v3 < 8 );
      *(v0 + 3) = 8;
      sub_812B3B4();
      result = 1;
      *(v0 + 27) &= 0xFEu;
      return result;
    }
  }
  return result;
}


// 0x8129b34
void sub_8129B34()
{
  _BYTE *v0; // r5
  int v1; // r10
  char v2; // zf
  int v3; // r4
  int v4; // r0
  int v5; // r0

  engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    v3 = v0[18];
    v4 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 2), 2, 1, v3);
    if ( v3 == v4 )
    {
      sub_811F7EC();
      if ( v2 )
      {
        sub_811F7EC();
        if ( !v2 )
        {
          sound_play(131);
          v0[3] = 12;
          v0[28] = 0;
          v0[30] = 0;
          v0[27] |= 1u;
        }
      }
      else
      {
        v5 = sound_play(129);
        sub_812B414(v5);
      }
    }
    else
    {
      v0[18] = v4;
      sub_812B3B4();
    }
  }
}


// 0x8129b90
int sub_8129B90()
{
  _BYTE *v0; // r5
  int result; // r0

  result = sub_812B318(2);
  if ( !result )
  {
    v0[29] = 3;
    v0[2] = 4;
    v0[3] = 16;
    result = 0;
    v0[18] = 0;
    v0[19] = 0;
  }
  return result;
}


// 0x8129bb0
int __fastcall sub_8129BB0(int a1)
{
  int v1; // r5
  signed int v2; // r4
  unsigned __int8 v3; // vf

  v2 = 2;
  do
  {
    a1 = sub_812B218(a1);
    v3 = __OFSUB__(v2--, 1);
  }
  while ( !(((v2 < 0) ^ v3) | (v2 == 0)) );
  *(v1 + 3) = 20;
  *(v1 + 27) |= 0x10u;
  sub_811A610(2, 0);
  return engine_setScreeneffect(8, 16);
}


// 0x8129bdc
signed int sub_8129BDC()
{
  int v0; // r5
  signed int v1; // r6
  signed int result; // r0
  signed int v3; // r6
  int v4; // r0

  v1 = 0;
  while ( 1 )
  {
    result = *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3);
    if ( *(dword_4 + (*(&unk_20251A0 + v1) & 0x7FFFFFFF) + 3) )
      break;
    v1 += 4;
    if ( v1 >= 8 )
    {
      v3 = 0;
      do
      {
        *(&unk_20251A0 + v3) &= 0x7FFFFFFFu;
        v3 += 4;
      }
      while ( v3 < 8 );
      *(v0 + 3) = 8;
      v4 = engine_setScreeneffect(8, 16);
      sub_812B3B4(v4);
      result = 1;
      *(v0 + 27) &= 0xFEu;
      return result;
    }
  }
  return result;
}


// 0x8129c28
int sub_8129C28()
{
  int v0; // r5

  (*(&off_8129C40 + *(v0 + 3)))();
  return sub_812B25C(19);
}


// 0x8129c74
int sub_8129C74()
{
  _BYTE *v0; // r5
  int v1; // r1
  int v2; // r2
  int result; // r0
  int v4; // r0

  sub_812B318(v0[29]);
  result = v0[32];
  if ( result != 2 || v1 )
  {
    if ( v2 == result )
    {
      v0[3] = 4;
      v4 = 4;
      if ( v0[2] != 20 )
      {
        v4 = 5;
        if ( v0[2] != 24 )
          v4 = 7;
      }
      result = sub_811A610(v4, 0);
    }
    else
    {
      result = sub_812B218(result);
    }
  }
  return result;
}


// 0x8129cb4
signed int sub_8129CB4()
{
  _BYTE *v0; // r5
  int v1; // r7
  int v2; // r6
  signed int result; // r0
  int v4; // r6

  v1 = 4 * v0[32];
  v2 = 0;
  while ( 1 )
  {
    result = *(dword_4 + (*(&unk_20251A0 + v2) & 0x7FFFFFFF) + 3);
    if ( *(dword_4 + (*(&unk_20251A0 + v2) & 0x7FFFFFFF) + 3) )
      break;
    v2 += 4;
    if ( v2 >= v1 )
    {
      v4 = 0;
      do
      {
        *(&unk_20251A0 + v4) &= 0x7FFFFFFFu;
        v4 += 4;
      }
      while ( v4 < v1 );
      v0[3] = 8;
      sub_812B3E4();
      result = 1;
      v0[27] &= 0xFEu;
      return result;
    }
  }
  return result;
}


// 0x8129d00
void sub_8129D00()
{
  _BYTE *v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r0
  char v4; // zf
  int v5; // r0

  v2 = v0[19];
  v3 = sub_811FA22(*(*(v1 + oToolkit_JoypadPtr) + 2), v0[32], 1, v2);
  if ( v2 == v3 )
  {
    sub_811F7EC();
    if ( v4 )
    {
      sub_811F7EC();
      if ( !v4 )
      {
        sound_play(131);
        v0[3] = 12;
        v0[28] = 0;
        v0[30] = 0;
        v0[27] |= 1u;
      }
    }
    else
    {
      v5 = sound_play(129);
      sub_812B414(v5);
    }
  }
  else
  {
    v0[19] = v3;
    sub_812B3E4();
  }
}


// 0x8129d58
int sub_8129D58()
{
  _BYTE *v0; // r5
  int result; // r0

  result = sub_812B318(v0[32]);
  if ( !result )
  {
    v0[29] = 3;
    v0[2] = 8;
    v0[3] = 0;
    result = 0;
    v0[19] = 0;
  }
  return result;
}


// 0x8129d78
int __fastcall sub_8129D78(int a1)
{
  _BYTE *v1; // r5
  int v2; // r4
  unsigned __int8 v3; // vf
  char v4; // r1
  int v5; // r0
  int v6; // r0

  v2 = v1[32];
  do
  {
    a1 = sub_812B218(a1);
    v3 = __OFSUB__(v2--, 1);
  }
  while ( !(((v2 < 0) ^ v3) | (v2 == 0)) );
  v4 = 20;
  v5 = v1[3];
  if ( v5 == 44 )
  {
    v4 = 48;
  }
  else if ( v5 == 32 )
  {
    v4 = 36;
  }
  v1[3] = v4;
  v6 = 4;
  if ( v1[2] != 20 )
  {
    v6 = 5;
    if ( v1[2] != 24 )
      v6 = 7;
  }
  sub_811A610(v6, 0);
  v1[27] |= 0x10u;
  return engine_setScreeneffect(8, 16);
}


// 0x8129dc4
int sub_8129DC4()
{
  _BYTE *v0; // r5
  int v1; // r7
  int v2; // r6
  int result; // r0
  int v4; // r6

  sub_812B5AC();
  v1 = 4 * v0[32];
  v2 = 0;
  while ( 1 )
  {
    result = *(dword_4 + (*(&unk_20251A0 + v2) & 0x7FFFFFFF) + 3);
    if ( *(dword_4 + (*(&unk_20251A0 + v2) & 0x7FFFFFFF) + 3) )
      break;
    v2 += 4;
    if ( v2 >= v1 )
    {
      v4 = 0;
      do
      {
        *(&unk_20251A0 + v4) &= 0x7FFFFFFFu;
        v4 += 4;
      }
      while ( v4 < v1 );
      if ( v0[3] == 48 )
      {
        v0[3] = 40;
        sub_812B3E4();
        v0[27] &= 0xFEu;
      }
      else
      {
        v0[3] = 24;
      }
      return engine_setScreeneffect(8, 16);
    }
  }
  return result;
}


// 0x8129e28
int sub_8129E28()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    sub_8132280(byte_8129E48[*(v0 + 34) & 0xFF]);
    result = 28;
    *(v0 + 3) = 28;
  }
  return result;
}


// 0x8129e54
int sub_8129E54()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = chatbox_8045F3C(8);
  if ( !v2 )
  {
    result = *(v0 + 34) & 0xFF;
    if ( result != 9 )
    {
      *(v0 + 3) = 8;
      sub_812B3E4();
      result = 1;
      *(v0 + 27) &= 0xFEu;
    }
  }
  return result;
}


// 0x8129e7c
int sub_8129E7C()
{
  int v0; // r5
  int v1; // r7
  int v2; // r6
  int result; // r0
  int v4; // r6

  sub_812B5AC();
  v1 = 4 * *(v0 + 32);
  v2 = 0;
  while ( 1 )
  {
    result = *(dword_4 + (*(&unk_20251A0 + v2) & 0x7FFFFFFF) + 3);
    if ( *(dword_4 + (*(&unk_20251A0 + v2) & 0x7FFFFFFF) + 3) )
      break;
    v2 += 4;
    if ( v2 >= v1 )
    {
      v4 = 0;
      do
      {
        *(&unk_20251A0 + v4) &= 0x7FFFFFFFu;
        v4 += 4;
      }
      while ( v4 < v1 );
      *(v0 + 3) = 40;
      sub_812B3FC();
      return engine_setScreeneffect(8, 16);
    }
  }
  return result;
}


// 0x8129ecc
int sub_8129ECC()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    *(v0 + 3) = 8;
    result = 1;
    *(v0 + 27) &= 0xFEu;
  }
  return result;
}


// 0x8129ee4
int sub_8129EE4()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  sub_812B504();
  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    *(v0 + 1) = 4;
    result = 0;
    *(v0 + 2) = 0;
  }
  return result;
}


// 0x8129f04
int sub_8129F04()
{
  int v0; // r0
  int v1; // r0

  v0 = eStruct200BC30_getJumpOffset00();
  v1 = (*(&off_8129F1C + v0))();
  return sub_812B26C(v1);
}


// 0x8129f28
int sub_8129F28()
{
  int v0; // r5
  int v1; // r0

  v1 = (*(&off_8129F40 + *(v0 + 2)))();
  return sub_812B504(v1);
}


// 0x8129f48
void __noreturn sub_8129F48()
{
  start_8000288();
}


// 0x8129f88
void sub_8129F88()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf

  v1 = sub_803EAE4();
  if ( v1 == 4 )
  {
    *(v0 + 2) = 0;
  }
  else if ( v1 == 2 )
  {
    *(v0 + 1) = 16;
    *(v0 + 2) = 0;
    *(v0 + 40) = 0;
    sub_8132398();
    return;
  }
  sub_811F7EC();
  if ( !v2 )
  {
    sound_play(131);
    *(v0 + 1) = 8;
    if ( *(v0 + 14) )
      *(v0 + 2) = sub_81325E4(*(v0 + 14));
    else
      *(v0 + 2) = sub_81325F4(*(v0 + 18));
    *(v0 + 3) = 4;
  }
}


// 0x8129fe0
int sub_8129FE0()
{
  int v0; // r5

  return (*(&off_8129FF4 + *(v0 + 2)))();
}


// 0x812a008
void __fastcall __noreturn sub_812A008(int a1)
{
  sub_812B504(a1);
  start_800027C();
}


// 0x812a028
int __fastcall sub_812A028(int a1)
{
  int v1; // r5
  int v2; // r0
  int result; // r0
  char v4; // zf

  sub_812B504(a1);
  v2 = *(v1 + 40) - 1;
  *(v1 + 40) = v2;
  if ( !v2 )
  {
    *(v1 + 1) = 68;
    *(v1 + 2) = 0;
    *(v1 + 16) = 5;
    v2 = sub_8132280(94);
  }
  result = sub_813D648(v2);
  if ( v4 )
  {
    *(v1 + 1) = 12;
    result = 8;
    *(v1 + 2) = 8;
  }
  return result;
}


// 0x812a058
int __fastcall sub_812A058(int a1)
{
  int v1; // r5
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int result; // r0

  v2 = sub_812B504(a1);
  sub_8146588(v2);
  v3 = eStruct200BC30_getJumpOffset00();
  if ( v3 != 8 )
  {
    sub_8049D98();
    sub_8049DA0(&unk_201FD20, &unk_201FD40);
    sub_814695C(&unk_201FD20);
    v4 = sub_8049D7C();
    v3 = sub_81469BC(&unk_201FD40, v4);
  }
  if ( sub_81465BC(v3) )
  {
    engine_setScreeneffect(12, 16);
    if ( eStruct200BC30_getJumpOffset00() == 8 )
      *(v1 + 2) = 16;
    else
      *(v1 + 2) = 12;
    result = 0;
    *(v1 + 3) = 0;
    *(v1 + 36) = 0;
  }
  else
  {
    *(v1 + 1) = 52;
    result = 0;
    *(v1 + 2) = 0;
    *(v1 + 3) = 0;
  }
  return result;
}


// 0x812a0cc
int sub_812A0CC()
{
  int v0; // r5

  return (*(&off_812A0E0 + *(v0 + 36)))();
}


// 0x812a0e8
int __fastcall sub_812A0E8(int a1)
{
  int v1; // r5
  _BYTE **v2; // r10
  int result; // r0
  char v4; // zf
  int v5; // r0
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3

  sub_812B504(a1);
  result = engine_isScreeneffectAnimating();
  if ( !v4 )
  {
    sub_813D90C(1);
    sub_803DCE8(0xCu, 3, 2u, 0);
    v5 = sub_803DCD8(1112683845, 0x2000, 0);
    v6 = sub_81322E8(v5);
    sub_803EF60(v6);
    sub_8048F9C(0, v7, v8, v9);
    **v2 = 40;
    result = 4;
    *(v1 + 36) = 4;
  }
  return result;
}


// 0x812a134
int sub_812A134()
{
  signed int v0; // r0

  v0 = cb_8048FD4();
  return sub_812A1D4(v0);
}


// 0x812a14c
int sub_812A14C()
{
  int v0; // r5

  return (*(&off_812A160 + *(v0 + 36)))();
}


// 0x812a168
int __fastcall sub_812A168(int a1)
{
  int result; // r0
  char v2; // zf
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r0

  sub_812B504(a1);
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    sub_813D90C(1);
    sub_803DCE8(0xCu, 3, 2u, 0);
    v3 = sub_803DCD8(1112683845, 0x2000, 0);
    v4 = sub_81322E8(v3);
    v5 = sub_8132664(v4);
    v6 = sub_8132670(v5);
    byte_2023BC0 = v6;
    sub_803EF60(v6);
    sub_81326D4(0);
  }
  return result;
}


// 0x812a1c4
int __fastcall sub_812A1C4(int a1)
{
  int v1; // r0

  v1 = sub_812A1D4(a1);
  return sub_8132764(v1);
}


// 0x812a1d4
int sub_812A1D4()
{
  int v0; // r5
  int v1; // r0
  int v2; // r1
  int result; // r0
  int v4; // r0
  int v5; // r0

  v1 = sub_803C620();
  if ( v2 || !v1 )
  {
    v5 = eStruct200BC30_getJumpOffset00();
    result = (*(&dword_812A214 + v5))();
  }
  else if ( v1 == 2 )
  {
    v4 = sub_813D978(2);
    result = sub_812B590(v4);
  }
  else
  {
    sub_8132280(48);
    *(v0 + 1) = 72;
    result = 0;
    *(v0 + 2) = 0;
  }
  return result;
}


// 0x812a224
int sub_812A224()
{
  int v0; // r5

  return (*(&off_812A238 + *(v0 + 3)))();
}


// 0x812a240
int sub_812A240()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int result; // r0

  v1 = sub_813D90C(1);
  sub_8147350(v1);
  sub_803DCE8(0xCu, 3, 2u, 0);
  v2 = sub_803DCD8(1112683845, 0x2000, 0);
  v3 = sub_81322E8(v2);
  sub_803EF60(v3);
  *(v0 + 3) = 4;
  result = 0;
  *(v0 + 12) = 0;
  return result;
}


// 0x812a27c
int sub_812A27C()
{
  int v0; // r5
  int v1; // r0

  v1 = sub_812B574();
  return (*(&off_812A294 + *(v0 + 12)))(v1);
}


// 0x812a2b4
void sub_812A2B4()
{
  int v0; // r5
  char v1; // zf
  int v2; // r0

  sub_803CB18();
  if ( v1 )
  {
    engine_isScreeneffectAnimating();
    if ( !v1 )
    {
      sub_811F7EC();
      if ( !v1 )
      {
        v2 = sound_play(131);
        sub_813D978(v2);
        *(v0 + 12) = 20;
        engine_setScreeneffect(12, 16);
      }
    }
  }
  else
  {
    *(v0 + 12) = 4;
  }
}


// 0x812a2ec
int sub_812A2EC()
{
  int v0; // r5
  int result; // r0
  int v2; // r6
  int v3; // r0
  int v4; // r7

  result = sub_81468BC();
  if ( result >= 2 )
  {
    sub_8049D98();
    v2 = sub_81468C8(1);
    v3 = sub_81468E0(1);
    v4 = v3;
    sub_8049DC4(__PAIR__(&unk_201FD60, v2), __PAIR__(&unk_201FD80, v3));
    word_2023BB0 = *sub_8146724(v4);
    byte_2023BC8 = sub_8146738(v4);
    sub_8132280(46);
    result = 8;
    *(v0 + 12) = 8;
  }
  return result;
}


// 0x812a350
int __fastcall sub_812A350(int a1)
{
  int v1; // r5
  int v2; // r0
  char v3; // zf
  signed int v4; // r4
  int result; // r0

  v2 = sub_813D60C(a1);
  if ( v3 || sub_81468BC(v2) < 2 )
  {
    v4 = 41;
    if ( eStruct200BC30_getRef()[14] != 4 )
      v4 = 47;
    sub_8132280(v4);
    sub_803CB00(4);
    *(v1 + 12) = 24;
    result = sub_813D978(24);
  }
  else
  {
    result = chatbox_8045F3C(32);
    if ( !v3 )
    {
      if ( chatbox_8045F4C() )
      {
        sub_803CB00(4);
        *(v1 + 12) = 24;
        sub_8132280(42);
        result = sub_8146E5C(&byte_200AF80, 2);
      }
      else
      {
        *(v1 + 12) = 12;
        result = sub_803CB00(4);
      }
    }
  }
  return result;
}


// 0x812a3c8
void __fastcall sub_812A3C8(int a1)
{
  int v1; // r5
  int v2; // r0
  char v3; // zf

  v2 = sub_813D60C(a1);
  if ( v3 )
  {
    sub_813D978(v2);
    *(v1 + 1) = 60;
    *(v1 + 2) = 4;
    *(v1 + 16) = 5;
    sub_8132280(36);
  }
  else
  {
    sub_803CB18();
    if ( !v3 )
    {
      *(v1 + 12) = 28;
      *(v1 + 40) = 8;
    }
  }
}


// 0x812a3fc
int __fastcall sub_812A3FC(int a1)
{
  int v1; // r5
  int result; // r0
  char v3; // zf

  result = sub_813D60C(a1);
  if ( v3 )
  {
    chatbox_8045F3C(128);
    if ( v3 || (result = chatbox_8045F3C(8), !v3) )
    {
      engine_setScreeneffect(12, 16);
      result = 20;
      *(v1 + 12) = 20;
    }
  }
  return result;
}


// 0x812a424
int __fastcall sub_812A424(int a1)
{
  int result; // r0
  char v2; // zf
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r0

  result = sub_813D60C(a1);
  if ( v2 )
  {
    result = engine_isScreeneffectAnimating();
    if ( !v2 )
    {
      sub_811B010(0);
      v3 = sub_811B010(1);
      v7 = sub_8129248(v3, v4, v5, v6);
      sub_812AFC8(v7);
    }
  }
  return result;
}


// 0x812a494
int __fastcall sub_812A494(int a1)
{
  int v1; // r5
  int result; // r0
  char v3; // zf

  result = sub_813D60C(a1);
  if ( v3 )
  {
    result = chatbox_8045F3C(8);
    if ( !v3 )
    {
      result = 16;
      *(v1 + 12) = 16;
    }
  }
  return result;
}


// 0x812a4ac
int sub_812A4AC()
{
  int v0; // r5
  int result; // r0

  result = *(v0 + 40) - 1;
  *(v0 + 40) = result;
  if ( !result )
  {
    *(v0 + 1) = 16;
    *(v0 + 2) = 0;
    *(v0 + 40) = 0;
    sub_8132398();
    sub_803EA78();
    if ( sub_803EA50() )
      result = sub_8148540();
    else
      result = sub_8146E60();
  }
  return result;
}


// 0x812a4dc
int sub_812A4DC()
{
  int v0; // r5

  (*(&off_812A4F4 + *(v0 + 3)))();
  return sub_803CB0C(1);
}


// 0x812a4fc
int sub_812A4FC()
{
  int v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r0

  v1 = sub_813D90C(1);
  sub_8147F98(v1);
  sub_803DCE8(0xCu, 3, 2u, 0);
  v2 = sub_803DCD8(1112683845, 0x2000, 0);
  v3 = sub_81322E8(v2);
  sub_803EF60(v3);
  *(v0 + 3) = 4;
  *(v0 + 12) = 0;
  return sub_803CB00(1);
}


// 0x812a540
int __fastcall sub_812A540(int a1)
{
  int v1; // r5
  int v2; // r0

  v2 = sub_8148224(a1);
  return (*(&off_812A558 + *(v1 + 12)))(v2);
}


// 0x812a574
void sub_812A574()
{
  int v0; // r5
  char v1; // zf
  int v2; // r1
  int v3; // r0
  int v4; // r0

  engine_isScreeneffectAnimating();
  if ( v1 || (sub_8048FC4(), v2 != 28) || (sub_811F7EC(), v1) )
  {
    sub_803CB18();
    if ( !v1 )
    {
      sub_813D638(v4);
      if ( !v1 )
      {
        *(v0 + 12) = 4;
        *(v0 + 13) = 0;
      }
    }
  }
  else
  {
    sub_813D978(v3);
    sound_play(131);
    *(v0 + 12) = 12;
  }
}


// 0x812a5b4
void __fastcall sub_812A5B4(int a1)
{
  int v1; // r5
  char v2; // zf

  if ( !sub_813D638(a1) )
  {
    *(v1 + 12) = 0;
    return;
  }
  sub_803CB18();
  if ( !v2 )
  {
    *(v1 + 12) = 8;
    *(v1 + 40) = 0;
    return;
  }
  sub_803CB18();
  if ( v2 )
  {
    sub_803CB18();
    if ( v2 )
      return;
    sub_803C28A(131);
  }
  *(v1 + 12) = 12;
}


// 0x812a5f8
void sub_812A5F8()
{
  int v0; // r5
  char v1; // zf
  int v2; // r0
  int v3; // r0
  int v4; // r0

  sub_803CB18();
  if ( v1 )
  {
    sub_803CB18();
    if ( !v1 )
    {
LABEL_9:
      sub_803EA78();
      v3 = sub_803EA50();
      if ( v3 )
      {
        if ( sub_8148D24(v3) )
        {
          v2 = *(v0 + 40) + 1;
          *(v0 + 40) = v2;
        }
        else
        {
          *(v0 + 1) = 16;
          *(v0 + 2) = 0;
          *(v0 + 40) = 0;
          v2 = sub_8132398();
        }
      }
      else
      {
        sub_8147B24(0);
        *(v0 + 1) = 16;
        *(v0 + 2) = 0;
        *(v0 + 40) = 0;
        v2 = sub_8132398();
      }
      goto LABEL_14;
    }
    sub_803CB18();
    if ( v1 )
      return;
    sub_803CB0C(8);
  }
  *(v0 + 12) = 20;
  sub_803CB18();
  if ( !v1 )
    goto LABEL_9;
LABEL_14:
  sub_813D5D0(v2);
  v4 = sub_81469A0();
  sub_81469E8(v4);
}


// 0x812a67c
int __fastcall sub_812A67C(int a1)
{
  int v1; // r5
  int result; // r0
  char v3; // zf

  result = sub_813D60C(a1);
  if ( v3 )
  {
    engine_setScreeneffect(12, 16);
    result = 16;
    *(v1 + 12) = 16;
  }
  return result;
}


// 0x812a694
int __fastcall sub_812A694(int a1)
{
  int result; // r0
  char v2; // zf
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r0

  result = sub_813D60C(a1);
  if ( v2 )
  {
    result = engine_isScreeneffectAnimating();
    if ( !v2 )
    {
      v6 = sub_8129248(result, v3, v4, v5);
      sub_812AFC8(v6);
    }
  }
  return result;
}


// 0x812a6f8
int sub_812A6F8()
{
  int v0; // r5
  int v1; // r0
  char v2; // zf
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int result; // r0

  sub_803CB18();
  if ( v2 )
  {
    result = sub_813D60C(v1);
    if ( v2 )
    {
      result = 24;
      *(v0 + 12) = 24;
    }
  }
  else
  {
    sub_803EA78();
    v3 = sub_803EA50();
    if ( v3 )
    {
      if ( sub_8148D24(v3) )
      {
        v4 = *(v0 + 40) + 1;
        *(v0 + 40) = v4;
      }
      else
      {
        *(v0 + 1) = 16;
        *(v0 + 2) = 0;
        *(v0 + 40) = 0;
        v4 = sub_8132398();
      }
    }
    else
    {
      sub_8147B24(0);
      *(v0 + 1) = 16;
      *(v0 + 2) = 0;
      *(v0 + 40) = 0;
      v4 = sub_8132398();
    }
    v5 = sub_81469A0(v4);
    result = sub_81469E8(v5);
  }
  return result;
}


// 0x812a758
int sub_812A758()
{
  int v0; // r5
  int result; // r0
  char v2; // zf

  result = chatbox_8045F3C(8);
  if ( !v2 )
  {
    *(v0 + 3) = 0;
    result = 0;
    *(v0 + 12) = 0;
  }
  return result;
}


// 0x812a76c
int sub_812A76C()
{
  int v0; // r5
  int v1; // r0
  char v2; // r4
  u8 *v3; // r0
  u8 *v4; // r6
  u32 v5; // r0
  int v6; // r7
  unsigned int v7; // r3
  int v8; // r0
  signed int v9; // r4
  int v10; // r0
  __int16 v11; // r0
  __int16 v12; // r1
  int result; // r0

  if ( eStruct200BC30_getJumpOffset00() == 8 )
    sub_803C604();
  *(v0 + 16) = 0;
  v1 = sub_803EAE4();
  v2 = v1;
  if ( v1 == 4 )
  {
LABEL_29:
    sub_8132280(36);
    *(v0 + 1) = 60;
    v3 = 0;
    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    goto LABEL_30;
  }
  if ( v1 == 1 && eStruct200BC30_getJumpOffset00() )
  {
    v3 = (*(v0 + 40) + 1);
    *(v0 + 40) = v3;
    if ( v3 < dword_168 )
      goto LABEL_30;
    goto LABEL_29;
  }
  v3 = (byte_0 + 1);
  *(v0 + 16) = 1;
  if ( !(v2 & 0x10) )
  {
    v3 = sub_81325CC();
    *(v0 + 38) = 0;
    *(v3 + 4) = 0;
  }
  if ( !(v2 & 8) )
  {
    v4 = sub_803E8F8();
    v5 = sub_803EF74();
    v3 = sub_81323B0(v5);
    if ( v3 != -1 )
    {
      v6 = (v3 + 16);
      v7 = 8;
      while ( *(v3 + 1) == *(v4 + 7) )
      {
        v7 >>= 1;
        if ( *(v3 + 1) == *(v4 + 5) )
          v7 >>= 1;
        v3 += 16;
        if ( v3 > v6 )
        {
          if ( v7 )
          {
            if ( v7 <= 1 )
            {
              *(v0 + 16) = 2;
              sub_8132280(37);
              *(v0 + 1) = 56;
              *(v0 + 2) = 0;
              *(v0 + 38) = 16;
              v3 = sub_803E8F8();
              *(v3 + 5) = 0x2000;
            }
          }
          else
          {
            *(v0 + 1) = 20;
            *(v0 + 2) = 0;
            *(v0 + 17) = 0;
            v8 = sub_8132290();
            if ( v8 == 24 || v8 == 28 )
            {
              v9 = 0;
              v10 = sub_81325F4(*(v0 + 18));
              if ( v10 != 20 )
              {
                if ( v10 == 24 )
                  v9 = 1;
                else
                  v9 = 2;
              }
              v11 = sub_81209DC(v9);
              *(v0 + 42) = v11 | (v12 << 8);
            }
            else
            {
              *(v0 + 2) = 4;
            }
            *(v0 + 3) = 0;
            v3 = sub_8132280(40);
          }
          break;
        }
      }
    }
  }
LABEL_30:
  sub_812B26C(v3);
  if ( eStruct200BC30_getJumpOffset00() )
    result = sub_803C59C(218, 2);
  else
    result = sub_812B504(0);
  return result;
}


// 0x812a8a4
int sub_812A8A4()
{
  int v0; // r5
  int result; // r0

  if ( eStruct200BC30_getJumpOffset00() == 8 )
    cb_8048FD4();
  (*(&off_812A8E4 + *(v0 + 2)))();
  if ( eStruct200BC30_getJumpOffset00() )
    result = sub_803C59C(218, 2);
  else
    result = sub_812B504(0);
  return result;
}


// 0x812a8ec
int sub_812A8EC()
{
  int v0; // r5
  char v1; // zf
  signed int v2; // r1
  __int64 v3; // r0
  int v4; // r3
  int v5; // r0
  u32 v6; // r0
  u32 v7; // r0
  int v8; // r4
  char v9; // r1
  signed int v10; // r2
  __int64 v11; // r0
  signed int v12; // r0
  signed int v13; // r2
  int v14; // r0
  int v15; // r0
  char v17; // [sp-4h] [bp-18h]

  *(v0 + 16) = 0;
  if ( chatbox_8045F3C(128) )
  {
    chatbox_8045F3C(16);
    if ( !v1 )
      goto LABEL_54;
    chatbox_8045F3C(32);
    if ( v1 )
      goto LABEL_15;
    if ( chatbox_8045F4C() )
    {
LABEL_54:
      *(v0 + 17) = 1;
    }
    else
    {
      sub_8132280(35);
      *(v0 + 17) = 0;
    }
    v2 = 4;
    if ( *(v0 + 17) )
      v2 = 8;
    if ( v2 == 4 )
    {
      v3 = sub_8120A38();
      if ( v3 || __PAIR__(HIDWORD(v3), 0) != v4 )
        LOWORD(v2) = 4;
      else
        LOWORD(v2) = 132;
    }
    *(v0 + 38) = v2;
  }
LABEL_15:
  v5 = sub_803EAE4();
  if ( v5 == 4 )
  {
    *(v0 + 1) = 52;
    v5 = 0;
    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    return sub_812B26C(v5);
  }
  if ( v5 != 1 )
  {
    *(v0 + 16) = 1;
    v6 = sub_803EF7C();
    *(v6 + 2) = *(v0 + 42);
    *(v6 + 8) = *(v0 + 38);
    sub_803E8F8();
    v7 = sub_803EF74();
    v5 = sub_81323B0(v7);
    v8 = v5;
    if ( v5 != -1 )
    {
      v5 = sub_8132538();
      if ( v5 <= 2 )
      {
        *(v0 + 1) = 56;
        *(v0 + 2) = 0;
        *(v0 + 16) = 4;
        if ( v5 == 2 )
        {
          v5 = sub_8132280(42);
        }
        else
        {
          v9 = 3;
          v10 = 41;
          if ( *(v0 + 38) == 8 )
          {
            v9 = 4;
            v10 = 42;
          }
          *(v0 + 16) = v9;
          v5 = sub_8132280(v10);
          *(v0 + 38) = 16;
        }
        return sub_812B26C(v5);
      }
      if ( v5 == 255 || v5 != 4 )
        return sub_812B26C(v5);
      if ( !eStruct200BC30_getJumpOffset00() )
      {
        ClearEventFlagFromImmediate(23, 34);
        v11 = sub_803F674();
        if ( HIDWORD(v11) == 2 )
        {
          SetEventFlagFromImmediate(23, 34);
        }
        else
        {
          if ( HIDWORD(v11) )
          {
            v12 = 39;
LABEL_47:
            v5 = sub_8132280(v12);
            *(v0 + 1) = 56;
            *(v0 + 2) = 0;
            *(v0 + 16) = 4;
            *(v0 + 38) = 16;
            return sub_812B26C(v5);
          }
          sub_803F4EC(0);
        }
      }
      if ( eStruct200BC30_getJumpOffset00() )
        sub_803F4EC(0);
      if ( *(v0 + 19) == 1 )
      {
        v13 = 0;
        if ( *(v8 + 8) == 132 )
          v13 = 1;
        v14 = *(v8 + 24);
        if ( v14 == 132 )
          v13 |= 2u;
        if ( v13 )
        {
          v17 = v13;
          if ( sub_803DD60(v14) )
          {
            if ( !(v17 & 2) )
            {
              v12 = 41;
              goto LABEL_47;
            }
          }
          else if ( !(v17 & 1) )
          {
            v12 = 41;
            goto LABEL_47;
          }
          v12 = 38;
          goto LABEL_47;
        }
      }
      v15 = sub_8132290();
      *(v0 + 1) = v15;
      if ( v15 == 28 )
        engine_setScreeneffect(12, 16);
      *(v0 + 2) = 0;
      *(v0 + 3) = 0;
      *(v0 + 27) = 0;
      v5 = *(v8 + 2);
      *(v0 + 42) = v5;
    }
  }
  return sub_812B26C(v5);
}


// 0x812aac0
int sub_812AAC0()
{
  int v0; // r5
  char v1; // zf
  signed __int16 v2; // r1
  int v3; // r0
  u8 *v4; // r6
  u32 v5; // r0
  int v6; // r4
  int v7; // r7
  unsigned int v8; // r3
  char v9; // r1
  signed int v10; // r2

  *(v0 + 16) = 0;
  if ( chatbox_8045F3C(128) )
  {
    chatbox_8045F3C(16);
    if ( !v1 )
      goto LABEL_35;
    chatbox_8045F3C(32);
    if ( v1 )
      goto LABEL_10;
    if ( chatbox_8045F4C() )
    {
LABEL_35:
      *(v0 + 17) = 1;
    }
    else
    {
      sub_8132280(35);
      *(v0 + 17) = 0;
    }
    v2 = 4;
    if ( *(v0 + 17) )
      v2 = 8;
    *(v0 + 38) = v2;
  }
LABEL_10:
  v3 = sub_803EAE4();
  if ( v3 == 4 )
  {
LABEL_31:
    *(v0 + 1) = 52;
    v3 = 0;
    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
  }
  else if ( v3 != 1 )
  {
    *(v0 + 16) = 1;
    *(sub_81325CC() + 8) = *(v0 + 38);
    v4 = sub_803E8F8();
    v5 = sub_803EF74();
    v3 = sub_81323B0(v5);
    v6 = v3;
    if ( v3 != -1 )
    {
      v7 = v3 + 16;
      v8 = 8;
      while ( *(v3 + 4) == *(v4 + 7) )
      {
        v8 >>= 1;
        if ( *(v3 + 2) == *(v4 + 5) )
          v8 >>= 1;
        v3 += 16;
        if ( v3 > v7 )
        {
          if ( !v8 )
          {
            v3 = sub_8132430(v6);
            if ( v3 > 2 )
            {
              if ( v3 != 255 && v3 == 4 )
              {
                *(v0 + 1) = sub_8132290();
                *(v0 + 2) = 0;
                *(v0 + 3) = 0;
                v3 = *(v0 + 1);
                if ( v3 >= 40 )
                  v3 = engine_setScreeneffect(12, 16);
              }
            }
            else
            {
              *(v0 + 1) = 56;
              *(v0 + 2) = 0;
              *(v0 + 16) = 4;
              if ( v3 == 2 )
              {
                v3 = sub_8132280(42);
              }
              else
              {
                v9 = 3;
                v10 = 41;
                if ( *(v0 + 38) == 8 )
                {
                  v9 = 4;
                  v10 = 42;
                }
                *(v0 + 16) = v9;
                v3 = sub_8132280(v10);
                *(v0 + 38) = 16;
              }
            }
            return sub_812B26C(v3);
          }
          if ( v8 > 1 )
            return sub_812B26C(v3);
          *(v0 + 16) = 2;
          sub_8132280(37);
          goto LABEL_31;
        }
      }
    }
  }
  return sub_812B26C(v3);
}


// 0x812abec
int sub_812ABEC()
{
  int v0; // r5
  int v1; // r0

  v1 = (*(&off_812AC04 + *(v0 + 2)))();
  return sub_812B26C(v1);
}


// 0x812ac14
void sub_812AC14()
{
  JUMPOUT(&loc_812AC2A);
}


// 0x812ac1a
signed int sub_812AC1A()
{
  int v0; // r5
  int v1; // r4
  signed int result; // r0

  if ( eStruct200BC30_getJumpOffset00() == 8 )
    sub_803C612();
  v1 = sub_803EAE4();
  if ( eStruct200BC30_getJumpOffset00() )
  {
    if ( v1 == 4 )
      goto LABEL_15;
    if ( !*(v0 + 3) )
    {
      sub_803C754();
      result = 4;
      *(v0 + 3) = 4;
      return result;
    }
    result = sub_813D60C(*(v0 + 3));
    if ( !result )
      goto LABEL_15;
  }
  else
  {
    if ( v1 == 4 || v1 == 1 )
      goto LABEL_18;
    if ( !*(v0 + 3) )
    {
      sub_803DDA4();
      result = 4;
      *(v0 + 3) = 4;
      return result;
    }
    result = sub_803DE24();
    if ( !result )
    {
LABEL_18:
      sub_81440D8();
LABEL_15:
      result = 4;
      *(v0 + 2) = 4;
      return result;
    }
  }
  return result;
}


// 0x812ac80
int sub_812AC80()
{
  int v0; // r5
  signed int v1; // r4
  int v2; // r0
  int v3; // r0
  char v4; // zf
  int result; // r0

  if ( *(v0 + 2) != 8 )
  {
    v1 = 36;
    v2 = eStruct200BC30_getJumpOffset00();
    if ( v2 )
    {
      v3 = sub_8149644(v2);
      sub_8149568(v3);
      if ( eStruct200BC30_getRef()[14] == 2 )
        v1 = 48;
    }
    sub_8132280(v1);
    *(v0 + 2) = 8;
  }
  if ( eStruct200BC30_getRef()[14] != 2 )
  {
    sub_811F7EC();
    if ( !v4 )
    {
      if ( eStruct200BC30_getJumpOffset00() )
      {
        *(v0 + 2) = 12;
        *(v0 + 3) = 0;
        engine_setScreeneffect(12, 16);
      }
      else
      {
        sub_8132614();
      }
    }
  }
  result = eStruct200BC30_getJumpOffset00();
  if ( result == 8 )
    result = sub_803C612();
  return result;
}


// 0x812acf0
int sub_812ACF0()
{
  int result; // r0

  sub_812AE74();
  result = eStruct200BC30_getJumpOffset00();
  if ( result == 8 )
    result = sub_803C612();
  return result;
}


// 0x812ad04
int sub_812AD04()
{
  int v0; // r5
  int v1; // r0
  char v2; // r4
  u8 *v3; // r6
  u32 v4; // r0
  int v5; // r4
  int v6; // r7
  unsigned int v7; // r3
  int v8; // r1
  int v9; // r1
  int v10; // r1
  int v11; // r1
  int v12; // r1
  int result; // r0

  v1 = sub_803EAE4();
  if ( v1 == 4 )
  {
    *(v0 + 1) = 52;
    v1 = 0;
    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
  }
  else if ( v1 != 1 )
  {
    v2 = v1;
    if ( !(v1 & 0x10) )
    {
      v1 = sub_81325CC();
      *(v1 + 8) = *(v0 + 38);
    }
    if ( !(v2 & 8) )
    {
      v3 = sub_803E8F8();
      v4 = sub_803EF74();
      v1 = sub_81323B0(v4);
      v5 = v1;
      if ( v1 != &off_812AE30 )
      {
        v6 = v1 + 16;
        v7 = 8;
        do
        {
          if ( *(v1 + 4) != *(v3 + 7) )
            goto LABEL_32;
          v7 >>= 1;
          if ( *(v1 + 2) == *(v3 + 5) )
            v7 >>= 1;
          v1 += 16;
        }
        while ( v1 <= v6 );
        if ( v7 )
          goto LABEL_32;
        v8 = *(v0 + 38);
        if ( v8 == 16 )
        {
          if ( sub_803DD60(v1) )
          {
            v1 = sub_81325C0(v5);
            if ( v9 == 16 && (v1 == 16 || v1 == 8) )
            {
LABEL_30:
              *(v0 + 1) = 60;
              v1 = 0;
              *(v0 + 2) = 0;
              *(v0 + 3) = 0;
              goto LABEL_32;
            }
          }
          else
          {
            v1 = sub_81325C0(v5);
            if ( v1 == 16 && (v10 == 16 || v10 == 8) )
              goto LABEL_30;
          }
        }
        else
        {
          if ( v8 != 8 )
            goto LABEL_32;
          if ( sub_803DD60(v1) )
          {
            v1 = sub_81325C0(v5);
            if ( v1 == 16 && v11 == 8 )
              goto LABEL_30;
          }
          else
          {
            v1 = sub_81325C0(v5);
            if ( v12 == 16 && v1 == 8 )
              goto LABEL_30;
          }
        }
      }
    }
  }
LABEL_32:
  sub_812B26C(v1);
  result = eStruct200BC30_getJumpOffset00();
  if ( result == 8 )
    return sub_803C612();
  if ( !result )
    result = sub_812B504(0);
  return result;
}


// 0x812adfc
int sub_812ADFC()
{
  int v0; // r5
  int v1; // r0
  int result; // r0

  if ( eStruct200BC30_getJumpOffset00() == 8 && *(v0 + 2) )
    sub_803C612();
  v1 = (*(&off_812AE30 + *(v0 + 2)))();
  sub_812B26C(v1);
  result = eStruct200BC30_getJumpOffset00();
  if ( !result )
    result = sub_812B504(0);
  return result;
}


// 0x812ae3c
int sub_812AE3C()
{
  int v0; // r5
  char v1; // zf
  int result; // r0

  chatbox_8045F3C(128);
  if ( v1 || (result = chatbox_8045F3C(8), !v1) )
  {
    if ( eStruct200BC30_getJumpOffset00() )
    {
      *(v0 + 2) = 8;
      *(v0 + 3) = 0;
      result = engine_setScreeneffect(12, 16);
    }
    else
    {
      result = sub_8132614();
    }
  }
  return result;
}


// 0x812ae74
int sub_812AE74()
{
  unsigned __int8 *v0; // r5
  int result; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r3
  char v5; // zf
  int v6; // r0
  int v7; // r0
  int v8; // r2
  int v9; // r3
  char v10; // r0
  int v11; // r0

  result = engine_isScreeneffectAnimating();
  if ( !v5 )
  {
    v6 = sub_8129248(result, v2, v3, v4);
    sub_812B530(v6);
    v7 = chatbox_8040818();
    sub_8132614(v7);
    v10 = 16;
    if ( v0[2] >= 20 )
      v10 = 44;
    v0[3] = v10;
    v0[30] = 0;
    ZeroFillByWord(&unk_20251A0, 0x10u, v8, v9);
    sub_812AFC8(v11);
  }
  return result;
}


// 0x812aec8
int sub_812AEC8()
{
  int result; // r0
  char v1; // zf

  sub_80465BC();
  sub_80465F8();
  result = engine_isScreeneffectAnimating();
  if ( !v1 )
    result = sub_811F708();
  return result;
}


// 0x812aee0
int sub_812AEE0()
{
  int v0; // r5
  int v1; // r0

  v1 = (*(&off_812AEF8 + *(v0 + 2)))();
  return sub_812B26C(v1);
}


// 0x812aefc
int sub_812AEFC()
{
  int result; // r0
  char v1; // zf

  result = chatbox_8045F3C(128);
  if ( v1 || (result = chatbox_8045F3C(8), !v1) )
    result = sub_8132614(result);
  return result;
}


// 0x812af14
void sub_812AF14()
{
  ;
}


// 0x812af18
int sub_812AF18()
{
  int v0; // r0
  int v1; // r0
  int v2; // r0

  sub_812AF3C();
  decompAndCopyData_8000B30(&off_812B08C);
  v0 = sub_812AF78();
  v1 = sub_812AF84(v0);
  v2 = sub_812AF98(v1);
  sub_812AFA4(v2);
  return chatbox_8040818();
}


// 0x812af3c
void sub_812AF3C()
{
  int v0; // r6
  int v1; // r7
  char (*v2)[32]; // r0
  int v3; // r7
  int v4; // r1
  signed int v5; // r1

  v0 = 0;
  v1 = 0;
  do
  {
    v2 = *(&off_812B024 + v1);
    v3 = v1 + 4;
    v4 = *(&off_812B024 + v3);
    v1 = v3 + 4;
    *(&unk_201D020 + v0) = sub_811FB84(v2, v4);
    v0 += 4;
    v5 = 0;
    do
    {
      *(&unk_201D020 + v0) = *(&off_812B024 + v1);
      v0 += 4;
      v1 += 4;
      ++v5;
    }
    while ( v5 < 2 );
  }
  while ( v1 < 96 );
  *(&unk_201D020 + v0) = 0;
  decompAndCopyData_8000B30(&unk_201D020);
}


// 0x812af78
void sub_812AF78()
{
  decompAndCopyData_8000B30(&off_812B0E8);
}


// 0x812af84
void sub_812AF84()
{
  decompAndCopyData_8000B30(byte_812B168);
  sub_8123300(off_812AFE4, byte_201BA20, decomp_2013A00);
}


// 0x812af98
void sub_812AF98()
{
  decompAndCopyData_8000B30(byte_812B1A0);
}


// 0x812afa4
void sub_812AFA4()
{
  decompAndCopyData_8000B30(byte_812B1C0);
}


// 0x812afb0
void __noreturn sub_812AFB0()
{
  copyTiles();
  JUMPOUT(loc_812AFC2);
}


// 0x812afc8
void __noreturn sub_812AFC8()
{
  int v0; // r0

  v0 = copyTiles();
  sub_812B430(v0);
}


// 0x812b1dc
int __fastcall sub_812B1DC(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  char *v5; // r4
  int v6; // r6
  int result; // r0

  v4 = a1;
  ZeroFillByWord(dword_20251A0, 0x10u, a3, a4);
  sub_8046670(*v4, *(v4 + 1), *(v4 + 2));
  v5 = (v4 + 4);
  v6 = 0;
  do
  {
    dword_20251A0[v6] = sub_8046670(*v5, v5[1], *(v5 + 1) | (v6 << 16));
    ++v6;
    v5 += 4;
    result = *v5;
  }
  while ( result != 255 );
  return result;
}


// 0x812b218
int sub_812B218()
{
  int v0; // r5
  int v1; // r4
  int result; // r0

  v1 = *(v0 + 30);
  result = dword_20251A0[v1];
  if ( !result )
  {
    dword_20251A0[v1] = sub_8046670(28, ((v1 * 4) >> 2) + 1, ((v1 * 4) >> 2 << 16) | 0x1000001) | 0x80000000;
    result = *(v0 + 30) + 1;
    *(v0 + 30) = result;
  }
  return result;
}


// 0x812b25c
int sub_812B25C()
{
  sub_812B2C4();
  sub_80465BC();
  return sub_80465F8();
}


// 0x812b26c
int sub_812B26C()
{
  sub_8132290();
  return sub_812B25C();
}


// 0x812b288
void __fastcall sub_812B288(int a1)
{
  int v1; // r5
  int v2; // r1

  if ( *(v1 + 27) & 1 )
    JUMPOUT(&locret_812B2FC);
  v2 = *(v1 + a1);
  JUMPOUT(&loc_812B2AC);
}


// 0x812b29c
int __fastcall sub_812B29C(int a1)
{
  int v1; // r5

  if ( *(v1 + 27) & 1 )
    JUMPOUT(&locret_812B2FC);
  return sub_811C23C(&dword_78, &dword_28[8 * *(v1 + a1)], 2);
}


// 0x812b2c4
int __fastcall sub_812B2C4(int a1)
{
  unsigned __int8 *v1; // r5
  int v2; // r6
  int result; // r0
  int v4; // r1
  unsigned __int8 v5; // r1

  v2 = a1;
  result = v1[27];
  if ( !(result & 1) )
  {
    result = sub_811FAF4((19 * v1[v2] + 29) | 0x80000, 0x20004u, v1[23], byte_8129178);
    v4 = v1[24] - 1;
    v1[24] = v4;
    if ( !v4 )
    {
      result = sub_8120CC8(result, &dword_8129180);
      v1[23] = result;
      v1[24] = v5;
    }
  }
  return result;
}


// 0x812b318
signed int __fastcall sub_812B318(int a1)
{
  int v1; // r5
  int v2; // r7
  signed int v3; // r6
  signed int v4; // r4
  int v5; // r1
  int v7; // [sp+0h] [bp-1Ch]
  int v8; // [sp+4h] [bp-18h]

  v2 = a1 + 1;
  v3 = 1;
  v7 = 0;
  v8 = 0;
  ++*(v1 + 28);
  v4 = 1;
  do
  {
    v5 = dword_20251A0[v4 - 1];
    if ( v5 )
    {
      if ( v5 >= 0 )
      {
        if ( !sub_811A768(-16, v5 & 0x7FFFFFFF) )
        {
          dword_20251A0[v4 - 1] = 0;
          v3 = 0;
        }
      }
      else
      {
        ++v8;
      }
    }
    else
    {
      ++v7;
    }
    if ( byte_812B394[v4] >= *(v1 + 28) )
      break;
    ++v4;
  }
  while ( v4 < v2 );
  return v3;
}


// 0x812b39c
int sub_812B39C()
{
  int v0; // r5

  return sub_8132280(*(&dword_812B3B0 + *(v0 + 18)));
}


// 0x812b3b4
int sub_812B3B4()
{
  int v0; // r5

  return sub_8132280(*(&dword_812B3C8 + *(v0 + 18)));
}


// 0x812b3cc
int sub_812B3CC()
{
  int v0; // r5

  return sub_8132280(*(&dword_812B3E0 + *(v0 + 18)));
}


// 0x812b3e4
int sub_812B3E4()
{
  int v0; // r5

  return sub_8132280(*(&dword_812B3F8 + *(v0 + 19)));
}


// 0x812b3fc
int sub_812B3FC()
{
  int v0; // r5

  return sub_8132280(*(&dword_812B410 + *(v0 + 14)));
}


// 0x812b414
int sub_812B414()
{
  _BYTE *v0; // r5

  v0[1] = 12;
  v0[2] = 0;
  v0[3] = 0;
  v0[27] |= 1u;
  return sub_8132280(35);
}


// 0x812b430
int __noreturn sub_812B430()
{
  int v0; // r10
  int v1; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r0

  render_graphicalText_8045F8C(byte_201BA20, 32, byte_2017A00, 100692480);
  v1 = *(v0 + 64);
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  v4 = *(v0 + 56);
  *(v4 + 8) = v2;
  *(v4 + 12) = v3;
  render_graphicalText_8045F8C(byte_201BA20, 33, &unk_2017C80, 100693120);
  copyTiles();
  return copyTiles();
}


// 0x812b4ac
void __noreturn sub_812B4AC()
{
  sub_80018D0(16, 4, 2, 0);
  sub_80018D0(17, 6, 2, 0);
}


// 0x812b504
unsigned int sub_812B504()
{
  int v0; // r5
  unsigned int result; // r0

  result = *(v0 + 27);
  if ( result & 0x10 )
    result = sub_811FAF4(13107208, 0x20004u, 0, &dword_8129184);
  return result;
}


// 0x812b530
int sub_812B530()
{
  int v0; // r5
  int v1; // r0
  int result; // r0

  v1 = eStruct200BC30_getJumpOffset00();
  SWI_LZ77UnCompReadNormalWrite8bit(*(&off_812B55C + v1), decomp_2013A00);
  (loc_8000AC8)(&unk_2013A04, 100747008, byte_100);
  result = *(v0 + 27) | 0x10;
  *(v0 + 27) = result;
  return result;
}


// 0x812b574
int sub_812B574()
{
  int v0; // r0
  int result; // r0

  v0 = eStruct200BC30_getJumpOffset00();
  if ( v0 == 4 )
    result = sub_81475D4(&dword_814FE94);
  else
    result = sub_8148224(v0);
  return result;
}


// 0x812b590
signed int sub_812B590()
{
  _BYTE *v0; // r5
  signed int result; // r0

  sub_812B574();
  sub_8132280(47);
  v0[1] = 60;
  v0[2] = 4;
  result = 5;
  v0[16] = 5;
  return result;
}


// 0x812b5ac
int sub_812B5AC()
{
  int v0; // r5
  int v1; // r0

  v1 = 4;
  if ( *(v0 + 2) != 20 )
  {
    v1 = 5;
    if ( *(v0 + 2) != 24 )
      v1 = 7;
  }
  return sub_811A610(v1, 0);
}


// 0x812b5c8
int sub_812B5C8()
{
  int v0; // r5
  int v1; // r0
  int result; // r0

  eStruct203F7D8[1] = sub_803EAE4();
  v1 = (*(&off_812B5F4 + *(v0 + 2)))();
  result = sub_8132290(v1);
  if ( result == 28 )
  {
    sub_80465BC();
    result = sub_80465F8();
  }
  return result;
}


// 0x812b608
signed int sub_812B608()
{
  int v0; // r5
  char v1; // zf
  unsigned int v2; // r4
  signed int result; // r0

  *(v0 + 26) = getPETNaviSelect();
  TestEventFlagFromImmediate(1, 99);
  if ( v1 )
    sub_80010BE(0);
  v2 = *(v0 + 42);
  *(v0 + 68) = v2;
  result = v2;
  if ( v2 < 192 && (v2 >> 8) < 22 )
  {
    sub_812B768();
    result = 4;
    *(v0 + 2) = 4;
  }
  return result;
}


// 0x812b640
int sub_812B640()
{
  int v0; // r5
  int result; // r0
  char v2; // zf
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r0
  BattleSettings *v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3

  if ( eStruct203F7D8[1] == 4 )
    *(v0 + 27) |= 2u;
  result = engine_isScreeneffectAnimating();
  if ( !v2 )
  {
    *(v0 + 2) = 8;
    sub_8046664();
    chatbox_8040818();
    sub_80035A2(0x21u);
    v3 = sub_8004702();
    sub_80024A2(v3, v4, v5, v6);
    v11 = sub_8003962(v7, v8, v9, v10);
    v15 = sub_8003AB2(v11, v12, v13, v14);
    sub_8006C22(v15);
    ClearEventFlagFromImmediate(23, 45);
    ClearEventFlagFromImmediate(23, 47);
    v16 = getBattleSettings_200AF60();
    sub_80071D4(v16, v17, v18, v19);
  }
  return result;
}


// 0x812b698
void sub_812B698()
{
  int v0; // r5
  int v1; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int v5; // r0
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r0

  if ( *(v0 + 27) & 2 )
    eStruct203F7D8[1] = 4;
  v1 = sub_8007800();
  if ( !v1 )
  {
    *(v0 + 34) = v2;
    switch ( v2 )
    {
      case 1:
        v5 = sub_812B7C4();
        v1 = sub_812B7E0(v5);
        break;
      case 2:
        v1 = sub_812B7C4();
        break;
      case 3:
        v1 = sub_812B7C4();
        break;
    }
    v6 = sub_8005F40(v1, v2, v3, v4);
    sub_80024A2(v6, v7, v8, v9);
    v14 = sub_8003962(v10, v11, v12, v13);
    sub_8003AB2(v14, v15, v16, v17);
    *(v0 + 2) = 12;
    v18 = sub_80010BE(*(v0 + 26));
    sub_813C3AC(v18);
    sub_8036E78();
    ClearEventFlagFromImmediate(23, 34);
    sub_803F798();
  }
}


// 0x812b708
void __noreturn sub_812B708()
{
  _BYTE *v0; // r5
  int v1; // r0
  int v2; // r0
  int v3; // r4
  int v4; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r0
  int v9; // r2
  int v10; // r3

  v1 = eStruct200BC30_getJumpOffset00();
  if ( v1 )
  {
    v2 = sub_8149644(v1);
    v1 = sub_8149568(v2);
  }
  v3 = v0[27];
  v4 = sub_8144240(v1);
  sub_8129248(v4, v5, v6, v7);
  sub_812B530();
  v8 = ~v3 & 1;
  v0[27] = v8;
  sub_8132614(v8);
  v0[3] = 16;
  v0[30] = 0;
  ZeroFillByWord(dword_20251A0, 0x10u, v9, v10);
  sub_812AFC8();
}


// 0x812b758
int sub_812B758()
{
  int v0; // r5

  return *(v0 + 68) & 0xFF;
}


// 0x812b768
int __fastcall sub_812B768(int a1, u8 a2)
{
  int v2; // r5
  char *v3; // r0
  char *v4; // r0
  int v5; // r0
  int v6; // r1
  int v7; // r2
  u8 v9; // [sp+0h] [bp-18h]

  v9 = a2;
  v3 = getBattleSettingsFromList1(a1);
  copyBattleSettingsTo_200AF60(v3);
  v4 = (&off_812B7AC)[2 * *(v2 + 18) + *(v2 + 19)];
  if ( v4 )
  {
    battleSettings_setFlags_unkSettings(v4);
    battleSettings_setBackground(v9);
  }
  v5 = engine_setScreeneffect(44, 16);
  musicGameState_8000784(v5, v6, v7);
  return sound_play(120);
}


// 0x812b7c4
int sub_812B7C4()
{
  int v0; // r5
  int v1; // r10
  int result; // r0
  int v3; // r1

  result = *(v0 + 19);
  if ( result == 1 )
  {
    result = *(v1 + oToolkit_Unk2001c04_Ptr);
    v3 = *(result + 8) + 1;
    if ( v3 <= 999 )
      *(result + 8) = v3;
  }
  return result;
}


// 0x812b7e0
int sub_812B7E0()
{
  int v0; // r5
  int v1; // r10
  int result; // r0
  int v3; // r1

  result = *(v0 + 19);
  if ( result == 1 )
  {
    result = *(v1 + oToolkit_Unk2001c04_Ptr);
    v3 = *(result + 10) + 1;
    if ( v3 <= 999 )
      *(result + 10) = v3;
  }
  return result;
}


// 0x812b80c
int sub_812B80C()
{
  int v0; // r5
  int result; // r0

  if ( eStruct200BC30_getJumpOffset00() == 8 && (*(v0 + 2) != 20 || *(v0 + 3) != 4) )
    sub_803C604();
  (*(&off_812B858 + *(v0 + 2)))();
  if ( *(v0 + 2) != 20 || *(v0 + 3) != 4 )
    sub_812B25C();
  result = eStruct200BC30_getJumpOffset00();
  if ( result )
    result = sub_803C59C(218, 2);
  return result;
}


// 0x812b874
int sub_812B874()
{
  int v0; // r5
  int result; // r0

  if ( eStruct200BC30_getJumpOffset00() == 8 && (*(v0 + 2) != 20 || *(v0 + 3) != 4) )
    sub_803C604();
  (*(&off_812B8C0 + *(v0 + 2)))();
  if ( *(v0 + 2) != 20 || *(v0 + 3) != 4 )
    sub_812B25C();
  result = eStruct200BC30_getJumpOffset00();
  if ( result )
    result = sub_803C59C(218, 2);
  return result;
}


// 0x812b8dc
void sub_812B8DC()
{
  int v0; // r5
  int v1; // r0
  char v2; // r4
  u8 *v3; // r6
  u32 v4; // r0
  int v5; // r0
  int v6; // r4
  unsigned int v7; // r3
  signed int v8; // r0
  int v9; // r2
  int v10; // r3

  *(v0 + 16) = 6;
  v1 = sub_803EAE4();
  if ( v1 == 4 )
  {
    sub_812C24C();
  }
  else if ( v1 != 1 )
  {
    v2 = v1;
    if ( !(v1 & 0x10) )
      sub_812C0CC();
    if ( !(v2 & 8) )
    {
      v3 = sub_803E8F8();
      v4 = sub_803EF74();
      v5 = sub_81323B0(v4);
      v6 = v5;
      if ( v5 != -1 )
      {
        v7 = 8;
        while ( *(v6 + 4) == *(v3 + 7) )
        {
          v7 >>= 1;
          if ( *(v6 + 2) != *(v3 + 5) )
            break;
          if ( *(v6 + 10) == 17185 )
          {
            *(v0 + 52) = *(v6 + 8);
            v7 >>= 1;
          }
          v6 += 16;
          if ( v6 > v5 + 16 )
          {
            if ( !v7 )
            {
              *(v0 + 3) = 8;
              *(v0 + 2) = 4;
              *(v0 + 56) = 0;
              *(v0 + 60) = 0;
              *(v0 + 38) = 0;
              v8 = 50;
              if ( *(v0 + 1) != 32 )
                v8 = 53;
              sub_8132280(v8);
              ZeroFillByEightWords(&unk_2033C00, 0x800u, v9, v10);
            }
            return;
          }
        }
      }
    }
  }
}


// 0x812b97c
int sub_812B97C()
{
  int v0; // r5
  int result; // r0
  u32 v2; // r0
  int v3; // r4
  int v4; // r2

  result = sub_803EAE4();
  if ( result == 4 )
    return sub_812C24C();
  if ( result != 1 )
  {
    *(v0 + 16) = 6;
    sub_812C0CC();
    v2 = sub_803EF74();
    result = sub_81323B0(v2);
    v3 = result;
    if ( result != -1 )
    {
      if ( !sub_803DD60(result) )
        v3 += 16;
      result = v3;
      if ( *(v3 + 2) == *(v0 + 46) + 34952 )
      {
        v4 = *(v0 + 60);
        *(v0 + 60) = v4 + 8;
        CopyWords(v3 + 4, &unk_2033C00 + v4, 8u);
        sub_812C160();
        result = *(v0 + 52);
        if ( result == *(v0 + 60) )
        {
          result = 8;
          *(v0 + 2) = 8;
        }
      }
    }
  }
  return result;
}


// 0x812b9f8
int sub_812B9F8()
{
  int v0; // r5
  int v1; // r3
  int v2; // r2
  signed __int16 v3; // r1
  int result; // r0
  u8 *v5; // r6
  u32 v6; // r0
  int v7; // r4
  int v8; // r7
  unsigned int v9; // r3

  v1 = 0;
  v2 = 0;
  do
    v2 += byte_2033C00[v1++];
  while ( v1 < *(v0 + 52) - 8 );
  v3 = 8;
  if ( *&byte_2033C00[v1] == v2 )
    v3 = 4;
  *(v0 + 38) = v3;
  result = sub_803EAE4();
  if ( result == 4 )
    return sub_812C24C();
  if ( result != 1 )
  {
    *(v0 + 16) = 6;
    *(sub_81325CC() + 8) = *(v0 + 38);
    v5 = sub_803E8F8();
    v6 = sub_803EF74();
    result = sub_81323B0(v6);
    v7 = result;
    if ( result != -1 )
    {
      v8 = result + 16;
      v9 = 8;
      while ( *(result + 4) == *(v5 + 7) )
      {
        v9 >>= 1;
        if ( *(result + 2) == *(v5 + 5) )
          v9 >>= 1;
        result += 16;
        if ( result > v8 )
        {
          if ( !v9 )
          {
            result = sub_8132430(v7);
            if ( result > 2 )
            {
              if ( result != 255 && result == 4 )
              {
                result = 12;
                *(v0 + 2) = 12;
                *(v0 + 16) = 16;
                *(v0 + 38) = 32;
              }
            }
            else
            {
              *(v0 + 2) = 12;
              *(v0 + 16) = 15;
              *(v0 + 38) = 16;
            }
            return result;
          }
          if ( v9 > 1 )
            return result;
          *(v0 + 16) = 2;
          return sub_812C24C();
        }
      }
    }
  }
  return result;
}


// 0x812bb08
int sub_812BB08()
{
  int v0; // r5
  int result; // r0
  char v2; // r4
  u8 *v3; // r6
  u32 v4; // r0
  int v5; // r4
  int v6; // r7
  unsigned int v7; // r3
  int v8; // r1
  int v9; // r1
  int v10; // r1
  int v11; // r1
  int v12; // r1
  int v13; // r1
  int v14; // r1

  result = sub_803EAE4();
  if ( result == 4 )
    return sub_812C24C();
  if ( result == 1 )
    return result;
  v2 = result;
  if ( !(result & 0x10) )
  {
    result = sub_81325CC();
    *(result + 8) = *(v0 + 38);
  }
  if ( v2 & 8 )
    return result;
  v3 = sub_803E8F8();
  v4 = sub_803EF74();
  result = sub_81323B0(v4);
  v5 = result;
  if ( result == -1 )
    return result;
  v6 = result + 16;
  v7 = 8;
  do
  {
    if ( *(result + 4) != *(v3 + 7) )
      return result;
    v7 >>= 1;
    if ( *(result + 2) == *(v3 + 5) )
      v7 >>= 1;
    result += 16;
  }
  while ( result <= v6 );
  if ( v7 )
  {
    if ( v7 > 1 )
      return result;
    *(v0 + 16) = 2;
    return sub_812C24C();
  }
  v8 = *(v0 + 38);
  if ( v8 == 16 )
  {
    if ( sub_803DD60(result) )
    {
      result = sub_81325C0(v5);
      if ( v9 == 16 && (result == 16 || result == 8) )
      {
LABEL_30:
        *(v0 + 2) = 16;
        result = 0;
        *(v0 + 12) = 0;
        *(v0 + 3) = 0;
        return result;
      }
    }
    else
    {
      result = sub_81325C0(v5);
      if ( result == 16 && (v10 == 16 || v10 == 8) )
        goto LABEL_30;
    }
  }
  else if ( v8 == 8 )
  {
    if ( sub_803DD60(result) )
    {
      result = sub_81325C0(v5);
      if ( result == 16 && v11 == 8 )
        goto LABEL_30;
    }
    else
    {
      result = sub_81325C0(v5);
      if ( v12 == 16 && result == 8 )
        goto LABEL_30;
    }
  }
  else if ( sub_803DD60(result) )
  {
    result = sub_81325C0(v5);
    if ( v13 == 32 && result == 32 )
      goto LABEL_30;
  }
  else
  {
    result = sub_81325C0(v5);
    if ( v14 == 32 && result == 32 )
      goto LABEL_30;
  }
  return result;
}


// 0x812bc14
int sub_812BC14()
{
  int v0; // r5

  return (*(&off_812BC28 + *(v0 + 12)))();
}


// 0x812bc38
void sub_812BC38()
{
  int v0; // r5
  int v1; // r10
  _DWORD *v2; // r0
  _DWORD *v3; // r1
  signed int v4; // r2
  unsigned __int8 v5; // vf
  char v6; // r7
  int v7; // r6
  char v8; // zf
  int v9; // r6

  if ( *(v0 + 16) == 15 )
  {
    *(v0 + 12) = 8;
    *(v0 + 40) = 150;
  }
  else
  {
    v2 = (*(v1 + oToolkit_Flags2001c88_Ptr) + 1028);
    v3 = (*(v1 + oToolkit_Flags2001c88_Ptr) + 1092);
    v4 = 64;
    do
    {
      *v3 |= *v2;
      ++v2;
      ++v3;
      v5 = __OFSUB__(v4, 4);
      v4 -= 4;
    }
    while ( !(((v4 < 0) ^ v5) | (v4 == 0)) );
    SetEventFlagFromImmediate(32, 32);
    CopyByEightWords(byte_2033C00, *(v1 + oToolkit_Flags2001c88_Ptr) + 1028, 0x40u);
    v6 = 18;
    v7 = 0;
    while ( 1 )
    {
      if ( getChip_8021DA8(v7)[9] & 0x40 )
      {
        TestEventFlag(v7 + 8224);
        if ( !v8 )
        {
          TestEventFlag(v7 + 7712);
          if ( v8 )
          {
            TestEventFlag(v7 + 8736);
            if ( v8 )
              break;
          }
        }
      }
      if ( ++v7 >= byte_200 )
      {
        v6 = 17;
        break;
      }
    }
    *(v0 + 12) = 8;
    *(v0 + 16) = v6;
    *(v0 + 40) = 150;
    v9 = 0;
    do
    {
      if ( !(getChip_8021DA8(v9)[9] & 0x40) )
        ClearEventFlag(v9 + 8224);
      ++v9;
    }
    while ( v9 < byte_200 );
    sub_80070BC();
    if ( *(v0 + 16) != 17 )
      sub_803F798();
  }
}


// 0x812bd34
int sub_812BD34()
{
  int v0; // r5
  int result; // r0
  signed int v2; // r0
  int v3; // r1

  result = *(v0 + 40) - 1;
  *(v0 + 40) = result;
  if ( !result )
  {
    v2 = 52;
    v3 = *(v0 + 16);
    if ( v3 != 17 )
    {
      v2 = 44;
      if ( v3 != 15 )
      {
        sound_play(115);
        v2 = 51;
      }
    }
    sub_8132280(v2);
    result = 12;
    *(v0 + 12) = 12;
  }
  return result;
}


// 0x812bd60
void sub_812BD60()
{
  _BYTE *v0; // r5
  char v1; // zf
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r0

  sub_811F7EC();
  if ( !v1 )
  {
    v2 = v0[16];
    if ( v2 == 17 || v2 == 15 )
    {
      if ( eStruct200BC30_getJumpOffset00() )
      {
        v0[2] = 24;
        v0[3] = 0;
        v5 = engine_setScreeneffect(12, 16);
        v6 = sub_8149644(v5);
        sub_8149568(v6);
      }
      else
      {
        sub_8132614(0);
      }
    }
    else
    {
      v0[2] = 20;
      v0[3] = 0;
      engine_setScreeneffect(12, 16);
      v3 = eStruct200BC30_getJumpOffset00();
      if ( v3 )
      {
        v4 = sub_8149644(v3);
        sub_8149568(v4);
      }
    }
  }
}


// 0x812bdc0
int sub_812BDC0()
{
  int v0; // r5

  return (*(&off_812BDD4 + *(v0 + 12)))();
}


// 0x812bde4
void sub_812BDE4()
{
  int v0; // r5
  signed int v1; // r3
  signed int v2; // r7
  signed int v3; // r0
  unsigned int v4; // r1
  int v5; // r2
  signed int v6; // ST00_4
  unsigned int v7; // r2
  char v8; // r0

  v1 = 0;
  v2 = 0;
  do
  {
    v3 = *&byte_2033C00[v1];
    if ( *(&unk_20018C0 + v1) > v3 )
    {
      *(&unk_20018C0 + v1) = v3;
      v4 = *(&off_812BE48 + 2 * v1);
      v5 = *&byte_812BE9C[2 * v1];
      if ( v4 )
      {
        v6 = v1;
        SetEventFlag(v4);
        SetEventFlag(v7);
        v1 = v6;
        v2 = 1;
      }
    }
    v1 += 2;
  }
  while ( v1 < 40 );
  v8 = 17;
  if ( v2 )
    v8 = 18;
  *(v0 + 16) = v8;
  *(v0 + 12) = 8;
  *(v0 + 40) = 150;
  if ( *(v0 + 16) != 17 )
    sub_803F798();
}


// 0x812beec
int sub_812BEEC()
{
  int v0; // r5
  int result; // r0
  signed int v2; // r0

  result = *(v0 + 40) - 1;
  *(v0 + 40) = result;
  if ( !result )
  {
    v2 = 55;
    if ( *(v0 + 16) != 17 )
    {
      sound_play(115);
      v2 = 54;
    }
    sub_8132280(v2);
    result = 12;
    *(v0 + 12) = 12;
  }
  return result;
}


// 0x812bf10
void sub_812BF10()
{
  _BYTE *v0; // r5
  char v1; // zf
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0

  sub_811F7EC();
  if ( !v1 )
  {
    if ( v0[16] == 17 )
    {
      if ( eStruct200BC30_getJumpOffset00() )
      {
        v0[2] = 24;
        v0[3] = 0;
        v4 = engine_setScreeneffect(12, 16);
        v5 = sub_8149644(v4);
        sub_8149568(v5);
      }
      else
      {
        sub_8132614(0);
      }
    }
    else
    {
      v0[2] = 20;
      v0[3] = 0;
      engine_setScreeneffect(12, 16);
      v2 = eStruct200BC30_getJumpOffset00();
      if ( v2 )
      {
        v3 = sub_8149644(v2);
        sub_8149568(v3);
      }
    }
  }
}


// 0x812bf6c
int sub_812BF6C()
{
  int v0; // r5

  return (*(&off_812BF80 + *(v0 + 3)))();
}


// 0x812bf88
int sub_812BF88()
{
  int v0; // r5
  int result; // r0
  int v2; // r2
  int v3; // r3
  char v4; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v4 )
  {
    ZeroFillByEightWords(byte_2037780, byte_80, v2, v3);
    chatbox_8040818();
    SetEventFlagFromImmediate(23, 17);
    result = 4;
    *(v0 + 3) = 4;
  }
  return result;
}


// 0x812bfac
int sub_812BFAC()
{
  int v0; // r5
  int result; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int v5; // r0
  int v6; // r2
  int v7; // r3

  result = sub_8124B3C();
  if ( result )
  {
    sub_8129248(result, v2, v3, v4);
    v5 = sub_812B530();
    sub_8132614(v5);
    *(v0 + 3) = 16;
    *(v0 + 30) = 0;
    ZeroFillByWord(dword_20251A0, 0x10u, v6, v7);
    sub_812AFC8();
  }
  return result;
}


// 0x812bff4
int sub_812BFF4()
{
  int v0; // r5

  return (*(&off_812C008 + *(v0 + 3)))();
}


// 0x812c010
int sub_812C010()
{
  int v0; // r5
  int result; // r0
  int v2; // r2
  int v3; // r3
  char v4; // zf

  result = engine_isScreeneffectAnimating();
  if ( !v4 )
  {
    ZeroFillByEightWords(byte_2037780, byte_80, v2, v3);
    chatbox_8040818();
    SetEventFlagFromImmediate(23, 16);
    result = 4;
    *(v0 + 3) = 4;
  }
  return result;
}


// 0x812c034
int sub_812C034()
{
  int v0; // r5
  int result; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int v5; // r0
  int v6; // r2
  int v7; // r3

  result = sub_81378B4();
  if ( result )
  {
    sub_8129248(result, v2, v3, v4);
    v5 = sub_812B530();
    sub_8132614(v5);
    *(v0 + 3) = 16;
    *(v0 + 30) = 0;
    ZeroFillByWord(dword_20251A0, 0x10u, v6, v7);
    sub_812AFC8();
  }
  return result;
}


// 0x812c07c
int sub_812C07C()
{
  int v0; // r5

  return (*(&off_812C090 + *(v0 + 3)))();
}


// 0x812c094
int sub_812C094()
{
  int v0; // r5
  int result; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r3
  char v5; // zf
  int v6; // r0
  int v7; // r2
  int v8; // r3

  result = engine_isScreeneffectAnimating();
  if ( !v5 )
  {
    sub_8129248(result, v2, v3, v4);
    v6 = sub_812B530();
    sub_8132614(v6);
    *(v0 + 3) = 16;
    *(v0 + 30) = 0;
    ZeroFillByWord(dword_20251A0, 0x10u, v7, v8);
    sub_812AFC8();
  }
  return result;
}


// 0x812c0cc
int sub_812C0CC()
{
  int v0; // r5

  return (*(&off_812C0E0 + *(v0 + 3)))();
}


// 0x812c0ec
int sub_812C0EC()
{
  int v0; // r5
  int v1; // r7
  int *v2; // r1
  int result; // r0

  v1 = sub_81325CC();
  if ( *(v0 + 18) )
  {
    sub_812C21C(&unk_2034400);
    v2 = dword_30;
  }
  else
  {
    sub_812C194(&unk_2034400);
    v2 = &byte_48;
  }
  *(v1 + 8) = v2;
  *(v1 + 10) = 17185;
  *(v0 + 3) = 4;
  result = 0;
  *(v0 + 64) = 0;
  return result;
}


// 0x812c11c
int sub_812C11C()
{
  int v0; // r5
  int v1; // r0
  int *v2; // r1
  int result; // r0

  v1 = sub_81325CC();
  if ( *(v0 + 18) )
    v2 = dword_30;
  else
    v2 = &byte_48;
  *(v1 + 8) = v2;
  *(v1 + 10) = 17185;
  result = 0;
  *(v0 + 64) = 0;
  *(v0 + 46) = 0;
  return result;
}


// 0x812c140
void sub_812C140()
{
  int v0; // r5
  u32 v1; // r0

  v1 = sub_803EF7C();
  *(v1 + 2) = *(v0 + 46) - 30584;
  CopyWords(&unk_2034400 + *(v0 + 64), v1 + 4, 8u);
}


// 0x812c160
void sub_812C160()
{
  int v0; // r5
  int *v1; // r2
  int v2; // r1

  ++*(v0 + 46);
  v1 = &byte_48;
  if ( *(v0 + 18) )
    v1 = dword_30;
  v2 = *(v0 + 64) + 8;
  if ( v2 < v1 )
    *(v0 + 64) = v2;
}


// 0x812c194
int __fastcall sub_812C194(int a1)
{
  int v1; // r10
  int v2; // r7
  char v3; // zf
  int result; // r0
  int v5; // r3
  signed int v6; // r2
  int v7; // r5
  int v8; // [sp-Ch] [bp-20h]
  int v9; // [sp-8h] [bp-1Ch]

  v2 = a1;
  sub_800710A();
  if ( !v3 )
    return ZeroFillByByte(v2, &word_50 & 0xF0);
  ZeroFillByByte(v2, &word_50 & 0xF0);
  v5 = *(v1 + oToolkit_Flags2001c88_Ptr) + 964;
  v8 = *(v1 + oToolkit_Flags2001c88_Ptr) + 1028;
  v9 = *(v1 + oToolkit_Flags2001c88_Ptr) + 1092;
  v6 = 0;
  v7 = 0;
  do
  {
    result = *(v5 + v6) | *(v8 + v6) | *(v9 + v6);
    *(v2 + v6) = result;
    v7 += result;
    ++v6;
  }
  while ( v6 < &byte_40 );
  *(v2 + v6) = v7;
  return result;
}


// 0x812c21c
int __fastcall sub_812C21C(int a1)
{
  int v1; // r7
  int v2; // r4
  signed int v3; // r1
  int result; // r0

  v1 = a1;
  CopyWords(&unk_20018C0, a1, dword_28);
  v2 = 0;
  v3 = 0;
  do
  {
    result = *(v1 + v3);
    v2 += result;
    ++v3;
  }
  while ( v3 < 40 );
  *(v1 + 44) = v2;
  *(v1 + 48) = 1;
  return result;
}


// 0x812c24c
int sub_812C24C()
{
  _BYTE *v0; // r5
  int result; // r0

  v0[1] = 52;
  result = 0;
  v0[2] = 0;
  v0[3] = 0;
  return result;
}


