	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8764FAC::
	.word 0x109F00

	text_archive_start

	def_text_script CompText8764FAC_unk0
	ts_check_flag [
		flag: 0x631,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x631
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8764FAC_unk1
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "Take care..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk2
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Tomorrow around this\n"
	.string "time there will be"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "an event in\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Interesting things\n"
	.string "will happen so you\n"
	.string "should really come!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hehehe..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk3
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "What will happen?\n"
	.string "I can't wait to\n"
	.string "find out!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh yeah,AsterLand\n"
	.string "is open today!\n"
	.string "I gotta go there!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk4
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Lately the Net\n"
	.string "has been dark,and\n"
	.string "kinda scary..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But with events like\n"
	.string "this,it kinda makes\n"
	.string "things brighter!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk5
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "It seems like the\n"
	.string "chip shop is open!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can hear lively\n"
	.string "voices inside..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk6

	def_text_script CompText8764FAC_unk7

	def_text_script CompText8764FAC_unk8

	def_text_script CompText8764FAC_unk9

	def_text_script CompText8764FAC_unk10
	ts_check_flag [
		flag: 0x612,
		jumpIfTrue: 0xF,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "I bought lots of\n"
	.string "chips!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now it's time to go\n"
	.string "to CentralArea3!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk11
	ts_check_chapter [
		lower: 0x25,
		upper: 0x25,
		jumpIfInRange: 0x24,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "My Navi's already\n"
	.string "on its way to Central\n"
	.string "Area."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I hope it's a fun\n"
	.string "event!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh yeah! I need\n"
	.string "to buy some chips..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk12
	ts_check_flag [
		flag: 0x612,
		jumpIfTrue: 0x11,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "I've got a feeling\n"
	.string "something interesting\n"
	.string "is going to happen."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But what do I\n"
	.string "know..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk13
	ts_check_flag [
		flag: 0x612,
		jumpIfTrue: 0x12,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "That chip shop is\n"
	.string "really flourishing!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe it's because\n"
	.string "of today's event?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm planning on\n"
	.string "jacking in later and\n"
	.string "checking it out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk14

	def_text_script CompText8764FAC_unk15
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "About time to go to\n"
	.string "CentralArea3..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "You can't jack in\n"
	.string "now!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x9
	.string "Huh...What? Why not?\n"
	.string "Did something\n"
	.string "happen?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk16
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "My Navi...\n"
	.string "What just happened?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk17
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "Uh-huh...\n"
	.string "I can't remember a\n"
	.string "thing..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Was today supposed\n"
	.string "to be something\n"
	.string "special?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk18
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "What just happened!?\n"
	.string "Hurry up and call\n"
	.string "the NetPolice...!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh no no no..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk19

	def_text_script CompText8764FAC_unk20
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "I heard Cybeasts\n"
	.string "have appeared in\n"
	.string "CentralArea!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There are people on\n"
	.string "the Net who"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "heard the Cybeasts'\n"
	.string "roar..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If that's true,I'm\n"
	.string "not going on the\n"
	.string "Net anymore!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk21
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "You have to catch\n"
	.string "the bad guys!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x15
	.string "Yeah. I'm going to\n"
	.string "give it everything\n"
	.string "I've got!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk22
	ts_check_chapter [
		lower: 0x25,
		upper: 0x25,
		jumpIfInRange: 0x25,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "The NetPolice are\n"
	.string "all over! Did\n"
	.string "something happen?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk23
	ts_check_chapter [
		lower: 0x24,
		upper: 0x24,
		jumpIfInRange: 0x1F,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Please don't jack\n"
	.string "in to the Net!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It is incredibly\n"
	.string "dangerous on the\n"
	.string "Net right now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk24
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "What are the\n"
	.string "girl's features?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "Ummm,she was wearing\n"
	.string "black clothes,and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "she had a heart\n"
	.string "painted on her\n"
	.string "face..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x15
	.string "I see... I see..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk25

	def_text_script CompText8764FAC_unk26

	def_text_script CompText8764FAC_unk27

	def_text_script CompText8764FAC_unk28

	def_text_script CompText8764FAC_unk29

	def_text_script CompText8764FAC_unk30
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "It seems like the\n"
	.string "Cybeasts disappeared\n"
	.string "all of a sudden!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What in the world\n"
	.string "happened?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk31
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "There was an event\n"
	.string "in CentralArea3."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We are looking for\n"
	.string "the Navi's Operator."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if there's\n"
	.string "something that would\n"
	.string "prove helpful..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk32
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "I'm a judge for\n"
	.string "the NetPolice..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The girl we're\n"
	.string "looking for must\n"
	.string "be around here..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk33

	def_text_script CompText8764FAC_unk34

	def_text_script CompText8764FAC_unk35
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Lots of NetPolice\n"
	.string "are here... The\n"
	.string "NetPolice are cool!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk36
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "A rumor is spreading\n"
	.string "that Cybeasts have\n"
	.string "shown up on the Net."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if it's\n"
	.string "true...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk37
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "The Cybeasts have\n"
	.string "been brought back\n"
	.string "to life...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't be ridiculous!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If they we're back,\n"
	.string "it'd be the end of\n"
	.string "Net society..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk38
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Because of the\n"
	.string "incident,my Navi\n"
	.string "refuses to move!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And thanks to that,\n"
	.string "I can't finish any\n"
	.string "of my work..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk39

	def_text_script CompText8764FAC_unk40

	def_text_script CompText8764FAC_unk41

	def_text_script CompText8764FAC_unk42

	def_text_script CompText8764FAC_unk43

	def_text_script CompText8764FAC_unk44

	def_text_script CompText8764FAC_unk45

	def_text_script CompText8764FAC_unk46

	def_text_script CompText8764FAC_unk47

	def_text_script CompText8764FAC_unk48

	def_text_script CompText8764FAC_unk49

	def_text_script CompText8764FAC_unk50
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Check out this\n"
	.string "Bird Statue. Doesn't"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it look like it's\n"
	.string "flapping its wings?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It symbolizes\n"
	.string "moving up and away\n"
	.string "to the future!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Makes you think,\n"
	.string "doesn't it?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk51
	ts_mugshot_show mugshot=0x1A
	ts_msg_open
	.string "I'm off to buy\n"
	.string "some water in\n"
	.string "Seaside Town."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The water there is\n"
	.string "famous for being\n"
	.string "good for you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk52
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Oh no...\n"
	.string "What should I do?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I feel like going\n"
	.string "on a chip buying\n"
	.string "spree..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk53

	def_text_script CompText8764FAC_unk54

	def_text_script CompText8764FAC_unk55
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "You're going to\n"
	.string "Green Town?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't they have a\n"
	.string "huge courthouse\n"
	.string "there?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'd like to see it\n"
	.string "if someone would\n"
	.string "take me..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk56
	ts_mugshot_show mugshot=0x1A
	ts_msg_open
	.string "I just got back\n"
	.string "from buying water\n"
	.string "in Seaside Town."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Starting tomorrow,\n"
	.string "I'll drink it\n"
	.string "everyday!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Then I'll be\n"
	.string "healthier than ever!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk57
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "They collected lots\n"
	.string "of taxes to build\n"
	.string "the Expo Site."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can't wait to see\n"
	.string "what they spent all\n"
	.string "of that money on..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk58

	def_text_script CompText8764FAC_unk59

	def_text_script CompText8764FAC_unk60
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "They're fixing up\n"
	.string "the Green Town\n"
	.string "Courthouse,you know."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The JudgeTree there\n"
	.string "is especially\n"
	.string "amazing!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm curious to know\n"
	.string "what kind of changes\n"
	.string "they're making,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "they won't release\n"
	.string "that information to\n"
	.string "the general public."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk61
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "What's the matter?\n"
	.string "You're face is all\n"
	.string "scrunched up..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Was there an\n"
	.string "incident?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk62
	ts_mugshot_show mugshot=0x1A
	ts_msg_open
	.string "I know the Green\n"
	.string "Town Flower Shop\n"
	.string "really well..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Flowers grown in\n"
	.string "Green Town have a"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "special smell and\n"
	.string "beautiful color."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8764FAC_unk63

	def_text_script CompText8764FAC_unk64

	def_text_script CompText8764FAC_unk65

	def_text_script CompText8764FAC_unk66

	def_text_script CompText8764FAC_unk67

	def_text_script CompText8764FAC_unk68

	def_text_script CompText8764FAC_unk69

	def_text_script CompText8764FAC_unk70

	def_text_script CompText8764FAC_unk71

	def_text_script CompText8764FAC_unk72

	def_text_script CompText8764FAC_unk73

	def_text_script CompText8764FAC_unk74

	def_text_script CompText8764FAC_unk75

	def_text_script CompText8764FAC_unk76

	def_text_script CompText8764FAC_unk77

	def_text_script CompText8764FAC_unk78

	def_text_script CompText8764FAC_unk79

	def_text_script CompText8764FAC_unk80

	def_text_script CompText8764FAC_unk81

	def_text_script CompText8764FAC_unk82

	def_text_script CompText8764FAC_unk83

	def_text_script CompText8764FAC_unk84

	def_text_script CompText8764FAC_unk85

	def_text_script CompText8764FAC_unk86

	def_text_script CompText8764FAC_unk87

	def_text_script CompText8764FAC_unk88

	def_text_script CompText8764FAC_unk89

	def_text_script CompText8764FAC_unk90

	def_text_script CompText8764FAC_unk91

	def_text_script CompText8764FAC_unk92

	def_text_script CompText8764FAC_unk93

	def_text_script CompText8764FAC_unk94

	def_text_script CompText8764FAC_unk95

	def_text_script CompText8764FAC_unk96

	def_text_script CompText8764FAC_unk97

	def_text_script CompText8764FAC_unk98

	def_text_script CompText8764FAC_unk99

	def_text_script CompText8764FAC_unk100

	def_text_script CompText8764FAC_unk101

	def_text_script CompText8764FAC_unk102

	def_text_script CompText8764FAC_unk103

	def_text_script CompText8764FAC_unk104

	def_text_script CompText8764FAC_unk105

	def_text_script CompText8764FAC_unk106

	def_text_script CompText8764FAC_unk107

	def_text_script CompText8764FAC_unk108

	def_text_script CompText8764FAC_unk109

	def_text_script CompText8764FAC_unk110

	def_text_script CompText8764FAC_unk111

	def_text_script CompText8764FAC_unk112

	def_text_script CompText8764FAC_unk113

	def_text_script CompText8764FAC_unk114

	def_text_script CompText8764FAC_unk115

	def_text_script CompText8764FAC_unk116

	def_text_script CompText8764FAC_unk117

	def_text_script CompText8764FAC_unk118

	def_text_script CompText8764FAC_unk119

	def_text_script CompText8764FAC_unk120

	def_text_script CompText8764FAC_unk121

	def_text_script CompText8764FAC_unk122

	def_text_script CompText8764FAC_unk123

	def_text_script CompText8764FAC_unk124

	def_text_script CompText8764FAC_unk125

	def_text_script CompText8764FAC_unk126

	def_text_script CompText8764FAC_unk127

	def_text_script CompText8764FAC_unk128

	def_text_script CompText8764FAC_unk129

	def_text_script CompText8764FAC_unk130

	def_text_script CompText8764FAC_unk131

	def_text_script CompText8764FAC_unk132

	def_text_script CompText8764FAC_unk133

	def_text_script CompText8764FAC_unk134

	def_text_script CompText8764FAC_unk135

	def_text_script CompText8764FAC_unk136

	def_text_script CompText8764FAC_unk137

	def_text_script CompText8764FAC_unk138

	def_text_script CompText8764FAC_unk139

	def_text_script CompText8764FAC_unk140

	def_text_script CompText8764FAC_unk141

	def_text_script CompText8764FAC_unk142

	def_text_script CompText8764FAC_unk143

	def_text_script CompText8764FAC_unk144

	def_text_script CompText8764FAC_unk145

	def_text_script CompText8764FAC_unk146

	def_text_script CompText8764FAC_unk147

	def_text_script CompText8764FAC_unk148

	def_text_script CompText8764FAC_unk149

	def_text_script CompText8764FAC_unk150

	def_text_script CompText8764FAC_unk151

	def_text_script CompText8764FAC_unk152

	def_text_script CompText8764FAC_unk153

	def_text_script CompText8764FAC_unk154

	def_text_script CompText8764FAC_unk155

	def_text_script CompText8764FAC_unk156

	def_text_script CompText8764FAC_unk157

	def_text_script CompText8764FAC_unk158

	def_text_script CompText8764FAC_unk159

	def_text_script CompText8764FAC_unk160

	def_text_script CompText8764FAC_unk161

	def_text_script CompText8764FAC_unk162

	def_text_script CompText8764FAC_unk163

	def_text_script CompText8764FAC_unk164

	def_text_script CompText8764FAC_unk165

	def_text_script CompText8764FAC_unk166

	def_text_script CompText8764FAC_unk167

	def_text_script CompText8764FAC_unk168

	def_text_script CompText8764FAC_unk169

	def_text_script CompText8764FAC_unk170

	def_text_script CompText8764FAC_unk171

	def_text_script CompText8764FAC_unk172

	def_text_script CompText8764FAC_unk173

	def_text_script CompText8764FAC_unk174

	def_text_script CompText8764FAC_unk175

	def_text_script CompText8764FAC_unk176

	def_text_script CompText8764FAC_unk177

	def_text_script CompText8764FAC_unk178

	def_text_script CompText8764FAC_unk179

	def_text_script CompText8764FAC_unk180

	def_text_script CompText8764FAC_unk181

	def_text_script CompText8764FAC_unk182

	def_text_script CompText8764FAC_unk183

	def_text_script CompText8764FAC_unk184

	def_text_script CompText8764FAC_unk185

	def_text_script CompText8764FAC_unk186

	def_text_script CompText8764FAC_unk187

	def_text_script CompText8764FAC_unk188

	def_text_script CompText8764FAC_unk189

	def_text_script CompText8764FAC_unk190

	def_text_script CompText8764FAC_unk191

	def_text_script CompText8764FAC_unk192

	def_text_script CompText8764FAC_unk193

	def_text_script CompText8764FAC_unk194

	def_text_script CompText8764FAC_unk195

	def_text_script CompText8764FAC_unk196

	def_text_script CompText8764FAC_unk197

	def_text_script CompText8764FAC_unk198

	def_text_script CompText8764FAC_unk199

	def_text_script CompText8764FAC_unk200

	def_text_script CompText8764FAC_unk201

	def_text_script CompText8764FAC_unk202

	def_text_script CompText8764FAC_unk203

	def_text_script CompText8764FAC_unk204

	def_text_script CompText8764FAC_unk205

	def_text_script CompText8764FAC_unk206

	def_text_script CompText8764FAC_unk207

	def_text_script CompText8764FAC_unk208

	def_text_script CompText8764FAC_unk209

	def_text_script CompText8764FAC_unk210

	def_text_script CompText8764FAC_unk211

	def_text_script CompText8764FAC_unk212

	def_text_script CompText8764FAC_unk213

	def_text_script CompText8764FAC_unk214

	def_text_script CompText8764FAC_unk215

	def_text_script CompText8764FAC_unk216

	def_text_script CompText8764FAC_unk217

	def_text_script CompText8764FAC_unk218

	def_text_script CompText8764FAC_unk219

	def_text_script CompText8764FAC_unk220

	def_text_script CompText8764FAC_unk221

	def_text_script CompText8764FAC_unk222

	def_text_script CompText8764FAC_unk223

	def_text_script CompText8764FAC_unk224

	def_text_script CompText8764FAC_unk225

	def_text_script CompText8764FAC_unk226

	def_text_script CompText8764FAC_unk227

	def_text_script CompText8764FAC_unk228

	def_text_script CompText8764FAC_unk229

	def_text_script CompText8764FAC_unk230

	def_text_script CompText8764FAC_unk231

	def_text_script CompText8764FAC_unk232

	def_text_script CompText8764FAC_unk233

	def_text_script CompText8764FAC_unk234

	def_text_script CompText8764FAC_unk235

	def_text_script CompText8764FAC_unk236

	def_text_script CompText8764FAC_unk237

	def_text_script CompText8764FAC_unk238

	def_text_script CompText8764FAC_unk239

	def_text_script CompText8764FAC_unk240

	def_text_script CompText8764FAC_unk241

	def_text_script CompText8764FAC_unk242

	def_text_script CompText8764FAC_unk243

	def_text_script CompText8764FAC_unk244

	def_text_script CompText8764FAC_unk245

	def_text_script CompText8764FAC_unk246

	def_text_script CompText8764FAC_unk247

	def_text_script CompText8764FAC_unk248

	def_text_script CompText8764FAC_unk249

	def_text_script CompText8764FAC_unk250

	def_text_script CompText8764FAC_unk251

	def_text_script CompText8764FAC_unk252

	def_text_script CompText8764FAC_unk253

	def_text_script CompText8764FAC_unk254

	