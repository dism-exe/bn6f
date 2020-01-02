	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8776C50::
	.word 0x60200

	text_archive_start

	def_text_script CompText8776C50_unk0
	ts_check_chapter [
		lower: 0x23,
		upper: 0x23,
		jumpIfInRange: CompText8776C50_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "That's a huge\n"
	.string "alligator..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That thing got out\n"
	.string "during the incident\n"
	.string "a while back,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just thinking about\n"
	.string "it is scary..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk1
	ts_check_chapter [
		lower: 0x23,
		upper: 0x23,
		jumpIfInRange: CompText8776C50_unk6_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "I have no idea\n"
	.string "what goes on inside\n"
	.string "a penguin's mind..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They look interested\n"
	.string "in something,but\n"
	.string "what can it be?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk2
	ts_check_chapter [
		lower: 0x25,
		upper: 0x25,
		jumpIfInRange: CompText8776C50_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x24,
		upper: 0x24,
		jumpIfInRange: CompText8776C50_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x23,
		upper: 0x23,
		jumpIfInRange: CompText8776C50_unk7_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "I'm researching\n"
	.string "sharks here."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When you get to\n"
	.string "be like me,you\n"
	.string "can tell a shark's"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "size just by seeing\n"
	.string "its dorsal fin!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk3

	def_text_script CompText8776C50_unk4

	def_text_script CompText8776C50_unk5
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "I just heard an\n"
	.string "announcement that\n"
	.string "the Aquarium is"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "closing already...\n"
	.string "I wonder if\n"
	.string "something happened?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk6
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "HUH!?\n"
	.string "Closed already!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want to see\n"
	.string "the penguins some\n"
	.string "more!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk7
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Even when the\n"
	.string "Aquarium is closed,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "researchers are\n"
	.string "allowed to stay!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So I can stay and\n"
	.string "observe the sharks!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk8

	def_text_script CompText8776C50_unk9

	def_text_script CompText8776C50_unk10
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "It seems the sharks\n"
	.string "don't have their\n"
	.string "usual sense of calm."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk11

	def_text_script CompText8776C50_unk12

	def_text_script CompText8776C50_unk13

	def_text_script CompText8776C50_unk14

	def_text_script CompText8776C50_unk15
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "The sharks are\n"
	.string "making quite a\n"
	.string "racket..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They have been\n"
	.string "strange since\n"
	.string "yesterday..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk16

	def_text_script CompText8776C50_unk17

	def_text_script CompText8776C50_unk18

	def_text_script CompText8776C50_unk19

	def_text_script CompText8776C50_unk20

	def_text_script CompText8776C50_unk21

	def_text_script CompText8776C50_unk22

	def_text_script CompText8776C50_unk23

	def_text_script CompText8776C50_unk24

	def_text_script CompText8776C50_unk25

	def_text_script CompText8776C50_unk26

	def_text_script CompText8776C50_unk27

	def_text_script CompText8776C50_unk28

	def_text_script CompText8776C50_unk29

	def_text_script CompText8776C50_unk30

	def_text_script CompText8776C50_unk31

	def_text_script CompText8776C50_unk32

	def_text_script CompText8776C50_unk33

	def_text_script CompText8776C50_unk34

	def_text_script CompText8776C50_unk35

	def_text_script CompText8776C50_unk36

	def_text_script CompText8776C50_unk37

	def_text_script CompText8776C50_unk38

	def_text_script CompText8776C50_unk39

	def_text_script CompText8776C50_unk40
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Hey Grandpa...\n"
	.string "I want to be that\n"
	.string "big someday!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x19
	.string "Don't say silly\n"
	.string "things like that..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk41
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Ahh... A break from\n"
	.string "work... What should\n"
	.string "I drink?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Huh? That's a new\n"
	.string "drink!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"NEW AWESOME\n"
	.string " WATER EX\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmmm... I guess I'll\n"
	.string "give it a try!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk42

	def_text_script CompText8776C50_unk43

	def_text_script CompText8776C50_unk44

	def_text_script CompText8776C50_unk45

	def_text_script CompText8776C50_unk46

	def_text_script CompText8776C50_unk47

	def_text_script CompText8776C50_unk48

	def_text_script CompText8776C50_unk49

	def_text_script CompText8776C50_unk50
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Hey Grandpa!\n"
	.string "I wish I was born\n"
	.string "as a dolphin!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x19
	.string "Don't say silly\n"
	.string "things like that..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk51
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Wax on... Wax off...\n"
	.string "Cleaning the cages\n"
	.string "is hard work!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is the\n"
	.string "alligator pen..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk52
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "A dolphin's shape\n"
	.string "is really amazing..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776C50_unk53

	def_text_script CompText8776C50_unk54

	def_text_script CompText8776C50_unk55

	def_text_script CompText8776C50_unk56

	def_text_script CompText8776C50_unk57

	def_text_script CompText8776C50_unk58

	def_text_script CompText8776C50_unk59

	def_text_script CompText8776C50_unk60

	def_text_script CompText8776C50_unk61

	def_text_script CompText8776C50_unk62

	def_text_script CompText8776C50_unk63

	def_text_script CompText8776C50_unk64

	def_text_script CompText8776C50_unk65

	def_text_script CompText8776C50_unk66

	def_text_script CompText8776C50_unk67

	def_text_script CompText8776C50_unk68

	def_text_script CompText8776C50_unk69

	def_text_script CompText8776C50_unk70

	def_text_script CompText8776C50_unk71

	def_text_script CompText8776C50_unk72

	def_text_script CompText8776C50_unk73

	def_text_script CompText8776C50_unk74

	def_text_script CompText8776C50_unk75

	def_text_script CompText8776C50_unk76

	def_text_script CompText8776C50_unk77

	def_text_script CompText8776C50_unk78

	def_text_script CompText8776C50_unk79

	def_text_script CompText8776C50_unk80

	def_text_script CompText8776C50_unk81

	def_text_script CompText8776C50_unk82

	def_text_script CompText8776C50_unk83

	def_text_script CompText8776C50_unk84

	def_text_script CompText8776C50_unk85

	def_text_script CompText8776C50_unk86

	def_text_script CompText8776C50_unk87

	def_text_script CompText8776C50_unk88

	def_text_script CompText8776C50_unk89

	def_text_script CompText8776C50_unk90

	def_text_script CompText8776C50_unk91

	def_text_script CompText8776C50_unk92

	def_text_script CompText8776C50_unk93

	def_text_script CompText8776C50_unk94

	def_text_script CompText8776C50_unk95

	def_text_script CompText8776C50_unk96

	def_text_script CompText8776C50_unk97

	def_text_script CompText8776C50_unk98

	def_text_script CompText8776C50_unk99

	