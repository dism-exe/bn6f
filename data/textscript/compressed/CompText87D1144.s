	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D1144::
	.word 0x77B00

	text_archive_start

	def_text_script CompText87D1144_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Now what? The town's\n"
	.string "crawling with\n"
	.string "Dr.Wily's Navis!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk1_id

	def_text_script CompText87D1144_unk1
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "I had no idea they\n"
	.string "had made so many\n"
	.string "CopyBots..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We would be crushed\n"
	.string "if we went after\n"
	.string "that many CopyBots."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk2_id

	def_text_script CompText87D1144_unk2
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xD3
	.string "*wham!!*"
	ts_wait frames=0x2D
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_sound_play_bgm track=0xC
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk3
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "There they are!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk4
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Tsk,they've locked\n"
	.string "us in!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk5_id

	def_text_script CompText87D1144_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "This is bad...\n"
	.string "There's three\n"
	.string "of them..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk6_id

	def_text_script CompText87D1144_unk6
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "LAN HIKARI...\n"
	.string "ELIMINATE..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk7
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xD3
	.string "*wham!!*"
	ts_wait frames=0x2D
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk8_id

	def_text_script CompText87D1144_unk8
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "REINFORCEMENTS HAVE\n"
	.string "ARRIVED... THERE IS\n"
	.string "NO ESCAPE..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk9
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "URK! YOU'RE...!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87D1144_unk10
	ts_msg_open
	.string "Finishing Attack!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x178
	.string "*bam!*"
	ts_wait frames=0xF
	.string "\n"
	ts_sound_play00 track=0x17A
	.string "      *pow!*"
	ts_wait frames=0xF
	.string "\n"
	ts_sound_play00 track=0x17B
	.string "            *biff!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk11
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Hmph! No one lays\n"
	.string "a finger on my\n"
	.string "students!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk12_id

	def_text_script CompText87D1144_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mr.Mach!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk13_id

	def_text_script CompText87D1144_unk13
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "It's OK,you're safe\n"
	.string "now!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk14_id

	def_text_script CompText87D1144_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Thank you,Mr.Mach!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x5,
	]
	ts_jump target=CompText87D1144_unk15_id

	def_text_script CompText87D1144_unk15
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "It looks like\n"
	.string "Dr.Wily's starting\n"
	.string "to make his move..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "which means he's\n"
	.string "putting that plan\n"
	.string "into action."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk16_id

	def_text_script CompText87D1144_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "That plan...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Mach,what does\n"
	.string "Dr.Wily want!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk17_id

	def_text_script CompText87D1144_unk17
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Dr.Wily is..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk18_id

	def_text_script CompText87D1144_unk18
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x1B6
	.string "*wham!*"
	ts_wait frames=0x2D
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk19
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	ts_sound_play_bgm track=0xC
	.string "I heard a voice from\n"
	.string "in here! They've got\n"
	.string "to be here!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk20
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "I'll get them to\n"
	.string "follow me and leave\n"
	.string "this room."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'll go too,Mr.Mach!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk22_id

	def_text_script CompText87D1144_unk22
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Lan,I have a favor\n"
	.string "to ask of you..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk23_id

	def_text_script CompText87D1144_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "A favor...? Me?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk24_id

	def_text_script CompText87D1144_unk24
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Please stop Baryl..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure he's with\n"
	.string "Dr.Wily right now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's a hidden\n"
	.string "passageway between\n"
	.string "the Principal's"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Office and the Expo\n"
	.string "Site......\n"
	.string "Please...stop him,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "my dear student!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk25
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mr.Mach!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk26_id

	def_text_script CompText87D1144_unk26
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Heeeeey!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,you! I'm over\n"
	.string "here!! Come get me!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk27_id

	def_text_script CompText87D1144_unk27
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "A HUMAN!\n"
	.string "HE'S ESCAPING!\n"
	.string "OVER THERE!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk28_id

	def_text_script CompText87D1144_unk28
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "... They're gone."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk29_id

	def_text_script CompText87D1144_unk29
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk30_id

	def_text_script CompText87D1144_unk30
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Lan,now's not the\n"
	.string "time to feel bad\n"
	.string "about things."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Besides,I think\n"
	.string "that person will be\n"
	.string "alright."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just by looking at\n"
	.string "him,I can tell he's\n"
	.string "not easily beaten."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come on,let's hurry\n"
	.string "to the Principal's\n"
	.string "Office."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D1144_unk31
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Chaud's right.\n"
	.string "I'm sure Mr.Mach\n"
	.string "will be alright."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D1144_unk32_id

	def_text_script CompText87D1144_unk32
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,he will.\n"
	.string "OK,let's go!!"
	ts_key_wait any=0x0
	ts_end

	