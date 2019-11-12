	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877767C::
	.word 0x19E600

	text_archive_start

	def_text_script CompText877767C_unk0
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Show preparations\n"
	.string "are still underway!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk1
	ts_check_flag 0x29, 0x17, 0x4, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "AHH!!\n"
	.string "There's an alligator\n"
	.string "here too!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk2
	ts_check_flag 0x29, 0x17, 0x3, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ahh! There's an\n"
	.string "alligator here and\n"
	.string "we can't go on!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Al...alligator!\n"
	.string "We can't keep going\n"
	.string "this way!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Waaaah!\n"
	.string "An alligator!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan!\n"
	.string "Class isn't over yet!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk6

	def_text_script CompText877767C_unk7

	def_text_script CompText877767C_unk8

	def_text_script CompText877767C_unk9

	def_text_script CompText877767C_unk10
	ts_check_flag 0x63, 0x1, 0x15, 0xFF
	ts_check_flag 0x20, 0x1, 0xFF, 0x15
	ts_check_flag 0xA7, 0xC, 0x13, 0xFF
	ts_check_flag 0xA9, 0xC, 0x11, 0xFF
	ts_check_flag 0xA5, 0xC, 0xF, 0xFF
	ts_check_flag 0xA2, 0xC, 0xD, 0xFF
	ts_mugshot_show 0x25
	ts_msg_open
	.string "HEY! HEY! GOOD DAY!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do ya feel like\n"
	.string "takin' my class\n"
	.string "today?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Continue  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Leave"
	ts_select 0x6, 0x80, 0xFF, 0x14, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x25
	.string "Once class starts\n"
	.string "there'll be no\n"
	.string "quitting,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and you can't leave\n"
	.string "until class is\n"
	.string "over!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Got it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Continue  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Leave"
	ts_select 0x6, 0x80, 0xFF, 0x14, 0xFF
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xA0, 0xC
	ts_end

	def_text_script CompText877767C_unk11
	ts_check_flag 0x63, 0x1, 0x15, 0xFF
	ts_check_flag 0x20, 0x1, 0xFF, 0x15
	ts_check_flag 0xA8, 0xC, 0xA, 0xFF
	ts_flag_set 0xA8, 0xC
	ts_jump 10

	def_text_script CompText877767C_unk12

	def_text_script CompText877767C_unk13
	ts_mugshot_show 0x25
	ts_msg_open
	.string "Alright! Time to\n"
	.string "recycle!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can operate\n"
	.string "DustMan from this\n"
	.string "vending machine!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk14

	def_text_script CompText877767C_unk15
	ts_flag_set 0xA9, 0xC
	ts_mugshot_show 0x25
	ts_msg_open
	.string "The final test\n"
	.string "with be a battle\n"
	.string "with DUSTMAN!!!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now are you\n"
	.string "ready to begin!?"
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
	ts_select 0x6, 0x80, 0x10, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x25
	.string "Hmmm... I SEE..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk16
	ts_mugshot_show 0x25
	ts_msg_open
	.string "DustMan,show this\n"
	.string "guy the right way\n"
	.string "to recycle!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Let's see what\n"
	.string "this class is all\n"
	.string "about!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xAA, 0xC
	ts_end

	def_text_script CompText877767C_unk17
	ts_mugshot_show 0x25
	ts_msg_open
	.string "Are you ready to\n"
	.string "begin your battle\n"
	.string "with DustMan!?"
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
	ts_select 0x6, 0x80, 0x10, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x25
	.string "Hmmm... I SEE..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk18
	ts_mugshot_show 0x25
	ts_msg_open
	.string "TOO BAD!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Would you like to\n"
	.string "try again!?"
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
	ts_select 0x6, 0x80, 0x10, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x25
	.string "Hmmm... I SEE..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk19
	ts_jump 60
	ts_end

	def_text_script CompText877767C_unk20
	ts_mugshot_show 0x25
	ts_msg_open
	.string "Hmmm... I SEE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come back when\n"
	.string "you've got more\n"
	.string "energy for this!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk21
	ts_mugshot_show 0x25
	ts_msg_open
	.string "I have to apologize\n"
	.string "with all my heart!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't have class\n"
	.string "now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come back the next\n"
	.string "time you have the\n"
	.string "chance!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk22

	def_text_script CompText877767C_unk23

	def_text_script CompText877767C_unk24

	def_text_script CompText877767C_unk25

	def_text_script CompText877767C_unk26

	def_text_script CompText877767C_unk27

	def_text_script CompText877767C_unk28

	def_text_script CompText877767C_unk29

	def_text_script CompText877767C_unk30
	ts_check_flag 0x63, 0x1, 0x29, 0xFF
	ts_check_flag 0x20, 0x1, 0xFF, 0x29
	ts_check_flag 0x91, 0xC, 0x27, 0xFF
	ts_check_flag 0x8F, 0xC, 0x23, 0xFF
	ts_check_flag 0x82, 0xC, 0x21, 0xFF
	ts_mugshot_show 0x26
	ts_msg_open
	.string "You must be\n"
	.string "here to take my\n"
	.string "class,right?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Continue  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Leave"
	ts_select 0x6, 0x80, 0xFF, 0x28, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x26
	.string "...Once class has\n"
	.string "begun,you can't\n"
	.string "quit suddenly,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and you must stay\n"
	.string "here until class\n"
	.string "ends."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Understood?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Continue  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Leave"
	ts_select 0x6, 0x80, 0xFF, 0x28, 0xFF
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x80, 0xC
	ts_end

	def_text_script CompText877767C_unk31
	ts_check_flag 0x63, 0x1, 0x29, 0xFF
	ts_check_flag 0x20, 0x1, 0xFF, 0x29
	ts_check_flag 0x92, 0xC, 0x1E, 0xFF
	ts_flag_set 0x92, 0xC
	ts_jump 30

	def_text_script CompText877767C_unk32

	def_text_script CompText877767C_unk33
	ts_mugshot_show 0x26
	ts_msg_open
	.string "Try operating\n"
	.string "my Navi,ChargeMan"
	ts_key_wait 0x0
	ts_clear_msg
	.string "from this vending\n"
	.string "machine..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk34

	def_text_script CompText877767C_unk35
	ts_mugshot_show 0x26
	ts_msg_open
	.string "The final test is\n"
	.string "a screaming battle\n"
	.string "with ChargeMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's no stopping\n"
	.string "this one!!\n"
	.string "Are you ready!?"
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
	ts_select 0x6, 0x80, 0x24, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x26
	.string "I see...\n"
	.string "That's too bad..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk36
	ts_mugshot_show 0x26
	ts_msg_open
	.string "ChargeMan,full speed\n"
	.string "ahead!\n"
	.string "ALL ABOARD!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "We won't let up\n"
	.string "either!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x94, 0xC
	ts_end

	def_text_script CompText877767C_unk37
	ts_mugshot_show 0x26
	ts_msg_open
	.string "The final test is\n"
	.string "a screaming battle\n"
	.string "with ChargeMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's no stopping\n"
	.string "this one!!\n"
	.string "Are you ready!?"
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
	ts_select 0x6, 0x80, 0x24, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x26
	.string "I see...\n"
	.string "That's too bad..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk38
	ts_mugshot_show 0x26
	ts_msg_open
	.string "That's a shame...\n"
	.string "You can't stop a\n"
	.string "freight train!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Want to give it\n"
	.string "another try?"
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
	ts_select 0x6, 0x80, 0x24, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x26
	.string "I see...\n"
	.string "That's too bad..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk39
	ts_mugshot_show 0x26
	ts_msg_open
	ts_jump 50

	def_text_script CompText877767C_unk40
	ts_mugshot_show 0x26
	ts_msg_open
	.string "I see...\n"
	.string "That's a shame..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you feel like\n"
	.string "another try,you\n"
	.string "know where to board!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk41
	ts_mugshot_show 0x26
	ts_msg_open
	.string "Sorry,but I'm\n"
	.string "not holding a\n"
	.string "class now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Try coming back\n"
	.string "another time..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk42

	def_text_script CompText877767C_unk43

	def_text_script CompText877767C_unk44

	def_text_script CompText877767C_unk45

	def_text_script CompText877767C_unk46

	def_text_script CompText877767C_unk47

	def_text_script CompText877767C_unk48

	def_text_script CompText877767C_unk49

	def_text_script CompText877767C_unk50
	ts_check_flag 0x20, 0x1, 0xFF, 0x46
	ts_check_flag 0x8, 0x13, 0x33, 0xFF
	ts_flag_set 0x8, 0x13
	ts_mugshot_show 0x26
	ts_msg_open
	.string "You look like you'd\n"
	.string "like to battle with\n"
	.string "ChargeMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about it?"
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
	ts_mugshot_show 0x26
	.string "C'mon... You know\n"
	.string "you have the\n"
	.string "skill..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk51
	ts_mugshot_show 0x26
	ts_msg_open
	.string "You look like you'd\n"
	.string "like to battle with\n"
	.string "ChargeMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll fight you!\n"
	.string "You ready to go!?"
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
	ts_mugshot_show 0x26
	.string "C'mon... You know\n"
	.string "you have the\n"
	.string "skill..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk52
	ts_check_flag 0x0, 0xE, 0x37, 0xFF
	ts_check_chapter 0x60, 0x6F, 0x36, 0xFF
	ts_check_chapter 0x50, 0x5F, 0x35, 0xFF
	ts_end

	def_text_script CompText877767C_unk53
	ts_mugshot_show 0x26
	ts_msg_open
	.string "ChargeMan,\n"
	.string "don't even think\n"
	.string "about the brakes!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Right back at ya!\n"
	.string "Bring it on!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4F
	.string "Here I come!!\n"
	.string "*CHUGA CHUGA!!*"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x32, 0x13
	ts_end

	def_text_script CompText877767C_unk54
	ts_check_flag 0x36, 0x13, 0xFF, 0x35
	ts_mugshot_show 0x26
	ts_msg_open
	.string "ChargeMan!\n"
	.string "Steamroll this\n"
	.string "guy!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I'll stop you\n"
	.string "dead in your\n"
	.string "tracks!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4F
	.string "*CHUGA CHUGA!!*"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x33, 0x13
	ts_end

	def_text_script CompText877767C_unk55
	ts_check_flag 0x1A, 0x3, 0xFF, 0x36
	ts_check_flag 0x36, 0x13, 0xFF, 0x35
	ts_mugshot_show 0x26
	ts_msg_open
	.string "ChargeMan!\n"
	.string "Steamroll this\n"
	.string "guy!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "A battle isn't\n"
	.string "just power!\n"
	.string "I'll show you!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4F
	.string "*CHUGA CHUGA!!*\n"
	.string "*CHUGA CHUGA!!*\n"
	.string "CHOOOO CHHOOO!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x34, 0x13
	ts_end

	def_text_script CompText877767C_unk56

	def_text_script CompText877767C_unk57
	ts_check_flag 0x36, 0x13, 0x3A, 0xFF
	ts_flag_set 0x36, 0x13
	ts_jump 58

	def_text_script CompText877767C_unk58
	ts_mugshot_show 0x26
	ts_msg_open
	.string "Even when we lose,\n"
	.string "we keep on going!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk59
	ts_mugshot_show 0x26
	ts_msg_open
	.string "You're still young!\n"
	.string "Brush it off and\n"
	.string "keep going forward!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Gotta keep going\n"
	.string "straight forward!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk60
	ts_check_flag 0x20, 0x1, 0xFF, 0x47
	ts_check_flag 0x9, 0x13, 0x3D, 0xFF
	ts_flag_set 0x9, 0x13
	ts_mugshot_show 0x25
	ts_msg_open
	.string "HEY!\n"
	.string "Time to battle\n"
	.string "against DustMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It'll be a great\n"
	.string "class for you!!"
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
	ts_mugshot_show 0x25
	.string "That's a crying\n"
	.string "shame..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk61
	ts_mugshot_show 0x25
	ts_msg_open
	.string "HEY HEY!\n"
	.string "Time to battle\n"
	.string "against DustMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Raise your Net-\n"
	.string "Battle skills and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "your recycling\n"
	.string "abilities too!!\n"
	.string "Are you ready?"
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
	ts_mugshot_show 0x25
	.string "BOOOO! That's\n"
	.string "really a crying\n"
	.string "shame!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk62
	ts_check_flag 0x0, 0xE, 0x41, 0xFF
	ts_check_chapter 0x60, 0x6F, 0x40, 0xFF
	ts_check_chapter 0x50, 0x5F, 0x3F, 0xFF
	ts_end

	def_text_script CompText877767C_unk63
	ts_mugshot_show 0x25
	ts_msg_open
	.string "Alright! Time\n"
	.string "for a 100%\n"
	.string "all-out fight!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Bring it on!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4E
	.string "HAHAHAHAHA!!\n"
	.string "I'm gonna smash ya!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x37, 0x13
	ts_end

	def_text_script CompText877767C_unk64
	ts_check_flag 0x3B, 0x13, 0xFF, 0x3F
	ts_mugshot_show 0x25
	ts_msg_open
	.string "No no... We..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4E
	.string "Press,you talk\n"
	.string "way too much!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x25
	.string "That is a good\n"
	.string "thing..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Mr.Press,hurry up!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x25
	.string "That's a invitation\n"
	.string "in my book!\n"
	.string "Go on DustMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4E
	.string "HAHAHAHAHA!!\n"
	.string "You're going in\n"
	.string "my DustChute buddy!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x38, 0x13
	ts_end

	def_text_script CompText877767C_unk65
	ts_check_flag 0x38, 0x3, 0xFF, 0x40
	ts_check_flag 0x3B, 0x13, 0xFF, 0x3F
	ts_mugshot_show 0x25
	ts_msg_open
	.string "GO DUSTMAN!!\n"
	.string "CRUSH HIM!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x25
	.string "SMASH HIM!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4E
	.string "HAHAHAHAH!!\n"
	.string "My DustBreak is\n"
	.string "a new kind of pain!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x39, 0x13
	ts_end

	def_text_script CompText877767C_unk66

	def_text_script CompText877767C_unk67
	ts_check_flag 0x3B, 0x13, 0x44, 0xFF
	ts_flag_set 0x3B, 0x13
	ts_jump 68

	def_text_script CompText877767C_unk68
	ts_mugshot_show 0x25
	ts_msg_open
	.string "I don't know how,\n"
	.string "but I lost the\n"
	.string "battle! Awful!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk69
	ts_mugshot_show 0x25
	ts_msg_open
	.string "That's a win for\n"
	.string "ME!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk70
	ts_check_chapter 0x52, 0x52, 0x48, 0xFF
	ts_jump 76

	def_text_script CompText877767C_unk71
	ts_check_chapter 0x52, 0x52, 0x49, 0xFF
	ts_jump 77

	def_text_script CompText877767C_unk72
	ts_check_flag 0x1F, 0xC, 0x4A, 0xFF
	ts_jump 76

	def_text_script CompText877767C_unk73
	ts_check_flag 0x1F, 0xC, 0x4B, 0xFF
	ts_jump 77

	def_text_script CompText877767C_unk74
	ts_mugshot_show 0x26
	ts_msg_open
	.string "What? MegaMan...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,you should\n"
	.string "use ChargeMan then."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He is your\n"
	.string "LinkNavi... Don't\n"
	.string "forget it!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk75
	ts_mugshot_show 0x25
	ts_msg_open
	.string "What happened\n"
	.string "to MegaMan!?\n"
	.string "Unbelievable!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't even think\n"
	.string "about it...\n"
	.string "Use DustMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No hesitation!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "DustMan is your\n"
	.string "LinkNavi! He has\n"
	.string "pledged allegiance!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk76
	ts_mugshot_show 0x26
	ts_msg_open
	.string "Without MegaMan\n"
	.string "you can't battle..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can operate\n"
	.string "ChargeMan anytime!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk77
	ts_mugshot_show 0x25
	ts_msg_open
	.string "No MegaMan means\n"
	.string "no NetBattles!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can use DustMan\n"
	.string "anytime you'd like!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk78

	def_text_script CompText877767C_unk79

	def_text_script CompText877767C_unk80
	ts_check_flag 0xA8, 0x11, 0x55, 0xFF
	ts_check_flag 0xA4, 0x11, 0x51, 0xFF
	ts_flag_set 0xA4, 0x11
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Hey Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm the one behind\n"
	.string "this latest request!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Wow. I wonder what\n"
	.string "your request could\n"
	.string "be...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You are Mr.Famous\n"
	.string "after all..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1C
	.string "Actually,to train\n"
	.string "as a NetPoliceman\n"
	.string "or junior official,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I developed a\n"
	.string "handheld machine to\n"
	.string "release viruses."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Right now,I am\n"
	.string "making the final\n"
	.string "adjustments on it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like to gather\n"
	.string "some data by having\n"
	.string "you fight with this"
	ts_key_wait 0x0
	ts_clear_msg
	.string "new virus battling\n"
	.string "machine..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "By the way,my\n"
	.string "machine can release\n"
	.string "20 viruses in a row,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and while battling,\n"
	.string "you can't stop!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you ready to\n"
	.string "try your luck!?"
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
	ts_select 0x6, 0x80, 0x52, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x1C
	.string "Well,once you\n"
	.string "are ready,come\n"
	.string "back and say so!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk81
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Ahh,ready to go?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll go over the\n"
	.string "finer points one\n"
	.string "more time for you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This machine will\n"
	.string "release 20 viruses,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and you can't take\n"
	.string "a break when you\n"
	.string "fight them!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So are you ready\n"
	.string "to go?"
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
	ts_select 0x6, 0x80, 0x52, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x1C
	.string "Well,once you\n"
	.string "are ready,come\n"
	.string "back and say so!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk82
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Alright! Let's go!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle... START!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xA5, 0x11
	ts_end

	def_text_script CompText877767C_unk83
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Well,even Lan can't\n"
	.string "handle that many\n"
	.string "viruses in a row!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,my request\n"
	.string "isn't over until you\n"
	.string "win all 20 battles!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk84
	ts_flag_set 0xA8, 0x11
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Well done Lan!!\n"
	.string "Awesome operating!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll analyze all of\n"
	.string "your NetBattling\n"
	.string "data,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and use it to train\n"
	.string "lots of young,up-\n"
	.string "and-coming battlers!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you!\n"
	.string "Here's your reward!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0x7, 0x1, 0x1A, 0x1
	ts_item_give_chip 0xA, 0x1, 0x1A, 0x1
	ts_item_give_chip 0xD, 0x1, 0x1A, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_chip2 0x0, 0x70
	.string " "
	ts_print_code 0x1, 0xA0
	.string "\",\n"
	.string "\""
	ts_print_chip2 0x0, 0xA0
	.string " "
	ts_print_code 0x1, 0xA0
	.string "\",\n"
	.string "and \""
	ts_print_chip2 0x0, 0xD0
	.string " "
	ts_print_code 0x1, 0xA0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x1C
	.string "Keep on getting\n"
	.string "better and keep on\n"
	.string "getting stronger!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText877767C_unk85
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Now I will analyze\n"
	.string "your battle\n"
	.string "patterns Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877767C_unk86

	def_text_script CompText877767C_unk87

	def_text_script CompText877767C_unk88

	def_text_script CompText877767C_unk89

	