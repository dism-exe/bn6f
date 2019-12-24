	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A3B84::
	.word 0x8AF00

	text_archive_start

	def_text_script CompText87A3B84_unk0
	ts_msg_open
	.string "Sooo,I'm Lan Hikari!\n"
	.string "And the year's 20XX!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Nowadays,almost\n"
	.string "everything is run\n"
	.string "by the network."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Life sure is sweet."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We don't really\n"
	.string "have to do much."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Everyone has a PET.\n"
	.string "And in each\n"
	.string "PErsonal Terminal,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "lives a NetNavi who\n"
	.string "will do anything\n"
	.string "for you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Hold on,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We NetNavis jack\n"
	.string "in to terminals,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "gather information,\n"
	.string "make your life easy,\n"
	.string "and help you out,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "if you leave every-\n"
	.string "thing to us,you're\n"
	.string "asking for trouble!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Ack! MegaMan!?\n"
	.string "You heard that?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Never mind that.\n"
	.string "Did you think about\n"
	.string "what to say today?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Ah,about that...\n"
	.string "I'm no good at,uh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,I know! You can\n"
	.string "do my speech for me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Oh,stop it,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A3B84_unk1
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "OK,looks like it's\n"
	.string "time to go home,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "before you leave,I\n"
	.string "have a bit of sad\n"
	.string "news to share..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87A3B84_unk2
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "... Sad news?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87A3B84_unk3
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "Yes,unfortunately..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "One of your fellow\n"
	.string "classmates is moving\n"
	.string "to another school..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87A3B84_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "Whaaaaaaat!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A3B84_unk5
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Hey,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87A3B84_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-What,Dex?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87A3B84_unk7
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Do you know who's\n"
	.string "leaving?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87A3B84_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string " Yeah,I know."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87A3B84_unk9
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "For real!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know\n"
	.string "who it is!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tell me already!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87A3B84_unk10
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "... Lan,did you want\n"
	.string "to say something...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A3B84_unk11
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Y-You're kidding...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87A3B84_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A3B84_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Um,my Dad got\n"
	.string "transferred,so my\n"
	.string "family has to move."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87A3B84_unk14
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "W-Wait! You!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How could you not\n"
	.string "tell us something\n"
	.string "this important!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87A3B84_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yai..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sorry I didn't\n"
	.string "tell you guys."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87A3B84_unk16
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Aren't you mad too,\n"
	.string "Mayl?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87A3B84_unk17
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87A3B84_unk18
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Mayl?\n"
	.string "Did you..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87A3B84_unk19
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "I knew..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I found out from\n"
	.string "Lan's Mom a little\n"
	.string "while ago,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I didn't want to say\n"
	.string "anything until..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87A3B84_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I really wanted to\n"
	.string "tell you guys,but I\n"
	.string "just couldn't do it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sorry,everyone."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87A3B84_unk21
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan will be moving\n"
	.string "to Cyber City"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the day after\n"
	.string "tomorrow,on Sunday."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So,let's all try to\n"
	.string "see him off,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87A3B84_unk22
	ts_mugshot_hide
	ts_msg_open
	.string "Yeah,OK!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87A3B84_unk23
	ts_msg_open
	.string "I'll be there!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=24

	def_text_script CompText87A3B84_unk24
	ts_msg_open
	.string "Me,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87A3B84_unk25
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Gee...thanks..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=26

	def_text_script CompText87A3B84_unk26
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Hey,Lan! You should\n"
	.string "say something."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87A3B84_unk27
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Um,I...uh...\n"
	.string "I have to pack,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so I don't have\n"
	.string "a lot of time."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I wanna say\n"
	.string "thank you,\n"
	.string "to everyone!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A3B84_unk28
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "Let's send Lan off\n"
	.string "with b-big s-smiles,\n"
	.string "yes... *sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Waaaaaah!\n"
	.string "Lan! Don't go!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x6,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x7,
	]
	ts_jump target=29

	def_text_script CompText87A3B84_unk29
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Eek! Ms.Mari!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't say that!"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0xA,
	]
	ts_end

	