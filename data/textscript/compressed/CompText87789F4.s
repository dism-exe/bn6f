	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87789F4::
	.word 0x19700

	text_archive_start

	def_text_script CompText87789F4_unk0
	ts_mugshot_show 0x8
	ts_msg_open
	.string "What an awesome\n"
	.string "move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87789F4_unk1
	ts_mugshot_show 0x9
	ts_msg_open
	.string "Incredible..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87789F4_unk2
	ts_mugshot_show 0x16
	ts_msg_open
	.string "A secret move!\n"
	.string "Ocean Tower!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87789F4_unk3

	def_text_script CompText87789F4_unk4

	def_text_script CompText87789F4_unk5
	ts_mugshot_show 0x16
	ts_msg_open
	.string "I'm sorry,\n"
	.string "I'm resting now."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87789F4_unk6

	def_text_script CompText87789F4_unk7

	def_text_script CompText87789F4_unk8

	def_text_script CompText87789F4_unk9

	def_text_script CompText87789F4_unk10
	ts_mugshot_show 0xF
	ts_msg_open
	.string "I can't believe\n"
	.string "she taught it to\n"
	.string "do that move..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's awesome...\n"
	.string "Truly awesome."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87789F4_unk11

	def_text_script CompText87789F4_unk12

	def_text_script CompText87789F4_unk13

	def_text_script CompText87789F4_unk14

	def_text_script CompText87789F4_unk15
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87789F4_unk16
	ts_check_flag 0x8A, 0xE, 0xF, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Hikari...\n"
	.string "Time for punishment!"
	ts_key_wait 0x0
	ts_flag_set 0x89, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	