	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A536C::
	.word 0x1AD00

	text_archive_start

	def_text_script CompText87A536C_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "..n...\n"
	.string "La...n..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87A536C_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Nngh... Just\n"
	.string "5 more minutes..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87A536C_unk2
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "No excuses if\n"
	.string "you're late!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87A536C_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I get it...\n"
	.string "I'm up,I'm up..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A536C_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "See!\n"
	.string "I got up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87A536C_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Don't \"See!\" me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If I didn't wake you\n"
	.string "up,you'd be so late!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I don't think I\n"
	.string "should trust you\n"
	.string "to manage yourself!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87A536C_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Aww,come on!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,today's my\n"
	.string "first day at\n"
	.string "Cyber Academy,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "so,let's cut the\n"
	.string "chatter and go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87A536C_unk7
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Yeah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	