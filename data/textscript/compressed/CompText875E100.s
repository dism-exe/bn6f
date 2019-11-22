	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875E100::
	.word 0x34400

	text_archive_start

	def_text_script CompText875E100_unk0
	ts_check_chapter [
		lower: 0x32,
		upper: 0x32,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump [
		target: 5,
	]

	def_text_script CompText875E100_unk1

	def_text_script CompText875E100_unk2

	def_text_script CompText875E100_unk3

	def_text_script CompText875E100_unk4

	def_text_script CompText875E100_unk5
	ts_msg_open
	.string "The security\n"
	.string "cameras' recording\n"
	.string "storage center."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's showing your\n"
	.string "classroom on the\n"
	.string "monitor."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can also clearly\n"
	.string "see the crayfish..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875E100_unk6
	ts_check_flag [
		flag: 0x816,
		jumpIfTrue: 0x5,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x86E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x5,
	]
	ts_msg_open
	.string "The security\n"
	.string "cameras' recording\n"
	.string "storage center."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "This is it,Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Huh? What...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "This camera is\n"
	.string "always filming your\n"
	.string "classroom."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And then it saves\n"
	.string "that data here on\n"
	.string "this computer..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "So then,MegaMan,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "if we check the\n"
	.string "footage from around\n"
	.string "4 P.M. yesterday..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Yeah! Maybe Dad will\n"
	.string "be on it,and that\n"
	.string "means that"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Dad can't be the\n"
	.string "real criminal!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It would support\n"
	.string "his alibi!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "That's right!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OK,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's find that\n"
	.string "footage!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Got it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Now... footage from\n"
	.string "4 P.M. yesterday...\n"
	.string "Um..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Huh?\n"
	.string "That's strange..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's up,MegaMan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "... Wah!\n"
	.string "A virus!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "W-What!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Lan! Get ready!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "... OK!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x85B,
	]
	ts_end

	def_text_script CompText875E100_unk7

	def_text_script CompText875E100_unk8

	def_text_script CompText875E100_unk9

	