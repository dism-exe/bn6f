	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875DFF8::
	.word 0x10300

	text_archive_start

	def_text_script CompText875DFF8_unk0
	ts_check_chapter 0x43, 0x43, 0x6, 0xFF
	ts_jump 5

	def_text_script CompText875DFF8_unk1

	def_text_script CompText875DFF8_unk2

	def_text_script CompText875DFF8_unk3

	def_text_script CompText875DFF8_unk4

	def_text_script CompText875DFF8_unk5
	ts_msg_open
	.string "It's the elevator's\n"
	.string "control panel..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It looks perfectly\n"
	.string "normal."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875DFF8_unk6
	ts_check_flag 0x18, 0xA, 0x5, 0xFF
	ts_check_flag 0x17, 0xA, 0xFF, 0x5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "How is it,MegaMan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Um... Hold on and\n"
	.string "I'll take a look!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Um... Hmm..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "A virus suddenly\n"
	.string "jumps out at\n"
	.string "MegaMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Waaaah!!"
	ts_key_wait 0x0
	ts_flag_set 0x6B, 0xA
	ts_end

	def_text_script CompText875DFF8_unk7

	def_text_script CompText875DFF8_unk8

	def_text_script CompText875DFF8_unk9

	