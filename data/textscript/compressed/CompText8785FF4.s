	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8785FF4::
	.word 0xAF900

	text_archive_start

	def_text_script CompText8785FF4_unk0
	ts_check_chapter 0x22, 0x22, 0x18, 0xFF
	ts_check_game_version 0xFF, 0x5
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "It's really hot\n"
	.string "today... Huh?\n"
	.string "It's your fault!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk1
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Well,I'm done\n"
	.string "shopping... Now what\n"
	.string "should I do?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HELLO! WELCOME TO\n"
	.string "ANOTHER PEACEFUL DAY\n"
	.string "IN CENTRALAREA2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk3

	def_text_script CompText8785FF4_unk4

	def_text_script CompText8785FF4_unk5
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Hmmm... I'm really\n"
	.string "thirsty..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...*gulp*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk6

	def_text_script CompText8785FF4_unk7

	def_text_script CompText8785FF4_unk8

	def_text_script CompText8785FF4_unk9

	def_text_script CompText8785FF4_unk10

	def_text_script CompText8785FF4_unk11

	def_text_script CompText8785FF4_unk12

	def_text_script CompText8785FF4_unk13

	def_text_script CompText8785FF4_unk14

	def_text_script CompText8785FF4_unk15

	def_text_script CompText8785FF4_unk16

	def_text_script CompText8785FF4_unk17

	def_text_script CompText8785FF4_unk18

	def_text_script CompText8785FF4_unk19

	def_text_script CompText8785FF4_unk20
	ts_check_flag 0x38, 0x6, 0x16, 0xFF
	ts_flag_set 0x38, 0x6
	ts_msg_open
	ts_mugshot_show 0x47
	ts_msg_open
	.string "There's a Kettle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Start the battle!?"
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
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x47
	.string "Hurry up and let\n"
	.string "me fry him..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk21
	ts_mugshot_show 0x47
	ts_msg_open
	.string "Fire it up!!"
	ts_key_wait 0x0
	ts_flag_set 0x3C, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8785FF4_unk22
	ts_mugshot_show 0x47
	ts_msg_open
	.string "It's a Kettle...\n"
	.string "Time to light the\n"
	.string "candle and fight!?"
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
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x47
	.string "HUH! C'mon and let\n"
	.string "me smoke this guy!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk23

	def_text_script CompText8785FF4_unk24
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "There's some kind\n"
	.string "of fun event\n"
	.string "tomorrow,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can't miss fun\n"
	.string "events! Especially\n"
	.string "if they are free!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk25
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You!\n"
	.string "You've got to jack\n"
	.string "out now!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk26

	def_text_script CompText8785FF4_unk27

	def_text_script CompText8785FF4_unk28

	def_text_script CompText8785FF4_unk29

	def_text_script CompText8785FF4_unk30
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Unnggghhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk31

	def_text_script CompText8785FF4_unk32

	def_text_script CompText8785FF4_unk33

	def_text_script CompText8785FF4_unk34

	def_text_script CompText8785FF4_unk35

	def_text_script CompText8785FF4_unk36

	def_text_script CompText8785FF4_unk37

	def_text_script CompText8785FF4_unk38

	def_text_script CompText8785FF4_unk39

	def_text_script CompText8785FF4_unk40

	def_text_script CompText8785FF4_unk41

	def_text_script CompText8785FF4_unk42

	def_text_script CompText8785FF4_unk43

	def_text_script CompText8785FF4_unk44

	def_text_script CompText8785FF4_unk45

	def_text_script CompText8785FF4_unk46

	def_text_script CompText8785FF4_unk47

	def_text_script CompText8785FF4_unk48

	def_text_script CompText8785FF4_unk49

	def_text_script CompText8785FF4_unk50
	ts_check_flag 0xF1, 0x7, 0xFF, 0x34
	ts_check_flag 0x87, 0x6, 0x33, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Unnggghhh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Aren't you a\n"
	.string "member of the\n"
	.string "NetPolice?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Uh-huh... You...\n"
	.string "How did you...\n"
	.string "get here...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "I got the\n"
	.string "SoulWeapons\n"
	.string "in CentralArea1."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can leave the\n"
	.string "Cybeast to me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "I heard that it's\n"
	.string "on it's way to\n"
	.string "the SeasideArea..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've got to\n"
	.string "stop it quickly..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Take my\n"
	.string "SoulWeapons..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "...OK!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_mugshot_hide
	ts_player_animate_object 0x18
	ts_sound_play00 0x82, 0x1
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside MegaMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_call_reload_soul_weapons 0x0
	ts_flag_set 0x87, 0x6
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "You can do it...\n"
	.string "Good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk51
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

	def_text_script CompText8785FF4_unk52
	ts_mugshot_show 0x42
	ts_msg_open
	ts_mugshot_animation 0x1
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No response...\n"
	.string "It seems he passed\n"
	.string "out..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk53
	ts_mugshot_show 0x3E
	ts_msg_open
	ts_mugshot_animation 0x1
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No reaction..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk54
	ts_mugshot_show 0x41
	ts_msg_open
	ts_mugshot_animation 0x1
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No reaction..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk55
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
	.string "Do...do your best..."
	ts_key_wait 0x0
	ts_flag_set 0x46, 0x7
	ts_end

	def_text_script CompText8785FF4_unk56
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Take...take care..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk57

	def_text_script CompText8785FF4_unk58

	def_text_script CompText8785FF4_unk59

	def_text_script CompText8785FF4_unk60
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "I know the Expo is\n"
	.string "getting closer,and\n"
	.string "everyone is excited;"
	ts_key_wait 0x0
	ts_clear_msg
	.string "however,the trouble\n"
	.string "on the Net lately..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It seems to have\n"
	.string "clouded people's\n"
	.string "souls..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's such a\n"
	.string "complicated\n"
	.string "situation..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk61
	ts_mugshot_show 0x40
	ts_msg_open
	.string "I never neglect my\n"
	.string "daily hour of\n"
	.string "NetBattle training."
	ts_key_wait 0x0
	ts_clear_msg
	.string "For instance,no\n"
	.string "matter how skillful\n"
	.string "I become,I'm never"
	ts_key_wait 0x0
	ts_clear_msg
	.string "satisfied,and always\n"
	.string "devoted to getting\n"
	.string "better!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hiiiiyaaaah!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk62

	def_text_script CompText8785FF4_unk63

	def_text_script CompText8785FF4_unk64

	def_text_script CompText8785FF4_unk65
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "...Hey!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Didn't you appear\n"
	.string "in the Operator Navi\n"
	.string "Selection Test?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How did you do?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You passed?\n"
	.string "That's amazing!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh? How did I do?\n"
	.string "Let's not talk\n"
	.string "about that one,OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8785FF4_unk66
	ts_mugshot_show 0x40
	ts_msg_open
	.string "I'm on a special\n"
	.string "training course for"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the 2nd Operator\n"
	.string "Navi Selection Test.\n"
	.string "Waaaaatttaaaa!"
	ts_key_wait 0x0
	ts_end

	