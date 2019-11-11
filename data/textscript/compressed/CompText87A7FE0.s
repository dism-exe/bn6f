	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A7FE0::
	.word 0x1CE00

	text_archive_start

	def_text_script CompText87A7FE0_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It's really hot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's dangerous here\n"
	.string "with the raging heat\n"
	.string "fanning the flames."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87A7FE0_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta find\n"
	.string "and beat BlastMan,\n"
	.string "ASAP."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87A7FE0_unk2
	ts_mugshot_show 0x51
	ts_msg_open
	.string "Looks like a lost\n"
	.string "little critter has\n"
	.string "wandered in..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Better get out fast\n"
	.string "before you become a\n"
	.string "crispy critter!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87A7FE0_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Just you wait,\n"
	.string "BlastMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're gonna put\n"
	.string "out your fire!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go for it,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87A7FE0_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "OK!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87A7FE0_unk5
	ts_mugshot_show 0x51
	ts_msg_open
	.string "There won't be any-\n"
	.string "thing left after I\n"
	.string "reduce you to ashes!"
	ts_key_wait 0x0
	ts_end

	