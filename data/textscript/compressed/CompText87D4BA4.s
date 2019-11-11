	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D4BA4::
	.word 0x2C300

	text_archive_start

	def_text_script CompText87D4BA4_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "This is it,MegaMan.\n"
	.string "The last fight..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "By the way..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Cybeast escaped,\n"
	.string "but what about the\n"
	.string "Cybeast's power?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "The Cybeast's power\n"
	.string "is still in my\n"
	.string "memory,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...no,it's more\n"
	.string "like it's been\n"
	.string "carved into me..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Oh. After this\n"
	.string "battle,we'll ask\n"
	.string "Dad to erase it,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so hang on for just\n"
	.string "a little longer!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87D4BA4_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "OK!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Anyway,Lan..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87D4BA4_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87D4BA4_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Look over there."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D4BA4_unk4
	ts_check_game_version 0xFF, 0x5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It looks like we're\n"
	.string "connected to Falzar\n"
	.string "somehow."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87D4BA4_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It looks like we're\n"
	.string "connected to Gregar\n"
	.string "somehow."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87D4BA4_unk6
	ts_store_timer 0x0, 0x1
	ts_wait_o_w_var 0x0, 0x2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Iris and Colonel\n"
	.string "must be over there\n"
	.string "on that side!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D4BA4_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Aaaaah!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87D4BA4_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Looks like they've\n"
	.string "already started!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We should get going,\n"
	.string "too!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87D4BA4_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Yeah!!"
	ts_key_wait 0x0
	ts_end

	