	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876D48C::
	.word 0x13900

	text_archive_start

	def_text_script CompText876D48C_unk0

	def_text_script CompText876D48C_unk1

	def_text_script CompText876D48C_unk2

	def_text_script CompText876D48C_unk3

	def_text_script CompText876D48C_unk4

	def_text_script CompText876D48C_unk5

	def_text_script CompText876D48C_unk6

	def_text_script CompText876D48C_unk7

	def_text_script CompText876D48C_unk8

	def_text_script CompText876D48C_unk9

	def_text_script CompText876D48C_unk10
	ts_mugshot_show 0x9
	ts_msg_open
	.string "Um... um..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Your punishment for\n"
	.string "forgetting your\n"
	.string "homework:"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You will finish this\n"
	.string "entire drill or you\n"
	.string "are not going home!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876D48C_unk11
	ts_mugshot_show 0x16
	ts_msg_open
	.string "I think you've\n"
	.string "learned your lesson."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Remember to do your\n"
	.string "homework from now\n"
	.string "on."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x9
	.string "I'm sorry..."
	ts_key_wait 0x0
	ts_end

	