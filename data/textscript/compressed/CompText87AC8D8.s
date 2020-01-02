	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AC8D8::
	.word 0x1D000

	text_archive_start

	def_text_script CompText87AC8D8_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "*huff,huff...*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC8D8_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Not here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Where did she go?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC8D8_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Oh,well. Better\n"
	.string "go back..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC8D8_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC8D8_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Wh-What is she\n"
	.string "doing there...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey!! You!!\n"
	.string "What are you doing\n"
	.string "up there!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC8D8_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Huh? What?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is she...\n"
	.string "pointing at\n"
	.string "something!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "She's telling me\n"
	.string "to go over there?..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AC8D8_unk6_id

	def_text_script CompText87AC8D8_unk6
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xE1
	.string "*chomp!!!*"
	ts_wait frames=0x19
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC8D8_unk7
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xE1
	.string "*chomp!!!*"
	ts_wait frames=0x19
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC8D8_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Huh!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No way..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "She just...\n"
	.string "disappeared..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AC8D8_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Just who is\n"
	.string "that girl...?"
	ts_key_wait any=0x0
	ts_end

	