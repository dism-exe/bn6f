	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AA3D0::
	.word 0x24200

	text_archive_start

	def_text_script CompText87AA3D0_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Ah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87AA3D0_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "."
	ts_wait [
		frames: 0x14,
	]
	.string "."
	ts_wait [
		frames: 0x14,
	]
	.string "."
	ts_wait [
		frames: 0x14,
	]
	.string "."
	ts_wait [
		frames: 0x14,
	]
	.string "."
	ts_wait [
		frames: 0x14,
	]
	.string "."
	ts_wait [
		frames: 0x14,
	]
	.string " Hey,Lan,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "don't tell me THAT'S\n"
	.string "the \""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87AA3D0_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... I guess\n"
	.string "that's it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But what's it\n"
	.string "doing there?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,let's delete\n"
	.string "that virus first."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Mom is getting\n"
	.string "kinda embarrassed."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87AA3D0_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Uh,Lan,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I really don't want\n"
	.string "to fight this guy..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I mean,that doesn't\n"
	.string "look like a \"tool\"\n"
	.string "to me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Looks more like that\n"
	.string "thing you use when\n"
	.string "the toilet is stuck!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87AA3D0_unk4
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
		target: 5,
	]

	def_text_script CompText87AA3D0_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "L-Lan!!\n"
	.string "Are you even\n"
	.string "listening...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87AA3D0_unk6
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

	def_text_script CompText87AA3D0_unk7
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Argh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87AA3D0_unk8
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Execute..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	