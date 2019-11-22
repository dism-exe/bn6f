	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878D544::
	.word 0x7D400

	text_archive_start

	def_text_script CompText878D544_unk0
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
	.string "WELCOME TO\n"
	.string "SEASIDEAREA3!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "HUH? THIS AREA IS\n"
	.string "LESS DEPRESSING THAN\n"
	.string "OTHERS?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THAT'S BECAUSE I'M\n"
	.string "AN OPTIMIST!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk1
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
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "I heard this story\n"
	.string "that if you wash\n"
	.string "your face with this"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "water,then you'll\n"
	.string "become beautiful..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wonder if it's\n"
	.string "true...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk2

	def_text_script CompText878D544_unk3

	def_text_script CompText878D544_unk4

	def_text_script CompText878D544_unk5
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "WELCOME TO\n"
	.string "SEASIDEAREA3!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "EVEN WHEN THE WORLD\n"
	.string "IS DARK,LET'S LIVE\n"
	.string "BRIGHT LIVES!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk6
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "If you overwash your\n"
	.string "face,it will start\n"
	.string "to sting..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But,through that\n"
	.string "pain,you will become\n"
	.string "a beauty..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Or so they say..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So,my pain is proof\n"
	.string "that I'm becoming\n"
	.string "beautiful,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk7

	def_text_script CompText878D544_unk8

	def_text_script CompText878D544_unk9

	def_text_script CompText878D544_unk10
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "THE REAL WORLD HAS\n"
	.string "BEEN IN A BIT OF A\n"
	.string "JAM,HUH?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BUT IT'S GOT NOTHING\n"
	.string "TO DO WITH US!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk11
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "I have been reborn!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I feel PRETTY!\n"
	.string "Oh so PRETTY!\n"
	.string "... Well,am I?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk12

	def_text_script CompText878D544_unk13

	def_text_script CompText878D544_unk14

	def_text_script CompText878D544_unk15

	def_text_script CompText878D544_unk16

	def_text_script CompText878D544_unk17

	def_text_script CompText878D544_unk18

	def_text_script CompText878D544_unk19

	def_text_script CompText878D544_unk20

	def_text_script CompText878D544_unk21

	def_text_script CompText878D544_unk22

	def_text_script CompText878D544_unk23

	def_text_script CompText878D544_unk24

	def_text_script CompText878D544_unk25

	def_text_script CompText878D544_unk26

	def_text_script CompText878D544_unk27

	def_text_script CompText878D544_unk28

	def_text_script CompText878D544_unk29

	def_text_script CompText878D544_unk30

	def_text_script CompText878D544_unk31

	def_text_script CompText878D544_unk32

	def_text_script CompText878D544_unk33

	def_text_script CompText878D544_unk34

	def_text_script CompText878D544_unk35

	def_text_script CompText878D544_unk36

	def_text_script CompText878D544_unk37

	def_text_script CompText878D544_unk38

	def_text_script CompText878D544_unk39

	def_text_script CompText878D544_unk40
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Hey there,sweetie!\n"
	.string "How about a date\n"
	.string "with yours truly!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x46,
	]
	.string "......"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "Come on,baby!\n"
	.string "It's alright!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk41
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "It sounds like the\n"
	.string "finals for the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Operator Navi\n"
	.string "Selection Test are\n"
	.string "going on right now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wonder who will\n"
	.string "win the title...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk42

	def_text_script CompText878D544_unk43

	def_text_script CompText878D544_unk44

	def_text_script CompText878D544_unk45
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Hey there,sweetie!\n"
	.string "You got some time,so\n"
	.string "let's go on a date!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x46,
	]
	.string "... Thanks but no.\n"
	.string "I'm very picky about\n"
	.string "my guys!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I already know I\n"
	.string "have nothing more to\n"
	.string "say to you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I only want someone\n"
	.string "as wonderful as\n"
	.string "Mayor Cain."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Do you really think\n"
	.string "YOU can compare!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "... Grrr!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk46
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
		mugshot: 0x40,
	]
	ts_msg_open
	.string "I'm sure I've seen\n"
	.string "you somewhere...\n"
	.string "Maybe on TV...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yeah! You were on\n"
	.string "a historical drama\n"
	.string "show!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You were the soldier\n"
	.string "on my favorite war\n"
	.string "drama!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hmm? Am I wrong?\n"
	.string "That's strange..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk47

	def_text_script CompText878D544_unk48

	def_text_script CompText878D544_unk49

	def_text_script CompText878D544_unk50
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "Since the commercial\n"
	.string "started,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "everyone's been in\n"
	.string "an Expo sort of\n"
	.string "mood."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But you can't get an\n"
	.string "old man like me into\n"
	.string "it that easily..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk51

	def_text_script CompText878D544_unk52

	def_text_script CompText878D544_unk53

	def_text_script CompText878D544_unk54

	def_text_script CompText878D544_unk55
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "Something appeared\n"
	.string "in Seaside Town,or\n"
	.string "so it seems."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But an old person\n"
	.string "like me can't be\n"
	.string "bothered..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk56

	def_text_script CompText878D544_unk57

	def_text_script CompText878D544_unk58

	def_text_script CompText878D544_unk59

	def_text_script CompText878D544_unk60
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "Something appeared\n"
	.string "in Seaside Town,or\n"
	.string "so it seems."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There's been way too\n"
	.string "many bad things\n"
	.string "happening lately,ya?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878D544_unk61

	def_text_script CompText878D544_unk62

	def_text_script CompText878D544_unk63

	def_text_script CompText878D544_unk64

	def_text_script CompText878D544_unk65

	def_text_script CompText878D544_unk66

	def_text_script CompText878D544_unk67

	def_text_script CompText878D544_unk68

	def_text_script CompText878D544_unk69

	def_text_script CompText878D544_unk70

	def_text_script CompText878D544_unk71

	def_text_script CompText878D544_unk72

	def_text_script CompText878D544_unk73

	def_text_script CompText878D544_unk74

	def_text_script CompText878D544_unk75

	def_text_script CompText878D544_unk76

	def_text_script CompText878D544_unk77

	def_text_script CompText878D544_unk78

	def_text_script CompText878D544_unk79

	def_text_script CompText878D544_unk80

	def_text_script CompText878D544_unk81

	def_text_script CompText878D544_unk82

	def_text_script CompText878D544_unk83

	def_text_script CompText878D544_unk84

	def_text_script CompText878D544_unk85

	def_text_script CompText878D544_unk86

	def_text_script CompText878D544_unk87

	def_text_script CompText878D544_unk88

	def_text_script CompText878D544_unk89

	def_text_script CompText878D544_unk90

	def_text_script CompText878D544_unk91

	def_text_script CompText878D544_unk92

	def_text_script CompText878D544_unk93

	def_text_script CompText878D544_unk94

	def_text_script CompText878D544_unk95

	def_text_script CompText878D544_unk96

	def_text_script CompText878D544_unk97

	