	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86D894C::
	.word 0x5C200

	text_archive_start

	def_text_script CompText86D894C_unk0
	ts_check_flag 0xF2, 0x0, 0xFF, 0x1
	ts_check_flag 0xF7, 0x0, 0x3, 0x2

	def_text_script CompText86D894C_unk1
	ts_check_flag 0xF7, 0x0, 0x4, 0xFF
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "This is the Navi's\n"
	.string "status."
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk2
	ts_check_navi_all 0xFF, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "This is the Navi's\n"
	.string "status.\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x0, 0x0
	ts_space 0x1
	.string " NaviCust"
	ts_select 0x5, 0x40, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk3
	ts_check_navi_all 0xFF, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4
	ts_check_flag 0xF, 0x17, 0xD, 0xFF
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "This is the Navi's\n"
	.string "status."
	ts_key_wait 0x0
	ts_clear_msg
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

	def_text_script CompText86D894C_unk4
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "This is the Navi's\n"
	.string "status.\n"
	ts_position_option_vertical 0x8
	ts_option 0x0, 0x0, 0x0
	ts_space 0x1
	.string " Records"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk5
	.string "Attack LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompText86D894C_unk6
	.string "Speed  LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompText86D894C_unk7
	.string "Charge LV"
	ts_clear_msg
	.string " ダ$"

	def_text_script CompText86D894C_unk8
	.string "Reg.Mem "
	ts_clear_msg
	.string " ダ[MB]$"

	def_text_script CompText86D894C_unk9
	.string "MegaChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompText86D894C_unk10
	.string "GigaChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompText86D894C_unk11
	.string "Pwr ChargeS$"

	def_text_script CompText86D894C_unk12
	.string "Pwr Custom$"

	def_text_script CompText86D894C_unk13
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "This is the Navi's\n"
	.string "status.\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " NaviCust\n"
	ts_position_option_vertical 0xC
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " records"
	ts_select 0x6, 0x41, 0xFF, 0xFF, 0xFF
	ts_wait 0x1, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk14
	.string "DarkChip "
	ts_clear_msg
	.string " ダ$"

	def_text_script CompText86D894C_unk15
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "Unable to use the\n"
	.string "equipped folder.\n"
	.string "Switching to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Extra Folder."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk16
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "Equipped folder\n"
	.string "can't be used now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can't use the\n"
	.string "Extra Folder,so\n"
	.string "use this one."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Lan got:\n"
	.string "\""
	ts_print_folder_name 0x22, 0x0
	.string "\"!!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Switching folders."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk17
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "Can't use the\n"
	.string "equipped folder."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since the Extra\n"
	.string "Folder cannot be\n"
	.string "used,use this."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Lan got:\n"
	.string "\""
	ts_print_folder_name 0x22, 0x0
	.string "\"!!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Switching to this\n"
	.string "folder."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk18
	.string "V"
	ts_clear_msg
	.string "01$"

	def_text_script CompText86D894C_unk19
	.string "SP $"

	def_text_script CompText86D894C_unk20

	def_text_script CompText86D894C_unk21

	def_text_script CompText86D894C_unk22

	def_text_script CompText86D894C_unk23

	def_text_script CompText86D894C_unk24

	def_text_script CompText86D894C_unk25

	def_text_script CompText86D894C_unk26

	def_text_script CompText86D894C_unk27

	def_text_script CompText86D894C_unk28

	def_text_script CompText86D894C_unk29

	def_text_script CompText86D894C_unk30

	def_text_script CompText86D894C_unk31

	def_text_script CompText86D894C_unk32

	def_text_script CompText86D894C_unk33

	def_text_script CompText86D894C_unk34

	def_text_script CompText86D894C_unk35

	def_text_script CompText86D894C_unk36

	def_text_script CompText86D894C_unk37

	def_text_script CompText86D894C_unk38

	def_text_script CompText86D894C_unk39

	def_text_script CompText86D894C_unk40

	def_text_script CompText86D894C_unk41

	def_text_script CompText86D894C_unk42

	def_text_script CompText86D894C_unk43

	def_text_script CompText86D894C_unk44

	def_text_script CompText86D894C_unk45

	def_text_script CompText86D894C_unk46

	def_text_script CompText86D894C_unk47

	def_text_script CompText86D894C_unk48

	def_text_script CompText86D894C_unk49

	def_text_script CompText86D894C_unk50

	def_text_script CompText86D894C_unk51

	def_text_script CompText86D894C_unk52

	def_text_script CompText86D894C_unk53
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

	def_text_script CompText86D894C_unk54
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

	def_text_script CompText86D894C_unk55
	ts_flag_clear 0x13, 0x17
	ts_call_save 0x38, 0xFF, 0x0
	ts_position_text 0x39, 0x6C, 0x3
	ts_text_speed 0x0
	ts_position_arrow 0xDE, 0x8D
	ts_clear_msg
	.string "Try saving\n"
	.string "again?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0x35, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk56
	ts_position_text 0x39, 0x6C, 0x3
	ts_text_speed 0x0
	ts_position_arrow 0xDE, 0x8D
	ts_clear_msg
	.string "The save is complete"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk57
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	.string "Can't save here"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D894C_unk58

	def_text_script CompText86D894C_unk59

	def_text_script CompText86D894C_unk60

	def_text_script CompText86D894C_unk61

	def_text_script CompText86D894C_unk62

	def_text_script CompText86D894C_unk63

	def_text_script CompText86D894C_unk64

	def_text_script CompText86D894C_unk65

	def_text_script CompText86D894C_unk66

	def_text_script CompText86D894C_unk67

	def_text_script CompText86D894C_unk68

	def_text_script CompText86D894C_unk69

	def_text_script CompText86D894C_unk70
	.string "Pwr HeatArm$"

	def_text_script CompText86D894C_unk71
	.string "Pwr SpoutHs$"

	def_text_script CompText86D894C_unk72
	.string "Pwr ThrustT$"

	def_text_script CompText86D894C_unk73
	.string "Pwr   TEdge$"

	def_text_script CompText86D894C_unk74
	.string "Pwr   TBolt$"

	def_text_script CompText86D894C_unk75
	.string "Pwr  TSwing$"

	def_text_script CompText86D894C_unk76
	.string "Pwr  TSwing$"

	def_text_script CompText86D894C_unk77
	.string "Pwr HSickle$"

	def_text_script CompText86D894C_unk78
	.string "Pwr  CrazyL$"

	def_text_script CompText86D894C_unk79
	.string "Pwr SReborn$"

	def_text_script CompText86D894C_unk80
	.string "Pwr  DAttkr$"

	def_text_script CompText86D894C_unk81
	.string "Pwr    None$"

	def_text_script CompText86D894C_unk82
	.string "Pwr WideSwd$"

	def_text_script CompText86D894C_unk83

	def_text_script CompText86D894C_unk84

	def_text_script CompText86D894C_unk85

	def_text_script CompText86D894C_unk86

	def_text_script CompText86D894C_unk87

	def_text_script CompText86D894C_unk88

	def_text_script CompText86D894C_unk89

	def_text_script CompText86D894C_unk90

	