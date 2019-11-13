TextScript87E1718::
	text_archive_start

	def_text_script TextScript87E1718_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Aah!!"
	ts_wait 0x32, 0x0
	ts_end

	def_text_script TextScript87E1718_unk1
	ts_msg_open
	ts_mugshot_show 0x37
	.string "... Oof."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87E1718_unk2
	ts_msg_open
	.string "The Rainbow Power\n"
	.string "washed the typhoon\n"
	.string "away."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87E1718_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The cloud has\n"
	.string "disappeared! The\n"
	.string "road's clear!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We can go forward\n"
	.string "now!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87E1718_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... The rain's\n"
	.string "stopped!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87E1718_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The Rainbow Data\n"
	.string "is complete!\n"
	.string "While on a cloud,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "press the A Button\n"
	.string "to shoot out some\n"
	.string "Rainbow Power!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Use that Power to\n"
	.string "make a ring around\n"
	.string "the typhoon!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript87E1718_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Uwaaaaah!!"
	ts_key_wait 0x0
	.string "$ "

	.balign 4, 0
