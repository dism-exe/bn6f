	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A817C::
	.word 0x1C900

	text_archive_start

	def_text_script CompText87A817C_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,the temperature\n"
	.string "in this area is\n"
	.string "going down."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A817C_unk1
	ts_mugshot_show [
		mugshot: 0x51,
	]
	ts_msg_open
	.string "As I thought,you are\n"
	.string "skilled. However,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "a raging inferno\n"
	.string "awaits you in the\n"
	.string "next area!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you're feeling\n"
	.string "faint,maybe you\n"
	.string "should jack out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Oopsies,but even if\n"
	.string "you do,the inferno\n"
	.string "will still be here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Good luck,MegaMan!\n"
	.string "Gyahahahaha!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87A817C_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Darn it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87A817C_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "You OK,Lan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87A817C_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ah,yeah..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But the teachers are\n"
	.string "still in danger."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We've gotta hurry!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87A817C_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Yeah!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	