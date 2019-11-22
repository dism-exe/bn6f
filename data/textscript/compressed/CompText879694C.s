	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879694C::
	.word 0x9D00

	text_archive_start

	def_text_script CompText879694C_unk0
	ts_check_flag [
		flag: 0xCC8,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x44,
	]
	ts_msg_open
	.string "... Things look\n"
	.string "great from here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879694C_unk1
	ts_mugshot_show [
		mugshot: 0x44,
	]
	ts_msg_open
	.string "... No way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879694C_unk2
	ts_check_flag [
		flag: 0xCC8,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x44,
	]
	ts_msg_open
	.string "... I don't know\n"
	.string "why,but you amuse\n"
	.string "me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879694C_unk3
	ts_mugshot_show [
		mugshot: 0x44,
	]
	ts_msg_open
	.string "... Yeah,yeah..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879694C_unk4

	