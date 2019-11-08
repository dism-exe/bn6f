	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87984A4::
	.word 0x24D00

	text_archive_start

	def_text_script CompText87984A4_unk0

	def_text_script CompText87984A4_unk1

	def_text_script CompText87984A4_unk2

	def_text_script CompText87984A4_unk3

	def_text_script CompText87984A4_unk4

	def_text_script CompText87984A4_unk5

	def_text_script CompText87984A4_unk6

	def_text_script CompText87984A4_unk7

	def_text_script CompText87984A4_unk8

	def_text_script CompText87984A4_unk9

	def_text_script CompText87984A4_unk10
	ts_check_flag 0xF7, 0x11, 0xD, 0xFF
	ts_check_flag 0xF8, 0x11, 0xC, 0xFF
	ts_check_flag 0xF4, 0x11, 0xB, 0xFF
	ts_flag_set 0xF4, 0x11
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "AHHH! I'VE BEEN\n"
	.string "WAITING!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE UPDTDATA RIGHT?\n"
	.string "I'VE BEEN WAITING\n"
	.string "FOR IT!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "MegaMan gave:\n"
	.string "\"UpdtData\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "COMPLETED!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MY,MY... I FEEL SO\n"
	.string "REFRESHED!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'LL DEFINITELY BE\n"
	.string "ABLE TO WORK HARD\n"
	.string "NOW!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87984A4_unk11
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "MY,MY... I FEEL SO\n"
	.string "REFRESHED!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'LL DEFINITELY BE\n"
	.string "ABLE TO WORK HARD\n"
	.string "NOW!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87984A4_unk12
	ts_mugshot_show 0x3C
	ts_mugshot_palette 0x6
	ts_msg_open
	.string "YAHHH!! I'M BURNING!!\n"
	.string "FIRE! HOT!! HOT!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Hold on!\n"
	.string "I'll fix you up!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "MegaMan updated\n"
	.string "the UpdtData.\n"
	ts_flag_set 0xF7, 0x11
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87984A4_unk13
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "PHEW! YOU REALLY\n"
	.string "BAILED ME OUT!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M NOT HURT AT ALL!\n"
	.string "YOU DON'T HAVE TO\n"
	.string "WORRY... I'M OK!"
	ts_key_wait 0x0
	ts_end

	