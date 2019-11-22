	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompTextScript86D7C24::
	.word 0x5F000

	text_archive_start

	def_text_script CompTextScript86D7C24_unk0
	ts_check_flag 0xF2, 0x0, 0xFF, 0x1
	ts_check_flag 0xF7, 0x0, 0x3, 0x2

	def_text_script CompTextScript86D7C24_unk1
	ts_check_flag 0xF7, 0x0, 0x4, 0xFF
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4A
	.string "This is my status!"
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk2
	ts_check_navi_all 0xFF, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4A
	.string "This is my status!\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x0, 0x0
	ts_space 0x1
	.string " NaviCust\n"
	ts_select 0x5, 0x40, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk3
	ts_check_navi_all 0xFF, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4
	ts_check_flag 0xF, 0x17, 0xD, 0xFF
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4A
	.string "This is my status!\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " NaviCust\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Records"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk4
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4A
	.string "This is my status!\n"
	ts_position_option_vertical 0x8
	ts_option 0x0, 0x0, 0x0
	ts_space 0x1
	.string " Records"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk5
	.string "Attack LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7C24_unk6
	.string "Speed  LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7C24_unk7
	.string "Charge LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7C24_unk8
	.string "Reg.Mem "
	ts_clear_msg
	.string " ダ[MB]$"

	def_text_script CompTextScript86D7C24_unk9
	.string "MegaChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7C24_unk10
	.string "GigaChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7C24_unk11
	.string "Pwr ChargeS$"

	def_text_script CompTextScript86D7C24_unk12
	.string "Pwr Custom$"

	def_text_script CompTextScript86D7C24_unk13
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4A
	.string "This is my status!\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " NaviCust\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Records"
	ts_select 0x6, 0x41, 0xFF, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk14
	.string "DarkChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7C24_unk15
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4A
	.string "I can't use the\n"
	.string "equipped folder!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Switching to the\n"
	.string "Extra Folder."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk16
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4A
	.string "Equipped folder\n"
	.string "can't be used now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,take this Extra\n"
	.string "Folder since you\n"
	.string "don't have one!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Lan got:\n"
	.string "\""
	ts_print_folder_name 0x22, 0x0
	.string "\"!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4A
	.string "Switching folders."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk17
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4A
	.string "You can't use the\n"
	.string "folder you had\n"
	.string "equipped!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since you can't use\n"
	.string "the Extra Folder,\n"
	.string "try using this one!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Lan got:\n"
	.string "\""
	ts_print_folder_name 0x22, 0x0
	.string "\"!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4A
	.string "Switching to this\n"
	.string "folder!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk18
	.string "V"
	ts_clear_msg
	.string "01$"

	def_text_script CompTextScript86D7C24_unk19
	.string "SP $"

	def_text_script CompTextScript86D7C24_unk20

	def_text_script CompTextScript86D7C24_unk21

	def_text_script CompTextScript86D7C24_unk22

	def_text_script CompTextScript86D7C24_unk23

	def_text_script CompTextScript86D7C24_unk24

	def_text_script CompTextScript86D7C24_unk25

	def_text_script CompTextScript86D7C24_unk26

	def_text_script CompTextScript86D7C24_unk27

	def_text_script CompTextScript86D7C24_unk28

	def_text_script CompTextScript86D7C24_unk29

	def_text_script CompTextScript86D7C24_unk30

	def_text_script CompTextScript86D7C24_unk31

	def_text_script CompTextScript86D7C24_unk32

	def_text_script CompTextScript86D7C24_unk33

	def_text_script CompTextScript86D7C24_unk34

	def_text_script CompTextScript86D7C24_unk35

	def_text_script CompTextScript86D7C24_unk36

	def_text_script CompTextScript86D7C24_unk37

	def_text_script CompTextScript86D7C24_unk38

	def_text_script CompTextScript86D7C24_unk39

	def_text_script CompTextScript86D7C24_unk40

	def_text_script CompTextScript86D7C24_unk41

	def_text_script CompTextScript86D7C24_unk42

	def_text_script CompTextScript86D7C24_unk43

	def_text_script CompTextScript86D7C24_unk44

	def_text_script CompTextScript86D7C24_unk45

	def_text_script CompTextScript86D7C24_unk46

	def_text_script CompTextScript86D7C24_unk47

	def_text_script CompTextScript86D7C24_unk48

	def_text_script CompTextScript86D7C24_unk49

	def_text_script CompTextScript86D7C24_unk50

	def_text_script CompTextScript86D7C24_unk51

	def_text_script CompTextScript86D7C24_unk52

	def_text_script CompTextScript86D7C24_unk53
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "Save?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0x36, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk54
	ts_check_flag 0x4, 0x17, 0xFF, 0x37
	ts_position_text 0x39, 0x6C, 0x3
	ts_text_speed 0x0
	ts_clear_msg
	.string "OK to erase\n"
	.string "old save data?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0x37, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk55
	ts_flag_clear 0x13, 0x17
	ts_call_save 0x38, 0xFF, 0x0
	ts_position_text 0x39, 0x6C, 0x3
	ts_text_speed 0x0
	ts_position_arrow 0xDE, 0x8D
	ts_clear_msg
	.string "The save\n"
	.string "failed..."
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
	ts_select 0x6, 0x0, 0x35, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk56
	ts_position_text 0x39, 0x6C, 0x3
	ts_text_speed 0x0
	ts_position_arrow 0xDE, 0x8D
	ts_clear_msg
	.string "The save is complete"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk57
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "Can't save here"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7C24_unk58

	def_text_script CompTextScript86D7C24_unk59

	def_text_script CompTextScript86D7C24_unk60

	def_text_script CompTextScript86D7C24_unk61

	def_text_script CompTextScript86D7C24_unk62

	def_text_script CompTextScript86D7C24_unk63

	def_text_script CompTextScript86D7C24_unk64

	def_text_script CompTextScript86D7C24_unk65

	def_text_script CompTextScript86D7C24_unk66

	def_text_script CompTextScript86D7C24_unk67

	def_text_script CompTextScript86D7C24_unk68

	def_text_script CompTextScript86D7C24_unk69

	def_text_script CompTextScript86D7C24_unk70
	.string "Pwr HeatArm$"

	def_text_script CompTextScript86D7C24_unk71
	.string "Pwr SpoutHs$"

	def_text_script CompTextScript86D7C24_unk72
	.string "Pwr ThrustT$"

	def_text_script CompTextScript86D7C24_unk73
	.string "Pwr   TEdge$"

	def_text_script CompTextScript86D7C24_unk74
	.string "Pwr   TBolt$"

	def_text_script CompTextScript86D7C24_unk75
	.string "Pwr  TSwing$"

	def_text_script CompTextScript86D7C24_unk76
	.string "Pwr  TSwing$"

	def_text_script CompTextScript86D7C24_unk77
	.string "Pwr HSickle$"

	def_text_script CompTextScript86D7C24_unk78
	.string "Pwr  CrazyL$"

	def_text_script CompTextScript86D7C24_unk79
	.string "Pwr SReborn$"

	def_text_script CompTextScript86D7C24_unk80
	.string "Pwr  DAttkr$"

	def_text_script CompTextScript86D7C24_unk81
	.string "Pwr    None$"

	def_text_script CompTextScript86D7C24_unk82
	.string "Pwr WideSwd$"

	def_text_script CompTextScript86D7C24_unk83

	def_text_script CompTextScript86D7C24_unk84

	def_text_script CompTextScript86D7C24_unk85

	def_text_script CompTextScript86D7C24_unk86

	def_text_script CompTextScript86D7C24_unk87

	def_text_script CompTextScript86D7C24_unk88

	def_text_script CompTextScript86D7C24_unk89

	def_text_script CompTextScript86D7C24_unk90

	