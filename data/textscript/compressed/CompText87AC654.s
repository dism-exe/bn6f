	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AC654::
	.word 0x26300

	text_archive_start

	def_text_script CompText87AC654_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah!!"
	ts_key_wait any=0x0
	ts_end
	ts_jump target=CompText87AC654_unk1_id

	def_text_script CompText87AC654_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "There it is!\n"
	.string "There's the seal's\n"
	.string "favorite ball!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... OK!\n"
	.string "I'm going to go\n"
	.string "get it..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC654_unk2_id

	def_text_script CompText87AC654_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Wait,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC654_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's wrong,\n"
	.string "MegaMan? Why are\n"
	.string "you stopping me?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC654_unk4_id

	def_text_script CompText87AC654_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The tank is full\n"
	.string "of jellyfish!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And jellyfish\n"
	.string "are poisonous!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you get stung in\n"
	.string "a tank this deep,\n"
	.string "you'll drown!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC654_unk5_id

	def_text_script CompText87AC654_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "That doesn't matter\n"
	.string "right now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "While we're talking\n"
	.string "about this,Mick and\n"
	.string "the others..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC654_unk6_id

	def_text_script CompText87AC654_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Calm down,Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Slow down and think\n"
	.string "rationally about\n"
	.string "this!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now,how can we swim\n"
	.string "through the water\n"
	.string "and not get stung?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC654_unk7_id

	def_text_script CompText87AC654_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Without\n"
	.string "getting stung?..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is there a way?"
	ts_key_wait any=0x0
	ts_end

	