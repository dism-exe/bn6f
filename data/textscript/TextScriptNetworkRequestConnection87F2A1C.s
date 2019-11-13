TextScriptNetworkRequestConnection87F2A1C::
	text_archive_start

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk1

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk2

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk3

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk4

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk5

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk6

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk7

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk8

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk9

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk10
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "The other player\n"
	.string "is registering now."
	ts_wait 0x1E, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk11
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_menu_quick
	ts_end

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk12
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "Request connection\n"
	.string "with \""
	ts_print_link_buffer 0x14
	.string "\"?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk13
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_menu_quick
	ts_wait 0x5, 0x0
	.string "Requested connection\n"
	.string "with \""
	ts_print_link_buffer 0x14
	.string "\"."
	ts_wait_hold 0x0, 0x0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk14
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "The other player\n"
	.string "is registering now."
	ts_wait 0x1E, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk15
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_menu_quick
	.string "Failed to connect to\n"
	.string "the other player..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk16
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_menu_quick
	.string "Connection request\n"
	.string "was cancelled."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk17
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_menu_quick
	.string "Connection request\n"
	.string "cancelled by friend."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk18

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk19
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_menu_quick
	.string "Failed to initialize\n"
	.string "Wireless Adapter."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please turn off the\n"
	.string "GBA and insert the\n"
	.string "Wireless Adapter."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk20
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "Enter your\n"
	.string "name!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk21
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "Enter your\n"
	.string "comment!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk22
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "\""
	ts_print_link_buffer 0x2
	.string "\"\n"
	.string "OK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk23
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "\""
	ts_print_link_buffer 0x3
	.string "\"\n"
	.string "OK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk24
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "Cancel entry and\n"
	.string "return to Menu?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk25
	ts_mugshot_show 0x37
	ts_msg_open_menu
	ts_store_global 0x4, 0x1
	.string "Go back to\n"
	.string "edit your name?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1C, 0xFF, 0xFF
	ts_clear_msg
	ts_position_text 0x33, 0x6C, 0x3
	ts_store_global 0x4, 0x2
	.string "Cancel entry and\n"
	.string "return to Menu?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk26
	ts_jump 24

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk27
	ts_jump 25

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk28
	ts_position_text 0x33, 0x6C, 0x3
	ts_jump 20

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk29

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk30
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_menu_quick
	.string "Begin transmitting?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No\n"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script TextScriptNetworkRequestConnection87F2A1C_unk31
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Your friend is using\n"
	.string "a different mode."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0
	.string "   "

	.balign 4, 0
