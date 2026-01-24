	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87979CC::
	.word 0x2000

	text_archive_start

	def_text_script CompText87979CC_unk0
	ts_flag_set flag=EVENT_44B
	ts_end

	def_text_script CompText87979CC_unk1
	ts_flag_set flag=EVENT_44D
	ts_end

	def_text_script CompText87979CC_unk2
	ts_flag_set flag=EVENT_44F
	ts_end

	def_text_script CompText87979CC_unk3
	ts_flag_set flag=EVENT_451
	ts_end

	