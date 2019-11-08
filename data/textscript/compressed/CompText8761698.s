	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8761698::
	.word 0x27900

	text_archive_start

	def_text_script CompText8761698_unk0
	ts_jump 5

	def_text_script CompText8761698_unk1
	ts_check_navi_all 0xFF, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9
	ts_check_flag 0xC7, 0xC, 0x3, 0xFF
	ts_msg_open
	.string "YOU NEED A PASSWORD\n"
	.string "TO OPEN THIS\n"
	.string "CYBERDOOR."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8761698_unk2
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "Undernet1 on it."
	ts_key_wait 0x0
	ts_start_map 0xB
	ts_end

	def_text_script CompText8761698_unk3
	ts_msg_open
	.string "YOU NEED A PASSWORD\n"
	.string "TO OPEN THIS\n"
	.string "CYBERDOOR."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Um,the password\n"
	.string "is... Uh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "M-Moneyhats..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0xCA, 0x0
	.string "... *beep,beep!*"
	ts_wait 0x28, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	.string "PASSWORD CONFIRMED."
	ts_key_wait 0x0
	ts_flag_clear 0xD8, 0xC
	ts_end

	def_text_script CompText8761698_unk4
	ts_msg_open
	.string "Statues based on\n"
	.string "Gregar and Falzar..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is an ominous\n"
	.string "power coming from\n"
	.string "them..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8761698_unk5
	ts_msg_open
	.string "ENTER PASSWORD"
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
	ts_menu_select_password 0x6, 0x7, 0x8, 0x3
	ts_end

	def_text_script CompText8761698_unk6
	ts_msg_open
	.string "... YOU MAY PASS."
	ts_key_wait 0x0
	ts_flag_clear 0xD7, 0xC
	ts_end

	def_text_script CompText8761698_unk7
	ts_msg_open
	.string "... TRY AGAIN!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8761698_unk8
	ts_msg_open
	.string "... COME AGAIN!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8761698_unk9
	ts_msg_open
	.string "The cyberdoor is\n"
	.string "blocking the way..."
	ts_key_wait 0x0
	ts_end

	