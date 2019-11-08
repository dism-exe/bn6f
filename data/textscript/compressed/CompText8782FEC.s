	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8782FEC::
	.word 0x1B7E00

	text_archive_start

	def_text_script CompText8782FEC_unk0
	ts_check_chapter 0x22, 0x22, 0x19, 0xFF
	ts_check_game_version 0xFF, 0x4
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HOT!! HOT!HOT!HOT!\n"
	.string "DON'T GET TO CLOSE!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk1
	ts_check_chapter 0x22, 0x22, 0x1A, 0xFF
	ts_check_game_version 0xFF, 0x5
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I just saw a virus\n"
	.string "that looks like a\n"
	.string "Kettle! Weird..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk2
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Yep... Nothing\n"
	.string "out of the ordinary!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This patrol is\n"
	.string "really a pain!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk3
	ts_check_chapter 0x22, 0x22, 0x1B, 0xFF
	ts_check_game_version 0xFF, 0x6
	ts_mugshot_show 0x45
	ts_msg_open
	.string "You look like you're\n"
	.string "really on fire,\n"
	.string "Mr.Navi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Would I get burned\n"
	.string "if I touched you?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk4
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I WONDER WHO IS\n"
	.string "TALLER... YOU OR\n"
	.string "ME?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NO ADDING THE\n"
	.string "WATER FOUNTAIN\n"
	.string "ON YOUR HEAD!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk5
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "If you got spilled,\n"
	.string "that would be awful!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk6
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Yay!\n"
	.string "Awww... You are\n"
	.string "SOOO cute!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can I take you\n"
	.string "home... No!?\n"
	.string "Awwwwwwww...."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk7

	def_text_script CompText8782FEC_unk8

	def_text_script CompText8782FEC_unk9

	def_text_script CompText8782FEC_unk10

	def_text_script CompText8782FEC_unk11

	def_text_script CompText8782FEC_unk12

	def_text_script CompText8782FEC_unk13

	def_text_script CompText8782FEC_unk14

	def_text_script CompText8782FEC_unk15

	def_text_script CompText8782FEC_unk16

	def_text_script CompText8782FEC_unk17

	def_text_script CompText8782FEC_unk18

	def_text_script CompText8782FEC_unk19

	def_text_script CompText8782FEC_unk20
	ts_check_flag 0x37, 0x6, 0x16, 0xFF
	ts_flag_set 0x37, 0x6
	ts_mugshot_show 0x47
	ts_msg_open
	.string "There's a Kettle\n"
	.string "burning for a fight!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Fire up the battle!?"
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
	.string "C'mon... You aren't\n"
	.string "nervous,are you?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk21
	ts_mugshot_show 0x47
	ts_msg_open
	.string "Let's light this\n"
	.string "guy up!!"
	ts_key_wait 0x0
	ts_flag_set 0x3B, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8782FEC_unk22
	ts_mugshot_show 0x47
	ts_msg_open
	.string "It's a Kettle...\n"
	.string "Should we battle?"
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
	.string "C'mon!\n"
	.string "Let me fight!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk23

	def_text_script CompText8782FEC_unk24

	def_text_script CompText8782FEC_unk25
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HELLO!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "CENTRALAREA1 IS\n"
	.string "PEACEFUL TODAY...\n"
	.string "AS USUAL..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "TOMORROW WILL\n"
	.string "SURELY BE PEACEFUL."
	ts_key_wait 0x0
	ts_clear_msg
	.string "SAME PEACE,\n"
	.string "DIFFERENT DAY."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk26
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Looks like Central\n"
	.string "Area3 has something\n"
	.string "interesting going"
	ts_key_wait 0x0
	ts_clear_msg
	.string "on! I can't wait to\n"
	.string "check it out!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk27
	ts_mugshot_show 0x45
	ts_msg_open
	.string "I can't believe\n"
	.string "how excited I am!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk28

	def_text_script CompText8782FEC_unk29

	def_text_script CompText8782FEC_unk30
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You need to jack\n"
	.string "out quick! The\n"
	.string "Net isn't safe!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you stay online,\n"
	.string "it's your own\n"
	.string "responsibility!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk31

	def_text_script CompText8782FEC_unk32

	def_text_script CompText8782FEC_unk33

	def_text_script CompText8782FEC_unk34

	def_text_script CompText8782FEC_unk35
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Ahh,ahhhhh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A clown...looking...\n"
	.string "Navi...he got me...\n"
	.string "NOOOOoooooooo..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk36

	def_text_script CompText8782FEC_unk37

	def_text_script CompText8782FEC_unk38

	def_text_script CompText8782FEC_unk39

	def_text_script CompText8782FEC_unk40

	def_text_script CompText8782FEC_unk41

	def_text_script CompText8782FEC_unk42

	def_text_script CompText8782FEC_unk43

	def_text_script CompText8782FEC_unk44

	def_text_script CompText8782FEC_unk45

	def_text_script CompText8782FEC_unk46

	def_text_script CompText8782FEC_unk47

	def_text_script CompText8782FEC_unk48

	def_text_script CompText8782FEC_unk49

	def_text_script CompText8782FEC_unk50
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

	def_text_script CompText8782FEC_unk51
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

	def_text_script CompText8782FEC_unk52
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

	def_text_script CompText8782FEC_unk53
	ts_mugshot_show 0x42
	ts_msg_open
	ts_mugshot_animation 0x1
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No reaction..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk54

	def_text_script CompText8782FEC_unk55
	ts_check_flag 0xF0, 0x7, 0xFF, 0x3A
	ts_check_flag 0x86, 0x6, 0x38, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "*Huff Huff*..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Who,who are you?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "I'm a NetPolice\n"
	.string "officer."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I came to check the\n"
	.string "area where the\n"
	.string "Cybeast appeared,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but,along with the\n"
	.string "Cybeast,Evil\n"
	.string "Spirits and ghosts"
	ts_key_wait 0x0
	ts_clear_msg
	.string "came up and are\n"
	.string "blocking the road!\n"
	.string "I can't keep going!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Uggghhhhh!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "You OK!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "The power of the\n"
	.string "Cybeast must be\n"
	.string "affecting me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can feel pain\n"
	.string "all over..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But... But...\n"
	.string "I have to keep\n"
	.string "going..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have to stop\n"
	.string "the Cybeast..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "...I'll go!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "No!!\n"
	.string "You'll get deleted\n"
	.string "for sure!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "No... I'll be OK!\n"
	.string "Let me go after\n"
	.string "them!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "You... ."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "OK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmmm... I wonder..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can see the\n"
	.string "strength in your\n"
	.string "eyes..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think you can do\n"
	.string "something about the\n"
	.string "Cybeast..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You... This..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They are weapons to\n"
	.string "defeat the Evil\n"
	.string "Spirits on the road."
	ts_key_wait 0x0
	ts_clear_msg
	.string "SoulKnife,SoulSword,\n"
	.string "SoulAxe,and SoulGun."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Install these into\n"
	.string "your body..."
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
	ts_flag_set 0x86, 0x6
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "The weapons that\n"
	.string "were just installed\n"
	.string "each have different"
	ts_key_wait 0x0
	ts_clear_msg
	.string "attack ranges.\n"
	.string "Look at the Evil\n"
	.string "Spirits and then"
	ts_key_wait 0x0
	ts_clear_msg
	.string "choose which weapon\n"
	.string "to use.Press the\n"
	.string "A Button,and then"
	ts_key_wait 0x0
	ts_clear_msg
	.string "use the +Control Pad\n"
	.string "to select a weapon."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There are 3 types\n"
	.string "of EvilSpirits..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When an EvilSpirit\n"
	.string "is hit with an\n"
	.string "attack,they will"
	ts_key_wait 0x0
	ts_clear_msg
	.string "turn blue,yellow,or\n"
	.string "red."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When an EvilSpirit\n"
	.string "is red,another hit\n"
	.string "will defeat it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you attack an\n"
	.string "EvilSpirit from the\n"
	.string "rear,it will finish"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it off regardless of\n"
	.string "its color!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you don't defeat\n"
	.string "the EvilSpirit with\n"
	.string "an attack,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you will get hit by\n"
	.string "counter attacks from\n"
	.string "nearby EvilSpirits."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk56
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Do you know\n"
	.string "how to use the\n"
	.string "SoulWeapons?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Or would you like\n"
	.string "to reload the\n"
	.string "SoulWeapons?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string "Hear Explanation\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string "Reload SoulWeapons\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string "Quit"
	ts_select 0x7, 0x80, 0x39, 0x3C, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x42
	.string "I see...\n"
	.string "Good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk57
	ts_text_speed 0x2
	ts_mugshot_show 0x42
	ts_msg_open
	.string "The weapons that\n"
	.string "were just installed\n"
	.string "each have different"
	ts_key_wait 0x0
	ts_clear_msg
	.string "attack ranges.\n"
	.string "Look at the Evil\n"
	.string "Spirits and then"
	ts_key_wait 0x0
	ts_clear_msg
	.string "choose which weapon\n"
	.string "to use.Press the\n"
	.string "A Button,and then"
	ts_key_wait 0x0
	ts_clear_msg
	.string "use the +Control Pad\n"
	.string "to select a weapon."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There are 3 types\n"
	.string "of EvilSpirits..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When an EvilSpirit\n"
	.string "is hit with an\n"
	.string "attack,they will"
	ts_key_wait 0x0
	ts_clear_msg
	.string "turn blue,yellow,or\n"
	.string "red."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When an EvilSpirit\n"
	.string "is red,another hit\n"
	.string "will defeat it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you attack an\n"
	.string "EvilSpirit from the\n"
	.string "rear,it will finish"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it off regardless of\n"
	.string "its color!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you don't defeat\n"
	.string "the EvilSpirit with\n"
	.string "an attack,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you will get hit by\n"
	.string "counter attacks from\n"
	.string "nearby EvilSpirits."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk58
	ts_mugshot_show 0x42
	ts_msg_open
	ts_mugshot_animation 0x1
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No response...\n"
	.string "Must be passed out\n"
	.string "or something..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk59
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Y,You..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk60
	ts_text_speed 0x2
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
	ts_select 0x6, 0x80, 0xFF, 0x3D, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Do...do your best..."
	ts_key_wait 0x0
	ts_flag_set 0x46, 0x7
	ts_end

	def_text_script CompText8782FEC_unk61
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Uggghhh...\n"
	.string "Good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk62

	def_text_script CompText8782FEC_unk63

	def_text_script CompText8782FEC_unk64

	def_text_script CompText8782FEC_unk65

	def_text_script CompText8782FEC_unk66

	def_text_script CompText8782FEC_unk67

	def_text_script CompText8782FEC_unk68

	def_text_script CompText8782FEC_unk69

	def_text_script CompText8782FEC_unk70

	def_text_script CompText8782FEC_unk71

	def_text_script CompText8782FEC_unk72

	def_text_script CompText8782FEC_unk73

	def_text_script CompText8782FEC_unk74

	def_text_script CompText8782FEC_unk75

	def_text_script CompText8782FEC_unk76

	def_text_script CompText8782FEC_unk77

	def_text_script CompText8782FEC_unk78

	def_text_script CompText8782FEC_unk79

	def_text_script CompText8782FEC_unk80
	ts_check_flag 0x57, 0x8, 0x51, 0xFF
	ts_flag_set 0x57, 0x8
	ts_msg_open
	ts_mugshot_show 0x46
	.string "Welcome!\n"
	.string "Everyone gather\n"
	.string "around!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now is the time\n"
	.string "for the Expo"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Pavilion Operator\n"
	.string "Navi Selection\n"
	.string "Test!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The requirement\n"
	.string "to be chosen as the\n"
	.string "Operator Navi is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "simply being the\n"
	.string "best Navi in all of\n"
	.string "Cyber City!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This selection test\n"
	.string "will examine every"
	ts_key_wait 0x0
	ts_clear_msg
	.string "single ability of\n"
	.string "your Navi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Allow me to explain\n"
	.string "today's first event."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The first event will\n"
	.string "test everyone's\n"
	.string "intellect."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So... Listen to what\n"
	.string "I say and think very\n"
	.string "very hard. Then go"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and find what I was\n"
	.string "talking about..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The first thing is\n"
	.string "a \"cyberseal\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What? Too hard!?\n"
	.string "Here's a hint!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When you hear seal,\n"
	.string "it brings to mind\n"
	.string "a certain place..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Aqua...\n"
	.string "That's all I'm\n"
	.string "going to say!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The rest is up to\n"
	.string "you. Use your\n"
	.string "brains!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Next to the\n"
	.string "\"cyberseal,\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "there is a Navi\n"
	.string "who looks like us\n"
	.string "waiting for you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck everyone!\n"
	.string "You may begin!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk81
	ts_msg_open
	ts_mugshot_show 0x46
	.string "The thing you're\n"
	.string "looking for\n"
	.string "is a \"cyberseal\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What? Too hard!?\n"
	.string "Here's a hint!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When you hear seal,\n"
	.string "it brings to mind\n"
	.string "a certain place..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Aqua...\n"
	.string "That's all I'm\n"
	.string "going to say!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The rest is up to\n"
	.string "you. Use your\n"
	.string "brains!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk82
	ts_check_flag 0x57, 0x8, 0x53, 0xFF
	ts_msg_open
	ts_mugshot_show 0x45
	.string "Everyone who would\n"
	.string "like to enter the\n"
	.string "Expo Pavilion"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Operator Navi\n"
	.string "Selection Test\n"
	.string "should gather here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk83
	ts_msg_open
	ts_mugshot_show 0x45
	.string "Do you understand\n"
	.string "what a \"cyberseal\"\n"
	.string "is?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well then let me\n"
	.string "give everyone who\n"
	.string "is stuck a hint!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A seal is something\n"
	.string "that lives in the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "water... So a cyber-\n"
	.string "seal would have to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "be somewhere\n"
	.string "connected to Seaside\n"
	.string "Area!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright... Happy\n"
	.string "hunting!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk84

	def_text_script CompText8782FEC_unk85

	def_text_script CompText8782FEC_unk86

	def_text_script CompText8782FEC_unk87

	def_text_script CompText8782FEC_unk88

	def_text_script CompText8782FEC_unk89

	def_text_script CompText8782FEC_unk90
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WHEN YOU THINK ABOUT\n"
	.string "IT,THE EXPO OPENING\n"
	.string "IS FAST APPROACHING!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "EVERYONE HERE IN\n"
	.string "CENTRALAREA1 IS\n"
	.string "VERY EXCITED!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk91
	ts_mugshot_show 0x57
	ts_msg_open
	.string "I'm the one who'll\n"
	.string "be picked to be the\n"
	.string "Operator Navi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I definitely\n"
	.string "won't lose to\n"
	.string "someone like you!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk92
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Being the Operator\n"
	.string "Navi would be like\n"
	.string "being a star!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll going to try my\n"
	.string "best to make it\n"
	.string "happen!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk93
	ts_mugshot_show 0x41
	ts_msg_open
	.string "No matter what,I'm\n"
	.string "going to be the\n"
	.string "Operator Navi!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk94
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Whoever becomes the\n"
	.string "Operator Navi will\n"
	.string "be really famous!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk95

	def_text_script CompText8782FEC_unk96

	def_text_script CompText8782FEC_unk97

	def_text_script CompText8782FEC_unk98

	def_text_script CompText8782FEC_unk99

	def_text_script CompText8782FEC_unk100
	ts_mugshot_show 0x41
	ts_msg_open
	.string "You took the\n"
	.string "Operator Navi\n"
	.string "Selection Test?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I failed... Nothing\n"
	.string "in this world is\n"
	.string "that easy,huh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It was a learning\n"
	.string "experience... Not a\n"
	.string "failure... Yeah..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk101
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Man,don't you think\n"
	.string "this part of the\n"
	.string "Net is U-G-L-Y?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess it's because\n"
	.string "there was just a\n"
	.string "huge riot here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've been thinking\n"
	.string "of taking a break\n"
	.string "from the Net..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can't change\n"
	.string "your life you\n"
	.string "know..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782FEC_unk102
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I tried to just\n"
	.string "hang out at the\n"
	.string "NetCafe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I can't quit!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't care how\n"
	.string "ugly the Net is...!"
	ts_key_wait 0x0
	ts_end

	