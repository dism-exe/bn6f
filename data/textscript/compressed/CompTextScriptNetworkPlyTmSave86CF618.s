	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompTextScriptNetworkPlyTmSave86CF618::
	.word 0x14E00

	text_archive_start

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk0
	.string "PlyTm@"

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk1
	.string "Libry@"

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk2
	.string "Chips@"

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk3
	.string "Crdts@"

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk4
	.string "  "
	ts_clear_msg
	.string " さ:"
	ts_clear_msg
	.string "0さ@"

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk5
	.string "S/M/G@"

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk6
	ts_clear_msg
	.string " ボ[z]@"

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk7
	ts_clear_msg
	.string " 2@"

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk8
	.string " "
	ts_clear_msg
	.string " ボ@"

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk9

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk10
	ts_msg_open_menu_quick
	ts_text_speed delay=0x0
	ts_mugshot_show mugshot=0x37
	.string "Save your\n"
	.string "game?\n"
	ts_position_option_horizontal width=0x8
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
	ts_select 0x6, 0x0, 0xB, 0xFF, 0xFF
	ts_wait_hold unused=0x0

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk11
	ts_check_flag [
		flag: 0x1704,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompTextScriptNetworkPlyTmSave86CF618_unk12_id,
	]
	ts_text_speed delay=0x0
	ts_clear_msg
	.string "OK to erase\n"
	.string "old save data?\n"
	ts_position_option_horizontal width=0x8
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
	ts_select 0x6, 0x0, 0xC, 0xFF, 0xFF
	ts_wait_hold unused=0x0

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk12
	ts_call_save [
		jumpIfSuccessful: CompTextScriptNetworkPlyTmSave86CF618_unk13_id,
		jumpIfFailed: TS_CONTINUE,
		jumpUnused: CompTextScriptNetworkPlyTmSave86CF618_unk0_id,
	]
	ts_text_speed delay=0x0
	ts_clear_msg
	.string "The save\n"
	.string "failed..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
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
	ts_select 0x6, 0x0, 0xA, 0xFF, 0xFF
	ts_wait_hold unused=0x0

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk13
	ts_text_speed delay=0x0
	ts_clear_msg
	.string "OK! Your save\n"
	.string "is complete!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompTextScriptNetworkPlyTmSave86CF618_unk14

	