	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8789A10::
	.word 0x8CE00

	text_archive_start

	def_text_script CompText8789A10_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WELCOME TO\n"
	.string "SEASIDEAREA1!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ALOHA!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk1
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Since the incident\n"
	.string "at the Aquarium,\n"
	.string "we're keeping a"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "closer look out,\n"
	.string "but paying this much\n"
	.string "attention is tiring!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk2
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText8789A10_unk5_id,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Never seen you\n"
	.string "around before..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You look like\n"
	.string "you've got a fiery\n"
	.string "personality!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can tell!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk3

	def_text_script CompText8789A10_unk4

	def_text_script CompText8789A10_unk5
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "You like to cry\n"
	.string "don't you?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can tell just\n"
	.string "by looking at you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Huh?\n"
	.string "You're not a\n"
	.string "crier?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't tell me\n"
	.string "that... Your\n"
	.string "eyes are watery!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk6

	def_text_script CompText8789A10_unk7

	def_text_script CompText8789A10_unk8

	def_text_script CompText8789A10_unk9

	def_text_script CompText8789A10_unk10
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hey you! You're just\n"
	.string "a regular Navi!?\n"
	.string "Hurry and jack out!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's been a\n"
	.string "disaster in\n"
	.string "CentralArea!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk11
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "What are you\n"
	.string "doing!? Hurry up\n"
	.string "and jack out!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk12

	def_text_script CompText8789A10_unk13

	def_text_script CompText8789A10_unk14

	def_text_script CompText8789A10_unk15
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Unnnggghhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk16

	def_text_script CompText8789A10_unk17

	def_text_script CompText8789A10_unk18

	def_text_script CompText8789A10_unk19

	def_text_script CompText8789A10_unk20

	def_text_script CompText8789A10_unk21

	def_text_script CompText8789A10_unk22

	def_text_script CompText8789A10_unk23

	def_text_script CompText8789A10_unk24

	def_text_script CompText8789A10_unk25

	def_text_script CompText8789A10_unk26

	def_text_script CompText8789A10_unk27

	def_text_script CompText8789A10_unk28

	def_text_script CompText8789A10_unk29

	def_text_script CompText8789A10_unk30

	def_text_script CompText8789A10_unk31

	def_text_script CompText8789A10_unk32

	def_text_script CompText8789A10_unk33

	def_text_script CompText8789A10_unk34

	def_text_script CompText8789A10_unk35

	def_text_script CompText8789A10_unk36

	def_text_script CompText8789A10_unk37

	def_text_script CompText8789A10_unk38

	def_text_script CompText8789A10_unk39

	def_text_script CompText8789A10_unk40

	def_text_script CompText8789A10_unk41

	def_text_script CompText8789A10_unk42

	def_text_script CompText8789A10_unk43

	def_text_script CompText8789A10_unk44

	def_text_script CompText8789A10_unk45

	def_text_script CompText8789A10_unk46

	def_text_script CompText8789A10_unk47

	def_text_script CompText8789A10_unk48

	def_text_script CompText8789A10_unk49

	def_text_script CompText8789A10_unk50
	ts_check_flag [
		flag: 0x7F3,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8789A10_unk52_id,
	]
	ts_check_flag [
		flag: 0x689,
		jumpIfTrue: CompText8789A10_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "You..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Continuing on\n"
	.string "is really...\n"
	.string "dangerous..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "EvilSpirits are\n"
	.string "flying all over..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you really want\n"
	.string "to keep going...\n"
	.string "take this..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can't use this\n"
	.string "anymore..."
	ts_key_wait any=0x0
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText8789A10_unk53_id,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_sound_play00 track=0x182
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside HeatMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_call_reload_soul_weapons
	ts_flag_set flag=0x689
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Take...care..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk51
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Reload the\n"
	.string "SoulWeapons?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x37, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Good luck..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk52
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No response...\n"
	.string "It seems he passed\n"
	.string "out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk53
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_sound_play00 track=0x182
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside SpoutMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_call_reload_soul_weapons
	ts_flag_set flag=0x689
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Take...care..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk54

	def_text_script CompText8789A10_unk55
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Reloading the Soul\n"
	.string "Weapons requires a\n"
	.string "bit of time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "During that time,\n"
	.string "the EvilSpirits you\n"
	.string "have already taken"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "care of in this\n"
	.string "area may come back\n"
	.string "to haunt you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is that OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x38, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Good luck..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x746
	ts_end

	def_text_script CompText8789A10_unk56
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Take...care..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk57

	def_text_script CompText8789A10_unk58

	def_text_script CompText8789A10_unk59

	def_text_script CompText8789A10_unk60
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "...According to\n"
	.string "this BBS,the\n"
	.string "recent trouble"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "was caused by the\n"
	.string "revival of the\n"
	.string "Cybeasts!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It-it's true...\n"
	.string "It's really scary!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk61
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "Checking out\n"
	.string "Mr.Progs and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Navis up here\n"
	.string "is fun!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You agree,right?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk62
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I'VE BEEN FEELING\n"
	.string "WEIRD EYES ON ME\n"
	.string "FOR A WHILE NOW."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "LIKE SOMEONE HAS\n"
	.string "BEEN WATCHING ME\n"
	.string "THE ENTIRE TIME..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk63

	def_text_script CompText8789A10_unk64

	def_text_script CompText8789A10_unk65
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Hey...\n"
	.string "Listen to this..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The Operator Navi\n"
	.string "Selection Test...\n"
	.string "I forgot to sign up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HA"
	ts_wait frames=0x1E
	.string "HA"
	ts_wait frames=0x1E
	.string "HA"
	ts_wait frames=0x1E
	.string "HA!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "All I can do is\n"
	.string "laugh about it now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HA"
	ts_wait frames=0x1E
	.string "HA"
	ts_wait frames=0x1E
	.string "HA"
	ts_wait frames=0x1E
	.string "WAAAHH!..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm starting to\n"
	.string "cry...!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk66
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "Huh? What am I\n"
	.string "doing?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The post I made\n"
	.string "on this BBS..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm seeing if there\n"
	.string "are any Navis who\n"
	.string "will reply..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8789A10_unk67

	def_text_script CompText8789A10_unk68

	def_text_script CompText8789A10_unk69

	def_text_script CompText8789A10_unk70

	def_text_script CompText8789A10_unk71

	def_text_script CompText8789A10_unk72

	def_text_script CompText8789A10_unk73

	def_text_script CompText8789A10_unk74

	def_text_script CompText8789A10_unk75

	def_text_script CompText8789A10_unk76

	def_text_script CompText8789A10_unk77

	def_text_script CompText8789A10_unk78

	def_text_script CompText8789A10_unk79

	def_text_script CompText8789A10_unk80

	def_text_script CompText8789A10_unk81

	def_text_script CompText8789A10_unk82

	def_text_script CompText8789A10_unk83

	def_text_script CompText8789A10_unk84

	def_text_script CompText8789A10_unk85

	def_text_script CompText8789A10_unk86

	def_text_script CompText8789A10_unk87

	def_text_script CompText8789A10_unk88

	def_text_script CompText8789A10_unk89

	def_text_script CompText8789A10_unk90

	def_text_script CompText8789A10_unk91

	def_text_script CompText8789A10_unk92

	def_text_script CompText8789A10_unk93

	def_text_script CompText8789A10_unk94

	def_text_script CompText8789A10_unk95

	def_text_script CompText8789A10_unk96

	def_text_script CompText8789A10_unk97

	def_text_script CompText8789A10_unk98

	def_text_script CompText8789A10_unk99

	