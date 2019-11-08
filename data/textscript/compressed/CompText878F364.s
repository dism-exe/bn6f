	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878F364::
	.word 0x9CD00

	text_archive_start

	def_text_script CompText878F364_unk0
	ts_mugshot_show 0x22
	ts_msg_open
	.string "Where are you\n"
	.string "going!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk1

	def_text_script CompText878F364_unk2

	def_text_script CompText878F364_unk3

	def_text_script CompText878F364_unk4

	def_text_script CompText878F364_unk5
	ts_mugshot_show 0x23
	ts_msg_open
	.string "Where are you\n"
	.string "headed!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk6

	def_text_script CompText878F364_unk7
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "NO,I'M NOT BROKEN!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I ALWAYS LOOK THIS\n"
	.string "WAY!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk8
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Wait a sec!! Wait!\n"
	.string "You took a look at\n"
	.string "me then laughed!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure you\n"
	.string "laughed!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Laugh when I sue\n"
	.string "you for slander!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk9

	def_text_script CompText878F364_unk10
	ts_check_shop_stock 0x8, 0xFF, 0xC
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I'm a SubChip\n"
	.string "merchant!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I got lots of\n"
	.string "great things!\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0xB, 0xFF
	ts_start_shop 0x8

	def_text_script CompText878F364_unk11
	ts_clear_msg
	.string "Come back again\n"
	.string "sometime!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk12
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I'm a SubChip\n"
	.string "merchant!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But right now I'm\n"
	.string "sold out!! Sorry!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk13

	def_text_script CompText878F364_unk14

	def_text_script CompText878F364_unk15
	ts_mugshot_show 0x42
	ts_msg_open
	.string "...You can't throw\n"
	.string "away your trash in\n"
	.string "the street!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That is a crime\n"
	.string "you know..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk16
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS GREEN AREA.\n"
	.string "AN AREA THAT LOVES\n"
	.string "THE RULE OF LAW."
	ts_key_wait 0x0
	ts_clear_msg
	.string "NO ONE DOES BAD\n"
	.string "THINGS,BECAUSE WE\n"
	.string "ARE ALWAYS WATCHING!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk17

	def_text_script CompText878F364_unk18

	def_text_script CompText878F364_unk19

	def_text_script CompText878F364_unk20
	ts_check_flag 0x24, 0x11, 0x17, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Hehehehe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't you think that\n"
	.string "there have been"
	ts_key_wait 0x0
	ts_clear_msg
	.string "a lot of scary\n"
	.string "rumors lately?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When it's dark,or\n"
	.string "scary,I just laugh\n"
	.string "it all away!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about you buy\n"
	.string "a program to make\n"
	.string "you laugh for 3000Z?"
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
	ts_mugshot_show 0x43
	.string "Fine then...\n"
	.string "Enjoy living in\n"
	.string "your dark world."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk21
	ts_check_take_zenny 0xB8, 0xB, 0x0, 0x0, 0xFF, 0x16, 0x16
	ts_flag_set 0x24, 0x11
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Ahh,you'll buy it!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You just made a\n"
	.string "great choice!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_navi_cust_program 0x5C, 0x1, 0x3
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x1, 0x70
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x43
	.string "From now on,you're\n"
	.string "gonna be one funny\n"
	.string "guy!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk22
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Sorry to say this...\n"
	.string "But you don't have\n"
	.string "enough money!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk23
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Hey! It's the new\n"
	.string "laugh general!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk24

	def_text_script CompText878F364_unk25
	ts_check_flag 0x3B, 0x12, 0x1C, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "What?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Quit studying\n"
	.string "viruses?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's no reason\n"
	.string "for me to do that!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go over there!\n"
	.string "If I catch you\n"
	.string "bothering me again,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll send a virus\n"
	.string "after you!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Try me! "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Wait!"
	ts_select 0x6, 0x80, 0x1A, 0xFF, 0xFF
	ts_mugshot_show 0x42
	.string "If you only\n"
	.string "understood..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk26
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You just don't give\n"
	.string "up,do you...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Nothing I can do\n"
	.string "now except introduce\n"
	.string "you to some viruses!"
	ts_key_wait 0x0
	ts_flag_set 0x39, 0x12
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText878F364_unk27
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Waaahhh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "W-Wait a second!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Who thinks they\n"
	.string "can just halt my\n"
	.string "research!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Are you her big\n"
	.string "brother...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,really,I'm\n"
	.string "blah blah blah..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "Hmm... Is that so..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm actually a\n"
	.string "university virus\n"
	.string "researcher."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Not too long from\n"
	.string "now I will have to\n"
	.string "present my research."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I don't go home,\n"
	.string "instead I stay here\n"
	.string "and work..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want to make a\n"
	.string "world without\n"
	.string "viruses!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,I didn't\n"
	.string "realize my sister\n"
	.string "was that worried."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I will talk to her,\n"
	.string "but since you're"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the same age,you\n"
	.string "should try talking\n"
	.string "to her too."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sorry to bother you\n"
	.string "with that..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I'll make sure\n"
	.string "to go home from now\n"
	.string "on..."
	ts_key_wait 0x0
	ts_flag_set 0x3B, 0x12
	ts_end

	def_text_script CompText878F364_unk28
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I caused the\n"
	.string "problems in this\n"
	.string "misunderstanding..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk29

	def_text_script CompText878F364_unk30
	ts_check_shop_stock 0x3, 0xFF, 0x20
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I sell programs.\n"
	.string "Look at my stock?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look"
	ts_select 0x6, 0x0, 0xFF, 0x1F, 0xFF
	ts_start_shop 0x3

	def_text_script CompText878F364_unk31
	ts_clear_msg
	.string "Come back again."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk32
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Sorry,but I'm\n"
	.string "all sold out..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878F364_unk33

	def_text_script CompText878F364_unk34

	def_text_script CompText878F364_unk35
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Hey! Where you goin?\n"
	.string "You got nothin' to\n"
	.string "do over there!"
	ts_key_wait 0x0
	ts_end

	