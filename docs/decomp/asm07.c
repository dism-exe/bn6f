// 0x805df08
char (*sub_805DF08())[8]
{
  int v0; // r5
  int v1; // r10
  int v2; // r4
  int v3; // r1
  int v4; // r2
  int v5; // r3
  char (*result)[8]; // r0

  *(*(v1 + oToolkit_Unk2011bb0_Ptr) + 20) = off_805DD24[*(v0 + 5)];
  sub_803037C(*(v0 + 4), *(v0 + 5));
  sub_8030AA4(*(v0 + 4), *(v0 + 5));
  v2 = *(v0 + 5);
  sub_802FF4C(*(v0 + 36), *(v0 + 40), *(v0 + 44), *(v0 + 4));
  sub_8030472();
  sub_80028D4(byte_2037800, v3, v4, v5);
  sub_8002906(*(&off_805DF74 + *(v0 + 5)));
  chatbox_uncomp_803FD08();
  sub_805DFF0();
  result = off_805E1FC[*(v0 + 5)];
  *(v0 + 100) = result;
  return result;
}


// 0x805dfa2
int __fastcall sub_805DFA2(int a1, int a2)
{
  return sub_8002354((&off_805DFB4)[a2]);
}


// 0x805dff0
int sub_805DFF0()
{
  int v0; // r10

  return sub_8003570(pt_805E008[*(*(v0 + oToolkit_GameStatePtr) + oGameState_MapNumber)]);
}


