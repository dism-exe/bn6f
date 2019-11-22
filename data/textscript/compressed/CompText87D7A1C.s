	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D7A1C::
	.word 0xB200

	text_archive_start

	def_text_script CompText87D7A1C_unk0
	ts_msg_open
	.string "The Cybeasts' roar\n"
	.string "echoed throughout\n"
	.string "the Net,and"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "it caused a large\n"
	.string "amount of damage to\n"
	.string "Cyber City..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and Central Town..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D7A1C_unk1
	ts_mugshot_show [
		mugshot: 0x10,
	]
	ts_msg_open
	.string "Aaah!\n"
	.string "The maintenance\n"
	.string "system...!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	