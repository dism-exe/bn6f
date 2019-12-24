	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D093C::
	.word 0xAB100

	text_archive_start

	def_text_script CompText87D093C_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "So this is the\n"
	.string "Central Pavilion..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wow...\n"
	.string "It's all just\n"
	.string "CopyBots..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,let's take a\n"
	.string "look around!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk1
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "So this is a\n"
	.string "CopyBot?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You put your Navi in\n"
	.string "it and it looks like\n"
	.string "him?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87D093C_unk2
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Yeah,but this is the\n"
	.string "first time I've seen\n"
	.string "so many!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87D093C_unk3
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "I didn't know there\n"
	.string "were so many\n"
	.string "CopyBots being made!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's surprising!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87D093C_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "To me,it's kinda\n"
	.string "scary to see this\n"
	.string "many all lined up..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk5
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Are you OK,Iris?\n"
	.string "You're looking a\n"
	.string "little pale..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87D093C_unk6
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "What's wrong?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87D093C_unk7
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87D093C_unk8
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "You're shaking...\n"
	.string "Do you feel sick...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87D093C_unk9
	ts_mugshot_hide
	ts_msg_open
	.string "Welcome to the\n"
	.string "Central Pavilion!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk10
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Isn't this pavilion\n"
	.string "wonderful? So many\n"
	.string "CopyBots in a row..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You'll be so happy...\n"
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "because you can see\n"
	.string "the end of the world\n"
	.string "from this pavilion!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x63
	ts_jump target=11

	def_text_script CompText87D093C_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-What the!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D093C_unk12
	ts_mugshot_hide
	ts_msg_open
	.string "Wahahaha..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's been a while,\n"
	.string "... Lan Hikari."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Dr.Wily!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87D093C_unk14
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Welcome to the\n"
	.string "Central Pavilion..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "or rather,WWW\n"
	.string "Headquarters!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x2
	ts_jump target=15

	def_text_script CompText87D093C_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "WHAT!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Then-then the person\n"
	.string "that sent that mail\n"
	.string "was..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87D093C_unk16
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Yes,it was me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But that isn't all!\n"
	.string "It was I that made\n"
	.string "this Expo!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hahaha. Mayor Cain\n"
	.string "did an excellent job\n"
	.string "in building it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The money to build\n"
	.string "the Expo actually\n"
	.string "went into building"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "my secret laboratory\n"
	.string "and funding our\n"
	.string "criminal activities."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ah,and I am so close\n"
	.string "to completing my\n"
	.string "goal."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I just need two\n"
	.string "more things..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "One is the Cybeast\n"
	.string "inside MegaMan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The other is..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87D093C_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The other is...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x5,
	]
	ts_jump target=18

	def_text_script CompText87D093C_unk18
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string " Iris!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've come back to\n"
	.string "me,my dear!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk19
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Ah,but then,you\n"
	.string "only have one place\n"
	.string "you can return to."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come!\n"
	.string "Come back to me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87D093C_unk20
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87D093C_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I-Iris...\n"
	.string "What does he mean?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87D093C_unk22
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87D093C_unk23
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Just accept it,Iris.\n"
	.string "You have no place to\n"
	.string "go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk24
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk25
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Waaaah!!\n"
	.string "Wh-What's going on!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=26

	def_text_script CompText87D093C_unk26
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Th-There's too many!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87D093C_unk27
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Not good...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D093C_unk28
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "You can not escape!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk29
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Eeeeeeek!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk30
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Get them!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=31

	def_text_script CompText87D093C_unk31
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Yes,sir!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk32
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Stop! Nooo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=33

	def_text_script CompText87D093C_unk33
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Can't we talk about\n"
	.string "this!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=34

	def_text_script CompText87D093C_unk34
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Darn it! Darn it!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=35

	def_text_script CompText87D093C_unk35
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Aaaaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=36

	def_text_script CompText87D093C_unk36
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Eeeeeeeek!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=37

	def_text_script CompText87D093C_unk37
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Everyone!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk38
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Splendid,Lan. But\n"
	.string "I think it's time to\n"
	.string "give up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You fought well,but\n"
	.string "resistance is\n"
	.string "futile!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Seize him!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=39

	def_text_script CompText87D093C_unk39
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ack!!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87D093C_unk40
	ts_msg_open
	.string "Hyaaaaaaa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk41
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=42

	def_text_script CompText87D093C_unk42
	ts_mugshot_hide
	ts_msg_open
	.string "Looks like I'm a tad\n"
	.string "late..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk43
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Chaud!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=44

	def_text_script CompText87D093C_unk44
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Where are the\n"
	.string "others?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=45

	def_text_script CompText87D093C_unk45
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "They're being held\n"
	.string "by Dr.Wily..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=46

	def_text_script CompText87D093C_unk46
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "You! You're that\n"
	.string "Official brat!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Go,my Navis!\n"
	.string "Get those two\n"
	.string "annoying brats!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=47

	def_text_script CompText87D093C_unk47
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Lan,we must retreat\n"
	.string "for now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We have to come up\n"
	.string "with another plan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=48

	def_text_script CompText87D093C_unk48
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "... *nod*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=49

	def_text_script CompText87D093C_unk49
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	ts_mugshot_animation animation=0x2
	.string "ProtoMan,let's go!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=50

	def_text_script CompText87D093C_unk50
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Roger!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D093C_unk51
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Get them,get them!\n"
	.string "Don't let them get\n"
	.string "away!!"
	ts_key_wait any=0x0
	ts_end

	