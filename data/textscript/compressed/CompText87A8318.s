	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A8318::
	.word 0x1CD00

	text_archive_start

	def_text_script CompText87A8318_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's wrong,\n"
	.string "MegaMan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87A8318_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "*huff,huff...*\n"
	.string "It's really hot..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87A8318_unk2

	def_text_script CompText87A8318_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah,I know\n"
	.string "what you mean..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The control panel is\n"
	.string "burning hot,too..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A8318_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Waaah!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87A8318_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Is it BlastMan!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87A8318_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	.string "L-Lan...!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Everything just\n"
	.string "burst into flames!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you turn on the\n"
	.string "Teachers' Room's\n"
	.string "Fire Extinguisher!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87A8318_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The Extinguisher...?\n"
	.string "But there's no Navi\n"
	.string "to operate it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "I got it!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hang on,MegaMan!"
	ts_key_wait 0x0
	ts_end

	