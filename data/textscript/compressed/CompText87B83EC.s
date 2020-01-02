	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B83EC::
	.word 0x2D100

	text_archive_start

	def_text_script CompText87B83EC_unk0
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x1,
	]
	ts_wait frames=0xA
	ts_sound_play00 track=0x1A0
	.string "*crack! "
	ts_wait frames=0x20
	ts_sound_play00 track=0x1A0
	.string "crack!*"
	ts_wait frames=0x20
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x2,
	]
	ts_clear_msg
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_jump target=CompText87B83EC_unk1_id

	def_text_script CompText87B83EC_unk1
	ts_mugshot_hide
	ts_msg_open
	.string "... I WILL NOW\n"
	.string "PASS JUDGMENT."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE CRIME OF HACKING\n"
	.string "INTO THE JUDGETREE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "FOR WHICH THE\n"
	.string "DEFENDANT,\n"
	.string "YUICHIRO HIKARI,IS"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CHARGED WITH,IS\n"
	.string "UNFORGIVABLE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "EVEN THOUGH THE HACK\n"
	.string "WAS SUCCESSFULLY\n"
	.string "STOPPED,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE IS NO ROOM\n"
	.string "FOR MERCY."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THEREFORE,I HEREBY\n"
	.string "SENTENCE THE\n"
	.string "DEFENDANT,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YUICHIRO HIKARI,TO\n"
	.string "100 HOURS OF\n"
	.string "ZAPPING."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE PUNISHMENT IS\n"
	.string "TO BE CARRIED OUT\n"
	.string "IN 1 HOUR."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B83EC_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Dad's GUILTY!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And they're gonna\n"
	.string "zap him in an hour!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This has to be some\n"
	.string "kind of cruel joke!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B83EC_unk3_id

	def_text_script CompText87B83EC_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Something definitely\n"
	.string "feels strange about\n"
	.string "all this,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know Dad\n"
	.string "wouldn't do anything\n"
	.string "like hacking..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We've gotta find out\n"
	.string "more! We've gotta\n"
	.string "get more facts!"
	ts_key_wait any=0x0
	ts_end

	