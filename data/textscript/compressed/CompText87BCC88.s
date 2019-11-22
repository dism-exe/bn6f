	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BCC88::
	.word 0x52300

	text_archive_start

	def_text_script CompText87BCC88_unk0
	ts_msg_open
	.string "... And today,rain\n"
	.string "will fall starting\n"
	.string "in the afternoon."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's it for the\n"
	.string "weather today. I'm\n"
	.string "Mr.Weather,saying"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "good bye from\n"
	.string "Sky Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BCC88_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "You know,I hadn't\n"
	.string "really noticed since\n"
	.string "moving here,but the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "weather forecasts\n"
	.string "in Cyber City are\n"
	.string "more like notices!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87BCC88_unk2
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Yeah. They control\n"
	.string "all of Cyber City's\n"
	.string "weather in Sky Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So the forecasts are\n"
	.string "right 100 percent of\n"
	.string "the time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87BCC88_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Wow,they can control\n"
	.string "the weather!? That's\n"
	.string "cool!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You know all sorts\n"
	.string "of things,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87BCC88_unk4
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "I don't know that\n"
	.string "much. Besides,\n"
	.string "Mr.Mach told us"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "that in class...\n"
	.string "Which means you were\n"
	.string "sleeping again!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87BCC88_unk5
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ack!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Um,he really told us\n"
	.string "in class?... Are you\n"
	.string "sure...? Ahaha..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87BCC88_unk6
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "L-a-n!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87BCC88_unk7
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect [
		effect: 0x2,
	]
	.string "*beep beep!*"
	ts_wait [
		frames: 0x3E,
	]
	ts_call_p_e_t_effect [
		effect: 0x1,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87BCC88_unk8
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ah! I got mail!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hey,hurry up and\n"
	.string "read it,OK,MegaMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87BCC88_unk9
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Aaargh!!\n"
	.string "Hopeless!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Alright,I'll read\n"
	.string "the mail. It's about\n"
	.string "round 2 of"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "the Expo Pavilion\n"
	.string "Operator Navi\n"
	.string "Selection Test."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Round 2 of the Expo\n"
	.string " Pavilion Operator\n"
	.string " Navi Selection Test"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " will take place in\n"
	.string " Sky Town."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " Round 2 Selection\n"
	.string " Test participants"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " should gather there\n"
	.string " prior to the test.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's what it says!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87BCC88_unk10
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hey,Sky Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Perfect timing! Just\n"
	.string "what I wanted to\n"
	.string "know more about!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Come on,MegaMan!\n"
	.string "Let's go check it\n"
	.string "out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87BCC88_unk11
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Alright!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	