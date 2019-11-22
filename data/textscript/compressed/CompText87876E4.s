	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87876E4::
	.word 0x7BC00

	text_archive_start

	def_text_script CompText87876E4_unk0
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "You didn't see\n"
	.string "the suspicious\n"
	.string "Navi?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hmph... Didn't see\n"
	.string "it,huh?\n"
	.string "I guess that's good."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk1
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Did you already see\n"
	.string "the stone monument\n"
	.string "to the Cybeasts?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If those monsters\n"
	.string "really existed,it'd\n"
	.string "be awful!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you haven't seen\n"
	.string "it yet,it's behind\n"
	.string "this area..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk2
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "*Huff* *Huff*..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This area is nice\n"
	.string "and wide... Perfect\n"
	.string "for training!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk3
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "WELCOME TO CENTRAL\n"
	.string "AREA3,CENTRALAREA'S"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BEST SIGHTSEEING\n"
	.string "SPOT!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk4

	def_text_script CompText87876E4_unk5

	def_text_script CompText87876E4_unk6

	def_text_script CompText87876E4_unk7

	def_text_script CompText87876E4_unk8

	def_text_script CompText87876E4_unk9

	def_text_script CompText87876E4_unk10

	def_text_script CompText87876E4_unk11

	def_text_script CompText87876E4_unk12

	def_text_script CompText87876E4_unk13

	def_text_script CompText87876E4_unk14

	def_text_script CompText87876E4_unk15

	def_text_script CompText87876E4_unk16

	def_text_script CompText87876E4_unk17

	def_text_script CompText87876E4_unk18

	def_text_script CompText87876E4_unk19

	def_text_script CompText87876E4_unk20
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "We came from far\n"
	.string "away to check things\n"
	.string "out."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Of course we came to\n"
	.string "see this huge hole!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It really leaves\n"
	.string "quite a mark! It's\n"
	.string "truly incredible!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk21
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Arghh!\n"
	.string "I can't see the\n"
	.string "bottom at all!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you fell in,\n"
	.string "there's no way you\n"
	.string "could come back!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Just thinking about\n"
	.string "it gives me the\n"
	.string "chills... Wahhhh..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk22
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "ABOUT THOSE ATTACKS\n"
	.string "ON NAVIS..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SOME NAVI THAT\n"
	.string "RESEMBLES A CLOWN..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "HE HAS A STRANGE\n"
	.string "SMILE ON HIS FACE,\n"
	.string "THEN HE ATTACKS..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SORRY FOR THE\n"
	.string "UNSETTLING TALK..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk23

	def_text_script CompText87876E4_unk24

	def_text_script CompText87876E4_unk25
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "Looking at that\n"
	.string "giant hole makes you\n"
	.string "realize how small"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "your own worries\n"
	.string "really are...\n"
	.string "Don't you think?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk26
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "You need to have\n"
	.string "a special passport\n"
	.string "for that path..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "How do you get one\n"
	.string "I wonder..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk27
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "The legend of the\n"
	.string "Cybeasts..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's gotta be\n"
	.string "made up,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If it's true..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yahhhh!! Too scary!\n"
	.string "*trembles*"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk28

	def_text_script CompText87876E4_unk29

	def_text_script CompText87876E4_unk30

	def_text_script CompText87876E4_unk31

	def_text_script CompText87876E4_unk32

	def_text_script CompText87876E4_unk33

	def_text_script CompText87876E4_unk34

	def_text_script CompText87876E4_unk35

	def_text_script CompText87876E4_unk36

	def_text_script CompText87876E4_unk37

	def_text_script CompText87876E4_unk38

	def_text_script CompText87876E4_unk39

	def_text_script CompText87876E4_unk40

	def_text_script CompText87876E4_unk41

	def_text_script CompText87876E4_unk42

	def_text_script CompText87876E4_unk43

	def_text_script CompText87876E4_unk44

	def_text_script CompText87876E4_unk45

	def_text_script CompText87876E4_unk46

	def_text_script CompText87876E4_unk47

	def_text_script CompText87876E4_unk48

	def_text_script CompText87876E4_unk49

	def_text_script CompText87876E4_unk50
	ts_check_flag [
		flag: 0x541,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x541,
	]
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x45,
	]
	.string "Ahh,you've got\n"
	.string "something to do in\n"
	.string "SeasideArea too?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This is the road\n"
	.string "that heads to\n"
	.string "SeasideArea."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "However,there is a\n"
	.string "leak that is\n"
	.string "blocking the road."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "That's no good..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x45,
	]
	.string "Yeah,I know.\n"
	.string "A repairman was\n"
	.string "just called..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He said he'd be here\n"
	.string "right away,but there\n"
	.string "is no sign of him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "No sign of him..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I bet he is\n"
	.string "somewhere close\n"
	.string "by..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Shall we try and\n"
	.string "find him,Lan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk51
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x45,
	]
	.string "The repairman is\n"
	.string "really late..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk52
	ts_check_flag [
		flag: 0x50A,
		jumpIfTrue: 0x35,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x45,
	]
	.string "It looks like the\n"
	.string "repairman came!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk53
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x45,
	]
	.string "It looks like the\n"
	.string "leak is fixed!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Now you can go to\n"
	.string "SeasideArea!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87876E4_unk54

	def_text_script CompText87876E4_unk55

	def_text_script CompText87876E4_unk56

	def_text_script CompText87876E4_unk57

	def_text_script CompText87876E4_unk58

	def_text_script CompText87876E4_unk59

	def_text_script CompText87876E4_unk60
	ts_flag_set [
		flag: 0x545,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText87876E4_unk61

	def_text_script CompText87876E4_unk62

	def_text_script CompText87876E4_unk63

	def_text_script CompText87876E4_unk64

	def_text_script CompText87876E4_unk65

	def_text_script CompText87876E4_unk66

	def_text_script CompText87876E4_unk67

	def_text_script CompText87876E4_unk68

	def_text_script CompText87876E4_unk69

	def_text_script CompText87876E4_unk70

	def_text_script CompText87876E4_unk71

	def_text_script CompText87876E4_unk72

	def_text_script CompText87876E4_unk73

	def_text_script CompText87876E4_unk74

	def_text_script CompText87876E4_unk75

	def_text_script CompText87876E4_unk76

	def_text_script CompText87876E4_unk77

	def_text_script CompText87876E4_unk78

	def_text_script CompText87876E4_unk79

	def_text_script CompText87876E4_unk80

	def_text_script CompText87876E4_unk81

	def_text_script CompText87876E4_unk82

	def_text_script CompText87876E4_unk83

	def_text_script CompText87876E4_unk84

	def_text_script CompText87876E4_unk85

	def_text_script CompText87876E4_unk86

	def_text_script CompText87876E4_unk87

	def_text_script CompText87876E4_unk88

	def_text_script CompText87876E4_unk89

	def_text_script CompText87876E4_unk90

	def_text_script CompText87876E4_unk91

	def_text_script CompText87876E4_unk92

	def_text_script CompText87876E4_unk93

	def_text_script CompText87876E4_unk94

	def_text_script CompText87876E4_unk95

	def_text_script CompText87876E4_unk96

	def_text_script CompText87876E4_unk97

	def_text_script CompText87876E4_unk98

	def_text_script CompText87876E4_unk99

	