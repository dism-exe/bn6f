	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C4C14::
	.word 0x43200

	text_archive_start

	def_text_script CompText87C4C14_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Everyone!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C4C14_unk1
	ts_mugshot_show mugshot=0x38
	ts_msg_open
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87C4C14_unk2
	ts_mugshot_show mugshot=0x51
	ts_msg_open
	.string "Kwohohohoho!\n"
	.string "You came after all,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87C4C14_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "BlastMan! DiveMan!\n"
	.string "Let my friends go!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87C4C14_unk4
	ts_mugshot_show mugshot=0x52
	ts_msg_open
	.string "Do you really think\n"
	.string "we'll release them\n"
	.string "because you say so?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Show us some guts if\n"
	.string "you want us to let\n"
	.string "them go! Awooga!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87C4C14_unk5
	ts_mugshot_show mugshot=0x51
	ts_msg_open
	.string "Don't cry to us\n"
	.string "about unfair,either."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're not nice guys,\n"
	.string "so you should thank\n"
	.string "us it's not 10 on 1!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87C4C14_unk6
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Gahahaha,that's\n"
	.string "right,ya rat! We're\n"
	.string "the bad guys,ar'!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87C4C14_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Argh!!..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87C4C14_unk8
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Gahahaha!\n"
	.string "What a fun show this\n"
	.string "is goin' to be!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's get this here\n"
	.string "boat out on the\n"
	.string "waves!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BlastMan,yer up\n"
	.string "first!\n"
	.string "Unnnn..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Where did BlastMan's\n"
	.string "operator go,the\n"
	.string "scurvy crab...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,there ye are...\n"
	.string "What's yer name\n"
	.string "again...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87C4C14_unk9
	ts_mugshot_hide
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87C4C14_unk10
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "...What!?\n"
	.string "Yer not answerin'?\n"
	.string "Strange guy..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But then,I've got a\n"
	.string "pretty strange name,\n"
	.string "haven't I!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gahahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87C4C14_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "There's 2 of them,\n"
	.string "so you've gotta stay\n"
	.string "focused,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm counting on you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87C4C14_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87C4C14_unk13
	ts_mugshot_show mugshot=0x51
	ts_msg_open
	.string "Kwohohoho!\n"
	.string "Time for a barbeque!"
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87C4C14_unk14
	ts_mugshot_show mugshot=0x52
	ts_msg_open
	.string "Commencing attack!\n"
	.string "Awooga!"
	ts_key_wait any=0x0
	ts_end

	