	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C3210::
	.word 0x56600

	text_archive_start

	def_text_script CompText87C3210_unk0
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Congratulations!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Expo Pavilion\n"
	.string "Operator Navi"
	ts_key_wait 0x0
	ts_clear_msg
	.string "will be Lan Hikari's\n"
	.string "Navi!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x25, 0x0
	ts_end

	def_text_script CompText87C3210_unk1
	ts_check_game_version 0xFF, 0x4
	ts_mugshot_hide
	ts_msg_open
	.string "*clap,clap,clap...*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87C3210_unk2
	ts_mugshot_show 0x26
	ts_msg_open
	.string "Ah,a total flop..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87C3210_unk3
	ts_mugshot_show 0x27
	ts_msg_open
	.string "... Hmph."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87C3210_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "*clap,clap,clap...*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87C3210_unk5
	ts_mugshot_show 0x24
	ts_msg_open
	.string "Well,looks like\n"
	.string "I get to taking\n"
	.string "nothing home."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87C3210_unk6
	ts_mugshot_show 0x25
	ts_msg_open
	.string "Nooo! It's so cruel!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87C3210_unk7
	ts_mugshot_show 0x16
	ts_msg_open
	.string "And now,Mayor Cain\n"
	.string "would like to say\n"
	.string "a few words to our"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Operator Navi to be,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C3210_unk8
	ts_mugshot_show 0x32
	ts_msg_open
	.string "Congratulations!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hereby appoint\n"
	.string "MegaMan"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to be the official\n"
	.string "Expo Pavilion\n"
	.string "Operator Navi."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Make us proud!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87C3210_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Yes,sir!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87C3210_unk10
	ts_mugshot_show 0x32
	ts_msg_open
	.string "And now your first\n"
	.string "job."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan,as the\n"
	.string "Operator Navi,you\n"
	.string "will be a mascot for"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Expo,and appear\n"
	.string "on posters and in\n"
	.string "commercials!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C3210_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Commercials!?\n"
	.string "TV commercials!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan! You're\n"
	.string "gonna be famous!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87C3210_unk12
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... Uh,wow,I'm\n"
	.string "speechless and\n"
	.string "a bit nervous."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87C3210_unk13
	ts_mugshot_show 0x32
	ts_msg_open
	.string "With all the hard\n"
	.string "things you've gone\n"
	.string "through until now,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you have shown that\n"
	.string "you are the best\n"
	.string "Navi in Cyber City!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's only natural\n"
	.string "for you to become\n"
	.string "famous!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope you will use\n"
	.string "your skills to make\n"
	.string "the Expo a success!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87C3210_unk14
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I will!\n"
	.string "I want to help as\n"
	.string "much as I can!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C3210_unk15
	ts_mugshot_show 0x16
	ts_msg_open
	.string "This concludes\n"
	.string "the Selection Test."
	ts_key_wait 0x0
	ts_clear_msg
	.string "One last thing--we'd\n"
	.string "like to present Lan\n"
	.string "Hikari with this:"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer 0x0, 0x80
	ts_sound_play00 0x73, 0x0
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x7, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_o_w_var 0x0, 0x81
	ts_store_timer 0x0, 0x82
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87C3210_unk16
	ts_mugshot_show 0x16
	ts_msg_open
	.string "We hope that those\n"
	.string "who did not win will\n"
	.string "take their time to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "explore the Expo\n"
	.string "which will open\n"
	.string "in a short while."
	ts_key_wait 0x0
	ts_sound_fade_out 0x1F, 0xA
	ts_end

	