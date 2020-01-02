	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877129C::
	.word 0x1A00

	text_archive_start

	def_text_script CompText877129C_unk0
	ts_check_flag [
		flag: 0xE66,
		jumpIfTrue: CompText877129C_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xE66
	ts_end

	def_text_script CompText877129C_unk1
	ts_end

	def_text_script CompText877129C_unk2

	def_text_script CompText877129C_unk3

	def_text_script CompText877129C_unk4

	