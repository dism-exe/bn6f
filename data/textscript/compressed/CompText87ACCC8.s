	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87ACCC8::
	.word 0x20000

	text_archive_start

	def_text_script CompText87ACCC8_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Um... This seal's\n"
	.string "name is...uh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Fanny,I think..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey,Fanny!\n"
	.string "Look over here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's your favorite\n"
	.string "ball!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87ACCC8_unk1
	ts_mugshot_hide
	ts_msg_open
	.string "... *aur?*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87ACCC8_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ooh! She responded!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,Fanny,I'm gonna\n"
	.string "roll this ball over\n"
	.string "here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you want it,\n"
	.string "you're gonna have\n"
	.string "to go get it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACCC8_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Look!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACCC8_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string " *aur!!*"
	ts_key_wait 0x0
	ts_clear_msg
	.string "*aur! aur! aur!*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACCC8_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	ts_store_timer 0x0, 0x80
	.string "Alright!!\n"
	.string "We did it!"
	ts_key_wait 0x0
	ts_wait_o_w_var 0x0, 0x81
	ts_store_timer 0x0, 0x82
	ts_clear_msg
	.string "Now we can keep\n"
	.string "on going!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACCC8_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The control room is\n"
	.string "beyond this door."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta hurry!\n"
	.string "Mick and the others\n"
	.string "are in danger!"
	ts_key_wait 0x0
	ts_end

	