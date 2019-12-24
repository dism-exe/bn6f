	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CCE34::
	.word 0x143C00

	text_archive_start

	def_text_script CompText87CCE34_unk0
	ts_msg_open
	.string "After school a few\n"
	.string "days after the fight\n"
	.string "with Colonel..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk1
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hey,Lan,do you know\n"
	.string "why Mr.Mach's not\n"
	.string "coming to school?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87CCE34_unk2
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Oh,I've wanted to\n"
	.string "know why,too!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,you know\n"
	.string "something,don't you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CCE34_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I-I don't know\n"
	.string "anything..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Mach's probably\n"
	.string "got a problem he's\n"
	.string "gotta deal with."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87CCE34_unk4
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hmmmm?\n"
	.string "Is that right...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87CCE34_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "(I can't just tell\n"
	.string " them Mr.Mach's a\n"
	.string " part of WWW...)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87CCE34_unk6
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xD3
	.string "*wham!!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x63
	ts_jump target=7

	def_text_script CompText87CCE34_unk7
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	ts_mugshot_animation animation=0x2
	.string "W-What was that!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk8
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	ts_sound_play_bgm track=0x2
	.string "Hiiii!\n"
	.string "And how is everyone\n"
	.string "today?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87CCE34_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You guys!\n"
	.string "You're the ex-WWW\n"
	.string "people that"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "joined up with the\n"
	.string "Mayor,right!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87CCE34_unk10
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Ex-WWW?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Stop calling us\n"
	.string "that!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We are our very own\n"
	.string "crime organization\n"
	.string "now,thank you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Our name is..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...all together\n"
	.string "now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yuika's Lovelies!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87CCE34_unk11
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "The Justice Club!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87CCE34_unk12
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Cloudy Bombers!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87CCE34_unk13
	ts_sound_play_bgm track=0x63
	ts_mugshot_hide
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk14
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "What's with you!? I\n"
	.string "thought we agreed\n"
	.string "on MY name!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk15
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "And just what is so\n"
	.string "\"lovely\" about us!?\n"
	.string "That's so girly!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And since when were\n"
	.string "you the leader!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87CCE34_unk16
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "I'm superior to all\n"
	.string "of you! Therefore,it\n"
	.string "is only natural!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You guys can't do\n"
	.string "anything,so I'm just\n"
	.string "giving you a hand!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should be bowing\n"
	.string "to me and calling me\n"
	.string "Queen Yuika!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk17
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Um,we're in the\n"
	.string "middle of a mission,\n"
	.string "so please calm down."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "After all,we,the\n"
	.string "Justice Club,have to\n"
	.string "act as a team..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk18
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Yuika's Lovelies!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87CCE34_unk19
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Cloudy Bombers!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87CCE34_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I don't care what\n"
	.string "your team name is!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What do you want!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk21
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	ts_sound_play_bgm track=0x2
	.string "Oh,yeah...that's\n"
	.string "right..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I almost forgot why\n"
	.string "we came here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan Hikari! We came\n"
	.string "here to ask you a\n"
	.string "few questions!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87CCE34_unk22
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Questions!?\n"
	.string "That's it!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87CCE34_unk23
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Yup,yup!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Where is your little\n"
	.string "girlfriend!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=24

	def_text_script CompText87CCE34_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "G-Girlfriend!?!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87CCE34_unk25
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "You know,that girl\n"
	.string "that saved you from\n"
	.string "Colonel in Sky Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=26

	def_text_script CompText87CCE34_unk26
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You mean Iris!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't know what\n"
	.string "you're up to,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm not going to\n"
	.string "tell you where she\n"
	.string "is!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87CCE34_unk27
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Hmm... Just as we\n"
	.string "thought,you won't\n"
	.string "answer..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I figured you\n"
	.string "wouldn't make this\n"
	.string "easy."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't usually like\n"
	.string "to be rough with\n"
	.string "people,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "JudgeMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87CCE34_unk28
	ts_mugshot_show mugshot=0x55
	ts_msg_open
	.string "Sir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=29

	def_text_script CompText87CCE34_unk29
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "W-Wha,wha,what!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk30
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Green Town's\n"
	.string "Punishment Robots!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "B-B-But why are\n"
	.string "they here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=31

	def_text_script CompText87CCE34_unk31
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=32

	def_text_script CompText87CCE34_unk32
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "*snicker,snicker...*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know,even if\n"
	.string "there were more of\n"
	.string "you,do you really"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "think you can fight\n"
	.string "this many bots and\n"
	.string "save your friends!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=33

	def_text_script CompText87CCE34_unk33
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "You're not going to\n"
	.string "make fools of us\n"
	.string "this time!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now,you wouldn't\n"
	.string "want to see your\n"
	.string "friends get hurt,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "would you? So hurry\n"
	.string "up and tell us where\n"
	.string "the girl is!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=34

	def_text_script CompText87CCE34_unk34
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I don't know where\n"
	.string "she is!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=35

	def_text_script CompText87CCE34_unk35
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Tee,hee..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe the Punishment\n"
	.string "Robot can gently\n"
	.string "help you remember..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk36
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Waaaaaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=37

	def_text_script CompText87CCE34_unk37
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Well?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Those sealed lips of\n"
	.string "yours might be a\n"
	.string "little looser now..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=39

	def_text_script CompText87CCE34_unk38

	def_text_script CompText87CCE34_unk39
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Waaaaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=40

	def_text_script CompText87CCE34_unk40
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Hmmm...\n"
	.string "I guess you really\n"
	.string "don't know..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Punishment Robot,\n"
	.string "stop!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk41
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=42

	def_text_script CompText87CCE34_unk42
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=43

	def_text_script CompText87CCE34_unk43
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "But how can you not\n"
	.string "know...? Oh,well,it\n"
	.string "doesn't matter."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll just take\n"
	.string "MegaMan again,if\n"
	.string "you don't mind."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk44
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hold it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't you lay a\n"
	.string "finger on Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=45

	def_text_script CompText87CCE34_unk45
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "We'll protect Lan\n"
	.string "with everything we\n"
	.string "have!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=46

	def_text_script CompText87CCE34_unk46
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Oh,I'm so touched by\n"
	.string "their friendship\n"
	.string "that I'm crying..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Punishment Robots,\n"
	.string "give these boys what\n"
	.string "they deserve!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=47

	def_text_script CompText87CCE34_unk47
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Nrrrgh...!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=48

	def_text_script CompText87CCE34_unk48
	ts_mugshot_hide
	ts_msg_open
	.string "Stop!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87CCE34_unk49
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "I am here...\n"
	.string "Let the others go."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=50

	def_text_script CompText87CCE34_unk50
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "How nice! The girl\n"
	.string "comes out of hiding\n"
	.string "all by herself!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,girlie,\n"
	.string "you're coming with\n"
	.string "us!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Punishment Robots!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk51
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Don't try any funny\n"
	.string "business or you'll\n"
	.string "get hurt!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=52

	def_text_script CompText87CCE34_unk52
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "I will not resist,\n"
	.string "so please,remove\n"
	.string "these robots."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=53

	def_text_script CompText87CCE34_unk53
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "And if I say no?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=54

	def_text_script CompText87CCE34_unk54
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "Punishment Robots,\n"
	.string "please step aside..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk55
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "W-What!?\n"
	.string "What are you doing!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're not supposed\n"
	.string "to move on your own!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hurry up and\n"
	.string "surround her!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=56

	def_text_script CompText87CCE34_unk56
	ts_mugshot_hide
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=57

	def_text_script CompText87CCE34_unk57
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "W-What's with\n"
	.string "them...!?!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk58
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "... Lan,I'm sorry."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Alright,I'm\n"
	.string "ready to go."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=59

	def_text_script CompText87CCE34_unk59
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Ugh,you're the type\n"
	.string "of person I hate\n"
	.string "the most..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're so full of...\n"
	.string "\"courage\"...\n"
	.string "Yuck!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk60
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Nnngh...\n"
	.string "Uurrgnnnn..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=61

	def_text_script CompText87CCE34_unk61
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xCF
	.string "*crash!!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCE34_unk62
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Lan! Are you OK!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=63

	def_text_script CompText87CCE34_unk63
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Where are they!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=64

	def_text_script CompText87CCE34_unk64
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Well... Um..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=65

	def_text_script CompText87CCE34_unk65
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_sound_play_bgm track=0xC
	.string "What...!?\n"
	.string "Iris got what!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "Sorry,Lan...\n"
	.string "We couldn't\n"
	.string "do anything..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "It doesn't matter!\n"
	.string "We've gotta go help\n"
	.string "her now!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Um,so do we have\n"
	.string "a clue as to where\n"
	.string "they went?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "We don't know Lan.\n"
	.string "They could be\n"
	.string "anywhere by now..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "... Yeah..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=66

	def_text_script CompText87CCE34_unk66
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "... Oh,hey!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Ah,nevermind..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What!?\n"
	.string "Did you think of\n"
	.string "something!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "... N-No,it's just\n"
	.string "that... Well..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "We're running out of\n"
	.string "time,Tab!\n"
	.string "Spit it out!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "I don't know if this\n"
	.string "is a clue or\n"
	.string "anything,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "on the Undernet,\n"
	.string "there's this BBS\n"
	.string "that's got all sorts"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "of info... Or at\n"
	.string "least that's what\n"
	.string "I've heard..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Most of the stuff\n"
	.string "is about pretty bad\n"
	.string "things so..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I was wondering if\n"
	.string "maybe we could find\n"
	.string "something there..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=67

	def_text_script CompText87CCE34_unk67
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Of course!\n"
	.string "The Undernet BBS!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's so obvious!\n"
	.string "I'm sure I'll find\n"
	.string "something there!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going to go\n"
	.string "take a look!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=68

	def_text_script CompText87CCE34_unk68
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "B-But the Undernet\n"
	.string "is dangerous!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I can't sacrifice\n"
	.string "Iris' life because\n"
	.string "it's dangerous!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll be alright!\n"
	.string "I'll get her back!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Alright..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But be careful,\n"
	.string "OK...?"
	ts_key_wait any=0x0
	ts_end

	