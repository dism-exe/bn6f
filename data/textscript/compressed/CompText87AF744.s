	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AF744::
	.word 0x5B100

	text_archive_start

	def_text_script CompText87AF744_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Look at all those\n"
	.string "people... Wonder\n"
	.string "what's up?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Isn't that Tab and\n"
	.string "Mick? Let's go ask\n"
	.string "them!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yo,Mick,Tab!\n"
	.string "What's going on?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87AF744_unk3
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Looks like that\n"
	.string "chick's doing some\n"
	.string "sorta promotion."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x33
	.string "Looks like you're\n"
	.string "just in time!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87AF744_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Huh,sounds kinda\n"
	.string "interesting..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk5
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Hello Central Town!\n"
	.string "And how is everyone\n"
	.string "doing today?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm pleased to\n"
	.string "announce that at\n"
	.string "this time tomorrow,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "we will be holding a\n"
	.string "special CompuDancing\n"
	.string "Jamboree"
	ts_key_wait 0x0
	ts_clear_msg
	.string "in CentralArea3\n"
	.string "to celebrate the\n"
	.string "opening of the Expo."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're going to be\n"
	.string "giving away great\n"
	.string "gifts and prizes!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So tell all your\n"
	.string "friends! The more\n"
	.string "the merrier!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87AF744_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "A CompuDancing\n"
	.string "Jamboree... Sounds\n"
	.string "kinda interesting..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk7
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Wanna check it out\n"
	.string "if you've got time?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah,sure!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87AF744_unk9
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Tomorrow,huh? As\n"
	.string "long as you don't\n"
	.string "get detention again!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey! Today was a\n"
	.string "fluke!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x33
	.string "Um... Tomorrow... My\n"
	.string "family's chip shop\n"
	.string "is reopening today."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have to work,\n"
	.string "so I can't go..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But even though I\n"
	.string "can't go,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope you'll come\n"
	.string "to my store to\n"
	.string "stock up your chips!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk11
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Ah... I'll come\n"
	.string "and buy a few chips,\n"
	.string "so,uh,don't worry..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x33
	.string "Uh,huh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Roger!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87AF744_unk13
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Alright! See you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey,Tab,let's\n"
	.string "get outta here!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x33
	.string "If you want,you can\n"
	.string "come visit my store\n"
	.string "after this!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Bye!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk14
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Guess we should be\n"
	.string "heading home,too..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87AF744_unk15
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "I hope to see you\n"
	.string "all there!\n"
	.string "Tee,hee!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk16
	ts_mugshot_show 0x11
	ts_msg_open
	.string "........."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AF744_unk17
	ts_mugshot_show 0x14
	ts_msg_open
	.string "OK,I'll see you this\n"
	.string "time tomorrow in\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	