	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C97A8::
	.word 0x128E00

	text_archive_start

	def_text_script CompText87C97A8_unk0

	def_text_script CompText87C97A8_unk1

	def_text_script CompText87C97A8_unk2

	def_text_script CompText87C97A8_unk3

	def_text_script CompText87C97A8_unk4

	def_text_script CompText87C97A8_unk5

	def_text_script CompText87C97A8_unk6

	def_text_script CompText87C97A8_unk7

	def_text_script CompText87C97A8_unk8

	def_text_script CompText87C97A8_unk9

	def_text_script CompText87C97A8_unk10

	def_text_script CompText87C97A8_unk11

	def_text_script CompText87C97A8_unk12

	def_text_script CompText87C97A8_unk13

	def_text_script CompText87C97A8_unk14

	def_text_script CompText87C97A8_unk15

	def_text_script CompText87C97A8_unk16

	def_text_script CompText87C97A8_unk17

	def_text_script CompText87C97A8_unk18

	def_text_script CompText87C97A8_unk19

	def_text_script CompText87C97A8_unk20

	def_text_script CompText87C97A8_unk21

	def_text_script CompText87C97A8_unk22

	def_text_script CompText87C97A8_unk23

	def_text_script CompText87C97A8_unk24

	def_text_script CompText87C97A8_unk25

	def_text_script CompText87C97A8_unk26

	def_text_script CompText87C97A8_unk27

	def_text_script CompText87C97A8_unk28

	def_text_script CompText87C97A8_unk29

	def_text_script CompText87C97A8_unk30

	def_text_script CompText87C97A8_unk31

	def_text_script CompText87C97A8_unk32

	def_text_script CompText87C97A8_unk33

	def_text_script CompText87C97A8_unk34

	def_text_script CompText87C97A8_unk35

	def_text_script CompText87C97A8_unk36

	def_text_script CompText87C97A8_unk37

	def_text_script CompText87C97A8_unk38

	def_text_script CompText87C97A8_unk39

	def_text_script CompText87C97A8_unk40

	def_text_script CompText87C97A8_unk41

	def_text_script CompText87C97A8_unk42

	def_text_script CompText87C97A8_unk43

	def_text_script CompText87C97A8_unk44

	def_text_script CompText87C97A8_unk45

	def_text_script CompText87C97A8_unk46

	def_text_script CompText87C97A8_unk47

	def_text_script CompText87C97A8_unk48

	def_text_script CompText87C97A8_unk49

	def_text_script CompText87C97A8_unk50

	def_text_script CompText87C97A8_unk51

	def_text_script CompText87C97A8_unk52

	def_text_script CompText87C97A8_unk53

	def_text_script CompText87C97A8_unk54

	def_text_script CompText87C97A8_unk55

	def_text_script CompText87C97A8_unk56

	def_text_script CompText87C97A8_unk57

	def_text_script CompText87C97A8_unk58

	def_text_script CompText87C97A8_unk59

	def_text_script CompText87C97A8_unk60

	def_text_script CompText87C97A8_unk61

	def_text_script CompText87C97A8_unk62

	def_text_script CompText87C97A8_unk63

	def_text_script CompText87C97A8_unk64

	def_text_script CompText87C97A8_unk65

	def_text_script CompText87C97A8_unk66

	def_text_script CompText87C97A8_unk67

	def_text_script CompText87C97A8_unk68

	def_text_script CompText87C97A8_unk69

	def_text_script CompText87C97A8_unk70

	def_text_script CompText87C97A8_unk71

	def_text_script CompText87C97A8_unk72

	def_text_script CompText87C97A8_unk73

	def_text_script CompText87C97A8_unk74

	def_text_script CompText87C97A8_unk75

	def_text_script CompText87C97A8_unk76

	def_text_script CompText87C97A8_unk77

	def_text_script CompText87C97A8_unk78

	def_text_script CompText87C97A8_unk79

	def_text_script CompText87C97A8_unk80

	def_text_script CompText87C97A8_unk81
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Colonel!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=82

	def_text_script CompText87C97A8_unk82
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Ugh,too late!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=83

	def_text_script CompText87C97A8_unk83
	ts_check_link_navi [
		variable: 0x0,
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0x57,
		jumpIfSlashMan: 0x55,
		jumpIfEraseMan: 0x5C,
		jumpIfChargeMan: 0x5B,
		jumpIfSpoutMan: 0x54,
		jumpIfTomahawkMan: 0x58,
		jumpIfTenguMan: 0x56,
		jumpIfGroundMan: 0x59,
		jumpIfDustMan: 0x5A,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "... Dang it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "H-HeatMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk84
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "... Drip,drip..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "S-SpoutMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk85
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "... Ngh!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "S-SlashMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk86
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "... Aaah!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "T-TenguMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk87
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "... tzz,tzz..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "E-ElecMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk88
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "... Waaaa!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "T-TomahawkMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk89
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "... Rrwaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "G-GroundMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk90
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "... Rrrrrr!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "D-DustMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk91
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "... Chooooo!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Ch-ChargeMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk92
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "... Nngh!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "E-EraseMan!\n"
	.string "Jack out! Hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk93
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "He got away..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk94
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "But I'm not\n"
	.string "interested in little\n"
	.string "fish anyway..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I only want the big\n"
	.string "fish... You,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=95

	def_text_script CompText87C97A8_unk95
	ts_mugshot_show mugshot=0x2F
	ts_msg_open
	.string "Are you going to\n"
	.string "come along quietly\n"
	.string "is the question..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=96

	def_text_script CompText87C97A8_unk96
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Baryl!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That voice...\n"
	.string "That's Baryl!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=97

	def_text_script CompText87C97A8_unk97
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "... Hmph.\n"
	.string "There really is only\n"
	.string "one man who could be"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the commander of WWW\n"
	.string "when you think about\n"
	.string "it..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess the\n"
	.string "rumors were true..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=98

	def_text_script CompText87C97A8_unk98
	ts_mugshot_show mugshot=0x2F
	ts_msg_open
	.string "Sorry,but your\n"
	.string "sources were wrong."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Everyone's been\n"
	.string "wrong about me from\n"
	.string "the start!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've been doing this\n"
	.string "all for myself from\n"
	.string "the very beginning!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now,hand over the\n"
	.string "Cybeast power!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=99

	def_text_script CompText87C97A8_unk99
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "ProtoMan,don't do\n"
	.string "what he says!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cut Colonel down\n"
	.string "where he stands!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=100

	def_text_script CompText87C97A8_unk100
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Right!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan,leave this\n"
	.string "to me."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've fought him\n"
	.string "once before in the\n"
	.string "JudgeTreeComp."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll bring this to\n"
	.string "an end here right\n"
	.string "now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should jack out\n"
	.string "and get some rest."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=101

	def_text_script CompText87C97A8_unk101
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... No."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=102

	def_text_script CompText87C97A8_unk102
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "What!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=103

	def_text_script CompText87C97A8_unk103
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "ProtoMan,you want\n"
	.string "to fight Colonel,\n"
	.string "right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But that won't solve\n"
	.string "anything. Fighting\n"
	.string "is meaningless."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So please,let me\n"
	.string "talk with him!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=104

	def_text_script CompText87C97A8_unk104
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "You're too soft,even\n"
	.string "at a time like\n"
	.string "this...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk105
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Colonel,please\n"
	.string "stop it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're not your\n"
	.string "usual self."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's gotta be\n"
	.string "some reason you\n"
	.string "joined WWW..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=106

	def_text_script CompText87C97A8_unk106
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "I don't have\n"
	.string "anything to say to\n"
	.string "you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm just a member of\n"
	.string "WWW,nothing more!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=107

	def_text_script CompText87C97A8_unk107
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... That's a lie!\n"
	.string "You're lying!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=108

	def_text_script CompText87C97A8_unk108
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "You don't understand\n"
	.string "me at all."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't care what I\n"
	.string "have to do or how\n"
	.string "evil I have to be,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "As long as I\n"
	.string "complete my mission\n"
	.string "successfully..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=109

	def_text_script CompText87C97A8_unk109
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=110

	def_text_script CompText87C97A8_unk110
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "I'm not kind like\n"
	.string "you..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=111

	def_text_script CompText87C97A8_unk111
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Then why did you\n"
	.string "hold back just\n"
	.string "now?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=112

	def_text_script CompText87C97A8_unk112
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "Hold back...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=113

	def_text_script CompText87C97A8_unk113
	ts_check_link_navi [
		variable: 0x0,
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0x75,
		jumpIfSlashMan: 0x73,
		jumpIfEraseMan: 0x7A,
		jumpIfChargeMan: 0x79,
		jumpIfSpoutMan: 0x72,
		jumpIfTomahawkMan: 0x76,
		jumpIfTenguMan: 0x74,
		jumpIfGroundMan: 0x77,
		jumpIfDustMan: 0x78,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "HeatMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk114
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "SpoutMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk115
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "SlashMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk116
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "TenguMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk117
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "ElecMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk118
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "TomahawkMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk119
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "GroundMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk120
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "DustMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk121
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "ChargeMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk122
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's right!\n"
	.string "EraseMan was very\n"
	.string "weak just now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=123

	def_text_script CompText87C97A8_unk123
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "One of your attacks\n"
	.string "could have deleted\n"
	.string "him!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But you didn't..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No,you couldn't!\n"
	.string "You hesitated,didn't\n"
	.string "you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=124

	def_text_script CompText87C97A8_unk124
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "You wouldn't be\n"
	.string "changed into someone\n"
	.string "evil that easily!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x53
	.string "You're one annoying\n"
	.string "little talker."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going to silence\n"
	.string "that flapping mouth\n"
	.string "of yours!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk125
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Colonel,why are you\n"
	.string "lying to yourself!?"
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87C97A8_unk126
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "He's going to\n"
	.string "attack,MegaMan!\n"
	.string "Get ready!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's not the type\n"
	.string "to listen to words!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=127

	def_text_script CompText87C97A8_unk127
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "Be gone,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=128

	def_text_script CompText87C97A8_unk128
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Colonel!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk129
	ts_mugshot_hide
	ts_msg_open
	.string "... Ahh!"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x5,
	]
	ts_end

	def_text_script CompText87C97A8_unk130
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "P-ProtoMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why...!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk131
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "Don't get in my\n"
	.string "way..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=132

	def_text_script CompText87C97A8_unk132
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	ts_text_speed delay=0x3
	.string "... You're still\n"
	.string "the same..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Y-You must get rid\n"
	.string "of that kindness..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't... The\n"
	.string "world... will fall\n"
	.string "into... his hands..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You must...\n"
	.string "stop him..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk133
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x2
	.string "ProtoMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk134
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Lan!\n"
	.string "It's just like\n"
	.string "ProtoMan said."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You must get rid\n"
	.string "of that kindness!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Those two are not\n"
	.string "the Baryl and\n"
	.string "Colonel you knew!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=135

	def_text_script CompText87C97A8_unk135
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... But,but...\n"
	.string "Something's not\n"
	.string "right!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Baryl!\n"
	.string "Can you hear me?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why do we have to\n"
	.string "fight!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=136

	def_text_script CompText87C97A8_unk136
	ts_mugshot_show mugshot=0x2F
	ts_msg_open
	.string "I think it's quite\n"
	.string "easy to understand."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You are in my way."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Naturally,I must\n"
	.string "remove you to finish\n"
	.string "my mission."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=137

	def_text_script CompText87C97A8_unk137
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I... No..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=138

	def_text_script CompText87C97A8_unk138
	ts_mugshot_show mugshot=0x2F
	ts_msg_open
	.string "That's all I have\n"
	.string "to say."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can say whatever\n"
	.string "you want,but you\n"
	.string "won't stop me."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you want to try,\n"
	.string "you can with your\n"
	.string "MegaBuster!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=139

	def_text_script CompText87C97A8_unk139
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=140

	def_text_script CompText87C97A8_unk140
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Lan! Do it!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't stop\n"
	.string "him now,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "there won't be a\n"
	.string "future for anyone!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=141

	def_text_script CompText87C97A8_unk141
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x3
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string " I understand"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x2
	.string "that words can't get\n"
	.string "through to you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0xE
	.string "We're going to make\n"
	.string "the two of you wake\n"
	.string "up no matter what!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go,MegaMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=142

	def_text_script CompText87C97A8_unk142
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... OK!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk143
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=144

	def_text_script CompText87C97A8_unk144
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=145

	def_text_script CompText87C97A8_unk145
	ts_mugshot_show mugshot=0x2F
	ts_msg_open
	.string "Yes,that's right..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's time,Colonel!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C97A8_unk146
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "I will not lose!"
	ts_key_wait any=0x0
	ts_end

	