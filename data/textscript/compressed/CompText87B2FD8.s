	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B2FD8::
	.word 0x42200

	text_archive_start

	def_text_script CompText87B2FD8_unk0
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Who woulda guessed\n"
	.string "that you'd really\n"
	.string "have the Cybeast...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But...\n"
	.string "as long as we have\n"
	.string "the other one..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the ringmaster...\n"
	.string "will get...\n"
	.string "his way..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gaaaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B2FD8_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "...ringmaster...\n"
	.string "...his way...\n"
	.string "And the Cybeast..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B2FD8_unk2_id

	def_text_script CompText87B2FD8_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Looks like there's\n"
	.string "someone else pulling\n"
	.string "the strings here..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B2FD8_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We don't know enough\n"
	.string "about our enemy yet,\n"
	.string "but if they have the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "other Cybeast,then\n"
	.string "we're in a lot\n"
	.string "of trouble..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B2FD8_unk4_id

	def_text_script CompText87B2FD8_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have a bad\n"
	.string "feeling..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B2FD8_unk5
	ts_sound_play_bgm track=0x2
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "... I'm reeeally\n"
	.string "sorry!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A Navi named MegaMan\n"
	.string "sorta got to the\n"
	.string "other Cybeast first."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B2FD8_unk6_id

	def_text_script CompText87B2FD8_unk6
	ts_mugshot_show mugshot=0x60
	ts_msg_open
	.string "... MegaMan...\n"
	.string "... That's Lan\n"
	.string "Hikari's Navi..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hmm. Was it fate\n"
	.string "that he moved here\n"
	.string "to this town?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B2FD8_unk7_id

	def_text_script CompText87B2FD8_unk7
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "... Huh...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B2FD8_unk8_id

	def_text_script CompText87B2FD8_unk8
	ts_mugshot_show mugshot=0x60
	ts_msg_open
	.string "Nothing.\n"
	.string "Just talking\n"
	.string "to myself..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can back off for\n"
	.string "now... At least we\n"
	.string "have one Cybeast."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We can consider this\n"
	.string "battle a victory."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B2FD8_unk9_id

	def_text_script CompText87B2FD8_unk9
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Phew,thanks!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And I'll prove that\n"
	.string "I can get the other\n"
	.string "one too,for sure!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B2FD8_unk10_id

	def_text_script CompText87B2FD8_unk10
	ts_mugshot_show mugshot=0x60
	ts_msg_open
	.string "Hmph,as expected..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan Hikari...\n"
	.string "And MegaMan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You two are becoming\n"
	.string "a threat to my\n"
	.string "operation..."
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0xA,
	]
	ts_end

	