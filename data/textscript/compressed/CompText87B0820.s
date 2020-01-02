	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B0820::
	.word 0x37100

	text_archive_start

	def_text_script CompText87B0820_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "This... This is..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "This animal's the\n"
	.string "same as that statue!\n"
	.string "It's a Cybeast!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "What fierce power..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I feel like I'm\n"
	.string "about to be crushed"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "even though he's\n"
	.string "just standing there!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk1_id

	def_text_script CompText87B0820_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "No way...\n"
	.string "That wasn't just\n"
	.string "a legend...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But if the legend's\n"
	.string "true,then the Net's\n"
	.string "gonna be in chaos!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk2_id

	def_text_script CompText87B0820_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk3_id

	def_text_script CompText87B0820_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,leave it to me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk4_id

	def_text_script CompText87B0820_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Exe...!!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87B0820_unk5
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87B0820_unk6_id,
	]
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x191
	.string "*rooooooar!!*"
	ts_wait frames=0x5A
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B0820_unk6
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x193
	.string "*screeeeech!!*"
	ts_wait frames=0x46
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B0820_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Aaaaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B0820_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Are you OK,MegaMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk9_id

	def_text_script CompText87B0820_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "U-Ugh..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk10_id

	def_text_script CompText87B0820_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-What power..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: CompText87B0820_unk11_id,
		jumpIfCybeastFalzar: CompText87B0820_unk12_id,
	]

	def_text_script CompText87B0820_unk11
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*grrrrrr...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk13_id

	def_text_script CompText87B0820_unk12
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x194
	.string "*screeech...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk13_id

	def_text_script CompText87B0820_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk14_id

	def_text_script CompText87B0820_unk14
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "U-Ungh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B0820_unk15
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87B0820_unk16_id,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*grrrrrr...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk17_id

	def_text_script CompText87B0820_unk16
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x194
	.string "*screeeech...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B0820_unk17_id

	def_text_script CompText87B0820_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "How in the world are\n"
	.string "we going to beat\n"
	.string "a Cybeast..."
	ts_key_wait any=0x0
	ts_end

	