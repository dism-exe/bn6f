	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86DA1B8::
	.word 0xEA900

	text_archive_start

	def_text_script CompText86DA1B8_unk0
	ts_position_text [
		left: 0x39,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_mugshot [
		left: 0x1E,
		top: 0x80,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Do you want to use\n"
	.string "a cable or Wireless\n"
	.string "Adapter?"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk1
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "I'll save first,\n"
	.string "okay?\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x0, 0x2, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk2
	ts_check_flag [
		flag: 0x1704,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3,
	]
	ts_clear_msg
	.string "OK to erase\n"
	.string "old save data?\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x0, 0x3, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk3
	ts_call_save [
		jumpIfSuccessful: 0x4,
		jumpIfFailed: 0xFF,
		jumpUnused: 0x0,
	]
	ts_clear_msg
	.string "Looks like I failed\n"
	.string "to save the data."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll try again. OK?\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x0, 0x1, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk4
	ts_clear_msg
	.string "Okay! I made\n"
	.string "the save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk5
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "You can't pick this\n"
	.string "mode yet!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk6
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Let's NetBattle!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk7
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Let's compare!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk8
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Let's trade!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk9
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Victory or defeat\n"
	.string "will be decided\n"
	.string "by a single battle."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk10
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Whoever wins\n"
	.string "two out of three\n"
	.string "will be the champ!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk11
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Use a randomly made\n"
	.string "folder and learn to\n"
	.string "master every chip!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk12
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Compare Data Library\n"
	.string "files and trade data\n"
	.string "with each other."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk13
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Lets you compare\n"
	.string "top deletion times\n"
	.string "with your friends."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk14
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Lets you trade\n"
	.string "BattleChips."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk15
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Lets you trade\n"
	.string "NaviCust Programs."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk16
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "You can trade\n"
	.string "folders with your\n"
	.string "buddy!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk17
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "It's a practice\n"
	.string "battle!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk18
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "You will forfeit a\n"
	.string "chip from your\n"
	.string "Pack if you lose."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk19
	.string "NetBattle@"

	def_text_script CompText86DA1B8_unk20
	.string "Compare@"

	def_text_script CompText86DA1B8_unk21
	.string "Trade@"

	def_text_script CompText86DA1B8_unk22
	.string "SnglBattl@"

	def_text_script CompText86DA1B8_unk23
	.string "TrplBattl@"

	def_text_script CompText86DA1B8_unk24
	.string "RandBattl@"

	def_text_script CompText86DA1B8_unk25
	.string "Practice@"

	def_text_script CompText86DA1B8_unk26
	.string "Battle@"

	def_text_script CompText86DA1B8_unk27
	.string "CompLibry@"

	def_text_script CompText86DA1B8_unk28
	.string "CompRecrd@"

	def_text_script CompText86DA1B8_unk29
	.string "BattlChps@"

	def_text_script CompText86DA1B8_unk30
	.string "Program@"

	def_text_script CompText86DA1B8_unk31
	.string "Folder@"

	def_text_script CompText86DA1B8_unk32
	.string "NetBattle Results@"

	def_text_script CompText86DA1B8_unk33
	.string "  "
	ts_clear_msg
	.string " ヂB"
	ts_clear_msg
	.string "0ヂW@"

	def_text_script CompText86DA1B8_unk34

	def_text_script CompText86DA1B8_unk35
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Your friend\n"
	.string "isn't ready!\n"
	.string "Hold on..."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk36
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "There seems to be a\n"
	.string "communication error."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk37
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Your friend is using\n"
	.string "a different mode."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk38
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "You have no chips\n"
	.string "other than GigaChips\n"
	.string "in your Pack!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk39
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "The BeastLink Gate\n"
	.string "doesn't seem to be\n"
	.string "connected..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Check the BeastLink\n"
	.string "Gate connection and\n"
	.string "reset the system."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk40
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Begin connection?\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk41
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "It seems like your\n"
	.string "friend stopped the\n"
	.string "connection..."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk42
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Connection\n"
	.string "cancelled."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk43
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Wait a second..."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk44
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Communication error."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk45

	def_text_script CompText86DA1B8_unk46
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Begin connection\n"
	.string "with \""
	ts_print_link_buffer [
		buffer: 0x1A,
	]
	.string "\"?\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk47
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Communication error.\n"
	.string "Disconnected."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't put anything\n"
	.string "between the Wireless\n"
	.string "Adapters."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Move the GBAs closer\n"
	.string "together."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk48
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Communication error."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Check the Wireless\n"
	.string "Adapter and reset\n"
	.string "the GBA."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk49
	.string "None@"

	def_text_script CompText86DA1B8_unk50
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_control_lock
	.string "Comparing libraries!"
	ts_control_unlock
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk51
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "There is new data\n"
	.string "in the Data Library!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk52
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "There isn't any new\n"
	.string "data in the library."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk53
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_control_lock
	.string "Comparing records!"
	ts_control_unlock
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk54
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Records updated!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk55
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Records not\n"
	.string "updated..."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk56

	def_text_script CompText86DA1B8_unk57

	def_text_script CompText86DA1B8_unk58

	def_text_script CompText86DA1B8_unk59

	def_text_script CompText86DA1B8_unk60
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Both chose \"None.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk61
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Trade completed."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk62
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "This folder had\n"
	.string "untradable chips.\n"
	.string "Trade cancelled."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk63
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "This folder can't be\n"
	.string "equipped.\n"
	.string "Trade cancelled."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk64
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Communication error."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk65
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Please wait..."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk66
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Your partner could\n"
	.string "not get this folder.\n"
	.string "Trade cancelled."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk67

	def_text_script CompText86DA1B8_unk68

	def_text_script CompText86DA1B8_unk69

	def_text_script CompText86DA1B8_unk70
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	ts_end

	def_text_script CompText86DA1B8_unk71

	def_text_script CompText86DA1B8_unk72

	def_text_script CompText86DA1B8_unk73

	def_text_script CompText86DA1B8_unk74

	def_text_script CompText86DA1B8_unk75

	def_text_script CompText86DA1B8_unk76

	def_text_script CompText86DA1B8_unk77

	def_text_script CompText86DA1B8_unk78

	def_text_script CompText86DA1B8_unk79

	def_text_script CompText86DA1B8_unk80
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Great job,\n"
	.string "Lan! We won!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk81
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Too bad,Lan!\n"
	.string "We lost!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk82
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "That was close!\n"
	.string "A tie! Let's win\n"
	.string "next time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk83
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "The battle was\n"
	.string "interrupted due\n"
	.string "to connection error."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk84

	def_text_script CompText86DA1B8_unk85

	def_text_script CompText86DA1B8_unk86

	def_text_script CompText86DA1B8_unk87

	def_text_script CompText86DA1B8_unk88

	def_text_script CompText86DA1B8_unk89

	def_text_script CompText86DA1B8_unk90
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Use a Game Link\n"
	.string "cable and connect!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk91
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Use a Wireless\n"
	.string "Adapter and connect!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk92
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Changing name!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk93
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Select Host or\n"
	.string "Client by pressing\n"
	.string "Left or Right."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk94
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Wireless Adapter\n"
	.string "initialization\n"
	.string "failed."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please turn off the\n"
	.string "GBA and insert the\n"
	.string "Wireless Adapter."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk95
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Use a Game Link\n"
	.string "cable and connect!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk96
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Use a Wireless\n"
	.string "Adapter and connect!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk97

	def_text_script CompText86DA1B8_unk98

	def_text_script CompText86DA1B8_unk99

	def_text_script CompText86DA1B8_unk100
	.string "Rank 1@"

	def_text_script CompText86DA1B8_unk101
	.string "Rank 2@"

	def_text_script CompText86DA1B8_unk102
	.string "Rank 3@"

	def_text_script CompText86DA1B8_unk103
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "The ranks are\n"
	.string "different!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk104
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Choose a rank!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk105
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Waiting for your\n"
	.string "opponent..."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk106

	def_text_script CompText86DA1B8_unk107
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Easy to use chips\n"
	.string "will be randomly\n"
	.string "selected."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk108
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "High-grade chips\n"
	.string "will be randomly\n"
	.string "selected."
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86DA1B8_unk109
	ts_msg_open_menu_quick
	ts_text_speed [
		delay: 0x0,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "True skill means\n"
	.string "you can use any\n"
	.string "random chip."
	ts_wait_hold [
		unused: 0x0,
	]

	