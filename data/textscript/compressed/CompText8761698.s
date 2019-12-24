	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8761698::
	.word 0x27900

	text_archive_start

	def_text_script CompText8761698_unk0
	ts_jump target=5

	def_text_script CompText8761698_unk1
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x9,
		jumpIfElecMan: 0x9,
		jumpIfSlashMan: 0x9,
		jumpIfEraseMan: 0x9,
		jumpIfChargeMan: 0x9,
		jumpIfSpoutMan: 0x9,
		jumpIfTomahawkMan: 0x9,
		jumpIfTenguMan: 0x9,
		jumpIfGroundMan: 0x9,
		jumpIfDustMan: 0x9,
		jumpIfProtoMan: 0x9,
	]
	ts_check_flag [
		flag: 0xCC7,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	.string "YOU NEED A PASSWORD\n"
	.string "TO OPEN THIS\n"
	.string "CYBERDOOR."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761698_unk2
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "Undernet1 on it."
	ts_key_wait any=0x0
	ts_start_map map=0xB
	ts_end

	def_text_script CompText8761698_unk3
	ts_msg_open
	.string "YOU NEED A PASSWORD\n"
	.string "TO OPEN THIS\n"
	.string "CYBERDOOR."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Um,the password\n"
	.string "is... Uh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "M-Moneyhats..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xCA
	.string "... *beep,beep!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PASSWORD CONFIRMED."
	ts_key_wait any=0x0
	ts_flag_clear flag=0xCD8
	ts_end

	def_text_script CompText8761698_unk4
	ts_msg_open
	.string "Statues based on\n"
	.string "Gregar and Falzar..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is an ominous\n"
	.string "power coming from\n"
	.string "them..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761698_unk5
	ts_msg_open
	.string "ENTER PASSWORD"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_option [
		brackets: 0x1,
		right: 0x1,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	ts_menu_option_number_trader char=0x0
	.string "0"
	ts_option [
		brackets: 0x1,
		right: 0x2,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	ts_menu_option_number_trader char=0x1
	.string "0"
	ts_option [
		brackets: 0x1,
		right: 0x3,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	ts_menu_option_number_trader char=0x2
	.string "0    "
	ts_option [
		brackets: 0x1,
		right: 0x0,
		left: 0x2,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " OK\n"
	.string "(UP/DOWN:Number\n"
	.string " LEFT/RIGHT:Cursor)"
	ts_menu_select_password [
		jumpIfCorrect: 0x6,
		jumpIfIncorrect: 0x7,
		jumpIfCancelled: 0x8,
		password: 0x3,
	]
	ts_end

	def_text_script CompText8761698_unk6
	ts_msg_open
	.string "... YOU MAY PASS."
	ts_key_wait any=0x0
	ts_flag_clear flag=0xCD7
	ts_end

	def_text_script CompText8761698_unk7
	ts_msg_open
	.string "... TRY AGAIN!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761698_unk8
	ts_msg_open
	.string "... COME AGAIN!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761698_unk9
	ts_msg_open
	.string "The cyberdoor is\n"
	.string "blocking the way..."
	ts_key_wait any=0x0
	ts_end

	