	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B11D0::
	.word 0x7C700

	text_archive_start

	def_text_script CompText87B11D0_unk0
	ts_check_game_version 0xFF, 0x1
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
	ts_jump 2

	def_text_script CompText87B11D0_unk1
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
	ts_jump 2

	def_text_script CompText87B11D0_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It managed to get\n"
	.string "all the way over\n"
	.string "here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,MegaMan,we're\n"
	.string "gonna try for a\n"
	.string "long-range attack!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you get too\n"
	.string "close,you might\n"
	.string "end up like before!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string " What's wrong,\n"
	.string "MegaMan?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Get further back!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87B11D0_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "........."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "... MegaMan?\n"
	.string "What's going on!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry up and back..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Remember how Dad\n"
	.string "said..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "that the program he\n"
	.string "wrote,ExaMem,is\n"
	.string "within me..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "W-Wait a sec...\n"
	.string "You're not..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "I'm going to seal\n"
	.string "the Cybeast in\n"
	.string "my body."
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_fade_out 0x1F, 0x5
	ts_jump 4

	def_text_script CompText87B11D0_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "W-What are you\n"
	.string "saying!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You said you\n"
	.string "wouldn't do anything\n"
	.string "risky! Please,don't!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B11D0_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The Cybeast doesn't\n"
	.string "have a set body yet,\n"
	.string "so it's weak."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now is the only\n"
	.string "chance we have to\n"
	.string "seal it up somehow!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "No,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect 0x3
	.string "RRRRRR!!"
	ts_wait 0x80, 0x0
	ts_call_p_e_t_effect 0x1
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_mugshot_show 0x5
	.string "Wait,MegaMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No,I mean,Hub...\n"
	.string "My son..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I didn't install\n"
	.string "the ExaMem program\n"
	.string "into you"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so you could do\n"
	.string "something like this!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Dad!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_play_bgm 0xD, 0x0
	ts_mugshot_show 0x5
	.string "In theory,yes,with\n"
	.string "your memory\n"
	.string "capacity,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it is possible to\n"
	.string "absorb the Cybeast\n"
	.string "into yourself,but..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "but then what!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't think I\n"
	.string "could bare to lose\n"
	.string "you again..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "That's right,Hub!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you were gone,\n"
	.string "I... I..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Lan,Dad...\n"
	.string "... Thank you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you for your\n"
	.string "kind words,for\n"
	.string "giving me a chance"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to live,even just as\n"
	.string "a Navi,to have a\n"
	.string "real family..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can never express\n"
	.string "how much you all\n"
	.string "mean to me..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87B11D0_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "M-MegaMan..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_game_version 0x7, 0x8

	def_text_script CompText87B11D0_unk7
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x92, 0x1
	.string "*grrrrrrrr...*"
	ts_wait 0x50, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87B11D0_unk8
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x94, 0x1
	.string "*screeeeeech...*"
	ts_wait 0x50, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87B11D0_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... Good bye,Lan."
	ts_key_wait 0x0
	ts_sound_fade_out 0x1F, 0xA
	ts_end

	def_text_script CompText87B11D0_unk10
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Beginning\n"
	.string "Cybeast\n"
	.string "Installation!"
	ts_key_wait 0x0
	ts_sound_fade_in_bgm 0x1C, 0x5
	ts_end

	def_text_script CompText87B11D0_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "A-Aaaah!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87B11D0_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hub!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87B11D0_unk13
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Aaah...!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87B11D0_unk14
	ts_mugshot_show 0x5
	ts_msg_open
	.string "No! Please!\n"
	.string "Stop!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87B11D0_unk15
	ts_mugshot_show 0x37
	ts_msg_open
	.string "U-Unngh...!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_game_version 0x10, 0x11

	def_text_script CompText87B11D0_unk16
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x91, 0x1
	.string "*grrrrrrrrr!!*"
	ts_wait 0x5A, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87B11D0_unk17
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x93, 0x1
	.string "*screeeeeech!!*"
	ts_wait 0x46, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87B11D0_unk18
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Aaaaaaaah!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B11D0_unk19
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMaaaaan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87B11D0_unk20
	ts_mugshot_show 0x37
	ts_msg_open
	.string "L...an..."
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87B11D0_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan!\n"
	.string "MegaMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87B11D0_unk22
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... I... did it...\n"
	.string "... Lan..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x4B, 0x1
	.string "... *thud*"
	ts_wait 0x28, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87B11D0_unk23
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan!!"
	ts_key_wait 0x0
	ts_end

	