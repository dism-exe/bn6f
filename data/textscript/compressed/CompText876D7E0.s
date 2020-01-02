	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876D7E0::
	.word 0x4AC00

	text_archive_start

	def_text_script CompText876D7E0_unk0
	ts_check_chapter [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: CompText876D7E0_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x420,
		jumpIfTrue: CompText876D7E0_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Noooo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I forgot my\n"
	.string "homework!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And now I have to\n"
	.string "stand up all day..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk1
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "I got some glue on\n"
	.string "my hands during\n"
	.string "class."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It sure is hard to\n"
	.string "wash off!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Class 6-1?\n"
	.string "It's behind that\n"
	.string "door right there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk2

	def_text_script CompText876D7E0_unk3

	def_text_script CompText876D7E0_unk4

	def_text_script CompText876D7E0_unk5
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "They made him stand\n"
	.string "up because he forgot\n"
	.string "his homework!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So childish!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x9
	.string "Don't talk about me\n"
	.string "behind my back!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk6
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Ahhhh...\n"
	.string "My neck is tired..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This bucket of\n"
	.string "water is heavy..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk7

	def_text_script CompText876D7E0_unk8

	def_text_script CompText876D7E0_unk9

	def_text_script CompText876D7E0_unk10
	ts_check_flag [
		flag: 0x47B,
		jumpIfTrue: CompText876D7E0_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Wha...What's going\n"
	.string "on here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Hey,you mind if I\n"
	.string "take that bucket!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x9
	.string "O...OK..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Thanks!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x2,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x2,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x47B
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I have to hurry back\n"
	.string "to Class 6-1!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk11
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Security Bots and\n"
	.string "Navis are running\n"
	.string "around... Weird..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk12
	ts_msg_open
	.string "*Brummmmm!!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk13

	def_text_script CompText876D7E0_unk14

	def_text_script CompText876D7E0_unk15
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Ahh! I can't believe\n"
	.string "those Security Bots\n"
	.string "went bonkers!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're supposed to\n"
	.string "protect us,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "what with them\n"
	.string "attacking us and\n"
	.string "all..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's really scary,\n"
	.string "huh?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk16

	def_text_script CompText876D7E0_unk17

	def_text_script CompText876D7E0_unk18

	def_text_script CompText876D7E0_unk19

	def_text_script CompText876D7E0_unk20
	ts_mugshot_show mugshot=0x8
	ts_msg_open
	.string "Is it true that a\n"
	.string "pelican showed up\n"
	.string "at school?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Huh? A penguin?\n"
	.string "I heard it was a\n"
	.string "pelican!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Who mixed up a\n"
	.string "pelican with a\n"
	.string "penguin!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk21
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Don't get in the\n"
	.string "way..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm making a funny\n"
	.string "face at the camera!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whoever's on the\n"
	.string "other side of the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "camera is in\n"
	.string "for a surprise!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D7E0_unk22

	def_text_script CompText876D7E0_unk23

	def_text_script CompText876D7E0_unk24

	def_text_script CompText876D7E0_unk25

	def_text_script CompText876D7E0_unk26

	def_text_script CompText876D7E0_unk27

	def_text_script CompText876D7E0_unk28

	def_text_script CompText876D7E0_unk29

	