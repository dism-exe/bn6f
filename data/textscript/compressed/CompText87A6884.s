	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A6884::
	.word 0x6CB00

	text_archive_start

	def_text_script CompText87A6884_unk0
	ts_msg_open
	.string "Owww..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My ears are still\n"
	.string "ringing from all\n"
	.string "that yelling."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A6884_unk1
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "Could he have beaten\n"
	.string "the virus because\n"
	.string "our plan was leaked?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But then again,it's\n"
	.string "you we're talking\n"
	.string "about here,so..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87A6884_unk2
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Shut up,\n"
	.string "you useless Navi!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87A6884_unk3
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "What!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And here I am trying\n"
	.string "to comfort and calm\n"
	.string "you down!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A6884_unk4
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Shut up,you\n"
	.string "worthless Navi! If\n"
	.string "you were stronger,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you would've crushed\n"
	.string "a beginner like him!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87A6884_unk5
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "And I suppose it\n"
	.string "wasn't because you\n"
	.string "stink at operating?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87A6884_unk6

	def_text_script CompText87A6884_unk7
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Shut up,shut up!\n"
	.string "I can't do anything\n"
	.string "with you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Get away from me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87A6884_unk8
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "Hmph!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I was just about to\n"
	.string "leave anyway!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Then you can yell\n"
	.string "all you want,\n"
	.string "by yourself!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "See you,loser!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_wait frames=0x14
	ts_sound_play00 track=0x76
	ts_wait frames=0x1E
	ts_jump target=9

	def_text_script CompText87A6884_unk9
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Ah... HEY!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hmph,\n"
	.string "he really left..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A6884_unk10
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Darn it..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's all Lan's fault\n"
	.string "that things turned\n"
	.string "out like this..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Argh! If I could\n"
	.string "somehow crush him..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87A6884_unk11
	ts_mugshot_hide
	ts_msg_open
	.string "Kwohohoho..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Would you like\n"
	.string "my help?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x63
	.string "Kwohohoho..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A6884_unk12
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "W-Who's there!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87A6884_unk13
	ts_mugshot_hide
	ts_msg_open
	.string "Here,I'm here!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm in your PET!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A6884_unk14
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "W-What the!?\n"
	.string "Who are you...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87A6884_unk15
	ts_mugshot_show mugshot=0x51
	ts_msg_open
	ts_sound_play_bgm track=0x2
	.string "I am BlastMan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It seems that you\n"
	.string "want power..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "in order to defeat\n"
	.string "that new student..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87A6884_unk16
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "How did you know...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And where did...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87A6884_unk17
	ts_mugshot_show mugshot=0x51
	ts_msg_open
	.string "Don't worry about\n"
	.string "things like that..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do you or don't you\n"
	.string "want to crush the\n"
	.string "new student?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You have 5 seconds\n"
	.string "to decide..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "4,"
	ts_wait frames=0x3C
	.string "3,"
	ts_wait frames=0x3C
	.string "2,"
	ts_wait frames=0x3C
	.string "1"
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87A6884_unk18
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Y-Yes,help me...!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't care how,but\n"
	.string "I want to teach Lan\n"
	.string "a lesson!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87A6884_unk19
	ts_mugshot_show mugshot=0x51
	ts_msg_open
	.string "Kwohohoho..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ok...\n"
	.string "but why stop at one?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why not teach him a\n"
	.string "lesson over and over\n"
	.string "again?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Leave the fighting\n"
	.string "to me."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just sit back and\n"
	.string "watch me crush\n"
	.string "those two..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Kwohohoho!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87A6884_unk20
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "... *grin!!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A6884_unk21
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play_bgm track=0x63
	ts_sound_play00 track=0x177
	.string "*ding,"
	ts_wait frames=0x2A
	.string "dong,"
	ts_wait frames=0x28
	.string "ding,"
	ts_wait frames=0x28
	.string "dong*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	