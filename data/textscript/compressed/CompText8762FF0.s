	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8762FF0::
	.word 0xE5B00

	text_archive_start

	def_text_script CompText8762FF0_unk0
	ts_check_flag [
		flag: 0xC16,
		jumpIfTrue: CompText8762FF0_unk10_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCC9,
		jumpIfTrue: CompText8762FF0_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "... Hey,it's Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How are you doing!?\n"
	.string "Wow,this is a\n"
	.string "surprise!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Me? I'm fine,\n"
	.string "of course! Same old,\n"
	.string "same old!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But you know,after\n"
	.string "you left,it's been\n"
	.string "kinda lonely..."
	ts_key_wait any=0x0
	ts_flag_set flag=0xCC9
	ts_end

	def_text_script CompText8762FF0_unk1
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "How are you doing!?\n"
	.string "Wow,this is a\n"
	.string "surprise!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Me? I'm fine,\n"
	.string "of course! Same old,\n"
	.string "same old!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But you know,after\n"
	.string "you left,it's been\n"
	.string "kinda lonely..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk2
	ts_check_flag [
		flag: 0xC16,
		jumpIfTrue: CompText8762FF0_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCA,
		jumpIfTrue: CompText8762FF0_unk3_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Hey! "
	ts_wait frames=0xF
	.string "Hey! "
	ts_wait frames=0xF
	.string "Hey!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan! You're back!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hahaha......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have no idea what\n"
	.string "to say."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Um... Uh... Wow..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Uh,anyway,welcome\n"
	.string "back! I'm really\n"
	.string "glad to see you!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xCCA
	ts_end

	def_text_script CompText8762FF0_unk3
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Uh,anyway,welcome\n"
	.string "back! I'm really\n"
	.string "glad to see you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk4
	ts_check_flag [
		flag: 0xC16,
		jumpIfTrue: CompText8762FF0_unk12_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCB,
		jumpIfTrue: CompText8762FF0_unk5_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Ah,if it isn't Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What are you doing\n"
	.string "back so suddenly...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... You haven't\n"
	.string "changed a bit,have\n"
	.string "you?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it feels good to\n"
	.string "see you again! I was\n"
	.string "a little worried."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want you to be you\n"
	.string "and to be happy,no\n"
	.string "matter where you go!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_flag_set flag=0xCCB
	ts_end

	def_text_script CompText8762FF0_unk5
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "... You haven't\n"
	.string "changed a bit,have\n"
	.string "you?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it feels good to\n"
	.string "see you again! I was\n"
	.string "a little worried."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want you to be you\n"
	.string "and to be happy,no\n"
	.string "matter where you go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk6
	ts_check_flag [
		flag: 0xC16,
		jumpIfTrue: CompText8762FF0_unk13_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCC,
		jumpIfTrue: CompText8762FF0_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Oh,I thought it was\n"
	.string "you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're Lan Hikari,\n"
	.string "aren't you!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's been a while,\n"
	.string "huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,ACDC Town\n"
	.string "hasn't changed\n"
	.string "a bit,you know!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Er,I mean,other than\n"
	.string "you and your family\n"
	.string "not being here..."
	ts_key_wait any=0x0
	ts_flag_set flag=0xCCC
	ts_end

	def_text_script CompText8762FF0_unk7
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "It's been a while!\n"
	.string "Seeing you brings\n"
	.string "back memories..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How is your family?\n"
	.string "Is everyone well?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk8
	ts_check_flag [
		flag: 0xC16,
		jumpIfTrue: CompText8762FF0_unk14_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCD,
		jumpIfTrue: CompText8762FF0_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "Well,well,well..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you're that Lan\n"
	.string "Hikari boy,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ever since your\n"
	.string "family left town,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've been taking\n"
	.string "care of this big,\n"
	.string "old empty house."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This house has\n"
	.string "become quite lonely\n"
	.string "without you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,ho! Are you\n"
	.string "getting a little\n"
	.string "nostalgic,my boy...?"
	ts_key_wait any=0x0
	ts_flag_set flag=0xCCD
	ts_end

	def_text_script CompText8762FF0_unk9
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "Ever since your\n"
	.string "family left town,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've been taking\n"
	.string "care of this big,\n"
	.string "old empty house."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This house has\n"
	.string "become quite lonely\n"
	.string "without you..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk10
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Huh? Going home so\n"
	.string "soon!? Aw,c'mon!\n"
	.string "Stay a bit longer!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk11
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "You're going back\n"
	.string "now? But I wanted\n"
	.string "to talk some more!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk12
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Why the long face?\n"
	.string "Did something\n"
	.string "happen?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk13
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Oh,you're going...?\n"
	.string "Well,tell your\n"
	.string "family I said hi!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk14
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "What's wrong?\n"
	.string "You look very down,\n"
	.string "my boy..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk15
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Hey,they have some-\n"
	.string "thing more high-tech\n"
	.string "than the Metroline"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "in Cyber City,right?\n"
	.string "Isn't it the LevBus\n"
	.string "or something...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I would love to take\n"
	.string "a ride on that!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk16
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Maybe I'm seeing\n"
	.string "things,but you're\n"
	.string "not looking so good."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What's wrong,Lan?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk17
	ts_check_flag [
		flag: 0xC1C,
		jumpIfTrue: CompText8762FF0_unk30_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText8762FF0_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC14,
		jumpIfTrue: CompText8762FF0_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC12,
		jumpIfTrue: CompText8762FF0_unk20_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "I think everyone's\n"
	.string "really missed you,\n"
	.string "Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk18
	ts_check_flag [
		flag: 0xC1C,
		jumpIfTrue: CompText8762FF0_unk31_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText8762FF0_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC14,
		jumpIfTrue: CompText8762FF0_unk24_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC12,
		jumpIfTrue: CompText8762FF0_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Everybody in town\n"
	.string "really missed you\n"
	.string "after you left,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so make sure you\n"
	.string "say hi to everyone,\n"
	.string "OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk19
	ts_check_flag [
		flag: 0xC1C,
		jumpIfTrue: CompText8762FF0_unk32_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText8762FF0_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC14,
		jumpIfTrue: CompText8762FF0_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC12,
		jumpIfTrue: CompText8762FF0_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Did you say hi to\n"
	.string "everyone yet,Lan?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure everyone\n"
	.string "would love to see\n"
	.string "you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk20
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "It's been so long\n"
	.string "since we've all been\n"
	.string "on the Net together!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk21
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "We're meeting in\n"
	.string "front of the ducks\n"
	.string "in ACDC Area,OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk22
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Roll's been really\n"
	.string "looking forward to\n"
	.string "seeing MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk23
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Nooooo! GutsMaaaan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk24
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Who were those Navis\n"
	.string "that took Glide and\n"
	.string "the others...!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk25
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Lan... Don't do\n"
	.string "anything rash..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk26
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Argh! If I could've\n"
	.string "operated better,\n"
	.string "MegaMan wouldn't..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk27
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "What was that thing\n"
	.string "that swallowed up\n"
	.string "MegaMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're in another\n"
	.string "strange mess again,\n"
	.string "aren't you,Lan?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk28
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "I'm sorry,Lan...\n"
	.string "It's all because of\n"
	.string "us..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk29

	def_text_script CompText8762FF0_unk30
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "... Argh!! It's all\n"
	.string "because I wasn't\n"
	.string "good enough that..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I still need a lot\n"
	.string "more training!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk31
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Lan,tell me if there\n"
	.string "is something I can\n"
	.string "help with,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want to do what\n"
	.string "I can."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk32
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Lan... If you hear\n"
	.string "anything,please let\n"
	.string "me know..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm asking you,\n"
	.string "please don't push\n"
	.string "yourself too hard."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're not alone..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8762FF0_unk33

	def_text_script CompText8762FF0_unk34

	def_text_script CompText8762FF0_unk35

	def_text_script CompText8762FF0_unk36

	def_text_script CompText8762FF0_unk37

	def_text_script CompText8762FF0_unk38

	def_text_script CompText8762FF0_unk39

	def_text_script CompText8762FF0_unk40

	def_text_script CompText8762FF0_unk41

	def_text_script CompText8762FF0_unk42

	def_text_script CompText8762FF0_unk43

	def_text_script CompText8762FF0_unk44

	def_text_script CompText8762FF0_unk45

	def_text_script CompText8762FF0_unk46

	def_text_script CompText8762FF0_unk47

	def_text_script CompText8762FF0_unk48

	def_text_script CompText8762FF0_unk49

	def_text_script CompText8762FF0_unk50

	def_text_script CompText8762FF0_unk51

	def_text_script CompText8762FF0_unk52

	def_text_script CompText8762FF0_unk53

	def_text_script CompText8762FF0_unk54

	def_text_script CompText8762FF0_unk55

	def_text_script CompText8762FF0_unk56

	def_text_script CompText8762FF0_unk57

	def_text_script CompText8762FF0_unk58

	def_text_script CompText8762FF0_unk59

	def_text_script CompText8762FF0_unk60

	def_text_script CompText8762FF0_unk61

	def_text_script CompText8762FF0_unk62

	def_text_script CompText8762FF0_unk63

	def_text_script CompText8762FF0_unk64

	def_text_script CompText8762FF0_unk65

	def_text_script CompText8762FF0_unk66

	def_text_script CompText8762FF0_unk67

	def_text_script CompText8762FF0_unk68

	def_text_script CompText8762FF0_unk69

	def_text_script CompText8762FF0_unk70

	def_text_script CompText8762FF0_unk71

	def_text_script CompText8762FF0_unk72

	def_text_script CompText8762FF0_unk73

	def_text_script CompText8762FF0_unk74

	def_text_script CompText8762FF0_unk75

	def_text_script CompText8762FF0_unk76

	def_text_script CompText8762FF0_unk77

	def_text_script CompText8762FF0_unk78

	def_text_script CompText8762FF0_unk79

	def_text_script CompText8762FF0_unk80

	def_text_script CompText8762FF0_unk81

	def_text_script CompText8762FF0_unk82

	def_text_script CompText8762FF0_unk83

	def_text_script CompText8762FF0_unk84

	def_text_script CompText8762FF0_unk85

	def_text_script CompText8762FF0_unk86

	def_text_script CompText8762FF0_unk87

	def_text_script CompText8762FF0_unk88

	def_text_script CompText8762FF0_unk89

	def_text_script CompText8762FF0_unk90

	def_text_script CompText8762FF0_unk91

	def_text_script CompText8762FF0_unk92

	def_text_script CompText8762FF0_unk93

	def_text_script CompText8762FF0_unk94

	def_text_script CompText8762FF0_unk95

	def_text_script CompText8762FF0_unk96

	def_text_script CompText8762FF0_unk97

	def_text_script CompText8762FF0_unk98

	def_text_script CompText8762FF0_unk99

	