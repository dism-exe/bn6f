	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781784::
	.word 0x63000

	text_archive_start

	def_text_script CompText8781784_unk0
	ts_check_flag 0x62, 0xA, 0x1, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Mr.Weather is over\n"
	.string "there. Make sure you\n"
	.string "check in with him."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk1
	ts_mugshot_show 0x41
	ts_msg_open
	.string "The test will\n"
	.string "now start!\n"
	.string "Good luck to you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Follow this walkway\n"
	.string "down to the end,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "where it will lead\n"
	.string "you outside."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Once you're outside,\n"
	.string "just follow the road\n"
	.string "to a spacious area."
	ts_key_wait 0x0
	ts_clear_msg
	.string "In that area,there\n"
	.string "is a dish antenna."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you jack in\n"
	.string "there,you can\n"
	.string "go on the Net."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk2
	ts_mugshot_show 0x16
	ts_msg_open
	.string "The umbrella you got\n"
	.string "earlier is very\n"
	.string "strong."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You could probably\n"
	.string "even use it as a\n"
	.string "parachute"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to float down if you\n"
	.string "wanted!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk3

	def_text_script CompText8781784_unk4

	def_text_script CompText8781784_unk5
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I heard the story...\n"
	.string "But,to take on those\n"
	.string "Undernet guys..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wouldn't have been\n"
	.string "able to do a\n"
	.string "thing..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk6

	def_text_script CompText8781784_unk7

	def_text_script CompText8781784_unk8

	def_text_script CompText8781784_unk9

	def_text_script CompText8781784_unk10

	def_text_script CompText8781784_unk11

	def_text_script CompText8781784_unk12

	def_text_script CompText8781784_unk13

	def_text_script CompText8781784_unk14

	def_text_script CompText8781784_unk15

	def_text_script CompText8781784_unk16

	def_text_script CompText8781784_unk17

	def_text_script CompText8781784_unk18

	def_text_script CompText8781784_unk19

	def_text_script CompText8781784_unk20
	ts_mugshot_show 0x27
	ts_msg_open
	.string "You are taking the\n"
	.string "test as well...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Heh,good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk21
	ts_mugshot_show 0x24
	ts_msg_open
	.string "You're taking the\n"
	.string "test too?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good! We came for\n"
	.string "a good battle!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk22
	ts_mugshot_show 0x26
	ts_msg_open
	.string "The test,huh...\n"
	.string "... Good luck."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk23
	ts_mugshot_show 0x25
	ts_msg_open
	.string "The Operator Navi\n"
	.string "test is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "a whole lot tougher\n"
	.string "than I thought!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk24

	def_text_script CompText8781784_unk25

	def_text_script CompText8781784_unk26

	def_text_script CompText8781784_unk27

	def_text_script CompText8781784_unk28

	def_text_script CompText8781784_unk29

	def_text_script CompText8781784_unk30

	def_text_script CompText8781784_unk31

	def_text_script CompText8781784_unk32

	def_text_script CompText8781784_unk33

	def_text_script CompText8781784_unk34

	def_text_script CompText8781784_unk35

	def_text_script CompText8781784_unk36

	def_text_script CompText8781784_unk37

	def_text_script CompText8781784_unk38

	def_text_script CompText8781784_unk39

	def_text_script CompText8781784_unk40

	def_text_script CompText8781784_unk41
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Mr.Weather was\n"
	.string "broken by something\n"
	.string "or another..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "but we worked really\n"
	.string "hard to rebuild and\n"
	.string "normalize him."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk42

	def_text_script CompText8781784_unk43

	def_text_script CompText8781784_unk44

	def_text_script CompText8781784_unk45

	def_text_script CompText8781784_unk46
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Mr.Weather has been\n"
	.string "rebuilt better than\n"
	.string "ever!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We can control the\n"
	.string "weather in Cyber\n"
	.string "City again,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so no need to worry!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk47

	def_text_script CompText8781784_unk48

	def_text_script CompText8781784_unk49

	def_text_script CompText8781784_unk50

	def_text_script CompText8781784_unk51

	def_text_script CompText8781784_unk52

	def_text_script CompText8781784_unk53

	def_text_script CompText8781784_unk54

	def_text_script CompText8781784_unk55

	def_text_script CompText8781784_unk56

	def_text_script CompText8781784_unk57

	def_text_script CompText8781784_unk58

	def_text_script CompText8781784_unk59

	def_text_script CompText8781784_unk60

	def_text_script CompText8781784_unk61

	def_text_script CompText8781784_unk62

	def_text_script CompText8781784_unk63

	def_text_script CompText8781784_unk64

	def_text_script CompText8781784_unk65

	def_text_script CompText8781784_unk66

	def_text_script CompText8781784_unk67

	def_text_script CompText8781784_unk68

	def_text_script CompText8781784_unk69

	def_text_script CompText8781784_unk70

	def_text_script CompText8781784_unk71

	def_text_script CompText8781784_unk72

	def_text_script CompText8781784_unk73

	def_text_script CompText8781784_unk74

	def_text_script CompText8781784_unk75

	def_text_script CompText8781784_unk76

	def_text_script CompText8781784_unk77

	def_text_script CompText8781784_unk78

	def_text_script CompText8781784_unk79

	def_text_script CompText8781784_unk80

	def_text_script CompText8781784_unk81

	def_text_script CompText8781784_unk82

	def_text_script CompText8781784_unk83

	def_text_script CompText8781784_unk84

	def_text_script CompText8781784_unk85

	def_text_script CompText8781784_unk86

	def_text_script CompText8781784_unk87

	def_text_script CompText8781784_unk88

	def_text_script CompText8781784_unk89

	def_text_script CompText8781784_unk90

	def_text_script CompText8781784_unk91

	def_text_script CompText8781784_unk92

	def_text_script CompText8781784_unk93

	def_text_script CompText8781784_unk94

	def_text_script CompText8781784_unk95

	def_text_script CompText8781784_unk96

	def_text_script CompText8781784_unk97

	def_text_script CompText8781784_unk98

	def_text_script CompText8781784_unk99

	def_text_script CompText8781784_unk100

	def_text_script CompText8781784_unk101

	def_text_script CompText8781784_unk102

	def_text_script CompText8781784_unk103

	def_text_script CompText8781784_unk104

	def_text_script CompText8781784_unk105

	def_text_script CompText8781784_unk106

	def_text_script CompText8781784_unk107

	def_text_script CompText8781784_unk108

	def_text_script CompText8781784_unk109

	def_text_script CompText8781784_unk110

	def_text_script CompText8781784_unk111

	def_text_script CompText8781784_unk112

	def_text_script CompText8781784_unk113

	def_text_script CompText8781784_unk114

	def_text_script CompText8781784_unk115

	def_text_script CompText8781784_unk116

	def_text_script CompText8781784_unk117

	def_text_script CompText8781784_unk118

	def_text_script CompText8781784_unk119

	def_text_script CompText8781784_unk120

	def_text_script CompText8781784_unk121

	def_text_script CompText8781784_unk122

	def_text_script CompText8781784_unk123

	def_text_script CompText8781784_unk124

	def_text_script CompText8781784_unk125

	def_text_script CompText8781784_unk126

	def_text_script CompText8781784_unk127

	def_text_script CompText8781784_unk128

	def_text_script CompText8781784_unk129

	def_text_script CompText8781784_unk130

	def_text_script CompText8781784_unk131

	def_text_script CompText8781784_unk132

	def_text_script CompText8781784_unk133

	def_text_script CompText8781784_unk134

	def_text_script CompText8781784_unk135

	def_text_script CompText8781784_unk136

	def_text_script CompText8781784_unk137

	def_text_script CompText8781784_unk138

	def_text_script CompText8781784_unk139

	def_text_script CompText8781784_unk140

	def_text_script CompText8781784_unk141

	def_text_script CompText8781784_unk142

	def_text_script CompText8781784_unk143

	def_text_script CompText8781784_unk144

	def_text_script CompText8781784_unk145

	def_text_script CompText8781784_unk146

	def_text_script CompText8781784_unk147

	def_text_script CompText8781784_unk148

	def_text_script CompText8781784_unk149

	def_text_script CompText8781784_unk150

	def_text_script CompText8781784_unk151

	def_text_script CompText8781784_unk152

	def_text_script CompText8781784_unk153

	def_text_script CompText8781784_unk154

	def_text_script CompText8781784_unk155

	def_text_script CompText8781784_unk156

	def_text_script CompText8781784_unk157

	def_text_script CompText8781784_unk158

	def_text_script CompText8781784_unk159

	def_text_script CompText8781784_unk160

	def_text_script CompText8781784_unk161

	def_text_script CompText8781784_unk162

	def_text_script CompText8781784_unk163

	def_text_script CompText8781784_unk164

	def_text_script CompText8781784_unk165

	def_text_script CompText8781784_unk166

	def_text_script CompText8781784_unk167

	def_text_script CompText8781784_unk168

	def_text_script CompText8781784_unk169

	def_text_script CompText8781784_unk170

	def_text_script CompText8781784_unk171

	def_text_script CompText8781784_unk172

	def_text_script CompText8781784_unk173

	def_text_script CompText8781784_unk174

	def_text_script CompText8781784_unk175

	def_text_script CompText8781784_unk176

	def_text_script CompText8781784_unk177

	def_text_script CompText8781784_unk178

	def_text_script CompText8781784_unk179

	def_text_script CompText8781784_unk180

	def_text_script CompText8781784_unk181

	def_text_script CompText8781784_unk182

	def_text_script CompText8781784_unk183

	def_text_script CompText8781784_unk184

	def_text_script CompText8781784_unk185

	def_text_script CompText8781784_unk186

	def_text_script CompText8781784_unk187

	def_text_script CompText8781784_unk188

	def_text_script CompText8781784_unk189

	def_text_script CompText8781784_unk190

	def_text_script CompText8781784_unk191

	def_text_script CompText8781784_unk192

	def_text_script CompText8781784_unk193

	def_text_script CompText8781784_unk194

	def_text_script CompText8781784_unk195

	def_text_script CompText8781784_unk196

	def_text_script CompText8781784_unk197

	def_text_script CompText8781784_unk198

	def_text_script CompText8781784_unk199

	def_text_script CompText8781784_unk200

	def_text_script CompText8781784_unk201

	def_text_script CompText8781784_unk202

	def_text_script CompText8781784_unk203

	def_text_script CompText8781784_unk204

	def_text_script CompText8781784_unk205

	def_text_script CompText8781784_unk206

	def_text_script CompText8781784_unk207

	def_text_script CompText8781784_unk208

	def_text_script CompText8781784_unk209

	def_text_script CompText8781784_unk210

	def_text_script CompText8781784_unk211

	def_text_script CompText8781784_unk212

	def_text_script CompText8781784_unk213

	def_text_script CompText8781784_unk214

	def_text_script CompText8781784_unk215

	def_text_script CompText8781784_unk216

	def_text_script CompText8781784_unk217

	def_text_script CompText8781784_unk218

	def_text_script CompText8781784_unk219

	def_text_script CompText8781784_unk220

	def_text_script CompText8781784_unk221

	def_text_script CompText8781784_unk222

	def_text_script CompText8781784_unk223

	def_text_script CompText8781784_unk224

	def_text_script CompText8781784_unk225

	def_text_script CompText8781784_unk226

	def_text_script CompText8781784_unk227

	def_text_script CompText8781784_unk228

	def_text_script CompText8781784_unk229

	def_text_script CompText8781784_unk230

	def_text_script CompText8781784_unk231

	def_text_script CompText8781784_unk232

	def_text_script CompText8781784_unk233

	def_text_script CompText8781784_unk234

	def_text_script CompText8781784_unk235

	def_text_script CompText8781784_unk236

	def_text_script CompText8781784_unk237

	def_text_script CompText8781784_unk238

	def_text_script CompText8781784_unk239

	def_text_script CompText8781784_unk240

	def_text_script CompText8781784_unk241

	def_text_script CompText8781784_unk242

	def_text_script CompText8781784_unk243

	def_text_script CompText8781784_unk244

	def_text_script CompText8781784_unk245

	def_text_script CompText8781784_unk246

	def_text_script CompText8781784_unk247

	def_text_script CompText8781784_unk248

	def_text_script CompText8781784_unk249

	def_text_script CompText8781784_unk250

	def_text_script CompText8781784_unk251

	def_text_script CompText8781784_unk252

	def_text_script CompText8781784_unk253

	def_text_script CompText8781784_unk254

	def_text_script CompText8781784_unk255

	