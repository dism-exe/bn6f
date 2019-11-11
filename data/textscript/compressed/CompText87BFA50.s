	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BFA50::
	.word 0x52200

	text_archive_start

	def_text_script CompText87BFA50_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "After I cross this\n"
	.string "bridge and take\n"
	.string "the elevator down,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Force Room\n"
	.string "should be right\n"
	.string "around there..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BFA50_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,be careful!\n"
	.string "The wind is really\n"
	.string "strong."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you fall,there's\n"
	.string "nothing to catch\n"
	.string "you..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87BFA50_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I-I know...\n"
	.string "*gulp*"
	ts_key_wait 0x0
	ts_clear_msg
	.string "H-Here goes..."
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87BFA50_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "W-Whoaaa!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BFA50_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's swaying a\n"
	.string "lot... If I don't\n"
	.string "hurry..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87BFA50_unk5
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0xE3, 0x0
	.string "*crunch,crack!!*"
	ts_wait 0x20, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87BFA50_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Aaahh!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BFA50_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Now what...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How do I get to the\n"
	.string "Force Room now...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87BFA50_unk8
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... What should\n"
	.string "we do...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BFA50_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We're running\n"
	.string "out of time!\n"
	.string "I'm gonna have to..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...jump for it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87BFA50_unk10
	ts_mugshot_show 0x37
	ts_msg_open
	.string "L-Lan!\n"
	.string "You're not really..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87BFA50_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yes,it's the only\n"
	.string "way."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BFA50_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Here goes..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87BFA50_unk13
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It's too dangerous!\n"
	.string "Lan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87BFA50_unk14
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I know,but right now\n"
	.string "I don't have any\n"
	.string "other choice!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK...\n"
	.string "Deep breath...\n"
	.string "Go!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BFA50_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Ah!\n"
	.string "It's too scary..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87BFA50_unk16
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Hey,Lan..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BFA50_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yes,MegaMan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87BFA50_unk18
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... I'll jump across\n"
	.string "first."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And then I can catch\n"
	.string "you on the other\n"
	.string "side!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87BFA50_unk19
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You...jump...?\n"
	.string "But how?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87BFA50_unk20
	ts_mugshot_show 0x37
	ts_msg_open
	.string "There's that man's\n"
	.string "CopyBot in the\n"
	.string "Operator's Room."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87BFA50_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ah,I see...\n"
	.string "But are you sure you\n"
	.string "want to do this?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87BFA50_unk22
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Yeah!\n"
	.string "Leave it to me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmm,I need to find a\n"
	.string "good place to jump\n"
	.string "from..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think I should\n"
	.string "jump from a higher\n"
	.string "place..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87BFA50_unk23
	ts_mugshot_show 0x0
	ts_msg_open
	.string "And you were going\n"
	.string "to tell me when!?"
	ts_key_wait 0x0
	ts_end

	