	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879A28C::
	.word 0x51C00

	text_archive_start

	def_text_script CompText879A28C_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,they're coming!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Leave it to me!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xFDF
	ts_flag_set flag=0xFE0
	ts_start_fixed_battle battle=0xC0
	ts_end

	def_text_script CompText879A28C_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,they're coming!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Leave it to me!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xFDF
	ts_flag_set flag=0xFE1
	ts_start_fixed_battle battle=0xC1
	ts_end

	def_text_script CompText879A28C_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,they're coming!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Leave it to me!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xFDF
	ts_flag_set flag=0xFE2
	ts_start_fixed_battle battle=0xC2
	ts_end

	def_text_script CompText879A28C_unk3
	ts_check_flag [
		flag: 0xE42,
		jumpIfTrue: CompText879A28C_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xFFF,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText879A28C_unk5_id,
	]
	ts_check_flag [
		flag: 0xED7,
		jumpIfTrue: CompText879A28C_unk4_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xED7
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WHHHAAAAA..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHAT'S GOING ON\n"
	.string "HERE!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I THOUGHT I\n"
	.string "HEARD A BEAST'S\n"
	.string "ROAR,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THEN ALL OF A SUDDEN\n"
	.string "EVIL SPIRITS JUST"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "APPEARED AND TOOK\n"
	.string "OVER THIS AREA!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Was there a Navi\n"
	.string "that looked\n"
	.string "like a clown?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "AHH... THAT NAVI\n"
	.string "IS RIGHT OVER\n"
	.string "THERE!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I THOUGHT I WOULD\n"
	.string "FINISH HIM,BUT"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BECAUSE OF THE\n"
	.string "DARKNESS THE EVIL\n"
	.string "SPIRITS MADE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I COULDN'T REACH\n"
	.string "HIM."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x54
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Welcome to the\n"
	.string "bigtop,MegaMan.\n"
	.string "If you want to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "fight me,you have\n"
	.string "to finish the 3\n"
	.string "EvilSpirits in this"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "area. Can you defeat\n"
	.string "them without your\n"
	.string "SoulWeapon?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Have a honkin'\n"
	.string "great time!!\n"
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "CircusMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go,Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Gotcha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "THE EVIL SPIRITS\n"
	.string "IN THIS AREA ARE"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "FLYING AROUND LIKE\n"
	.string "A STORM!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TAKE CARE!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879A28C_unk4
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WATCH OUT FOR\n"
	.string "FLYING EVIL SPIRITS!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879A28C_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THE DARKNESS IS\n"
	.string "GONE!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "NOW ALL THAT'S\n"
	.string "LEFT IS CRUSHING\n"
	.string "THAT DUMB NAVI!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "GO FOR IT!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879A28C_unk6
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THE EVIL SPIRITS ARE\n"
	.string "GONE,AND IT'S\n"
	.string "PEACEFUL AGAIN,BUT"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'M WORRIED\n"
	.string "SOMETHING ELSE BAD\n"
	.string "MIGHT HAPPEN NEXT."
	ts_key_wait any=0x0
	ts_end

	