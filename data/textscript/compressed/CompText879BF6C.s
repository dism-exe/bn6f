	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879BF6C::
	.word 0xD9200

	text_archive_start

	def_text_script CompText879BF6C_unk0
	ts_check_flag [
		flag: 0x863,
		jumpIfTrue: CompText879BF6C_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x863
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Huh? What are we\n"
	.string "doing?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We are studying\n"
	.string "for the bar exam\n"
	.string "to be lawyers."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We call our group\n"
	.string "\"Lawyers in the\n"
	.string " Making\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We are making our\n"
	.string "future by studying."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And the goal of\n"
	.string "our studies is to\n"
	.string "become lawyers!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Are you planning\n"
	.string "on becoming a\n"
	.string "lawyer too?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Umm... Nope...\n"
	.string "But that's not\n"
	.string "a bad thing!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "So then you must\n"
	.string "want to be a\n"
	.string "judge?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't recommend\n"
	.string "trying to become\n"
	.string "a judge..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Not many people\n"
	.string "pass the judge's\n"
	.string "test..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should try to\n"
	.string "become a lawyer!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll let you in\n"
	.string "our group cheap!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Hahaha...\n"
	.string "Maybe next time!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk1
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Want to try and\n"
	.string "become a lawyer?\n"
	.string "You can join"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Lawyers in the\n"
	.string " Making\"!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you join now\n"
	.string "the membership fee\n"
	.string "will be discounted!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk2
	ts_check_flag [
		flag: 0x87C,
		jumpIfTrue: CompText879BF6C_unk3_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "You changed your\n"
	.string "mind?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You'd like to\n"
	.string "become a lawyer\n"
	.string "and join"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Lawyers in the\n"
	.string " Making\"!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_mugshot_show mugshot=0x41
	.string "I forgot to mention\n"
	.string "the membership fee\n"
	.string "is 1000 Zennys."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "It's that much?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "If you think of\n"
	.string "how much you'd make\n"
	.string "as a lawyer,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it's really\n"
	.string "a bargain!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "...OK."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0xD
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Pay  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Don't pay"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_check_take_zenny [
		amount: 0x3E8,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText879BF6C_unk11_id,
		jumpIfSome: CompText879BF6C_unk11_id,
	]
	.string "MegaMan paid\n"
	.string "1000 Zennys."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Now you are a\n"
	.string "member of \"Lawyers\n"
	.string "in the Making\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you keep\n"
	.string "studying here,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you too will become\n"
	.string "a specialist in the\n"
	.string "law."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do your best!!\n"
	.string "Someday you'll be\n"
	.string "a lawyer!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x87C
	ts_end

	def_text_script CompText879BF6C_unk3
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "If you keep\n"
	.string "studying here,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you too will become\n"
	.string "a specialist in the\n"
	.string "law."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do your best!!\n"
	.string "Someday you'll be\n"
	.string "a lawyer!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk4
	ts_check_flag [
		flag: 0x873,
		jumpIfTrue: CompText879BF6C_unk5_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x873
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "AHH! You're here!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Lawyers in the\n"
	.string " Making\" is always\n"
	.string "open!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Study whenever\n"
	.string "you'd like!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Huh?\n"
	.string "What?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "NetNavi Rights?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yes,they do have\n"
	.string "those,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and it is covered\n"
	.string "by Green Town Law\n"
	.string "No.153,I believe."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's the kind of\n"
	.string "zeal for studying\n"
	.string "we like to see!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm so pleased!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk5
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "NetNavi Rights\n"
	.string "should be covered\n"
	.string "by Green Town Law"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No.153 if my memory\n"
	.string "serves me correctly."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's the kind of\n"
	.string "zeal for studying\n"
	.string "we like to see!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm so pleased!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk6
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "...That's a shame..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk7
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "...Hmmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So sneaking a snack\n"
	.string "isn't a crime..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That makes perfect\n"
	.string "sense!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x40
	.string "Don't jump to\n"
	.string "conclusions!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you snuck a\n"
	.string "snack of caviar..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That would be a\n"
	.string "first-class crime!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "Hmmm...\n"
	.string "I suppose you're\n"
	.string "right."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But wait a second!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What if the caviar\n"
	.string "that was snuck as a\n"
	.string "snack was expired?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The person who snuck\n"
	.string "that snack would\n"
	.string "feel awfully sick!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Then it would be\n"
	.string "a crime against the\n"
	.string "snack sneaker!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x40
	.string "Hmmmm...\n"
	.string "A compelling\n"
	.string "argument indeed!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk8
	ts_check_flag [
		flag: 0x866,
		jumpIfTrue: CompText879BF6C_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x87C,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText879BF6C_unk7_id,
	]
	ts_check_flag [
		flag: 0x865,
		jumpIfTrue: CompText879BF6C_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "A new member?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Pleased to meet\n"
	.string "you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you ever need\n"
	.string "help just ask me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What happens if you\n"
	.string "hit a Mr.Prog on\n"
	.string "the head?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I know I just\n"
	.string "studied this..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "Hmm."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "Hmm"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh! I remember!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you hit a\n"
	.string "Mr.Prog on the\n"
	.string "head,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The punishment is\n"
	.string "something that is\n"
	.string "infuriating!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "It's true! Really!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The last time I hit\n"
	.string "one,the punishment\n"
	.string "got me so mad!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x865
	ts_end

	def_text_script CompText879BF6C_unk9
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "If you hit a\n"
	.string "Mr.Prog on the\n"
	.string "head..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The punishment is\n"
	.string "something that is\n"
	.string "infuriating!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "It's true! Really!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The last time I hit\n"
	.string "one,the punishment\n"
	.string "got me so mad!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk10
	ts_check_flag [
		flag: 0x87C,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText879BF6C_unk7_id,
	]
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "...I found out\n"
	.string "about this a while\n"
	.string "ago...I hear those"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "who pick up Zennys\n"
	.string "on the ground\n"
	.string "without reporting it"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "are tickled as their\n"
	.string "punishment!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That sounds\n"
	.string "terrible..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk11
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "...Not enough\n"
	.string "here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The membership fee\n"
	.string "is a rule,so come"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "back when you've\n"
	.string "saved enough money."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879BF6C_unk12

	def_text_script CompText879BF6C_unk13

	def_text_script CompText879BF6C_unk14

	def_text_script CompText879BF6C_unk15

	def_text_script CompText879BF6C_unk16

	def_text_script CompText879BF6C_unk17

	def_text_script CompText879BF6C_unk18

	def_text_script CompText879BF6C_unk19

	def_text_script CompText879BF6C_unk20

	def_text_script CompText879BF6C_unk21

	def_text_script CompText879BF6C_unk22

	def_text_script CompText879BF6C_unk23

	def_text_script CompText879BF6C_unk24

	def_text_script CompText879BF6C_unk25

	def_text_script CompText879BF6C_unk26

	def_text_script CompText879BF6C_unk27

	def_text_script CompText879BF6C_unk28

	def_text_script CompText879BF6C_unk29

	def_text_script CompText879BF6C_unk30

	def_text_script CompText879BF6C_unk31

	def_text_script CompText879BF6C_unk32

	def_text_script CompText879BF6C_unk33

	def_text_script CompText879BF6C_unk34

	def_text_script CompText879BF6C_unk35

	def_text_script CompText879BF6C_unk36

	def_text_script CompText879BF6C_unk37

	def_text_script CompText879BF6C_unk38

	def_text_script CompText879BF6C_unk39

	def_text_script CompText879BF6C_unk40

	def_text_script CompText879BF6C_unk41

	def_text_script CompText879BF6C_unk42

	def_text_script CompText879BF6C_unk43

	def_text_script CompText879BF6C_unk44

	def_text_script CompText879BF6C_unk45

	def_text_script CompText879BF6C_unk46

	def_text_script CompText879BF6C_unk47

	def_text_script CompText879BF6C_unk48

	def_text_script CompText879BF6C_unk49

	def_text_script CompText879BF6C_unk50

	def_text_script CompText879BF6C_unk51

	def_text_script CompText879BF6C_unk52

	def_text_script CompText879BF6C_unk53

	def_text_script CompText879BF6C_unk54

	def_text_script CompText879BF6C_unk55

	def_text_script CompText879BF6C_unk56

	def_text_script CompText879BF6C_unk57

	def_text_script CompText879BF6C_unk58

	def_text_script CompText879BF6C_unk59

	def_text_script CompText879BF6C_unk60

	def_text_script CompText879BF6C_unk61

	def_text_script CompText879BF6C_unk62

	def_text_script CompText879BF6C_unk63

	def_text_script CompText879BF6C_unk64

	def_text_script CompText879BF6C_unk65

	def_text_script CompText879BF6C_unk66

	def_text_script CompText879BF6C_unk67

	def_text_script CompText879BF6C_unk68

	def_text_script CompText879BF6C_unk69

	def_text_script CompText879BF6C_unk70

	def_text_script CompText879BF6C_unk71

	def_text_script CompText879BF6C_unk72

	def_text_script CompText879BF6C_unk73

	def_text_script CompText879BF6C_unk74

	def_text_script CompText879BF6C_unk75

	def_text_script CompText879BF6C_unk76

	def_text_script CompText879BF6C_unk77

	def_text_script CompText879BF6C_unk78

	def_text_script CompText879BF6C_unk79

	def_text_script CompText879BF6C_unk80

	def_text_script CompText879BF6C_unk81

	def_text_script CompText879BF6C_unk82

	def_text_script CompText879BF6C_unk83

	def_text_script CompText879BF6C_unk84

	def_text_script CompText879BF6C_unk85

	def_text_script CompText879BF6C_unk86

	def_text_script CompText879BF6C_unk87

	def_text_script CompText879BF6C_unk88

	def_text_script CompText879BF6C_unk89

	def_text_script CompText879BF6C_unk90

	def_text_script CompText879BF6C_unk91

	def_text_script CompText879BF6C_unk92

	def_text_script CompText879BF6C_unk93

	def_text_script CompText879BF6C_unk94

	def_text_script CompText879BF6C_unk95

	def_text_script CompText879BF6C_unk96

	def_text_script CompText879BF6C_unk97

	def_text_script CompText879BF6C_unk98

	def_text_script CompText879BF6C_unk99

	