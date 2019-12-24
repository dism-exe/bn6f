	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875F424::
	.word 0x51F00

	text_archive_start

	def_text_script CompText875F424_unk0
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "SeasideArea2 on it."
	ts_key_wait any=0x0
	ts_start_map map=0x4
	ts_end

	def_text_script CompText875F424_unk1
	ts_jump target=4

	def_text_script CompText875F424_unk2
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0xFF,
		jumpIfSlashMan: 0xB,
		jumpIfEraseMan: 0xFF,
		jumpIfChargeMan: 0xC,
		jumpIfSpoutMan: 0xFF,
		jumpIfTomahawkMan: 0xFF,
		jumpIfTenguMan: 0xD,
		jumpIfGroundMan: 0xFF,
		jumpIfDustMan: 0xE,
		jumpIfProtoMan: 0xFF,
	]
	ts_msg_open
	.string "There is a violent\n"
	.string "cyclone blocking\n"
	.string "the way!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F424_unk3
	ts_msg_open
	.string "The darkness won't\n"
	.string "budge,even with your\n"
	.string "strongest attacks."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe the\n"
	.string "EvilSpirits are\n"
	.string "related somehow..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F424_unk4
	ts_msg_open
	.string "IF YOU WISH TO\n"
	.string "PROCEED,YOU WILL\n"
	.string "NEED STRENGTH."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I WILL NOW PUT YOUR\n"
	.string "STRENGTH TO THE\n"
	.string "TEST."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ARE YOU READY?"
	ts_key_wait any=0x0
	ts_clear_msg
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
	ts_select 0x6, 0x81, 0x5, 0xFF, 0xFF
	ts_end

	def_text_script CompText875F424_unk5
	ts_msg_open
	.string "BATTLE START!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xFC
	ts_end

	def_text_script CompText875F424_unk6
	ts_msg_open
	.string "PLEASE,PASS ON\n"
	.string "THROUGH."
	ts_key_wait any=0x0
	ts_flag_clear flag=0x32
	ts_end

	def_text_script CompText875F424_unk7
	.string "A Security Cube that\n"
	.string "protects the\n"
	.string "Aquarium..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It can't be unlocked\n"
	.string "without its P-Code!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F424_unk8
	ts_msg_open
	.string "TOLL TO GO THROUGH:\n"
	.string "100 ZENNY"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Pay  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Don't pay"
	ts_select 0x6, 0x80, 0x9, 0xFF, 0xFF
	ts_clear_msg
	.string "PLEASE COME AGAIN!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F424_unk9
	ts_check_take_zenny [
		amount: 0x64,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xA,
		jumpIfSome: 0xA,
	]
	ts_msg_open
	.string "THANK YOU FOR\n"
	.string "YOUR PAYMENT."
	ts_key_wait any=0x0
	ts_flag_clear flag=0x86
	ts_end

	def_text_script CompText875F424_unk10
	ts_msg_open
	.string "NOT ENOUGH ZENNY...\n"
	.string "PLEASE COME AGAIN..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875F424_unk11
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "This cyclone has\n"
	.string "nothing on me!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x164
	ts_wait frames=0x1E
	.string "SlashMan's super\n"
	.string "spin attack wiped\n"
	.string "the cyclone out!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText875F424_unk12
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,chooooo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going to charge\n"
	.string "through this\n"
	.string "cyclone!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xE4
	ts_wait frames=0x1E
	.string "ChargeMan erased the\n"
	.string "cyclone with his\n"
	.string "super charge attack!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText875F424_unk13
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "A cyclone like this\n"
	.string "is nothing for a\n"
	.string "wind master..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmmmph!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x11F
	ts_wait frames=0x1E
	.string "TenguMan erased the\n"
	.string "cyclone with one\n"
	.string "wave of his fan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText875F424_unk14
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Gahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if this\n"
	.string "cyclone can stand up\n"
	.string "to my vacuum power!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*vroooooom!!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xAD
	ts_wait frames=0x1E
	.string "DustMan sucked up\n"
	.string "the cyclone!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText875F424_unk15
	ts_flag_clear flag=0x173
	ts_end

	def_text_script CompText875F424_unk16

	def_text_script CompText875F424_unk17

	def_text_script CompText875F424_unk18

	def_text_script CompText875F424_unk19

	def_text_script CompText875F424_unk20

	