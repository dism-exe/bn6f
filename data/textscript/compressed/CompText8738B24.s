	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8738B24::
	.word 0x2D7C00

	text_archive_start

	def_text_script CompText8738B24_unk0
	ts_check_area [
		lower: 0x6,
		upper: 0x6,
		jumpIfInRange: 0x46,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: 0x3C,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x4,
		upper: 0x4,
		jumpIfInRange: 0x32,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: 0x1E,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: 0x14,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x96,
		upper: 0x96,
		jumpIfInRange: 0x50,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x95,
		upper: 0x95,
		jumpIfInRange: 0x50,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x94,
		upper: 0x94,
		jumpIfInRange: 0x1,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x93,
		upper: 0x93,
		jumpIfInRange: 0x50,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x92,
		upper: 0x92,
		jumpIfInRange: 0x32,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x91,
		upper: 0x91,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x90,
		upper: 0x90,
		jumpIfInRange: 0x14,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x85,
		upper: 0x85,
		jumpIfInRange: 0x46,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x83,
		upper: 0x83,
		jumpIfInRange: 0x3C,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x82,
		upper: 0x82,
		jumpIfInRange: 0x32,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x81,
		upper: 0x81,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x80,
		upper: 0x80,
		jumpIfInRange: 0x1E,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x8C,
		upper: 0x8C,
		jumpIfInRange: 0x2,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x8D,
		upper: 0x8D,
		jumpIfInRange: 0x3,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_area [
		lower: 0x88,
		upper: 0x88,
		jumpIfInRange: 0x4,
		jumpIfOutOfRange: 0xFF,
	]
	ts_end

	def_text_script CompText8738B24_unk1
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x1,
		jumpIfInRange: 0x3C,
		jumpIfOutOfRange: 0xA,
	]
	ts_end

	def_text_script CompText8738B24_unk2
	ts_check_sub_area [
		lower: 0xB,
		upper: 0xF,
		jumpIfInRange: 0x3C,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0xA,
		upper: 0xA,
		jumpIfInRange: 0x32,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x9,
		upper: 0x9,
		jumpIfInRange: 0x1E,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x8,
		upper: 0x8,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x7,
		upper: 0x7,
		jumpIfInRange: 0x3C,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x6,
		upper: 0x6,
		jumpIfInRange: 0x14,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x5,
		jumpIfInRange: 0x1E,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: 0x14,
		jumpIfOutOfRange: 0x14,
	]
	ts_end

	def_text_script CompText8738B24_unk3
	ts_check_sub_area [
		lower: 0xF,
		upper: 0xF,
		jumpIfInRange: 0x46,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0xE,
		upper: 0xE,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0xD,
		upper: 0xD,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0xC,
		upper: 0xC,
		jumpIfInRange: 0x46,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0xB,
		upper: 0xB,
		jumpIfInRange: 0x1E,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x9,
		upper: 0xA,
		jumpIfInRange: 0x3C,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x8,
		upper: 0x8,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x7,
		upper: 0x7,
		jumpIfInRange: 0x1E,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x6,
		upper: 0x6,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: 0x1E,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x4,
		upper: 0x4,
		jumpIfInRange: 0x32,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: 0x32,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: 0x1E,
		jumpIfOutOfRange: 0x1E,
	]
	ts_end

	def_text_script CompText8738B24_unk4
	ts_check_sub_area [
		lower: 0x6,
		upper: 0x6,
		jumpIfInRange: 0x3C,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: 0x32,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: 0x28,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: 0x14,
		jumpIfOutOfRange: 0x14,
	]
	ts_end

	def_text_script CompText8738B24_unk5

	def_text_script CompText8738B24_unk6

	def_text_script CompText8738B24_unk7

	def_text_script CompText8738B24_unk8

	def_text_script CompText8738B24_unk9

	def_text_script CompText8738B24_unk10
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0xB, 0xC, 0xD, 0xE, 0xF, 0xFF, 0xFF
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x10,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,c'mon...\n"
	.string "Buy a chip..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "That again!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Buy...a...chip!!\n"
	.string "A chip...with dip!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I already told you\n"
	.string "no..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_text_speed [
		delay: 0x2,
	]
	ts_control_lock
	.string "Chip! "
	ts_wait [
		frames: 0xF,
	]
	.string "Chippy Chip! "
	ts_wait [
		frames: 0x28,
	]
	ts_clear_msg
	.string "Here's a tip! "
	ts_wait [
		frames: 0xF,
	]
	.string "Chip! "
	ts_wait [
		frames: 0x28,
	]
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_mugshot_show [
		mugshot: 0x58,
	]
	ts_sound_play00 [
		track: 0x192,
	]
	.string "BUY A CHIP NOWWWWW! "
	ts_wait [
		frames: 0x28,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "CHIP!! "
	ts_wait [
		frames: 0xF,
	]
	.string "CCCHHHIIPPP! "
	ts_wait [
		frames: 0x28,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Arrrrrghhh!!\n"
	.string "Are you crazy!?\n"
	.string "Or just broken!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk11
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,everytime I\n"
	.string "look at the\n"
	.string "Squirrel statue"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "in ACDC Town,I\n"
	.string "always think..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There is no way\n"
	.string "a pink squirrel\n"
	.string "actually exists..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Hmmm,I guess..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Probably..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk12
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "The Letter Song!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "MegaMan... Please...\n"
	.string "No... For my ears...\n"
	.string "Think of the kids..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Let's sing about\n"
	.string "Yai!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "First,comes Y!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Why Y?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A E I O U...and"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sometimes Y!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Next is A."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Nothing more to say!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Finally I."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yai's got no brows\n"
	.string "above her eyes!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Can't argue with\n"
	.string "that!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3,
	]
	.string "Somebody say\n"
	.string "something?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "*cough* Ummm... No..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk13
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Alright everyone!\n"
	.string "Three cheers..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "One!"
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "\n"
	.string "Two!"
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "\n"
	.string "Three!"
	ts_wait_skip [
		frames: 0x1E,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "MEGA MEGA MEGAMAN!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "........."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "MEGA MEGA MEGAMAN!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "........."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "MEGA MEGA MEGAMAN!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk14
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Didn't we attack\n"
	.string "a Catack lately?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I didn't say it,\n"
	.string "then,but how bout a\n"
	.string "Catack song!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Caaatttaaackkk!\n"
	.string "Caaatttaaackkk!\n"
	.string "Nothing it lacks!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hard as bone...\n"
	.string "Strong as stone..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "........."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,it is hard..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "As bone..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk15
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "You should joke\n"
	.string "sometimes,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Ummmm... OK..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "That's it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I got it!\n"
	.string "Hold on a sec..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Alright! Ready?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A wolf looks at\n"
	.string "a rabbit and says\n"
	.string "\"Howls it goin'\"?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "I'm still waiting\n"
	.string "for a joke..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "OK... I get it...\n"
	.string "I'm sorry for not\n"
	.string "ever laughing at"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "your jokes..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk16
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,do you know what\n"
	.string "time it is...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "*sigh*\n"
	.string "I have NO MONEY!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "CHIP BUYING TIME!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Spell it with me...\n"
	.string "N-O-M-O-N-E-Y!\n"
	.string "Now say:NO MONEY!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_text_speed [
		delay: 0x2,
	]
	ts_control_lock
	.string "Chip! "
	ts_wait [
		frames: 0xF,
	]
	.string "Chip! "
	ts_wait [
		frames: 0x28,
	]
	ts_clear_msg
	.string "My precious! "
	ts_wait [
		frames: 0xF,
	]
	.string "Chip! "
	ts_wait [
		frames: 0x28,
	]
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_mugshot_show [
		mugshot: 0x59,
	]
	ts_sound_play00 [
		track: 0x193,
	]
	.string "I WON'T ASK AGAIN!!! "
	ts_wait [
		frames: 0x28,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Chip! "
	ts_wait [
		frames: 0xF,
	]
	.string "CHIPPPPPPPP!!! "
	ts_wait [
		frames: 0x28,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I think you're\n"
	.string "actually a virus\n"
	.string "on my wallet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk17

	def_text_script CompText8738B24_unk18

	def_text_script CompText8738B24_unk19

	def_text_script CompText8738B24_unk20
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x15, 0x16, 0x17, 0x18, 0x19, 0xFF, 0xFF
	ts_msg_open
	.string "Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm having bad bed\n"
	.string "head so I don't\n"
	.string "want to go out..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Bed head..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't worry about\n"
	.string "that... Come on out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "Ok,but don't laugh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Alright..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_wait [
		frames: 0xF,
	]
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "HAHAHAHAHAHA!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "Look... You laughed!\n"
	.string "I know my hair isn't\n"
	.string "its usual self..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "It's not just your\n"
	.string "hair..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk21
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "OK,let's go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There's a Gunner...\n"
	.string "\"No match for the\n"
	.string " mighty MegaMan!!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "*sigh*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "This Gunner's a\n"
	.string "goner!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	ts_mugshot_animation [
		animation: 0x3,
	]
	.string "*double sigh*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_animation [
		animation: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Hey! Wait a second!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk22
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "I wrote a song for\n"
	.string "Central Town...\n"
	.string "Wanna hear it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Lalalalala!\n"
	.string "I hear nothing!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ulalalala!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Huh? I've already\n"
	.string "sung the song for\n"
	.string "you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Ummm... I heard it\n"
	.string "when you were\n"
	.string "practicing!... Yeah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Awww...\n"
	.string "I was so excited..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk23
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Letter Song Time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I'll buy you a\n"
	.string "chip if you don't\n"
	.string "sing..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Cyber City Song!\n"
	.string "C-Y-B-E-R!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Lemme guess...\n"
	.string "First is C..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Why are you singing?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Yep... Y is next!\n"
	.string "Y ask questions!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Your singing is\n"
	.string "sorta bad!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Not as B-ad as\n"
	.string "yours!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Even I wouldn't\n"
	.string "make jokes that\n"
	.string "awful... Enough!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "E...aww...\n"
	.string "Why can't we just\n"
	.string "sing normal songs!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk24
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hey MegaMan,\n"
	.string "you got any good\n"
	.string "jokes for me?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "I thought you'd\n"
	.string "never ask...\n"
	.string "I'll get ready!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "In the Cyberworld,\n"
	.string "just changing a\n"
	.string "Navi's program can"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "make us do lots of\n"
	.string "things..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Today,I've prepared\n"
	.string "a difficult and\n"
	.string "shocking new move..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Watch my nose OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Booger LongSwrd!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Ewww! Gross!!\n"
	.string "Huuuuuub!!!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk25
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,do you ever get\n"
	.string "the feeling that\n"
	.string "someone is operating"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "you... Like you\n"
	.string "aren't in control of\n"
	.string "yourself?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What do you mean?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "You operate me,\n"
	.string "right? Well,what if\n"
	.string "someone was"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "operating you like\n"
	.string "some kind of game?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What if you weren't\n"
	.string "really in control?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "You mean someone\n"
	.string "is operating me!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm not a Navi,I'm\n"
	.string "a person!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Why would anyone\n"
	.string "operate me like I'm\n"
	.string "the star of a game?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A game in its 6th\n"
	.string "hit installment\n"
	.string "perhaps..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Are you feeling\n"
	.string "alright MegaMan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Sorry...\n"
	.string "I'm just saying...\n"
	.string "What if?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk26

	def_text_script CompText8738B24_unk27

	def_text_script CompText8738B24_unk28

	def_text_script CompText8738B24_unk29

	def_text_script CompText8738B24_unk30
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x1F, 0x20, 0x21, 0x22, 0x23, 0xFF, 0xFF
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Hot!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hot! Hot! Hottttt!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Lan!\n"
	.string "Be careful not to\n"
	.string "get burned,OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You keep saying hot!\n"
	.string "What's so hot,\n"
	.string "anyways?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_text_speed [
		delay: 0x3,
	]
	.string "Well..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm so hot..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "More like crazy..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk31
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Hey Lan,\n"
	.string "you know \n"
	.string "Cyber Academy..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Where are the\n"
	.string "classrooms for 2nd\n"
	.string "to 5th grades...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Tell meeeeee!\n"
	.string "They must be around\n"
	.string "here somewhere!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "*sigh*"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk32
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "Ahhhhh!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "*huff* *huff*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I just had a\n"
	.string "terrible nightmare!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's why I'm so\n"
	.string "blue right now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "You've always been\n"
	.string "blue MegaMan."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "HUH!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Haha! You just now\n"
	.string "realized you're\n"
	.string "blue?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk33
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Letter Song Time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Not again..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "This time it's\n"
	.string "\"SCHOOL\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "First is S..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Your -S-inging is\n"
	.string "breaking glass!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Next is C!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "-C-ool enough for\n"
	.string "me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Then comes H!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "-H-ard to disagree."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Then comes double\n"
	.string "O!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Oooooooooooooooooo!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Last comes L!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "-L-ate for the bell!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Wow,that was great!\n"
	.string "The song was cool,\n"
	.string "except for one part!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Does everyone know\n"
	.string "what Ooooooooooooo\n"
	.string "means?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Whaddya mean\n"
	.string "everyone?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "*sigh*"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk34
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,I've got a\n"
	.string "new joke I wanna\n"
	.string "tell you! OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Alright. Go ahead."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Here we go..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My most feared\n"
	.string "enemy is the\n"
	.string "GigaCorn. Know why?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Because it makes\n"
	.string "my feet hurt!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "How was it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Hahaha...\n"
	.string "That was a really\n"
	.string "corny joke!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I like jokes like\n"
	.string "that!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Awesome!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk35
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Hey,Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I heard that\n"
	.string "Cyber Academy is\n"
	.string "haunted!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "O Rly?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_text_speed [
		delay: 0x3,
	]
	.string "Ya Rly! You can hear\n"
	.string "them go \"Woooooooo\"\n"
	.string "at night..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And then the old man\n"
	.string "who is the security\n"
	.string "guard..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "It's too scary!\n"
	.string "Don't tell me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wait... That's not\n"
	.string "scary at all!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk36

	def_text_script CompText8738B24_unk37

	def_text_script CompText8738B24_unk38

	def_text_script CompText8738B24_unk39

	def_text_script CompText8738B24_unk40
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0xFF, 0xFF
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Letter Song Time!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "NooooOOOOOoooo!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "This time the word\n"
	.string "is \"Whale\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "First is W..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Why is there nothing\n"
	.string "that starts with W!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Next is H..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A whale is -H-uge!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Third is A..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Whales are \n"
	.string "-A-wesome!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Next is L..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I -l-ove the letter\n"
	.string "song!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Finally E!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "-E-nding a song on\n"
	.string "a high note..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Well...\n"
	.string "That one won't be\n"
	.string "winning any awards!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk41
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Umm...Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't you get tired\n"
	.string "of saying the same\n"
	.string "thing over and over?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You mind if I come\n"
	.string "up with something\n"
	.string "new to say?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I guess that's fine\n"
	.string "with me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Alright...go for it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "For great justice!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "*sigh*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "For greater justice?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk42
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "I called for a\n"
	.string "guest today!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Today's guest is\n"
	.string "the Director of the\n"
	.string "Aquarium!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0xF,
	]
	.string "Thank you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Today,I will be\n"
	.string "taking MegaMan's\n"
	.string "place as a joker!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Allow me to begin!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Shrimps are shrimpy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "HAHAHAHAHAHAHAHAHA!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Umm....\n"
	.string "Mr.Director..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That must be a\n"
	.string "grown-up joke,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0xF,
	]
	.string "Exactly."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk43
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "You know the\n"
	.string "Seaside Town\n"
	.string "Aquarium..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They don't have a\n"
	.string "single fish worth\n"
	.string "seeing there!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They should put a\n"
	.string "Lark into a CopyBot\n"
	.string "and let it swim..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It might even bring\n"
	.string "in more customers!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "You are kinda\n"
	.string "mean today,MegaMan."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Ehhh... It's just\n"
	.string "one of those days!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk44
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hey MegaMan,\n"
	.string "tell me a joke about\n"
	.string "Seaside Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "You can't just\n"
	.string "expect a good joke\n"
	.string "in an instant!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm no turtle...\n"
	.string "Storing jokes for\n"
	.string "stormy seas!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Hahaha!!\n"
	.string "Nice one!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk45
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Hey! HEYYYY!!\n"
	.string "What er youse\n"
	.string "doin',fathead!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You move and\n"
	.string "I'm gonna whack\n"
	.string "ya! Fuggetaboutit!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "How was it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I was trying the\n"
	.string "Mafia version of\n"
	.string "the TalkPgrm!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Doesn't really fit\n"
	.string "does it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk46

	def_text_script CompText8738B24_unk47

	def_text_script CompText8738B24_unk48

	def_text_script CompText8738B24_unk49

	def_text_script CompText8738B24_unk50
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x33, 0x34, 0x35, 0x36, 0x37, 0xFF, 0xFF
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Hey Hey! Ho Ho!\n"
	.string "Time for MegaMan's\n"
	.string "Quiz Show!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Quizzzzz Showwwww!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Alright! Question\n"
	.string "time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "How much does\n"
	.string "Mr.Prog weigh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "1.20 grams\n"
	.string "2.40 grams\n"
	.string "3.1 ton"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Ummm...hmmm...\n"
	.string "I say number 2!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "WRONG!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "The right answer\n"
	.string "isn't there! Loser!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "You! You! Cheater!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x4,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you don't cheat\n"
	.string "sometimes,you can't\n"
	.string "play good jokes!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Yeah... Yeah..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wait... What're you\n"
	.string "talking about\n"
	.string "anyways?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk51
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Prosecutor Ito once\n"
	.string "said..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"This case was a\n"
	.string " breeze!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"The criminal was\n"
	.string " right in front of\n"
	.string " us!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "That's not a joke!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Oops...sorry!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk52
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Say it with me...\n"
	.string "LETTER SONG TIME!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Yikes!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "This time it is\n"
	.string "about the flowers\n"
	.string "of Green Town..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "FLOWER!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x1,
	]
	.string "Hahahahahahaha!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	.string "Hohohohohohoho!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x1,
	]
	.string "Hehehehehehehe!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "HUH!?!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Sorry...too much\n"
	.string "pollen makes me\n"
	.string "sneeze!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk53
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Wanna see an\n"
	.string "impression?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This is an\n"
	.string "impression of\n"
	.string "Yuika!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Teeheeheehee!\n"
	.string "Lahahahahaha!\n"
	.string "YYYYaaaaaaahhh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect [
		effect: 0x3,
	]
	.string "RRRRRRRR!!"
	ts_wait [
		frames: 0x80,
	]
	ts_call_p_e_t_effect [
		effect: 0x1,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "*CLICK*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	.string "That's rude!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I don't say\n"
	.string "YYYYaaaaaahhh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm too cute for\n"
	.string "that! So be quiet,\n"
	.string "please!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "*CLICK*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "No way!\n"
	.string "Did you hear that!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk54
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ahhh."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x3C,
	]
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xC3,
	]
	.string "*BOOM!!*"
	ts_wait [
		frames: 0x1E,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Sorry..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I made a hole..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "WOW!!!!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk55
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Someone once sang..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"You're so guilty!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"You stole my\n"
	.string " heart!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Whoa...\n"
	.string "too much\n"
	.string "information!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk56

	def_text_script CompText8738B24_unk57

	def_text_script CompText8738B24_unk58

	def_text_script CompText8738B24_unk59

	def_text_script CompText8738B24_unk60
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x3D, 0x3E, 0x3F, 0x40, 0x41, 0xFF, 0xFF
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Impression time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "First up is\n"
	.string "BlastMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Kwohohohohohoho!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Hahaha! Not bad!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Next is Lan Hikari!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Huh!? Me!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_control_lock
	ts_text_speed [
		delay: 0x1,
	]
	.string "Jack in!"
	ts_wait [
		frames: 0xA,
	]
	.string "\n"
	.string "MegaMan,"
	ts_wait [
		frames: 0xA,
	]
	.string "\n"
	.string "Execute!!"
	ts_wait [
		frames: 0x28,
	]
	ts_control_unlock
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	.string "Hehehe..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I don't talk like\n"
	.string "that!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk61
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "What do Lan's head\n"
	.string "and Sky Town have\n"
	.string "in common?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I dunno?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "They're both\n"
	.string "filled with air!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Hey! I'm no\n"
	.string "airhead!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk62
	ts_msg_open
	.string "MegaMan is not in\n"
	.string "the PET..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Huh? MegaMan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Fooled you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "When you see that\n"
	.string "message,you get\n"
	.string "lonely,don't you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Not...Not really!\n"
	.string "Not lonely at all!\n"
	.string "*sniff* *sniff*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "*sob* I'm sorry,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk63
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "LETTER SONG TIME!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Aye-ya-yae!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's sing about\n"
	.string "\"SKY\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "First comes the S!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "-S-uper cool city!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "The K in Sky!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "-K-ind of high!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "The Y in Sky!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Yikes! I can fly!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Perfect!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk64
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "When I jack in,\n"
	.string "you always press\n"
	.string "my NaviMark..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You do know you\n"
	.string "don't have to do\n"
	.string "that right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I didn't know that!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But if I don't,it\n"
	.string "just doesn't feel\n"
	.string "right!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk65
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "HELLO AND HELLO!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WHEN MEGAMAN ISN'T\n"
	.string "INSIDE THE PET,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'M THE PROGRAM\n"
	.string "THAT WATCHES OVER\n"
	.string "THE PET'S FUNCTIONS."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Since it takes care\n"
	.string "of home for me,I let\n"
	.string "it say something..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sometimes..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "I DON'T HAVE MUCH\n"
	.string "OF A PERSONALITY..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THIS IS THE REAL ME!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk66

	def_text_script CompText8738B24_unk67

	def_text_script CompText8738B24_unk68

	def_text_script CompText8738B24_unk69

	def_text_script CompText8738B24_unk70
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0xFF, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0xFF, 0xFF
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "I came up with a\n"
	.string "great new joke!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Amanda is a man,duh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x10,
	]
	.string "Amanda is a\n"
	.string "perfectly acceptable\n"
	.string "girl's name!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "I see!!"
	ts_wait [
		frames: 0x1E,
	]
	.string "\n"
	.string "Who are you again!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk71
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,haven't you been\n"
	.string "oversleeping lately?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Speaking of that..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "It's a secret,but..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I put a TimeBomb\n"
	.string "under your pillow to\n"
	.string "wake you up on time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "HUH!? No wonder I've\n"
	.string "been in pain when I\n"
	.string "wake up!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Heeeyyyy! MegaMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk72
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	ts_msg_open
	.string "Boo!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_wait [
		frames: 0x1E,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Yo Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Just a second ago...\n"
	.string "Wai...Wai...Wai..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Wai? What's that\n"
	.string "mean?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Wai..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It doesn't mean\n"
	.string "anything... I'm\n"
	.string "just tired..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1D,
	]
	.string "Exactly! You're just\n"
	.string "tired! By the way,\n"
	.string "it's Wi,not Wai!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x43,
	]
	.string "No Wai?\n"
	.string "Don't play jokes\n"
	.string "on me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_wait [
		frames: 0x1E,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "It's awful!\n"
	.string "The PET has been\n"
	.string "hacked!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "No Wai!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk73
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "What do 1st grade\n"
	.string "math class and\n"
	.string "Lan have in common?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I dunno?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "They're both\n"
	.string "simple minded!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Shuddup!!\n"
	.string "You're embarrassing\n"
	.string "me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "That's simple too..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "You got a point."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk74
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Alright Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They say if a\n"
	.string "comedian is in a\n"
	.string "funny environment"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "even a boring\n"
	.string "joke can be funny!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I think this would\n"
	.string "be a good time to\n"
	.string "try that theory!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ready!?\n"
	.string "...Taadaa!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Huh....?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Arrrgghhh!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk75
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You and I...\n"
	.string "We've been fighting\n"
	.string "together forever..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "No matter what...\n"
	.string "You can be my\n"
	.string "wingman anytime..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "How was it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't I sound like\n"
	.string "Baryl?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x53,
	]
	.string "Nothing like him at\n"
	.string "all!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Ahhhh!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That was Colonel!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8738B24_unk76

	def_text_script CompText8738B24_unk77

	def_text_script CompText8738B24_unk78

	def_text_script CompText8738B24_unk79

	def_text_script CompText8738B24_unk80
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,\n"
	.string "no matter how much\n"
	.string "humor you pump into"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "me...this is no\n"
	.string "place to be telling\n"
	.string "jokes!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	