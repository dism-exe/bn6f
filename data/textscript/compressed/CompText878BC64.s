	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878BC64::
	.word 0x7FB00

	text_archive_start

	def_text_script CompText878BC64_unk0
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: CompText878BC64_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText878BC64_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "TO PREVENT ANOTHER\n"
	.string "INCIDENT LIKE THE\n"
	.string "ONE IN GREEN TOWN,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WE,THE GUARDIANS OF\n"
	.string "THIS AREA,TO\n"
	.string "STRENGTHEN SECURITY,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ARE VOLUNTARILY\n"
	.string "PATROLLING THIS\n"
	.string "AREA!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk1
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: CompText878BC64_unk11_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText878BC64_unk6_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "STAY ALERT!!\n"
	.string "STAY ALERT!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF YOU SEE ANY\n"
	.string "SUSPICIOUS PEOPLE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "DON'T TRY TO TAKE\n"
	.string "THEM ON,AND CALL FOR\n"
	.string "HELP!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk2
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: CompText878BC64_unk12_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText878BC64_unk7_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "HELP!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HELP!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THIS IS ONLY A TEST,\n"
	.string "THIS IS ONLY A TEST."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BE SURE TO PRACTICE\n"
	.string "YOUR SCREAM FOR\n"
	.string "HELP!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk3

	def_text_script CompText878BC64_unk4

	def_text_script CompText878BC64_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THERE ISN'T ANYTHING\n"
	.string "WRONG IN THIS AREA."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHAT? THE UNDERNET?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I DON'T WANT TO GET\n"
	.string "TO KNOW THAT CREEPY\n"
	.string "DEMONS' AREA!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk6
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "A-AAAAAAAAAH!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "UH... DON'T BE\n"
	.string "THREATENED..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I JUST REMEMBERED\n"
	.string "THAT WHILE I WAS\n"
	.string "FROZEN..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk7
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "... I'M ALL...\n"
	.string "HOARSE..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PRACTICED...\n"
	.string "... SCREAMING...\n"
	.string "TOO MUCH..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk8

	def_text_script CompText878BC64_unk9

	def_text_script CompText878BC64_unk10
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "SOMETHING HAPPENED\n"
	.string "IN THE REAL WORLD\n"
	.string "AGAIN!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHICH MEANS WE HAVE\n"
	.string "TO STRENGTHEN THE\n"
	.string "NET BARRIER!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk11
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "... *SHIVER,SHIVER*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SOMETHING HAPPENED\n"
	.string "IN THE REAL WORLD,\n"
	.string "DIDN'T IT...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "W-WHAT SHOULD I DO\n"
	.string "IF STRANGE PEOPLE\n"
	.string "SHOW UP ON THE NET?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk12
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "... MY THROAT...\n"
	.string "TOTALLY... GONE...\n"
	.string "HURTS... OWWWW..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk13

	def_text_script CompText878BC64_unk14

	def_text_script CompText878BC64_unk15

	def_text_script CompText878BC64_unk16

	def_text_script CompText878BC64_unk17

	def_text_script CompText878BC64_unk18

	def_text_script CompText878BC64_unk19

	def_text_script CompText878BC64_unk20

	def_text_script CompText878BC64_unk21

	def_text_script CompText878BC64_unk22

	def_text_script CompText878BC64_unk23

	def_text_script CompText878BC64_unk24

	def_text_script CompText878BC64_unk25

	def_text_script CompText878BC64_unk26

	def_text_script CompText878BC64_unk27

	def_text_script CompText878BC64_unk28

	def_text_script CompText878BC64_unk29

	def_text_script CompText878BC64_unk30

	def_text_script CompText878BC64_unk31

	def_text_script CompText878BC64_unk32

	def_text_script CompText878BC64_unk33

	def_text_script CompText878BC64_unk34

	def_text_script CompText878BC64_unk35

	def_text_script CompText878BC64_unk36

	def_text_script CompText878BC64_unk37

	def_text_script CompText878BC64_unk38

	def_text_script CompText878BC64_unk39

	def_text_script CompText878BC64_unk40
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "How about it?\n"
	.string "Can't you feel the\n"
	.string "cool,slick guy vibes"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "coming from my\n"
	.string "awesome self?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What? No?\n"
	.string "Oh,come on!\n"
	.string "You're not trying!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk41
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "You were in the\n"
	.string "Operator Navi Se-\n"
	.string "lection Test finals?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wow!! That is sooooo\n"
	.string "cool!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk42

	def_text_script CompText878BC64_unk43

	def_text_script CompText878BC64_unk44

	def_text_script CompText878BC64_unk45
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: CompText878BC64_unk60_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1E,
		jumpIfTrue: CompText878BC64_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText878BC64_unk50_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "\"Let's go,Lan!\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hehe,that was me\n"
	.string "imitating that\n"
	.string "commercial on TV."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wait a sec! You look\n"
	.string "just like the Navi\n"
	.string "in the commercial..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You could imitate\n"
	.string "him better than I\n"
	.string "can,I bet!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk46
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Cyber City's Mayor\n"
	.string "Cain is so\n"
	.string "dashing..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ah,Mayor Cain!!\n"
	.string "*swoon*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk47

	def_text_script CompText878BC64_unk48

	def_text_script CompText878BC64_unk49

	def_text_script CompText878BC64_unk50
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "\"Let's go,Lan!\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hehe,that was me\n"
	.string "imitating the\n"
	.string "commercial on TV."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What do you think?\n"
	.string "Don't I sound like\n"
	.string "the real guy!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk51

	def_text_script CompText878BC64_unk52

	def_text_script CompText878BC64_unk53

	def_text_script CompText878BC64_unk54

	def_text_script CompText878BC64_unk55
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Wawawawa...\n"
	.string "Seaside Town is in\n"
	.string "huge trouble!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wawawawa..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk56

	def_text_script CompText878BC64_unk57

	def_text_script CompText878BC64_unk58

	def_text_script CompText878BC64_unk59

	def_text_script CompText878BC64_unk60
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "It sounds like no\n"
	.string "one was hurt badly\n"
	.string "during the Seaside"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Town incident..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's such a\n"
	.string "relief..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878BC64_unk61

	def_text_script CompText878BC64_unk62

	def_text_script CompText878BC64_unk63

	def_text_script CompText878BC64_unk64

	def_text_script CompText878BC64_unk65

	def_text_script CompText878BC64_unk66

	def_text_script CompText878BC64_unk67

	def_text_script CompText878BC64_unk68

	def_text_script CompText878BC64_unk69

	def_text_script CompText878BC64_unk70

	def_text_script CompText878BC64_unk71

	def_text_script CompText878BC64_unk72

	def_text_script CompText878BC64_unk73

	def_text_script CompText878BC64_unk74

	def_text_script CompText878BC64_unk75

	def_text_script CompText878BC64_unk76

	def_text_script CompText878BC64_unk77

	def_text_script CompText878BC64_unk78

	def_text_script CompText878BC64_unk79

	def_text_script CompText878BC64_unk80

	def_text_script CompText878BC64_unk81

	def_text_script CompText878BC64_unk82

	def_text_script CompText878BC64_unk83

	def_text_script CompText878BC64_unk84

	def_text_script CompText878BC64_unk85

	def_text_script CompText878BC64_unk86

	def_text_script CompText878BC64_unk87

	def_text_script CompText878BC64_unk88

	def_text_script CompText878BC64_unk89

	def_text_script CompText878BC64_unk90

	def_text_script CompText878BC64_unk91

	def_text_script CompText878BC64_unk92

	def_text_script CompText878BC64_unk93

	def_text_script CompText878BC64_unk94

	def_text_script CompText878BC64_unk95

	def_text_script CompText878BC64_unk96

	def_text_script CompText878BC64_unk97

	def_text_script CompText878BC64_unk98

	def_text_script CompText878BC64_unk99

	