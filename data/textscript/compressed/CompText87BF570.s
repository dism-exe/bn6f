	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BF570::
	.word 0x1B600

	text_archive_start

	def_text_script CompText87BF570_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Iris...isn't here?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BF570_unk1_id

	def_text_script CompText87BF570_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x1A1
	.string "*clank!!*"
	ts_wait frames=0x21
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF570_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Iris!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF570_unk3
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x1A1
	.string "*clank*"
	ts_wait frames=0x21
	.string "\n"
	ts_sound_play00 track=0x1A1
	.string "*clank!!*"
	ts_wait frames=0x21
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF570_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-What's that\n"
	.string "sound!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF570_unk5
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x1A1
	.string "*clank*"
	ts_wait frames=0x21
	.string "\n"
	ts_sound_play00 track=0x1A1
	.string "*clank!!*"
	ts_wait frames=0x21
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF570_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sounds like there's\n"
	.string "something in the\n"
	.string "closet..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if that guy\n"
	.string "from before is\n"
	.string "hiding in there..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BF570_unk7_id

	def_text_script CompText87BF570_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I'm worried about\n"
	.string "Iris,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but I think you\n"
	.string "should check out\n"
	.string "the locker first..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BF570_unk8_id

	def_text_script CompText87BF570_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Y-Yeah..."
	ts_key_wait any=0x0
	ts_end

	