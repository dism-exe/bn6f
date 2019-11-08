	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87821B4::
	.word 0x15700

	text_archive_start

	def_text_script CompText87821B4_unk0
	ts_mugshot_show 0x2
	ts_msg_open
	.string "Awesome...\n"
	.string "Real fish all\n"
	.string "around!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They did a good\n"
	.string "job!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87821B4_unk1
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Yeah!\n"
	.string "This water is\n"
	.string "great!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No matter how much\n"
	.string "I drink,it's still\n"
	.string "delicious!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87821B4_unk2

	def_text_script CompText87821B4_unk3

	def_text_script CompText87821B4_unk4

	def_text_script CompText87821B4_unk5

	def_text_script CompText87821B4_unk6

	def_text_script CompText87821B4_unk7

	def_text_script CompText87821B4_unk8

	def_text_script CompText87821B4_unk9

	def_text_script CompText87821B4_unk10
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87821B4_unk11
	ts_check_flag 0xA4, 0xE, 0xA, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Don't like it here!?\n"
	.string "Too bad!!"
	ts_key_wait 0x0
	ts_flag_set 0xA3, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	