	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CB9BC::
	.word 0x1D800

	text_archive_start

	def_text_script CompText87CB9BC_unk0
	ts_mugshot_show 0x24
	ts_msg_open
	.string "This class needs to\n"
	.string "get started!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're gonna drill,\n"
	.string "drill,drill through\n"
	.string "any and everything!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'll learn some\n"
	.string "heavy rock drilling\n"
	.string "techniques from me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87CB9BC_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Rock drilling\n"
	.string "techniques,huh...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87CB9BC_unk2
	ts_mugshot_show 0x24
	ts_msg_open
	.string "Hey,hey,don't mess\n"
	.string "around! This isn't\n"
	.string "some dummy's class!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You don't think it's\n"
	.string "important,but I'm\n"
	.string "telling you it is!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can drill\n"
	.string "through any virus\n"
	.string "with my skills!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So let's get going!\n"
	.string "Go take a peak into\n"
	.string "that computer..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87CB9BC_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Uh,OK..."
	ts_key_wait 0x0
	ts_end

	