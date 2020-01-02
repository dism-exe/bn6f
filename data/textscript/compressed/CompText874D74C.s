	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874D74C::
	.word 0xB0400

	text_archive_start

	def_text_script CompText874D74C_unk0
	ts_check_chapter [
		lower: 0x15,
		upper: 0x16,
		jumpIfInRange: CompText874D74C_unk95_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x14,
		upper: 0x14,
		jumpIfInRange: CompText874D74C_unk80_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x12,
		upper: 0x13,
		jumpIfInRange: CompText874D74C_unk65_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x10,
		upper: 0x11,
		jumpIfInRange: CompText874D74C_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: CompText874D74C_unk35_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874D74C_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x0,
		upper: 0x1,
		jumpIfInRange: CompText874D74C_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk1

	def_text_script CompText874D74C_unk2

	def_text_script CompText874D74C_unk3

	def_text_script CompText874D74C_unk4

	def_text_script CompText874D74C_unk5
	ts_check_flag [
		flag: 0x41A,
		jumpIfTrue: CompText874D74C_unk12_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x46D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874D74C_unk11_id,
	]
	ts_check_flag [
		flag: 0x1CA0,
		jumpIfTrue: CompText874D74C_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874D74C_unk6

	def_text_script CompText874D74C_unk7

	def_text_script CompText874D74C_unk8

	def_text_script CompText874D74C_unk9
	ts_check_flag [
		flag: 0x469,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874D74C_unk10_id,
	]
	ts_check_flag [
		flag: 0x46A,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874D74C_unk10_id,
	]
	ts_check_flag [
		flag: 0x46B,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874D74C_unk10_id,
	]
	ts_check_flag [
		flag: 0x46C,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874D74C_unk10_id,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wonder what\n"
	.string "CentralArea2\n"
	.string "is like?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wonder what sort\n"
	.string "of Navis we'll meet\n"
	.string "in this Net area?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go chat with\n"
	.string "everyone!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I have to get ready\n"
	.string "for tomorrow,so we\n"
	.string "should jack out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk13

	def_text_script CompText874D74C_unk14

	def_text_script CompText874D74C_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We should get off\n"
	.string "the Net and get to\n"
	.string "school!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk16

	def_text_script CompText874D74C_unk17

	def_text_script CompText874D74C_unk18

	def_text_script CompText874D74C_unk19

	def_text_script CompText874D74C_unk20

	def_text_script CompText874D74C_unk21

	def_text_script CompText874D74C_unk22

	def_text_script CompText874D74C_unk23

	def_text_script CompText874D74C_unk24

	def_text_script CompText874D74C_unk25

	def_text_script CompText874D74C_unk26

	def_text_script CompText874D74C_unk27

	def_text_script CompText874D74C_unk28

	def_text_script CompText874D74C_unk29

	def_text_script CompText874D74C_unk30

	def_text_script CompText874D74C_unk31

	def_text_script CompText874D74C_unk32

	def_text_script CompText874D74C_unk33

	def_text_script CompText874D74C_unk34

	def_text_script CompText874D74C_unk35
	ts_check_flag [
		flag: 0x442,
		jumpIfTrue: CompText874D74C_unk36_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x499,
		jumpIfTrue: CompText874D74C_unk38_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea3!!..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... but first,where\n"
	.string "did Mick"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "hide the key to the\n"
	.string "CentralArea2 door!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk36
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time to jack out,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk37
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "This area is pretty\n"
	.string "interesting looking!\n"
	.string "Let's check it out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk38
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874D74C_unk37_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea3!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk39

	def_text_script CompText874D74C_unk40

	def_text_script CompText874D74C_unk41

	def_text_script CompText874D74C_unk42

	def_text_script CompText874D74C_unk43

	def_text_script CompText874D74C_unk44

	def_text_script CompText874D74C_unk45

	def_text_script CompText874D74C_unk46

	def_text_script CompText874D74C_unk47

	def_text_script CompText874D74C_unk48

	def_text_script CompText874D74C_unk49

	def_text_script CompText874D74C_unk50
	ts_check_flag [
		flag: 0x50A,
		jumpIfTrue: CompText874D74C_unk58_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x508,
		jumpIfTrue: CompText874D74C_unk57_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x542,
		jumpIfTrue: CompText874D74C_unk56_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x541,
		jumpIfTrue: CompText874D74C_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x504,
		jumpIfTrue: CompText874D74C_unk54_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x53F,
		jumpIfTrue: CompText874D74C_unk53_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x53D,
		jumpIfTrue: CompText874D74C_unk52_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x53C,
		jumpIfTrue: CompText874D74C_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874D74C_unk51
	ts_end

	def_text_script CompText874D74C_unk52
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's go look for\n"
	.string "some penguin food!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk53
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "school and give the\n"
	.string "penguin the fish!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk54
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go find the\n"
	.string "BBS in SeasideArea1!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe there'll be\n"
	.string "something about our\n"
	.string "penguin there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk55
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The Repair Navi's\n"
	.string "not here... Maybe we\n"
	.string "should look for him?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk56
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's go look for"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the Repair Navi's\n"
	.string "\""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk57
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We'd better get this\n"
	.string "\""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\" to the\n"
	.string "Repair Navi!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk58
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go find the\n"
	.string "BBS in SeasideArea1,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk59

	def_text_script CompText874D74C_unk60

	def_text_script CompText874D74C_unk61

	def_text_script CompText874D74C_unk62

	def_text_script CompText874D74C_unk63

	def_text_script CompText874D74C_unk64

	def_text_script CompText874D74C_unk65
	ts_check_flag [
		flag: 0x516,
		jumpIfTrue: CompText874D74C_unk73_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: CompText874D74C_unk72_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x514,
		jumpIfTrue: CompText874D74C_unk71_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x544,
		jumpIfTrue: CompText874D74C_unk70_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x512,
		jumpIfTrue: CompText874D74C_unk69_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x510,
		jumpIfTrue: CompText874D74C_unk68_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x50E,
		jumpIfTrue: CompText874D74C_unk67_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x543,
		jumpIfTrue: CompText874D74C_unk66_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "what we found out\n"
	.string "about the penguin!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk66
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We'd better head on\n"
	.string "over to the meeting\n"
	.string "point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk67
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta get back\n"
	.string "to Seaside Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk68
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk69
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to where\n"
	.string "we said we'd meet\n"
	.string "Mick!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk70
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head back to\n"
	.string "Seaside Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk71
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "Aquarium!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk72
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The show's about to\n"
	.string "start! Hurry up and\n"
	.string "jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk73
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,if that's how\n"
	.string "Mick feels about\n"
	.string "it..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Guess we should just\n"
	.string "go home for today..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk74

	def_text_script CompText874D74C_unk75

	def_text_script CompText874D74C_unk76

	def_text_script CompText874D74C_unk77

	def_text_script CompText874D74C_unk78

	def_text_script CompText874D74C_unk79

	def_text_script CompText874D74C_unk80
	ts_check_flag [
		flag: 0x52A,
		jumpIfTrue: CompText874D74C_unk87_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x528,
		jumpIfTrue: CompText874D74C_unk81_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x526,
		jumpIfTrue: CompText874D74C_unk86_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x524,
		jumpIfTrue: CompText874D74C_unk85_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x522,
		jumpIfTrue: CompText874D74C_unk84_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x51E,
		jumpIfTrue: CompText874D74C_unk83_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x555,
		jumpIfTrue: CompText874D74C_unk82_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x51C,
		jumpIfTrue: CompText874D74C_unk81_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874D74C_unk81
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk82
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we don't return\n"
	.string "the Aquarium back to\n"
	.string "normal,who knows...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk83
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan! We\n"
	.string "have to find Fanny's\n"
	.string "play ball fast!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk84
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... What was she\n"
	.string "trying to tell us?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hurry,MegaMan,and\n"
	.string "jack out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk85
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's use this\n"
	.string "CopyBot and get back\n"
	.string "to the large tank!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk86
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It looks like we can\n"
	.string "get Fanny to move\n"
	.string "with this play ball!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk87
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk88

	def_text_script CompText874D74C_unk89

	def_text_script CompText874D74C_unk90

	def_text_script CompText874D74C_unk91

	def_text_script CompText874D74C_unk92

	def_text_script CompText874D74C_unk93

	def_text_script CompText874D74C_unk94

	def_text_script CompText874D74C_unk95
	ts_check_flag [
		flag: 0x538,
		jumpIfTrue: CompText874D74C_unk96_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874D74C_unk96
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D74C_unk97

	def_text_script CompText874D74C_unk98

	def_text_script CompText874D74C_unk99

	def_text_script CompText874D74C_unk100

	def_text_script CompText874D74C_unk101

	def_text_script CompText874D74C_unk102

	def_text_script CompText874D74C_unk103

	def_text_script CompText874D74C_unk104

	def_text_script CompText874D74C_unk105

	def_text_script CompText874D74C_unk106

	def_text_script CompText874D74C_unk107

	def_text_script CompText874D74C_unk108

	def_text_script CompText874D74C_unk109

	def_text_script CompText874D74C_unk110

	def_text_script CompText874D74C_unk111

	def_text_script CompText874D74C_unk112

	def_text_script CompText874D74C_unk113

	def_text_script CompText874D74C_unk114

	def_text_script CompText874D74C_unk115

	def_text_script CompText874D74C_unk116

	def_text_script CompText874D74C_unk117

	def_text_script CompText874D74C_unk118

	def_text_script CompText874D74C_unk119

	def_text_script CompText874D74C_unk120

	def_text_script CompText874D74C_unk121

	def_text_script CompText874D74C_unk122

	def_text_script CompText874D74C_unk123

	def_text_script CompText874D74C_unk124

	def_text_script CompText874D74C_unk125

	def_text_script CompText874D74C_unk126

	def_text_script CompText874D74C_unk127

	def_text_script CompText874D74C_unk128

	def_text_script CompText874D74C_unk129

	def_text_script CompText874D74C_unk130

	def_text_script CompText874D74C_unk131

	def_text_script CompText874D74C_unk132

	def_text_script CompText874D74C_unk133

	def_text_script CompText874D74C_unk134

	def_text_script CompText874D74C_unk135

	def_text_script CompText874D74C_unk136

	def_text_script CompText874D74C_unk137

	def_text_script CompText874D74C_unk138

	def_text_script CompText874D74C_unk139

	def_text_script CompText874D74C_unk140

	def_text_script CompText874D74C_unk141

	def_text_script CompText874D74C_unk142

	def_text_script CompText874D74C_unk143

	def_text_script CompText874D74C_unk144

	def_text_script CompText874D74C_unk145

	def_text_script CompText874D74C_unk146

	def_text_script CompText874D74C_unk147

	def_text_script CompText874D74C_unk148

	def_text_script CompText874D74C_unk149

	def_text_script CompText874D74C_unk150

	def_text_script CompText874D74C_unk151

	def_text_script CompText874D74C_unk152

	def_text_script CompText874D74C_unk153

	def_text_script CompText874D74C_unk154

	def_text_script CompText874D74C_unk155

	def_text_script CompText874D74C_unk156

	def_text_script CompText874D74C_unk157

	def_text_script CompText874D74C_unk158

	def_text_script CompText874D74C_unk159

	def_text_script CompText874D74C_unk160

	def_text_script CompText874D74C_unk161

	def_text_script CompText874D74C_unk162

	def_text_script CompText874D74C_unk163

	def_text_script CompText874D74C_unk164

	def_text_script CompText874D74C_unk165

	def_text_script CompText874D74C_unk166

	def_text_script CompText874D74C_unk167

	def_text_script CompText874D74C_unk168

	def_text_script CompText874D74C_unk169

	def_text_script CompText874D74C_unk170

	def_text_script CompText874D74C_unk171

	def_text_script CompText874D74C_unk172

	def_text_script CompText874D74C_unk173

	def_text_script CompText874D74C_unk174

	def_text_script CompText874D74C_unk175

	def_text_script CompText874D74C_unk176

	def_text_script CompText874D74C_unk177

	def_text_script CompText874D74C_unk178

	def_text_script CompText874D74C_unk179

	def_text_script CompText874D74C_unk180

	def_text_script CompText874D74C_unk181

	def_text_script CompText874D74C_unk182

	def_text_script CompText874D74C_unk183

	def_text_script CompText874D74C_unk184

	def_text_script CompText874D74C_unk185

	def_text_script CompText874D74C_unk186

	def_text_script CompText874D74C_unk187

	def_text_script CompText874D74C_unk188

	def_text_script CompText874D74C_unk189

	def_text_script CompText874D74C_unk190

	def_text_script CompText874D74C_unk191

	def_text_script CompText874D74C_unk192

	def_text_script CompText874D74C_unk193

	def_text_script CompText874D74C_unk194

	def_text_script CompText874D74C_unk195

	def_text_script CompText874D74C_unk196

	def_text_script CompText874D74C_unk197

	def_text_script CompText874D74C_unk198

	def_text_script CompText874D74C_unk199

	def_text_script CompText874D74C_unk200

	def_text_script CompText874D74C_unk201

	def_text_script CompText874D74C_unk202

	def_text_script CompText874D74C_unk203

	def_text_script CompText874D74C_unk204

	def_text_script CompText874D74C_unk205

	def_text_script CompText874D74C_unk206

	def_text_script CompText874D74C_unk207

	def_text_script CompText874D74C_unk208

	def_text_script CompText874D74C_unk209

	def_text_script CompText874D74C_unk210

	def_text_script CompText874D74C_unk211

	def_text_script CompText874D74C_unk212

	def_text_script CompText874D74C_unk213

	def_text_script CompText874D74C_unk214

	def_text_script CompText874D74C_unk215

	def_text_script CompText874D74C_unk216

	def_text_script CompText874D74C_unk217

	def_text_script CompText874D74C_unk218

	def_text_script CompText874D74C_unk219

	def_text_script CompText874D74C_unk220

	def_text_script CompText874D74C_unk221

	def_text_script CompText874D74C_unk222

	def_text_script CompText874D74C_unk223

	def_text_script CompText874D74C_unk224

	def_text_script CompText874D74C_unk225

	def_text_script CompText874D74C_unk226

	def_text_script CompText874D74C_unk227

	def_text_script CompText874D74C_unk228

	def_text_script CompText874D74C_unk229

	def_text_script CompText874D74C_unk230

	def_text_script CompText874D74C_unk231

	def_text_script CompText874D74C_unk232

	def_text_script CompText874D74C_unk233

	def_text_script CompText874D74C_unk234

	def_text_script CompText874D74C_unk235

	def_text_script CompText874D74C_unk236

	def_text_script CompText874D74C_unk237

	def_text_script CompText874D74C_unk238

	def_text_script CompText874D74C_unk239

	def_text_script CompText874D74C_unk240

	def_text_script CompText874D74C_unk241

	def_text_script CompText874D74C_unk242

	def_text_script CompText874D74C_unk243

	def_text_script CompText874D74C_unk244

	def_text_script CompText874D74C_unk245

	def_text_script CompText874D74C_unk246

	def_text_script CompText874D74C_unk247

	def_text_script CompText874D74C_unk248

	def_text_script CompText874D74C_unk249

	def_text_script CompText874D74C_unk250

	def_text_script CompText874D74C_unk251

	def_text_script CompText874D74C_unk252

	def_text_script CompText874D74C_unk253

	def_text_script CompText874D74C_unk254

	