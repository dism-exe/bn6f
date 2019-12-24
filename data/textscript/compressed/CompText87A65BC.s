	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A65BC::
	.word 0x31400

	text_archive_start

	def_text_script CompText87A65BC_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We did it!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87A65BC_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Nice work,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A65BC_unk2
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "AWESOME!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87A65BC_unk3
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "That was sooo cool!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87A65BC_unk4
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "What a show!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87A65BC_unk5
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "Hmph!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87A65BC_unk6
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hmm,THAT was quite\n"
	.string "a SPIFFY technique!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure EVERYONE\n"
	.string "LEARNED a little\n"
	.string "something."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x63
	ts_jump target=7

	def_text_script CompText87A65BC_unk7
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x177
	.string "*ding,"
	ts_wait frames=0x2A
	.string "dong,"
	ts_wait frames=0x28
	.string "ding,"
	ts_wait frames=0x28
	.string "dong*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x13
	ts_jump target=8

	def_text_script CompText87A65BC_unk8
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "PERIOD'S over.\n"
	.string "Line UP,everyone!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A65BC_unk9
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Like I thought,you\n"
	.string "and MegaMan have\n"
	.string "real skills."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That was a pretty\n"
	.string "impressive battle!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,class is... Oh,\n"
	.string "and Mick,Teachers'\n"
	.string "Room,after class."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Class dismissed!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll leave each of\n"
	.string "you to jack out when\n"
	.string "you want."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A65BC_unk10
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... Darn it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A65BC_unk11
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "Don't let all the\n"
	.string "praise go to your\n"
	.string "head...hmph!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A65BC_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What is his\n"
	.string "problem!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87A65BC_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Now,now,Lan.\n"
	.string "Calm down."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We should jack out\n"
	.string "soon,too."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87A65BC_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Yeah."
	ts_key_wait any=0x0
	ts_end

	