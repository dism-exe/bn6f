	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8770084::
	.word 0xC7100

	text_archive_start

	def_text_script CompText8770084_unk0
	ts_check_flag [
		flag: 0x471,
		jumpIfTrue: CompText8770084_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Very good,Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm your homeroom\n"
	.string "teacher,Joe Mach!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Call me Mr.Mach!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now you are a\n"
	.string "member of Cyber\n"
	.string "Academy!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Here,let me give\n"
	.string "you this!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x1,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x1,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x12
	.string "Now you can enter\n"
	.string "the classroom."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Your classroom is\n"
	.string "Class 6-1 on the\n"
	.string "second floor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll be there in a\n"
	.string "minute,but you go\n"
	.string "on ahead!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Nervous?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hahaha! No need to\n"
	.string "be nervous. You'll\n"
	.string "be fine!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x471
	ts_end

	def_text_script CompText8770084_unk1
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "To get to the 2nd\n"
	.string "floor,go back to the\n"
	.string "lobby,take the right"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "gate,then use the\n"
	.string "stairs at the end of\n"
	.string "the hall."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk2
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Hey! You!\n"
	.string "If you don't hurry\n"
	.string "you'll be late!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk3
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Alright,time to get\n"
	.string "ready for my next\n"
	.string "class..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk4
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Excuse me! We're\n"
	.string "grading tests! You\n"
	.string "can't be in here!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk5

	def_text_script CompText8770084_unk6

	def_text_script CompText8770084_unk7

	def_text_script CompText8770084_unk8

	def_text_script CompText8770084_unk9

	def_text_script CompText8770084_unk10

	def_text_script CompText8770084_unk11

	def_text_script CompText8770084_unk12

	def_text_script CompText8770084_unk13

	def_text_script CompText8770084_unk14

	def_text_script CompText8770084_unk15
	ts_check_flag [
		flag: 0x434,
		jumpIfTrue: CompText8770084_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk16
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Yikes! So things\n"
	.string "are like this..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk17

	def_text_script CompText8770084_unk18

	def_text_script CompText8770084_unk19
	ts_check_flag [
		flag: 0x47D,
		jumpIfTrue: CompText8770084_unk20_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hey,Mick!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Where's your Navi!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "No clue..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He just went off\n"
	.string "on his own..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x47D
	ts_end

	def_text_script CompText8770084_unk20
	ts_check_flag [
		flag: 0x47E,
		jumpIfTrue: CompText8770084_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "So you're an\n"
	.string "operator,huh!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you've been\n"
	.string "with your Navi\n"
	.string "for a long time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should know\n"
	.string "each others patterns\n"
	.string "in and out..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "........."
	ts_key_wait any=0x0
	ts_flag_set flag=0x47E
	ts_end

	def_text_script CompText8770084_unk21
	ts_check_flag [
		flag: 0x47F,
		jumpIfTrue: CompText8770084_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mick!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string ".........\n"
	.string "He's probably near\n"
	.string "the electronics..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can't see it,\n"
	.string "but he's a worrier!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So I bet he is\n"
	.string "watching from a\n"
	.string "monitor somewhere."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "A monitor,huh?\n"
	.string "Makes sense!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x47F
	ts_end

	def_text_script CompText8770084_unk22
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "I can't believe\n"
	.string "my Navi did that\n"
	.string "for me..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,get rid of\n"
	.string "BlastMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk23
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "My Navi doesn't look\n"
	.string "like it,but he's a\n"
	.string "worrier."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if he's\n"
	.string "inside the monitors\n"
	.string "nearby..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk24

	def_text_script CompText8770084_unk25
	ts_check_flag [
		flag: 0x43A,
		jumpIfTrue: CompText8770084_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_msg_open
	.string "*Rumble Rumble!!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk26
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,there's no\n"
	.string "more fire coming\n"
	.string "out..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't think I\n"
	.string "am strong enough\n"
	.string "to push this thing!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk27

	def_text_script CompText8770084_unk28

	def_text_script CompText8770084_unk29

	def_text_script CompText8770084_unk30

	def_text_script CompText8770084_unk31

	def_text_script CompText8770084_unk32

	def_text_script CompText8770084_unk33

	def_text_script CompText8770084_unk34

	def_text_script CompText8770084_unk35
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "All of the teachers\n"
	.string "have gone home."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Mach is OK.\n"
	.string "We just got word\n"
	.string "from the hospital"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that his injury\n"
	.string "was minor..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright. You hurry\n"
	.string "up and get home\n"
	.string "too."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk36

	def_text_script CompText8770084_unk37

	def_text_script CompText8770084_unk38

	def_text_script CompText8770084_unk39

	def_text_script CompText8770084_unk40

	def_text_script CompText8770084_unk41

	def_text_script CompText8770084_unk42

	def_text_script CompText8770084_unk43

	def_text_script CompText8770084_unk44

	def_text_script CompText8770084_unk45

	def_text_script CompText8770084_unk46

	def_text_script CompText8770084_unk47

	def_text_script CompText8770084_unk48

	def_text_script CompText8770084_unk49

	def_text_script CompText8770084_unk50
	ts_check_flag [
		flag: 0x53C,
		jumpIfTrue: CompText8770084_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x53C
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I have something\n"
	.string "I'd like to ask..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x10
	.string "Yes,Yes...\n"
	.string "What is it?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmmm... What does\n"
	.string "a penguin eat?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let me see... They\n"
	.string "would eat fish,I\n"
	.string "suppose."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I see... Fish..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x10
	.string "What makes you ask\n"
	.string "such a strange\n"
	.string "question?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Well,the truth is..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x10
	.string "You've got to feed\n"
	.string "a hungry penguin?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmmmm...."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,I don't have\n"
	.string "any fish you could\n"
	.string "use as food..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If anyone around\n"
	.string "here would have\n"
	.string "some,it would be"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the Biology\n"
	.string "teacher's aide."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He feeds the animals\n"
	.string "here everyday,so you\n"
	.string "should go ask him."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "The Biology\n"
	.string "teacher's aide..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gotcha...\n"
	.string "Thanks!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk51
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "You should talk to\n"
	.string "the Biology\n"
	.string "teacher's aide."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He feeds the animals\n"
	.string "here everyday,so you\n"
	.string "should go ask him."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk52
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Huh?\n"
	.string "There is a student\n"
	.string "we've been watching"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "who makes weird\n"
	.string "faces at the\n"
	.string "security camera in"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the hallway."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk53
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Ahh,I have to get\n"
	.string "ready for my class!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess it's\n"
	.string "overtime for me..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk54

	def_text_script CompText8770084_unk55

	def_text_script CompText8770084_unk56
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "I gave up my holiday\n"
	.string "to make handouts for\n"
	.string "class..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's not easy being\n"
	.string "a teacher..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8770084_unk57

	def_text_script CompText8770084_unk58

	def_text_script CompText8770084_unk59

	def_text_script CompText8770084_unk60

	def_text_script CompText8770084_unk61

	def_text_script CompText8770084_unk62

	def_text_script CompText8770084_unk63

	def_text_script CompText8770084_unk64

	def_text_script CompText8770084_unk65

	def_text_script CompText8770084_unk66

	def_text_script CompText8770084_unk67

	def_text_script CompText8770084_unk68

	def_text_script CompText8770084_unk69

	def_text_script CompText8770084_unk70

	def_text_script CompText8770084_unk71

	def_text_script CompText8770084_unk72

	def_text_script CompText8770084_unk73

	def_text_script CompText8770084_unk74

	def_text_script CompText8770084_unk75

	def_text_script CompText8770084_unk76

	def_text_script CompText8770084_unk77

	def_text_script CompText8770084_unk78

	def_text_script CompText8770084_unk79

	def_text_script CompText8770084_unk80

	def_text_script CompText8770084_unk81

	def_text_script CompText8770084_unk82

	def_text_script CompText8770084_unk83

	def_text_script CompText8770084_unk84

	def_text_script CompText8770084_unk85

	def_text_script CompText8770084_unk86

	def_text_script CompText8770084_unk87

	def_text_script CompText8770084_unk88

	def_text_script CompText8770084_unk89

	def_text_script CompText8770084_unk90

	def_text_script CompText8770084_unk91

	def_text_script CompText8770084_unk92

	def_text_script CompText8770084_unk93

	def_text_script CompText8770084_unk94

	def_text_script CompText8770084_unk95

	def_text_script CompText8770084_unk96

	def_text_script CompText8770084_unk97

	def_text_script CompText8770084_unk98

	def_text_script CompText8770084_unk99

	def_text_script CompText8770084_unk100

	def_text_script CompText8770084_unk101

	def_text_script CompText8770084_unk102

	def_text_script CompText8770084_unk103

	def_text_script CompText8770084_unk104

	def_text_script CompText8770084_unk105

	def_text_script CompText8770084_unk106

	def_text_script CompText8770084_unk107

	def_text_script CompText8770084_unk108

	def_text_script CompText8770084_unk109

	def_text_script CompText8770084_unk110

	def_text_script CompText8770084_unk111

	def_text_script CompText8770084_unk112

	def_text_script CompText8770084_unk113

	def_text_script CompText8770084_unk114

	def_text_script CompText8770084_unk115

	def_text_script CompText8770084_unk116

	def_text_script CompText8770084_unk117

	def_text_script CompText8770084_unk118

	def_text_script CompText8770084_unk119

	def_text_script CompText8770084_unk120

	def_text_script CompText8770084_unk121

	def_text_script CompText8770084_unk122

	def_text_script CompText8770084_unk123

	def_text_script CompText8770084_unk124

	def_text_script CompText8770084_unk125

	def_text_script CompText8770084_unk126

	def_text_script CompText8770084_unk127

	def_text_script CompText8770084_unk128

	def_text_script CompText8770084_unk129

	def_text_script CompText8770084_unk130

	def_text_script CompText8770084_unk131

	def_text_script CompText8770084_unk132

	def_text_script CompText8770084_unk133

	def_text_script CompText8770084_unk134

	def_text_script CompText8770084_unk135

	def_text_script CompText8770084_unk136

	def_text_script CompText8770084_unk137

	def_text_script CompText8770084_unk138

	def_text_script CompText8770084_unk139

	def_text_script CompText8770084_unk140

	def_text_script CompText8770084_unk141

	def_text_script CompText8770084_unk142

	def_text_script CompText8770084_unk143

	def_text_script CompText8770084_unk144

	def_text_script CompText8770084_unk145

	def_text_script CompText8770084_unk146

	def_text_script CompText8770084_unk147

	def_text_script CompText8770084_unk148

	def_text_script CompText8770084_unk149

	def_text_script CompText8770084_unk150

	def_text_script CompText8770084_unk151

	def_text_script CompText8770084_unk152

	def_text_script CompText8770084_unk153

	def_text_script CompText8770084_unk154

	def_text_script CompText8770084_unk155

	def_text_script CompText8770084_unk156

	def_text_script CompText8770084_unk157

	def_text_script CompText8770084_unk158

	def_text_script CompText8770084_unk159

	def_text_script CompText8770084_unk160

	def_text_script CompText8770084_unk161

	def_text_script CompText8770084_unk162

	def_text_script CompText8770084_unk163

	def_text_script CompText8770084_unk164

	def_text_script CompText8770084_unk165

	def_text_script CompText8770084_unk166

	def_text_script CompText8770084_unk167

	def_text_script CompText8770084_unk168

	def_text_script CompText8770084_unk169

	def_text_script CompText8770084_unk170

	def_text_script CompText8770084_unk171

	def_text_script CompText8770084_unk172

	def_text_script CompText8770084_unk173

	def_text_script CompText8770084_unk174

	def_text_script CompText8770084_unk175

	def_text_script CompText8770084_unk176

	def_text_script CompText8770084_unk177

	def_text_script CompText8770084_unk178

	def_text_script CompText8770084_unk179

	def_text_script CompText8770084_unk180

	def_text_script CompText8770084_unk181

	def_text_script CompText8770084_unk182

	def_text_script CompText8770084_unk183

	def_text_script CompText8770084_unk184

	def_text_script CompText8770084_unk185

	def_text_script CompText8770084_unk186

	def_text_script CompText8770084_unk187

	def_text_script CompText8770084_unk188

	def_text_script CompText8770084_unk189

	def_text_script CompText8770084_unk190

	def_text_script CompText8770084_unk191

	def_text_script CompText8770084_unk192

	def_text_script CompText8770084_unk193

	def_text_script CompText8770084_unk194

	def_text_script CompText8770084_unk195

	def_text_script CompText8770084_unk196

	def_text_script CompText8770084_unk197

	def_text_script CompText8770084_unk198

	def_text_script CompText8770084_unk199

	def_text_script CompText8770084_unk200

	def_text_script CompText8770084_unk201

	def_text_script CompText8770084_unk202

	def_text_script CompText8770084_unk203

	def_text_script CompText8770084_unk204

	def_text_script CompText8770084_unk205

	def_text_script CompText8770084_unk206

	def_text_script CompText8770084_unk207

	def_text_script CompText8770084_unk208

	def_text_script CompText8770084_unk209

	def_text_script CompText8770084_unk210

	def_text_script CompText8770084_unk211

	def_text_script CompText8770084_unk212

	def_text_script CompText8770084_unk213

	def_text_script CompText8770084_unk214

	def_text_script CompText8770084_unk215

	def_text_script CompText8770084_unk216

	def_text_script CompText8770084_unk217

	def_text_script CompText8770084_unk218

	def_text_script CompText8770084_unk219

	def_text_script CompText8770084_unk220

	def_text_script CompText8770084_unk221

	def_text_script CompText8770084_unk222

	def_text_script CompText8770084_unk223

	def_text_script CompText8770084_unk224

	def_text_script CompText8770084_unk225

	def_text_script CompText8770084_unk226

	def_text_script CompText8770084_unk227

	def_text_script CompText8770084_unk228

	def_text_script CompText8770084_unk229

	def_text_script CompText8770084_unk230

	def_text_script CompText8770084_unk231

	def_text_script CompText8770084_unk232

	def_text_script CompText8770084_unk233

	def_text_script CompText8770084_unk234

	def_text_script CompText8770084_unk235

	def_text_script CompText8770084_unk236

	def_text_script CompText8770084_unk237

	def_text_script CompText8770084_unk238

	def_text_script CompText8770084_unk239

	def_text_script CompText8770084_unk240

	def_text_script CompText8770084_unk241

	def_text_script CompText8770084_unk242

	def_text_script CompText8770084_unk243

	def_text_script CompText8770084_unk244

	def_text_script CompText8770084_unk245

	def_text_script CompText8770084_unk246

	def_text_script CompText8770084_unk247

	def_text_script CompText8770084_unk248

	def_text_script CompText8770084_unk249

	def_text_script CompText8770084_unk250

	def_text_script CompText8770084_unk251

	def_text_script CompText8770084_unk252

	def_text_script CompText8770084_unk253

	def_text_script CompText8770084_unk254

	