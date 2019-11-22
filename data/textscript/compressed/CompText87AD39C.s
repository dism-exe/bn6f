	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AD39C::
	.word 0x2B800

	text_archive_start

	def_text_script CompText87AD39C_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... W-What's that?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A submarine?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87AD39C_unk1
	ts_mugshot_hide
	ts_msg_open
	.string "... I've spotted the\n"
	.string "enemy straight\n"
	.string "ahead,Capt'n."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Starting emergency\n"
	.string "ascent now.\n"
	.string "Awooga!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87AD39C_unk2
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Whoa!\n"
	.string "It's a Navi!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87AD39C_unk3
	ts_mugshot_show [
		mugshot: 0x52,
	]
	ts_msg_open
	.string "I am DiveMan.\n"
	.string "Awooga!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And I am Capt'n\n"
	.string "Blackbeard's Navi.\n"
	.string "Awooga!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87AD39C_unk4
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "So you're the one\n"
	.string "causing problems\n"
	.string "in this Comp!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,I'm here to\n"
	.string "make things right\n"
	.string "again!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87AD39C_unk5
	ts_mugshot_show [
		mugshot: 0x52,
	]
	ts_msg_open
	.string "Request denied!\n"
	.string "Awooga!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You don't have the\n"
	.string "proper clearance.\n"
	.string "Awooga!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87AD39C_unk6
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "DiveMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't let 'em ruin\n"
	.string "me show! Show 'em\n"
	.string "the ocean's fury!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87AD39C_unk7
	ts_mugshot_show [
		mugshot: 0x52,
	]
	ts_msg_open
	.string "Roger,Capt'n!\n"
	.string "Awooga!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87AD39C_unk8
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Here he comes,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87AD39C_unk9
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87AD39C_unk10
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Execute!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87AD39C_unk11
	ts_mugshot_show [
		mugshot: 0x52,
	]
	ts_msg_open
	.string "Target locked.\n"
	.string "Engaging the enemy.\n"
	.string "Awooga!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	