#ifndef CONSTANTS_NCP_FAMILIES_H
#define CONSTANTS_NPP_FAMILIES_H

typedef enum{
    ncpf_BusterPack             = 0x01,
    ncpf_ChangeBuster           = 0x04,
    ncpf_ChangeChargedBuster    = 0x05,
    ncpf_FirstBarrier           = 0x06,
    ncpf_LeftBMod               = 0x07,
    ncpf_ChngCustomGaugeSpeed   = 0x08,
    ncpf_CustomPlus             = 0x0A,
    ncpf_MegaFolder             = 0x0B,
    ncpf_GigaFolder             = 0x0C,
    ncpf_LinkBattleOnly         = 0x0D,
    ncpf_ChngColorMgmnStatsScrn = 0x10,
    ncpf_PanelsDisappear        = 0x13,
    ncpf_BusterBug              = 0x14,
    ncpf_LvlUpEnemyMovesSpecEff = 0x16,
    ncpf_CrossStart             = 0x17,
    ncpf_InBattleHPBug          = 0x18,
    ncpf_CstmScrnHPBug          = 0x19,
    ncpf_StartBtlWithCertnGltch = 0x1A,
    ncpf_FloatShoes             = 0x1B,
    ncpf_AirShoes               = 0x1C,
    ncpf_UnderShirt             = 0x1D,
    ncpf_SneakRun               = 0x1E,
    ncpf_BugStop                = 0x1F,
    ncpf_BeastOutTimePlus       = 0x21,
    ncpf_SuperArmor             = 0x23,
    ncpf_EmotionBug             = 0x24,
    ncpf_Humor                  = 0x25,
    ncpf_Collect                = 0x26,
    ncpf_ElemEnemyFindStats     = 0x27,
    ncpf_LinkNaviStart          = 0x29,
    ncpf_PresetChipInFirstFold  = 0x2E,
    ncpf_MovingBug_PanelSkip    = 0x31,
    ncpf_Millions               = 0x33,
    ncpf_SlipRunner             = 0x35,
    ncpf_AutoHeal               = 0x36,
    ncpf_UpgradeAllVirusesBy1   = 0x37,
    ncpf_UpgradeAllVirusesBy2   = 0x38,
    ncpf_StartBattleWXLessHP    = 0x3D,
    ncpf_maxCurrHPMinus230      = 0x3E,
    ncpf_maxCurrHPMinus256      = 0x3F,
    ncpf_maxCurrHPMinus230_1    = 0x40,
    ncpf_maxCurrHPMinus256_1    = 0x41,
    ncpf_HealWhenUsingChip      = 0x50,
    ncpf_CstmScrnHPBugLessXHP   = 0x54,
    ncpf_CstmScrnHPBugLess512HP = 0x55,
    ncpf_Poem                   = 0x5F,
    ncpf_ChipShuffle            = 0x60,
    ncpf_NumberOpen             = 0x61,
    ncpf_GetCstmPlusBug         = 0x63,

}NCP_Families;

/*
01 = BusterPack/Attack+/AttackMAX
02 = Speed+/SpeedMAX
03 = Charge+/ChargeMAX
04 = Change Buster
05 = Change Charged Buster
06 = FirstBarrier
07 = Left+B Mod
08 = Change Custom Gauge Speed
0A = Custom Plus
0B = MegaFolder
0C = GigaFolder
0D = Link Battle Only
10 = Change Color of Megaman on Stats Screen
13 = Moving Bug: Panels Disappear(LOL)
14 = Buster Bug
16 = Level Up Enemy Moves with Special Effects
17 = Start in a Cross
18 = In-Battle HP Bug
19 = Custom Screen HP Bug(Like the Dark Chip Effect)
1A = Start Battle With Certain Glitch
1B = FloatShoes
1C = AirShoes
1D = UnderShirt
1E = SneakRun
1F = BugStop
21 = BeastOut Time Plus
23 = SuperArmor
24 = Emotion Bug
25 = Humor
26 = Collect
27 = Out-of-Battle Elemental Enemy Finding Statistics Mods
29 = Start as a Link Navi
2E = Preset Specific Chip in First Folder
31 = Moving Bug(Panel Skip)
33 = Millions
35 = SlipRunner
36 = AutoHeal
37 = Upgrade all viruses by 1 level
38 = Upgrade all viruses by 2 levels
3D = Start battle with X amount less HP
3E = HP -230 from current and acquired max HP
3F = HP -256 from current and acquired max HP
40 = HP -230 from current HP
41 = HP -256 from current HP
50 = Heal when using Chip
54 = Custom Screen HP Bug: Lose X amount of HP
55 = Custom Screen HP Bug: Lose 512 HP (LOL)
5F = Poem
60 = ChipShuffle
61 = NumberOpen
63 = Get Custom Plus Bug
64-FF = No Effect
*/

#endif // CONSTANTS_NCP_FAMILIES_H