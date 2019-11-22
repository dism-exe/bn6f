	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompTextScript86D7F74::
	.word 0x5E200

	text_archive_start

	def_text_script CompTextScript86D7F74_unk0
	ts_check_flag 0xF2, 0x0, 0xFF, 0x1
	ts_check_flag 0xF7, 0x0, 0x3, 0x2

	def_text_script CompTextScript86D7F74_unk1
	ts_check_flag 0xF7, 0x0, 0x4, 0xFF
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4C
	.string "Here's my status!"
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7F74_unk2
	ts_check_navi_all 0xFF, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4C
	.string "Here's my status!\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x0, 0x0
	ts_space 0x1
	.string " NaviCust\n"
	ts_select 0x5, 0x40, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7F74_unk3
	ts_check_navi_all 0xFF, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4
	ts_check_flag 0xF, 0x17, 0xD, 0xFF
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4C
	.string "Here's my status!\n"
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

	def_text_script CompTextScript86D7F74_unk4
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4C
	.string "Here's my status!\n"
	ts_position_option_vertical 0x8
	ts_option 0x0, 0x0, 0x0
	ts_space 0x1
	.string " Records"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7F74_unk5
	.string "Attack LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7F74_unk6
	.string "Speed  LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7F74_unk7
	.string "Charge LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7F74_unk8
	.string "Reg.Mem "
	ts_clear_msg
	.string " ダ[MB]$"

	def_text_script CompTextScript86D7F74_unk9
	.string "MegaChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7F74_unk10
	.string "GigaChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7F74_unk11
	.string "Pwr ChargeS$"

	def_text_script CompTextScript86D7F74_unk12
	.string "Pwr Custom$"

	def_text_script CompTextScript86D7F74_unk13
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4C
	.string "Here's my status!\n"
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

	def_text_script CompTextScript86D7F74_unk14
	.string "DarkChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompTextScript86D7F74_unk15
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4C
	.string "The equipped folder\n"
	.string "cannot be used!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Switching to\n"
	.string "Extra Folder!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7F74_unk16
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4C
	.string "Equipped folder\n"
	.string "cannot be used now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Take this Extra\n"
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
	ts_mugshot_show 0x4C
	.string "Switching folders!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7F74_unk17
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x4C
	.string "You cannot use the\n"
	.string "folder you had\n"
	.string "equipped!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since you can't use\n"
	.string "the Extra folder,\n"
	.string "use this one!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Lan got:\n"
	.string "\""
	ts_print_folder_name 0x22, 0x0
	.string "\"!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4C
	.string "Switching to this\n"
	.string "folder!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7F74_unk18
	.string "V"
	ts_clear_msg
	.string "01$"

	def_text_script CompTextScript86D7F74_unk19
	.string "SP $"

	def_text_script CompTextScript86D7F74_unk20

	def_text_script CompTextScript86D7F74_unk21

	def_text_script CompTextScript86D7F74_unk22

	def_text_script CompTextScript86D7F74_unk23

	def_text_script CompTextScript86D7F74_unk24

	def_text_script CompTextScript86D7F74_unk25

	def_text_script CompTextScript86D7F74_unk26

	def_text_script CompTextScript86D7F74_unk27

	def_text_script CompTextScript86D7F74_unk28

	def_text_script CompTextScript86D7F74_unk29

	def_text_script CompTextScript86D7F74_unk30

	def_text_script CompTextScript86D7F74_unk31

	def_text_script CompTextScript86D7F74_unk32

	def_text_script CompTextScript86D7F74_unk33

	def_text_script CompTextScript86D7F74_unk34

	def_text_script CompTextScript86D7F74_unk35

	def_text_script CompTextScript86D7F74_unk36

	def_text_script CompTextScript86D7F74_unk37

	def_text_script CompTextScript86D7F74_unk38

	def_text_script CompTextScript86D7F74_unk39

	def_text_script CompTextScript86D7F74_unk40

	def_text_script CompTextScript86D7F74_unk41

	def_text_script CompTextScript86D7F74_unk42

	def_text_script CompTextScript86D7F74_unk43

	def_text_script CompTextScript86D7F74_unk44

	def_text_script CompTextScript86D7F74_unk45

	def_text_script CompTextScript86D7F74_unk46

	def_text_script CompTextScript86D7F74_unk47

	def_text_script CompTextScript86D7F74_unk48

	def_text_script CompTextScript86D7F74_unk49

	def_text_script CompTextScript86D7F74_unk50

	def_text_script CompTextScript86D7F74_unk51

	def_text_script CompTextScript86D7F74_unk52

	def_text_script CompTextScript86D7F74_unk53
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

	def_text_script CompTextScript86D7F74_unk54
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

	def_text_script CompTextScript86D7F74_unk55
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

	def_text_script CompTextScript86D7F74_unk56
	ts_position_text 0x39, 0x6C, 0x3
	ts_text_speed 0x0
	ts_position_arrow 0xDE, 0x8D
	ts_clear_msg
	.string "The save is complete"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7F74_unk57
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "Can't save here"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompTextScript86D7F74_unk58

	def_text_script CompTextScript86D7F74_unk59

	def_text_script CompTextScript86D7F74_unk60

	def_text_script CompTextScript86D7F74_unk61

	def_text_script CompTextScript86D7F74_unk62

	def_text_script CompTextScript86D7F74_unk63

	def_text_script CompTextScript86D7F74_unk64

	def_text_script CompTextScript86D7F74_unk65

	def_text_script CompTextScript86D7F74_unk66

	def_text_script CompTextScript86D7F74_unk67

	def_text_script CompTextScript86D7F74_unk68

	def_text_script CompTextScript86D7F74_unk69

	def_text_script CompTextScript86D7F74_unk70
	.string "Pwr HeatArm$"

	def_text_script CompTextScript86D7F74_unk71
	.string "Pwr SpoutHs$"

	def_text_script CompTextScript86D7F74_unk72
	.string "Pwr ThrustT$"

	def_text_script CompTextScript86D7F74_unk73
	.string "Pwr   TEdge$"

	def_text_script CompTextScript86D7F74_unk74
	.string "Pwr   TBolt$"

	def_text_script CompTextScript86D7F74_unk75
	.string "Pwr  TSwing$"

	def_text_script CompTextScript86D7F74_unk76
	.string "Pwr  TSwing$"

	def_text_script CompTextScript86D7F74_unk77
	.string "Pwr HSickle$"

	def_text_script CompTextScript86D7F74_unk78
	.string "Pwr  CrazyL$"

	def_text_script CompTextScript86D7F74_unk79
	.string "Pwr SReborn$"

	def_text_script CompTextScript86D7F74_unk80
	.string "Pwr  DAttkr$"

	def_text_script CompTextScript86D7F74_unk81
	.string "Pwr    None$"

	def_text_script CompTextScript86D7F74_unk82
	.string "Pwr WideSwd$"

	def_text_script CompTextScript86D7F74_unk83

	def_text_script CompTextScript86D7F74_unk84

	def_text_script CompTextScript86D7F74_unk85

	def_text_script CompTextScript86D7F74_unk86

	def_text_script CompTextScript86D7F74_unk87

	def_text_script CompTextScript86D7F74_unk88

	def_text_script CompTextScript86D7F74_unk89

	def_text_script CompTextScript86D7F74_unk90

	