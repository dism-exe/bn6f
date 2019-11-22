	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879FDB4::
	.word 0x40600

	text_archive_start

	def_text_script CompText879FDB4_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan! Let's do this!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Leave it to me!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Execute!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x114A,
	]
	ts_end

	def_text_script CompText879FDB4_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,\n"
	.string "it's a Kettle\n"
	.string "virus! Let's go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "This one's mine!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Execute!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x114B,
	]
	ts_end

	def_text_script CompText879FDB4_unk2
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,\n"
	.string "it's a Kettle\n"
	.string "virus! Let's go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "MegaMan,don't lose\n"
	.string "this one!!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Execute!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x114C,
	]
	ts_end

	def_text_script CompText879FDB4_unk3
	ts_check_flag [
		flag: 0x114D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x4,
	]
	ts_check_flag [
		flag: 0x114E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x4,
	]
	ts_check_flag [
		flag: 0x114F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x4,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "It looks like I put\n"
	.string "out all of these\n"
	.string "Kettle viruses!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's go back to\n"
	.string "the requestor!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879FDB4_unk4
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Alright Lan!\n"
	.string "Let's go delete\n"
	.string "some viruses!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879FDB4_unk5
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "HOW ABOUT SOME\n"
	.string "FISH STICKS!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A TASTY TREAT FROM\n"
	.string "HEAD TO FEET!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879FDB4_unk6
	ts_check_item07 [
		item: 0x46,
		amount: 0x1,
		jumpIfEqual: 0x5,
		jumpIfGreater: 0x5,
		jumpIfLess: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "CYBER FISH STICKS!!\n"
	.string "HOW BOUT EM!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "ONLY 100 ZENNYS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Buy  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " Don't Buy"
	ts_select 0x6, 0x80, 0x7, 0xFF, 0xFF
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "COME BACK REAL\n"
	.string "SOON NOW,YA HEAR?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879FDB4_unk7
	ts_check_take_zenny [
		amount: 0x64,
		jumpIfAll: 0xFF,
		jumpIfNone: 0x8,
		jumpIfSome: 0x8,
	]
	ts_mugshot_hide
	ts_msg_open
	ts_print_current_navi
	.string " ate\n"
	.string "Cyber Fish Sticks."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Their juicy goodness\n"
	.string "is unparalleled..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "LOOKS LIKE YOU ARE\n"
	.string "ENJOYING THE FOOD!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'M SO HAPPY I\n"
	.string "COULD CRY!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TAKE THIS AS A\n"
	.string "SPECIAL GIFT!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x46,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x46,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "COME AGAIN PLEASE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879FDB4_unk8
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "YOU DON'T HAVE\n"
	.string "ENOUGH MONEY..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879FDB4_unk9

	def_text_script CompText879FDB4_unk10

	def_text_script CompText879FDB4_unk11

	def_text_script CompText879FDB4_unk12

	def_text_script CompText879FDB4_unk13

	def_text_script CompText879FDB4_unk14

	def_text_script CompText879FDB4_unk15

	def_text_script CompText879FDB4_unk16

	def_text_script CompText879FDB4_unk17

	def_text_script CompText879FDB4_unk18

	def_text_script CompText879FDB4_unk19

	def_text_script CompText879FDB4_unk20

	