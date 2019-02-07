// 0x807a8e0
int sub_807A8E0()
{
  int v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r0

  *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8079F74 + *(v0 + 5));
  sub_807A9CC();
  sub_803037C(*(v0 + 4), *(v0 + 5));
  sub_8030AA4(*(v0 + 4), *(v0 + 5));
  v2 = *(v0 + 5);
  sub_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
  sub_8030472();
  sub_80028D4(byte_2037800, v3, v4, v5);
  sub_8002906(off_807A944[*(v0 + 5)]);
  v6 = chatbox_uncomp_803FD08();
  sub_807AAD6(v6);
  return sub_8034FB8();
}


// 0x807a974
int __fastcall sub_807A974(int a1, int a2)
{
  return sub_8002354(off_807A988[a2]);
}


// 0x807a9cc
void sub_807A9CC()
{
  int v0; // r10
  int v1; // r5
  void **v2; // r7
  __int16 v3; // r0

  v1 = *(v0 + oToolkit_GameStatePtr);
  v2 = &off_807AA34 + 4 * *(v1 + oGameState_MapNumber);
  sub_800195C(*v2, v2[1], v2[2]);
  v3 = sub_8001780();
  sub_8001778(v3 | v2[3]);
  sub_80304E8(off_807AA68[*(v1 + oGameState_MapNumber)]);
}


// 0x807a9fe
int sub_807A9FE()
{
  int v0; // r10
  int v1; // r5
  void **v2; // r7
  __int16 v3; // r0

  v1 = *(v0 + oToolkit_GameStatePtr);
  v2 = &off_807AA34 + 4 * *(v1 + oGameState_MapNumber);
  sub_800195C(*v2, v2[1], v2[2]);
  v3 = sub_8001780();
  sub_8001778(v3 | v2[3]);
  return sub_8030540(off_807AA68[*(v1 + oGameState_MapNumber)]);
}


// 0x807aaac
int sub_807AAAC()
{
  int v0; // r10

  return (*(&off_807AAC4 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x807aad0
void nullsub_81()
{
  ;
}


// 0x807aad2
void nullsub_82()
{
  ;
}


// 0x807aad4
void nullsub_83()
{
  ;
}


// 0x807aad6
int sub_807AAD6()
{
  int v0; // r10

  return sub_8003570(pt_807AAF0[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


