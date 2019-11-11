	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AB96C::
	.word 0x73900

	text_archive_start

	def_text_script CompText87AB96C_unk0
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Welcome to the\n"
	.string "Dolphin and\n"
	.string "Seal's Show!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "First,let's bring\n"
	.string "out our favorite\n"
	.string "elephant seal,Fanny!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk1
	ts_mugshot_hide
	ts_msg_open
	.string "*aur! aur! aur!*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87AB96C_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ooooh!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk3
	ts_mugshot_show 0xE
	ts_msg_open
	.string "At 12 feet tall,\n"
	.string "and weighing in\n"
	.string "at 2 tons,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Fanny loves playing\n"
	.string "with her ball even\n"
	.string "more than her food!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk4
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Next,let's put our\n"
	.string "hands together for\n"
	.string "Finny,the dolphin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk5
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Finny is our most\n"
	.string "popular attraction,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and he loves to\n"
	.string "swim around with a\n"
	.string "person on his back!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk6
	ts_mugshot_show 0x14
	ts_msg_open
	.string "That's cool..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87AB96C_unk7
	ts_mugshot_show 0xA
	ts_msg_open
	.string "... Hey,grandpa!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk8
	ts_mugshot_show 0xA
	ts_msg_open
	.string "This show is totally\n"
	.string "different from last\n"
	.string "time,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87AB96C_unk9
	ts_mugshot_show 0x19
	ts_msg_open
	.string "Sure is,sonny. It\n"
	.string "was much more of\n"
	.string "a mess last time."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come to think of it,\n"
	.string "the trainer's\n"
	.string "different,too..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That last trainer\n"
	.string "had the dolphin jump\n"
	.string "through a fire ring,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and the seal lifting\n"
	.string "weights! What an odd\n"
	.string "fella he was."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess that's why\n"
	.string "he was fired."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87AB96C_unk10
	ts_mugshot_show 0xE
	ts_msg_open
	.string "... And now,"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk11
	ts_mugshot_show 0xE
	ts_msg_open
	.string "let's have someone\n"
	.string "come and take a ride\n"
	.string "on Finny's back!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmm."
	ts_wait 0x14, 0x0
	.string "."
	ts_wait 0x14, 0x0
	.string "."
	ts_wait 0x14, 0x0
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about you with\n"
	.string "the bandana? Would\n"
	.string "you like to try?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Eh? ME!? Really!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk13
	ts_mugshot_show 0xE
	ts_msg_open
	.string "There you go!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87AB96C_unk14
	ts_mugshot_show 0x0
	ts_msg_open
	.string "W-Whoa!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wah! Being on\n"
	.string "his back...!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Whoa!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's so cool!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mick! You seeing\n"
	.string "this!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87AB96C_unk16
	ts_mugshot_show 0x14
	ts_msg_open
	.string "It's not that cool!\n"
	.string "It's embarrassing!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk17
	ts_mugshot_show 0xE
	ts_msg_open
	.string "... And this\n"
	.string "concludes our show!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope you had a\n"
	.string "good time! Come back\n"
	.string "again!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk18
	ts_mugshot_show 0x14
	ts_msg_open
	.string "It's about time\n"
	.string "to go home!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87AB96C_unk19
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK,let's go tell the\n"
	.string "Director and we can\n"
	.string "go see Plata and..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87AB96C_unk20
	ts_mugshot_show 0x14
	ts_msg_open
	.string "No,I wanna leave\n"
	.string "right now."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87AB96C_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What? Don't you want\n"
	.string "to say goodbye to\n"
	.string "Plata?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk22
	ts_mugshot_show 0x14
	ts_msg_open
	.string "... Let's just\n"
	.string "hurry up and get\n"
	.string "out of here!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87AB96C_unk23
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're afraid you're\n"
	.string "gonna be sad to say\n"
	.string "goodbye to Plata?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB96C_unk24
	ts_mugshot_show 0x14
	ts_msg_open
	.string "I'm not a weakling!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Who do you think\n"
	.string "you're talking to!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm the guy who's\n"
	.string "gonna crush you in\n"
	.string "a NetBattle!..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 25

	def_text_script CompText87AB96C_unk25
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I know,I know!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You don't have to\n"
	.string "keep on reminding\n"
	.string "me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,OK,let's go home."
	ts_key_wait 0x0
	ts_end

	