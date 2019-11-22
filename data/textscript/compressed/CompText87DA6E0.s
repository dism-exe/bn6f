	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87DA6E0::
	.word 0x17900

	text_archive_start

	def_text_script CompText87DA6E0_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_mugshot_palette [
		palette: 0x6,
	]
	ts_msg_open
	.string "*HUFF,HUFF...*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I-IT'S NO GOOD..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THE MEMORY OF THAT\n"
	.string "TIME IS COMING BACK\n"
	.string "LIKE A BAD DREAM..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87DA6E0_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "You mustn't give up!\n"
	.string "I can still help\n"
	.string "you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87DA6E0_unk2
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "... WHOA. THOUGHT I\n"
	.string "SAW THE AFTERLIFE\n"
	.string "FOR A SECOND THERE."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TALK ABOUT A\n"
	.string "CLOSE ONE..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'M GOING TO GO FIND\n"
	.string "SHELTER. WHAT A BAD\n"
	.string "EXPERIENCE!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "YOU'D BEST BE ON\n"
	.string "GUARD,TOO! WOULDN'T\n"
	.string "WANT YOU TO BURN UP!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	