	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86D0544::
	.word 0x10F00

	text_archive_start

	def_text_script CompText86D0544_unk0
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "You've got new\n"
	.string "mail."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0544_unk1
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Which mail would\n"
	.string "you like to read?"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0544_unk2
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "You have no new\n"
	.string "mail."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0544_unk3
	ts_clear_msg
	.string " さ$"

	def_text_script CompText86D0544_unk4

	def_text_script CompText86D0544_unk5

	def_text_script CompText86D0544_unk6

	def_text_script CompText86D0544_unk7

	def_text_script CompText86D0544_unk8

	def_text_script CompText86D0544_unk9

	def_text_script CompText86D0544_unk10
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "YOU'VE GOT NEW\n"
	.string "MAIL."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0544_unk11
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "WHICH MAIL WOULD\n"
	.string "YOU LIKE TO READ?"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0544_unk12
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "YOU HAVE NO NEW\n"
	.string "MAIL."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0544_unk13
	ts_clear_msg
	.string " さ$"

	def_text_script CompText86D0544_unk14

	def_text_script CompText86D0544_unk15

	def_text_script CompText86D0544_unk16

	def_text_script CompText86D0544_unk17

	def_text_script CompText86D0544_unk18

	def_text_script CompText86D0544_unk19

	