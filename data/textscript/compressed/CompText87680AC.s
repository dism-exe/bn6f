	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87680AC::
	.word 0x7EA00

	text_archive_start

	def_text_script CompText87680AC_unk0
	ts_check_flag [
		flag: 0x463,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Mom! I'm gonna\n"
	.string "go explore outside!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x6,
	]
	.string "OK! Take care and\n"
	.string "don't come home too\n"
	.string "late!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x463,
	]
	ts_end

	def_text_script CompText87680AC_unk1
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "Don't wander too far\n"
	.string "from home!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk2
	ts_check_chapter [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_flag [
		flag: 0x462,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Dad,I'm gonna\n"
	.string "go outside and\n"
	.string "look around!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x5,
	]
	.string "I'm going to connect\n"
	.string "your computer to the\n"
	.string "Net later."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Once it is ready,\n"
	.string "I'll let you know."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x462,
	]
	ts_end

	def_text_script CompText87680AC_unk3
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "Take care,Lan."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk4

	def_text_script CompText87680AC_unk5
	ts_check_flag [
		flag: 0x41A,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "I wonder if there\n"
	.string "is a good grocery\n"
	.string "store nearby..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We just moved,so\n"
	.string "not knowing the area\n"
	.string "is quite a hassle."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk6
	ts_check_flag [
		flag: 0x41A,
		jumpIfTrue: 0xA,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1CA0,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 8,
	]

	def_text_script CompText87680AC_unk7
	ts_check_flag [
		flag: 0x1D20,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "Welcome home. Your\n"
	.string "Net connection is\n"
	.string "ready. Try it out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk8
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "I haven't set up\n"
	.string "your connection yet.\n"
	.string "Wait for a bit,OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk9
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "You have school\n"
	.string "tomorrow,so don't\n"
	.string "stay out too late."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk10
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "How is the Net\n"
	.string "in this town?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It seems to be\n"
	.string "pretty nice..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I want to check\n"
	.string "it out myself."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk11

	def_text_script CompText87680AC_unk12

	def_text_script CompText87680AC_unk13

	def_text_script CompText87680AC_unk14

	def_text_script CompText87680AC_unk15
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "It's your first day\n"
	.string "at a new school..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Make lots of\n"
	.string "friends,OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk16
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "New school time,huh?\n"
	.string "Do your best!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've got to get\n"
	.string "ready for work\n"
	.string "myself!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk17

	def_text_script CompText87680AC_unk18

	def_text_script CompText87680AC_unk19

	def_text_script CompText87680AC_unk20

	def_text_script CompText87680AC_unk21

	def_text_script CompText87680AC_unk22

	def_text_script CompText87680AC_unk23

	def_text_script CompText87680AC_unk24

	def_text_script CompText87680AC_unk25
	ts_check_flag [
		flag: 0x442,
		jumpIfTrue: 0x1A,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "Lan...\n"
	.string "You kinda smell\n"
	.string "like smoke..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Maybe I'm just\n"
	.string "imagining things..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk26
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "Don't stay out\n"
	.string "too late,OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk27

	def_text_script CompText87680AC_unk28

	def_text_script CompText87680AC_unk29

	def_text_script CompText87680AC_unk30

	def_text_script CompText87680AC_unk31

	def_text_script CompText87680AC_unk32

	def_text_script CompText87680AC_unk33

	def_text_script CompText87680AC_unk34

	def_text_script CompText87680AC_unk35

	def_text_script CompText87680AC_unk36

	def_text_script CompText87680AC_unk37

	def_text_script CompText87680AC_unk38

	def_text_script CompText87680AC_unk39

	def_text_script CompText87680AC_unk40
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "Welcome home,Lan."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't forget to\n"
	.string "wash your hands."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk41
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "What should I make\n"
	.string "for dinner... Lan,\n"
	.string "what do you want?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk42

	def_text_script CompText87680AC_unk43

	def_text_script CompText87680AC_unk44

	def_text_script CompText87680AC_unk45
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "I think I'll try\n"
	.string "making something\n"
	.string "new for dinner."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Maybe I'll do the\n"
	.string "experimenting this\n"
	.string "time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk46
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "I'm looking forward\n"
	.string "to your Mom's new\n"
	.string "tasty treats!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk47

	def_text_script CompText87680AC_unk48

	def_text_script CompText87680AC_unk49

	def_text_script CompText87680AC_unk50
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "Ahhh! Welcome back!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Tonight's dinner is\n"
	.string "Cashew Chicken!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's really good!\n"
	.string "I think you will\n"
	.string "love it!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk51
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "Huh? You went to\n"
	.string "the Aquarium?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Tell me all about\n"
	.string "it during dinner!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87680AC_unk52

	def_text_script CompText87680AC_unk53

	def_text_script CompText87680AC_unk54

	def_text_script CompText87680AC_unk55

	def_text_script CompText87680AC_unk56

	def_text_script CompText87680AC_unk57

	def_text_script CompText87680AC_unk58

	def_text_script CompText87680AC_unk59

	def_text_script CompText87680AC_unk60

	def_text_script CompText87680AC_unk61

	def_text_script CompText87680AC_unk62

	def_text_script CompText87680AC_unk63

	def_text_script CompText87680AC_unk64

	def_text_script CompText87680AC_unk65

	def_text_script CompText87680AC_unk66

	def_text_script CompText87680AC_unk67

	def_text_script CompText87680AC_unk68

	def_text_script CompText87680AC_unk69

	def_text_script CompText87680AC_unk70

	def_text_script CompText87680AC_unk71

	def_text_script CompText87680AC_unk72

	def_text_script CompText87680AC_unk73

	def_text_script CompText87680AC_unk74

	def_text_script CompText87680AC_unk75

	def_text_script CompText87680AC_unk76

	def_text_script CompText87680AC_unk77

	def_text_script CompText87680AC_unk78

	def_text_script CompText87680AC_unk79

	def_text_script CompText87680AC_unk80

	def_text_script CompText87680AC_unk81

	def_text_script CompText87680AC_unk82

	def_text_script CompText87680AC_unk83

	def_text_script CompText87680AC_unk84

	def_text_script CompText87680AC_unk85

	def_text_script CompText87680AC_unk86

	def_text_script CompText87680AC_unk87

	def_text_script CompText87680AC_unk88

	def_text_script CompText87680AC_unk89

	def_text_script CompText87680AC_unk90

	def_text_script CompText87680AC_unk91

	def_text_script CompText87680AC_unk92

	def_text_script CompText87680AC_unk93

	def_text_script CompText87680AC_unk94

	def_text_script CompText87680AC_unk95

	def_text_script CompText87680AC_unk96

	def_text_script CompText87680AC_unk97

	def_text_script CompText87680AC_unk98

	def_text_script CompText87680AC_unk99

	def_text_script CompText87680AC_unk100

	def_text_script CompText87680AC_unk101

	def_text_script CompText87680AC_unk102

	def_text_script CompText87680AC_unk103

	def_text_script CompText87680AC_unk104

	def_text_script CompText87680AC_unk105

	def_text_script CompText87680AC_unk106

	def_text_script CompText87680AC_unk107

	def_text_script CompText87680AC_unk108

	def_text_script CompText87680AC_unk109

	def_text_script CompText87680AC_unk110

	def_text_script CompText87680AC_unk111

	def_text_script CompText87680AC_unk112

	def_text_script CompText87680AC_unk113

	def_text_script CompText87680AC_unk114

	def_text_script CompText87680AC_unk115

	def_text_script CompText87680AC_unk116

	def_text_script CompText87680AC_unk117

	def_text_script CompText87680AC_unk118

	def_text_script CompText87680AC_unk119

	def_text_script CompText87680AC_unk120

	def_text_script CompText87680AC_unk121

	def_text_script CompText87680AC_unk122

	def_text_script CompText87680AC_unk123

	def_text_script CompText87680AC_unk124

	def_text_script CompText87680AC_unk125

	def_text_script CompText87680AC_unk126

	def_text_script CompText87680AC_unk127

	def_text_script CompText87680AC_unk128

	def_text_script CompText87680AC_unk129

	def_text_script CompText87680AC_unk130

	def_text_script CompText87680AC_unk131

	def_text_script CompText87680AC_unk132

	def_text_script CompText87680AC_unk133

	def_text_script CompText87680AC_unk134

	def_text_script CompText87680AC_unk135

	def_text_script CompText87680AC_unk136

	def_text_script CompText87680AC_unk137

	def_text_script CompText87680AC_unk138

	def_text_script CompText87680AC_unk139

	def_text_script CompText87680AC_unk140

	def_text_script CompText87680AC_unk141

	def_text_script CompText87680AC_unk142

	def_text_script CompText87680AC_unk143

	def_text_script CompText87680AC_unk144

	def_text_script CompText87680AC_unk145

	def_text_script CompText87680AC_unk146

	def_text_script CompText87680AC_unk147

	def_text_script CompText87680AC_unk148

	def_text_script CompText87680AC_unk149

	def_text_script CompText87680AC_unk150

	def_text_script CompText87680AC_unk151

	def_text_script CompText87680AC_unk152

	def_text_script CompText87680AC_unk153

	def_text_script CompText87680AC_unk154

	def_text_script CompText87680AC_unk155

	def_text_script CompText87680AC_unk156

	def_text_script CompText87680AC_unk157

	def_text_script CompText87680AC_unk158

	def_text_script CompText87680AC_unk159

	def_text_script CompText87680AC_unk160

	def_text_script CompText87680AC_unk161

	def_text_script CompText87680AC_unk162

	def_text_script CompText87680AC_unk163

	def_text_script CompText87680AC_unk164

	def_text_script CompText87680AC_unk165

	def_text_script CompText87680AC_unk166

	def_text_script CompText87680AC_unk167

	def_text_script CompText87680AC_unk168

	def_text_script CompText87680AC_unk169

	def_text_script CompText87680AC_unk170

	def_text_script CompText87680AC_unk171

	def_text_script CompText87680AC_unk172

	def_text_script CompText87680AC_unk173

	def_text_script CompText87680AC_unk174

	def_text_script CompText87680AC_unk175

	def_text_script CompText87680AC_unk176

	def_text_script CompText87680AC_unk177

	def_text_script CompText87680AC_unk178

	def_text_script CompText87680AC_unk179

	def_text_script CompText87680AC_unk180

	def_text_script CompText87680AC_unk181

	def_text_script CompText87680AC_unk182

	def_text_script CompText87680AC_unk183

	def_text_script CompText87680AC_unk184

	def_text_script CompText87680AC_unk185

	def_text_script CompText87680AC_unk186

	def_text_script CompText87680AC_unk187

	def_text_script CompText87680AC_unk188

	def_text_script CompText87680AC_unk189

	def_text_script CompText87680AC_unk190

	def_text_script CompText87680AC_unk191

	def_text_script CompText87680AC_unk192

	def_text_script CompText87680AC_unk193

	def_text_script CompText87680AC_unk194

	def_text_script CompText87680AC_unk195

	def_text_script CompText87680AC_unk196

	def_text_script CompText87680AC_unk197

	def_text_script CompText87680AC_unk198

	def_text_script CompText87680AC_unk199

	def_text_script CompText87680AC_unk200

	def_text_script CompText87680AC_unk201

	def_text_script CompText87680AC_unk202

	def_text_script CompText87680AC_unk203

	def_text_script CompText87680AC_unk204

	def_text_script CompText87680AC_unk205

	def_text_script CompText87680AC_unk206

	def_text_script CompText87680AC_unk207

	def_text_script CompText87680AC_unk208

	def_text_script CompText87680AC_unk209

	def_text_script CompText87680AC_unk210

	def_text_script CompText87680AC_unk211

	def_text_script CompText87680AC_unk212

	def_text_script CompText87680AC_unk213

	def_text_script CompText87680AC_unk214

	def_text_script CompText87680AC_unk215

	def_text_script CompText87680AC_unk216

	def_text_script CompText87680AC_unk217

	def_text_script CompText87680AC_unk218

	def_text_script CompText87680AC_unk219

	def_text_script CompText87680AC_unk220

	def_text_script CompText87680AC_unk221

	def_text_script CompText87680AC_unk222

	def_text_script CompText87680AC_unk223

	def_text_script CompText87680AC_unk224

	def_text_script CompText87680AC_unk225

	def_text_script CompText87680AC_unk226

	def_text_script CompText87680AC_unk227

	def_text_script CompText87680AC_unk228

	def_text_script CompText87680AC_unk229

	def_text_script CompText87680AC_unk230

	def_text_script CompText87680AC_unk231

	def_text_script CompText87680AC_unk232

	def_text_script CompText87680AC_unk233

	def_text_script CompText87680AC_unk234

	def_text_script CompText87680AC_unk235

	def_text_script CompText87680AC_unk236

	def_text_script CompText87680AC_unk237

	def_text_script CompText87680AC_unk238

	def_text_script CompText87680AC_unk239

	def_text_script CompText87680AC_unk240

	def_text_script CompText87680AC_unk241

	def_text_script CompText87680AC_unk242

	def_text_script CompText87680AC_unk243

	def_text_script CompText87680AC_unk244

	def_text_script CompText87680AC_unk245

	def_text_script CompText87680AC_unk246

	def_text_script CompText87680AC_unk247

	def_text_script CompText87680AC_unk248

	def_text_script CompText87680AC_unk249

	def_text_script CompText87680AC_unk250

	def_text_script CompText87680AC_unk251

	def_text_script CompText87680AC_unk252

	def_text_script CompText87680AC_unk253

	def_text_script CompText87680AC_unk254

	