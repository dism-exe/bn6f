	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877EDD8::
	.word 0xABE00

	text_archive_start

	def_text_script CompText877EDD8_unk0
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x41,
		upper: 0x41,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_flag [
		flag: 0xA60,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Um... I'm here to\n"
	.string "take part in the\n"
	.string "Selection Test..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0xF,
	]
	.string "Can you please show\n"
	.string "me the E-mail you\n"
	.string "got from us?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Ah,yes!..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0xF,
	]
	.string "... Ah,I see.\n"
	.string "Thank you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well then,please\n"
	.string "take the elevator on\n"
	.string "up to Sky Town."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "After you get up\n"
	.string "there,please head\n"
	.string "straight ahead"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "towards the big\n"
	.string "building."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My Navi will be\n"
	.string "waiting inside,so"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "please check in with\n"
	.string "him."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "OK!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xA60,
	]
	ts_end

	def_text_script CompText877EDD8_unk1
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Good luck to you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk2
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "Ooh...\n"
	.string "I'm so nervous!\n"
	.string "Gotta concentrate!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk3
	ts_check_chapter [
		lower: 0x41,
		upper: 0x41,
		jumpIfInRange: 0xB,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xA,
	]
	ts_msg_open
	.string "Once you get in the\n"
	.string "elevator,you'll be\n"
	.string "taken straight up"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "30,000 feet into\n"
	.string "the air to Sky Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I'm scared of\n"
	.string "heights,so I can't\n"
	.string "ride it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk4
	ts_check_flag [
		flag: 0xABF,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0xABF,
	]
	ts_mugshot_show [
		mugshot: 0x20,
	]
	ts_msg_open
	.string "I am Ann Zap."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I am holding Elec\n"
	.string "Operating classes on\n"
	.string "that helipad below."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Elec Operating?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x20,
	]
	.string "Yes. \"How to use\n"
	.string "electricity in\n"
	.string "NetBattles\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you have time,\n"
	.string "why don't you come\n"
	.string "on by?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk5
	ts_check_flag [
		flag: 0xAC0,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0xAC0,
	]
	ts_mugshot_show [
		mugshot: 0x21,
	]
	ts_msg_open
	.string "Well if it isn't\n"
	.string "Lan! It's been a\n"
	.string "long time,buddy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Dingo!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What are you doing\n"
	.string "in a place like\n"
	.string "this!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x21,
	]
	.string "I opened a NetBattle\n"
	.string "class"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "right down there on\n"
	.string "the helipad!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I want to teach\n"
	.string "people how to chop"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "things clean in\n"
	.string "two,just like\n"
	.string "TomahawkMan,so"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "if you want,come\n"
	.string "check out my class,\n"
	.string "alright!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk6
	ts_mugshot_show [
		mugshot: 0x20,
	]
	ts_msg_open
	.string "If you have time,\n"
	.string "why don't you come\n"
	.string "take my class?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk7
	ts_mugshot_show [
		mugshot: 0x21,
	]
	ts_msg_open
	.string "If you want,come\n"
	.string "take my class,OK!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk8

	def_text_script CompText877EDD8_unk9

	def_text_script CompText877EDD8_unk10
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Oh,are you finished\n"
	.string "already?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... No?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sorry to bother you\n"
	.string "then. Good luck!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk11
	ts_mugshot_show [
		mugshot: 0xA,
	]
	ts_msg_open
	.string "How was the elevator\n"
	.string "ride? Were you\n"
	.string "scared?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sadly,I'm afraid of\n"
	.string "heights,so I can't\n"
	.string "ride it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk12

	def_text_script CompText877EDD8_unk13

	def_text_script CompText877EDD8_unk14

	def_text_script CompText877EDD8_unk15
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "What!?\n"
	.string "... The Undernet!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's true that a\n"
	.string "bunch of suspicious\n"
	.string "guys have been"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "showing up from the\n"
	.string "Undernet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But there's nothing\n"
	.string "I can really do..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "*sigh...*"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk16

	def_text_script CompText877EDD8_unk17

	def_text_script CompText877EDD8_unk18

	def_text_script CompText877EDD8_unk19

	def_text_script CompText877EDD8_unk20
	ts_mugshot_show [
		mugshot: 0x10,
	]
	ts_msg_open
	.string "The cause of the\n"
	.string "recent string of\n"
	.string "strange weather is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "most certainly on\n"
	.string "the Sky Town\n"
	.string "computer system."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The system admins\n"
	.string "are doing repair\n"
	.string "work up there now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wonder how they're\n"
	.string "doing?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk21

	def_text_script CompText877EDD8_unk22

	def_text_script CompText877EDD8_unk23

	def_text_script CompText877EDD8_unk24

	def_text_script CompText877EDD8_unk25

	def_text_script CompText877EDD8_unk26

	def_text_script CompText877EDD8_unk27

	def_text_script CompText877EDD8_unk28

	def_text_script CompText877EDD8_unk29

	def_text_script CompText877EDD8_unk30

	def_text_script CompText877EDD8_unk31

	def_text_script CompText877EDD8_unk32

	def_text_script CompText877EDD8_unk33

	def_text_script CompText877EDD8_unk34

	def_text_script CompText877EDD8_unk35

	def_text_script CompText877EDD8_unk36

	def_text_script CompText877EDD8_unk37

	def_text_script CompText877EDD8_unk38

	def_text_script CompText877EDD8_unk39

	def_text_script CompText877EDD8_unk40
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Because the Force\n"
	.string "Program was stolen,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sky Town is\n"
	.string "currently running on\n"
	.string "back-up electricity."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's not generating\n"
	.string "enough power,so we\n"
	.string "are bringing every-"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "thing that is not\n"
	.string "needed down to the\n"
	.string "ground."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This is what you get\n"
	.string "when you build a"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Town on the latest\n"
	.string "technology...\n"
	.string "O-ho,ho..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk41

	def_text_script CompText877EDD8_unk42

	def_text_script CompText877EDD8_unk43

	def_text_script CompText877EDD8_unk44

	def_text_script CompText877EDD8_unk45
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Sky Town is running\n"
	.string "on its back-up\n"
	.string "energy again."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wish they would\n"
	.string "hurry up and get"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "things back to\n"
	.string "normal!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877EDD8_unk46

	def_text_script CompText877EDD8_unk47

	def_text_script CompText877EDD8_unk48

	def_text_script CompText877EDD8_unk49

	def_text_script CompText877EDD8_unk50

	def_text_script CompText877EDD8_unk51

	def_text_script CompText877EDD8_unk52

	def_text_script CompText877EDD8_unk53

	def_text_script CompText877EDD8_unk54

	def_text_script CompText877EDD8_unk55

	def_text_script CompText877EDD8_unk56

	def_text_script CompText877EDD8_unk57

	def_text_script CompText877EDD8_unk58

	def_text_script CompText877EDD8_unk59

	def_text_script CompText877EDD8_unk60

	def_text_script CompText877EDD8_unk61

	def_text_script CompText877EDD8_unk62

	def_text_script CompText877EDD8_unk63

	def_text_script CompText877EDD8_unk64

	def_text_script CompText877EDD8_unk65

	def_text_script CompText877EDD8_unk66

	def_text_script CompText877EDD8_unk67

	def_text_script CompText877EDD8_unk68

	def_text_script CompText877EDD8_unk69

	def_text_script CompText877EDD8_unk70

	def_text_script CompText877EDD8_unk71

	def_text_script CompText877EDD8_unk72

	def_text_script CompText877EDD8_unk73

	def_text_script CompText877EDD8_unk74

	def_text_script CompText877EDD8_unk75

	def_text_script CompText877EDD8_unk76

	def_text_script CompText877EDD8_unk77

	def_text_script CompText877EDD8_unk78

	def_text_script CompText877EDD8_unk79

	def_text_script CompText877EDD8_unk80

	def_text_script CompText877EDD8_unk81

	def_text_script CompText877EDD8_unk82

	def_text_script CompText877EDD8_unk83

	def_text_script CompText877EDD8_unk84

	def_text_script CompText877EDD8_unk85

	def_text_script CompText877EDD8_unk86

	def_text_script CompText877EDD8_unk87

	def_text_script CompText877EDD8_unk88

	def_text_script CompText877EDD8_unk89

	def_text_script CompText877EDD8_unk90

	def_text_script CompText877EDD8_unk91

	def_text_script CompText877EDD8_unk92

	def_text_script CompText877EDD8_unk93

	def_text_script CompText877EDD8_unk94

	def_text_script CompText877EDD8_unk95

	def_text_script CompText877EDD8_unk96

	def_text_script CompText877EDD8_unk97

	def_text_script CompText877EDD8_unk98

	def_text_script CompText877EDD8_unk99

	def_text_script CompText877EDD8_unk100

	def_text_script CompText877EDD8_unk101

	def_text_script CompText877EDD8_unk102

	def_text_script CompText877EDD8_unk103

	def_text_script CompText877EDD8_unk104

	def_text_script CompText877EDD8_unk105

	def_text_script CompText877EDD8_unk106

	def_text_script CompText877EDD8_unk107

	def_text_script CompText877EDD8_unk108

	def_text_script CompText877EDD8_unk109

	def_text_script CompText877EDD8_unk110

	def_text_script CompText877EDD8_unk111

	def_text_script CompText877EDD8_unk112

	def_text_script CompText877EDD8_unk113

	def_text_script CompText877EDD8_unk114

	def_text_script CompText877EDD8_unk115

	def_text_script CompText877EDD8_unk116

	def_text_script CompText877EDD8_unk117

	def_text_script CompText877EDD8_unk118

	def_text_script CompText877EDD8_unk119

	def_text_script CompText877EDD8_unk120

	def_text_script CompText877EDD8_unk121

	def_text_script CompText877EDD8_unk122

	def_text_script CompText877EDD8_unk123

	def_text_script CompText877EDD8_unk124

	def_text_script CompText877EDD8_unk125

	def_text_script CompText877EDD8_unk126

	def_text_script CompText877EDD8_unk127

	def_text_script CompText877EDD8_unk128

	def_text_script CompText877EDD8_unk129

	def_text_script CompText877EDD8_unk130

	def_text_script CompText877EDD8_unk131

	def_text_script CompText877EDD8_unk132

	def_text_script CompText877EDD8_unk133

	def_text_script CompText877EDD8_unk134

	def_text_script CompText877EDD8_unk135

	def_text_script CompText877EDD8_unk136

	def_text_script CompText877EDD8_unk137

	def_text_script CompText877EDD8_unk138

	def_text_script CompText877EDD8_unk139

	def_text_script CompText877EDD8_unk140

	def_text_script CompText877EDD8_unk141

	def_text_script CompText877EDD8_unk142

	def_text_script CompText877EDD8_unk143

	def_text_script CompText877EDD8_unk144

	def_text_script CompText877EDD8_unk145

	def_text_script CompText877EDD8_unk146

	def_text_script CompText877EDD8_unk147

	def_text_script CompText877EDD8_unk148

	def_text_script CompText877EDD8_unk149

	def_text_script CompText877EDD8_unk150

	def_text_script CompText877EDD8_unk151

	def_text_script CompText877EDD8_unk152

	def_text_script CompText877EDD8_unk153

	def_text_script CompText877EDD8_unk154

	def_text_script CompText877EDD8_unk155

	def_text_script CompText877EDD8_unk156

	def_text_script CompText877EDD8_unk157

	def_text_script CompText877EDD8_unk158

	def_text_script CompText877EDD8_unk159

	def_text_script CompText877EDD8_unk160

	def_text_script CompText877EDD8_unk161

	def_text_script CompText877EDD8_unk162

	def_text_script CompText877EDD8_unk163

	def_text_script CompText877EDD8_unk164

	def_text_script CompText877EDD8_unk165

	def_text_script CompText877EDD8_unk166

	def_text_script CompText877EDD8_unk167

	def_text_script CompText877EDD8_unk168

	def_text_script CompText877EDD8_unk169

	def_text_script CompText877EDD8_unk170

	def_text_script CompText877EDD8_unk171

	def_text_script CompText877EDD8_unk172

	def_text_script CompText877EDD8_unk173

	def_text_script CompText877EDD8_unk174

	def_text_script CompText877EDD8_unk175

	def_text_script CompText877EDD8_unk176

	def_text_script CompText877EDD8_unk177

	def_text_script CompText877EDD8_unk178

	def_text_script CompText877EDD8_unk179

	def_text_script CompText877EDD8_unk180

	def_text_script CompText877EDD8_unk181

	def_text_script CompText877EDD8_unk182

	def_text_script CompText877EDD8_unk183

	def_text_script CompText877EDD8_unk184

	def_text_script CompText877EDD8_unk185

	def_text_script CompText877EDD8_unk186

	def_text_script CompText877EDD8_unk187

	def_text_script CompText877EDD8_unk188

	def_text_script CompText877EDD8_unk189

	def_text_script CompText877EDD8_unk190

	def_text_script CompText877EDD8_unk191

	def_text_script CompText877EDD8_unk192

	def_text_script CompText877EDD8_unk193

	def_text_script CompText877EDD8_unk194

	def_text_script CompText877EDD8_unk195

	def_text_script CompText877EDD8_unk196

	def_text_script CompText877EDD8_unk197

	def_text_script CompText877EDD8_unk198

	def_text_script CompText877EDD8_unk199

	def_text_script CompText877EDD8_unk200

	def_text_script CompText877EDD8_unk201

	def_text_script CompText877EDD8_unk202

	def_text_script CompText877EDD8_unk203

	def_text_script CompText877EDD8_unk204

	def_text_script CompText877EDD8_unk205

	def_text_script CompText877EDD8_unk206

	def_text_script CompText877EDD8_unk207

	def_text_script CompText877EDD8_unk208

	def_text_script CompText877EDD8_unk209

	def_text_script CompText877EDD8_unk210

	def_text_script CompText877EDD8_unk211

	def_text_script CompText877EDD8_unk212

	def_text_script CompText877EDD8_unk213

	def_text_script CompText877EDD8_unk214

	def_text_script CompText877EDD8_unk215

	def_text_script CompText877EDD8_unk216

	def_text_script CompText877EDD8_unk217

	def_text_script CompText877EDD8_unk218

	def_text_script CompText877EDD8_unk219

	def_text_script CompText877EDD8_unk220

	def_text_script CompText877EDD8_unk221

	def_text_script CompText877EDD8_unk222

	def_text_script CompText877EDD8_unk223

	def_text_script CompText877EDD8_unk224

	def_text_script CompText877EDD8_unk225

	def_text_script CompText877EDD8_unk226

	def_text_script CompText877EDD8_unk227

	def_text_script CompText877EDD8_unk228

	def_text_script CompText877EDD8_unk229

	def_text_script CompText877EDD8_unk230

	def_text_script CompText877EDD8_unk231

	def_text_script CompText877EDD8_unk232

	def_text_script CompText877EDD8_unk233

	def_text_script CompText877EDD8_unk234

	def_text_script CompText877EDD8_unk235

	def_text_script CompText877EDD8_unk236

	def_text_script CompText877EDD8_unk237

	def_text_script CompText877EDD8_unk238

	def_text_script CompText877EDD8_unk239

	def_text_script CompText877EDD8_unk240

	def_text_script CompText877EDD8_unk241

	def_text_script CompText877EDD8_unk242

	def_text_script CompText877EDD8_unk243

	def_text_script CompText877EDD8_unk244

	def_text_script CompText877EDD8_unk245

	def_text_script CompText877EDD8_unk246

	def_text_script CompText877EDD8_unk247

	def_text_script CompText877EDD8_unk248

	def_text_script CompText877EDD8_unk249

	def_text_script CompText877EDD8_unk250

	def_text_script CompText877EDD8_unk251

	def_text_script CompText877EDD8_unk252

	def_text_script CompText877EDD8_unk253

	def_text_script CompText877EDD8_unk254

	