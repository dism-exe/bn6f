	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D676C::
	.word 0x127200

	text_archive_start

	def_text_script CompText87D676C_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "After what happened\n"
	.string "in Cyber City,\n"
	.string "Dad's research was"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "canceled,so that's\n"
	.string "why we came back\n"
	.string "here to ACDC Town."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it's weird to\n"
	.string "see you and Tab here\n"
	.string "in ACDC Town,Mick."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87D676C_unk1
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "ACDC Town isn't\n"
	.string "really as city-like\n"
	.string "as Central Town,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it's not a bad place\n"
	.string "to live,I guess."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x57
	.string "Ah,the air here is\n"
	.string "so clean!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87D676C_unk2
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Wow,so you grew up\n"
	.string "in this unpolluted\n"
	.string "town,Lan?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's so nice that\n"
	.string "you can smell the\n"
	.string "fresh earth!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "It's great!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87D676C_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I can't tell if\n"
	.string "you're praising or\n"
	.string "making fun of ACDC."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Hahaha... It may not\n"
	.string "seem like it,but I\n"
	.string "think it's praise..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87D676C_unk4
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's about time we\n"
	.string "had that NetBattle!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Alright!\n"
	.string "Fine with me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87D676C_unk5
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Hey,that's right!\n"
	.string "Lan,you've gotta\n"
	.string "battle me too!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x39
	.string "Rrr! Yeah,a battle!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk6
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hey,I called it\n"
	.string "first,Dex!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk7
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "No way!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've been Lan's\n"
	.string "rival for forever!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I don't care which\n"
	.string "one of you I battle\n"
	.string "first."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My head's spinning\n"
	.string "from your arguing..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87D676C_unk9
	ts_mugshot_hide
	ts_msg_open
	.string "Hmph.\n"
	.string "You guys never grow\n"
	.string "up..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk10
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "I can't tell that\n"
	.string "you've moved up to\n"
	.string "junior high school."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87D676C_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Chaud!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Did you have a\n"
	.string "graduation ceremony,\n"
	.string "too?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D676C_unk12
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Yeah,sort of..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D676C_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hey,what's wrong?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You came by to\n"
	.string "join in on the\n"
	.string "festivities,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87D676C_unk14
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Hmph,as a matter of\n"
	.string "fact,no."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I came here to tell\n"
	.string "you a few things and\n"
	.string "maybe clear some up."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "... Like what?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4
	.string "Dr.Wily woke up."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Right now,he's being\n"
	.string "very cooperative in\n"
	.string "giving us answers."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That,and he wanted\n"
	.string "to thank you..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D676C_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I see..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk16
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Sounds like Dr.Wily\n"
	.string "has finally let his\n"
	.string "past go."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk17
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "I think the \"Iris\"\n"
	.string "in his heart has\n"
	.string "come back to him."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87D676C_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,I guess so..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87D676C_unk19
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Haaah,but you know,\n"
	.string "being junior high\n"
	.string "students means..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we can't just\n"
	.string "NetBattle\n"
	.string "all the time,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and the stuff we\n"
	.string "learn's gonna get\n"
	.string "tougher..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x39
	.string "I'm worried I won't\n"
	.string "understand all your\n"
	.string "homework."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87D676C_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "But it's not all\n"
	.string "bad! We'll make new\n"
	.string "friends,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and we'll have lots\n"
	.string "of fun times,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,yeah,where's\n"
	.string "everybody going for\n"
	.string "junior high?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Dex,Mayl,and I are\n"
	.string "going to Den Junior\n"
	.string "High."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87D676C_unk21
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "I'm going to the\n"
	.string "DenCity School for\n"
	.string "Girls!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Our schools are kind\n"
	.string "of far away,but we\n"
	.string "can still do things!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87D676C_unk22
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "I'm going to Cyber\n"
	.string "Academy Junior High."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They've got a junior\n"
	.string "high and a high\n"
	.string "school there."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87D676C_unk23
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "I'm going there,too!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What about you,\n"
	.string "Chaud?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87D676C_unk25
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "I'm going to Netopia\n"
	.string "University."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've already\n"
	.string "graduated high\n"
	.string "school."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I probably won't\n"
	.string "be able to see you\n"
	.string "guys very often."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk26
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "W-Wow..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87D676C_unk27
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "U-University...?\n"
	.string "W-Wow...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D676C_unk28
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's gonna be sad\n"
	.string "with you gone to\n"
	.string "another country..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=29

	def_text_script CompText87D676C_unk29
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "I'm going to become\n"
	.string "a World-wide\n"
	.string "Official."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I will work in the\n"
	.string "international\n"
	.string "department."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What do you guys\n"
	.string "want to be in the\n"
	.string "future?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=30

	def_text_script CompText87D676C_unk30
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I want to be a\n"
	.string "scientist and do\n"
	.string "Net research."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want to make the\n"
	.string "Net grow bigger and\n"
	.string "bigger!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't know how\n"
	.string "much I can help,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm gonna work as\n"
	.string "hard as I can and do\n"
	.string "as much as I can!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=31

	def_text_script CompText87D676C_unk31
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Hmm,I see...\n"
	.string "Well,I have faith\n"
	.string "in you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2
	.string "I-I'm gonna be mayor\n"
	.string "of ACDC Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "I'll make AsterLand\n"
	.string "a chain store all\n"
	.string "over the country!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3
	.string "I'm going to make my\n"
	.string "dad's company even\n"
	.string "bigger!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "I'm gonna be an\n"
	.string "elementary school\n"
	.string "teacher!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1
	.string "I don't have any-\n"
	.string "thing I really want\n"
	.string "to do yet,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going to study\n"
	.string "many things and find\n"
	.string "something I like."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... But I want to...\n"
	.string "at the very least..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x1
	.string "... *blush*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_store_timer [
		timer: 0x1,
		value: 0x80,
	]
	ts_wait_o_w_var [
		variable: 0x1,
		value: 0x81,
	]
	ts_mugshot_show mugshot=0x0
	ts_mugshot_animation animation=0x2
	.string "... What? Is there\n"
	.string "something on my\n"
	.string "face?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk32
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Lan,you dummy!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "W-What!? What did\n"
	.string "I do!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "Hah... Looks like\n"
	.string "being oblivious is\n"
	.string "Lan's special trait."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Wahahahahaha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk33
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Oh yeah,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Didn't you get some\n"
	.string "big thing for\n"
	.string "graduation!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So what was it!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "I want to know,too!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "What? What?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk34
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Oh? You wanna see?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,then wait right\n"
	.string "here!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk35
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,you guys ready!?\n"
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string " Ta-da!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_control_lock
	ts_sound_disable_text_sfx
	.string "*clunk,"
	ts_sound_play00 track=0x176
	ts_wait frames=0x14
	.string "clunk*"
	ts_sound_play00 track=0x176
	ts_wait frames=0x14
	.string " ..."
	ts_wait frames=0x1E
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x154
	.string "*clunk!*"
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk36
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Congratulations,\n"
	.string "everyone!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Everyone,this is my\n"
	.string "older brother,Hub!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=37

	def_text_script CompText87D676C_unk37
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "You got a..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CopyBot?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=38

	def_text_script CompText87D676C_unk38
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah. This is the\n"
	.string "CopyBot Iris used."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's someone who\n"
	.string "wants me to have\n"
	.string "it...I guess..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=39

	def_text_script CompText87D676C_unk39
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Someone...\n"
	.string "You don't mean Ba..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string " Hmph,whatever."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=40

	def_text_script CompText87D676C_unk40
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Yeah..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk41
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's wrong,\n"
	.string "MegaMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=42

	def_text_script CompText87D676C_unk42
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I thought I heard\n"
	.string "Iris's voice just\n"
	.string "now..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk43
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "...Iris is probably\n"
	.string "watching over us\n"
	.string "from somewhere."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk44
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hey,everyone,let's\n"
	.string "go on the Net after\n"
	.string "this!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D676C_unk45
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Even though we'll\n"
	.string "have diferent\n"
	.string "schools and lives,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we'll always be\n"
	.string "friends,right!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=46

	def_text_script CompText87D676C_unk46
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Of course!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3
	.string "Like we wouldn't!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1
	.string "Always!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "I'm gonna be your\n"
	.string "friend until I\n"
	.string "trounce you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "Yup!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4
	.string "... Alright!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=47

	def_text_script CompText87D676C_unk47
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Come on,let's go!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_control_lock
	ts_text_speed delay=0x1
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "MegaMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	