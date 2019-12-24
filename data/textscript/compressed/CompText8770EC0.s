	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8770EC0::
	.word 0x54300

	text_archive_start

	def_text_script CompText8770EC0_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan let's hurry to\n"
	.string "the Principal's\n"
	.string "Office!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770EC0_unk1

	def_text_script CompText8770EC0_unk2

	def_text_script CompText8770EC0_unk3

	def_text_script CompText8770EC0_unk4

	def_text_script CompText8770EC0_unk5

	def_text_script CompText8770EC0_unk6

	def_text_script CompText8770EC0_unk7

	def_text_script CompText8770EC0_unk8

	def_text_script CompText8770EC0_unk9

	def_text_script CompText8770EC0_unk10
	ts_check_flag [
		flag: 0x1145,
		jumpIfTrue: CompText8770EC0_unk13_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x1218,
		jumpIfTrue: CompText8770EC0_unk12_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x1144,
		jumpIfTrue: CompText8770EC0_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x1144
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "AHHH! I'm so busy!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Busy,busy,busy!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahh,you came to\n"
	.string "answer my request!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,to be honest,\n"
	.string "it's a somewhat\n"
	.string "embarrassing job..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Even though I am\n"
	.string "working as a\n"
	.string "teacher..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I still like to\n"
	.string "collect action\n"
	.string "figures."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is so\n"
	.string "embarrassing..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is a new\n"
	.string "figure coming out,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and today the stores\n"
	.string "are starting to take\n"
	.string "reservations."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm busy with work,\n"
	.string "so I don't have\n"
	.string "time to go myself."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't even have\n"
	.string "time to sleep!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So I need someone\n"
	.string "to go and reserve\n"
	.string "the figure for me."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You have to leave\n"
	.string "a deposit,so take\n"
	.string "this money with you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny [
		amount: 0xBB8,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: TS_CONTINUE,
		jumpIfSome: TS_CONTINUE,
	]
	.string "Lan got:\n"
	.string "3000 Zennys!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x10
	.string "You should go to\n"
	.string "the StfToySpComp."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can only enter\n"
	.string "that computer from\n"
	.string "SeasideArea."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thanks for this\n"
	.string "favor!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Back to work for\n"
	.string "me!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770EC0_unk11
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Reserve the figure\n"
	.string "at the StfToySpComp."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can only enter\n"
	.string "that computer from\n"
	.string "SeasideArea."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thanks for this\n"
	.string "favor!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Back to work for\n"
	.string "me!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770EC0_unk12
	ts_flag_set flag=0x1145
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Did you reserve it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_take [
		item: 0x43,
		amount: 0x1,
	]
	.string "Lan gave:\n"
	.string "\""
	ts_print_item [
		item: 0x43,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x10
	.string "YES!!!\n"
	.string "THANK YOU!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Here's a reward\n"
	.string "for your trouble!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x38,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x38,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x10
	.string "Now I have some\n"
	.string "great motivation\n"
	.string "for work!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I'm still busy!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " Points!"
	ts_key_wait any=0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText8770EC0_unk13
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Now I have some\n"
	.string "great motivation\n"
	.string "for work!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I'm still busy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770EC0_unk14

	def_text_script CompText8770EC0_unk15

	def_text_script CompText8770EC0_unk16

	def_text_script CompText8770EC0_unk17

	def_text_script CompText8770EC0_unk18

	def_text_script CompText8770EC0_unk19

	def_text_script CompText8770EC0_unk20

	def_text_script CompText8770EC0_unk21

	def_text_script CompText8770EC0_unk22

	def_text_script CompText8770EC0_unk23

	