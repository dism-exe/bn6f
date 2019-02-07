// 0x3005cd8
void nullsub_38()
{
  ;
}


// 0x3005cda
int *sub_3005CDA()
{
  int v0; // r0
  int v2; // [sp+0h] [bp-4h]

  v0 = off_3005D20();
  (*(jt_81D620C + v0))();
  return sub_3005CF0(v2);
}


// 0x3005cf0
int *__fastcall sub_3005CF0(int a1)
{
  int *result; // r0

  sub_3005D24(a1);
  result = off_3005D04;
  ++*off_3005D04;
  return result;
}


// 0x3005d24
int __fastcall sub_3005D24(int result)
{
  int v1; // r3
  int *v2; // r0
  char *v3; // r1

  v1 = *off_3005D68[0];
  if ( *off_3005D68[0] )
  {
    v2 = off_3005D6C;
    off_3005D6C[2] &= ~dword_3005D70;
    if ( v1 == 128 )
    {
      result = 0;
      *off_3005D68[0] = 0;
    }
    else
    {
      v3 = off_3005D68[0];
      *v2 = *(off_3005D68[0] + 3);
      v2[1] = *(v3 + 2);
      v2[2] = v3[1] | (*(v3 + 1) << 16);
      result = off_3005D74(*(v3 + 1), *(v3 + 3), *(v3 + 4));
    }
  }
  return result;
}


// 0x3005d78
int sub_3005D78()
{
  int (*v1)(void); // [sp+4h] [bp-4h]

  off_3005D94();
  off_3005D90();
  return v1();
}


// 0x3005d98
void nullsub_24()
{
  ;
}


// 0x3005da0
signed int sub_3005DA0()
{
  __int16 *v0; // r4
  signed int v1; // r0
  void **v2; // r1
  void **v3; // r2
  signed int result; // r0

  sub_3005E18();
  v0 = off_3005E54[0];
  *off_3005E54[0] = 0;
  v1 = 0;
  v2 = off_3005DCC;
  v3 = off_3005DE8;
  do
  {
    *v3 = *v2;
    ++v1;
    ++v2;
    ++v3;
  }
  while ( v1 < 14 );
  *off_3005E58[0] = dword_3005DD0;
  result = 1;
  *v0 = 1;
  return result;
}


// 0x3005dd4
int __fastcall sub_3005DD4(int result, void *a2)
{
  __int16 *v2; // r3
  __int16 v3; // r4

  v2 = off_3005E54[0];
  v3 = *off_3005E54[0];
  *off_3005E54[0] = 0;
  *(off_3005DE8 + result) = a2;
  *v2 = v3;
  return result;
}


// 0x3005dec
int __fastcall sub_3005DEC(int result)
{
  __int16 *v1; // r3
  __int16 v2; // r4

  v1 = off_3005E54[0];
  v2 = *off_3005E54[0];
  *off_3005E54[0] = 0;
  *off_3005E58[0] |= result;
  *v1 = v2;
  return result;
}


// 0x3005e02
int __fastcall sub_3005E02(int result)
{
  __int16 *v1; // r3
  __int16 v2; // r4

  v1 = off_3005E54[0];
  v2 = *off_3005E54[0];
  *off_3005E54[0] = 0;
  *off_3005E58[0] &= ~result;
  *v1 = v2;
  return result;
}


// 0x3005e18
int sub_3005E18()
{
  __int16 *v0; // r3
  __int16 v1; // r4
  int result; // r0

  v0 = off_3005E54[0];
  v1 = *off_3005E54[0];
  *off_3005E54[0] = 0;
  result = 0;
  *off_3005E5C[0] = 0;
  *v0 = v1;
  return result;
}


// 0x3005e2c
int sub_3005E2C()
{
  __int16 *v0; // r3
  __int16 v1; // r4
  __int16 *v2; // ST00_4
  int result; // r0

  v0 = off_3005E54[0];
  v1 = *off_3005E54[0];
  *off_3005E54[0] = 0;
  *off_3005E5C[0] = 1;
  v2 = v0;
  sub_3005DD4(24, off_3005E78);
  result = sub_3005DD4(28, off_3005E7C);
  *v2 = v1;
  return result;
}


// 0x3005e60
void sub_3005E60()
{
  *off_3005E74 = 1;
}


// 0x3005e6a
void sub_3005E6A()
{
  *off_3005E74 = 0;
}


// 0x3005e90
int sub_3005E90() { // could not decompile
	asm(".func\
	.thumb_func\
	sub_3005E90:\
		mov r2, #0x1f\
		mvn r2, r2\
		mov r7, r0\
		orr r7, r1\
		tst r7, r2\
		bne loc_3005EA6\
		lsl r7, r0, #1\
		lsl r2, r1, #6\
		add r2, r2, r7\
		ldrh r7, [r3]\
		strh r7, [r6,r2]\
	loc_3005EA6:\
		add r3, #2\
		add r0, #1\
		cmp r0, r4\
		blt sub_3005E90\
		ldr r0, [sp]\
		add r1, #1\
		cmp r1, r5\
		blt sub_3005E90\
		add sp, sp, #4\
		mov pc, lr\
	.endfunc // sub_3005E90"
	);
}

// 0x3005eba
int __fastcall sub_3005EBA(int result, int a2, int a3, __int16 a4)
{
  int v4; // r4
  int v5; // r5
  int v6; // r10
  int v7; // r6
  int v8; // r4
  int v9; // r5
  int v10; // [sp+0h] [bp-4h]

  v10 = result;
  v7 = *(v6 + 40) + (a3 << 11);
  v8 = v4 + result;
  v9 = v5 + a2;
  while ( 1 )
  {
    if ( !((result | a2) & 0xFFFFFFE0) )
      *(v7 + (a2 << 6) + 2 * result) = a4;
    if ( ++result >= v8 )
    {
      result = v10;
      if ( ++a2 >= v9 )
        break;
    }
  }
  return result;
}


// 0x3005ef0
int __fastcall sub_3005EF0(int result, int a2, int a3)
{
  int v3; // r6
  int v4; // r7
  int v5; // r12
  int (__fastcall *v6)(int, _DWORD, int, int); // r9
  int v7; // r2
  int v8; // r3
  int v9; // r6
  unsigned __int8 v10; // vf

  if ( v3 > 0 )
  {
    v5 = result;
    v6 = *(off_3005F1C + a3);
    v7 = dword_3005F28;
    v8 = dword_3005F2C;
    v9 = v3 - 2;
    do
    {
      result = v6(v5, *(v4 + v9), v7, v8);
      *(v4 + v9) = result;
      v10 = __OFSUB__(v9, 2);
      v9 -= 2;
    }
    while ( !((v9 < 0) ^ v10) );
  }
  return result;
}


// 0x3005f34
unsigned int __fastcall sub_3005F34(int a1, int a2, int a3, unsigned int a4)
{
  int v4; // r8
  unsigned int v5; // r4

  v5 = (((2 * (a1 & a2) + ((a1 ^ a2) & a3)) & a4) << 16 >> 21) + v4;
  return (a1 + a2 - (v5 ^ v4)) | v5 ^ v4;
}


// 0x3005f56
unsigned int __fastcall sub_3005F56(int a1, int a2, int a3, unsigned int a4)
{
  int v4; // r8
  unsigned int v5; // r4

  v5 = ((((2 * (a1 & ~a2) + ((~a2 ^ a1) & a3)) & a4) << 16 >> 21) + v4) ^ v4;
  return (a2 | v5) - (a1 | v5);
}


// 0x3005f78
int __fastcall sub_3005F78(int a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r7
  int (*v5)(void); // r9
  int v6; // r6
  int v7; // r5
  int result; // r0
  unsigned __int8 v9; // vf

  if ( v3 > 0 )
  {
    v5 = *(off_3005FAC + a3);
    v6 = v3 - 2;
    do
    {
      v7 = *(v4 + v6);
      result = v5();
      *(v4 + v6) = result;
      v9 = __OFSUB__(v6, 2);
      v6 -= 2;
    }
    while ( !((v6 < 0) ^ v9) );
  }
  return result;
}


// 0x3006028
void __fastcall sub_3006028(int result)
{
  int v1; // r5
  unsigned int v2; // r5
  char v3; // r1
  int *v4; // r0
  int v5; // r6
  int *v6; // r8
  int v7; // r7
  __int16 v8; // r0
  _DWORD *v9; // r12
  char v10; // zf
  int v11; // r4
  _DWORD *v12; // r12
  __int16 v13; // r1
  _WORD *v14; // r0
  char v15; // r0

  v2 = v1 + 16 * (*(v1 + 2) >> 4);
  v3 = *(v2 + 3) & 0xEF;
  *(v2 + 3) = v3;
  if ( !(v3 & 2) )
  {
    *(v2 + 36) = 0;
    return;
  }
  v4 = (*off_30060E4)[result];
  v5 = *v4;
  v6 = v4;
  v7 = **(v2 + 28) + *(v2 + 24);
  v8 = sub_30061A8();
  if ( v10 )
  {
    *(v2 + 8) = v8;
    *(v2 + 36) = v9;
  }
  else
  {
    if ( *v6 != *(v2 + 8) )
      *(v2 + 36) = 0;
    v11 = *v9 >> 5;
    sub_3006404();
    if ( !v10 )
    {
      *(v2 + 3) |= 0x10u;
      *(v2 + 36) = 0;
      return;
    }
    sub_30061C8();
    *(v2 + 8) = v13;
    *v14 = v11 + v13;
    if ( v12 != *(v2 + 36) )
    {
      *(v2 + 36) = v12;
      off_3006104(v12 + 1, dword_3006100 + 32 * *(v2 + 8), *v12);
    }
  }
  if ( (*(v2 + 21) & 0xF0) < 240 && !(*(v2 + 3) & 0x10) )
  {
    sub_3006108();
    *(v2 + 21) = *(v2 + 21) & 0xF | 16 * v15;
  }
}


// 0x3006108
void sub_3006108()
{
  int v0; // r5
  int v1; // r1
  int v2; // r0
  char (*v3)[512]; // r7
  signed int v4; // r2
  int v5; // r8
  int v6; // r4
  char (*v7)[28]; // r5
  int i; // r1
  signed int v9; // r6
  unsigned __int8 v10; // vf
  int v11; // r0
  int v12; // r3
  signed int v13; // r6

  v1 = 32 * (*(v0 + 4) + *(v0 + 5));
  v2 = *(*(v0 + 28) + 4) + 4 + *(v0 + 24) + v1;
  if ( *(v0 + 6) )
  {
    v3 = off_300619C;
    v4 = 32;
    do
    {
      v4 -= 4;
      *&(*v3)[v4] = *(v2 + v4);
    }
    while ( v4 );
    sub_3005EF0(*(v0 + 6), v1, 4 * (*(v0 + 6) >> 15));
    v2 = v3;
  }
  v5 = v0;
  v6 = *off_30061A0;
  if ( *off_30061A0 < 15 )
  {
    v7 = off_30061A4;
    for ( i = 0; i < v6; ++i )
    {
      v9 = 28;
      while ( *&(*v7)[v9] == *(v2 + v9) )
      {
        v10 = __OFSUB__(v9, 4);
        v9 -= 4;
        if ( (v9 < 0) ^ v10 )
          return;
      }
      v7 = (v7 + 32);
    }
    sub_3006428();
    if ( v12 )
    {
      *(v5 + 3) |= 0x10u;
      *(v5 + 36) = 0;
    }
    else
    {
      v13 = 28;
      do
      {
        *&(*v7)[v13] = *(v11 + v13);
        v10 = __OFSUB__(v13, 4);
        v13 -= 4;
      }
      while ( !((v13 < 0) ^ v10) );
      *off_30061A0 = v6 + 1;
    }
  }
}


// 0x30061a8
signed int sub_30061A8()
{
  int v0; // r7
  int v1; // r1
  int *i; // r2

  v1 = *off_30061E0[0];
  for ( i = off_30061E4[0]; ; i += 2 )
  {
    if ( !v1 )
      return 1;
    if ( v0 == *i )
      break;
    --v1;
  }
  return i[1];
}


// 0x30061c8
void sub_30061C8()
{
  int v0; // r6
  int v1; // r7
  int v2; // r3
  int *v3; // r2

  v2 = *off_30061E0[0] + 1;
  *off_30061E0[0] = v2;
  v3 = &off_30061E4[0][2 * (v2 - 1)];
  *v3 = v1;
  v3[1] = v0;
}


// 0x30061e8
int sub_30061E8()
{
  char *v0; // r5
  signed int v1; // r6
  char v2; // ST00_1
  int v3; // r4
  unsigned int v4; // r7
  int v5; // r5
  int v6; // r1
  int v7; // r10
  unsigned int v8; // r12
  signed int v9; // r0
  signed int v10; // r8
  signed int v11; // r0
  signed int v12; // r9
  int result; // r0
  unsigned __int8 *v14; // r2
  signed int v15; // r7
  unsigned int v16; // r4
  int v17; // r3
  int v18; // r3
  int v19; // r3
  int v20; // r3
  char v21; // r3
  char v22; // r3
  char v23; // r3

  v1 = *v0;
  v2 = *v0;
  v3 = *off_3006308;
  v4 = 16 * (v0[2] >> 4);
  v5 = &v0[v4];
  (*(off_3006310 + off_300630C[1]))();
  v7 = *off_3006308;
  v8 = v4;
  if ( v2 & 8 )
  {
    v15 = 0;
    result = v7 - 64;
    if ( v6 >= v7 - 64 )
    {
      result = v7 + 305;
      if ( v6 < v7 + 305 )
      {
        result = -32;
        if ( v1 >= -32 )
        {
          result = 193;
          if ( v1 < 193 )
            v15 = 1;
        }
      }
    }
  }
  else
  {
    if ( !(*(v5 + 3) & 1) )
      v8 = v1;
    v9 = 0;
    if ( *(v5 + 19) & 0x10 )
      v9 = 1;
    v10 = v9;
    v11 = 0;
    if ( *(v5 + 19) & 0x20 )
      v11 = 1;
    v12 = v11;
    result = *(*(v5 + 28) + 12);
    v14 = (*(*(v5 + 24) + result + 4 * **(v5 + 32)) + *(v5 + 24) + result);
    v15 = 0;
    v16 = 2147483648;
    while ( *v14 != 255 )
    {
      v17 = v14[1];
      if ( v10 )
        v17 = -v17;
      v18 = v17 + v6;
      result = v7 - 64;
      if ( v18 >= v7 - 64 )
      {
        result = v7 + 305;
        if ( v18 < v7 + 305 )
        {
          v19 = v14[2];
          if ( v12 )
            v19 = -v19;
          v20 = v19 + v8;
          result = -32;
          if ( v20 >= -32 )
          {
            result = 193;
            if ( v20 < 193 )
              v15 |= v16;
          }
        }
      }
      v8 = v1;
      v16 >>= 1;
      v14 += 5;
    }
  }
  v21 = *(v5 + 3);
  if ( *(v5 + 3) & 4 )
  {
    v23 = v21 & 0xF5;
    if ( v15 )
      v23 |= 0xAu;
  }
  else
  {
    v22 = v21 & 0xF7;
    if ( v15 & 0x7FFFFFFF )
      v22 |= 8u;
    v23 = v22 & 0xFD;
    if ( v15 )
      v23 |= 2u;
  }
  *(v5 + 3) = v23;
  *(v5 + 40) = v15;
  return result;
}


// 0x300631c
_DWORD *__fastcall sub_300631C(_DWORD *result)
{
  int v1; // r5
  int v2; // r10
  _DWORD *v3; // ST00_4
  int v4; // r9
  _DWORD *v5; // r3
  int v6; // r1
  int v7; // r6
  int v8; // r7

  if ( *(v1 + 3) & 4 )
  {
    v4 = result[2];
  }
  else
  {
    v3 = result;
    v4 = off_3006388() << 16;
    result = v3;
  }
  v5 = *(v2 + 12);
  v6 = *result - v5[15];
  v7 = result[1] - v5[16];
  *(v1 + 12) = ((v6 + v7) >> 16) + 120;
  v8 = (v7 - v6) >> 1;
  *(v1 + 10) = (v5[17] + 0x800000 + v8) >> 16;
  *(v1 + 14) = ((v8 - result[2] + v5[17]) >> 16) + 82;
  *(v1 + 15) = ((v8 - v4 + v5[17]) >> 16) + 82;
  return result;
}


// 0x300638c
signed __int16 *__fastcall sub_300638C(signed __int16 *result)
{
  int v1; // r4
  int v2; // r5
  int v3; // r10
  _DWORD *v4; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r6
  char v8; // r7
  int v9; // r6

  v4 = *(v3 + 12);
  v5 = result[1] - ((v4[15] + v4[18]) >> 16);
  if ( !v1 || (v5 = ((v4[15] + v4[18]) >> 16) - result[1], *(v2 + 22) & 2) )
    LOBYTE(v6) = *(v2 + 22) & 0x30;
  else
    v6 = (*(v2 + 22) ^ 0x10) & 0x30;
  *(v2 + 19) = *(v2 + 19) & 0xCF | v6;
  *(v2 + 12) = v5 + 120;
  v7 = result[3] - (v4[16] >> 16) + 80;
  v8 = result[3] - (v4[16] >> 16) + 80;
  *(v2 + 10) = v7;
  v9 = v7 - (result[5] - (v4[17] >> 16));
  *(v2 + 14) = v9;
  *(v2 + 15) = v8;
  if ( *(v2 + 3) & 0x20 )
    *(v2 + 15) = v9;
  return result;
}


// 0x3006404
void sub_3006404()
{
  ;
}


// 0x3006428
void sub_3006428()
{
  ;
}


// 0x3006440
int __fastcall sub_3006440(int result, int a2)
{
  int v2; // r5
  int v3; // r1
  unsigned __int8 *v4; // r2
  int v5; // r7
  int v6; // r3
  int v7; // r0
  int v8; // r1
  int v9; // r6
  int v10; // r0
  int v11; // r1
  int v12; // r3
  int v13; // r1
  int v14; // r1
  int v15; // r0
  unsigned int v16; // r3
  char v17; // [sp-1Ch] [bp-20h]
  int v18; // [sp-18h] [bp-1Ch]
  unsigned __int8 *v19; // [sp-14h] [bp-18h]
  int v20; // [sp-10h] [bp-14h]
  _WORD *v21; // [sp-Ch] [bp-10h]
  int v22; // [sp-8h] [bp-Ch]

  if ( !(*(v2 + 3) & 0x10) && *(v2 + 3) & 2 )
  {
    v17 = result;
    v22 = a2;
    v21 = off_3006590;
    v20 = 0;
    v19 = (*(v2 + 48) - 1);
    v3 = *(v2 + 24) + *(*(v2 + 28) + 12);
    v4 = (*(v3 + 4 * **(v2 + 32)) + v3);
    v18 = *(v2 + 40);
    *(v2 + 40) = v18 & ~*(v2 + 44);
    *(v2 + 22) = (*(v2 + 22) & 0xBF | *off_300658C) & ~((*(v2 + 22) & 0x80) >> 1);
    v5 = *(v2 + 3) & 1;
    if ( *(v2 + 3) & 1 || *(v2 + 3) & 4 )
      goto LABEL_7;
    *(v2 + 40) *= 2;
    while ( 1 )
    {
      v4 += 5;
      if ( !(*(v2 + 3) & 0x20) )
        v5 = 0;
LABEL_7:
      if ( *v4 == 255 )
        break;
      ++v19;
      v6 = *(v2 + 40);
      *(v2 + 40) = 2 * v6;
      if ( v6 < 0 )
      {
        v7 = *(v2 + 22);
        v8 = (v7 & 0x40) << 6;
        v9 = *(v2 + 16) | v8;
        v10 = sub_3006594(v7, v8, v4);
        v12 = (v9 | (((*(v2 + 12) + v11) & 0x1FF) << 16) | (v4[3] << 30)) ^ ((v4[3] & 0xF0) << 22) | (*(v2 + v5 + 14) + v10) & 0xFF | ((v4[4] & 0xF) << 14);
        v13 = *(v2 + 20);
        if ( v19 > 255 )
          v13 = *(v2 + 20) & 0xFFF | (*v19 << 12);
        v14 = v13 | (*v4 + *(v2 + 8));
        v15 = v12;
        v16 = (*(v2 + 10) + v22) >> 32 * v5;
        *v21 = v15;
        v21[2] = v14;
        *(v21 + 6) = v17 + v5;
        v21[4] = v16;
        v21 += 6;
        ++v20;
      }
    }
    if ( v20 )
      sub_3006920(off_3006590, v20);
    result = v18;
    *(v2 + 40) = v18;
  }
  return result;
}


// 0x3006594
int __fastcall sub_3006594(int a1, int a2, _BYTE *a3)
{
  int v3; // r5
  __int16 v4; // r6
  int v5; // r7
  int result; // r0
  int v7; // r1
  unsigned int v8; // r4
  unsigned __int8 *v9; // r6
  int v10; // r1
  int v11; // ST04_4
  int v12; // r1

  if ( v4 & 0x300 )
  {
    v8 = (*(v3 + 19) & 0x3Eu) >> 1;
    if ( v5 == 1 )
      v8 += 16;
    v9 = (off_3006724 + 12 * v8);
    v10 = 2 * ((v9[8] + 64) & 0xFF);
    v11 = (((a3[1] - (*off_30066E4[0])[(4 * a3[4] & 0x3F) + (a3[3] & 0xF)]) * v9[9] * *&(*off_3006728[0])[v10]
          + (a3[2] - (*off_30066E8[0])[(4 * a3[4] & 0x3F) + (a3[3] & 0xF)]) * v9[10] * *&(*off_300672C)[v10]) >> 12)
        + (*off_30066EC[0])[(4 * a3[4] & 0x3F) + (a3[3] & 0xF)];
    v12 = 2 * ((v9[8] + 64) & 0xFF);
    result = (((a3[1] - (*off_30066E4[0])[(4 * a3[4] & 0x3F) + (a3[3] & 0xF)]) * v9[9] * -*&(*off_300672C)[v12]
             + (a3[2] - (*off_30066E8[0])[(4 * a3[4] & 0x3F) + (a3[3] & 0xF)]) * v9[10] * *&(*off_3006728[0])[v12]) >> 12)
           + (*off_30066F0)[(4 * a3[4] & 0x3F) + (a3[3] & 0xF)];
  }
  else
  {
    result = a3[2];
    if ( *(v3 + 19) & 0x10 )
      v7 = (*off_30066EC[0])[(4 * a3[4] & 0x3F) + (a3[3] & 0xF)] - a3[1];
    if ( *(v3 + 19) & 0x20 )
      result = (*off_30066F0)[(4 * a3[4] & 0x3F) + (a3[3] & 0xF)] - result;
  }
  return result;
}


// 0x3006730
int sub_3006730()
{
  unsigned __int8 *v0; // r5
  _DWORD *v1; // r1
  int v2; // r3
  int v3; // r1
  int v4; // r1
  int v5; // r3
  int result; // r0

  if ( v0[3] & 0x80 )
  {
    v4 = *(v0 + 6);
    v5 = *(v4 + 4 * *v0) + v4;
    *(v0 + 7) = v5;
    *(v0 + 8) = v4 + *(v5 + 8) + *(v4 + *(v5 + 8));
    v0[1] = *(v5 + 16);
    v0[2] = *(v5 + 18);
  }
  else
  {
    v1 = *(v0 + 6);
    v2 = v1 + *v1;
    *(v0 + 7) = v2;
    v3 = v1 + *(v2 + 8) + *(&v1[*v0] + *(v2 + 8));
    *(v0 + 8) = v3;
    v0[1] = *(v3 + 1);
    v0[2] = *(v3 + 2);
  }
  result = *(*(v0 + 7) + 12);
  v0[5] = *(*(*(v0 + 6) + result + 4 * **(v0 + 8)) + *(v0 + 6) + result + 4) >> 4;
  return result;
}


// 0x3006792
int sub_3006792()
{
  int v0; // r5
  int v1; // r0
  int v2; // r1
  int v3; // r0
  int v4; // r4
  int v5; // r1
  int v6; // r3
  int v7; // r4
  int v8; // r3
  _DWORD *v9; // r1
  int result; // r0

  while ( 1 )
  {
    v1 = *(v0 + 1) - 1;
    *(v0 + 1) = v1;
    if ( v1 >= 0 )
      break;
    if ( *(v0 + 3) & 0x80 )
    {
      v6 = *(v0 + 28);
      LOBYTE(v3) = *(v6 + 18);
      v7 = *(v6 + 16);
      if ( *(v6 + 18) & 0x80 )
        goto LABEL_8;
      v8 = v6 + 20;
      *(v0 + 28) = v8;
      v9 = (*(v0 + 24) + *(v8 + 8));
      *(v0 + 32) = v9 + *v9;
      *(v0 + 1) = *(v8 + 16);
      *(v0 + 2) = *(v8 + 18);
    }
    else
    {
      v2 = *(v0 + 32);
      v3 = *(v2 + 2);
      v4 = *(v2 + 1);
      if ( *(v2 + 2) & 0x80 )
      {
LABEL_8:
        if ( v3 & 0x40 )
          sub_3006730();
        else
          *(v0 + 1) = 1;
      }
      else
      {
        v5 = v2 + 3;
        *(v0 + 32) = v5;
        *(v0 + 1) = *(v5 + 1);
        *(v0 + 2) = *(v5 + 2);
      }
    }
  }
  result = *(*(v0 + 28) + 12);
  *(v0 + 5) = *(*(*(v0 + 24) + result + 4 * **(v0 + 32)) + *(v0 + 24) + result + 4) >> 4;
  return result;
}


// 0x3006814
int sub_3006814()
{
  int v0; // r12
  int *v1; // r0
  void *v2; // r2
  _BYTE *v3; // r3
  signed int *v4; // r6
  char (*v5)[1024]; // r12
  signed int v6; // r1
  unsigned __int8 *v7; // r4
  int v8; // r5
  int v9; // r7
  __int16 *v10; // r0
  int *v11; // r1
  signed int v12; // r3
  signed int v13; // r2
  int *v14; // r5
  signed int v15; // r4
  void (__fastcall *v16)(int, unsigned int, int, int); // r12
  int v18; // [sp-4h] [bp-18h]

  v18 = v0;
  v1 = off_30068C0;
  v2 = off_30068C4;
  v3 = off_30068C8;
  v4 = off_30068CC;
  v5 = off_30068D0;
  while ( 2 )
  {
    v6 = *v4;
    v7 = (v4[1] + *v4);
LABEL_3:
    while ( v6 <= --v7 )
    {
      v8 = *v7;
      if ( v8 != 255 )
      {
        while ( v1 < v3 )
        {
          v9 = &(*v5)[8 * v8];
          *v1 = *v9;
          *(v1 + 2) = *(v9 + 4);
          v1 += 2;
          v8 = *(v9 + 7);
          if ( v8 == 255 )
            goto LABEL_3;
        }
        goto LABEL_9;
      }
    }
    v4 += 2;
    if ( v4 < v2 )
      continue;
    break;
  }
LABEL_9:
  *off_30068D4 = (v3 - v1) >> 3;
  while ( v1 < v3 )
  {
    *v1 = 240;
    *(v1 + 2) = 3072;
    v1 += 2;
  }
  v10 = off_30068D8;
  v11 = off_30068C0;
  v12 = 32;
  do
  {
    *(v11 + 3) = *v10;
    *(v11 + 7) = v10[1];
    *(v11 + 11) = v10[2];
    *(v11 + 15) = v10[3];
    v10 += 6;
    v11 += 8;
    --v12;
  }
  while ( v12 > 0 );
  v13 = -1;
  v14 = off_30068DC;
  v15 = 4;
  v16 = off_30068E0;
  do
  {
    v16(*v14, v14[1], v13, v12);
    v14 += 2;
    --v15;
  }
  while ( v15 > 0 );
  *off_30068E4 = 0;
  return v18;
}


// 0x30068e8
signed int __fastcall sub_30068E8(signed int result, __int16 a2, int a3, int a4)
{
  int v4; // r6
  int *v5; // r4
  char *v6; // r4
  char v7; // r7
  char *v8; // r5

  v4 = *off_3006994;
  if ( *off_3006994 < 128 )
  {
    v5 = &off_300699C[0][2 * a3];
    if ( a4 < v5[1] && a4 >= 0 )
    {
      v6 = (*v5 + a4);
      *off_3006994 = v4 + 1;
      v7 = *v6;
      *v6 = v4;
      v8 = &(*off_3006998)[8 * v4];
      *v8 = result;
      *(v8 + 2) = a2;
      v8[7] = v7;
      result = 255;
      v8[6] = -1;
    }
  }
  return result;
}


// 0x3006920
int __fastcall sub_3006920(int result, int a2)
{
  char (*v2)[16]; // r5
  int v3; // r6
  char (*v4)[16]; // r8
  int v5; // r1
  int v6; // r1
  char (*v7)[1024]; // r12
  int v8; // r3
  int v9; // r2
  __int16 v10; // r1
  int *v11; // r4
  char *v12; // r4
  char v13; // r7
  int v14; // r5
  int v15; // [sp+0h] [bp-28h]
  int v16; // [sp+4h] [bp-24h]

  v2 = off_3006994;
  v3 = *off_3006994;
  v4 = off_3006994;
  v5 = a2 + *off_3006994;
  if ( v5 < 128 )
  {
    v6 = v5 - v3;
    v7 = off_3006998;
    do
    {
      v15 = result;
      v16 = v6;
      v8 = *(result + 8);
      v9 = *(result + 6);
      v10 = *(result + 4);
      result = *result;
      v11 = &off_300699C[0][2 * v9];
      if ( v8 >= v11[1] )
        break;
      if ( v8 < 0 )
        break;
      v12 = (*v11 + v8);
      *v2 = v3 + 1;
      v13 = *v12;
      *v12 = v3;
      v14 = &(*v7)[8 * v3];
      *v14 = result;
      *(v14 + 4) = v10;
      *(v14 + 7) = v13;
      *(v14 + 6) = -1;
      v2 = v4;
      ++v3;
      result = v15 + 12;
      v6 = v16 - 1;
    }
    while ( v16 > 1 );
  }
  return result;
}


// 0x30069a8
int __fastcall sub_30069A8(int a1, int a2, int a3)
{
  int v3; // r10
  int v4; // r8
  int v5; // r9
  int i; // r5
  int v7; // r2
  int *v8; // r1
  int v9; // r3
  int v10; // r4
  int v11; // r6
  int v12; // r3
  int v13; // r4
  int v14; // r7
  int v15; // r7
  int v16; // r3
  int v17; // r12
  _DWORD *v18; // r2
  _DWORD *v19; // r1
  int v20; // r6
  int v21; // r7
  int v22; // r6
  int v23; // r7
  int v24; // r6
  _DWORD *v25; // r1
  int v26; // r3
  int v27; // r7
  int v28; // r6
  int v29; // r7
  int v30; // r3
  int result; // r0
  int v32; // [sp+0h] [bp-48h]
  int v33; // [sp+4h] [bp-44h]
  int v34; // [sp+8h] [bp-40h]
  int v35; // [sp+Ch] [bp-3Ch]
  int v36; // [sp+10h] [bp-38h]
  int v37; // [sp+14h] [bp-34h]
  int v38; // [sp+18h] [bp-30h]
  int v39; // [sp+1Ch] [bp-2Ch]
  int v40; // [sp+20h] [bp-28h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  for ( i = 1; i <= a2; i = 3 * i + 1 )
    ;
  while ( 1 )
  {
    result = off_3006B14(i, 3);
    i = result;
    if ( result <= 0 )
      break;
    v7 = result;
    if ( result < v4 )
    {
      do
      {
        v8 = (32 * v7 + v3);
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        v8 += 3;
        v32 = v9;
        v33 = v10;
        v34 = v11;
        v12 = *v8;
        v13 = v8[1];
        v14 = v8[2];
        v8 += 3;
        v35 = v12;
        v36 = v13;
        v37 = v14;
        v15 = v8[1];
        v38 = *v8;
        v39 = v15;
        v16 = v7 - result;
        v17 = v7 + 1;
        if ( v7 - result >= 0 )
        {
          v40 = *(&v32 + v5);
          do
          {
            v18 = (32 * v16 + v3);
            if ( v18[v5] <= v40 )
              break;
            v19 = (32 * (v16 + result) + v3);
            v20 = v18[1];
            v21 = v18[2];
            *v19 = *v18;
            v19[1] = v20;
            v19[2] = v21;
            v19 += 3;
            v22 = v18[4];
            v23 = v18[5];
            *v19 = v18[3];
            v19[1] = v22;
            v19[2] = v23;
            v19 += 3;
            v24 = v18[7];
            *v19 = v18[6];
            v19[1] = v24;
            v16 -= result;
          }
          while ( v16 >= 0 );
        }
        v25 = (32 * (v16 + result) + v3);
        v26 = v33;
        v27 = v34;
        *v25 = v32;
        v25[1] = v26;
        v25[2] = v27;
        v25 += 3;
        v28 = v36;
        v29 = v37;
        *v25 = v35;
        v25[1] = v28;
        v25[2] = v29;
        v25 += 3;
        v30 = v39;
        *v25 = v38;
        v25[1] = v30;
        v7 = v17;
      }
      while ( v17 < v4 );
    }
  }
  return result;
}


// 0x3006a5e
int __fastcall sub_3006A5E(int a1, int a2, int a3)
{
  int v3; // r10
  int v4; // r8
  int v5; // r9
  int i; // r5
  int v7; // r2
  int *v8; // r1
  int v9; // r3
  int v10; // r4
  int v11; // r6
  int v12; // r3
  int v13; // r4
  int v14; // r7
  int v15; // r7
  int v16; // r3
  int v17; // r12
  _DWORD *v18; // r2
  _DWORD *v19; // r1
  int v20; // r6
  int v21; // r7
  int v22; // r6
  int v23; // r7
  int v24; // r6
  _DWORD *v25; // r1
  int v26; // r3
  int v27; // r7
  int v28; // r6
  int v29; // r7
  int v30; // r3
  int result; // r0
  int v32; // [sp+0h] [bp-48h]
  int v33; // [sp+4h] [bp-44h]
  int v34; // [sp+8h] [bp-40h]
  int v35; // [sp+Ch] [bp-3Ch]
  int v36; // [sp+10h] [bp-38h]
  int v37; // [sp+14h] [bp-34h]
  int v38; // [sp+18h] [bp-30h]
  int v39; // [sp+1Ch] [bp-2Ch]
  int v40; // [sp+20h] [bp-28h]

  v3 = a1;
  v4 = a2;
  v5 = a3;
  for ( i = 1; i <= a2; i = 3 * i + 1 )
    ;
  while ( 1 )
  {
    result = off_3006B14(i, 3);
    i = result;
    if ( result <= 0 )
      break;
    v7 = result;
    if ( result < v4 )
    {
      do
      {
        v8 = (32 * v7 + v3);
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        v8 += 3;
        v32 = v9;
        v33 = v10;
        v34 = v11;
        v12 = *v8;
        v13 = v8[1];
        v14 = v8[2];
        v8 += 3;
        v35 = v12;
        v36 = v13;
        v37 = v14;
        v15 = v8[1];
        v38 = *v8;
        v39 = v15;
        v16 = v7 - result;
        v17 = v7 + 1;
        if ( v7 - result >= 0 )
        {
          v40 = *(&v32 + v5);
          do
          {
            v18 = (32 * v16 + v3);
            if ( v18[v5] >= v40 )
              break;
            v19 = (32 * (v16 + result) + v3);
            v20 = v18[1];
            v21 = v18[2];
            *v19 = *v18;
            v19[1] = v20;
            v19[2] = v21;
            v19 += 3;
            v22 = v18[4];
            v23 = v18[5];
            *v19 = v18[3];
            v19[1] = v22;
            v19[2] = v23;
            v19 += 3;
            v24 = v18[7];
            *v19 = v18[6];
            v19[1] = v24;
            v16 -= result;
          }
          while ( v16 >= 0 );
        }
        v25 = (32 * (v16 + result) + v3);
        v26 = v33;
        v27 = v34;
        *v25 = v32;
        v25[1] = v26;
        v25[2] = v27;
        v25 += 3;
        v28 = v36;
        v29 = v37;
        *v25 = v35;
        v25[1] = v28;
        v25[2] = v29;
        v25 += 3;
        v30 = v39;
        *v25 = v38;
        v25[1] = v30;
        v7 = v17;
      }
      while ( v17 < v4 );
    }
  }
  return result;
}


// 0x3006b94
int __fastcall sub_3006B94(unsigned __int8 *a1, int a2, int a3, int a4)
{
  char v4; // r4
  char v5; // r5
  int v6; // r7
  int v7; // r10
  int v8; // r8
  int v9; // r7
  int v10; // r9
  signed int v11; // r3
  int v12; // r1
  int v13; // r0
  int v14; // r0
  int v16; // [sp+4h] [bp-8h]

  v8 = v6;
  v9 = *(v7 + 56);
  *v9 = v4;
  *(v9 + 1) = v4 * v5;
  *(v9 + 56) = *(off_3006C14 + v8);
  *(v9 + 52) = 0;
  *(v9 + 48) = 0;
  v10 = 0;
  v16 = a4;
  v11 = 1;
  while ( v11 )
  {
    v12 = *a1;
    if ( v12 < 229 )
    {
      if ( v12 == 228 )
      {
        sub_3006C18(a1, a1[1] + 228, a3);
        a1 = (v14 + 2);
      }
      else
      {
        sub_3006C18(a1, v12, a3);
        a1 = (v13 + 1);
      }
      ++v10;
    }
    else
    {
      a1 = (off_3006C08[v12 - 229])();
    }
  }
  if ( v16 )
    off_3006C0C();
  return v10;
}


// 0x3006c18
void __fastcall sub_3006C18(int a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r10
  int v5; // r6
  int v6; // r0
  signed int v7; // r1
  unsigned __int8 v8; // vf

  v5 = v3 + (a2 << 6);
  v6 = *(*(v4 + 56) + 56);
  v7 = 60;
  do
  {
    *(a3 + v7) = *(v5 + v7) + v6;
    v8 = __OFSUB__(v7, 4);
    v7 -= 4;
  }
  while ( !((v7 < 0) ^ v8) );
}


// 0x3006c38
int __fastcall sub_3006C38(int a1)
{
  return a1 + 1;
}


// 0x3006c3c
void __fastcall sub_3006C3C(int result, int a2, int a3)
{
  int v3; // r5
  int v4; // r10
  int v5; // r4
  int v6; // r1
  int v7; // r0
  int v8; // r8

  v5 = *(v4 + 56);
  v6 = *(v5 + 48);
  if ( v6 )
  {
    *(v5 + 48) = v6 - 1;
    --*(v5 + 52);
    v7 = *(v5 + 44);
  }
  else
  {
    v8 = *(v5 + 1);
    while ( v3 < v8 )
      sub_3006C18(result, 0, a3);
  }
}


// 0x3006c72
int __fastcall sub_3006C72(int a1, int a2, int a3)
{
  int v3; // r4
  int v4; // r10
  int v5; // r8

  v5 = **(v4 + 56);
  while ( v3 < v5 )
    sub_3006C18(a1, 0, a3);
  return a1 + 1;
}


// 0x3006c8e
int __fastcall sub_3006C8E(int a1)
{
  return a1 + *(*byte_3006C9C + *(a1 + 1));
}


// 0x3006ca8
int __fastcall sub_3006CA8(int a1)
{
  int v1; // r10
  int v3; // r1
  int v4; // r2

  if ( *(a1 + 1) == 1 )
  {
    v3 = *(a1 + 2);
    v4 = *(v1 + 56);
    *(v4 + 60) += v3;
    *(v4 + 28) += 4 * v3;
  }
  return a1 + 3;
}


// 0x3006cd0
int __fastcall sub_3006CD0(int a1, int a2, int a3)
{
  int v3; // r9
  int v4; // r10
  int v5; // r1
  int v6; // r0
  unsigned int v7; // r8
  int v8; // r7
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r3
  signed int v13; // r7
  int v14; // r0
  int v15; // ST08_4
  int v16; // r3
  int v17; // r0
  int v18; // r3
  int v19; // r0
  int v20; // r1
  int v21; // r0
  int v22; // ST0C_4
  int v24; // [sp+0h] [bp-1Ch]
  int v25; // [sp+4h] [bp-18h]
  int v26; // [sp+10h] [bp-Ch]

  v24 = a1;
  v25 = a3;
  v5 = *(a1 + 1);
  if ( v5 & 0x80 )
    v6 = *off_3006DA0[v5 & 0xFFFFFF7F];
  else
    v6 = *(*(v4 + 56) + 4 * v5 + 8);
  v7 = off_3006D98(v6);
  v8 = off_3006D9C();
  v9 = 4 * (v8 - 1);
  v10 = v25;
  v11 = *(v24 + 2);
  if ( v11 >= 128 )
  {
    v18 = v11 - 128 - v8;
    v19 = 0;
    if ( v18 >= 64 )
    {
      v18 -= 64;
      v19 = 1;
    }
    while ( v18 > 0 )
    {
      sub_3006C18(v19, v19, v10);
      ++v3;
    }
    v20 = 4 * (v8 - 1);
    v26 = v24;
    v21 = 15;
    do
    {
      v22 = v20;
      sub_3006C18(v21, ((v7 >> v20) & v21) + 1, v10);
      ++v3;
      v20 = v22 - 4;
    }
    while ( v22 >= 4 );
  }
  else
  {
    v12 = v11 - v8;
    v13 = 0;
    if ( v12 >= 64 )
      v13 = 1;
    v26 = v24;
    v14 = 15;
    do
    {
      v15 = v9;
      sub_3006C18(v14, ((v7 >> v9) & v14) + 1, v10);
      ++v3;
      v9 = v15 - 4;
    }
    while ( v15 >= 4 );
    v17 = v13;
    while ( v16 > 0 )
      sub_3006C18(v17, v17, v10);
  }
  return v26 + 3;
}


// 0x3006da4
int __fastcall sub_3006DA4(int a1)
{
  return (*(off_3006DB4 + 4 * *(a1 + 1)))();
}


// 0x3006dc8
char *__fastcall sub_3006DC8(int a1)
{
  char *v1; // r3
  char *v2; // r6
  int v3; // r4
  int v4; // ST04_4
  char *v5; // ST08_4
  char *v6; // ST00_4

  v1 = off_3006F1C[0];
  ++*&off_3006F1C[0][dword_30];
  v2 = &(*off_3006E10)[8 * *(a1 + 2)];
  v3 = *(v2 + 1);
  v4 = a1;
  v5 = &(*off_3006E18)[64 * *(v1 + 13)];
  v6 = v1;
  off_3006E14(*v2);
  ++*(v6 + 13);
  *(v6 + 10) = v5;
  *(v6 + 11) = v4 + 3;
  return v5;
}


// 0x3006e1c
int __fastcall sub_3006E1C(int a1)
{
  int v1; // r9
  int v2; // r10
  int v3; // r1
  char v4; // r7
  int v5; // r0
  int v6; // r0
  int v7; // r2
  int v9; // [sp-4h] [bp-14h]
  int v10; // [sp+0h] [bp-10h]

  v10 = a1;
  v3 = *(*(v2 + 56) + 8 + 4 * (*(a1 + 3) - 1));
  v4 = 0;
  v5 = *(a1 + 2) & 0xF;
  if ( !v5 )
  {
    v5 = 8;
    v4 = 16;
  }
  do
  {
    v9 = v5;
    v6 = off_3006E78();
    if ( !(v4 & 0x10) || v6 )
      sub_3006C18(16, v6, v7);
    ++v1;
    v5 = v9 - 1;
  }
  while ( v9 != 1 );
  return v10 + 4;
}


// 0x3006e7c
int __fastcall sub_3006E7C(int a1)
{
  return (off_3006E8C[*(a1 + 1)])();
}


// 0x3006e98
char *__fastcall sub_3006E98(int a1)
{
  char *v1; // r3
  int v2; // r2
  int v3; // ST04_4
  char *v4; // ST08_4
  char *v5; // ST00_4

  v1 = off_3006F1C[0];
  ++*&off_3006F1C[0][dword_30];
  v2 = *(a1 + 2);
  if ( *(a1 + 1) )
    v2 += 2;
  v3 = a1;
  v4 = off_3006F14 + 64 * *(v1 + 26);
  v5 = v1;
  off_3006F18(off_3006EE8[v2]);
  ++v5[52];
  *(v5 + 10) = v4;
  *(v5 + 11) = v3 + 3;
  return v4;
}


// 0x3006f20
int __fastcall sub_3006F20(int a1)
{
  return a1 + 4;
}


// 0x3006f24
int __fastcall sub_3006F24(int a1)
{
  int v1; // r10
  int v2; // r1
  int result; // r0

  v2 = *(a1 + 2);
  if ( v2 == 255 )
    result = a1 + 3;
  else
    result = *(*(v1 + 56) + 64) + *(*(*(v1 + 56) + 64) + 2 * v2);
  return result;
}


// 0x3006f42
int __fastcall sub_3006F42(int a1)
{
  return a1 + 2;
}


// 0x3006f48
int __fastcall sub_3006F48(int a1)
{
  return a1 + (*off_3006F54)[*(a1 + 1)];
}


// 0x3006f8c
signed int __fastcall sub_3006F8C(int a1, int a2)
{
  int v2; // r5
  unsigned int v3; // r6
  _DWORD *v4; // r2
  int v5; // r3
  char *v6; // r7
  int v7; // r4
  char v8; // r4
  int v9; // r12
  signed int v10; // r6
  unsigned int v11; // r0
  unsigned int v12; // r1
  signed int v13; // ST08_4
  signed int result; // r0

  v4 = off_3007028 + 4 * (v3 >> 5);
  v5 = v3 - 32 * (v3 >> 5);
  v6 = &(*off_3007024)[96 * a2];
  v7 = (*off_300702C)[a2];
  *(v2 + 112) += v7;
  v7 *= 4;
  *(v2 + 124) = v3 + v7;
  v8 = 64 - v7;
  v9 = (*off_3007030)[*&off_3007034[v2]];
  v10 = 11;
  do
  {
    v11 = *v6 + v9;
    v12 = ((*(v6 + 1) + v9) << v8) >> v8;
    v13 = v10;
    *v4 |= v11 << v5;
    v4[1] = (v11 >> (32 - v5)) | (v12 << v5);
    v4[2] = v12 >> (32 - v5);
    v6 += 8;
    result = 96;
    v4 += 24;
    --v10;
  }
  while ( v13 >= 1 );
  return result;
}


// 0x3007038
signed int __fastcall sub_3007038(int a1, int a2)
{
  unsigned int v2; // r6
  _DWORD *v3; // r2
  int v4; // r3
  char *v5; // r7
  int v6; // r4
  signed int v7; // r6
  unsigned int v8; // r0
  unsigned int v9; // r1
  signed int v10; // ST08_4
  signed int result; // r0

  v3 = off_30070AC + 4 * (v2 >> 5);
  v4 = v2 - 32 * (v2 >> 5);
  v5 = &(*off_30070A8)[96 * a2];
  v6 = 64 - 4 * (*off_30070B0)[a2];
  v7 = 11;
  do
  {
    v8 = *v5;
    v9 = *(v5 + 1) << v6 >> v6;
    v10 = v7;
    *v3 |= *v5 << v4;
    v3[1] = (v8 >> (32 - v4)) | (v9 << v4);
    v3[2] = v9 >> (32 - v4);
    v5 += 8;
    result = 96;
    v3 += 24;
    --v7;
  }
  while ( v10 >= 1 );
  return result;
}


// 0x30070b4
int __fastcall sub_30070B4(int a1)
{
  int v1; // r10
  int *v2; // r7
  void **v3; // r5
  int *v4; // r6
  _DWORD *v5; // r8
  int *v6; // r6
  _DWORD *v7; // r7
  _DWORD *v8; // r7
  _DWORD *v9; // r7
  int v10; // r5
  int result; // r0

  v2 = off_30071F0;
  v3 = (*off_3007208[0])[a1];
  if ( a1 )
  {
    if ( a1 == 1 )
      v2 = off_30071F0 + 32;
    else
      v2 = off_30071F0 + 416;
  }
  while ( 1 )
  {
    v4 = *v3;
    if ( !*v3 )
      break;
    v5 = *v3;
    *v2 = *v4;
    v2[1] = v4[24];
    v6 = v4 + 48;
    v2[2] = *v6;
    v2[3] = v6[24];
    v6 += 48;
    v2[4] = *v6;
    v2[5] = v6[24];
    v6 += 48;
    v2[6] = *v6;
    v2[7] = v6[24];
    v7 = (v2 + *(v3 + 4));
    ++v5;
    *v7 = *v5;
    v7[1] = v5[24];
    v7[2] = v5[48];
    v7[3] = v5[72];
    v7[4] = v5[96];
    v7[5] = v5[120];
    v7[6] = v5[144];
    v7[7] = v5[168];
    v8 = (v7 + *(v3 + 5));
    ++v5;
    *v8 = *v5;
    v8[1] = v5[24];
    v8[2] = v5[48];
    v8[3] = v5[72];
    v8[4] = v5[96];
    v8[5] = v5[120];
    v8[6] = v5[144];
    v8[7] = v5[168];
    v9 = (v8 + *(v3 + 6));
    ++v5;
    *v9 = *v5;
    v9[1] = v5[24];
    v9[2] = v5[48];
    v9[3] = v5[72];
    v9[4] = v5[96];
    v9[5] = v5[120];
    v9[6] = v5[144];
    v9[7] = v5[168];
    v2 = (v9 + *(v3 + 7));
    v3 += 2;
  }
  off_30071FC(off_30071F0, dword_30071F4, dword_30071F8);
  v10 = *(v1 + 44);
  result = off_3007204(off_3007200);
  if ( result )
  {
    result = 2;
    *(v10 + 61) = 2;
  }
  return result;
}


// 0x3007218
signed int __fastcall sub_3007218(int a1, int a2)
{
  int v2; // r6
  int v3; // r7
  int v4; // r2
  signed int result; // r0
  char v6; // zf
  int v7; // r1
  signed int v8; // r4
  unsigned int v9; // r3
  int v10; // r3
  int v11; // r4
  int v12; // r2
  __int16 v13; // r1
  int v14; // r4
  int v15; // r4
  int v16; // r4
  __int16 v17; // r4
  __int16 v18; // r0
  int v19; // r1
  int v20; // [sp-8h] [bp-18h]
  int v21; // [sp-4h] [bp-14h]

  v2 = a1;
  v3 = a2;
  v4 = *(a1 + 60);
  v20 = *(a1 + 60);
  v21 = *(a1 + 48);
  result = off_3007504();
  if ( v6 || v20 & dword_3007508 || *(v3 + 48) & dword_300750C )
  {
    result = *(v3 + 60);
    if ( (!(result & *byte_3007510) || v21 & 4)
      && (!(result & 4) || v21 & *&byte_3007510[4])
      && (!(result & *&byte_3007510[8]) || v21 & *&byte_3007510[12])
      && !(result & *&byte_3007510[16])
      && (!(result & 0x20) || v21 & 0x80)
      && (!(v20 & *byte_3007510) || *(v3 + 48) & 4)
      && (!(v20 & 4) || *(v3 + 48) & *&byte_3007510[4])
      && (!(v20 & *&byte_3007510[8]) || *(v3 + 48) & *&byte_3007510[20])
      && !(v20 & *&byte_3007510[16])
      && (!(v20 & 0x20) || *(v3 + 48) & 0x80) )
    {
      if ( !(v20 & 1) || ((v7 = *(v3 + 48), v7 & *&byte_3007510[24]) ? (v8 = *&byte_3007510[28]) : (v8 = 2), v7 & v8) )
      {
        if ( (!(*(v2 + 48) & *&byte_3007510[40]) || !(*(v3 + 48) & *&byte_3007510[44]))
          && (!(*(v2 + 48) & *&byte_3007510[44]) || !(*(v3 + 48) & *&byte_3007510[40]))
          && !(v20 & 8) )
        {
          *(v2 + 124) |= *(v3 + 68);
          v10 = *(v3 + 48);
          *(v2 + 112) |= v10;
          v11 = v10;
          *(v2 + 118) |= *(v3 + 25);
          if ( *(v3 + 16) )
            *(v2 + 17) = *(v3 + 16);
          sub_3007460();
          LOBYTE(v12) = *(v3 + 7);
          if ( *(v2 + 13) && *(v3 + 7) & 0x7F && !(*(v3 + 7) & 0x80) )
            *(v2 + 112) |= 0x40u;
          if ( !(v12 & 0x80) )
          {
            v12 &= 0x7Fu;
            if ( v12 )
            {
              if ( *(v2 + 13) )
              {
                LOBYTE(v12) = 0;
                *(v2 + 144) = -32768;
              }
              else
              {
                *(v2 + 144) += v12;
              }
            }
          }
          *(v2 + 142) += v12 & 0x7F;
          if ( __CFSHR__(v11, 9) )
            ++*(v2 + 146);
          *(v2 + 15) |= *(v3 + 14);
          v13 = *(v3 + 18);
          if ( v13 )
            *(v2 + 164) = v13;
          v14 = sub_3007432(*(v2 + 2), *(v3 + 2)) + 1;
          v15 = v14 + sub_30074E2(*(v2 + 24), *(v3 + 25));
          *(v2 + 117) = v15 - 1;
          v16 = v15 + sub_30074BA();
          v17 = v16 + sub_30074A2();
          *(v2 + 116) = v17 - 1;
          v18 = *(v3 + 46);
          v19 = *(v3 + 2);
          if ( v19 == 3 )
            *(v2 + 120) += v18;
          *(v2 + 2 * v19 + 130) += v18 * v17;
          result = sub_300766C(v2, v3);
          *(v2 + 130) += result;
          *(v2 + 160) += *(v3 + 100);
        }
      }
      else
      {
        result = 1;
        *(v3 + 112) |= 1u;
        v9 = *(v3 + 48) & 0xFFFFFFEF;
        if ( !(v9 & *&byte_3007510[32]) )
        {
          result = 1 << *(v3 + 5);
          *(v2 + 3) |= result;
          v9 |= *&byte_3007510[36];
        }
        *(v2 + 112) |= v9;
      }
    }
  }
  return result;
}


// 0x3007432
int __fastcall sub_3007432(int a1, int a2)
{
  return *(*byte_3007440 + 5 * a1 + a2);
}


// 0x3007460
signed int sub_3007460()
{
  int v0; // r6
  int v1; // r7
  signed int result; // r0

  result = *(v0 + 2);
  if ( result == 2 )
  {
    result = *(v1 + 48);
    if ( result & dword_3007540 )
    {
      result = *(v0 + 48);
      if ( !(result & dword_3007540) )
      {
        result = *(v1 + 40);
        if ( !*(v1 + 40) )
        {
          result = *(v0 + 112);
          if ( !(result & 1) )
          {
            result = sub_3007958(*(v1 + 10), *(v1 + 11))[2];
            if ( result == 7 )
            {
              sub_30079A4(*(v1 + 10), *(v1 + 11), 2);
              result = 80;
              *(v1 + 17) = 80;
            }
          }
        }
      }
    }
  }
  return result;
}


// 0x30074a2
signed int sub_30074A2()
{
  int v0; // r6
  int v1; // r7
  signed int v2; // r4

  v2 = 0;
  if ( *(v0 + 60) & dword_3007544 && *(v1 + 2) == 3 )
    v2 = 1;
  return v2;
}


// 0x30074ba
signed int sub_30074BA()
{
  _DWORD *v0; // r6
  int v1; // r7
  signed int v2; // r4
  int v3; // r5

  v2 = 0;
  if ( v0[15] & dword_300750C && (v0[28] & 2 || *(v1 + 25) == 16) )
  {
    v2 = 1;
    v3 = v0[14];
    off_3007548();
  }
  return v2;
}


// 0x30074e2
signed int __fastcall sub_30074E2(int a1, int a2)
{
  int v2; // r7
  signed int v3; // r2

  v3 = 0;
  if ( a1 & a2 )
  {
    if ( a1 )
      v3 = 1;
  }
  else if ( a1 == 128 && *(v2 + 48) & dword_300754C )
  {
    v3 = 1;
  }
  return v3;
}


// 0x3007550
int sub_3007550()
{
  int v0; // r5
  unsigned __int8 *v1; // r5
  int v2; // r1
  char *v3; // r4
  int v4; // r6
  int result; // r0
  int v6; // r2
  char v7; // zf
  int v8; // r7
  int v9; // r6
  int v10; // [sp+0h] [bp-1Ch]
  int v11; // [sp+4h] [bp-18h]

  v1 = *(v0 + 84);
  v2 = v1[1];
  if ( v2 & 0x80 )
  {
    v8 = 1;
    do
    {
      v9 = 1;
      do
      {
        result = sub_3007880(v9, v8, v1);
        if ( !v7 )
        {
          sub_30078E0(v9, v8);
          sub_30075FC(v9, v8, v1);
          result = sub_3007708(v9, v8, v1);
        }
        ++v9;
      }
      while ( v9 <= 6 );
      ++v8;
    }
    while ( v8 <= 3 );
  }
  else
  {
    v3 = *(off_30075F8 + v2);
    v4 = off_300789C(v1[4], v1[5]);
    while ( 1 )
    {
      result = *v3;
      if ( result == 127 )
        break;
      v10 = result * v4 + v1[10];
      v11 = v3[1] + v1[11];
      off_30078A0();
      if ( !v7 )
      {
        sub_3007880(v10, v11, v6);
        sub_30078E0(v10, v11);
        sub_30075FC(v10, v11, v1);
        sub_3007708(v10, v11, v1);
      }
      v3 += 2;
    }
  }
  return result;
}


// 0x30075fc
int __fastcall sub_30075FC(int a1, int a2, int a3)
{
  int v3; // r10
  int result; // r0
  char v5; // zf
  int v6; // r6
  int v7; // r7
  unsigned __int8 v8; // cf
  int v9; // r1
  int v10; // [sp+0h] [bp-20h]
  int v11; // [sp+4h] [bp-1Ch]
  int v12; // [sp+8h] [bp-18h]

  v10 = a1;
  v11 = a2;
  v12 = a3;
  off_30078A4();
  result = v10;
  if ( v5 )
  {
    result = 4 * (v10 + 8 * v11);
    v6 = *(v3 + 48);
    v7 = *(off_300764C + result);
    while ( 1 )
    {
      v8 = __CFSHL__(v7, 1);
      v7 *= 2;
      if ( v8 )
      {
        result = *(v12 + 104);
        v9 = *(v6 + 68);
        if ( !(result & v9) )
        {
          *(v12 + 104) = result | v9;
          *(v6 + 104) |= *(v12 + 68);
          sub_3007650(v12, v6);
          result = sub_3007650(v6, v12);
        }
      }
      else if ( !v7 )
      {
        return result;
      }
      v6 += 168;
    }
  }
  return result;
}


// 0x3007650
int __fastcall sub_3007650(int result, int a2)
{
  int v2; // r6
  int v3; // r7

  if ( *(result + 52) & *(a2 + 48) )
  {
    v2 = result;
    v3 = a2;
    sub_3007218(result, a2);
    result = sub_3007692(v2, v3);
  }
  return result;
}


// 0x300766c
int __fastcall sub_300766C(int a1, int a2)
{
  int v2; // r4
  int v3; // r0
  int result; // r0

  v2 = a2;
  v3 = sub_3007958(*(a1 + 10), *(a1 + 11))[2];
  if ( *(v2 + 2) != 1 || v3 != 6 )
    result = 0;
  else
    result = *(v2 + 46);
  return result;
}


// 0x3007692
int __fastcall sub_3007692(int a1, int a2)
{
  int v2; // r6
  int v3; // r7
  int result; // r0
  char v5; // zf
  int v6; // r3
  int v7; // r2

  v2 = a1;
  v3 = a2;
  result = off_30078A8();
  if ( v5 || *(v2 + 60) & *byte_30078AC || *(v3 + 48) & *&byte_30078AC[4] )
  {
    result = *(v3 + 60);
    v6 = *(v2 + 48);
    if ( (!(result & 0x20) || v6 & 0x80) && (!(*(v2 + 60) & 0x20) || *(v3 + 48) & 0x80) )
    {
      *(v2 + 108) |= *(v3 + 48);
      *(v2 + 119) |= *(v3 + 25);
      v7 = 2 * *(v3 + 2) + 148;
      *(v2 + v7) += *(v3 + 46);
      result = sub_300766C(v2, v3);
      *(v2 + 148) += result;
    }
  }
  return result;
}


// 0x3007708
int __fastcall sub_3007708(int a1, int a2, int a3)
{
  bool v3; // zf
  int result; // r0
  int v5; // [sp+0h] [bp-1Ch]
  int v6; // [sp+4h] [bp-18h]
  int v7; // [sp+8h] [bp-14h]

  v5 = a1;
  v6 = a2;
  v7 = a3;
  v3 = off_30078B4() == 0;
  result = v5;
  if ( v3 )
  {
    result = sub_3007958(v5, v6);
    if ( result )
    {
      if ( !(*(v7 + 48) & dword_3007778) )
      {
        result = *(result + 2);
        if ( result == 6 )
        {
          result = *(v7 + 2);
          if ( result == 1 )
            result = sub_30079A4(v5, v6, 2);
        }
        else if ( result == 8 )
        {
          result = *(v7 + 2);
          if ( result == 2 )
            result = sub_30079A4(v5, v6, 2);
        }
        else if ( result >= 9 && result <= 12 )
        {
          result = *(v7 + 2);
          if ( result == 4 )
            result = sub_30079A4(v5, v6, 2);
        }
      }
    }
  }
  return result;
}


// 0x300777c
void __fastcall sub_300777C(unsigned __int8 *a1)
{
  int v1; // r8
  unsigned __int8 *v2; // r5
  int v3; // r1
  char *v4; // r4
  int v5; // r6
  int v6; // r0
  int v7; // r7
  int v8; // r8
  char v9; // zf
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r7
  int v14; // r6
  int v15; // [sp-8h] [bp-20h]
  int v16; // [sp-4h] [bp-1Ch]

  v2 = a1;
  v3 = a1[1];
  if ( v3 & 0x80 )
  {
    v10 = 8 * v3 & 0x3FF;
    v11 = *&(*off_3007824)[v10];
    v12 = *&(*off_3007824)[v10 + 4];
    v13 = 1;
    do
    {
      v14 = 1;
      do
      {
        v15 = v11;
        v16 = v12;
        if ( off_30078C0(v14, v13) )
        {
          sub_3007868(v14, v13, v2);
          sub_30078E0(v13, v1);
        }
        v11 = v15;
        v12 = v16;
        ++v14;
      }
      while ( v14 <= 6 );
      ++v13;
    }
    while ( v13 <= 3 );
  }
  else
  {
    v4 = *(off_3007820 + v3);
    v5 = off_30078B8(a1[4], a1[5]);
    while ( 1 )
    {
      v6 = *v4;
      if ( v6 == 127 )
        break;
      v7 = v6 * v5 + v2[10];
      v8 = v4[1] + v2[11];
      off_30078BC();
      if ( !v9 )
      {
        sub_3007868(v7, v8, v2);
        sub_30078E0(v7, v8);
      }
      v4 += 2;
    }
  }
}


// 0x3007828
int __fastcall sub_3007828(unsigned __int8 *a1)
{
  unsigned __int8 *v1; // r5
  char *v2; // r4
  int v3; // r6
  int result; // r0

  v1 = a1;
  v2 = *(off_3007864 + a1[1]);
  v3 = off_30078C4(a1[4], a1[5]);
  while ( 1 )
  {
    result = *v2;
    if ( result == 127 )
      break;
    sub_3007880(result * v3 + v1[10], v2[1] + v1[11], v1);
    v2 += 2;
  }
  return result;
}


// 0x3007868
int __fastcall sub_3007868(int a1, int a2, int a3)
{
  int result; // r0

  result = 4 * (a1 + 8 * a2);
  *(off_300787C + result) |= *(a3 + 68);
  return result;
}


// 0x3007880
int __fastcall sub_3007880(int a1, int a2, int a3)
{
  int *v3; // r3
  int result; // r0

  v3 = (off_3007898 + 4 * (a1 + 8 * a2));
  result = *v3;
  *v3 &= ~*(a3 + 68);
  return result;
}


// 0x30078c8
char *sub_30078C8()
{
  int v0; // r5
  int v1; // r4
  char *result; // r0
  unsigned __int8 v3; // vf

  v0 = 4;
  do
  {
    v1 = 7;
    do
    {
      result = sub_30078E0(v1, v0);
      v3 = __OFSUB__(v1--, 1);
    }
    while ( !(((v1 < 0) ^ v3) | (v1 == 0)) );
    v3 = __OFSUB__(v0--, 1);
  }
  while ( !(((v0 < 0) ^ v3) | (v0 == 0)) );
  return result;
}


// 0x30078e0
char *__fastcall sub_30078E0(int a1, int a2)
{
  int v2; // r4
  int v3; // r5
  char *result; // r0
  int v5; // r1
  int v6; // r3
  int v7; // r2
  int v8; // r1
  signed int v9; // r2
  char *v10; // r7
  int v11; // r6

  v2 = a1;
  v3 = a2;
  result = sub_3007958(a1, a2);
  if ( result )
  {
    v5 = result[2];
    result[6] = v5;
    v6 = *&(*off_3007920)[2 * v5];
    v7 = result[3];
    result[7] = v7;
    v8 = v5 | v6 | 32 * v7;
    v9 = *(result + 7);
    if ( v9 )
      v9 = 128;
    v10 = result;
    v11 = v8 | v9;
    result = sub_3007978(v2, v3);
    *(v10 + 5) = v11 | result;
  }
  return result;
}


// 0x3007958
char *__fastcall sub_3007958(int a1, int a2)
{
  char *result; // r0

  if ( (a1 - 1) >= 6 || (a2 - 1) >= 3 )
    result = 0;
  else
    result = &off_3007974[32 * (8 * a2 + a1)];
  return result;
}


// 0x3007978
int __fastcall sub_3007978(int a1, int a2)
{
  int v2; // r10
  int v3; // r2
  int v4; // r1
  int result; // r0
  unsigned __int8 v6; // cf

  v3 = *(off_30079A0 + a1 + 8 * a2);
  v4 = *(v2 + 48);
  result = 0;
  while ( 1 )
  {
    v6 = __CFSHL__(v3, 1);
    v3 *= 2;
    if ( v6 )
    {
      result |= *(v4 + 48) >> 16 << 16;
      goto LABEL_6;
    }
    if ( !v3 )
      return result;
LABEL_6:
    v4 += 168;
  }
}


// 0x30079a4
char *__fastcall sub_30079A4(int a1, int a2, signed int a3)
{
  int v3; // r4
  int v4; // r5
  signed int v5; // r6
  char *result; // r0

  v3 = a1;
  v4 = a2;
  v5 = a3;
  result = sub_3007958(a1, a2);
  if ( result[2] )
  {
    result[2] = v5;
    if ( v5 >= 9 && v5 <= 12 )
      *(result + 9) = *byte_30079D0;
    result = sub_30078E0(v3, v4);
  }
  return result;
}


