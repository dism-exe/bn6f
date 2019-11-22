	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876E144::
	.word 0x6F500

	text_archive_start

	def_text_script CompText876E144_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,this isn't\n"
	.string "Class 6-1!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876E144_unk1

	def_text_script CompText876E144_unk2

	def_text_script CompText876E144_unk3

	def_text_script CompText876E144_unk4

	def_text_script CompText876E144_unk5

	def_text_script CompText876E144_unk6

	def_text_script CompText876E144_unk7

	def_text_script CompText876E144_unk8

	def_text_script CompText876E144_unk9

	def_text_script CompText876E144_unk10
	ts_check_flag [
		flag: 0x11FA,
		jumpIfTrue: 0xD,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11FD,
		jumpIfTrue: 0xC,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11F9,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x11F9,
	]
	ts_mugshot_show [
		mugshot: 0x8,
	]
	ts_msg_open
	.string "You took my\n"
	.string "request?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm the requestor.\n"
	.string "Thank you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I just started a\n"
	.string "new diet recently..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'd like to lose\n"
	.string "about 20 pounds."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I saved up my\n"
	.string "allowance and bought\n"
	.string "diet supplies."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I got a supplement\n"
	.string "called \"Lean Mean\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But it didn't make\n"
	.string "me lean at all!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I actually gained\n"
	.string "5 pounds!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It was a fraud!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It crushed my\n"
	.string "fragile little\n"
	.string "heart!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I tried to\n"
	.string "go and get my\n"
	.string "money back!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But they wouldn't\n"
	.string "even listen to me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It was awful!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I want you to\n"
	.string "go and get my\n"
	.string "money back!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The person selling\n"
	.string "the diet supplies"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "is probably in\n"
	.string "SeasideArea..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I really want my\n"
	.string "allowance money\n"
	.string "back! Please help!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876E144_unk11
	ts_mugshot_show [
		mugshot: 0x8,
	]
	ts_msg_open
	.string "Want to know the\n"
	.string "details of the\n"
	.string "request? Here goes:"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I just started a\n"
	.string "new diet recently..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I saved up my\n"
	.string "allowance and bought\n"
	.string "diet supplies."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I got a supplement\n"
	.string "called \"Lean Mean\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But it didn't make\n"
	.string "me lean at all!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It was a fraud!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The person selling\n"
	.string "the diet supplies"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "is probably in\n"
	.string "SeasideArea..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I really want my\n"
	.string "allowance money\n"
	.string "back! Please help!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876E144_unk12
	ts_flag_set [
		flag: 0x11FA,
	]
	ts_mugshot_show [
		mugshot: 0x8,
	]
	ts_msg_open
	.string "Ahhh! You're back!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I just checked my\n"
	.string "bank account and the\n"
	.string "money is back!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thank you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll give you your\n"
	.string "reward in one\n"
	.string "payment."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_give_zenny [
		amount: 0x1388,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_mugshot_hide
	ts_player_animate_object [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "5000 Zennys!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x8,
	]
	.string "I'm going to use\n"
	.string "my allowance to\n"
	.string "buy diet supplies!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "...You mind if I\n"
	.string "say something?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x8,
	]
	.string "What is it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "You say you're\n"
	.string "fat...\n"
	.string "But I think..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's all due to\n"
	.string "those fries you're\n"
	.string "holding!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x8,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "Hmmm!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Never thought about\n"
	.string "that..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Points\n"
	ts_call_request_points_buffer
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " Points!"
	ts_key_wait [
		any: 0x0,
	]
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText876E144_unk13
	ts_mugshot_show [
		mugshot: 0x8,
	]
	ts_msg_open
	.string "I'm going to use\n"
	.string "my allowance to\n"
	.string "buy diet supplies!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "...You mind if I\n"
	.string "say something?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x8,
	]
	.string "What is it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "You say you're\n"
	.string "fat...\n"
	.string "But I think..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's all due to\n"
	.string "those fries you're\n"
	.string "holding!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876E144_unk14

	def_text_script CompText876E144_unk15

	def_text_script CompText876E144_unk16

	def_text_script CompText876E144_unk17

	def_text_script CompText876E144_unk18

	def_text_script CompText876E144_unk19

	