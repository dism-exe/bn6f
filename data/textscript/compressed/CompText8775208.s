	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8775208::
	.word 0x6AF00

	text_archive_start

	def_text_script CompText8775208_unk0
	ts_mugshot_show mugshot=0x1A
	ts_msg_open
	.string "I thought it'd be\n"
	.string "crazier around\n"
	.string "here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's good to know\n"
	.string "my assumption was\n"
	.string "wrong."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk1
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "I haven't told\n"
	.string "grandma anything\n"
	.string "about the incident"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that happened at\n"
	.string "the Aquarium."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk2
	ts_check_chapter [
		lower: 0x23,
		upper: 0x23,
		jumpIfInRange: CompText8775208_unk7_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Fishies! Fishies!\n"
	.string "Teehehehehe!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Fishies! Fishies!\n"
	.string "Everywhere I see!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk3
	ts_check_chapter [
		lower: 0x24,
		upper: 0x24,
		jumpIfInRange: CompText8775208_unk11_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x23,
		upper: 0x23,
		jumpIfInRange: CompText8775208_unk9_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "You're Mr.Hikari!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You don't have to\n"
	.string "pay the admission\n"
	.string "fee!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're face is\n"
	.string "your pass!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk4

	def_text_script CompText8775208_unk5
	ts_mugshot_show mugshot=0x1A
	ts_msg_open
	.string "Huh?\n"
	.string "They're closing?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x15
	.string "I apologize..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...We have a\n"
	.string "situation that\n"
	.string "needs resolving."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk6
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "I wonder if they\n"
	.string "had another\n"
	.string "incident...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe it's\n"
	.string "dangerous..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk7
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Fishies! Fishies!\n"
	.string "Teehehehehe!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Fishies! Fishies!\n"
	.string "Three for me!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk8
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "I apologize..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We've got a\n"
	.string "situation that"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "requires we close\n"
	.string "the Aquarium..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1A
	.string "Huh? Really?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's a shame..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk9
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "I wonder if they\n"
	.string "are running this\n"
	.string "Aquarium properly?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk10
	ts_check_chapter [
		lower: 0x25,
		upper: 0x25,
		jumpIfInRange: CompText8775208_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "No matter how\n"
	.string "often the Aquarium\n"
	.string "is closed,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we can't forget\n"
	.string "to take care of\n"
	.string "the fish!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk11
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Closed tomorrow\n"
	.string "as well..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if I'll\n"
	.string "get paid this month!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk12

	def_text_script CompText8775208_unk13

	def_text_script CompText8775208_unk14

	def_text_script CompText8775208_unk15
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "...Hmph!\n"
	.string "I'd like to give\n"
	.string "those criminals"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a taste of their\n"
	.string "own medicine..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk16

	def_text_script CompText8775208_unk17

	def_text_script CompText8775208_unk18

	def_text_script CompText8775208_unk19

	def_text_script CompText8775208_unk20

	def_text_script CompText8775208_unk21

	def_text_script CompText8775208_unk22

	def_text_script CompText8775208_unk23

	def_text_script CompText8775208_unk24

	def_text_script CompText8775208_unk25

	def_text_script CompText8775208_unk26

	def_text_script CompText8775208_unk27

	def_text_script CompText8775208_unk28

	def_text_script CompText8775208_unk29

	def_text_script CompText8775208_unk30

	def_text_script CompText8775208_unk31

	def_text_script CompText8775208_unk32

	def_text_script CompText8775208_unk33

	def_text_script CompText8775208_unk34

	def_text_script CompText8775208_unk35

	def_text_script CompText8775208_unk36

	def_text_script CompText8775208_unk37

	def_text_script CompText8775208_unk38

	def_text_script CompText8775208_unk39

	def_text_script CompText8775208_unk40
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "They're all\n"
	.string "angels..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When I was little\n"
	.string "they called me an\n"
	.string "angel too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...What? It's true!\n"
	.string "Don't look at me\n"
	.string "with that face!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk41
	ts_mugshot_show mugshot=0x8
	ts_msg_open
	.string "Hmm...?\n"
	.string "Where can you look\n"
	.string "at shark fins...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Huh? They're not\n"
	.string "sharks? Can I\n"
	.string "eat them anyways!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk42

	def_text_script CompText8775208_unk43

	def_text_script CompText8775208_unk44

	def_text_script CompText8775208_unk45

	def_text_script CompText8775208_unk46

	def_text_script CompText8775208_unk47

	def_text_script CompText8775208_unk48

	def_text_script CompText8775208_unk49

	def_text_script CompText8775208_unk50
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "The right jellyfish\n"
	.string "is Leeroy. The left\n"
	.string "one is Jenkins."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Huh? You can't tell\n"
	.string "the difference!?\n"
	.string "Look harder!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk51
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Hey! Hey!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is it true that\n"
	.string "saving a turtle is\n"
	.string "a ticket to royalty?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well? Is it?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8775208_unk52

	def_text_script CompText8775208_unk53

	def_text_script CompText8775208_unk54

	def_text_script CompText8775208_unk55

	def_text_script CompText8775208_unk56

	def_text_script CompText8775208_unk57

	def_text_script CompText8775208_unk58

	def_text_script CompText8775208_unk59

	def_text_script CompText8775208_unk60

	def_text_script CompText8775208_unk61

	def_text_script CompText8775208_unk62

	def_text_script CompText8775208_unk63

	def_text_script CompText8775208_unk64

	def_text_script CompText8775208_unk65

	def_text_script CompText8775208_unk66

	def_text_script CompText8775208_unk67

	def_text_script CompText8775208_unk68

	def_text_script CompText8775208_unk69

	def_text_script CompText8775208_unk70

	def_text_script CompText8775208_unk71

	def_text_script CompText8775208_unk72

	def_text_script CompText8775208_unk73

	def_text_script CompText8775208_unk74

	def_text_script CompText8775208_unk75

	def_text_script CompText8775208_unk76

	def_text_script CompText8775208_unk77

	def_text_script CompText8775208_unk78

	def_text_script CompText8775208_unk79

	def_text_script CompText8775208_unk80

	def_text_script CompText8775208_unk81

	def_text_script CompText8775208_unk82

	def_text_script CompText8775208_unk83

	def_text_script CompText8775208_unk84

	def_text_script CompText8775208_unk85

	def_text_script CompText8775208_unk86

	def_text_script CompText8775208_unk87

	def_text_script CompText8775208_unk88

	def_text_script CompText8775208_unk89

	def_text_script CompText8775208_unk90

	def_text_script CompText8775208_unk91

	def_text_script CompText8775208_unk92

	def_text_script CompText8775208_unk93

	def_text_script CompText8775208_unk94

	def_text_script CompText8775208_unk95

	def_text_script CompText8775208_unk96

	def_text_script CompText8775208_unk97

	def_text_script CompText8775208_unk98

	def_text_script CompText8775208_unk99

	