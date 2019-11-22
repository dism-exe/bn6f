	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86D0460::
	.word 0x12800

	text_archive_start

	def_text_script CompText86D0460_unk0
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "Looks like\n"
	.string "you've got mail!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0460_unk1
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "Which mail do you\n"
	.string "want to read,Lan?"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0460_unk2
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "You haven't gotten\n"
	.string "any mail yet,Lan."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0460_unk3
	ts_clear_msg
	.string " さ@"

	def_text_script CompText86D0460_unk4

	def_text_script CompText86D0460_unk5

	def_text_script CompText86D0460_unk6

	def_text_script CompText86D0460_unk7

	def_text_script CompText86D0460_unk8

	def_text_script CompText86D0460_unk9

	def_text_script CompText86D0460_unk10
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "A NEW MAIL HAS\n"
	.string "ARRIVED."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0460_unk11
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "SELECT A MAIL\n"
	.string "TO READ."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0460_unk12
	ts_msg_open_menu_quick
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "THERE IS NO MAIL."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86D0460_unk13
	ts_clear_msg
	.string " さ@"

	def_text_script CompText86D0460_unk14

	def_text_script CompText86D0460_unk15

	def_text_script CompText86D0460_unk16

	def_text_script CompText86D0460_unk17

	def_text_script CompText86D0460_unk18

	def_text_script CompText86D0460_unk19

	