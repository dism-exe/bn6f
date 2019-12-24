	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B0614::
	.word 0x16100

	text_archive_start

	def_text_script CompText87B0614_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sounds like some-\n"
	.string "thing really bad\n"
	.string "happened on the Net!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0614_unk1_id

	def_text_script CompText87B0614_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Right!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B0614_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mick's Navi... No,\n"
	.string "the entire Net is\n"
	.string "in trouble!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've gotta go!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0614_unk3_id

	def_text_script CompText87B0614_unk3
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "... But..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0614_unk4_id

	def_text_script CompText87B0614_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I know it's\n"
	.string "dangerous!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But my friend's in\n"
	.string "trouble. Thanks for\n"
	.string "the concern,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but I have to go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B0614_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0614_unk6_id

	def_text_script CompText87B0614_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "OK!"
	ts_key_wait any=0x0
	ts_end

	