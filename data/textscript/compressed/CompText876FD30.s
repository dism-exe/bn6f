	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876FD30::
	.word 0x15100

	text_archive_start

	def_text_script CompText876FD30_unk0
	ts_check_flag 0x5C, 0xE, 0x1, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ahh,Iris!\n"
	.string "Nice to see you!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x11
	.string "...You're inviting\n"
	.string "me to the Expo too?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yeah! It's gonna\n"
	.string "be great! Let's\n"
	.string "go together!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We are meeting at\n"
	.string "blah blah blah..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Got it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x11
	.string "Umm...yeah..."
	ts_key_wait 0x0
	ts_flag_set 0x5C, 0xE
	ts_end

	def_text_script CompText876FD30_unk1
	ts_mugshot_show 0x11
	ts_msg_open
	.string "...The...Expo...\n"
	.string "It'll...be...fun..."
	ts_key_wait 0x0
	ts_end

	