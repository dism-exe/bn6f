	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875F838::
	.word 0x35A00

	text_archive_start

	def_text_script CompText875F838_unk0
	ts_check_chapter [
		lower: 0x24,
		upper: 0x24,
		jumpIfInRange: CompText875F838_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_jump target=CompText875F838_unk6_id

	def_text_script CompText875F838_unk1
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "SeasideArea3 on it."
	ts_key_wait any=0x0
	ts_start_map map=0x5
	ts_end

	def_text_script CompText875F838_unk2
	ts_end

	def_text_script CompText875F838_unk3
	ts_msg_open
	.string "Cyberwater is\n"
	.string "leaking all over..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F838_unk4
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

	def_text_script CompText875F838_unk5
	ts_check_flag [
		flag: 0x634,
		jumpIfTrue: CompText875F838_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x634
	ts_end

	def_text_script CompText875F838_unk6
	ts_msg_open
	.string "The cyberspring\n"
	.string "is gushing with\n"
	.string "water..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "People say this\n"
	.string "water has the power\n"
	.string "to get rid of evil."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F838_unk7
	ts_check_item07 [
		item: 0x46,
		amount: 0x1,
		jumpIfEqual: CompText875F838_unk12_id,
		jumpIfGreater: CompText875F838_unk12_id,
		jumpIfLess: TS_CONTINUE,
	]
	ts_msg_open
	.string "YOU NEED THE\n"
	.string "\""
	ts_print_item [
		item: 0x46,
		buffer: 0x0,
	]
	.string "\" TO OPEN\n"
	.string "THIS DOOR."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F838_unk8
	ts_check_flag [
		flag: 0xC85,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText875F838_unk9_id,
	]
	ts_check_flag [
		flag: 0xC89,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText875F838_unk10_id,
	]
	ts_check_flag [
		flag: 0xC8D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText875F838_unk11_id,
	]
	ts_msg_open
	.string "Jack me out,Lan!\n"
	.string "It's finals time!\n"
	.string "Full speed ahead!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F838_unk9
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "We don't need to be\n"
	.string "at this station,yet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We should go to the\n"
	.string "Undernet2 station\n"
	.string "first!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F838_unk10
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "We don't need to be\n"
	.string "at this station,yet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We should go to the\n"
	.string "Sky Area2 station\n"
	.string "first!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F838_unk11
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "We don't need to be\n"
	.string "at this station,yet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We should go to the\n"
	.string "CentralArea3 station\n"
	.string "first!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F838_unk12
	ts_msg_open
	.string "YOU NEED THE\n"
	.string "\""
	ts_print_item [
		item: 0x46,
		buffer: 0x0,
	]
	.string "\" TO OPEN\n"
	.string "THIS DOOR."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_print_current_navi
	.string " used:\n"
	.string "\""
	ts_print_item [
		item: 0x46,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_flag_clear flag=0x78
	ts_end

	