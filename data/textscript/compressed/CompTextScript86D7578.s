	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompTextScript86D7578::
	.word 0x5E200

	text_archive_start

	def_text_script CompTextScript86D7578_unk0
	ts_check_flag 0xF2, 0x0, 0xFF, 0x1
	ts_check_flag 0xF7, 0x0, 0x3, 0x2

	def_text_script CompTextScript86D7578_unk1
	ts_check_flag 0xF7, 0x0, 0x4, 0xFF
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Here is my status."
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7578_unk2
	ts_check_navi_all 0xFF, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Here is my status.\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x0, 0x0
	ts_space 0x1
	.string " NaviCust\n"
	ts_select 0x5, 0x40, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7578_unk3
	ts_check_navi_all 0xFF, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4
	ts_check_flag 0xF, 0x17, 0xD, 0xFF
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Here is my status.\n"
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

	def_text_script CompTextScript86D7578_unk4
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Here is my status.\n"
	ts_position_option_vertical 0x8
	ts_option 0x0, 0x0, 0x0
	ts_space 0x1
	.string " Records"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7578_unk5
	.string "Attack LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7578_unk6
	.string "Speed  LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7578_unk7
	.string "Charge LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7578_unk8
	.string "Reg.Mem "
	ts_clear_msg
	.string " ダ[MB]$"

	def_text_script CompTextScript86D7578_unk9
	.string "MegaChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7578_unk10
	.string "GigaChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7578_unk11
	.string "Pwr ChargeS$"

	def_text_script CompTextScript86D7578_unk12
	.string "Pwr Custom$"

	def_text_script CompTextScript86D7578_unk13
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Here is my status.\n"
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

	def_text_script CompTextScript86D7578_unk14
	.string "DarkChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7578_unk15
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "I can't use the\n"
	.string "equipped folder."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Switching to\n"
	.string "Extra Folder."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7578_unk16
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Equipped folder\n"
	.string "can't be used now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Take this Extra\n"
	.string "Folder since you\n"
	.string "don't have one."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Lan got:\n"
	.string "\""
	ts_print_folder_name 0x2, 0x20
	.string "\"!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Switching folders."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7578_unk17
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "You can't use the\n"
	.string "folder you had\n"
	.string "equipped!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since you can't use\n"
	.string "the Extra Folder,\n"
	.string "use this one!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Lan got:\n"
	.string "\""
	ts_print_folder_name 0x2, 0x20
	.string "\"!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Switching to this\n"
	.string "folder."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7578_unk18
	.string "V"
	ts_clear_msg
	.string "01$"

	def_text_script CompTextScript86D7578_unk19
	.string "SP $"

	def_text_script CompTextScript86D7578_unk20

	def_text_script CompTextScript86D7578_unk21

	def_text_script CompTextScript86D7578_unk22

	def_text_script CompTextScript86D7578_unk23

	def_text_script CompTextScript86D7578_unk24

	def_text_script CompTextScript86D7578_unk25

	def_text_script CompTextScript86D7578_unk26

	def_text_script CompTextScript86D7578_unk27

	def_text_script CompTextScript86D7578_unk28

	def_text_script CompTextScript86D7578_unk29

	def_text_script CompTextScript86D7578_unk30

	def_text_script CompTextScript86D7578_unk31

	def_text_script CompTextScript86D7578_unk32

	def_text_script CompTextScript86D7578_unk33

	def_text_script CompTextScript86D7578_unk34

	def_text_script CompTextScript86D7578_unk35

	def_text_script CompTextScript86D7578_unk36

	def_text_script CompTextScript86D7578_unk37

	def_text_script CompTextScript86D7578_unk38

	def_text_script CompTextScript86D7578_unk39

	def_text_script CompTextScript86D7578_unk40

	def_text_script CompTextScript86D7578_unk41

	def_text_script CompTextScript86D7578_unk42

	def_text_script CompTextScript86D7578_unk43

	def_text_script CompTextScript86D7578_unk44

	def_text_script CompTextScript86D7578_unk45

	def_text_script CompTextScript86D7578_unk46

	def_text_script CompTextScript86D7578_unk47

	def_text_script CompTextScript86D7578_unk48

	def_text_script CompTextScript86D7578_unk49

	def_text_script CompTextScript86D7578_unk50

	def_text_script CompTextScript86D7578_unk51

	def_text_script CompTextScript86D7578_unk52

	def_text_script CompTextScript86D7578_unk53
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

	def_text_script CompTextScript86D7578_unk54
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

	def_text_script CompTextScript86D7578_unk55
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

	def_text_script CompTextScript86D7578_unk56
	ts_position_text 0x39, 0x6C, 0x3
	ts_text_speed 0x0
	ts_position_arrow 0xDE, 0x8D
	ts_clear_msg
	.string "The save is complete"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7578_unk57
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "Can't save here"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7578_unk58

	def_text_script CompTextScript86D7578_unk59

	def_text_script CompTextScript86D7578_unk60

	def_text_script CompTextScript86D7578_unk61

	def_text_script CompTextScript86D7578_unk62

	def_text_script CompTextScript86D7578_unk63

	def_text_script CompTextScript86D7578_unk64

	def_text_script CompTextScript86D7578_unk65

	def_text_script CompTextScript86D7578_unk66

	def_text_script CompTextScript86D7578_unk67

	def_text_script CompTextScript86D7578_unk68

	def_text_script CompTextScript86D7578_unk69

	def_text_script CompTextScript86D7578_unk70
	.string "Pwr HeatArm$"

	def_text_script CompTextScript86D7578_unk71
	.string "Pwr SpoutHs$"

	def_text_script CompTextScript86D7578_unk72
	.string "Pwr ThrustT$"

	def_text_script CompTextScript86D7578_unk73
	.string "Pwr   TEdge$"

	def_text_script CompTextScript86D7578_unk74
	.string "Pwr   TBolt$"

	def_text_script CompTextScript86D7578_unk75
	.string "Pwr  TSwing$"

	def_text_script CompTextScript86D7578_unk76
	.string "Pwr  TSwing$"

	def_text_script CompTextScript86D7578_unk77
	.string "Pwr HSickle$"

	def_text_script CompTextScript86D7578_unk78
	.string "Pwr  CrazyL$"

	def_text_script CompTextScript86D7578_unk79
	.string "Pwr SReborn$"

	def_text_script CompTextScript86D7578_unk80
	.string "Pwr  DAttkr$"

	def_text_script CompTextScript86D7578_unk81
	.string "Pwr    None$"

	def_text_script CompTextScript86D7578_unk82
	.string "Pwr WideSwd$"

	def_text_script CompTextScript86D7578_unk83

	def_text_script CompTextScript86D7578_unk84

	def_text_script CompTextScript86D7578_unk85

	def_text_script CompTextScript86D7578_unk86

	def_text_script CompTextScript86D7578_unk87

	def_text_script CompTextScript86D7578_unk88

	def_text_script CompTextScript86D7578_unk89

	def_text_script CompTextScript86D7578_unk90

	