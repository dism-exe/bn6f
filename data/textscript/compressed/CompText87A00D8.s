	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A00D8::
	.word 0x66100

	text_archive_start

	def_text_script CompText87A00D8_unk0

	def_text_script CompText87A00D8_unk1

	def_text_script CompText87A00D8_unk2

	def_text_script CompText87A00D8_unk3

	def_text_script CompText87A00D8_unk4

	def_text_script CompText87A00D8_unk5
	ts_check_flag [
		flag: 0x85A,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x85A
	ts_msg_open
	ts_mugshot_show mugshot=0x46
	.string "Well done!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This SecurCam films\n"
	.string "the classroom 24\n"
	.string "hours a day!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Morning,noon,and\n"
	.string "night,it films\n"
	.string "everything!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Of course it also\n"
	.string "captures images of"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the crayfish in\n"
	.string "their tank!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "An amazing job!\n"
	.string "You were 1st place\n"
	.string "in round 1!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Congratulations!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "We did it Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x46
	.string "The road to becoming\n"
	.string "the Operator Navi\n"
	.string "has just begun!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The second test will\n"
	.string "be held another day!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll inform you via\n"
	.string "mail with details\n"
	.string "on the second test!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The second test will\n"
	.string "be even tougher,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "remember your goal\n"
	.string "and do your best!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Here is your\n"
	.string "qualifier's prize!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_start_give_folder [
		folder: 0x1,
		slot: 0x1,
	]
	ts_item_give [
		item: 0x70,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x70,
		buffer: 0x0,
	]
	.string "\" and\n"
	.string "\""
	ts_print_folder_name [
		entry: 0x1,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x46
	.string "Congratulations!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A00D8_unk6
	ts_msg_open
	ts_mugshot_show mugshot=0x46
	.string "How was the first\n"
	.string "test?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The second test will\n"
	.string "be held shortly."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll let you\n"
	.string "know the details\n"
	.string "via mail!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Remember your goal\n"
	.string "and do your best!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A00D8_unk7
	ts_check_flag [
		flag: 0x85A,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x85A
	ts_msg_open
	ts_mugshot_show mugshot=0x45
	.string "Well done!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This SecurCam films\n"
	.string "the classroom 24\n"
	.string "hours a day!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come morning or\n"
	.string "night it films\n"
	.string "everything!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Of course it also\n"
	.string "captures images of"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the crayfish in\n"
	.string "their tank!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "An amazing job!\n"
	.string "You were 1st place\n"
	.string "in round 1!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Congratulations!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "We did it Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "The road to becoming\n"
	.string "an Operator Navi has\n"
	.string "just begun!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The second test will\n"
	.string "be held another day!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll inform you via\n"
	.string "mail with details\n"
	.string "on the second test!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The second test will\n"
	.string "be even tougher,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "remember your goal\n"
	.string "and do your best!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Here is your\n"
	.string "qualifier's prize!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_start_give_folder [
		folder: 0x1,
		slot: 0x1,
	]
	ts_item_give [
		item: 0x70,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x70,
		buffer: 0x0,
	]
	.string "\" and\n"
	.string "\""
	ts_print_folder_name [
		entry: 0x1,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Congratulations!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A00D8_unk8
	ts_msg_open
	ts_mugshot_show mugshot=0x45
	.string "This is just the\n"
	.string "first step towards\n"
	.string "becoming the one"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and only Operator\n"
	.string "Navi!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The tests are only\n"
	.string "going to get\n"
	.string "harder..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Give it everything\n"
	.string "you've got and do\n"
	.string "your absolute best!"
	ts_key_wait any=0x0
	ts_end

	