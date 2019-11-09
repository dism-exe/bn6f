	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878FFC8::
	.word 0x7BA00

	text_archive_start

	def_text_script CompText878FFC8_unk0
	ts_check_chapter 0x42, 0x46, 0x5, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "This area is under\n"
	.string "NetPolice control,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and an investigation\n"
	.string "is underway. Please\n"
	.string "do not loiter!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk1
	ts_check_chapter 0x42, 0x46, 0x6, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "As for the JudgeTree\n"
	.string "being hacked..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "quite frankly,we are\n"
	.string "confused as well..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk2
	ts_check_chapter 0x42, 0x46, 0x7, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "It would be nice if\n"
	.string "regular Navis were\n"
	.string "not allowed to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "wander around!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk3

	def_text_script CompText878FFC8_unk4

	def_text_script CompText878FFC8_unk5
	ts_mugshot_show 0x42
	ts_msg_open
	.string "... Can you please\n"
	.string "not talk to me?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Prosecutor's\n"
	.string "backup\n"
	.string "organization..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oops,forget what I\n"
	.string "just said,OK...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk6
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Programs are created\n"
	.string "by humans..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is no such\n"
	.string "thing as a perfect\n"
	.string "human,therefore,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "a perfect program\n"
	.string "can not exist."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is a flaw in\n"
	.string "every security\n"
	.string "system."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The important thing\n"
	.string "is to hide those\n"
	.string "flaws well."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk7
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Hmm...\n"
	.string "No clues,huh...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk8

	def_text_script CompText878FFC8_unk9

	def_text_script CompText878FFC8_unk10

	def_text_script CompText878FFC8_unk11

	def_text_script CompText878FFC8_unk12

	def_text_script CompText878FFC8_unk13

	def_text_script CompText878FFC8_unk14

	def_text_script CompText878FFC8_unk15

	def_text_script CompText878FFC8_unk16

	def_text_script CompText878FFC8_unk17

	def_text_script CompText878FFC8_unk18

	def_text_script CompText878FFC8_unk19

	def_text_script CompText878FFC8_unk20

	def_text_script CompText878FFC8_unk21

	def_text_script CompText878FFC8_unk22

	def_text_script CompText878FFC8_unk23

	def_text_script CompText878FFC8_unk24

	def_text_script CompText878FFC8_unk25

	def_text_script CompText878FFC8_unk26

	def_text_script CompText878FFC8_unk27

	def_text_script CompText878FFC8_unk28

	def_text_script CompText878FFC8_unk29

	def_text_script CompText878FFC8_unk30

	def_text_script CompText878FFC8_unk31

	def_text_script CompText878FFC8_unk32

	def_text_script CompText878FFC8_unk33

	def_text_script CompText878FFC8_unk34

	def_text_script CompText878FFC8_unk35

	def_text_script CompText878FFC8_unk36

	def_text_script CompText878FFC8_unk37

	def_text_script CompText878FFC8_unk38

	def_text_script CompText878FFC8_unk39

	def_text_script CompText878FFC8_unk40
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "The Force Program\n"
	.string "has been stolen..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Stealing that is a\n"
	.string "suuuuuper serious\n"
	.string "crime!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if the\n"
	.string "criminal knows that."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk41
	ts_mugshot_show 0x40
	ts_msg_open
	.string "No... A prosecutor's\n"
	.string "job is not easy at\n"
	.string "all..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't do my job at\n"
	.string "all if I don't drop\n"
	.string "by the NetCafe..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk42
	ts_mugshot_show 0x41
	ts_msg_open
	.string "*sigh...*\n"
	.string "A defense lawyer's\n"
	.string "job is really tough!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's really true.\n"
	.string "Sometimes,if I don't\n"
	.string "relax,I can't go on!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk43

	def_text_script CompText878FFC8_unk44

	def_text_script CompText878FFC8_unk45
	ts_check_flag 0x20, 0xC, 0x3C, 0xFF
	ts_check_flag 0x1E, 0xC, 0x37, 0xFF
	ts_check_flag 0x1A, 0xC, 0x32, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Hmm? You're in that\n"
	.string "commercial,aren't\n"
	.string "you?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... I thought so!\n"
	.string "Did you get a lot of\n"
	.string "cool toys?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey! What?\n"
	.string "Was it something I\n"
	.string "said!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk46
	ts_mugshot_show 0x40
	ts_msg_open
	.string "The lawyer I'm up\n"
	.string "against now in court\n"
	.string "knows his stuff..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have no\n"
	.string "confidence...\n"
	.string "*sigh...*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk47
	ts_mugshot_show 0x41
	ts_msg_open
	.string "The trial I'm in\n"
	.string "charge of now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "the prosecutor on\n"
	.string "the other side is\n"
	.string "ruthless!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't know if I\n"
	.string "can win...\n"
	.string "*sigh...*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk48

	def_text_script CompText878FFC8_unk49

	def_text_script CompText878FFC8_unk50
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Man... I bet if I\n"
	.string "got to be in that\n"
	.string "commercial,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd get lots of\n"
	.string "cool character\n"
	.string "toys too..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk51

	def_text_script CompText878FFC8_unk52

	def_text_script CompText878FFC8_unk53

	def_text_script CompText878FFC8_unk54

	def_text_script CompText878FFC8_unk55
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "It sounds like some-\n"
	.string "thing happened in\n"
	.string "the real world..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This just means that\n"
	.string "more work will be\n"
	.string "flooding into the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "courthouse,I guess."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk56

	def_text_script CompText878FFC8_unk57

	def_text_script CompText878FFC8_unk58

	def_text_script CompText878FFC8_unk59

	def_text_script CompText878FFC8_unk60
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Looks like something\n"
	.string "happened in Seaside\n"
	.string "Town..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This means more work\n"
	.string "at the courthouse,\n"
	.string "yet again..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FFC8_unk61

	def_text_script CompText878FFC8_unk62

	def_text_script CompText878FFC8_unk63

	def_text_script CompText878FFC8_unk64

	def_text_script CompText878FFC8_unk65

	def_text_script CompText878FFC8_unk66

	def_text_script CompText878FFC8_unk67

	def_text_script CompText878FFC8_unk68

	def_text_script CompText878FFC8_unk69

	def_text_script CompText878FFC8_unk70

	def_text_script CompText878FFC8_unk71

	def_text_script CompText878FFC8_unk72

	def_text_script CompText878FFC8_unk73

	def_text_script CompText878FFC8_unk74

	def_text_script CompText878FFC8_unk75

	def_text_script CompText878FFC8_unk76

	def_text_script CompText878FFC8_unk77

	def_text_script CompText878FFC8_unk78

	def_text_script CompText878FFC8_unk79

	def_text_script CompText878FFC8_unk80

	def_text_script CompText878FFC8_unk81

	def_text_script CompText878FFC8_unk82

	def_text_script CompText878FFC8_unk83

	def_text_script CompText878FFC8_unk84

	def_text_script CompText878FFC8_unk85

	def_text_script CompText878FFC8_unk86

	def_text_script CompText878FFC8_unk87

	def_text_script CompText878FFC8_unk88

	def_text_script CompText878FFC8_unk89

	def_text_script CompText878FFC8_unk90

	def_text_script CompText878FFC8_unk91

	def_text_script CompText878FFC8_unk92

	def_text_script CompText878FFC8_unk93

	def_text_script CompText878FFC8_unk94

	def_text_script CompText878FFC8_unk95

	def_text_script CompText878FFC8_unk96

	def_text_script CompText878FFC8_unk97

	def_text_script CompText878FFC8_unk98

	def_text_script CompText878FFC8_unk99

	