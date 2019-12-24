	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87ACBB0::
	.word 0x12700

	text_archive_start

	def_text_script CompText87ACBB0_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ACBB0_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ACBB0_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Looks like you\n"
	.string "got it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How do you feel?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87ACBB0_unk3_id

	def_text_script CompText87ACBB0_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I'm OK."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This CopyBot's\n"
	.string "battery is almost\n"
	.string "out though..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87ACBB0_unk4_id

	def_text_script CompText87ACBB0_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Gotcha. Transfer\n"
	.string "back to the PET,\n"
	.string "then."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ACBB0_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright! Now,with\n"
	.string "the ball MegaMan\n"
	.string "got,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll move that seal\n"
	.string "out of the way!"
	ts_key_wait any=0x0
	ts_end

	