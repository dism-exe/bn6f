	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AC85C::
	.word 0x8300

	text_archive_start

	def_text_script CompText87AC85C_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Hm!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87AC85C_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "That girl...\n"
	.string "Why is she here?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87AC85C_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Huh? Wha-?\n"
	.string "She was just...here?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87AC85C_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hey!!\n"
	.string "Wait up,you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	