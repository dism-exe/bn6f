// 87DC12E
TextScript87DC12E::
	text_script_start TextScript87DC12E
	text_script_rel_pointers 0, 1

	text_script 0, scr_0
	ts_msg_open
	ts_store_timer 0x0, 0x80
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Alright!\n"
	.string "We beat the\n"
	.string "EvilSpirits!!"
	ts_key_wait 0x0
	ts_wait_o_w_var 0x0, 0x81
	ts_store_timer 0x0, 0x82
	ts_end

	text_script 1, scr_1
	ts_msg_open
	.string "The darkness is\n"
	.string "disappearing!!"
	ts_key_wait 0x0
	ts_end

	.balign 4, 0
