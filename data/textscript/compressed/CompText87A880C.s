	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A880C::
	.word 0x12B00

	text_archive_start

	def_text_script CompText87A880C_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The flames are gone!\n"
	.string "Thanks,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87A880C_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You should thank\n"
	.string "Mick's Navi."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87A880C_unk2
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "Hmph,whatever..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wasn't trying\n"
	.string "to help MegaMan out."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyway,go get\n"
	.string "BlastMan for me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "All of this is\n"
	.string "his fault!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87A880C_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "You got it!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87A880C_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's up to you,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87A880C_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roger!!"
	ts_key_wait any=0x0
	ts_end

	