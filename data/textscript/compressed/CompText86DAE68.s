	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86DAE68::
	.word 0x25100

	text_archive_start

	def_text_script CompText86DAE68_unk0
	ts_msg_open
	ts_text_speed 0x0
	ts_mugshot_show 0x37
	.string "Please choose to be\n"
	.string "the Host or Client.\n"
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Host  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Client"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86DAE68_unk1
	ts_msg_open
	ts_text_speed 0x0
	ts_mugshot_show 0x37
	.string "This is the host.\n"
	.string "Please wait for\n"
	.string "Client transmission."
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86DAE68_unk2
	ts_msg_open
	ts_text_speed 0x0
	ts_mugshot_show 0x37
	.string "Mike applied to\n"
	.string "play wirelessly!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Play with Mike?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86DAE68_unk3
	ts_msg_open
	ts_text_speed 0x0
	ts_mugshot_show 0x37
	.string "Connected to play\n"
	.string "with Mike."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86DAE68_unk4
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	.string "Seems like wireless\n"
	.string "initialization has\n"
	.string "failed..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86DAE68_unk5
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	.string "Communication error.\n"
	.string "Please reset the\n"
	.string "system..."
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86DAE68_unk6
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	.string "There was a link\n"
	.string "error."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86DAE68_unk7
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	.string "Your partner\n"
	.string "cancelled the\n"
	.string "transmission."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86DAE68_unk8
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	.string "I cancelled the\n"
	.string "transmission."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86DAE68_unk9

	def_text_script CompText86DAE68_unk10
	.string "Bob$"

	def_text_script CompText86DAE68_unk11
	.string "Mike$"

	def_text_script CompText86DAE68_unk12
	.string "Let's play!$"

	