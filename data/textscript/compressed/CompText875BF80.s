	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875BF80::
	.word 0x5700

	text_archive_start

	def_text_script CompText875BF80_unk0
	ts_msg_open
	.string "The JudgeTree..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875BF80_unk1
	ts_msg_open
	.string "A computer that\n"
	.string "stops the JudgeTree\n"
	.string "from withering..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	