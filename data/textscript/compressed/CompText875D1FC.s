	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875D1FC::
	.word 0x4FA00

	text_archive_start

	def_text_script CompText875D1FC_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: CompText875D1FC_unk8_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_jump target=CompText875D1FC_unk9_id

	def_text_script CompText875D1FC_unk1
	ts_msg_open
	.string "\"The blue planet\n"
	.string " Earth. A crisis is\n"
	.string " upon this planet.\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "is written on this\n"
	.string "panel."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You suddenly feel\n"
	.string "a heavy weight..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875D1FC_unk2
	ts_msg_open
	.string "Humans make a lot of\n"
	.string "carbon dioxide every\n"
	.string "day through things"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "like cars and\n"
	.string "factories."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But plants breath in\n"
	.string "the carbon dioxide\n"
	.string "and release oxygen."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So the air of this\n"
	.string "planet is being\n"
	.string "recycled by plants."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875D1FC_unk3
	ts_msg_open
	.string "Every year,many\n"
	.string "trees are cut down,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "making the world's\n"
	.string "forests disappear\n"
	.string "one by one."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The oldest forests\n"
	.string "are sadly,starting\n"
	.string "to fade away."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875D1FC_unk4
	ts_msg_open
	.string "This panel clearly\n"
	.string "shows what would\n"
	.string "happen to our planet"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a few decades from\n"
	.string "now if we continue"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "to destroy the\n"
	.string "environment at\n"
	.string "the current pace."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875D1FC_unk5
	ts_msg_open
	.string "A big model of the\n"
	.string "Earth..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This globe clearly\n"
	.string "shows at a glance\n"
	.string "just how much"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "environmental\n"
	.string "destruction we have\n"
	.string "caused to the Earth."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This globe controls\n"
	.string "everything in this\n"
	.string "pavilion,and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you can jack in to\n"
	.string "it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875D1FC_unk6
	ts_msg_open
	.string "No entry.\n"
	.string "A tree branch is\n"
	.string "blocking the way!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875D1FC_unk7
	ts_msg_open
	.string "Our planet may\n"
	.string "become like this\n"
	.string "desert if we"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "continue to\n"
	.string "destroy it..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Someone has written\n"
	.string "a number with their\n"
	.string "finger in the sand."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"59485971\""
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875D1FC_unk8
	ts_check_flag [
		flag: 0xE64,
		jumpIfTrue: CompText875D1FC_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xE64
	ts_msg_open
	.string "Lan stamped his\n"
	.string "Stamp Rally Card!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x74
	ts_sound_enable_text_sfx
	ts_mugshot_show mugshot=0x0
	.string "Alright! I got the\n"
	.string "Green Pavilion\n"
	.string "stamp!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875D1FC_unk9
	ts_msg_open
	.string "A stamp for the\n"
	.string "Stamp Rally."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The mark on this\n"
	.string "stamp is the Green\n"
	.string "Town seal."
	ts_key_wait any=0x0
	ts_end

	