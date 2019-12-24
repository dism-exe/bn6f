	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B6758::
	.word 0xF6C00

	text_archive_start

	def_text_script CompText87B6758_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The JudgeTree,\n"
	.string "huh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder what it's\n"
	.string "like..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87B6758_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Well,since it makes\n"
	.string "all the judgments\n"
	.string "for the trials,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'd guess that it's\n"
	.string "got its own will,\n"
	.string "like us NetNavis."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87B6758_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "So you think this\n"
	.string "tree can hear my\n"
	.string "voice,too,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "just like you,\n"
	.string "MegaMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87B6758_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I have no idea..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Heeeey,Mr.JudgeTree!\n"
	.string "If you can hear me,\n"
	.string "answer,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,Mr.JudgeTreeeee!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "......"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I said,\"Hey!\""
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk6
	ts_mugshot_hide
	ts_msg_open
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ah! Lan!! What are\n"
	.string "you...? Don't lean\n"
	.string "over that far!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Answer me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x19F
	.string "*thump! "
	ts_wait frames=0xE
	ts_sound_play00 track=0x19F
	.string "thump!*"
	ts_wait frames=0xE
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Stop it,Lan!\n"
	.string "Now you're just\n"
	.string "harassing it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87B6758_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "But don't you think\n"
	.string "it should at least\n"
	.string "answer me?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe it's asleep?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87B6758_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ugh,I don't believe\n"
	.string "you're..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ah,well. What can\n"
	.string "you expect?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's pretty much\n"
	.string "just a tree..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87B6758_unk10
	ts_sound_play_bgm track=0x63
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
	.string "EMERGENCY!\n"
	.string "EMERGENCY!"
	ts_sound_play_bgm track=0xC
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What? What?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87B6758_unk12
	ts_mugshot_hide
	ts_msg_open
	.string "EMERGENCY!\n"
	.string "EMERGENCY!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WE HAVE A\n"
	.string "\"LEVEL 5 EMERGENCY\"\n"
	.string "SITUATION!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87B6758_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Looks like something\n"
	.string "happened inside this\n"
	.string "building."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe we should get\n"
	.string "outside!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87B6758_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,let's go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Waaah!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87B6758_unk16
	ts_mugshot_hide
	ts_msg_open
	.string "SUSPECT SURROUNDED!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BEGIN CAPTURE!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87B6758_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "S-Suspect...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Me...? Again!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87B6758_unk18
	ts_mugshot_hide
	ts_msg_open
	.string "GREEN TOWN ORDINANCE\n"
	.string "3 STATES,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"WITH REGARD TO THE\n"
	.string " JUDGETREE OF\n"
	.string " GREEN TOWN,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " IT IS RECOGNIZED\n"
	.string " AS SOMETHING VITAL\n"
	.string " AND IMPORTANT TO"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " THE TOWN.\n"
	.string " THEREFORE,ANYONE\n"
	.string " WHO CAUSES HARM TO"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " IT,WILL BE REMOVED\n"
	.string " IN ANY WAY\n"
	.string " NECESSARY.\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WE,IN ACCORDANCE\n"
	.string "WITH THE ABOVE\n"
	.string "ORDINANCE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HAVE DETERMINED\n"
	.string "THAT YOU HAVE HARMED\n"
	.string "THE JUDGETREE."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87B6758_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's with these\n"
	.string "robots going around"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "calling everyone\n"
	.string "suspicious or a\n"
	.string "suspect anyway!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87B6758_unk20
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I told you to leave\n"
	.string "the JudgeTree alone."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87B6758_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Oh,come on!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87B6758_unk22
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Well,the tree's\n"
	.string "vital and,uh,im-\n"
	.string "portant,and,yeah..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87B6758_unk23
	ts_mugshot_hide
	ts_msg_open
	.string "\"LEVEL 5 EMERGENCY\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "USE OF STUN ARMS\n"
	.string "APPROVED."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-Wait!!\n"
	.string "Stun arms!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk25
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Noooooo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk26
	ts_msg_open
	.string "... Jack in."
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x7,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk27
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... H-Huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... They've stopped?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... What's going on?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87B6758_unk28
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "You wouldn't have\n"
	.string "any trouble if you\n"
	.string "had faster skills."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk29
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Ah!\n"
	.string "It's that strange\n"
	.string "guy from before!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=30

	def_text_script CompText87B6758_unk30
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Faster skills..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You mean you're the\n"
	.string "one that jacked in"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and then crashed\n"
	.string "these robots at that\n"
	.string "super-fast speed...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=31

	def_text_script CompText87B6758_unk31
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "N-No way!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk32
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "... Lan Hikari,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... you're at the\n"
	.string "center of all the\n"
	.string "trouble recently,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but by the looks of\n"
	.string "it,I can tell you're\n"
	.string "still oblivious."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=33

	def_text_script CompText87B6758_unk33
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Not this nonsense\n"
	.string "again! Look..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=34

	def_text_script CompText87B6758_unk34
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "You still don't\n"
	.string "understand?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is what they\n"
	.string "call a \"set-up\"."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=35

	def_text_script CompText87B6758_unk35
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Set-up!?\n"
	.string "What? By who!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=36

	def_text_script CompText87B6758_unk36
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "Your Navi's too\n"
	.string "dangerous..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "While he's pushing\n"
	.string "himself,that thing\n"
	.string "is obedient,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but what you can't\n"
	.string "see is how it is\n"
	.string "consuming your Navi."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Something may occur\n"
	.string "that will cause us\n"
	.string "all serious trouble."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If that were to\n"
	.string "happen..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I WILL delete\n"
	.string "your Navi.\n"
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=37

	def_text_script CompText87B6758_unk37
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "D-Delete!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Delete MegaMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't mess with me!\n"
	.string "I wouldn't ever let\n"
	.string "that happen!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=38

	def_text_script CompText87B6758_unk38
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Heeey!\n"
	.string "Are you alright?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk39
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Are you alright,\n"
	.string "Lan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=40

	def_text_script CompText87B6758_unk40
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm sorry..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I went and\n"
	.string "touched the\n"
	.string "JudgeTree..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=41

	def_text_script CompText87B6758_unk41
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "... Oh,that wasn't\n"
	.string "good..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess I should\n"
	.string "have warned you\n"
	.string "beforehand."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... In any case..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk42
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "I don't think I\n"
	.string "know who you are.\n"
	.string "And your name is...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=43

	def_text_script CompText87B6758_unk43
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "... I don't have\n"
	.string "to answer you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=44

	def_text_script CompText87B6758_unk44
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "The JudgeTree is the\n"
	.string "most important thing"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "in all of Green\n"
	.string "Town -- no,of\n"
	.string "all Cyber City."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If I suspect you of\n"
	.string "doing anything\n"
	.string "suspicious to the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "JudgeTree,I could\n"
	.string "get a warrant."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=45

	def_text_script CompText87B6758_unk45
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "Hmph...\n"
	.string "Do what you want."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe I WAS the one\n"
	.string "who was going to\n"
	.string "harm the tree."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "After all,I do think\n"
	.string "this tree is a bit\n"
	.string "...\"troubled\"..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk46
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's with\n"
	.string "that guy..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=47

	def_text_script CompText87B6758_unk47
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "... Net criminals\n"
	.string "that target this\n"
	.string "tree do exist,and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that man is probably\n"
	.string "one of them. If this\n"
	.string "tree were to be"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "hacked,law and order\n"
	.string "would fall apart."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We must be on our\n"
	.string "guard..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B6758_unk48
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "More importantly,\n"
	.string "Lan,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the trial is about\n"
	.string "to start!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Good luck!"
	ts_key_wait any=0x0
	ts_end

	