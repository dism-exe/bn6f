	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878A004::
	.word 0x6E300

	text_archive_start

	def_text_script CompText878A004_unk0
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: CompText878A004_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText878A004_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "*STARE,STARE...*\n"
	.string "HMM,YOU LOOK OK..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE NETPOLICE HAVE\n"
	.string "BEEN TELLING PEOPLE\n"
	.string "LATELY TO REPORT ANY"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SUSPICIOUS-LOOKING\n"
	.string "PEOPLE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'M JUST DOING MY\n"
	.string "JOB,SO PLEASE\n"
	.string "UNDERSTAND."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk1
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "What is up with that\n"
	.string "Mr.Prog at the\n"
	.string "entrance getting up"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "in people's faces\n"
	.string "and staring at them\n"
	.string "like that!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He needs to stop.\n"
	.string "It gives me the\n"
	.string "creeps!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk2

	def_text_script CompText878A004_unk3

	def_text_script CompText878A004_unk4

	def_text_script CompText878A004_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "*STARE,STARE...*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk6
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "That Mr.Prog\n"
	.string "standing at the\n"
	.string "entrance"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "freaks me out with\n"
	.string "his in-your-face\n"
	.string "staring!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk7

	def_text_script CompText878A004_unk8

	def_text_script CompText878A004_unk9

	def_text_script CompText878A004_unk10
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "*STARE... STARE...*\n"
	.string "*STARE...*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk11
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "The way that Mr.Prog\n"
	.string "stares at my face..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's so...\n"
	.string "so...\n"
	.string "ewwwwwww..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk12

	def_text_script CompText878A004_unk13

	def_text_script CompText878A004_unk14

	def_text_script CompText878A004_unk15

	def_text_script CompText878A004_unk16

	def_text_script CompText878A004_unk17

	def_text_script CompText878A004_unk18

	def_text_script CompText878A004_unk19

	def_text_script CompText878A004_unk20

	def_text_script CompText878A004_unk21

	def_text_script CompText878A004_unk22

	def_text_script CompText878A004_unk23

	def_text_script CompText878A004_unk24

	def_text_script CompText878A004_unk25

	def_text_script CompText878A004_unk26

	def_text_script CompText878A004_unk27

	def_text_script CompText878A004_unk28

	def_text_script CompText878A004_unk29

	def_text_script CompText878A004_unk30

	def_text_script CompText878A004_unk31

	def_text_script CompText878A004_unk32

	def_text_script CompText878A004_unk33

	def_text_script CompText878A004_unk34

	def_text_script CompText878A004_unk35

	def_text_script CompText878A004_unk36

	def_text_script CompText878A004_unk37

	def_text_script CompText878A004_unk38

	def_text_script CompText878A004_unk39

	def_text_script CompText878A004_unk40
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I-I'm going to post\n"
	.string "my first message on\n"
	.string "the BBS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... I'm so nervous,\n"
	.string "like my heart's\n"
	.string "going to explode!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk41
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Sky Town was\n"
	.string "attacked a little\n"
	.string "while ago,I heard..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder what they\n"
	.string "were after...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk42
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "ALOHA! ALOHA!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THIS IS\n"
	.string "SEASIDEAREA1!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ALOHA! ALOHA!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk43

	def_text_script CompText878A004_unk44

	def_text_script CompText878A004_unk45
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: CompText878A004_unk60_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1E,
		jumpIfTrue: CompText878A004_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText878A004_unk50_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Hey,hey,hey! You're\n"
	.string "the one in the Expo\n"
	.string "commercial,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You were in that,\n"
	.string "right? Right!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk46
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WELINA! WELINA!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TODAY IS ANOTHER\n"
	.string "FINE DAY IN\n"
	.string "SEASIDEAREA!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BY THE WAY,\"WELINA\"\n"
	.string "IS AN OLD HAWAIIAN\n"
	.string "WORD FOR \"HELLO\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WELINA! WELINA!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk47
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Ah... No,I can't\n"
	.string "write it... I can't\n"
	.string "post it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I hate how I have\n"
	.string "no faith in\n"
	.string "myself..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk48

	def_text_script CompText878A004_unk49

	def_text_script CompText878A004_unk50
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "After the commercial\n"
	.string "started,interest in\n"
	.string "the Expo has risen!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hurry up and open\n"
	.string "already!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk51

	def_text_script CompText878A004_unk52

	def_text_script CompText878A004_unk53

	def_text_script CompText878A004_unk54

	def_text_script CompText878A004_unk55
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Hey,it looks like\n"
	.string "there's a riot going\n"
	.string "on in Seaside Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What in the world\n"
	.string "is going on!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk56

	def_text_script CompText878A004_unk57

	def_text_script CompText878A004_unk58

	def_text_script CompText878A004_unk59

	def_text_script CompText878A004_unk60
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Mayor Cain is trying\n"
	.string "to track down that\n"
	.string "Navi that went nuts,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so he can take care\n"
	.string "of that Seaside Town\n"
	.string "incident."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I bet he'll find\n"
	.string "that Navi."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A004_unk61

	def_text_script CompText878A004_unk62

	def_text_script CompText878A004_unk63

	def_text_script CompText878A004_unk64

	def_text_script CompText878A004_unk65

	def_text_script CompText878A004_unk66

	def_text_script CompText878A004_unk67

	def_text_script CompText878A004_unk68

	def_text_script CompText878A004_unk69

	def_text_script CompText878A004_unk70

	def_text_script CompText878A004_unk71

	def_text_script CompText878A004_unk72

	def_text_script CompText878A004_unk73

	def_text_script CompText878A004_unk74

	def_text_script CompText878A004_unk75

	def_text_script CompText878A004_unk76

	def_text_script CompText878A004_unk77

	def_text_script CompText878A004_unk78

	def_text_script CompText878A004_unk79

	def_text_script CompText878A004_unk80

	def_text_script CompText878A004_unk81

	def_text_script CompText878A004_unk82

	def_text_script CompText878A004_unk83

	def_text_script CompText878A004_unk84

	def_text_script CompText878A004_unk85

	def_text_script CompText878A004_unk86

	def_text_script CompText878A004_unk87

	def_text_script CompText878A004_unk88

	def_text_script CompText878A004_unk89

	def_text_script CompText878A004_unk90

	def_text_script CompText878A004_unk91

	def_text_script CompText878A004_unk92

	def_text_script CompText878A004_unk93

	def_text_script CompText878A004_unk94

	def_text_script CompText878A004_unk95

	def_text_script CompText878A004_unk96

	def_text_script CompText878A004_unk97

	def_text_script CompText878A004_unk98

	def_text_script CompText878A004_unk99

	