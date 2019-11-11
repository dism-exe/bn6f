	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C6940::
	.word 0x64300

	text_archive_start

	def_text_script CompText87C6940_unk0
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Heeeey,Lan!\n"
	.string "I was getting\n"
	.string "worried!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Is MegaMan OK?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87C6940_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "No,a lot of things\n"
	.string "happened,and..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87C6940_unk2
	ts_mugshot_show 0x14
	ts_msg_open
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string " Hmm,hmm...\n"
	.string "So... you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "you can't go after\n"
	.string "MegaMan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "if you don't have\n"
	.string "the Mayor's\n"
	.string "permission..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87C6940_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Well,standing around\n"
	.string "here talking isn't\n"
	.string "going to help."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There were a lot of\n"
	.string "people in the group\n"
	.string "that took MegaMan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "and MegaMan might be\n"
	.string "lost in a really bad\n"
	.string "place!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87C6940_unk4
	ts_mugshot_show 0x14
	ts_msg_open
	.string "I know...\n"
	.string "Anyway,you want me\n"
	.string "to get that Security"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Bot away from the\n"
	.string "Principal's Office\n"
	.string "door?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's really easy."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87C6940_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Really?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87C6940_unk6
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Yeah!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I do anything\n"
	.string "bad,they'll come\n"
	.string "running!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here,watch!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C6940_unk7
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Now,let's see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hehehe,that monitor\n"
	.string "looks good."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C6940_unk8
	ts_mugshot_show 0x14
	ts_msg_open
	.string "OK,jack in,useless\n"
	.string "Navi!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87C6940_unk9
	ts_mugshot_show 0x57
	ts_msg_open
	.string "Hmph!\n"
	.string "You'd better operate\n"
	.string "well,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "useless operator!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87C6940_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "H-Hey,what do you\n"
	.string "think you're doing?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87C6940_unk11
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Watch!\n"
	.string "Now this is how you\n"
	.string "get their attention!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do it,useless Navi!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C6940_unk12
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play_bgm 0x63, 0x0
	ts_sound_play00 0x9A, 0x1
	.string "*pop,pop,pop!!*"
	ts_wait 0x28, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87C6940_unk13
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
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
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	.string "SYSTEM ERROR!!\n"
	.string "FIRST FLOOR LOBBY!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
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
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	.string "SYSTEM ERROR!!\n"
	.string "FIRST FLOOR LOBBY!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C6940_unk14
	ts_msg_open
	.string "RELOCATE TO FIRST\n"
	.string "FLOOR LOBBY\n"
	.string "IMMEDIATELY!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C6940_unk15
	ts_mugshot_show 0x14
	ts_msg_open
	.string "See! I got that\n"
	.string "Security Bot to\n"
	.string "move,no problem!"
	ts_key_wait 0x0
	ts_clear_msg

	def_text_script CompText87C6940_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "M-Mick...!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87C6940_unk17
	ts_mugshot_show 0x14
	ts_msg_open
	.string "It's sad to be alone\n"
	.string "when your Navi's\n"
	.string "gone..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "and you really want\n"
	.string "to do something...\n"
	.string "right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I know how that\n"
	.string "feels... 'cause I've\n"
	.string "been there,too."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry up and go find\n"
	.string "Megaman!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Compared to the bad\n"
	.string "feeling of losing a\n"
	.string "Navi,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "getting yelled at by\n"
	.string "Mr.Mach is nothing!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87C6940_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mick..."
	ts_key_wait 0x0
	ts_end

	