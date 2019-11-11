	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BED60::
	.word 0x14800

	text_archive_start

	def_text_script CompText87BED60_unk0
	ts_mugshot_show 0xF
	ts_msg_open
	.string "This is a bulletin\n"
	.string "from the Sky Town\n"
	.string "Admin Building."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The weather in Cyber\n"
	.string "City is unstable at\n"
	.string "the moment,however"
	ts_key_wait 0x0
	ts_clear_msg
	.string "there are people\n"
	.string "looking into the\n"
	.string "situation."
	ts_key_wait 0x0
	ts_clear_msg
	.string "For now,we are\n"
	.string "asking that people\n"
	.string "please stay indoors!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BED60_unk1
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Aaaaaah!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BED60_unk2
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Please be patient."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The weather will\n"
	.string "return to normal\n"
	.string "very shortly."
	ts_key_wait 0x0
	ts_end

	