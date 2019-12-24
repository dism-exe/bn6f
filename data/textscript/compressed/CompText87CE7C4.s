	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CE7C4::
	.word 0x6FC00

	text_archive_start

	def_text_script CompText87CE7C4_unk0
	ts_msg_open
	.string "After Mr.Mach and\n"
	.string "Baryl left,I brought\n"
	.string "Iris back to school."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I had to get back\n"
	.string "fast or Mick and Tab\n"
	.string "would be worried."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CE7C4_unk1
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Aaaaah! Lan!\n"
	.string "I'm so glad you made\n"
	.string "it back safe!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We were sooooo\n"
	.string "worried about you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87CE7C4_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sorry to make you\n"
	.string "worry,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mick,Tab..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CE7C4_unk3
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "I was worried about\n"
	.string "Iris."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wasn't worried\n"
	.string "about you at all!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87CE7C4_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Heh,that's not what\n"
	.string "your face says!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87CE7C4_unk5
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Shut up!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87CE7C4_unk6
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Thanks for saving\n"
	.string "us that time,Iris."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you hadn't come,\n"
	.string "I don't know what\n"
	.string "would've happened..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that was neat\n"
	.string "how you repelled the\n"
	.string "Punishment Robots"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "with just one word!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87CE7C4_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "(She repelled the\n"
	.string " Robots...?)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87CE7C4_unk8
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	ts_mugshot_animation animation=0x2
	.string "Yeah,look,let's go\n"
	.string "home,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm mad hungry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CE7C4_unk9
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Yeah,me too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's about time\n"
	.string "to go home!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87CE7C4_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,yeah..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CE7C4_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You wanna go home\n"
	.string "with us,Iris?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CE7C4_unk12
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "I-I have something I\n"
	.string "have to do..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87CE7C4_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hey,Iris..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just who or what\n"
	.string "are you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87CE7C4_unk14
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "Um..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87CE7C4_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,don't take it the\n"
	.string "wrong way. I'm not\n"
	.string "trying to pry."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've thought a lot\n"
	.string "about you,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "like,I just don't\n"
	.string "know anything about\n"
	.string "you..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87CE7C4_unk16
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87CE7C4_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You don't have to\n"
	.string "answer if you don't\n"
	.string "want to..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but we're friends,\n"
	.string "right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you tell me\n"
	.string "what's wrong,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "then I think I could\n"
	.string "help you a little."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I mean,isn't it hard\n"
	.string "to do everything by\n"
	.string "yourself?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87CE7C4_unk18
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "Thank you,Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I... nd...\n"
	.string "........irst..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87CE7C4_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Huh? What did you\n"
	.string "say?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87CE7C4_unk20
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "... Nothing...\n"
	.string "... Thank you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're the first\n"
	.string "person to call me a\n"
	.string "friend..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87CE7C4_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Iris..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87CE7C4_unk22
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Heeeeeeey,Laaaaan!!\n"
	.string "What are you doing!?\n"
	.string "I'm gonna ditch you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CE7C4_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,OK,I'll be right\n"
	.string "there!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CE7C4_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,I've gotta get\n"
	.string "going."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you ever want to\n"
	.string "talk,just let me\n"
	.string "know,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87CE7C4_unk25
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "OK..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=26

	def_text_script CompText87CE7C4_unk26
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Alright,see ya!"
	ts_key_wait any=0x0
	ts_end

	