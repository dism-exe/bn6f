	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8758D98::
	.word 0x41900

	text_archive_start

	def_text_script CompText8758D98_unk0
	ts_msg_open
	.string "Specially built\n"
	.string "seats for the\n"
	.string "lobby."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're not used\n"
	.string "often,but guests do\n"
	.string "use them sometimes."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758D98_unk1
	ts_msg_open
	.string "There are decorative\n"
	.string "plants here."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Someone takes great\n"
	.string "care of them,one\n"
	.string "leaf at a time."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758D98_unk2
	ts_msg_open
	.string "This is the\n"
	.string "Front Office."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Through the window,\n"
	.string "you can see an old\n"
	.string "man making tea..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758D98_unk3
	ts_msg_open
	.string "There are some\n"
	.string "crushed leaves on\n"
	.string "this bushy plant."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It was probably a\n"
	.string "student that did it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758D98_unk4
	ts_msg_open
	.string "Cyber Academy's\n"
	.string "security is very\n"
	.string "strict."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You need a\n"
	.string "\""
	ts_print_item [
		item: 0x1,
		buffer: 0x0,
	]
	.string "\" to get\n"
	.string "through here."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758D98_unk5
	ts_msg_open
	.string "Today's events are\n"
	.string "all displayed on\n"
	.string "this monitor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"There will be a\n"
	.string " teachers' meeting\n"
	.string " at 4 today.\""
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758D98_unk6
	ts_msg_open
	.string "There is a special\n"
	.string "battery charger"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "at the base of\n"
	.string "the CopyBot stand."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758D98_unk7
	ts_check_chapter [
		lower: 0x20,
		upper: 0xFF,
		jumpIfInRange: CompText8758D98_unk9_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Today's events are\n"
	.string "all displayed on\n"
	.string "this monitor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"There will be a\n"
	.string " teachers' meeting\n"
	.string " at 4 today.\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is a port for\n"
	.string "jacking in,but it\n"
	.string "seems to be broken."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758D98_unk8
	ts_msg_open
	.string "A gate that connects\n"
	.string "to the Teachers'\n"
	.string "Room..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758D98_unk9
	ts_msg_open
	.string "Today's events are\n"
	.string "all displayed on\n"
	.string "this monitor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"There will be a\n"
	.string " teachers' meeting\n"
	.string " at 4 today.\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It looks like there\n"
	.string "is a port you can\n"
	.string "jack in to!"
	ts_key_wait any=0x0
	ts_end

	