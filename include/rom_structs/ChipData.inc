
	.macro chip_data_struct codes, attack_element, chip_rarity, chip_element, library_type, mb, effect_flags, stamina_damage_counter_frames, attack_family, attack_subfamily, dark_soul_usage, unk_0e, lock_on_enable, attack_param_1, attack_param_2, attack_param_3, attack_param_4, lockout_frames, library_num, library_flags, lock_on_type, alphabet_sort_pos, attack_power, id_sort_pos, chip_gate_usage_limit, dark_chip_id, chip_icon_ptr, chip_image_ptr, chip_palette_ptr
    // type: struct ChipData
	init_rom_struct chip_data_struct
	// todo use u8_arr
	u32 Codes, \codes // loc=0x0
	u8 AttackElement, \attack_element // loc=0x4
	u8 Rarity, \chip_rarity // loc=0x5
	u8 ChipElement, \chip_element // loc=0x6
	u8 LibraryType, \library_type // loc=0x7
	u8 MB, \mb // loc=0x8
	u8 EffectFlags, \effect_flags // loc=0x9
	u8 StaminaDamageCounterFrames, \stamina_damage_counter_frames // loc=0xa
	u8 AttackFamily, \attack_family // loc=0xb
	u8 AttackSubFamily, \attack_subfamily // loc=0xc
	u8 DarkSoulUsage, \dark_soul_usage // loc=0xd
	u8 Unk_0e, \unk_0e // loc=0xe
	u8 LockOnEnable, \lock_on_enable // loc=0xf
	u8 AttackParam1, \attack_param_1 // loc=0x10
	u8 AttackParam2, \attack_param_2 // loc=0x11
	u8 AttackParam3, \attack_param_3 // loc=0x12
	u8 AttackParam4, \attack_param_4 // loc=0x13
	u8 LockoutFrames, \lockout_frames // loc=0x14
	u8 LibraryNum, \library_num // loc=0x15
	u8 LibraryFlags, \library_flags // loc=0x16
	u8 LockOnType, \lock_on_type // loc=0x17
	u16 AlphabetSortPos, \alphabet_sort_pos // loc=0x18
	u16 AttackPower, \attack_power // loc=0x1a
	u16 IDSortPos, \id_sort_pos // loc=0x1c
	u8 ChipGateUsageLimit, \chip_gate_usage_limit // loc=0x1e
	u8 DarkChipID, \dark_chip_id // loc=0x1f
	u32 ChipIconPtr, \chip_icon_ptr // loc=0x20
	u32 ChipImagePtr, \chip_image_ptr // loc=0x24
	u32 ChipPalettePtr, \chip_palette_ptr // loc=0x28
	u0 Size // loc=0x2c
	.endm

	def_rom_struct_offsets chip_data_struct, oChipData
