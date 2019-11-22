	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875B064::
	.word 0x44500

	text_archive_start

	def_text_script CompText875B064_unk0
	ts_msg_open
	.string "Popcorn is sold\n"
	.string "here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "People like to eat\n"
	.string "it while watching\n"
	.string "the show."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Salt flavor,butter\n"
	.string "flavor,you name it,\n"
	.string "they have it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "All in all,there's\n"
	.string "30 flavors of\n"
	.string "popcorn for sale!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B064_unk1
	ts_msg_open
	.string "The benches are a\n"
	.string "little wet..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The water must have\n"
	.string "splashed all the way\n"
	.string "over here from the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "dolphin jumps."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B064_unk2
	ts_msg_open
	ts_msg_open
	.string "The benches are a\n"
	.string "little wet..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The water must have\n"
	.string "splashed all the way\n"
	.string "over here from the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "dolphin jumps."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B064_unk3
	ts_msg_open
	.string "People threw away a\n"
	.string "lot of popcorn bags\n"
	.string "into this trash can."
	ts_key_wait 0x0
	ts_check_flag 0x88, 0x1, 0x4, 0xFF
	ts_clear_msg
	.string "... What was that\n"
	.string "shiny object just\n"
	.string "now!?"
	ts_key_wait 0x0
	ts_mugshot_hide
	ts_check_flag 0x29, 0x17, 0x5, 0xFF
	ts_clear_msg
	ts_item_give 0x72, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x72, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "1 MB!!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_flag_set 0x88, 0x1
	ts_end

	def_text_script CompText875B064_unk4
	ts_end

	def_text_script CompText875B064_unk5
	ts_clear_msg
	ts_item_give 0x72, 0x1
	ts_player_animate_scene 0x18
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item 0x72, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "1 MB!!!"
	ts_key_wait 0x0
	ts_flag_set 0x88, 0x1
	ts_end

	def_text_script CompText875B064_unk6
	ts_msg_open
	.string "The wonderful smell\n"
	.string "of popcorn drifts\n"
	.string "through the air."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can jack in to\n"
	.string "the popcorn machine!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B064_unk7
	ts_check_chapter 0x30, 0xFF, 0x6, 0xFF
	ts_msg_open
	.string "Popcorn is sold\n"
	.string "here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "People like to eat\n"
	.string "it while watching\n"
	.string "the show."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Salt flavor,butter\n"
	.string "flavor,you name it,\n"
	.string "they have it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "All in all,there's\n"
	.string "30 flavors of\n"
	.string "popcorn for sale!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It looks like you\n"
	.string "can jack into the\n"
	.string "popcorn machine..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "but the port is\n"
	.string "broken right now."
	ts_key_wait 0x0
	ts_end

	