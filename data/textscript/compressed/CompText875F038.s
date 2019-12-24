	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875F038::
	.word 0x4F500

	text_archive_start

	def_text_script CompText875F038_unk0
	ts_msg_open
	.string "It's a BBS..."
	ts_key_wait any=0x0
	ts_start_b_b_s bbs=0x0
	ts_end

	def_text_script CompText875F038_unk1
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "SeasideArea1 on it."
	ts_key_wait any=0x0
	ts_start_map map=0x3
	ts_end

	def_text_script CompText875F038_unk2
	ts_check_chip [
		chip: 0x18,
		amount: 0x1,
		jumpIfEqual: CompText875F038_unk3_id,
		jumpIfGreater: CompText875F038_unk3_id,
		jumpIfLess: TS_CONTINUE,
	]
	ts_msg_open
	.string "PLEASE PRESENT ME\n"
	.string "WITH PROOF THAT\n"
	.string "YOU HAVE"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CAPTURED ALL THE\n"
	.string "FISH IN THIS AREA"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "FOR ME TO OPEN\n"
	.string "THIS DOOR."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F038_unk3
	ts_msg_open
	.string "PLEASE PRESENT ME\n"
	.string "WITH PROOF THAT\n"
	.string "YOU HAVE"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CAPTURED ALL THE\n"
	.string "FISH IN THIS AREA"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "FOR ME TO OPEN\n"
	.string "THIS DOOR."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 [
		chip: 0x18,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "CONFIRMED."
	ts_key_wait any=0x0
	ts_flag_clear flag=0x31
	ts_end

	def_text_script CompText875F038_unk4
	ts_check_item07 [
		item: 0x44,
		amount: 0x1,
		jumpIfEqual: TS_CONTINUE,
		jumpIfGreater: TS_CONTINUE,
		jumpIfLess: CompText875F038_unk13_id,
	]
	ts_msg_open
	ts_print_current_navi_ow
	.string " used:\n"
	.string "\""
	ts_print_item [
		item: 0x44,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_flag_clear flag=0x75
	ts_end

	def_text_script CompText875F038_unk5
	ts_msg_open
	.string "The darkness won't\n"
	.string "budge,even with your\n"
	.string "strongest attacks."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe the\n"
	.string "EvilSpirits are\n"
	.string "related somehow..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F038_unk6
	ts_clear_msg
	.string " ボ@"

	def_text_script CompText875F038_unk7
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TS_CONTINUE,
		jumpIfElecMan: CompText875F038_unk8_id,
		jumpIfSlashMan: TS_CONTINUE,
		jumpIfEraseMan: CompText875F038_unk9_id,
		jumpIfChargeMan: TS_CONTINUE,
		jumpIfSpoutMan: CompText875F038_unk10_id,
		jumpIfTomahawkMan: TS_CONTINUE,
		jumpIfTenguMan: TS_CONTINUE,
		jumpIfGroundMan: CompText875F038_unk11_id,
		jumpIfDustMan: TS_CONTINUE,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_msg_open
	.string "The cyberwater's\n"
	.string "flow is too strong\n"
	.string "to go against!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F038_unk8
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Hmm,if I pass very\n"
	.string "strong electricity\n"
	.string "through the water..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can split it into\n"
	.string "hydrogen and oxygen!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Elec Power!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xC6
	ts_wait frames=0x1E
	.string "The raging water-\n"
	.string "spout evaporated\n"
	.string "off as steam!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText875F038_unk12_id

	def_text_script CompText875F038_unk9
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Hiyahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My Hex Sickle can\n"
	.string "cut through\n"
	.string "anything!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hiyahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xC7
	ts_wait frames=0x1E
	.string "The Hex Sickle cut\n"
	.string "the waterspout!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText875F038_unk12_id

	def_text_script CompText875F038_unk10
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "If it's got to do\n"
	.string "with water,leave it\n"
	.string "to me,drip!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Water...\n"
	.string "Calm!!\n"
	.string "... drip."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "At SpoutMan's words,\n"
	.string "the waterspout\n"
	.string "calmly disappeared!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText875F038_unk12_id

	def_text_script CompText875F038_unk11
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "All we gotta do is\n"
	.string "dump some dirt on\n"
	.string "the source!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x1BF
	ts_wait frames=0x1E
	.string "GroundMan stopped up\n"
	.string "the water opening!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText875F038_unk12_id

	def_text_script CompText875F038_unk12
	ts_flag_clear flag=0x164
	ts_end

	def_text_script CompText875F038_unk13
	ts_msg_open
	.string "The door is locked\n"
	.string "so you can't get\n"
	.string "through!"
	ts_key_wait any=0x0
	ts_end

	