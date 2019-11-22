	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875E690::
	.word 0x2D000

	text_archive_start

	def_text_script CompText875E690_unk0
	ts_check_chip 0x83, 0x0, 0x1, 0x3, 0x3, 0xFF
	ts_msg_open
	.string "PLEASE PRESENT\n"
	.string "BATTLECHIP\n"
	.string "\""
	ts_print_chip1 0x83, 0x0
	.string "\"..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875E690_unk1
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "CentralArea1 on it."
	ts_key_wait 0x0
	ts_start_map 0x0
	ts_end

	def_text_script CompText875E690_unk2
	ts_end

	def_text_script CompText875E690_unk3
	ts_msg_open
	.string "PLEASE PRESENT\n"
	.string "BATTLECHIP\n"
	.string "\""
	ts_print_chip1 0x83, 0x0
	.string "\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan showed:\n"
	.string "\""
	ts_print_chip1 0x83, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "BATTLECHIP\n"
	.string "\""
	ts_print_chip1 0x83, 0x0
	.string "\"\n"
	.string "CONFIRMED..."
	ts_key_wait 0x0
	ts_flag_clear 0x6D, 0x4
	ts_end

	def_text_script CompText875E690_unk4
	ts_msg_open
	.string "\"Welcome\n"
	.string "       to the\n"
	.string "            NetCafe\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875E690_unk5
	ts_check_item07 0x60, 0x1, 0xFF, 0xFF, 0x7
	ts_check_navi_all 0xFF, 0x8, 0xB, 0xB, 0xB, 0xB, 0x9, 0xB, 0xB, 0xB, 0xB, 0xB
	ts_msg_open
	.string "MegaMan used:\n"
	.string "\""
	ts_print_item 0x60, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText875E690_unk6
	ts_check_item07 0x44, 0x1, 0xFF, 0xFF, 0xD
	ts_msg_open
	ts_print_current_navi_ow
	.string " used:\n"
	.string "\""
	ts_print_item 0x44, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_flag_clear 0x74, 0x0
	ts_end

	def_text_script CompText875E690_unk7
	ts_msg_open
	.string "A Security Cube that\n"
	.string "protects Cyber\n"
	.string "Academy..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It can't be unlocked\n"
	.string "without its P-Code!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875E690_unk8
	ts_msg_open
	.string "HeatMan used:\n"
	.string "\""
	ts_print_item 0x60, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText875E690_unk9
	ts_msg_open
	.string "SpoutMan used:\n"
	.string "\""
	ts_print_item 0x60, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText875E690_unk10
	ts_flag_clear 0x73, 0x0
	ts_end

	def_text_script CompText875E690_unk11
	ts_end

	def_text_script CompText875E690_unk12
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

	def_text_script CompText875E690_unk13
	ts_msg_open
	.string "The door is sealed\n"
	.string "tight. You can't get\n"
	.string "through it!"
	ts_key_wait 0x0
	ts_end

	