	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BFE24::
	.word 0x33E00

	text_archive_start

	def_text_script CompText87BFE24_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "First,I jump\n"
	.string "across..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BFE24_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Hup!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BFE24_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Now it's your\n"
	.string "turn,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't worry,I'll\n"
	.string "catch you!\n"
	.string "Now jump!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BFE24_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,OK...\n"
	.string "I can do this..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "B-but...what if I\n"
	.string "mess up my\n"
	.string "landing...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If only I could\n"
	.string "sorta float down\n"
	.string "somehow..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... I know!\n"
	.string "I'll use that\n"
	.string "thing!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BFE24_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Here I come,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x63
	ts_jump target=CompText87BFE24_unk5_id

	def_text_script CompText87BFE24_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Alright!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BFE24_unk6_id

	def_text_script CompText87BFE24_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,3... 2... 1...\n"
	.string "GO!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BFE24_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "See,nothing to it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BFE24_unk8_id

	def_text_script CompText87BFE24_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Hey! It's that\n"
	.string "umbrella you got\n"
	.string "earlier!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BFE24_unk9_id

	def_text_script CompText87BFE24_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's a little scary,\n"
	.string "but it feels nice\n"
	.string "floating up here."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BFE24_unk10_id

	def_text_script CompText87BFE24_unk10
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x1B0
	.string "*snap!!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BFE24_unk11_id

	def_text_script CompText87BFE24_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Huh!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BFE24_unk12_id

	def_text_script CompText87BFE24_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0xC
	ts_jump target=CompText87BFE24_unk13_id

	def_text_script CompText87BFE24_unk13
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x1B1
	.string "*snap,snap!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BFE24_unk14_id

	def_text_script CompText87BFE24_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The umbrella!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "W-Whaaaaaa!!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87BFE24_unk15
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "See,I told you I'd\n"
	.string "catch you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BFE24_unk16_id

	def_text_script CompText87BFE24_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BFE24_unk17
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Well,time to\n"
	.string "return to the PET."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BFE24_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Now,on to the\n"
	.string "Force Room!!"
	ts_key_wait any=0x0
	ts_end

	