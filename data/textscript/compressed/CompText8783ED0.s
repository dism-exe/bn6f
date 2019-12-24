	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8783ED0::
	.word 0xA3F00

	text_archive_start

	def_text_script CompText8783ED0_unk0
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText8783ED0_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "*HUFF*\n"
	.string "PHEW..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CLEANING THE NET\n"
	.string "SURE IS A TOUGH\n"
	.string "JOB."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I MEAN,THE NET IS\n"
	.string "REALLY LARGE..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk1
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText8783ED0_unk6_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Something bad\n"
	.string "happened in Green\n"
	.string "Town recently."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If something like\n"
	.string "that can happen\n"
	.string "there,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "then it can happen\n"
	.string "anywhere..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk2
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText8783ED0_unk7_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "The Navis on the Net\n"
	.string "haven't been up to\n"
	.string "anything lately,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "still,it's an uneasy\n"
	.string "sort of quiet..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if they can\n"
	.string "really open the Expo\n"
	.string "like this?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk3

	def_text_script CompText8783ED0_unk4

	def_text_script CompText8783ED0_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "*HUFF,HUFF...*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PLEASE DON'T...\n"
	.string "... TALK... TO\n"
	.string "ME... NOW..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk6
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "What!?\n"
	.string "You're going to the\n"
	.string "Undernet...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't throw your\n"
	.string "life away!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It doesn't matter\n"
	.string "how many lives you\n"
	.string "have,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that place will take\n"
	.string "them all!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk7
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Man,I woulda been\n"
	.string "nice if I passed"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that last Operator\n"
	.string "Navi test too..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk8

	def_text_script CompText8783ED0_unk9

	def_text_script CompText8783ED0_unk10
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "JUST A LITTLE MORE\n"
	.string "AND I'M DONE WITH\n"
	.string "TODAY'S CLEANING..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PHEEEEW...\n"
	.string "HAVE TO TAKE A\n"
	.string "BREATHER!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk11
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I guess it was true\n"
	.string "that the weather\n"
	.string "went nuts..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Not that it affects\n"
	.string "the Cyberworld,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you worry about your\n"
	.string "operator,you know\n"
	.string "what I mean?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk12

	def_text_script CompText8783ED0_unk13

	def_text_script CompText8783ED0_unk14

	def_text_script CompText8783ED0_unk15

	def_text_script CompText8783ED0_unk16

	def_text_script CompText8783ED0_unk17

	def_text_script CompText8783ED0_unk18

	def_text_script CompText8783ED0_unk19

	def_text_script CompText8783ED0_unk20

	def_text_script CompText8783ED0_unk21

	def_text_script CompText8783ED0_unk22

	def_text_script CompText8783ED0_unk23

	def_text_script CompText8783ED0_unk24

	def_text_script CompText8783ED0_unk25

	def_text_script CompText8783ED0_unk26

	def_text_script CompText8783ED0_unk27

	def_text_script CompText8783ED0_unk28

	def_text_script CompText8783ED0_unk29

	def_text_script CompText8783ED0_unk30

	def_text_script CompText8783ED0_unk31

	def_text_script CompText8783ED0_unk32

	def_text_script CompText8783ED0_unk33

	def_text_script CompText8783ED0_unk34

	def_text_script CompText8783ED0_unk35

	def_text_script CompText8783ED0_unk36

	def_text_script CompText8783ED0_unk37

	def_text_script CompText8783ED0_unk38

	def_text_script CompText8783ED0_unk39

	def_text_script CompText8783ED0_unk40
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "DID YOU PARTICIPATE\n"
	.string "IN THE FINAL ROUND"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OF THE OPERATOR NAVI\n"
	.string "SELECTION TEST?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THAT'S AWESOME THAT\n"
	.string "YOU COULD GET SO\n"
	.string "FAR!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk41
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "I'm in love with\n"
	.string "that SubChip seller\n"
	.string "behind that counter!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's a bit quiet but\n"
	.string "he handles work\n"
	.string "really well."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't you think\n"
	.string "that's so dreamy?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... I'm a little\n"
	.string "lost..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk42
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "It's like you're not\n"
	.string "allowed to be super\n"
	.string "patient in this"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "world we live in..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You need to treasure\n"
	.string "even leisurely\n"
	.string "moments,like me!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk43

	def_text_script CompText8783ED0_unk44

	def_text_script CompText8783ED0_unk45
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: CompText8783ED0_unk60_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1E,
		jumpIfTrue: CompText8783ED0_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText8783ED0_unk50_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "Y-YOU'RE THE\n"
	.string "OPERATOR NAVI...!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU'RE THE ONE IN\n"
	.string "THE COMMERCIAL! WOW!\n"
	.string "YOU'RE MY IDOL!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk46
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: CompText8783ED0_unk61_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1E,
		jumpIfTrue: CompText8783ED0_unk56_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText8783ED0_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "U-Um... Are you the\n"
	.string "one in the Expo\n"
	.string "commercial?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I thought you were\n"
	.string "the real deal!\n"
	.string "Aaaah! Aaaah!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please,may I have\n"
	.string "your autograph!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk47
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Everyone is much too\n"
	.string "excited because of\n"
	.string "that commercial."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "People should be\n"
	.string "more like me..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "calmly watching the\n"
	.string "world as the days\n"
	.string "go by..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk48

	def_text_script CompText8783ED0_unk49

	def_text_script CompText8783ED0_unk50
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "SOUNDS LIKE THE EXPO\n"
	.string "COMMERCIAL HAS\n"
	.string "STARTED!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HAVE YOU SEEN IT\n"
	.string "YET?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk51
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Hey,don't you get a\n"
	.string "good feeling from\n"
	.string "that Navi in the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Expo commercial?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think I may be\n"
	.string "falling for him..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk52

	def_text_script CompText8783ED0_unk53

	def_text_script CompText8783ED0_unk54

	def_text_script CompText8783ED0_unk55
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "IT SEEMS LIKE SOME-\n"
	.string "THING IS HAPPENING\n"
	.string "IN THE REAL WORLD..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'M A BIT WORRIED..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk56
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "It sounds like\n"
	.string "something is going\n"
	.string "on in some town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk57

	def_text_script CompText8783ED0_unk58

	def_text_script CompText8783ED0_unk59

	def_text_script CompText8783ED0_unk60
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "IT SEEMS LIKE SOME-\n"
	.string "THING BIG HAPPENED\n"
	.string "IN SEASIDE TOWN..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I WONDER WHAT'S\n"
	.string "CAUSING THE TROUBLE?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk61
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Seems like something\n"
	.string "happened...though I\n"
	.string "don't know where..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I heard a Navi was\n"
	.string "going around acting\n"
	.string "crazy."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Scary stuff..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8783ED0_unk62

	def_text_script CompText8783ED0_unk63

	def_text_script CompText8783ED0_unk64

	def_text_script CompText8783ED0_unk65

	def_text_script CompText8783ED0_unk66

	def_text_script CompText8783ED0_unk67

	def_text_script CompText8783ED0_unk68

	def_text_script CompText8783ED0_unk69

	def_text_script CompText8783ED0_unk70

	def_text_script CompText8783ED0_unk71

	def_text_script CompText8783ED0_unk72

	def_text_script CompText8783ED0_unk73

	def_text_script CompText8783ED0_unk74

	def_text_script CompText8783ED0_unk75

	def_text_script CompText8783ED0_unk76

	def_text_script CompText8783ED0_unk77

	def_text_script CompText8783ED0_unk78

	def_text_script CompText8783ED0_unk79

	def_text_script CompText8783ED0_unk80

	def_text_script CompText8783ED0_unk81

	def_text_script CompText8783ED0_unk82

	def_text_script CompText8783ED0_unk83

	def_text_script CompText8783ED0_unk84

	def_text_script CompText8783ED0_unk85

	def_text_script CompText8783ED0_unk86

	def_text_script CompText8783ED0_unk87

	def_text_script CompText8783ED0_unk88

	def_text_script CompText8783ED0_unk89

	def_text_script CompText8783ED0_unk90

	def_text_script CompText8783ED0_unk91

	def_text_script CompText8783ED0_unk92

	def_text_script CompText8783ED0_unk93

	def_text_script CompText8783ED0_unk94

	def_text_script CompText8783ED0_unk95

	def_text_script CompText8783ED0_unk96

	def_text_script CompText8783ED0_unk97

	def_text_script CompText8783ED0_unk98

	def_text_script CompText8783ED0_unk99

	