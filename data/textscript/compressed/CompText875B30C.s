	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875B30C::
	.word 0x27000

	text_archive_start

	def_text_script CompText875B30C_unk0
	ts_msg_open
	.string "This main computer\n"
	.string "controls everything\n"
	.string "in the Aquarium."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cages and tanks can\n"
	.string "be locked and\n"
	.string "unlocked with this."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can jack in to\n"
	.string "it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875B30C_unk1
	ts_msg_open
	.string "It looks like this\n"
	.string "computer controls\n"
	.string "the water pipes..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can jack in."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875B30C_unk2
	ts_msg_open
	.string "This ladder leads\n"
	.string "down into the sewer\n"
	.string "water..."
	ts_key_wait any=0x0
	ts_check_flag [
		flag: 0x185,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
	]
	ts_clear_msg
	.string "There's something\n"
	.string "floating on the\n"
	.string "water..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x70,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x70,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_flag_set flag=0x185
	ts_end

	def_text_script CompText875B30C_unk3
	ts_msg_open
	.string "This main computer\n"
	.string "controls everything\n"
	.string "in the Aquarium."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cages and tanks can\n"
	.string "be unlocked and\n"
	.string "locked with this."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can jack in to\n"
	.string "it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875B30C_unk4
	ts_msg_open
	.string "The ventilation\n"
	.string "fan... There's some\n"
	.string "dust on it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875B30C_unk5
	ts_msg_open
	.string "It's a control box.\n"
	.string "But what does it\n"
	.string "control...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875B30C_unk6
	ts_end

	