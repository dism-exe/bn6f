	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87859C0::
	.word 0x9B600

	text_archive_start

	def_text_script CompText87859C0_unk0
	ts_check_flag 0x6E, 0x4, 0x1, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Who!? Who is the\n"
	.string "one who hid the\n"
	.string "KeyData!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I came to see\n"
	.string "the huge crater in\n"
	.string "CentralArea3..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What a pain in the\n"
	.string "butt!"
	ts_key_wait 0x0
	ts_flag_set 0x6E, 0x4
	ts_end

	def_text_script CompText87859C0_unk1
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Grrrrrr!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This door won't\n"
	.string "open! I can't get\n"
	.string "into CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk2
	ts_check_flag 0x6F, 0x4, 0x3, 0xFF
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "The Net in Cyber\n"
	.string "City has high\n"
	.string "security in each"
	ts_key_wait 0x0
	ts_clear_msg
	.string "area,\n"
	.string "so if you don't know\n"
	.string "the requirements"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you can't move to\n"
	.string "the next area!"
	ts_key_wait 0x0
	ts_flag_set 0x6F, 0x4
	ts_end

	def_text_script CompText87859C0_unk3
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Thanks to the\n"
	.string "security,today\n"
	.string "will be peaceful!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk4
	ts_check_flag 0x70, 0x4, 0x5, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS CENTRAL\n"
	.string "AREA2."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THAT CHIP SHOP OVER\n"
	.string "THERE IS VERY\n"
	.string "POPULAR."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU SHOULD CHECK IT\n"
	.string "OUT."
	ts_key_wait 0x0
	ts_flag_set 0x70, 0x4
	ts_end

	def_text_script CompText87859C0_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS CENTRAL\n"
	.string "AREA2,AN AREA KNOWN\n"
	.string "FOR GREAT SHOPPING."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk6

	def_text_script CompText87859C0_unk7

	def_text_script CompText87859C0_unk8

	def_text_script CompText87859C0_unk9

	def_text_script CompText87859C0_unk10
	ts_check_flag 0x99, 0x4, 0xB, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Isn't this that\n"
	.string "spot on Mick's\n"
	.string "graffiti?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "The graffiti did\n"
	.string "have a picture of\n"
	.string "a Navi digging."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder what's\n"
	.string "under this panel?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Let's check it out!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "What's in here!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x6, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x0, 0x60
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Lan,this is that\n"
	.string "KeyData Mick was\n"
	.string "talking about!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Alright! Let's go\n"
	.string "check out Central\n"
	.string "Area3!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "OK!!"
	ts_key_wait 0x0
	ts_flag_set 0x99, 0x4
	ts_end

	def_text_script CompText87859C0_unk11

	def_text_script CompText87859C0_unk12

	def_text_script CompText87859C0_unk13

	def_text_script CompText87859C0_unk14

	def_text_script CompText87859C0_unk15
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I'm a member of\n"
	.string "the NetPolice."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I maintain order\n"
	.string "on the Net."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Be careful.There've\n"
	.string "been many dangerous\n"
	.string "incidents lately."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk16
	ts_mugshot_show 0x42
	ts_msg_open
	.string "No abnormalities!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk17
	ts_check_flag 0x83, 0x4, 0xFF, 0x12
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "The door isn't open\n"
	.string "yet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Darn! I can't go to\n"
	.string "CentralArea3 today\n"
	.string "either!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When am I going to\n"
	.string "get to see this\n"
	.string "legendary crater!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk18
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Yay!!\n"
	.string "The door's open!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now I can finally\n"
	.string "check out this huge\n"
	.string "hole!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk19

	def_text_script CompText87859C0_unk20
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "If you turn left,\n"
	.string "I think there's\n"
	.string "some mystery data."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This narrow alley\n"
	.string "looks kinda creepy."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk21
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Uhhh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think I heard\n"
	.string "a terrible voice\n"
	.string "from back there!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm still in shock."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk22
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Hey! Are you OK?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk23
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I wonder how you\n"
	.string "get to that path\n"
	.string "up there..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk24

	def_text_script CompText87859C0_unk25
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "What should I do?\n"
	.string "Should I buy a\n"
	.string "new chip?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I don't have\n"
	.string "much allowance\n"
	.string "left!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What to do...\n"
	.string "What to do..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "AHH!!\n"
	.string "I can't decide!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk26
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Huh? What am I\n"
	.string "doing?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I used up a little\n"
	.string "too much strength\n"
	.string "during a battle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm taking a break\n"
	.string "for a while...\n"
	.string "Whew... I'm tired!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87859C0_unk27
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "UP AHEAD IS THE\n"
	.string "FAMOUS CRATER IN\n"
	.string "CENTRALAREA3."
	ts_key_wait 0x0
	ts_clear_msg
	.string "SIGHTSEERS SHOULD\n"
	.string "REALLY ENJOY TAKING\n"
	.string "A PEEK!"
	ts_key_wait 0x0
	ts_end

	