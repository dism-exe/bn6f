	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87964C8::
	.word 0x5D400

	text_archive_start

	def_text_script CompText87964C8_unk0
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x1,
		jumpIfElecMan: 0x1,
		jumpIfSlashMan: 0x1,
		jumpIfEraseMan: 0x1,
		jumpIfChargeMan: 0x1,
		jumpIfSpoutMan: 0x1,
		jumpIfTomahawkMan: 0x1,
		jumpIfTenguMan: 0x1,
		jumpIfGroundMan: 0x1,
		jumpIfDustMan: 0x1,
		jumpIfProtoMan: 0x1,
	]
	ts_flag_set flag=0x101B
	ts_end

	def_text_script CompText87964C8_unk1
	ts_mugshot_show mugshot=0x35
	ts_msg_open
	.string "I have to hurry\n"
	.string "and find Django..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk2

	def_text_script CompText87964C8_unk3
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "WoooooOOOOoooo..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ABLL...\n"
	.string "...AALRBA"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk4

	def_text_script CompText87964C8_unk5
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I research this\n"
	.string "area for the sake\n"
	.string "of research..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I made a folder\n"
	.string "designed to\n"
	.string "eliminate crime..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's called...\n"
	.string "\""
	ts_print_folder_name [
		entry: 0x5,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Want to try it!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't mind\n"
	.string "replacing your\n"
	.string "current Extra"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "folder,I can send\n"
	.string "it to you right\n"
	.string "away."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What do you think?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0xA
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sure! "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No,Thanks"
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "I see...\n"
	.string "It really is a\n"
	.string "good folder..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk6
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Alright...\n"
	.string "Here we go!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Soul Injection!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WAAAAAAAAAHHHHH!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_start_give_folder [
		folder: 0x5,
		slot: 0x2,
	]
	ts_mugshot_hide
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string " "
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x73
	.string "Brrrnnn!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_enable_text_sfx
	ts_mugshot_show mugshot=0x42
	.string "Great! Done sending!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Your Extra Folder\n"
	.string "changed into the\n"
	.string "\""
	ts_print_folder_name [
		entry: 0x5,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "From now on,you\n"
	.string "are a true\n"
	.string "SoulBattler!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk7

	def_text_script CompText87964C8_unk8

	def_text_script CompText87964C8_unk9

	def_text_script CompText87964C8_unk10
	ts_check_item07 [
		item: 0x44,
		amount: 0x1,
		jumpIfEqual: 0xD,
		jumpIfGreater: 0xD,
		jumpIfLess: 0xFF,
	]
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "I'm kinda a well\n"
	.string "known hacker in the\n"
	.string "Underworld."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've come to talk\n"
	.string "business..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This item's called\n"
	.string "\""
	ts_print_item [
		item: 0x44,
		buffer: 0x0,
	]
	.string "\"...\n"
	.string "Only 3000 Zennys..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I got it by hacking\n"
	.string "some weird computer\n"
	.string "I found..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wanna buy it?"
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
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No Way"
	ts_select 0x6, 0x80, 0xB, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "Hmmmph...\n"
	.string "Whatever..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk11
	ts_check_take_zenny [
		amount: 0xBB8,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xC,
		jumpIfSome: 0xC,
	]
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Hahahaha...\n"
	.string "Thanks!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x44,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x44,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "That's extremely\n"
	.string "dangerous..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And extremely rare!\n"
	.string "A nice purchase!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk12
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Too bad...\n"
	.string "You don't have\n"
	.string "enough money..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk13
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Nice doin' business\n"
	.string "with ya! Hahaha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk14
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Ahhhh...Ahhhh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ARAAB...\n"
	.string "...ARRBA"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk15
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "WooooOOOOoo..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BRBBB...\n"
	.string "...BBARR"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk16

	def_text_script CompText87964C8_unk17

	def_text_script CompText87964C8_unk18

	def_text_script CompText87964C8_unk19
	ts_check_shop_stock [
		shop: 0x11,
		jumpIfStocked: 0xFF,
		jumpIfSoldOut: 0x15,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "I'm a NetMerchant.\n"
	.string "Look at my wares?\n"
	ts_position_option_horizontal width=0xB
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Look "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0x14, 0xFF
	ts_start_shop shop=0x11

	def_text_script CompText87964C8_unk20
	ts_clear_msg
	.string "Come again..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87964C8_unk21
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Too bad for you...\n"
	.string "We're all out of\n"
	.string "stock..."
	ts_key_wait any=0x0
	ts_end

	