	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875BE5C::
	.word 0x17900

	text_archive_start

	def_text_script CompText875BE5C_unk0
	ts_msg_open
	.string "A jailer can watch\n"
	.string "over the prisoners\n"
	.string "from this window..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875BE5C_unk1
	ts_msg_open
	.string "\"001\" is written\n"
	.string "on this plate..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875BE5C_unk2
	ts_msg_open
	.string "A chair used for\n"
	.string "punishing prisoners."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can jack in."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875BE5C_unk3
	ts_msg_open
	.string "Prisoners were tied\n"
	.string "with these chains,\n"
	.string "but not now."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875BE5C_unk4
	ts_msg_open
	.string "Candle-shaped lights\n"
	.string "give the Punishment\n"
	.string "Room a certain feel."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875BE5C_unk5
	ts_msg_open
	.string "\"002\" is written\n"
	.string "on this plate..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875BE5C_unk6
	ts_msg_open
	.string "\"003\" is written\n"
	.string "on this plate..."
	ts_key_wait any=0x0
	ts_end

	