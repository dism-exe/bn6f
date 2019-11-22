	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8780104::
	.word 0xA3500

	text_archive_start

	def_text_script CompText8780104_unk0
	ts_msg_open
	.string "It's a CopyBot.\n"
	.string "There's no need to\n"
	.string "use it now."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk1

	def_text_script CompText8780104_unk2

	def_text_script CompText8780104_unk3

	def_text_script CompText8780104_unk4

	def_text_script CompText8780104_unk5
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "*huff,huff...*\n"
	.string "Air... so thin...\n"
	.string "faint... must..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... *huff,huff*"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk6
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "The fan,heater,air\n"
	.string "conditioner,and\n"
	.string "shower here are"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "familiar objects\n"
	.string "that represent the\n"
	.string "weather."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The fan is for wind,\n"
	.string "the heater is for\n"
	.string "heat,the air"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "conditioner is for\n"
	.string "coldness,and the\n"
	.string "shower is for rain."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk7

	def_text_script CompText8780104_unk8

	def_text_script CompText8780104_unk9

	def_text_script CompText8780104_unk10
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "Hmmmmmmph!!\n"
	.string "I just can't win!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk11
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "Ummmm...\n"
	.string "Where am I supposed\n"
	.string "to jack in...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk12
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x11,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "Where's the next\n"
	.string "judge!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk13
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x12,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xB,
	]
	ts_msg_open
	.string "I-I'm scared..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk14
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x13,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Whooooooa!!\n"
	.string "We've gotta go for\n"
	.string "broke!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk15
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "*huff...*\n"
	.string "I can't do this...\n"
	.string "Going home..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk16
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "... So that's what\n"
	.string "happened on the\n"
	.string "Undernet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... It's too bad,but\n"
	.string "I think you should\n"
	.string "give up..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The Undernet is too\n"
	.string "dangerous!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk17
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "Please don't talk to\n"
	.string "me right now."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can't believe I\n"
	.string "lost so badly..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk18
	ts_mugshot_show [
		mugshot: 0xB,
	]
	ts_msg_open
	.string "I was so scared that\n"
	.string "I couldn't even take\n"
	.string "one step!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk19
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Lan,I'm sorry..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk20

	def_text_script CompText8780104_unk21

	def_text_script CompText8780104_unk22

	def_text_script CompText8780104_unk23

	def_text_script CompText8780104_unk24

	def_text_script CompText8780104_unk25

	def_text_script CompText8780104_unk26

	def_text_script CompText8780104_unk27

	def_text_script CompText8780104_unk28

	def_text_script CompText8780104_unk29

	def_text_script CompText8780104_unk30

	def_text_script CompText8780104_unk31

	def_text_script CompText8780104_unk32

	def_text_script CompText8780104_unk33

	def_text_script CompText8780104_unk34

	def_text_script CompText8780104_unk35

	def_text_script CompText8780104_unk36

	def_text_script CompText8780104_unk37

	def_text_script CompText8780104_unk38

	def_text_script CompText8780104_unk39

	def_text_script CompText8780104_unk40
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "The one that saved\n"
	.string "Sky Town from that\n"
	.string "terrible crisis was"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "some strange girl.\n"
	.string "Well,that's what\n"
	.string "people are saying..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But whatever,it's\n"
	.string "only gossip."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk41
	ts_check_flag [
		flag: 0xC0A,
		jumpIfTrue: 0x2A,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "It sounds like the\n"
	.string "final round of the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Operator Navi\n"
	.string "Selection Test has\n"
	.string "started!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wonder who will\n"
	.string "win..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk42
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "Hasn't the Operator\n"
	.string "Navi pretty much\n"
	.string "been chosen?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wonder who won?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk43
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "We didn't prepare\n"
	.string "enough electricity\n"
	.string "after all..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The electricity\n"
	.string "didn't reach all the\n"
	.string "way over here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hmm,hmm,hmm...\n"
	.string "I wonder why..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk44

	def_text_script CompText8780104_unk45

	def_text_script CompText8780104_unk46

	def_text_script CompText8780104_unk47

	def_text_script CompText8780104_unk48

	def_text_script CompText8780104_unk49

	def_text_script CompText8780104_unk50
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "Without the Force\n"
	.string "Program,we can't\n"
	.string "create our full"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "output of power."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thanks to that,\n"
	.string "things that machines\n"
	.string "used to do,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "humans now have to\n"
	.string "do by hand..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... *sigh* How\n"
	.string "inconvenient it is!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk51
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "I heard that a lot\n"
	.string "of money went into\n"
	.string "making the Expo."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Mayor Cain really\n"
	.string "wants it to succeed,\n"
	.string "huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk52
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_check_chapter [
		lower: 0x52,
		upper: 0x53,
		jumpIfInRange: 0x35,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "Hey,have you seen\n"
	.string "the Expo commercial?\n"
	.string "Well,have you!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The Navi in that\n"
	.string "commercial is really\n"
	.string "handsome!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wonder if I can\n"
	.string "meet him when I go\n"
	.string "to the Expo."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk53
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "There's something\n"
	.string "happening in Seaside\n"
	.string "Town..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You really shouldn't\n"
	.string "go near there..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk54
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "All the good feeling\n"
	.string "the Expo was making\n"
	.string "is all gone now,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "all because of what\n"
	.string "happened in Seaside\n"
	.string "Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8780104_unk55

	def_text_script CompText8780104_unk56

	def_text_script CompText8780104_unk57

	def_text_script CompText8780104_unk58

	def_text_script CompText8780104_unk59

	def_text_script CompText8780104_unk60

	def_text_script CompText8780104_unk61

	def_text_script CompText8780104_unk62

	def_text_script CompText8780104_unk63

	def_text_script CompText8780104_unk64

	def_text_script CompText8780104_unk65

	def_text_script CompText8780104_unk66

	def_text_script CompText8780104_unk67

	def_text_script CompText8780104_unk68

	def_text_script CompText8780104_unk69

	def_text_script CompText8780104_unk70

	def_text_script CompText8780104_unk71

	def_text_script CompText8780104_unk72

	def_text_script CompText8780104_unk73

	def_text_script CompText8780104_unk74

	def_text_script CompText8780104_unk75

	def_text_script CompText8780104_unk76

	def_text_script CompText8780104_unk77

	def_text_script CompText8780104_unk78

	def_text_script CompText8780104_unk79

	def_text_script CompText8780104_unk80

	def_text_script CompText8780104_unk81

	def_text_script CompText8780104_unk82

	def_text_script CompText8780104_unk83

	def_text_script CompText8780104_unk84

	def_text_script CompText8780104_unk85

	def_text_script CompText8780104_unk86

	def_text_script CompText8780104_unk87

	def_text_script CompText8780104_unk88

	def_text_script CompText8780104_unk89

	def_text_script CompText8780104_unk90

	def_text_script CompText8780104_unk91

	def_text_script CompText8780104_unk92

	def_text_script CompText8780104_unk93

	def_text_script CompText8780104_unk94

	def_text_script CompText8780104_unk95

	def_text_script CompText8780104_unk96

	def_text_script CompText8780104_unk97

	def_text_script CompText8780104_unk98

	def_text_script CompText8780104_unk99

	def_text_script CompText8780104_unk100

	def_text_script CompText8780104_unk101

	def_text_script CompText8780104_unk102

	def_text_script CompText8780104_unk103

	def_text_script CompText8780104_unk104

	def_text_script CompText8780104_unk105

	def_text_script CompText8780104_unk106

	def_text_script CompText8780104_unk107

	def_text_script CompText8780104_unk108

	def_text_script CompText8780104_unk109

	def_text_script CompText8780104_unk110

	def_text_script CompText8780104_unk111

	def_text_script CompText8780104_unk112

	def_text_script CompText8780104_unk113

	def_text_script CompText8780104_unk114

	def_text_script CompText8780104_unk115

	def_text_script CompText8780104_unk116

	def_text_script CompText8780104_unk117

	def_text_script CompText8780104_unk118

	def_text_script CompText8780104_unk119

	def_text_script CompText8780104_unk120

	def_text_script CompText8780104_unk121

	def_text_script CompText8780104_unk122

	def_text_script CompText8780104_unk123

	def_text_script CompText8780104_unk124

	def_text_script CompText8780104_unk125

	def_text_script CompText8780104_unk126

	def_text_script CompText8780104_unk127

	def_text_script CompText8780104_unk128

	def_text_script CompText8780104_unk129

	def_text_script CompText8780104_unk130

	def_text_script CompText8780104_unk131

	def_text_script CompText8780104_unk132

	def_text_script CompText8780104_unk133

	def_text_script CompText8780104_unk134

	def_text_script CompText8780104_unk135

	def_text_script CompText8780104_unk136

	def_text_script CompText8780104_unk137

	def_text_script CompText8780104_unk138

	def_text_script CompText8780104_unk139

	def_text_script CompText8780104_unk140

	def_text_script CompText8780104_unk141

	def_text_script CompText8780104_unk142

	def_text_script CompText8780104_unk143

	def_text_script CompText8780104_unk144

	def_text_script CompText8780104_unk145

	def_text_script CompText8780104_unk146

	def_text_script CompText8780104_unk147

	def_text_script CompText8780104_unk148

	def_text_script CompText8780104_unk149

	def_text_script CompText8780104_unk150

	def_text_script CompText8780104_unk151

	def_text_script CompText8780104_unk152

	def_text_script CompText8780104_unk153

	def_text_script CompText8780104_unk154

	def_text_script CompText8780104_unk155

	def_text_script CompText8780104_unk156

	def_text_script CompText8780104_unk157

	def_text_script CompText8780104_unk158

	def_text_script CompText8780104_unk159

	def_text_script CompText8780104_unk160

	def_text_script CompText8780104_unk161

	def_text_script CompText8780104_unk162

	def_text_script CompText8780104_unk163

	def_text_script CompText8780104_unk164

	def_text_script CompText8780104_unk165

	def_text_script CompText8780104_unk166

	def_text_script CompText8780104_unk167

	def_text_script CompText8780104_unk168

	def_text_script CompText8780104_unk169

	def_text_script CompText8780104_unk170

	def_text_script CompText8780104_unk171

	def_text_script CompText8780104_unk172

	def_text_script CompText8780104_unk173

	def_text_script CompText8780104_unk174

	def_text_script CompText8780104_unk175

	def_text_script CompText8780104_unk176

	def_text_script CompText8780104_unk177

	def_text_script CompText8780104_unk178

	def_text_script CompText8780104_unk179

	def_text_script CompText8780104_unk180

	def_text_script CompText8780104_unk181

	def_text_script CompText8780104_unk182

	def_text_script CompText8780104_unk183

	def_text_script CompText8780104_unk184

	def_text_script CompText8780104_unk185

	def_text_script CompText8780104_unk186

	def_text_script CompText8780104_unk187

	def_text_script CompText8780104_unk188

	def_text_script CompText8780104_unk189

	def_text_script CompText8780104_unk190

	def_text_script CompText8780104_unk191

	def_text_script CompText8780104_unk192

	def_text_script CompText8780104_unk193

	def_text_script CompText8780104_unk194

	def_text_script CompText8780104_unk195

	def_text_script CompText8780104_unk196

	def_text_script CompText8780104_unk197

	def_text_script CompText8780104_unk198

	def_text_script CompText8780104_unk199

	def_text_script CompText8780104_unk200

	def_text_script CompText8780104_unk201

	def_text_script CompText8780104_unk202

	def_text_script CompText8780104_unk203

	def_text_script CompText8780104_unk204

	def_text_script CompText8780104_unk205

	def_text_script CompText8780104_unk206

	def_text_script CompText8780104_unk207

	def_text_script CompText8780104_unk208

	def_text_script CompText8780104_unk209

	def_text_script CompText8780104_unk210

	def_text_script CompText8780104_unk211

	def_text_script CompText8780104_unk212

	def_text_script CompText8780104_unk213

	def_text_script CompText8780104_unk214

	def_text_script CompText8780104_unk215

	def_text_script CompText8780104_unk216

	def_text_script CompText8780104_unk217

	def_text_script CompText8780104_unk218

	def_text_script CompText8780104_unk219

	def_text_script CompText8780104_unk220

	def_text_script CompText8780104_unk221

	def_text_script CompText8780104_unk222

	def_text_script CompText8780104_unk223

	def_text_script CompText8780104_unk224

	def_text_script CompText8780104_unk225

	def_text_script CompText8780104_unk226

	def_text_script CompText8780104_unk227

	def_text_script CompText8780104_unk228

	def_text_script CompText8780104_unk229

	def_text_script CompText8780104_unk230

	def_text_script CompText8780104_unk231

	def_text_script CompText8780104_unk232

	def_text_script CompText8780104_unk233

	def_text_script CompText8780104_unk234

	def_text_script CompText8780104_unk235

	def_text_script CompText8780104_unk236

	def_text_script CompText8780104_unk237

	def_text_script CompText8780104_unk238

	def_text_script CompText8780104_unk239

	def_text_script CompText8780104_unk240

	def_text_script CompText8780104_unk241

	def_text_script CompText8780104_unk242

	def_text_script CompText8780104_unk243

	def_text_script CompText8780104_unk244

	def_text_script CompText8780104_unk245

	def_text_script CompText8780104_unk246

	def_text_script CompText8780104_unk247

	def_text_script CompText8780104_unk248

	def_text_script CompText8780104_unk249

	def_text_script CompText8780104_unk250

	def_text_script CompText8780104_unk251

	def_text_script CompText8780104_unk252

	def_text_script CompText8780104_unk253

	def_text_script CompText8780104_unk254

	