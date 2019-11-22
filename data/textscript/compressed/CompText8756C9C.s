	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8756C9C::
	.word 0xD6B00

	text_archive_start

	def_text_script CompText8756C9C_unk0
	ts_msg_open
	.string "There are pictures\n"
	.string "of various viruses\n"
	.string "on this giant panel."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's also short\n"
	.string "descriptions,so it's\n"
	.string "very informative!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk1
	ts_msg_open
	.string "The chips in this\n"
	.string "case aren't as\n"
	.string "popular any more..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "so they're being\n"
	.string "sold at bargain\n"
	.string "prices!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk2
	ts_msg_open
	.string "A magazine rack\n"
	.string "stacked full of\n"
	.string "chip magazines."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Chips Monthly\",\n"
	.string "\"Chip Club Weekly\",\n"
	.string "just to name two..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk3
	ts_msg_open
	.string "BattleChips are on\n"
	.string "display in this\n"
	.string "showcase."
	ts_key_wait 0x0
	ts_clear_msg
	.string "These chips are\n"
	.string "wanted by Net-\n"
	.string "Battlers everywhere!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk4
	ts_msg_open
	.string "The register is\n"
	.string "locked tight."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk5
	ts_msg_open
	.string "The chips in this\n"
	.string "showcase are all"
	ts_key_wait 0x0
	ts_clear_msg
	.string "of premium quality\n"
	.string "and are very rare\n"
	.string "and expensive."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk6
	ts_check_flag 0x63, 0x1, 0x9, 0xFF
	ts_msg_open
	.string "A request board.\n"
	.string "Various requests\n"
	.string "have been left..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_start_request_b_b_s 0x0
	ts_end

	def_text_script CompText8756C9C_unk7
	ts_end

	def_text_script CompText8756C9C_unk8
	ts_msg_open
	.string "A table where you\n"
	.string "can place chips."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You use it when you\n"
	.string "trade chips with a\n"
	.string "friend,it seems."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk9
	ts_msg_open
	.string "Warning!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can only accept\n"
	.string "requests through\n"
	.string "BeastLink Gate"
	ts_key_wait 0x0
	ts_clear_msg
	.string "while operating\n"
	.string "MegaMan."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk10
	ts_msg_open
	.string "Enter a number in\n"
	.string "the Number Trader?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk11
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	.string "Please come back!\n"
	.string "I'll be waiting!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk12
	ts_msg_open_quick
	.string "Enter lotto number."
	ts_key_wait 0x0
	ts_clear_msg
	ts_option 0x1, 0x81, 0x0
	ts_space 0x1
	ts_menu_option_number_trader 0x0
	.string "0"
	ts_option 0x1, 0x2, 0x11
	ts_space 0x1
	ts_menu_option_number_trader 0x1
	.string "0"
	ts_option 0x1, 0x13, 0x22
	ts_space 0x1
	ts_menu_option_number_trader 0x2
	.string "0"
	ts_option 0x1, 0x24, 0x33
	ts_space 0x1
	ts_menu_option_number_trader 0x3
	.string "0"
	ts_option 0x1, 0x35, 0x44
	ts_space 0x1
	ts_menu_option_number_trader 0x4
	.string "0"
	ts_option 0x1, 0x46, 0x55
	ts_space 0x1
	ts_menu_option_number_trader 0x5
	.string "0"
	ts_option 0x1, 0x57, 0x66
	ts_space 0x1
	ts_menu_option_number_trader 0x6
	.string "0"
	ts_option 0x1, 0x68, 0x77
	ts_space 0x1
	ts_menu_option_number_trader 0x7
	.string "0"
	ts_option 0x1, 0x70, 0x88
	ts_space 0x1
	.string " OK\n"
	.string "(UP/DOWN:Number\n"
	.string " LEFT/RIGHT:Cursor)"
	ts_flag_set 0x25, 0x17
	ts_menu_select_number_trader
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk13
	ts_msg_open_quick
	.string "Checking your\n"
	.string "lotto number!\n"
	.string "*beep beep...*"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Too bad! You lost.\n"
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk14

	def_text_script CompText8756C9C_unk15

	def_text_script CompText8756C9C_unk16

	def_text_script CompText8756C9C_unk17

	def_text_script CompText8756C9C_unk18

	def_text_script CompText8756C9C_unk19

	def_text_script CompText8756C9C_unk20
	ts_msg_open_quick
	.string "Checking your\n"
	.string "lotto number!\n"
	.string "*beep beep...*"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This number's been\n"
	.string "entered already."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Try again?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk21

	def_text_script CompText8756C9C_unk22

	def_text_script CompText8756C9C_unk23

	def_text_script CompText8756C9C_unk24

	def_text_script CompText8756C9C_unk25
	ts_clear_msg
	.string " ボ$"

	def_text_script CompText8756C9C_unk26

	def_text_script CompText8756C9C_unk27

	def_text_script CompText8756C9C_unk28

	def_text_script CompText8756C9C_unk29

	def_text_script CompText8756C9C_unk30
	ts_check_flag 0x63, 0x1, 0x24, 0xFF
	ts_msg_open
	.string "A Navi Change Box.\n"
	.string "\"Insert a NaviChip\"\n"
	.string "is written on it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Insert a NaviChip\n"
	.string "into the slot?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk31
	ts_msg_open_quick
	.string "Checking your\n"
	.string "BeastLink Gate\n"
	.string "connection..."
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk32
	ts_msg_open_quick
	ts_msg_close
	ts_end

	def_text_script CompText8756C9C_unk33
	ts_msg_open_quick
	.string "Communication error."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please check your\n"
	.string "BeastLink Gate\n"
	.string "connection."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk34
	ts_msg_open_quick
	.string "Please insert a\n"
	.string "NaviChip.\n"
	.string "(Press B to cancel)"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk35
	ts_msg_open_quick
	.string "Navi data confirmed!\n"
	.string "Installing "
	ts_print_navi 0x0, 0x1
	.string "\n"
	.string "into your PET!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_navi_all 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30

	def_text_script CompText8756C9C_unk36
	ts_msg_open
	.string "A Navi Change Box.\n"
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string "Quit Navi Change\n"
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string "Confirm Navi Change"
	ts_select 0x6, 0x20, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk37
	ts_mugshot_show 0x37
	ts_msg_open_quick
	.string "I'm MegaMan,and I'm\n"
	.string "your Navi! It's good\n"
	.string "to work with you!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "It's good to work\n"
	.string "with you too,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Uh,tell me why\n"
	.string "we're being so\n"
	.string "formal again...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Because it's good\n"
	.string "to be nice,even to\n"
	.string "your best friends!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Right!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk38
	ts_mugshot_show 0x47
	ts_msg_open_quick
	.string "Buuuuuuurning!\n"
	.string "I'm HeatMan,and\n"
	.string "I'm all fired up!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk39
	ts_mugshot_show 0x49
	ts_msg_open_quick
	.string "... I am ElecMan.\n"
	.string "It's time to sizzle\n"
	.string "some viruses..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk40
	ts_mugshot_show 0x4B
	ts_msg_open_quick
	.string "Hey,I'm SlashMan!\n"
	.string "Viruses beware! I'll\n"
	.string "slice you to shreds!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk41
	ts_mugshot_show 0x50
	ts_msg_open_quick
	.string "Hiyahahaha!\n"
	.string "I'm EraseMan! Why?\n"
	.string "Because I \"erase\"..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk42
	ts_mugshot_show 0x4F
	ts_msg_open_quick
	.string "Choo,choo!\n"
	.string "I'm ChargeMan,and\n"
	.string "I'm here to help!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk43
	ts_mugshot_show 0x48
	ts_msg_open_quick
	.string "Drip,drip!\n"
	.string "I'm SpoutMan,if you\n"
	.string "please,drip!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk44
	ts_mugshot_show 0x4A
	ts_msg_open_quick
	.string "Yeow,yeah! I'm\n"
	.string "TomahawkMan! Let's\n"
	.string "get chopping!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk45
	ts_mugshot_show 0x4C
	ts_msg_open_quick
	.string "I am TenguMan.\n"
	.string "I hope we will work\n"
	.string "together in harmony."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk46
	ts_mugshot_show 0x4D
	ts_msg_open_quick
	.string "Whiiiiiiir!\n"
	.string "I'm GroundMan,and\n"
	.string "I'm ready to drill!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk47
	ts_mugshot_show 0x4E
	ts_msg_open_quick
	.string "Gahahahaha!\n"
	.string "I'm the Master of\n"
	.string "Crushing,DustMan!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk48
	ts_mugshot_show 0x3B
	ts_msg_open_quick
	.string "ProtoMan here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Always good to work\n"
	.string "with you,however,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I will stay by\n"
	.string "Chaud's side\n"
	.string "until the end..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I will only appear\n"
	.string "during battle."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll leave the\n"
	.string "navigation\n"
	.string "to MegaMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Roger! Which means\n"
	.string "outside of battles,I\n"
	.string "will be the Navi."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk49
	ts_msg_open_quick
	.string "Returning to\n"
	.string "MegaMan."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8756C9C_unk50
	ts_msg_open_quick
	.string "The equipped Folder\n"
	.string "can't be used\n"
	.string "anymore."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You don't have an\n"
	.string "Extra Folder,so\n"
	.string "take this folder!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan got:\n"
	.string "\""
	ts_print_folder_name 0x22, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Switching to this\n"
	.string "Folder."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk51
	ts_msg_open_quick
	.string "The equipped Folder\n"
	.string "can't be used\n"
	.string "anymore."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Extra Folder\n"
	.string "also can't be used,\n"
	.string "so take this Folder!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan got:\n"
	.string "\""
	ts_print_folder_name 0x22, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Switching to this\n"
	.string "Folder."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText8756C9C_unk52
	ts_msg_open_quick
	.string "The equipped Folder\n"
	.string "can't be used."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Switching to Extra\n"
	.string "Folder."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	