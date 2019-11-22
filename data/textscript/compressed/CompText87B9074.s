	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B9074::
	.word 0x77B00

	text_archive_start

	def_text_script CompText87B9074_unk0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	.string "... "
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "*thunk!"
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
		target: 1,
	]

	def_text_script CompText87B9074_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hmm,now that I think\n"
	.string "about it,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I think I might\n"
	.string "have heard something\n"
	.string "during class..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So,this Bot's been\n"
	.string "in here for 2 days\n"
	.string "now?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87B9074_unk2
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "*thunk! "
	ts_wait [
		frames: 0x6,
	]
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "thunk!*"
	ts_wait [
		frames: 0x6,
	]
	.string "\n"
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "*thunk! "
	ts_wait [
		frames: 0x6,
	]
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "thunk!*"
	ts_wait [
		frames: 0x6,
	]
	.string "\n"
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "*thunk! "
	ts_wait [
		frames: 0x6,
	]
	ts_sound_play00 [
		track: 0x1A1,
	]
	.string "thunk!*"
	ts_wait [
		frames: 0x6,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87B9074_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... You know I'm\n"
	.string "here,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I guess you can see\n"
	.string "me from inside\n"
	.string "there."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,let's get you\n"
	.string "out of there..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B9074_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hmm... There's some\n"
	.string "strange lock here..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OK,here we go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B9074_unk5
	ts_control_lock
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x1A2,
	]
	.string "*crash!!*"
	ts_wait [
		frames: 0x3C,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_end

	def_text_script CompText87B9074_unk6
	ts_mugshot_hide
	ts_msg_open
	ts_control_lock
	ts_text_speed [
		delay: 0x1,
	]
	.string "*pant!*"
	ts_wait [
		frames: 0x1E,
	]
	.string " *pant!*"
	ts_wait [
		frames: 0x1E,
	]
	.string "\n"
	.string "*pant!*"
	ts_wait [
		frames: 0x1E,
	]
	.string " *pant!*"
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	.string "IT WAS SIMPLY\n"
	.string "AWFUL!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_control_lock
	ts_text_speed [
		delay: 0x1,
	]
	.string "*pant!*"
	ts_wait [
		frames: 0x1E,
	]
	.string " *pant!*"
	ts_wait [
		frames: 0x1E,
	]
	.string "\n"
	.string "*pant!*"
	ts_wait [
		frames: 0x1E,
	]
	.string " *pant!*"
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_jump [
		target: 7,
	]

	def_text_script CompText87B9074_unk7
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hey,are you OK...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87B9074_unk8
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "Ah!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B9074_unk9
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "What are you\n"
	.string "doing here!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've been looking\n"
	.string "for you for 2 days!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B9074_unk10
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "... Did you hide him\n"
	.string "here,Lan Hikari?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87B9074_unk11
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "N-No!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87B9074_unk12
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "... Really?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87B9074_unk13
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Really!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87B9074_unk14
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "I don't know...\n"
	.string "sounds kinda fishy."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you're hiding the\n"
	.string "truth from me,I'll\n"
	.string "know soon enough."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This Security Bot\n"
	.string "records everything\n"
	.string "it sees."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So it'll be on\n"
	.string "record!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "One look at the\n"
	.string "video,and I'll know\n"
	.string "the culprit!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wahaha!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87B9074_unk15
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x7,
	]
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
	.string " Wait..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What did you just\n"
	.string "say,Mr.Mach...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87B9074_unk16
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "I said that this\n"
	.string "Security Bot records\n"
	.string "everything it sees."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... What's wrong,\n"
	.string "Lan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Why the serious\n"
	.string "face?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Don't tell me\n"
	.string "you WERE the one\n"
	.string "that hid the Bot!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 17,
	]

	def_text_script CompText87B9074_unk17
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Record..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "MegaMan!\n"
	.string "Maybe...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 18,
	]

	def_text_script CompText87B9074_unk18
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Yeah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This Security Bot\n"
	.string "has been in this\n"
	.string "closet for 2 days,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "which means that\n"
	.string "it may have been\n"
	.string "able to look out"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "into the classroom,\n"
	.string "and record\n"
	.string "everything we need!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 19,
	]

	def_text_script CompText87B9074_unk19
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Mr.Mach! Where's the\n"
	.string "recorded data stored\n"
	.string "for this Bot!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script CompText87B9074_unk20
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "Um,the RoboControl\n"
	.string "PC in the Teachers'\n"
	.string "Room,but..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "if you go in there,\n"
	.string "no pranks,\n"
	.string "understand!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 21,
	]

	def_text_script CompText87B9074_unk21
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Thank you,Mr.Mach!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "With this data,maybe\n"
	.string "we can back up Dad's\n"
	.string "alibi!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	