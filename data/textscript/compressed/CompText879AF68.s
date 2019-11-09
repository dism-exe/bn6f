	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879AF68::
	.word 0x74F00

	text_archive_start

	def_text_script CompText879AF68_unk0

	def_text_script CompText879AF68_unk1

	def_text_script CompText879AF68_unk2

	def_text_script CompText879AF68_unk3

	def_text_script CompText879AF68_unk4

	def_text_script CompText879AF68_unk5

	def_text_script CompText879AF68_unk6

	def_text_script CompText879AF68_unk7

	def_text_script CompText879AF68_unk8

	def_text_script CompText879AF68_unk9

	def_text_script CompText879AF68_unk10

	def_text_script CompText879AF68_unk11

	def_text_script CompText879AF68_unk12

	def_text_script CompText879AF68_unk13

	def_text_script CompText879AF68_unk14

	def_text_script CompText879AF68_unk15
	ts_flag_set 0x46, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText879AF68_unk16

	def_text_script CompText879AF68_unk17
	ts_check_flag 0x7C, 0x6, 0x12, 0xFF
	ts_flag_set 0x7C, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText879AF68_unk18

	def_text_script CompText879AF68_unk19

	def_text_script CompText879AF68_unk20

	def_text_script CompText879AF68_unk21

	def_text_script CompText879AF68_unk22

	def_text_script CompText879AF68_unk23

	def_text_script CompText879AF68_unk24

	def_text_script CompText879AF68_unk25

	def_text_script CompText879AF68_unk26

	def_text_script CompText879AF68_unk27

	def_text_script CompText879AF68_unk28

	def_text_script CompText879AF68_unk29

	def_text_script CompText879AF68_unk30

	def_text_script CompText879AF68_unk31

	def_text_script CompText879AF68_unk32

	def_text_script CompText879AF68_unk33

	def_text_script CompText879AF68_unk34

	def_text_script CompText879AF68_unk35

	def_text_script CompText879AF68_unk36

	def_text_script CompText879AF68_unk37

	def_text_script CompText879AF68_unk38

	def_text_script CompText879AF68_unk39

	def_text_script CompText879AF68_unk40

	def_text_script CompText879AF68_unk41

	def_text_script CompText879AF68_unk42

	def_text_script CompText879AF68_unk43

	def_text_script CompText879AF68_unk44

	def_text_script CompText879AF68_unk45

	def_text_script CompText879AF68_unk46

	def_text_script CompText879AF68_unk47

	def_text_script CompText879AF68_unk48

	def_text_script CompText879AF68_unk49

	def_text_script CompText879AF68_unk50
	ts_check_flag 0x58, 0x8, 0x33, 0xFF
	ts_flag_set 0x58, 0x8
	ts_msg_open
	ts_mugshot_show 0x46
	.string "You're an Operator\n"
	.string "Navi Selection Test\n"
	.string "participant,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is the\n"
	.string "\"cyberseal\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you see it?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe if you stand\n"
	.string "on your tip toes\n"
	.string "you can..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "At the Aquarium HP,\n"
	.string "the seal is used as\n"
	.string "a visual."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Congratulations\n"
	.string "on passing the\n"
	.string "first test!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But don't be too\n"
	.string "proud of yourself!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The tests will\n"
	.string "keep on coming!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The next test is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To find a\n"
	.string "\"fish that cannot\n"
	.string " swim\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's a hint...\n"
	.string "\"You can't find it\n"
	.string " in the real world!\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "Use your brain and\n"
	.string "solve the riddle!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AF68_unk51
	ts_msg_open
	ts_mugshot_show 0x46
	.string "The tests will\n"
	.string "keep coming!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The next test is to\n"
	.string "find a \"fish that\n"
	.string "cannot swim\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh? You'd like\n"
	.string "a hint?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"A fish that\n"
	.string " cannot swim\" is\n"
	.string "a tasty snack."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Heheh...\n"
	.string "Did you get it?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AF68_unk52
	ts_check_flag 0x58, 0x8, 0x35, 0xFF
	ts_flag_set 0x58, 0x8
	ts_msg_open
	ts_mugshot_show 0x45
	.string "You're an Operator\n"
	.string "Navi Selection Test\n"
	.string "participant,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is the\n"
	.string "\"cyberseal\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you see it?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe if you stand\n"
	.string "on your tip toes\n"
	.string "you can..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "At the Aquarium HP,\n"
	.string "the seal is used as\n"
	.string "a visual."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Congratulations\n"
	.string "on passing the\n"
	.string "first test!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But don't be too\n"
	.string "proud of yourself!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The tests will\n"
	.string "keep on coming!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The next test is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To find a\n"
	.string "\"fish that cannot\n"
	.string " swim\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's a hint...\n"
	.string "\"You can't find it\n"
	.string " in the real world!\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go out there and\n"
	.string "do your best!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AF68_unk53
	ts_msg_open
	ts_mugshot_show 0x45
	.string "What is a\n"
	.string "\"fish that cannot\n"
	.string " swim\"? Do you know?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's a hint for\n"
	.string "those that are\n"
	.string "stuck!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"A fish that\n"
	.string " cannot swim\"\n"
	.string "floats in oil!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did that help?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AF68_unk54

	def_text_script CompText879AF68_unk55

	def_text_script CompText879AF68_unk56

	def_text_script CompText879AF68_unk57

	def_text_script CompText879AF68_unk58

	def_text_script CompText879AF68_unk59

	def_text_script CompText879AF68_unk60

	def_text_script CompText879AF68_unk61

	def_text_script CompText879AF68_unk62

	def_text_script CompText879AF68_unk63

	def_text_script CompText879AF68_unk64

	def_text_script CompText879AF68_unk65

	def_text_script CompText879AF68_unk66

	def_text_script CompText879AF68_unk67

	def_text_script CompText879AF68_unk68

	def_text_script CompText879AF68_unk69

	def_text_script CompText879AF68_unk70

	def_text_script CompText879AF68_unk71

	def_text_script CompText879AF68_unk72

	def_text_script CompText879AF68_unk73

	def_text_script CompText879AF68_unk74

	def_text_script CompText879AF68_unk75

	def_text_script CompText879AF68_unk76

	def_text_script CompText879AF68_unk77

	def_text_script CompText879AF68_unk78

	def_text_script CompText879AF68_unk79

	def_text_script CompText879AF68_unk80

	def_text_script CompText879AF68_unk81

	def_text_script CompText879AF68_unk82

	def_text_script CompText879AF68_unk83

	def_text_script CompText879AF68_unk84

	def_text_script CompText879AF68_unk85

	def_text_script CompText879AF68_unk86

	def_text_script CompText879AF68_unk87

	def_text_script CompText879AF68_unk88

	def_text_script CompText879AF68_unk89

	def_text_script CompText879AF68_unk90

	def_text_script CompText879AF68_unk91

	def_text_script CompText879AF68_unk92

	def_text_script CompText879AF68_unk93

	def_text_script CompText879AF68_unk94

	def_text_script CompText879AF68_unk95

	def_text_script CompText879AF68_unk96

	def_text_script CompText879AF68_unk97

	def_text_script CompText879AF68_unk98

	def_text_script CompText879AF68_unk99

	def_text_script CompText879AF68_unk100

	def_text_script CompText879AF68_unk101

	def_text_script CompText879AF68_unk102

	def_text_script CompText879AF68_unk103

	def_text_script CompText879AF68_unk104

	def_text_script CompText879AF68_unk105

	def_text_script CompText879AF68_unk106

	def_text_script CompText879AF68_unk107

	def_text_script CompText879AF68_unk108

	def_text_script CompText879AF68_unk109

	def_text_script CompText879AF68_unk110

	def_text_script CompText879AF68_unk111

	def_text_script CompText879AF68_unk112

	def_text_script CompText879AF68_unk113

	def_text_script CompText879AF68_unk114

	def_text_script CompText879AF68_unk115

	def_text_script CompText879AF68_unk116

	def_text_script CompText879AF68_unk117

	def_text_script CompText879AF68_unk118

	def_text_script CompText879AF68_unk119

	def_text_script CompText879AF68_unk120

	def_text_script CompText879AF68_unk121

	def_text_script CompText879AF68_unk122

	def_text_script CompText879AF68_unk123

	def_text_script CompText879AF68_unk124

	def_text_script CompText879AF68_unk125

	def_text_script CompText879AF68_unk126

	def_text_script CompText879AF68_unk127

	def_text_script CompText879AF68_unk128

	def_text_script CompText879AF68_unk129

	def_text_script CompText879AF68_unk130

	def_text_script CompText879AF68_unk131

	def_text_script CompText879AF68_unk132

	def_text_script CompText879AF68_unk133

	def_text_script CompText879AF68_unk134

	def_text_script CompText879AF68_unk135

	def_text_script CompText879AF68_unk136

	def_text_script CompText879AF68_unk137

	def_text_script CompText879AF68_unk138

	def_text_script CompText879AF68_unk139

	def_text_script CompText879AF68_unk140

	def_text_script CompText879AF68_unk141

	def_text_script CompText879AF68_unk142

	def_text_script CompText879AF68_unk143

	def_text_script CompText879AF68_unk144

	def_text_script CompText879AF68_unk145

	def_text_script CompText879AF68_unk146

	def_text_script CompText879AF68_unk147

	def_text_script CompText879AF68_unk148

	def_text_script CompText879AF68_unk149

	def_text_script CompText879AF68_unk150

	def_text_script CompText879AF68_unk151

	def_text_script CompText879AF68_unk152

	def_text_script CompText879AF68_unk153

	def_text_script CompText879AF68_unk154

	def_text_script CompText879AF68_unk155

	def_text_script CompText879AF68_unk156

	def_text_script CompText879AF68_unk157

	def_text_script CompText879AF68_unk158

	def_text_script CompText879AF68_unk159

	def_text_script CompText879AF68_unk160

	def_text_script CompText879AF68_unk161

	def_text_script CompText879AF68_unk162

	def_text_script CompText879AF68_unk163

	def_text_script CompText879AF68_unk164

	def_text_script CompText879AF68_unk165

	def_text_script CompText879AF68_unk166

	def_text_script CompText879AF68_unk167

	def_text_script CompText879AF68_unk168

	def_text_script CompText879AF68_unk169

	def_text_script CompText879AF68_unk170

	def_text_script CompText879AF68_unk171

	def_text_script CompText879AF68_unk172

	def_text_script CompText879AF68_unk173

	def_text_script CompText879AF68_unk174

	def_text_script CompText879AF68_unk175

	def_text_script CompText879AF68_unk176

	def_text_script CompText879AF68_unk177

	def_text_script CompText879AF68_unk178

	def_text_script CompText879AF68_unk179

	def_text_script CompText879AF68_unk180

	def_text_script CompText879AF68_unk181

	def_text_script CompText879AF68_unk182

	def_text_script CompText879AF68_unk183

	def_text_script CompText879AF68_unk184

	def_text_script CompText879AF68_unk185

	def_text_script CompText879AF68_unk186

	def_text_script CompText879AF68_unk187

	def_text_script CompText879AF68_unk188

	def_text_script CompText879AF68_unk189

	def_text_script CompText879AF68_unk190

	def_text_script CompText879AF68_unk191

	def_text_script CompText879AF68_unk192

	def_text_script CompText879AF68_unk193

	def_text_script CompText879AF68_unk194

	def_text_script CompText879AF68_unk195

	def_text_script CompText879AF68_unk196

	def_text_script CompText879AF68_unk197

	def_text_script CompText879AF68_unk198

	def_text_script CompText879AF68_unk199

	def_text_script CompText879AF68_unk200

	def_text_script CompText879AF68_unk201

	def_text_script CompText879AF68_unk202

	def_text_script CompText879AF68_unk203

	def_text_script CompText879AF68_unk204

	def_text_script CompText879AF68_unk205

	def_text_script CompText879AF68_unk206

	def_text_script CompText879AF68_unk207

	def_text_script CompText879AF68_unk208

	def_text_script CompText879AF68_unk209

	def_text_script CompText879AF68_unk210

	def_text_script CompText879AF68_unk211

	def_text_script CompText879AF68_unk212

	def_text_script CompText879AF68_unk213

	def_text_script CompText879AF68_unk214

	def_text_script CompText879AF68_unk215

	def_text_script CompText879AF68_unk216

	def_text_script CompText879AF68_unk217

	def_text_script CompText879AF68_unk218

	def_text_script CompText879AF68_unk219

	def_text_script CompText879AF68_unk220

	def_text_script CompText879AF68_unk221

	def_text_script CompText879AF68_unk222

	def_text_script CompText879AF68_unk223

	def_text_script CompText879AF68_unk224

	def_text_script CompText879AF68_unk225

	def_text_script CompText879AF68_unk226

	def_text_script CompText879AF68_unk227

	def_text_script CompText879AF68_unk228

	def_text_script CompText879AF68_unk229

	def_text_script CompText879AF68_unk230

	def_text_script CompText879AF68_unk231

	def_text_script CompText879AF68_unk232

	def_text_script CompText879AF68_unk233

	def_text_script CompText879AF68_unk234

	def_text_script CompText879AF68_unk235

	def_text_script CompText879AF68_unk236

	def_text_script CompText879AF68_unk237

	def_text_script CompText879AF68_unk238

	def_text_script CompText879AF68_unk239

	def_text_script CompText879AF68_unk240

	def_text_script CompText879AF68_unk241

	def_text_script CompText879AF68_unk242

	def_text_script CompText879AF68_unk243

	def_text_script CompText879AF68_unk244

	def_text_script CompText879AF68_unk245

	def_text_script CompText879AF68_unk246

	def_text_script CompText879AF68_unk247

	def_text_script CompText879AF68_unk248

	def_text_script CompText879AF68_unk249

	def_text_script CompText879AF68_unk250

	def_text_script CompText879AF68_unk251

	def_text_script CompText879AF68_unk252

	def_text_script CompText879AF68_unk253

	def_text_script CompText879AF68_unk254

	