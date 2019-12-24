	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87558D8::
	.word 0x41400

	text_archive_start

	def_text_script CompText87558D8_unk0
	ts_msg_open
	.string "Lan's old house...\n"
	.string "It's filled with all\n"
	.string "sorts of memories,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but now,\n"
	.string "it lies empty..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87558D8_unk1
	ts_msg_open
	.string "The security system\n"
	.string "for Lan's old house,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "disguised as a\n"
	.string "doghouse."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is a port for\n"
	.string "jacking in!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87558D8_unk2
	ts_msg_open
	.string "It's Mayl's house."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Seeing it makes you\n"
	.string "remember all the\n"
	.string "good times you had."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87558D8_unk3
	ts_check_flag [
		flag: 0xC12,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	.string "A cute squirrel\n"
	.string "statue."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's a popular\n"
	.string "meeting place for\n"
	.string "the townspeople."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87558D8_unk4
	ts_msg_open
	.string "The chip shop,\n"
	.string "\"Higsby's\"..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but it's not open\n"
	.string "right now.\n"
	.string "Typical."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It seems the owner,\n"
	.string "Higsby,is off in\n"
	.string "Netopia... again."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87558D8_unk5
	ts_msg_open
	.string "You used to come to\n"
	.string "Dex's house a lot\n"
	.string "before the move."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Looks like nothing's\n"
	.string "changed."
	ts_key_wait any=0x0
	ts_check_flag [
		flag: 0x18C,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_clear_msg
	.string "There's something\n"
	.string "jammed in the door\n"
	.string "crack..."
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
	ts_flag_set flag=0x18C
	ts_end

	def_text_script CompText87558D8_unk6
	ts_msg_open
	.string "This gigantic\n"
	.string "building is\n"
	.string "Yai's house."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Although \"mansion\"\n"
	.string "is probably a better\n"
	.string "word for it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87558D8_unk7
	ts_msg_open
	.string "A tree sculpture in\n"
	.string "the shape of a bear,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "trimmed by an\n"
	.string "ingenious gardener."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's so well made\n"
	.string "that it almost looks\n"
	.string "like it's alive."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87558D8_unk8
	ts_msg_open
	.string "A cute squirrel\n"
	.string "statue."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's a popular\n"
	.string "meeting place for\n"
	.string "the townspeople."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can jack in to\n"
	.string "it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87558D8_unk9
	ts_end

	