	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A04E4::
	.word 0x10300

	text_archive_start

	def_text_script CompText87A04E4_unk0
	ts_mugshot_show mugshot=0x22
	ts_msg_open
	.string "Where are you\n"
	.string "going!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A04E4_unk1

	def_text_script CompText87A04E4_unk2

	def_text_script CompText87A04E4_unk3

	def_text_script CompText87A04E4_unk4

	def_text_script CompText87A04E4_unk5
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87A04E4_unk6_id,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "IF IT'S ABOUT FOOD,\n"
	.string "LEAVE IT TO ME!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I KNOW HOW TO\n"
	.string "COOK ALMOST\n"
	.string "ANYTHING!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "LET'S GET COOKING!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A04E4_unk6
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I AM THE PROGRAM\n"
	.string "FOR THIS REFERENCE\n"
	.string "BOOK..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "READING THIS BOOK\n"
	.string "WILL BE LIKE A\n"
	.string "REVELATION!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A04E4_unk7

	def_text_script CompText87A04E4_unk8

	def_text_script CompText87A04E4_unk9

	