	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D1D40::
	.word 0x8C00

	text_archive_start

	def_text_script CompText87D1D40_unk0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x151,
	]
	.string "*beep!*"
	ts_wait [
		frames: 0x14,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D1D40_unk1
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0xD3,
	]
	.string "*click!*"
	ts_wait [
		frames: 0x2D,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D1D40_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Alright!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Jack out,MegaMan!\n"
	.string "Let's get going!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87D1D40_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Roger!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	