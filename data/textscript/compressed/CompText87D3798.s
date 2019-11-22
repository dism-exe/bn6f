	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D3798::
	.word 0x105800

	text_archive_start

	def_text_script CompText87D3798_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "T-This is!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk1
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "Lan Hikari..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk2
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "I had no worries\n"
	.string "that you wouldn't\n"
	.string "make it."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Everything has gone\n"
	.string "according to my\n"
	.string "plan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "All I want now is\n"
	.string "the Maverick."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87D3798_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Maverick...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87D3798_unk4
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "... Baryl,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "the only thing I\n"
	.string "didn't foresee was\n"
	.string "your betrayal."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87D3798_unk5
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "... I have not for-\n"
	.string "gotten what you have\n"
	.string "done for me,Dr.Wily,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and that is why I\n"
	.string "have worked for you\n"
	.string "as a WWW member."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "What Dr.Wily did...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87D3798_unk7
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "Dr.Wily is the one\n"
	.string "who raised me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and he is the one\n"
	.string "who created my Navi,\n"
	.string "Colonel..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87D3798_unk8
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "What!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk9
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "And now you betray\n"
	.string "the very man who\n"
	.string "gave you everything?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "... No way!\n"
	.string "Dr.Wily raised you!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	.string "You should listen to\n"
	.string "him,Lan."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Many years ago,after\n"
	.string "I was kicked out of\n"
	.string "the science"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "community,I started\n"
	.string "to plan my revenge\n"
	.string "against Net society."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But there was a man\n"
	.string "who had wanted me\n"
	.string "for his own plans..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That man was a\n"
	.string "Netopian commander--\n"
	.string "Baryl's father."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That man who had\n"
	.string "scouted me out,had\n"
	.string "me research"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "military robots\n"
	.string "while living in\n"
	.string "Netopia."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I put my own plans\n"
	.string "on hold for this man"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "who needed an\n"
	.string "ex-scientist\n"
	.string "like me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A few years later,\n"
	.string "a war broke out in\n"
	.string "a country somewhere,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and that man went\n"
	.string "to the battlefield\n"
	.string "to fight."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "While he was out\n"
	.string "there,I watched over\n"
	.string "his only son,Baryl."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A few years\n"
	.string "passed..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I received a\n"
	.string "letter..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It was then that I\n"
	.string "knew that that man\n"
	.string "was no longer alive."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My sadness and anger\n"
	.string "at losing a friend"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "re-ignited my hidden\n"
	.string "desire for revenge\n"
	.string "against society..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I threw my kindness\n"
	.string "away that day,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and became a \"mad\n"
	.string "scientist\" out for\n"
	.string "revenge."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... But there was\n"
	.string "something I had to\n"
	.string "do first."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I did everything I\n"
	.string "could to repay the\n"
	.string "debt to Baryl's"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "father by using the\n"
	.string "soldier data he had\n"
	.string "given me,to raise"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "his son to be a\n"
	.string "better soldier than\n"
	.string "even he was,because"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "that was what the\n"
	.string "man who had needed\n"
	.string "me had wanted."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And I succeeded.\n"
	.string "You are better\n"
	.string "than your father"
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wake up,Baryl,\n"
	.string "and realize"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "who you should thank\n"
	.string "for why you are even\n"
	.string "alive today!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't let the world\n"
	.string "and Net society"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "scare or confuse\n"
	.string "you,and come,stand\n"
	.string "with me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87D3798_unk10
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "... You're the one\n"
	.string "who needs to wake\n"
	.string "up."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I remember when you\n"
	.string "first gave Colonel\n"
	.string "to me,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "your eyes shone\n"
	.string "bright with\n"
	.string "kindness..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87D3798_unk11
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "Hmph! I told you!\n"
	.string "I threw away my\n"
	.string "kindness long ago!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I have no use for\n"
	.string "kindness in my\n"
	.string "grand plans!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk12
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Huh!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87D3798_unk13
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "Ah,looks like\n"
	.string "it has finished\n"
	.string "charging..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The time for talk\n"
	.string "is over!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's time to put\n"
	.string "my plans into\n"
	.string "action..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Iris!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk14
	ts_mugshot_show [
		mugshot: 0x11,
	]
	ts_msg_open
	.string "........."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	.string "Begin the\n"
	.string "preparations!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x11,
	]
	.string "........."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk15
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Iris,I'm here to\n"
	.string "rescue you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Iris,Iris!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87D3798_unk16
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "It's no use..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Right now,she's\n"
	.string "in operating mode."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "She can't hear\n"
	.string "anyone now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk17
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Baryl...\n"
	.string "W-What do you mean!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 18,
	]

	def_text_script CompText87D3798_unk18
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "Dr.Wily created\n"
	.string "Colonel about 20\n"
	.string "years ago,..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The newly completed\n"
	.string "Colonel was at the\n"
	.string "time..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...no,even now,he\n"
	.string "has incredible\n"
	.string "abilities."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He had incredible\n"
	.string "power,speed,and very\n"
	.string "clear thinking..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "an ability to\n"
	.string "control electronic\n"
	.string "devices,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...and kindness."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He was the perfect\n"
	.string "Navi..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 19,
	]

	def_text_script CompText87D3798_unk19
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Was?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script CompText87D3798_unk20
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "On the day we found\n"
	.string "out my father had\n"
	.string "passed away..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Dr.Wily took Colonel\n"
	.string "away from me...\n"
	.string "A few hours later,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "the Colonel I got\n"
	.string "back wasn't the same\n"
	.string "Colonel I knew..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 21,
	]

	def_text_script CompText87D3798_unk21
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "........."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 22,
	]

	def_text_script CompText87D3798_unk22
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "Colonel's kindness\n"
	.string "program had been\n"
	.string "removed,and he had"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "been changed into\n"
	.string "the perfect combat\n"
	.string "Navi."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... And there was\n"
	.string "1 more program that\n"
	.string "was removed."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Colonel's ability\n"
	.string "to control any\n"
	.string "electronic device..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 23,
	]

	def_text_script CompText87D3798_unk23
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "What does this have\n"
	.string "to do with Iris...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 24,
	]

	def_text_script CompText87D3798_unk24
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "You still don't\n"
	.string "understand!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I made another Navi\n"
	.string "from the programs I\n"
	.string "took from Colonel!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A Navi whose purpose\n"
	.string "was to operate\n"
	.string "military weaponry..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That Navi is Iris!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_clear_msg
	ts_jump [
		target: 25,
	]

	def_text_script CompText87D3798_unk25
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "W-What...!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Iris is a NetNavi!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87D3798_unk26
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "Yes..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Iris is Colonel's\n"
	.string "younger sister."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 27,
	]

	def_text_script CompText87D3798_unk27
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Th-That's...\n"
	.string "That's impossible!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I mean,Iris is in\n"
	.string "the real world."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "\n"
	.string "Ah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...... A CopyBot!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 28,
	]

	def_text_script CompText87D3798_unk28
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "It looks like you\n"
	.string "finally understand."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Then you also know\n"
	.string "what the CopyBots\n"
	.string "behind me are for?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk29
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "N-No way...!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "No,stop!!\n"
	.string "Iris!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 30,
	]

	def_text_script CompText87D3798_unk30
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x20,
	]
	ts_mugshot_show [
		mugshot: 0x11,
	]
	ts_msg_open
	.string "Come...\n"
	.string "Cybeast Falzar."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D3798_unk31

	def_text_script CompText87D3798_unk32
	ts_mugshot_show [
		mugshot: 0x11,
	]
	ts_msg_open
	.string "Come...\n"
	.string "Cybeast Gregar."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	