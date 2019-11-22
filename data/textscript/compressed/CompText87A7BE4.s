	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A7BE4::
	.word 0x54B00

	text_archive_start

	def_text_script CompText87A7BE4_unk0
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Hey,stop it you\n"
	.string "guys,that's enough!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're gonna hurt\n"
	.string "the teachers!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A7BE4_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Mick! Hurry up and\n"
	.string "shut them down!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87A7BE4_unk2
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "I-I'm trying!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But they're not\n"
	.string "listening to me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87A7BE4_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "But aren't they\n"
	.string "being controlled by\n"
	.string "your Navi!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87A7BE4_unk4
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Y-Yeah..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A7BE4_unk5
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Stop it,BlastMan!\n"
	.string "BlastMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're going\n"
	.string "overboard!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87A7BE4_unk6
	ts_mugshot_show [
		mugshot: 0x51,
	]
	ts_msg_open
	.string "...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Isn't this what\n"
	.string "you wished for?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Didn't you want to\n"
	.string "shake them up?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87A7BE4_unk7
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "All I wanted to do\n"
	.string "was scare Lan and\n"
	.string "the others a little!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I didn't want\n"
	.string "it to go this far!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87A7BE4_unk8
	ts_mugshot_show [
		mugshot: 0x51,
	]
	ts_msg_open
	.string "Hmph,coward!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Maybe you should\n"
	.string "run away!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I'm going to\n"
	.string "do what I want!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can suffer too,\n"
	.string "for all I care!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0xDC,
	]
	.string "*click!!*"
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87A7BE4_unk9
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "BlastMan,BlastMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Darn it...\n"
	.string "He cut me off..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87A7BE4_unk10
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0xD3,
	]
	.string "*wham!!*"
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A7BE4_unk11
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ahh! We're trapped!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87A7BE4_unk12
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	ts_control_lock
	ts_sound_play00 [
		track: 0xF7,
	]
	.string "Aaah!"
	ts_wait [
		frames: 0x32,
	]
	.string "\n"
	ts_control_unlock
	.string "The heat!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A7BE4_unk13
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "This is the end..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87A7BE4_unk14
	ts_mugshot_show [
		mugshot: 0x10,
	]
	ts_msg_open
	.string "*huff,huff...*\n"
	.string "Don't give up,\n"
	.string "everyone..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "*huff,huff...*"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A7BE4_unk15
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Where's BlastMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87A7BE4_unk16
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "I don't care how\n"
	.string "many NetBattles\n"
	.string "you've fought..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "you can't win\n"
	.string "against BlastMan."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 17,
	]

	def_text_script CompText87A7BE4_unk17
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "And I don't care\n"
	.string "how strong he is!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've gotta do\n"
	.string "something before\n"
	.string "it's too late!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you wanna help,\n"
	.string "tell me where he is!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 18,
	]

	def_text_script CompText87A7BE4_unk18
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "He's in that control\n"
	.string "system..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A7BE4_unk19
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's go,MegaMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script CompText87A7BE4_unk20
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "OK!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 21,
	]

	def_text_script CompText87A7BE4_unk21
	ts_control_lock
	ts_text_speed [
		delay: 0x1,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Jack in!"
	ts_wait [
		frames: 0xA,
	]
	.string "\n"
	.string "MegaMan,"
	ts_wait [
		frames: 0xA,
	]
	.string "\n"
	.string "Execute!!"
	ts_wait [
		frames: 0x1E,
	]
	ts_control_unlock
	ts_end

	