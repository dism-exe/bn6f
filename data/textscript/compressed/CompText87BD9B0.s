	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BD9B0::
	.word 0x84600

	text_archive_start

	def_text_script CompText87BD9B0_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Hey,are you OK!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk1_id

	def_text_script CompText87BD9B0_unk1
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "Nngh... Ah...\n"
	.string "... MegaMan!..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BD9B0_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Are you hurt?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk3_id

	def_text_script CompText87BD9B0_unk3
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "I'm OK..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Darn,they really\n"
	.string "got me good."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But those guys that\n"
	.string "brought me here had\n"
	.string "better watch out!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll remember this,\n"
	.string "and they'll pay next\n"
	.string "time!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk4_id

	def_text_script CompText87BD9B0_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Um... OK...\n"
	.string "Hey!\n"
	.string "Those statues...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BD9B0_unk5
	ts_msg_open
	.string "THE OFFERING IS\n"
	.string "ESCAPING!!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87BD9B0_unk6
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "WHAT DO YOU THINK\n"
	.string "YOU'RE DOING,BLUEY!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BD9B0_unk7
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "It's them! They're\n"
	.string "the ones that \n"
	.string "brought me here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk8_id

	def_text_script CompText87BD9B0_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Who are you!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk9_id

	def_text_script CompText87BD9B0_unk9
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "WE ARE THE FOLLOWERS\n"
	.string "OF THE CYBEASTS! WE\n"
	.string "WORSHIP THEM."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AND IN RETURN,THEY\n"
	.string "MAKE THIS WORLD EVEN\n"
	.string "STRONGER!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU TWO ARE GOING TO\n"
	.string "BE CHOW FOR THE\n"
	.string "CYBEASTS!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk10_id

	def_text_script CompText87BD9B0_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Cy-Cybeasts..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x57
	.string "Looks like these\n"
	.string "guys don't know that\n"
	.string "MegaMan has one."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk11_id

	def_text_script CompText87BD9B0_unk11
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "WHAT ARE YOU GOING\n"
	.string "ON ABOUT...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ANYWAY,YOU TWO WILL\n"
	.string "BE ENOUGH FOR BOTH\n"
	.string "CYBEASTS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HEY,CYBEASTS!\n"
	.string "DINNER'S HERE!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "UUUU LAAA!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BD9B0_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan,be careful!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk13_id

	def_text_script CompText87BD9B0_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Yeah,I know...\n"
	.string "Ugh...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BD9B0_unk14
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "M-MegaMan...\n"
	.string "W-What's going on!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk15_id

	def_text_script CompText87BD9B0_unk15
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Inside of me...\n"
	.string "The Cybeast...\n"
	.string "trying..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk16_id

	def_text_script CompText87BD9B0_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "No way! Is that\n"
	.string "statue making the\n"
	.string "Cybeast stronger!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk17_id

	def_text_script CompText87BD9B0_unk17
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "UUUU LAAAA!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk18_id

	def_text_script CompText87BD9B0_unk18
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Nnnghuuuwaaaa...\n"
	.string "Jack out... quickly!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cybeast...\n"
	.string "breaking...\n"
	.string "free..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hurry..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk19_id

	def_text_script CompText87BD9B0_unk19
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "No,you're jacking\n"
	.string "out with me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk20_id

	def_text_script CompText87BD9B0_unk20
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Grrr..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm trying...keep\n"
	.string "the Cybeast down...\n"
	.string "not much longer..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I-I'll be OK.\n"
	.string "... You...hurry!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't...\n"
	.string "I might hurt...\n"
	.string "you..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk21_id

	def_text_script CompText87BD9B0_unk21
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "I... OK...\n"
	.string "I'm sorry..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BD9B0_unk22
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "THE OFFERING IS\n"
	.string "ESCAPING!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk23_id

	def_text_script CompText87BD9B0_unk23
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "WHATEVER. WE STILL\n"
	.string "GOT ONE. THIS SHRIMP\n"
	.string "SHOULD BE ENOUGH."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "UUUU LAAAA!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk24_id

	def_text_script CompText87BD9B0_unk24
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "U-U-Uuuugha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BD9B0_unk25
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "W-WHAT'S THIS\n"
	.string "POWER!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BD9B0_unk26
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "U-Uughaaaaa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BD9B0_unk27
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "TH-THAT FORM..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk28_id

	def_text_script CompText87BD9B0_unk28
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87BD9B0_unk29_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*grrrrrrrr...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk30_id

	def_text_script CompText87BD9B0_unk29
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
	ts_jump target=CompText87BD9B0_unk30_id

	def_text_script CompText87BD9B0_unk30
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "C-CYBEAST..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk31_id

	def_text_script CompText87BD9B0_unk31
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87BD9B0_unk32_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*g...growl...!!*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "G-Gregar...\n"
	.string "I'm not gonna give\n"
	.string "in to you...!!"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x5,
	]
	ts_end

	def_text_script CompText87BD9B0_unk32
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x194
	.string "*s-screeeech...!*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Falzar...\n"
	.string "I'm not gonna give\n"
	.string "in to you...!!"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x5,
	]
	ts_end

	def_text_script CompText87BD9B0_unk33
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "THAT WAS THE\n"
	.string "CYBEAST'S SHAPE!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BD9B0_unk34_id

	def_text_script CompText87BD9B0_unk34
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan! MegaMan!\n"
	.string "Wake up,MegaMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,no!\n"
	.string "I've gotta save\n"
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	