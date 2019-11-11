	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B0820::
	.word 0x37100

	text_archive_start

	def_text_script CompText87B0820_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "This... This is..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "This animal's the\n"
	.string "same as that statue!\n"
	.string "It's a Cybeast!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "What fierce power..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I feel like I'm\n"
	.string "about to be crushed"
	ts_key_wait 0x0
	ts_clear_msg
	.string "even though he's\n"
	.string "just standing there!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87B0820_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "No way...\n"
	.string "That wasn't just\n"
	.string "a legend...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But if the legend's\n"
	.string "true,then the Net's\n"
	.string "gonna be in chaos!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87B0820_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87B0820_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK,leave it to me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87B0820_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Exe...!!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87B0820_unk5
	ts_check_game_version 0xFF, 0x6
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x91, 0x1
	.string "*rooooooar!!*"
	ts_wait 0x5A, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B0820_unk6
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x93, 0x1
	.string "*screeeeech!!*"
	ts_wait 0x46, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B0820_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Aaaaaah!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B0820_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you OK,MegaMan!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87B0820_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "U-Ugh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87B0820_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "W-What power..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_game_version 0xB, 0xC

	def_text_script CompText87B0820_unk11
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x92, 0x1
	.string "*grrrrrr...*"
	ts_wait 0x50, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87B0820_unk12
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x94, 0x1
	.string "*screeech...*"
	ts_wait 0x50, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87B0820_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87B0820_unk14
	ts_mugshot_show 0x37
	ts_msg_open
	.string "U-Ungh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B0820_unk15
	ts_check_game_version 0xFF, 0x10
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x92, 0x1
	.string "*grrrrrr...*"
	ts_wait 0x50, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87B0820_unk16
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x94, 0x1
	.string "*screeeech...*"
	ts_wait 0x50, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87B0820_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "How in the world are\n"
	.string "we going to beat\n"
	.string "a Cybeast..."
	ts_key_wait 0x0
	ts_end

	