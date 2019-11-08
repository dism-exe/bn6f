	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878D038::
	.word 0x8A700

	text_archive_start

	def_text_script CompText878D038_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HI! WELCOME TO\n"
	.string "SEASIDEAREA3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk1
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Ahhh... I'm so\n"
	.string "confused..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Which panel am I\n"
	.string "supposed to ride...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk2
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You look suspicious!\n"
	.string "...Or maybe not..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk3

	def_text_script CompText878D038_unk4

	def_text_script CompText878D038_unk5
	ts_mugshot_show 0x42
	ts_msg_open
	.string "A feeling of\n"
	.string "danger is in the\n"
	.string "air."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's worrying me...\n"
	.string "This area is safe...\n"
	.string "...Right?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk6

	def_text_script CompText878D038_unk7

	def_text_script CompText878D038_unk8

	def_text_script CompText878D038_unk9

	def_text_script CompText878D038_unk10
	ts_mugshot_show 0x42
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No reaction..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk11

	def_text_script CompText878D038_unk12

	def_text_script CompText878D038_unk13

	def_text_script CompText878D038_unk14

	def_text_script CompText878D038_unk15

	def_text_script CompText878D038_unk16

	def_text_script CompText878D038_unk17

	def_text_script CompText878D038_unk18

	def_text_script CompText878D038_unk19

	def_text_script CompText878D038_unk20

	def_text_script CompText878D038_unk21

	def_text_script CompText878D038_unk22

	def_text_script CompText878D038_unk23

	def_text_script CompText878D038_unk24

	def_text_script CompText878D038_unk25

	def_text_script CompText878D038_unk26

	def_text_script CompText878D038_unk27

	def_text_script CompText878D038_unk28

	def_text_script CompText878D038_unk29

	def_text_script CompText878D038_unk30

	def_text_script CompText878D038_unk31

	def_text_script CompText878D038_unk32

	def_text_script CompText878D038_unk33

	def_text_script CompText878D038_unk34

	def_text_script CompText878D038_unk35

	def_text_script CompText878D038_unk36

	def_text_script CompText878D038_unk37

	def_text_script CompText878D038_unk38

	def_text_script CompText878D038_unk39

	def_text_script CompText878D038_unk40

	def_text_script CompText878D038_unk41

	def_text_script CompText878D038_unk42

	def_text_script CompText878D038_unk43

	def_text_script CompText878D038_unk44

	def_text_script CompText878D038_unk45

	def_text_script CompText878D038_unk46

	def_text_script CompText878D038_unk47

	def_text_script CompText878D038_unk48

	def_text_script CompText878D038_unk49

	def_text_script CompText878D038_unk50
	ts_check_flag 0xF5, 0x7, 0xFF, 0x34
	ts_check_flag 0x8B, 0x6, 0x33, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Are you looking\n"
	.string "for \"HealWatr\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you are,it's\n"
	.string "flowing from the\n"
	.string "giant faucet at"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the very back of\n"
	.string "this area..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But the Evil\n"
	.string "Spirits might\n"
	.string "interfere..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I have nothing\n"
	.string "left... I can't\n"
	.string "fight back..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Will you...\n"
	.string "take care of the\n"
	.string "EvilSpirits...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good... Take these\n"
	.string "and use them..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_game_version 0xFF, 0x35
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_mugshot_hide
	ts_player_animate_object 0x18
	ts_sound_play00 0x82, 0x1
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside HeatMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_call_reload_soul_weapons 0x0
	ts_flag_set 0x8B, 0x6
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Take care of\n"
	.string "yourself..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk51
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Reload the\n"
	.string "SoulWeapons?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x37, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk52
	ts_mugshot_show 0x42
	ts_msg_open
	ts_mugshot_animation 0x1
	.string "Take care..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk53
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_mugshot_hide
	ts_player_animate_object 0x18
	ts_sound_play00 0x82, 0x1
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside SpoutMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_call_reload_soul_weapons 0x0
	ts_flag_set 0x8B, 0x6
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Take care of\n"
	.string "yourself..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk54

	def_text_script CompText878D038_unk55
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Reloading the Soul\n"
	.string "Weapons requires a\n"
	.string "bit of time..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "During that time,\n"
	.string "the EvilSpirits you\n"
	.string "have already taken"
	ts_key_wait 0x0
	ts_clear_msg
	.string "care of in this\n"
	.string "area may come back\n"
	.string "to haunt you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Is that OK?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x38, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Good luck..."
	ts_key_wait 0x0
	ts_flag_set 0x46, 0x7
	ts_end

	def_text_script CompText878D038_unk56
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk57

	def_text_script CompText878D038_unk58

	def_text_script CompText878D038_unk59

	def_text_script CompText878D038_unk60
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "...The recent\n"
	.string "trouble even caused\n"
	.string "damage here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I am usually here\n"
	.string "hanging out,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but luckily I wasn't\n"
	.string "here then..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was really lucky..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk61
	ts_mugshot_show 0x46
	ts_msg_open
	.string "That slide I just\n"
	.string "did... My form and\n"
	.string "speed were perfect!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hahaha!\n"
	.string "I even surprise\n"
	.string "myself sometimes!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk62

	def_text_script CompText878D038_unk63

	def_text_script CompText878D038_unk64

	def_text_script CompText878D038_unk65
	ts_mugshot_show 0x40
	ts_msg_open
	.string "I love livin' on\n"
	.string "the edge..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But make a mistake\n"
	.string "here and *poof*...\n"
	.string "It's all over!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...How exciting!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878D038_unk66
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "I'm used to\n"
	.string "battling water\n"
	.string "viruses..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe I'll go check\n"
	.string "out Green Area..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They say there are\n"
	.string "lots of grass\n"
	.string "viruses there..."
	ts_key_wait 0x0
	ts_end

	