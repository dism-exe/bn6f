	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CF9B8::
	.word 0x26B00

	text_archive_start

	def_text_script CompText87CF9B8_unk0
	ts_msg_open
	.string "The morning of the\n"
	.string "Preview Gala..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CF9B8_unk1
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x1B7,
	]
	.string "*tiptoe,tiptoe...*"
	ts_wait [
		frames: 0x68,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CF9B8_unk2
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Hehehehe..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CF9B8_unk3
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Alright,all\n"
	.string "together..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87CF9B8_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "WAAAAAAKE UP!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87CF9B8_unk5
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Whaaaaaaaaai!!\n"
	.string "Whowhatwhenwhere!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CF9B8_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "D-Dex,Mayl...\n"
	.string "Yai!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87CF9B8_unk7
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "You sleep like a\n"
	.string "rock,Lan. So we came\n"
	.string "by to bust your z's!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87CF9B8_unk8
	ts_mugshot_show [
		mugshot: 0x1,
	]
	ts_msg_open
	.string "Good morning,Lan!\n"
	.string "Did we scare you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87CF9B8_unk9
	ts_mugshot_show [
		mugshot: 0x3,
	]
	ts_msg_open
	.string "Hmph. Well,get up\n"
	.string "already,sleepyhead!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We'll be waiting at\n"
	.string "the park so hurry\n"
	.string "over there ASAP!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CF9B8_unk10
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Aah... They totally\n"
	.string "scared me. I'm wide\n"
	.string "awake now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CF9B8_unk11
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I'm good to go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Better meet up\n"
	.string "with everyone at\n"
	.string "the park now."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87CF9B8_unk12
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Yup!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	