// 0x8077d00
int sub_8077D00()
{
  int v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r0

  *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = *(&off_8077618 + *(v0 + 5));
  sub_8077DE0();
  sub_803037C(*(v0 + 4), *(v0 + 5));
  sub_8030AA4(*(v0 + 4), *(v0 + 5));
  v2 = *(v0 + 5);
  sub_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
  sub_8030472();
  sub_80028D4(byte_2037800, v3, v4, v5);
  sub_8002906(*(&off_8077D64 + *(v0 + 5)));
  v6 = chatbox_uncomp_803FD08();
  sub_8077E84(v6);
  return sub_8034FB8();
}


// 0x8077d8a
int __fastcall sub_8077D8A(int a1, int a2)
{
  return sub_8002354(off_8077D9C[a2]);
}


// 0x8077de0
void sub_8077DE0()
{
  int v0; // r10
  int v1; // r5
  void **v2; // r7
  __int16 v3; // r0

  v1 = *(v0 + oToolkit_GameStatePtr);
  v2 = &off_8077E18 + 4 * *(v1 + oGameState_MapNumber);
  sub_800195C(*v2, v2[1], v2[2]);
  v3 = sub_8001780();
  sub_8001778(v3 | v2[3]);
  sub_80304E8(off_8077E3C[*(v1 + oGameState_MapNumber)]);
}


// 0x8077e60
int sub_8077E60()
{
  int v0; // r10

  return (*(&off_8077E78 + *(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)))();
}


// 0x8077e80
void nullsub_77()
{
  ;
}


// 0x8077e82
void nullsub_78()
{
  ;
}


// 0x8077e84
int sub_8077E84()
{
  int v0; // r10

  return sub_8003570(pt_8077E9C[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


