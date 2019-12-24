	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B4730::
	.word 0x127300

	text_archive_start

	def_text_script CompText87B4730_unk0
	ts_mugshot_hide
	ts_msg_open
	.string "A few days later,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "just as the chaos\n"
	.string "from the Cybeast"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "incident was\n"
	.string "fading..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk1
	ts_control_lock
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,school's finally\n"
	.string "over!"
	ts_wait frames=0x2D
	ts_clear_msg
	.string "I'm gonna finally\n"
	.string "get on the Net\n"
	.string "and..."
	ts_wait frames=0x2D
	ts_end

	def_text_script CompText87B4730_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Huh? I wonder\n"
	.string "what's up?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Hey,Mick,what's\n"
	.string "going on?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk4
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hey,good timing!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Someone just hung\n"
	.string "up an interesting\n"
	.string "flyer!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should check it\n"
	.string "out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Huh,let's see..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're recruiting\n"
	.string "an Operator Navi for\n"
	.string "the Expo Pavilion?"
	ts_key_wait any=0x0
	ts_store_timer [
		timer: 0x0,
		value: 0x9,
	]
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0xA,
	]
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87B4730_unk6
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "That's what it\n"
	.string "looks like."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know how they're\n"
	.string "opening that Expo\n"
	.string "really soon,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It sounds like they\n"
	.string "made the main\n"
	.string "pavilion really big."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And they're gonna\n"
	.string "leave the tour\n"
	.string "guiding to a Navi."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,a Navi using\n"
	.string "a CopyBot,that is."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87B4730_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... So,you mean"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a Navi that is\n"
	.string "always being\n"
	.string "operated by a human,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "is gonna get to\n"
	.string "\"operate\" humans for\n"
	.string "a change?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Heh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What a neat idea!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... By the way,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "what's a pavilion?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87B4730_unk9
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Why don't you know,\n"
	.string "you dummy!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I bet it's because\n"
	.string "you're always\n"
	.string "sleeping in class!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87B4730_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Hmph."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87B4730_unk11
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "A pavilion is..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "well,it's related\n"
	.string "to a lion..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87B4730_unk12
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "That's totally\n"
	.string "wrong,Mick..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A pavilion isn't\n"
	.string "something that's\n"
	.string "alive!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And don't you start\n"
	.string "telling me it's only\n"
	.string "natural"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "for a human to\n"
	.string "take naps!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87B4730_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ha,ha,ha,ha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He got you good!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87B4730_unk14
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... Fine,then YOU\n"
	.string "tell me what it is!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87B4730_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... A pavilion is..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmm...it sounds like\n"
	.string "\"chameleon\",so maybe\n"
	.string "it's related...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87B4730_unk16
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's completely\n"
	.string "wrong,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A chameleon's a\n"
	.string "living thing,too,\n"
	.string "right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A pavilion is a\n"
	.string "really big building\n"
	.string "that is the symbol"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "of a large event\n"
	.string "like an Expo."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87B4730_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Hmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyway,so they want\n"
	.string "a Navi to give tours\n"
	.string "of that \"building\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sounds neat,\n"
	.string "doesn't it?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I mean,if it's your\n"
	.string "Navi,you get to go\n"
	.string "as much as you want!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm gonna sign up\n"
	.string "right now!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87B4730_unk18
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Looks like there's\n"
	.string "some sort of really\n"
	.string "hard fight you've"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "gotta pass first.\n"
	.string "The selection test\n"
	.string "is being held at"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the CentralArea\n"
	.string "NetCafe today!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey!\n"
	.string "It's already\n"
	.string "started!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87B4730_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What? Then what are\n"
	.string "we doing standing\n"
	.string "around here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gotta hurry!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Go,go!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk20
	ts_control_lock
	ts_mugshot_hide
	ts_msg_open
	.string "Stop,young man!!"
	ts_sound_stop
	ts_wait frames=0x3C
	ts_end

	def_text_script CompText87B4730_unk21
	ts_mugshot_show mugshot=0x22
	ts_msg_open
	.string "Don't you know\n"
	.string "you're not allowed\n"
	.string "to run in the halls?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hmph,little kids\n"
	.string "who don't follow the\n"
	.string "rules get detention!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87B4730_unk22
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Uh,sorry..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Um... Who are you?\n"
	.string "Are you someone's\n"
	.string "older sister...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87B4730_unk23
	ts_mugshot_show mugshot=0x22
	ts_msg_open
	.string "... Sister?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ha,ha,ha,ha!"
	ts_sound_play_bgm track=0x5
	.string "\n"
	.string "You're a funny\n"
	.string "little guy!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess with the\n"
	.string "way I dress,I don't\n"
	.string "look it,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm actually the\n"
	.string "Home Ec teacher,\n"
	.string "Ms.Fahran!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=24

	def_text_script CompText87B4730_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What!?\n"
	.string "You're a teacher!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87B4730_unk25
	ts_mugshot_show mugshot=0x22
	ts_msg_open
	.string "Well,it's OK if\n"
	.string "you didn't know."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I just started\n"
	.string "here very recently."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And I never was\n"
	.string "very good at looking\n"
	.string "like a teacher."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess it's only\n"
	.string "natural that you\n"
	.string "couldn't tell."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=26

	def_text_script CompText87B4730_unk26
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,you kinda look\n"
	.string "more like a chef\n"
	.string "than a teacher..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87B4730_unk27
	ts_mugshot_show mugshot=0x22
	ts_msg_open
	.string "Ah,that's because\n"
	.string "I've always\n"
	.string "loved cooking!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm actually from\n"
	.string "YumLand -- born and\n"
	.string "raised!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I was a chef in\n"
	.string "YumLand for a\n"
	.string "long time."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You may not know it,\n"
	.string "but I was even a\n"
	.string "little famous there!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87B4730_unk28
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Then...why did\n"
	.string "you come here...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=29

	def_text_script CompText87B4730_unk29
	ts_mugshot_show mugshot=0x22
	ts_msg_open
	.string "I'm really\n"
	.string "interested in\n"
	.string "this country's food!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "From what I've\n"
	.string "tasted,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "there's all sorts\n"
	.string "of flavors in the\n"
	.string "ingredients here"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that don't exist in\n"
	.string "YumLand's native\n"
	.string "foods!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=30

	def_text_script CompText87B4730_unk30
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "So you're studying\n"
	.string "food!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That sounds like so\n"
	.string "much fun!\n"
	.string "Unlike math..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=31

	def_text_script CompText87B4730_unk31
	ts_mugshot_show mugshot=0x22
	ts_msg_open
	.string "When you come to\n"
	.string "my room,I guess I\n"
	.string "can share a"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "delicious recipe or\n"
	.string "two while I lecture\n"
	.string "you on rules!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=32

	def_text_script CompText87B4730_unk32
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You'll really teach\n"
	.string "me!? Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=33

	def_text_script CompText87B4730_unk33
	ts_mugshot_show mugshot=0x22
	ts_msg_open
	.string "Sure,any time!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... But,I'll be out\n"
	.string "researching soon,so\n"
	.string "I won't be around."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "After I get back,\n"
	.string "let's eat some great\n"
	.string "YumLand food,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going to get\n"
	.string "going now,but\n"
	.string "remember,no running!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk34
	ts_control_lock
	ts_mugshot_hide
	ts_msg_open
	.string "Grasshopper!!"
	ts_sound_stop
	ts_wait frames=0x3C
	ts_end

	def_text_script CompText87B4730_unk35
	ts_mugshot_show mugshot=0x23
	ts_msg_open
	.string "... One so young\n"
	.string "should not run\n"
	.string "where he shouldn't."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Speed is not the\n"
	.string "answer to all\n"
	.string "things,but rather,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "looking around\n"
	.string "slowly may be the\n"
	.string "key..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is a most\n"
	.string "valuable lesson,\n"
	.string "grasshopper."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ho,ho,ho,ho."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk36
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... What's with\n"
	.string "this old fogey!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=37

	def_text_script CompText87B4730_unk37
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "No idea."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk38
	ts_mugshot_show mugshot=0x23
	ts_msg_open
	.string "... Hai-ya!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk39
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Waaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=40

	def_text_script CompText87B4730_unk40
	ts_mugshot_show mugshot=0x23
	ts_msg_open
	.string "I am not an\n"
	.string "old fogey."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x5
	.string "I am known as\n"
	.string "Master Feng-Tian."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm just a humble\n"
	.string "social studies\n"
	.string "teacher."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=41

	def_text_script CompText87B4730_unk41
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "That's neat and\n"
	.string "all,but what was\n"
	.string "that move just now?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=42

	def_text_script CompText87B4730_unk42
	ts_mugshot_show mugshot=0x23
	ts_msg_open
	.string "Ho,ho,ho,ho"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I was one with\n"
	.string "the wind..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that's all."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=43

	def_text_script CompText87B4730_unk43
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "\"One with the wind\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sounds like a bunch\n"
	.string "of mumbo-jumbo..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=44

	def_text_script CompText87B4730_unk44
	ts_mugshot_show mugshot=0x23
	ts_msg_open
	.string "Ho,ho,ho,ho"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I see you lack\n"
	.string "understanding..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you seek me out,\n"
	.string "I am always willing\n"
	.string "to teach you,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I will go on a trip\n"
	.string "soon,so you must\n"
	.string "be on your own."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When I get back,\n"
	.string "we can take our\n"
	.string "time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ho,ho,ho,ho!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk45
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... Hey,we can't\n"
	.string "just stand around\n"
	.string "now!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=46

	def_text_script CompText87B4730_unk46
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,that's right!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we don't hurry,we\n"
	.string "won't be able to\n"
	.string "enter the test!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B4730_unk47

	def_text_script CompText87B4730_unk48

	def_text_script CompText87B4730_unk49

	def_text_script CompText87B4730_unk50

	def_text_script CompText87B4730_unk51

	