	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876CD18::
	.word 0x16200

	text_archive_start

	def_text_script CompText876CD18_unk0
	ts_check_chapter 0x61, 0x61, 0x5, 0xFF
	ts_mugshot_show 0x9
	ts_msg_open
	.string "I don't feel like\n"
	.string "doing homework when\n"
	.string "I'm at home,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so I'm doing it now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876CD18_unk1

	def_text_script CompText876CD18_unk2

	def_text_script CompText876CD18_unk3

	def_text_script CompText876CD18_unk4

	def_text_script CompText876CD18_unk5
	ts_mugshot_show 0x9
	ts_msg_open
	.string "Lately,studying\n"
	.string "has become fun!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Once you understand,\n"
	.string "class is\n"
	.string "interesting!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876CD18_unk6

	def_text_script CompText876CD18_unk7

	def_text_script CompText876CD18_unk8

	def_text_script CompText876CD18_unk9

	def_text_script CompText876CD18_unk10
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876CD18_unk11
	ts_check_flag 0x78, 0xE, 0xA, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "You're Lan Hikari!!\n"
	.string "YAAAAAHHHHHHHHHHH!!"
	ts_key_wait 0x0
	ts_flag_set 0x77, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText876CD18_unk12

	def_text_script CompText876CD18_unk13

	def_text_script CompText876CD18_unk14

	def_text_script CompText876CD18_unk15

	def_text_script CompText876CD18_unk16

	def_text_script CompText876CD18_unk17

	def_text_script CompText876CD18_unk18

	def_text_script CompText876CD18_unk19

	