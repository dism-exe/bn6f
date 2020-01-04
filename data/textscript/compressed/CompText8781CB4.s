	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781CB4::
	.word 0x27D00

	text_archive_start

	def_text_script CompText8781CB4_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's head for\n"
	.string "Mr.Weather!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781CB4_unk1
	ts_msg_open
	.string "The elevator is\n"
	.string "out of order..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781CB4_unk2

	def_text_script CompText8781CB4_unk3

	def_text_script CompText8781CB4_unk4

	def_text_script CompText8781CB4_unk5

	def_text_script CompText8781CB4_unk6

	def_text_script CompText8781CB4_unk7

	def_text_script CompText8781CB4_unk8

	def_text_script CompText8781CB4_unk9

	def_text_script CompText8781CB4_unk10
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Mr.Famous gave me\n"
	.string "\""
	ts_print_folder_name [
		entry: 0x23,
		buffer: 0x0,
	]
	.string "\" to\n"
	.string "take care of..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What do you think?\n"
	.string "It's Famous' folder!\n"
	.string "Want to try it out?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't mind\n"
	.string "overwriting the\n"
	.string "Extra Folder you've"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "got now,I can send\n"
	.string "you the data right\n"
	.string "away..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0xA
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sure! "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No,Thanks"
	ts_select 0x6, 0x80, 0xB, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x10
	.string "Really...\n"
	.string "When Mr.Famous gets\n"
	.string "here,he'll be sad!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781CB4_unk11
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Alright,I'll\n"
	.string "transmit it now..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_start_give_folder [
		folder: 0x3,
		slot: 0x2,
	]
	ts_mugshot_hide
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string " "
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x73
	.string "Ding!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_enable_text_sfx
	ts_mugshot_show mugshot=0x10
	.string "Done transferring."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Your old Extra\n"
	.string "Folder is now called\n"
	.string "\""
	ts_print_folder_name [
		entry: 0x23,
		buffer: 0x0,
	]
	.string "\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Use this folder\n"
	.string "and learn to fight\n"
	.string "like someone Famous!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781CB4_unk12

	def_text_script CompText8781CB4_unk13

	def_text_script CompText8781CB4_unk14

	def_text_script CompText8781CB4_unk15

	def_text_script CompText8781CB4_unk16

	def_text_script CompText8781CB4_unk17

	def_text_script CompText8781CB4_unk18

	def_text_script CompText8781CB4_unk19

	