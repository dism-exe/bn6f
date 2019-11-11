	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87DA320::
	.word 0x19700

	text_archive_start

	def_text_script CompText87DA320_unk0
	ts_mugshot_show 0x3C
	ts_mugshot_palette 0x6
	ts_msg_open
	.string "N-NO!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I DON'T WANT TO\n"
	.string "BURN OUT HERE!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE ARE STILL\n"
	.string "THINGS I WANT TO DO\n"
	.string "IN THIS WORLD!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE'S THIS AND\n"
	.string "THAT -- OH,JUST\n"
	.string "TOO MANY THINGS!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87DA320_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Everything will\n"
	.string "be OK! I'm here\n"
	.string "for you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'll get a chance\n"
	.string "to do everything\n"
	.string "you want to!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87DA320_unk2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "... YES,I CAN\n"
	.string "FEEL IT NOW!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE WONDERFUL\n"
	.string "FEELING OF BEING\n"
	.string "ALIVE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I WANT TO THANK YOU,\n"
	.string "REALLY..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "AND TO SAY WATCH\n"
	.string "OUT AHEAD!"
	ts_key_wait 0x0
	ts_end

	