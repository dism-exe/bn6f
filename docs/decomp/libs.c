// 0x81440d8
// static () -> void
int sub_81440D8()
{
  int v1; // [sp+0h] [bp-14h]
  __int16 v2; // [sp+4h] [bp-10h]
  int v3; // [sp+10h] [bp-4h]

  word_2006DFC = InterruptMasterEnableRegister;
  InterruptEnableRegister &= 0xFF3Fu;
  SIOControlRegister = 0x2000;
  Timer3Control = 0;
  InterruptRequestFlags_IRQAcknowledge = 192;
  v1 = 0;
  SWI_CpuSet(&v1, &byte_200F460, 83886694);
  v2 = 0;
  SWI_CpuSet(&v2, &unk_200F44C, 16777218);
  byte_200F44D = 0;
  return v3;
}


// 0x8144158
int sub_8144158()
{
  int v1; // [sp+0h] [bp-1Ch]
  __int16 v2; // [sp+4h] [bp-18h]
  int v3; // [sp+18h] [bp-4h]

  InterruptEnableRegister &= 0xFF3Fu;
  SIOModeSelect_GeneralPurposeData = 0;
  SIOControlRegister = 24579;
  word_2006DFC = InterruptMasterEnableRegister;
  InterruptEnableRegister |= 0x80u;
  SIOData_Normal_8bitandUARTMode_ = 0;
  *&SIOData0_Parent__Multi_PlayerMode_ = 0;
  *&SIOData2_2ndChild__Multi_PlayerMode_ = 0;
  v1 = 0;
  SWI_CpuSet(&v1, &byte_200F460, 83886694);
  v2 = 0;
  SWI_CpuSet(&v2, &unk_200F44C, 16777218);
  byte_200F450 = 0;
  byte_2006DFE = 0;
  byte_2006E00 = 0;
  byte_200F440 = 0;
  byte_200F448 = 0;
  byte_2006E01 = 0;
  word_2006E02 = 0;
  word_2006E04 = 0;
  return v3;
}


// 0x8144240
int sub_8144240()
{
  int v1; // [sp+0h] [bp-4h]

  sub_8144158();
  sub_81440D8();
  return v1;
}


// 0x8144250
int __fastcall sub_8144250(_BYTE *a1, int a2, int a3)
{
  _BYTE *v3; // r4
  int v4; // r5
  int v5; // r6
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r0
  int v10; // r2

  v3 = a1;
  v4 = a2;
  v5 = a3;
  switch ( byte_200F461 )
  {
    case 0:
      sub_81440D8();
      byte_200F461 = 1;
      break;
    case 1:
      if ( *a1 == 1 )
      {
        sub_8144158();
        byte_200F461 = 2;
      }
      break;
    case 2:
      v6 = *a1;
      if ( v6 == 1 )
      {
        if ( byte_200F460 && byte_200F463 > 1u )
          byte_200F470 = 1;
      }
      else if ( v6 == 2 )
      {
        byte_200F461 = 0;
        SIOData_Normal_8bitandUARTMode_ = 0;
      }
      else
      {
        sub_8144380(byte_200F461);
      }
      break;
    case 3:
      sub_81443AC(byte_200F461);
      byte_200F461 = 4;
      goto LABEL_13;
    case 4:
LABEL_13:
      sub_81443FC(v4);
      sub_81444E4(v5);
      break;
    case 5:
      byte_200F475 = 2;
      break;
    default:
      break;
  }
  *v3 = 0;
  v7 = byte_200F462 | 4 * byte_200F463;
  if ( byte_200F460 == 8 )
    v7 |= 0x20u;
  v8 = byte_200F46C << 8;
  if ( byte_200F461 == 4 )
    v9 = v8 | 0x40 | v7;
  else
    v9 = v7 | v8;
  v10 = v9 | (byte_200F471 << 9) | (byte_200F472 << 16) | (byte_200F473 << 17) | (byte_200F474 << 18) | (byte_200F475 << 20);
  if ( byte_200F462 > 3u )
    v10 |= 0x400000u;
  return v10;
}


// 0x8144380
int sub_8144380()
{
  int v1; // [sp+0h] [bp-4h]

  if ( (SIOControlRegister & 0xC) != 8 || byte_200F462 )
    byte_200F460 = 0;
  else
    byte_200F460 = 8;
  return v1;
}


// 0x81443ac
int sub_81443AC()
{
  int v1; // [sp+4h] [bp-4h]

  if ( byte_200F460 )
  {
    Timer3Counter_Reload = -132;
    Timer3Control = 65;
    word_2006DFC = InterruptMasterEnableRegister;
    InterruptEnableRegister |= 0x40u;
  }
  return v1;
}


// 0x81443fc
int __fastcall sub_81443FC(__int16 *a1)
{
  __int16 *v1; // r3
  unsigned int v2; // r0
  unsigned int v3; // r2
  __int16 v4; // r1
  int v6; // [sp+1Ch] [bp-4h]

  v1 = a1;
  word_2006DFC = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  if ( byte_200F671 > 0x1Du )
  {
    byte_200F474 |= 1u;
  }
  else
  {
    v2 = (byte_200F671 + byte_200F670) & 0xFF;
    if ( v2 > 0x1D )
      v2 = (v2 - 30) & 0xFF;
    v3 = 0;
    do
    {
      v4 = *v1;
      word_2006E02 |= *v1;
      word_200F490[30 * v3 + v2] = v4;
      *v1 = 0;
      ++v1;
      v3 = (v3 + 1) & 0xFF;
    }
    while ( v3 <= 7 );
  }
  if ( word_2006E02 )
  {
    ++byte_200F671;
    word_2006E02 = 0;
  }
  InterruptMasterEnableRegister = word_2006DFC;
  byte_200F440 = byte_200F671;
  return v6;
}


// 0x81444e4
int __fastcall sub_81444E4(int a1)
{
  int v1; // r3
  unsigned int v2; // r6
  unsigned int v3; // r2
  unsigned __int8 v4; // r5
  int v5; // r3
  unsigned int v6; // r1
  int v7; // r3
  unsigned int v8; // r9
  unsigned int v9; // r2
  unsigned __int8 v10; // r5
  int v11; // r6
  unsigned int v12; // r4
  int v13; // r3
  int v15; // [sp+1Ch] [bp-4h]

  word_2006DFC = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  if ( byte_200FDF5 )
  {
    v7 = 0;
    v8 = byte_200F463;
    do
    {
      v9 = 0;
      v10 = v7 + 1;
      if ( v8 > 0 )
      {
        v11 = 8 * v7 + a1;
        v12 = byte_200F463;
        v13 = 2 * byte_200FDF4 + 60 * v7;
        do
        {
          *(2 * v9 + v11) = *(&word_200F674[240 * v9] + v13);
          v9 = (v9 + 1) & 0xFF;
        }
        while ( v9 < v12 );
      }
      v7 = v10;
    }
    while ( v10 <= 7u );
    --byte_200FDF5;
    if ( ++byte_200FDF4 > 0x1Du )
      byte_200FDF4 = 0;
    byte_200F46C = 0;
  }
  else
  {
    v1 = 0;
    v2 = byte_200F463;
    do
    {
      v3 = 0;
      v4 = v1 + 1;
      if ( v2 > 0 )
      {
        v5 = 8 * v1 + a1;
        v6 = byte_200F463;
        do
        {
          *(2 * v3 + v5) = 0;
          v3 = (v3 + 1) & 0xFF;
        }
        while ( v3 < v6 );
      }
      v1 = v4;
    }
    while ( v4 <= 7u );
    byte_200F46C = 1;
  }
  InterruptMasterEnableRegister = word_2006DFC;
  return v15;
}


// 0x81445f8
int sub_81445F8()
{
  int v1; // [sp+4h] [bp-4h]

  if ( byte_200F460 )
  {
    if ( byte_200F461 != 2 )
    {
      if ( byte_200F461 != 4 )
        return v1;
      if ( byte_200F46D > 8u )
      {
        if ( byte_200F475 )
          return v1;
        byte_200F46D = byte_200F475;
      }
      else if ( !byte_200F472 )
      {
        byte_200F475 = 1;
        return v1;
      }
    }
    sub_814474C();
    if ( byte_200F454 == 2 && ++byte_200F450 > 6u )
    {
      byte_200F475 = 2;
      byte_200F462 = 0;
      byte_200F463 = 0;
      byte_200F471 = 0;
    }
  }
  else if ( (byte_200F461 == 4 || byte_200F461 == 2) && ++byte_200F450 > 6u )
  {
    if ( byte_200F461 == 4 )
      byte_200F475 = 2;
    if ( byte_200F461 == 2 )
    {
      byte_200F462 = byte_200F460;
      byte_200F463 = byte_200F460;
      byte_200F471 = byte_200F460;
    }
  }
  return v1;
}


// 0x814469c
int sub_814469C()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_8144BBC();
  sub_814474C(v0);
  return v2;
}


// 0x81446ac
int sub_81446AC()
{
  int v0; // r0
  int v1; // r0
  unsigned int v2; // r2
  int v4; // [sp+4h] [bp-4h]

  byte_200F462 = *&SIOControlRegister << 26 >> 30;
  if ( byte_200F461 == 2 )
  {
    if ( sub_814475C() << 24 )
    {
      if ( byte_200F460 )
      {
        byte_200F461 = 3;
        byte_200F46D = 8;
      }
      else
      {
        byte_200F461 = 4;
      }
    }
    else
    {
      v2 = 0;
      do
      {
        byte_200F48A[v2];
        byte_200F48A[v2] = -1;
        v2 = (v2 + 1) & 0xFF;
      }
      while ( v2 <= 3 );
    }
  }
  else if ( byte_200F461 == 4 )
  {
    v0 = sub_8144920();
    v1 = sub_8144AFC(v0);
    sub_8144BF0(v1);
  }
  ++byte_200F46D;
  byte_200F450 = 0;
  if ( byte_200F46D == 8 )
    byte_200F448 = byte_200FDF5;
  return v4;
}


// 0x814474c
__int16 *sub_814474C()
{
  __int16 *result; // r0

  result = &SIOControlRegister;
  SIOControlRegister |= 0x80u;
  return result;
}


// 0x814475c
signed int sub_814475C()
{
  unsigned int v0; // r9
  unsigned int v1; // r12
  signed __int16 v2; // r2
  unsigned int v3; // r4
  unsigned int v4; // r4
  int v5; // r2
  int v6; // r3
  char *v7; // r1
  char v8; // r0
  char v10; // r0
  signed __int16 v11; // r2

  v0 = 0;
  v1 = 0xFFFF;
  if ( byte_200F454 && byte_200F454 != 2 )
  {
    if ( byte_200F470 == 1 )
      v11 = -28673;
    else
      v11 = -22848;
    SIOData_Normal_8bitandUARTMode_ = v11;
    byte_200F470 = 0;
    dword_200F464 = *&SIOData0_Parent__Multi_PlayerMode_;
    dword_200F468 = *&SIOData2_2ndChild__Multi_PlayerMode_;
    return 0;
  }
  if ( byte_200F470 == 1 )
    v2 = -28673;
  else
    v2 = -22848;
  SIOData_Normal_8bitandUARTMode_ = v2;
  byte_200F470 = 0;
  v3 = 0;
  do
  {
    byte_200F48A[v3];
    byte_200F48A[v3] = -1;
    v3 = (v3 + 1) & 0xFF;
  }
  while ( v3 <= 3 );
  dword_200F464 = *&SIOData0_Parent__Multi_PlayerMode_;
  dword_200F468 = *&SIOData2_2ndChild__Multi_PlayerMode_;
  v4 = 0;
  while ( 1 )
  {
    v5 = 2 * v4;
    v6 = *(&dword_200F464 + v4);
    if ( (v6 & 0xFFFFFFFC) != 42688 && v6 != 36863 && v6 != 65280 )
      break;
    if ( *(&dword_200F464 + v5) == 65280 )
    {
      v7 = &byte_200F48A[v4];
      v8 = 2;
    }
    else
    {
      v7 = &byte_200F48A[v4];
      v8 = 1;
    }
    *v7 = v8;
    v0 = (v0 + 1) & 0xFF;
    if ( v1 > *(&dword_200F464 + v5) && *(&dword_200F464 + v5) )
      v1 = *(&dword_200F464 + v5);
LABEL_22:
    v4 = (v4 + 1) & 0xFF;
    if ( v4 > 3 )
      goto LABEL_23;
  }
  if ( v6 == 0xFFFF )
  {
    if ( v4 == byte_200F462 )
      v0 = 0;
    goto LABEL_22;
  }
  byte_200F48A[v4] = -1;
  v0 = 0;
LABEL_23:
  byte_200F463 = v0;
  if ( v0 <= 1 )
    goto LABEL_38;
  if ( v0 == byte_2006E00 && dword_200F464 == 36863 )
    return 1;
  if ( byte_200F463 <= 1u )
LABEL_38:
    v10 = 0;
  else
    v10 = (v1 & 3) + 1;
  byte_200F471 = v10;
  byte_2006E00 = byte_200F463;
  return 0;
}


// 0x8144920
int sub_8144920()
{
  unsigned int v0; // r4
  unsigned int i; // r4
  int v2; // r2
  unsigned int v3; // r0
  unsigned int v4; // r4
  unsigned int v5; // r7
  int v6; // r0
  __int16 v7; // r2
  char *v8; // r1
  __int16 v9; // r0
  int v11; // [sp+0h] [bp-24h]
  int v12; // [sp+4h] [bp-20h]
  int v13; // [sp+20h] [bp-4h]

  v11 = *&SIOData0_Parent__Multi_PlayerMode_;
  v12 = *&SIOData2_2ndChild__Multi_PlayerMode_;
  v0 = 0;
  do
  {
    sub_803F618(*(&v11 + v0), v0, byte_200F489);
    v0 = (v0 + 1) & 0xFF;
  }
  while ( v0 <= 3 );
  if ( !byte_200F488 )
  {
    for ( i = 0; i < byte_200F463; i = (i + 1) & 0xFF )
    {
      v2 = byte_200F48A[i];
      if ( v2 == 1 )
      {
        if ( word_200F476 != *(&v11 + i) && byte_2006E01 )
          byte_200F473 = 1;
      }
      else if ( v2 == 2 && *(&v11 + i) == 65280 )
      {
        word_200F480[i] = 0;
      }
    }
    word_200F476 = 0;
    byte_2006E01 = 1;
    return v13;
  }
  v3 = (byte_200FDF5 + byte_200FDF4) & 0xFF;
  if ( v3 > 0x1D )
    v3 = (v3 - 30) & 0xFF;
  if ( byte_200FDF5 > 0x1Du )
  {
    byte_200F474 |= 2u;
  }
  else
  {
    v4 = 0;
    if ( byte_200F463 > 0u )
    {
      v5 = v3;
      do
      {
        v6 = byte_200F48A[v4];
        if ( v6 == 1 )
        {
          v7 = *(&v11 + v4);
          word_200F476 += v7;
          word_2006E04 |= v7;
          word_200F674[240 * v4 + 30 * byte_200F489 + v5] = v7;
        }
        else if ( v6 == 2 )
        {
          switch ( byte_200F488 )
          {
            case 4:
              v8 = &unk_200F478 + 2 * v4;
              v9 = *(&v11 + v4);
LABEL_28:
              *v8 = v9;
              break;
            case 3:
              word_200F480[v4] += 1 + *(&v11 + v4);
              break;
            case 5:
              v8 = &word_200F480[v4];
              v9 = *(&v11 + v4) + *v8;
              goto LABEL_28;
          }
        }
        v4 = (v4 + 1) & 0xFF;
      }
      while ( v4 < byte_200F463 );
    }
  }
  if ( ++byte_200F489 == 8 && word_2006E04 )
  {
    ++byte_200FDF5;
    word_2006E04 = 0;
  }
  return v13;
}


// 0x8144afc
int sub_8144AFC()
{
  char *v0; // r1
  char v1; // r0
  int v3; // [sp+0h] [bp-4h]

  if ( byte_200F488 != 8 )
  {
    if ( !byte_200F488 && !byte_200F671 )
      byte_2006DFE = 1;
    if ( byte_2006DFE )
      SIOData_Normal_8bitandUARTMode_ = 0;
    else
      SIOData_Normal_8bitandUARTMode_ = word_200F490[30 * byte_200F488 + byte_200F670];
    v0 = &byte_200F488;
    v1 = byte_200F488 + 1;
    goto LABEL_13;
  }
  SIOData_Normal_8bitandUARTMode_ = word_200F476;
  v0 = &byte_2006DFE;
  if ( byte_2006DFE )
  {
    v1 = 0;
LABEL_13:
    *v0 = v1;
    return v3;
  }
  --byte_200F671;
  if ( ++byte_200F670 > 0x1Du )
    byte_200F670 = byte_2006DFE;
  return v3;
}


// 0x8144bbc
int sub_8144BBC()
{
  int v1; // [sp+0h] [bp-4h]

  if ( byte_200F460 )
  {
    Timer3Control &= 0xFF7Fu;
    Timer3Counter_Reload = -132;
  }
  return v1;
}


// 0x8144bf0
int sub_8144BF0()
{
  int v1; // [sp+0h] [bp-4h]

  if ( byte_200F489 == 8 )
  {
    byte_200F488 = 0;
    byte_200F489 = 0;
  }
  else if ( byte_200F460 )
  {
    Timer3Control |= 0x80u;
  }
  return v1;
}


// 0x8144ce0
int sub_8144CE0()
{
  return byte_200F461;
}


// 0x8144cec
int sub_8144CEC()
{
  return byte_200F489;
}


// 0x8144cf8
char __fastcall sub_8144CF8(char result)
{
  byte_200F454 = result;
  return result;
}


// 0x8144d04
int __fastcall sub_8144D04(unsigned __int8 a1)
{
  return byte_200F48A[a1];
}


// 0x8144d18
int sub_8144D18()
{
  return byte_200F440;
}


// 0x8144d24
int sub_8144D24()
{
  return byte_200F448;
}


// 0x8144d30
signed int sub_8144D30()
{
  signed int result; // r0

  result = 5;
  byte_200F461 = 5;
  return result;
}


// 0x8144d3c
BOOL sub_8144D3C()
{
  return byte_200F440 > 5u || byte_200F448 > 5u;
}


// 0x8144d64
int sub_8144D64()
{
  int v0; // r4

  v0 = sub_8149718();
  if ( v0 == 32769 )
    byte_200FE08 = 1;
  if ( byte_200FE04 != 23 && byte_200FE04 != 1 )
  {
    byte_200FE05 = 0;
    byte_200FE04 = 0;
  }
  byte_200FE07 = 0;
  byte_200FE0D = 0;
  byte_200FE01 = 0;
  eStruct200FE00 = 0;
  byte_200FE06 = -1;
  sub_81464B4();
  return v0;
}


// 0x8144db0
int __fastcall sub_8144DB0(unsigned __int8 a1)
{
  signed int v1; // r2
  int v3; // [sp+0h] [bp-4h]

  v1 = a1;
  if ( *dword_2010CC0 )
  {
    byte_200FE03 = 0;
  }
  else
  {
    v1 = 0;
    if ( byte_200FE02 == 1 )
      v1 = 1;
  }
  sub_814B0B4(v1);
  return v3;
}


// 0x8144df0
signed int __fastcall sub_8144DF0(int a1, int a2)
{
  int v2; // r5
  int v3; // r6
  __int16 v5; // [sp+0h] [bp-14h]

  v2 = a1;
  v3 = a2;
  if ( !a1 )
    return 4;
  v5 = 0;
  SWI_CpuSet(&v5, &eStruct200FE00, 16777252);
  byte_200FE06 = -1;
  dword_200FE40 = v2;
  dword_200FE44 = v3;
  sub_8149464(sub_8145D54);
  sub_8149470(sub_8145658);
  return 0;
}


// 0x8144e44
int sub_8144E44()
{
  __int16 v1; // [sp+0h] [bp-Ch]
  int v2; // [sp+8h] [bp-4h]

  v1 = 0;
  SWI_CpuSet(&v1, &eStruct200FE00, 16777248);
  byte_200FE06 = -1;
  return v2;
}


// 0x8144e70
int __fastcall sub_8144E70(int a1)
{
  int v1; // r4
  int v3; // [sp+4h] [bp-4h]

  v1 = a1;
  sub_8144EA4();
  byte_200FE04 = 1;
  byte_200FE05 = 2;
  dword_200FE3C = v1;
  byte_200FE09 = *(v1 + 17);
  word_200FE32 = *(v1 + 18);
  word_200FE18 = *(v1 + 20);
  if ( *(v1 + 16) )
    byte_200FE0B = 1;
  return v3;
}


// 0x8144ea4
int sub_8144EA4()
{
  unsigned int v0; // r3
  int v2; // [sp+8h] [bp-4h]

  byte_200FE05 = 0;
  byte_200FE04 = 0;
  byte_200FE06 = -1;
  byte_200FE07 = 0;
  byte_200FE10 = 0;
  byte_200FE0C = 0;
  byte_200FE24 = 0;
  byte_200FE30 = 0;
  v0 = 0;
  do
  {
    *&algn_200FE28[2 * v0] = 0;
    algn_200FE34[v0] = 0;
    v0 = (v0 + 1) & 0xFF;
  }
  while ( v0 <= 3 );
  return v2;
}


// 0x8144eec
// () -> void
signed int eStruct200FE00_setUnk04To15h()
{
  signed int result; // r0

  result = 21;
  byte_200FE04 = 21;
  return result;
}


// 0x8144ef8
signed int __fastcall sub_8144EF8(unsigned __int8 a1, __int16 a2, __int16 a3, unsigned __int16 *a4)
{
  unsigned __int16 *v4; // r6
  unsigned int v5; // r5
  __int16 v6; // r7
  __int16 v7; // r8
  signed int result; // r0
  unsigned int v9; // r2
  unsigned __int16 *v10; // r1
  int v11; // r0

  v4 = a4;
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ( byte_200FE04 && (byte_200FE04 != 8 || a1 != 1) )
  {
    word_200FE14 = 1;
    sub_81461B0(243, 1);
    result = 1;
  }
  else if ( sub_814A7F0() << 24 )
  {
    v9 = 0;
    v10 = v4 + 1;
    if ( *v4 != 0xFFFF )
    {
      do
      {
        v9 = (v9 + 1) & 0xFF;
        if ( v9 > 0xF )
          break;
        v11 = *v10;
        ++v10;
      }
      while ( v11 != 0xFFFF );
    }
    if ( v9 == 16 )
    {
      word_200FE14 = 4;
      sub_81461B0(243, 1);
      result = 4;
    }
    else
    {
      if ( v5 <= 1 )
      {
        byte_200FE07 = 0;
      }
      else
      {
        byte_200FE07 = 1;
        v5 = 1;
        v6 = 0;
      }
      if ( v5 )
      {
        byte_200FE04 = 5;
      }
      else
      {
        byte_200FE04 = 9;
        if ( byte_200FE0B )
          byte_200FE0B = 2;
      }
      byte_200FE06 = v5;
      word_200FE1A = v6;
      word_200FE26 = v7;
      dword_200FE20 = v4;
      result = 0;
    }
  }
  else
  {
    word_200FE14 = 2;
    sub_81461B0(243, 1);
    result = 2;
  }
  return result;
}


// 0x8144fd0
signed int __fastcall sub_8144FD0(unsigned __int16 a1, __int16 a2)
{
  int v2; // r6
  __int16 v3; // r8
  signed int result; // r0
  unsigned int v5; // r2
  unsigned int v6; // r3
  char v7; // r0

  v2 = a1;
  v3 = a2;
  if ( byte_200FE04 && ((byte_200FE04 - 9) & 0xFFu) > 2 )
  {
    word_200FE14 = 1;
    sub_81461B0(243, 1);
    result = 1;
  }
  else if ( sub_814A7F0() << 24 )
  {
    v5 = 0;
    v6 = *(dword_2010CC0 + 8);
    if ( v6 > 0 && *(dword_2010CC0 + 20) != v2 )
    {
      do
        v5 = (v5 + 1) & 0xFF;
      while ( v5 < v6 && *(dword_2010CC0 + 32 * v5 + 20) != v2 );
    }
    if ( *(dword_2010CC0 + 8) && v5 != *(dword_2010CC0 + 8) )
    {
      if ( byte_200FE04 && byte_200FE04 != 9 )
      {
        byte_200FE04 = 11;
        v7 = 12;
      }
      else
      {
        byte_200FE04 = 12;
        v7 = 13;
      }
      byte_200FE05 = v7;
      word_200FE1E = v2;
      word_200FE1A = v3;
      if ( byte_200FE07 )
        byte_200FE07 = 7;
      result = 0;
    }
    else
    {
      word_200FE14 = 3;
      sub_81461B0(243, 1);
      result = 3;
    }
  }
  else
  {
    word_200FE14 = 2;
    sub_81461B0(243, 1);
    result = 2;
  }
  return result;
}


// 0x81450b4
int __fastcall sub_81450B4(unsigned __int8 a1)
{
  unsigned int v1; // r4
  int v2; // r4
  int v4; // [sp+10h] [bp-4h]

  if ( a1 & byte_200FE30 )
  {
    byte_200FE30 &= ~a1;
    v1 = 0;
    do
    {
      if ( (a1 >> v1) & 1 )
        algn_200FE34[v1] = 0;
      v1 = (v1 + 1) & 0xFF;
    }
    while ( v1 <= 3 );
    v2 = (*(dword_2010CC0 + 3) & a1);
    if ( *(dword_2010CC0 + 3) & a1 )
      sub_81461D8(*(dword_2010CC0 + 3) & a1);
    word_200FE14 = v2;
    sub_81461B0(51, v2);
  }
  return v4;
}


// 0x8145120
int __fastcall sub_8145120(int a1)
{
  signed int v1; // r2
  int v3; // [sp+8h] [bp-4h]

  v1 = 0;
  byte_200FE07 = 0;
  if ( a1 << 24 )
  {
    sub_8144EA4();
    byte_200FE04 = 23;
  }
  else
  {
    switch ( byte_200FE04 )
    {
      case 5:
        byte_200FE04 = 8;
        byte_200FE05 = 0;
        v1 = 19;
        break;
      case 6:
      case 7:
        byte_200FE04 = 7;
        byte_200FE05 = 8;
        break;
      case 8:
      case 0xF:
        break;
      case 9:
        byte_200FE05 = 0;
        byte_200FE04 = 0;
        v1 = 33;
        break;
      case 0xA:
      case 0xB:
        byte_200FE04 = 11;
        byte_200FE05 = 0;
        break;
      case 0xC:
        byte_200FE05 = 0;
        byte_200FE04 = 0;
        v1 = 35;
        break;
      case 0xD:
      case 0xE:
        byte_200FE04 = 14;
        break;
      case 0x10:
        byte_200FE04 = byte_200FE11;
        byte_200FE05 = byte_200FE12;
        sub_81461D8(*(dword_2010CC0 + 3));
        word_200FE14 = *(dword_2010CC0 + 3);
        sub_81461B0(51, 1);
        return v3;
      case 0x11:
      case 0x12:
        byte_200FE04 = 18;
        break;
      default:
        byte_200FE05 = 0;
        byte_200FE04 = 0;
        v1 = 67;
        break;
    }
    if ( !byte_200FE04 )
      sub_81461B0(v1, 0);
  }
  return v3;
}


// 0x8145210
signed int __fastcall sub_8145210(unsigned __int16 a1)
{
  signed int v1; // r8
  unsigned int v2; // r2
  signed int v3; // r0
  int v4; // r0
  unsigned int v5; // r2
  int v6; // r4
  unsigned int v7; // r2
  _WORD *v8; // r1
  int v9; // r0
  int v11; // [sp+0h] [bp-20h]

  v1 = 0;
  sub_814A060(a1, &v11, &v11 + 1, &v11 + 2);
  if ( v11 )
  {
    word_200FE14 = v11;
    word_200FE16 = BYTE1(v11);
    if ( byte_200FE09 )
    {
      byte_200FE0A = 1;
      if ( !byte_200FE06 && !BYTE1(v11) )
        byte_200FE0A = 4;
      if ( byte_200FE0A == 1 )
      {
        v2 = 0;
        do
        {
          if ( (v11 >> v2) & 1 )
          {
            byte_200FE30 |= 1 << v2;
            algn_200FE34[v2] = word_200FE32;
          }
          v2 = (v2 + 1) & 0xFF;
        }
        while ( v2 <= 3 );
        v3 = 49;
      }
      else
      {
        byte_200FE0A = 0;
        sub_81461D8(v11);
        v1 = 1;
        v3 = 51;
      }
      v4 = sub_81461B0(v3, 1);
    }
    else
    {
      sub_81461D8(v11);
      v1 = 1;
      v4 = sub_81461B0(48, 2);
    }
    sub_81464B4(v4);
  }
  if ( *dword_2010CC0 == 1 )
  {
    if ( BYTE2(v11) )
    {
      v5 = 0;
      do
      {
        if ( (byte_200FE30 >> v5) & 1 && (BYTE2(v11) >> v5) & 1 )
          algn_200FE34[v5] = 0;
        v5 = (v5 + 1) & 0xFF;
      }
      while ( v5 <= 3 );
      byte_200FE30 &= ~BYTE2(v11);
      word_200FE14 = BYTE2(v11);
      sub_81461B0(50, 1);
    }
    if ( !byte_200FE30 )
      goto LABEL_38;
    v6 = 0;
    v7 = 0;
    do
    {
      if ( (byte_200FE30 >> v7) & 1 )
      {
        v8 = &algn_200FE34[v7];
        if ( *v8 )
        {
          v9 = *v8 - 1;
          *v8 = v9;
          if ( !(v9 << 16) )
          {
            byte_200FE30 &= ~(1 << v7);
            v6 = (v6 | (1 << v7)) & 0xFF;
          }
        }
      }
      v7 = (v7 + 1) & 0xFF;
    }
    while ( v7 <= 3 );
    if ( v6 )
    {
      sub_81461D8(v6);
      v1 = 1;
      word_200FE14 = v6;
      sub_81461B0(51, 1);
    }
    if ( !byte_200FE30 )
LABEL_38:
      byte_200FE0A = 0;
  }
  return v1;
}


// 0x81453d4
int sub_81453D4()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  if ( sub_8149F80() << 16 )
  {
    v0 = sub_81461B0(241, 0);
    sub_81464B4(v0);
  }
  return v2;
}


// 0x81453f0
int __fastcall sub_81453F0(int a1)
{
  char *v1; // r0
  int v2; // r0
  signed int v3; // r2
  signed int v4; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v9; // [sp+4h] [bp-4h]

  if ( dword_200FE40 || !byte_200FE04 )
  {
    if ( byte_200FE07 )
      sub_81455E8(a1);
    do
    {
      if ( byte_200FE04 )
      {
        sub_8149568(byte_200FE04);
        byte_200FE0E = 1;
        v1 = (byte_200FE04 - 1);
        switch ( byte_200FE04 )
        {
          case 1:
            if ( sub_8144D64() != 32769 )
            {
              byte_200FE05 = 0;
              byte_200FE04 = 0;
              v4 = 255;
              goto LABEL_14;
            }
            v1 = &eStruct200FE00;
            byte_200FE04 = byte_200FE05;
            byte_200FE05 = 3;
            break;
          case 2:
            v1 = sub_8149754();
            break;
          case 3:
            v1 = sub_814978C(*(dword_200FE3C + 2), *dword_200FE3C, *(dword_200FE3C + 1));
            break;
          case 4:
            v1 = sub_81497F4(*(dword_200FE3C + 4), *(dword_200FE3C + 6), *(dword_200FE3C + 8), *(dword_200FE3C + 12));
            break;
          case 5:
            v1 = sub_814991C();
            break;
          case 6:
            v1 = sub_81499F8();
            break;
          case 7:
            v1 = sub_8149A0C();
            break;
          case 9:
            v1 = sub_8149BE4();
            break;
          case 0xA:
            v1 = sub_8149C1C();
            break;
          case 0xB:
            v1 = sub_8149C54();
            break;
          case 0xC:
            v1 = sub_8149D78(word_200FE1E);
            break;
          case 0xD:
            v1 = sub_8149DE0();
            break;
          case 0xE:
            v1 = sub_8149F48();
            break;
          case 0x10:
            v1 = sub_814A63C(*(dword_2010CC0 + 3));
            break;
          case 0x11:
            v1 = sub_814A698();
            break;
          case 0x12:
            v1 = sub_814A780();
            break;
          case 0x13:
            v1 = sub_814A7C4();
            break;
          case 0x15:
            v1 = sub_8149644(v1);
            break;
          case 0x17:
            v2 = sub_8144D64();
            v3 = 255;
            if ( v2 == 32769 )
              v3 = 68;
            byte_200FE05 = 0;
            byte_200FE04 = 0;
            v4 = v3;
LABEL_14:
            v1 = sub_81461B0(v4, 0);
            break;
          default:
            break;
        }
        sub_8149568(v1);
        byte_200FE0E = 0;
      }
    }
    while ( ((byte_200FE04 - 18) & 0xFFu) <= 1 );
    if ( *dword_2010CC0 != 1 || !(sub_8145210(0) << 24) )
    {
      v5 = sub_8145DD8();
      v6 = sub_8145FFC(v5);
      v7 = sub_814610C(v6);
      sub_81462D8(v7);
    }
  }
  else
  {
    byte_200FE04 = dword_200FE40;
  }
  return v9;
}


// 0x81455e8
int __fastcall sub_81455E8(int a1)
{
  int v1; // r0
  char v2; // r0
  int v4; // [sp+4h] [bp-4h]

  if ( byte_200FE07 == 5 )
  {
    byte_200FE06 = 1;
    byte_200FE04 = 5;
    word_200FE1A = word_200FE1C;
    if ( word_200FE1C << 16 )
      byte_200FE07 = 6;
    else
      byte_200FE07 = 1;
  }
  if ( byte_200FE07 == 1 )
  {
    byte_200FE06 = 1;
    byte_200FE04 = 5;
    v1 = sub_814DB34(a1, 140);
    word_200FE1A = v1;
    word_200FE1C = 140 - v1;
    if ( v1 << 16 )
      v2 = 2;
    else
      v2 = 3;
    byte_200FE07 = v2;
  }
  if ( byte_200FE07 == 3 )
  {
    byte_200FE06 = 0;
    word_200FE1A = 40;
    byte_200FE07 = 4;
    byte_200FE04 = 9;
  }
  return v4;
}


// 0x8145658
int __fastcall sub_8145658(unsigned __int16 a1, unsigned __int16 a2)
{
  signed int v2; // r8
  int v3; // r6
  signed int v4; // r0
  char v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int v10; // r0
  _WORD *v11; // r1
  int v12; // r0
  int v13; // r0
  int v14; // r0
  int v15; // r0
  int v16; // r0
  unsigned int v17; // r3
  unsigned int v18; // r3
  char v19; // r0
  int v20; // r0
  int v21; // r0
  int v22; // r0
  unsigned __int8 v24; // [sp+0h] [bp-1Ch]
  int v25; // [sp+18h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( byte_200FE0E )
  {
    byte_200FE0E = 0;
    switch ( a1 )
    {
      case 0x10u:
        if ( !a2 )
        {
          byte_200FE04 = byte_200FE05;
          byte_200FE05 = 4;
        }
        break;
      case 0x16u:
        if ( !a2 )
        {
          byte_200FE05 = 0;
          byte_200FE04 = 0;
          v4 = 0;
          goto LABEL_76;
        }
        break;
      case 0x17u:
        if ( !a2 )
        {
          byte_200FE04 = byte_200FE05;
          byte_200FE05 = 0;
        }
        break;
      case 0x19u:
        if ( !a2 )
        {
          v5 = 6;
          goto LABEL_40;
        }
        break;
      case 0x1Au:
        if ( word_200FE1A )
        {
          v6 = word_200FE1A-- - 1;
          if ( !(v6 << 16) )
          {
            byte_200FE04 = 7;
            byte_200FE05 = 8;
          }
        }
        break;
      case 0x1Bu:
        if ( !a2 )
        {
          byte_200FE04 = byte_200FE05;
          byte_200FE05 = 0;
          if ( !byte_200FE07 )
          {
            v4 = 19;
            goto LABEL_76;
          }
        }
        break;
      case 0x1Cu:
        if ( !a2 )
        {
          if ( byte_200FE0B == 1 && word_200FE1A > 1u )
            --word_200FE1A;
          v5 = 10;
          goto LABEL_40;
        }
        break;
      case 0x1Du:
        if ( !a2 )
        {
          v7 = sub_8146138();
          v24 = v7;
          word_200FE14 = v7;
          if ( v7 )
            sub_81461B0(32, 1);
          if ( byte_200FE0B && word_200FE1A != 1 && *(dword_2010CC0 + 8) == 4 )
          {
            v8 = sub_8149C54(4);
            sub_8149568(v8);
            byte_200FE04 = 9;
            byte_200FE0B = 1;
          }
        }
        if ( word_200FE1A )
        {
          v9 = word_200FE1A-- - 1;
          if ( !(v9 << 16) )
          {
            byte_200FE04 = 11;
            byte_200FE05 = 0;
          }
        }
        break;
      case 0x1Eu:
        if ( !a2 )
        {
          byte_200FE04 = byte_200FE05;
          if ( byte_200FE07 )
          {
            if ( byte_200FE07 != 7 )
            {
              byte_200FE04 = 5;
              byte_200FE07 = 5;
            }
          }
          else if ( !(byte_200FE05 << 24) )
          {
            v4 = 33;
            goto LABEL_76;
          }
        }
        break;
      case 0x1Fu:
        if ( !a2 )
        {
          v5 = 13;
LABEL_40:
          byte_200FE05 = v5;
          byte_200FE04 = v5;
        }
        break;
      case 0x20u:
        if ( !a2 && !(sub_8149F14(&v24, &byte_200FE10) << 16) && !v24 )
          byte_200FE04 = 14;
        if ( word_200FE1A )
        {
          v10 = word_200FE1A-- - 1;
          if ( !(v10 << 16) )
            byte_200FE04 = 14;
        }
        break;
      case 0x21u:
        if ( !a2 && !(sub_8149F14(&v24, &byte_200FE10) << 16) )
        {
          if ( v24 )
          {
            byte_200FE05 = 0;
            byte_200FE04 = 0;
            word_200FE1E = 35;
            word_200FE14 = v24;
            if ( byte_200FE07 )
            {
              byte_200FE07 = 3;
              byte_200FE04 = 9;
            }
          }
          else
          {
            byte_200FE04 = 19;
            byte_200FE05 = 15;
            word_200FE1E = 34;
            word_200FE14 = byte_200FE10;
          }
          sub_81461B0(word_200FE1E, 1);
          word_200FE1E = 0;
        }
        break;
      case 0x27u:
        if ( !a2 )
        {
          if ( byte_200FE05 == 22 )
          {
            byte_200FE04 = byte_200FE11;
            byte_200FE05 = byte_200FE12;
            byte_200FE02 = 1;
            v4 = 65;
LABEL_76:
            sub_81461B0(v4, 0);
          }
          else if ( byte_200FE05 == 15 )
          {
            byte_200FE04 = byte_200FE05;
            byte_200FE02 = 1;
            sub_81461B0(65, 0);
            byte_200FE24 |= 1 << byte_200FE10;
            *&algn_200FE28[2 * byte_200FE10] = word_200FE26;
            sub_814A934(4, byte_200FE10);
            v13 = sub_814ABB8(byte_200FE10, 14);
            v24 = v13;
            v14 = v13 << 24;
            if ( v14 )
            {
              byte_200FE05 = 0;
              byte_200FE04 = 0;
              sub_81464B4(v14);
              sub_81461D8(*(dword_2010CC0 + 3) | *(dword_2010CC0 + 2));
              word_200FE14 = v24;
              sub_81461B0(37, 1);
            }
          }
        }
        break;
      case 0x32u:
        if ( !a2 )
        {
          word_200FE14 = *(dword_2010CC0 + 3);
          byte_200FE05 = 17;
          byte_200FE04 = 17;
          byte_200FE10 = 0;
          if ( !(*(dword_2010CC0 + 3) & 1) )
          {
            do
              ++byte_200FE10;
            while ( byte_200FE10 <= 3u && !((*(dword_2010CC0 + 3) >> byte_200FE10) & 1) );
          }
        }
        break;
      case 0x33u:
        if ( !a2 && !(sub_814A750(&v24) << 16) && v24 <= 1u )
          byte_200FE04 = 18;
        v11 = &algn_200FE34[byte_200FE10];
        if ( *v11 )
        {
          v12 = *v11 - 1;
          *v11 = v12;
          if ( !(v12 << 16) )
            byte_200FE04 = 18;
        }
        break;
      case 0x34u:
        if ( !a2 && !(sub_814A750(&v24) << 16) )
        {
          if ( v24 )
          {
            byte_200FE05 = 0;
            byte_200FE04 = 0;
            sub_81461D8(*(dword_2010CC0 + 3));
            word_200FE1E = 51;
          }
          else
          {
            byte_200FE04 = 19;
            byte_200FE05 = 22;
            word_200FE1E = 50;
          }
          algn_200FE34[byte_200FE10] = 0;
          byte_200FE30 = 0;
          byte_200FE0A = 0;
          sub_81461B0(word_200FE1E, 1);
          word_200FE1E = 0;
        }
        break;
      case 0x3Du:
        if ( !a2 )
        {
          byte_200FE05 = 0;
          byte_200FE04 = 0;
          sub_81461B0(66, 0);
        }
        break;
      default:
        break;
    }
    byte_200FE0E = 1;
  }
  else if ( a2 == 3 && byte_200FE0F && (a1 == 36 || a1 == 38 || a1 == 39) )
  {
    v15 = sub_814957C();
    sub_8149568(v15);
    sub_8149590(&v24);
    if ( !v24 && !*dword_2010CC0 )
    {
      v16 = sub_8149454();
      *(v16 + 4) = *(dword_2010CC0 + 2);
      *(v16 + 5) = 1;
      sub_8145210(0x29u);
      v3 = 0;
    }
  }
  if ( v2 == 38 )
  {
    sub_81460B0();
    if ( *dword_2010CC0 != 255 )
      sub_81461B0(80, 0);
    goto LABEL_129;
  }
  if ( v2 <= 38 )
  {
    if ( v2 != 16 )
      goto LABEL_129;
    goto LABEL_126;
  }
  if ( v2 == 48 )
  {
    if ( v3 )
      goto LABEL_130;
    word_200FE14 = *(sub_8149454() + 8);
    sub_81461FC();
    if ( byte_200FE30 )
    {
      byte_200FE30 &= ~word_200FE14;
      v17 = 0;
      do
      {
        if ( (word_200FE14 >> v17) & 1 )
          algn_200FE34[v17] = 0;
        v17 = (v17 + 1) & 0xFF;
      }
      while ( v17 <= 3 );
      if ( !byte_200FE06 )
      {
        byte_200FE05 = byte_200FE06;
        byte_200FE04 = byte_200FE06;
      }
    }
    v24 = word_200FE14 & eStruct200FE00;
    v18 = 0;
    do
    {
      if ( (v24 >> v18) & 1 && byte_200FE01 )
        --byte_200FE01;
      v18 = (v18 + 1) & 0xFF;
    }
    while ( v18 <= 3 );
    eStruct200FE00 &= ~word_200FE14;
    if ( !byte_200FE07 )
      goto LABEL_119;
    if ( *dword_2010CC0 != 255 )
    {
LABEL_122:
      if ( !byte_200FE0E )
        sub_81461B0(64, 1);
LABEL_129:
      if ( !v3 )
        goto LABEL_137;
      goto LABEL_130;
    }
    if ( byte_200FE07 == 8 )
    {
      word_200FE1A = word_200FE1C;
      v19 = 6;
      byte_200FE07 = 6;
    }
    else
    {
      if ( ((byte_200FE04 - 6) & 0xFFu) <= 1 )
      {
LABEL_119:
        if ( *dword_2010CC0 == 255 && !byte_200FE04 )
          byte_200FE06 = -1;
        goto LABEL_122;
      }
      byte_200FE07 = 1;
      v19 = 5;
    }
    byte_200FE04 = v19;
    goto LABEL_119;
  }
  if ( v2 != 61 )
    goto LABEL_129;
LABEL_126:
  if ( !v3 )
  {
    byte_200FE0D = 0;
    byte_200FE01 = 0;
    eStruct200FE00 = 0;
    byte_200FE06 = -1;
    sub_81464B4(&eStruct200FE00);
    if ( v2 == 61 )
      sub_8144E44();
    goto LABEL_129;
  }
LABEL_130:
  if ( v2 == 28 && v3 && byte_200FE07 == 4 )
  {
    *dword_2010CC0 = 1;
    *(dword_2010CC0 + 2) = 15;
    v20 = sub_81461D8(15);
    sub_8149568(v20);
    return v25;
  }
  word_200FE14 = v2;
  word_200FE16 = v3;
  if ( byte_200FE0E )
  {
    byte_200FE05 = 0;
    byte_200FE04 = 0;
  }
  v21 = sub_81461B0(240, 2);
  sub_81464B4(v21);
LABEL_137:
  if ( v2 == 255 )
  {
    v22 = sub_81461B0(242, 0);
    sub_81464B4(v22);
  }
  return v25;
}


// 0x8145d54
int __fastcall sub_8145D54(unsigned __int16 a1)
{
  int v1; // r6
  char v2; // r7
  int v4; // [sp+0h] [bp-18h]
  int v5; // [sp+14h] [bp-4h]

  v1 = a1;
  v2 = byte_200FE0E;
  byte_200FE0E = 0;
  byte_200FE0F = 1;
  if ( *dword_2010CC0 )
  {
    if ( !(sub_81493F8(&v4) << 16) )
      byte_200FE03 |= v4;
  }
  else
  {
    sub_8145210(a1);
    if ( byte_200FE02 != 1 )
    {
      sub_81464B4(byte_200FE02);
      byte_200FE0F = 0;
      byte_200FE0E = v2;
      return v5;
    }
  }
  if ( dword_200FE44 )
    return sub_814DA64(v1);
  byte_200FE0F = 0;
  byte_200FE0E = v2;
  return v5;
}


// 0x8145dd8
int sub_8145DD8()
{
  int v0; // r4
  int v1; // r8
  int v2; // r6
  unsigned int v3; // r4
  char v4; // r5
  unsigned __int8 v5; // r10
  int v6; // r1
  unsigned __int16 *v7; // r3
  int v8; // r2
  char *v9; // r1
  __int16 v10; // r0
  signed int v11; // r5
  char v12; // r0
  int v14; // [sp+0h] [bp-28h]
  int v15; // [sp+24h] [bp-4h]

  if ( ((byte_200FE04 - 5) & 0xFFu) <= 3 )
  {
    v0 = (*(dword_2010CC0 + 2) ^ byte_200FE0C) & *(dword_2010CC0 + 2) & ~*(dword_2010CC0 + 7);
    v1 = v0;
    byte_200FE0C = *(dword_2010CC0 + 2);
    if ( v0 )
    {
      word_200FE14 = v0;
      sub_81461B0(16, 1);
    }
    v14 = 0;
    v2 = 0;
    do
    {
      v3 = (0x1000000 << v2) >> 24;
      v4 = 0;
      if ( v1 & v3 )
      {
        *&algn_200FE28[2 * v2] = word_200FE26;
        byte_200FE24 |= v3;
        v5 = v2 + 1;
      }
      else
      {
        v5 = v2 + 1;
        if ( byte_200FE24 & v3 )
        {
          v6 = dword_2010CB0[v2];
          if ( *(v6 + 52) == 70 )
          {
            if ( *(v6 + 97) == 1 )
            {
              v4 = 2;
              v7 = dword_200FE20;
              v8 = *dword_200FE20;
              if ( v8 != 0xFFFF )
              {
                while ( *(dword_2010CC0 + 32 * v2 + 24) != v8 )
                {
                  ++v7;
                  v8 = *v7;
                  if ( v8 == 0xFFFF )
                    goto LABEL_14;
                }
                eStruct200FE00 |= v3;
                ++byte_200FE01;
                v14 |= v3;
                v4 = 3;
              }
LABEL_14:
              if ( !(v4 & 1) )
                v4 |= 4u;
            }
          }
          else
          {
            v9 = &algn_200FE28[2 * v2];
            v10 = *v9 - 1;
            *v9 = v10;
            if ( !v10 )
              v4 = 6;
          }
          if ( v4 & 2 )
          {
            byte_200FE24 &= ~v3;
            *&algn_200FE28[2 * v2] = 0;
            sub_814A934(8, v2);
          }
          if ( v4 & 4 )
            byte_200FE0D |= v3;
        }
      }
      v2 = v5;
    }
    while ( v5 <= 3u );
    if ( v14 )
    {
      word_200FE14 = v14;
      sub_81461B0(17, 1);
    }
    if ( byte_200FE0D )
    {
      v11 = 1;
      if ( *(dword_2010CC0 + 6) && (byte_200FE03 & eStruct200FE00) != eStruct200FE00 )
        v11 = 0;
      if ( v11 )
      {
        sub_81461D8(byte_200FE0D);
        word_200FE14 = byte_200FE0D;
        byte_200FE0D = 0;
        sub_81461B0(18, 1);
      }
    }
    if ( !byte_200FE24 && byte_200FE04 == 8 )
    {
      if ( byte_200FE07 )
      {
        if ( byte_200FE07 == 2 )
        {
          byte_200FE07 = 3;
          v12 = 9;
        }
        else
        {
          byte_200FE07 = 1;
          v12 = 5;
        }
        byte_200FE04 = v12;
        if ( eStruct200FE00 )
        {
          word_200FE1A = 0;
          byte_200FE07 = 8;
          byte_200FE04 = 5;
        }
      }
      else
      {
        byte_200FE05 = byte_200FE07;
        byte_200FE04 = byte_200FE07;
        sub_81461B0(20, 0);
      }
    }
  }
  return v15;
}


// 0x8145ffc
int sub_8145FFC()
{
  __int16 v0; // r6
  char *v1; // r1
  int v2; // r0
  __int16 v3; // r4
  int v5; // [sp+Ch] [bp-4h]

  v0 = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  if ( byte_200FE04 == 15 )
  {
    v1 = &algn_200FE28[2 * byte_200FE10];
    v2 = *v1 - 1;
    *v1 = v2;
    if ( !(v2 << 16) || *dword_2010CB0[byte_200FE10] == 39 )
    {
      sub_81464D4();
      byte_200FE04 = 24;
      sub_814A934(4, byte_200FE10);
      byte_200FE24 &= ~(1 << byte_200FE10);
      *&algn_200FE28[2 * byte_200FE10] = 0;
    }
  }
  InterruptMasterEnableRegister = v0;
  if ( byte_200FE04 == 24 )
  {
    if ( byte_200FE02 == 1 )
      sub_81464D4();
    v3 = byte_200FE02;
    if ( !byte_200FE02 )
    {
      byte_200FE05 = byte_200FE02;
      byte_200FE04 = byte_200FE02;
      sub_81461D8(*(dword_2010CC0 + 3) | *(dword_2010CC0 + 2));
      word_200FE14 = v3;
      sub_81461B0(37, 1);
    }
  }
  return v5;
}


// 0x81460b0
int sub_81460B0()
{
  int v1; // [sp+8h] [bp-4h]

  if ( byte_200FE04 == 15 && *dword_2010CB0[byte_200FE10] == 38 )
  {
    byte_200FE05 = 0;
    byte_200FE04 = 0;
    sub_814A934(4, byte_200FE10);
    byte_200FE24 &= ~(1 << byte_200FE10);
    *&algn_200FE28[2 * byte_200FE10] = 0;
    sub_81461B0(36, 0);
  }
  return v1;
}


// 0x814610c
int sub_814610C()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !byte_200FE06 && byte_200FE0A == 1 )
  {
    byte_200FE11 = byte_200FE04;
    byte_200FE12 = byte_200FE05;
    byte_200FE04 = 16;
    byte_200FE05 = 17;
    byte_200FE0A = 2;
  }
  return v1;
}


// 0x8146138
int sub_8146138()
{
  int v0; // r6
  int v1; // r5
  unsigned __int16 *v2; // r3
  int v3; // r2
  unsigned __int8 i; // r12

  v0 = 0;
  v1 = 0;
  if ( *(dword_2010CC0 + 8) > 0u )
  {
    do
    {
      v2 = dword_200FE20;
      v3 = *dword_200FE20;
      for ( i = v1 + 1; v3 != 0xFFFF; v3 = *v2 )
      {
        if ( *(dword_2010CC0 + 32 * v1 + 24) == v3 )
          v0 = (v0 | (1 << v1)) & 0xFF;
        ++v2;
      }
      v1 = (v1 + 1);
    }
    while ( i < *(dword_2010CC0 + 8) );
  }
  return v0;
}


// 0x81461b0
int __fastcall sub_81461B0(int a1, int a2)
{
  int v3; // [sp+4h] [bp-4h]

  a1 = a1;
  a2 = a2;
  if ( dword_200FE40 )
    return sub_814DA68(a1, a2);
  word_200FE16 = 0;
  word_200FE14 = 0;
  return v3;
}


// 0x81461d8
int __fastcall sub_81461D8(unsigned __int8 a1)
{
  char v1; // r5
  int v2; // r0
  int v4; // [sp+8h] [bp-4h]

  v1 = byte_200FE0E;
  byte_200FE0E = 1;
  v2 = sub_814A4CC(a1);
  sub_8149568(v2);
  byte_200FE0E = v1;
  return v4;
}


// 0x81461fc
int __fastcall sub_81461FC(unsigned __int8 a1)
{
  int v1; // r5
  unsigned int v2; // r4
  int v3; // r2
  int v4; // r1
  unsigned int v5; // r4
  int v6; // r2
  unsigned int v7; // r4
  char (*v8)[28]; // r2
  int v9; // r3
  int v11; // [sp+10h] [bp-4h]

  v1 = a1;
  if ( *(dword_2010CC0 + 4) )
  {
    v2 = 0;
    do
    {
      v3 = dword_2010CB0[v2];
      if ( *v3 & 0x8000 )
      {
        v4 = *(v3 + 26);
        if ( v1 & v4 )
          sub_814ADF4(32, v2, v4 & ~v1);
      }
      v2 = (v2 + 1) & 0xFF;
    }
    while ( v2 <= 3 );
  }
  if ( *(dword_2010CC0 + 5) )
  {
    v5 = 0;
    do
    {
      v6 = dword_2010CB0[v5];
      if ( *(v6 + 52) & 0x8000 && *(v6 + 78) & v1 )
        sub_814AF5C(v5);
      v5 = (v5 + 1) & 0xFF;
    }
    while ( v5 <= 3 );
  }
  if ( *(dword_2010CC0 + 6) )
  {
    *(dword_2010CC0 + 6) &= ~v1;
    v7 = 0;
    do
    {
      v8 = off_2010CA0[v7];
      if ( *v8 == 32804 )
      {
        v9 = (*v8)[3];
        if ( v1 & v9 )
          (*v8)[3] = ~v1 & v9;
      }
      v7 = (v7 + 1) & 0xFF;
    }
    while ( v7 <= 3 );
  }
  return v11;
}


// 0x81462d8
int sub_81462D8()
{
  int v0; // r6
  int *v1; // r3
  int v2; // r7
  unsigned __int8 v3; // r9
  int v4; // r5
  unsigned int v5; // r4
  int *v6; // ST00_4
  unsigned int v7; // r6
  int v8; // r2
  int v10; // [sp+20h] [bp-4h]

  if ( word_200FE18 )
  {
    if ( *(dword_2010CC0 + 4) )
    {
      v0 = 0;
      do
      {
        v1 = dword_2010CB0;
        v2 = v0;
        v3 = v0 + 1;
        if ( *dword_2010CB0[v0] & 0x8000 )
        {
          v4 = 0;
          v5 = 0;
          do
          {
            if ( (*(v1[v2] + 26) >> v5) & 1 && *(v1[v5] + 2) > word_200FE18 )
              v4 = (v4 | (1 << v5)) & 0xFF;
            if ( v4 )
            {
              v6 = v1;
              sub_814ADF4(32, v0, v4 ^ *(dword_2010CB0[v2] + 26));
              v1 = v6;
            }
            v5 = (v5 + 1) & 0xFF;
          }
          while ( v5 <= 3 );
        }
        v0 = (v0 + 1);
      }
      while ( v3 <= 3u );
    }
    if ( *(dword_2010CC0 + 5) )
    {
      v7 = 0;
      do
      {
        v8 = dword_2010CB0[v7];
        if ( *(v8 + 52) & 0x8000 && *(v8 + 54) > word_200FE18 )
          sub_814AF5C(v7);
        v7 = (v7 + 1) & 0xFF;
      }
      while ( v7 <= 3 );
    }
  }
  return v10;
}


// 0x81463d0
int __fastcall sub_81463D0(int a1)
{
  int v2; // [sp+0h] [bp-4h]

  dword_200FE44 = a1;
  sub_8149464(sub_8145D54);
  return v2;
}


// 0x81463e8
int __fastcall sub_81463E8(int result)
{
  dword_200FE40 = result;
  return result;
}


// 0x81463f4
signed int __fastcall sub_81463F4(char a1, __int16 a2)
{
  if ( byte_200FE09 && !a1 && byte_200FE30 )
    return 5;
  byte_200FE09 = a1;
  word_200FE32 = a2;
  return 0;
}


// 0x8146438
signed int __fastcall sub_8146438(__int16 a1)
{
  signed int result; // r0

  if ( *(dword_2010CC0 + 5) | *(dword_2010CC0 + 4) )
  {
    word_200FE14 = 6;
    sub_81461B0(243, 1);
    result = 6;
  }
  else
  {
    word_200FE18 = a1;
    result = 0;
  }
  return result;
}


// 0x81464b4
int sub_81464B4()
{
  int v1; // [sp+0h] [bp-4h]

  if ( byte_200FE02 )
  {
    byte_200FE02 = 0;
    sub_81461B0(69, 0);
  }
  return v1;
}


// 0x81464d4
int sub_81464D4()
{
  int v1; // [sp+0h] [bp-4h]

  if ( byte_200FE02 )
  {
    if ( byte_200FE02 == 1 )
      byte_200FE02 = 2;
  }
  else
  {
    sub_81461B0(69, 0);
  }
  return v1;
}


// 0x814656c
BOOL sub_814656C()
{
  return word_20102D0 != 3;
}


// 0x8146588
signed int sub_8146588()
{
  signed int result; // r0

  byte_200FE80 = 0;
  byte_2010160 = 32;
  byte_200FFE4 = 1;
  byte_2010164 = 1;
  result = 240;
  word_200FE50 = 240;
  return result;
}


// 0x81465bc
signed int sub_81465BC()
{
  int v0; // r1
  int v1; // r2
  int v2; // r3

  if ( sub_8149220(&unk_3000000, 3684, &off_3000E8C, 1) << 16 )
    return 0;
  sub_8149440(3, &off_3000E88);
  sub_813D8C4();
  sub_803DE88(4, v0, v1, v2);
  return 1;
}


// 0x81465fc
int __fastcall sub_81465FC(int a1)
{
  int v1; // r4
  __int16 v2; // r0
  int v4; // [sp+4h] [bp-4h]

  v1 = a1;
  v2 = sub_813D924();
  *v1 = 4;
  *(v1 + 1) = byte_2010160;
  *(v1 + 4) = 0;
  *(v1 + 6) = v2;
  *(v1 + 8) = &unk_2010150;
  *(v1 + 12) = &unk_200FE63;
  *(v1 + 17) = byte_2010164;
  *(v1 + 18) = word_200FE50;
  *(v1 + 20) = 600;
  *(v1 + 16) = 0;
  *(v1 + 2) = 4 - byte_200FFE4;
  return v4;
}


// 0x814665c
int sub_814665C()
{
  unsigned int i; // r2
  int v2; // [sp+10h] [bp-4h]

  byte_2010288 = 0;
  for ( i = 0; i < *(dword_2010CC0 + 8); i = (i + 1) & 0xFF )
  {
    if ( (byte_2010324 >> i) & 1 && *(dword_2010CC0 + 32 * i + 22) <= 3u )
      byte_2010330[byte_2010288++] = i;
  }
  return v2;
}


// 0x81466c4
int __fastcall sub_81466C4(unsigned __int8 a1)
{
  return dword_2010CC0 + 32 * byte_2010330[a1] + 20 + 21;
}


// 0x81466e4
char *__fastcall sub_81466E4(int a1)
{
  return &unk_2009750 + (8 * a1 & 0x7FF);
}


// 0x81466f4
int __fastcall sub_81466F4(unsigned __int8 a1)
{
  return dword_2010CC0 + 32 * byte_2010330[a1] + 20 + 6;
}


// 0x8146714
char *__fastcall sub_8146714(int a1)
{
  return &unk_20098B0 + (16 * a1 & 0xFFF);
}


// 0x8146724
int __fastcall sub_8146724(int a1)
{
  return a1 + 11;
}


// 0x8146728
int __fastcall sub_8146728(int a1)
{
  return *(a1 + 11) | (*(a1 + 12) << 8);
}


// 0x8146738
int __fastcall sub_8146738(int a1)
{
  return *(a1 + 10);
}


// 0x814673c
int sub_814673C()
{
  char *v0; // r7
  char *v1; // r6
  unsigned int i; // r4
  int v3; // r0
  int v4; // r0
  int v6; // [sp+10h] [bp-4h]

  v0 = &unk_20098B0;
  v1 = &unk_2009750;
  byte_2009470 = 0;
  for ( i = 0; i < byte_2010288; i = (i + 1) & 0xFF )
  {
    v3 = sub_81466F4(i);
    sub_81469F0(v3, v0, 13);
    v4 = sub_81466C4(i);
    sub_81469F0(v4, v1, 8);
    v0 += 16;
    v1 += 8;
    ++byte_2009470;
  }
  return v6;
}


// 0x81467a0
int sub_81467A0()
{
  char *v0; // r7
  char *v1; // r6
  unsigned int i; // r4
  int v3; // r0
  int v4; // r0
  int v6; // [sp+10h] [bp-4h]

  v0 = &unk_20098B0;
  v1 = &unk_2009750;
  sub_814665C();
  byte_2009470 = 0;
  for ( i = 0; i < byte_2010288; i = (i + 1) & 0xFF )
  {
    v3 = sub_81466F4(i);
    sub_81469F0(v3, v0, 13);
    v4 = sub_81466C4(i);
    sub_81469F0(v4, v1, 8);
    v0 += 16;
    v1 += 8;
    ++byte_2009470;
  }
  return v6;
}


// 0x8146808
signed int __fastcall sub_8146808(int a1)
{
  char *v1; // r5
  unsigned int i; // r4
  int v3; // r0

  v1 = &unk_20098B0 + (16 * a1 & 0xFFF);
  sub_814665C();
  for ( i = 0; i < byte_2010288; i = (i + 1) & 0xFF )
  {
    v3 = sub_81466F4(i);
    if ( !(sub_8146A18(v1, v3, 13) << 24) )
      return i;
  }
  return 4;
}


// 0x8146854
int __fastcall sub_8146854(int a1, int a2, int a3, int a4)
{
  char *v4; // r6
  char *v5; // r5
  unsigned int v6; // r4
  int v7; // r2
  int v8; // r3
  int v10; // [sp+Ch] [bp-4h]

  v4 = &unk_20098B0;
  v5 = &unk_2009750;
  v6 = 0;
  do
  {
    ZeroFillByWord(v4, 0x10u, a3, a4);
    ZeroFillByWord(v5, 8u, v7, v8);
    v4 += 16;
    v5 += 8;
    v6 = (v6 + 1) & 0xFF;
  }
  while ( v6 <= 7 );
  return v10;
}


// 0x8146888
signed int __fastcall sub_8146888(char a1)
{
  if ( ((byte_200FE04 - 9) & 0xFFu) > 2 )
    return 1;
  word_200BC58 = 7;
  byte_20103E4 = a1;
  return 0;
}


// 0x81468bc
int sub_81468BC()
{
  return byte_2010293;
}


// 0x81468c8
char *__fastcall sub_81468C8(unsigned __int8 a1)
{
  return &unk_2010294 + 10 * a1;
}


// 0x81468e0
char *__fastcall sub_81468E0(unsigned __int8 a1)
{
  return &unk_20102E0 + 13 * a1;
}


// 0x81468f4
int sub_81468F4()
{
  return *&algn_200FE28[2 * byte_20103E0];
}


// 0x814690c
int sub_814690C()
{
  return word_200FE26;
}


// 0x8146918
int __fastcall sub_8146918(int a1)
{
  return *(algn_200FE34 + (2 * a1 & 0x1FF));
}


// 0x814692c
int sub_814692C()
{
  int v1; // [sp+0h] [bp-4h]

  sub_81453D4();
  return v1;
}


// 0x8146938
BOOL sub_8146938()
{
  return byte_2010280 != *(dword_2010CC0 + 2);
}


// 0x814695c
int __fastcall sub_814695C(int a1)
{
  int v2; // [sp+4h] [bp-4h]

  sub_81469F0(a1, &unk_200FE63, 8);
  byte_200FE62 = 1;
  if ( byte_200FE64 )
  {
    do
      ++byte_200FE62;
    while ( *(&unk_200FE63 + byte_200FE62) );
  }
  byte_200FE60 = 1;
  return v2;
}


// 0x81469a0
void *sub_81469A0()
{
  return &unk_200FE63;
}


// 0x81469bc
int __fastcall sub_81469BC(int a1, int a2)
{
  int v2; // r5
  char v3; // r6
  int v5; // [sp+Ch] [bp-4h]

  v2 = a2 << 16;
  v3 = a2;
  sub_8146A48(a1, &unk_2010150, 11);
  byte_201015B = v3;
  byte_201015C = HIBYTE(v2);
  return v5;
}


// 0x81469dc
char __fastcall sub_81469DC(char result)
{
  byte_201015A = result;
  return result;
}


// 0x81469e8
void *sub_81469E8()
{
  return &unk_2010150;
}


// 0x81469f0
int __fastcall sub_81469F0(_BYTE *a1, _BYTE *a2, unsigned int a3)
{
  _BYTE *v3; // r4
  unsigned int i; // r3
  int v6; // [sp+4h] [bp-4h]

  v3 = a1;
  a3 = a3;
  for ( i = 0; i < a3; i = (i + 1) & 0xFF )
    *a2++ = *v3++;
  return v6;
}


// 0x8146a18
signed int __fastcall sub_8146A18(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  unsigned __int8 *v3; // r4
  unsigned int v4; // r3

  v3 = a1;
  a3 = a3;
  v4 = 0;
  if ( a3 <= 0u )
    return 0;
  while ( *v3 == *a2 )
  {
    ++v3;
    ++a2;
    v4 = (v4 + 1) & 0xFF;
    if ( v4 >= a3 )
      return 0;
  }
  return 1;
}


// 0x8146a48
int __fastcall sub_8146A48(_BYTE *a1, _BYTE *a2, unsigned int a3)
{
  _BYTE *v3; // r4
  unsigned int i; // r3
  int v6; // [sp+4h] [bp-4h]

  v3 = a1;
  a3 = a3;
  for ( i = 0; i < a3; i = (i + 1) & 0xFF )
    *a2++ = *v3++;
  return v6;
}


// 0x8146a70
int __fastcall sub_8146A70(_BYTE *a1)
{
  _BYTE *v1; // r4
  int v3; // [sp+0h] [bp-Ch]
  int v4; // [sp+8h] [bp-4h]

  v1 = a1;
  v3 = 0;
  SWI_CpuSet(&v3, a1, 83886165);
  *v1 = 1;
  return v4;
}


// 0x8146b64
int sub_8146B64()
{
  return byte_2010480;
}


// 0x8146b70
signed int sub_8146B70()
{
  if ( byte_200FE80 == byte_201047C )
    return 8;
  byte_200FE80 = byte_201047C;
  CopyWords(&unk_2010440, &unk_20399F0, 0x10u);
  CopyWords(&unk_201044C, &unk_2039A00, 0x10u);
  return 2;
}


// 0x8146bb8
signed int sub_8146BB8()
{
  unsigned int v0; // r0

  v0 = *(dword_2010CC0 + 10 + byte_200AF84);
  if ( v0 > 0xE5 )
    return 4;
  if ( v0 & 0x80 )
    return 3;
  if ( v0 > 0x19 )
    return 2;
  return 1;
}


// 0x8146bf4
BOOL sub_8146BF4()
{
  return *dword_2010CC0 == 1 || !*dword_2010CC0;
}


// 0x8146c20
int __fastcall sub_8146C20(unsigned __int8 *a1)
{
  _BYTE *v1; // r4
  signed int v2; // r0
  int v4; // [sp+4h] [bp-4h]

  v1 = a1;
  v2 = *a1;
  if ( v2 == 1 )
    goto LABEL_10;
  if ( v2 > 1 )
  {
    if ( v2 == 2 )
    {
      sub_8146C9C(v1);
      return v4;
    }
    if ( v2 != 3 )
      return v4;
    *v1 = 0;
  }
  else if ( v2 )
  {
    return v4;
  }
  if ( v1[2] )
  {
    sub_8146CE4(v1);
LABEL_10:
    sub_8146C60(v1);
  }
  return v4;
}


// 0x8146c60
int __fastcall sub_8146C60(int a1)
{
  char *v1; // r4
  char v2; // r0
  int v4; // [sp+4h] [bp-4h]

  v1 = a1;
  if ( sub_814AB50((0x1000000 << byte_20103E0) >> 24, (*(a1 + 16) + 2) & 0xFF, &byte_200DD10) << 16 )
    v2 = 4;
  else
    v2 = 2;
  *v1 = v2;
  return v4;
}


// 0x8146c9c
int __fastcall sub_8146C9C(_BYTE *a1)
{
  _BYTE *v1; // r4
  int v2; // r0
  int v4; // [sp+4h] [bp-4h]

  v1 = a1;
  v2 = *dword_2010CB0[byte_20103E0];
  if ( v2 == 38 )
  {
    sub_814A934(4, byte_20103E0);
    *v1 = 3;
    v1[2] = 0;
  }
  else if ( v2 == 39 )
  {
    sub_814A934(4, byte_20103E0);
    *v1 = 4;
  }
  return v4;
}


// 0x8146ce4
int __fastcall sub_8146CE4(int a1)
{
  int v2; // [sp+0h] [bp-4h]

  CopyWords(*(a1 + 8), &byte_200DD10, *(a1 + 16));
  return v2;
}


// 0x8146cfc
int sub_8146CFC()
{
  __int16 v1; // [sp+0h] [bp-8h]
  int v2; // [sp+4h] [bp-4h]

  v1 = 0;
  SWI_CpuSet(&v1, &byte_200AF80, 16777228);
  return v2;
}


// 0x8146d20
signed int sub_8146D20()
{
  if ( byte_200AF82 )
    return 1;
  byte_200AF82 = 1;
  return 0;
}


// 0x8146d40
signed int __fastcall sub_8146D40(int a1)
{
  int v1; // r5
  char *v2; // r6
  unsigned int v3; // r4

  v1 = a1;
  v2 = &unk_2009480;
  v3 = 0;
  do
  {
    if ( byte_2010292 & (2 << v3) )
    {
      sub_814A934(8, v3);
      if ( sub_814AAF0(32, v3, v2, *(v1 + 20)) << 16 )
        return 1;
    }
    v2 += 4 * (*(v1 + 20) >> 2);
    v3 = (v3 + 1) & 0xFF;
  }
  while ( v3 <= 3 );
  return 0;
}


// 0x8146d98
int __fastcall sub_8146D98(int a1, int a2, int a3, int a4)
{
  int v4; // r6
  int v5; // r7
  unsigned int v6; // r4
  int v7; // r5
  int v8; // r0
  unsigned int v9; // r1
  char *v10; // r9
  int v12; // [sp+18h] [bp-4h]

  v4 = a1;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = (2 << v6) & 0xFF;
    if ( !(byte_2010292 & v7) )
      goto LABEL_8;
    v8 = *(dword_2010CB0[v6] + 52);
    switch ( v8 )
    {
      case 71:
        goto LABEL_14;
      case 70:
        sub_814A934(8, v6);
        v5 |= v7;
        break;
      case 72:
LABEL_14:
        sub_814A934(8, v6);
        *(v4 + 1) = 2;
        break;
    }
LABEL_8:
    v6 = (v6 + 1) & 0xFF;
  }
  while ( v6 <= 3 );
  if ( ((v5 | 1) & byte_2010292) == byte_2010292 )
  {
    *(v4 + 1) = 1;
    v9 = *(v4 + 20);
    v10 = &unk_2009480 + 4 * byte_2010328 * (v9 >> 2);
    ZeroFillByWord(*(v4 + 12), v9, v9 >> 2, a4);
    sub_8146E48(v4, v10);
  }
  return v12;
}


// 0x8146e48
int __fastcall sub_8146E48(int a1, int a2)
{
  int v3; // [sp+0h] [bp-4h]

  CopyWords(a2, *(a1 + 12), *(a1 + 20));
  return v3;
}


// 0x8146e5c
int __fastcall sub_8146E5C(int result, char a2)
{
  *(result + 5) = a2;
  return result;
}


// 0x8146e60
int sub_8146E60()
{
  int v1; // [sp+0h] [bp-4h]

  sub_8146E90(&byte_20101E0, &unk_2010230, 12);
  return v1;
}


// 0x8146e78
int sub_8146E78()
{
  int v1; // [sp+0h] [bp-4h]

  sub_8146F90(&byte_20101E0, &unk_2010230, 12);
  return v1;
}


// 0x8146e90
int __fastcall sub_8146E90(int a1, int a2, unsigned int a3)
{
  int v3; // r8
  unsigned int v4; // r7
  unsigned int v5; // r4
  unsigned int v6; // r4
  __int16 v8; // [sp+0h] [bp-1Ch]
  __int16 v9; // [sp+2h] [bp-1Ah]
  int v10; // [sp+18h] [bp-4h]

  v3 = a2;
  v4 = a3;
  v8 = 0;
  SWI_CpuSet(&v8, a1, (a3 >> 1) & 0x1FFFFF | 0x1000000);
  v9 = 0;
  SWI_CpuSet(&v9, v3, 2 * v4 & 0x1FFFFF | 0x1000000);
  sub_8146A70(&unk_200FFF0);
  sub_8146A70(&unk_200FE90);
  byte_20101B4 = 1;
  byte_2010292 = 2 * *(dword_2010CC0 + 2) | 1;
  v5 = 0;
  do
  {
    byte_2010220[v5] = 0;
    word_2010400[v5] = 0;
    word_2010428[v5] = 0;
    v5 = (v5 + 1) & 0xFF;
  }
  while ( v5 <= 3 );
  byte_20101E0 = 0;
  v6 = 0;
  do
  {
    if ( byte_2010292 & (2 << v6) )
    {
      sub_814A934(12, v6);
      if ( sub_814AAF0(32, v6, 4 * v6 + v3, v4) << 16 )
        word_200BC58 |= 0x80u;
    }
    v6 = (v6 + 1) & 0xFF;
  }
  while ( v6 <= 3 );
  word_200BC58 = 0;
  return v10;
}


// 0x8146f90
int __fastcall sub_8146F90(int a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r7
  int v5; // r5
  int v6; // r0
  int v7; // r0
  signed __int16 v8; // r0
  int v10; // [sp+14h] [bp-4h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  if ( !(word_200BC58 & 0x80) )
  {
    while ( byte_2010368 == 1 )
      ;
    sub_81453F0(0);
    if ( byte_2010340 )
    {
      v6 = sub_814A4CC(byte_2010340);
      sub_8149568(v6);
      byte_2010340 = 0;
    }
    if ( *dword_2010CC0 == 1 )
    {
      byte_2010368 = 1;
      sub_8144DB0(1u);
    }
    sub_81472F8(&byte_200AF80, v3, v5);
    sub_814713C(&byte_200AF80, v4);
    switch ( word_200BC58 )
    {
      case 9:
        v7 = 1;
        goto LABEL_12;
      case 0xB:
        eStruct200FE00_setUnk04To15h();
        v8 = 12;
        goto LABEL_13;
      case 0x34:
        sub_814A828();
        sub_813D760();
        break;
      case 0x40:
        v7 = 0;
LABEL_12:
        sub_8145120(v7);
        v8 = 10;
LABEL_13:
        word_200BC58 = v8;
        break;
      default:
        return v10;
    }
  }
  return v10;
}


// 0x814713c
int __fastcall sub_814713C(int a1, int a2)
{
  int v2; // r7
  int v3; // r9
  int v4; // r6
  unsigned int v5; // r4
  int v6; // r5
  int v7; // r0
  int v9; // [sp+18h] [bp-4h]

  v2 = a1;
  v3 = a2;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = (2 << v5) & 0xFF;
    if ( !(byte_2010292 & v6) )
      goto LABEL_8;
    v7 = *(dword_2010CB0[v5] + 52);
    switch ( v7 )
    {
      case 71:
        goto LABEL_14;
      case 70:
        sub_814A934(8, v5);
        v4 |= v6;
        break;
      case 72:
LABEL_14:
        sub_814A934(8, v5);
        *(v2 + 1) = 2;
        break;
    }
LABEL_8:
    v5 = (v5 + 1) & 0xFF;
  }
  while ( v5 <= 3 );
  if ( ((v4 | 1) & byte_2010292) == byte_2010292 )
  {
    *(v2 + 1) = 1;
    sub_813D7B8(4 * byte_2010328 + v3);
  }
  return v9;
}


// 0x81471d8
int __fastcall sub_81471D8(_BYTE *a1, int a2)
{
  _BYTE *v2; // r4
  int v4; // [sp+4h] [bp-4h]

  v2 = a1;
  if ( sub_814AB50(byte_2010280, (a2 + 3) & 0xFF, &byte_20101E0) )
  {
    *v2 = 4;
    word_200BC58 |= 0x80u;
    byte_20101B4 = -125;
  }
  else
  {
    *v2 = 2;
    v2[2] = 0;
  }
  return v4;
}


// 0x8147228
int __fastcall sub_8147228(_BYTE *a1, int a2)
{
  _BYTE *v2; // r5
  int v3; // r6
  unsigned __int16 *v4; // r1
  int v5; // r0
  int v6; // r4
  int v7; // r4
  char *v8; // r0
  int v10; // [sp+Ch] [bp-4h]

  v2 = a1;
  v3 = a2;
  v4 = dword_2010CB0[byte_2010328];
  v5 = *v4;
  if ( v5 != 38 )
  {
    if ( v5 != 39 )
      return v10;
    sub_814A934(4, byte_2010328);
LABEL_6:
    *v2 = 4;
    return v10;
  }
  v6 = *(v4 + 26) ^ *(v4 + 44);
  sub_814A934(4, byte_2010328);
  if ( v6 )
    goto LABEL_6;
  *v2 = 3;
  v7 = *(v3 + 1);
  v8 = sub_802D064(0);
  sub_813D78C(v7, v8);
  return v10;
}


// 0x814728c
int sub_814728C()
{
  char v0; // r5
  unsigned int v1; // r4
  __int16 v3; // [sp+0h] [bp-10h]
  int v4; // [sp+Ch] [bp-4h]

  v0 = byte_20101E0;
  v3 = 0;
  SWI_CpuSet(&v3, &byte_20101E0, 16777222);
  v1 = 0;
  do
  {
    if ( byte_2010292 & (2 << v1) && byte_20101B4 == 1 )
      CopyWords(&byte_200DD10, &byte_20101E0, 0xCu);
    v1 = (v1 + 1) & 0xFF;
  }
  while ( v1 <= 3 );
  if ( byte_20101B4 == 1 )
    byte_20101E0 = v0 + 1;
  return v4;
}


// 0x81472f8
int __fastcall sub_81472F8(unsigned __int8 *a1, int a2, int a3)
{
  _BYTE *v3; // r4
  int v4; // r5
  int v6; // [sp+8h] [bp-4h]

  v3 = a1;
  v4 = a3;
  switch ( *a1 )
  {
    case 0u:
      goto LABEL_3;
    case 1u:
      goto LABEL_5;
    case 2u:
      sub_8147228(a1, a2);
      break;
    case 3u:
      *a1 = 0;
LABEL_3:
      if ( a1[2] )
      {
        sub_814728C();
LABEL_5:
        sub_81471D8(v3, v4);
      }
      break;
    default:
      return v6;
  }
  return v6;
}


// 0x8147350
int __fastcall sub_8147350(int a1, int a2, int a3, int a4)
{
  int v4; // r2
  int v5; // r3
  __int16 v7; // [sp+0h] [bp-Ch]

  sub_803DE88(4, a2, a3, a4);
  byte_2010280 = 0;
  byte_201033C = 0;
  byte_201028C = 0;
  byte_2010340 = 0;
  byte_2010328 = 0;
  byte_2010368 = 0;
  sub_813D960(&byte_2010368, 0, v4, v5);
  v7 = 0;
  SWI_CpuSet(&v7, &byte_2010290, 16777248);
  sub_81465FC(&unk_2010350);
  sub_8144DF0(sub_81473EC, sub_81475B8);
  Timer2Counter_Reload = 0;
  Timer2Control = 131;
  word_200BC58 = 1;
  byte_200BC55 = 1;
  return sub_8146CFC();
}


// 0x81473ec
int __fastcall sub_81473EC(signed int a1)
{
  unsigned int v1; // r2
  int v2; // r0
  int v4; // [sp+8h] [bp-4h]

  a1 = a1;
  if ( a1 == 50 )
    return v4;
  if ( a1 > 50 )
  {
    if ( a1 == 68 )
    {
      word_200BC58 = 11;
      return v4;
    }
    if ( a1 > 68 )
    {
      if ( a1 == 240 )
      {
        if ( sub_813D94C(21) )
          sub_813D934(21);
        word_20102D0 = word_200FE14;
        byte_2010368 = 0;
        word_200BC58 = 63;
      }
      else if ( a1 > 240 )
      {
        if ( a1 == 241 )
        {
          word_200BC58 = 63;
          v2 = 13;
        }
        else
        {
          if ( a1 != 255 )
            return v4;
          word_200BC58 = 63;
          v2 = 1;
        }
        sub_813D934(v2);
        byte_2010368 = 0;
      }
      else if ( a1 == 80 )
      {
        byte_2010368 = 0;
      }
      return v4;
    }
    if ( a1 == 66 )
    {
      word_200BC58 = 52;
      return v4;
    }
    if ( a1 > 66 )
    {
      word_200BC58 = 3;
      sub_813D934(20);
      return v4;
    }
    if ( a1 != 51 )
      return v4;
    goto LABEL_42;
  }
  if ( a1 == 18 )
  {
    v1 = 0;
    do
    {
      if ( (word_200FE14 >> v1) & 1 )
        byte_2010284 |= 1 << v1;
      v1 = (v1 + 1) & 0xFF;
    }
    while ( v1 <= 3 );
    return v4;
  }
  if ( a1 > 18 )
  {
    if ( a1 == 20 )
    {
      if ( *(dword_2010CC0 + 1) )
      {
        word_200BC58 = 34;
        return v4;
      }
      goto LABEL_44;
    }
    if ( a1 < 20 )
      return v4;
    if ( a1 != 48 )
    {
      if ( a1 == 49 )
        sub_813D934(14);
      return v4;
    }
LABEL_42:
    byte_2010280 &= ~word_200FE14;
    if ( word_200BC58 == 4 || *dword_2010CC0 != 255 )
      return v4;
LABEL_44:
    word_200BC58 = 3;
    return v4;
  }
  if ( a1 != 16 )
  {
    if ( a1 <= 16 )
    {
      if ( a1 )
        return v4;
      goto LABEL_44;
    }
    byte_2010280 |= word_200FE14;
  }
  return v4;
}


// 0x81475b8
int sub_81475B8()
{
  int v1; // [sp+0h] [bp-4h]

  sub_814B694();
  return v1;
}


// 0x81475d4
int __fastcall sub_81475D4(unsigned __int16 *a1)
{
  unsigned __int16 *v1; // r5
  int v2; // r0
  int v3; // r0
  int v4; // r0
  signed __int16 v5; // r0
  int v6; // r0
  int v8; // [sp+8h] [bp-4h]

  v1 = a1;
  while ( byte_2010368 == 1 )
    ;
  sub_81453F0(Timer2Counter_Reload);
  if ( byte_2010340 )
  {
    v2 = sub_814A4CC(byte_2010340);
    sub_8149568(v2);
    byte_2010340 = 0;
  }
  v3 = dword_2010CC0;
  if ( *dword_2010CC0 == 1 )
  {
    byte_2010368 = 1;
    v3 = sub_8144DB0(1u);
  }
  v4 = sub_8147834(v3);
  sub_8147A84(v4);
  switch ( word_200BC58 )
  {
    case 1:
      sub_8144E70(&unk_2010350);
      v5 = 2;
      goto LABEL_27;
    case 3:
      if ( !(sub_8144EF8(1u, 0, 120, v1) << 24) )
      {
        word_200BC58 = 4;
        byte_2010284 = 0;
      }
      return v8;
    case 4:
      if ( byte_2010280 && byte_2010280 == *(dword_2010CC0 + 2) )
        sub_813D934(12);
      else
        sub_813D934(11);
      return v8;
    case 9:
      v6 = 1;
      goto LABEL_26;
    case 0xB:
      eStruct200FE00_setUnk04To15h();
      v5 = 12;
      goto LABEL_27;
    case 0x22:
      if ( byte_201028C & 0x80 )
      {
        if ( byte_2010290 )
        {
          if ( byte_200AF85 == 1 )
            sub_813D98C();
        }
        else if ( byte_200AF85 == 1 )
        {
          sub_813D978();
        }
        else
        {
          sub_813D8D0();
          sub_813D934(0);
        }
      }
      break;
    case 0x34:
      sub_814A828();
      sub_813D760();
      break;
    case 0x40:
      v6 = 0;
LABEL_26:
      sub_8145120(v6);
      v5 = 10;
LABEL_27:
      word_200BC58 = v5;
      break;
    default:
      return v8;
  }
  return v8;
}


// 0x8147834
signed int sub_8147834()
{
  signed int v0; // r7
  char v2; // r1
  unsigned int v3; // r2

  v0 = 0;
  if ( byte_201028C & 2 || *(dword_2010CC0 + 3) || byte_201028C & 0x80 )
    return 0;
  if ( word_200BC58 == 34 && !(byte_201028C & 0x40) )
    byte_201028C |= 0x45u;
  if ( byte_201033C != byte_2010280 )
  {
    v2 = byte_201028C | 4;
    byte_201028C |= 4u;
    if ( *(dword_2010CC0 + 2) )
      byte_201028C = v2 | 1;
  }
  byte_201033C = byte_2010280;
  if ( byte_201028C & 4 )
  {
    sub_814794C();
    byte_201028C &= 0xFBu;
    v0 = 1;
  }
  if ( byte_201028C & 1 && !(sub_814AB50(byte_2010280, 67, &byte_2010290) << 16) )
  {
    v3 = 0;
    if ( !(*(dword_2010CC0 + 2) & 1) )
    {
      do
        v3 = (v3 + 1) & 0xFF;
      while ( v3 <= 3 && !((*(dword_2010CC0 + 2) >> v3) & 1) );
    }
    byte_2010328 = v3;
    byte_200AF84 = v3;
    byte_201028C = byte_201028C & 0xFE | 2;
  }
  return v0;
}


// 0x814794c
int sub_814794C()
{
  unsigned int v0; // r6
  int v1; // r6
  int v2; // r7
  int v3; // r4
  __int16 v5; // [sp+0h] [bp-24h]
  int v6; // [sp+20h] [bp-4h]

  v5 = 0;
  SWI_CpuSet(&v5, &byte_2010290, 16777248);
  if ( ((byte_200AF85 - 1) & 0xFFu) <= 1 )
    byte_2010290 = 1;
  byte_2010291 = (byte_201028C & 0x40) != 0;
  byte_2010293 = 1;
  v0 = 0;
  do
  {
    if ( (byte_2010280 >> v0) & 1 )
      ++byte_2010293;
    v0 = (v0 + 1) & 0xFF;
  }
  while ( v0 <= 3 );
  byte_2010292 = 2 * byte_2010280 | 1;
  sub_81469F0((dword_2010CC0 + 169), &unk_2010294, 8u);
  word_20102C6[0] = *(dword_2010CC0 + 148);
  sub_81469F0((dword_2010CC0 + 154), &unk_20102E0, 0xDu);
  v1 = 0;
  do
  {
    v2 = v1 + 1;
    if ( (byte_2010280 >> v1) & 1 )
    {
      v3 = 32 * v1 + 20;
      sub_81469F0((dword_2010CC0 + v3 + 21), &byte_201029E[10 * v1], 8u);
      sub_81469F0((dword_2010CC0 + v3 + 6), (13 * v1 + 33620717), 0xDu);
      word_20102C6[v2] = *(dword_2010CC0 + 32 * v1 + 20);
    }
    v1 = v2;
  }
  while ( v2 <= 3u );
  return v6;
}


// 0x8147a84
int sub_8147A84()
{
  int v0; // r4
  unsigned __int16 *v1; // r2
  int v2; // r0
  int v4; // [sp+8h] [bp-4h]

  v0 = 0;
  if ( byte_201028C & 2 )
  {
    v1 = dword_2010CB0[byte_2010328];
    v2 = *v1;
    if ( v2 == 38 )
    {
      v0 = *(v1 + 26) ^ *(v1 + 44);
      sub_814A934(4, byte_2010328);
      byte_201028C &= 0xFDu;
      if ( byte_201028C & 0x40 )
        byte_201028C |= 0x80u;
    }
    else if ( v2 == 39 )
    {
      v0 = *(v1 + 26) ^ *(v1 + 44);
      sub_814A934(4, byte_2010328);
      byte_201028C = 0;
      if ( word_200BC58 == 34 )
        word_200BC58 = 3;
    }
    if ( v0 )
      byte_2010340 |= v0;
  }
  return v4;
}


// 0x8147b24
int sub_8147B24()
{
  int v1; // [sp+0h] [bp-4h]

  sub_8147B54(&byte_2010390, &unk_20103A0, 12);
  return v1;
}


// 0x8147b3c
int sub_8147B3C()
{
  int v1; // [sp+0h] [bp-4h]

  sub_8147C20(&byte_2010390, &unk_20103A0, 12);
  return v1;
}


// 0x8147b54
int __fastcall sub_8147B54(int a1, int a2, int a3)
{
  int v3; // r7
  int v4; // r8
  int v5; // r4
  unsigned int v6; // r2
  __int16 v8; // [sp+0h] [bp-1Ch]
  __int16 v9; // [sp+2h] [bp-1Ah]
  int v10; // [sp+18h] [bp-4h]

  v3 = a2;
  v4 = a3;
  v8 = 0;
  v5 = ((a3 << 10) >> 11) | 0x1000000;
  SWI_CpuSet(&v8, a1, v5);
  v9 = 0;
  SWI_CpuSet(&v9, v3, v5);
  sub_8146A70(&unk_200FFF0);
  sub_8146A70(&unk_200FE90);
  byte_20101B4 = 1;
  byte_2010274 = byte_2010292;
  v6 = 0;
  do
  {
    byte_2010220[v6] = 0;
    word_2010400[v6] = 0;
    word_2010428[v6] = 0;
    v6 = (v6 + 1) & 0xFF;
  }
  while ( v6 <= 3 );
  byte_2010390 = 0;
  sub_814A934(12, byte_20103E0);
  sub_814AAF0(32, byte_20103E0, v3, v4);
  word_200BC58 = 49;
  return v10;
}


// 0x8147c20
int __fastcall sub_8147C20(int a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r7
  int v5; // r5
  int v6; // r0
  int v8; // [sp+10h] [bp-4h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  if ( byte_200AF81 == 2 || byte_200AF80 == 4 )
    sub_813D934(15);
  sub_81453F0(Timer2Counter_Reload);
  sub_8147F50(&byte_200AF80, v3, v5);
  sub_8147DE0(&byte_200AF80, v4);
  switch ( word_200BC58 )
  {
    case 9:
      sub_8145120(1);
      word_200BC58 = 10;
      break;
    case 0xB:
      eStruct200FE00_setUnk04To15h();
      word_200BC58 = 12;
      break;
    case 0x10:
      if ( !byte_200FE02 )
      {
        v6 = sub_814A4CC(*(dword_2010CC0 + 3) | *(dword_2010CC0 + 2));
        sub_8149568(v6);
      }
      break;
    case 0x33:
      if ( *(dword_2010CC0 + 3) | *(dword_2010CC0 + 2) )
      {
        word_200BC58 = 16;
        sub_81464D4();
      }
      else
      {
        word_200BC58 = 5;
      }
      break;
    case 0x34:
      sub_814A828();
      sub_813D760();
      break;
    default:
      return v8;
  }
  return v8;
}


// 0x8147de0
int __fastcall sub_8147DE0(int a1, int a2)
{
  int v2; // r4
  int v3; // r5
  int v4; // r0
  int v6; // [sp+8h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !*(a1 + 1) )
  {
    v4 = *(dword_2010CB0[byte_20103E0] + 52);
    if ( v4 != 71 )
    {
      if ( v4 == 70 )
      {
        sub_814A934(8, byte_20103E0);
        *(v2 + 1) = 1;
        sub_813D7B8(v3);
        return v6;
      }
      if ( v4 != 72 )
        return v6;
    }
    sub_814A934(8, byte_20103E0);
    if ( word_200BC58 == 49 )
      *(v2 + 1) = 2;
  }
  return v6;
}


// 0x8147e44
int __fastcall sub_8147E44(_BYTE *a1, int a2)
{
  _BYTE *v2; // r4
  int v4; // [sp+4h] [bp-4h]

  v2 = a1;
  if ( sub_814AB50((0x1000000 << byte_20103E0) >> 24, (a2 + 2) & 0xFF, &byte_2010390) << 16 )
  {
    if ( word_200BC58 == 49 )
      *v2 = 4;
    byte_20101B4 = -125;
  }
  else
  {
    *v2 = 2;
  }
  return v4;
}


// 0x8147e98
int __fastcall sub_8147E98(_BYTE *a1, int a2)
{
  _BYTE *v2; // r4
  int v3; // r5
  int v4; // r0
  int v5; // r4
  char *v6; // r0
  int v8; // [sp+8h] [bp-4h]

  v2 = a1;
  v3 = a2;
  v4 = *dword_2010CB0[byte_20103E0];
  if ( v4 == 38 )
  {
    sub_814A934(4, byte_20103E0);
    *v2 = 3;
    v2[2] = 0;
    v5 = *(v3 + 1);
    v6 = sub_802D064(0);
    sub_813D78C(v5, v6);
  }
  else if ( v4 == 39 )
  {
    sub_814A934(4, byte_20103E0);
    if ( word_200BC58 == 49 )
      *v2 = 4;
  }
  return v8;
}


// 0x8147f00
int __fastcall sub_8147F00(int a1, unsigned int a2)
{
  int v2; // r7
  unsigned int v3; // r5
  char v4; // r6
  __int16 v6; // [sp+0h] [bp-18h]
  int v7; // [sp+14h] [bp-4h]

  v2 = a1;
  v3 = a2;
  v4 = byte_2010390;
  v6 = 0;
  SWI_CpuSet(&v6, &byte_2010390, (a2 << 10 >> 11) | 0x1000000);
  if ( byte_20101B4 == 1 )
  {
    byte_2010390 = v4 + 1;
    CopyWords(&byte_200DD10, v2, v3);
  }
  return v7;
}


// 0x8147f50
int __fastcall sub_8147F50(unsigned __int8 *a1, int a2, unsigned int a3)
{
  _BYTE *v3; // r4
  int v4; // r5
  signed int v5; // r0
  int v7; // [sp+8h] [bp-4h]

  v3 = a1;
  v4 = a3;
  v5 = *a1;
  if ( v5 == 1 )
    goto LABEL_10;
  if ( v5 > 1 )
  {
    if ( v5 == 2 )
    {
      sub_8147E98(v3, a2);
      return v7;
    }
    if ( v5 != 3 )
      return v7;
    *v3 = 0;
  }
  else if ( v5 )
  {
    return v7;
  }
  if ( v3[2] )
  {
    sub_8147F00(a2, a3);
LABEL_10:
    sub_8147E44(v3, v4);
  }
  return v7;
}


// 0x8147f98
int __fastcall sub_8147F98(int a1, int a2, int a3, int a4)
{
  int v4; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  __int16 v9; // [sp+0h] [bp-14h]

  sub_803DE88(4, a2, a3, a4);
  v4 = sub_81465FC(&unk_2010350);
  word_2010352 = 0;
  sub_813D960(v4, v5, v6, v7);
  sub_8144DF0(sub_814801C, sub_8148208);
  Timer2Counter_Reload = 0;
  Timer2Control = 131;
  word_200BC58 = 1;
  byte_200BC55 = 1;
  byte_2010288 = 0;
  byte_20103E0 = 0;
  v9 = 0;
  SWI_CpuSet(&v9, &byte_2010290, 16777248);
  sub_8146CFC();
  return 0;
}


// 0x814801c
int __fastcall sub_814801C(signed int a1)
{
  int v2; // [sp+0h] [bp-4h]

  a1 = a1;
  if ( a1 == 50 )
  {
    word_200BC58 = word_2010338;
    return v2;
  }
  if ( a1 <= 50 )
  {
    if ( a1 == 35 )
    {
      word_20102D0 = 3;
      word_200BC58 = 63;
      sub_813D934(2);
      return v2;
    }
    if ( a1 <= 35 )
    {
      if ( a1 == 32 )
      {
        byte_2010324 = word_200FE14;
        return v2;
      }
      if ( a1 <= 32 )
      {
        if ( a1 )
          return v2;
        goto LABEL_49;
      }
      if ( a1 != 33 )
      {
        if ( a1 == 34 )
        {
          byte_20103E0 = word_200FE14;
          byte_200AF84 = word_200FE14;
          sub_814AAF0(32, word_200FE14, &byte_2010290, 64);
          word_200BC58 = 13;
          sub_813D934(10);
        }
        return v2;
      }
LABEL_49:
      word_200BC58 = 5;
      return v2;
    }
    if ( a1 == 37 )
    {
      word_200BC58 = 63;
      sub_813D934(3);
      return v2;
    }
    if ( a1 < 37 )
    {
      word_200BC58 = 37;
      sub_813D934(16);
      return v2;
    }
    if ( a1 != 48 )
    {
      if ( a1 == 49 )
      {
        sub_813D934(14);
        word_2010338 = word_200BC58;
        word_200BC58 = 14;
      }
      return v2;
    }
LABEL_48:
    sub_813D934(15);
    return v2;
  }
  if ( a1 == 80 )
  {
    sub_8144DB0(1u);
    return v2;
  }
  if ( a1 > 80 )
  {
    if ( a1 == 241 )
    {
      word_200BC58 = 1;
      sub_813D934(13);
    }
    else if ( a1 > 241 )
    {
      if ( a1 == 242 )
      {
        word_200BC58 = 1;
        sub_813D934(19);
      }
      else if ( a1 == 255 )
      {
        word_200BC58 = 63;
        sub_813D934(1);
      }
    }
    else if ( a1 == 240 )
    {
      word_200BC58 = 63;
      word_20102D0 = word_200FE14;
      sub_813D934(5);
    }
  }
  else
  {
    if ( a1 == 66 )
    {
      word_200BC58 = 52;
      return v2;
    }
    if ( a1 <= 66 )
    {
      if ( a1 != 51 )
        return v2;
      goto LABEL_48;
    }
    if ( a1 == 67 )
    {
      sub_814A828();
      goto LABEL_49;
    }
    if ( a1 == 68 )
      word_200BC58 = 11;
  }
  return v2;
}


// 0x8148208
int sub_8148208()
{
  int v1; // [sp+0h] [bp-4h]

  sub_814B694();
  return v1;
}


// 0x8148214
int sub_8148214()
{
  int v1; // [sp+0h] [bp-4h]

  sub_8148234(&dword_814FE90);
  return v1;
}


// 0x8148224
int sub_8148224()
{
  int v1; // [sp+0h] [bp-4h]

  sub_8148234(&dword_814FE94);
  return v1;
}


// 0x8148234
int __fastcall sub_8148234(unsigned __int16 *a1)
{
  unsigned __int16 *v1; // r4
  int v2; // r2
  int v3; // r3
  int v4; // r0
  int v5; // r0
  int v7; // [sp+4h] [bp-4h]

  v1 = a1;
  byte_2010324 = 0;
  sub_81453F0(Timer2Counter_Reload);
  switch ( word_200BC58 )
  {
    case 1:
      sub_8144E70(&unk_2010350);
      word_200BC58 = 2;
      return v7;
    case 5:
      if ( !sub_8144EF8(0, 0, 120, v1) )
      {
        byte_2010324 = 0;
        word_200BC58 = 6;
        sub_8146854(6, &byte_200BC50, v2, v3);
      }
      return v7;
    case 6:
      if ( byte_2010288 && byte_200FE04 > 8u && byte_200FE04 <= 0xBu )
      {
        sub_813D934(7);
      }
      else if ( !sub_803C514() )
      {
        sub_813D934(6);
      }
      return v7;
    case 7:
      if ( sub_8144FD0(*(dword_2010CC0 + 32 * byte_2010330[byte_20103E4] + 20), 120) << 24 )
      {
        sub_813D934(8);
        word_200BC58 = 7;
      }
      else
      {
        sub_813D934(9);
        word_200BC58 = 8;
      }
      return v7;
    case 9:
      sub_8145120(1);
      word_200BC58 = 10;
      return v7;
    case 0xB:
      eStruct200FE00_setUnk04To15h();
      word_200BC58 = 12;
      return v7;
    case 0x10:
      if ( !byte_200FE02 )
      {
        v5 = sub_814A4CC(*(dword_2010CC0 + 3) | *(dword_2010CC0 + 2));
        sub_8149568(v5);
      }
      return v7;
    case 0x25:
      v4 = *(dword_2010CB0[byte_20103E0] + 52);
      if ( v4 == 70 )
      {
        sub_814A934(8, byte_20103E0);
        if ( byte_2010291 )
        {
          if ( !byte_2010290 )
          {
            sub_813D8D0();
            sub_813D934(0);
            return v7;
          }
          goto LABEL_19;
        }
        if ( byte_2010290 )
        {
LABEL_19:
          sub_813D934(18);
          return v7;
        }
        sub_813D934(17);
      }
      else if ( ((v4 - 71) & 0xFFFFu) <= 1 )
      {
        sub_814A934(8, byte_20103E0);
        word_200BC58 = 63;
        sub_813D934(4);
      }
      return v7;
    case 0x33:
      if ( *(dword_2010CC0 + 3) | *(dword_2010CC0 + 2) )
      {
        word_200BC58 = 16;
        sub_81464D4();
      }
      else
      {
        word_200BC58 = 5;
      }
      return v7;
    case 0x34:
      sub_814A828();
      sub_813D760();
      return v7;
    default:
      return v7;
  }
}


// 0x8148540
int sub_8148540()
{
  unsigned int v0; // r4
  unsigned int v1; // r4
  int result; // r0
  __int16 v3; // [sp+0h] [bp-1Ch]
  __int16 v4; // [sp+2h] [bp-1Ah]

  v3 = 0;
  SWI_CpuSet(&v3, &byte_20101E0, 16777248);
  v4 = 0;
  SWI_CpuSet(&v4, &unk_2010230, 16777248);
  sub_8146A70(&unk_200FFF0);
  sub_8146A70(&unk_200FE90);
  byte_2010270 = 0;
  byte_2010408 = 0;
  dword_2010418 = 0;
  byte_20103F4 = 0;
  byte_2010434 = 0;
  byte_20101D4 = 0;
  byte_20103F8 = 0;
  byte_2010480 = 0;
  v0 = 0;
  do
  {
    byte_2010220[v0] = 0;
    word_2010400[v0] = 0;
    word_2010420[v0] = 0;
    word_2010428[v0] = 0;
    word_2010410[v0] = 0;
    v0 = (v0 + 1) & 0xFF;
  }
  while ( v0 <= 3 );
  byte_20101B0 = 1;
  byte_20101D0 = 1;
  byte_20101B4 = 1;
  byte_20103F0 = 0;
  byte_2010274 = byte_2010292;
  byte_2010292 = 2 * *(dword_2010CC0 + 2) | 1;
  byte_201021C = 1;
  byte_2010430 = 1;
  sub_803ECFC(&byte_2010430);
  sub_803F030(&byte_20101E0, 0xCu);
  sub_81463E8(sub_8148738);
  sub_81463D0(sub_8148878);
  v1 = 0;
  do
  {
    if ( byte_2010292 & (2 << v1) )
    {
      sub_814AAF0(16, v1, &unk_2010230 + 16 * v1, 14);
      sub_814A934(3, v1);
    }
    v1 = (v1 + 1) & 0xFF;
  }
  while ( v1 <= 3 );
  byte_201021D = byte_2010293;
  if ( sub_814AB7C(byte_2010292 >> 1) & 0xFFFF )
    return 1;
  byte_2010328 = 0;
  if ( !(byte_2010292 & 2) )
  {
    do
      ++byte_2010328;
    while ( byte_2010328 <= 3u && !(byte_2010292 & (2 << byte_2010328)) );
  }
  byte_200AF84 = byte_2010328;
  result = sub_814B068(byte_2010328);
  word_200BC58 = 48;
  return result;
}


// 0x8148738
int __fastcall sub_8148738(signed int a1)
{
  int v1; // r0
  int v2; // r0
  int v4; // [sp+4h] [bp-4h]

  a1 = a1;
  if ( a1 != 67 )
  {
    if ( a1 > 67 )
    {
      if ( a1 == 240 )
      {
        if ( word_200FE14 == 38 )
        {
          if ( byte_20101B4 == 143 || byte_2010292 == 1 )
            word_200FE16 = 0;
        }
        else if ( word_200FE16 )
        {
          word_200BC58 = 50;
          byte_2010368 = 0;
          sub_813D934(21);
        }
      }
      else
      {
        if ( a1 <= 240 )
        {
          if ( a1 == 68 )
          {
            word_200BC58 = 11;
            return v4;
          }
          if ( a1 != 80 )
            return v4;
          v1 = sub_8148B80();
          sub_8148BCC(v1);
          byte_2010368 = 0;
          goto LABEL_24;
        }
        if ( a1 == 242 )
        {
          byte_2010368 = 0;
          sub_813D934(19);
        }
        else
        {
          if ( a1 < 242 )
          {
            word_200BC58 = 63;
            v2 = 13;
          }
          else
          {
            if ( a1 != 255 )
              return v4;
            word_200BC58 = 63;
            v2 = 1;
          }
          sub_813D934(v2);
          byte_2010368 = 0;
        }
      }
    }
    else if ( a1 != 50 )
    {
      if ( a1 <= 50 )
      {
        if ( a1 != 48 )
        {
          if ( a1 != 49 )
            return v4;
LABEL_24:
          sub_813D934(14);
          return v4;
        }
LABEL_25:
        byte_2010408 = 1;
        byte_2010368 = 0;
        sub_813D934(15);
        return v4;
      }
      if ( a1 != 64 )
      {
        if ( a1 <= 64 )
        {
          if ( a1 != 51 )
            return v4;
          goto LABEL_25;
        }
        if ( a1 == 66 )
          word_200BC58 = 52;
      }
    }
  }
  return v4;
}


// 0x8148878
int sub_8148878()
{
  int v1; // [sp+0h] [bp-4h]

  sub_814B694();
  return v1;
}


// 0x8148884
int sub_8148884()
{
  signed __int16 v0; // r0
  int v2; // [sp+0h] [bp-4h]

  while ( byte_2010368 == 1 )
    ;
  sub_81453F0(0);
  if ( byte_2010408 && byte_2010270 )
  {
    byte_2010270 = 0;
    byte_20101D0 = 1;
    byte_20101B0 = 1;
    byte_2010408 = 0;
  }
  sub_8148A80();
  if ( !*(dword_2010CC0 + 3) && word_200BC58 == 48 && byte_2010430 )
  {
    byte_2010368 = 1;
    if ( byte_2010270 )
    {
      sub_81493E4();
    }
    else
    {
      sub_814AFD4(byte_2010328, &byte_20101E0, 64);
      sub_8144DB0(1u);
    }
  }
  switch ( word_200BC58 )
  {
    case 9:
      sub_8145120(1);
      v0 = 10;
      goto LABEL_16;
    case 0xB:
      eStruct200FE00_setUnk04To15h();
      v0 = 12;
LABEL_16:
      word_200BC58 = v0;
      break;
    case 0x32:
      word_200BC58 = 0;
      sub_814A828();
      sub_8144D64();
      sub_813D760();
      break;
    case 0x34:
      sub_814A828();
      sub_813D760();
      break;
    default:
      return v2;
  }
  return v2;
}


// 0x8148a80
int sub_8148A80()
{
  char v0; // r6
  unsigned int v1; // r4
  __int16 v3; // [sp+0h] [bp-14h]
  int v4; // [sp+10h] [bp-4h]

  if ( byte_20101B4 != 143 && (byte_20101D0 & byte_2010292) == byte_2010292 )
  {
    v0 = byte_201021C;
    if ( byte_20101B4 == 1 && byte_20103F0 == 1 )
      sub_803F334(&byte_20101E0, 0x40u);
    byte_2010430 = 0;
    v3 = 0;
    SWI_CpuSet(&v3, &byte_20101E0, 16777248);
    byte_201021D = byte_2010293;
    v1 = 0;
    do
    {
      if ( ((0x2000000 << v1) >> 24) & byte_2010292 && byte_20101B4 == 1 )
        CopyWords(&unk_2010230 + 16 * v1, &unk_20101EC + 12 * v1, 0xCu);
      v1 = (v1 + 1) & 0xFF;
    }
    while ( v1 <= 3 );
    if ( byte_20101B4 == 1 )
    {
      if ( !sub_803F030(&byte_20101E0, 0xCu) )
      {
        byte_20103F0 = 1;
        byte_201021C = v0 + 1;
        sub_803F05C();
      }
      byte_20101D0 = 1;
      byte_20101B0 = 1;
    }
    if ( byte_2010293 > 1u )
      byte_2010430 = 1;
  }
  return v4;
}


// 0x8148b80
int sub_8148B80()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = 2 * byte_200FE03 | byte_20101D0;
  byte_20101D0 |= 2 * byte_200FE03;
  if ( (v0 & byte_2010292) == byte_2010292 )
  {
    byte_2010270 = 0;
    byte_2010430 = 0;
  }
  else
  {
    byte_2010270 = 1;
  }
  return v2;
}


// 0x8148bcc
int sub_8148BCC()
{
  unsigned int v0; // r4
  unsigned int v1; // r3
  int v2; // r3
  int v3; // r1
  __int16 *v4; // r1
  __int16 v5; // r0
  __int16 *v6; // r0
  int v7; // r2
  char *v8; // r1
  char v9; // r0
  int v11; // [sp+10h] [bp-4h]

  if ( byte_20101B4 == 143 )
    return v11;
  v0 = 0;
  do
  {
    v1 = (0x2000000 << v0) >> 24;
    if ( byte_2010292 & v1 && (*off_2010CA0[v0])[18] )
    {
      byte_20101B0 |= v1;
      sub_814B094(v0);
      v2 = byte_2010220[v0];
      v3 = byte_2010230[16 * v0 + 12];
      if ( ((v2 + 1) & 0xFF) == v3 )
      {
        v4 = &word_2010420[v0];
        v5 = 0;
      }
      else
      {
        if ( v2 == v3 )
        {
          ++word_2010400[v0];
          ++word_2010420[v0];
LABEL_14:
          byte_2010220[v0] = byte_2010230[16 * v0 + 12];
          goto LABEL_15;
        }
        if ( ((v2 - 1) & 0xFF) == v3 )
          v6 = word_2010410;
        else
          v6 = word_2010428;
        v4 = &v6[v0];
        v5 = *v4 + 1;
      }
      *v4 = v5;
      goto LABEL_14;
    }
LABEL_15:
    v0 = (v0 + 1) & 0xFF;
  }
  while ( v0 <= 3 );
  v7 = (byte_2010292 & byte_20101B0);
  if ( v7 != byte_2010292 )
    goto LABEL_19;
  if ( (byte_2010292 & byte_20101D0) == v7 )
    goto LABEL_28;
  ++byte_2010434;
LABEL_19:
  if ( (byte_20101D0 & byte_2010292) == byte_2010292 )
  {
LABEL_28:
    if ( (byte_20101B0 & byte_2010292) != byte_2010292 )
    {
      v8 = &byte_20103F8;
      if ( byte_20103F8 )
      {
        ++byte_20101D4;
        v8 = &byte_20101B4;
        v9 = -125;
      }
      else
      {
        v9 = 1;
      }
      *v8 = v9;
    }
  }
  return v11;
}


// 0x8148d24
signed int sub_8148D24()
{
  unsigned int v0; // r2
  int v1; // r0
  __int16 v3; // [sp+0h] [bp-18h]
  __int16 v4; // [sp+2h] [bp-16h]

  byte_2010480 = 0;
  if ( word_20102C6[0] != *(dword_2010CC0 + 148) )
  {
    do
      ++byte_2010480;
    while ( byte_2010480 <= 4u && word_20102C6[byte_2010480] != *(dword_2010CC0 + 148) );
  }
  v3 = 0;
  SWI_CpuSet(&v3, &byte_2010390, 16777224);
  v4 = 0;
  SWI_CpuSet(&v4, &unk_20103A0, 16777248);
  sub_8146A70(&unk_200FFF0);
  sub_8146A70(&unk_200FE90);
  v0 = 0;
  do
  {
    byte_2010220[v0] = 0;
    word_2010400[v0] = 0;
    word_2010420[v0] = 0;
    word_2010428[v0] = 0;
    v0 = (v0 + 1) & 0xFF;
  }
  while ( v0 <= 3 );
  byte_20101B4 = 0;
  byte_2010274 = byte_2010292;
  byte_201039C = 0;
  sub_81463E8(sub_8148E74);
  sub_81463D0(sub_8148FB4);
  sub_814AAF0(16, byte_20103E0, &unk_20103A0, 64);
  v1 = sub_814A934(3, byte_20103E0);
  sub_803ECFC(v1);
  sub_803F030(&byte_2010390, 0xCu);
  if ( sub_814AB7C((0x1000000 << byte_20103E0) >> 24) << 16 )
    return 1;
  word_200BC58 = 49;
  return 0;
}


// 0x8148e74
int __fastcall sub_8148E74(signed int a1)
{
  int v2; // [sp+0h] [bp-4h]

  a1 = a1;
  if ( a1 > 65 )
  {
    if ( a1 == 80 )
    {
      sub_814912C();
    }
    else if ( a1 > 80 )
    {
      if ( a1 == 241 )
      {
        word_200BC58 = 50;
        sub_813D934(13);
      }
      else if ( a1 > 241 )
      {
        if ( a1 == 242 )
        {
          word_200BC58 = 50;
          sub_813D934(19);
        }
        else if ( a1 == 255 )
        {
          word_200BC58 = 63;
          sub_813D934(1);
        }
      }
      else if ( a1 == 240 )
      {
        if ( word_200FE14 == 48 && byte_20101B4 == 143 && word_200FE16 == 3 )
        {
          word_200FE16 = 0;
          word_200BC58 = 50;
          sub_813D934(21);
        }
        if ( word_200FE16 )
        {
          word_200BC58 = 50;
          sub_813D934(21);
        }
      }
    }
    else if ( a1 != 67 )
    {
      if ( a1 < 67 )
      {
        word_200BC58 = 52;
      }
      else if ( a1 == 68 )
      {
        word_200BC58 = 11;
      }
    }
  }
  else if ( a1 < 64 )
  {
    if ( a1 == 48 )
    {
LABEL_25:
      word_200BC58 = 50;
      sub_813D934(15);
      return v2;
    }
    if ( a1 > 48 )
    {
      if ( a1 == 50 )
      {
        word_200BC58 = word_2010338;
      }
      else
      {
        if ( a1 >= 50 )
        {
          if ( a1 != 51 )
            return v2;
          goto LABEL_25;
        }
        sub_813D934(14);
        word_2010338 = word_200BC58;
        word_200BC58 = 14;
      }
    }
  }
  return v2;
}


// 0x8148fb4
int sub_8148FB4()
{
  int v1; // [sp+0h] [bp-4h]

  sub_814B694();
  return v1;
}


// 0x8148fc0
int sub_8148FC0()
{
  signed __int16 v0; // r0
  int v2; // [sp+0h] [bp-4h]

  sub_81453F0(0);
  switch ( word_200BC58 )
  {
    case 9:
      sub_8145120(1);
      v0 = 10;
      goto LABEL_6;
    case 0xB:
      eStruct200FE00_setUnk04To15h();
      v0 = 12;
LABEL_6:
      word_200BC58 = v0;
      break;
    case 0x32:
      sub_814A828();
      sub_8144D64();
      word_200BC58 = 0;
      sub_813D760();
      break;
    case 0x34:
      sub_814A828();
      sub_813D760();
      break;
    default:
      return v2;
  }
  return v2;
}


// 0x814912c
int sub_814912C()
{
  int v1; // [sp+0h] [bp-4h]

  if ( sub_8149150() << 24 )
    sub_814B068(byte_20103E0);
  sub_8144DB0(1u);
  return v1;
}


// 0x8149150
signed int sub_8149150()
{
  signed int v0; // r6
  __int16 *v2; // r1

  v0 = 0;
  if ( byte_20101B4 == 143 )
    return 0;
  if ( (*off_2010CA0[byte_20103E0])[18] )
  {
    v0 = 1;
    sub_814B094(byte_20103E0);
    if ( ((byte_2010220[0] + 1) & 0xFF) == byte_20103DC )
    {
      sub_803F334(&unk_20103A0, 0x40u);
      byte_20101B4 = 1;
      if ( sub_803F030(&byte_2010390, 0xCu) )
      {
        byte_20101B4 = -125;
      }
      else
      {
        ++byte_201039C;
        sub_803F05C();
      }
      byte_2010220[0] = byte_20103DC;
      word_2010420[0] = 0;
    }
    else
    {
      if ( byte_2010220[0] == byte_20103DC )
      {
        ++word_2010400[0];
        v2 = word_2010420;
      }
      else
      {
        v2 = word_2010428;
      }
      ++*v2;
    }
  }
  return v0;
}


// 0x8149220
signed int __fastcall sub_8149220(int a1, unsigned __int16 a2, int a3, char a4)
{
  char *v5; // r3
  unsigned int v6; // r5
  int v7; // r1
  int v8; // r0
  unsigned int v9; // r5
  int v10; // r0
  char (*v11)[28]; // r0
  _WORD *v12; // r5
  _WORD *v13; // r4
  int v14; // r3

  if ( (a1 & 0xF000000) == 0x2000000 && a4 || a1 & 3 )
    return 2;
  if ( a4 )
    v5 = &loc_E64;
  else
    v5 = &byte_504;
  if ( a2 < v5 )
    return 1;
  dword_2010CC0 = a1;
  dword_2010CC4 = a1 + 180;
  dword_2010CC8 = a1 + 220;
  dword_2010CB0[0] = a1 + 444;
  off_2010CA0[0] = (a1 + 892);
  v6 = 1;
  do
  {
    v7 = v6 - 1;
    dword_2010CB0[v6] = dword_2010CB0[v7] + 112;
    off_2010CA0[v6] = off_2010CA0[v7] + 1;
    v6 = (v6 + 1) & 0xFFFF;
  }
  while ( v6 <= 3 );
  *(dword_2010CC8 + 220) = dword_2010CAC + 28;
  v8 = sub_814C10C();
  sub_814935C(v8);
  v9 = 0;
  do
  {
    v10 = dword_2010CB0[v9];
    *(v10 + 104) = 0;
    *(v10 + 108) = 0;
    v11 = off_2010CA0[v9];
    *&(*v11)[20] = 0;
    *&(*v11)[24] = 0;
    v9 = (v9 + 1) & 0xFFFF;
  }
  while ( v9 <= 3 );
  v12 = (sub_814A794 & 0xFFFFFFFE);
  v13 = (dword_2010CC8 + 8);
  v14 = 23;
  do
  {
    *v13 = *v12;
    ++v12;
    ++v13;
    v14 = (v14 - 1) & 0xFFFF;
  }
  while ( v14 != 0xFFFF );
  *(dword_2010CC8 + 4) = dword_2010CC8 + 9;
  return 0;
}


// 0x814935c
int sub_814935C()
{
  __int16 v0; // r7
  char v1; // r4
  unsigned int v2; // r2
  __int16 v4; // [sp+0h] [bp-18h]
  __int16 v5; // [sp+2h] [bp-16h]
  int v6; // [sp+14h] [bp-4h]

  v0 = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  v1 = *dword_2010CC4;
  v4 = 0;
  SWI_CpuSet(&v4, dword_2010CC4, 16777236);
  *dword_2010CC4 = v1 & 8;
  v5 = 0;
  SWI_CpuSet(&v5, dword_2010CC0, 16777306);
  *(dword_2010CC0 + 9) = 4;
  *(dword_2010CC4 + 6) = 0;
  *dword_2010CC0 = -1;
  sub_814A828();
  *(dword_2010CC4 + 9) = 0;
  v2 = 0;
  do
  {
    *(dword_2010CC4 + 18 + 2 * v2) = 0;
    v2 = (v2 + 1) & 0xFF;
  }
  while ( v2 <= 3 );
  InterruptMasterEnableRegister = v0;
  return v6;
}


// 0x81493e4
int sub_81493E4()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_81494B8);
  sub_814C7D4(v0);
  return v2;
}


// 0x81493f8
signed int __fastcall sub_81493F8(unsigned __int8 *a1)
{
  unsigned __int8 *v1; // r4
  unsigned __int8 *v3; // r0
  unsigned __int8 *v4; // r1
  int v5; // r0
  unsigned __int8 v6; // r0

  v1 = a1;
  *a1 = 0;
  if ( *dword_2010CC0 != 1 )
    return 768;
  v3 = sub_8149454();
  v4 = v3;
  v5 = *v3;
  if ( v5 != 40 && v5 != 54 )
    return 16;
  if ( v4[1] )
    v6 = v4[4];
  else
    v6 = *(dword_2010CC0 + 2);
  *v1 = v6;
  return 0;
}


// 0x8149440
int __fastcall sub_8149440(unsigned __int8 a1, int a2)
{
  int v3; // [sp+0h] [bp-4h]

  sub_814C1E4(a2, a1);
  return v3;
}


// 0x8149454
int sub_8149454()
{
  return *(dword_2010CC8 + 220);
}


// 0x8149464
int sub_8149464()
{
  int v1; // [sp+0h] [bp-4h]

  sub_814C36C();
  return v1;
}


// 0x8149470
int __fastcall sub_8149470(unsigned int a1)
{
  int v2; // [sp+0h] [bp-4h]

  *dword_2010CC8 = a1;
  sub_814948C((-a1 | a1) >> 31);
  return v2;
}


// 0x814948c
int __fastcall sub_814948C(int a1)
{
  _BYTE *v1; // r2
  char v2; // r0
  int v4; // [sp+0h] [bp-4h]

  if ( a1 << 24 )
  {
    v1 = dword_2010CC4;
    v2 = *dword_2010CC4 | 8;
  }
  else
  {
    v1 = dword_2010CC4;
    v2 = *dword_2010CC4 & 0xF7;
  }
  *v1 = v2;
  return v4;
}


// 0x81494b8
int __fastcall sub_81494B8(unsigned __int8 a1, unsigned __int16 a2)
{
  int v2; // r5
  int v3; // r4
  _BYTE *v4; // r0
  int v5; // r2
  int v7; // [sp+8h] [bp-4h]

  v2 = a1;
  v3 = a2;
  sub_814C360(sub_81494F8);
  v4 = dword_2010CC4;
  *(dword_2010CC4 + 28) = v3;
  if ( *v4 & 8 )
  {
    v5 = *dword_2010CC8;
    sub_814DA68(v2, v3);
  }
  return v7;
}


// 0x81494f8
int __fastcall sub_81494F8(unsigned __int8 a1, int a2)
{
  unsigned int v2; // r1
  int v3; // r2
  int v4; // r5
  unsigned int v5; // r4
  int v7; // [sp+8h] [bp-4h]

  v2 = a2 << 16;
  if ( a1 == 255 )
  {
    if ( *dword_2010CC4 & 8 )
    {
      v3 = *dword_2010CC8;
      sub_814DA68(255, v2 >> 16);
    }
    v4 = *(dword_2010CC0 + 3) | *(dword_2010CC0 + 2);
    v5 = 0;
    do
    {
      if ( (v4 >> v5) & 1 )
        sub_814A41C(v5);
      v5 = (v5 + 1) & 0xFF;
    }
    while ( v5 <= 3 );
    *dword_2010CC0 = -1;
  }
  return v7;
}


// 0x8149568
int sub_8149568()
{
  sub_814C384();
  return *(dword_2010CC4 + 28);
}


// 0x814957c
int sub_814957C()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_81494B8);
  sub_814C418(v0);
  return v2;
}


// 0x8149590
signed int __fastcall sub_8149590(_BYTE *a1)
{
  _BYTE *v1; // r4
  int v3; // r0

  v1 = a1;
  if ( **(dword_2010CC8 + 220) != 147 )
    return 16;
  if ( sub_814C384() << 16 )
    LOBYTE(v3) = -1;
  else
    v3 = *(*(dword_2010CC8 + 220) + 7);
  *v1 = v3;
  return 0;
}


// 0x81495cc
signed int sub_81495CC()
{
  char *v0; // r2
  char *v1; // r3
  int v2; // r0
  int v3; // r1
  unsigned __int16 *v4; // r2
  int v5; // r3
  unsigned int v6; // r1

  v0 = &byte_81C03D8;
  v1 = byte_30000F0;
  while ( 1 )
  {
    v3 = *v0;
    if ( !*v0 )
      break;
    v2 = *v1++;
    ++v0;
    if ( v3 != v2 )
      return 1;
  }
  v4 = &unk_3000000;
  v5 = 0;
  v6 = 0;
  do
  {
    v5 = (v5 + *v4) & 0xFFFF;
    ++v4;
    v6 = (v6 + 1) & 0xFF;
  }
  while ( v6 <= 0x59 );
  if ( v5 == *byte_30000FA )
  {
    SWI_CpuSet(50331648, dword_2010CC0, 90);
    *dword_2010CC4 |= 0x80u;
    return 0;
  }
  return 1;
}


// 0x8149644
int sub_8149644()
{
  __int16 v0; // t1
  __int16 *v1; // r1
  int v2; // r0
  int v4; // [sp+0h] [bp-4h]

  if ( InterruptMasterEnableRegister )
  {
    sub_814C220();
    sub_814935C();
    if ( sub_814CC48(8) == 32769 )
    {
      v1 = &Timer0Counter_Reload[2 * *(dword_2010CCC + 10)];
      *v1 = 0;
      *v1 = 8585216;
      while ( *v1 << 16 <= 0x105FFFFu )
        ;
      *v1 = 0;
      v2 = sub_814C360(sub_81496EC);
      sub_814C8E4(v2);
    }
    else
    {
      SIOControlRegister = 0x2000;
      sub_81494B8(0x3Du, 0);
    }
  }
  else
  {
    sub_81494B8(0x3Du, 6u);
    v0 = *(dword_2010CCC + 18);
    *(dword_2010CCC + 18) = 6;
  }
  return v4;
}


// 0x81496ec
int __fastcall sub_81496EC(unsigned __int8 a1, unsigned __int16 a2)
{
  int v3; // [sp+4h] [bp-4h]

  if ( !a2 )
    SIOControlRegister = 0x2000;
  sub_81494B8(a1, a2);
  return v3;
}


// 0x8149718
signed int sub_8149718()
{
  int v1; // r2

  if ( !InterruptMasterEnableRegister )
    return -1;
  sub_814C220();
  sub_814935C();
  v1 = sub_814CC48(30);
  if ( !v1 )
    SIOControlRegister = 0x2000;
  return v1;
}


// 0x8149754
int sub_8149754()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_8149768);
  sub_814C3AC(v0);
  return v2;
}


// 0x8149768
int __fastcall sub_8149768(unsigned __int8 a1, unsigned __int16 a2)
{
  unsigned __int8 v2; // r5
  unsigned __int16 v3; // r4
  int v5; // [sp+8h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !a2 )
    sub_814935C();
  sub_81494B8(v2, v3);
  return v5;
}


// 0x814978c
int __fastcall sub_814978C(char a1, unsigned __int8 a2, unsigned __int8 a3)
{
  char v3; // r4
  int v4; // r5
  int v5; // r6
  __int16 v6; // r4
  int v8; // [sp+Ch] [bp-4h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  sub_814C360(sub_81494B8);
  sub_814C4DC(v3 & 3 | 0x3C, v4, v5);
  if ( v5 )
  {
    v6 = InterruptMasterEnableRegister;
    InterruptMasterEnableRegister = 0;
    *(dword_2010CC4 + 26) = SWI_Div(600, v5);
    InterruptMasterEnableRegister = v6;
  }
  else
  {
    *(dword_2010CC4 + 26) = 1;
  }
  return v8;
}


// 0x81497f4
int __fastcall sub_81497F4(unsigned __int8 a1, int a2, char *a3, unsigned __int8 *a4)
{
  char *v4; // r4
  unsigned __int8 *v5; // r7
  int v6; // r6
  char *v7; // r5
  unsigned int v8; // r2
  int v9; // r3
  unsigned __int8 *v10; // r1
  unsigned int v11; // r2
  unsigned int v12; // r0
  char v14; // [sp+0h] [bp-24h]
  char v15; // [sp+1h] [bp-23h]
  char v16; // [sp+Eh] [bp-16h]
  char v17; // [sp+Fh] [bp-15h]
  int v18; // [sp+20h] [bp-4h]

  v4 = a3;
  v5 = a4;
  v6 = a1;
  v7 = a3;
  v14 = a2;
  v15 = (a2 << 16) >> 24;
  if ( a1 )
    v15 = ((a2 << 16) >> 24) | 0x80;
  v8 = 2;
  do
  {
    *(&v14 + v8) = *v4++;
    v8 = (v8 + 1) & 0xFF;
  }
  while ( v8 <= 0xE );
  v9 = 0;
  v10 = v5;
  v11 = 0;
  do
  {
    v12 = (v9 + *v10++) << 24;
    v9 = ((v12 >> 24) + *v7++) & 0xFF;
    v11 = (v11 + 1) & 0xFF;
  }
  while ( v11 <= 7 );
  v17 = ~v9;
  if ( v6 )
    v16 = 0;
  sub_814C360(sub_8149880);
  sub_814C484(&v14, v5);
  return v18;
}


// 0x8149880
int __fastcall sub_8149880(unsigned __int8 a1, unsigned __int16 a2)
{
  unsigned __int8 v2; // r12
  unsigned __int16 v3; // r7
  unsigned __int8 *v4; // r1
  int v5; // r6
  int v6; // r2
  _WORD *v7; // r5
  int v8; // r3
  _BYTE *v9; // r4
  char *v10; // r1
  char v11; // r0
  unsigned int v12; // r2
  _BYTE *v13; // r4
  unsigned int v14; // r2
  int v16; // [sp+10h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !a2 )
  {
    v4 = *(dword_2010CCC + 36);
    v5 = dword_2010CC0;
    v6 = v4[4];
    v7 = (dword_2010CC0 + 152);
    *v7 = v6;
    v8 = (v4[5] << 8) | v6;
    *v7 = v8;
    v9 = v4 + 6;
    if ( v8 & 0x8000 )
    {
      *v7 = v8 ^ 0x8000;
      v10 = (v5 + 151);
      v11 = 1;
    }
    else
    {
      v10 = (v5 + 151);
      v11 = 0;
    }
    *v10 = v11;
    v12 = 0;
    do
    {
      *(dword_2010CC0 + 154 + v12) = *v9++;
      v12 = (v12 + 1) & 0xFF;
    }
    while ( v12 <= 0xC );
    v13 = v9 + 1;
    v14 = 0;
    do
    {
      *(dword_2010CC0 + 169 + v14) = *v13++;
      v14 = (v14 + 1) & 0xFF;
    }
    while ( v14 <= 7 );
  }
  sub_81494B8(v2, v3);
  return v16;
}


// 0x814991c
int sub_814991C()
{
  int v0; // r0
  int v1; // r0
  int v2; // r1
  int v3; // r0
  int v5; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_81494F8);
  v1 = sub_814C418(v0);
  v2 = sub_814C384(v1) & 0xFFFF;
  if ( v2 )
  {
    sub_81494B8(0x19u, v2);
  }
  else if ( !*(*(dword_2010CC8 + 220) + 7) )
  {
    sub_8149994(1);
  }
  v3 = sub_814C360(sub_814996C);
  sub_814C51C(v3);
  return v5;
}


// 0x814996c
int __fastcall sub_814996C(unsigned __int8 a1, unsigned __int16 a2)
{
  int v3; // [sp+0h] [bp-4h]

  if ( !a2 )
    *(dword_2010CC4 + 9) = 1;
  sub_81494B8(a1, a2);
  return v3;
}


// 0x8149994
int __fastcall sub_8149994(unsigned __int8 a1)
{
  int v1; // r4
  unsigned int v2; // r1
  __int16 v4; // [sp+0h] [bp-10h]
  int v5; // [sp+Ch] [bp-4h]

  v1 = a1;
  sub_814A828();
  if ( v1 )
  {
    v4 = 0;
    SWI_CpuSet(&v4, dword_2010CC0 + 20, 16777280);
    *(dword_2010CC0 + 8) = 0;
  }
  v2 = 0;
  do
  {
    *(dword_2010CC0 + 10 + v2) = 0;
    v2 = (v2 + 1) & 0xFF;
  }
  while ( v2 <= 3 );
  *(dword_2010CC0 + 1) = 0;
  *(dword_2010CC0 + 2) = 0;
  *(dword_2010CC0 + 3) = 0;
  *(dword_2010CC0 + 7) = 0;
  return v5;
}


// 0x81499f8
int sub_81499F8()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_8149A20);
  sub_814C540(v0);
  return v2;
}


// 0x8149a0c
int sub_8149A0C()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_8149A20);
  sub_814C564(v0);
  return v2;
}


// 0x8149a20
int __fastcall sub_8149A20(unsigned __int8 a1, unsigned __int16 a2)
{
  int v2; // r4
  unsigned __int16 v3; // r6
  int v4; // r0
  int v5; // r0
  int v7; // [sp+Ch] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !a2 )
    sub_8149AA8();
  if ( v2 == 26 )
  {
    if ( !*(dword_2010CC0 + 148) )
    {
      v4 = sub_814C360(sub_81494F8);
      v5 = sub_814C418(v4);
      if ( !(sub_814C384(v5) << 16) )
        *(dword_2010CC0 + 148) = *(*(dword_2010CC8 + 220) + 4);
    }
  }
  else if ( v2 == 27 )
  {
    if ( *dword_2010CC0 == 255 )
      *(dword_2010CC0 + 148) = 0;
    *(dword_2010CC4 + 9) = 0;
  }
  sub_81494B8(v2, v3);
  return v7;
}


// 0x8149aa8
int sub_8149AA8()
{
  int v0; // r0
  int v1; // r8
  int v2; // r5
  int v3; // r0
  int v4; // r0
  _BYTE *v5; // r4
  unsigned int v6; // r2
  int i; // r4
  unsigned int v8; // r2
  _BYTE *v9; // r1
  int v10; // r1
  int v12; // [sp+0h] [bp-24h]
  int v13; // [sp+20h] [bp-4h]

  v0 = *(dword_2010CC8 + 220);
  v1 = *(v0 + 1);
  if ( *(v0 + 1) )
  {
    v2 = *(v0 + 4);
    v3 = sub_814C360(sub_81494F8);
    v4 = sub_814C3D0(v3);
    if ( !(sub_814C384(v4) << 16) )
    {
      v5 = (*(dword_2010CC8 + 220) + 4);
      v6 = 0;
      do
      {
        *(&v12 + v6) = *v5++;
        v6 = (v6 + 1) & 0xFF;
      }
      while ( v6 <= 3 );
    }
    *(*(dword_2010CC8 + 220) + 4) = v2;
  }
  for ( i = *(dword_2010CC8 + 220) + 4; v1; i += 4 )
  {
    v8 = *(i + 2);
    if ( v8 <= 3 && !((*(dword_2010CC0 + 2) >> v8) & 1) && !((*(dword_2010CC0 + 3) >> v8) & 1) )
    {
      if ( *(&v12 + v8) )
        ++*(dword_2010CC4 + 14 + v8);
      v9 = (dword_2010CC4 + 14 + v8);
      if ( *v9 > 3u )
      {
        *v9 = 0;
        *(dword_2010CC0 + 10 + v8) = -1;
        *(dword_2010CC0 + 2) |= 1 << v8;
        ++*(dword_2010CC0 + 1);
        v10 = dword_2010CC0 + 32 * v8;
        *(v10 + 20) = *i;
        *(v10 + 22) = v8;
        *dword_2010CC0 = 1;
        *dword_2010CC4 &= 0x7Fu;
        *(dword_2010CC4 + 18 + 2 * v8) = *(dword_2010CC0 + 32 * v8 + 20);
      }
    }
    v1 = (v1 - 1) & 0xFF;
  }
  return v13;
}


// 0x8149be4
int sub_8149BE4()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_8149BF8);
  sub_814C588(v0);
  return v2;
}


// 0x8149bf8
int __fastcall sub_8149BF8(unsigned __int8 a1, unsigned __int16 a2)
{
  unsigned __int8 v2; // r5
  unsigned __int16 v3; // r4
  int v5; // [sp+8h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !a2 )
    sub_8149994(0);
  sub_81494B8(v2, v3);
  return v5;
}


// 0x8149c1c
int sub_8149C1C()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_8149C30);
  sub_814C5AC(v0);
  return v2;
}


// 0x8149c30
int __fastcall sub_8149C30(unsigned __int8 a1, unsigned __int16 a2)
{
  unsigned __int8 v2; // r5
  unsigned __int16 v3; // r4
  int v5; // [sp+8h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !a2 )
    sub_8149C68();
  sub_81494B8(v2, v3);
  return v5;
}


// 0x8149c54
int sub_8149C54()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_81494B8);
  sub_814C5D0(v0);
  return v2;
}


// 0x8149c68
int sub_8149C68()
{
  int v0; // r2
  int v1; // r7
  _BYTE *v2; // r2
  unsigned __int8 v3; // r6
  unsigned __int8 *v4; // r1
  unsigned __int8 *v5; // r2
  int v6; // r5
  int v7; // r4
  unsigned int v8; // r3
  unsigned int v9; // r0
  _WORD *v10; // r2
  int v11; // r4
  _WORD *v12; // r2
  _BYTE *v13; // r2
  unsigned int v14; // r3
  int v15; // r5
  int v16; // r4
  unsigned int v17; // r3
  __int16 v19; // [sp+0h] [bp-1Ch]
  int v20; // [sp+18h] [bp-4h]

  v19 = 0;
  SWI_CpuSet(&v19, dword_2010CC0 + 20, 16777280);
  v0 = *(dword_2010CC8 + 220);
  v1 = *(v0 + 1);
  v2 = (v0 + 4);
  *(dword_2010CC0 + 8) = 0;
  v3 = 0;
  if ( v1 )
  {
    do
    {
      v1 = (v1 - 7) & 0xFF;
      v4 = v2 + 6;
      v5 = v2 + 19;
      v6 = ~*v5 & 0xFF;
      v2 = v5 + 1;
      v7 = 0;
      v8 = 0;
      ++v3;
      do
      {
        v9 = (v7 + *v2++) << 24;
        v7 = ((v9 >> 24) + *v4++) & 0xFF;
        v8 = (v8 + 1) & 0xFF;
      }
      while ( v8 <= 7 );
      if ( v7 == v6 )
      {
        v10 = v2 - 28;
        v11 = dword_2010CC0 + 32 * *(dword_2010CC0 + 8) + 20;
        *v11 = *v10;
        ++v10;
        *(v11 + 2) = *v10;
        v12 = v10 + 1;
        *(v11 + 4) = *v12 & 0x7FFF;
        if ( *v12 & 0x8000 )
          *(v11 + 3) = 1;
        else
          *(v11 + 3) = 0;
        v13 = v12 + 1;
        v14 = 0;
        v15 = v11 + 21;
        v16 = v11 + 6;
        do
        {
          *(v16 + v14) = *v13++;
          v14 = (v14 + 1) & 0xFF;
        }
        while ( v14 <= 0xC );
        v2 = v13 + 1;
        v17 = 0;
        do
        {
          *(v15 + v17) = *v2++;
          v17 = (v17 + 1) & 0xFF;
        }
        while ( v17 <= 7 );
        ++*(dword_2010CC0 + 8);
      }
    }
    while ( v3 <= 3u && v1 );
  }
  return v20;
}


// 0x8149d78
int __fastcall sub_8149D78(unsigned __int16 a1)
{
  int v1; // r4
  signed int v2; // r3
  unsigned int v3; // r2
  int v5; // [sp+8h] [bp-4h]

  v1 = a1;
  v2 = 0;
  v3 = 0;
  if ( *(dword_2010CC0 + 20) != a1 )
  {
    do
      v3 = (v3 + 1) & 0xFF;
    while ( v3 <= 3 && *(dword_2010CC0 + 32 * v3 + 20) != a1 );
  }
  if ( v3 == 4 )
    v2 = 256;
  if ( v2 )
  {
    sub_81494B8(0x1Fu, v2);
  }
  else
  {
    *(dword_2010CC4 + 30) = a1;
    sub_814C360(sub_81494B8);
    sub_814C5F4(v1);
  }
  return v5;
}


// 0x8149de0
int sub_8149DE0()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_8149DF4);
  sub_814C624(v0);
  return v2;
}


// 0x8149df4
int __fastcall sub_8149DF4(unsigned __int8 a1, unsigned __int16 a2)
{
  int *v2; // r9
  int v3; // r0
  __int16 v4; // r5
  int v5; // r10
  unsigned int v6; // r2
  int v7; // r1
  int v8; // r1
  unsigned int v9; // r5
  int v10; // r4
  int v12; // [sp+0h] [bp-4Ch]
  __int16 v13; // [sp+20h] [bp-2Ch]
  int v14; // [sp+24h] [bp-28h]
  int v15; // [sp+28h] [bp-24h]
  int v16; // [sp+48h] [bp-4h]

  v14 = a1;
  v15 = a2;
  if ( !a2 )
  {
    v3 = *(dword_2010CC8 + 220);
    v4 = *(v3 + 4);
    v5 = *(v3 + 6);
    if ( !*(v3 + 7) )
    {
      v6 = (0x1000000 << *(v3 + 6)) >> 24;
      v7 = *(dword_2010CC0 + 2);
      if ( !(v6 & v7) )
      {
        *(dword_2010CC0 + 2) = v6 | v7;
        *(dword_2010CC0 + 3) &= ~v6;
        v8 = dword_2010CC0;
        *(dword_2010CC0 + 148) = v4;
        ++*(v8 + 1);
        *dword_2010CC0 = 0;
        *dword_2010CC4 |= 0x80u;
        v9 = 0;
        while ( 1 )
        {
          v10 = 32 * v9;
          if ( *(dword_2010CC0 + 32 * v9 + 20) == *(dword_2010CC4 + 30) )
            break;
          v9 = (v9 + 1) & 0xFF;
          if ( v9 > 3 )
            goto LABEL_10;
        }
        if ( *(dword_2010CC0 + 8) )
        {
          v2 = &v12;
          SWI_CpuSet(dword_2010CC0 + v10 + 20, &v12, 16);
          v13 = 0;
          SWI_CpuSet(&v13, dword_2010CC0 + 20, 16777280);
          *(dword_2010CC0 + 8) = 0;
        }
        else
        {
          v2 = (dword_2010CC0 + v10 + 20);
        }
LABEL_10:
        if ( v9 <= 3 )
        {
          SWI_CpuSet(v2, dword_2010CC0 + 32 * v5 + 20, 16);
          *(dword_2010CC0 + 32 * v5 + 22) = v5;
        }
      }
    }
  }
  sub_81494B8(v14, v15);
  return v16;
}


// 0x8149f14
signed int __fastcall sub_8149F14(_BYTE *a1, _BYTE *a2)
{
  unsigned __int8 *v2; // r2
  _BYTE *v4; // r2

  *a1 = -1;
  v2 = *(dword_2010CC8 + 220);
  if ( ((*v2 + 96) & 0xFFu) > 1 )
    return 16;
  v4 = v2 + 6;
  *a2 = *v4;
  *a1 = v4[1];
  return 0;
}


// 0x8149f48
int sub_8149F48()
{
  int v0; // r0
  int v1; // r1
  int v3; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_8149DF4);
  sub_814C648(v0);
  v1 = *(dword_2010CC8 + 220);
  if ( *(v1 + 6) <= 3u )
    *(dword_2010CC4 + 10 + *(v1 + 6)) = 0;
  return v3;
}


// 0x8149f80
signed int sub_8149F80()
{
  int v0; // r3
  char v1; // r1
  _BYTE *v2; // r2
  char v3; // r0
  int v4; // r5
  unsigned int v5; // r4

  sub_814C058();
  if ( *dword_2010CC0 == 255 )
    return 0;
  if ( *(dword_2010CC4 + 6) )
    --*(dword_2010CC4 + 6);
  v0 = sub_814A7F0() & 0xFF;
  v1 = *dword_2010CC4;
  if ( *dword_2010CC4 & 2 )
  {
    if ( !v0 )
      goto LABEL_11;
    *dword_2010CC4 = v1 & 0xFB;
  }
  else
  {
    if ( v0 )
    {
LABEL_10:
      v2 = dword_2010CC4;
      v3 = *dword_2010CC4 & 0xFD;
      goto LABEL_12;
    }
    *dword_2010CC4 = v1 | 4;
    *(dword_2010CC4 + 32) = 360;
  }
  if ( v0 )
    goto LABEL_10;
LABEL_11:
  v2 = dword_2010CC4;
  v3 = *dword_2010CC4 | 2;
LABEL_12:
  *v2 = v3;
  if ( !(*dword_2010CC4 & 4) )
    return 0;
  if ( *(dword_2010CC4 + 32) )
  {
    --*(dword_2010CC4 + 32);
    return 0;
  }
  *dword_2010CC4 &= 0xFBu;
  v4 = *(dword_2010CC0 + 3) | *(dword_2010CC0 + 2);
  v5 = 0;
  do
  {
    if ( (v4 >> v5) & 1 )
      sub_814A41C(v5);
    v5 = (v5 + 1) & 0xFF;
  }
  while ( v5 <= 3 );
  *dword_2010CC0 = -1;
  return 1;
}


// 0x814a060
int __fastcall sub_814A060(__int16 a1, _BYTE *a2, char *a3, _BYTE *a4)
{
  _BYTE *v4; // r8
  int v5; // r1
  char v6; // r0
  unsigned int v7; // r5
  int *v8; // r0
  int v9; // r0
  int v10; // r0
  _BYTE *v11; // r2
  unsigned int v12; // r5
  unsigned int v13; // r9
  int v14; // r5
  unsigned int v16; // r6
  int v17; // r0
  int v18; // r0
  char v19; // r1
  char *v20; // r0
  unsigned __int8 *v21; // r1
  unsigned __int8 v22; // r0
  int v23; // r0
  unsigned __int8 v24; // r10
  _BYTE *v25; // r4
  int v26; // r2
  int v27; // r0
  int v28; // r2
  int v29; // r3
  unsigned __int16 *v30; // r2
  unsigned int v31; // r0
  int v32; // r0
  char *v33; // [sp+0h] [bp-38h]
  _BYTE *v34; // [sp+4h] [bp-34h]
  signed int v35; // [sp+8h] [bp-30h]
  int v36; // [sp+Ch] [bp-2Ch]
  int v37; // [sp+10h] [bp-28h]
  int v38; // [sp+14h] [bp-24h]

  v4 = a2;
  v33 = a3;
  v34 = a4;
  v35 = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  if ( *dword_2010CC0 == 255 || !*(dword_2010CCC + 20) )
    return 0;
  if ( *dword_2010CC4 & 4 )
    *(dword_2010CC4 + 32) = 360;
  if ( !*(dword_2010CC4 + 6) )
  {
    *(dword_2010CC4 + 6) = *(dword_2010CC0 + 9);
    v35 = 1;
  }
  if ( a1 == 41 )
  {
    v5 = *(dword_2010CC8 + 220);
    *v4 = *(v5 + 4);
    v6 = *(v5 + 5);
    *a3 = v6;
    if ( v6 == 1 )
      *v4 = *(dword_2010CC0 + 2);
    v35 = 2;
  }
  else
  {
    if ( a1 == 310 )
    {
      *a2 = (*(*(dword_2010CC8 + 220) + 5) ^ *(dword_2010CC0 + 2)) & *(dword_2010CC0 + 2);
      *a3 = 1;
      v7 = 0;
      do
      {
        if ( (*v4 >> v7) & 1 )
        {
          *(dword_2010CC0 + 10 + v7) = 0;
          sub_814A41C(v7);
        }
        v7 = (v7 + 1) & 0xFF;
      }
      while ( v7 <= 3 );
    }
    if ( !v35 )
      return 0;
  }
  v8 = *(dword_2010CC8 + 220);
  v37 = *v8;
  v38 = v8[1];
  v9 = sub_814C360(sub_81494F8);
  v10 = sub_814C3D0(v9);
  v36 = sub_814C384(v10);
  if ( !v36 )
  {
    v11 = (*(dword_2010CC8 + 220) + 4);
    v12 = 0;
    do
    {
      *(dword_2010CC0 + 10 + v12) = *v11++;
      v12 = (v12 + 1) & 0xFF;
    }
    while ( v12 <= 3 );
    v13 = 0;
    v14 = 0;
    while ( 1 )
    {
      v16 = (0x1000000 << v14) >> 24;
      if ( v35 != 1 || !(*(dword_2010CC0 + 2) & v16) )
        goto LABEL_36;
      if ( *(dword_2010CC0 + 10 + v14) )
      {
        v20 = (dword_2010CC4 + 10 + v14);
        v19 = 0;
      }
      else
      {
        v17 = *dword_2010CC0;
        if ( v17 == 1 )
        {
          if ( ++*(dword_2010CC4 + 10 + v14) <= 3u )
            goto LABEL_36;
LABEL_33:
          *v4 |= v16;
          *v33 = 1;
          goto LABEL_36;
        }
        v18 = sub_814C418(v17);
        if ( sub_814C384(v18) << 16 )
          goto LABEL_36;
        if ( *(*(dword_2010CC8 + 220) + 7) )
        {
          v21 = (dword_2010CC4 + 10 + v14);
          v22 = *v21 + 1;
          *v21 = v22;
          if ( v22 <= *(dword_2010CC4 + 26) )
            goto LABEL_36;
          *(dword_2010CC4 + 10 + v14) = 0;
          v23 = sub_814C7F8(*(dword_2010CC0 + 2));
          sub_814C384(v23);
          goto LABEL_33;
        }
        *v4 |= v16;
        v19 = 1;
        v20 = v33;
      }
      *v20 = v19;
LABEL_36:
      v24 = v14 + 1;
      if ( *dword_2010CC0 == 1 )
      {
        v25 = (dword_2010CC0 + 10 + v14);
        if ( *v25 )
        {
          v26 = *(dword_2010CC0 + 3);
          if ( v16 & v26 )
          {
            if ( *v25 <= 0xAu )
            {
              *v25 = 0;
            }
            else
            {
              *v34 |= v16;
              *(dword_2010CC0 + 2) |= v16;
              *(dword_2010CC0 + 3) &= ~v16;
              ++*(dword_2010CC0 + 1);
              *(dword_2010CC4 + 10 + v14) = 0;
            }
          }
          else if ( !((*(dword_2010CC0 + 2) | v26) & v16) )
          {
            v27 = sub_814C43C();
            sub_814C384(v27);
            v28 = *(dword_2010CC8 + 220);
            v29 = (*(v28 + 1) - 1) & 0xFF;
            v30 = (v28 + 8);
            if ( v29 )
            {
              if ( *(v30 + 2) != v14 || *v30 != *(dword_2010CC4 + 18 + 2 * v14) )
              {
                while ( 1 )
                {
                  v30 += 2;
                  v29 = (v29 - 1) & 0xFF;
                  if ( !v29 )
                    break;
                  if ( *(v30 + 2) == v14 && *v30 == *(dword_2010CC4 + 18 + 2 * v14) )
                  {
                    v31 = (v13 | (1 << v14)) << 24;
                    goto LABEL_51;
                  }
                }
              }
              else
              {
                v31 = (v13 | (1 << v14)) << 24;
LABEL_51:
                v13 = v31 >> 24;
              }
            }
          }
        }
      }
      if ( v16 & (*v4 & *(dword_2010CC0 + 2)) )
        sub_814A41C(v14);
      v14 = (v14 + 1);
      if ( v24 > 3u )
      {
        if ( v13 )
        {
          v32 = sub_814C7F8(v13);
          sub_814C384(v32);
        }
        **(dword_2010CC8 + 220) = v37;
        *(*(dword_2010CC8 + 220) + 4) = v38;
        return 0;
      }
    }
  }
  sub_81494B8(0x11u, v36);
  return v36;
}


// 0x814a41c
int __fastcall sub_814A41C(unsigned __int8 a1, char a2)
{
  int v2; // r7
  unsigned int v3; // r5
  char v4; // r6
  __int16 v6; // [sp+0h] [bp-1Ch]
  int v7; // [sp+18h] [bp-4h]

  v2 = a1;
  v3 = (0x1000000 << a1) >> 24;
  if ( *(dword_2010CC0 + 2) & v3 && *(dword_2010CC0 + 1) )
    --*(dword_2010CC0 + 1);
  v4 = ~v3;
  *(dword_2010CC0 + 2) &= ~v3;
  *(dword_2010CC0 + 3) |= v3;
  if ( !(*dword_2010CC0 & 0xFF00FF) )
    *dword_2010CC0 = -1;
  if ( a2 )
  {
    v6 = 0;
    SWI_CpuSet(&v6, dword_2010CC0 + 32 * a1 + 20, 16777232);
    *(dword_2010CC0 + 3) &= v4;
    *(dword_2010CC0 + 7) &= v4;
    *(dword_2010CC0 + 10 + v2) = 0;
  }
  return v7;
}


// 0x814a4cc
int __fastcall sub_814A4CC(unsigned __int8 a1)
{
  int v1; // r4
  int v2; // r0
  int v3; // r0
  unsigned __int16 v4; // r0
  int v6; // [sp+4h] [bp-4h]

  v1 = a1;
  if ( (*(dword_2010CC0 + 2) | *(dword_2010CC0 + 3)) & a1 )
  {
    *(dword_2010CC4 + 5) = a1;
    if ( *dword_2010CC0 == 255 && *dword_2010CC4 & 0x80 )
    {
      if ( *(dword_2010CC0 + 3) & a1 )
        sub_814A55C(48, 0);
    }
    else if ( *(dword_2010CC4 + 9) && (v2 = sub_814C360(sub_81494F8), v3 = sub_814C564(v2), (v4 = sub_814C384(v3)) != 0) )
    {
      sub_81494B8(0x1Bu, v4);
    }
    else
    {
      sub_814C360(sub_814A55C);
      sub_814C7F8(v1);
    }
  }
  return v6;
}


// 0x814a55c
int __fastcall sub_814A55C(unsigned __int8 a1, unsigned __int16 a2)
{
  unsigned __int8 v2; // r6
  int v3; // r5
  int v4; // r0
  int v5; // r0
  unsigned int v6; // r4
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int v11; // [sp+Ch] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( a2 == 3 && !*dword_2010CC0 )
  {
    v4 = sub_814C360(sub_81494F8);
    v5 = sub_814C418(v4);
    if ( !(sub_814C384(v5) << 16) && !*(*(dword_2010CC8 + 220) + 7) )
      v3 = 0;
  }
  *(dword_2010CC4 + 5) &= *(dword_2010CC0 + 2) | *(dword_2010CC0 + 3);
  *(*(dword_2010CC8 + 220) + 8) = *(dword_2010CC4 + 5);
  if ( !v3 )
  {
    v6 = 0;
    do
    {
      if ( ((0x1000000 << v6) >> 24) & *(dword_2010CC4 + 5) )
        sub_814A41C(v6, 1);
      v6 = (v6 + 1) & 0xFF;
    }
    while ( v6 <= 3 );
  }
  if ( !(*(dword_2010CC0 + 3) | *(dword_2010CC0 + 2)) )
    *dword_2010CC0 = -1;
  sub_81494B8(v2, v3);
  if ( *(dword_2010CC4 + 9) )
  {
    v7 = sub_814C360(sub_81494F8);
    v8 = sub_814C51C(v7);
    v9 = sub_814C384(v8);
    if ( v9 )
      sub_81494B8(0x19u, v9);
  }
  return v11;
}


// 0x814a63c
int __fastcall sub_814A63C(unsigned __int8 a1)
{
  int v1; // r5
  unsigned int v2; // r4
  int v4; // [sp+8h] [bp-4h]

  v1 = a1;
  *(dword_2010CC4 + 5) = a1;
  v2 = 0;
  if ( !(a1 & 1) )
  {
    do
      v2 = (v2 + 1) & 0xFF;
    while ( v2 <= 3 && !((a1 >> v2) & 1) );
  }
  sub_814C360(sub_81494B8);
  sub_814C860(*(dword_2010CC0 + 32 * v2 + 20), *(dword_2010CC0 + 148), v1);
  return v4;
}


// 0x814a698
int sub_814A698()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_814A6AC);
  sub_814C89C(v0);
  return v2;
}


// 0x814a6ac
int __fastcall sub_814A6AC(unsigned __int8 a1, unsigned __int16 a2)
{
  unsigned int v2; // r4
  unsigned int v3; // r3
  int v5; // [sp+14h] [bp-4h]

  if ( !a2 && !*(*(dword_2010CC8 + 220) + 4) && *(dword_2010CC4 + 5) )
  {
    *dword_2010CC0 = 0;
    v2 = 0;
    do
    {
      v3 = (0x1000000 << v2) >> 24;
      if ( *(dword_2010CC4 + 5) & v3 & *(dword_2010CC0 + 3) )
      {
        *(dword_2010CC0 + 2) |= v3;
        *(dword_2010CC0 + 3) &= ~v3;
        ++*(dword_2010CC0 + 1);
        *(dword_2010CC4 + 10 + v2) = 0;
      }
      v2 = (v2 + 1) & 0xFF;
    }
    while ( v2 <= 3 );
    *(dword_2010CC4 + 5) = 0;
  }
  sub_81494B8(a1, a2);
  return v5;
}


// 0x814a750
signed int __fastcall sub_814A750(_BYTE *a1)
{
  unsigned __int8 *v1; // r1

  *a1 = -1;
  v1 = *(dword_2010CC8 + 220);
  if ( ((*v1 + 77) & 0xFFu) > 1 )
    return 16;
  *a1 = v1[4];
  return 0;
}


// 0x814a780
int sub_814A780()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = sub_814C360(sub_814A6AC);
  sub_814C8C0(v0);
  return v2;
}


// 0x814a794
int __fastcall sub_814A794(_BYTE **a1, _DWORD *a2, int a3)
{
  _DWORD *v3; // r6
  _BYTE *v4; // r3
  _BYTE *v5; // r1
  int i; // r2
  int v8; // [sp+Ch] [bp-4h]

  v3 = a2;
  v4 = *a1;
  v5 = *a2;
  for ( i = a3 - 1; i != -1; --i )
    *v5++ = *v4++;
  *a1 = v4;
  *v3 = v5;
  return v8;
}


// 0x814a7c4
int sub_814A7C4()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  if ( (sub_814C2E8(1) & 0xFFFF) == 1 )
  {
    v0 = sub_814C360(sub_81494B8);
    sub_814C720(v0);
  }
  else
  {
    sub_81494B8(0x27u, 0);
  }
  return v2;
}


// 0x814a7f0
int sub_814A7F0()
{
  int v0; // r2
  int v1; // r0

  v0 = sub_814C2E8(1);
  if ( v0 == 1 )
  {
    if ( *(dword_2010CCC + 44) )
    {
      v1 = *(dword_2010CCC + 6);
      if ( v1 == 39 || v1 == 37 || v1 == 55 )
        v0 = 0;
    }
  }
  return v0;
}


// 0x814a828
int sub_814A828()
{
  __int16 v0; // r8
  unsigned int v1; // r5
  __int16 v3; // [sp+0h] [bp-1Ch]
  __int16 v4; // [sp+2h] [bp-1Ah]
  int v5; // [sp+18h] [bp-4h]

  v0 = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  v1 = 0;
  do
  {
    v3 = 0;
    SWI_CpuSet(&v3, dword_2010CB0[v1], 16777268);
    v4 = 0;
    SWI_CpuSet(&v4, off_2010CA0[v1], 16777226);
    *(dword_2010CC0 + 16 + v1) = 16;
    v1 = (v1 + 1) & 0xFFFF;
  }
  while ( v1 <= 3 );
  *(dword_2010CC0 + 15) = 87;
  *(dword_2010CC0 + 4) = 0;
  *(dword_2010CC0 + 5) = 0;
  *(dword_2010CC0 + 6) = 0;
  *(dword_2010CC4 + 2) = 0;
  InterruptMasterEnableRegister = v0;
  return v5;
}


// 0x814a8c8
int __fastcall sub_814A8C8(unsigned __int8 a1, char a2, int a3)
{
  int v4; // [sp+Ch] [bp-4h]

  if ( *dword_2010CC4 & 0x80 )
  {
    if ( !a2 )
      *(dword_2010CC0 + 16 + a1) += *(a3 + 46);
    *(dword_2010CC0 + 16 + a1) += 2;
  }
  else
  {
    if ( !a2 )
      *(dword_2010CC0 + 15) += *(a3 + 46);
    *(dword_2010CC0 + 15) += 3;
  }
  return v4;
}


// 0x814a934
signed int __fastcall sub_814A934(char a1, unsigned __int8 a2)
{
  char v2; // r8
  int v3; // r7
  __int16 v5; // r10
  int v6; // r3
  int *v7; // r9
  int v8; // r4
  unsigned __int16 v9; // r6
  unsigned int v10; // r1
  char (*v11)[28]; // r3
  __int16 v12; // [sp+0h] [bp-24h]

  v2 = a1;
  v3 = a2;
  if ( a2 > 3u )
    return 1024;
  if ( !(a1 & 0xF) )
    return 1536;
  v5 = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  if ( a1 & 0xC )
  {
    v6 = 0;
    v7 = &dword_2010CB0[a2];
    do
    {
      v8 = 0;
      if ( v6 )
      {
        if ( v2 & 8 )
        {
          v8 = *v7 + 52;
          *(dword_2010CC0 + 5) &= ~(1 << v3);
        }
      }
      else if ( v2 & 4 )
      {
        v8 = *v7;
        *(dword_2010CC0 + 4) &= ~*(*v7 + 44);
      }
      v9 = v6 + 1;
      if ( v8 )
      {
        if ( *v8 & 0x8000 )
        {
          sub_814A8C8(v3, v6, v8);
          v10 = 0;
          do
          {
            if ( (*(v8 + 44) >> v10) & 1 )
              *(v8 + 2) = 0;
            v10 = (v10 + 1) & 0xFFFF;
          }
          while ( v10 <= 3 );
        }
        v12 = 0;
        SWI_CpuSet(&v12, v8, 16777242);
      }
      v6 = v9;
    }
    while ( v9 <= 1u );
  }
  if ( v2 & 1 )
  {
    v11 = off_2010CA0[v3];
    if ( *v11 & 0x8000 )
    {
      if ( *dword_2010CC4 & 0x80 )
        *(dword_2010CC0 + 16 + v3) += 2 + (*v11)[4];
      else
        *(dword_2010CC0 + 15) += 3 + (*v11)[4];
      *(dword_2010CC0 + 6) &= ~(*v11)[3];
    }
    v12 = 0;
    SWI_CpuSet(&v12, v11, 16777222);
  }
  if ( v2 & 2 )
  {
    v12 = 0;
    SWI_CpuSet(&v12, &(*off_2010CA0[v3])[12], 16777220);
  }
  InterruptMasterEnableRegister = v5;
  return 0;
}


// 0x814aaf0
signed int __fastcall sub_814AAF0(int a1, int a2, int a3, int a4)
{
  int v4; // r6
  unsigned int v5; // r0
  unsigned int v6; // r3
  int v8; // r0
  char (*v9)[28]; // r0

  v4 = a4;
  v5 = a1 << 24;
  v6 = v5 >> 24;
  a2 = a2;
  if ( a2 > 3u )
    return 1024;
  if ( v6 & 0x20 )
  {
    v8 = dword_2010CB0[a2];
    *(v8 + 104) = a3;
    *(v8 + 108) = v4;
  }
  else
  {
    if ( !((v5 >> 24) & 0x10) )
      return 1536;
    v9 = off_2010CA0[a2];
    *&(*v9)[20] = a3;
    *&(*v9)[24] = v4;
  }
  return 0;
}


// 0x814ab50
int __fastcall sub_814AB50(unsigned __int8 a1, unsigned __int8 a2, int a3, int a4)
{
  return sub_814ABEC(32, a1, a2, a3, a4);
}


// 0x814ab7c
int __fastcall sub_814AB7C(unsigned __int8 a1, int a2, char a3)
{
  int v3; // r3
  int v4; // r1
  unsigned __int8 v5; // r0

  v3 = a2;
  v4 = a1;
  if ( *dword_2010CC0 == 1 )
    v5 = a3 + 3;
  else
    v5 = a3 + 2;
  return sub_814ABEC(16, v4, v5, v3, 0);
}


// 0x814abb8
int __fastcall sub_814ABB8(char a1, unsigned __int8 a2)
{
  return sub_814ABEC(64, (0x1000000 << a1) >> 24, a2, dword_2010CC0 + 152, 26);
}


// 0x814abec
char *__fastcall sub_814ABEC(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, int a4, int a5)
{
  _BYTE *v5; // r9
  int v6; // r6
  int v7; // r3
  unsigned int v8; // r8
  unsigned __int8 v10; // r0
  unsigned int v11; // r2
  int v12; // r1
  unsigned int v13; // r4
  int v14; // r12
  _BYTE *v15; // r1
  unsigned int v16; // r1
  unsigned int v17; // r2
  char (*v18)[28]; // r1
  int v19; // [sp+0h] [bp-28h]
  __int16 v20; // [sp+4h] [bp-24h]

  v19 = a4;
  v6 = a1;
  v7 = a2;
  v8 = a3;
  if ( *dword_2010CC0 == 255 )
    return byte_301;
  if ( !(a2 & 0xF) )
    return &byte_400;
  if ( ((*(dword_2010CC0 + 2) | *(dword_2010CC0 + 3)) & a2) != a2 )
    return byte_401;
  if ( a1 & 0x10 )
    v10 = *(dword_2010CC0 + 6);
  else
    v10 = *(dword_2010CC0 + 4);
  if ( v10 & a2 )
    return byte_401 + 1;
  v11 = 0;
  if ( !(a2 & 1) )
  {
    do
      v11 = (v11 + 1) & 0xFF;
    while ( v11 <= 3 && !((a2 >> v11) & 1) );
  }
  if ( *dword_2010CC0 == 1 )
  {
    v12 = dword_2010CC0 + 15;
LABEL_19:
    v5 = v12;
    goto LABEL_20;
  }
  if ( !*dword_2010CC0 )
  {
    v12 = dword_2010CC0 + v11 + 16;
    goto LABEL_19;
  }
LABEL_20:
  v13 = byte_81C03AC[16 * *dword_2010CC0];
  if ( v8 > *v5 || v8 <= v13 )
    return &dword_500;
  v20 = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  if ( v6 & 0x20 || v6 == 64 )
  {
    v14 = dword_2010CB0[v11];
    *(v14 + 24) = 0;
    v15 = (v14 + 45);
    *(v14 + 4) = v14 + 45;
    *(v14 + 20) = 7;
    *(v14 + 44) = v7;
    *(v14 + 26) = v7;
    *(v14 + 46) = v8 - v13;
    if ( v6 & 0x20 )
      *v15 = 0;
    else
      *v15 = 1;
    *(v14 + 48) = a5;
    *(v14 + 40) = v19;
    v16 = 0;
    *(v14 + 31) = 0;
    *(v14 + 32) = 0;
    do
    {
      *(v14 + 27 + v16) = 0;
      *(v14 + 33 + v16) = 1;
      v16 = (v16 + 1) & 0xFF;
    }
    while ( v16 <= 3 );
    v17 = 0;
    do
    {
      if ( (v7 >> v17) & 1 )
        *(dword_2010CB0[v17] + 2) = 0;
      v17 = (v17 + 1) & 0xFF;
    }
    while ( v17 <= 3 );
    *(dword_2010CC0 + 4) |= v7;
    *v5 -= v8;
    *v14 = -32735;
  }
  else if ( v6 & 0x10 )
  {
    v18 = off_2010CA0[v11];
    (*v18)[3] = v7;
    *&(*v18)[8] = v19;
    *&(*v18)[4] = v8 - v13;
    *v5 -= v8;
    *v18 = -32732;
    *(dword_2010CC0 + 6) |= v7;
  }
  InterruptMasterEnableRegister = v20;
  return 0;
}


// 0x814adf4
int *__fastcall sub_814ADF4(int a1, unsigned __int8 a2, unsigned __int8 a3)
{
  int v3; // r6
  int v5; // r5
  int v6; // r3
  __int16 v7; // r8
  unsigned int v8; // r2
  int v9; // r3
  unsigned int v10; // r2
  __int16 v11; // r8
  char (**v12)[28]; // r5

  a1 = a1;
  v3 = a3;
  if ( a2 > 3u )
    return &byte_400;
  if ( a1 == 32 )
  {
    v5 = dword_2010CB0[a2];
    if ( (*v5 & 0x8020) == 32800 )
    {
      v6 = a3 ^ *(v5 + 26);
      if ( !(v6 & a3) )
      {
        if ( v6 )
        {
          v7 = InterruptMasterEnableRegister;
          InterruptMasterEnableRegister = 0;
          v8 = 0;
          do
          {
            if ( (v6 >> v8) & 1 )
              *(dword_2010CB0[v8] + 2) = 0;
            v8 = (v8 + 1) & 0xFF;
          }
          while ( v8 <= 3 );
          *(dword_2010CC0 + 4) &= ~v6;
          *(v5 + 26) = v3;
          if ( !(v3 << 24) )
          {
            sub_814A8C8(a2, 0, v5);
            *v5 = 39;
          }
          InterruptMasterEnableRegister = v7;
        }
        return 0;
      }
      return dword_404;
    }
    return (byte_401 + 2);
  }
  if ( a1 != 16 )
    return &byte_600;
  if ( *&(*off_2010CA0[a2])[0] != 32804 )
    return (byte_401 + 2);
  v9 = 0;
  v10 = 0;
  do
  {
    if ( v10 != a2 )
      v9 |= (*off_2010CA0[v10])[3];
    v10 = (v10 + 1) & 0xFF;
  }
  while ( v10 <= 3 );
  if ( v3 & v9 )
    return dword_404;
  v11 = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  v12 = &off_2010CA0[a2];
  *(dword_2010CC0 + 6) &= ~(**v12)[3];
  *(dword_2010CC0 + 6) |= v3;
  (**v12)[3] = v3;
  InterruptMasterEnableRegister = v11;
  return 0;
}


// 0x814af5c
signed int __fastcall sub_814AF5C(unsigned __int8 a1)
{
  unsigned __int8 v1; // r3
  int v3; // r2
  int v4; // r5
  __int16 v5; // r4
  int v6; // r1
  signed __int16 v7; // r0

  v1 = a1;
  if ( a1 > 3u )
    return 1024;
  v3 = dword_2010CB0[a1];
  v4 = dword_2010CB0[a1] + 52;
  v5 = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  v6 = *(v3 + 52);
  if ( v6 & 0x8000 )
  {
    if ( v6 == 32835 )
      v7 = 72;
    else
      v7 = 71;
    *(v3 + 52) = v7;
    *(dword_2010CC0 + 5) &= ~(1 << v1);
    sub_814A8C8(v1, 1, v4);
  }
  InterruptMasterEnableRegister = v5;
  return 0;
}


// 0x814afd4
signed int __fastcall sub_814AFD4(int a1, int a2, unsigned __int8 a3)
{
  int v3; // r7
  int v4; // r3
  char (*v6)[28]; // r4
  _BYTE *v7; // r6
  int v8; // r0
  int v9; // r1
  unsigned int v10; // r3
  __int16 v11; // r1

  v3 = a2;
  a1 = a1;
  v4 = a1;
  if ( a1 > 3u )
    return 1024;
  v6 = off_2010CA0[a1];
  if ( *v6 != 32804 )
    return 1027;
  if ( *dword_2010CC0 == 1 )
  {
    v7 = (dword_2010CC0 + 15);
    v8 = (*v6)[4];
    v9 = *(dword_2010CC0 + 15);
  }
  else
  {
    v7 = (dword_2010CC0 + a1 + 16);
    v8 = (*v6)[4];
    v9 = *(dword_2010CC0 + 16 + v4);
  }
  v10 = (v8 + v9) & 0xFF;
  if ( v10 < a3 )
    return 1280;
  v11 = InterruptMasterEnableRegister;
  *&(*v6)[8] = v3;
  *v7 = v10 - a3;
  *&(*v6)[4] = a3;
  (*v6)[2] = 1;
  InterruptMasterEnableRegister = v11;
  return 0;
}


// 0x814b068
int __fastcall sub_814B068(int a1)
{
  char (*v1)[28]; // r2
  int v3; // [sp+0h] [bp-4h]

  a1 = a1;
  if ( a1 <= 3u )
  {
    v1 = off_2010CA0[a1];
    if ( *v1 == 32804 )
      (*v1)[2] = 1;
  }
  return v3;
}


// 0x814b094
int __fastcall sub_814B094(int a1)
{
  int v2; // [sp+0h] [bp-4h]

  a1 = a1;
  if ( a1 <= 3u )
    (*off_2010CA0[a1])[18] = 0;
  return v2;
}


// 0x814b0b4
int __fastcall sub_814B0B4(unsigned __int8 a1)
{
  int v1; // r5
  int v2; // r1
  int v3; // r1
  int v5; // r0
  int v6; // [sp+8h] [bp-4h]

  v1 = a1;
  v2 = *dword_2010CC0;
  if ( v2 == 255 )
    return v6;
  if ( v2 != 1 || *(dword_2010CC0 + 4) | *(dword_2010CC0 + 5) | *(dword_2010CC0 + 6) )
  {
    if ( !*(dword_2010CC0 + 14) )
      sub_814B2C8();
    if ( *(dword_2010CC0 + 14) )
    {
      sub_814C360(sub_814B1F8);
      if ( v1 )
      {
        sub_814C6B4(dword_2010CC8 + 104, (*(dword_2010CC4 + 36) + 4) & 0xFF);
        return v6;
      }
      sub_814C66C(dword_2010CC8 + 104, (*(dword_2010CC4 + 36) + 4) & 0xFF);
    }
  }
  else
  {
    if ( *(dword_2010CC4 + 3) )
    {
      *(dword_2010CC4 + 8) = 16;
      *(dword_2010CC4 + 7) = 0;
    }
    if ( *(dword_2010CC4 + 8) )
      --*(dword_2010CC4 + 8);
    else
      ++*(dword_2010CC4 + 7);
    if ( *(dword_2010CC4 + 8) || !(*(dword_2010CC4 + 7) & 0xF) )
    {
      v3 = dword_2010CC8;
      *(dword_2010CC8 + 104) = 1;
      *(v3 + 120) = 255;
      sub_814C360(sub_814B2A0);
      if ( v1 )
        sub_814C6B4(dword_2010CC8 + 104, 1);
      else
        sub_814C66C(dword_2010CC8 + 104, 1);
      return v6;
    }
  }
  if ( v1 )
  {
    if ( *dword_2010CC0 == 1 )
    {
      if ( *(dword_2010CCC + 28) )
        return sub_814DA64(39);
    }
    else
    {
      v5 = sub_814C360(sub_814B290);
      sub_814C720(v5);
    }
  }
  return v6;
}


// 0x814b1f8
int __fastcall sub_814B1F8(int a1, unsigned __int16 a2)
{
  unsigned __int16 v2; // r7
  unsigned int v3; // r6
  unsigned int v4; // r2
  char (*v5)[28]; // r1
  unsigned __int16 *v6; // r4
  char v7; // t1
  int v9; // [sp+14h] [bp-4h]

  v2 = a2;
  if ( !a2 )
  {
    v3 = 0;
    do
    {
      v4 = v3;
      v5 = off_2010CA0[v3];
      if ( (*v5)[2] )
        (*v5)[2] = 0;
      v6 = dword_2010CB0[v4];
      if ( *v6 == 32800 )
      {
        sub_814A8C8(v3, 0, dword_2010CB0[v4]);
        *(dword_2010CC0 + 4) &= ~*(v6 + 26);
        if ( *(v6 + 45) == 1 )
          *(dword_2010CC0 + 7) |= 1 << v3;
        *v6 = 38;
      }
      v3 = (v3 + 1) & 0xFF;
    }
    while ( v3 <= 3 );
  }
  v7 = *(dword_2010CC0 + 14);
  *(dword_2010CC0 + 14) = 0;
  sub_81494B8(0x24u, v2);
  return v9;
}


// 0x814b290
int __fastcall sub_814B290(int a1, unsigned __int16 a2)
{
  int v3; // [sp+0h] [bp-4h]

  sub_81494B8(0x24u, a2);
  return v3;
}


// 0x814b2a0
int __fastcall sub_814B2A0(int a1, unsigned __int16 a2)
{
  int v3; // [sp+0h] [bp-4h]

  a1 = a1;
  if ( a2 )
  {
    sub_81494B8(0x24u, a2);
  }
  else if ( a1 == 255 )
  {
    sub_81494B8(0xFFu, 0);
  }
  return v3;
}


// 0x814b2c8
int sub_814B2C8()
{
  char v0; // t1
  int v1; // r8
  unsigned int v2; // r6
  int v3; // r5
  int *v4; // r4
  int i; // r2
  int v7; // [sp+0h] [bp-24h]
  int v8; // [sp+20h] [bp-4h]

  if ( *dword_2010CC0 != 255 && *(dword_2010CC0 + 4) | *(dword_2010CC0 + 5) | *(dword_2010CC0 + 6) )
  {
    v0 = *(dword_2010CC0 + 14);
    *(dword_2010CC0 + 14) = 0;
    v1 = 0;
    v7 = dword_2010CC8 + 108;
    v2 = 0;
    do
    {
      v3 = 0;
      v4 = &dword_2010CB0[v2];
      if ( **v4 & 0x8000 )
        v3 = sub_814B400(v2, &v7) & 0xFFFF;
      if ( *(*v4 + 52) & 0x8000 )
        v3 += sub_814B400(v2, &v7) & 0xFFFF;
      if ( *&(*off_2010CA0[v2])[0] == 32804 )
        v3 += sub_814B5C0(v2, &v7) & 0xFFFF;
      if ( v3 )
      {
        if ( *dword_2010CC0 == 1 )
          v1 += v3;
        else
          v1 |= v3 << (5 * v2 + 8);
      }
      v2 = (v2 + 1) & 0xFF;
    }
    while ( v2 <= 3 );
    if ( v1 )
    {
      for ( i = v7; i & 3; v7 = i )
        *i++ = 0;
      *(dword_2010CC8 + 104) = v1;
      if ( !*dword_2010CC0 )
        v1 = v7 - 108 - dword_2010CC8;
    }
    *(dword_2010CC4 + 36) = v1;
  }
  return v8;
}


// 0x814b400
int __fastcall sub_814B400(char a1, _BYTE **a2, unsigned __int16 *a3)
{
  _BYTE **v3; // r12
  unsigned __int16 *v4; // r4
  char v5; // r10
  char *v6; // r8
  _BYTE *v7; // r3
  char v8; // r0
  int v9; // r9
  int v10; // r5
  int v11; // r5
  unsigned int v12; // r0
  _BYTE *v13; // r6
  unsigned int v14; // r0
  char v15; // r7
  char v16; // r1
  int v17; // r3
  int *v18; // r2
  unsigned int i; // r3
  _BYTE *v20; // r1
  int result; // r0
  char v22; // r0
  int v23; // r0
  int v24; // r1
  int v25; // [sp+0h] [bp-28h]
  int v26; // [sp+4h] [bp-24h]

  v3 = a2;
  v4 = a3;
  v5 = a1;
  v6 = &byte_81C03AC[16 * *dword_2010CC0];
  if ( *a3 == 32802 )
  {
    v7 = a3 + 16;
    while ( *&a3[2 * *v7 + 2] >= (*(a3 + 10) + *(a3 + 12)) )
    {
      v8 = *v7 + 1;
      *v7 = v8;
      if ( v8 == 4 )
        *(a3 + 32) = 0;
    }
  }
  v9 = *a3;
  if ( v9 & 0x40 )
  {
    v10 = 0;
LABEL_15:
    v13 = a3 + 16;
    goto LABEL_16;
  }
  if ( v9 != 32802 )
  {
    v14 = *(a3 + 5);
    if ( v14 < a3[23] )
      v10 = v14;
    else
      v10 = a3[23];
    goto LABEL_15;
  }
  v11 = *&a3[2 * *(a3 + 32) + 2];
  v12 = *(a3 + 10) + *(a3 + 12);
  v13 = a3 + 16;
  if ( v11 + a3[23] <= v12 )
    v10 = a3[23];
  else
    v10 = (v12 - v11) & 0xFFFF;
LABEL_16:
  v15 = v6[5];
  v16 = v6[6];
  v17 = ((v9 & 0xF) << v6[3]) | (*(a3 + 31) << v6[4]) | (*v13 << v15) | (*(a3 + *v13 + 33) << v16) | v10;
  v25 = ((v9 & 0xF) << v6[3]) | (*(a3 + 31) << v6[4]) | (*v13 << v15) | (*(a3 + *v13 + 33) << v16) | v10;
  if ( *dword_2010CC0 == 1 )
    v25 = v17 | (*(a3 + 26) << 18);
  v18 = &v25;
  for ( i = 0; i < *v6; i = (i + 1) & 0xFF )
  {
    v20 = *v3;
    *v20 = *v18;
    v18 = (v18 + 1);
    *v3 = v20 + 1;
  }
  if ( v10 )
  {
    v26 = *&v4[2 * *v13 + 2];
    result = sub_814DA6C(&v26, v3, v10, *(dword_2010CC8 + 4));
  }
  else
  {
    if ( *v4 == 32802 )
    {
      v22 = *v13 + 1;
      *v13 = v22;
      if ( v22 == 4 )
        *v13 = 0;
    }
    if ( *dword_2010CC0 == 1 )
    {
      v23 = *(dword_2010CC0 + 14);
      *(dword_2010CC0 + 14) = 1;
    }
    else
    {
      v24 = *(dword_2010CC0 + 14);
      *(dword_2010CC0 + 14) |= 1 << v5;
    }
    result = *v6;
  }
  return result;
}


// 0x814b5c0
int __fastcall sub_814B5C0(unsigned __int8 a1, _BYTE **a2)
{
  _BYTE **v2; // r6
  char (*v3)[28]; // r4
  char *v5; // r5
  int v6; // r1
  int *v7; // r2
  unsigned int i; // r3
  _BYTE *v9; // r1
  int v10; // [sp+0h] [bp-20h]
  int v11; // [sp+4h] [bp-1Ch]

  v2 = a2;
  v3 = off_2010CA0[a1];
  if ( !(*v3)[2] || !(*v3)[3] )
    return 0;
  v5 = &byte_81C03AC[16 * *dword_2010CC0];
  v6 = ((*v3 & 0xF) << v5[3]) | *&(*v3)[4];
  v10 = ((*v3 & 0xF) << v5[3]) | *&(*v3)[4];
  if ( *dword_2010CC0 == 1 )
    v10 = v6 | ((*v3)[3] << 18);
  v7 = &v10;
  for ( i = 0; i < *v5; i = (i + 1) & 0xFF )
  {
    v9 = *v2;
    *v9 = *v7;
    v7 = (v7 + 1);
    *v2 = v9 + 1;
  }
  v11 = *&(*v3)[8];
  return sub_814DA6C(&v11, v2, *&(*v3)[4], *(dword_2010CC8 + 4));
}


// 0x814b694
int sub_814B694()
{
  int v0; // r0
  int v2; // [sp+4h] [bp-4h]

  if ( *dword_2010CC0 != 255 )
  {
    *(dword_2010CC4 + 3) = *(dword_2010CC0 + 4) | *(dword_2010CC0 + 5) | *(dword_2010CC0 + 6);
    *(dword_2010CC4 + 4) = 0;
    v0 = sub_814C360(sub_814B6D4);
    sub_814C6FC(v0);
  }
  return v2;
}


// 0x814b6d4
int __fastcall sub_814B6D4(unsigned __int8 a1, unsigned __int16 a2)
{
  unsigned __int8 v2; // r9
  unsigned __int16 v3; // r7
  unsigned int v4; // r6
  int *v5; // r3
  int *v6; // r1
  int v7; // r4
  int *v8; // ST00_4
  int v10; // [sp+1Ch] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !a2 && *(*(dword_2010CC8 + 220) + 1) )
  {
    *(dword_2010CC4 + 1) = 0;
    if ( *dword_2010CC0 == 1 )
      sub_814B7C0();
    else
      sub_814B858();
    v4 = 0;
    v5 = &dword_2010CC0;
    do
    {
      v6 = &dword_2010CB0[v4];
      v7 = *v6;
      if ( *(*v6 + 52) == 32835 && !((*(dword_2010CC4 + 1) >> v4) & 1) )
      {
        if ( *(v7 + 97) == 1 )
          *(*v5 + 7) |= 1 << v4;
        v8 = v5;
        sub_814A8C8(v4, 1, v7 + 52);
        v5 = v8;
        *(*v8 + 5) &= ~*(v7 + 78);
        *(v7 + 52) = 70;
      }
      v4 = (v4 + 1) & 0xFF;
    }
    while ( v4 <= 3 );
    if ( *(dword_2010CC4 + 4) )
      v3 = *(dword_2010CC4 + 4) | 0x700;
  }
  sub_81494B8(v2, v3);
  return v10;
}


// 0x814b7c0
int sub_814B7C0()
{
  unsigned int v0; // r3
  unsigned int v1; // r5
  int v2; // r0
  int v3; // r6
  int v4; // r5
  unsigned __int8 v5; // r7
  _BYTE *v6; // r4
  int v7; // r0
  int v8; // r1
  int v10; // [sp+0h] [bp-18h]
  int v11; // [sp+14h] [bp-4h]

  v0 = *(*(dword_2010CC8 + 220) + 4) >> 8;
  v1 = 0;
  do
  {
    v2 = v0 & 0x1F;
    *(&v10 + v1) = v0 & 0x1F;
    v0 >>= 5;
    if ( !v2 )
      *(dword_2010CC4 + 1) |= 1 << v1;
    v1 = (v1 + 1) & 0xFF;
  }
  while ( v1 <= 3 );
  v3 = *(dword_2010CC8 + 220) + 8;
  v4 = 0;
  do
  {
    v5 = v4 + 1;
    if ( *(&v10 + v4) )
    {
      v6 = &v10 + v4;
      do
      {
        v7 = sub_814B8B0(v4, v3, *v6, v0);
        v3 += v7;
        v8 = *v6 - v7;
        *v6 = v8;
      }
      while ( !(v8 & 0x80) && v8 << 24 );
    }
    v4 = (v4 + 1);
  }
  while ( v5 <= 3u );
  return v11;
}


// 0x814b858
int __fastcall sub_814B858(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v5; // r5
  int v6; // r0
  int v8; // [sp+Ch] [bp-4h]

  v4 = *(*(dword_2010CC8 + 220) + 4) & 0x7F;
  v5 = *(dword_2010CC8 + 220) + 8;
  if ( !v4 )
    *(dword_2010CC4 + 1) = 15;
  do
  {
    if ( !v4 )
      break;
    v6 = sub_814B8B0(0, v5, v4, a4);
    v5 += v6;
    v4 = (v4 - v6) & 0xFFFF;
  }
  while ( !(v4 & 0x8000) );
  return v8;
}


// 0x814b8b0
unsigned int __fastcall sub_814B8B0(unsigned __int8 a1, unsigned __int8 *a2, unsigned __int16 a3)
{
  unsigned __int8 *v3; // r7
  int v4; // r12
  char *v5; // r6
  unsigned int v6; // r0
  unsigned int v8; // r5
  unsigned int v9; // r4
  unsigned int v10; // r8
  unsigned int v11; // r10
  unsigned int v12; // r4
  char v13; // r5
  int v14; // r0
  int v15; // r5
  unsigned int v16; // r4
  unsigned int v17; // [sp+0h] [bp-28h]
  unsigned int v18; // [sp+4h] [bp-24h]

  v3 = a2;
  v4 = a1;
  v5 = &byte_81C03AC[16 * (~*dword_2010CC0 & 1)];
  v6 = *v5;
  if ( a3 < v6 )
    return a3;
  v8 = 0;
  v9 = 0;
  if ( v6 > 0 )
  {
    do
    {
      v8 |= *v3++ << 8 * v9;
      v9 = (v9 + 1) & 0xFF;
    }
    while ( v9 < *v5 );
  }
  v17 = ((v17 & 0xFFFFFF00 | (v8 >> v5[1]) & v5[7]) & 0xFFFF00FF | (((v8 >> v5[2]) & v5[8]) << 8)) & 0xFF00FFFF | (((v8 >> v5[3]) & v5[9]) << 16);
  v10 = v17 & 0xFFFFFF | (((v8 >> v5[4]) & v5[10]) << 24);
  v17 = v17 & 0xFFFFFF | (((v8 >> v5[4]) & v5[10]) << 24);
  v18 = ((v18 & 0xFFFFFF00 | (v8 >> v5[5]) & v5[11]) & 0xFFFF00FF | (((v8 >> v5[6]) & v5[12]) << 8)) & 0xFFFF | ((v8 & *(v5 + 7)) << 16);
  v11 = ((v18 >> 16) + *v5) & 0xFFFF;
  if ( !v17 )
  {
    if ( *dword_2010CC0 == 1 )
    {
      if ( (*(dword_2010CC0 + 2) >> v4) & 1 )
      {
        if ( ((v10 >> 16) & 0xFF) == 4 )
        {
          sub_814BAF4(v4);
        }
        else if ( HIBYTE(v17) )
        {
          v12 = 0;
          v13 = v4;
          if ( !((*(dword_2010CB0[0] + 26) >> v4) & 1) )
            goto LABEL_14;
          v14 = *(dword_2010CC0 + 4);
LABEL_17:
          if ( (v14 >> v13) & 1 )
          {
            if ( v12 <= 3 )
              sub_814BBA8(v12, v4, &v17, v3, v17, v18);
          }
          else
          {
LABEL_14:
            while ( 1 )
            {
              v12 = (v12 + 1) & 0xFF;
              if ( v12 > 3 )
                break;
              if ( (*(dword_2010CB0[v12] + 26) >> v4) & 1 )
              {
                v14 = *(dword_2010CC0 + 4);
                v13 = v4;
                goto LABEL_17;
              }
            }
          }
        }
        else
        {
          sub_814BD94(v4, &v17, v3);
        }
      }
    }
    else
    {
      v15 = (*(dword_2010CC0 + 2) & BYTE1(v17));
      if ( *(dword_2010CC0 + 2) & BYTE1(v17) )
      {
        v16 = 0;
        do
        {
          if ( (v15 >> v16) & 1 )
          {
            if ( BYTE2(v17) == 4 )
            {
              sub_814BAF4(v16);
            }
            else if ( HIBYTE(v17) )
            {
              if ( (*(dword_2010CC0 + 4) >> v16) & 1 )
                sub_814BBA8(v16, v16, &v17, v3, v17, v18);
            }
            else
            {
              sub_814BD94(v16, &v17, v3);
            }
          }
          v16 = (v16 + 1) & 0xFF;
        }
        while ( v16 <= 3 );
      }
    }
  }
  return v11;
}


// 0x814baf4
int __fastcall sub_814BAF4(unsigned __int8 a1, int a2, int a3)
{
  int v3; // r6
  char (**v4)[28]; // r1
  char (*v5)[28]; // r3
  int v6; // r5
  int v7; // r2
  int v9; // [sp+0h] [bp-1Ch]
  int v10; // [sp+4h] [bp-18h]
  int v11; // [sp+18h] [bp-4h]

  v3 = a2;
  v9 = a3;
  v4 = &off_2010CA0[a1];
  v5 = *v4;
  v6 = &(**v4)[12];
  *&(**v4)[14] = 0;
  if ( *&(**v4)[24] >= *(v3 + 6) )
  {
    if ( *(v6 + 7) )
    {
      if ( *(v6 + 6) )
      {
        *(v6 + 2) = 1801;
        goto LABEL_9;
      }
    }
    else if ( *(v6 + 6) )
    {
      *(v6 + 2) = 1800;
    }
    *v6 = -32702;
    *(v6 + 4) = *(v3 + 6);
    v7 = *(v3 + 6);
    v10 = *&(*off_2010CA0[a1])[20];
    return sub_814DA6C(&v9, &v10, v7, *(dword_2010CC8 + 4));
  }
  *&(*v5)[12] = 73;
  *(v6 + 2) = 1793;
LABEL_9:
  if ( *(v6 + 2) )
    *(dword_2010CC4 + 4) |= 16 << a1;
  return v11;
}


// 0x814bba8
int __fastcall sub_814BBA8(int a1, unsigned __int8 a2, int a3)
{
  int v3; // r6
  int v4; // r10
  unsigned __int16 *v5; // r12
  int v6; // r9
  int v7; // r2
  int v8; // r8
  int v9; // r1
  int v10; // r2
  int v11; // r1
  _BYTE *v12; // r5
  int v13; // r3
  unsigned __int16 *v14; // r1
  unsigned __int16 *v15; // r2
  int v16; // r0
  unsigned int v17; // r4
  int v18; // r2
  __int16 v19; // r2
  int v21; // [sp+0h] [bp-24h]
  int v22; // [sp+20h] [bp-4h]

  v3 = a3;
  v4 = a2;
  v5 = *(dword_2010CB0 + (4 * a1 & 0x3FF));
  v6 = *v5;
  v21 = *(v5 + *(a3 + 4) + 33);
  v7 = *(a3 + 2);
  if ( v7 == 2 && v6 == 32802 || v7 == 1 && v6 == 32801 || (v8 = v5 + 27, v7 == 3) && v6 == 32803 )
  {
    v9 = *(v3 + 4);
    v8 = v5 + 27;
    if ( *(v5 + v9 + 33) == *(v3 + 5) )
      *(v5 + v9 + 27) |= 1 << v4;
  }
  v10 = *(v3 + 4);
  if ( (*(v8 + v10) & v5[13]) == *(v5 + 26) )
  {
    *(v5 + v10 + 33) = (*(v5 + v10 + 33) + 1) & 3;
    *(*(v3 + 4) + v8) = 0;
    v11 = *v5;
    v12 = v5 + 33;
    if ( ((v11 + 32735) & 0xFFFFu) > 1 )
    {
      if ( *v5 << 16 == -2145189888 )
        *v5 = -32736;
    }
    else
    {
      if ( v11 == 32801 )
      {
        v13 = (v5 + 2);
        v14 = &v5[2 * *(v3 + 4) + 2];
        *v14 += v5[23];
      }
      else
      {
        v13 = (v5 + 2);
        v15 = &v5[2 * *(v3 + 4) + 2];
        *v15 += 4 * v5[23];
      }
      v16 = *(v5 + 5) - v5[23];
      *(v5 + 5) = v16;
      if ( !v16 || v16 < 0 )
      {
        *(v5 + 32) = 0;
        if ( *v5 == 32801 )
        {
          v17 = 0;
          do
          {
            v12[v17] = 1;
            *(v13 + 4 * v17) = *(v5 + 10) + v5[23] * v17;
            v17 = (v17 + 1) & 0xFF;
          }
          while ( v17 <= 3 );
          *(v5 + 5) = *(v5 + 12);
          *v5 = -32734;
        }
        else
        {
          *v12 = 0;
          *(v5 + 5) = 0;
          *v5 = -32733;
        }
      }
    }
  }
  if ( *v5 != v6 || (v18 = *(v3 + 4), *(v5 + v18 + 33) != v21) || (*(v8 + v18) >> v4) & 1 )
  {
    v19 = InterruptMasterEnableRegister;
    InterruptMasterEnableRegister = 0;
    *(dword_2010CC4 + 2) |= 16 << v4;
    *(dword_2010CB0[v4] + 2) = 0;
    InterruptMasterEnableRegister = v19;
  }
  return v22;
}


// 0x814bd94
int __fastcall sub_814BD94(int a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r8
  signed int v5; // r7
  int v6; // r4
  unsigned __int16 *v7; // r5
  int v8; // r9
  int v9; // r10
  int v10; // r0
  int v11; // r3
  int v13; // r0
  __int16 v14; // r2
  int v15; // [sp+0h] [bp-24h]
  int v16; // [sp+20h] [bp-4h]

  v3 = a2;
  v15 = a3;
  a1 = a1;
  v4 = a1;
  v5 = 0;
  v6 = dword_2010CB0[a1];
  v7 = (dword_2010CB0[a1] + 52);
  v8 = *(v6 + 52);
  v9 = *(v6 + 85 + *(a2 + 4));
  v10 = *(a2 + 2);
  if ( v10 == 3 )
  {
    *(dword_2010CC4 + 1) |= 1 << v4;
    if ( *(v6 + 52) == 32834 )
    {
      *(v6 + 84) = 0;
      *(v6 + 85) = 0;
      *(v6 + 52) = -32701;
    }
    goto LABEL_14;
  }
  if ( v10 == 2 )
  {
    if ( v8 == 32833 && !*(v7 + 5) )
      sub_814BFA0(v4, v7);
    if ( *v7 == 32834 )
      goto LABEL_15;
    goto LABEL_14;
  }
  if ( v10 != 1 )
  {
LABEL_14:
    if ( !v5 )
    {
LABEL_17:
      if ( !v7[12] )
      {
        *(v7 + 32) = *(v3 + 4);
        if ( *v7 != v8 || (v13 = *(v7 + *(v3 + 4) + 33), v13 != v9) || v13 == *(v3 + 5) )
        {
          v14 = InterruptMasterEnableRegister;
          InterruptMasterEnableRegister = 0;
          *(dword_2010CC4 + 2) |= 1 << v4;
          v7[1] = 0;
          InterruptMasterEnableRegister = v14;
        }
      }
      return v16;
    }
LABEL_15:
    v11 = *(v3 + 4);
    if ( *(v3 + 5) == ((*(v7 + v11 + 33) + 1) & 3) )
      return sub_814DA6C(&v15, &v7[2 * v11 + 2], *(v3 + 6), *(dword_2010CC8 + 4));
    goto LABEL_17;
  }
  if ( v8 == 32833 )
    goto LABEL_15;
  sub_814BF10(v4, v7);
  if ( *(v6 + 52) == 32833 )
  {
    v5 = 1;
    goto LABEL_14;
  }
  return v16;
}


// 0x814bf10
int __fastcall sub_814BF10(unsigned __int8 a1, int a2)
{
  int v2; // r2
  unsigned int v3; // r5
  _BYTE *v4; // r1
  int v5; // r4
  int v7; // [sp+10h] [bp-4h]

  v2 = a2;
  if ( *dword_2010CC0 == 1 )
  {
    v3 = 3;
    v4 = (dword_2010CC0 + 15);
  }
  else
  {
    v3 = 2;
    v4 = (dword_2010CC0 + a1 + 16);
  }
  v5 = (1 << a1) & 0xFF;
  if ( !*v2 )
  {
    if ( *v4 >= v3 )
    {
      *(v2 + 24) = 0;
      *v4 -= v3;
      *(v2 + 4) = v2 + 45;
      *(v2 + 20) = 7;
      *(v2 + 31) = 1;
      *(v2 + 46) = 0;
      *(v2 + 26) = v5;
      *v2 = -32703;
      *(dword_2010CC0 + 5) |= v5;
    }
    else
    {
      *v2 = 73;
      *(v2 + 24) = 1794;
      *(dword_2010CC4 + 4) |= 1 << a1;
    }
  }
  return v7;
}


// 0x814bfa0
int __fastcall sub_814BFA0(unsigned __int8 a1, int a2)
{
  int v2; // r0
  int v3; // r2
  unsigned int v4; // r3
  int v6; // [sp+10h] [bp-4h]

  if ( *(a2 + 45) == 1 )
  {
    v2 = dword_2010CC0 + 32 * a1 + 20 + 4;
  }
  else
  {
    v3 = dword_2010CB0[a1];
    if ( *(a2 + 48) > *(v3 + 108) )
    {
      *(dword_2010CC4 + 4) |= (0x1000000 << a1) >> 24;
      *(dword_2010CC0 + 5) &= ~((0x1000000 << a1) >> 24);
      *(a2 + 24) = 1793;
      *a2 = 71;
      sub_814A8C8(a1, 1, a2);
      return v6;
    }
    v2 = *(v3 + 104);
  }
  *(a2 + 4) = v2;
  v4 = 0;
  do
  {
    *(a2 + 33 + v4) = 0;
    *(a2 + 4 + 4 * v4) = *(a2 + 4) + *(a2 + 46) * v4;
    v4 = (v4 + 1) & 0xFF;
  }
  while ( v4 <= 3 );
  *(a2 + 20) = *(a2 + 48);
  *a2 = -32702;
  return v6;
}


// 0x814c058
int sub_814C058()
{
  __int16 v0; // r12
  unsigned int v1; // r7
  unsigned int v2; // r3
  unsigned int v3; // r2
  int v5; // [sp+10h] [bp-4h]

  if ( *(dword_2010CC0 + 5) | *(dword_2010CC0 + 4) )
  {
    v0 = InterruptMasterEnableRegister;
    InterruptMasterEnableRegister = 0;
    v1 = *(dword_2010CC4 + 2) >> 4;
    v2 = 0;
    do
    {
      v3 = (0x1000000 << v2) >> 24;
      if ( *(dword_2010CC0 + 4) & v3 && !(*(dword_2010CC4 + 2) & v3) )
        ++*(dword_2010CB0[v2] + 2);
      if ( *(dword_2010CC0 + 5) & v3 && !(v1 & v3) )
        ++*(dword_2010CB0[v2] + 54);
      v2 = (v2 + 1) & 0xFF;
    }
    while ( v2 <= 3 );
    *(dword_2010CC4 + 2) = 0;
    InterruptMasterEnableRegister = v0;
  }
  return v5;
}


// 0x814c10c
int __fastcall sub_814C10C(int a1, _DWORD *a2, char a3)
{
  int v3; // r3
  int v4; // r0
  char v5; // t1
  int v6; // r0
  int v7; // r0
  char v8; // t1
  int v9; // r0
  __int16 v10; // t1
  int v11; // r0
  int v13; // [sp+4h] [bp-4h]

  v3 = a1;
  if ( a3 == 1 )
  {
    *a2 = a1 + 232;
    DMA3SourceAddress = byte_814CF54;
    DMA3DestinationAddress = a1 + 232;
    *&DMA3WordCount = -2147482448;
    v4 = a1 + 2632;
  }
  else
  {
    *a2 = byte_814CF54;
    v4 = a1 + 232;
  }
  dword_2010CCC = v4;
  *(v4 + 40) = v3;
  *(v4 + 36) = v3 + 116;
  v5 = *(v4 + 20);
  *(v4 + 20) = 1;
  v6 = dword_2010CCC;
  *dword_2010CCC = 0;
  *(v6 + 4) = 0;
  *(dword_2010CCC + 5) = 0;
  *(dword_2010CCC + 7) = 0;
  *(dword_2010CCC + 8) = 0;
  *(dword_2010CCC + 9) = 0;
  v7 = dword_2010CCC;
  *(dword_2010CCC + 12) = 0;
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;
  v9 = dword_2010CCC;
  v10 = *(dword_2010CCC + 18);
  *(dword_2010CCC + 18) = 0;
  *(v9 + 21) = 0;
  LOBYTE(v10) = *(dword_2010CCC + 44);
  *(dword_2010CCC + 44) = 0;
  SIOModeSelect_GeneralPurposeData = 256;
  SIOControlRegister = 20483;
  v11 = sub_814C348();
  sub_814C354(v11);
  InterruptEnableRegister |= 0x80u;
  return v13;
}


// 0x814c1e4
int __fastcall sub_814C1E4(_DWORD *a1, char a2)
{
  __int16 v2; // r2
  int v4; // [sp+8h] [bp-4h]

  *a1 = sub_814C908;
  *(dword_2010CCC + 10) = a2;
  v2 = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  InterruptEnableRegister |= 8 << *(dword_2010CCC + 10);
  InterruptMasterEnableRegister = v2;
  return v4;
}


// 0x814c220
int sub_814C220()
{
  int v0; // r0
  __int16 *v1; // r3
  int v2; // r0
  int v3; // r0
  char v4; // t1
  int v5; // r1
  __int16 v6; // t1
  int v7; // r1
  int v9; // [sp+8h] [bp-4h]

  SIOModeSelect_GeneralPurposeData = -32608;
  v0 = 2 * *(dword_2010CCC + 10);
  v1 = &Timer0Control[v0];
  *v1 = 0;
  Timer0Counter_Reload[v0] = 0;
  for ( *v1 = 131; Timer0Counter_Reload[v0] <= 0x11u; SIOModeSelect_GeneralPurposeData = -32606 )
    ;
  *v1 = 3;
  SIOModeSelect_GeneralPurposeData = -32608;
  SIOControlRegister = 20483;
  v2 = dword_2010CCC;
  *dword_2010CCC = 0;
  *(v2 + 4) = 0;
  *(dword_2010CCC + 5) = 0;
  *(dword_2010CCC + 6) = 0;
  *(dword_2010CCC + 7) = 0;
  *(dword_2010CCC + 8) = 0;
  *(dword_2010CCC + 9) = 0;
  v3 = dword_2010CCC;
  *(dword_2010CCC + 12) = 0;
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;
  v5 = dword_2010CCC;
  v6 = *(dword_2010CCC + 18);
  *(dword_2010CCC + 18) = 0;
  LOBYTE(v6) = *(v5 + 20);
  *(v5 + 20) = 1;
  *(dword_2010CCC + 21) = 0;
  v7 = *(dword_2010CCC + 44);
  *(dword_2010CCC + 44) = 0;
  return v9;
}


// 0x814c2e8
int __fastcall sub_814C2E8(signed int a1)
{
  a1 = a1;
  if ( a1 == 1 )
    return *(dword_2010CCC + 20);
  if ( a1 > 1 )
  {
    if ( a1 == 2 )
      return *dword_2010CCC & 0xFFFF;
    if ( a1 == 3 )
      return *(dword_2010CCC + 6);
  }
  else if ( !a1 )
  {
    return *(dword_2010CCC + 18);
  }
  return 0xFFFF;
}


// 0x814c348
int sub_814C348()
{
  int v1; // [sp+0h] [bp-4h]

  sub_814C360(0);
  return v1;
}


// 0x814c354
int sub_814C354()
{
  int v1; // [sp+0h] [bp-4h]

  sub_814C36C(0);
  return v1;
}


// 0x814c360
int __fastcall sub_814C360(int result)
{
  *(dword_2010CCC + 24) = result;
  return result;
}


// 0x814c36c
int __fastcall sub_814C36C(int result)
{
  *(dword_2010CCC + 28) = result;
  return result;
}


// 0x814c378
int __fastcall sub_814C378(int result)
{
  *(dword_2010CCC + 32) = result;
  return result;
}


// 0x814c384
int sub_814C384()
{
  while ( *(dword_2010CCC + 44) == 1 )
    ;
  return *(dword_2010CCC + 18);
}


// 0x814c3ac
int sub_814C3AC()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !(sub_814CA44(16) & 0xFFFF) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c3d0
int sub_814C3D0()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(17) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c418
int sub_814C418()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(19) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c43c
int sub_814C43C()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(20) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c484
int __fastcall sub_814C484(_WORD *a1, _BYTE *a2)
{
  _WORD *v2; // r4
  _BYTE *v3; // r5
  _WORD *v4; // r1
  _BYTE *v5; // r1
  _BYTE *v6; // r4
  signed int v7; // r2
  signed int v8; // r2
  int v10; // [sp+8h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !(sub_814CA44(22) << 16) )
  {
    *(dword_2010CCC + 4) = 6;
    v4 = (*(dword_2010CCC + 36) + 4);
    *v4 = *v2;
    v5 = v4 + 1;
    v6 = v2 + 1;
    v7 = 13;
    do
    {
      *v5++ = *v6++;
      --v7;
    }
    while ( v7 >= 0 );
    v8 = 7;
    do
    {
      *v5++ = *v3++;
      --v8;
    }
    while ( v8 >= 0 );
    sub_814CB1C();
  }
  return v10;
}


// 0x814c4dc
int __fastcall sub_814C4DC(__int16 a1, char a2, char a3)
{
  __int16 v3; // r6
  char v4; // r5
  char v5; // r4
  _BYTE *v6; // r0
  int v8; // [sp+Ch] [bp-4h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  if ( !(sub_814CA44(23) << 16) )
  {
    *(dword_2010CCC + 4) = 1;
    v6 = (*(dword_2010CCC + 36) + 4);
    *v6++ = v5;
    *v6 = v4;
    *(v6 + 1) = v3;
    sub_814CB1C();
  }
  return v8;
}


// 0x814c51c
int sub_814C51C()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(25) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c540
int sub_814C540()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(26) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c564
int sub_814C564()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(27) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c588
int sub_814C588()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(28) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c5ac
int sub_814C5AC()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(29) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c5d0
int sub_814C5D0()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(30) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c5f4
int __fastcall sub_814C5F4(unsigned __int16 a1)
{
  int v1; // r4
  int v3; // [sp+4h] [bp-4h]

  v1 = a1;
  if ( !(sub_814CA44(31) << 16) )
  {
    *(dword_2010CCC + 4) = 1;
    *(*(dword_2010CCC + 36) + 4) = v1;
    sub_814CB1C();
  }
  return v3;
}


// 0x814c624
int sub_814C624()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(32) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c648
int sub_814C648()
{
  int v1; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(33) )
  {
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C();
  }
  return v1;
}


// 0x814c66c
int __fastcall sub_814C66C(int a1, int a2)
{
  int v2; // r6
  unsigned int v3; // r4
  char v4; // r5
  unsigned int v5; // r2
  int v6; // r0
  int v8; // [sp+Ch] [bp-4h]

  v2 = a1;
  v3 = a2 << 24;
  v4 = a2;
  if ( !(sub_814CA44(36) << 16) )
  {
    v5 = v3 >> 26;
    if ( v4 & 3 )
      LOBYTE(v5) = v5 + 1;
    *(dword_2010CCC + 4) = v5;
    v6 = SWI_CpuSet(v2, *(dword_2010CCC + 36) + 4, *(dword_2010CCC + 4) | 0x4000000);
    sub_814CB1C(v6);
  }
  return v8;
}


// 0x814c6b4
int __fastcall sub_814C6B4(int a1, int a2)
{
  int v2; // r6
  unsigned int v3; // r4
  char v4; // r5
  unsigned int v5; // r2
  int v6; // r0
  int v8; // [sp+Ch] [bp-4h]

  v2 = a1;
  v3 = a2 << 24;
  v4 = a2;
  if ( !(sub_814CA44(37) << 16) )
  {
    v5 = v3 >> 26;
    if ( v4 & 3 )
      LOBYTE(v5) = v5 + 1;
    *(dword_2010CCC + 4) = v5;
    v6 = SWI_CpuSet(v2, *(dword_2010CCC + 36) + 4, *(dword_2010CCC + 4) | 0x4000000);
    sub_814CB1C(v6);
  }
  return v8;
}


// 0x814c6fc
int sub_814C6FC()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(38) )
  {
    v0 = dword_2010CCC;
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C(v0);
  }
  return v2;
}


// 0x814c720
int sub_814C720()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(39) )
  {
    v0 = dword_2010CCC;
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C(v0);
  }
  return v2;
}


// 0x814c744
int __fastcall sub_814C744(unsigned __int8 a1)
{
  int v1; // r4
  unsigned __int8 v2; // r5
  _BYTE *v3; // r0
  unsigned __int8 *v4; // r0
  int v6; // [sp+8h] [bp-4h]

  v1 = a1;
  v2 = a1;
  if ( !sub_814CA44(40) )
  {
    if ( v1 )
    {
      *(dword_2010CCC + 4) = 1;
      v4 = (*(dword_2010CCC + 36) + 4);
      *v4++ = v2;
      *v4 = 0;
      v3 = v4 + 1;
      *v3 = 0;
      v3[1] = 0;
    }
    else
    {
      v3 = dword_2010CCC;
      *(dword_2010CCC + 4) = 0;
    }
    sub_814CB1C(v3);
  }
  return v6;
}


// 0x814c794
int __fastcall sub_814C794(char a1, char a2)
{
  char v2; // r4
  char v3; // r5
  _BYTE *v4; // r0
  int v6; // [sp+8h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !sub_814CA44(41) )
  {
    *(dword_2010CCC + 4) = 1;
    v4 = (*(dword_2010CCC + 36) + 4);
    *v4++ = v2;
    *v4++ = v3;
    *v4 = 0;
    v4[1] = 0;
    sub_814CB1C(v4);
  }
  return v6;
}


// 0x814c7d4
int sub_814C7D4()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(55) )
  {
    v0 = dword_2010CCC;
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C(v0);
  }
  return v2;
}


// 0x814c7f8
int __fastcall sub_814C7F8(unsigned __int8 a1)
{
  int v1; // r4
  int v2; // r0
  int v4; // [sp+4h] [bp-4h]

  v1 = a1;
  if ( !(sub_814CA44(48) << 16) )
  {
    *(dword_2010CCC + 4) = 1;
    v2 = *(dword_2010CCC + 36);
    *(v2 + 4) = v1;
    sub_814CB1C(v2);
  }
  return v4;
}


// 0x814c828
int __fastcall sub_814C828(unsigned __int8 a1, unsigned __int8 a2)
{
  int v2; // r5
  int v3; // r4
  int v4; // r0
  int v6; // [sp+8h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( !(sub_814CA44(49) << 16) )
  {
    *(dword_2010CCC + 4) = 1;
    v4 = (v3 << 8) | v2;
    *(*(dword_2010CCC + 36) + 4) = v4;
    sub_814CB1C(v4);
  }
  return v6;
}


// 0x814c860
int __fastcall sub_814C860(unsigned __int16 a1, unsigned __int16 a2, unsigned __int8 a3)
{
  int v3; // r5
  int v4; // r4
  int v5; // r6
  int v6; // r0
  int v7; // r1
  int v9; // [sp+Ch] [bp-4h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  if ( !(sub_814CA44(50) << 16) )
  {
    *(dword_2010CCC + 4) = 2;
    v6 = (v3 << 16) | v4;
    v7 = *(dword_2010CCC + 36);
    *(v7 + 4) = v6;
    *(v7 + 8) = v5;
    sub_814CB1C(v6);
  }
  return v9;
}


// 0x814c89c
int sub_814C89C()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(51) )
  {
    v0 = dword_2010CCC;
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C(v0);
  }
  return v2;
}


// 0x814c8c0
int sub_814C8C0()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(52) )
  {
    v0 = dword_2010CCC;
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C(v0);
  }
  return v2;
}


// 0x814c8e4
int sub_814C8E4()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  if ( !sub_814CA44(61) )
  {
    v0 = dword_2010CCC;
    *(dword_2010CCC + 4) = 0;
    sub_814CB1C(v0);
  }
  return v2;
}


// 0x814c908
int sub_814C908()
{
  unsigned int v0; // r0
  char v1; // t1
  int v2; // r0
  char v3; // t1
  int v4; // r0
  int v6; // [sp+4h] [bp-4h]

  v0 = *(dword_2010CCC + 12);
  if ( v0 == 2 )
  {
    v1 = *(dword_2010CCC + 16);
    *(dword_2010CCC + 16) = 1;
    sub_814C96C(50);
  }
  else
  {
    if ( v0 <= 2 )
    {
      if ( v0 != 1 )
        return v6;
      goto LABEL_9;
    }
    if ( v0 != 3 )
    {
      if ( v0 != 4 )
        return v6;
LABEL_9:
      v2 = sub_814CA18();
      sub_814CB90(v2);
      return v6;
    }
    v3 = *(dword_2010CCC + 16);
    *(dword_2010CCC + 16) = 1;
    v4 = sub_814CA18();
    sub_814CC10(v4);
    if ( *(dword_2010CCC + 24) )
      sub_814DA68(255, 0);
  }
  return v6;
}


// 0x814c96c
int __fastcall sub_814C96C(unsigned __int8 a1)
{
  signed int v1; // r3
  int v2; // r0
  __int16 *v3; // r4
  __int16 *v4; // r7
  int v5; // r1
  signed int v6; // r0
  int v8; // [sp+10h] [bp-4h]

  v1 = a1;
  v2 = 2 * *(dword_2010CCC + 10);
  v3 = &Timer0Counter_Reload[v2];
  v4 = &Timer0Control[v2];
  InterruptMasterEnableRegister = 0;
  if ( v1 == 80 )
  {
    *v3 = -1312;
    v5 = dword_2010CCC;
    v6 = 2;
  }
  else if ( v1 > 80 )
  {
    if ( v1 == 100 )
    {
      *v3 = -1642;
      v5 = dword_2010CCC;
      v6 = 3;
    }
    else
    {
      if ( v1 != 130 )
        goto LABEL_13;
      *v3 = -2131;
      v5 = dword_2010CCC;
      v6 = 4;
    }
  }
  else
  {
    if ( v1 != 50 )
      goto LABEL_13;
    *v3 = -821;
    v5 = dword_2010CCC;
    v6 = 1;
  }
  *(v5 + 12) = v6;
LABEL_13:
  *v4 = 195;
  InterruptRequestFlags_IRQAcknowledge = 8 << *(dword_2010CCC + 10);
  InterruptMasterEnableRegister = 1;
  return v8;
}


// 0x814ca18
__int16 *sub_814CA18()
{
  int v0; // r0
  __int16 *result; // r0

  v0 = dword_2010CCC;
  *(dword_2010CCC + 12) = 0;
  Timer0Counter_Reload[2 * *(v0 + 10)] = 0;
  result = &Timer0Control[2 * *(dword_2010CCC + 10)];
  *result = 0;
  return result;
}


// 0x814ca44
int __fastcall sub_814CA44(unsigned __int8 a1)
{
  int v1; // r1
  __int16 v2; // t1
  int v3; // r2
  _BYTE *v4; // r3
  __int16 v5; // t1
  __int16 v6; // t1
  int v7; // r3
  char v9; // t1
  int v10; // r0
  int v11; // r0
  char v12; // t1
  int v13; // r0
  __int16 v14; // t1

  if ( !InterruptMasterEnableRegister )
  {
    v1 = dword_2010CCC;
    v2 = *(dword_2010CCC + 18);
    *(dword_2010CCC + 18) = 6;
    if ( *(v1 + 24) )
      sub_814DA68(a1, *(v1 + 18));
    return 1;
  }
  v3 = dword_2010CCC;
  v4 = (dword_2010CCC + 44);
  if ( *(dword_2010CCC + 44) == 1 )
  {
    v5 = *(dword_2010CCC + 18);
    *(dword_2010CCC + 18) = 2;
    LOBYTE(v5) = *v4;
    *v4 = 0;
    if ( *(dword_2010CCC + 24) )
      sub_814DA68(a1, *(dword_2010CCC + 18));
    return 1;
  }
  if ( !*(dword_2010CCC + 20) )
  {
    v6 = *(dword_2010CCC + 18);
    *(dword_2010CCC + 18) = 4;
    v7 = *(v3 + 24);
    if ( v7 )
      return sub_814DA6C(a1, *(v3 + 18), v3, v7);
    return 1;
  }
  v9 = *v4;
  *v4 = 1;
  *(dword_2010CCC + 6) = a1;
  v10 = dword_2010CCC;
  *dword_2010CCC = 0;
  *(v10 + 4) = 0;
  *(dword_2010CCC + 5) = 0;
  *(dword_2010CCC + 7) = 0;
  *(dword_2010CCC + 8) = 0;
  *(dword_2010CCC + 9) = 0;
  v11 = dword_2010CCC;
  *(dword_2010CCC + 12) = 0;
  v12 = *(v11 + 16);
  *(v11 + 16) = 0;
  v13 = dword_2010CCC;
  v14 = *(dword_2010CCC + 18);
  *(dword_2010CCC + 18) = 0;
  *(v13 + 21) = 0;
  SIOModeSelect_GeneralPurposeData = 256;
  SIOControlRegister = 20483;
  return 0;
}


// 0x814cb1c
int sub_814CB1C()
{
  int v0; // r1
  __int16 v1; // r3

  **(dword_2010CCC + 36) = (*(dword_2010CCC + 4) << 8) | *(dword_2010CCC + 6) | 0x99660000;
  v0 = dword_2010CCC;
  *&SIOData0_Parent__Multi_PlayerMode_ = **(dword_2010CCC + 36);
  *dword_2010CCC = 0;
  *(v0 + 5) = 1;
  v1 = InterruptMasterEnableRegister;
  InterruptMasterEnableRegister = 0;
  InterruptEnableRegister |= 8 << *(dword_2010CCC + 10);
  InterruptEnableRegister |= 0x80u;
  InterruptMasterEnableRegister = v1;
  SIOControlRegister = 20611;
  return 0;
}


// 0x814cb90
int sub_814CB90()
{
  int v0; // r2
  unsigned int v1; // r0
  int v2; // r0
  _BYTE *v3; // r0
  __int16 v4; // t1
  __int16 v5; // t1

  v0 = dword_2010CCC;
  v1 = *(dword_2010CCC + 21);
  if ( v1 > 1 )
  {
    v2 = *(dword_2010CCC + 6);
    if ( v2 != 39 && v2 != 37 && v2 != 53 && v2 != 55 )
    {
      v5 = *(dword_2010CCC + 18);
      *(dword_2010CCC + 18) = 1;
      LOBYTE(v5) = *(v0 + 44);
      *(v0 + 44) = 0;
      if ( *(dword_2010CCC + 24) )
        sub_814DA68(*(dword_2010CCC + 6), *(dword_2010CCC + 18));
      *dword_2010CCC = 4;
    }
    else
    {
      v3 = dword_2010CCC;
      v4 = *(dword_2010CCC + 18);
      *(dword_2010CCC + 18) = 1;
      v3 += 44;
      LOBYTE(v4) = *v3;
      *v3 = 0;
      if ( *(dword_2010CCC + 24) )
        sub_814DA68(*(dword_2010CCC + 6), *(dword_2010CCC + 18));
    }
  }
  else
  {
    *(dword_2010CCC + 21) = v1 + 1;
    sub_814CB1C();
  }
  return 0;
}


// 0x814cc10
int sub_814CC10()
{
  int v0; // r1

  v0 = dword_2010CCC;
  *dword_2010CCC = 5;
  *(v0 + 4) = 0;
  *(dword_2010CCC + 5) = 0;
  *&SIOData0_Parent__Multi_PlayerMode_ = 2147483648;
  SIOControlRegister = 20610;
  return 0;
}


// 0x814cc48
signed int __fastcall sub_814CC48(unsigned __int8 a1)
{
  int v1; // r6
  int v2; // r5
  __int16 v4; // r8
  int v5; // r0
  __int16 *v6; // r4
  int v7; // r5

  v2 = a1;
  if ( !InterruptMasterEnableRegister )
    return -1;
  v4 = InterruptEnableRegister;
  *dword_2010CCC = 10;
  v5 = sub_814C378(sub_814CE64);
  sub_814CCFC(v5);
  v6 = &Timer0Counter_Reload[2 * *(dword_2010CCC + 10)];
  v7 = 8 * v2 & 0xFF;
  while ( 1 )
  {
    v7 = (v7 - 1) & 0xFF;
    if ( v7 == 255 )
      break;
    v1 = sub_814CD70();
    if ( v1 )
      break;
    v6[1] = 0;
    *v6 = 0;
    v6[1] = 131;
    while ( *v6 <= 0x1Fu )
      ;
    v6[1] = 0;
    *v6 = 0;
  }
  InterruptEnableRegister = v4;
  InterruptMasterEnableRegister = 1;
  *dword_2010CCC = 0;
  sub_814C378(0);
  return v1;
}


// 0x814ccfc
int sub_814CCFC()
{
  int v1; // [sp+0h] [bp-10h]
  int v2; // [sp+Ch] [bp-4h]

  InterruptMasterEnableRegister = 0;
  InterruptEnableRegister &= ~((8 << *(dword_2010CCC + 10)) | 0x80);
  InterruptMasterEnableRegister = 1;
  SIOModeSelect_GeneralPurposeData = 0;
  SIOControlRegister = 20608;
  v1 = 0;
  SWI_CpuSet(&v1, &byte_2010CD0, 83886083);
  InterruptRequestFlags_IRQAcknowledge = 128;
  return v2;
}


// 0x814cd70
int sub_814CD70()
{
  if ( byte_2010CD1 )
  {
    if ( byte_2010CD1 != 1 )
      return word_2010CDA;
    if ( word_2010CDA )
    {
      byte_2010CD1 = 2;
      return word_2010CDA;
    }
    if ( byte_2010CD0 == 1 )
    {
      if ( !word_2010CD2 )
      {
        SIOControlRegister |= 0x80u;
        InterruptMasterEnableRegister = byte_2010CD1;
      }
    }
    else if ( word_2010CD4 != 32769 && !word_2010CD2 )
    {
      InterruptEnableRegister &= 0xFF7Fu;
      InterruptRequestFlags_IRQAcknowledge = 128;
      SIOControlRegister = 20608;
      InterruptEnableRegister |= 0x80u;
      InterruptMasterEnableRegister = byte_2010CD1;
    }
  }
  else
  {
    byte_2010CD0 = 1;
    SIOControlRegister |= 1u;
    InterruptEnableRegister |= 0x80u;
    InterruptMasterEnableRegister = 1;
    byte_2010CD1 = 1;
    LOBYTE(SIOControlRegister) = SIOControlRegister | 0x80;
  }
  return 0;
}


// 0x814ce64
int sub_814CE64()
{
  int v0; // r1
  int v1; // r5
  __int16 v2; // r0
  unsigned __int16 v3; // r0
  unsigned int v4; // r0
  int v6; // [sp+8h] [bp-4h]

  if ( byte_2010CD0 != 1 )
    SIOControlRegister |= 0x80u;
  v0 = *&SIOData0_Parent__Multi_PlayerMode_ << 16 * byte_2010CD0 >> 16;
  v1 = *&SIOData0_Parent__Multi_PlayerMode_ << 16 * (1 - byte_2010CD0) >> 16;
  v2 = word_2010CDA;
  if ( !word_2010CDA )
  {
    if ( v0 == word_2010CD6 )
    {
      if ( word_2010CD2 > 3u )
      {
        word_2010CDA = v1;
        goto LABEL_11;
      }
      if ( v0 != (~word_2010CD4 & 0xFFFF) || v1 != (~word_2010CD6 & 0xFFFF) )
        goto LABEL_11;
      v2 = word_2010CD2 + 1;
    }
    word_2010CD2 = v2;
  }
LABEL_11:
  if ( word_2010CD2 > 3u )
    v3 = -32767;
  else
    v3 = *&LibInfoText_aNintendosio32i[2 * word_2010CD2];
  word_2010CD4 = v3;
  word_2010CD6 = ~v1;
  *&SIOData0_Parent__Multi_PlayerMode_ = (v3 << 16 * (1 - byte_2010CD0)) + (~v1 << 16 * byte_2010CD0);
  if ( byte_2010CD0 == 1 && (word_2010CD2 || v1 == 18766) )
  {
    v4 = 0;
    do
      v4 = (v4 + 1) & 0xFFFF;
    while ( v4 <= 0x257 );
    if ( !word_2010CDA )
      SIOControlRegister |= 0x80u;
  }
  return v6;
}


// 0x814d8b4
// (u32 *src, u32 *dest, int mode) -> void
void SWI_CpuFastSet()
{
  __asm { SVC     0xC;   r0    Source address        (must be aligned by 4) }
}


// 0x814d8b8
// (void *src, void *dest, int mode) -> void
void SWI_CpuSet()
{
  __asm { SVC     0xB;   r0    Source address        (must be aligned by 4 for 32bit, by 2 for 16bit) }
}


// 0x814d8bc
void SWI_Div()
{
  __asm { SVC     6; Signed Division, r0/r1. }
}


// 0x814d8c0
void SWI_LZ77UnCompReadNormalWrite16bit()
{
  __asm { SVC     0x12;   r0  Source address, pointing to data as such: }
}


// 0x814d8c4
// (void *src, void *dest) -> void
void __cdecl SWI_LZ77UnCompReadNormalWrite8bit(void *src, void *dest)
{
  __asm { SVC     0x11;   r0  Source address, pointing to data as such: }
}


// 0x814d8c8
void SWI_Sqrt()
{
  __asm { SVC     8; Calculate square root. }
}


// 0x814d8cc
int __fastcall sub_814D8CC(_BYTE *a1, _BYTE *a2, int a3)
{
  _BYTE *v3; // r4
  int v4; // r3
  int v6; // [sp+4h] [bp-4h]

  v3 = a1;
  v4 = a3 - 1;
  if ( a3 )
  {
    do
    {
      *a2++ = *v3++;
      --v4;
    }
    while ( v4 != -1 );
  }
  return v6;
}


// 0x814d8f0
int __fastcall sub_814D8F0(int a1, int a2, int a3)
{
  int v3; // r4
  int v4; // r6
  _WORD *v5; // r3
  int *v6; // r2
  unsigned int i; // r0
  int v9; // [sp+0h] [bp-90h]

  v3 = a1;
  v4 = a3;
  LOWORD(GamePakWaitstateControl) = GamePakWaitstateControl & 0xFFFC | 3;
  v5 = (sub_814D8CC & 0xFFFFFFFE);
  v6 = &v9;
  for ( i = 1179648; i >> 16; i = ((i >> 16) - 1) << 16 )
  {
    *v6 = *v5;
    ++v5;
    v6 = (v6 + 2);
  }
  return sub_814DA6C(v3, a2, v4, &v9 + 1);
}


// 0x814d954
int __fastcall sub_814D954(_BYTE *a1, _BYTE *a2, int a3)
{
  _BYTE *v3; // r5
  _BYTE *v4; // r4
  int i; // r3
  int v7; // [sp+8h] [bp-4h]

  v3 = a1;
  v4 = a2;
  LOWORD(GamePakWaitstateControl) = GamePakWaitstateControl & 0xFFFC | 3;
  for ( i = a3 - 1; i != -1; --i )
    *v4++ = *v3++;
  return v7;
}


// 0x814d994
int __fastcall sub_814D994(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  unsigned __int8 *v3; // r5
  unsigned __int8 *v4; // r3
  int v5; // r4
  int v6; // r1
  int v7; // r0

  v3 = a1;
  v4 = a2;
  v5 = a3 - 1;
  if ( !a3 )
    return 0;
  while ( 1 )
  {
    v6 = *v4;
    v7 = *v3++;
    ++v4;
    if ( v6 != v7 )
      break;
    if ( --v5 == -1 )
      return 0;
  }
  return (v4 - 1);
}


// 0x814d9c4
int __fastcall sub_814D9C4(int a1, int a2, int a3)
{
  int v3; // r4
  int v4; // r6
  _WORD *v5; // r3
  int *v6; // r2
  unsigned int i; // r0
  int v9; // [sp+0h] [bp-D0h]

  v3 = a1;
  v4 = a3;
  LOWORD(GamePakWaitstateControl) = GamePakWaitstateControl & 0xFFFC | 3;
  v5 = (sub_814D994 & 0xFFFFFFFE);
  v6 = &v9;
  for ( i = 1572864; i >> 16; i = ((i >> 16) - 1) << 16 )
  {
    *v6 = *v5;
    ++v5;
    v6 = (v6 + 2);
  }
  return sub_814DA6C(v3, a2, v4, &v9 + 1);
}


// 0x814da28
int __fastcall sub_814DA28(_BYTE *a1, _BYTE *a2, int a3, int a4)
{
  _BYTE *v4; // r6
  _BYTE *v5; // r5
  int v6; // r4
  unsigned int i; // r7

  v4 = a1;
  v5 = a2;
  v6 = a3;
  for ( i = 0; i <= 2; i = (i + 1) & 0xFF )
  {
    sub_814D954(v4, v5, v6);
    a4 = sub_814D9C4(v4, v5, v6);
    if ( !a4 )
      break;
  }
  return a4;
}


// 0x814da64
int __fastcall sub_814DA64(int a1, int (__fastcall *a2)(int))
{
  return a2(a1);
}


// 0x814da68
int __fastcall sub_814DA68(int a1, int a2, int (__fastcall *a3)(int, int))
{
  return a3(a1, a2);
}


// 0x814da6c
int __fastcall sub_814DA6C(int a1, int a2, int a3, int a4)
{
  return (a4)(a1, a2, a3, a4);
}


// 0x814da9c
int __fastcall sub_814DA9C(unsigned int a1, unsigned int a2)
{
  int v2; // r12
  unsigned int v3; // r3
  int v4; // r2
  int result; // r0

  if ( a2 )
  {
    v2 = a1 ^ a2;
    v3 = 1;
    v4 = 0;
    if ( (a2 & 0x80000000) != 0 )
      a2 = -a2;
    if ( (a1 & 0x80000000) != 0 )
      a1 = -a1;
    if ( a1 >= a2 )
    {
      while ( a2 < 0x10000000 && a2 < a1 )
      {
        a2 *= 16;
        v3 *= 16;
      }
      while ( a2 < 0x80000000 && a2 < a1 )
      {
        a2 *= 2;
        v3 *= 2;
      }
      while ( 1 )
      {
        if ( a1 >= a2 )
        {
          a1 -= a2;
          v4 |= v3;
        }
        if ( a1 >= a2 >> 1 )
        {
          a1 -= a2 >> 1;
          v4 |= v3 >> 1;
        }
        if ( a1 >= a2 >> 2 )
        {
          a1 -= a2 >> 2;
          v4 |= v3 >> 2;
        }
        if ( a1 >= a2 >> 3 )
        {
          a1 -= a2 >> 3;
          v4 |= v3 >> 3;
        }
        if ( !a1 )
          break;
        v3 >>= 4;
        if ( !v3 )
          break;
        a2 >>= 4;
      }
    }
    result = v4;
    if ( v2 < 0 )
      result = -v4;
  }
  else
  {
    nullsub_1();
    result = 0;
  }
  return result;
}


// 0x814db30
void nullsub_1()
{
  ;
}


// 0x814db34
unsigned int __fastcall sub_814DB34(unsigned int result, unsigned int a2)
{
  unsigned int v2; // r3
  int v3; // r2
  unsigned int v4; // r12
  unsigned int v5; // r2

  if ( a2 )
  {
    v2 = 1;
    if ( result >= a2 )
    {
      while ( a2 < 0x10000000 && a2 < result )
      {
        a2 *= 16;
        v2 *= 16;
      }
      while ( a2 < 0x80000000 && a2 < result )
      {
        a2 *= 2;
        v2 *= 2;
      }
      while ( 1 )
      {
        v3 = 0;
        if ( result >= a2 )
          result -= a2;
        if ( result >= a2 >> 1 )
        {
          result -= a2 >> 1;
          v3 = __ROR4__(v2, 1);
        }
        if ( result >= a2 >> 2 )
        {
          result -= a2 >> 2;
          v3 |= __ROR4__(v2, 2);
        }
        if ( result >= a2 >> 3 )
        {
          result -= a2 >> 3;
          v3 |= __ROR4__(v2, 3);
        }
        v4 = v2;
        if ( !result )
          break;
        v2 >>= 4;
        if ( !v2 )
          break;
        a2 >>= 4;
      }
      v5 = v3 & 0xE0000000;
      if ( v5 )
      {
        if ( v5 & __ROR4__(v4, 3) )
          result += a2 >> 3;
        if ( v5 & __ROR4__(v4, 2) )
          result += a2 >> 2;
        if ( v5 & __ROR4__(v4, 1) )
          result += a2 >> 1;
      }
    }
  }
  else
  {
    nullsub_1();
    result = 0;
  }
  return result;
}


// 0x814dc04
int sub_814DC04()
{
  int result; // r0
  int v1; // r0
  int v2; // r3

  result = *byte_3007FF0;
  if ( **byte_3007FF0 == 1752395091 )
  {
    **byte_3007FF0 = 1752395092;
    *(result + 12);
    if ( *(result + 32) )
    {
      v1 = *(result + 36);
      JUMPOUT(&locret_814E026);
    }
    v2 = *(result + 40);
    JUMPOUT(&locret_814E026);
  }
  return result;
}


// 0x814dc84
int m4a_814DC84()
{
  int v0; // r6
  int result; // r0

  if ( BYTE1(dword_4[0x400000 * v0]) )
    result = sub_814DC94();
  else
    result = sub_814DCE8();
  return result;
}


// 0x814dc94
void __fastcall sub_814DC94(int a1, int a2, int a3, int a4)
{
  int v4; // r4
  char *v5; // r5
  int v6; // r6
  int v7; // r8
  char *v8; // r7
  int v9; // r4
  int v10; // r0
  int v11; // t1
  int v12; // r0
  unsigned __int8 v13; // vf

  if ( v4 == 2 )
    v8 = (a1 + 848);
  else
    v8 = &v5[v7];
  v9 = v7;
  while ( 1 )
  {
    v10 = v5[v6] + *v5 + v8[v6];
    v11 = *v8++;
    v12 = (v10 + v11) * a4 >> 9;
    if ( v12 & 0x80 )
      LOBYTE(v12) = v12 + 1;
    v5[v6] = v12;
    *v5++ = v12;
    v13 = __OFSUB__(v9--, 1);
    if ( ((v9 < 0) ^ v13) | (v9 == 0) )
      JUMPOUT(&loc_814DD16);
  }
}


// 0x814dce8
int __fastcall sub_814DCE8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned int a10, int a11)
{
  _DWORD *v11; // r5
  int v12; // r6
  unsigned int v13; // r8
  _DWORD *v14; // r6
  int v15; // r1
  _DWORD *v16; // r5
  _DWORD *v17; // r6
  _DWORD *v18; // r5
  _DWORD *v19; // r6
  unsigned __int8 v20; // vf
  int v21; // r12
  char *v22; // r4
  int v23; // r3
  char v24; // r6
  unsigned int v26; // r5
  unsigned int v27; // r0
  bool v28; // cf
  unsigned int v29; // r5
  int v30; // [sp+4h] [bp+4h]
  int v31; // [sp+10h] [bp+10h]

  v14 = (v11 + v12);
  if ( __CFSHR__(v13, 3) )
  {
    *v11 = 0;
    ++v11;
    *v14 = 0;
    ++v14;
  }
  v15 = v13 >> 4;
  if ( (v13 >> 3) & 1 )
  {
    *v11 = 0;
    v16 = v11 + 1;
    *v14 = 0;
    v17 = v14 + 1;
    *v16 = 0;
    v11 = v16 + 1;
    *v17 = 0;
    v14 = v17 + 1;
  }
  do
  {
    *v11 = 0;
    v18 = v11 + 1;
    *v14 = 0;
    v19 = v14 + 1;
    *v18 = 0;
    ++v18;
    *v19 = 0;
    ++v19;
    *v18 = 0;
    ++v18;
    *v19 = 0;
    ++v19;
    *v18 = 0;
    v11 = v18 + 1;
    *v19 = 0;
    v14 = v19 + 1;
    v20 = __OFSUB__(v15--, 1);
  }
  while ( !(((v15 < 0) ^ v20) | (v15 == 0)) );
  v21 = *(a11 + 24);
  v22 = (a11 + 80);
  v30 = *(a11 + 6);
  v23 = *(a11 + 116);
  if ( a10 )
  {
    v15 = VerticalCounter_LY_;
    if ( VerticalCounter_LY_ < 0xA0u )
      v15 = VerticalCounter_LY_ + 228;
    if ( v15 >= a10 )
      JUMPOUT(&loc_814E012);
  }
  v24 = *v22;
  if ( !(*v22 & 0xC7) )
    return sub_814E008(199, v15);
  if ( *v22 & 0x80 )
  {
    if ( !(*v22 & 0x40) )
    {
      v24 = 3;
      *v22 = 3;
      *(a11 + 120) = v23 + 16;
      *(a11 + 104) = *(v23 + 12);
      v26 = 0;
      *(a11 + 89) = 0;
      *(a11 + 108) = 0;
      if ( *(v23 + 3) & 0xC0 )
      {
        v24 = 19;
        *v22 = 19;
      }
      goto LABEL_32;
    }
LABEL_22:
    *v22 = 0;
    return sub_814E008(0, v15);
  }
  v26 = *(a11 + 89);
  if ( *v22 & 4 )
  {
    v27 = *(a11 + 93);
    v28 = v27-- >= 1;
    *(a11 + 93) = v27;
    if ( v27 == 0 || !v28 )
      goto LABEL_22;
  }
  else
  {
    if ( *v22 & 0x40 )
    {
      v26 = v26 * *(a11 + 87) >> 8;
      if ( v26 > *(a11 + 92) )
        goto LABEL_34;
    }
    else
    {
      if ( (v24 & 3) != 2 )
      {
        if ( (v24 & 3) == 3 )
        {
LABEL_32:
          v26 += *(a11 + 84);
          if ( v26 >= 0xFF )
          {
            v26 = 255;
            *v22 = --v24;
          }
          goto LABEL_34;
        }
        goto LABEL_34;
      }
      v26 = v26 * *(a11 + 85) >> 8;
      if ( v26 > *(a11 + 86) )
        goto LABEL_34;
      v26 = *(a11 + 86);
      if ( *(a11 + 86) )
      {
        *v22 = --v24;
        goto LABEL_34;
      }
    }
    v26 = *(a11 + 92);
    if ( !*(a11 + 92) )
      goto LABEL_22;
    v24 |= 4u;
    *v22 = v24;
  }
LABEL_34:
  *(a11 + 89) = v26;
  v29 = (*(a11 + 7) + 1) * v26 >> 4;
  *(a11 + 90) = (*(a11 + 82) * v29) >> 8;
  *(a11 + 91) = (*(a11 + 83) * v29) >> 8;
  if ( v24 & 0x10 )
  {
    v15 = *(v23 + 8);
    v31 = *(v23 + 12) - v15;
  }
  return sub_814DE20(sub_814DE20, v15, *(a11 + 104), *(a11 + 120), a5);
}


// 0x814de20
int __fastcall sub_814DE20(int a1, int a2, int a3, char *a4, int a5, int a6, int a7, char *a8, int a9)
{
  int v9; // r4
  unsigned int *v10; // r5
  int v11; // r8
  int v12; // r12
  int v13; // r10
  int v14; // r11
  unsigned __int8 v15; // vf
  int v16; // lr
  int v17; // lr
  int v18; // r2
  unsigned int v19; // r6
  int v20; // r7
  int v21; // t1
  unsigned int v22; // r1
  unsigned __int8 v23; // cf
  unsigned int v24; // r6
  int v25; // r7
  int v26; // t1
  int v27; // r0
  int v28; // r3
  int i; // r9
  bool v30; // zf
  unsigned int v31; // r0
  _DWORD *v32; // r5
  int v33; // r0
  unsigned int v34; // lr
  int v35; // r4
  int v36; // t1
  int v37; // r9
  unsigned int v38; // r9
  int v39; // t1
  int v40; // t1
  int v42; // [sp-8h] [bp-8h]

  v13 = *(v9 + 10) << 16;
  v14 = *(v9 + 11) << 16;
  if ( *(v9 + 1) & 8 )
  {
    do
    {
      if ( a3 > 4 )
      {
        v15 = __OFSUB__(a3, v11);
        a3 -= v11;
        if ( ((a3 < 0) ^ v15) | (a3 == 0) )
        {
          v17 = v11;
          v18 = a3 + v11;
          v11 = v18 - 4;
          v16 = v17 - (v18 - 4);
          a3 = v18 & 3;
          if ( !a3 )
            a3 = 4;
        }
        else
        {
          v16 = 0;
        }
        do
        {
          v19 = *v10;
          v20 = v10[396];
          do
          {
            v21 = *a4++;
            v19 = (v13 * v21 & 0xFF00FFFF) + __ROR4__(v19, 8);
            v22 = v14 * v21 & 0xFF00FFFF;
            v20 = v22 + __ROR4__(v20, 8);
            v23 = __CFADD__(v10, 0x40000000);
            v10 += 0x10000000;
          }
          while ( !v23 );
          v10[396] = v20;
          *v10 = v19;
          ++v10;
          v15 = __OFSUB__(v11, 4);
          v11 -= 4;
        }
        while ( !(((v11 < 0) ^ v15) | (v11 == 0)) );
        v11 += v16;
        if ( !v11 )
          break;
      }
      v24 = *v10;
      v25 = v10[396];
      do
      {
        v26 = *a4++;
        v24 = (v13 * v26 & 0xFF00FFFF) + __ROR4__(v24, 8);
        v22 = v14 * v26 & 0xFF00FFFF;
        v25 = v22 + __ROR4__(v25, 8);
        if ( !--a3 )
        {
          a3 = a9;
          if ( !a9 )
            goto LABEL_28;
          a4 = a8;
        }
        v23 = __CFADD__(v10, 0x40000000);
        v10 += 0x10000000;
      }
      while ( !v23 );
      v10[396] = v25;
      *v10 = v24;
      ++v10;
      v15 = __OFSUB__(v11, 4);
      v11 -= 4;
    }
    while ( !(((v11 < 0) ^ v15) | (v11 == 0)) );
  }
  else
  {
    v42 = v9;
    v34 = *(v9 + 28);
    v35 = v12 * *(v9 + 32);
    v27 = *a4;
    v36 = a4[1];
    v28 = (a4 + 1);
    v22 = v36 - v27;
    while ( 2 )
    {
      v24 = *v10;
      v25 = v10[396];
      do
      {
        v37 = v27 + ((v34 * v22) >> 23);
        v24 = (v13 * v37 & 0xFF00FFFF) + __ROR4__(v24, 8);
        v25 = (v14 * v37 & 0xFF00FFFF) + __ROR4__(v25, 8);
        v34 += v35;
        v38 = v34 >> 23;
        if ( v34 >> 23 )
        {
          v34 &= 0xC07FFFFF;
          v15 = __OFSUB__(a3, v38);
          a3 -= v38;
          if ( ((a3 < 0) ^ v15) | (a3 == 0) )
          {
            v27 = a9;
            if ( !a9 )
            {
              v9 = v42;
              LOBYTE(a3) = 0;
LABEL_28:
              *v9 = a3;
              v31 = v10 >> 30;
              v32 = (v10 & 0x3FFFFFFF);
              v33 = 8 * (3 - v31);
              v32[396] = __ROR4__(v25, v33);
              *v32 = __ROR4__(v24, v33);
              return sub_814E008(sub_814E008, v22);
            }
            v28 = a8;
            for ( i = -a3; ; i -= a9 )
            {
              v15 = __OFADD__(a9, a3);
              a3 += a9;
              v30 = a3 == 0;
              if ( !(((a3 < 0) ^ v15) | (a3 == 0)) )
                break;
            }
          }
          else
          {
            i = v38 - 1;
            v30 = i == 0;
            if ( !i )
              v27 += v22;
          }
          if ( !v30 )
          {
            v39 = *(v28 + i);
            v28 += i;
            v27 = v39;
          }
          v40 = *(v28++ + 1);
          v22 = v40 - v27;
        }
        v23 = __CFADD__(v10, 0x40000000);
        v10 += 0x10000000;
      }
      while ( !v23 );
      v10[396] = v25;
      *v10 = v24;
      ++v10;
      v15 = __OFSUB__(v11, 4);
      v11 -= 4;
      if ( !(((v11 < 0) ^ v15) | (v11 == 0)) )
        continue;
      break;
    }
    a4 = (v28 - 1);
    v9 = v42;
    *(v42 + 28) = v34;
  }
  *(v9 + 24) = a3;
  *(v9 + 40) = a4;
  return sub_814E008(sub_814E008, v22);
}


// 0x814e008
int sub_814E008() { // could not decompile
	asm(".func\
	.thumb_func\
	sub_814E008:\
		ldr r0, [sp,#4]\
		sub r0, #1\
		ble loc_814E012\
		add r4, #0x40 \
		b loc_814DD20\
	loc_814E012:\
		ldr r0, [sp,#0x18]\
		ldr r3, byte_814E028 // =0x53 \
		str r3, [r0]\
		add sp, sp, #0x1c\
		pop {r0-r7}\
		mov r8, r0\
		mov r9, r1\
		mov r10, r2\
		mov r11, r3\
		pop {r3}\
	locret_814E026:\
		bx r3\
	byte_814E028: .byte 0x53, 0x6D, 0x73, 0x68, 0xA4\
	byte_814E02D: .byte 0x46, 0x0, 0x21, 0x0, 0x22, 0x0, 0x23, 0x0, 0x24, 0x1E, 0xC0\
		.byte 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x64, 0x46, 0x70, 0x47, 0x0\
		.byte 0x0\
	.endfunc // sub_814E008"
	);
}

// 0x814e044
_DWORD *__fastcall sub_814E044(_DWORD *result)
{
  int v1; // r3
  int v2; // r1
  int v3; // r2

  v1 = result[11];
  if ( v1 )
  {
    v2 = result[13];
    v3 = result[12];
    if ( v3 )
      *(v3 + 52) = v2;
    else
      *(v1 + 32) = v2;
    if ( v2 )
      *(v2 + 48) = v3;
    result[11] = 0;
  }
  return result;
}


// 0x814e064
int __fastcall sub_814E064(int a1, int a2)
{
  _BYTE *v2; // r5
  _DWORD *v3; // r4
  _DWORD *v4; // r1
  int v6; // [sp+8h] [bp-4h]

  v2 = a2;
  v3 = *(a2 + 32);
  if ( v3 )
  {
    do
    {
      if ( *v3 & 0xC7 )
        *v3 |= 0x40u;
      sub_814E044(v3);
      v4 = v3[13];
      if ( v4 == v3 )
      {
        v4 = 0;
        v3[13] = 0;
      }
      v3 = v4;
    }
    while ( v4 );
  }
  *v2 = 0;
  return v6;
}


// 0x814e09c
int __fastcall sub_814E09C(int a1)
{
  int v1; // r1
  void **v2; // r2
  void *v3; // r3
  _DWORD *v4; // r0
  int (__fastcall *v5)(int); // r12
  int v6; // r3
  int v7; // r2
  int v8; // r1
  unsigned __int8 v9; // vf

  v1 = 36;
  v2 = &off_81C0418;
  do
  {
    v3 = *v2;
    v4 = sub_814E0B6(a1, v1);
    *v4 = v6;
    a1 = (v4 + 1);
    v2 = (v7 + 4);
    v9 = __OFSUB__(v8, 1);
    v1 = v8 - 1;
  }
  while ( !(((v1 < 0) ^ v9) | (v1 == 0)) );
  return v5(a1);
}


// 0x814e0b4
int __fastcall sub_814E0B4(int a1, int a2, unsigned __int8 *a3)
{
  int v3; // r3

  v3 = *a3;
  return sub_814E0B6(a1, a2);
}


// 0x814e0b6
void __spoils<R2> sub_814E0B6()
{
  ;
}


// 0x814e0d0
void __fastcall sub_814E0D0(int a1, int a2)
{
  unsigned __int8 *v2; // r2
  int v3; // r3

  v2 = *(a2 + 64);
  *(a2 + 64) = v2 + 1;
  v3 = *v2;
  sub_814E0B6();
}


// 0x814e0dc
int __fastcall sub_814E0DC(int a1, int a2)
{
  int v2; // r0
  int v3; // r3
  int v4; // r1
  int v6; // [sp+0h] [bp-4h]

  v2 = sub_814E0B4(((((*(*(a2 + 64) + 3) << 8) | *(*(a2 + 64) + 2)) << 8) | *(*(a2 + 64) + 1)) << 8, a2, *(a2 + 64));
  *(v4 + 64) = v2 | v3;
  return v6;
}


// 0x814e0fc
int __fastcall sub_814E0FC(int a1, int a2)
{
  unsigned int v2; // r2

  v2 = *(a2 + 2);
  if ( v2 >= 3 )
    return sub_814E064(a1, a2);
  *(a2 + 4 * v2 + 68) = *(a2 + 64) + 4;
  ++*(a2 + 2);
  return sub_814E0DC(a1, a2);
}


// 0x814e118
void __fastcall sub_814E118(int a1, int a2)
{
  int v2; // r2

  if ( *(a2 + 2) )
  {
    v2 = *(a2 + 2) - 1;
    *(a2 + 2) = v2;
    *(a2 + 64) = *(a2 + 4 * v2 + 68);
  }
}


// 0x814e12c
int __fastcall sub_814E12C(int a1, int a2)
{
  _BYTE *v2; // r2
  int v3; // r1
  int v4; // r2
  unsigned int v5; // r3
  unsigned int v6; // r12
  int v8; // [sp+0h] [bp-4h]

  v2 = *(a2 + 64);
  if ( !*v2 )
  {
    *(a2 + 64) = v2 + 1;
    JUMPOUT(&loc_814E0DE);
  }
  ++*(a2 + 3);
  sub_814E0D0(a1, a2);
  if ( v6 < v5 )
    JUMPOUT(&loc_814E0DE);
  *(v3 + 3) = 0;
  *(v3 + 64) = v4 + 5;
  return v8;
}


// 0x814e15c
int __fastcall sub_814E15C(int a1, int a2)
{
  int v2; // r1
  char v3; // r3
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  *(v2 + 29) = v3;
  return v4();
}


// 0x814e168
int __fastcall sub_814E168(int a1, int a2)
{
  int v2; // r3
  _WORD *v3; // r0
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  v2 *= 2;
  v3[14] = v2;
  v3[16] = v2 * v3[15] >> 8;
  return v4();
}


// 0x814e17c
int __fastcall sub_814E17C(int a1, int a2)
{
  _BYTE *v2; // r1
  char v3; // r3
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  v2[10] = v3;
  *v2 |= 0xCu;
  return v4();
}


// 0x814e190
int __fastcall sub_814E190(int a1, _DWORD *a2)
{
  int (*v2)(void); // lr
  unsigned __int8 *v3; // r2
  int v4; // r3
  int v5; // r3
  int v6; // r2
  int v7; // r3
  int v8; // r2
  int v9; // r3

  v3 = a2[16];
  v4 = *v3;
  a2[16] = v3 + 1;
  v5 = *(12 * v4 + *(a1 + 48));
  sub_814E0B6();
  a2[9] = v5;
  v7 = *(v6 + 4);
  sub_814E0B6();
  a2[10] = v7;
  v9 = *(v8 + 8);
  sub_814E0B6();
  a2[11] = v9;
  return v2();
}


// 0x814e1c0
int __fastcall sub_814E1C0(int a1, int a2)
{
  _BYTE *v2; // r1
  char v3; // r3
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  v2[18] = v3;
  *v2 |= 3u;
  return v4();
}


// 0x814e1d4
int __fastcall sub_814E1D4(int a1, int a2)
{
  char v2; // r3
  _BYTE *v3; // r1
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  v3[20] = v2 - 64;
  *v3 |= 3u;
  return v4();
}


// 0x814e1e8
int __fastcall sub_814E1E8(int a1, int a2)
{
  char v2; // r3
  _BYTE *v3; // r1
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  v3[14] = v2 - 64;
  *v3 |= 0xCu;
  return v4();
}


// 0x814e1fc
int __fastcall sub_814E1FC(int a1, int a2)
{
  _BYTE *v2; // r1
  char v3; // r3
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  v2[15] = v3;
  *v2 |= 0xCu;
  return v4();
}


// 0x814e210
int __fastcall sub_814E210(int a1, int a2)
{
  int v2; // r1
  char v3; // r3
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  *(v2 + 27) = v3;
  return v4();
}


// 0x814e21c
int __fastcall sub_814E21C(int a1, int a2)
{
  _BYTE *v2; // r1
  int v3; // r3
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  if ( v2[24] != v3 )
  {
    v2[24] = v3;
    *v2 |= 0xFu;
  }
  return v4();
}


// 0x814e234
int __fastcall sub_814E234(int a1, int a2)
{
  char v2; // r3
  _BYTE *v3; // r1
  int (*v4)(void); // r12

  sub_814E0D0(a1, a2);
  v3[12] = v2 - 64;
  *v3 |= 0xCu;
  return v4();
}


// 0x814e248
void __fastcall sub_814E248(int a1, int a2)
{
  int v2; // r3

  v2 = **(a2 + 64);
  JUMPOUT(&loc_814E0D2);
}


// 0x814e260
_DWORD *__fastcall sub_814E260(_DWORD *result, int a2)
{
  int v2; // r8
  int v3; // r9
  int v4; // r10
  _DWORD *v5; // r7
  _DWORD *v6; // r8
  unsigned int i; // r0
  signed int v8; // r10
  int v9; // r11
  char *v10; // r4
  char v11; // r1
  int v12; // r0
  char *v13; // r1
  unsigned __int8 *v14; // r2
  unsigned int v15; // r1
  int v16; // r3
  int v17; // r3
  int v18; // r0
  int v19; // r2
  int v20; // r2
  char v21; // r1
  signed int v22; // r3
  int v23; // r4
  unsigned __int8 v24; // vf
  int v25; // r6
  int v26; // r5
  int v27; // r2
  int v28; // r5
  int v29; // r9
  int v30; // r4
  int v31; // r6
  int v32; // r2
  int v33; // r3
  int v34; // r1
  int v35; // [sp-24h] [bp-24h]
  int v36; // [sp-20h] [bp-20h]
  int v37; // [sp-1Ch] [bp-1Ch]

  if ( result[13] == 1752395091 )
  {
    result[13] = 1752395092;
    if ( result[14] )
      return sub_814E4CC(result[15], a2, 1752395091);
    v35 = v2;
    v36 = v3;
    v37 = v4;
    v5 = result;
    if ( result[1] >= 0 )
    {
      v6 = *byte_3007FF0;
      sub_814F228(result);
      if ( v5[1] >= 0 )
      {
        for ( i = *(v5 + 17) + *(v5 + 16); ; i = *(v5 + 17) - 150 )
        {
          *(v5 + 17) = i;
          if ( i < 0x96 )
            break;
          v25 = *(v5 + 8);
          v26 = v5[11];
          v22 = 1;
          v23 = 0;
          while ( 1 )
          {
            if ( *v26 & 0x80 )
            {
              v8 = v22;
              v9 = v23 | v22;
              v10 = *(v26 + 32);
              if ( v10 )
              {
                do
                {
                  v11 = *v10;
                  if ( *v10 & 0xC7 )
                  {
                    if ( v10[16] )
                    {
                      v12 = v10[16] - 1;
                      v10[16] = v12;
                      if ( !v12 )
                        *v10 = v11 | 0x40;
                    }
                  }
                  else
                  {
                    sub_814ECA0(v10);
                  }
                  v13 = *(v10 + 13);
                  if ( v13 == v10 )
                  {
                    v13 = 0;
                    *(v10 + 13) = 0;
                  }
                  v10 = v13;
                }
                while ( v13 );
              }
              if ( *v26 & 0x40 )
              {
                sub_814ECB4(v26);
                *v26 = -128;
                *(v26 + 15) = 2;
                *(v26 + 19) = 64;
                *(v26 + 25) = 22;
                *(v26 + 36) = 1;
              }
              while ( !*(v26 + 1) )
              {
                v14 = *(v26 + 64);
                v15 = *v14;
                if ( v15 >= 0x80 )
                {
                  *(v26 + 64) = ++v14;
                  if ( v15 >= 0xBD )
                    *(v26 + 7) = v15;
                }
                else
                {
                  v15 = *(v26 + 7);
                }
                if ( v15 >= 0xCF )
                {
                  v16 = v6[14];
                  return sub_814E4CC(v15 - 207, v5, v26);
                }
                if ( v15 > 0xB0 )
                {
                  *(v5 + 10) = v15 + 79;
                  v17 = *(v6[13] + 4 * (v15 - 177));
                  return sub_814E4CC(v5, v26, v14);
                }
                *(v26 + 1) = byte_81C068C[v15 - 128];
              }
              --*(v26 + 1);
              if ( *(v26 + 25) && *(v26 + 23) )
              {
                if ( *(v26 + 28) )
                {
                  --*(v26 + 28);
                }
                else
                {
                  v18 = *(v26 + 26) + *(v26 + 25);
                  *(v26 + 26) = v18;
                  if ( (v18 - 64) & 0x80 )
                    v19 = v18;
                  else
                    v19 = 128 - v18;
                  v20 = *(v26 + 23) * v19 >> 6;
                  if ( (*(v26 + 22) ^ v20) << 24 )
                  {
                    *(v26 + 22) = v20;
                    if ( *(v26 + 24) )
                      v21 = 3;
                    else
                      v21 = 12;
                    *v26 |= v21;
                  }
                }
              }
              v22 = v8;
              v23 = v9;
            }
            v24 = __OFSUB__(v25--, 1);
            if ( ((v25 < 0) ^ v24) | (v25 == 0) )
              break;
            v26 += 80;
            v22 *= 2;
          }
          ++v5[3];
          if ( !v23 )
          {
            v5[1] = 2147483648;
            goto LABEL_71;
          }
          v5[1] = v23;
        }
        v27 = *(v5 + 8);
        v28 = v5[11];
        do
        {
          if ( *v28 & 0x80 && *v28 & 0xF )
          {
            v29 = v27;
            sub_814F2F0(v5, v28);
            v30 = *(v28 + 32);
            if ( v30 )
            {
              do
              {
                if ( *v30 & 0xC7 )
                {
                  v31 = *(v30 + 1) & 7;
                  if ( *v28 & 3 )
                  {
                    sub_814E528();
                    if ( v31 )
                      *(v30 + 29) |= 1u;
                  }
                  if ( *v28 & 0xC )
                  {
                    v32 = *(v30 + 8) + *(v28 + 8);
                    if ( v32 < 0 )
                      v32 = 0;
                    if ( v31 )
                    {
                      v33 = v6[12];
                      return sub_814E4CC(v31, v32, *(v28 + 9));
                    }
                    *(v30 + 32) = sub_814E7F4(*(v30 + 36), v32, *(v28 + 9));
                  }
                }
                else
                {
                  sub_814ECA0(v30);
                }
                v34 = *(v30 + 52);
                if ( v34 == v30 )
                {
                  v34 = 0;
                  *(v30 + 52) = 0;
                }
                v30 = v34;
              }
              while ( v34 );
            }
            *v28 &= 0xF0u;
            v27 = v29;
          }
          v24 = __OFSUB__(v27--, 1);
          if ( ((v27 < 0) ^ v24) | (v27 == 0) )
            break;
          v24 = __OFADD__(v28, 80);
          v28 += 80;
        }
        while ( !(((v28 < 0) ^ v24) | (v28 == 0)) );
      }
    }
LABEL_71:
    v5[13] = 1752395091;
    result = sub_814E4CC(v35, v36, v37);
  }
  return result;
}


// 0x814e4cc
int __fastcall sub_814E4CC(int a1, int a2, int a3, int (__fastcall *a4)(int, int, int))
{
  return a4(a1, a2, a3);
}


// 0x814e4dc
int __fastcall sub_814E4DC(int a1, unsigned __int8 *a2, int a3)
{
  unsigned __int8 *v3; // r5
  int v4; // r1
  int v5; // r4
  int v7; // r0
  int v8; // [sp+Ch] [bp-4h]

  v3 = a2;
  v4 = *a2;
  if ( v4 & 0x80 )
  {
    v5 = *(v3 + 8);
    if ( v5 )
    {
      do
      {
        if ( *v5 )
        {
          if ( *(v5 + 1) & 7 )
            return sub_814E4CC(*(v5 + 1) & 7, v4, a3, *(*byte_3007FF0 + 44));
          *v5 = 0;
        }
        *(v5 + 44) = 0;
        v7 = *(v5 + 52);
        if ( v7 == v5 )
        {
          v7 = 0;
          *(v5 + 52) = 0;
        }
        v5 = v7;
      }
      while ( v7 );
    }
    *(v3 + 8) = v5;
  }
  return v8;
}


// 0x814e528
unsigned int sub_814E528()
{
  _BYTE *v0; // r4
  int v1; // r5
  int v2; // r1
  int v3; // r2
  unsigned int v4; // r0
  unsigned int result; // r0

  v2 = v0[18];
  v3 = v0[20];
  v4 = *(v1 + 16) * (v3 + 128) * v2 >> 14;
  if ( v4 > 0xFF )
    LOBYTE(v4) = -1;
  v0[2] = v4;
  result = *(v1 + 17) * (127 - v3) * v2 >> 14;
  if ( result > 0xFF )
    result = 255;
  v0[3] = result;
  return result;
}


// 0x814e558
int __fastcall sub_814E558(int a1, int a2, unsigned int a3)
{
  unsigned int v3; // r5
  unsigned __int8 *v4; // r3
  unsigned int v5; // r0
  unsigned __int8 *v6; // r3
  unsigned int v7; // r0
  unsigned int v8; // r0
  char v9; // r2
  int v10; // r3
  int v11; // r0
  int v12; // r1
  int v13; // r0
  int v14; // r9
  int v15; // r6
  int v16; // r1
  unsigned int v17; // r0
  int v18; // r4
  int v19; // r4
  unsigned int v20; // r1
  unsigned int v21; // r6
  unsigned int v22; // r7
  signed int v23; // r2
  int v24; // r8
  int v25; // r3
  unsigned int v26; // r0
  unsigned int v27; // r0
  unsigned __int8 v28; // vf
  int v29; // r3
  int v30; // r0
  int v31; // r7
  int v32; // r3
  char v33; // r1
  int v35; // [sp+0h] [bp-3Ch]
  int v36; // [sp+4h] [bp-38h]
  char v37; // [sp+8h] [bp-34h]
  int v38; // [sp+Ch] [bp-30h]
  char v39; // [sp+10h] [bp-2Ch]
  int v40; // [sp+14h] [bp-28h]
  int v41; // [sp+38h] [bp-4h]

  v35 = a2;
  v3 = a3;
  v36 = *byte_3007FF0;
  *(a3 + 4) = byte_81C068C[a1];
  v4 = *(a3 + 64);
  v5 = *v4;
  if ( v5 < 0x80 )
  {
    *(a3 + 5) = v5;
    v6 = v4 + 1;
    v7 = *v6;
    if ( v7 < 0x80 )
    {
      *(a3 + 6) = v7;
      v8 = *++v6;
      if ( v8 < 0x80 )
      {
        *(a3 + 4) += v8;
        ++v6;
      }
    }
    *(a3 + 64) = v6;
  }
  LOBYTE(v40) = 0;
  v9 = *(a3 + 36);
  if ( v9 & 0xC0 )
  {
    v10 = *(v3 + 5);
    if ( v9 & 0x40 )
      v11 = *(*(v3 + 44) + v10);
    else
      v11 = *(v3 + 5);
    v12 = 12 * v11;
    v13 = *(v3 + 40);
    v14 = v12 + v13;
    v15 = v12 + v13;
    if ( *(v12 + v13) & 0xC0 )
      return v41;
    if ( v9 & 0x80 )
    {
      v16 = *(v15 + 3);
      if ( v16 & 0x80 )
        v40 = 2 * (v16 - 192);
      LOBYTE(v10) = *(v15 + 1);
    }
  }
  else
  {
    v14 = v3 + 36;
    LOBYTE(v10) = *(v3 + 5);
  }
  v37 = v10;
  v17 = *(v3 + 29) + *(v35 + 9);
  if ( v17 > 0xFF )
    v17 = 255;
  v39 = v17;
  v38 = *v14 & 7;
  if ( !(*v14 & 7) )
  {
    v21 = v17;
    v22 = v3;
    v23 = 0;
    v24 = 0;
    v25 = *(v36 + 6);
    v19 = v36 + 80;
    while ( 1 )
    {
      if ( !(*v19 & 0xC7) )
        goto LABEL_42;
      if ( *v19 & 0x40 )
      {
        if ( !v23 )
        {
          v23 = 1;
          v21 = *(v19 + 19);
          v22 = *(v19 + 44);
LABEL_38:
          v24 = v19;
          goto LABEL_39;
        }
      }
      else if ( v23 )
      {
        goto LABEL_39;
      }
      v26 = *(v19 + 19);
      if ( v26 < v21 )
      {
        v21 = *(v19 + 19);
        v22 = *(v19 + 44);
        goto LABEL_38;
      }
      if ( v26 <= v21 )
      {
        v27 = *(v19 + 44);
        if ( v27 > v22 )
        {
          v22 = *(v19 + 44);
          goto LABEL_38;
        }
        if ( v27 >= v22 )
          goto LABEL_38;
      }
LABEL_39:
      v19 += 64;
      v28 = __OFSUB__(v25--, 1);
      if ( ((v25 < 0) ^ v28) | (v25 == 0) )
      {
        v19 = v24;
        if ( !v24 )
          return v41;
        goto LABEL_42;
      }
    }
  }
  v18 = *(v36 + 28);
  if ( !v18 )
    return v41;
  v19 = *(v36 + 28) + (((*v14 & 7) - 1) << 6);
  if ( *v19 & 0xC7 )
  {
    if ( !(*v19 & 0x40) )
    {
      v20 = *(v19 + 19);
      if ( v20 >= v17 && (v20 != v17 || *(v19 + 44) < v3) )
        return v41;
    }
  }
LABEL_42:
  sub_814ECA0(v19);
  *(v19 + 48) = 0;
  v29 = *(v3 + 32);
  *(v19 + 52) = v29;
  if ( v29 )
    *(v29 + 48) = v19;
  *(v3 + 32) = v19;
  *(v19 + 44) = v3;
  v30 = *(v3 + 27);
  *(v3 + 28) = v30;
  if ( v30 )
    sub_814E7A4();
  sub_814F2F0(v35, v3);
  *(v19 + 16) = *(v3 + 4);
  *(v19 + 19) = v39;
  *(v19 + 8) = v37;
  *(v19 + 20) = v40;
  *(v19 + 1) = *v14;
  v31 = *(v14 + 4);
  *(v19 + 36) = v31;
  *(v19 + 4) = *(v14 + 8);
  *(v19 + 12) = *(v3 + 30);
  sub_814E528();
  v32 = *(v19 + 8) + *(v3 + 8);
  if ( v32 < 0 )
    v32 = 0;
  if ( !v38 )
  {
    *(v19 + 32) = sub_814E7F4(v31, v32, *(v3 + 9));
    *v19 = -128;
    *v3 &= 0xF0u;
    return v41;
  }
  *(v19 + 30) = *(v14 + 2);
  v33 = *(v14 + 3);
  if ( *(v14 + 3) & 0x80 || !(*(v14 + 3) & 0x70) )
    v33 = 8;
  *(v19 + 31) = v33;
  return sub_814E4CC(v38, v32, *(v3 + 9), *(v36 + 48));
}


// 0x814e758
signed int __fastcall sub_814E758(int a1, int a2)
{
  unsigned __int8 *v2; // r2
  unsigned int v3; // r3
  int v4; // r1
  signed int result; // r0
  int v6; // r2

  v2 = *(a2 + 64);
  v3 = *v2;
  if ( v3 >= 0x80 )
  {
    v3 = *(a2 + 5);
  }
  else
  {
    *(a2 + 5) = v3;
    *(a2 + 64) = v2 + 1;
  }
  v4 = *(a2 + 32);
  if ( v4 )
  {
    while ( 1 )
    {
      if ( *v4 & 0x83 )
      {
        if ( !(*v4 & 0x40) )
        {
          result = *(v4 + 17);
          if ( result == v3 )
            break;
        }
      }
      v6 = *(v4 + 52);
      if ( v6 == v4 )
      {
        v6 = 0;
        *(v4 + 52) = 0;
      }
      v4 = v6;
      if ( !v6 )
        return result;
    }
    result = 64;
    *v4 |= 0x40u;
  }
  return result;
}


// 0x814e7a4
void __fastcall sub_814E7A4(int a1, _BYTE *a2)
{
  char v2; // r2

  a2[22] = 0;
  a2[26] = 0;
  if ( a2[24] )
    v2 = 3;
  else
    v2 = 12;
  *a2 |= v2;
}


// 0x814e7c0
void __fastcall sub_814E7C0(int a1, int a2)
{
  unsigned __int8 *v2; // r2
  int v3; // r3

  v2 = *(a2 + 64);
  *(a2 + 64) = v2 + 1;
  v3 = *v2;
}


// 0x814e7cc
int __fastcall sub_814E7CC(int a1, int a2)
{
  int v2; // r0
  _BYTE *v3; // r1
  int (*v4)(void); // r12
  int v5; // r3

  sub_814E7C0(a1, a2);
  v3[25] = v5;
  if ( !v5 )
    sub_814E7A4(v2, v3);
  return v4();
}


// 0x814e7e0
int __fastcall sub_814E7E0(int a1, int a2)
{
  int v2; // r0
  _BYTE *v3; // r1
  int (*v4)(void); // r12
  int v5; // r3

  sub_814E7C0(a1, a2);
  v3[23] = v5;
  if ( !v5 )
    sub_814E7A4(v2, v3);
  return v4();
}


// 0x814e7f4
int __fastcall sub_814E7F4(int a1, unsigned __int8 a2, int a3)
{
  signed int v3; // r6
  signed int v4; // r7
  int v5; // r5
  int v6; // r4
  int v7; // r0

  v3 = a2;
  v4 = a3 << 24;
  if ( a2 > 0xB2u )
  {
    v3 = 178;
    v4 = -16777216;
  }
  v5 = *&byte_81C055C[4 * (byte_81C04A8[v3] & 0xF)] >> (byte_81C04A8[v3] >> 4);
  v6 = *(a1 + 4);
  v7 = (*byte_814DBF4)((*&byte_81C055C[4 * (byte_81C04A8[v3 + 1] & 0xF)] >> (byte_81C04A8[v3 + 1] >> 4)) - v5, v4);
  return (*byte_814DBF4)(v6, v5 + v7);
}


// 0x814e85c
int __fastcall sub_814E85C(int a1)
{
  int v2; // [sp+0h] [bp-4h]

  if ( *(a1 + 52) == 1752395091 )
    *(a1 + 4) &= 0x7FFFFFFFu;
  return v2;
}


// 0x814e87c
int __fastcall sub_814E87C(int a1, __int16 a2)
{
  int v3; // [sp+0h] [bp-4h]

  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 38) = a2;
    *(a1 + 36) = a2;
    *(a1 + 40) = 256;
  }
  return v3;
}


// 0x814e8a0
int sub_814E8A0()
{
  char (**v0)[64]; // r5
  signed int v1; // r6
  char (*v2)[64]; // r4
  int v4; // [sp+Ch] [bp-4h]

  SWI_CpuSet();
  sub_814ECC8(byte_30045C0);
  sub_814EB84(byte_3005600);
  sub_814EE2C(9696256);
  v0 = &off_8158278;
  v1 = 32;
  do
  {
    v2 = *v0;
    sub_814F08C(*v0, v0[1], *(v0 + 8));
    (*v2)[11] = *(v0 + 5);
    *&(*v2)[24] = byte_2010B90;
    v0 += 3;
    --v1;
  }
  while ( v1 );
  return v4;
}


// 0x814e918
int sub_814E918()
{
  int v1; // [sp+0h] [bp-4h]

  sub_814DC04();
  return v1;
}


// 0x814e924
int __fastcall m4a_SongNumStart(int a1)
{
  int v2; // [sp+0h] [bp-4h]

  sound_814F104(
    *(&off_8158278 + 3 * *(&sound_MusicTable[1] + (8 * a1 & 0x7FFFF))),
    *(sound_MusicTable + (8 * a1 & 0x7FFFF)));
  return v2;
}


// 0x814e950
int __fastcall sub_814E950(int a1)
{
  char *v1; // r0
  int v2; // r1
  int v4; // [sp+0h] [bp-4h]

  v1 = sound_MusicTable + (8 * a1 & 0x7FFFF);
  v2 = *(&off_8158278 + 3 * *(v1 + 2));
  if ( *v2 == *v1 )
  {
    if ( !*(v2 + 4) || *(v2 + 4) < 0 )
      sound_814F104(v2, *v2);
  }
  else
  {
    sound_814F104(*(&off_8158278 + 3 * *(v1 + 2)), *v1);
  }
  return v4;
}


// 0x814e99c
int __fastcall sub_814E99C(int a1)
{
  char *v1; // r0
  _DWORD *v2; // r1
  int v4; // [sp+0h] [bp-4h]

  v1 = sound_MusicTable + (8 * a1 & 0x7FFFF);
  v2 = *(&off_8158278 + 3 * *(v1 + 2));
  if ( *v2 == *v1 )
  {
    if ( *(v2 + 2) )
    {
      if ( v2[1] < 0 )
        sub_814E85C(v2);
    }
    else
    {
      sound_814F104(v2, *v2);
    }
  }
  else
  {
    sound_814F104(*(&off_8158278 + 3 * *(v1 + 2)), *v1);
  }
  return v4;
}


// 0x814e9f0
int __fastcall sub_814E9F0(int a1)
{
  char *v1; // r0
  _DWORD *v2; // r2
  int v4; // [sp+0h] [bp-4h]

  v1 = sound_MusicTable + (8 * a1 & 0x7FFFF);
  v2 = *(&off_8158278 + 3 * *(v1 + 2));
  if ( *v2 == *v1 )
    sub_814F1E8(v2);
  return v4;
}


// 0x814ea24
int __fastcall sub_814EA24(int a1)
{
  char *v1; // r0
  _DWORD *v2; // r2
  int v4; // [sp+0h] [bp-4h]

  v1 = sound_MusicTable + (8 * a1 & 0x7FFFF);
  v2 = *(&off_8158278 + 3 * *(v1 + 2));
  if ( *v2 == *v1 )
    sub_814E85C(v2);
  return v4;
}


// 0x814ea58
int sub_814EA58()
{
  char (**v0)[64]; // r5
  signed int v1; // r4
  int v3; // [sp+8h] [bp-4h]

  v0 = &off_8158278;
  v1 = 32;
  do
  {
    sub_814F1E8(*v0);
    v0 += 3;
    --v1;
  }
  while ( v1 );
  return v3;
}


// 0x814ea84
int __fastcall sub_814EA84(int a1)
{
  int v2; // [sp+0h] [bp-4h]

  sub_814E85C(a1);
  return v2;
}


// 0x814ea90
int sub_814EA90()
{
  int *v0; // r5
  signed int v1; // r4
  int v3; // [sp+8h] [bp-4h]

  v0 = &off_8158278;
  v1 = 32;
  do
  {
    sub_814E85C(*v0);
    v0 += 3;
    --v1;
  }
  while ( v1 );
  return v3;
}


// 0x814eabc
int __fastcall sub_814EABC(int a1, __int16 a2)
{
  int v3; // [sp+0h] [bp-4h]

  sub_814E87C(a1, a2);
  return v3;
}


// 0x814eacc
int __fastcall sub_814EACC(int a1, __int16 a2)
{
  int v3; // [sp+0h] [bp-4h]

  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 38) = a2;
    *(a1 + 36) = a2;
    *(a1 + 40) = &byte_101;
  }
  return v3;
}


// 0x814eaf0
int __fastcall sub_814EAF0(int a1, __int16 a2)
{
  int v3; // [sp+0h] [bp-4h]

  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 38) = a2;
    *(a1 + 36) = a2;
    *(a1 + 40) = 2;
    *(a1 + 4) &= 0x7FFFFFFFu;
  }
  return v3;
}


// 0x814eb1c
int __fastcall sub_814EB1C(int a1)
{
  int v1; // r7
  int v2; // r5
  unsigned __int8 *v3; // r4
  signed int v4; // r2
  int v5; // r1
  signed int v6; // ST00_4
  int v8; // [sp+14h] [bp-4h]

  v1 = a1;
  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 52) = 1752395092;
    v2 = *(a1 + 8);
    v3 = *(a1 + 44);
    if ( v2 > 0 )
    {
      v4 = 128;
      do
      {
        v5 = *v3;
        if ( v4 & v5 && v5 & 0x40 )
        {
          v6 = v4;
          sub_814ECB4(v3);
          v4 = v6;
          *v3 = v6;
          v3[15] = 2;
          v3[19] = 64;
          v3[25] = 22;
          v3[36] = 1;
        }
        --v2;
        v3 += 80;
      }
      while ( v2 > 0 );
    }
    *(v1 + 52) = 1752395091;
  }
  return v8;
}


// 0x814eb84
int __fastcall sub_814EB84(_BYTE *a1)
{
  _BYTE *v1; // r5
  int v2; // r4
  int v3; // r1
  int v5; // [sp+10h] [bp-4h]

  v1 = a1;
  ControlSoundon_off_NR52_ = 143;
  ControlStereo_Volume_Enable_NR50_NR51_ = 0;
  HIBYTE(Channel1Duty_Length_Envelope_NR11_NR12_) = 8;
  HIBYTE(Channel2Duty_Length_Envelope_NR21_NR22_) = 8;
  HIBYTE(Channel4Length_Envelope_NR41_NR42_) = 8;
  HIBYTE(Channel1Frequency_Control_NR13_NR14_) = -128;
  HIBYTE(Channel2Frequency_Control_NR23_NR24_) = -128;
  HIBYTE(Channel4Frequency_Control_NR43_NR44_) = -128;
  LOBYTE(Channel3Stop_WaveRAMselect_NR30_) = 0;
  LOBYTE(ControlStereo_Volume_Enable_NR50_NR51_) = 119;
  v2 = *byte_3007FF0;
  if ( **byte_3007FF0 == 1752395091 )
  {
    **byte_3007FF0 = 1752395092;
    off_3005590 = sub_814FBFC;
    off_30055B4 = sub_814E7CC;
    off_30055BC = sub_814E7E0;
    off_30055E0 = sub_814FD54;
    off_30055E4 = sub_814E758;
    off_30055E8 = sub_814EDC0;
    off_30055EC = sub_814E4DC;
    off_30055F0 = sub_814F228;
    off_30055F4 = sub_814F2F0;
    *(v2 + 28) = a1;
    *(v2 + 40) = sub_814F508;
    *(v2 + 44) = sub_814F44C;
    *(v2 + 48) = sub_814F3A4;
    *(v2 + 12) = 0;
    SWI_CpuSet();
    v1[1] = 1;
    v1[28] = 17;
    v1[65] = 2;
    v1[92] = 34;
    v1[129] = 3;
    v1[156] = 68;
    v3 = (v1 + 192);
    *(v3 + 1) = 4;
    *(v3 + 28) = -120;
    *v2 = 1752395091;
  }
  return v5;
}


// 0x814eca0
int __fastcall sub_814ECA0(int a1)
{
  return sub_814DA64(a1, off_30055F8);
}


// 0x814ecb4
int __fastcall sub_814ECB4(int a1)
{
  return sub_814DA64(a1, off_30055FC);
}


// 0x814ecc8
int __fastcall sub_814ECC8(_DWORD *a1)
{
  _DWORD *v1; // r5
  int v3; // [sp+Ch] [bp-4h]

  v1 = a1;
  *a1 = 0;
  if ( *&DMA1WordCount & 0x2000000 )
    *&DMA1WordCount = -2076180476;
  if ( *&DMA2WordCount & 0x2000000 )
    *&DMA2WordCount = -2076180476;
  DMA1Control = 1024;
  DMA2Control = 1024;
  ControlSoundon_off_NR52_ = 143;
  ControlMixing_DMAControl = -22258;
  HIBYTE(SoundPWMControl) = HIBYTE(SoundPWMControl) & 0x3F | 0x40;
  DMA1SourceAddress = (a1 + 212);
  DMA1DestinationAddress = &ChannelAFIFO_Data0_3;
  DMA2SourceAddress = (a1 + 608);
  DMA2DestinationAddress = &ChannelBFIFO_Data0_3;
  *byte_3007FF0 = a1;
  SWI_CpuSet();
  *(v1 + 6) = 8;
  *(v1 + 7) = 15;
  v1[14] = sub_814E558;
  v1[10] = nullsub_23;
  v1[11] = nullsub_23;
  v1[12] = nullsub_23;
  v1[15] = nullsub_23;
  sub_814E09C(&off_3005570);
  v1[13] = &off_3005570;
  sub_814EDC0(0x40000);
  *v1 = 1752395091;
  return v3;
}


// 0x814edc0
int __fastcall sub_814EDC0(int a1)
{
  int v1; // r4
  int v2; // r5
  unsigned int v3; // r4
  unsigned int v4; // r4
  int v5; // r0
  int v7; // [sp+8h] [bp-4h]

  v1 = a1;
  sub_814EF14();
  v2 = *byte_3007FF0;
  v3 = (v1 & 0xF0000u) >> 16;
  *(*byte_3007FF0 + 8) = v3;
  v4 = *&byte_81C058C[2 * (v3 - 1)];
  *(v2 + 16) = v4;
  *(v2 + 11) = sub_814DA9C(0x630u, v4);
  v5 = sub_814DA9C(597275 * v4 + 5000, 0x2710u);
  *(v2 + 20) = v5;
  *(v2 + 24) = (sub_814DA9C(0x1000000u, v5) + 1) >> 1;
  sub_814EF94();
  return v7;
}


// 0x814ee2c
int __fastcall sub_814EE2C(int a1)
{
  int v1; // r5
  int v2; // r4
  signed int v3; // r3
  _BYTE *v4; // r0
  int v6; // [sp+8h] [bp-4h]

  v1 = a1;
  v2 = *byte_3007FF0;
  if ( **byte_3007FF0 == 1752395091 )
  {
    **byte_3007FF0 = 1752395092;
    if ( a1 )
      *(v2 + 5) = a1 & 0x7F;
    if ( a1 & 0xF00 )
    {
      *(v2 + 6) = BYTE1(v1) & 0xF;
      v3 = 12;
      v4 = (v2 + 80);
      do
      {
        *v4 = 0;
        --v3;
        v4 += 64;
      }
      while ( v3 );
    }
    if ( v1 & 0xF000 )
      *(v2 + 7) = (v1 & 0xF000u) >> 12;
    if ( v1 & 0xB00000 )
      HIBYTE(SoundPWMControl) = HIBYTE(SoundPWMControl) & 0x3F | ((v1 & 0x300000u) >> 14);
    if ( v1 & 0xF0000 )
      sub_814EDC0(v1 & 0xF0000);
    *v2 = 1752395091;
  }
  return v6;
}


// 0x814eec0
int sub_814EEC0()
{
  int v0; // r6
  signed int v1; // r5
  _BYTE *v2; // r4
  int v4; // [sp+10h] [bp-4h]

  v0 = *byte_3007FF0;
  if ( **byte_3007FF0 == 1752395091 )
  {
    **byte_3007FF0 = 1752395092;
    v1 = 12;
    v2 = (v0 + 80);
    do
    {
      *v2 = 0;
      --v1;
      v2 += 64;
    }
    while ( v1 > 0 );
    if ( *(v0 + 28) )
      return sub_814DA64(1, *(v0 + 44));
    *v0 = 1752395091;
  }
  return v4;
}


// 0x814ef14
int sub_814EF14()
{
  int v1; // [sp+4h] [bp-4h]

  if ( (**byte_3007FF0 - 1752395091) <= 1 )
  {
    **byte_3007FF0 += 10;
    Timer0Control[0] = 0;
    if ( *&DMA1WordCount & 0x2000000 )
      *&DMA1WordCount = -2076180476;
    if ( *&DMA2WordCount & 0x2000000 )
      *&DMA2WordCount = -2076180476;
    DMA1Control = 1024;
    DMA2Control = 1024;
    SWI_CpuSet();
  }
  return v1;
}


// 0x814ef94
int sub_814EF94()
{
  _DWORD *v0; // r2
  int v1; // r3
  char v2; // t1
  int v4; // [sp+4h] [bp-4h]

  v0 = *byte_3007FF0;
  v1 = **byte_3007FF0;
  if ( **byte_3007FF0 != 1752395091 )
  {
    DMA1Control = -18944;
    DMA2Control = -18944;
    v2 = *(*byte_3007FF0 + 4);
    *(*byte_3007FF0 + 4) = 0;
    *v0 = v1 - 10;
    while ( VerticalCounter_LY_ == 159 )
      ;
    while ( VerticalCounter_LY_ != 159 )
      ;
    Timer0Counter_Reload[0] = -sub_814DA9C(0x44940u, v0[4]);
    Timer0Control[0] = 128;
  }
  return v4;
}


// 0x814f00c
int sub_814F00C()
{
  int v1; // [sp+0h] [bp-4h]

  if ( (**byte_3007FF0 - 1752395091) <= 1 )
    JUMPOUT(*&word_814F01E);
  return v1;
}


// 0x814f08c
int __fastcall sub_814F08C(int a1, _BYTE *a2, unsigned __int8 a3)
{
  int v3; // r7
  _BYTE *v4; // r6
  int v5; // r4
  _DWORD *v6; // r5
  int v7; // r0
  int v9; // [sp+10h] [bp-4h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  if ( a3 )
  {
    if ( a3 > 0x10u )
      v5 = 16;
    v6 = *byte_3007FF0;
    if ( **byte_3007FF0 == 1752395091 )
    {
      **byte_3007FF0 = 1752395092;
      sub_814ECB4(a1);
      *(v3 + 44) = v4;
      *(v3 + 8) = v5;
      for ( *(v3 + 4) = 2147483648; v5; v4 += 80 )
      {
        *v4 = 0;
        v5 = (v5 - 1) & 0xFF;
      }
      v7 = v6[8];
      if ( v7 )
      {
        *(v3 + 56) = v7;
        *(v3 + 60) = v6[9];
        v6[8] = 0;
      }
      v6[9] = v3;
      v6[8] = sub_814E260;
      *v6 = 1752395091;
      *(v3 + 52) = 1752395091;
    }
  }
  return v9;
}


// 0x814f104
int __fastcall sound_814F104(int a1, unsigned __int8 *a2)
{
  int v2; // r5
  unsigned __int8 *v3; // r7
  unsigned int v4; // r2
  signed int v5; // r6
  int v6; // r4
  int v8; // [sp+14h] [bp-4h]

  v2 = a1;
  v3 = a2;
  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 52) = 1752395092;
    v4 = a2[2];
    if ( *(a1 + 11) && (*a1 && **(a1 + 44) & 0x40 || *(a1 + 4) && *(a1 + 4) >= 0) )
    {
      v4 = a2[2];
      if ( *(a1 + 9) > v4 )
        goto LABEL_16;
    }
    *(a1 + 4) = 0;
    *a1 = a2;
    *(a1 + 48) = *(a2 + 1);
    *(a1 + 9) = v4;
    *(a1 + 12) = 0;
    *(a1 + 28) = 150;
    *(a1 + 32) = 150;
    *(a1 + 30) = 256;
    *(a1 + 34) = 0;
    *(a1 + 36) = 0;
    v5 = 0;
    v6 = *(a1 + 44);
    if ( *a2 > 0 )
    {
      if ( *(a1 + 8) <= 0 )
      {
LABEL_14:
        if ( v3[3] & 0x80 )
          sub_814EE2C(v3[3]);
LABEL_16:
        *(v2 + 52) = 1752395091;
        return v8;
      }
      do
      {
        sub_814E4DC(v2, v6, v4);
        *v6 = -64;
        *(v6 + 32) = 0;
        *(v6 + 64) = *&v3[4 * v5++ + 8];
        v6 += 80;
      }
      while ( v5 < *v3 && v5 < *(v2 + 8) );
    }
    for ( ; v5 < *(v2 + 8); v6 += 80 )
    {
      sub_814E4DC(v2, v6, v4);
      *v6 = 0;
      ++v5;
    }
    goto LABEL_14;
  }
  return v8;
}


// 0x814f1e8
int __fastcall sub_814F1E8(int a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r4
  unsigned __int8 *i; // r5
  int v7; // [sp+Ch] [bp-4h]

  v3 = a1;
  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 52) = 1752395092;
    *(a1 + 4) |= 0x80000000;
    v4 = *(a1 + 8);
    for ( i = *(a1 + 44); v4 > 0; i += 80 )
    {
      sub_814E4DC(v3, i, a3);
      --v4;
    }
    *(v3 + 52) = 1752395091;
  }
  return v7;
}


// 0x814f228
int __fastcall sub_814F228(int a1)
{
  int v1; // r6
  __int16 v2; // r1
  __int16 v3; // r0
  int v4; // r2
  int v5; // r1
  int v6; // r5
  unsigned __int8 *j; // r4
  unsigned int v8; // r0
  int v9; // r5
  char *i; // r4
  char v11; // r1
  int v13; // [sp+10h] [bp-4h]

  v1 = a1;
  v2 = *(a1 + 36);
  if ( !*(a1 + 36) )
    return v13;
  v3 = *(a1 + 38) - 1;
  *(v1 + 38) = v3;
  v4 = 0xFFFF;
  if ( v3 )
    return v13;
  *(v1 + 38) = v2;
  v5 = *(v1 + 40);
  if ( v5 & 2 )
  {
    *(v1 + 40) = v5 + 16;
    if ( ((v5 + 16) & 0xFFFFu) > 0xFF )
    {
      *(v1 + 40) = 256;
      *(v1 + 36) = 0;
    }
    goto LABEL_15;
  }
  *(v1 + 40) = v5 - 16;
  if ( (v5 - 16) << 16 > 0 )
  {
LABEL_15:
    v9 = *(v1 + 8);
    for ( i = *(v1 + 44); v9 > 0; i += 80 )
    {
      v11 = *i;
      if ( *i & 0x80 )
      {
        i[19] = *(v1 + 40) >> 2;
        *i = v11 | 3;
      }
      --v9;
    }
    return v13;
  }
  v6 = *(v1 + 8);
  for ( j = *(v1 + 44); v6 > 0; j += 80 )
  {
    sub_814E4DC(v1, j, v4);
    if ( !(*(v1 + 40) & 1) )
      *j = 0;
    --v6;
  }
  if ( *(v1 + 40) & 1 )
    v8 = *(v1 + 4) | 0x80000000;
  else
    v8 = 2147483648;
  *(v1 + 4) = v8;
  *(v1 + 36) = 0;
  return v13;
}


// 0x814f2f0
int __fastcall sub_814F2F0(int a1, char *a2)
{
  char *v2; // r2
  unsigned int v3; // r3
  int v4; // r4
  int v5; // r1
  char v6; // r3
  int v7; // r1
  int v9; // [sp+4h] [bp-4h]

  v2 = a2;
  if ( *a2 & 1 )
  {
    v3 = a2[18] * a2[19] >> 5;
    v4 = a2[24];
    if ( v4 == 1 )
      v3 = (a2[22] + 128) * v3 >> 7;
    v5 = 2 * a2[20] + a2[21];
    if ( v4 == 2 )
      v5 += v2[22];
    if ( v5 >= -128 )
    {
      if ( v5 > 127 )
        LOWORD(v5) = 127;
    }
    else
    {
      LOWORD(v5) = -128;
    }
    v2[16] = ((v5 + 128) * v3) >> 8;
    v2[17] = ((127 - v5) * v3) >> 8;
  }
  v6 = *v2;
  if ( *v2 & 4 )
  {
    v7 = 4 * (v2[12] + v2[15] * v2[14]) + (v2[10] << 8) + (v2[11] << 8) + v2[13];
    if ( !v2[24] )
      v7 = 4 * (v2[12] + v2[15] * v2[14]) + (v2[10] << 8) + (v2[11] << 8) + v2[13] + 16 * v2[22];
    v2[8] = BYTE1(v7);
    v2[9] = v7;
  }
  *v2 = v6 & 0xFA;
  return v9;
}


// 0x814f3a4
int __fastcall sub_814F3A4(char a1, unsigned __int8 a2, unsigned __int8 a3)
{
  signed int v3; // r12
  unsigned int v4; // r5
  int result; // r0
  unsigned int v6; // r5
  int v7; // r6

  v3 = a3;
  if ( a1 == 4 )
  {
    if ( a2 > 0x14u )
    {
      v4 = (a2 - 21) & 0xFF;
      if ( v4 > 0x3B )
        v4 = 59;
    }
    else
    {
      v4 = 0;
    }
    result = byte_81C0640[v4];
  }
  else
  {
    if ( a2 > 0x23u )
    {
      v6 = (a2 - 36) & 0xFF;
      if ( v6 > 0x82 )
      {
        v6 = 130;
        v3 = 255;
      }
    }
    else
    {
      v3 = 0;
      v6 = 0;
    }
    v7 = *&byte_81C0628[2 * (byte_81C05A4[v6] & 0xF)] >> (byte_81C05A4[v6] >> 4);
    result = v7
           + (v3 * ((*&byte_81C0628[2 * (byte_81C05A4[v6 + 1] & 0xF)] >> (byte_81C05A4[v6 + 1] >> 4)) - v7) >> 8)
           + 2048;
  }
  return result;
}


// 0x814f44c
int __fastcall sub_814F44C(signed int a1)
{
  __int16 *v1; // r1
  _BYTE *v2; // r1
  char v3; // r0
  int v5; // [sp+0h] [bp-4h]

  a1 = a1;
  if ( a1 == 2 )
  {
    v2 = &Channel2Duty_Length_Envelope_NR21_NR22_ + 1;
LABEL_11:
    *v2 = 8;
    v1 = (v2 + 4);
    goto LABEL_12;
  }
  if ( a1 <= 2 )
  {
    if ( a1 == 1 )
    {
      HIBYTE(Channel1Duty_Length_Envelope_NR11_NR12_) = 8;
      v1 = (&Channel1Frequency_Control_NR13_NR14_ + 1);
LABEL_12:
      v3 = -128;
      goto LABEL_13;
    }
    goto LABEL_10;
  }
  if ( a1 != 3 )
  {
LABEL_10:
    v2 = &Channel4Length_Envelope_NR41_NR42_ + 1;
    goto LABEL_11;
  }
  v1 = &Channel3Stop_WaveRAMselect_NR30_;
  v3 = 0;
LABEL_13:
  *v1 = v3;
  return v5;
}


// 0x814f4a0
int __fastcall sub_814F4A0(unsigned __int8 *a1)
{
  unsigned __int8 *v1; // r2
  unsigned int v2; // r3
  unsigned int v3; // r4
  unsigned int v4; // r0
  unsigned int v5; // r0
  unsigned int v6; // r0
  int v8; // [sp+4h] [bp-4h]

  v1 = a1;
  v2 = a1[2] << 24;
  v3 = a1[2];
  v4 = a1[3] << 24;
  if ( v3 >= v4 >> 24 )
  {
    if ( v2 >> 25 >= v4 >> 24 )
    {
      v1[27] = 15;
      goto LABEL_7;
    }
LABEL_6:
    v1[27] = -1;
    v5 = (v1[2] + v1[3]) >> 4;
LABEL_9:
    v1[10] = v5;
    goto LABEL_10;
  }
  if ( v4 >> 25 < v3 )
    goto LABEL_6;
  v1[27] = -16;
LABEL_7:
  v6 = (v1[2] + v1[3]) >> 4;
  v1[10] = v6;
  if ( v6 > 0xF )
  {
    LOBYTE(v5) = 15;
    goto LABEL_9;
  }
LABEL_10:
  v1[25] = (v1[6] * v1[10] + 15) >> 4;
  v1[27] &= v1[28];
  return v8;
}


// 0x814f508
int sub_814F508()
{
  signed int v0; // r6
  int v1; // r4
  int v2; // r10
  int v3; // r9
  __int16 *v4; // r3
  char v5; // r0
  char v6; // r8
  __int16 *v7; // r3
  int *v8; // r2
  char v9; // r0
  char v10; // r1
  unsigned __int8 v11; // r0
  char v12; // r1
  int v13; // r1
  unsigned __int8 v14; // r0
  int v15; // r0
  char v16; // r0
  char v17; // r0
  unsigned __int8 v18; // r0
  char v19; // r1
  int v20; // r0
  signed int v21; // r1
  int v22; // r0
  char v23; // r1
  _BYTE *v24; // r3
  int v26; // [sp+0h] [bp-44h]
  int v27; // [sp+4h] [bp-40h]
  int v28; // [sp+8h] [bp-3Ch]
  __int16 *v29; // [sp+Ch] [bp-38h]
  __int16 *v30; // [sp+10h] [bp-34h]
  __int16 *v31; // [sp+14h] [bp-30h]
  __int16 *v32; // [sp+18h] [bp-2Ch]
  char *v33; // [sp+1Ch] [bp-28h]
  __int16 *v34; // [sp+20h] [bp-24h]
  int v35; // [sp+40h] [bp-4h]

  v28 = *byte_3007FF0;
  if ( *(*byte_3007FF0 + 10) )
    *(v28 + 10) = *(*byte_3007FF0 + 10) - 1;
  else
    *(v28 + 10) = 14;
  v0 = 1;
  v1 = *(v28 + 28);
  v33 = &v26;
  do
  {
    v2 = v0 + 1;
    v3 = v1 + 64;
    if ( !(*v1 & 0xC7) )
      goto LABEL_92;
    if ( v0 == 2 )
    {
      v29 = (&Channel1Sweepregister_NR10_ + 1);
      v4 = &Channel2Duty_Length_Envelope_NR21_NR22_;
      v30 = (&Channel2Duty_Length_Envelope_NR21_NR22_ + 1);
      v31 = &Channel2Frequency_Control_NR23_NR24_;
      v32 = (&Channel2Frequency_Control_NR23_NR24_ + 1);
      v5 = 1;
      goto LABEL_16;
    }
    if ( v0 > 2 )
    {
      if ( v0 == 3 )
      {
        v29 = &Channel3Stop_WaveRAMselect_NR30_;
        v4 = &Channel3Length_Volume_NR31_NR32_;
        v30 = (&Channel3Length_Volume_NR31_NR32_ + 1);
        v31 = &Channel3Frequency_Control_NR33_NR34_;
        v32 = (&Channel3Frequency_Control_NR33_NR34_ + 1);
        v5 = 2;
        goto LABEL_16;
      }
    }
    else if ( v0 == 1 )
    {
      v29 = &Channel1Sweepregister_NR10_;
      v4 = &Channel1Duty_Length_Envelope_NR11_NR12_;
      v30 = (&Channel1Duty_Length_Envelope_NR11_NR12_ + 1);
      v31 = &Channel1Frequency_Control_NR13_NR14_;
      v32 = (&Channel1Frequency_Control_NR13_NR14_ + 1);
      v5 = 0;
      goto LABEL_16;
    }
    v29 = (&Channel3Stop_WaveRAMselect_NR30_ + 1);
    v4 = &Channel4Length_Envelope_NR41_NR42_;
    v30 = (&Channel4Length_Envelope_NR41_NR42_ + 1);
    v31 = &Channel4Frequency_Control_NR43_NR44_;
    v32 = (&Channel4Frequency_Control_NR43_NR44_ + 1);
    v5 = 3;
LABEL_16:
    *v33 = v5;
    v27 = *(v28 + 10);
    v6 = *v30;
    if ( *v1 & 0x80 )
    {
      v2 = v0 + 1;
      v3 = v1 + 64;
      if ( *v1 & 0x40 )
        goto LABEL_40;
      *v1 = 3;
      *(v1 + 29) = 3;
      v34 = v4;
      sub_814F4A0(v1);
      v7 = v34;
      if ( v0 != 2 )
      {
        if ( v0 > 2 )
        {
          if ( v0 == 3 )
          {
            if ( *(v1 + 36) != *(v1 + 40) )
            {
              *v29 = 64;
              v8 = *(v1 + 36);
              Channel3WavePatternRAM_2banks___ = *v8;
              dword_4000094 = v8[1];
              dword_4000098 = v8[2];
              dword_400009C = v8[3];
              *(v1 + 40) = v8;
            }
            *v29 = 0;
            *v7 = *(v1 + 30);
            if ( !*(v1 + 30) )
            {
              *(v1 + 26) = -128;
              goto LABEL_35;
            }
            v9 = -64;
LABEL_34:
            *(v1 + 26) = v9;
LABEL_35:
            v10 = *(v1 + 4);
            *(v1 + 11) = v10;
            v2 = v0 + 1;
            v3 = v1 + 64;
            if ( v10 )
            {
              *(v1 + 9) = 0;
              goto LABEL_70;
            }
            goto LABEL_65;
          }
          goto LABEL_31;
        }
        if ( v0 != 1 )
        {
LABEL_31:
          *v34 = *(v1 + 30);
          *v31 = 8 * *(v1 + 36);
LABEL_32:
          v6 = *(v1 + 4) + 8;
          v9 = *(v1 + 30);
          if ( *(v1 + 30) )
            v9 = 64;
          goto LABEL_34;
        }
        *v29 = *(v1 + 31);
      }
      *v7 = (*(v1 + 36) << 6) + *(v1 + 30);
      goto LABEL_32;
    }
    if ( *v1 & 4 || !((ControlSoundon_off_NR52_ >> *v33) & 1) )
    {
      v11 = *(v1 + 13) - 1;
      *(v1 + 13) = v11;
      v2 = v0 + 1;
      v3 = v1 + 64;
      if ( v11 << 24 > 0 )
        goto LABEL_72;
      goto LABEL_40;
    }
    v2 = v0 + 1;
    v3 = v1 + 64;
    if ( !(*v1 & 0x40) || !(*v1 & 3) )
    {
      while ( *(v1 + 11) )
      {
LABEL_70:
        --*(v1 + 11);
        if ( v27 )
          goto LABEL_72;
        v27 = -1;
      }
      if ( v0 == 3 )
        *(v1 + 29) |= 1u;
      sub_814F4A0(v1);
      v13 = *v1 & 3;
      if ( !(*v1 & 3) )
      {
        v14 = *(v1 + 9) - 1;
        *(v1 + 9) = v14;
        if ( v14 << 24 <= 0 )
          goto LABEL_51;
        v16 = *(v1 + 7);
        goto LABEL_69;
      }
      if ( v13 == 1 )
        goto LABEL_56;
      if ( v13 == 2 )
      {
        v17 = *(v1 + 9) - 1;
        *(v1 + 9) = v17;
        if ( v17 > *(v1 + 25) )
        {
          v16 = *(v1 + 5);
          goto LABEL_69;
        }
        goto LABEL_59;
      }
      v18 = *(v1 + 9) + 1;
      *(v1 + 9) = v18;
      if ( v18 < *(v1 + 10) )
      {
        v16 = *(v1 + 4);
        goto LABEL_69;
      }
LABEL_65:
      --*v1;
      v19 = *(v1 + 5);
      *(v1 + 11) = v19;
      if ( v19 )
      {
        *(v1 + 29) |= 1u;
        *(v1 + 9) = *(v1 + 10);
        if ( v0 != 3 )
          v6 = *(v1 + 5);
        goto LABEL_70;
      }
LABEL_59:
      if ( !*(v1 + 6) )
      {
        *v1 &= 0xFCu;
        goto LABEL_51;
      }
      --*v1;
      *(v1 + 29) |= 1u;
      if ( v0 != 3 )
        v6 = 8;
LABEL_56:
      *(v1 + 9) = *(v1 + 25);
      v16 = 7;
LABEL_69:
      *(v1 + 11) = v16;
      goto LABEL_70;
    }
    *v1 &= 0xFCu;
    v12 = *(v1 + 7);
    *(v1 + 11) = v12;
    if ( v12 )
    {
      *(v1 + 29) |= 1u;
      if ( v0 != 3 )
        v6 = *(v1 + 7);
      goto LABEL_70;
    }
LABEL_51:
    v15 = (*(v1 + 12) * *(v1 + 10) + 255) >> 8;
    *(v1 + 9) = v15;
    if ( v15 << 24 )
    {
      *v1 |= 4u;
      *(v1 + 29) |= 1u;
      if ( v0 != 3 )
        v6 = 8;
LABEL_72:
      if ( !(*(v1 + 29) & 2) )
      {
LABEL_84:
        if ( *(v1 + 29) & 1 )
        {
          HIBYTE(ControlStereo_Volume_Enable_NR50_NR51_) = HIBYTE(ControlStereo_Volume_Enable_NR50_NR51_) & ~*(v1 + 28) | *(v1 + 27);
          if ( v0 == 3 )
          {
            *v30 = byte_81C067C[*(v1 + 9)];
            if ( *(v1 + 26) & 0x80 )
            {
              *v29 = -128;
              *v32 = *(v1 + 26);
              *(v1 + 26) &= 0x7Fu;
            }
          }
          else
          {
            *v30 = 16 * *(v1 + 9) + (v6 & 0xF);
            v24 = v32;
            *v32 = *(v1 + 26) | 0x80;
            if ( v0 == 1 && !(*v29 & 8) )
              *v24 = *(v1 + 26) | 0x80;
          }
        }
        goto LABEL_91;
      }
      if ( v0 <= 3 && *(v1 + 1) & 8 )
      {
        if ( HIBYTE(SoundPWMControl) <= 63 )
        {
          v20 = *(v1 + 32) + 2;
          v21 = 2044;
LABEL_79:
          *(v1 + 32) = v20 & v21;
          goto LABEL_80;
        }
        if ( HIBYTE(SoundPWMControl) <= 127 )
        {
          v20 = *(v1 + 32) + 1;
          v21 = 2046;
          goto LABEL_79;
        }
      }
LABEL_80:
      if ( v0 == 4 )
        v22 = *(v1 + 32) | *v31 & 8;
      else
        v22 = *(v1 + 32);
      *v31 = v22;
      v23 = (*(v1 + 26) & 0xC0) + ((*(v1 + 32) & 0x3F00) >> 8);
      *(v1 + 26) = v23;
      *v32 = v23;
      goto LABEL_84;
    }
LABEL_40:
    sub_814F44C(v0);
    *v1 = 0;
LABEL_91:
    *(v1 + 29) = 0;
LABEL_92:
    v0 = v2;
    v1 = v3;
  }
  while ( v2 <= 4 );
  return v35;
}


// 0x814f988
int __fastcall sub_814F988(int a1, __int16 a2)
{
  int v3; // [sp+0h] [bp-4h]

  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 30) = a2;
    *(a1 + 32) = *(a1 + 30) * *(a1 + 28) >> 8;
  }
  return v3;
}


// 0x814f9ac
int __fastcall sub_814F9AC(int a1, unsigned __int16 a2, int a3)
{
  int v3; // r7
  unsigned int v4; // r6
  int v5; // r2
  char *v6; // r1
  signed int v7; // r5
  unsigned int v8; // r6
  char v9; // r3
  int v11; // [sp+18h] [bp-4h]

  v3 = a2;
  v4 = a3 << 16;
  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 52) = 1752395092;
    v5 = *(a1 + 8);
    v6 = *(a1 + 44);
    v7 = 1;
    if ( v5 > 0 )
    {
      v8 = v4 >> 18;
      do
      {
        if ( v3 & v7 )
        {
          v9 = *v6;
          if ( *v6 & 0x80 )
          {
            v6[19] = v8;
            *v6 = v9 | 3;
          }
        }
        --v5;
        v6 += 80;
        v7 *= 2;
      }
      while ( v5 > 0 );
    }
    *(a1 + 52) = 1752395091;
  }
  return v11;
}


// 0x814fa14
int __fastcall sub_814FA14(int a1, unsigned __int16 a2, unsigned __int16 a3)
{
  int v3; // r12
  int v4; // r6
  int v5; // r2
  char *v6; // r3
  signed int i; // r5
  char v8; // r1
  int v10; // [sp+1Ch] [bp-4h]

  v3 = a2;
  v4 = a3;
  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 52) = 1752395092;
    v5 = *(a1 + 8);
    v6 = *(a1 + 44);
    for ( i = 1; v5 > 0; i *= 2 )
    {
      if ( v3 & i )
      {
        v8 = *v6;
        if ( *v6 & 0x80 )
        {
          v6[11] = (v4 << 16) >> 24;
          v6[13] = v4;
          *v6 = v8 | 0xC;
        }
      }
      --v5;
      v6 += 80;
    }
    *(a1 + 52) = 1752395091;
  }
  return v10;
}


// 0x814fa88
int __fastcall sub_814FA88(int a1, unsigned __int16 a2, char a3)
{
  int v3; // r7
  char v4; // r6
  int v5; // r2
  char *v6; // r1
  signed int i; // r5
  char v8; // r3
  int v10; // [sp+18h] [bp-4h]

  v3 = a2;
  v4 = a3;
  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 52) = 1752395092;
    v5 = *(a1 + 8);
    v6 = *(a1 + 44);
    for ( i = 1; v5 > 0; i *= 2 )
    {
      if ( v3 & i )
      {
        v8 = *v6;
        if ( *v6 & 0x80 )
        {
          v6[21] = v4;
          *v6 = v8 | 3;
        }
      }
      --v5;
      v6 += 80;
    }
    *(a1 + 52) = 1752395091;
  }
  return v10;
}


// 0x814faf0
int __fastcall sub_814FAF0(_BYTE *a1)
{
  _BYTE *v1; // r2
  char v2; // r0
  char v3; // r1
  int v5; // [sp+0h] [bp-4h]

  v1 = a1;
  a1[26] = 0;
  a1[22] = 0;
  if ( a1[24] )
  {
    v2 = *a1;
    v3 = 3;
  }
  else
  {
    v2 = *a1;
    v3 = 12;
  }
  *v1 = v2 | v3;
  return v5;
}


// 0x814fb14
int __fastcall sub_814FB14(int a1, unsigned __int16 a2, unsigned __int8 a3)
{
  int v3; // r6
  int v4; // r10
  int v5; // r8
  int v6; // r5
  _BYTE *v7; // r4
  signed int i; // r7
  int v10; // [sp+1Ch] [bp-4h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 52) = 1752395092;
    v6 = *(a1 + 8);
    v7 = *(a1 + 44);
    for ( i = 1; v6 > 0; i *= 2 )
    {
      if ( v4 & i )
      {
        if ( *v7 & 0x80 )
        {
          v7[23] = v5;
          if ( !v5 )
            sub_814FAF0(v7);
        }
      }
      --v6;
      v7 += 80;
    }
    *(v3 + 52) = 1752395091;
  }
  return v10;
}


// 0x814fb88
int __fastcall sub_814FB88(int a1, unsigned __int16 a2, unsigned __int8 a3)
{
  int v3; // r6
  int v4; // r10
  int v5; // r8
  int v6; // r5
  _BYTE *v7; // r4
  signed int i; // r7
  int v10; // [sp+1Ch] [bp-4h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  if ( *(a1 + 52) == 1752395091 )
  {
    *(a1 + 52) = 1752395092;
    v6 = *(a1 + 8);
    v7 = *(a1 + 44);
    for ( i = 1; v6 > 0; i *= 2 )
    {
      if ( v4 & i )
      {
        if ( *v7 & 0x80 )
        {
          v7[25] = v5;
          if ( !v5 )
            sub_814FAF0(v7);
        }
      }
      --v6;
      v7 += 80;
    }
    *(v3 + 52) = 1752395091;
  }
  return v10;
}


// 0x814fbfc
int __fastcall sub_814FBFC(int a1, int a2)
{
  int v2; // r4
  unsigned __int8 *v3; // r0
  int v4; // r5
  _BYTE *v5; // r2
  unsigned int v6; // r3
  int v8; // [sp+Ch] [bp-4h]

  v2 = a1;
  v3 = *(a2 + 64);
  v4 = *v3;
  *(a2 + 64) = v3 + 1;
  v5 = (*(v2 + 24) + v3[1]);
  *(a2 + 64) = v3 + 2;
  v6 = v3[2];
  *(a2 + 64) = v3 + 3;
  switch ( v4 )
  {
    case 0:
      *v5 = v6;
      return v8;
    case 1:
      *v5 += v6;
      return v8;
    case 2:
      *v5 -= v6;
      return v8;
    case 3:
      *v5 = *(*(v2 + 24) + v6);
      return v8;
    case 4:
      *v5 += *(*(v2 + 24) + v6);
      return v8;
    case 5:
      *v5 -= *(*(v2 + 24) + v6);
      return v8;
    case 6:
      if ( *v5 == v6 )
        goto LABEL_31;
      goto LABEL_32;
    case 7:
      if ( *v5 == v6 )
        goto LABEL_32;
      goto LABEL_31;
    case 8:
      if ( *v5 <= v6 )
        goto LABEL_32;
      goto LABEL_31;
    case 9:
      if ( *v5 < v6 )
        goto LABEL_32;
      goto LABEL_31;
    case 10:
      if ( *v5 > v6 )
        goto LABEL_32;
      goto LABEL_31;
    case 11:
      if ( *v5 >= v6 )
        goto LABEL_32;
      goto LABEL_31;
    case 12:
      if ( *v5 != *(*(v2 + 24) + v6) )
        goto LABEL_32;
      goto LABEL_31;
    case 13:
      if ( *v5 == *(*(v2 + 24) + v6) )
        goto LABEL_32;
      goto LABEL_31;
    case 14:
      if ( *v5 <= *(*(v2 + 24) + v6) )
        goto LABEL_32;
      goto LABEL_31;
    case 15:
      if ( *v5 < *(*(v2 + 24) + v6) )
        goto LABEL_32;
      goto LABEL_31;
    case 16:
      if ( *v5 > *(*(v2 + 24) + v6) )
        goto LABEL_32;
      goto LABEL_31;
    case 17:
      if ( *v5 >= *(*(v2 + 24) + v6) )
LABEL_32:
        *(a2 + 64) += 4;
      else
LABEL_31:
        sub_814DA68(v2, a2, off_3005574);
      break;
    default:
      return v8;
  }
  return v8;
}


// 0x814fd54
int __fastcall sub_814FD54(int a1, int a2)
{
  unsigned __int8 *v2; // r2
  int v3; // r3
  int v5; // [sp+0h] [bp-4h]

  v2 = *(a2 + 64);
  v3 = *v2;
  *(a2 + 64) = v2 + 1;
  sub_814DA68(a1, a2, *(&off_81C06C0 + v3));
  return v5;
}


// 0x814fd74
int __fastcall sub_814FD74(int a1, int a2)
{
  int v3; // [sp+0h] [bp-4h]

  sub_814DA68(a1, a2, off_3005570);
  return v3;
}


// 0x814fd88
int __fastcall sub_814FD88(int a1, int a2)
{
  int v2; // r4
  unsigned __int8 *v3; // r3
  int v5; // [sp+4h] [bp-4h]

  v3 = *(a2 + 64);
  *(a2 + 40) = (((v2 & 0xFFFFFF00 | *v3) & 0xFFFF00FF | (v3[1] << 8)) & 0xFF00FFFF | (v3[2] << 16)) & 0xFFFFFF | (v3[3] << 24);
  *(a2 + 64) = v3 + 4;
  return v5;
}


// 0x814fdd0
int __fastcall sub_814FDD0(int a1, int a2)
{
  int result; // r0

  *(a2 + 36) = **(a2 + 64);
  result = *(a2 + 64) + 1;
  *(a2 + 64) = result;
  return result;
}


// 0x814fde4
int __fastcall sub_814FDE4(int a1, int a2)
{
  int result; // r0

  *(a2 + 44) = **(a2 + 64);
  result = *(a2 + 64) + 1;
  *(a2 + 64) = result;
  return result;
}


// 0x814fdf8
int __fastcall sub_814FDF8(int a1, int a2)
{
  int result; // r0

  *(a2 + 45) = **(a2 + 64);
  result = *(a2 + 64) + 1;
  *(a2 + 64) = result;
  return result;
}


// 0x814fe0c
int __fastcall sub_814FE0C(int a1, int a2)
{
  int result; // r0

  *(a2 + 46) = **(a2 + 64);
  result = *(a2 + 64) + 1;
  *(a2 + 64) = result;
  return result;
}


// 0x814fe20
int __fastcall sub_814FE20(int a1, int a2)
{
  int result; // r0

  *(a2 + 47) = **(a2 + 64);
  result = *(a2 + 64) + 1;
  *(a2 + 64) = result;
  return result;
}


// 0x814fe34
int __fastcall sub_814FE34(int a1, int a2)
{
  _BYTE *v2; // r0
  int result; // r0

  v2 = *(a2 + 64);
  *(a2 + 30) = *v2;
  result = (v2 + 1);
  *(a2 + 64) = result;
  return result;
}


// 0x814fe40
int __fastcall sub_814FE40(int a1, int a2)
{
  _BYTE *v2; // r0
  int result; // r0

  v2 = *(a2 + 64);
  *(a2 + 31) = *v2;
  result = (v2 + 1);
  *(a2 + 64) = result;
  return result;
}


// 0x814fe4c
int __fastcall sub_814FE4C(int a1, int a2)
{
  int result; // r0

  *(a2 + 38) = **(a2 + 64);
  result = *(a2 + 64) + 1;
  *(a2 + 64) = result;
  return result;
}


// 0x814fe60
int __fastcall sub_814FE60(int a1, int a2)
{
  int result; // r0

  *(a2 + 39) = **(a2 + 64);
  result = *(a2 + 64) + 1;
  *(a2 + 64) = result;
  return result;
}


// 0x814fe74
void nullsub_23()
{
  ;
}


