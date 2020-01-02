	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A0F0C::
	.word 0xA800

	text_archive_start

	def_text_script CompText87A0F0C_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THIS IS THE HELIPORT\n"
	.string "COMP!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WOULD YOU LIKE TO\n"
	.string "TRY RIDING A\n"
	.string "HELICOPTER?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TAKE A LOOK AT THE\n"
	.string "WORLD FROM THE\n"
	.string "SKY..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AND SAY GOODBYE TO\n"
	.string "ALL YOUR TROUBLES!"
	ts_key_wait any=0x0
	ts_end

	