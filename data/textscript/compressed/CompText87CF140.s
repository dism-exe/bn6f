	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CF140::
	.word 0x6A400

	text_archive_start

	def_text_script CompText87CF140_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm home!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hm?\n"
	.string "Is Mom out shopping?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CF140_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "A note...\n"
	.string "Guess she did\n"
	.string "go shopping."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87CF140_unk2
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect effect=0x2
	.string "*beep beep!*"
	ts_wait frames=0x3E
	ts_call_p_e_t_effect effect=0x1
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CF140_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,you've got mail!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CF140_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... An E-mail?\n"
	.string "From who?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87CF140_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Umm...\n"
	.string "The Expo Executive\n"
	.string "Committee..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87CF140_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The Expo!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Read it,read it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87CF140_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "OK,here we go!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Dear Mr.Lan Hikari,\n"
	.string " We of the Expo\n"
	.string " Executive Committee"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " would like to\n"
	.string " invite you to our\n"
	.string " Preview Gala."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " You have been\n"
	.string " selected from\n"
	.string " among the citizens"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " of Cyber City to\n"
	.string " attend this once in\n"
	.string " a lifetime event!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " This event will be\n"
	.string " held in one week."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " You may bring\n"
	.string " any interested\n"
	.string " friends with you to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " the Expo Site to\n"
	.string " experience this\n"
	.string " exciting event!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87CF140_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's what it says!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87CF140_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Um,MegaMan,what's\n"
	.string "a \"Preview Gala\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87CF140_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's an exclusive\n"
	.string "event where a lot of"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "special guests will\n"
	.string "get to see the Expo\n"
	.string "before it opens."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87CF140_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "So you mean we get\n"
	.string "to see the Expo\n"
	.string "before anyone else!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cooool!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "About time something\n"
	.string "good happened,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87CF140_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "But it seems sudden.\n"
	.string "Don't you think it's\n"
	.string "kinda suspicious...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87CF140_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You think too\n"
	.string "much,MegaMan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A lot of stuff's\n"
	.string "happened,so you're\n"
	.string "just being paranoid."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87CF140_unk14
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... You think so?\n"
	.string "... Yeah,you're\n"
	.string "probably right."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So,who are you going\n"
	.string "to invite?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87CF140_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hmm...\n"
	.string "Mick,Tab...\n"
	.string "and Iris,I guess."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... And I'll ask\n"
	.string "everyone back in\n"
	.string "ACDC Town,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And Chaud,too!...\n"
	.string "Although he probably\n"
	.string "won't come..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87CF140_unk16
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "OK,let's ask\n"
	.string "everyone after\n"
	.string "school tomorrow!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87CF140_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah! I bet\n"
	.string "everyone's gonna be\n"
	.string "really surprised!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,I think I'm gonna\n"
	.string "take a nap until Mom\n"
	.string "gets back."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87CF140_unk18
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan...\n"
	.string "Homework...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87CF140_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Nap first!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87CF140_unk20
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Aaaargh!\n"
	.string "Laaaaaan!!"
	ts_key_wait any=0x0
	ts_end

	