	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878E728::
	.word 0x42000

	text_archive_start

	def_text_script CompText878E728_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME AND THANK\n"
	.string "YOU FOR COMING TO\n"
	.string "GREEN AREA!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE MOTTO FOR THIS\n"
	.string "AREA IS \"PURE,RIGHT,\n"
	.string "AND BEAUTIFUL\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THUS,GOING AGAINST\n"
	.string "THE RULES IS SIMPLY\n"
	.string "ABSURD! FAREWELL!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878E728_unk1
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "You probably know\n"
	.string "this already,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Net is\n"
	.string "public property!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So if you try any\n"
	.string "mischief,you may\n"
	.string "be fined."
	ts_key_wait 0x0
	ts_clear_msg
	.string "My suggestion is\n"
	.string "to forget about\n"
	.string "mischief altogether."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878E728_unk2
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "If you go down that\n"
	.string "slope,the small\n"
	.string "roads get tangled!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Kind of like the\n"
	.string "roots of a tree!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878E728_unk3

	def_text_script CompText878E728_unk4

	def_text_script CompText878E728_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "UMMM... SORRY TO\n"
	.string "BE SUDDEN,BUT I MUST\n"
	.string "EXAMINE YOUR BAGS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "NO PROBLEMS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT SEEMS YOU HAVE\n"
	.string "NOTHING TOO\n"
	.string "SUSPICIOUS ON YOU."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THANK YOU FOR YOUR\n"
	.string "COOPERATION!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878E728_unk6
	ts_mugshot_show 0x42
	ts_msg_open
	.string "The Net is\n"
	.string "being patrolled\n"
	.string "right now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This effort is\n"
	.string "very important in\n"
	.string "preventing NetCrime."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878E728_unk7
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Did you know that\n"
	.string "you have to go to\n"
	.string "school?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's the law!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So no matter how\n"
	.string "much you hate class,\n"
	.string "you have to go!"
	ts_key_wait 0x0
	ts_end

	