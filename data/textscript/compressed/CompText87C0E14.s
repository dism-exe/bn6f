	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C0E14::
	.word 0x40A00

	text_archive_start

	def_text_script CompText87C0E14_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "But it's kinda weird\n"
	.string "to have you as a\n"
	.string "teacher,Dingo!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87C0E14_unk1
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Ahem!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's Mr.Dingo from\n"
	.string "now on!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Joking,joking!\n"
	.string "I'm doing this to\n"
	.string "be a better person."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And the pay's pretty\n"
	.string "good,too!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87C0E14_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Oh? Wow,you're\n"
	.string "really working\n"
	.string "hard..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87C0E14_unk3
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Flattery will get\n"
	.string "you nowhere!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright,let's get\n"
	.string "this lesson started!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Look at it this way,\n"
	.string "work's a craft you\n"
	.string "gotta do carefully."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87C0E14_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK,then I'll pay\n"
	.string "extra attention,\n"
	.string "Mr.Dingo!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87C0E14_unk5
	ts_mugshot_show 0x21
	ts_msg_open
	.string "For my class,you'll\n"
	.string "be operating my\n"
	.string "Wood-based Navi,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "TomahawkMan. You'll\n"
	.string "learn to hear the\n"
	.string "voice of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mother Earth,and\n"
	.string "learn how to use the\n"
	.string "power of Wood."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87C0E14_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Can I really learn\n"
	.string "all that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "just by operating\n"
	.string "TomahawkMan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87C0E14_unk7
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Sure. That's because\n"
	.string "my class is based on"
	ts_key_wait 0x0
	ts_clear_msg
	.string "an old,sacred ritual\n"
	.string "we do in my\n"
	.string "hometown."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure the Earth's\n"
	.string "spirits would lend\n"
	.string "you their powers!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87C0E14_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "R-Ritual...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sounds kinda\n"
	.string "scary..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87C0E14_unk9
	ts_mugshot_show 0x21
	ts_msg_open
	.string "I'll be with you,\n"
	.string "so have a little\n"
	.string "more faith!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "TomahawkMan's\n"
	.string "waiting for us in\n"
	.string "that control panel."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87C0E14_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK!"
	ts_key_wait 0x0
	ts_end

	