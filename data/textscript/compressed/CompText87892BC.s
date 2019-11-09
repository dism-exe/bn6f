	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87892BC::
	.word 0x68800

	text_archive_start

	def_text_script CompText87892BC_unk0
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Hey! Where you think\n"
	.string "you're goin? We got\n"
	.string "nothin to do there!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk1
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Hey! Where you goin?\n"
	.string "You got nothin' to\n"
	.string "do over there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk2
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Since this area is\n"
	.string "connected to many\n"
	.string "different areas,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "many people pass\n"
	.string "through here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thus,we have to\n"
	.string "increase patrols..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk3
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO CENTRAL\n"
	.string "AREA3!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PLEASE TAKE CARE NOT\n"
	.string "TO FALL WHEN WALKING\n"
	.string "NEAR THE LARGE HOLE."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk4

	def_text_script CompText87892BC_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO CENTRAL\n"
	.string "AREA3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk6
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I'm working on my\n"
	.string "legs...\n"
	.string "One! Two! One! Two!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk7
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I'M A HUGE RAILROAD\n"
	.string "FAN..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE TRAIN ON THESE\n"
	.string "TRACKS ARE FAMOUS\n"
	.string "AND MAGNIFICENT!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk8
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE NEXT STATION\n"
	.string "HAS ITEMS TO BE"
	ts_key_wait 0x0
	ts_clear_msg
	.string "DELIVERED TO\n"
	.string "SEASIDEAREA3."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT IS SOMEWHAT FAR\n"
	.string "SO TRAINS ARE THE\n"
	.string "BEST WAY TO GO."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk9
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THANKS TO THESE\n"
	.string "RAILROADS,MOVING\n"
	.string "AROUND IS EASY!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ISN'T IT GREAT!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk10
	ts_check_chapter 0x23, 0x25, 0xC, 0xFF
	ts_check_flag 0xDB, 0xC, 0xD, 0xFF
	ts_check_item07 0x1B, 0x1, 0xB, 0xB, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Please hold."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To pass through,you\n"
	.string "must present an\n"
	.string "AreaPass."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Please show your\n"
	.string "AreaPass!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "That should be the\n"
	.string "thing we just got\n"
	.string "from Roll."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Here."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "\""
	ts_print_item 0x1, 0xB0
	.string "\"\n"
	.string "confirmed."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Move along..."
	ts_key_wait 0x0
	ts_flag_set 0x26, 0x17
	ts_flag_set 0xDB, 0xC
	ts_end

	def_text_script CompText87892BC_unk12
	ts_msg_open
	.string "*BEEP,"
	ts_sound_play00 0xCD, 0x0
	ts_wait 0x28, 0x0
	.string "BEEP,"
	ts_sound_play00 0xCD, 0x0
	ts_wait 0x28, 0x0
	.string "BEEP"
	ts_sound_play00 0xCD, 0x0
	.string "!!*"
	ts_wait 0x28, 0x0
	ts_key_wait 0x0
	ts_clear_msg
	.string "Due to an emergency,\n"
	.string "the road is closed."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please jack out now."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk13
	ts_end

	def_text_script CompText87892BC_unk14

	def_text_script CompText87892BC_unk15
	ts_mugshot_show 0x44
	ts_msg_open
	.string "So frustrating!!!!\n"
	.string "Hey! You! You're\n"
	.string "stressing me out!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YAAARRGGHHHH!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xC0, 0x11
	ts_end

	def_text_script CompText87892BC_unk16
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Oops...\n"
	.string "I overdid it..."
	ts_key_wait 0x0
	ts_flag_set 0xCA, 0x11
	ts_check_flag 0xCB, 0x11, 0xFF, 0x15
	ts_check_flag 0xCA, 0x11, 0xFF, 0x15
	ts_check_flag 0xC9, 0x11, 0xFF, 0x15
	ts_check_flag 0xC8, 0x11, 0xFF, 0x15
	ts_check_flag 0xC7, 0x11, 0xFF, 0x15
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "We did it!\n"
	.string "We got rid of\n"
	.string "the bad guys!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's get back to\n"
	.string "the requestor!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk17
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Sawhhhghghhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk18
	ts_mugshot_show 0x44
	ts_msg_open
	.string "HAHAHAHA!!\n"
	.string "I can't stop\n"
	.string "spreading viruses!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey! You!\n"
	.string "You're my virus'\n"
	.string "next victim!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xC1, 0x11
	ts_end

	def_text_script CompText87892BC_unk19
	ts_mugshot_show 0x44
	ts_msg_open
	.string "My virus....\n"
	.string "Gone..."
	ts_key_wait 0x0
	ts_flag_set 0xCB, 0x11
	ts_check_flag 0xCB, 0x11, 0xFF, 0x15
	ts_check_flag 0xCA, 0x11, 0xFF, 0x15
	ts_check_flag 0xC9, 0x11, 0xFF, 0x15
	ts_check_flag 0xC8, 0x11, 0xFF, 0x15
	ts_check_flag 0xC7, 0x11, 0xFF, 0x15
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "We did it!\n"
	.string "We got rid of\n"
	.string "the bad guys!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's get back to\n"
	.string "the requestor!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk20
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Waaahhggghhhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87892BC_unk21
	ts_end

	def_text_script CompText87892BC_unk22

	def_text_script CompText87892BC_unk23

	def_text_script CompText87892BC_unk24

	def_text_script CompText87892BC_unk25

	def_text_script CompText87892BC_unk26

	def_text_script CompText87892BC_unk27

	def_text_script CompText87892BC_unk28

	def_text_script CompText87892BC_unk29

	