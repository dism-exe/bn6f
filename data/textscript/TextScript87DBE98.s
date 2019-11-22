TextScript87DBE98::
	text_archive_start

	def_text_script TextScript87DBE98_unk0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_sound_play00 [
		track: 0xCD,
	]
	.string "*BEEP! "
	ts_wait [
		frames: 0x20,
	]
	ts_sound_play00 [
		track: 0xCD,
	]
	.string "BEEP! "
	ts_wait [
		frames: 0x20,
	]
	ts_sound_play00 [
		track: 0xCD,
	]
	.string "BEEP!*"
	ts_wait [
		frames: 0x20,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_sound_enable_text_sfx
	.string "A LAWBREAKER HAS\n"
	.string "BEEN DISCOVERED!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "ARREST IMMEDIATELY!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript87DBE98_unk1
	ts_msg_open
	.string "The culprit is\n"
	.string "present!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The trial will\n"
	.string "now begin!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript87DBE98_unk2
	ts_msg_open
	.string "You,the defendant..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "have trampled on the\n"
	.string "grass and flowers\n"
	ts_print_buffer03 [
		minLength: 0x0,
		padZeros: 0x0,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string " times!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Trampling on flowers\n"
	.string "is forbidden here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Retracing your\n"
	.string "steps\" is a very\n"
	.string "serious crime!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
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
	.string " I have decided!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The offender will\n"
	.string "be punished by the\n"
	.string "Big Gavel!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript87DBE98_unk3
	ts_msg_open
	.string "You will be bopped\n"
	.string "on the head in a\n"
	.string "detention cell!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript87DBE98_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Are you OK,MegaMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script TextScript87DBE98_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Y-Yeah...\n"
	.string "more or less..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't worry about\n"
	.string "me! We've gotta keep\n"
	.string "on moving forward!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript87DBE98_unk6
	ts_msg_open
	.string "The security door\n"
	.string "has been unlocked!!"
	ts_key_wait [
		any: 0x0,
	]
	.string "$  "

	.balign 4, 0
