	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879E3F4::
	.word 0xD400

	text_archive_start

	def_text_script CompText879E3F4_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "I AM THE PROGRAM\n"
	.string "IN THIS COMPUTER."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THIS COMPUTER IS\n"
	.string "PACKED WITH\n"
	.string "RESEARCH DATA!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THANKS TO THAT,\n"
	.string "I TOO HAVE BECOME\n"
	.string "QUITE INTELLIGENT!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THERE IS ABSOLUTELY\n"
	.string "NOTHING THAT I CAN'T\n"
	.string "FIGURE OUT MYSELF!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	