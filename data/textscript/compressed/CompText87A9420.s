	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A9420::
	.word 0x19000

	text_archive_start

	def_text_script CompText87A9420_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The legendary\n"
	.string "Cybeasts..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess they have a\n"
	.string "legend about them in\n"
	.string "this area of the Net..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sounds really\n"
	.string "interesting,huh,Lan?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9420_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,sounds like\n"
	.string "the Net's just full\n"
	.string "of these mysteries!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's so cool!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87A9420_unk2
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Lan,it's time\n"
	.string "for bed!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87A9420_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Huh? It's already\n"
	.string "bedtime?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Ack!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,MegaMan. One more\n"
	.string "look around,and then\n"
	.string "we gotta jack out."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87A9420_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "OK!"
	ts_key_wait any=0x0
	ts_end

	