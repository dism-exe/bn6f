	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C28D8::
	.word 0xE0100

	text_archive_start

	def_text_script CompText87C28D8_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... So this is\n"
	.string "Undernet2..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan,\n"
	.string "be careful..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87C28D8_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I will."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk2
	ts_mugshot_hide
	ts_msg_open
	.string "HOLD IT RIGHT THERE!"
	ts_key_wait 0x0
	ts_clear_msg

	def_text_script CompText87C28D8_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Huh!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk4
	ts_mugshot_show 0x43
	ts_msg_open
	.string "... YOU CAME\n"
	.string "AFTER ALL."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Huh,what!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87C28D8_unk6
	ts_mugshot_show 0x43
	ts_msg_open
	.string "YOU'RE MEGAMAN..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE ONE WITH A\n"
	.string "CYBEAST INSIDE HIS\n"
	.string "BODY... RIGHT?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WE ARE WORSHIPPERS\n"
	.string "OF THE GREAT\n"
	.string "CYBEASTS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU MET A FEW OF OUR\n"
	.string "FRIENDS A FEW DAYS\n"
	.string "AGO..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87C28D8_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Cybeast...\n"
	.string "Worshippers?..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You guys are friends\n"
	.string "with those guys that\n"
	.string "took Mick's Navi!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87C28D8_unk8
	ts_mugshot_show 0x43
	ts_msg_open
	.string "... HAHAHA."
	ts_key_wait 0x0
	ts_clear_msg
	.string "LOOKS LIKE THE\n"
	.string "GREAT \"HEAD PRIEST\"\n"
	.string "WAS RIGHT."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU SHOWED UP RIGHT\n"
	.string "WHERE HE SAID YOU\n"
	.string "WOULD."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87C28D8_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "\"Priest\"...?\n"
	.string "\"Said we would\"...?\n"
	.string "What are you...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87C28D8_unk10
	ts_mugshot_show 0x43
	ts_msg_open
	.string "DOING WHAT OUR GREAT\n"
	.string "PRIEST HAS TOLD US\n"
	.string "TO DO,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WE WILL NOW\n"
	.string "AWAKEN THE CYBEAST\n"
	.string "INSIDE YOUR NAVI."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87C28D8_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "This is bad! They're\n"
	.string "trying to cast some\n"
	.string "strange spell again!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Run,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87C28D8_unk12
	ts_mugshot_show 0x43
	ts_msg_open
	.string "YOU WON'T GET AWAY!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk13
	ts_mugshot_show 0x43
	ts_msg_open
	.string "UUUU LAAA!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87C28D8_unk14
	ts_mugshot_show 0x37
	ts_msg_open
	ts_store_timer 0x0, 0xB
	.string "... Nngh!!"
	ts_key_wait 0x0
	ts_wait_o_w_var 0x0, 0xC
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87C28D8_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87C28D8_unk16
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Nnnn..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Nnrraah...!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87C28D8_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "N-No!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87C28D8_unk18
	ts_mugshot_show 0x43
	ts_msg_open
	.string "IT'S TIME!\n"
	.string "SHOW US THE\n"
	.string "CYBEAST'S POWER!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87C28D8_unk19
	ts_check_game_version 0xFF, 0x24
	ts_mugshot_hide
	ts_msg_open
	.string "Hold it!\n"
	.string "Choo,choooo!"
	ts_sound_stop
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk20
	ts_check_game_version 0xFF, 0x25
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "All of ya against 1\n"
	.string "little guy? That's\n"
	.string "not really fair!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't ya listen to\n"
	.string "the announcements on\n"
	.string "trains!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Remember to be\n"
	.string " courteous to others\n"
	.string " onboard!\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "So where are YOUR\n"
	.string "manners!?\n"
	.string "Choo,choo!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87C28D8_unk21
	ts_mugshot_show 0x43
	ts_msg_open
	.string "WHAT IN THE\n"
	.string "WORLD...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU JUST TRY TO STOP\n"
	.string "US! YOU'LL SEE WHAT\n"
	.string "HAPPENS..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87C28D8_unk22
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "I'll see what\n"
	.string "happens?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's what I was\n"
	.string "going to say!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ya guys that bother\n"
	.string "the other passengers\n"
	.string "all the time..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll deal with ya\n"
	.string "in the usual way --\n"
	.string "by charging ya!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87C28D8_unk23
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Crazy Locomotive!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk24
	ts_check_game_version 0xFF, 0x29
	ts_mugshot_show 0x43
	ts_msg_open
	.string "... GWAAAAAH!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk25
	ts_check_game_version 0xFF, 0x2A
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Choo,choo!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 26

	def_text_script CompText87C28D8_unk26
	ts_mugshot_show 0x37
	ts_msg_open
	.string "W-Wow...!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script CompText87C28D8_unk27
	ts_mugshot_show 0x43
	ts_msg_open
	.string "OOGH... A LITTLE\n"
	.string "MORE... WE... THE\n"
	.string "CYBEAST..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "DRAT!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk28
	ts_check_game_version 0xFF, 0x2D
	ts_sound_fade_in_bgm 0x14, 0xA
	ts_mugshot_show 0x26
	ts_msg_open
	.string "... Are you alright?\n"
	.string "Are you hurt?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There are bad Navis\n"
	.string "around here...\n"
	.string "Best to take care."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 29

	def_text_script CompText87C28D8_unk29
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Ah! Um... Didn't\n"
	.string "I see you during the\n"
	.string "opening ceremony?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 30

	def_text_script CompText87C28D8_unk30
	ts_mugshot_show 0x26
	ts_msg_open
	.string "The name's Al Ferry."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This here Navi's\n"
	.string "ChargeMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 31

	def_text_script CompText87C28D8_unk31
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm Lan Hikari."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks for rescuing\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 32

	def_text_script CompText87C28D8_unk32
	ts_mugshot_show 0x26
	ts_msg_open
	.string "... You're here for\n"
	.string "the MoonStone,too,\n"
	.string "huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sorry,but I can't\n"
	.string "help you,I'm afraid."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No hard feelings,but\n"
	.string "I'm going to do what\n"
	.string "I have to do to win."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 33

	def_text_script CompText87C28D8_unk33
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I understand."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 34

	def_text_script CompText87C28D8_unk34
	ts_mugshot_show 0x26
	ts_msg_open
	.string "... Well,let's go,\n"
	.string "ChargeMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 35

	def_text_script CompText87C28D8_unk35
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "All aboard!\n"
	.string "Full speed ahead!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk36
	ts_mugshot_hide
	ts_msg_open
	.string "Hold on there,\n"
	.string "buddy!!"
	ts_sound_stop
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk37
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Don't you know it's\n"
	.string "not smart to pick on\n"
	.string "the 1 little guy!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 38

	def_text_script CompText87C28D8_unk38
	ts_mugshot_show 0x43
	ts_msg_open
	.string "WHAT IN THE\n"
	.string "WORLD...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU JUST TRY TO STOP\n"
	.string "US! YOU'LL SEE WHAT\n"
	.string "HAPPENS..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 39

	def_text_script CompText87C28D8_unk39
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "I'll see what\n"
	.string "happens?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Gahahahaha!! You\n"
	.string "took the words right\n"
	.string "out of my mouth!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 40

	def_text_script CompText87C28D8_unk40
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Dust Break!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk41
	ts_mugshot_show 0x43
	ts_msg_open
	.string "... GWAAAAAH!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk42
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 43

	def_text_script CompText87C28D8_unk43
	ts_mugshot_show 0x37
	ts_msg_open
	.string "W-Wow!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 44

	def_text_script CompText87C28D8_unk44
	ts_mugshot_show 0x43
	ts_msg_open
	.string "OOGH... A LITTLE\n"
	.string "MORE... WE... THE\n"
	.string "CYBEAST..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "DRAT!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk45
	ts_mugshot_show 0x25
	ts_msg_open
	ts_sound_fade_in_bgm 0x14, 0xA
	.string "... Hey,you OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So,there are some\n"
	.string "really nasty Navis\n"
	.string "around here.So yeah."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Hey,don't tell\n"
	.string "me you forgot who I\n"
	.string "am already!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 46

	def_text_script CompText87C28D8_unk46
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Ah! Um... Didn't\n"
	.string "I see you during the\n"
	.string "opening ceremony?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 47

	def_text_script CompText87C28D8_unk47
	ts_mugshot_show 0x25
	ts_msg_open
	.string "Ie-yes!!\n"
	.string "I am Mr.Press!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And my Navi is\n"
	.string "DustMan,don't you\n"
	.string "forget it."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 48

	def_text_script CompText87C28D8_unk48
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm Lan Hikari."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks for rescuing\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 49

	def_text_script CompText87C28D8_unk49
	ts_mugshot_show 0x25
	ts_msg_open
	.string "I bet you're here\n"
	.string "for the MoonStone,\n"
	.string "too."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Looks like we're\n"
	.string "rivals after the\n"
	.string "same thing,then..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Give it all you got\n"
	.string "and have no regrets,\n"
	.string "OK!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 50

	def_text_script CompText87C28D8_unk50
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 51

	def_text_script CompText87C28D8_unk51
	ts_mugshot_show 0x25
	ts_msg_open
	.string "... Let's go,\n"
	.string "DustMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 52

	def_text_script CompText87C28D8_unk52
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Yeah!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C28D8_unk53
	ts_mugshot_show 0x37
	ts_msg_open
	.string "All the Navis that\n"
	.string "are in the finals\n"
	.string "sure are strong."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 54

	def_text_script CompText87C28D8_unk54
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah,that's true..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But what did those\n"
	.string "guys earlier mean by"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"priest\" and him\n"
	.string "\"telling them\" and\n"
	.string "the other stuff...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Anyway,for now,let's\n"
	.string "be careful and keep\n"
	.string "on going!"
	ts_key_wait 0x0
	ts_end

	