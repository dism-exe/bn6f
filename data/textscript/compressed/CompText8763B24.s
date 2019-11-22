	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8763B24::
	.word 0xFC200

	text_archive_start

	def_text_script CompText8763B24_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,where ya goin?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk1

	def_text_script CompText8763B24_unk2

	def_text_script CompText8763B24_unk3

	def_text_script CompText8763B24_unk4

	def_text_script CompText8763B24_unk5
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Mr.Famous'\n"
	.string "apprentice"
	ts_key_wait 0x0
	ts_clear_msg
	.string "gave me \""
	ts_print_folder_name 0x24, 0x0
	.string "\"\n"
	.string "to take care of..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's a folder made by\n"
	.string "Mr.Famous'\n"
	.string "apprentice!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Want to try it out?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you don't mind\n"
	.string "overwriting the\n"
	.string "Extra Folder you've"
	ts_key_wait 0x0
	ts_clear_msg
	.string "got now,I can send\n"
	.string "you the data right\n"
	.string "away..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure! "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No,Thanks"
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "Really? Mr.Famous'\n"
	.string "apprentice is going\n"
	.string "to feel snubbed!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk6
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Alright,I'll\n"
	.string "transmit the folder\n"
	.string "data now..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_start_give_folder 0x24
	ts_mugshot_hide
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	ts_sound_disable_text_sfx
	ts_sound_play00 0x73, 0x0
	.string "Ding!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x15
	.string "Transfer complete!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Your old Extra\n"
	.string "Folder is now called\n"
	.string "\""
	ts_print_folder_name 0x24, 0x0
	.string "\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's a folder packed\n"
	.string "with the ideas of\n"
	.string "Famous' apprentice!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Enjoy using such a\n"
	.string "great folder!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk7

	def_text_script CompText8763B24_unk8

	def_text_script CompText8763B24_unk9

	def_text_script CompText8763B24_unk10
	ts_check_flag 0x3F, 0x11, 0xE, 0xFF
	ts_check_flag 0x3D, 0x11, 0xB, 0xFF
	ts_flag_set 0x3D, 0x11
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Hehehehe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey... I'll tell you\n"
	.string "something cool if"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you battle the virus\n"
	.string "I made..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I mean,I'll tell you\n"
	.string "something cool if"
	ts_key_wait 0x0
	ts_clear_msg
	.string "your Navi beats\n"
	.string "my virus!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hehehehe...\n"
	.string "You up for it?"
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x10
	.string "Hehehe...\n"
	.string "Next time,huh?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk11
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Hehehehe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So you are going to\n"
	.string "take on my virus?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If your Navi wins,\n"
	.string "I will tell you\n"
	.string "something cool..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hehehehe...\n"
	.string "Ready to go?"
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x10
	.string "Hehehehe...\n"
	.string "I see..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk12
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Hehehe...\n"
	.string "It's time for the\n"
	.string "virus to eat..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle Start!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x3E, 0x11
	ts_end

	def_text_script CompText8763B24_unk13
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Looks like you\n"
	.string "beat my virus..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Bad viruses...\n"
	.string "This time I'm gonna\n"
	.string "fight you myself..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Just kidding..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Just as I promised,\n"
	.string "I'll tell you\n"
	.string "something cool!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ALABBAAABA"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you collect\n"
	.string "chips,this will\n"
	.string "come in handy!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hehehehe...\n"
	.string "I gotta make some\n"
	.string "stronger viruses!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk14
	ts_mugshot_show 0x10
	ts_msg_open
	.string "ALABBAAABA"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you collect\n"
	.string "chips,this will\n"
	.string "come in handy!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hehehehehe...\n"
	.string "Heheheheeeeee!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk15

	def_text_script CompText8763B24_unk16

	def_text_script CompText8763B24_unk17

	def_text_script CompText8763B24_unk18

	def_text_script CompText8763B24_unk19

	def_text_script CompText8763B24_unk20
	ts_check_flag 0x5B, 0x11, 0x16, 0xFF
	ts_check_flag 0x5E, 0x11, 0x15, 0xFF
	ts_flag_set 0x5E, 0x11
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "Yes indeedy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm in charge of the\n"
	.string "Green Town Flower\n"
	.string "Shop..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today I'm going to\n"
	.string "deliver some flowers\n"
	.string "to someone who has"
	ts_key_wait 0x0
	ts_clear_msg
	.string "been a great\n"
	.string "customer for a long\n"
	.string "time..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ayanokoji's house!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yes indeedy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...10 years ago,I\n"
	.string "took flowers there\n"
	.string "for the proposal..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yes indeedy...\n"
	.string "I remember that!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I picked the best\n"
	.string "kind of flowers for\n"
	.string "a proposal..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I chose tulips."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Tulips are said\n"
	.string "to express the\n"
	.string "\"Joy of Love\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When the customer\n"
	.string "heard that,I sold"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the tulips\n"
	.string "instantly!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you need tulips,\n"
	.string "I am the store to\n"
	.string "visit in Green Town!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So,is there\n"
	.string "something I can\n"
	.string "help you with?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk21
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "...10 years ago,I\n"
	.string "took flowers there\n"
	.string "for the proposal..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yes indeedy...\n"
	.string "I remember that!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I picked the best\n"
	.string "kind of flowers for\n"
	.string "a proposal..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I chose tulips."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Tulips are said\n"
	.string "to express the\n"
	.string "\"Joy of Love\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When the customer\n"
	.string "heard that,I sold"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the tulips\n"
	.string "instantly!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you need tulips,\n"
	.string "I am the store to\n"
	.string "visit in Green Town!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So,is there\n"
	.string "something I can\n"
	.string "help you with?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk22
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "Yes indeedy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm in charge of the\n"
	.string "Green Town Flower\n"
	.string "Shop..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today I'm going to\n"
	.string "deliver some flowers\n"
	.string "to someone who has"
	ts_key_wait 0x0
	ts_clear_msg
	.string "been a great\n"
	.string "customer for a long\n"
	.string "time..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ayanokoji's house!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk23

	def_text_script CompText8763B24_unk24

	def_text_script CompText8763B24_unk25

	def_text_script CompText8763B24_unk26

	def_text_script CompText8763B24_unk27

	def_text_script CompText8763B24_unk28

	def_text_script CompText8763B24_unk29

	def_text_script CompText8763B24_unk30
	ts_check_flag 0x3C, 0x13, 0x1F, 0xFF
	ts_flag_set 0x3C, 0x13
	ts_mugshot_show 0x4
	ts_msg_open
	.string "Hikari..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Time to see if\n"
	.string "you've improved as\n"
	.string "a NetBattler..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Get over here..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xC
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " OK!  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Stop it!"
	ts_select 0x6, 0x80, 0x20, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x4
	.string "If you don't keep\n"
	.string "fighting,you'll\n"
	.string "get rusty..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk31
	ts_mugshot_show 0x4
	ts_msg_open
	.string "...C'mon...\n"
	.string "NetBattle against\n"
	.string "me... How about it?"
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
	ts_select 0x6, 0x80, 0x20, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x4
	.string "Hmph! If you expect\n"
	.string "defeat,that is what\n"
	.string "you will get..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk32
	ts_check_flag 0x0, 0xE, 0x21, 0xFF
	ts_end

	def_text_script CompText8763B24_unk33
	ts_check_flag 0x40, 0x13, 0xFF, 0x22
	ts_check_flag 0x3E, 0x1C, 0xFF, 0x22
	ts_check_flag 0x3D, 0x1C, 0xFF, 0x22
	ts_check_flag 0x3C, 0x1C, 0xFF, 0x22
	ts_check_flag 0x3B, 0x1C, 0xFF, 0x22
	ts_check_flag 0x3A, 0x1C, 0xFF, 0x22
	ts_check_flag 0x39, 0x1C, 0xFF, 0x22
	ts_check_flag 0x30, 0x1C, 0xFF, 0x22
	ts_check_flag 0x2F, 0x1C, 0xFF, 0x22
	ts_check_flag 0x2E, 0x1C, 0xFF, 0x22
	ts_check_flag 0x2D, 0x1C, 0xFF, 0x22
	ts_check_flag 0x2C, 0x1C, 0xFF, 0x22
	ts_check_flag 0x2B, 0x1C, 0xFF, 0x22
	ts_check_flag 0x2A, 0x1C, 0xFF, 0x22
	ts_check_flag 0x29, 0x1C, 0xFF, 0x22
	ts_check_flag 0x28, 0x1C, 0xFF, 0x22
	ts_check_flag 0x27, 0x1C, 0xFF, 0x22
	ts_check_flag 0x26, 0x1C, 0xFF, 0x22
	ts_check_flag 0x25, 0x1C, 0xFF, 0x22
	ts_check_flag 0x24, 0x1C, 0xFF, 0x22
	ts_check_flag 0x23, 0x1C, 0xFF, 0x22
	ts_check_flag 0x22, 0x1C, 0xFF, 0x22
	ts_check_flag 0x21, 0x1C, 0xFF, 0x22
	ts_check_flag 0x20, 0x1C, 0xFF, 0x22
	ts_mugshot_show 0x4
	ts_msg_open
	.string "ProtoMan,going easy\n"
	.string "is worthless...\n"
	.string "Give him everything!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "That's what I\n"
	.string "expected...\n"
	.string "ProtoMan's best!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3B
	.string "Yaaaaahhhh!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x3E, 0x13
	ts_end

	def_text_script CompText8763B24_unk34
	ts_mugshot_show 0x4
	ts_msg_open
	.string "ProtoMan...\n"
	.string "Hold nothing back!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Let's see what\n"
	.string "you've got!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4
	.string "Go ProtoMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3B
	.string "Yaaaaahhhh!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x3D, 0x13
	ts_end

	def_text_script CompText8763B24_unk35

	def_text_script CompText8763B24_unk36

	def_text_script CompText8763B24_unk37
	ts_check_flag 0x40, 0x13, 0x26, 0xFF
	ts_flag_set 0x40, 0x13
	ts_jump 38

	def_text_script CompText8763B24_unk38
	ts_mugshot_show 0x4
	ts_msg_open
	.string "Well done..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You are the only\n"
	.string "one who can match\n"
	.string "my skills..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk39
	ts_mugshot_show 0x4
	ts_msg_open
	.string "Instant decisions\n"
	.string "can mean winning\n"
	.string "or losing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't be defeated\n"
	.string "by operators like\n"
	.string "that..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk40

	def_text_script CompText8763B24_unk41

	def_text_script CompText8763B24_unk42

	def_text_script CompText8763B24_unk43

	def_text_script CompText8763B24_unk44

	def_text_script CompText8763B24_unk45

	def_text_script CompText8763B24_unk46

	def_text_script CompText8763B24_unk47

	def_text_script CompText8763B24_unk48

	def_text_script CompText8763B24_unk49

	def_text_script CompText8763B24_unk50
	ts_check_shop_stock 0xE, 0xFF, 0x34
	ts_mugshot_show 0x10
	ts_msg_open
	.string "I'm going to offload\n"
	.string "my SubChips soon..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Want to look?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0x33, 0xFF
	ts_start_shop 0xE

	def_text_script CompText8763B24_unk51
	ts_clear_msg
	.string "They say,\"Giving is\n"
	.string "its own reward\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Too bad you don't\n"
	.string "want anything..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8763B24_unk52
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Now that I think of\n"
	.string "it,I don't have that\n"
	.string "one right now..."
	ts_key_wait 0x0
	ts_end

	