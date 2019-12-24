	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B1B8C::
	.word 0x44700

	text_archive_start

	def_text_script CompText87B1B8C_unk0
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87B1B8C_unk3_id,
	]
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "That guy is nuts to\n"
	.string "send a red-hot Navi\n"
	.string "to get water!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_msg_close
	ts_store_timer [
		timer: 0x0,
		value: 0x88,
	]
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x89,
	]
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "... Yo,check it out!\n"
	.string "Water!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B1B8C_unk1_id

	def_text_script CompText87B1B8C_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "HeatMan got:\n"
	.string "\""
	ts_print_item [
		item: 0xA,
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
	ts_jump target=CompText87B1B8C_unk2_id

	def_text_script CompText87B1B8C_unk2
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Now let's get this\n"
	.string "back to MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's time to blaze\n"
	.string "on outta here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B1B8C_unk6_id

	def_text_script CompText87B1B8C_unk3
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Ooh,so this is\n"
	.string "\""
	ts_print_item [
		item: 0xA,
		buffer: 0x0,
	]
	.string "\",drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_msg_close
	ts_store_timer [
		timer: 0x0,
		value: 0x88,
	]
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x89,
	]
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Mmm...drip! This is\n"
	.string "wonderful water!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan will get\n"
	.string "better with this,\n"
	.string "drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B1B8C_unk4_id

	def_text_script CompText87B1B8C_unk4
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "SpoutMan got:\n"
	.string "\""
	ts_print_item [
		item: 0xA,
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
	ts_jump target=CompText87B1B8C_unk5_id

	def_text_script CompText87B1B8C_unk5
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Ooh,I better\n"
	.string "hurry back to\n"
	.string "MegaMan,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B1B8C_unk6_id

	def_text_script CompText87B1B8C_unk6
	ts_mugshot_hide
	ts_msg_open
	.string "Ahoo,hoo,hoo!!\n"
	.string "Ah,I thought you'd\n"
	.string "come here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: CompText87B1B8C_unk7_id,
		jumpIfCybeastFalzar: CompText87B1B8C_unk8_id,
	]

	def_text_script CompText87B1B8C_unk7
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Who the...!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B1B8C_unk8
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "W-Who's there...drip?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B1B8C_unk9
	ts_sound_play_bgm track=0x1C
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "We have this little\n"
	.string "plan,you see,and it\n"
	.string "would be a little"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "problematic if\n"
	.string "MegaMan were to live\n"
	.string "to play another day."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "W-What's with\n"
	.string "this guy!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x54
	.string "The Cybeasts' power\n"
	.string "is ours and\n"
	.string "ours alone!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Then,that means...\n"
	.string "you're the\n"
	.string "one that..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x54
	.string "Ahoo,hoo,hoo!\n"
	.string "We have a winner!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And for your prize,\n"
	.string "you get to leave the\n"
	.string "water right here!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: CompText87B1B8C_unk10_id,
		jumpIfCybeastFalzar: CompText87B1B8C_unk11_id,
	]

	def_text_script CompText87B1B8C_unk10
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Ooh,I'm burning for\n"
	.string "a fight!\n"
	.string "Bring it on,clown!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B1B8C_unk11
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "This water's for\n"
	.string "MegaMan,drip! I\n"
	.string "can't lose,drip!"
	ts_key_wait any=0x0
	ts_end

	