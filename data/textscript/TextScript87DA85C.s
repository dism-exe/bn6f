TextScript87DA85C::
	text_archive_start

	def_text_script TextScript87DA85C_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "TERRIBLE,TERRIBLE!\n"
	.string "THIS IS UNHEARD OF!\n"
	.string "RECORD-BREAKING!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script TextScript87DA85C_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Calm down!\n"
	.string "What in the world\n"
	.string "happened?"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87DA85C_unk2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE FIRE IS ALREADY\n"
	.string "THIS INTENSE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MY FRIENDS ARE ALL\n"
	.string "GOING TO BE BURNED\n"
	.string "UP AT THIS RATE!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87DA85C_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script TextScript87DA85C_unk4
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "A RED NAVI THAT\n"
	.string "CAME IN JUST NOW\n"
	.string "CAUSED ALL THIS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M RESISTANT TO\n"
	.string "HEAT,SO I'M OK,\n"
	.string "BUT..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "AH,IF THIS KEEPS UP,\n"
	.string "THIS COMP WILL MELT\n"
	.string "DOWN FROM THE HEAT!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M BEGGING YOU!\n"
	.string "SAVE MY FRIENDS,AND\n"
	.string "GET THEM OUT,PLEASE!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script TextScript87DA85C_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Gotcha!\n"
	.string "I'll give it a shot!"
	ts_key_wait 0x0
	ts_clear_msg

	def_text_script TextScript87DA85C_unk6
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WOW! YOU'RE REALLY\n"
	.string "BRAVE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... WELL,YOU'LL NEED\n"
	.string "THIS THEN!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87DA85C_unk7
	ts_msg_open
	ts_store_timer 0x0, 0x4
	ts_sound_play00 0x73, 0x0
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item 0x0, 0x50
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_o_w_var 0x0, 0x80
	ts_store_timer 0x0, 0x5
	ts_end

	def_text_script TextScript87DA85C_unk8
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "JUST BE CAREFUL\n"
	.string "ABOUT ONE THING!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ONCE IN A WHILE,THE\n"
	.string "RED NAVI SHOOTS OUT\n"
	.string "A WAVE OF FLAMES."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... AAAAH!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "SPEAKING OF FLAME\n"
	.string "WAVES,HERE COMES\n"
	.string "ONE NOW!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT'S BEST NOT TO\n"
	.string "MOVE WHEN IT\n"
	.string "HAPPENS."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87DA85C_unk9
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "BEFORE A WAVE,LITTLE\n"
	.string "EMBERS WILL SHOW\n"
	.string "WHERE THE FLAMES"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WILL COME FROM.\n"
	.string "STAND BEHIND A\n"
	.string "CUBE,LIKE WE DID"
	ts_key_wait 0x0
	ts_clear_msg
	.string "JUST NOW,AND IT WILL\n"
	.string "BLOCK THE WAVE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF THERE'S SOMETHING\n"
	.string "YOU DON'T\n"
	.string "UNDERSTAND,ASK AWAY!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NOW PLEASE GO SAVE\n"
	.string "MY FRIENDS!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87DA85C_unk10

	def_text_script TextScript87DA85C_unk11

	def_text_script TextScript87DA85C_unk12

	def_text_script TextScript87DA85C_unk13

	def_text_script TextScript87DA85C_unk14

	def_text_script TextScript87DA85C_unk15

	def_text_script TextScript87DA85C_unk16

	def_text_script TextScript87DA85C_unk17
	.string "   "

	.balign 4, 0
