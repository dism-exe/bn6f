	text_script_start unk_0

	text_script_rel_pointers 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
	text_script_rel_pointers 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
	text_script_rel_pointers 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47
	text_script_rel_pointers 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63

	text_script 0, scr_0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I CAN'T REMEMBER...\n"
	.string "WHAT I AM..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "BUT,I DO REMEMBER\n"
	.string "HAVING A\n"
	.string "STUBBY TAIL..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 1, scr_1
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WHAT AM I AGAIN...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HMM... I KNOW I\n"
	.string "DON'T LIKE\n"
	.string "COLD WATER..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 2, scr_2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "MAN,I WISH I KNEW\n"
	.string "WHAT I WAS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "ALL I REMEMBER\n"
	.string "IS EATING A WHOLE\n"
	.string "COW ONCE..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 3, scr_3
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "AH,MONSIEUR! I CAN\n"
	.string "NOT REMEMBER..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IN MY MEMORY,I SEE\n"
	.string "SOMETHING FROM LONG\n"
	.string "AGO..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 4, scr_4
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HMM,I SEEM TO HAVE\n"
	.string "FORGOTTEN\n"
	.string "WHAT I AM,BUT..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I REMEMBER SOME NO-\n"
	.string "BODY SAID I'M A BIT\n"
	.string "SNOBBY. HOW RUDE!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 5, scr_5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "MY MEMORY IS A BIT\n"
	.string "FUZZY..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "BUT I'M SURE I'M\n"
	.string "STEADY AS A ROCK."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 6, scr_6
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I DON'T REMEMBER\n"
	.string "MUCH,YOU KNOW..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "BUT I REMEMBER MY\n"
	.string "LIZARD FRIENDS,\n"
	.string "LIKE SNAP..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 7, scr_7
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I'M A WHALE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I GOT THAT WRONG,\n"
	.string "DIDN'T I...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 8, scr_8
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "IT'S STRANGE THAT\n"
	.string "I'D FORGET,BUT..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "HMM,THE ONE THING\n"
	.string "I DO REMEMBER IS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... MY NOSE??"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 9, scr_9
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I CAN FLY\n"
	.string "HIGH IN THE SKY!\n"
	.string "REALLY!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 10, scr_10
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Bring this Program?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 11, scr_11
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Sunfish CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 12, scr_12
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Tropical Fish\n"
	.string " CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 13, scr_13
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Piranha CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 14, scr_14
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Nautilus CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 15, scr_15
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"King Crab CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 16, scr_16
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Turtle CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 17, scr_17
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Alligator CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 18, scr_18
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Dolphin CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 19, scr_19
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Elephant Seal\n"
	.string " CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 20, scr_20
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Penguin CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 21, scr_21
	ts_msg_open
	.string "... OH! I REMEMBER!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M REALLY A..."
	ts_key_wait 0x0
	ts_end

	text_script 22, scr_22
	ts_msg_open
	.string "... A... I FORGET..."
	ts_key_wait 0x0
	ts_end

	text_script 23, scr_23
	ts_msg_open
	ts_sound_disable_text_sfx
	.string "*BEEP!*"
	ts_wait 0x3C, 0x0
	.string " *BEEP!*"
	ts_wait 0x3C, 0x0
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_enable_text_sfx
	.string "ANIMAL MISMATCH!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "BEGIN DELETION!"
	ts_key_wait 0x0
	ts_end

	text_script 24, scr_24
	ts_flag_set 0xF5, 0x5
	ts_msg_open
	.string "A SUNFISH! YES,\n"
	.string "THAT'S ME!"
	ts_key_wait 0x0
	ts_end

	text_script 25, scr_25
	ts_flag_set 0xF6, 0x5
	ts_msg_open
	.string "A TROPICAL FISH!\n"
	.string "BLOOP,BLOOP!"
	ts_key_wait 0x0
	ts_end

	text_script 26, scr_26
	ts_flag_set 0xF7, 0x5
	ts_msg_open
	.string "A PIRANHA! MAN,\n"
	.string "I CAN'T BELIEVE\n"
	.string "I FORGOT!"
	ts_key_wait 0x0
	ts_end

	text_script 27, scr_27
	ts_flag_set 0xF8, 0x5
	ts_msg_open
	.string "A NAUTILUS! OUI,OUI!"
	ts_key_wait 0x0
	ts_end

	text_script 28, scr_28
	ts_flag_set 0xF9, 0x5
	ts_msg_open
	.string "A KING CRAB! THANK\n"
	.string "YOU FOR HELPING,\n"
	.string "PEASANT."
	ts_key_wait 0x0
	ts_end

	text_script 29, scr_29
	ts_flag_set 0xFA, 0x5
	ts_msg_open
	.string "A TURTLE! AH,MY\n"
	.string "MEMORY IS SLOWLY\n"
	.string "COMING BACK."
	ts_key_wait 0x0
	ts_end

	text_script 30, scr_30
	ts_flag_set 0xFB, 0x5
	ts_msg_open
	.string "OH,SNAP,\n"
	.string "AN ALLIGATOR!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M A REPTILE,SO\n"
	.string "THAT'S WHY LIZARDS\n"
	.string "DIG ME!"
	ts_key_wait 0x0
	ts_end

	text_script 31, scr_31
	ts_flag_set 0xFC, 0x5
	ts_msg_open
	.string "A DOLPHIN!\n"
	.string "*SQUEEK!*"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... GUESS I'M NOT A\n"
	.string "WHALE,TEE,HEE!"
	ts_key_wait 0x0
	ts_end

	text_script 32, scr_32
	ts_flag_set 0xFD, 0x5
	ts_msg_open
	.string "AN ELEPHANT SEAL!\n"
	.string "AND ELEPHANTS NEVER\n"
	.string "FORGET... HMPH!"
	ts_key_wait 0x0
	ts_end

	text_script 33, scr_33
	ts_flag_set 0xFE, 0x5
	ts_msg_open
	.string "A PENGUIN!\n"
	.string "A PENGUIN,I SAY!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... OH,THAT MEANS I\n"
	.string "CAN'T REALLY FLY IN\n"
	.string "THE SKY,HUH?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "*BLUSH*"
	ts_key_wait 0x0
	ts_end

	text_script 34, scr_34
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 35, scr_35
	ts_check_global 0x0, 0x0, 0xB, 0xFF
	ts_check_global 0x0, 0x1, 0xC, 0xFF
	ts_check_global 0x0, 0x2, 0xD, 0xFF
	ts_check_global 0x0, 0x3, 0xE, 0xFF
	ts_check_global 0x0, 0x4, 0xF, 0xFF
	ts_check_global 0x0, 0x5, 0x10, 0xFF
	ts_check_global 0x0, 0x6, 0x11, 0xFF
	ts_check_global 0x0, 0x7, 0x12, 0xFF
	ts_check_global 0x0, 0x8, 0x13, 0xFF
	ts_check_global 0x0, 0x9, 0x14, 0xFF
	ts_check_global 0x0, 0xA, 0x35, 0xFF
	ts_check_global 0x0, 0xB, 0x36, 0xFF
	ts_check_global 0x0, 0xC, 0x37, 0xFF
	ts_end

	text_script 36, scr_36
	ts_check_global 0x0, 0x0, 0x18, 0xFF
	ts_check_global 0x0, 0x1, 0x19, 0xFF
	ts_check_global 0x0, 0x2, 0x1A, 0xFF
	ts_check_global 0x0, 0x3, 0x1B, 0xFF
	ts_check_global 0x0, 0x4, 0x1C, 0xFF
	ts_check_global 0x0, 0x5, 0x1D, 0xFF
	ts_check_global 0x0, 0x6, 0x1E, 0xFF
	ts_check_global 0x0, 0x7, 0x1F, 0xFF
	ts_check_global 0x0, 0x8, 0x20, 0xFF
	ts_check_global 0x0, 0x9, 0x21, 0xFF
	ts_check_global 0x0, 0xA, 0x3B, 0xFF
	ts_check_global 0x0, 0xB, 0x3C, 0xFF
	ts_check_global 0x0, 0xC, 0x3D, 0xFF
	ts_end

	text_script 37, scr_37
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Sunfish CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 38, scr_38
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Tropical Fish\n"
	.string " CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 39, scr_39
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Piranha CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 40, scr_40
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Nautilus CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 41, scr_41
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"King Crab CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 42, scr_42
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Turtle CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 43, scr_43
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Alligator CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 44, scr_44
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Dolphin CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 45, scr_45
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Elephant Seal\n"
	.string " CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 46, scr_46
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Penguin CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "IS THIS MY COMPTANK?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	text_script 47, scr_47
	ts_msg_open
	ts_mugshot_show 0x3C
	.string "WAAAAAH!"
	ts_key_wait 0x0
	ts_end

	text_script 48, scr_48
	ts_msg_open
	ts_mugshot_show 0x3C
	.string "N-NOOOOOOO!"
	ts_key_wait 0x0
	ts_end

	text_script 49, scr_49
	ts_msg_open
	ts_mugshot_show 0x3C
	.string "EEEEEEEE!"
	ts_key_wait 0x0
	ts_end

	text_script 50, scr_50
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "GOLLY,I WISH I\n"
	.string "COULD REMEMBER\n"
	.string "WHAT I AM..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "HMM..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I THINK I OWE\n"
	.string "SOMETHING TO A\n"
	.string "SEA ANEMONE..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 51, scr_51
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HEY...\n"
	.string "DON'T REMEMBER\n"
	.string "MUCH,BUT..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "HMM... IF ONLY\n"
	.string "I HAD A CLUE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "DON'T REALLY KNOW\n"
	.string "ANYTHING ABOUT ME\n"
	.string "THAT STANDS OUT..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OH,WHAT TO DO,\n"
	.string "WHAT TO DO..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...... *CHOMP*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 52, scr_52
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "OH DEAR,OH MY...\n"
	.string "MY MEMORY IS REALLY\n"
	.string "GOING... AND YET..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I KNOW ALL ABOUT\n"
	.string "THE SEASIDE TOWN\n"
	.string "AQUARIUM... STRANGE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "WHAT IN THE WORLD\n"
	.string "AM I...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	text_script 53, scr_53
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Clown Fish\n"
	.string " CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 54, scr_54
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Shark CompTank\""
	ts_key_wait 0x0
	ts_end

	text_script 55, scr_55
	ts_msg_open
	.string "The nameplate is\n"
	.string "broken..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can't tell what\n"
	.string "animal's CompTank\n"
	.string "this is..."
	ts_key_wait 0x0
	ts_end

	text_script 56, scr_56
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Clown Fish\n"
	.string " CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 34
	ts_end

	text_script 57, scr_57
	ts_msg_open
	.string "It's labeled:\n"
	.string "\"Shark CompTank\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 34
	ts_end

	text_script 58, scr_58
	ts_msg_open
	.string "The nameplate is\n"
	.string "broken..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can't tell what\n"
	.string "animal's CompTank\n"
	.string "this is..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 34
	ts_end

	text_script 59, scr_59
	ts_msg_open
	ts_flag_set 0xC2, 0xF
	.string "A CLOWN FISH!\n"
	.string "I'M A FAVORITE\n"
	.string "WITH THE KIDS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "SHUCKS,I'M JUST A\n"
	.string "SHY,LITTLE FISH THAT\n"
	.string "HIDES IN AN ANEMONE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I FEEL SO MUCH\n"
	.string "BETTER!"
	ts_key_wait 0x0
	ts_end

	text_script 60, scr_60
	ts_msg_open
	ts_flag_set 0xC3, 0xF
	.string "A SHARK! MMMM..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "NO WONDER I HAVE\n"
	.string "AN UNSTOPPABLE URGE\n"
	.string "TO EAT EVERYTHING!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "*CH-CHOMP!*"
	ts_key_wait 0x0
	ts_end

	text_script 61, scr_61
	ts_msg_open
	ts_flag_set 0xC4, 0xF
	.string "AN AQUARIUM\n"
	.string "DIRECTOR!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M THE AQUARIUM\n"
	.string "DIRECTOR MADE INTO\n"
	.string "A JOKE PROGRAM!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I GUESS THAT'S WHY I\n"
	.string "KNOW SO MUCH ABOUT\n"
	.string "THE AQUARIUM!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... WHICH MEANS I'M\n"
	.string "NOT REALLY A FISH\n"
	.string "AT ALL,HUH...?"
	ts_key_wait 0x0
	ts_end

	text_script 62, scr_62
	ts_check_global 0x0, 0x0, 0x25, 0xFF
	ts_check_global 0x0, 0x1, 0x26, 0xFF
	ts_check_global 0x0, 0x2, 0x27, 0xFF
	ts_check_global 0x0, 0x3, 0x28, 0xFF
	ts_check_global 0x0, 0x4, 0x29, 0xFF
	ts_check_global 0x0, 0x5, 0x2A, 0xFF
	ts_check_global 0x0, 0x6, 0x2B, 0xFF
	ts_check_global 0x0, 0x7, 0x2C, 0xFF
	ts_check_global 0x0, 0x8, 0x2D, 0xFF
	ts_check_global 0x0, 0x9, 0x2E, 0xFF
	ts_check_global 0x0, 0xA, 0x38, 0xFF
	ts_check_global 0x0, 0xB, 0x39, 0xFF
	ts_check_global 0x0, 0xC, 0x3A, 0xFF
	ts_end

	text_script 63, scr_63
	ts_end

	.balign 4, 0
0x1208