	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D9F50::
	.word 0xD700

	text_archive_start

	def_text_script CompText87D9F50_unk0
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x1,
	]
	ts_mugshot_show [
		mugshot: 0x58,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x191,
	]
	.string "*roooooooar!!*"
	ts_wait [
		frames: 0x5A,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9F50_unk1
	ts_mugshot_show [
		mugshot: 0x59,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x193,
	]
	.string "*screeeeech!!*"
	ts_wait [
		frames: 0x46,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9F50_unk2
	ts_mugshot_show [
		mugshot: 0x5B,
	]
	ts_msg_open
	.string "Wahaha... Yes...\n"
	.string "This is what fills\n"
	.string "me with joy."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Looks like you can\n"
	.string "provide me with some\n"
	.string "fun after all."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	