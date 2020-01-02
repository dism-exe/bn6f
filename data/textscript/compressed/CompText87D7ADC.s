	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D7ADC::
	.word 0x4200

	text_archive_start

	def_text_script CompText87D7ADC_unk0
	ts_msg_open
	.string "Seaside Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7ADC_unk1
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "NO! Cyber City's\n"
	.string "water is...!!"
	ts_key_wait any=0x0
	ts_end

	