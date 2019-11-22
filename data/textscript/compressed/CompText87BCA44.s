	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BCA44::
	.word 0x2A600

	text_archive_start

	def_text_script CompText87BCA44_unk0
	ts_msg_open
	.string "I'm coming in..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87BCA44_unk1
	ts_msg_open
	.string "Oh,\n"
	.string "it's you... Vic."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BCA44_unk2
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Ito messed up\n"
	.string "and got himself\n"
	.string "busted..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87BCA44_unk3
	ts_mugshot_hide
	ts_msg_open
	.string "I know..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Just a little more\n"
	.string "and Cyber City would\n"
	.string "have been ours..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Prosecutor Ito..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He may have fallen,\n"
	.string "but he managed to do\n"
	.string "what he needed to."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There's no need to\n"
	.string "worry. Our plan is\n"
	.string "still going fine."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "How is \"that\"\n"
	.string "operation going,by\n"
	.string "the way?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87BCA44_unk4
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Ah,forget about it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Who do you take me\n"
	.string "for? I'll get that\n"
	.string "program,you'll see,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string " Baryl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BCA44_unk5
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "I'll send Colonel to\n"
	.string "you shortly,just to\n"
	.string "be safe."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Soon,our plans will\n"
	.string "be realized,and WWW\n"
	.string "will rise again..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87BCA44_unk6
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Yeah,the day will\n"
	.string "come,but it won't be\n"
	.string "thanks to Colonel!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	