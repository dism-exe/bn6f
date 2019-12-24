	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C6028::
	.word 0xF1200

	text_archive_start

	def_text_script CompText87C6028_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Aaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk1
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87C6028_unk2_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*grrrrrrr...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk3_id

	def_text_script CompText87C6028_unk2
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x194
	.string "*screeeeech...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk3_id

	def_text_script CompText87C6028_unk3
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Huuuuuhhh....."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk4_id

	def_text_script CompText87C6028_unk4
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Help,help..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk5_id

	def_text_script CompText87C6028_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan!\n"
	.string "Stop!"
	ts_key_wait any=0x0
	ts_end
	ts_jump target=CompText87C6028_unk6_id

	def_text_script CompText87C6028_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Fight it,MegaMan!\n"
	.string "Return to\n"
	.string "normal,please!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why did you let the\n"
	.string "Cybeast's power take\n"
	.string "control!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk7_id

	def_text_script CompText87C6028_unk7
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87C6028_unk8_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*grrrrr...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk9_id

	def_text_script CompText87C6028_unk8
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x194
	.string "*screeeech...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk9_id

	def_text_script CompText87C6028_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's me,MegaMan!\n"
	.string "It's Lan! Please,\n"
	.string "snap out of it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk10
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "That operator boy's\n"
	.string "come,he has."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ye think it'll be\n"
	.string "alright?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If that Navi 'ears\n"
	.string "his operator callin'\n"
	.string "for him,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the Cybeast's power\n"
	.string "might get squashed\n"
	.string "again!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk11_id

	def_text_script CompText87C6028_unk11
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Tee,hee. It'll be\n"
	.string "OK."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I mean,those Cybeast\n"
	.string "Worshippers"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "put more than plenty\n"
	.string "of those weird\n"
	.string "spells on him."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That boy can try all\n"
	.string "he wants but he'll\n"
	.string "never get him back!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Watch... See!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk12
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87C6028_unk13_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*grrrrrr...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk14_id

	def_text_script CompText87C6028_unk13
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x194
	.string "*screeeeech...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk14_id

	def_text_script CompText87C6028_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan...\n"
	.string "Have you really\n"
	.string "forgotten me...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Haha... Cut it out.\n"
	.string "This is a really\n"
	.string "cruel joke..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk15
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87C6028_unk16_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x191
	.string "*roooooar!!*"
	ts_wait frames=0x5A
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk17_id

	def_text_script CompText87C6028_unk16
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x193
	.string "*screeeech!!*"
	ts_wait frames=0x46
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk17_id

	def_text_script CompText87C6028_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Waaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Huh?"
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0xA,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... What happened?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He just suddenly\n"
	.string "became docile..."
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87C6028_unk20
	ts_mugshot_hide
	ts_msg_open
	.string "Don't let your guard\n"
	.string "down -- It's not\n"
	.string "over yet..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "...!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk22
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Iris!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk23_id

	def_text_script CompText87C6028_unk23
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "... Um!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... It's no use. I\n"
	.string "can't control him\n"
	.string "completely!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk24
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87C6028_unk25_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*grrrrrr...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk26_id

	def_text_script CompText87C6028_unk25
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x194
	.string "*screeeech...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk26_id

	def_text_script CompText87C6028_unk26
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Iris,who or what in\n"
	.string "the world are you!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk27_id

	def_text_script CompText87C6028_unk27
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "Lan,keep trying to\n"
	.string "get through to him!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's fighting with\n"
	.string "the Cybeast right\n"
	.string "now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Only you,his\n"
	.string "operator,can\n"
	.string "help him!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk28_id

	def_text_script CompText87C6028_unk28
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "A-Ah...!!\n"
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk29
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Don't give in,\n"
	.string "MegaMan! You can\n"
	.string "control the Cybeast!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87C6028_unk30_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*grr... grrrr...!*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... grr...rr...\n"
	.string "L-Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk31_id

	def_text_script CompText87C6028_unk30
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x194
	.string "*scree... screeech!*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... screee...\n"
	.string "L-Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk31_id

	def_text_script CompText87C6028_unk31
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "M-MegaMan?\n"
	.string "Is that you?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Keep trying!\n"
	.string "You're almost there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk32
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87C6028_unk33_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x191
	.string "*grrrrr!*"
	ts_wait frames=0x5A
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x11
	.string "N-No good..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_end
	ts_jump target=CompText87C6028_unk34_id

	def_text_script CompText87C6028_unk33
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x193
	.string "*screeeech!*"
	ts_wait frames=0x46
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x11
	.string "N-No good..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk34
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Huh?\n"
	.string "A CopyBot!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Where...\n"
	.string "Where did MegaMan\n"
	.string "go!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk35_id

	def_text_script CompText87C6028_unk35
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "... I think he\n"
	.string "probably couldn't\n"
	.string "bear the pain..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and ran away to\n"
	.string "somewhere in the\n"
	.string "Cyberworld."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk36_id

	def_text_script CompText87C6028_unk36
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "That... That's..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk37
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Shoot!\n"
	.string "We messed up big!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we don't get him\n"
	.string "back..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,we've got to\n"
	.string "hurry up and\n"
	.string "find him!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk38
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "......\n"
	.string "I'm really sorry."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If only I could've\n"
	.string "kept him under my\n"
	.string "control a little..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk39_id

	def_text_script CompText87C6028_unk39
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Control?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Um,Iris..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've been trying to\n"
	.string "ask you for a while\n"
	.string "now,but who are..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk40_id

	def_text_script CompText87C6028_unk40
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Ah,this is terrible!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk41
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Are things going to\n"
	.string "be OK under these\n"
	.string "circumstances...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "This area isn't too\n"
	.string "safe..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if this\n"
	.string "kind of accident\n"
	.string "is insured..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With security like\n"
	.string "this,I wonder if the\n"
	.string "Expo is still on..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk42_id

	def_text_script CompText87C6028_unk42
	ts_mugshot_hide
	ts_msg_open
	.string "Please,stay calm!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk43
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Dear citizens,there\n"
	.string "is nothing to be\n"
	.string "worried about."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Creating a safe town\n"
	.string "is one of my duties\n"
	.string "as your mayor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The monster just now\n"
	.string "will be found and\n"
	.string "examined!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk44_id

	def_text_script CompText87C6028_unk44
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "M-Monster?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk45
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-Wait just\n"
	.string "one second!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What did you mean by\n"
	.string "\"monster\"!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk46_id

	def_text_script CompText87C6028_unk46
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Oh... You...\n"
	.string "You're the Operator\n"
	.string "Navi's..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I see. That monster\n"
	.string "was really MegaMan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmm,hmm... Now it\n"
	.string "makes sense."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That monster was why\n"
	.string "you were able to win\n"
	.string "the Selection Test."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk47_id

	def_text_script CompText87C6028_unk47
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "H-How dare you...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan is not a\n"
	.string "monster!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk48_id

	def_text_script CompText87C6028_unk48
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "... Well,if he's not\n"
	.string "a monster,then what\n"
	.string "is he,hmm?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you ask me,I'd\n"
	.string "say I see nothing\n"
	.string "but a monster......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk49_id

	def_text_script CompText87C6028_unk49
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Nnrgh!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Take back what you\n"
	.string "just said!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk50
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Arrgh!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk51_id

	def_text_script CompText87C6028_unk51
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "I can't believe I\n"
	.string "chose a monster as\n"
	.string "the Operator Navi..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm afraid I can't\n"
	.string "allow MegaMan to be\n"
	.string "the Operator Navi!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C6028_unk52_id

	def_text_script CompText87C6028_unk52
	ts_mugshot_hide
	ts_msg_open
	.string "... Mayor..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk53
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "I see. I will be\n"
	.string "at the emergency\n"
	.string "meeting shortly."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6028_unk54
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... MegaMan...\n"
	.string "Where are you...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What am I supposed\n"
	.string "to do?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan..."
	ts_key_wait any=0x0
	ts_end

	