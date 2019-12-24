	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781048::
	.word 0x5FA00

	text_archive_start

	def_text_script CompText8781048_unk0
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Welcome to Sky Town!\n"
	.string "Looks like everyone\n"
	.string "is just about here."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Shall we get started\n"
	.string "then...?"
	ts_key_wait any=0x0
	ts_flag_set flag=0xA61
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8781048_unk1
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Yo,you're late!\n"
	.string "Good luck to you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781048_unk2
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Ah... I'm so\n"
	.string "nervous!\n"
	.string "Good luck,kid!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781048_unk3

	def_text_script CompText8781048_unk4

	def_text_script CompText8781048_unk5
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Alright!!\n"
	.string "Let's go!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781048_unk6
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Wa,wa,wa... I have\n"
	.string "to review my\n"
	.string "research notes..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If something happens\n"
	.string "in this area,then I\n"
	.string "should use a sword-"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "type chip and do\n"
	.string "this,and..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781048_unk7

	def_text_script CompText8781048_unk8

	def_text_script CompText8781048_unk9

	def_text_script CompText8781048_unk10
	ts_check_flag [
		flag: 0x1729,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Send MegaMan into\n"
	.string "the CopyBot?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_end

	def_text_script CompText8781048_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Return to the PET?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_end

	def_text_script CompText8781048_unk12
	ts_flag_set flag=0x171A
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8781048_unk13
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But there is no need\n"
	.string "to use it right\n"
	.string "now..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781048_unk14

	def_text_script CompText8781048_unk15
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "W-What? You're\n"
	.string "going to the\n"
	.string "Undernet?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sorry,but that's the\n"
	.string "one place I can't\n"
	.string "help you in!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too horrible!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Brrrr... *shiver...*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781048_unk16

	def_text_script CompText8781048_unk17

	def_text_script CompText8781048_unk18

	def_text_script CompText8781048_unk19

	def_text_script CompText8781048_unk20
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Ummmm..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781048_unk21

	def_text_script CompText8781048_unk22

	def_text_script CompText8781048_unk23

	def_text_script CompText8781048_unk24

	def_text_script CompText8781048_unk25

	def_text_script CompText8781048_unk26

	def_text_script CompText8781048_unk27

	def_text_script CompText8781048_unk28

	def_text_script CompText8781048_unk29

	def_text_script CompText8781048_unk30

	def_text_script CompText8781048_unk31

	def_text_script CompText8781048_unk32

	def_text_script CompText8781048_unk33

	def_text_script CompText8781048_unk34

	def_text_script CompText8781048_unk35

	def_text_script CompText8781048_unk36

	def_text_script CompText8781048_unk37

	def_text_script CompText8781048_unk38

	def_text_script CompText8781048_unk39

	def_text_script CompText8781048_unk40
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "*huff! huff! huff!*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We have been so busy\n"
	.string "with reporting the\n"
	.string "weather recently"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that we can not have\n"
	.string "you just hanging\n"
	.string "around!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*huff! huff! huff!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781048_unk41

	def_text_script CompText8781048_unk42

	def_text_script CompText8781048_unk43

	def_text_script CompText8781048_unk44

	def_text_script CompText8781048_unk45
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "*huff! huff! huff!*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're really too\n"
	.string "busy here!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now's not the time\n"
	.string "to talk about the\n"
	.string "Expo!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*huff! huff! huff!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781048_unk46

	def_text_script CompText8781048_unk47

	def_text_script CompText8781048_unk48

	def_text_script CompText8781048_unk49

	def_text_script CompText8781048_unk50

	def_text_script CompText8781048_unk51

	def_text_script CompText8781048_unk52

	def_text_script CompText8781048_unk53

	def_text_script CompText8781048_unk54

	def_text_script CompText8781048_unk55

	def_text_script CompText8781048_unk56

	def_text_script CompText8781048_unk57

	def_text_script CompText8781048_unk58

	def_text_script CompText8781048_unk59

	def_text_script CompText8781048_unk60

	def_text_script CompText8781048_unk61

	def_text_script CompText8781048_unk62

	def_text_script CompText8781048_unk63

	def_text_script CompText8781048_unk64

	def_text_script CompText8781048_unk65

	def_text_script CompText8781048_unk66

	def_text_script CompText8781048_unk67

	def_text_script CompText8781048_unk68

	def_text_script CompText8781048_unk69

	def_text_script CompText8781048_unk70

	def_text_script CompText8781048_unk71

	def_text_script CompText8781048_unk72

	def_text_script CompText8781048_unk73

	def_text_script CompText8781048_unk74

	def_text_script CompText8781048_unk75

	def_text_script CompText8781048_unk76

	def_text_script CompText8781048_unk77

	def_text_script CompText8781048_unk78

	def_text_script CompText8781048_unk79

	def_text_script CompText8781048_unk80

	def_text_script CompText8781048_unk81

	def_text_script CompText8781048_unk82

	def_text_script CompText8781048_unk83

	def_text_script CompText8781048_unk84

	def_text_script CompText8781048_unk85

	def_text_script CompText8781048_unk86

	def_text_script CompText8781048_unk87

	def_text_script CompText8781048_unk88

	def_text_script CompText8781048_unk89

	def_text_script CompText8781048_unk90

	def_text_script CompText8781048_unk91

	def_text_script CompText8781048_unk92

	def_text_script CompText8781048_unk93

	def_text_script CompText8781048_unk94

	def_text_script CompText8781048_unk95

	def_text_script CompText8781048_unk96

	def_text_script CompText8781048_unk97

	def_text_script CompText8781048_unk98

	def_text_script CompText8781048_unk99

	def_text_script CompText8781048_unk100

	def_text_script CompText8781048_unk101

	def_text_script CompText8781048_unk102

	def_text_script CompText8781048_unk103

	def_text_script CompText8781048_unk104

	def_text_script CompText8781048_unk105

	def_text_script CompText8781048_unk106

	def_text_script CompText8781048_unk107

	def_text_script CompText8781048_unk108

	def_text_script CompText8781048_unk109

	def_text_script CompText8781048_unk110

	def_text_script CompText8781048_unk111

	def_text_script CompText8781048_unk112

	def_text_script CompText8781048_unk113

	def_text_script CompText8781048_unk114

	def_text_script CompText8781048_unk115

	def_text_script CompText8781048_unk116

	def_text_script CompText8781048_unk117

	def_text_script CompText8781048_unk118

	def_text_script CompText8781048_unk119

	def_text_script CompText8781048_unk120

	def_text_script CompText8781048_unk121

	def_text_script CompText8781048_unk122

	def_text_script CompText8781048_unk123

	def_text_script CompText8781048_unk124

	def_text_script CompText8781048_unk125

	def_text_script CompText8781048_unk126

	def_text_script CompText8781048_unk127

	def_text_script CompText8781048_unk128

	def_text_script CompText8781048_unk129

	def_text_script CompText8781048_unk130

	def_text_script CompText8781048_unk131

	def_text_script CompText8781048_unk132

	def_text_script CompText8781048_unk133

	def_text_script CompText8781048_unk134

	def_text_script CompText8781048_unk135

	def_text_script CompText8781048_unk136

	def_text_script CompText8781048_unk137

	def_text_script CompText8781048_unk138

	def_text_script CompText8781048_unk139

	def_text_script CompText8781048_unk140

	def_text_script CompText8781048_unk141

	def_text_script CompText8781048_unk142

	def_text_script CompText8781048_unk143

	def_text_script CompText8781048_unk144

	def_text_script CompText8781048_unk145

	def_text_script CompText8781048_unk146

	def_text_script CompText8781048_unk147

	def_text_script CompText8781048_unk148

	def_text_script CompText8781048_unk149

	def_text_script CompText8781048_unk150

	def_text_script CompText8781048_unk151

	def_text_script CompText8781048_unk152

	def_text_script CompText8781048_unk153

	def_text_script CompText8781048_unk154

	def_text_script CompText8781048_unk155

	def_text_script CompText8781048_unk156

	def_text_script CompText8781048_unk157

	def_text_script CompText8781048_unk158

	def_text_script CompText8781048_unk159

	def_text_script CompText8781048_unk160

	def_text_script CompText8781048_unk161

	def_text_script CompText8781048_unk162

	def_text_script CompText8781048_unk163

	def_text_script CompText8781048_unk164

	def_text_script CompText8781048_unk165

	def_text_script CompText8781048_unk166

	def_text_script CompText8781048_unk167

	def_text_script CompText8781048_unk168

	def_text_script CompText8781048_unk169

	def_text_script CompText8781048_unk170

	def_text_script CompText8781048_unk171

	def_text_script CompText8781048_unk172

	def_text_script CompText8781048_unk173

	def_text_script CompText8781048_unk174

	def_text_script CompText8781048_unk175

	def_text_script CompText8781048_unk176

	def_text_script CompText8781048_unk177

	def_text_script CompText8781048_unk178

	def_text_script CompText8781048_unk179

	def_text_script CompText8781048_unk180

	def_text_script CompText8781048_unk181

	def_text_script CompText8781048_unk182

	def_text_script CompText8781048_unk183

	def_text_script CompText8781048_unk184

	def_text_script CompText8781048_unk185

	def_text_script CompText8781048_unk186

	def_text_script CompText8781048_unk187

	def_text_script CompText8781048_unk188

	def_text_script CompText8781048_unk189

	def_text_script CompText8781048_unk190

	def_text_script CompText8781048_unk191

	def_text_script CompText8781048_unk192

	def_text_script CompText8781048_unk193

	def_text_script CompText8781048_unk194

	def_text_script CompText8781048_unk195

	def_text_script CompText8781048_unk196

	def_text_script CompText8781048_unk197

	def_text_script CompText8781048_unk198

	def_text_script CompText8781048_unk199

	def_text_script CompText8781048_unk200

	def_text_script CompText8781048_unk201

	def_text_script CompText8781048_unk202

	def_text_script CompText8781048_unk203

	def_text_script CompText8781048_unk204

	def_text_script CompText8781048_unk205

	def_text_script CompText8781048_unk206

	def_text_script CompText8781048_unk207

	def_text_script CompText8781048_unk208

	def_text_script CompText8781048_unk209

	def_text_script CompText8781048_unk210

	def_text_script CompText8781048_unk211

	def_text_script CompText8781048_unk212

	def_text_script CompText8781048_unk213

	def_text_script CompText8781048_unk214

	def_text_script CompText8781048_unk215

	def_text_script CompText8781048_unk216

	def_text_script CompText8781048_unk217

	def_text_script CompText8781048_unk218

	def_text_script CompText8781048_unk219

	def_text_script CompText8781048_unk220

	def_text_script CompText8781048_unk221

	def_text_script CompText8781048_unk222

	def_text_script CompText8781048_unk223

	def_text_script CompText8781048_unk224

	def_text_script CompText8781048_unk225

	def_text_script CompText8781048_unk226

	def_text_script CompText8781048_unk227

	def_text_script CompText8781048_unk228

	def_text_script CompText8781048_unk229

	def_text_script CompText8781048_unk230

	def_text_script CompText8781048_unk231

	def_text_script CompText8781048_unk232

	def_text_script CompText8781048_unk233

	def_text_script CompText8781048_unk234

	def_text_script CompText8781048_unk235

	def_text_script CompText8781048_unk236

	def_text_script CompText8781048_unk237

	def_text_script CompText8781048_unk238

	def_text_script CompText8781048_unk239

	def_text_script CompText8781048_unk240

	def_text_script CompText8781048_unk241

	def_text_script CompText8781048_unk242

	def_text_script CompText8781048_unk243

	def_text_script CompText8781048_unk244

	def_text_script CompText8781048_unk245

	def_text_script CompText8781048_unk246

	def_text_script CompText8781048_unk247

	def_text_script CompText8781048_unk248

	def_text_script CompText8781048_unk249

	def_text_script CompText8781048_unk250

	def_text_script CompText8781048_unk251

	def_text_script CompText8781048_unk252

	def_text_script CompText8781048_unk253

	def_text_script CompText8781048_unk254

	