	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D2638::
	.word 0x10900

	text_archive_start

	def_text_script CompText87D2638_unk0
	ts_mugshot_show mugshot=0x56
	ts_msg_open
	.string "PIRIRIKAPURIKA...\n"
	.string "(Please let me...)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PIKIRI PIKIRAKIRA...\n"
	.string "(erase my grudge\n"
	.string " from that day...)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D2638_unk1_id

	def_text_script CompText87D2638_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "He's attacking,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D2638_unk2_id

	def_text_script CompText87D2638_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Go for it!\n"
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D2638_unk3_id

	def_text_script CompText87D2638_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D2638_unk4_id

	def_text_script CompText87D2638_unk4
	ts_mugshot_show mugshot=0x56
	ts_msg_open
	.string "KIPIPIRI PIKARIPIRA!\n"
	.string "(Clear out like\n"
	.string " clouds!)"
	ts_key_wait any=0x0
	ts_end

	