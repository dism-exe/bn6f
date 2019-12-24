	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8798660::
	.word 0x41900

	text_archive_start

	def_text_script CompText8798660_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I'M THE PROGRAM IN\n"
	.string "CHARGE OF THE\n"
	.string "JUDGETREE..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'VE GOT A LOT TO\n"
	.string "SAY IF YOU WANT TO\n"
	.string "LISTEN..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "IT'S IMPORTANT INFO\n"
	.string "IF YOU ARE GOING TO\n"
	.string "KEEP ON GOING..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8798660_unk1
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "AS A COUNTER TO THE\n"
	.string "RECENT HACKINGS,\n"
	.string "WE'VE IMPLEMENTED"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A MEANS TO PREVENT\n"
	.string "BACKTRACKING IN\n"
	.string "THIS COMP."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "STEP ON A PANEL IN\n"
	.string "THIS AREA,AND GRASS\n"
	.string "WILL BEGIN TO GROW."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "STEPPING ON THE\n"
	.string "GRASS IS REGARDED AS\n"
	.string "BREAKING THE LAW."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ONE OF THE GUARDS\n"
	.string "IN THIS AREA WILL\n"
	.string "APPEAR,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A COURT WILL BE\n"
	.string "OPENED,AND VIOLATORS\n"
	.string "WILL BE PUNISHED."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ONE MORE THING. ONE\n"
	.string "STEP IS CONSIDERED\n"
	.string "ONE CRIME."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "STEP ON 3 GRASS\n"
	.string "PANELS,AND YOU'RE\n"
	.string "GUILTY OF 3 CRIMES."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE MORE CRIMES\n"
	.string "COMMITTED,THE BIGGER\n"
	.string "THE PUNISHMENT..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AHH,ANOTHER THING..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PRESS THE L BUTTON\n"
	.string "TO LOOK AT YOUR\n"
	.string "SURROUNDINGS."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PRESS THE L BUTTON\n"
	.string "AGAIN TO STOP\n"
	.string "LOOKING."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE BEST THING TO\n"
	.string "DO IS LOOK AHEAD,\n"
	.string "THEN MOVE FORWARD."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE SHOULD BE A\n"
	.string "DOOR BLOCKING YOUR\n"
	.string "PATH..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE'LL DEFINITELY\n"
	.string "BE BUTTONS NEAR\n"
	.string "THERE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AND PRESSING ALL OF\n"
	.string "THEM WILL OPEN THE\n"
	.string "DOOR."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...TAKE CARE AND\n"
	.string "GOOD LUCK..."
	ts_key_wait any=0x0
	ts_end

	