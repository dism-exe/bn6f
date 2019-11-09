	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877F594::
	.word 0x157000

	text_archive_start

	def_text_script CompText877F594_unk0
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Please don't just\n"
	.string "ride the elevator\n"
	.string "at your leisure!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The elevator\n"
	.string "is completely\n"
	.string "stopped..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if the\n"
	.string "elevator control"
	ts_key_wait 0x0
	ts_clear_msg
	.string "program has a\n"
	.string "problem?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk2

	def_text_script CompText877F594_unk3

	def_text_script CompText877F594_unk4

	def_text_script CompText877F594_unk5
	ts_check_game_version 0xFF, 0x6
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Class is not\n"
	.string "finished yet!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk6
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Hey! Where are you\n"
	.string "going!? My class\n"
	.string "isn't over yet!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk7

	def_text_script CompText877F594_unk8
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Sorry you came all\n"
	.string "the way here,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but I am not holding\n"
	.string "class at the moment."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come again another\n"
	.string "time..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk9
	ts_check_flag 0x63, 0x1, 0x8, 0xFF
	ts_check_flag 0x20, 0x1, 0xFF, 0x8
	ts_check_flag 0x3E, 0xA, 0x12, 0xFF
	ts_check_flag 0x3C, 0xA, 0xE, 0xFF
	ts_check_flag 0x3A, 0xA, 0xD, 0xFF
	ts_check_flag 0x38, 0xA, 0xC, 0xFF
	ts_check_flag 0x36, 0xA, 0xB, 0xFF
	ts_mugshot_show 0x20
	ts_msg_open
	.string "I am Ms.Ann Zap."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You must be here\n"
	.string "to enroll in my\n"
	.string "class?"
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
	ts_select 0x6, 0x80, 0xFF, 0x13, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x20
	.string "Once class has begun\n"
	.string "you may not quit for\n"
	.string "any reason."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You may also not\n"
	.string "exit until class is\n"
	.string "completed."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Is that understood?"
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
	ts_select 0x6, 0x80, 0xFF, 0x13, 0xFF
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x35, 0xA
	ts_end

	def_text_script CompText877F594_unk10
	ts_check_flag 0x63, 0x1, 0x8, 0xFF
	ts_check_flag 0x20, 0x1, 0xFF, 0x8
	ts_check_flag 0x76, 0xA, 0x9, 0xFF
	ts_flag_set 0x76, 0xA
	ts_check_chapter 0x43, 0x46, 0x23, 0xFF
	ts_jump 9

	def_text_script CompText877F594_unk11
	ts_mugshot_show 0x20
	ts_msg_open
	.string "OK,you may operate\n"
	.string "ElecMan from this\n"
	.string "panel."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk12
	ts_mugshot_show 0x20
	ts_msg_open
	.string "What's the matter?\n"
	.string "Class is still in\n"
	.string "session."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk13
	ts_mugshot_show 0x20
	ts_msg_open
	.string "This is troubling.\n"
	.string "You must gather the\n"
	.string "cyberbatteries,now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk14
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Now,shall we begin\n"
	.string "the final test?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you prepared?"
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
	ts_select 0x6, 0x80, 0xF, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x20
	.string "I see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,you cannot\n"
	.string "complete class\n"
	.string "without passing."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk15
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Let's begin!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Bring it on\n"
	.string "anytime!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x7E, 0xA
	ts_end

	def_text_script CompText877F594_unk16
	ts_mugshot_show 0x20
	ts_msg_open
	.string "It seems you are\n"
	.string "ready to begin the\n"
	.string "final test,correct?"
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
	ts_select 0x6, 0x80, 0xF, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x20
	.string "I see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,you cannot\n"
	.string "complete class\n"
	.string "without passing."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk17
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Hahahaha...\n"
	.string "You still have a\n"
	.string "long way to go."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you want to\n"
	.string "try again?"
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
	ts_select 0x6, 0x80, 0xF, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x20
	.string "I see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,you cannot\n"
	.string "complete class\n"
	.string "without passing."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk18
	ts_mugshot_show 0x20
	ts_msg_open
	ts_jump 50
	ts_end

	def_text_script CompText877F594_unk19
	ts_mugshot_show 0x20
	ts_msg_open
	.string "I see...\n"
	.string "Come again\n"
	.string "sometime..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk20
	ts_check_flag 0x63, 0x1, 0x1E, 0xFF
	ts_check_flag 0x20, 0x1, 0xFF, 0x1E
	ts_check_flag 0x80, 0xA, 0x1C, 0xFF
	ts_flag_set 0x80, 0xA
	ts_check_chapter 0x43, 0x46, 0x24, 0xFF
	ts_jump 28

	def_text_script CompText877F594_unk21
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Operate TomahawkMan\n"
	.string "from this control\n"
	.string "panel here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk22
	ts_mugshot_show 0x21
	ts_msg_open
	.string "I'm going to go\n"
	.string "check things out\n"
	.string "from above!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do your best!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk23
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Lan,the final test\n"
	.string "is a battle with\n"
	.string "TomahawkMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure you're\n"
	.string "already prepared!!"
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
	ts_select 0x6, 0x80, 0x18, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x21
	.string "Huh?\n"
	.string "That's not like\n"
	.string "you at all!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk24
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Chop him up,\n"
	.string "TomahawkMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Let's go MegaMan!\n"
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x8E, 0xA
	ts_end

	def_text_script CompText877F594_unk25
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Lan,let's start the\n"
	.string "final test!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is a battle with\n"
	.string "TomahawkMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure you're\n"
	.string "already prepared!!"
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
	ts_select 0x6, 0x80, 0x18, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x21
	.string "Hmmm... That's not\n"
	.string "like you. Are you\n"
	.string "nervous?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk26
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Awww,too bad for\n"
	.string "you,huh!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about giving\n"
	.string "it another shot!?"
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
	ts_select 0x6, 0x80, 0x18, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x21
	.string "Hmmm. Not like you.\n"
	.string "You aren't a bit\n"
	.string "nervous,are you!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk27
	ts_mugshot_show 0x21
	ts_msg_open
	ts_jump 60
	ts_end

	def_text_script CompText877F594_unk28
	ts_check_flag 0x63, 0x1, 0x1E, 0xFF
	ts_check_flag 0x20, 0x1, 0xFF, 0x1E
	ts_check_flag 0x44, 0xA, 0x1B, 0xFF
	ts_check_flag 0x8C, 0xA, 0x17, 0xFF
	ts_check_flag 0x42, 0xA, 0x16, 0xFF
	ts_check_flag 0x40, 0xA, 0x15, 0xFF
	ts_mugshot_show 0x21
	ts_msg_open
	.string "You're here to\n"
	.string "take my class!?"
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
	ts_select 0x6, 0x80, 0xFF, 0x1D, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x21
	.string "Once class starts,\n"
	.string "you aren't allowed\n"
	.string "to suddenly quit."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You are also not\n"
	.string "allowed to leave\n"
	.string "before class ends!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Those two rules\n"
	.string "OK with you?"
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
	ts_select 0x6, 0x80, 0xFF, 0x1D, 0xFF
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x3F, 0xA
	ts_end

	def_text_script CompText877F594_unk29
	ts_mugshot_show 0x21
	ts_msg_open
	.string "I see...\n"
	.string "Well,come back when\n"
	.string "you are up to it!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk30
	ts_mugshot_show 0x21
	ts_msg_open
	.string "My apologies,\n"
	.string "but I'm not\n"
	.string "holding class now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come another\n"
	.string "time,OK!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk31

	def_text_script CompText877F594_unk32

	def_text_script CompText877F594_unk33

	def_text_script CompText877F594_unk34

	def_text_script CompText877F594_unk35
	ts_clear_msg
	ts_mugshot_show 0x20
	ts_msg_open
	.string "This is indeed\n"
	.string "strange weather."
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,I will\n"
	.string "not cancel class\n"
	.string "due to the weather!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText877F594_unk36
	ts_clear_msg
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Yo!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is some strange\n"
	.string "weather,but we still\n"
	.string "have class!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 28

	def_text_script CompText877F594_unk37

	def_text_script CompText877F594_unk38

	def_text_script CompText877F594_unk39

	def_text_script CompText877F594_unk40

	def_text_script CompText877F594_unk41

	def_text_script CompText877F594_unk42

	def_text_script CompText877F594_unk43

	def_text_script CompText877F594_unk44

	def_text_script CompText877F594_unk45

	def_text_script CompText877F594_unk46

	def_text_script CompText877F594_unk47

	def_text_script CompText877F594_unk48

	def_text_script CompText877F594_unk49

	def_text_script CompText877F594_unk50
	ts_check_flag 0x20, 0x1, 0xFF, 0x46
	ts_check_flag 0x4, 0x13, 0x33, 0xFF
	ts_flag_set 0x4, 0x13
	ts_mugshot_show 0x20
	ts_msg_open
	.string "And what can I\n"
	.string "do for you?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I suppose you'd\n"
	.string "like to NetBattle?"
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
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x20
	.string "I see... If you\n"
	.string "have nothing to\n"
	.string "do,don't stare!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk51
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Is there something\n"
	.string "on my face?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Or maybe you'd just\n"
	.string "like to NetBattle?"
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
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x20
	.string "I see... If you\n"
	.string "have nothing to\n"
	.string "do,don't stare!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk52
	ts_check_chapter 0x60, 0xFF, 0x37, 0xFF
	ts_check_chapter 0x50, 0x5F, 0x36, 0xFF
	ts_check_chapter 0x40, 0x4F, 0x35, 0xFF
	ts_end

	def_text_script CompText877F594_unk53
	ts_mugshot_show 0x20
	ts_msg_open
	.string "ElecMan!\n"
	.string "Show them a truly\n"
	.string "graceful battle!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Grace is not the\n"
	.string "most important\n"
	.string "thing in battle!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x49
	.string "Hmph! You'll be\n"
	.string "shocked in no\n"
	.string "time..."
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x1E, 0x13
	ts_end

	def_text_script CompText877F594_unk54
	ts_check_flag 0x22, 0x13, 0xFF, 0x35
	ts_mugshot_show 0x20
	ts_msg_open
	.string "ElecMan! Give those\n"
	.string "cretins a taste\n"
	.string "of electricity!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "What? Shocking\n"
	.string "people is no fair!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x49
	.string "Can you escape\n"
	.string "my electric shock!?"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x1F, 0x13
	ts_end

	def_text_script CompText877F594_unk55
	ts_check_flag 0x8, 0x3, 0xFF, 0x36
	ts_check_flag 0x22, 0x13, 0xFF, 0x35
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Alright ElecMan!\n"
	.string "Show them the\n"
	.string "sparks!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I won't be caught\n"
	.string "off-guard by some\n"
	.string "silly sparks!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x49
	.string "Yeah! But let's\n"
	.string "see how you handle\n"
	.string "a million volts!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x20, 0x13
	ts_end

	def_text_script CompText877F594_unk56

	def_text_script CompText877F594_unk57
	ts_check_flag 0x22, 0x13, 0x3A, 0xFF
	ts_flag_set 0x22, 0x13
	ts_jump 58

	def_text_script CompText877F594_unk58
	ts_mugshot_show 0x20
	ts_msg_open
	.string "I may have been\n"
	.string "defeated,but my\n"
	.string "grace still won!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk59
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Grace in battle!\n"
	.string "Grace in victory!\n"
	.string "That's NetBattling!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk60
	ts_check_flag 0x20, 0x1, 0xFF, 0x47
	ts_check_flag 0x5, 0x13, 0x3D, 0xFF
	ts_flag_set 0x5, 0x13
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Lan!!\n"
	.string "Let's NetBattle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "TomahawkMan is\n"
	.string "itching for a fight!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's hurry and\n"
	.string "start the fight!"
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
	ts_select 0x6, 0x80, 0x3E, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x21
	.string "Wh... What!?\n"
	.string "Fight!! Fight!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk61
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Let's NetBattle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "TomahawkMan and I\n"
	.string "have been itching\n"
	.string "for a battle!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's hurry up and\n"
	.string "start the fight!"
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
	ts_select 0x6, 0x80, 0x3E, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x21
	.string "Wh... What!?\n"
	.string "Fight!! Fight!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk62
	ts_check_chapter 0x60, 0xFF, 0x41, 0xFF
	ts_check_chapter 0x50, 0x5F, 0x40, 0xFF
	ts_check_chapter 0x40, 0x4F, 0x3F, 0xFF
	ts_end

	def_text_script CompText877F594_unk63
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Yeah!! Let's go!!\n"
	.string "Smash him,\n"
	.string "TomahawkMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Bring it on!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4A
	.string "Here I come!!\n"
	.string "Raaaaawwwrrrr!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x23, 0x13
	ts_end

	def_text_script CompText877F594_unk64
	ts_check_flag 0x27, 0x13, 0xFF, 0x3F
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Slice those guys\n"
	.string "up TomahawkMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Time to fight\n"
	.string "face to face!!\n"
	.string "Let's go,"
	ts_print_current_navi
	.string "!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4A
	.string "Raaawwwwrrrr!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x24, 0x13
	ts_end

	def_text_script CompText877F594_unk65
	ts_check_flag 0x26, 0x3, 0xFF, 0x40
	ts_check_flag 0x27, 0x13, 0xFF, 0x3F
	ts_mugshot_show 0x21
	ts_msg_open
	.string "By the power of\n"
	.string "my ancestor's\n"
	.string "ancient totem pole!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm coming for\n"
	.string "you,Lan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Bring it on\n"
	.string "Dingo!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4A
	.string "Raaawwwwrrrr!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x25, 0x13
	ts_end

	def_text_script CompText877F594_unk66

	def_text_script CompText877F594_unk67
	ts_check_flag 0x27, 0x13, 0x44, 0xFF
	ts_flag_set 0x27, 0x13
	ts_jump 68

	def_text_script CompText877F594_unk68
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Nooo!!\n"
	.string "Next time I swear\n"
	.string "I will not lose!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk69
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Excellent fight!\n"
	.string "Come fight me\n"
	.string "anytime!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk70
	ts_check_chapter 0x52, 0x52, 0x48, 0xFF
	ts_jump 76

	def_text_script CompText877F594_unk71
	ts_check_chapter 0x52, 0x52, 0x49, 0xFF
	ts_jump 77

	def_text_script CompText877F594_unk72
	ts_check_flag 0x1F, 0xC, 0x4A, 0xFF
	ts_jump 76

	def_text_script CompText877F594_unk73
	ts_check_flag 0x1F, 0xC, 0x4B, 0xFF
	ts_jump 77

	def_text_script CompText877F594_unk74
	ts_mugshot_show 0x20
	ts_msg_open
	.string "...MegaMan?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I understand.\n"
	.string "You may use ElecMan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "ElecMan is your\n"
	.string "LinkNavi. Operate\n"
	.string "him as you wish."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk75
	ts_mugshot_show 0x21
	ts_msg_open
	.string "What did you say\n"
	.string "about MegaMan...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If that's true,then\n"
	.string "you should use\n"
	.string "TomahawkMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He would be happy\n"
	.string "to lend a tomahawk!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk76
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Without MegaMan\n"
	.string "you cannot\n"
	.string "NetBattle."
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,you can\n"
	.string "use ElecMan whenever\n"
	.string "you'd like."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk77
	ts_mugshot_show 0x21
	ts_msg_open
	.string "No MegaMan means\n"
	.string "no NetBattling..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So you can use\n"
	.string "TomahawkMan whenever\n"
	.string "you want!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877F594_unk78

	def_text_script CompText877F594_unk79

	def_text_script CompText877F594_unk80

	def_text_script CompText877F594_unk81

	def_text_script CompText877F594_unk82

	def_text_script CompText877F594_unk83

	def_text_script CompText877F594_unk84

	def_text_script CompText877F594_unk85

	def_text_script CompText877F594_unk86

	def_text_script CompText877F594_unk87

	def_text_script CompText877F594_unk88

	def_text_script CompText877F594_unk89

	def_text_script CompText877F594_unk90

	def_text_script CompText877F594_unk91

	def_text_script CompText877F594_unk92

	def_text_script CompText877F594_unk93

	def_text_script CompText877F594_unk94

	def_text_script CompText877F594_unk95

	def_text_script CompText877F594_unk96

	def_text_script CompText877F594_unk97

	def_text_script CompText877F594_unk98

	def_text_script CompText877F594_unk99

	def_text_script CompText877F594_unk100

	def_text_script CompText877F594_unk101

	def_text_script CompText877F594_unk102

	def_text_script CompText877F594_unk103

	def_text_script CompText877F594_unk104

	def_text_script CompText877F594_unk105

	def_text_script CompText877F594_unk106

	def_text_script CompText877F594_unk107

	def_text_script CompText877F594_unk108

	def_text_script CompText877F594_unk109

	