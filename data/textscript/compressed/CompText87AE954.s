	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AE954::
	.word 0x101700

	text_archive_start

	def_text_script CompText87AE954_unk0
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Oh!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You really put a\n"
	.string "lot of effort into\n"
	.string "this!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've been waiting\n"
	.string "to see how you'd\n"
	.string "do!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I hope you've\n"
	.string "learned there's no\n"
	.string "sleeping in class!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87AE954_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yes,Mr.Mach..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87AE954_unk2
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Good. I'm glad you\n"
	.string "understand."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know,people make\n"
	.string "mistakes all the\n"
	.string "time."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But we've gotta keep\n"
	.string "moving forward!\n"
	.string "Wahahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: 0x3,
		jumpIfCybeastFalzar: 0x4,
	]

	def_text_script CompText87AE954_unk3
	ts_mugshot_hide
	ts_msg_open
	.string "Yo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "U-Um...\n"
	.string "Hello..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk5
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Oh,perfect timing!\n"
	.string "Why don't you come\n"
	.string "on over here!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk6
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x19,
	]
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "So you're the new\n"
	.string "student teacher!\n"
	.string "Nice to meet you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87AE954_unk7
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "The name's Mr.Match."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87AE954_unk8
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Mr.Match,huh...\n"
	.string "Cool name!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87AE954_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mr.Match...\n"
	.string "Where've I heard\n"
	.string "that before...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk10
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x1D,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah! It's you,Match!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What are you doing\n"
	.string "here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87AE954_unk11
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "...... Now,why is\n"
	.string "this kid's voice\n"
	.string "kinda familiar..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk12
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "... Heh,\n"
	.string "if it isn't little\n"
	.string "Lan Hikari!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87AE954_unk13
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "You two know\n"
	.string "each other?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk14
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x24,
	]
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "Heheheh...\n"
	.string "Yeah,that's right!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've known this kid\n"
	.string "since he was small."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's practically my\n"
	.string "little bro!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87AE954_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Little bro? What are\n"
	.string "you..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk16
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x25,
	]
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "*whisper*\n"
	.string "(Relax,I'm not up to\n"
	.string " anything!)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Starting today,I get\n"
	.string "to teach you kids"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and do some research\n"
	.string "for school while I'm\n"
	.string "at it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ah,it's not a great\n"
	.string "place or nothing,but\n"
	.string "I'm in college now!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87AE954_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "So,what exactly are\n"
	.string "you researching?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87AE954_unk18
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "What am I... Don't\n"
	.string "you already know!?\n"
	.string "Fire! It's fire!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm trying to make a\n"
	.string "system that lets any\n"
	.string "Navi use fire!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87AE954_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Huh... So that's\n"
	.string "what you're up to..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87AE954_unk20
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "Hey,hey,don't give\n"
	.string "me that look!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I meant what I said!\n"
	.string "I'm gonna put all\n"
	.string "I've got into this!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh yeah,Lan,I wanna\n"
	.string "show ya something\n"
	.string "after this."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll be in the lab\n"
	.string "in the back. Pop on\n"
	.string "in before ya go,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll show ya how\n"
	.string "a pro handles fire!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87AE954_unk21
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Oh,look at the time!\n"
	.string "I've got to get\n"
	.string "going now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If I'm even a second\n"
	.string "late,my wife gets\n"
	.string "really scary!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wahahahaha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk22
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Bye Mr.Mach!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... What are you\n"
	.string "really up to,Match?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk23
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x2D,
	]
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "What I'm up to?\n"
	.string "I already told you!\n"
	.string "Nothing!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just go get your\n"
	.string "stuff,and then come\n"
	.string "see me,alright?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk24
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x2E,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I can't believe\n"
	.string "Match is gonna be\n"
	.string "my teacher..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But maybe he's\n"
	.string "really turned over\n"
	.string "a new leaf..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Guess I'll give his\n"
	.string "class a try..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=51

	def_text_script CompText87AE954_unk25
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "So you're the new\n"
	.string "student teacher!\n"
	.string "Nice to meet you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=26

	def_text_script CompText87AE954_unk26
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "My name is Shuko.\n"
	.string "It's a pleasure to\n"
	.string "be working with you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87AE954_unk27
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Same here,Ms.Shuko!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87AE954_unk28
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah! Shuko!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk29
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Oh,hello Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I didn't expect to\n"
	.string "see you here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=30

	def_text_script CompText87AE954_unk30
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "That's what I was\n"
	.string "gonna say!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why are you here,\n"
	.string "Shuko?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=31

	def_text_script CompText87AE954_unk31
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "This school sponsors\n"
	.string "research into a\n"
	.string "system that allows"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "any Navi to use the\n"
	.string "power of water,and I\n"
	.string "wanted to join in."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,that's not\n"
	.string "all..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want to be a virus\n"
	.string "busting teacher who\n"
	.string "uses water power."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=32

	def_text_script CompText87AE954_unk32
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You want to be a\n"
	.string "teacher!? Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I would've never\n"
	.string "guessed..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=33

	def_text_script CompText87AE954_unk33
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "I wasn't really\n"
	.string "sure myself..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but the pay is\n"
	.string "pretty good,so..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=34

	def_text_script CompText87AE954_unk34
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "O-Oh,I see..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=35

	def_text_script CompText87AE954_unk35
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "You two know\n"
	.string "each other?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk36
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Lan really helped me\n"
	.string "out one time."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Oh,before I\n"
	.string "forget!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk37
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Lan,do you think\n"
	.string "you can take a look\n"
	.string "at my class?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=38

	def_text_script CompText87AE954_unk38
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You want me to!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=39

	def_text_script CompText87AE954_unk39
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Yeah! I'm sure with\n"
	.string "you there,it'll be a\n"
	.string "good practice run!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=40

	def_text_script CompText87AE954_unk40
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Practice run...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Uh,when?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=41

	def_text_script CompText87AE954_unk41
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Umm...\n"
	.string "Are you free after\n"
	.string "this,Lan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=42

	def_text_script CompText87AE954_unk42
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm free,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=43

	def_text_script CompText87AE954_unk43
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "OK,then!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll be in that room\n"
	.string "over there,so come\n"
	.string "on by later,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=44

	def_text_script CompText87AE954_unk44
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Oh,look at the time!\n"
	.string "I've got to get\n"
	.string "going now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My daughter whines\n"
	.string "at me if I'm even\n"
	.string "a second late!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk45
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "OK,I'll see you\n"
	.string "later,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk46
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Shuko has really\n"
	.string "changed..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "She's got a more\n"
	.string "positive aura now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x199
	.string "*clunk,crash!!*"
	ts_wait frames=0x2D
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=47

	def_text_script CompText87AE954_unk47
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "That huuurt..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Who's brilliant idea\n"
	.string "was it to put a\n"
	.string "chair there!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=48

	def_text_script CompText87AE954_unk48
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I take that back...\n"
	.string "She's still the same\n"
	.string "Shuko."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=49

	def_text_script CompText87AE954_unk49
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Umm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gotta look on the\n"
	.string "bright side at a\n"
	.string "time like this!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ouch,ouch,ouch..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE954_unk50
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm a little uneasy\n"
	.string "about Shuko being a\n"
	.string "teacher,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a class about\n"
	.string "busting viruses\n"
	.string "using water"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "sounds really\n"
	.string "interesting!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=51

	def_text_script CompText87AE954_unk51
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Looks like today's\n"
	.string "a good day for\n"
	.string "studying,huh,Lan?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ha,ha,ha!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=52

	def_text_script CompText87AE954_unk52
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,and I'm ready\n"
	.string "to learn!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go get my\n"
	.string "stuff from the\n"
	.string "classroom first!"
	ts_key_wait any=0x0
	ts_end

	