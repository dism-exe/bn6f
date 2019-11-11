	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C06E8::
	.word 0x8600

	text_archive_start

	def_text_script CompText87C06E8_unk0
	ts_mugshot_show 0x56
	ts_msg_open
	.string "PIPPIRIRIKKU...\n"
	.string "...PIRIRAAKI...\n"
	.string "...RIRIRII!!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C06E8_unk1
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "W-What!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ElementMan...\n"
	.string "You beat\n"
	.string "ElementMan!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87C06E8_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_end

	