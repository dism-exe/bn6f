	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87DA020::
	.word 0x14100

	text_archive_start

	def_text_script CompText87DA020_unk0
	ts_mugshot_show mugshot=0x3C
	ts_mugshot_palette palette=0x6
	ts_msg_open
	.string "OUCH,OUCH,OUCH,\n"
	.string "OUCH,OUCH,OUCH!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WE ARE AT CRITICAL!\n"
	.string "OH,WHY,OH,WHY!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87DA020_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Hold on!\n"
	.string "I'll save you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87DA020_unk2
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "... PHEW! I'M STILL\n"
	.string "ALMOST GOOD AS NEW!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PLEASE,YOU HAVE TO\n"
	.string "GO SAVE MY FRIENDS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... I WOULD LIKE TO\n"
	.string "HELP,BUT"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IT'S GOTTEN SO\n"
	.string "DANGEROUS. EXCUSE ME\n"
	.string "WHILE I FIND COVER!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AND WITH THAT..."
	ts_key_wait any=0x0
	ts_end

	