	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876E538::
	.word 0x21000

	text_archive_start

	def_text_script CompText876E538_unk0
	ts_mugshot_show 0xC
	ts_msg_open
	.string "I heard from a\n"
	.string "teacher that you\n"
	.string "transferred here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is Class 6-1."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E538_unk1

	def_text_script CompText876E538_unk2

	def_text_script CompText876E538_unk3

	def_text_script CompText876E538_unk4

	def_text_script CompText876E538_unk5
	ts_mugshot_show 0x17
	ts_msg_open
	.string "What is up with\n"
	.string "those robots!?\n"
	.string "I'm really scared!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E538_unk6
	ts_mugshot_show 0x9
	ts_msg_open
	.string "H...H...!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E538_unk7
	ts_msg_open
	.string "*Rumble* *Rumble!!*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E538_unk8

	def_text_script CompText876E538_unk9
	ts_mugshot_show 0x15
	ts_msg_open
	.string "You're still here!?\n"
	.string "Hurry home as\n"
	.string "fast as you can!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Be careful!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E538_unk10
	ts_mugshot_show 0xB
	ts_msg_open
	.string "What wonderful\n"
	.string "technique!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The brush strokes\n"
	.string "are very elegant!"
	ts_key_wait 0x0
	ts_end

	