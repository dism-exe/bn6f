	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8796AE4::
	.word 0xB4500

	text_archive_start

	def_text_script CompText8796AE4_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "This must be...\n"
	.string "the moon stone..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I think so!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good job,MegaMan!\n"
	.string "Let's jack out and\n"
	.string "get going!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x19, 0x1
	ts_player_animate_object 0x18
	ts_flag_set 0xC8, 0xC
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x19, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_end

	def_text_script CompText8796AE4_unk1

	def_text_script CompText8796AE4_unk2
	ts_check_flag 0x7E, 0x0, 0x3, 0xFF
	ts_mugshot_show 0x44
	ts_msg_open
	.string "The road will open\n"
	.string "for those with the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "beast's seal and\n"
	.string "100 S..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk3
	ts_mugshot_show 0x44
	ts_msg_open
	.string "The doorway to the\n"
	.string "Cybeast's graveyard."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can't you hear it...\n"
	.string "The murmurs of the\n"
	.string "dead..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk4

	def_text_script CompText8796AE4_unk5
	ts_mugshot_show 0x27
	ts_msg_open
	.string "There are no\n"
	.string "targets there..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk6
	ts_mugshot_show 0x26
	ts_msg_open
	.string "Where are you headed\n"
	.string "off to? My class is\n"
	.string "in this area!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk7
	ts_mugshot_show 0x24
	ts_msg_open
	.string "That's got nothing\n"
	.string "to do with class!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk8
	ts_mugshot_show 0x25
	ts_msg_open
	.string "Hey! Hey! Hey!\n"
	.string "The merchant isn't\n"
	.string "there man!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk9
	ts_mugshot_show 0x25
	ts_msg_open
	.string "Hey! Hey! Hey!\n"
	.string "The merchant isn't\n"
	.string "there man!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk10
	ts_check_flag 0xB2, 0xC, 0xF, 0xFF
	ts_check_flag 0xAC, 0xC, 0xB, 0xFF
	ts_flag_set 0xAC, 0xC
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Ahh,DustMan!\n"
	.string "I've been waiting\n"
	.string "for ya bro!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about you get\n"
	.string "rid of this trash\n"
	.string "for me!"
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
	ts_mugshot_show 0x44
	.string "Ahhh! What a mess!\n"
	.string "What am I gonna do\n"
	.string "with all this trash!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk11
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Take care of this\n"
	.string "trash for me!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you don't help\n"
	.string "me,I'll really be\n"
	.string "trouble!"
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
	ts_mugshot_show 0x44
	.string "Really!?!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk12
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Alright! Let's get\n"
	.string "started then!"
	ts_key_wait 0x0
	ts_flag_set 0xAF, 0xC
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8796AE4_unk13
	ts_mugshot_show 0x44
	ts_msg_open
	.string "You really helped\n"
	.string "me out! Thanks!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you done for\n"
	.string "the day now\n"
	.string "bro?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4E
	.string "Nope. I'm off to\n"
	.string "the next merchant's\n"
	.string "place!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's one more in\n"
	.string "this area..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "You really are\n"
	.string "working hard!\n"
	.string "Don't overdo it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk14
	ts_mugshot_show 0x44
	ts_msg_open
	.string "What's the matter!?\n"
	.string "Can't you clean up\n"
	.string "a bit better!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What to give it\n"
	.string "another shot?"
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
	ts_mugshot_show 0x44
	.string "Hey!\n"
	.string "I'm sorry...\n"
	.string "Clean up for me!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk15
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Help me out\n"
	.string "again sometime!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk16

	def_text_script CompText8796AE4_unk17

	def_text_script CompText8796AE4_unk18

	def_text_script CompText8796AE4_unk19

	def_text_script CompText8796AE4_unk20
	ts_check_flag 0xB3, 0xC, 0x19, 0xFF
	ts_check_flag 0xAD, 0xC, 0x15, 0xFF
	ts_flag_set 0xAD, 0xC
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Hey DustMan!\n"
	.string "I've been waiting\n"
	.string "for you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I need you to get\n"
	.string "rid of this trash!"
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
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "That's not good!!\n"
	.string "Please!\n"
	.string "Do something!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk21
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Take care of this\n"
	.string "trash please!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If the NetPolice\n"
	.string "see it,I'm in lots\n"
	.string "of trouble!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please help!"
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
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "That's not good!!\n"
	.string "Please!\n"
	.string "Do something!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk22
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Alright!\n"
	.string "Let's start,DustMan!"
	ts_key_wait 0x0
	ts_flag_set 0xB0, 0xC
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8796AE4_unk23
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Thank you...\n"
	.string "What a beautiful\n"
	.string "clean up job!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x25
	.string "Hey,Lan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's a new\n"
	.string "request from a\n"
	.string "merchant!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Head to Undernet1!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Gotcha!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk24
	ts_mugshot_show 0x44
	ts_msg_open
	.string "What's the matter?\n"
	.string "There's still more\n"
	.string "trash!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Quick!!\n"
	.string "Clean it up!!"
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
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "Don't say that!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk25
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Thank you!!\n"
	.string "You'll get my\n"
	.string "business again!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk26

	def_text_script CompText8796AE4_unk27

	def_text_script CompText8796AE4_unk28

	def_text_script CompText8796AE4_unk29

	def_text_script CompText8796AE4_unk30
	ts_mugshot_show 0x37
	ts_msg_open
	.string "This is the place\n"
	.string "with the giant\n"
	.string "horned skull..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan! The wrecked\n"
	.string "program data should\n"
	.string "be around here!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x3F, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x3F, 0x0
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_clear_msg
	ts_flag_set 0x67, 0x11
	ts_mugshot_show 0x3E
	.string "Thank you so much\n"
	.string "for finding me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now I can rest\n"
	.string "peacefully..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you..."
	ts_key_wait 0x0
	ts_flag_set 0x68, 0x11
	ts_end

	def_text_script CompText8796AE4_unk31

	def_text_script CompText8796AE4_unk32

	def_text_script CompText8796AE4_unk33

	def_text_script CompText8796AE4_unk34

	def_text_script CompText8796AE4_unk35
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I WISH THE TRAIN\n"
	.string "WOULD HURRY UP..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk36
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I'VE GOT AN ERRAND\n"
	.string "TO RUN SOMEWHERE FAR\n"
	.string "AWAY."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE TRAIN IS PERFECT\n"
	.string "FOR TIMES LIKE THIS!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk37
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS THE FIRST\n"
	.string "TIME I'VE TAKEN A\n"
	.string "TRAIN RIDE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M SO EXCITED!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk38

	def_text_script CompText8796AE4_unk39

	def_text_script CompText8796AE4_unk40
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "A STRANGER HAS\n"
	.string "SHOWN UP..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk41

	def_text_script CompText8796AE4_unk42

	def_text_script CompText8796AE4_unk43

	def_text_script CompText8796AE4_unk44

	def_text_script CompText8796AE4_unk45

	def_text_script CompText8796AE4_unk46

	def_text_script CompText8796AE4_unk47

	def_text_script CompText8796AE4_unk48

	def_text_script CompText8796AE4_unk49

	def_text_script CompText8796AE4_unk50
	ts_check_shop_stock 0x7, 0xFF, 0x34
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "I'm a BugFrag\n"
	.string "trader..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Care to trade?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look"
	ts_select 0x6, 0x0, 0xFF, 0x33, 0xFF
	ts_start_shop 0x7

	def_text_script CompText8796AE4_unk51
	ts_clear_msg
	.string "Come back again\n"
	.string "sometime..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8796AE4_unk52
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "It's a shame,\n"
	.string "but I'm out of\n"
	.string "stock..."
	ts_key_wait 0x0
	ts_end

	