	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879D158::
	.word 0xF0700

	text_archive_start

	def_text_script CompText879D158_unk0
	ts_check_flag [
		flag: 0x1152,
		jumpIfTrue: 0x5,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1156,
		jumpIfTrue: 0x4,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1154,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1153,
		jumpIfTrue: 0x2,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1151,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1151,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "...I'm the one who\n"
	.string "posted on the\n"
	.string "RequestBBS."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please don't think\n"
	.string "I'm suspicious"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "because I look like\n"
	.string "this... Please..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It is true that just\n"
	.string "a while back I was a\n"
	.string "gang member..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But now I've washed\n"
	.string "my hands of that\n"
	.string "lifestyle."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "From now on I want\n"
	.string "to be a good\n"
	.string "citizen..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So don't worry,my\n"
	.string "request is really\n"
	.string "normal..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...The truth is\n"
	.string "that I have a\n"
	.string "daughter..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Since I was in a\n"
	.string "gang,I haven't seen\n"
	.string "her in 10 years."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I have no idea\n"
	.string "where she even\n"
	.string "lives."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I do remember\n"
	.string "one thing about\n"
	.string "her..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Today is her\n"
	.string "birthday."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...She will be\n"
	.string "20 years old today."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I just want to\n"
	.string "tell her\n"
	.string "congratulations."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's why I want\n"
	.string "you to find her..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's my request.\n"
	.string "Can you help me?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "You've got a\n"
	.string "scary face,but..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "One look in your\n"
	.string "eyes tells me you're\n"
	.string "not an evil Navi."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Leave this to me!\n"
	.string "I'll find your\n"
	.string "daughter!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x43,
	]
	.string "Thank you..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A long time ago,\n"
	.string "I did get to\n"
	.string "talk to her."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "She said she was\n"
	.string "studying about"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "environmental issues\n"
	.string "at a university..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So she should be\n"
	.string "somewhere around\n"
	.string "Green Area..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you find her,\n"
	.string "tell her I am\n"
	.string "waiting here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879D158_unk1
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "I'd like you to find\n"
	.string "my daughter...\n"
	.string "That's my request..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A long time ago,\n"
	.string "I did get to\n"
	.string "talk to her."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "She said she was\n"
	.string "studying about"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "environmental issues\n"
	.string "at a university..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So she should be\n"
	.string "somewhere around\n"
	.string "Green Area..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you find her,\n"
	.string "tell her I am\n"
	.string "waiting here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879D158_unk2
	ts_flag_set [
		flag: 0x1154,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Thanks to you I\n"
	.string "met my daughter!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I never thought I\n"
	.string "could feel this\n"
	.string "happy! Thank you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But honestly,it\n"
	.string "didn't go as well\n"
	.string "as I thought..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I told you earlier\n"
	.string "I was in a gang..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I was just a member\n"
	.string "of that group..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But when I left,\n"
	.string "there was a big\n"
	.string "fight."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Even today,my old\n"
	.string "friends still come\n"
	.string "back to haunt me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And now,I just got\n"
	.string "an e-mail from\n"
	.string "these old \"friends\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They wrote:\n"
	.string "\"Let's finish this!\n"
	.string "With your daughter!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It looks like\n"
	.string "they've come this\n"
	.string "far to get to me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And I've worked so\n"
	.string "hard..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I even saw my\n"
	.string "daughter... I have\n"
	.string "nothing left to do."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's easy for me to\n"
	.string "see right and wrong\n"
	.string "now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If this is going to\n"
	.string "be a battleground,\n"
	.string "you should run..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sorry I can't\n"
	.string "reward you. All I\n"
	.string "can say is thanks."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879D158_unk3
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Even today,my old\n"
	.string "friends still come\n"
	.string "back to haunt me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It looks like\n"
	.string "they've come this\n"
	.string "far to get to me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And I've worked so\n"
	.string "hard..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I even saw my\n"
	.string "daughter... I have\n"
	.string "nothing left to do."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If this is going to\n"
	.string "be a battleground,\n"
	.string "you should run..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sorry I can't\n"
	.string "reward you. All I\n"
	.string "can say is thanks."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879D158_unk4
	ts_flag_set [
		flag: 0x1152,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "...You're still\n"
	.string "here?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You sure are a\n"
	.string "brave one..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh!? You defeated\n"
	.string "the guys that were\n"
	.string "after me?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can't believe it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Now I can live\n"
	.string "without having to\n"
	.string "run..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wow..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's like I've\n"
	.string "gotten a 2nd\n"
	.string "chance at life..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thank you!\n"
	.string "This is all thanks\n"
	.string "to you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Take this as a\n"
	.string "small token of my\n"
	.string "gratitude!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_item_give_chip [
		chip: 0xB,
		code: 0x11,
		amount: 0x1,
	]
	ts_mugshot_hide
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xB,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x11,
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
		mugshot: 0x43,
	]
	.string "It's great to have\n"
	.string "met you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll never forget\n"
	.string "this day!"
	ts_key_wait [
		any: 0x0,
	]
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
	ts_key_wait [
		any: 0x0,
	]
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText879D158_unk5
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Now I can live\n"
	.string "without having to\n"
	.string "run..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wow..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's like I've\n"
	.string "gotten a 2nd\n"
	.string "chance at life..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thank you!\n"
	.string "This is all thanks\n"
	.string "to you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879D158_unk6
	ts_check_flag [
		flag: 0x1156,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "...Dad..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "*Sniffle*..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879D158_unk7
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "...Dad,will you\n"
	.string "stay for good now?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please...\n"
	.string "It'd be great..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879D158_unk8

	def_text_script CompText879D158_unk9

	def_text_script CompText879D158_unk10
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "WELCOME TO THE\n"
	.string "SKY HP."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SKY TOWN IS A\n"
	.string "TECHNO-TOWN NESTLED\n"
	.string "IN THE SKY!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BLUE BLUE SKIES!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879D158_unk11

	def_text_script CompText879D158_unk12

	def_text_script CompText879D158_unk13

	def_text_script CompText879D158_unk14

	def_text_script CompText879D158_unk15

	def_text_script CompText879D158_unk16

	def_text_script CompText879D158_unk17

	def_text_script CompText879D158_unk18

	def_text_script CompText879D158_unk19

	def_text_script CompText879D158_unk20
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "HEY! WAIT A SEC!\n"
	.string "ALRIGHT?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IF IT'S ALRIGHT WITH\n"
	.string "YOU,WOULD YOU LIKE\n"
	.string "TO TRADE HP LINKS?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PUTTING UP A LINK\n"
	.string "WILL LET YOU EASILY\n"
	.string "GO BACK AND FORTH"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BETWEEN YOUR HP AND\n"
	.string "THE SKY HP!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WANT TO POST A LINK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x8,
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
	.string " Yes  "
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
	.string " No"
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "I SEE..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IF YOU EVER FEEL\n"
	.string "LIKE IT,COME BACK\n"
	.string "ANYTIME..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879D158_unk21
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "WELL THEN THAT'S\n"
	.string "DECIDED! GREAT!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PLEASE TAKE THIS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x6A,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x6A,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "I WILL POST YOUR\n"
	.string "LINK NOW."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WOOHOOHOOOOO!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_disable_text_sfx
	ts_sound_play00 [
		track: 0x74,
	]
	ts_sound_enable_text_sfx
	ts_flag_set [
		flag: 0x17F,
	]
	ts_clear_msg
	.string "THAT'S ALL FOR\n"
	.string "MY WORK HERE..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SEE YOU AROUND!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_disable_text_sfx
	ts_sound_play00 [
		track: 0x76,
	]
	ts_flag_set [
		flag: 0x1E6,
	]
	ts_end

	