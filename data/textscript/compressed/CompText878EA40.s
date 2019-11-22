	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878EA40::
	.word 0x9D700

	text_archive_start

	def_text_script CompText878EA40_unk0
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "WELCOME..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IS WHAT I SAY,BUT\n"
	.string "MY HEART'S NOT IN\n"
	.string "IT."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'M JUST NOT IN THE\n"
	.string "MOOD..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IT'S BECAUSE OF THAT\n"
	.string "INCIDENT..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk1
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: 0xB,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "An average Joe\n"
	.string "Schmoe,huh..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wish guys like you\n"
	.string "weren't allowed to\n"
	.string "just wander around."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk2
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: 0xC,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x7,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "If you have no\n"
	.string "business here,then\n"
	.string "you should jack out"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and go to another\n"
	.string "area!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk3
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: 0xD,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x8,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "Everyone's sort of\n"
	.string "tense after that\n"
	.string "last incident."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I mean,the ability\n"
	.string "of this town to keep\n"
	.string "the law is shaky..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk4

	def_text_script CompText878EA40_unk5
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "THIS IS FROM THE\n"
	.string "NETPOLICE:"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IT'S BEST NOT TO\n"
	.string "WANDER OR HANG\n"
	.string "AROUND TOO MUCH..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk6
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "What?\n"
	.string "Go to the Undernet?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sorry,but I can't\n"
	.string "move from this\n"
	.string "spot..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk7
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "You're in my line of\n"
	.string "sight! Hurry up and\n"
	.string "get out of the way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk8
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "Zzz... Zzz..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk9

	def_text_script CompText878EA40_unk10
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "SOMETHING HAPPENED\n"
	.string "IN THE REAL WORLD,\n"
	.string "I HEARD."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "AS LONG AS IT ISN'T\n"
	.string "TOO SERIOUS,IT'S NOT\n"
	.string "A BIG DEAL..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk11
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "Hey,you! When an\n"
	.string "incident happens\n"
	.string "in the real world,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "the Net can't sit\n"
	.string "around and just\n"
	.string "take it."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So hurry up and jack\n"
	.string "out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk12
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "Look,there's nothing\n"
	.string "in this area,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "so jack out and\n"
	.string "patiently wait this\n"
	.string "out in your PET!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk13
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "The problems are\n"
	.string "going on in Sky Town\n"
	.string "in the real world."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I think it shouldn't\n"
	.string "affect us here on\n"
	.string "the Net,but"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "just to be safe,we\n"
	.string "should sit this one\n"
	.string "out."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk14

	def_text_script CompText878EA40_unk15

	def_text_script CompText878EA40_unk16

	def_text_script CompText878EA40_unk17

	def_text_script CompText878EA40_unk18

	def_text_script CompText878EA40_unk19

	def_text_script CompText878EA40_unk20

	def_text_script CompText878EA40_unk21

	def_text_script CompText878EA40_unk22

	def_text_script CompText878EA40_unk23

	def_text_script CompText878EA40_unk24

	def_text_script CompText878EA40_unk25

	def_text_script CompText878EA40_unk26

	def_text_script CompText878EA40_unk27

	def_text_script CompText878EA40_unk28

	def_text_script CompText878EA40_unk29

	def_text_script CompText878EA40_unk30

	def_text_script CompText878EA40_unk31

	def_text_script CompText878EA40_unk32

	def_text_script CompText878EA40_unk33

	def_text_script CompText878EA40_unk34

	def_text_script CompText878EA40_unk35

	def_text_script CompText878EA40_unk36

	def_text_script CompText878EA40_unk37

	def_text_script CompText878EA40_unk38

	def_text_script CompText878EA40_unk39

	def_text_script CompText878EA40_unk40
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "NO,I'M NOT LAUGHING!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THIS IS HOW MY FACE\n"
	.string "ALWAYS IS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk41
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Hey,hey!!\n"
	.string "Are you laughing at\n"
	.string "my face!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You were!\n"
	.string "I know you were!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're making fun\n"
	.string "of me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk42
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "The final round of\n"
	.string "the Operator Navi\n"
	.string "Selection Test has"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "started,but wow...\n"
	.string "If you become the\n"
	.string "Operator Navi,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "you'll definitely\n"
	.string "get to become\n"
	.string "famous..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk43

	def_text_script CompText878EA40_unk44

	def_text_script CompText878EA40_unk45
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: 0x3C,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC1E,
		jumpIfTrue: 0x37,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: 0x32,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "Huh? Huuuh?\n"
	.string "HUUUUH!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Y-You're the Navi\n"
	.string "in the Expo\n"
	.string "commercial!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wow! I'm... you...\n"
	.string "in-person!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My friends are going\n"
	.string "to be so jealous!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk46
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "How confusing...\n"
	.string "The expression on\n"
	.string "your face..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I was sure you were\n"
	.string "laughing at my face!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I thought you were\n"
	.string "making fun of me\n"
	.string "too..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Can't you do\n"
	.string "something about that\n"
	.string "face of yours...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "NOW WHO'S MAKING FUN\n"
	.string "OF WHO!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk47

	def_text_script CompText878EA40_unk48

	def_text_script CompText878EA40_unk49

	def_text_script CompText878EA40_unk50
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "The Expo Site\n"
	.string "will be totally\n"
	.string "spectacular,I bet."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I really want to\n"
	.string "go see it for\n"
	.string "myself!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If I had a CopyBot,\n"
	.string "I could! I wonder\n"
	.string "how I can get one..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk51

	def_text_script CompText878EA40_unk52

	def_text_script CompText878EA40_unk53

	def_text_script CompText878EA40_unk54

	def_text_script CompText878EA40_unk55
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "I think there is\n"
	.string "something going on\n"
	.string "in Seaside Town..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's probably not a\n"
	.string "good idea to go near\n"
	.string "there right now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk56

	def_text_script CompText878EA40_unk57

	def_text_script CompText878EA40_unk58

	def_text_script CompText878EA40_unk59

	def_text_script CompText878EA40_unk60
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "I think there was\n"
	.string "something going on\n"
	.string "in Seaside Town..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Everything is so\n"
	.string "scary with one bad\n"
	.string "thing happening"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "after another."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878EA40_unk61

	def_text_script CompText878EA40_unk62

	def_text_script CompText878EA40_unk63

	def_text_script CompText878EA40_unk64

	def_text_script CompText878EA40_unk65

	def_text_script CompText878EA40_unk66

	def_text_script CompText878EA40_unk67

	def_text_script CompText878EA40_unk68

	def_text_script CompText878EA40_unk69

	