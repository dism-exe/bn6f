	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D4190::
	.word 0x118900

	text_archive_start

	def_text_script CompText87D4190_unk0

	def_text_script CompText87D4190_unk1

	def_text_script CompText87D4190_unk2

	def_text_script CompText87D4190_unk3

	def_text_script CompText87D4190_unk4

	def_text_script CompText87D4190_unk5

	def_text_script CompText87D4190_unk6

	def_text_script CompText87D4190_unk7

	def_text_script CompText87D4190_unk8

	def_text_script CompText87D4190_unk9

	def_text_script CompText87D4190_unk10

	def_text_script CompText87D4190_unk11

	def_text_script CompText87D4190_unk12

	def_text_script CompText87D4190_unk13

	def_text_script CompText87D4190_unk14

	def_text_script CompText87D4190_unk15

	def_text_script CompText87D4190_unk16

	def_text_script CompText87D4190_unk17

	def_text_script CompText87D4190_unk18

	def_text_script CompText87D4190_unk19

	def_text_script CompText87D4190_unk20

	def_text_script CompText87D4190_unk21

	def_text_script CompText87D4190_unk22

	def_text_script CompText87D4190_unk23

	def_text_script CompText87D4190_unk24

	def_text_script CompText87D4190_unk25

	def_text_script CompText87D4190_unk26

	def_text_script CompText87D4190_unk27

	def_text_script CompText87D4190_unk28

	def_text_script CompText87D4190_unk29

	def_text_script CompText87D4190_unk30

	def_text_script CompText87D4190_unk31
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87D4190_unk33_id,
	]
	ts_msg_open
	ts_store_timer [
		timer: 0x1,
		value: 0x80,
	]
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x193
	.string "*screeeeech!!*"
	ts_wait frames=0x46
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var [
		variable: 0x1,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x1,
		value: 0x82,
	]
	ts_end

	def_text_script CompText87D4190_unk32

	def_text_script CompText87D4190_unk33
	ts_msg_open
	ts_store_timer [
		timer: 0x1,
		value: 0x80,
	]
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x191
	.string "*grrrrrrrrr!!*"
	ts_wait frames=0x5A
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var [
		variable: 0x1,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x1,
		value: 0x82,
	]
	ts_end

	def_text_script CompText87D4190_unk34
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Iris,control the\n"
	.string "Cybeast,and be my\n"
	.string "arms and legs."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Go cover the world\n"
	.string "in fear and\n"
	.string "confusion!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk35_id

	def_text_script CompText87D4190_unk35
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk36_id

	def_text_script CompText87D4190_unk36
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Wait,Iris!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D4190_unk37
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "T-That's...the\n"
	.string "CopyBot from the\n"
	.string "school's lobby..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Iris is...\n"
	.string "inside the Cybeast!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan! Iris is..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk38_id

	def_text_script CompText87D4190_unk38
	ts_mugshot_show mugshot=0x2F
	ts_msg_open
	.string "I'll take care of\n"
	.string "that Cybeast..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D4190_unk39
	ts_mugshot_show mugshot=0x2F
	ts_msg_open
	.string "If Iris and Colonel\n"
	.string "become one again,\n"
	.string "and Colonel becomes"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "his old self,we may\n"
	.string "be able to beat the\n"
	.string "Cybeast."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk40_id

	def_text_script CompText87D4190_unk40
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Mwahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Too bad,but you\n"
	.string "should give up on\n"
	.string "that foolish idea."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When I split Colonel\n"
	.string "into 2,I installed a\n"
	.string "little program that"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "would delete them\n"
	.string "automatically if\n"
	.string "they should try to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "become 1 again! Ah,\n"
	.string "what a heartwarming\n"
	.string "instant it would be!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wahahahahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk41_id

	def_text_script CompText87D4190_unk41
	ts_mugshot_show mugshot=0x2F
	ts_msg_open
	.string "Ngh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They may not become\n"
	.string "1,but at least it\n"
	.string "will stop Iris!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Jack in!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Colonel,\n"
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D4190_unk42
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Baryl!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He-He's bleeding!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk43_id

	def_text_script CompText87D4190_unk43
	ts_mugshot_show mugshot=0x2F
	ts_msg_open
	.string "Go get her...\n"
	.string "Colonel..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D4190_unk44
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Dr.Wily!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk45_id

	def_text_script CompText87D4190_unk45
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "You insolent fool!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You may have sent\n"
	.string "Colonel in,but\n"
	.string "you're too late!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Iris!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D4190_unk46
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87D4190_unk47_id,
	]
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x1,
		value: 0x83,
	]
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x193
	.string "*screeeeeeech!!*"
	ts_wait frames=0x46
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var [
		variable: 0x1,
		value: 0x84,
	]
	ts_store_timer [
		timer: 0x1,
		value: 0x85,
	]
	ts_end

	def_text_script CompText87D4190_unk47
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x1,
		value: 0x83,
	]
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x191
	.string "*grrrrrrrrr!!*"
	ts_wait frames=0x5A
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_wait_o_w_var [
		variable: 0x1,
		value: 0x84,
	]
	ts_store_timer [
		timer: 0x1,
		value: 0x85,
	]
	ts_end

	def_text_script CompText87D4190_unk48
	ts_sound_play_bgm track=0x63
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Waaaaaaaa!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Aaaaaaaaa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D4190_unk49
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's wrong,\n"
	.string "MegaMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk50_id

	def_text_script CompText87D4190_unk50
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "The Cybeasts are\n"
	.string "reacting to each\n"
	.string "other!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're pulling at\n"
	.string "each other!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mwahaha,let it go,\n"
	.string "MegaMan...and right\n"
	.string "into my CopyBot!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk51_id

	def_text_script CompText87D4190_unk51
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87D4190_unk52_id,
	]
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Cybeast Gregar!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk53_id

	def_text_script CompText87D4190_unk52
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Cybeast Falzar!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk53_id

	def_text_script CompText87D4190_unk53
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Waaaaaaaaa!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk54_id

	def_text_script CompText87D4190_unk54
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk55_id

	def_text_script CompText87D4190_unk55
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Gwaaaaaaa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D4190_unk56

	def_text_script CompText87D4190_unk57

	def_text_script CompText87D4190_unk58
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The Cybeast escaped\n"
	.string "from MegaMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk59_id

	def_text_script CompText87D4190_unk59
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Wahahahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Everything is going\n"
	.string "just as I planned!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let the Cybeasts'\n"
	.string "roars echo through\n"
	.string "all of Cyber City!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D4190_unk60
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Mwahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,our long fight\n"
	.string "ends here as well!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Iris,show him the\n"
	.string "power of a Cybeast!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And blow Lan and the\n"
	.string "traitor out of our\n"
	.string "way!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1D
	.string "What are you waiting\n"
	.string "for!?\n"
	.string "Do it,NOW!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x11
	ts_sound_play_bgm track=0x63
	.string "... I'm sorry that\n"
	.string "I kept you in the\n"
	.string "dark,Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Iris!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1D
	.string "What!? Has she\n"
	.string "regained her own\n"
	.string "will!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No,Iris obeyed me\n"
	.string "that time when we\n"
	.string "were in Netopia"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "controlling military\n"
	.string "weapons..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's not possible\n"
	.string "for her to be that\n"
	.string "strong willed."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x11
	.string "Lan,hurry... I can't\n"
	.string "keep the Cybeast\n"
	.string "back much longer..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x53
	.string "Lan Hikari! We'll\n"
	.string "take care of this\n"
	.string "Cybeast!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x11
	.string "Brother..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x53
	.string "Iris,why did you\n"
	.string "come back?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x11
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string " I didn't want my\n"
	.string "brother to keep on\n"
	.string "hurting people..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it looks like I\n"
	.string "don't have to worry\n"
	.string "about that anymore."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1D
	.string "Hmph! You didn't\n"
	.string "want him to hurt\n"
	.string "people!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's funny,coming\n"
	.string "from a weapons\n"
	.string "control Navi!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x11
	.string "I saw the people\n"
	.string "from inside the\n"
	.string "weapons."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I saw their wounds,\n"
	.string "how they hurt..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I thought that was\n"
	.string "something that\n"
	.string "couldn't be helped,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but when I escaped\n"
	.string "from your lab,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I found a town that\n"
	.string "didn't want war for\n"
	.string "the first time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "In that town,the\n"
	.string "school was so\n"
	.string "peaceful..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I had fun with a lot\n"
	.string "of school children\n"
	.string "my age."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I became interested\n"
	.string "in school,and I hid\n"
	.string "on the school's Net."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I took classes with\n"
	.string "the other kids..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and everybody was\n"
	.string "truly happy..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And I realized...\n"
	.string "This is what humans\n"
	.string "were really like."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "People hurting each\n"
	.string "other is wrong."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... I decided that\n"
	.string "I had to stop my\n"
	.string "brother,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "when I thought about\n"
	.string "what would happen if\n"
	.string "Dr.Wily caught me..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I became scared.\n"
	.string "That was when you\n"
	.string "came to our school."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You never ran away,\n"
	.string "and always fought\n"
	.string "bravely."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You risked your own\n"
	.string "life to save those\n"
	.string "around you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When I saw that,I\n"
	.string "told myself I had to\n"
	.string "be brave,too..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Colonel,\n"
	.string "I will fight!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's defeat the\n"
	.string "Cybeast together!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x53
	.string "Iris"
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string ".\n"
	.string "You've grown\n"
	.string "strong."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1D
	.string "Hahaha,Iris...\n"
	.string "You would betray\n"
	.string "me,too...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is all your\n"
	.string "doing...\n"
	.string "Lan Hikari...!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk61_id

	def_text_script CompText87D4190_unk61
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87D4190_unk62_id,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,jack me into\n"
	.string "Gregar!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll...\n"
	.string "I'll beat Gregar!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The four of us\n"
	.string "as two pairs of\n"
	.string "siblings..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure Colonel and\n"
	.string "Iris will beat\n"
	.string "Falzar!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So let's combine\n"
	.string "our powers and beat\n"
	.string "Gregar!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Jack me in,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1D
	.string "You're wasting your\n"
	.string "energy!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're no match for\n"
	.string "a fully revived\n"
	.string "Cybeast!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk63_id

	def_text_script CompText87D4190_unk62
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,jack me into\n"
	.string "Falzar!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll...\n"
	.string "I'll beat Falzar!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The four of us\n"
	.string "as two pairs of\n"
	.string "siblings..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure Colonel and\n"
	.string "Iris will beat\n"
	.string "Gregar!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So let's combine\n"
	.string "our powers and beat\n"
	.string "Falzar!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Jack me in,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1D
	.string "You're wasting your\n"
	.string "energy!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're no match for\n"
	.string "a fully revived\n"
	.string "Cybeast!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D4190_unk63_id

	def_text_script CompText87D4190_unk63
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hub..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,let's go!\n"
	.string "This is the last\n"
	.string "jack in!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D4190_unk64
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "MegaMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	