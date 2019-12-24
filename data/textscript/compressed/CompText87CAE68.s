	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CAE68::
	.word 0x27E00

	text_archive_start

	def_text_script CompText87CAE68_unk0
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Hey,I'm DustMan!\n"
	.string "Great to meet you,\n"
	.string "gahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can tell we're\n"
	.string "gonna find some\n"
	.string "great trash today!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gahahahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87CAE68_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,nice to meet you,\n"
	.string "too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So where's the Net\n"
	.string "junkyard?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I didn't think there\n"
	.string "was one in\n"
	.string "SeasideArea..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This Comp does\n"
	.string "connect to\n"
	.string "SeasideArea,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87CAE68_unk2
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Is your head on\n"
	.string "right? There's no\n"
	.string "way it's on the Net."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "All the trash is on\n"
	.string "the Under side."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CAE68_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Under... As in\n"
	.string "Undernet?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87CAE68_unk4
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Give this boy a root\n"
	.string "beer float!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,you all set?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The trader's\n"
	.string "waiting,so we gotta\n"
	.string "get outta here soon!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Move on out to\n"
	.string "Undernet2,and let's\n"
	.string "find that trader!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87CAE68_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Will do!"
	ts_key_wait any=0x0
	ts_end

	