	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AF374::
	.word 0x51E00

	text_archive_start

	def_text_script CompText87AF374_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Y-You're..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AF374_unk1
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "Ah..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AF374_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you a student\n"
	.string "here?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87AF374_unk3
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87AF374_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Ah,I almost\n"
	.string "forgot! Thanks for\n"
	.string "the other day!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know,for\n"
	.string "pointing out that\n"
	.string "CopyBot to me."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87AF374_unk5
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87AF374_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "But what was a\n"
	.string "CopyBot doing there\n"
	.string "anyway,I wonder?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So,do you like fish?\n"
	.string "You were looking at\n"
	.string "them that day,too."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87AF374_unk7
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "... F-Fish...to\n"
	.string "take them out of the\n"
	.string "water... It's wrong."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87AF374_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87AF374_unk9
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "Fish belong in the\n"
	.string "sea. Can they really\n"
	.string "live on land...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87AF374_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87AF374_unk11
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "... I-I'm Iris."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87AF374_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Iris,huh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AF374_unk13
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "L-Lan,right...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thank you for saving\n"
	.string "me that time..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87AF374_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Wow,you remember!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm glad you\n"
	.string "remember me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So what were you\n"
	.string "saying just now\n"
	.string "about fish...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87AF374_unk15
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "N-Nothing..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87AF374_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sorry,I'm asking a\n"
	.string "lot of questions,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "which class are you\n"
	.string "in? You're not in\n"
	.string "this class,are you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87AF374_unk17
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "I... I'm..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87AF374_unk18
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect effect=0x3
	.string "RRRRRR!!"
	ts_wait frames=0x80
	ts_call_p_e_t_effect effect=0x1
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87AF374_unk19
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's your\n"
	.string "autophone,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AF374_unk20
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x16,
	]
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "Hey,Lan!\n"
	.string "How long are ya\n"
	.string "gonna take!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87AF374_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,sorry,Match!\n"
	.string "I'll be right\n"
	.string "there!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AF374_unk22
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Lan,are you going\n"
	.string "to come here soon?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87AF374_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,sorry,Shuko!\n"
	.string "Be right there!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AF374_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sorry,but I've\n"
	.string "gotta go!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's talk some\n"
	.string "more next time!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87AF374_unk25
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "*nod*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=26

	def_text_script CompText87AF374_unk26
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_mugshot_animation animation=0x2
	.string "See you later!"
	ts_key_wait any=0x0
	ts_end

	