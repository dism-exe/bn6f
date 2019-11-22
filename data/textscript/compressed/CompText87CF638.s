	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CF638::
	.word 0x35C00

	text_archive_start

	def_text_script CompText87CF638_unk0
	ts_msg_open
	.string "That night..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: 0x1,
		jumpIfCybeastFalzar: 0x2,
	]

	def_text_script CompText87CF638_unk1
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x193,
	]
	.string "*screeeeeeech!!*"
	ts_wait [
		frames: 0x46,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87CF638_unk2
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x191,
	]
	.string "*rooooooooar!!*"
	ts_wait [
		frames: 0x5A,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87CF638_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Did you hear some-\n"
	.string "thing? It sounded\n"
	.string "like a large animal."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Maybe it was the\n"
	.string "other Cybeast..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87CF638_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Nngh...?\n"
	.string "Animal...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What...mumbling\n"
	.string "about...? This's the\n"
	.string "real world..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're hearing...in\n"
	.string "your sleep... Nngh...\n"
	.string "Mmm... zzzzzz..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87CF638_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Maybe my ears\n"
	.string "are playing tricks\n"
	.string "on me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87CF638_unk6
	ts_mugshot_hide
	ts_msg_open
	.string "The next day,after\n"
	.string "school..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CF638_unk7
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ah! School's finally\n"
	.string "over!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87CF638_unk8
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Let's go invite Mick\n"
	.string "and the others to\n"
	.string "the Expo!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And then,after we\n"
	.string "get home,I'll go\n"
	.string "invite everyone from"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "ACDC Town through\n"
	.string "the Net!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And if Chaud's\n"
	.string "around,I'll invite\n"
	.string "him,too!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Do you think he\n"
	.string "went back to\n"
	.string "DenCity?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87CF638_unk9
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Yeah,I think so.\n"
	.string "Sounds good!\n"
	.string "You take care of"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "that,and I'll invite\n"
	.string "Mick and the others\n"
	.string "in Central Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	