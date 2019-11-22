	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879F1B8::
	.word 0x6BA00

	text_archive_start

	def_text_script CompText879F1B8_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS THE CLASS\n"
	.string "1-2 COMP."
	ts_key_wait 0x0
	ts_clear_msg
	.string "JUST A BIT AGO,\n"
	.string "THE BREAKDOWN WAS\n"
	.string "FINALLY FIXED!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WOOHOO!\n"
	.string "I'M SO HAPPY!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879F1B8_unk1

	def_text_script CompText879F1B8_unk2

	def_text_script CompText879F1B8_unk3

	def_text_script CompText879F1B8_unk4

	def_text_script CompText879F1B8_unk5

	def_text_script CompText879F1B8_unk6

	def_text_script CompText879F1B8_unk7

	def_text_script CompText879F1B8_unk8

	def_text_script CompText879F1B8_unk9

	def_text_script CompText879F1B8_unk10
	ts_check_item07 0x40, 0x1, 0xD, 0xD, 0xFF
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Eh,hey!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I may look like this\n"
	.string "now,but I used to be\n"
	.string "a famous virus prof!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,years\n"
	.string "exposed to viruses\n"
	.string "turned me into this!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You wouldn't want to\n"
	.string "buy a virus would\n"
	.string "you?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you have this\n"
	.string "\""
	ts_print_item 0x40, 0x0
	.string "\"\n"
	.string "I developed,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you can store\n"
	.string "virus data inside."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When you have a\n"
	.string "virus,you can enter"
	ts_key_wait 0x0
	ts_clear_msg
	.string "a virus battle\n"
	.string "taking place in a\n"
	.string "comp!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can buy one\n"
	.string "with 2 viruses for\n"
	.string "5000..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No! Make that 2000\n"
	.string "Zennys!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about it!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Buy  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't Buy"
	ts_select 0x6, 0x80, 0xB, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "You've got cash...\n"
	.string "And I wan't some...\n"
	.string "Please buy this!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879F1B8_unk11
	ts_check_take_zenny 0xD0, 0x7, 0x0, 0x0, 0xFF, 0xC, 0xC
	ts_flag_set 0xD8, 0x1
	ts_flag_set 0x97, 0x1
	ts_flag_set 0xAD, 0x1
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Thank...\n"
	.string "Thank you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright... Here it\n"
	.string "is!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x40, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x40, 0x0
	.string "\"!!\n"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "Alright,so if you\n"
	.string "check around the\n"
	.string "Cyberworld,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "there are extremely\n"
	.string "rare viruses with\n"
	.string "\"Rare\" in the names."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you delete a\n"
	.string "rare virus,you can\n"
	.string "get its data!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can store virus\n"
	.string "data in the\n"
	.string "\""
	ts_print_item 0x40, 0x0
	.string "\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you want to\n"
	.string "enter in a virus\n"
	.string "battle,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "find a different\n"
	.string "colored Mr.Progs and\n"
	.string "talk to it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Prog's\n"
	.string "whereabouts...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They should be near\n"
	.string "places with dogs or\n"
	.string "robots..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go find them for\n"
	.string "yourself..."
	ts_key_wait 0x0
	.string "$Thank you for\n"
	.string "your business!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879F1B8_unk12
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Sorry...\n"
	.string "You don't have\n"
	.string "enough money..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879F1B8_unk13
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Alright,so if you\n"
	.string "check around the\n"
	.string "Cyberworld,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "there are extremely\n"
	.string "rare viruses with\n"
	.string "\"Rare\" in the name."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you delete a\n"
	.string "rare virus,you can\n"
	.string "get its data!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can store virus\n"
	.string "data in the\n"
	.string "\""
	ts_print_item 0x40, 0x0
	.string "\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you want to\n"
	.string "enter in a virus\n"
	.string "battle,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "find a different\n"
	.string "colored Mr.Progs and\n"
	.string "talk to it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Prog's\n"
	.string "whereabouts...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They should be near\n"
	.string "places with dogs or\n"
	.string "robots..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go find them for\n"
	.string "yourself..."
	ts_key_wait 0x0
	.string "$Thank you for\n"
	.string "your business!"
	ts_key_wait 0x0
	ts_end

	