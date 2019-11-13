TextScriptNetworkEnterFolderName1::
	text_archive_start

	def_text_script TextScriptNetworkEnterFolderName1_unk0

	def_text_script TextScriptNetworkEnterFolderName1_unk1

	def_text_script TextScriptNetworkEnterFolderName1_unk2

	def_text_script TextScriptNetworkEnterFolderName1_unk3

	def_text_script TextScriptNetworkEnterFolderName1_unk4

	def_text_script TextScriptNetworkEnterFolderName1_unk5

	def_text_script TextScriptNetworkEnterFolderName1_unk6

	def_text_script TextScriptNetworkEnterFolderName1_unk7

	def_text_script TextScriptNetworkEnterFolderName1_unk8

	def_text_script TextScriptNetworkEnterFolderName1_unk9

	def_text_script TextScriptNetworkEnterFolderName1_unk10

	def_text_script TextScriptNetworkEnterFolderName1_unk11

	def_text_script TextScriptNetworkEnterFolderName1_unk12

	def_text_script TextScriptNetworkEnterFolderName1_unk13

	def_text_script TextScriptNetworkEnterFolderName1_unk14

	def_text_script TextScriptNetworkEnterFolderName1_unk15

	def_text_script TextScriptNetworkEnterFolderName1_unk16

	def_text_script TextScriptNetworkEnterFolderName1_unk17

	def_text_script TextScriptNetworkEnterFolderName1_unk18

	def_text_script TextScriptNetworkEnterFolderName1_unk19

	def_text_script TextScriptNetworkEnterFolderName1_unk20
	ts_check_navi_all 0xFF, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "Please enter\n"
	.string "folder name!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptNetworkEnterFolderName1_unk21

	def_text_script TextScriptNetworkEnterFolderName1_unk22
	ts_check_navi_all 0xFF, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "\""
	ts_print_link_buffer 0x2
	.string "\"\n"
	.string "Is that OK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkEnterFolderName1_unk23

	def_text_script TextScriptNetworkEnterFolderName1_unk24
	ts_check_navi_all 0xFF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open_menu
	.string "Quit entering name\n"
	.string "and return to menu?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkEnterFolderName1_unk25

	def_text_script TextScriptNetworkEnterFolderName1_unk26
	ts_jump 24

	def_text_script TextScriptNetworkEnterFolderName1_unk27

	def_text_script TextScriptNetworkEnterFolderName1_unk28
	ts_position_text 0x33, 0x6C, 0x3
	ts_jump 20

	def_text_script TextScriptNetworkEnterFolderName1_unk29

	def_text_script TextScriptNetworkEnterFolderName1_unk30
	ts_msg_open_menu
	.string "Please enter\n"
	.string "folder name."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptNetworkEnterFolderName1_unk31
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
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkEnterFolderName1_unk32
	ts_msg_open_menu
	.string "Quit entry and\n"
	.string "return to menu?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkEnterFolderName1_unk33

	def_text_script TextScriptNetworkEnterFolderName1_unk34

	def_text_script TextScriptNetworkEnterFolderName1_unk35

	def_text_script TextScriptNetworkEnterFolderName1_unk36

	def_text_script TextScriptNetworkEnterFolderName1_unk37

	.balign 4, 0
