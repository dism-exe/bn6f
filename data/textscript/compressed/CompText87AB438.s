	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AB438::
	.word 0x15E00

	text_archive_start

	def_text_script CompText87AB438_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan! Lan!\n"
	.string "It's morning!\n"
	.string "Wake up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87AB438_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Ngh...\n"
	.string "No school\n"
	.string "today,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Let me sleep\n"
	.string "a little more?...\n"
	.string "*mumble,mumble*..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87AB438_unk2
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan! Did you\n"
	.string "forget!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You said you'd go to\n"
	.string "the Aquarium with\n"
	.string "Mick,remember?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87AB438_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... *yawn*\n"
	.string "Oh,yeah..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87AB438_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... We said we were\n"
	.string "gonna meet in front\n"
	.string "of the Aquarium."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OK,let's go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	