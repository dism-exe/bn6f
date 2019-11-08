	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8797E94::
	.word 0x5A100

	text_archive_start

	def_text_script CompText8797E94_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "That Mr.Prog looks\n"
	.string "like he's in\n"
	.string "trouble."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go talk to\n"
	.string "him."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797E94_unk1

	def_text_script CompText8797E94_unk2

	def_text_script CompText8797E94_unk3

	def_text_script CompText8797E94_unk4

	def_text_script CompText8797E94_unk5

	def_text_script CompText8797E94_unk6

	def_text_script CompText8797E94_unk7

	def_text_script CompText8797E94_unk8

	def_text_script CompText8797E94_unk9

	def_text_script CompText8797E94_unk10
	ts_check_flag 0x39, 0x11, 0xE, 0xFF
	ts_check_flag 0x37, 0x11, 0xB, 0xFF
	ts_flag_set 0x37, 0x11
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Ahhhh...\n"
	.string "Listen to this..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I just got my hands\n"
	.string "on something really\n"
	.string "nice!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wanna see it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Arrgghhh!\n"
	.string "Borrrriinnnggg!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797E94_unk11
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Hey!\n"
	.string "Hey!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I just got ahold\n"
	.string "of something\n"
	.string "great!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wanna see it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "What!?\n"
	.string "You should see this\n"
	.string "thing...really..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797E94_unk12
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Wanna see it!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hehehe...\n"
	.string "Don't be too\n"
	.string "surprised..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Voila!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x38, 0x11
	ts_end

	def_text_script CompText8797E94_unk13
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Hehehe!\n"
	.string "How was it!?\n"
	.string "Scared ya,huh!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh?\n"
	.string "You aren't mad are\n"
	.string "you?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It was just a joke!\n"
	.string "Serious... It was\n"
	.string "just a joke..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "C'mon on now...\n"
	.string "No need to get\n"
	.string "violent..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M SORRY!!\n"
	.string "HERE TAKE THIS OK!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_navi_cust_program 0x94, 0x1, 0x5
	ts_player_animate_scene 0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x2, 0x50
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "I'm sorry..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797E94_unk14
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I'm sorry...\n"
	.string "I won't spring\n"
	.string "viruses anymore!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797E94_unk15

	def_text_script CompText8797E94_unk16

	def_text_script CompText8797E94_unk17

	def_text_script CompText8797E94_unk18

	def_text_script CompText8797E94_unk19

	def_text_script CompText8797E94_unk20
	ts_check_flag 0xF5, 0x11, 0x17, 0xFF
	ts_check_flag 0xF8, 0x11, 0x16, 0xFF
	ts_check_flag 0xF2, 0x11, 0x15, 0xFF
	ts_flag_set 0xF2, 0x11
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HELLO! THIS IS\n"
	.string "THE AQUARIUM COMP!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...YES! YES!\n"
	.string "I'VE HEARD ABOUT\n"
	.string "THE UPDATE!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "MegaMan gave:\n"
	.string "\"UpdtData\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "COMPLETED!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THIS UPDATE WILL\n"
	.string "AFFECT MY\n"
	.string "PROCESSING SPEED..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT SEEMS IT WILL\n"
	.string "RISE RAPIDLY!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I CAN'T WAIT!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797E94_unk21
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS UPDATE WILL\n"
	.string "AFFECT MY\n"
	.string "PROCESSING SPEED..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT SEEMS IT WILL\n"
	.string "RISE RAPIDLY!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I CAN'T WAIT!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797E94_unk22
	ts_mugshot_show 0x3C
	ts_mugshot_palette 0x6
	ts_msg_open
	.string "HOTHOTHOT!!!\n"
	.string "HEEEELLLLPPPP!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Wait!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll update your\n"
	.string "data to the latest\n"
	.string "version!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "MegaMan updated\n"
	.string "the UpdtData.\n"
	ts_flag_set 0xF5, 0x11
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797E94_unk23
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THA...\n"
	.string "THANK YOU..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I WAS ALMOST BURNT\n"
	.string "TO A CRISP!!"
	ts_key_wait 0x0
	ts_end

	