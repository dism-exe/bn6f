	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CC4FC::
	.word 0x11400

	text_archive_start

	def_text_script CompText87CC4FC_unk0
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choooo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm ChargeMan!\n"
	.string "Here's to working\n"
	.string "together."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87CC4FC_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah! It's good to\n"
	.string "work with you,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87CC4FC_unk2
	ts_mugshot_show mugshot=0x26
	ts_msg_open
	.string "Time to get the ol'\n"
	.string "engine warmed up."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Our first stop is\n"
	.string "the cyberstation in\n"
	.string "Undernet2."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CC4FC_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Undernet2,huh?\n"
	.string "OK,let's head over\n"
	.string "there!"
	ts_key_wait any=0x0
	ts_end

	