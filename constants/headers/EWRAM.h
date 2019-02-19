/**
This file contains a memory map define macros for fixed data/structs
in the 0x2000000 RAM region
*/
#ifndef EWRAM_H
#define EWRAM_H

#include "structs/inttypes.h"
#include "structs/Toolkit/Toolkit.h"
#include "structs/Battle.h"
#include "structs/NPC.h"
#include "structs/reqBBS_GUI.h"

#define timer_2000000 ((u32*)                   0x2000000)
#define reqBBS_requestEntries_list ((u8*)       0x2000290)
#define reqBBS_bxo_2001150 ((u8*)               0x2001150)
#define eGameState ((GameState*)                0x2001B80)
#define sReqBBS_GUI ((reqBBS_GUI*)              0x2005780)
/*
  [DEAD] no xrefs. Last @ 2005810
  Chaud (ACDC), Subship seller guy
*/
#define npc_2005F48 ((NPC*)                     0x2005F48)
#define reqBBS_num_requests_sent ((u8*)         0x20065B0)
/*
  Always in r10
*/
#define eToolkit ((Toolkit*)                     0x20093B0)
#define sCamera ((Camera*)                      0x2009980)
#define sSubmenu ((MenuControl*)                0x2009A30)
#define sChatbox ((ChatBoxPropreties*)          0x2009CD0)
/*
  Note from the past: those are sorta weird
  TODO: check this and see what's up with it
*/
#define pCoords ((u32*)                         0x2009F60)
#define iCurrFrame ((u16*)                      0x200A210)
#define eJoypad ((Joystick*)                  0x200A270)
#define i_joGameSubsysSel ((u8*)                0x200A480)
#define sStartScr ((StartScreen*)               0x200AD10)
#define reqBBS_tile_data ((u8*)                 0x2018204)
#define reqBBS_requestEntries_IDs ((u8*)        0x2023A00)
#define reqBBS_requestNames_textualData ((u8*)  0x2025A04)
#define reqBBS_requestInfo_textOffsets ((u8*)   0x2029A04)
#define reqBBS_dialog_list ((u16[254])          0x2033A04)
/*
  Probably an uncovered struct. pCurrBattle0 (0x020348BC)
  is likely contained within
*/
#define eBattleState (void*)                       0x2034880)
#define eT1BattleObject0 ((Battle*)                   0x203A9B0)
/*
  [DEAD] no xrefs. Last @ 203A9B0
*/
#define eBattleObject1 ((Battle*)                   0x203AA88)
/*
   [DEAD] no xrefs. Last @ 203A9B0
*/
#define eBattleObject2 ((Battle*)                   0x203AB60)
/*
  [DEAD] no xrefs. Last @ 203A9B0
*/
#define eBattleObject3 ((Battle*)                   0x203AC38)

#endif // EWRAM_H
