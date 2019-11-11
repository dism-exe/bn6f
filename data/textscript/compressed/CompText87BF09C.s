	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BF09C::
	.word 0x22000

	text_archive_start

	def_text_script CompText87BF09C_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm pretty sure Iris\n"
	.string "was around here\n"
	.string "somewhere..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe she went\n"
	.string "further in..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BF09C_unk1
	ts_mugshot_hide
	ts_msg_open
	.string "Who's there!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure I stopped\n"
	.string "the elevator!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87BF09C_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Who are you!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BF09C_unk3
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Now where have I\n"
	.string "seen your face\n"
	.string "before..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It doesn't matter.\n"
	.string "You're not going to\n"
	.string "ruin my plan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ha,ha!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BF09C_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Isn't that person\n"
	.string "from the Admin\n"
	.string "Building!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You think maybe he's\n"
	.string "the one causing this\n"
	.string "mess in Sky Town?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta find\n"
	.string "Iris quick...!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BF09C_unk5
	ts_mugshot_show 0xF
	ts_msg_open
	.string "An unexpected pest\n"
	.string "has turned up..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I don't finish my\n"
	.string "work before \"he\"\n"
	.string "gets here..."
	ts_key_wait 0x0
	ts_end

	