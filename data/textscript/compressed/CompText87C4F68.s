	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C4F68::
	.word 0x77E00

	text_archive_start

	def_text_script CompText87C4F68_unk0
	ts_mugshot_show mugshot=0x51
	ts_msg_open
	.string "Kw-Kwohoho..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tsk! Even with\n"
	.string "our combined\n"
	.string "firepower...!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So this is the power\n"
	.string "of a Cybeast...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87C4F68_unk1
	ts_mugshot_show mugshot=0x52
	ts_msg_open
	.string "Incredible..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C4F68_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "...*huff,huff...*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87C4F68_unk3
	ts_mugshot_show mugshot=0x38
	ts_msg_open
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Are you all OK...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "We're alright!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You shouldn't push\n"
	.string "yourself too hard,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87C4F68_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "You should listen\n"
	.string "to the girl,MegaMan.\n"
	.string "The real show..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "starts NOW!!\n"
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "That voice...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C4F68_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "C-CircusMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87C4F68_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What the...!?\n"
	.string "Give us a break!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87C4F68_unk7
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "I love it\n"
	.string "when things go\n"
	.string "according to plan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87C4F68_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You--\n"
	.string "You're CircusMan's\n"
	.string "operator!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wait a sec. Plan!?\n"
	.string "What are you going\n"
	.string "to do!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87C4F68_unk9
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Tee,hee! I thought\n"
	.string "you already knew!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Our plan is to\n"
	.string "steal MegaMan and\n"
	.string "that Cybeast power"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that's sleeping\n"
	.string "inside of him,duh!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You guys are so\n"
	.string "easy to figure\n"
	.string "out,really."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Pretty much we were\n"
	.string "going to hold your\n"
	.string "friends hostage..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And then keep them\n"
	.string "in the Undernet\n"
	.string "until you came."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that was all we\n"
	.string "had to do to make\n"
	.string "the plan work!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You two are such\n"
	.string "suckers!\n"
	.string "Ahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87C4F68_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "That's really dirty!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87C4F68_unk11
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "What's this?\n"
	.string "Are you\n"
	.string "complementing me?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come on,CircusMan!\n"
	.string "The last attraction\n"
	.string "is about to begin!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87C4F68_unk12
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C4F68_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Ughn!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm being pulled in!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87C4F68_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87C4F68_unk15
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's no good!\n"
	.string "I can't hold out\n"
	.string "much longer!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "W-Waaaaaah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C4F68_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C4F68_unk17
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "*huff,huff...*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whew,even with my\n"
	.string "large stomach,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "this little Navi\n"
	.string "is filling me to\n"
	.string "the max!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87C4F68_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You... You sucked\n"
	.string "MegaMan in..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87C4F68_unk19
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Great job,CircusMan!\n"
	.string "Now we have a\n"
	.string "weapon of our own!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87C4F68_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Aaaaaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yuika!\n"
	.string "Give MegaMan back!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87C4F68_unk21
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Tee,hee!\n"
	.string "You're babbling\n"
	.string "nonsense again!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sorry,but we need\n"
	.string "the Cybeast's power\n"
	.string "more than you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,CircusMan,\n"
	.string "jack out!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87C4F68_unk22
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "You got it!\n"
	.string "Ahoo,hoo,hoo!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87C4F68_unk23
	ts_mugshot_show mugshot=0x38
	ts_msg_open
	.string "Wait!\n"
	.string "Give MegaMan back!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C4F68_unk24
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We don't need you\n"
	.string "guys anymore!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Bye bye!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C4F68_unk25
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan..."
	ts_key_wait any=0x0
	ts_end

	