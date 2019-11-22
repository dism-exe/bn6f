	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A4C68::
	.word 0x19C00

	text_archive_start

	def_text_script CompText87A4C68_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Ah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A4C68_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Just as we thought,\n"
	.string "Lan! It's infected\n"
	.string "with viruses!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87A4C68_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "OK,MegaMan!\n"
	.string "Our first Central\n"
	.string "Town virus busting!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87A4C68_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Right!\n"
	.string "You operate,I bust!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But,Lan,with all\n"
	.string "the packing and\n"
	.string "moving,you haven't"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "been virus busting\n"
	.string "lately. Sure you can\n"
	.string "still do it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87A4C68_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Are you kidding?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87A4C68_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Oh?\n"
	.string "OK,then,let's do it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87A4C68_unk6
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
		target: 7,
	]

	def_text_script CompText87A4C68_unk7
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Execute!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	