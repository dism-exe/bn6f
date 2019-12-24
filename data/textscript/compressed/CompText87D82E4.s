	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D82E4::
	.word 0x60400

	text_archive_start

	def_text_script CompText87D82E4_unk0
	ts_mugshot_show mugshot=0x5B
	ts_msg_open
	.string "... Wahaha.\n"
	.string "You're not bad..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I may let you\n"
	.string "entertain me again\n"
	.string "sometime..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Until then,keep\n"
	.string "training..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "See you around."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D82E4_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Phew,I never\n"
	.string "thought we'd meet\n"
	.string "Bass here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Huh?\n"
	.string "Looks like he\n"
	.string "dropped something..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D82E4_unk2
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x3,
		jumpIfElecMan: 0x4,
		jumpIfSlashMan: 0x5,
		jumpIfEraseMan: 0x6,
		jumpIfChargeMan: 0x7,
		jumpIfSpoutMan: 0x8,
		jumpIfTomahawkMan: 0x9,
		jumpIfTenguMan: 0xA,
		jumpIfGroundMan: 0xB,
		jumpIfDustMan: 0xC,
		jumpIfProtoMan: 0xD,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "What is it?\n"
	.string "It looks like a\n"
	.string "key..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk3
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Looks like a key...\n"
	.string "Wonder what it goes\n"
	.string "to...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x32,
		amount: 0x1,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "HeatMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk4
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "It seems to be a key\n"
	.string "of some sort...\n"
	.string "What does it open?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "ElecMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk5
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "A key... But it sure\n"
	.string "is a strange shape."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "SlashMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk6
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "It looks like a\n"
	.string "key..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Also looks kind of\n"
	.string "fancy..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "EraseMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk7
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo...\n"
	.string "I think it's a key\n"
	.string "to something."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "ChargeMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk8
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "A key,drip!\n"
	.string "A key to something,\n"
	.string "drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "SpoutMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk9
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Hmm... It looks like\n"
	.string "a key to something."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "TomahawkMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk10
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Hmm,it is a key...\n"
	.string "However,I know not\n"
	.string "what it unlocks."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "TenguMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk11
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiir...\n"
	.string "It's a key,yo!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "GroundMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk12
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "It's a key to...\n"
	.string "something...? Well,\n"
	.string "it's not junk..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "DustMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D82E4_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "A key shaped like\n"
	.string "a bat..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe we can\n"
	.string "use this key\n"
	.string "somewhere..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Someday,we're\n"
	.string "going to finish\n"
	.string "this,Bass..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So until then,we're\n"
	.string "gonna train hard to\n"
	.string "bring you down!"
	ts_key_wait any=0x0
	ts_end

	