	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877C0FC::
	.word 0x74200

	text_archive_start

	def_text_script CompText877C0FC_unk0
	ts_check_flag [
		flag: 0x870,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x870
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Court will not be\n"
	.string "in session today."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Did you have some\n"
	.string "business here?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Where is\n"
	.string "Yuichiro Hikari!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x15
	.string "The criminal,Hikari,\n"
	.string "should already be in\n"
	.string "the PunishmentRoom."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He should receive\n"
	.string "his sentence\n"
	.string "shortly..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why do you want\n"
	.string "to know?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "His alibi..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yuichiro Hikari\n"
	.string "had an alibi..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x15
	.string "Is that so?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yes! It's the truth!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x15
	.string "Hmmmmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I believe you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll make an\n"
	.string "exception this time."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You may go to the\n"
	.string "PunishmentRoom."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk1
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "I'll make an\n"
	.string "exception this time."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You may go to the\n"
	.string "PunishmentRoom."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk2
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "That door is\n"
	.string "bring repaired\n"
	.string "now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please be\n"
	.string "patient..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk3
	ts_msg_open
	.string "NO UNAUTHORIZED\n"
	.string "PERSONNEL!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk4

	def_text_script CompText877C0FC_unk5
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Actually,I'm a new\n"
	.string "prosecutor who just\n"
	.string "passed the bar exam."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So I still don't\n"
	.string "know my left from\n"
	.string "my right..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Uh-oh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk6
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Applications for\n"
	.string "entry permits are"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "being taken at the\n"
	.string "Green Area2 NetCafe."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I had been planning\n"
	.string "to apply for a\n"
	.string "while now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sorry,but I\n"
	.string "completely forgot!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk7
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Well,it's about time\n"
	.string "for today's pre-\n"
	.string "trial meeting..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk8
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "I think you should\n"
	.string "study the law for\n"
	.string "yourself."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think you'd\n"
	.string "be surprised!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk9

	def_text_script CompText877C0FC_unk10
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Actually,I'm a new\n"
	.string "prosecutor who just\n"
	.string "passed the bar exam."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I still have lots\n"
	.string "of things to learn!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk11

	def_text_script CompText877C0FC_unk12

	def_text_script CompText877C0FC_unk13

	def_text_script CompText877C0FC_unk14

	def_text_script CompText877C0FC_unk15
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "Hey! What's going\n"
	.string "on here!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk16
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "What happened?\n"
	.string "Did you make it!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk17
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Oh no... That\n"
	.string "JudgeTree is acting\n"
	.string "very strange!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is not\n"
	.string "something we\n"
	.string "expected!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C0FC_unk18

	def_text_script CompText877C0FC_unk19

	def_text_script CompText877C0FC_unk20

	def_text_script CompText877C0FC_unk21

	def_text_script CompText877C0FC_unk22

	def_text_script CompText877C0FC_unk23

	def_text_script CompText877C0FC_unk24

	def_text_script CompText877C0FC_unk25

	def_text_script CompText877C0FC_unk26

	def_text_script CompText877C0FC_unk27

	def_text_script CompText877C0FC_unk28

	def_text_script CompText877C0FC_unk29

	def_text_script CompText877C0FC_unk30

	def_text_script CompText877C0FC_unk31

	def_text_script CompText877C0FC_unk32

	def_text_script CompText877C0FC_unk33

	def_text_script CompText877C0FC_unk34

	def_text_script CompText877C0FC_unk35

	def_text_script CompText877C0FC_unk36

	def_text_script CompText877C0FC_unk37

	def_text_script CompText877C0FC_unk38

	def_text_script CompText877C0FC_unk39

	def_text_script CompText877C0FC_unk40

	def_text_script CompText877C0FC_unk41

	def_text_script CompText877C0FC_unk42

	def_text_script CompText877C0FC_unk43

	def_text_script CompText877C0FC_unk44

	def_text_script CompText877C0FC_unk45

	def_text_script CompText877C0FC_unk46

	def_text_script CompText877C0FC_unk47

	def_text_script CompText877C0FC_unk48

	def_text_script CompText877C0FC_unk49

	def_text_script CompText877C0FC_unk50

	def_text_script CompText877C0FC_unk51

	def_text_script CompText877C0FC_unk52

	def_text_script CompText877C0FC_unk53

	def_text_script CompText877C0FC_unk54

	def_text_script CompText877C0FC_unk55

	def_text_script CompText877C0FC_unk56

	def_text_script CompText877C0FC_unk57

	def_text_script CompText877C0FC_unk58

	def_text_script CompText877C0FC_unk59

	def_text_script CompText877C0FC_unk60

	def_text_script CompText877C0FC_unk61

	def_text_script CompText877C0FC_unk62

	def_text_script CompText877C0FC_unk63

	def_text_script CompText877C0FC_unk64

	def_text_script CompText877C0FC_unk65

	def_text_script CompText877C0FC_unk66

	def_text_script CompText877C0FC_unk67

	def_text_script CompText877C0FC_unk68

	def_text_script CompText877C0FC_unk69

	def_text_script CompText877C0FC_unk70

	def_text_script CompText877C0FC_unk71

	def_text_script CompText877C0FC_unk72

	def_text_script CompText877C0FC_unk73

	def_text_script CompText877C0FC_unk74

	def_text_script CompText877C0FC_unk75

	def_text_script CompText877C0FC_unk76

	def_text_script CompText877C0FC_unk77

	def_text_script CompText877C0FC_unk78

	def_text_script CompText877C0FC_unk79

	def_text_script CompText877C0FC_unk80

	def_text_script CompText877C0FC_unk81

	def_text_script CompText877C0FC_unk82

	def_text_script CompText877C0FC_unk83

	def_text_script CompText877C0FC_unk84

	def_text_script CompText877C0FC_unk85

	def_text_script CompText877C0FC_unk86

	def_text_script CompText877C0FC_unk87

	def_text_script CompText877C0FC_unk88

	def_text_script CompText877C0FC_unk89

	def_text_script CompText877C0FC_unk90

	def_text_script CompText877C0FC_unk91

	def_text_script CompText877C0FC_unk92

	def_text_script CompText877C0FC_unk93

	def_text_script CompText877C0FC_unk94

	def_text_script CompText877C0FC_unk95

	def_text_script CompText877C0FC_unk96

	def_text_script CompText877C0FC_unk97

	def_text_script CompText877C0FC_unk98

	def_text_script CompText877C0FC_unk99

	def_text_script CompText877C0FC_unk100

	def_text_script CompText877C0FC_unk101

	def_text_script CompText877C0FC_unk102

	def_text_script CompText877C0FC_unk103

	def_text_script CompText877C0FC_unk104

	def_text_script CompText877C0FC_unk105

	def_text_script CompText877C0FC_unk106

	def_text_script CompText877C0FC_unk107

	def_text_script CompText877C0FC_unk108

	def_text_script CompText877C0FC_unk109

	def_text_script CompText877C0FC_unk110

	def_text_script CompText877C0FC_unk111

	def_text_script CompText877C0FC_unk112

	def_text_script CompText877C0FC_unk113

	def_text_script CompText877C0FC_unk114

	def_text_script CompText877C0FC_unk115

	def_text_script CompText877C0FC_unk116

	def_text_script CompText877C0FC_unk117

	def_text_script CompText877C0FC_unk118

	def_text_script CompText877C0FC_unk119

	def_text_script CompText877C0FC_unk120

	def_text_script CompText877C0FC_unk121

	def_text_script CompText877C0FC_unk122

	def_text_script CompText877C0FC_unk123

	def_text_script CompText877C0FC_unk124

	def_text_script CompText877C0FC_unk125

	def_text_script CompText877C0FC_unk126

	def_text_script CompText877C0FC_unk127

	def_text_script CompText877C0FC_unk128

	def_text_script CompText877C0FC_unk129

	def_text_script CompText877C0FC_unk130

	def_text_script CompText877C0FC_unk131

	def_text_script CompText877C0FC_unk132

	def_text_script CompText877C0FC_unk133

	def_text_script CompText877C0FC_unk134

	def_text_script CompText877C0FC_unk135

	def_text_script CompText877C0FC_unk136

	def_text_script CompText877C0FC_unk137

	def_text_script CompText877C0FC_unk138

	def_text_script CompText877C0FC_unk139

	def_text_script CompText877C0FC_unk140

	def_text_script CompText877C0FC_unk141

	def_text_script CompText877C0FC_unk142

	def_text_script CompText877C0FC_unk143

	def_text_script CompText877C0FC_unk144

	def_text_script CompText877C0FC_unk145

	def_text_script CompText877C0FC_unk146

	def_text_script CompText877C0FC_unk147

	def_text_script CompText877C0FC_unk148

	def_text_script CompText877C0FC_unk149

	def_text_script CompText877C0FC_unk150

	def_text_script CompText877C0FC_unk151

	def_text_script CompText877C0FC_unk152

	def_text_script CompText877C0FC_unk153

	def_text_script CompText877C0FC_unk154

	def_text_script CompText877C0FC_unk155

	def_text_script CompText877C0FC_unk156

	def_text_script CompText877C0FC_unk157

	def_text_script CompText877C0FC_unk158

	def_text_script CompText877C0FC_unk159

	def_text_script CompText877C0FC_unk160

	def_text_script CompText877C0FC_unk161

	def_text_script CompText877C0FC_unk162

	def_text_script CompText877C0FC_unk163

	def_text_script CompText877C0FC_unk164

	def_text_script CompText877C0FC_unk165

	def_text_script CompText877C0FC_unk166

	def_text_script CompText877C0FC_unk167

	def_text_script CompText877C0FC_unk168

	def_text_script CompText877C0FC_unk169

	def_text_script CompText877C0FC_unk170

	def_text_script CompText877C0FC_unk171

	def_text_script CompText877C0FC_unk172

	def_text_script CompText877C0FC_unk173

	def_text_script CompText877C0FC_unk174

	def_text_script CompText877C0FC_unk175

	def_text_script CompText877C0FC_unk176

	def_text_script CompText877C0FC_unk177

	def_text_script CompText877C0FC_unk178

	def_text_script CompText877C0FC_unk179

	def_text_script CompText877C0FC_unk180

	def_text_script CompText877C0FC_unk181

	def_text_script CompText877C0FC_unk182

	def_text_script CompText877C0FC_unk183

	def_text_script CompText877C0FC_unk184

	def_text_script CompText877C0FC_unk185

	def_text_script CompText877C0FC_unk186

	def_text_script CompText877C0FC_unk187

	def_text_script CompText877C0FC_unk188

	def_text_script CompText877C0FC_unk189

	def_text_script CompText877C0FC_unk190

	def_text_script CompText877C0FC_unk191

	def_text_script CompText877C0FC_unk192

	def_text_script CompText877C0FC_unk193

	def_text_script CompText877C0FC_unk194

	def_text_script CompText877C0FC_unk195

	def_text_script CompText877C0FC_unk196

	def_text_script CompText877C0FC_unk197

	def_text_script CompText877C0FC_unk198

	def_text_script CompText877C0FC_unk199

	def_text_script CompText877C0FC_unk200

	def_text_script CompText877C0FC_unk201

	def_text_script CompText877C0FC_unk202

	def_text_script CompText877C0FC_unk203

	def_text_script CompText877C0FC_unk204

	def_text_script CompText877C0FC_unk205

	def_text_script CompText877C0FC_unk206

	def_text_script CompText877C0FC_unk207

	def_text_script CompText877C0FC_unk208

	def_text_script CompText877C0FC_unk209

	def_text_script CompText877C0FC_unk210

	def_text_script CompText877C0FC_unk211

	def_text_script CompText877C0FC_unk212

	def_text_script CompText877C0FC_unk213

	def_text_script CompText877C0FC_unk214

	def_text_script CompText877C0FC_unk215

	def_text_script CompText877C0FC_unk216

	def_text_script CompText877C0FC_unk217

	def_text_script CompText877C0FC_unk218

	def_text_script CompText877C0FC_unk219

	def_text_script CompText877C0FC_unk220

	def_text_script CompText877C0FC_unk221

	def_text_script CompText877C0FC_unk222

	def_text_script CompText877C0FC_unk223

	def_text_script CompText877C0FC_unk224

	def_text_script CompText877C0FC_unk225

	def_text_script CompText877C0FC_unk226

	def_text_script CompText877C0FC_unk227

	def_text_script CompText877C0FC_unk228

	def_text_script CompText877C0FC_unk229

	def_text_script CompText877C0FC_unk230

	def_text_script CompText877C0FC_unk231

	def_text_script CompText877C0FC_unk232

	def_text_script CompText877C0FC_unk233

	def_text_script CompText877C0FC_unk234

	def_text_script CompText877C0FC_unk235

	def_text_script CompText877C0FC_unk236

	def_text_script CompText877C0FC_unk237

	def_text_script CompText877C0FC_unk238

	def_text_script CompText877C0FC_unk239

	def_text_script CompText877C0FC_unk240

	def_text_script CompText877C0FC_unk241

	def_text_script CompText877C0FC_unk242

	def_text_script CompText877C0FC_unk243

	def_text_script CompText877C0FC_unk244

	def_text_script CompText877C0FC_unk245

	def_text_script CompText877C0FC_unk246

	def_text_script CompText877C0FC_unk247

	def_text_script CompText877C0FC_unk248

	def_text_script CompText877C0FC_unk249

	def_text_script CompText877C0FC_unk250

	def_text_script CompText877C0FC_unk251

	def_text_script CompText877C0FC_unk252

	def_text_script CompText877C0FC_unk253

	def_text_script CompText877C0FC_unk254

	