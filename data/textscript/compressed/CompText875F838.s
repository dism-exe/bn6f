	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875F838::
	.word 0x35A00

	text_archive_start

	def_text_script CompText875F838_unk0
	ts_check_chapter 0x24, 0x24, 0x5, 0xFF
	ts_jump 6

	def_text_script CompText875F838_unk1
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "SeasideArea3 on it."
	ts_key_wait 0x0
	ts_start_map 0x5
	ts_end

	def_text_script CompText875F838_unk2
	ts_end

	def_text_script CompText875F838_unk3
	ts_msg_open
	.string "Cyberwater is\n"
	.string "leaking all over..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875F838_unk4
	ts_msg_open
	.string "The darkness won't\n"
	.string "budge,even with your\n"
	.string "strongest attacks."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe the\n"
	.string "EvilSpirits are\n"
	.string "related somehow..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875F838_unk5
	ts_check_flag 0x34, 0x6, 0x6, 0xFF
	ts_flag_set 0x34, 0x6
	ts_end

	def_text_script CompText875F838_unk6
	ts_msg_open
	.string "The cyberspring\n"
	.string "is gushing with\n"
	.string "water..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "People say this\n"
	.string "water has the power\n"
	.string "to get rid of evil."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875F838_unk7
	ts_check_item07 0x46, 0x1, 0xC, 0xC, 0xFF
	ts_msg_open
	.string "YOU NEED THE\n"
	.string "\""
	ts_print_item 0x46, 0x0
	.string "\" TO OPEN\n"
	.string "THIS DOOR."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875F838_unk8
	ts_check_flag 0x85, 0xC, 0xFF, 0x9
	ts_check_flag 0x89, 0xC, 0xFF, 0xA
	ts_check_flag 0x8D, 0xC, 0xFF, 0xB
	ts_msg_open
	.string "Jack me out,Lan!\n"
	.string "It's finals time!\n"
	.string "Full speed ahead!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875F838_unk9
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "We don't need to be\n"
	.string "at this station,yet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We should go to the\n"
	.string "Undernet2 station\n"
	.string "first!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875F838_unk10
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "We don't need to be\n"
	.string "at this station,yet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We should go to the\n"
	.string "Sky Area2 station\n"
	.string "first!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875F838_unk11
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "We don't need to be\n"
	.string "at this station,yet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We should go to the\n"
	.string "CentralArea3 station\n"
	.string "first!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875F838_unk12
	ts_msg_open
	.string "YOU NEED THE\n"
	.string "\""
	ts_print_item 0x46, 0x0
	.string "\" TO OPEN\n"
	.string "THIS DOOR."
	ts_key_wait 0x0
	ts_clear_msg
	ts_print_current_navi
	.string " used:\n"
	.string "\""
	ts_print_item 0x46, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_flag_clear 0x78, 0x0
	ts_end

	