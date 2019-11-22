	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B7DE8::
	.word 0x91E00

	text_archive_start

	def_text_script CompText87B7DE8_unk0
	ts_msg_open
	.string "The next day..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B7DE8_unk1
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "OK,you ready for\n"
	.string "another energy-\n"
	.string "filled day!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B7DE8_unk2
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "Ah,speaking of\n"
	.string "energy-filled..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B7DE8_unk3
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "This blackboard"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "got some special\n"
	.string "maintenance done\n"
	.string "on it yesterday,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and now it works\n"
	.string "like it got a new\n"
	.string "set of batteries!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And that just gets\n"
	.string "me all fired up,\n"
	.string "ready to teach!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wahahaha!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B7DE8_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Special\n"
	.string "maintenance?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Hmm,didn't Dad\n"
	.string "say something about\n"
	.string "doing something...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87B7DE8_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Dad boosted the\n"
	.string "blackboard's power,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "so you should be\n"
	.string "like the board--\n"
	.string "no napping!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87B7DE8_unk6
	ts_mugshot_animation [
		animation: 0x3,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... zzz... zzz..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87B7DE8_unk7
	ts_mugshot_animation [
		animation: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ah,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You--\n"
	.string "You're hopeless!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B7DE8_unk8
	ts_mugshot_animation [
		animation: 0x3,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... zzz... zzz..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87B7DE8_unk9
	ts_mugshot_animation [
		animation: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan! Wake up!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're gonna make\n"
	.string "Mr.Mach mad again!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87B7DE8_unk10
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	.string "..."
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string " *thunk!"
	ts_wait [
		frames: 0xD,
	]
	.string "\n"
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "       thunk!"
	ts_wait [
		frames: 0x6,
	]
	.string "\n"
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "         thunk!*"
	ts_wait [
		frames: 0x1A,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B7DE8_unk11
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	.string "..."
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string " *thunk!"
	ts_wait [
		frames: 0xD,
	]
	.string "\n"
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "       thunk!"
	ts_wait [
		frames: 0x6,
	]
	.string "\n"
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "         thunk!*"
	ts_wait [
		frames: 0x1A,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87B7DE8_unk12
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87B7DE8_unk13
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Nngh,ugh..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Keep it down,\n"
	.string "MegaMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87B7DE8_unk14
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "I didn't make that\n"
	.string "sound!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It came from that\n"
	.string "closet behind us..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87B7DE8_unk15
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "The closet?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait [
		frames: 0xA,
	]
	.string "."
	ts_wait [
		frames: 0xA,
	]
	.string "."
	ts_wait [
		frames: 0xA,
	]
	.string "."
	ts_wait [
		frames: 0xA,
	]
	.string "."
	ts_wait [
		frames: 0xA,
	]
	.string "."
	ts_wait [
		frames: 0xA,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I don't hear\n"
	.string "anything."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87B7DE8_unk16
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Huh? That's strange."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I could swear I\n"
	.string "heard something\n"
	.string "just now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0xA,
	]
	ts_end

	def_text_script CompText87B7DE8_unk17
	ts_mugshot_hide
	ts_msg_open
	ts_sound_stop
	.string "After school..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x177,
	]
	.string "*ding,"
	ts_wait [
		frames: 0x2A,
	]
	.string "dong,"
	ts_wait [
		frames: 0x28,
	]
	.string "ding,"
	ts_wait [
		frames: 0x28,
	]
	.string "dong*"
	ts_wait [
		frames: 0x50,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ahh,it's finally\n"
	.string "over!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_fade_in_bgm [
		track: 0x5,
		length: 0x7,
	]
	ts_end

	def_text_script CompText87B7DE8_unk18
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "And you slept\n"
	.string "through most of it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 19,
	]

	def_text_script CompText87B7DE8_unk19
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "No way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I was listening!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... In my dreams..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script CompText87B7DE8_unk20
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "You've gotta pay\n"
	.string "more attention\n"
	.string "in class,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What happened to\n"
	.string "wanting to be like"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "that prosecutor from\n"
	.string "yesterday!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 21,
	]

	def_text_script CompText87B7DE8_unk21
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect [
		effect: 0x2,
	]
	.string "*beep beep!*"
	ts_wait [
		frames: 0x3E,
	]
	ts_call_p_e_t_effect [
		effect: 0x1,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "... Lan,\n"
	.string "you've got mail."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 22,
	]

	def_text_script CompText87B7DE8_unk22
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ooh,read it,\n"
	.string "read it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 23,
	]

	def_text_script CompText87B7DE8_unk23
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Argh,you really..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Oh,it's from Mom!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string " Huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "No,it can't be..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 24,
	]

	def_text_script CompText87B7DE8_unk24
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... What's wrong?\n"
	.string "Did something\n"
	.string "happen...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 25,
	]

	def_text_script CompText87B7DE8_unk25
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Lan,listen\n"
	.string "carefully and stay\n"
	.string "calm."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Dad..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Dad's been arrested."
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87B7DE8_unk26
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string " Arrested!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're-\n"
	.string "You're kidding,\n"
	.string "right?..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "I don't want to\n"
	.string "believe it,either,\n"
	.string "but that's what..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B7DE8_unk27
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Why did they\n"
	.string "arrest Dad!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's not right!\n"
	.string "It can't be true!\n"
	.string "It can't be!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Why did they...!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 28,
	]

	def_text_script CompText87B7DE8_unk28
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,we can't lose\n"
	.string "our heads!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I know how you feel,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but we've gotta stay\n"
	.string "calm at a time like\n"
	.string "this!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's go home and\n"
	.string "see what Mom has to\n"
	.string "say about all this!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 29,
	]

	def_text_script CompText87B7DE8_unk29
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Y-Yeah...\n"
	.string "Guess you're right."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	