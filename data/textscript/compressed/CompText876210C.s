	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876210C::
	.word 0x39300

	text_archive_start

	def_text_script CompText876210C_unk0
	ts_msg_open
	ts_jump 10
	ts_end

	def_text_script CompText876210C_unk1
	ts_msg_open
	.string "The road will open\n"
	.string "for those with the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "beast's seal and\n"
	.string "100 S..."
	ts_key_wait 0x0
	ts_check_library_standard 0x64, 0xC8, 0xFF, 0x9
	ts_check_flag 0x0, 0xE, 0xFF, 0x9
	ts_clear_msg
	.string "Confirmed..."
	ts_key_wait 0x0
	ts_flag_clear 0xDA, 0xC
	ts_flag_set 0x84, 0x0
	ts_end

	def_text_script CompText876210C_unk2
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "Undernet2 on it."
	ts_key_wait 0x0
	ts_start_map 0xC
	ts_end

	def_text_script CompText876210C_unk3
	ts_check_chapter 0x80, 0x80, 0xF, 0xFF
	ts_check_chapter 0x54, 0x57, 0xF, 0xFF
	ts_check_chapter 0x60, 0x60, 0xF, 0xFF
	ts_jump 14

	def_text_script CompText876210C_unk4
	ts_check_flag 0x8D, 0xC, 0x6, 0xFF
	ts_check_flag 0x89, 0xC, 0x7, 0xFF
	ts_check_flag 0x85, 0xC, 0x8, 0xFF
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Choo,choo! We'll be\n"
	.string "departing shortly.\n"
	.string "Are you ready?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x5, 0xFF
	ts_flag_set 0x97, 0xC
	ts_end

	def_text_script CompText876210C_unk5
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "We'll be departing\n"
	.string "as soon as you're\n"
	.string "ready!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876210C_unk6
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Jack me out,Lan! The\n"
	.string "final exam is next\n"
	.string "on the schedule!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876210C_unk7
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "The next stop is\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876210C_unk8
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "The next stop is\n"
	.string "Sky Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876210C_unk9
	ts_end

	def_text_script CompText876210C_unk10
	ts_msg_open
	.string "COUNT THE NUMBER OF\n"
	.string "FLAMES OF HATRED IN\n"
	.string "THIS AREA..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "ENTER THE PASSWORD"
	ts_key_wait 0x0
	ts_clear_msg
	ts_option 0x1, 0x31, 0x0
	ts_space 0x1
	ts_menu_option_number_trader 0x0
	.string "0"
	ts_option 0x1, 0x2, 0x11
	ts_space 0x1
	ts_menu_option_number_trader 0x1
	.string "0"
	ts_option 0x1, 0x13, 0x22
	ts_space 0x1
	ts_menu_option_number_trader 0x2
	.string "0    "
	ts_option 0x1, 0x20, 0x33
	ts_space 0x1
	.string " OK\n"
	.string "(UP/DOWN:Number\n"
	.string " LEFT/RIGHT:Cursor)"
	ts_menu_select_password 0xB, 0xC, 0xD, 0x2
	ts_end

	def_text_script CompText876210C_unk11
	ts_msg_open
	.string "... YOU MAY PASS."
	ts_key_wait 0x0
	ts_flag_clear 0xD9, 0xC
	ts_end

	def_text_script CompText876210C_unk12
	ts_msg_open
	.string "... TRY AGAIN!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876210C_unk13
	ts_msg_open
	.string "... COME AGAIN!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876210C_unk14
	ts_msg_open
	.string "It's a BBS..."
	ts_key_wait 0x0
	ts_start_b_b_s 0x4
	ts_end

	def_text_script CompText876210C_unk15
	ts_check_navi_all 0xFF, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0xFF
	ts_jump 14

	def_text_script CompText876210C_unk16
	ts_check_flag 0x8, 0xE, 0xE, 0xFF
	ts_msg_open
	.string "It's a BBS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's something\n"
	.string "written here,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but you can't read\n"
	.string "what it says..."
	ts_key_wait 0x0
	ts_end

	