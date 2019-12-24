TextScriptNetworkEnterFolderName0::
	text_archive_start

	def_text_script TextScriptNetworkEnterFolderName0_unk0

	def_text_script TextScriptNetworkEnterFolderName0_unk1

	def_text_script TextScriptNetworkEnterFolderName0_unk2

	def_text_script TextScriptNetworkEnterFolderName0_unk3

	def_text_script TextScriptNetworkEnterFolderName0_unk4

	def_text_script TextScriptNetworkEnterFolderName0_unk5

	def_text_script TextScriptNetworkEnterFolderName0_unk6

	def_text_script TextScriptNetworkEnterFolderName0_unk7

	def_text_script TextScriptNetworkEnterFolderName0_unk8

	def_text_script TextScriptNetworkEnterFolderName0_unk9

	def_text_script TextScriptNetworkEnterFolderName0_unk10

	def_text_script TextScriptNetworkEnterFolderName0_unk11

	def_text_script TextScriptNetworkEnterFolderName0_unk12

	def_text_script TextScriptNetworkEnterFolderName0_unk13

	def_text_script TextScriptNetworkEnterFolderName0_unk14

	def_text_script TextScriptNetworkEnterFolderName0_unk15

	def_text_script TextScriptNetworkEnterFolderName0_unk16

	def_text_script TextScriptNetworkEnterFolderName0_unk17

	def_text_script TextScriptNetworkEnterFolderName0_unk18

	def_text_script TextScriptNetworkEnterFolderName0_unk19

	def_text_script TextScriptNetworkEnterFolderName0_unk20
	ts_msg_open_menu
	.string "Please enter\n"
	.string "folder name."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptNetworkEnterFolderName0_unk21

	def_text_script TextScriptNetworkEnterFolderName0_unk22
	ts_msg_open_menu
	.string "\""
	ts_print_link_buffer buffer=0x2
	.string "\"\n"
	.string "OK?\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkEnterFolderName0_unk23

	def_text_script TextScriptNetworkEnterFolderName0_unk24
	ts_msg_open_menu
	.string "Quit entry and\n"
	.string "return to menu?\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptNetworkEnterFolderName0_unk25

	def_text_script TextScriptNetworkEnterFolderName0_unk26
	ts_jump target=24

	def_text_script TextScriptNetworkEnterFolderName0_unk27

	def_text_script TextScriptNetworkEnterFolderName0_unk28
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_jump target=20

	def_text_script TextScriptNetworkEnterFolderName0_unk29

	.balign 4, 0
