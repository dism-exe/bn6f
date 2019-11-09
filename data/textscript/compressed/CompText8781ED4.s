	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781ED4::
	.word 0x16200

	text_archive_start

	def_text_script CompText8781ED4_unk0

	def_text_script CompText8781ED4_unk1

	def_text_script CompText8781ED4_unk2

	def_text_script CompText8781ED4_unk3

	def_text_script CompText8781ED4_unk4

	def_text_script CompText8781ED4_unk5

	def_text_script CompText8781ED4_unk6

	def_text_script CompText8781ED4_unk7

	def_text_script CompText8781ED4_unk8

	def_text_script CompText8781ED4_unk9

	def_text_script CompText8781ED4_unk10

	def_text_script CompText8781ED4_unk11

	def_text_script CompText8781ED4_unk12

	def_text_script CompText8781ED4_unk13

	def_text_script CompText8781ED4_unk14

	def_text_script CompText8781ED4_unk15

	def_text_script CompText8781ED4_unk16

	def_text_script CompText8781ED4_unk17

	def_text_script CompText8781ED4_unk18

	def_text_script CompText8781ED4_unk19

	def_text_script CompText8781ED4_unk20

	def_text_script CompText8781ED4_unk21

	def_text_script CompText8781ED4_unk22

	def_text_script CompText8781ED4_unk23

	def_text_script CompText8781ED4_unk24

	def_text_script CompText8781ED4_unk25
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781ED4_unk26
	ts_check_flag 0x9C, 0xE, 0x19, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "...Destroy...\n"
	.string "...Lan...\n"
	.string "...Hikari..."
	ts_key_wait 0x0
	ts_flag_set 0x9B, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8781ED4_unk27
	ts_check_flag 0x9E, 0xE, 0x19, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "You...!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Fool!!!!!!"
	ts_key_wait 0x0
	ts_flag_set 0x9D, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8781ED4_unk28
	ts_check_flag 0xA0, 0xE, 0x19, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Finally showed up!?\n"
	.string "You'll regret that!!"
	ts_key_wait 0x0
	ts_flag_set 0x9F, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8781ED4_unk29
	ts_check_flag 0xA2, 0xE, 0x19, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Yahhhhh!!\n"
	.string "I've found you!!"
	ts_key_wait 0x0
	ts_flag_set 0xA1, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8781ED4_unk30

	