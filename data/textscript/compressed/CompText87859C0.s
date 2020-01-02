	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87859C0::
	.word 0x9B600

	text_archive_start

	def_text_script CompText87859C0_unk0
	ts_check_flag [
		flag: 0x46E,
		jumpIfTrue: CompText87859C0_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Who!? Who is the\n"
	.string "one who hid the\n"
	.string "KeyData!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And I came to see\n"
	.string "the huge crater in\n"
	.string "CentralArea3..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What a pain in the\n"
	.string "butt!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x46E
	ts_end

	def_text_script CompText87859C0_unk1
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Grrrrrr!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This door won't\n"
	.string "open! I can't get\n"
	.string "into CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk2
	ts_check_flag [
		flag: 0x46F,
		jumpIfTrue: CompText87859C0_unk3_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "The Net in Cyber\n"
	.string "City has high\n"
	.string "security in each"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "area,\n"
	.string "so if you don't know\n"
	.string "the requirements"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you can't move to\n"
	.string "the next area!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x46F
	ts_end

	def_text_script CompText87859C0_unk3
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "Thanks to the\n"
	.string "security,today\n"
	.string "will be peaceful!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk4
	ts_check_flag [
		flag: 0x470,
		jumpIfTrue: CompText87859C0_unk5_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THIS IS CENTRAL\n"
	.string "AREA2."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THAT CHIP SHOP OVER\n"
	.string "THERE IS VERY\n"
	.string "POPULAR."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU SHOULD CHECK IT\n"
	.string "OUT."
	ts_key_wait any=0x0
	ts_flag_set flag=0x470
	ts_end

	def_text_script CompText87859C0_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THIS IS CENTRAL\n"
	.string "AREA2,AN AREA KNOWN\n"
	.string "FOR GREAT SHOPPING."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk6

	def_text_script CompText87859C0_unk7

	def_text_script CompText87859C0_unk8

	def_text_script CompText87859C0_unk9

	def_text_script CompText87859C0_unk10
	ts_check_flag [
		flag: 0x499,
		jumpIfTrue: CompText87859C0_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Isn't this that\n"
	.string "spot on Mick's\n"
	.string "graffiti?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "The graffiti did\n"
	.string "have a picture of\n"
	.string "a Navi digging."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder what's\n"
	.string "under this panel?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Let's check it out!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "What's in here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x6,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x6,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Lan,this is that\n"
	.string "KeyData Mick was\n"
	.string "talking about!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Alright! Let's go\n"
	.string "check out Central\n"
	.string "Area3!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "OK!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x499
	ts_end

	def_text_script CompText87859C0_unk11

	def_text_script CompText87859C0_unk12

	def_text_script CompText87859C0_unk13

	def_text_script CompText87859C0_unk14

	def_text_script CompText87859C0_unk15
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I'm a member of\n"
	.string "the NetPolice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I maintain order\n"
	.string "on the Net."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Be careful.There've\n"
	.string "been many dangerous\n"
	.string "incidents lately."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk16
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "No abnormalities!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk17
	ts_check_flag [
		flag: 0x483,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87859C0_unk18_id,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "The door isn't open\n"
	.string "yet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Darn! I can't go to\n"
	.string "CentralArea3 today\n"
	.string "either!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When am I going to\n"
	.string "get to see this\n"
	.string "legendary crater!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk18
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Yay!!\n"
	.string "The door's open!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now I can finally\n"
	.string "check out this huge\n"
	.string "hole!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk19

	def_text_script CompText87859C0_unk20
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "If you turn left,\n"
	.string "I think there's\n"
	.string "some mystery data."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This narrow alley\n"
	.string "looks kinda creepy."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk21
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Uhhh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think I heard\n"
	.string "a terrible voice\n"
	.string "from back there!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm still in shock."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk22
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Hey! Are you OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk23
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I wonder how you\n"
	.string "get to that path\n"
	.string "up there..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk24

	def_text_script CompText87859C0_unk25
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "What should I do?\n"
	.string "Should I buy a\n"
	.string "new chip?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I don't have\n"
	.string "much allowance\n"
	.string "left!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What to do...\n"
	.string "What to do..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AHH!!\n"
	.string "I can't decide!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk26
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Huh? What am I\n"
	.string "doing?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I used up a little\n"
	.string "too much strength\n"
	.string "during a battle!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm taking a break\n"
	.string "for a while...\n"
	.string "Whew... I'm tired!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk27
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "UP AHEAD IS THE\n"
	.string "FAMOUS CRATER IN\n"
	.string "CENTRALAREA3."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SIGHTSEERS SHOULD\n"
	.string "REALLY ENJOY TAKING\n"
	.string "A PEEK!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87859C0_unk28

	def_text_script CompText87859C0_unk29

	def_text_script CompText87859C0_unk30

	def_text_script CompText87859C0_unk31

	def_text_script CompText87859C0_unk32

	def_text_script CompText87859C0_unk33

	def_text_script CompText87859C0_unk34

	def_text_script CompText87859C0_unk35

	def_text_script CompText87859C0_unk36

	def_text_script CompText87859C0_unk37

	def_text_script CompText87859C0_unk38

	def_text_script CompText87859C0_unk39

	def_text_script CompText87859C0_unk40

	def_text_script CompText87859C0_unk41

	def_text_script CompText87859C0_unk42

	def_text_script CompText87859C0_unk43

	def_text_script CompText87859C0_unk44

	def_text_script CompText87859C0_unk45

	def_text_script CompText87859C0_unk46

	def_text_script CompText87859C0_unk47

	def_text_script CompText87859C0_unk48

	def_text_script CompText87859C0_unk49

	def_text_script CompText87859C0_unk50

	def_text_script CompText87859C0_unk51

	def_text_script CompText87859C0_unk52

	def_text_script CompText87859C0_unk53

	def_text_script CompText87859C0_unk54

	def_text_script CompText87859C0_unk55

	def_text_script CompText87859C0_unk56

	def_text_script CompText87859C0_unk57

	def_text_script CompText87859C0_unk58

	def_text_script CompText87859C0_unk59

	def_text_script CompText87859C0_unk60

	def_text_script CompText87859C0_unk61

	def_text_script CompText87859C0_unk62

	def_text_script CompText87859C0_unk63

	def_text_script CompText87859C0_unk64

	def_text_script CompText87859C0_unk65

	def_text_script CompText87859C0_unk66

	def_text_script CompText87859C0_unk67

	def_text_script CompText87859C0_unk68

	def_text_script CompText87859C0_unk69

	def_text_script CompText87859C0_unk70

	def_text_script CompText87859C0_unk71

	def_text_script CompText87859C0_unk72

	def_text_script CompText87859C0_unk73

	def_text_script CompText87859C0_unk74

	def_text_script CompText87859C0_unk75

	def_text_script CompText87859C0_unk76

	def_text_script CompText87859C0_unk77

	def_text_script CompText87859C0_unk78

	def_text_script CompText87859C0_unk79

	def_text_script CompText87859C0_unk80

	def_text_script CompText87859C0_unk81

	def_text_script CompText87859C0_unk82

	def_text_script CompText87859C0_unk83

	def_text_script CompText87859C0_unk84

	def_text_script CompText87859C0_unk85

	def_text_script CompText87859C0_unk86

	def_text_script CompText87859C0_unk87

	def_text_script CompText87859C0_unk88

	def_text_script CompText87859C0_unk89

	def_text_script CompText87859C0_unk90

	def_text_script CompText87859C0_unk91

	def_text_script CompText87859C0_unk92

	def_text_script CompText87859C0_unk93

	def_text_script CompText87859C0_unk94

	def_text_script CompText87859C0_unk95

	def_text_script CompText87859C0_unk96

	def_text_script CompText87859C0_unk97

	def_text_script CompText87859C0_unk98

	def_text_script CompText87859C0_unk99

	def_text_script CompText87859C0_unk100

	def_text_script CompText87859C0_unk101

	def_text_script CompText87859C0_unk102

	def_text_script CompText87859C0_unk103

	def_text_script CompText87859C0_unk104

	def_text_script CompText87859C0_unk105

	def_text_script CompText87859C0_unk106

	def_text_script CompText87859C0_unk107

	def_text_script CompText87859C0_unk108

	def_text_script CompText87859C0_unk109

	def_text_script CompText87859C0_unk110

	def_text_script CompText87859C0_unk111

	def_text_script CompText87859C0_unk112

	def_text_script CompText87859C0_unk113

	def_text_script CompText87859C0_unk114

	def_text_script CompText87859C0_unk115

	def_text_script CompText87859C0_unk116

	def_text_script CompText87859C0_unk117

	def_text_script CompText87859C0_unk118

	def_text_script CompText87859C0_unk119

	def_text_script CompText87859C0_unk120

	def_text_script CompText87859C0_unk121

	def_text_script CompText87859C0_unk122

	def_text_script CompText87859C0_unk123

	def_text_script CompText87859C0_unk124

	def_text_script CompText87859C0_unk125

	def_text_script CompText87859C0_unk126

	def_text_script CompText87859C0_unk127

	def_text_script CompText87859C0_unk128

	def_text_script CompText87859C0_unk129

	def_text_script CompText87859C0_unk130

	def_text_script CompText87859C0_unk131

	def_text_script CompText87859C0_unk132

	def_text_script CompText87859C0_unk133

	def_text_script CompText87859C0_unk134

	def_text_script CompText87859C0_unk135

	def_text_script CompText87859C0_unk136

	def_text_script CompText87859C0_unk137

	def_text_script CompText87859C0_unk138

	def_text_script CompText87859C0_unk139

	def_text_script CompText87859C0_unk140

	def_text_script CompText87859C0_unk141

	def_text_script CompText87859C0_unk142

	def_text_script CompText87859C0_unk143

	def_text_script CompText87859C0_unk144

	def_text_script CompText87859C0_unk145

	def_text_script CompText87859C0_unk146

	def_text_script CompText87859C0_unk147

	def_text_script CompText87859C0_unk148

	def_text_script CompText87859C0_unk149

	def_text_script CompText87859C0_unk150

	def_text_script CompText87859C0_unk151

	def_text_script CompText87859C0_unk152

	def_text_script CompText87859C0_unk153

	def_text_script CompText87859C0_unk154

	def_text_script CompText87859C0_unk155

	def_text_script CompText87859C0_unk156

	def_text_script CompText87859C0_unk157

	def_text_script CompText87859C0_unk158

	def_text_script CompText87859C0_unk159

	def_text_script CompText87859C0_unk160

	def_text_script CompText87859C0_unk161

	def_text_script CompText87859C0_unk162

	def_text_script CompText87859C0_unk163

	def_text_script CompText87859C0_unk164

	def_text_script CompText87859C0_unk165

	def_text_script CompText87859C0_unk166

	def_text_script CompText87859C0_unk167

	def_text_script CompText87859C0_unk168

	def_text_script CompText87859C0_unk169

	def_text_script CompText87859C0_unk170

	def_text_script CompText87859C0_unk171

	def_text_script CompText87859C0_unk172

	def_text_script CompText87859C0_unk173

	def_text_script CompText87859C0_unk174

	def_text_script CompText87859C0_unk175

	def_text_script CompText87859C0_unk176

	def_text_script CompText87859C0_unk177

	def_text_script CompText87859C0_unk178

	def_text_script CompText87859C0_unk179

	def_text_script CompText87859C0_unk180

	def_text_script CompText87859C0_unk181

	def_text_script CompText87859C0_unk182

	def_text_script CompText87859C0_unk183

	def_text_script CompText87859C0_unk184

	def_text_script CompText87859C0_unk185

	def_text_script CompText87859C0_unk186

	def_text_script CompText87859C0_unk187

	def_text_script CompText87859C0_unk188

	def_text_script CompText87859C0_unk189

	def_text_script CompText87859C0_unk190

	def_text_script CompText87859C0_unk191

	def_text_script CompText87859C0_unk192

	def_text_script CompText87859C0_unk193

	def_text_script CompText87859C0_unk194

	def_text_script CompText87859C0_unk195

	def_text_script CompText87859C0_unk196

	def_text_script CompText87859C0_unk197

	def_text_script CompText87859C0_unk198

	def_text_script CompText87859C0_unk199

	def_text_script CompText87859C0_unk200

	def_text_script CompText87859C0_unk201

	def_text_script CompText87859C0_unk202

	def_text_script CompText87859C0_unk203

	def_text_script CompText87859C0_unk204

	def_text_script CompText87859C0_unk205

	def_text_script CompText87859C0_unk206

	def_text_script CompText87859C0_unk207

	def_text_script CompText87859C0_unk208

	def_text_script CompText87859C0_unk209

	def_text_script CompText87859C0_unk210

	def_text_script CompText87859C0_unk211

	def_text_script CompText87859C0_unk212

	def_text_script CompText87859C0_unk213

	def_text_script CompText87859C0_unk214

	def_text_script CompText87859C0_unk215

	def_text_script CompText87859C0_unk216

	def_text_script CompText87859C0_unk217

	def_text_script CompText87859C0_unk218

	def_text_script CompText87859C0_unk219

	def_text_script CompText87859C0_unk220

	def_text_script CompText87859C0_unk221

	def_text_script CompText87859C0_unk222

	def_text_script CompText87859C0_unk223

	def_text_script CompText87859C0_unk224

	def_text_script CompText87859C0_unk225

	def_text_script CompText87859C0_unk226

	def_text_script CompText87859C0_unk227

	def_text_script CompText87859C0_unk228

	def_text_script CompText87859C0_unk229

	def_text_script CompText87859C0_unk230

	def_text_script CompText87859C0_unk231

	def_text_script CompText87859C0_unk232

	def_text_script CompText87859C0_unk233

	def_text_script CompText87859C0_unk234

	def_text_script CompText87859C0_unk235

	def_text_script CompText87859C0_unk236

	def_text_script CompText87859C0_unk237

	def_text_script CompText87859C0_unk238

	def_text_script CompText87859C0_unk239

	def_text_script CompText87859C0_unk240

	def_text_script CompText87859C0_unk241

	def_text_script CompText87859C0_unk242

	def_text_script CompText87859C0_unk243

	def_text_script CompText87859C0_unk244

	def_text_script CompText87859C0_unk245

	def_text_script CompText87859C0_unk246

	def_text_script CompText87859C0_unk247

	def_text_script CompText87859C0_unk248

	def_text_script CompText87859C0_unk249

	def_text_script CompText87859C0_unk250

	def_text_script CompText87859C0_unk251

	def_text_script CompText87859C0_unk252

	def_text_script CompText87859C0_unk253

	def_text_script CompText87859C0_unk254

	