	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875E690::
	.word 0x2D000

	text_archive_start

	def_text_script CompText875E690_unk0
	ts_check_chip [
		chip: 0x83,
		amount: 0x1,
		jumpIfEqual: CompText875E690_unk3_id,
		jumpIfGreater: CompText875E690_unk3_id,
		jumpIfLess: TS_CONTINUE,
	]
	ts_msg_open
	.string "PLEASE PRESENT\n"
	.string "BATTLECHIP\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x83,
		buffer: 0x0,
	]
	.string "\"..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875E690_unk1
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "CentralArea1 on it."
	ts_key_wait any=0x0
	ts_start_map map=0x0
	ts_end

	def_text_script CompText875E690_unk2
	ts_end

	def_text_script CompText875E690_unk3
	ts_msg_open
	.string "PLEASE PRESENT\n"
	.string "BATTLECHIP\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x83,
		buffer: 0x0,
	]
	.string "\"..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan showed:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x83,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BATTLECHIP\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x83,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "CONFIRMED..."
	ts_key_wait any=0x0
	ts_flag_clear flag=0x46D
	ts_end

	def_text_script CompText875E690_unk4
	ts_msg_open
	.string "\"Welcome\n"
	.string "       to the\n"
	.string "            NetCafe\""
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875E690_unk5
	ts_check_item07 [
		item: 0x60,
		amount: 0x1,
		jumpIfEqual: TS_CONTINUE,
		jumpIfGreater: TS_CONTINUE,
		jumpIfLess: CompText875E690_unk7_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText875E690_unk8_id,
		jumpIfElecMan: CompText875E690_unk11_id,
		jumpIfSlashMan: CompText875E690_unk11_id,
		jumpIfEraseMan: CompText875E690_unk11_id,
		jumpIfChargeMan: CompText875E690_unk11_id,
		jumpIfSpoutMan: CompText875E690_unk9_id,
		jumpIfTomahawkMan: CompText875E690_unk11_id,
		jumpIfTenguMan: CompText875E690_unk11_id,
		jumpIfGroundMan: CompText875E690_unk11_id,
		jumpIfDustMan: CompText875E690_unk11_id,
		jumpIfProtoMan: CompText875E690_unk11_id,
	]
	ts_msg_open
	.string "MegaMan used:\n"
	.string "\""
	ts_print_item [
		item: 0x60,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText875E690_unk10_id

	def_text_script CompText875E690_unk6
	ts_check_item07 [
		item: 0x44,
		amount: 0x1,
		jumpIfEqual: TS_CONTINUE,
		jumpIfGreater: TS_CONTINUE,
		jumpIfLess: CompText875E690_unk13_id,
	]
	ts_msg_open
	ts_print_current_navi_ow
	.string " used:\n"
	.string "\""
	ts_print_item [
		item: 0x44,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_flag_clear flag=0x74
	ts_end

	def_text_script CompText875E690_unk7
	ts_msg_open
	.string "A Security Cube that\n"
	.string "protects Cyber\n"
	.string "Academy..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It can't be unlocked\n"
	.string "without its P-Code!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875E690_unk8
	ts_msg_open
	.string "HeatMan used:\n"
	.string "\""
	ts_print_item [
		item: 0x60,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText875E690_unk10_id

	def_text_script CompText875E690_unk9
	ts_msg_open
	.string "SpoutMan used:\n"
	.string "\""
	ts_print_item [
		item: 0x60,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText875E690_unk10_id

	def_text_script CompText875E690_unk10
	ts_flag_clear flag=0x73
	ts_end

	def_text_script CompText875E690_unk11
	ts_end

	def_text_script CompText875E690_unk12
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

	def_text_script CompText875E690_unk13
	ts_msg_open
	.string "The door is sealed\n"
	.string "tight. You can't get\n"
	.string "through it!"
	ts_key_wait any=0x0
	ts_end

	