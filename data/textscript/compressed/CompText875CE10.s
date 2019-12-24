	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875CE10::
	.word 0x23E00

	text_archive_start

	def_text_script CompText875CE10_unk0
	ts_msg_open
	.string "The theory of\n"
	.string "CopyBots and the\n"
	.string "future of man is"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "being shown on this\n"
	.string "panel in an easy to\n"
	.string "understand way."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875CE10_unk1
	ts_msg_open
	.string "CopyBot abilities\n"
	.string "are being explained\n"
	.string "in an easy to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "understand way on\n"
	.string "this monitor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It seems that if the\n"
	.string "special limiter on a\n"
	.string "CopyBot breaks,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the CopyBot could\n"
	.string "become very\n"
	.string "powerful."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875CE10_unk2
	ts_jump target=CompText875CE10_unk1_id

	def_text_script CompText875CE10_unk3
	ts_msg_open
	.string "A control panel for\n"
	.string "this pavilion."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can jack in."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875CE10_unk4
	ts_msg_open
	.string "It's too dangerous\n"
	.string "to go on! You'll get\n"
	.string "shocked!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875CE10_unk5
	ts_msg_open
	.string "CopyBot abilities\n"
	.string "are being explained\n"
	.string "in an easy to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "understand way on\n"
	.string "this monitor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Looking closely,you\n"
	.string "see a port for\n"
	.string "jacking in..."
	ts_key_wait any=0x0
	ts_end

	