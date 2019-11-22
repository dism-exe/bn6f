	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B1F6C::
	.word 0x9D400

	text_archive_start

	def_text_script CompText87B1F6C_unk0
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "Hey,MegaMan!\n"
	.string "Drink up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk1
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x3,
	]
	ts_mugshot_hide
	ts_msg_open
	.string "HeatMan used:\n"
	.string "\""
	ts_print_item [
		item: 0xA,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_end

	def_text_script CompText87B1F6C_unk2
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "Drink this,\n"
	.string "MegaMan,drip."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk3
	ts_mugshot_hide
	ts_msg_open
	.string "SpoutMan used:\n"
	.string "\""
	ts_print_item [
		item: 0xA,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_end

	def_text_script CompText87B1F6C_unk4
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "N-Ngggh..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Gnaaaaaaa!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87B1F6C_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87B1F6C_unk7
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "The Cybeast is\n"
	.string "rejecting the\n"
	.string "\""
	ts_print_item [
		item: 0xA,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Fight,MegaMan!\n"
	.string "Don't let the\n"
	.string "Cybeast win!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87B1F6C_unk8
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Aaaaaaah!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87B1F6C_unk9
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk10
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0xB,
	]
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "W-What's that\n"
	.string "shape...!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk11
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "D-Driiip...!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk12
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0xE,
	]
	ts_mugshot_show [
		mugshot: 0x58,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x191,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	.string "*g-groooowl!!*"
	ts_wait [
		frames: 0x5A,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_sound_play_bgm [
		track: 0x1C,
	]
	ts_jump [
		target: 13,
	]

	def_text_script CompText87B1F6C_unk13
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "Heh,doesn't look\n"
	.string "too friendly,\n"
	.string "does he...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87B1F6C_unk14
	ts_mugshot_show [
		mugshot: 0x59,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x193,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	.string "*screeeeeeech!!*"
	ts_wait [
		frames: 0x46,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_sound_play_bgm [
		track: 0x1C,
	]
	ts_jump [
		target: 15,
	]

	def_text_script CompText87B1F6C_unk15
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "That's...\n"
	.string "not MegaMan...drip."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87B1F6C_unk16
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "No!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The Cybeast has\n"
	.string "taken over MegaMan's\n"
	.string "body!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: 0x11,
		jumpIfCybeastFalzar: 0x15,
	]

	def_text_script CompText87B1F6C_unk17
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "HeatMan!\n"
	.string "Hurry and get\n"
	.string "out of there!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 18,
	]

	def_text_script CompText87B1F6C_unk18
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "Hey,can it,pop!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll knock some\n"
	.string "sense into him."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 19,
	]

	def_text_script CompText87B1F6C_unk19
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "Come on,punk!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script CompText87B1F6C_unk20
	ts_mugshot_show [
		mugshot: 0x58,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x191,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x90,
	]
	.string "*grrroooowl!!*"
	ts_wait [
		frames: 0x5A,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x91,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x92,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x47,
	]
	.string "My flames will bring\n"
	.string "you back!\n"
	.string "Aaaaarh!!"
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk21
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "SpoutMan!\n"
	.string "Hurry and get\n"
	.string "out of there!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 22,
	]

	def_text_script CompText87B1F6C_unk22
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "I-I'm going to bring\n"
	.string "MegaMan back to his\n"
	.string "senses,drip!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 23,
	]

	def_text_script CompText87B1F6C_unk23
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "Hang on,MegaMan,\n"
	.string "drip!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 24,
	]

	def_text_script CompText87B1F6C_unk24
	ts_mugshot_show [
		mugshot: 0x59,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x193,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x90,
	]
	.string "*screeeeeech!!*"
	ts_wait [
		frames: 0x46,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x91,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x92,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x48,
	]
	.string "I won't lose!\n"
	.string "Aaaaaaaah!!... Drip!"
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk25
	ts_end

	def_text_script CompText87B1F6C_unk26
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x1E,
	]
	ts_mugshot_show [
		mugshot: 0x58,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x192,
	]
	.string "*grrrrrr...*"
	ts_wait [
		frames: 0x50,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk27
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x1F,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... What...\n"
	.string "...did I...??"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk28
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x20,
	]
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "... Back...\n"
	.string "with...us..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Oogh!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk29

	def_text_script CompText87B1F6C_unk30
	ts_mugshot_show [
		mugshot: 0x59,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x194,
	]
	.string "*screeeeech...*"
	ts_wait [
		frames: 0x50,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk31
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... What...\n"
	.string "...did I...??"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk32
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "MegaMan...\n"
	.string "you're... OK...\n"
	.string "drip..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B1F6C_unk33
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87B1F6C_unk34
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "It's OK.\n"
	.string "He just fainted."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He used up a lot\n"
	.string "of energy just now."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The Cybeast's effect\n"
	.string "on him is most\n"
	.string "likely weakening..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: 0x23,
		jumpIfCybeastFalzar: 0x25,
	]

	def_text_script CompText87B1F6C_unk35
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "But..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "to nearly delete\n"
	.string "HeatMan in one\n"
	.string "shot--what power..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 36,
	]

	def_text_script CompText87B1F6C_unk36
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Dad,is HeatMan...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 39,
	]

	def_text_script CompText87B1F6C_unk37
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "But..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "to nearly delete\n"
	.string "SpoutMan in one\n"
	.string "shot--what power..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 38,
	]

	def_text_script CompText87B1F6C_unk38
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Dad,is SpoutMan...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 39,
	]

	def_text_script CompText87B1F6C_unk39
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "He jacked out just\n"
	.string "in time,so I think\n"
	.string "he'll be OK."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 40,
	]

	def_text_script CompText87B1F6C_unk40
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Yeah..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 41,
	]

	def_text_script CompText87B1F6C_unk41
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "More pressing is\n"
	.string "MegaMan's\n"
	.string "situation..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Whenever the Cybeast\n"
	.string "awakens,there is the\n"
	.string "possibility that it"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "may take MegaMan\n"
	.string "over... If it were\n"
	.string "to completely take"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "control... I...\n"
	.string "Even if I did every-\n"
	.string "thing I could,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I may have no\n"
	.string "choice...\n"
	.string "but to delete him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 42,
	]

	def_text_script CompText87B1F6C_unk42
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I...\n"
	.string "But..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 43,
	]

	def_text_script CompText87B1F6C_unk43
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "I know how you\n"
	.string "feel,Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But the Cybeasts are\n"
	.string "a threat to human\n"
	.string "society."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "On the other hand,if\n"
	.string "MegaMan can control\n"
	.string "the Cybeast,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "he would control a\n"
	.string "terrific power."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "In any case,we only\n"
	.string "have a limited\n"
	.string "amount of time..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... I'm sorry,Lan."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wish I could do\n"
	.string "something for him...\n"
	.string "Forgive me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 44,
	]

	def_text_script CompText87B1F6C_unk44
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... MegaMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	