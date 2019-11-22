	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8759480::
	.word 0x4D400

	text_archive_start

	def_text_script CompText8759480_unk0
	ts_msg_open
	.string "All sorts of\n"
	.string "trophies fill\n"
	.string "the shelves here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Cyber Academy's\n"
	.string "winning history\n"
	.string "is all right here..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk1
	ts_jump [
		target: 0,
	]

	def_text_script CompText8759480_unk2
	ts_msg_open
	.string "A proverb about\n"
	.string "education in a\n"
	.string "foreign language..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The other teachers\n"
	.string "thought it was a\n"
	.string "great present."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk3
	ts_msg_open
	.string "A decorative plant."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's used as an air\n"
	.string "cleaner in a room\n"
	.string "with no windows."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk4
	ts_msg_open
	.string "Piles and piles of\n"
	.string "papers have built\n"
	.string "up over time."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It shows how busy\n"
	.string "the desk's owner\n"
	.string "is."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk5
	ts_msg_open
	.string "A splendid tiger\n"
	.string "skin rug..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But the idea of\n"
	.string "hunting doesn't make\n"
	.string "you feel too good..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk6
	ts_msg_open
	.string "It's an expensive\n"
	.string "tea set."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It would look fancy\n"
	.string "to any guest..."
	ts_key_wait [
		any: 0x0,
	]
	ts_check_flag [
		flag: 0x18A,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_clear_msg
	.string "There is something\n"
	.string "sparkling under the\n"
	.string "sofa..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x72,
		amount: 0x1,
	]
	ts_player_animate_scene [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x72,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_flag_set [
		flag: 0x18A,
	]
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "1 MB!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk7
	ts_msg_open
	.string "A bunch of books\n"
	.string "filled with hard\n"
	.string "words all lined up."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Anyone with this\n"
	.string "many books in their\n"
	.string "room,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "even if they never\n"
	.string "read even one of\n"
	.string "the books,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "looks very wise..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk8
	ts_msg_open
	.string "A picture of Cyber\n"
	.string "Academy on the day\n"
	.string "it was finished is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "in this case."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "When people hear\n"
	.string "that,they think this\n"
	.string "picture must be old,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but this picture\n"
	.string "shows that this\n"
	.string "school was completed"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "only recently."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk9
	ts_msg_open
	.string "It seems this shelf\n"
	.string "was only here to\n"
	.string "hide the passageway."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk10
	ts_msg_open
	.string "A computer..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The power is on\n"
	.string "too..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It looks like you\n"
	.string "can jack in!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8759480_unk11
	ts_end

	