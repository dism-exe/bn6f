	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875C83C::
	.word 0x40800

	text_archive_start

	def_text_script CompText875C83C_unk0
	ts_check_chapter 0x46, 0x46, 0xC, 0xFF
	ts_check_chapter 0x41, 0x41, 0xA, 0xFF
	ts_jump 2

	def_text_script CompText875C83C_unk1
	ts_msg_open
	.string "This computer\n"
	.string "controls the weather\n"
	.string "in Cyber City."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C83C_unk2
	ts_msg_open
	.string "I'm Mr.Weather..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "and I am Sky Town's\n"
	.string "main system."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm in charge of all\n"
	.string "the weather in Cyber\n"
	.string "City."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C83C_unk3

	def_text_script CompText875C83C_unk4

	def_text_script CompText875C83C_unk5

	def_text_script CompText875C83C_unk6

	def_text_script CompText875C83C_unk7

	def_text_script CompText875C83C_unk8

	def_text_script CompText875C83C_unk9

	def_text_script CompText875C83C_unk10
	ts_check_flag 0x62, 0xA, 0xB, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "So this is the\n"
	.string "real Mr.Weather..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Welcome\n"
	.string "      to\n"
	.string "       Sky Town!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Wow! He spoke!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Now,here's a little\n"
	.string "something...\n"
	.string "Just. For. You!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0xF, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0xF, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	.string "You will now all go\n"
	.string "on the Net and take\n"
	.string "some tests!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Speak to our 4 judge\n"
	.string "Navis on the Net,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and you will be\n"
	.string "asked to bust some\n"
	.string "viruses!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When you beat one\n"
	.string "set of viruses,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you will get a\n"
	.string "\"WinCard\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Once you collect\n"
	.string "all 4 \"WinCards\",\n"
	.string "A through D,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "please take them to\n"
	.string "the Navi standing in"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the big Plaza\n"
	.string "in Sky Area2!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can ask the Navi\n"
	.string "where you jack in if\n"
	.string "you forget!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright then,\n"
	.string "GOOD LUCK!!"
	ts_key_wait 0x0
	ts_flag_set 0x62, 0xA
	ts_end

	def_text_script CompText875C83C_unk11
	ts_msg_open
	.string "If you don't hurry,\n"
	.string "the test will begin\n"
	.string "without you!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C83C_unk12
	ts_check_flag 0x2C, 0xA, 0xD, 0xFF
	ts_jump 12

	def_text_script CompText875C83C_unk13
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "What are you doing?\n"
	.string "If you don't beat\n"
	.string "ElementMan soon,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "this place is going\n"
	.string "to crash,heh."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Better get\n"
	.string "a move on!\n"
	.string "Gyahahahaha!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875C83C_unk14

	def_text_script CompText875C83C_unk15

	def_text_script CompText875C83C_unk16

	def_text_script CompText875C83C_unk17

	def_text_script CompText875C83C_unk18

	def_text_script CompText875C83C_unk19

	def_text_script CompText875C83C_unk20

	