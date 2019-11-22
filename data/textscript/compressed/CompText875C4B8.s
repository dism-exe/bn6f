	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875C4B8::
	.word 0x47100

	text_archive_start

	def_text_script CompText875C4B8_unk0
	ts_check_chapter 0x45, 0x45, 0xA, 0xFF
	ts_jump 11

	def_text_script CompText875C4B8_unk1
	ts_msg_open
	.string "There are all sorts\n"
	.string "of data disks lined\n"
	.string "up on this shelf."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C4B8_unk2
	ts_msg_open
	.string "Cyber City's current\n"
	.string "weather is displayed\n"
	.string "on the monitor."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Looking at it,there\n"
	.string "is a number on the\n"
	.string "corner of it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"79459146\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C4B8_unk3
	ts_msg_open
	.string "This monitor is\n"
	.string "showing the weather\n"
	.string "world-wide."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When controlling the\n"
	.string "weather,if you don't\n"
	.string "think about the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "balance of weather\n"
	.string "world-wide,you could\n"
	.string "create a disaster."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C4B8_unk4
	ts_msg_open
	.string "Compressed oxygen\n"
	.string "tanks..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A lot of oxygen\n"
	.string "tanks are ready in\n"
	.string "case of an emergency"
	ts_key_wait 0x0
	ts_clear_msg
	.string "since Sky Town is\n"
	.string "floating 30,000\n"
	.string "feet in the sky."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is a port for\n"
	.string "jacking in."
	ts_key_wait 0x0
	ts_check_flag 0x86, 0x1, 0xC, 0xFF
	ts_clear_msg
	.string "... What's this?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's something\n"
	.string "stuck between two\n"
	.string "of the tanks..."
	ts_key_wait 0x0
	ts_mugshot_hide
	ts_check_flag 0x29, 0x17, 0x8, 0xFF
	ts_clear_msg
	ts_item_give 0x70, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x70, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_flag_set 0x86, 0x1
	ts_end

	def_text_script CompText875C4B8_unk5
	ts_msg_open
	.string "A powerful computer.\n"
	.string "It's a weather\n"
	.string "observation station."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Operating it is not\n"
	.string "a job for amateurs."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C4B8_unk6
	ts_msg_open
	.string "Various meters are\n"
	.string "blinking on and off."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Only certain people\n"
	.string "know what each meter\n"
	.string "represents..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C4B8_unk7
	ts_msg_open
	.string "The touch panel\n"
	.string "for the weather\n"
	.string "observation station."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It looks like you\n"
	.string "can jack in!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C4B8_unk8
	ts_clear_msg
	ts_item_give 0x70, 0x1
	ts_player_animate_scene 0x18
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item 0x70, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_flag_set 0x86, 0x1
	ts_end

	def_text_script CompText875C4B8_unk9

	def_text_script CompText875C4B8_unk10
	ts_check_flag 0x75, 0xA, 0xB, 0xFF
	ts_flag_set 0x75, 0xA
	ts_end

	def_text_script CompText875C4B8_unk11
	ts_msg_open
	.string "Lockers for\n"
	.string "personnel."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They're not special,\n"
	.string "just overstuffed\n"
	.string "with items..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C4B8_unk12
	ts_end

	def_text_script CompText875C4B8_unk13

	def_text_script CompText875C4B8_unk14

	def_text_script CompText875C4B8_unk15

	