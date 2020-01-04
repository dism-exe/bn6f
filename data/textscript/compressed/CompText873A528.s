	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText873A528::
	.word 0x24C900

	text_archive_start

	def_text_script CompText873A528_unk0
	ts_check_area [
		lower: 0x6,
		upper: 0x6,
		jumpIfInRange: CompText873A528_unk70_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: CompText873A528_unk60_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x4,
		upper: 0x4,
		jumpIfInRange: CompText873A528_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText873A528_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: CompText873A528_unk20_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: CompText873A528_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x96,
		upper: 0x96,
		jumpIfInRange: CompText873A528_unk80_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x95,
		upper: 0x95,
		jumpIfInRange: CompText873A528_unk80_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x94,
		upper: 0x94,
		jumpIfInRange: CompText873A528_unk1_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x93,
		upper: 0x93,
		jumpIfInRange: CompText873A528_unk80_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x92,
		upper: 0x92,
		jumpIfInRange: CompText873A528_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x91,
		upper: 0x91,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x90,
		upper: 0x90,
		jumpIfInRange: CompText873A528_unk20_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x85,
		upper: 0x85,
		jumpIfInRange: CompText873A528_unk70_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x83,
		upper: 0x83,
		jumpIfInRange: CompText873A528_unk60_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x82,
		upper: 0x82,
		jumpIfInRange: CompText873A528_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x81,
		upper: 0x81,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x80,
		upper: 0x80,
		jumpIfInRange: CompText873A528_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x8C,
		upper: 0x8C,
		jumpIfInRange: CompText873A528_unk2_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x8D,
		upper: 0x8D,
		jumpIfInRange: CompText873A528_unk3_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_area [
		lower: 0x88,
		upper: 0x88,
		jumpIfInRange: CompText873A528_unk4_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText873A528_unk1
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x1,
		jumpIfInRange: CompText873A528_unk60_id,
		jumpIfOutOfRange: CompText873A528_unk10_id,
	]
	ts_end

	def_text_script CompText873A528_unk2
	ts_check_sub_area [
		lower: 0xB,
		upper: 0xF,
		jumpIfInRange: CompText873A528_unk60_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0xA,
		upper: 0xA,
		jumpIfInRange: CompText873A528_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x9,
		upper: 0x9,
		jumpIfInRange: CompText873A528_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x8,
		upper: 0x8,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x7,
		upper: 0x7,
		jumpIfInRange: CompText873A528_unk60_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x6,
		upper: 0x6,
		jumpIfInRange: CompText873A528_unk20_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x5,
		jumpIfInRange: CompText873A528_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: CompText873A528_unk20_id,
		jumpIfOutOfRange: CompText873A528_unk20_id,
	]
	ts_end

	def_text_script CompText873A528_unk3
	ts_check_sub_area [
		lower: 0xF,
		upper: 0xF,
		jumpIfInRange: CompText873A528_unk70_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0xE,
		upper: 0xE,
		jumpIfInRange: CompText873A528_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0xD,
		upper: 0xD,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0xC,
		upper: 0xC,
		jumpIfInRange: CompText873A528_unk70_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0xB,
		upper: 0xB,
		jumpIfInRange: CompText873A528_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x9,
		upper: 0xA,
		jumpIfInRange: CompText873A528_unk60_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x8,
		upper: 0x8,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x7,
		upper: 0x7,
		jumpIfInRange: CompText873A528_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x6,
		upper: 0x6,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: CompText873A528_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x4,
		upper: 0x4,
		jumpIfInRange: CompText873A528_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText873A528_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: CompText873A528_unk30_id,
		jumpIfOutOfRange: CompText873A528_unk30_id,
	]
	ts_end

	def_text_script CompText873A528_unk4
	ts_check_sub_area [
		lower: 0x6,
		upper: 0x6,
		jumpIfInRange: CompText873A528_unk60_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: CompText873A528_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: CompText873A528_unk40_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: CompText873A528_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: CompText873A528_unk20_id,
		jumpIfOutOfRange: CompText873A528_unk20_id,
	]
	ts_end

	def_text_script CompText873A528_unk5

	def_text_script CompText873A528_unk6

	def_text_script CompText873A528_unk7

	def_text_script CompText873A528_unk8

	def_text_script CompText873A528_unk9

	def_text_script CompText873A528_unk10
	ts_jump_random 0x47, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0xB, 0xC, 0xD, 0xE, 0xF, 0xFF, 0xFF
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "...I got a poem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Higsby's\n"
	.string " Always closed..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Even the squirrel\n"
	.string " is lonely.\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...How was it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Best so far..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That squirrel sure\n"
	.string "makes lonely faces\n"
	.string "doesn't it!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I knew it was a good\n"
	.string "one!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk11
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ahhhheemmm...."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'd like to read a\n"
	.string "poem that drifts in\n"
	.string "the air..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"I don't know where\n"
	.string " my old chips are"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " I asked Dad...\n"
	.string " I asked Mom...\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Hahahaha!\n"
	.string "That was great..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And true... I have\n"
	.string "no clue where my old\n"
	.string "chips are stashed!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I'll sing into the\n"
	.string "lonely wind of ACDC\n"
	.string "Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Higsby's\n"
	.string " Chip Trader\n"
	.string " is too big!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Now that you mention\n"
	.string "it... It is a bit\n"
	.string "too big..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wrote a poem about\n"
	.string "everyday problems..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"I have no dog\n"
	.string " So why is there\n"
	.string " a doghouse here?\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A while ago,there\n"
	.string "was a doghouse at\n"
	.string "your house...but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "there was no dog!\n"
	.string "Why? C'mon... Why?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "That was to scare\n"
	.string "away burglars!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk14
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "This poem is for\n"
	.string "ACDC Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"ACDC\n"
	.string " A town without cars\n"
	.string " and too many roads\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "There are cars out\n"
	.string "there sometimes!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk15
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The enjoyable days\n"
	.string "spent in ACDC..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think I will\n"
	.string "recite a poem about\n"
	.string "it..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Ahh that time...\n"
	.string " How I long for\n"
	.string " those fun days\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Ahhhhhh...\n"
	.string "Me too..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk16

	def_text_script CompText873A528_unk17

	def_text_script CompText873A528_unk18

	def_text_script CompText873A528_unk19

	def_text_script CompText873A528_unk20
	ts_jump_random 0x47, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x15, 0x16, 0x17, 0x18, 0x19, 0xFF, 0xFF
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,you're here!\n"
	.string "I had a light bulb\n"
	.string "of inspiration..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And a poem was born!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Don't you know?\n"
	.string " Lan always has\n"
	.string " the newest PET!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Haha! But now that\n"
	.string "you mention it,\n"
	.string "it's true!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk21
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The feeling of the\n"
	.string "expanding city in\n"
	.string "Central Town has"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "been captured in a\n"
	.string "poem by yours truly!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Are the neighbors\n"
	.string " next door rich?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Because they have\n"
	.string " a pool in the back\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Really?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk22
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I have created a\n"
	.string "poem to express to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the world the life\n"
	.string "inside of a PET!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"The Hikari house\n"
	.string " has a veranda"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " But there\n"
	.string " is no door"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " That's why you\n"
	.string " leave through\n"
	.string " the window!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Ahh,that's just how\n"
	.string "it is..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But what's up with\n"
	.string "the weird poems?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lemme guess...they\n"
	.string "are part of the\n"
	.string "poetic world?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk23
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I want you hear this\n"
	.string "poem... It comes\n"
	.string "right from my heart."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"I don't wanna jack\n"
	.string " in to the bathroom.\n"
	.string " So don't make me!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Don't get so upset!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk24
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "A poem for the\n"
	.string "LevBus..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"It's strange...\n"
	.string " Running in midair"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " I see the future.\n"
	.string " It's the LevBus\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yeah,you do kinda\n"
	.string "feel the future,\n"
	.string "don'tcha?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk25
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I made a poem about\n"
	.string "a memory of mine for\n"
	.string "Central Town..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"The Bird Statue\n"
	.string " Isn't it huge?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Maybe it's even\n"
	.string " Bigger than Mick!?\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "MegaMan,don't worry\n"
	.string "about stuff like\n"
	.string "that!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk26

	def_text_script CompText873A528_unk27

	def_text_script CompText873A528_unk28

	def_text_script CompText873A528_unk29

	def_text_script CompText873A528_unk30
	ts_jump_random 0x47, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x1F, 0x20, 0x21, 0x22, 0x23, 0xFF, 0xFF
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ahhh!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wrote a poem about\n"
	.string "the studious aura\n"
	.string "around the school!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"All the classmates\n"
	.string " at school look\n"
	.string " the same..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " ACDC School\n"
	.string " and Cyber Academy\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "You think so?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think I can tell\n"
	.string "the difference\n"
	.string "between everybody!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk31
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ahhhh!\n"
	.string "This smell!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It inspired me to\n"
	.string "write a poem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Mop on the floor\n"
	.string " Near the spout\n"
	.string " Smells like milk!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Man,it does smell\n"
	.string "awful..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But not enough to\n"
	.string "write a poem about\n"
	.string "it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "But I am trying to\n"
	.string "write poems about\n"
	.string "everyday things!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Like mops?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Yeah.Like mops."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk32
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ahh,I am soaked to\n"
	.string "the bone with\n"
	.string "inspiration!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So I wrote a poem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Did you know\n"
	.string " Colors of Hallways"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " 2nd Floor White\n"
	.string " 1st Floor Yellow\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Actually,I did know\n"
	.string "that! Strange,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I don't think it is\n"
	.string "strange,myself..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk33
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "A poem about the\n"
	.string "classroom camera..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"The camera shows\n"
	.string " sleeping students\n"
	.string " so perfectly..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " How long will they\n"
	.string " sleep?\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Hey! I don't sleep\n"
	.string "in class!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I didn't say you...\n"
	.string "Sleepyhead!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk34
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "A poem for the foyer\n"
	.string "of Cyber Academy..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"I don't see\n"
	.string " the janitor often"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " is he really\n"
	.string " always there?\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yep! He's there!\n"
	.string "Definitely there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk35
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ahhh...\n"
	.string "Sweet inspiration!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"So many cute faces\n"
	.string " The Security Bots\n"
	.string " at Cyber Academy!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "But if you make them\n"
	.string "mad... Look out!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk36

	def_text_script CompText873A528_unk37

	def_text_script CompText873A528_unk38

	def_text_script CompText873A528_unk39

	def_text_script CompText873A528_unk40
	ts_jump_random 0x47, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0xFF, 0xFF
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Read this poem,Lan!\n"
	.string "I just finished it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Honestly\n"
	.string " It's depressing"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Hard to go forward\n"
	.string " The SeasideArea\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Stepping on that\n"
	.string "one-way panel..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just thinking about\n"
	.string "it makes me mad!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Right?!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk41
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wrote a poem about\n"
	.string "the smell that"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "tickles your nose\n"
	.string "on the beach..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Idiot!\n"
	.string " Shouted\n"
	.string " At the Seaside"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " It disappears\n"
	.string " in the waves...\n"
	.string " Tickling you...\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I see..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Usually you try and\n"
	.string "hold it in,but it's\n"
	.string "really stressful!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So screaming at the\n"
	.string "sea to get rid of\n"
	.string "stress is great..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Even though it's\n"
	.string "really not that big\n"
	.string "of a deal..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Don't worry about\n"
	.string "it,Lan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The sea has the\n"
	.string "power to clear the\n"
	.string "soul..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So let's scream\n"
	.string "together!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IDIOT!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I...IDIOT!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk42
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The sea sure is\n"
	.string "nice..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The salty breeze...\n"
	.string "It pulls at your\n"
	.string "heartstrings..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So I wrote a poem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"The Seaside\n"
	.string " And its beautiful\n"
	.string " Aquarium"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Current events\n"
	.string " are very bad\n"
	.string " and no one's here.\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Haha...yeah,no one\n"
	.string "is here,huh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it's not because\n"
	.string "of the salty breeze!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk43
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "A poem for the\n"
	.string "turtles at the\n"
	.string "Aquarium..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"A hare runs a\n"
	.string " 1000 miles.\n"
	.string " You walk 10000."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " But can you really\n"
	.string " go that far?\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "They don't live THAT\n"
	.string "long! But it's nice\n"
	.string "to dream!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk44
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "There are lots of\n"
	.string "places to inspire me\n"
	.string "in Seaside Town..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "One inspired this\n"
	.string "poem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Inside a fat whale\n"
	.string " you can find a\n"
	.string " fat Director!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yeah,he is a bit\n"
	.string "plump,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xF
	.string "I'm not \"plump\"!"
	ts_wait frames=0x32
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "....What!?\n"
	.string "He can hear us!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Nope... It's got to\n"
	.string "be your imagination!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk45
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Did you know this\n"
	.string "story about\n"
	.string "Seaside Town..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Plata the Penguin\n"
	.string " Oh,how he tries\n"
	.string " to get away..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " But he can never\n"
	.string " say goodbye...\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Awww. I miss Plata!\n"
	.string "I wonder what he is\n"
	.string "doing now..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk46

	def_text_script CompText873A528_unk47

	def_text_script CompText873A528_unk48

	def_text_script CompText873A528_unk49

	def_text_script CompText873A528_unk50
	ts_jump_random 0x47, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x33, 0x34, 0x35, 0x36, 0x37, 0xFF, 0xFF
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ahh,the fresh air\n"
	.string "of Green Town..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It lights my passion\n"
	.string "for writing like\n"
	.string "only Green Town can!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Catching fish\n"
	.string " Catching criminals\n"
	.string " Both are judged\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Well done..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're getting\n"
	.string "better at this!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it's funny that\n"
	.string "a song inspired by"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the breeze was\n"
	.string "about fish!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk51
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The Minus Ions\n"
	.string "inspired a poem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Still here...\n"
	.string " Same mistakes\n"
	.string " Same place"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Hard to remember\n"
	.string " Green Area\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Hmmm... I guess...\n"
	.string "You must mean over\n"
	.string "there..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk52
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,I wrote a great\n"
	.string "poem to express the\n"
	.string "Green Town's beauty!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Beautiful Weather\n"
	.string " A Courthouse\n"
	.string " Lots of insects\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Can't argue with\n"
	.string "that!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk53
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wrote a poem about\n"
	.string "a question I have\n"
	.string "about the law..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Borrow a cookie\n"
	.string " Never to return\n"
	.string " Guilty or Innocent\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If it's guilty you\n"
	.string "better watch out!\n"
	.string "They'll catch you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "No they won't!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk54
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "This one's about the\n"
	.string "first time I saw a\n"
	.string "Punishment Robot..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Punishment Robots\n"
	.string " look just like\n"
	.string " Security Bots\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "They do look exactly\n"
	.string "the same!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	.string "*BEEP,"
	ts_sound_play00 track=0xCD
	ts_wait frames=0x28
	.string "BEEP,"
	ts_sound_play00 track=0xCD
	ts_wait frames=0x28
	.string "BEEP"
	ts_sound_play00 track=0xCD
	.string "!!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What's that sound!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk55
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "A poem about\n"
	.string "punishment..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Breaking the law\n"
	.string " Monumentally dumb"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Only shock awaits\n"
	.string " Punishment Room\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "The shock treatment\n"
	.string "is really scary!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk56

	def_text_script CompText873A528_unk57

	def_text_script CompText873A528_unk58

	def_text_script CompText873A528_unk59

	def_text_script CompText873A528_unk60
	ts_jump_random 0x47, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x3D, 0x3E, 0x3F, 0x40, 0x41, 0xFF, 0xFF
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The gentle breeze of\n"
	.string "Sky Town inspired a\n"
	.string "new poem..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"The air in Sky Town\n"
	.string " Very very thin..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " But everyone's fine\n"
	.string " other than Lan...\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "*whew* I'm fine!\n"
	.string "I can keep up!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Really! I'm not\n"
	.string "lying!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk61
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Hey Lan,\n"
	.string "I just wrote a poem,\n"
	.string "wanna hear it?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"If Sky Town moves\n"
	.string " the elevator\n"
	.string " will break\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "That's true!\n"
	.string "I wonder how they'd\n"
	.string "fix that..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Yeah...me too..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk62
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The sky in Sky Town\n"
	.string "whispered this poem\n"
	.string "to me..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Sky Town\n"
	.string " City in the sky\n"
	.string " Flashy to the end"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Sky Town Homepage\n"
	.string " Simple Antenna\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Exactly!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've always thought\n"
	.string "the same thing!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's like something\n"
	.string "from a regular\n"
	.string "Operator's Room!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk63
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wrote a poem\n"
	.string "about fear in\n"
	.string "Sky Town..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"You have to be\n"
	.string " careful not to fall\n"
	.string " from tall places..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " My legs won't\n"
	.string " stop shaking...\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yeah... I know how\n"
	.string "you feel!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk64
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I want to try being\n"
	.string "a weatherman once..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So I made this poem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"In my world\n"
	.string " the weather is\n"
	.string " always sunny!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yeah,but then\n"
	.string "there'd be a water\n"
	.string "shortage!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"In my world\n"
	.string " it would rain\n"
	.string " once a week!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "That's perfect!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk65
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The white clouds you\n"
	.string "can see from Sky\n"
	.string "Town inspired me..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"That Cloud\n"
	.string " Where will it go?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " A far of land...\n"
	.string " An unknown land...\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string " Romantic,huh..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Romantic,indeed..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk66

	def_text_script CompText873A528_unk67

	def_text_script CompText873A528_unk68

	def_text_script CompText873A528_unk69

	def_text_script CompText873A528_unk70
	ts_jump_random 0x47, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0xFF, 0xFF
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I was inspired by\n"
	.string "the Expo Site...\n"
	.string "So I wrote a poem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"The Expo Presents\n"
	.string " Future Dreams with\n"
	.string " Bad Mascots...\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "*sigh*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk71
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ahhh!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I just remembered\n"
	.string "this poem..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"New Moves\n"
	.string " You're Waiting"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " Everyone Gathers\n"
	.string " Expo Site\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How was it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "It's more commercial\n"
	.string "than poem,don't you\n"
	.string "think?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "...I think so too."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk72
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "All of a sudden\n"
	.string "a poem just came to\n"
	.string "me! Here it is!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"The truth is\n"
	.string " The Expo Site\n"
	.string " Is even bigger!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are you talking\n"
	.string "about!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The Expo Site is\n"
	.string "already huge!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Yeah... I guess...\n"
	.string "I wonder why I came\n"
	.string "up with that poem."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk73
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "A poem about the\n"
	.string "Expo management..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Taxes for the Expo\n"
	.string " Very very high..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " So make sure to get\n"
	.string " your money's\n"
	.string " worth!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "You gotta think\n"
	.string "positive,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk74
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Speaking of Expo,\n"
	.string "I wonder about that\n"
	.string "certain person..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"The Old Expo\n"
	.string " sponsor...\n"
	.string " Where is he?\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Mayor Cain...?\n"
	.string "Maybe Green Town's\n"
	.string "Punishment Room?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk75
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The poem you've all\n"
	.string "been waiting for...\n"
	.string "The Expo Poem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"The Expo...\n"
	.string " Everyone's excited\n"
	.string " What will happen?\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "...ummm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Everyone will see\n"
	.string " the future of man!\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Hahahaha!\n"
	.string "Nice one,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873A528_unk76

	def_text_script CompText873A528_unk77

	def_text_script CompText873A528_unk78

	def_text_script CompText873A528_unk79

	def_text_script CompText873A528_unk80
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,I can usually\n"
	.string "write a poem... But\n"
	.string "not around here..."
	ts_key_wait any=0x0
	ts_end

	