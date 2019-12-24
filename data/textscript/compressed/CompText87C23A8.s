	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C23A8::
	.word 0x74300

	text_archive_start

	def_text_script CompText87C23A8_unk0
	ts_mugshot_hide
	ts_msg_open
	.string "Meanwhile,in Central\n"
	.string "Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C23A8_unk1
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "... At long last,\n"
	.string "ladies and\n"
	.string "gentlemen!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The final round of\n"
	.string "the Expo Pavilion\n"
	.string "Operator Navi"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Selection Test will\n"
	.string "now begin!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87C23A8_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's finally\n"
	.string "starting!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87C23A8_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Stay loose,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87C23A8_unk4
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "... But before I\n"
	.string "explain the rules\n"
	.string "for this round,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a man who is a great\n"
	.string "sponsor of the Expo,\n"
	.string "and is the mayor of"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cyber City,Mayor\n"
	.string "Cain,is here to say\n"
	.string "a few words!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C23A8_unk5
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Mayor Cain,if you\n"
	.string "please."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C23A8_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_control_lock
	.string "What's he...?"
	ts_wait frames=0x3C
	ts_control_unlock
	ts_end

	def_text_script CompText87C23A8_unk7
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Please go ahead,\n"
	.string "Mayor."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C23A8_unk8
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "I want to thank you\n"
	.string "NetBattlers for\n"
	.string "coming here today."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ever since I became\n"
	.string "Mayor,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it's been a big\n"
	.string "dream of mine to\n"
	.string "host an Expo."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I truly believe that"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the success of this\n"
	.string "Expo depends on\n"
	.string "the Operator Navi"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "who is chosen here\n"
	.string "today,so your role\n"
	.string "is very important."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Therefore,let us\n"
	.string "now begin the final\n"
	.string "round of the Expo"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Pavilion Operator\n"
	.string "Navi Selection Test!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87C23A8_unk9
	ts_mugshot_hide
	ts_msg_open
	.string "*clap,clap,clap...*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C23A8_unk10
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Thank you,\n"
	.string "Mayor Cain!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x32
	.string "I hope that everyone\n"
	.string "will fight bravely.\n"
	.string "Good luck!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C23A8_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... That guy\n"
	.string "standing right\n"
	.string "behind the Mayor..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm almost sure it's\n"
	.string "the same creepy guy\n"
	.string "from Green Town..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87C23A8_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "But he kinda seemed\n"
	.string "like the Mayor's\n"
	.string "bodyguard..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now I'm curious. I\n"
	.string "wonder who he is..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C23A8_unk13
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "I will now explain\n"
	.string "how the final round\n"
	.string "will work."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Today,we will be\n"
	.string "asking you to find a\n"
	.string "specific \"thing\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That \"thing\" is..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the legendary gem,\n"
	.string "\"MoonStone\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's said that this\n"
	.string "\"MoonStone\" exists\n"
	.string "somewhere in the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Undernet. I'm sure\n"
	.string "you are all aware,\n"
	.string "but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the Undernet is a\n"
	.string "very dangerous\n"
	.string "place."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't feel up\n"
	.string "to the task,please\n"
	.string "back out now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87C23A8_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hmmm,a legendary\n"
	.string "gem,huh...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It feels totally\n"
	.string "different to be in\n"
	.string "the final round."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87C23A8_unk15
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "The person who finds\n"
	.string "the \"MoonStone\"\n"
	.string "first"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "will be awarded the\n"
	.string "Operator Navi\n"
	.string "position!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is everyone ready?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The final round\n"
	.string "begins... NOW!!"
	ts_key_wait any=0x0
	ts_end

	