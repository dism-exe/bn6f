	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B3D0C::
	.word 0x27500

	text_archive_start

	def_text_script CompText87B3D0C_unk0
	ts_jump target=CompText87B3D0C_unk5_id

	def_text_script CompText87B3D0C_unk1
	ts_jump target=CompText87B3D0C_unk10_id

	def_text_script CompText87B3D0C_unk2
	ts_jump target=CompText87B3D0C_unk15_id

	def_text_script CompText87B3D0C_unk3

	def_text_script CompText87B3D0C_unk4

	def_text_script CompText87B3D0C_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Looks like we got\n"
	.string "all the fish data\n"
	.string "in this area."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3D0C_unk6_id

	def_text_script CompText87B3D0C_unk6
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Alright,drip!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Get me down from\n"
	.string "here,and let's\n"
	.string "push forward,drip!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x671
	ts_check_flag [
		flag: 0x671,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87B3D0C_unk7_id,
	]
	ts_check_flag [
		flag: 0x673,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87B3D0C_unk7_id,
	]
	ts_check_flag [
		flag: 0x675,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87B3D0C_unk7_id,
	]
	ts_clear_msg
	ts_jump target=CompText87B3D0C_unk20_id

	def_text_script CompText87B3D0C_unk7
	ts_end

	def_text_script CompText87B3D0C_unk8

	def_text_script CompText87B3D0C_unk9

	def_text_script CompText87B3D0C_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Looks like we got\n"
	.string "all the fish data\n"
	.string "in this area."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3D0C_unk11_id

	def_text_script CompText87B3D0C_unk11
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Drip,drip,drip!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Get me down from\n"
	.string "here,and let's\n"
	.string "push forward,drip!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x673
	ts_check_flag [
		flag: 0x671,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87B3D0C_unk12_id,
	]
	ts_check_flag [
		flag: 0x673,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87B3D0C_unk12_id,
	]
	ts_check_flag [
		flag: 0x675,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87B3D0C_unk12_id,
	]
	ts_clear_msg
	ts_jump target=CompText87B3D0C_unk20_id

	def_text_script CompText87B3D0C_unk12
	ts_end

	def_text_script CompText87B3D0C_unk13

	def_text_script CompText87B3D0C_unk14

	def_text_script CompText87B3D0C_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Looks like we got\n"
	.string "all the fish data\n"
	.string "in this area."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3D0C_unk16_id

	def_text_script CompText87B3D0C_unk16
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Alright,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Get me down from\n"
	.string "here,and let's\n"
	.string "push forward,drip!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x675
	ts_check_flag [
		flag: 0x671,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87B3D0C_unk17_id,
	]
	ts_check_flag [
		flag: 0x673,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87B3D0C_unk17_id,
	]
	ts_check_flag [
		flag: 0x675,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87B3D0C_unk17_id,
	]
	ts_clear_msg
	ts_jump target=CompText87B3D0C_unk20_id

	def_text_script CompText87B3D0C_unk17
	ts_end

	def_text_script CompText87B3D0C_unk18

	def_text_script CompText87B3D0C_unk19

	def_text_script CompText87B3D0C_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright! Let's\n"
	.string "head back to the\n"
	.string "Aquarium HP!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3D0C_unk21_id

	def_text_script CompText87B3D0C_unk21
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Roger,drip!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x677
	ts_flag_set flag=0x678
	ts_end

	def_text_script CompText87B3D0C_unk22

	def_text_script CompText87B3D0C_unk23

	def_text_script CompText87B3D0C_unk24

	