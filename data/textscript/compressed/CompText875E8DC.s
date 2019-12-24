	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875E8DC::
	.word 0x12A00

	text_archive_start

	def_text_script CompText875E8DC_unk0
	ts_check_item07 [
		item: 0x6,
		amount: 0x1,
		jumpIfEqual: 0xA,
		jumpIfGreater: 0xA,
		jumpIfLess: 0xFF,
	]
	ts_msg_open
	.string "YOU WILL NEED\n"
	.string "\""
	ts_print_item [
		item: 0x6,
		buffer: 0x0,
	]
	.string "\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TO OPEN THIS DOOR..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875E8DC_unk1
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "CentralArea2 on it."
	ts_key_wait any=0x0
	ts_start_map map=0x1
	ts_end

	def_text_script CompText875E8DC_unk2
	ts_end

	def_text_script CompText875E8DC_unk3
	ts_msg_open
	.string "The darkness won't\n"
	.string "budge,even with your\n"
	.string "strongest attacks."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe the\n"
	.string "EvilSpirits are\n"
	.string "related somehow..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875E8DC_unk4

	def_text_script CompText875E8DC_unk5

	def_text_script CompText875E8DC_unk6

	def_text_script CompText875E8DC_unk7

	def_text_script CompText875E8DC_unk8

	def_text_script CompText875E8DC_unk9

	def_text_script CompText875E8DC_unk10
	ts_msg_open
	.string "MegaMan used:\n"
	.string "\""
	ts_print_item [
		item: 0x6,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_flag_clear flag=0x483
	ts_end

	