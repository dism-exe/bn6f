	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87557A8::
	.word 0x9800

	text_archive_start

	def_text_script CompText87557A8_unk0
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: 0x1,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I've got the chills\n"
	.string "from this area...\n"
	.string "Be careful..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87557A8_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I've got a bad\n"
	.string "feeling something's\n"
	.string "gonna happen..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Be very careful..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	