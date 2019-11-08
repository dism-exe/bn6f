	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877C7A4::
	.word 0x1E300

	text_archive_start

	def_text_script CompText877C7A4_unk0
	ts_check_chapter 0x62, 0x62, 0xA, 0xFF
	ts_check_chapter 0x61, 0x61, 0x5, 0xFF
	ts_mugshot_show 0x15
	ts_msg_open
	.string "The recent arrest of\n"
	.string "Mayor Cain was a\n"
	.string "major blow."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The JudgeTree\n"
	.string "hacked...!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Mayor a\n"
	.string "criminal...!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't know what\n"
	.string "to believe anymore!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C7A4_unk1

	def_text_script CompText877C7A4_unk2

	def_text_script CompText877C7A4_unk3

	def_text_script CompText877C7A4_unk4

	def_text_script CompText877C7A4_unk5
	ts_mugshot_show 0x15
	ts_msg_open
	.string "I hope the Expo\n"
	.string "brings back the\n"
	.string "shine to Cyber City!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C7A4_unk6

	def_text_script CompText877C7A4_unk7

	def_text_script CompText877C7A4_unk8

	def_text_script CompText877C7A4_unk9

	def_text_script CompText877C7A4_unk10
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Yawwwnnn...\n"
	.string "Another hard day at\n"
	.string "work for me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C7A4_unk11

	def_text_script CompText877C7A4_unk12

	def_text_script CompText877C7A4_unk13

	def_text_script CompText877C7A4_unk14

	def_text_script CompText877C7A4_unk15
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C7A4_unk16
	ts_check_flag 0x90, 0xE, 0xF, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Lan Hikari!!\n"
	.string "Time for your life\n"
	.string "sentence!"
	ts_key_wait 0x0
	ts_flag_set 0x8F, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	