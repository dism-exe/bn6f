	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875E52C::
	.word 0x9200

	text_archive_start

	def_text_script CompText875E52C_unk0
	ts_check_chapter [
		lower: 0x44,
		upper: 0x44,
		jumpIfInRange: CompText875E52C_unk6_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_jump target=CompText875E52C_unk5_id

	def_text_script CompText875E52C_unk1

	def_text_script CompText875E52C_unk2

	def_text_script CompText875E52C_unk3

	def_text_script CompText875E52C_unk4

	def_text_script CompText875E52C_unk5
	ts_msg_open
	.string "The control panel\n"
	.string "is operating\n"
	.string "normally."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875E52C_unk6
	ts_check_flag [
		flag: 0xA22,
		jumpIfTrue: CompText875E52C_unk5_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA21,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText875E52C_unk5_id,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "If we can normalize\n"
	.string "this......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A v-virus!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xA73
	ts_end

	def_text_script CompText875E52C_unk7

	def_text_script CompText875E52C_unk8

	def_text_script CompText875E52C_unk9

	