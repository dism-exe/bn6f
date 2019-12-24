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
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781ED4_unk26
	ts_check_flag [
		flag: 0xE9C,
		jumpIfTrue: CompText8781ED4_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "...Destroy...\n"
	.string "...Lan...\n"
	.string "...Hikari..."
	ts_key_wait any=0x0
	ts_flag_set flag=0xE9B
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8781ED4_unk27
	ts_check_flag [
		flag: 0xE9E,
		jumpIfTrue: CompText8781ED4_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "You...!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Fool!!!!!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xE9D
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8781ED4_unk28
	ts_check_flag [
		flag: 0xEA0,
		jumpIfTrue: CompText8781ED4_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Finally showed up!?\n"
	.string "You'll regret that!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xE9F
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8781ED4_unk29
	ts_check_flag [
		flag: 0xEA2,
		jumpIfTrue: CompText8781ED4_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Yahhhhh!!\n"
	.string "I've found you!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xEA1
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8781ED4_unk30

	