	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876EE64::
	.word 0x6ED00

	text_archive_start

	def_text_script CompText876EE64_unk0

	def_text_script CompText876EE64_unk1

	def_text_script CompText876EE64_unk2

	def_text_script CompText876EE64_unk3

	def_text_script CompText876EE64_unk4

	def_text_script CompText876EE64_unk5

	def_text_script CompText876EE64_unk6

	def_text_script CompText876EE64_unk7

	def_text_script CompText876EE64_unk8

	def_text_script CompText876EE64_unk9

	def_text_script CompText876EE64_unk10
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Ahhh! No way!\n"
	.string "My Student ID is\n"
	.string "gone!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now I can't get\n"
	.string "through the gate..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876EE64_unk11

	def_text_script CompText876EE64_unk12

	def_text_script CompText876EE64_unk13
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "Today's a holiday,\n"
	.string "so there aren't many\n"
	.string "people inside of"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the school.\n"
	.string "Huh? Me?\n"
	.string "I'm the janitor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The janitor has to\n"
	.string "come to school,even\n"
	.string "on holidays."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876EE64_unk14

	def_text_script CompText876EE64_unk15

	def_text_script CompText876EE64_unk16

	def_text_script CompText876EE64_unk17

	def_text_script CompText876EE64_unk18

	def_text_script CompText876EE64_unk19

	def_text_script CompText876EE64_unk20

	def_text_script CompText876EE64_unk21

	def_text_script CompText876EE64_unk22

	def_text_script CompText876EE64_unk23

	def_text_script CompText876EE64_unk24

	def_text_script CompText876EE64_unk25

	def_text_script CompText876EE64_unk26

	def_text_script CompText876EE64_unk27

	def_text_script CompText876EE64_unk28

	def_text_script CompText876EE64_unk29

	def_text_script CompText876EE64_unk30

	def_text_script CompText876EE64_unk31

	def_text_script CompText876EE64_unk32

	def_text_script CompText876EE64_unk33

	def_text_script CompText876EE64_unk34

	def_text_script CompText876EE64_unk35

	def_text_script CompText876EE64_unk36

	def_text_script CompText876EE64_unk37

	def_text_script CompText876EE64_unk38

	def_text_script CompText876EE64_unk39

	def_text_script CompText876EE64_unk40

	def_text_script CompText876EE64_unk41

	def_text_script CompText876EE64_unk42

	def_text_script CompText876EE64_unk43

	def_text_script CompText876EE64_unk44

	def_text_script CompText876EE64_unk45

	def_text_script CompText876EE64_unk46

	def_text_script CompText876EE64_unk47

	def_text_script CompText876EE64_unk48

	def_text_script CompText876EE64_unk49

	def_text_script CompText876EE64_unk50
	ts_check_flag [
		flag: 0x543,
		jumpIfTrue: CompText876EE64_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x543
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hey! Hey!\n"
	.string "Do something!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This penguin's been\n"
	.string "following me around!\n"
	.string "Even to the toilet!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What is this crazy\n"
	.string "bird doing...? Can't\n"
	.string "he fly off!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "By the way...\n"
	.string "What happened with\n"
	.string "the BBS?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Huh...? Oh that..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "...Hmmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So this penguin\n"
	.string "escaped from the\n"
	.string "Aquarium,huh..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Hey,have you ever\n"
	.string "been to Seaside\n"
	.string "Town?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "I've been there a\n"
	.string "few times!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Did you know that\n"
	.string "each area in Cyber\n"
	.string "City is doing its"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "own special themed\n"
	.string "experiments?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "For example,Central\n"
	.string "Town's is Next-Gen\n"
	.string "Net society!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And Seaside Town's\n"
	.string "theme is..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ummm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess its theme\n"
	.string "is waterworks..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Waterworks?\n"
	.string "What's that?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "It's gotta be about\n"
	.string "making something\n"
	.string "work with water..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x57
	.string "Hey Mick..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "What?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x57
	.string "Seaside Town's theme\n"
	.string "is treating water\n"
	.string "with chemicals!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They research how to\n"
	.string "keep water clean in\n"
	.string "Seaside Town!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't you think\n"
	.string "people who've been\n"
	.string "there would know!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "OK,then let's go\n"
	.string "there together!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you go by\n"
	.string "yourself it's a\n"
	.string "recipe for disaster!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "Fine then. You head\n"
	.string "to the LevBus\n"
	.string "station first,OK!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Walking with this\n"
	.string "slowpoke will take\n"
	.string "forever,so"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll catch up with\n"
	.string "you later..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Gotcha!\n"
	.string "In front of the\n"
	.string "LevBus station!!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x5
	ts_end

	def_text_script CompText876EE64_unk51
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Fine then. You head\n"
	.string "to the LevBus\n"
	.string "station first,OK!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Walking with this\n"
	.string "slowpoke will take\n"
	.string "forever,so..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876EE64_unk52
	ts_msg_open
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876EE64_unk53

	def_text_script CompText876EE64_unk54

	def_text_script CompText876EE64_unk55

	def_text_script CompText876EE64_unk56

	def_text_script CompText876EE64_unk57

	def_text_script CompText876EE64_unk58

	def_text_script CompText876EE64_unk59

	def_text_script CompText876EE64_unk60

	def_text_script CompText876EE64_unk61

	def_text_script CompText876EE64_unk62

	def_text_script CompText876EE64_unk63

	def_text_script CompText876EE64_unk64

	def_text_script CompText876EE64_unk65

	def_text_script CompText876EE64_unk66

	def_text_script CompText876EE64_unk67

	def_text_script CompText876EE64_unk68

	def_text_script CompText876EE64_unk69

	def_text_script CompText876EE64_unk70

	def_text_script CompText876EE64_unk71

	def_text_script CompText876EE64_unk72

	def_text_script CompText876EE64_unk73

	def_text_script CompText876EE64_unk74

	def_text_script CompText876EE64_unk75

	def_text_script CompText876EE64_unk76

	def_text_script CompText876EE64_unk77

	def_text_script CompText876EE64_unk78

	def_text_script CompText876EE64_unk79

	def_text_script CompText876EE64_unk80

	def_text_script CompText876EE64_unk81

	def_text_script CompText876EE64_unk82

	def_text_script CompText876EE64_unk83

	def_text_script CompText876EE64_unk84

	def_text_script CompText876EE64_unk85

	def_text_script CompText876EE64_unk86

	def_text_script CompText876EE64_unk87

	def_text_script CompText876EE64_unk88

	def_text_script CompText876EE64_unk89

	def_text_script CompText876EE64_unk90

	def_text_script CompText876EE64_unk91

	def_text_script CompText876EE64_unk92

	def_text_script CompText876EE64_unk93

	def_text_script CompText876EE64_unk94

	def_text_script CompText876EE64_unk95

	def_text_script CompText876EE64_unk96

	def_text_script CompText876EE64_unk97

	def_text_script CompText876EE64_unk98

	def_text_script CompText876EE64_unk99

	