	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CDA9C::
	.word 0x154A00

	text_archive_start

	def_text_script CompText87CDA9C_unk0
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Tee,hee..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Iris,was it?\n"
	.string "Isn't she cute,\n"
	.string "Baryl?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't know how you\n"
	.string "know each other,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you don't look\n"
	.string "like the invincible\n"
	.string "Baryl now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Tee,hee!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87CDA9C_unk1
	ts_mugshot_show 0x2F
	ts_msg_open
	.string "... I-Iris..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87CDA9C_unk2
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Heh,heh,heh!\n"
	.string "Don't worry,Baryl."
	ts_key_wait 0x0
	ts_clear_msg
	.string "She's just taking a\n"
	.string "nap... You know,like\n"
	.string "a sleeping beauty."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I never thought I'd\n"
	.string "see the day when\n"
	.string "you're so helpless."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Until now,you've\n"
	.string "been pretty snobby,\n"
	.string "ordering us around."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hate it when\n"
	.string "people tell me what\n"
	.string "to do!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87CDA9C_unk3
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Don't think ill\n"
	.string "of us,Baryl."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I had to think\n"
	.string "things through many\n"
	.string "times,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "in the end,I chose\n"
	.string "to go with them."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87CDA9C_unk4
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "No offense,but\n"
	.string "if we let you go\n"
	.string "back to Dr.Wily,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "then you'd tell him\n"
	.string "we're coming for his\n"
	.string "precious Cybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You guys! Throw\n"
	.string "Baryl into the\n"
	.string "sea!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87CDA9C_unk5
	ts_mugshot_hide
	ts_msg_open
	.string "Wait!!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87CDA9C_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let Iris and Baryl\n"
	.string "go!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87CDA9C_unk7
	ts_mugshot_show 0x2F
	ts_msg_open
	.string "L-Lan... Hikari..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87CDA9C_unk8
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "*snicker,snicker...*\n"
	.string "What a persistent\n"
	.string "little brat."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Stop where you are!\n"
	.string "Don't take another\n"
	.string "step!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Get any closer,and\n"
	.string "your girlfriend goes\n"
	.string "bye bye into the sea!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The sea here is real\n"
	.string "famous for its high\n"
	.string "tides."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder what would\n"
	.string "happen to her if she\n"
	.string "fell in...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Tee,hee,hee!!\n"
	.string "You get the picture,\n"
	.string "don't you?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87CDA9C_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Nngh...!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87CDA9C_unk10
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "What are you waiting\n"
	.string "for!? Hurry up and\n"
	.string "throw Baryl in!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_play_bgm 0xC, 0x0
	ts_jump 11

	def_text_script CompText87CDA9C_unk11
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Alright,alright,\n"
	.string "I got it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87CDA9C_unk12
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "I don't dirty my\n"
	.string "hands in this sort\n"
	.string "of thing usually..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87CDA9C_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Stoooooop!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Someone... Please\n"
	.string "help Baryl..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87CDA9C_unk14
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "You're so silly.\n"
	.string "There's no one\n"
	.string "around!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No one is going to\n"
	.string "come help you this\n"
	.string "time!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87CDA9C_unk15
	ts_mugshot_hide
	ts_msg_open
	.string "And sometimes,\n"
	.string "someone does come!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_play_bgm 0x63, 0x0
	.string "Mmph!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87CDA9C_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mr.Mach!!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0xE, 0x0
	ts_end

	def_text_script CompText87CDA9C_unk17
	ts_mugshot_show 0x12
	ts_msg_open
	.string "You still treat\n"
	.string "me like a teacher..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87CDA9C_unk18
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "It's the traitor.\n"
	.string "What do you want!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87CDA9C_unk19
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Traitor? Which one\n"
	.string "of us is the real\n"
	.string "traitor?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And what's this?\n"
	.string "There's only 3 of\n"
	.string "you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess failures are\n"
	.string "destined to continue\n"
	.string "to fail."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87CDA9C_unk20

	def_text_script CompText87CDA9C_unk21
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "You're one annoying\n"
	.string "loudmouth,popping up\n"
	.string "from out of nowhere!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll throw you into\n"
	.string "the ocean along with\n"
	.string "Baryl!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87CDA9C_unk22
	ts_mugshot_show 0x12
	ts_msg_open
	.string "You've already\n"
	.string "forgotten...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87CDA9C_unk23
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x78, 0x1
	.string "*crash!! "
	ts_wait 0xF, 0x0
	ts_sound_play00 0x79, 0x1
	.string "bonk!!*"
	ts_wait 0xF, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87CDA9C_unk24
	ts_mugshot_show 0x12
	ts_msg_open
	.string "I was always the\n"
	.string "strongest out of\n"
	.string "all of us!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87CDA9C_unk25
	ts_mugshot_show 0x12
	ts_msg_open
	.string "... Yuika,hand Baryl\n"
	.string "and the girl over to\n"
	.string "me now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't want any-\n"
	.string "thing bad to happen\n"
	.string "to that girl..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 26

	def_text_script CompText87CDA9C_unk26
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Grrrr!\n"
	.string "I'll remember this!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script CompText87CDA9C_unk27
	ts_mugshot_show 0x12
	ts_msg_open
	.string "And I'm sure those\n"
	.string "two over there will,\n"
	.string "too."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 28

	def_text_script CompText87CDA9C_unk28
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Tsk!!"
	ts_key_wait 0x0
	ts_sound_fade_out 0x1F, 0x5
	ts_end

	def_text_script CompText87CDA9C_unk29
	ts_mugshot_show 0x0
	ts_msg_open
	.string "M-Mr.Mach..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 30

	def_text_script CompText87CDA9C_unk30
	ts_mugshot_show 0x12
	ts_msg_open
	ts_sound_play_bgm 0xD, 0x0
	.string "Mr.Mach,huh? I'm\n"
	.string "glad you still think\n"
	.string "of me as a teacher,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but Lan,I don't\n"
	.string "deserve to be\n"
	.string "treated like that."
	ts_key_wait 0x0
	ts_clear_msg
	.string "As long as I'm a\n"
	.string "member of WWW,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm just a horrible\n"
	.string "man who tricks his\n"
	.string "students..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 31

	def_text_script CompText87CDA9C_unk31
	ts_mugshot_show 0x0
	ts_msg_open
	.string "But you're not\n"
	.string "really evil in your\n"
	.string "heart!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think I sorta\n"
	.string "understand..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have a reason,so\n"
	.string "that's why you're\n"
	.string "doing this,right?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87CDA9C_unk32
	ts_mugshot_show 0x12
	ts_msg_open
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string " My daughter was\n"
	.string "born with a bad\n"
	.string "illness,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and she needed a\n"
	.string "very big operation\n"
	.string "or she would die."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But that operation\n"
	.string "was very expensive,\n"
	.string "so we didn't do it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Just as the illness\n"
	.string "seemed to be\n"
	.string "subsiding,she"
	ts_key_wait 0x0
	ts_clear_msg
	.string "suddenly fell very\n"
	.string "ill again,and needed\n"
	.string "the operation..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Around that time,a\n"
	.string "man came and paid\n"
	.string "for the operation."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That man was\n"
	.string "Dr.Wily."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 33

	def_text_script CompText87CDA9C_unk33
	ts_mugshot_show 0x0
	ts_msg_open
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string " So he made you\n"
	.string "join WWW for the\n"
	.string "operation..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "... Yes,and while I\n"
	.string "was a teacher at\n"
	.string "Cyber Academy,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I spied on Cain,\n"
	.string "and reported every-\n"
	.string "thing to Dr.Wily."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Mayor Cain?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "Cain and Dr.Wily\n"
	.string "were working\n"
	.string "together."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You knew that,\n"
	.string "didn't you?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I was spying on\n"
	.string "Cain because he\n"
	.string "couldn't be trusted."
	ts_key_wait 0x0
	ts_clear_msg
	.string "On your first day of\n"
	.string "school,that incident\n"
	.string "with BlastMan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That was because I\n"
	.string "was trying to hack\n"
	.string "Cain's computer."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I failed because\n"
	.string "you stopped\n"
	.string "BlastMan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But now that I think\n"
	.string "about it,maybe it\n"
	.string "was a good thing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you hadn't\n"
	.string "defeated BlastMan\n"
	.string "then,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "all of my beloved\n"
	.string "students could've\n"
	.string "lost their lives..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "........."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 34

	def_text_script CompText87CDA9C_unk34
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Anyway,no reason can\n"
	.string "erase all the things\n"
	.string "I've done."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 35

	def_text_script CompText87CDA9C_unk35
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Why don't you and\n"
	.string "Baryl join me and\n"
	.string "fight Dr.Wily?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's not too late!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 36

	def_text_script CompText87CDA9C_unk36
	ts_mugshot_show 0x12
	ts_msg_open
	.string "I'm sorry...\n"
	.string "I can't join you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What WWW did is\n"
	.string "the only reason she\n"
	.string "is alive now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "WWW is a criminal\n"
	.string "organization,yes..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "but to me,it is my\n"
	.string "daughter's savior."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I have to think\n"
	.string "about Baryl..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Baryl...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How do you know\n"
	.string "Baryl,Mr.Mach?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "When I was a college\n"
	.string "student,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I stayed in Netopia\n"
	.string "for a while to learn\n"
	.string "Karate..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was looking for\n"
	.string "strong people to\n"
	.string "fight,and I found"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Netopia team\n"
	.string "captain,and I fought\n"
	.string "him one on one."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I thought I was\n"
	.string "great,being my\n"
	.string "college's champion,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but I was beaten..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... It was so\n"
	.string "embarrassing."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "That person..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "Yes,that was Baryl."
	ts_key_wait 0x0
	ts_clear_msg
	.string "After the fight,I\n"
	.string "asked him for a\n"
	.string "favor."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I asked to train\n"
	.string "under him for a\n"
	.string "whole year."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I didn't want\n"
	.string "to learn only about\n"
	.string "how to fight."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wanted to learn\n"
	.string "how to have faith\n"
	.string "in myself,in life."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's what I really\n"
	.string "wanted to learn,and\n"
	.string "he took me in..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're close in age,\n"
	.string "and that's why Baryl\n"
	.string "gained my trust."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And that's why I\n"
	.string "believe in him now,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and why I can't\n"
	.string "betray him..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure Baryl has\n"
	.string "his own reasons for\n"
	.string "joining WWW..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "but he just can't\n"
	.string "tell me..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 37

	def_text_script CompText87CDA9C_unk37
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mr.Mach..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What will you\n"
	.string "do now?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 38

	def_text_script CompText87CDA9C_unk38
	ts_mugshot_show 0x12
	ts_msg_open
	.string "I wanted to be with\n"
	.string "everyone at\n"
	.string "graduation,but..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No,I knew it would\n"
	.string "turn out like this\n"
	.string "after I joined WWW."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I probably won't see\n"
	.string "you ever again..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 39

	def_text_script CompText87CDA9C_unk39
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mr.Mach!\n"
	.string "Don't go!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87CDA9C_unk40
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Take care,my beloved\n"
	.string "student..."
	ts_key_wait 0x0
	ts_sound_fade_out 0x1F, 0x5
	ts_end

	def_text_script CompText87CDA9C_unk41
	ts_msg_open
	.string "And then Mr.Mach and\n"
	.string "Baryl left..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe if I were a\n"
	.string "little older,I could\n"
	.string "have done something,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but as a kid,all I\n"
	.string "could do was say\n"
	.string "good-bye..."
	ts_key_wait 0x0
	ts_end

	