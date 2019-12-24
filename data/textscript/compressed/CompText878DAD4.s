	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878DAD4::
	.word 0x40600

	text_archive_start

	def_text_script CompText878DAD4_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WELCOME TO\n"
	.string "SEASIDEAREA3!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HAVE A GREAT DAY!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Hey,what's going to\n"
	.string "happen with the\n"
	.string "Expo?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Will they really\n"
	.string "open it?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk2
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Hmmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Drinking this water\n"
	.string "will make you feel\n"
	.string "young again..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But since I was\n"
	.string "only made six months"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ago,it won't have\n"
	.string "much of an effect!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I was made to be\n"
	.string "old Navi!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk3

	def_text_script CompText878DAD4_unk4

	def_text_script CompText878DAD4_unk5
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "They aren't delaying\n"
	.string "the Expo!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's good news..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk6
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Why did my operator\n"
	.string "make me into an old\n"
	.string "Navi,anyways?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do they even need\n"
	.string "old Navis in the\n"
	.string "Cyberworld?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk7

	def_text_script CompText878DAD4_unk8

	def_text_script CompText878DAD4_unk9

	def_text_script CompText878DAD4_unk10
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "At any rate...\n"
	.string "Where is that\n"
	.string "\"Healing Water\"?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk11
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Isn't it great!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I asked my operator\n"
	.string "and he turned me\n"
	.string "into a young Navi!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Youth... Wonderful!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk12

	def_text_script CompText878DAD4_unk13

	def_text_script CompText878DAD4_unk14

	def_text_script CompText878DAD4_unk15
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "EVERYONE SHOULD\n"
	.string "UNDERSTAND WHEN I\n"
	.string "SAY THIS..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "RIGHT OR WRONG,\n"
	.string "YOU CAN NEVER SETTLE\n"
	.string "ANYTHING WITH FORCE."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk16
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "After talking to\n"
	.string "a Mr.Prog like that,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "doing evil deeds\n"
	.string "has become an act\n"
	.string "of foolishness!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk17
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Owwwowwwowww..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878DAD4_unk18

	def_text_script CompText878DAD4_unk19

	def_text_script CompText878DAD4_unk20

	def_text_script CompText878DAD4_unk21

	def_text_script CompText878DAD4_unk22

	def_text_script CompText878DAD4_unk23

	def_text_script CompText878DAD4_unk24

	def_text_script CompText878DAD4_unk25

	def_text_script CompText878DAD4_unk26

	def_text_script CompText878DAD4_unk27

	def_text_script CompText878DAD4_unk28

	def_text_script CompText878DAD4_unk29

	def_text_script CompText878DAD4_unk30

	def_text_script CompText878DAD4_unk31

	def_text_script CompText878DAD4_unk32

	def_text_script CompText878DAD4_unk33

	def_text_script CompText878DAD4_unk34

	def_text_script CompText878DAD4_unk35

	def_text_script CompText878DAD4_unk36

	def_text_script CompText878DAD4_unk37

	def_text_script CompText878DAD4_unk38

	def_text_script CompText878DAD4_unk39

	def_text_script CompText878DAD4_unk40

	def_text_script CompText878DAD4_unk41

	def_text_script CompText878DAD4_unk42

	def_text_script CompText878DAD4_unk43

	def_text_script CompText878DAD4_unk44

	def_text_script CompText878DAD4_unk45

	def_text_script CompText878DAD4_unk46

	def_text_script CompText878DAD4_unk47

	def_text_script CompText878DAD4_unk48

	def_text_script CompText878DAD4_unk49

	def_text_script CompText878DAD4_unk50

	def_text_script CompText878DAD4_unk51

	def_text_script CompText878DAD4_unk52

	def_text_script CompText878DAD4_unk53

	def_text_script CompText878DAD4_unk54

	def_text_script CompText878DAD4_unk55

	def_text_script CompText878DAD4_unk56

	def_text_script CompText878DAD4_unk57

	def_text_script CompText878DAD4_unk58

	def_text_script CompText878DAD4_unk59

	def_text_script CompText878DAD4_unk60

	def_text_script CompText878DAD4_unk61

	def_text_script CompText878DAD4_unk62

	def_text_script CompText878DAD4_unk63

	def_text_script CompText878DAD4_unk64

	def_text_script CompText878DAD4_unk65

	def_text_script CompText878DAD4_unk66

	def_text_script CompText878DAD4_unk67

	def_text_script CompText878DAD4_unk68

	def_text_script CompText878DAD4_unk69

	