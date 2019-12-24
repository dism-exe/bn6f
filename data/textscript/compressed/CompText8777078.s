	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8777078::
	.word 0x54400

	text_archive_start

	def_text_script CompText8777078_unk0
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Hmm...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The sharks are\n"
	.string "acting kinda\n"
	.string "funny..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're nervous...\n"
	.string "What does this mean?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk1

	def_text_script CompText8777078_unk2

	def_text_script CompText8777078_unk3

	def_text_script CompText8777078_unk4

	def_text_script CompText8777078_unk5
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "The sharks'\n"
	.string "movements are\n"
	.string "more frantic now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is obviously\n"
	.string "something going on."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk6
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "This alligator is\n"
	.string "crazy fierce!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When it's starving,\n"
	.string "it'll even go after\n"
	.string "animals bigger than"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "itself with a huge,\n"
	.string "\"Ka-CHOMP!!\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and gnaw on it with\n"
	.string "its sharp,dagger-\n"
	.string "like teeth..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "Aaaah! Noooooooo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk7

	def_text_script CompText8777078_unk8
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Alligators are COOL!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ka-CHOMP!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk9
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "*hiccup...*\n"
	.string "Alligatos are\n"
	.string "scary..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk10
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "The weather has\n"
	.string "become abnormal,it\n"
	.string "seems..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think the sharks\n"
	.string "sense this..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk11

	def_text_script CompText8777078_unk12

	def_text_script CompText8777078_unk13

	def_text_script CompText8777078_unk14

	def_text_script CompText8777078_unk15

	def_text_script CompText8777078_unk16

	def_text_script CompText8777078_unk17

	def_text_script CompText8777078_unk18

	def_text_script CompText8777078_unk19

	def_text_script CompText8777078_unk20

	def_text_script CompText8777078_unk21

	def_text_script CompText8777078_unk22

	def_text_script CompText8777078_unk23

	def_text_script CompText8777078_unk24

	def_text_script CompText8777078_unk25

	def_text_script CompText8777078_unk26

	def_text_script CompText8777078_unk27

	def_text_script CompText8777078_unk28

	def_text_script CompText8777078_unk29

	def_text_script CompText8777078_unk30

	def_text_script CompText8777078_unk31

	def_text_script CompText8777078_unk32

	def_text_script CompText8777078_unk33

	def_text_script CompText8777078_unk34

	def_text_script CompText8777078_unk35

	def_text_script CompText8777078_unk36

	def_text_script CompText8777078_unk37

	def_text_script CompText8777078_unk38

	def_text_script CompText8777078_unk39

	def_text_script CompText8777078_unk40
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "... The sea... It's\n"
	.string "so mysterious."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... *sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's...\n"
	.string "It's so moving."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk41
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Grandpa! I want to\n"
	.string "ride on the shark's\n"
	.string "back!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x19
	.string "D-Don't be silly..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk42
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Did you hear the\n"
	.string "Force Program in Sky\n"
	.string "Town was stolen?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Public order is in\n"
	.string "quite a mess,huh...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk43

	def_text_script CompText8777078_unk44

	def_text_script CompText8777078_unk45
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Grandpa! I want that\n"
	.string "banana over there!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x19
	.string "D-Don't be silly."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk46
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Whooooooa!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The sea is really\n"
	.string "something else!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whooooooa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk47
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: 0x30,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "The Expo commercial\n"
	.string "started showing on\n"
	.string "TV,you know."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And now I'm all\n"
	.string "anxious for it to\n"
	.string "open!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk48
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Is it true there's\n"
	.string "a crazy Navi out\n"
	.string "there?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8777078_unk49

	def_text_script CompText8777078_unk50

	def_text_script CompText8777078_unk51

	def_text_script CompText8777078_unk52

	def_text_script CompText8777078_unk53

	def_text_script CompText8777078_unk54

	def_text_script CompText8777078_unk55

	def_text_script CompText8777078_unk56

	def_text_script CompText8777078_unk57

	def_text_script CompText8777078_unk58

	def_text_script CompText8777078_unk59

	def_text_script CompText8777078_unk60

	def_text_script CompText8777078_unk61

	def_text_script CompText8777078_unk62

	def_text_script CompText8777078_unk63

	def_text_script CompText8777078_unk64

	def_text_script CompText8777078_unk65

	def_text_script CompText8777078_unk66

	def_text_script CompText8777078_unk67

	def_text_script CompText8777078_unk68

	def_text_script CompText8777078_unk69

	def_text_script CompText8777078_unk70

	def_text_script CompText8777078_unk71

	def_text_script CompText8777078_unk72

	def_text_script CompText8777078_unk73

	def_text_script CompText8777078_unk74

	def_text_script CompText8777078_unk75

	def_text_script CompText8777078_unk76

	def_text_script CompText8777078_unk77

	def_text_script CompText8777078_unk78

	def_text_script CompText8777078_unk79

	def_text_script CompText8777078_unk80

	def_text_script CompText8777078_unk81

	def_text_script CompText8777078_unk82

	def_text_script CompText8777078_unk83

	def_text_script CompText8777078_unk84

	def_text_script CompText8777078_unk85

	def_text_script CompText8777078_unk86

	def_text_script CompText8777078_unk87

	def_text_script CompText8777078_unk88

	def_text_script CompText8777078_unk89

	def_text_script CompText8777078_unk90

	def_text_script CompText8777078_unk91

	def_text_script CompText8777078_unk92

	def_text_script CompText8777078_unk93

	def_text_script CompText8777078_unk94

	def_text_script CompText8777078_unk95

	def_text_script CompText8777078_unk96

	def_text_script CompText8777078_unk97

	def_text_script CompText8777078_unk98

	def_text_script CompText8777078_unk99

	