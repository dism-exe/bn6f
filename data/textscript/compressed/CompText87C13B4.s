	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C13B4::
	.word 0x24500

	text_archive_start

	def_text_script CompText87C13B4_unk0
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Ooh,good job...\n"
	.string "Looks like you're\n"
	.string "rarely missing now!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87C13B4_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Thanks,but it's\n"
	.string "really because of\n"
	.string "your class..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I used to be really\n"
	.string "bad at this. I've\n"
	.string "learned a lot!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87C13B4_unk2
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Glad to hear it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "TomahawkMan's going\n"
	.string "to be one of your\n"
	.string "LinkNavis,alright!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87C13B4_unk3
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer 0x0, 0x1
	ts_sound_play00 0x8F, 0x0
	.string "TomahawkMan became\n"
	.string "Lan's LinkNavi!"
	ts_wait_o_w_var 0x0, 0x2
	ts_store_timer 0x0, 0x3
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87C13B4_unk4
	ts_mugshot_show 0x21
	ts_msg_open
	.string "You can now use\n"
	.string "his powers with\n"
	.string "the TomahawkCross!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Thanks,Dingo!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm gonna master all\n"
	.string "the things you two\n"
	.string "have taught me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87C13B4_unk5
	ts_mugshot_show 0x21
	ts_msg_open
	.string "Good!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you want to\n"
	.string "operate TomahawkMan,\n"
	.string "just come back here!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87C13B4_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK!\n"
	.string "See you later!"
	ts_key_wait 0x0
	ts_end

	