// 0x80595b8
char (*sub_80595B8())[8]
{
  int v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r1
  int v4; // r2
  int v5; // r3
  char (*result)[8]; // r0

  *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_8059294[*(v0 + 5)];
  sub_803037C(*(v0 + 4), *(v0 + 5));
  sub_8030AA4(*(v0 + 4), *(v0 + 5));
  v2 = *(v0 + 5);
  sub_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
  sub_8030472();
  sub_80028D4(byte_2037800, v3, v4, v5);
  sub_8002906(*(&off_8059624 + *(v0 + 5)));
  chatbox_uncomp_803FD08();
  sub_80596C8();
  result = off_8059DE8[*(v0 + 5)];
  *(v0 + 100) = result;
  return result;
}


// 0x8059664
int __fastcall sub_8059664(int a1, int a2)
{
  return sub_8002354(*(&off_8059678 + a2));
}


// 0x80596c8
int sub_80596C8()
{
  int v0; // r10

  return sub_8003570(off_80596E0[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


