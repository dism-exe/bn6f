	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D2818::
	.word 0x32700

	text_archive_start

	def_text_script CompText87D2818_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Yuika!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87D2818_unk1
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "You got through\n"
	.string "after all..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but this is the\n"
	.string "end of your act!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "CircusMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87D2818_unk2
	ts_mugshot_show [
		mugshot: 0x54,
	]
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2818_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ah!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87D2818_unk4
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "If you wanna get\n"
	.string "through,you've gotta\n"
	.string "beat CircusMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My Navi is a whole\n"
	.string "different show from\n"
	.string "those two clowns!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,have fun!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2818_unk5
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "Hurry up and get\n"
	.string "that open! Are you\n"
	.string "two men or boys!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87D2818_unk6
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Hey,only Dr.Wily and\n"
	.string "Baryl can open this\n"
	.string "door."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So it's not THAT\n"
	.string "easy to open!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87D2818_unk7
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "It's true...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've never seen\n"
	.string "security this tight\n"
	.string "before."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87D2818_unk8
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "You just have to put\n"
	.string "your backs into it!\n"
	.string "Besides,of course"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "it's gonna be tough!\n"
	.string "There's a Cybeast on\n"
	.string "the other side!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2818_unk9
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "The Cybeast is...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Grr... We can't lose\n"
	.string "now!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Come on,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87D2818_unk10
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "OK,let's go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2818_unk11
	ts_control_lock
	ts_text_speed [
		delay: 0x1,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Jack in!"
	ts_wait [
		frames: 0xA,
	]
	.string "\n"
	.string "MegaMan,"
	ts_wait [
		frames: 0xA,
	]
	.string "\n"
	.string "Execute!!"
	ts_wait [
		frames: 0x1E,
	]
	ts_control_unlock
	ts_end

	