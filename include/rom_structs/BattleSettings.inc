//! type: BattleSettings

	.macro battle_settings_struct battlefield, unk_01, music, battle_type, background, battle_number, battle_field_sides_modifier, unk_07, unk_opt_settings, enemy_setup_arr_ptr
	init_rom_struct battle_settings_struct

	u8 Battlefield, \battlefield // loc=0x0
	u8 Unk_01, \unk_01 // loc=0x1
	u8 Music, \music // loc=0x2
	u8 BattleType, \battle_type // loc=0x3
	u8 Background, \background // loc=0x4
	u8 BattleNumber, \battle_number // loc=0x5
	u8 BattleFieldSidesModifier, \battle_field_sides_modifier // loc=0x6

	u8 Unk_07, \unk_07 // loc=0x7

	u32 UnkOptSettings, \unk_opt_settings // loc=0x8

  // SpawnBattleObjectUsingBattleEntityConfig_8007368 indicates this is terminated by 0xF0, otherwise it's an array [u8; 4]. 
  // *const MagicStop8<0xF0, [EnemySetupPtr]>
	// This really handles more than enemy setup though. Including MegaMan, mystery data, etc.
  u32 EnemySetupArrPtr, \enemy_setup_arr_ptr // loc=0xc

	u0 Size // loc=0x10
	.endm

	def_rom_struct_offsets battle_settings_struct, oBattleSettings
