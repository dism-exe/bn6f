	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87ABEAC::
	.word 0xF600

	text_archive_start

	def_text_script CompText87ABEAC_unk0
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "??"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87ABEAC_unk1
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "... Har,har."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... How was the\n"
	.string "show,mateys?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I was watchin'\n"
	.string "from the shadows..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That wasn't\n"
	.string "entertainment!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll show 'em what\n"
	.string "real entertainment\n"
	.string "is!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Har,har."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87ABEAC_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Mick!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What's up?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87ABEAC_unk3
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Ah,nothing!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	