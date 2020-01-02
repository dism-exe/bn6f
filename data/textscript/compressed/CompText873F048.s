	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText873F048::
	.word 0x72D00

	text_archive_start

	def_text_script CompText873F048_unk0
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: CompText873F048_unk135_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x51,
		upper: 0x51,
		jumpIfInRange: CompText873F048_unk115_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk1

	def_text_script CompText873F048_unk2

	def_text_script CompText873F048_unk3

	def_text_script CompText873F048_unk4

	def_text_script CompText873F048_unk5

	def_text_script CompText873F048_unk6

	def_text_script CompText873F048_unk7

	def_text_script CompText873F048_unk8

	def_text_script CompText873F048_unk9

	def_text_script CompText873F048_unk10

	def_text_script CompText873F048_unk11

	def_text_script CompText873F048_unk12

	def_text_script CompText873F048_unk13

	def_text_script CompText873F048_unk14

	def_text_script CompText873F048_unk15

	def_text_script CompText873F048_unk16

	def_text_script CompText873F048_unk17

	def_text_script CompText873F048_unk18

	def_text_script CompText873F048_unk19

	def_text_script CompText873F048_unk20

	def_text_script CompText873F048_unk21

	def_text_script CompText873F048_unk22

	def_text_script CompText873F048_unk23

	def_text_script CompText873F048_unk24

	def_text_script CompText873F048_unk25

	def_text_script CompText873F048_unk26

	def_text_script CompText873F048_unk27

	def_text_script CompText873F048_unk28

	def_text_script CompText873F048_unk29

	def_text_script CompText873F048_unk30

	def_text_script CompText873F048_unk31

	def_text_script CompText873F048_unk32

	def_text_script CompText873F048_unk33

	def_text_script CompText873F048_unk34

	def_text_script CompText873F048_unk35

	def_text_script CompText873F048_unk36

	def_text_script CompText873F048_unk37

	def_text_script CompText873F048_unk38

	def_text_script CompText873F048_unk39

	def_text_script CompText873F048_unk40

	def_text_script CompText873F048_unk41

	def_text_script CompText873F048_unk42

	def_text_script CompText873F048_unk43

	def_text_script CompText873F048_unk44

	def_text_script CompText873F048_unk45

	def_text_script CompText873F048_unk46

	def_text_script CompText873F048_unk47

	def_text_script CompText873F048_unk48

	def_text_script CompText873F048_unk49

	def_text_script CompText873F048_unk50

	def_text_script CompText873F048_unk51

	def_text_script CompText873F048_unk52

	def_text_script CompText873F048_unk53

	def_text_script CompText873F048_unk54

	def_text_script CompText873F048_unk55

	def_text_script CompText873F048_unk56

	def_text_script CompText873F048_unk57

	def_text_script CompText873F048_unk58

	def_text_script CompText873F048_unk59

	def_text_script CompText873F048_unk60

	def_text_script CompText873F048_unk61

	def_text_script CompText873F048_unk62

	def_text_script CompText873F048_unk63

	def_text_script CompText873F048_unk64

	def_text_script CompText873F048_unk65

	def_text_script CompText873F048_unk66

	def_text_script CompText873F048_unk67

	def_text_script CompText873F048_unk68

	def_text_script CompText873F048_unk69

	def_text_script CompText873F048_unk70

	def_text_script CompText873F048_unk71

	def_text_script CompText873F048_unk72

	def_text_script CompText873F048_unk73

	def_text_script CompText873F048_unk74

	def_text_script CompText873F048_unk75

	def_text_script CompText873F048_unk76

	def_text_script CompText873F048_unk77

	def_text_script CompText873F048_unk78

	def_text_script CompText873F048_unk79

	def_text_script CompText873F048_unk80

	def_text_script CompText873F048_unk81

	def_text_script CompText873F048_unk82

	def_text_script CompText873F048_unk83

	def_text_script CompText873F048_unk84

	def_text_script CompText873F048_unk85

	def_text_script CompText873F048_unk86

	def_text_script CompText873F048_unk87

	def_text_script CompText873F048_unk88

	def_text_script CompText873F048_unk89

	def_text_script CompText873F048_unk90

	def_text_script CompText873F048_unk91

	def_text_script CompText873F048_unk92

	def_text_script CompText873F048_unk93

	def_text_script CompText873F048_unk94

	def_text_script CompText873F048_unk95

	def_text_script CompText873F048_unk96

	def_text_script CompText873F048_unk97

	def_text_script CompText873F048_unk98

	def_text_script CompText873F048_unk99

	def_text_script CompText873F048_unk100

	def_text_script CompText873F048_unk101

	def_text_script CompText873F048_unk102

	def_text_script CompText873F048_unk103

	def_text_script CompText873F048_unk104

	def_text_script CompText873F048_unk105

	def_text_script CompText873F048_unk106

	def_text_script CompText873F048_unk107

	def_text_script CompText873F048_unk108

	def_text_script CompText873F048_unk109

	def_text_script CompText873F048_unk110

	def_text_script CompText873F048_unk111

	def_text_script CompText873F048_unk112

	def_text_script CompText873F048_unk113

	def_text_script CompText873F048_unk114

	def_text_script CompText873F048_unk115
	ts_check_flag [
		flag: 0xC1C,
		jumpIfTrue: CompText873F048_unk125_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText873F048_unk124_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC14,
		jumpIfTrue: CompText873F048_unk123_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD4,
		jumpIfTrue: CompText873F048_unk122_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD3,
		jumpIfTrue: CompText873F048_unk121_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD2,
		jumpIfTrue: CompText873F048_unk120_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD1,
		jumpIfTrue: CompText873F048_unk119_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD0,
		jumpIfTrue: CompText873F048_unk118_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC12,
		jumpIfTrue: CompText873F048_unk117_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC10,
		jumpIfTrue: CompText873F048_unk116_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText873F048_unk116
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It'd sure be nice to\n"
	.string "say hi to everyone\n"
	.string "in town,wouldn't it?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk117
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's jack into the\n"
	.string "squirrel in the park\n"
	.string "and go to ACDC Area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk118
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's find that lost\n"
	.string "Mr.Prog! He's some-\n"
	.string "where in ACDC Area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk119
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wonder who's the\n"
	.string "one causing trouble\n"
	.string "in ACDC Area?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk120
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go back to the\n"
	.string "lost Mr.Prog,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk121
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go give Roll\n"
	.string "her stuff,OK,Lan?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk122
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's jack into the\n"
	.string "squirrel in the park\n"
	.string "and go to ACDC Area!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're supposed to\n"
	.string "meet up in front of\n"
	.string "the ducks!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk123
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We have to go to\n"
	.string "Undernet2 right now,\n"
	.string "Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk124
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Guess all I can\n"
	.string "do is go back to\n"
	.string "Central Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk125
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Maybe I should\n"
	.string "go home..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk126

	def_text_script CompText873F048_unk127

	def_text_script CompText873F048_unk128

	def_text_script CompText873F048_unk129

	def_text_script CompText873F048_unk130

	def_text_script CompText873F048_unk131

	def_text_script CompText873F048_unk132

	def_text_script CompText873F048_unk133

	def_text_script CompText873F048_unk134

	def_text_script CompText873F048_unk135
	ts_check_flag [
		flag: 0xC26,
		jumpIfTrue: CompText873F048_unk141_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC24,
		jumpIfTrue: CompText873F048_unk140_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC22,
		jumpIfTrue: CompText873F048_unk139_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCF,
		jumpIfTrue: CompText873F048_unk138_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCE,
		jumpIfTrue: CompText873F048_unk137_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC30,
		jumpIfTrue: CompText873F048_unk136_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: CompText873F048_unk142_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I've gotta hurry\n"
	.string "to Seaside Town!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk136
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Somehow,I've gotta\n"
	.string "get to CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk137
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I have to ask the\n"
	.string "Mayor to get rid of\n"
	.string "the cyberbarrier..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think the Mayor\n"
	.string "might be in the\n"
	.string "Principal's Office."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk138
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I've gotta see the\n"
	.string "Mayor no matter\n"
	.string "what!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk139
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I've gotta get to\n"
	.string "the Principal's\n"
	.string "Office right now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk140
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I've gotta get to\n"
	.string "the large hole in\n"
	.string "CentralArea!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk141
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hold on,MegaMan! I'm\n"
	.string "coming to the Under-\n"
	.string "ground right now!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk142
	ts_check_flag [
		flag: 0x1D28,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText873F048_unk143_id,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I guess I should\n"
	.string "read my mail..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk143
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wonder what\n"
	.string "Mr.Mach wants?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Guess I should go\n"
	.string "to Sky Town and\n"
	.string "find out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873F048_unk144

	def_text_script CompText873F048_unk145

	def_text_script CompText873F048_unk146

	def_text_script CompText873F048_unk147

	def_text_script CompText873F048_unk148

	def_text_script CompText873F048_unk149

	def_text_script CompText873F048_unk150

	def_text_script CompText873F048_unk151

	def_text_script CompText873F048_unk152

	def_text_script CompText873F048_unk153

	def_text_script CompText873F048_unk154

	def_text_script CompText873F048_unk155

	def_text_script CompText873F048_unk156

	def_text_script CompText873F048_unk157

	def_text_script CompText873F048_unk158

	def_text_script CompText873F048_unk159

	def_text_script CompText873F048_unk160

	def_text_script CompText873F048_unk161

	def_text_script CompText873F048_unk162

	def_text_script CompText873F048_unk163

	def_text_script CompText873F048_unk164

	def_text_script CompText873F048_unk165

	def_text_script CompText873F048_unk166

	def_text_script CompText873F048_unk167

	def_text_script CompText873F048_unk168

	def_text_script CompText873F048_unk169

	def_text_script CompText873F048_unk170

	def_text_script CompText873F048_unk171

	def_text_script CompText873F048_unk172

	def_text_script CompText873F048_unk173

	def_text_script CompText873F048_unk174

	def_text_script CompText873F048_unk175

	def_text_script CompText873F048_unk176

	def_text_script CompText873F048_unk177

	def_text_script CompText873F048_unk178

	def_text_script CompText873F048_unk179

	def_text_script CompText873F048_unk180

	def_text_script CompText873F048_unk181

	def_text_script CompText873F048_unk182

	def_text_script CompText873F048_unk183

	def_text_script CompText873F048_unk184

	def_text_script CompText873F048_unk185

	def_text_script CompText873F048_unk186

	def_text_script CompText873F048_unk187

	def_text_script CompText873F048_unk188

	def_text_script CompText873F048_unk189

	def_text_script CompText873F048_unk190

	def_text_script CompText873F048_unk191

	def_text_script CompText873F048_unk192

	def_text_script CompText873F048_unk193

	def_text_script CompText873F048_unk194

	def_text_script CompText873F048_unk195

	def_text_script CompText873F048_unk196

	def_text_script CompText873F048_unk197

	def_text_script CompText873F048_unk198

	def_text_script CompText873F048_unk199

	def_text_script CompText873F048_unk200

	def_text_script CompText873F048_unk201

	def_text_script CompText873F048_unk202

	def_text_script CompText873F048_unk203

	def_text_script CompText873F048_unk204

	def_text_script CompText873F048_unk205

	def_text_script CompText873F048_unk206

	def_text_script CompText873F048_unk207

	def_text_script CompText873F048_unk208

	def_text_script CompText873F048_unk209

	def_text_script CompText873F048_unk210

	def_text_script CompText873F048_unk211

	def_text_script CompText873F048_unk212

	def_text_script CompText873F048_unk213

	def_text_script CompText873F048_unk214

	def_text_script CompText873F048_unk215

	def_text_script CompText873F048_unk216

	def_text_script CompText873F048_unk217

	def_text_script CompText873F048_unk218

	def_text_script CompText873F048_unk219

	def_text_script CompText873F048_unk220

	def_text_script CompText873F048_unk221

	def_text_script CompText873F048_unk222

	def_text_script CompText873F048_unk223

	def_text_script CompText873F048_unk224

	def_text_script CompText873F048_unk225

	def_text_script CompText873F048_unk226

	def_text_script CompText873F048_unk227

	def_text_script CompText873F048_unk228

	def_text_script CompText873F048_unk229

	def_text_script CompText873F048_unk230

	def_text_script CompText873F048_unk231

	def_text_script CompText873F048_unk232

	def_text_script CompText873F048_unk233

	def_text_script CompText873F048_unk234

	def_text_script CompText873F048_unk235

	def_text_script CompText873F048_unk236

	def_text_script CompText873F048_unk237

	def_text_script CompText873F048_unk238

	def_text_script CompText873F048_unk239

	def_text_script CompText873F048_unk240

	def_text_script CompText873F048_unk241

	def_text_script CompText873F048_unk242

	def_text_script CompText873F048_unk243

	def_text_script CompText873F048_unk244

	def_text_script CompText873F048_unk245

	def_text_script CompText873F048_unk246

	def_text_script CompText873F048_unk247

	def_text_script CompText873F048_unk248

	def_text_script CompText873F048_unk249

	def_text_script CompText873F048_unk250

	def_text_script CompText873F048_unk251

	def_text_script CompText873F048_unk252

	def_text_script CompText873F048_unk253

	def_text_script CompText873F048_unk254

	