	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8745100::
	.word 0xD7C00

	text_archive_start

	def_text_script CompText8745100_unk0
	ts_check_chapter 0x52, 0x52, 0x87, 0xFF
	ts_check_chapter 0x51, 0x51, 0x73, 0xFF
	ts_check_chapter 0x50, 0x50, 0x64, 0xFF
	ts_check_chapter 0x4B, 0x4B, 0x9B, 0xFF
	ts_check_chapter 0x48, 0x49, 0x96, 0xFF
	ts_check_chapter 0x43, 0x46, 0xF, 0xFF
	ts_check_chapter 0x40, 0x42, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk1

	def_text_script CompText8745100_unk2

	def_text_script CompText8745100_unk3

	def_text_script CompText8745100_unk4

	def_text_script CompText8745100_unk5
	ts_check_flag 0xA, 0xA, 0xA, 0xFF
	ts_check_flag 0x8, 0xA, 0x9, 0xFF
	ts_check_flag 0x62, 0xA, 0x8, 0xFF
	ts_check_flag 0x6, 0xA, 0x7, 0xFF
	ts_check_flag 0x60, 0xA, 0x6, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder how we can\n"
	.string "get to Sky Town...?\n"
	.string "Let's ask around!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk6
	ts_check_sub_area 0x1, 0x2, 0xB, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to Sky\n"
	.string "Town,Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go find\n"
	.string "Mr.Weather! We can\n"
	.string "get a head start!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk8
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We should head for\n"
	.string "Sky Area on the Net,\n"
	.string "Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Jack me in! We've\n"
	.string "gotta find Mick's\n"
	.string "Navi!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk10
	ts_msg_open
	.string "MegaMan isn't in\n"
	.string "the PET right now..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We should find the\n"
	.string "reception Navi!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk12

	def_text_script CompText8745100_unk13

	def_text_script CompText8745100_unk14

	def_text_script CompText8745100_unk15
	ts_check_flag 0x2E, 0xA, 0x1B, 0xFF
	ts_check_flag 0x2C, 0xA, 0x1A, 0xFF
	ts_check_flag 0x2A, 0xA, 0x19, 0xFF
	ts_check_flag 0x28, 0xA, 0x17, 0xFF
	ts_check_flag 0x26, 0xA, 0x16, 0xFF
	ts_check_flag 0x24, 0xA, 0x15, 0xFF
	ts_check_flag 0x1A, 0xA, 0x13, 0xFF
	ts_check_flag 0x18, 0xA, 0x12, 0xFF
	ts_check_flag 0x16, 0xA, 0x11, 0xFF
	ts_check_flag 0x10, 0xA, 0x10, 0xFF
	ts_end

	def_text_script CompText8745100_unk16
	ts_end

	def_text_script CompText8745100_unk17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder why Iris\n"
	.string "was in Sky Town...\n"
	.string "Let's go find out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk18
	ts_check_sub_area 0x1, 0x3, 0x1C, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to Sky\n"
	.string "Town,Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk19
	ts_check_sub_area 0x0, 0x0, 0x1D, 0xFF
	ts_check_flag 0x1C, 0xA, 0xFF, 0x14
	ts_check_flag 0x1E, 0xA, 0xFF, 0x14
	ts_check_flag 0x20, 0xA, 0xFF, 0x14
	ts_check_flag 0x22, 0xA, 0xFF, 0x14
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's hurry,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk20
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Jack me in,Lan!\n"
	.string "We have to clear\n"
	.string "a way to the door!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk21
	ts_check_sub_area 0x2, 0x2, 0xFF, 0x1E
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I think there's\n"
	.string "something inside\n"
	.string "that locker..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk22
	ts_check_sub_area 0x0, 0x3, 0xFF, 0x1D
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's hurry to\n"
	.string "Mr.Weather,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk23
	ts_check_sub_area 0x0, 0x0, 0x1D, 0xFF
	ts_check_flag 0x29, 0x17, 0x18, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Send me into a\n"
	.string "CopyBot,Lan,and I'll\n"
	.string "jump across first!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk24
	ts_check_sub_area 0x0, 0x3, 0xFF, 0x1D
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I should jump from\n"
	.string "somewhere high up to\n"
	.string "make it across..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk25
	ts_check_sub_area 0x3, 0x3, 0x1F, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's hurry to\n"
	.string "Mr.Weather,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk26
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Jack me in,Lan!!\n"
	.string "We have to normalize\n"
	.string "Mr.Weather!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk27
	ts_jump 26

	def_text_script CompText8745100_unk28
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We've got to go\n"
	.string "find Iris!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk29
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We've got to go\n"
	.string "back to Sky Town,\n"
	.string "Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk30
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go back\n"
	.string "to the Operator's\n"
	.string "Room!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk31
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's be careful...\n"
	.string "Who knows what's\n"
	.string "waiting for us..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk32

	def_text_script CompText8745100_unk33

	def_text_script CompText8745100_unk34

	def_text_script CompText8745100_unk35

	def_text_script CompText8745100_unk36

	def_text_script CompText8745100_unk37

	def_text_script CompText8745100_unk38

	def_text_script CompText8745100_unk39

	def_text_script CompText8745100_unk40

	def_text_script CompText8745100_unk41

	def_text_script CompText8745100_unk42

	def_text_script CompText8745100_unk43

	def_text_script CompText8745100_unk44

	def_text_script CompText8745100_unk45

	def_text_script CompText8745100_unk46

	def_text_script CompText8745100_unk47

	def_text_script CompText8745100_unk48

	def_text_script CompText8745100_unk49

	def_text_script CompText8745100_unk50

	def_text_script CompText8745100_unk51

	def_text_script CompText8745100_unk52

	def_text_script CompText8745100_unk53

	def_text_script CompText8745100_unk54

	def_text_script CompText8745100_unk55

	def_text_script CompText8745100_unk56

	def_text_script CompText8745100_unk57

	def_text_script CompText8745100_unk58

	def_text_script CompText8745100_unk59

	def_text_script CompText8745100_unk60

	def_text_script CompText8745100_unk61

	def_text_script CompText8745100_unk62

	def_text_script CompText8745100_unk63

	def_text_script CompText8745100_unk64

	def_text_script CompText8745100_unk65

	def_text_script CompText8745100_unk66

	def_text_script CompText8745100_unk67

	def_text_script CompText8745100_unk68

	def_text_script CompText8745100_unk69

	def_text_script CompText8745100_unk70

	def_text_script CompText8745100_unk71

	def_text_script CompText8745100_unk72

	def_text_script CompText8745100_unk73

	def_text_script CompText8745100_unk74

	def_text_script CompText8745100_unk75

	def_text_script CompText8745100_unk76

	def_text_script CompText8745100_unk77

	def_text_script CompText8745100_unk78

	def_text_script CompText8745100_unk79

	def_text_script CompText8745100_unk80

	def_text_script CompText8745100_unk81

	def_text_script CompText8745100_unk82

	def_text_script CompText8745100_unk83

	def_text_script CompText8745100_unk84

	def_text_script CompText8745100_unk85

	def_text_script CompText8745100_unk86

	def_text_script CompText8745100_unk87

	def_text_script CompText8745100_unk88

	def_text_script CompText8745100_unk89

	def_text_script CompText8745100_unk90

	def_text_script CompText8745100_unk91

	def_text_script CompText8745100_unk92

	def_text_script CompText8745100_unk93

	def_text_script CompText8745100_unk94

	def_text_script CompText8745100_unk95

	def_text_script CompText8745100_unk96

	def_text_script CompText8745100_unk97

	def_text_script CompText8745100_unk98

	def_text_script CompText8745100_unk99

	def_text_script CompText8745100_unk100
	ts_check_flag 0xA, 0xC, 0x6B, 0xFF
	ts_check_flag 0xC8, 0xC, 0x6A, 0xFF
	ts_check_flag 0xD8, 0xC, 0xFF, 0x69
	ts_check_flag 0xC6, 0xC, 0x68, 0xFF
	ts_check_flag 0xC3, 0xC, 0x67, 0xFF
	ts_check_flag 0xC2, 0xC, 0x66, 0xFF
	ts_check_flag 0xE4, 0xC, 0x65, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The MoonStone is\n"
	.string "in the Undernet!\n"
	.string "Let's find it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk101
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Sky gazing,huh...?\n"
	.string "Want to try\n"
	.string "Undernet2,Lan?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk102
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Sounds like there's\n"
	.string "someone who can open\n"
	.string "the Undernet door..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But it seems like\n"
	.string "they're busy with\n"
	.string "a punishment..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk103
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's find the\n"
	.string "person who can open\n"
	.string "the Undernet door!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sounds like they're\n"
	.string "working part-time\n"
	.string "near the ocean..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk104
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go to\n"
	.string "Undernet1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk105
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's look for the\n"
	.string "MoonStone in\n"
	.string "Undernet2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk106
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take the\n"
	.string "MoonStone to the\n"
	.string "Judge in the park!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk107
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Want to call\n"
	.string "it a day?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk108

	def_text_script CompText8745100_unk109

	def_text_script CompText8745100_unk110

	def_text_script CompText8745100_unk111

	def_text_script CompText8745100_unk112

	def_text_script CompText8745100_unk113

	def_text_script CompText8745100_unk114

	def_text_script CompText8745100_unk115
	ts_check_flag 0x1C, 0xC, 0x7D, 0xFF
	ts_check_flag 0x1A, 0xC, 0x7C, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I can't wait,Lan!\n"
	.string "Let's hurry to\n"
	.string "ACDC Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk116

	def_text_script CompText8745100_unk117

	def_text_script CompText8745100_unk118

	def_text_script CompText8745100_unk119

	def_text_script CompText8745100_unk120

	def_text_script CompText8745100_unk121

	def_text_script CompText8745100_unk122

	def_text_script CompText8745100_unk123

	def_text_script CompText8745100_unk124
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Guess all I can\n"
	.string "do is go back to\n"
	.string "Central Town..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk125
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Maybe I should\n"
	.string "go home..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk126

	def_text_script CompText8745100_unk127

	def_text_script CompText8745100_unk128

	def_text_script CompText8745100_unk129

	def_text_script CompText8745100_unk130

	def_text_script CompText8745100_unk131

	def_text_script CompText8745100_unk132

	def_text_script CompText8745100_unk133

	def_text_script CompText8745100_unk134

	def_text_script CompText8745100_unk135
	ts_check_flag 0x26, 0xC, 0x8D, 0xFF
	ts_check_flag 0x24, 0xC, 0x8C, 0xFF
	ts_check_flag 0x22, 0xC, 0x8B, 0xFF
	ts_check_flag 0xCF, 0xC, 0x8A, 0xFF
	ts_check_flag 0xCE, 0xC, 0x89, 0xFF
	ts_check_flag 0x30, 0xC, 0x88, 0xFF
	ts_check_flag 0x20, 0xC, 0x8E, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've gotta hurry\n"
	.string "to Seaside Town!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk136
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Somehow,I've gotta\n"
	.string "get to CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk137
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I have to ask the\n"
	.string "Mayor to get rid of\n"
	.string "the cyberbarrier..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think the Mayor\n"
	.string "might be in the\n"
	.string "Principal's Office."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk138
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've gotta see the\n"
	.string "Mayor no matter\n"
	.string "what!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk139
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've gotta get to\n"
	.string "the Principal's\n"
	.string "Office right now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk140
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've gotta get to\n"
	.string "the large hole in\n"
	.string "CentralArea!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk141
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hold on,MegaMan! I'm\n"
	.string "coming to the Under-\n"
	.string "ground right now!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk142
	ts_check_flag 0x28, 0x1D, 0xFF, 0x8F
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I guess I should\n"
	.string "read my mail..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk143
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I wonder what\n"
	.string "Mr.Mach wants?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmm... He said to\n"
	.string "meet around here,\n"
	.string "right...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk144

	def_text_script CompText8745100_unk145

	def_text_script CompText8745100_unk146

	def_text_script CompText8745100_unk147

	def_text_script CompText8745100_unk148

	def_text_script CompText8745100_unk149

	def_text_script CompText8745100_unk150
	ts_check_flag 0x3C, 0xA, 0x99, 0xFF
	ts_check_flag 0x3A, 0xA, 0x98, 0xFF
	ts_check_flag 0x38, 0xA, 0x97, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "You're in class now,\n"
	.string "Lan! Better go check\n"
	.string "the control panel!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk151
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you're still in\n"
	.string "class,right?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk152
	ts_jump 151

	def_text_script CompText8745100_unk153
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Good luck on\n"
	.string "Ms.Zap's final\n"
	.string "exam!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk154

	def_text_script CompText8745100_unk155
	ts_check_flag 0x8C, 0xA, 0x9D, 0xFF
	ts_check_flag 0x42, 0xA, 0x9C, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "You're in class now,\n"
	.string "Lan! Better go check\n"
	.string "the control panel!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk156
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you're still in\n"
	.string "class,right?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk157
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Good luck on Dingo's\n"
	.string "final exam,Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8745100_unk158

	def_text_script CompText8745100_unk159

	def_text_script CompText8745100_unk160

	def_text_script CompText8745100_unk161

	def_text_script CompText8745100_unk162

	def_text_script CompText8745100_unk163

	def_text_script CompText8745100_unk164

	def_text_script CompText8745100_unk165

	def_text_script CompText8745100_unk166

	def_text_script CompText8745100_unk167

	def_text_script CompText8745100_unk168

	def_text_script CompText8745100_unk169

	def_text_script CompText8745100_unk170

	def_text_script CompText8745100_unk171

	def_text_script CompText8745100_unk172

	def_text_script CompText8745100_unk173

	def_text_script CompText8745100_unk174

	def_text_script CompText8745100_unk175

	def_text_script CompText8745100_unk176

	def_text_script CompText8745100_unk177

	def_text_script CompText8745100_unk178

	def_text_script CompText8745100_unk179

	def_text_script CompText8745100_unk180

	def_text_script CompText8745100_unk181

	def_text_script CompText8745100_unk182

	def_text_script CompText8745100_unk183

	def_text_script CompText8745100_unk184

	def_text_script CompText8745100_unk185

	def_text_script CompText8745100_unk186

	def_text_script CompText8745100_unk187

	def_text_script CompText8745100_unk188

	def_text_script CompText8745100_unk189

	def_text_script CompText8745100_unk190

	def_text_script CompText8745100_unk191

	def_text_script CompText8745100_unk192

	def_text_script CompText8745100_unk193

	def_text_script CompText8745100_unk194

	def_text_script CompText8745100_unk195

	def_text_script CompText8745100_unk196

	def_text_script CompText8745100_unk197

	def_text_script CompText8745100_unk198

	def_text_script CompText8745100_unk199

	def_text_script CompText8745100_unk200

	def_text_script CompText8745100_unk201

	def_text_script CompText8745100_unk202

	def_text_script CompText8745100_unk203

	def_text_script CompText8745100_unk204

	def_text_script CompText8745100_unk205

	def_text_script CompText8745100_unk206

	def_text_script CompText8745100_unk207

	def_text_script CompText8745100_unk208

	def_text_script CompText8745100_unk209

	def_text_script CompText8745100_unk210

	def_text_script CompText8745100_unk211

	def_text_script CompText8745100_unk212

	def_text_script CompText8745100_unk213

	def_text_script CompText8745100_unk214

	def_text_script CompText8745100_unk215

	def_text_script CompText8745100_unk216

	def_text_script CompText8745100_unk217

	def_text_script CompText8745100_unk218

	def_text_script CompText8745100_unk219

	def_text_script CompText8745100_unk220

	def_text_script CompText8745100_unk221

	def_text_script CompText8745100_unk222

	def_text_script CompText8745100_unk223

	def_text_script CompText8745100_unk224

	def_text_script CompText8745100_unk225

	def_text_script CompText8745100_unk226

	def_text_script CompText8745100_unk227

	def_text_script CompText8745100_unk228

	def_text_script CompText8745100_unk229

	def_text_script CompText8745100_unk230

	def_text_script CompText8745100_unk231

	def_text_script CompText8745100_unk232

	def_text_script CompText8745100_unk233

	def_text_script CompText8745100_unk234

	def_text_script CompText8745100_unk235

	def_text_script CompText8745100_unk236

	def_text_script CompText8745100_unk237

	def_text_script CompText8745100_unk238

	def_text_script CompText8745100_unk239

	def_text_script CompText8745100_unk240

	def_text_script CompText8745100_unk241

	def_text_script CompText8745100_unk242

	def_text_script CompText8745100_unk243

	def_text_script CompText8745100_unk244

	def_text_script CompText8745100_unk245

	def_text_script CompText8745100_unk246

	def_text_script CompText8745100_unk247

	def_text_script CompText8745100_unk248

	def_text_script CompText8745100_unk249

	def_text_script CompText8745100_unk250

	def_text_script CompText8745100_unk251

	def_text_script CompText8745100_unk252

	def_text_script CompText8745100_unk253

	def_text_script CompText8745100_unk254

	