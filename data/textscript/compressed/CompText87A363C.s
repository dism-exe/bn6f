	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A363C::
	.word 0xB100

	text_archive_start

	def_text_script CompText87A363C_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "THIS IS THE\n"
	.string "PRINCIPAL'S OFFICE\n"
	.string "COMP!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THE HEAD OF THIS\n"
	.string "OFFICE IS NONE OTHER\n"
	.string "THAN MAYOR CAIN!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...WHAT? MAYOR CAIN\n"
	.string "HAS BEEN ARRESTED?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "HAHAHA!\n"
	.string "DON'T KID WITH ME!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	