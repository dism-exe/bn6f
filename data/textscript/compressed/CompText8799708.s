	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8799708::
	.word 0x4E500

	text_archive_start

	def_text_script CompText8799708_unk0
	ts_check_flag 0x67, 0xE, 0x2, 0xFF
	ts_check_flag 0xF9, 0xF, 0xFF, 0x3
	ts_check_flag 0xD5, 0xE, 0x1, 0xFF
	ts_flag_set 0xD5, 0xE
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "AHHH...\n"
	.string "I'M IN TROUBLE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "ALL OF A SUDDEN\n"
	.string "THIS SCARY NAVI\n"
	.string "SHOWED UP..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "HE DID SOMETHING\n"
	.string "STRANGE AND THEN"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE PROGRAMS INSIDE\n"
	.string "THE TANKS CAME\n"
	.string "RUSHING OUT..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THAT'S WHY THE\n"
	.string "SEASIDE PAVILION\n"
	.string "DISPLAY IS BROKEN..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "TO RETURN THINGS TO\n"
	.string "NORMAL,I NEED TO"
	ts_key_wait 0x0
	ts_clear_msg
	.string "FLIP THE CONTROL\n"
	.string "SWITCH OVER THERE,\n"
	.string "BUT THE EMERGENCY"
	ts_key_wait 0x0
	ts_clear_msg
	.string "DOOR IS CLOSED,AND\n"
	.string "I CAN'T GET TO THE\n"
	.string "SWITCH..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "I see...\n"
	.string "I'll solve your\n"
	.string "problem!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The operation of\n"
	.string "this Comp is like"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the one in the\n"
	.string "Aquarium."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "YEAH,THE COMP HERE\n"
	.string "WAS MADE ALONGSIDE\n"
	.string "THE AQUARIUM COMP."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "So we find the\n"
	.string "Mr.Progs and put"
	ts_key_wait 0x0
	ts_clear_msg
	.string "them back in their\n"
	.string "tanks!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go,MegaMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "OK!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "TAKE CARE!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8799708_unk1
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "...YOU HAVE TO BE\n"
	.string "SMART TO RETURN THE\n"
	.string "FISH PROGRAMS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE FISH PROGRAMS\n"
	.string "ARE SO SHOCKED THEY\n"
	.string "ARE OUT OF THEIR"
	ts_key_wait 0x0
	ts_clear_msg
	.string "TANKS THAT THEY\n"
	.string "FORGOT WHAT KIND OF\n"
	.string "FISH THEY ARE!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ONE MORE THING TO\n"
	.string "REMEMBER IS THIS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A SHARK VIRUS WILL\n"
	.string "ATTACK THE FISH\n"
	.string "PROGRAMS."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF ATTACKED BY A\n"
	.string "SHARK VIRUS,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE FISH PROGRAM\n"
	.string "WILL BE TAKEN TO A\n"
	.string "DIFFERENT LOCATION."
	ts_key_wait 0x0
	ts_clear_msg
	.string "BEWARE OF THE\n"
	.string "SHARK VIRUS!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8799708_unk2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THANKS TO YOU,\n"
	.string "THINGS SEEM BACK\n"
	.string "TO NORMAL!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THANK YOU SO MUCH!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8799708_unk3
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "IT LOOKS LIKE THE\n"
	.string "DOOR IS OPEN!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NOW THAT YOU CAN USE\n"
	.string "THE CONTROL PANEL"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THINGS CAN FINALLY\n"
	.string "GET BACK TO NORMAL!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8799708_unk4

	