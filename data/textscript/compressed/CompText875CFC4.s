	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875CFC4::
	.word 0x28400

	text_archive_start

	def_text_script CompText875CFC4_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0x4,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump [
		target: 5,
	]

	def_text_script CompText875CFC4_unk1
	ts_msg_open
	.string "The voice from this\n"
	.string "monitor babbles\n"
	.string "continuously about"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "the close\n"
	.string "relationship between\n"
	.string "man and water."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CFC4_unk2
	ts_msg_open
	.string "Water gushes forth\n"
	.string "from between the\n"
	.string "rocks..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Watching the water\n"
	.string "calms the heart."
	ts_key_wait [
		any: 0x0,
	]
	ts_check_flag [
		flag: 0x18B,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
	]
	ts_clear_msg
	.string "Something is shining\n"
	.string "in the middle of the\n"
	.string "water pool..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x73,
		amount: 0x1,
	]
	ts_player_animate_scene [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x73,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "2 MB!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x18B,
	]
	ts_end

	def_text_script CompText875CFC4_unk3
	ts_msg_open
	.string "It looks like this\n"
	.string "controls everything\n"
	.string "in this pavilion."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And of course,you\n"
	.string "can jack in."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CFC4_unk4
	ts_check_flag [
		flag: 0xE63,
		jumpIfTrue: 0x5,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0xE63,
	]
	ts_msg_open
	.string "Lan stamped his\n"
	.string "Stamp Rally Card!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_sound_play00 [
		track: 0x74,
	]
	ts_sound_enable_text_sfx
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Alright! I got the\n"
	.string "Seaside Pavilion\n"
	.string "stamp!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CFC4_unk5
	ts_msg_open
	.string "A stamp for the\n"
	.string "Stamp Rally."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The mark on this\n"
	.string "stamp is the Seaside\n"
	.string "Town seal."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CFC4_unk6
	ts_end

	