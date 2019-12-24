	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876B29C::
	.word 0x42D00

	text_archive_start

	def_text_script CompText876B29C_unk0
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "What's wrong?\n"
	.string "There's no school\n"
	.string "today."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Did you forget\n"
	.string "something? Or are\n"
	.string "you going to stick"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a love letter into\n"
	.string "someone's desk?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,it doesn't\n"
	.string "matter. Just go home\n"
	.string "after you're done."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B29C_unk1

	def_text_script CompText876B29C_unk2

	def_text_script CompText876B29C_unk3

	def_text_script CompText876B29C_unk4

	def_text_script CompText876B29C_unk5
	ts_check_flag [
		flag: 0xA10,
		jumpIfTrue: 0xA,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "I think I'm going\n"
	.string "to just hang out\n"
	.string "after I get home."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B29C_unk6
	ts_check_flag [
		flag: 0xA10,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Right?... What!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x17
	.string "For real!?\n"
	.string "What a shock!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B29C_unk7
	ts_check_flag [
		flag: 0xA10,
		jumpIfTrue: 0xC,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "I didn't think it,\n"
	.string "but it's not that\n"
	.string "guy who's at fault!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xC
	.string "I thought so!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B29C_unk8

	def_text_script CompText876B29C_unk9

	def_text_script CompText876B29C_unk10
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "The weather's acting\n"
	.string "all weird. It's a\n"
	.string "bit scary..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B29C_unk11
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Yeah,yeah...\n"
	.string "That girl is"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "feeling really down!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x17
	.string "Oh!?\n"
	.string "That's not good!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If that were me,I'd\n"
	.string "never let that\n"
	.string "happen!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B29C_unk12
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "People really can't\n"
	.string "see what's going on\n"
	.string "around them at a"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "time like this,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xC
	.string "Yeah..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B29C_unk13

	def_text_script CompText876B29C_unk14

	def_text_script CompText876B29C_unk15

	def_text_script CompText876B29C_unk16

	def_text_script CompText876B29C_unk17

	def_text_script CompText876B29C_unk18

	def_text_script CompText876B29C_unk19

	def_text_script CompText876B29C_unk20

	def_text_script CompText876B29C_unk21

	def_text_script CompText876B29C_unk22

	def_text_script CompText876B29C_unk23

	def_text_script CompText876B29C_unk24

	def_text_script CompText876B29C_unk25

	def_text_script CompText876B29C_unk26

	def_text_script CompText876B29C_unk27

	def_text_script CompText876B29C_unk28

	def_text_script CompText876B29C_unk29

	def_text_script CompText876B29C_unk30

	def_text_script CompText876B29C_unk31

	def_text_script CompText876B29C_unk32

	def_text_script CompText876B29C_unk33

	def_text_script CompText876B29C_unk34

	def_text_script CompText876B29C_unk35

	def_text_script CompText876B29C_unk36

	def_text_script CompText876B29C_unk37

	def_text_script CompText876B29C_unk38

	def_text_script CompText876B29C_unk39

	def_text_script CompText876B29C_unk40
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string " Ah!! No!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You talking to me\n"
	.string "made me forget the\n"
	.string "things I memorized!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It'll be your fault\n"
	.string "if I get a low score\n"
	.string "on our next test!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B29C_unk41

	def_text_script CompText876B29C_unk42

	def_text_script CompText876B29C_unk43

	def_text_script CompText876B29C_unk44

	def_text_script CompText876B29C_unk45
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Huh? Did you forget\n"
	.string "something too?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's no fun having\n"
	.string "to come to school\n"
	.string "on a day off..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B29C_unk46

	def_text_script CompText876B29C_unk47

	def_text_script CompText876B29C_unk48

	def_text_script CompText876B29C_unk49

	def_text_script CompText876B29C_unk50

	def_text_script CompText876B29C_unk51

	def_text_script CompText876B29C_unk52

	def_text_script CompText876B29C_unk53

	def_text_script CompText876B29C_unk54

	def_text_script CompText876B29C_unk55

	def_text_script CompText876B29C_unk56

	def_text_script CompText876B29C_unk57

	def_text_script CompText876B29C_unk58

	def_text_script CompText876B29C_unk59

	