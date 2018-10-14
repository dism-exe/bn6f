#ifndef CONSTANTS_SECTIONS_0_TO_4_H
#define CONSTANTS_SECTIONS_0_TO_4_H

// typedef struct {
    
// } Section;

/**
* Assuming the sprite sections pointed by pSpriteListSections have not changed.
* 0x08031CEC is the first section. The sections appear to be contiguous. 
* TODO: The list may need to be modified to include sections instead!
* this has a size of 0x100. It includes the first 4 to 5 sections.
*/
#define isL_Megaman             0x00
#define isL_Heatbeast           0x01
#define isL_Elecbeast           0x02
#define isL_Slashbeast          0x03
#define isL_Killerbeast         0x04
#define isL_Chargebeast         0x05
#define isL_Spoutbeast          0x06
#define isLomahawkbeast       0x07
#define isLengubeast          0x08
#define isL_Groundbeast         0x09
#define isL_Dustbeast           0x0A
#define isL_GBeast              0x0B
#define isL_FBeast              0x0C
#define isL_WhiteDot0            0x0D
#define isL_WhiteDot1            0x0E
#define isL_Mettaur             0x0F
#define isL_Piranah             0x10
#define isL_Heady_Body          0x11
#define isL_Swordy              0x12
#define isL_KillerEye           0x13
#define isL_Quaker              0x14
#define isL_Catack              0x15
#define isL_Champy              0x16
#define isL_WindBox             0x17
#define isLrumpy              0x18
#define isL_OldStove            0x19
#define isL_HauntedCandle       0x1A
#define isL_Kettle              0x1B
#define isL_Puffy               0x1C
#define isL_StarFish            0x1D
#define isL_DragonHead          0x1E
#define isL_ScareCrow           0x1F
#define isL_PulseBulb           0x20
#define isL_BigHat              0x21
#define isL_BombCorn            0x22
#define isL_Shrubby             0x23
#define isL_HoneyBomber         0x24
#define isL_Gunner              0x25
#define isL_FighterPlane        0x26
#define isL_DarkMech            0x27
#define isL_SnakeArm            0x28
#define isL_Armadillo           0x29
#define isL_Cragger             0x2A
#define isL_Nightmare           0x2B
#define isL_WhiteDot2            0x2C
#define isLomahawkMiniGame	0x2D // Totem(TomahawkMiniGame)
#define isL_WhiteDot3            0x2E
#define isL_Heatman             0x2F
#define isL_Elecman             0x30
#define isL_Slashman            0x31
#define isL_Killerman           0x32
#define isL_Chargeman           0x33
#define isL_Spoutman            0x34
#define isLomahawkman         0x35
#define isLenguman            0x36
#define isL_Groundman           0x37
#define isL_Dustman             0x38
#define isL_Protoman            0x39
#define isL_Blastman            0x3A
#define isL_Diveman             0x3B
#define isL_Circusman           0x3C
#define isL_Judgeman            0x3D
#define isL_Elementman          0x3E
#define isL_WhiteDot4			 0x3F // (PresumablyHackJackinJapaneseVersion)
#define isL_Colonel             0x40
#define isL_Bass_NoCape         0x41
#define isL_Gregar_G			0x42 // Gregar(GregarVersion)
#define isL_Falzar_F			0x43 // Falzar(FalzarVersion)
#define isL_WhiteDot5            0x44
#define isL_CrazySwordGuy       0x45
#define isL_Nothing 			0x46 // (freezesgame)
#define isL_Bombs               0x47
#define isL_Guns                0x48
#define isL_Heatcross           0x49
#define isL_BeastOut            0x4A
#define isL_Nothing_glitchy	    0x4B // Glitchy
#define isL_Aura                0x4C
#define isLankCannon          0x4D
#define isL_LockOnTarget        0x4E // (BeastOut)
#define isL_F_BeastWings        0x4F // (............thiscouldbehelpful)
#define isL_YoYoBlade           0x50
#define isL_YoYoLauncher        0x51
#define isLomahawkCross       0x52
#define isL_Flame_sideways      0x53
#define isL_WhiteDot6            0x54
#define isL_SpoutCCSC		 	0x55 // SpoutCrossChargeShotCannon
#define isL_DustCross           0x56
#define isL_RecoveryLines       0x57
#define isL_DoublePointSphere   0x58
#define isL_WideSlash           0x59
#define isL_LifeSwordSlash      0x5A
#define isLornadoArmAttachment 0x5B
#define isLornado             0x5C
#define isL_AirShot				0x5D // (armAttachmentthatshoots)
#define isL_SpreaderCannon      0x5E
#define isL_Bubbles             0x5F
#define isL_Shields             0x60
#define isL_GregarBreathFlame   0x61
#define isL_VulcanArmAttachment 0x62
#define isL_Spoutcross          0x63
#define isL_FlameArmlauncher    0x64
#define isL_BubbleWrap          0x65
#define isL_F_BeastFeather      0x66
#define isL_Mine                0x67
#define isLimeBomb            0x68
#define isL_BlackBomb           0x69
#define isL_AquaTower           0x6A
#define isL_WhiteDot7            0x6B
#define isL_WindRack            0x6C
#define isL_WindRackSlash       0x6D
#define isL_SomeKindofGun       0x6E // SomeKindofGun.....HELP?
#define isLrainArrowGun       0x6F
#define isL_CornShot            0x70
#define isL_Snake               0x71
#define isL_Holeinthefloor      0x72 // ?
#define isL_Wind                0x73
#define isL_Shuriken            0x74
#define isL_Anubis              0x75
#define isL_Meteor              0x76
#define isL_WhiteDot8            0x77
#define isL_CrackShot           0x78
#define isL_VooDooDoll          0x79
#define isL_Guardian            0x7A
#define isL_FireSword           0x7B
#define isL_AquaSword           0x7C
#define isL_ElecSword           0x7D
#define isL_WhiteDot9            0x7E
#define isL_WhiteDot10            0x7F
#define isL_GunSol              0x80
#define isL_GunSolSpreadBeam    0x81
#define isL_Barrier             0x82
#define isL_WhiteDot11            0x83
#define isL_WhiteDot12            0x84
#define isL_Chip_MachineGun     0x85 // (Chip)
#define isL_AirSpin             0x86
#define isL_WhiteDot13            0x87
#define isL_GospelCannon        0x88
#define isL_Lance               0x89
#define isL_DuoFist_BigHook     0x8A
#define isL_WhiteDot14            0x8B
#define isL_GunSolEXSpreadBeam  0x8C
#define isL_BlackSpot           0x8D
#define isL_WhiteDot15            0x8E
#define isL_WhiteDot16            0x8F
#define isL_Beat                0x90
#define isLango               0x91
#define isLhingTangoGives     0x92
#define isL_WhiteDot17            0x93
#define isL_BatCannon           0x94
#define isL_Roll                0x95
#define isL_Eleccross           0x96
#define isL_Slashcross          0x97
#define isLengucross          0x98
#define isL_Erasecross          0x99
#define isL_Chargecross         0x9A
#define isL_WhiteDot18            0x9B
#define isL_WhiteDot19            0x9C
#define isL_GroundmanDrill      0x9D
#define isL_WideShotLauncher    0x9E
#define isL_WhiteDot20            0x9F
#define isL_WhiteDot21            0xA0
#define isLengucrossArm       0xA1
#define isL_RollingLogLauncher  0xA2
#define isL_RiskyHoneyLauncher  0xA3
#define isL_ElecPulseLauncher   0xA4
#define isL_DollThunderLauncher 0xA5
#define isL_MagCoilLauncher     0xA6
#define isL_DuoFist_MeteorKnuckle 0xA7
#define isL_Groundcross         0xA8
#define isL_RedSun_BlueMoon     0xA9
#define isL_WhiteDot22            0xAA
#define isL_WhiteDot23            0xAB
#define isL_FalzarFeatherStormFeather 0xAC
#define isL_WhiteDot24            0xAD
#define isL_MetalCube           0xAE
#define isL_RockCubeChunk       0xAF
#define isL_FloorFlame          0xB0
#define isL_Shockwave           0xB1
#define isL_WhiteDot25            0xB2
#define isL_Rock_Gregar         0xB3 // (GregarDropsthese)
#define isL_AirHockey           0xB4
#define isL_Boomer              0xB5
#define isL_Rock_obstacle       0xB6
#define isL_GregarHead          0xB7
#define isLankCannonExplosion 0xB8
#define isLankCannonGunpowder 0xB9
#define isL_InBattleGMD         0xBA
#define isL_HellzRolling        0xBB
#define isL_DeltaRay            0xBC
#define isL_Sparkle             0xBD
#define isL_BloodRain           0xBE
#define isL_ElecmanElectricityCharge 0xBF
#define isL_Elecman_DollThunderLightningstrike_Horizontal 0xC0
#define isL_ElectricityConductor 0xC1
#define isL_WhiteDot26            0xC2
#define isL_WhiteDot27            0xC3
#define isLhunderBall         0xC4
#define isL_AquaNeedle          0xC5
#define isL_WhiteDot28            0xC6
#define isL_HeatmanFireHands    0xC7
#define isL_HeatmanFireWave     0xC8
#define isL_HeatmanBackBurner   0xC9
#define isL_Unknown00             0xCA
#define isL_ColonelArmy         0xCB
#define isL_WhiteDot29            0xCC
#define isL_AquaHose            0xCD
#define isL_HoseWater           0xCE
#define isL_SpoutmanSpout       0xCF
#define isL_SpoutmanSprinkler   0xD0
#define isL_SpoutmanBubblethrowhand 0xD1
#define isL_Unknown01             0xD2
#define isL_StarfishBubble      0xD3
#define isL_Smallexplosiononground 0xD4 // (couldbebassrake)
#define isL_MachineGunTarget    0xD5
#define isL_MachineGunFire      0xD6
#define isLomahawkmantotempole 0xD7
#define isLomahawmanEagle     0xD8
#define isLomahawkthrow       0xD9
#define isL_EagleTomahawkShockwave 0xDA
#define isL_Unknown02             0xDB
#define isL_SpoutbeastAquaWhirl 0xDC
#define isL_CrossDivide         0xDD
#define isL_CraggerRightFist    0xDE
#define isL_Bees_RiskyHoney     0xDF
#define isL_ElecBreath          0xE0
#define isL_WhiteDot30            0xE1
#define isL_RollingLog          0xE2
#define isL_WhiteDot31            0xE3
#define isL_WhiteDot32            0xE4
#define isL_WideShotcomingoutoflauncher 0xE5 // ?
#define isL_Slash               0xE6
#define isL_Kunai               0xE7
#define isL_WhiteDot33            0xE8
#define isL_Slash_different     0xE9 // (different)
#define isL_Moonblade           0xEA
#define isL_Greyspinningtriangles 0xEB
#define isL_WhiteDot34            0xEC
#define isL_WhiteDot35            0xED
#define isL_ElecPulse           0xEE
#define isL_SlashX              0xEF
#define isL_SpoutmanLargeSpout  0xD0
#define isLenguTornado        0xF0
#define isL_MagCoil             0xF1
#define isL_FalzarTornado       0xF2
#define isL_MagnumCursor        0xF3
#define isL_NumberBall          0xF4
#define isL_BlizzardBall        0xF5
#define isL_SnakeArmsandpit     0xF6
#define isL_WhiteDot36            0xF7
#define isL_KillermanCursor     0xF8
#define isL_KillermanGhost      0xF9 // (Useful)
#define isL_KillerCrossLaserEyeBeam 0xFA // (IThink)
#define isL_KillerTail          0xFB
#define isL_GroundmanTreads     0xFC // (Useful)
#define isL_GroundmanRocketPack 0xFD
#define isL_GreenDot            0xFE
#define isL_KillerBeam          0xFF

#endif // CONSTANTS_SECTIONS_0_TO_4_H