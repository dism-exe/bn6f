	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87982DC::
	.word 0x21000

	text_archive_start

	def_text_script CompText87982DC_unk0

	def_text_script CompText87982DC_unk1

	def_text_script CompText87982DC_unk2

	def_text_script CompText87982DC_unk3

	def_text_script CompText87982DC_unk4

	def_text_script CompText87982DC_unk5

	def_text_script CompText87982DC_unk6

	def_text_script CompText87982DC_unk7

	def_text_script CompText87982DC_unk8

	def_text_script CompText87982DC_unk9

	def_text_script CompText87982DC_unk10
	ts_check_flag [
		flag: 0x11F6,
		jumpIfTrue: 0xD,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11F8,
		jumpIfTrue: 0xC,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11F3,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x11F3
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "YOU'VE GOT SOME\n"
	.string "BUSINESS WITH\n"
	.string "ME?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AN UPDATE?\n"
	.string "I'M LISTENING!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "MegaMan gave:\n"
	.string "\"UpdtData\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string "COMPLETED!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WOW! I FEEL LIGHTER\n"
	.string "ON MY FEET ALL OF A\n"
	.string "SUDDEN!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THANK YOU!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87982DC_unk11
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WOW! I FEEL LIGHTER\n"
	.string "ON MY FEET ALL OF A\n"
	.string "SUDDEN!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THANK YOU!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87982DC_unk12
	ts_mugshot_show mugshot=0x3C
	ts_mugshot_palette palette=0x6
	ts_msg_open
	.string "AYAYAYAYAYA!\n"
	.string "F..F...FIIIRRREEE!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Wait a second!\n"
	.string "I'll hurry up and\n"
	.string "update your data!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "MegaMan updated\n"
	.string "the UpdtData!!\n"
	ts_flag_set flag=0x11F6
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87982DC_unk13
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "HUH... WHAT JUST\n"
	.string "HAPPENED!?!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THAT WAS AWFUL!!"
	ts_key_wait any=0x0
	ts_end

	