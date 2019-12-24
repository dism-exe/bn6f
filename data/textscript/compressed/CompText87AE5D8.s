	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AE5D8::
	.word 0x45500

	text_archive_start

	def_text_script CompText87AE5D8_unk0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xCF
	.string "*slam!!*"
	ts_wait frames=0xD
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE5D8_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... MegaMan!\n"
	.string "... Huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... M-Mr.Mach...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87AE5D8_unk2
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Had a bad nightmare?\n"
	.string "Well,it's safe now!\n"
	.string "By the way,Lan,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you want to join the\n"
	.string "class again sometime\n"
	.string "and study English!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x5
	ts_jump target=3

	def_text_script CompText87AE5D8_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "*gulp!!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87AE5D8_unk4
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Hmm,your punishment\n"
	.string "for sleeping in my\n"
	.string "thrilling class"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "will be you,after\n"
	.string "school,writing 30\n"
	.string "vocabulary words..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "100 times each!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When you are done,\n"
	.string "you will bring me\n"
	.string "your notebook."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I will be waiting\n"
	.string "for it in the\n"
	.string "Teachers' Room."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You won't be going\n"
	.string "home until you are\n"
	.string "done. Is that clear?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87AE5D8_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yes,Mr.Mach..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87AE5D8_unk6
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "*whisper,whisper...*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87AE5D8_unk7
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... Moron."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "... Owww!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87AE5D8_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You shoulda woken\n"
	.string "me up,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87AE5D8_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Believe me,I tried!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But you just\n"
	.string "wouldn't wake up!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87AE5D8_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hmph..."
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x5,
	]
	ts_end

	def_text_script CompText87AE5D8_unk11
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
	.string "And so,\n"
	.string "after school..."
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x5
	ts_end

	def_text_script CompText87AE5D8_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Finally..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thirty words,100\n"
	.string "times each..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that's 3000 words...\n"
	.string "I feel like my arm's\n"
	.string "gonna fall off."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87AE5D8_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Good job,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,let's go show\n"
	.string "your notebook to\n"
	.string "Mr.Mach!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87AE5D8_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Yeah."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Phew!!\n"
	.string "My neck is all\n"
	.string "stiff!"
	ts_key_wait any=0x0
	ts_end

	