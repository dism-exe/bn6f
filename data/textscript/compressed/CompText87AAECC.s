	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AAECC::
	.word 0x19600

	text_archive_start

	def_text_script CompText87AAECC_unk0
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Hey!\n"
	.string "Back off!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AAECC_unk1
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Give me some room,\n"
	.string "will ya!? You're\n"
	.string "getting in my way!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87AAECC_unk2
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer 0x0, 0x80
	.string "*Squawk! Squawk!*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87AAECC_unk3
	ts_mugshot_show 0x14
	ts_msg_open
	.string "What's with that\n"
	.string "super happy face!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're making me\n"
	.string "mad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AAECC_unk4
	ts_mugshot_show 0x14
	ts_msg_open
	.string "... You're really\n"
	.string "happy,huh?"
	ts_wait 0x5A, 0x0
	ts_end

	def_text_script CompText87AAECC_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Alright,we're\n"
	.string "finally ready to go!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87AAECC_unk6
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Yeah,I guess."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I mean,if we don't\n"
	.string "do something about\n"
	.string "this penguin,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it's just gonna\n"
	.string "keep on cramping\n"
	.string "my style!"
	ts_key_wait 0x0
	ts_end

	