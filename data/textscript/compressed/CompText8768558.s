	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8768558::
	.word 0xD7300

	text_archive_start

	def_text_script CompText8768558_unk0
	ts_check_flag [
		flag: 0x632,
		jumpIfTrue: CompText8768558_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mom,there's a\n"
	.string "guest...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x6
	.string "Oh,she was here\n"
	.string "just a second ago..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Huh!? She left?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x6
	.string "Yes...\n"
	.string "She should still\n"
	.string "be closeby though."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Who was it anyways?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x6
	.string "Well... It was a\n"
	.string "cute girl with\n"
	.string "two big hairclips."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "She looked kind of\n"
	.string "sad..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I bet it was Iris!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x6
	.string "Is she your\n"
	.string "friend?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yeah..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x6
	.string "Did you have some\n"
	.string "kind of plans with\n"
	.string "her?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should try to\n"
	.string "find her."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "OK..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x632
	ts_end

	def_text_script CompText8768558_unk1
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Lan,you should\n"
	.string "invite your friends\n"
	.string "from school over..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll even bake some\n"
	.string "goodies for you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk2
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Welcome home...\n"
	.string "But aren't you a\n"
	.string "little late?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...You didn't\n"
	.string "get detention did\n"
	.string "you?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk3
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "Since yesterday's\n"
	.string "research was behind\n"
	.string "schedule,I stayed up"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "all night and was\n"
	.string "able to finish early\n"
	.string "this morning."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*yawn* I think I'll\n"
	.string "lie down..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk4

	def_text_script CompText8768558_unk5
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Something seems\n"
	.string "to to be wrong\n"
	.string "on the net."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Even your father\n"
	.string "was mumbling on\n"
	.string "the phone..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk6
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "...Hmm,I see...\n"
	.string "Gotcha."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Time to alert the\n"
	.string "NetPolice so they"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "can regulate normal\n"
	.string "users jacking in..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk7

	def_text_script CompText8768558_unk8

	def_text_script CompText8768558_unk9

	def_text_script CompText8768558_unk10

	def_text_script CompText8768558_unk11

	def_text_script CompText8768558_unk12

	def_text_script CompText8768558_unk13

	def_text_script CompText8768558_unk14

	def_text_script CompText8768558_unk15
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Something happened\n"
	.string "on the Net it\n"
	.string "seems."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,I know you'll\n"
	.string "want to go check\n"
	.string "it out,but for now"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you are not allowed\n"
	.string "to use the Net."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk16

	def_text_script CompText8768558_unk17

	def_text_script CompText8768558_unk18

	def_text_script CompText8768558_unk19

	def_text_script CompText8768558_unk20
	ts_check_flag [
		flag: 0x616,
		jumpIfTrue: CompText8768558_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "Lan,don't jack in\n"
	.string "to the Net...\n"
	.string "Do you understand?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk21
	ts_check_flag [
		flag: 0x633,
		jumpIfTrue: CompText8768558_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Da...DAD..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x5
	.string "What's the matter,\n"
	.string "Lan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I want to know\n"
	.string "how to destroy\n"
	.string "a Cybeast!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x5
	.string "Lan... You..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Did you see a\n"
	.string "Cybeast...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "...Yes."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x5
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "Lan!\n"
	.string "This situation is\n"
	.string "too big for you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The NetPolice are\n"
	.string "already on the case!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You and MegaMan\n"
	.string "don't have to\n"
	.string "worry about it..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Leave dealing with\n"
	.string "Cybeasts up to the\n"
	.string "adults."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't even think\n"
	.string "of getting close\n"
	.string "to a Cybeast!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Dad..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x5
	.string "I'm sorry Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You have to\n"
	.string "understand how"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "dangerous\n"
	.string "Cybeasts are..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just listen to your\n"
	.string "Dad this time and\n"
	.string "be a good boy,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "......"
	ts_key_wait any=0x0
	ts_flag_set flag=0x633
	ts_end

	def_text_script CompText8768558_unk22
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "Just go to your\n"
	.string "room and be a\n"
	.string "good boy... OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk23

	def_text_script CompText8768558_unk24

	def_text_script CompText8768558_unk25
	ts_check_chapter [
		lower: 0x25,
		upper: 0x25,
		jumpIfInRange: CompText8768558_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Something terrible\n"
	.string "has happened..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,just don't go\n"
	.string "and do something\n"
	.string "crazy..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk26

	def_text_script CompText8768558_unk27

	def_text_script CompText8768558_unk28

	def_text_script CompText8768558_unk29

	def_text_script CompText8768558_unk30
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Lan,don't go doing\n"
	.string "anything crazy..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk31

	def_text_script CompText8768558_unk32

	def_text_script CompText8768558_unk33

	def_text_script CompText8768558_unk34

	def_text_script CompText8768558_unk35
	ts_check_flag [
		flag: 0x86C,
		jumpIfTrue: CompText8768558_unk36_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x86C
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0xA,
	]
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "...AH! Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's terrible!\n"
	.string "Your father...\n"
	.string "He..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Say it Mom!\n"
	.string "Just say it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What happened\n"
	.string "to Dad!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x6
	.string "Just a minute ago,\n"
	.string "the police came to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "tell me that your\n"
	.string "Dad has been\n"
	.string "arrested!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Arrested..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What was he\n"
	.string "arrested for..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x6
	.string "He was arrested for\n"
	.string "hacking the Green\n"
	.string "Town court system..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "The court system..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You mean the\n"
	.string "JudgeTree!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's ridiculous!\n"
	.string "Dad has no reason\n"
	.string "to hack anything!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I know!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He has nothing to\n"
	.string "gain by hacking the\n"
	.string "JudgeTree!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Hey Mom!\n"
	.string "What's gonna happen\n"
	.string "to Dad?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x6
	.string "They took him to\n"
	.string "Green Town..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're going to\n"
	.string "put him on trial..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Lan,let's go to\n"
	.string "Green Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_sound_fade_in_bgm [
		track: 0xB,
		length: 0x7,
	]
	ts_end

	def_text_script CompText8768558_unk36
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Yuichiro..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk37

	def_text_script CompText8768558_unk38

	def_text_script CompText8768558_unk39

	def_text_script CompText8768558_unk40
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Huh? School is\n"
	.string "out already?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you're going\n"
	.string "out to play,don't\n"
	.string "come home too late!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk41
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "You went to\n"
	.string "Green Town!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should have\n"
	.string "brought me some\n"
	.string "flowers!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The flowers there\n"
	.string "are famous for\n"
	.string "being very pretty!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk42
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "Becoming a witness\n"
	.string "is incredible..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've gained\n"
	.string "another good\n"
	.string "experience,Lan."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8768558_unk43

	def_text_script CompText8768558_unk44

	def_text_script CompText8768558_unk45

	def_text_script CompText8768558_unk46

	def_text_script CompText8768558_unk47

	def_text_script CompText8768558_unk48

	def_text_script CompText8768558_unk49

	def_text_script CompText8768558_unk50

	def_text_script CompText8768558_unk51

	def_text_script CompText8768558_unk52

	def_text_script CompText8768558_unk53

	def_text_script CompText8768558_unk54

	def_text_script CompText8768558_unk55

	def_text_script CompText8768558_unk56

	def_text_script CompText8768558_unk57

	def_text_script CompText8768558_unk58

	def_text_script CompText8768558_unk59

	def_text_script CompText8768558_unk60

	def_text_script CompText8768558_unk61

	def_text_script CompText8768558_unk62

	def_text_script CompText8768558_unk63

	def_text_script CompText8768558_unk64

	def_text_script CompText8768558_unk65

	def_text_script CompText8768558_unk66

	def_text_script CompText8768558_unk67

	def_text_script CompText8768558_unk68

	def_text_script CompText8768558_unk69

	def_text_script CompText8768558_unk70

	def_text_script CompText8768558_unk71

	def_text_script CompText8768558_unk72

	def_text_script CompText8768558_unk73

	def_text_script CompText8768558_unk74

	def_text_script CompText8768558_unk75

	def_text_script CompText8768558_unk76

	def_text_script CompText8768558_unk77

	def_text_script CompText8768558_unk78

	def_text_script CompText8768558_unk79

	def_text_script CompText8768558_unk80

	def_text_script CompText8768558_unk81

	def_text_script CompText8768558_unk82

	def_text_script CompText8768558_unk83

	def_text_script CompText8768558_unk84

	def_text_script CompText8768558_unk85

	def_text_script CompText8768558_unk86

	def_text_script CompText8768558_unk87

	def_text_script CompText8768558_unk88

	def_text_script CompText8768558_unk89

	def_text_script CompText8768558_unk90

	def_text_script CompText8768558_unk91

	def_text_script CompText8768558_unk92

	def_text_script CompText8768558_unk93

	def_text_script CompText8768558_unk94

	def_text_script CompText8768558_unk95

	def_text_script CompText8768558_unk96

	def_text_script CompText8768558_unk97

	def_text_script CompText8768558_unk98

	def_text_script CompText8768558_unk99

	def_text_script CompText8768558_unk100

	def_text_script CompText8768558_unk101

	def_text_script CompText8768558_unk102

	def_text_script CompText8768558_unk103

	def_text_script CompText8768558_unk104

	def_text_script CompText8768558_unk105

	def_text_script CompText8768558_unk106

	def_text_script CompText8768558_unk107

	def_text_script CompText8768558_unk108

	def_text_script CompText8768558_unk109

	def_text_script CompText8768558_unk110

	def_text_script CompText8768558_unk111

	def_text_script CompText8768558_unk112

	def_text_script CompText8768558_unk113

	def_text_script CompText8768558_unk114

	def_text_script CompText8768558_unk115

	def_text_script CompText8768558_unk116

	def_text_script CompText8768558_unk117

	def_text_script CompText8768558_unk118

	def_text_script CompText8768558_unk119

	def_text_script CompText8768558_unk120

	def_text_script CompText8768558_unk121

	def_text_script CompText8768558_unk122

	def_text_script CompText8768558_unk123

	def_text_script CompText8768558_unk124

	def_text_script CompText8768558_unk125

	def_text_script CompText8768558_unk126

	def_text_script CompText8768558_unk127

	def_text_script CompText8768558_unk128

	def_text_script CompText8768558_unk129

	def_text_script CompText8768558_unk130

	def_text_script CompText8768558_unk131

	def_text_script CompText8768558_unk132

	def_text_script CompText8768558_unk133

	def_text_script CompText8768558_unk134

	def_text_script CompText8768558_unk135

	def_text_script CompText8768558_unk136

	def_text_script CompText8768558_unk137

	def_text_script CompText8768558_unk138

	def_text_script CompText8768558_unk139

	def_text_script CompText8768558_unk140

	def_text_script CompText8768558_unk141

	def_text_script CompText8768558_unk142

	def_text_script CompText8768558_unk143

	def_text_script CompText8768558_unk144

	def_text_script CompText8768558_unk145

	def_text_script CompText8768558_unk146

	def_text_script CompText8768558_unk147

	def_text_script CompText8768558_unk148

	def_text_script CompText8768558_unk149

	def_text_script CompText8768558_unk150

	def_text_script CompText8768558_unk151

	def_text_script CompText8768558_unk152

	def_text_script CompText8768558_unk153

	def_text_script CompText8768558_unk154

	def_text_script CompText8768558_unk155

	def_text_script CompText8768558_unk156

	def_text_script CompText8768558_unk157

	def_text_script CompText8768558_unk158

	def_text_script CompText8768558_unk159

	def_text_script CompText8768558_unk160

	def_text_script CompText8768558_unk161

	def_text_script CompText8768558_unk162

	def_text_script CompText8768558_unk163

	def_text_script CompText8768558_unk164

	def_text_script CompText8768558_unk165

	def_text_script CompText8768558_unk166

	def_text_script CompText8768558_unk167

	def_text_script CompText8768558_unk168

	def_text_script CompText8768558_unk169

	def_text_script CompText8768558_unk170

	def_text_script CompText8768558_unk171

	def_text_script CompText8768558_unk172

	def_text_script CompText8768558_unk173

	def_text_script CompText8768558_unk174

	def_text_script CompText8768558_unk175

	def_text_script CompText8768558_unk176

	def_text_script CompText8768558_unk177

	def_text_script CompText8768558_unk178

	def_text_script CompText8768558_unk179

	def_text_script CompText8768558_unk180

	def_text_script CompText8768558_unk181

	def_text_script CompText8768558_unk182

	def_text_script CompText8768558_unk183

	def_text_script CompText8768558_unk184

	def_text_script CompText8768558_unk185

	def_text_script CompText8768558_unk186

	def_text_script CompText8768558_unk187

	def_text_script CompText8768558_unk188

	def_text_script CompText8768558_unk189

	def_text_script CompText8768558_unk190

	def_text_script CompText8768558_unk191

	def_text_script CompText8768558_unk192

	def_text_script CompText8768558_unk193

	def_text_script CompText8768558_unk194

	def_text_script CompText8768558_unk195

	def_text_script CompText8768558_unk196

	def_text_script CompText8768558_unk197

	def_text_script CompText8768558_unk198

	def_text_script CompText8768558_unk199

	def_text_script CompText8768558_unk200

	def_text_script CompText8768558_unk201

	def_text_script CompText8768558_unk202

	def_text_script CompText8768558_unk203

	def_text_script CompText8768558_unk204

	def_text_script CompText8768558_unk205

	def_text_script CompText8768558_unk206

	def_text_script CompText8768558_unk207

	def_text_script CompText8768558_unk208

	def_text_script CompText8768558_unk209

	def_text_script CompText8768558_unk210

	def_text_script CompText8768558_unk211

	def_text_script CompText8768558_unk212

	def_text_script CompText8768558_unk213

	def_text_script CompText8768558_unk214

	def_text_script CompText8768558_unk215

	def_text_script CompText8768558_unk216

	def_text_script CompText8768558_unk217

	def_text_script CompText8768558_unk218

	def_text_script CompText8768558_unk219

	def_text_script CompText8768558_unk220

	def_text_script CompText8768558_unk221

	def_text_script CompText8768558_unk222

	def_text_script CompText8768558_unk223

	def_text_script CompText8768558_unk224

	def_text_script CompText8768558_unk225

	def_text_script CompText8768558_unk226

	def_text_script CompText8768558_unk227

	def_text_script CompText8768558_unk228

	def_text_script CompText8768558_unk229

	def_text_script CompText8768558_unk230

	def_text_script CompText8768558_unk231

	def_text_script CompText8768558_unk232

	def_text_script CompText8768558_unk233

	def_text_script CompText8768558_unk234

	def_text_script CompText8768558_unk235

	def_text_script CompText8768558_unk236

	def_text_script CompText8768558_unk237

	def_text_script CompText8768558_unk238

	def_text_script CompText8768558_unk239

	def_text_script CompText8768558_unk240

	def_text_script CompText8768558_unk241

	def_text_script CompText8768558_unk242

	def_text_script CompText8768558_unk243

	def_text_script CompText8768558_unk244

	def_text_script CompText8768558_unk245

	def_text_script CompText8768558_unk246

	def_text_script CompText8768558_unk247

	def_text_script CompText8768558_unk248

	def_text_script CompText8768558_unk249

	def_text_script CompText8768558_unk250

	def_text_script CompText8768558_unk251

	def_text_script CompText8768558_unk252

	def_text_script CompText8768558_unk253

	def_text_script CompText8768558_unk254

	