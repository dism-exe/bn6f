	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879FB24::
	.word 0x4D600

	text_archive_start

	def_text_script CompText879FB24_unk0

	def_text_script CompText879FB24_unk1

	def_text_script CompText879FB24_unk2

	def_text_script CompText879FB24_unk3

	def_text_script CompText879FB24_unk4

	def_text_script CompText879FB24_unk5
	ts_check_flag 0x59, 0x8, 0x6, 0xFF
	ts_flag_set 0x59, 0x8
	ts_msg_open
	ts_mugshot_show 0x46
	.string "Seems like you\n"
	.string "discovered the\n"
	.string "right answer!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yep!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"A fish that can't\n"
	.string "swim\"...\n"
	.string "It's Fish Sticks!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Congrats on getting\n"
	.string "the second answer\n"
	.string "correct!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The next quest\n"
	.string "is also the final\n"
	.string "quest..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The last item you\n"
	.string "must find is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,the clue is\n"
	.string "hidden in the\n"
	.string "following words..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"I'm always looking\n"
	.string " at crayfish.\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you know what it\n"
	.string "is?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The key to the next\n"
	.string "round is at hand!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879FB24_unk6
	ts_msg_open
	ts_mugshot_show 0x46
	.string "\"I'm always looking\n"
	.string " at crayfish.\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "What is it?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Pretty difficult,\n"
	.string "huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,maybe you\n"
	.string "should try to find"
	ts_key_wait 0x0
	ts_clear_msg
	.string "crayfish in the\n"
	.string "real world!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The key to the next\n"
	.string "round is at hand!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879FB24_unk7
	ts_check_flag 0x59, 0x8, 0x8, 0xFF
	ts_flag_set 0x59, 0x8
	ts_msg_open
	ts_mugshot_show 0x45
	.string "Seems like you\n"
	.string "discovered the\n"
	.string "right answer!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yep!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"A fish that can't\n"
	.string " swim\"...\n"
	.string "It's Fish Sticks!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Congrats on getting\n"
	.string "the second answer\n"
	.string "correct!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The next quest\n"
	.string "is also the final\n"
	.string "quest..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The last item you\n"
	.string "must find is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,the clue is\n"
	.string "hidden in the\n"
	.string "following words..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"I'm always looking\n"
	.string " at crayfish.\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you know what it\n"
	.string "is?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The key to the next\n"
	.string "round is at hand!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879FB24_unk8
	ts_msg_open
	ts_mugshot_show 0x45
	.string "\"I'm always looking\n"
	.string " at crayfish.\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "The last one really\n"
	.string "is the hardest!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So here is the best\n"
	.string "hint I can give..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There are no\n"
	.string "crayfish in Seaside\n"
	.string "Town!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did that help?"
	ts_key_wait 0x0
	ts_end

	