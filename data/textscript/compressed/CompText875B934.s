	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875B934::
	.word 0x49B00

	text_archive_start

	def_text_script CompText875B934_unk0
	ts_msg_open
	.string "The word,\"TRUTH\" is\n"
	.string "carved into this\n"
	.string "tablet."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can feel this\n"
	.string "courthouse's dignity\n"
	.string "through this word..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is a port for\n"
	.string "jacking in!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B934_unk1
	ts_msg_open
	.string "These are law books\n"
	.string "filled with all the\n"
	.string "laws of this land..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But who in the world\n"
	.string "could read books of\n"
	.string "this size!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B934_unk2
	ts_msg_open
	.string "This gate is\n"
	.string "outfitted with\n"
	.string "sensors."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It checks for\n"
	.string "dangerous items to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "stop them from being\n"
	.string "carried into the\n"
	.string "courtroom."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So it's like the\n"
	.string "law protector's\n"
	.string "protector."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B934_unk3
	ts_msg_open
	.string "The control panel\n"
	.string "for the door to the\n"
	.string "courtroom."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's up high so no\n"
	.string "one can play around\n"
	.string "with the controls."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B934_unk4
	ts_msg_open
	.string "The gray of the\n"
	.string "courthouse is lifted\n"
	.string "by the green plants."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B934_unk5
	ts_msg_open
	.string "A line of photos of\n"
	.string "all the past judges."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It looks like the\n"
	.string "first and second\n"
	.string "judges were"
	ts_key_wait 0x0
	ts_clear_msg
	.string "father and son,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it's rare for judges\n"
	.string "to be related."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B934_unk6
	ts_msg_open
	.string "The sweet fragrance\n"
	.string "of flowers fills the\n"
	.string "air..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "One whiff and it\n"
	.string "can calm anyone's\n"
	.string "nerves."
	ts_key_wait 0x0
	ts_check_flag 0x89, 0x1, 0x8, 0xFF
	ts_clear_msg
	.string "It looks like some-\n"
	.string "thing fell into the\n"
	.string "flower bed..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x73, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x73, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "2 MB!!!"
	ts_key_wait 0x0
	ts_flag_set 0x89, 0x1
	ts_end

	def_text_script CompText875B934_unk7
	ts_msg_open
	.string "These chairs are for\n"
	.string "observers who can't\n"
	.string "get inside..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There are numbers\n"
	.string "carved in here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe someone\n"
	.string "waiting for a\n"
	.string "verdict did it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"87341489\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875B934_unk8
	ts_end

	