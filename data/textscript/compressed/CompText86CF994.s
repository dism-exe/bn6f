	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86CF994::
	.word 0x1B100

	text_archive_start

	def_text_script CompText86CF994_unk0
	.string "Recovers\n"
	.string "50HP!$"

	def_text_script CompText86CF994_unk1
	.string "Recovers\n"
	.string "max HP!$"

	def_text_script CompText86CF994_unk2
	.string "No weak\n"
	.string "viruses for\n"
	.string "a while.$"

	def_text_script CompText86CF994_unk3
	.string "Remove trap\n"
	.string "on mystery\n"
	.string "data.$"

	def_text_script CompText86CF994_unk4
	.string "More likely\n"
	.string "to meet\n"
	.string "last enemy.$"

	def_text_script CompText86CF994_unk5
	.string "Unlocks\n"
	.string "mystery\n"
	.string "data.$"

	def_text_script CompText86CF994_unk6
	ts_msg_open_menu
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Let's not\n"
	.string "use it yet."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText86CF994_unk7
	ts_msg_open_menu
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "You want to\n"
	.string "use \""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"?\n"
	ts_position_option_from_center [
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
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script CompText86CF994_unk8
	ts_msg_open_menu
	ts_print_current_navi
	.string "\n"
	.string "recovers\n"
	.string "50HP!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText86CF994_unk9
	ts_msg_open_menu
	ts_print_current_navi
	.string "\n"
	.string "recovers\n"
	.string "max HP!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText86CF994_unk10
	ts_msg_open_menu
	.string "You used\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText86CF994_unk11
	ts_msg_open_menu
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"\n"
	.string "is in use."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText86CF994_unk12
	ts_msg_open_menu
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "There isn't\n"
	.string "any locked\n"
	.string "data!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText86CF994_unk13
	ts_msg_open_menu
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "No viruses\n"
	.string "around\n"
	.string "here yet!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText86CF994_unk14

	