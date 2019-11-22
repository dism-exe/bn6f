	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C205C::
	.word 0x46D00

	text_archive_start

	def_text_script CompText87C205C_unk0
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "So you were here\n"
	.string "all this time..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Dr.Wily."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C205C_unk1
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "... Baryl."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C205C_unk2
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "... It is nearly\n"
	.string "finished."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Isn't it\n"
	.string "magnificent?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Slowly,one step at\n"
	.string "a time,my dream\n"
	.string "becomes a reality."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87C205C_unk3
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "... We got the\n"
	.string "Force Program."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Here,Doctor."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C205C_unk4
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "So this is the\n"
	.string "Force Program."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Mwahaha."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We finally have\n"
	.string "another crucial\n"
	.string "piece."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87C205C_unk5
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "Have you told\n"
	.string "this to the\n"
	.string "\"benefactor\"?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87C205C_unk6
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "No,there's no need."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He's finally\n"
	.string "revealed his\n"
	.string "true colors."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He wants the Cybeast\n"
	.string "that's in our\n"
	.string "possession."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So,we'll keep him in\n"
	.string "the dark and let him\n"
	.string "think what he wants."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Baryl,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "now is the time to\n"
	.string "break our connection\n"
	.string "to our \"benefactor\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87C205C_unk7
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "But don't we need\n"
	.string "a lot of things that\n"
	.string "only our"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"benefactor\" can\n"
	.string "give us for our\n"
	.string "plan to work...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If we cut our\n"
	.string "source,we would only\n"
	.string "hurt ourselves..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87C205C_unk8
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "Mwahaha,that is\n"
	.string "where you're\n"
	.string "wrong."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "All this time,our\n"
	.string "plan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "never needed that\n"
	.string "\"benefactor\" at\n"
	.string "all!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "All that remains is\n"
	.string "the \"control panel\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87C205C_unk9
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "......"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87C205C_unk10
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "In just a little\n"
	.string "while..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "we will bring\n"
	.string "about the end of\n"
	.string "the world!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Mwa,ha,ha..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Waaahahahaha!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	