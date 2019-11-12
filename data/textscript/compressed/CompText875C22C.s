	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875C22C::
	.word 0x3BD00

	text_archive_start

	def_text_script CompText875C22C_unk0
	ts_msg_open
	.string "A very big fan...\n"
	.string "It can create very\n"
	.string "strong winds."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText875C22C_unk1
	ts_msg_open
	.string "A very big air\n"
	.string "conditioner..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It can create very\n"
	.string "cold,winter-like\n"
	.string "conditions."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText875C22C_unk2
	ts_msg_open
	.string "A very big heater...\n"
	.string "It can create very\n"
	.string "hot,summer-like"
	ts_key_wait 0x0
	ts_clear_msg
	.string "conditions."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText875C22C_unk3
	ts_msg_open
	.string "A very big shower...\n"
	.string "It can create large\n"
	.string "rainstorms."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText875C22C_unk4
	ts_msg_open
	.string "Mr.Weather decides\n"
	.string "the weather,but he\n"
	.string "also"
	ts_key_wait 0x0
	ts_clear_msg
	.string "radiates energy from\n"
	.string "his large sun-like\n"
	.string "spherical body."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He really is the\n"
	.string "center of weather\n"
	.string "for Cyber City."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C22C_unk5
	ts_msg_open
	.string "An antenna that was\n"
	.string "used to broadcast\n"
	.string "the weather report,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but it's not being\n"
	.string "used now,so it's\n"
	.string "just another object."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C22C_unk6
	ts_msg_open
	.string "There is no way to\n"
	.string "go past this strong\n"
	.string "cyclone!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C22C_unk7
	ts_msg_open
	.string "There is a giant\n"
	.string "chunk of ice\n"
	.string "blocking the way!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C22C_unk8
	ts_msg_open
	.string "It's impossible to\n"
	.string "go through the\n"
	.string "burning hot air!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C22C_unk9
	ts_msg_open
	.string "The water downpour\n"
	.string "is impossible to\n"
	.string "pass through!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C22C_unk10
	ts_msg_open
	.string "An antenna that is\n"
	.string "used to broadcast\n"
	.string "the weather report,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can jack in..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C22C_unk11
	ts_msg_open
	.string "A port for jacking\n"
	.string "in was built in for\n"
	.string "control purposes."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C22C_unk12

	def_text_script CompText875C22C_unk13

	def_text_script CompText875C22C_unk14

	def_text_script CompText875C22C_unk15

	