	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8797A20::
	.word 0x69A00

	text_archive_start

	def_text_script CompText8797A20_unk0
	ts_check_flag [
		flag: 0x5EA,
		jumpIfTrue: 0x2,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x5E8,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x5E8,
	]
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "OWWWW! OWWWW!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OWWW! OWWW! OWWW!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Relax!\n"
	.string "What's the matter!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "IT'S AWFUL!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I WAS SHOCKED TO SEE\n"
	.string "A NAVI BREAK IN,AND"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THEN A FISHPRGM CAME\n"
	.string "OUT OF THE TANK!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I TRIED TO ESCAPE\n"
	.string "THROUGH THE EMERGENCY"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "EXIT,BUT THE PATH\n"
	.string "WAS BLOCKED!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THAT'S WHEN I BEGAN\n"
	.string "TO PANIC!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Is there any way\n"
	.string "to make you calm\n"
	.string "down?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "...I GUESS IF WE\n"
	.string "RETURN THE FISHPRGM\n"
	.string "TO THE TANK..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BUT HOW DO WE\n"
	.string "SEND THEM BACK...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I SEEM TO HAVE\n"
	.string "FORGOTTEN\n"
	.string "\"WHAT FISH I AM!?\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SINCE EVERY FISH\n"
	.string "HAS ITS OWN TANK,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WE'D HAVE TO PUT\n"
	.string "THEM BACK IN THE\n"
	.string "RIGHT TANK..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "So we have to\n"
	.string "guess which is the\n"
	.string "right tank...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Even though he\n"
	.string "doesn't remember,\n"
	.string "fish are fish,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I bet there are\n"
	.string "hints to where the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "fish go if we look\n"
	.string "around the Aquarium!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you want a hint\n"
	.string "about where the fish"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "go,press the\n"
	.string "L Button to call me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll help you out,\n"
	.string "OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "OK!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "THERE IS ONE MORE\n"
	.string "THING I HAVE TO\n"
	.string "TELL YOU..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IF A FISHPRGM GETS\n"
	.string "KNOCKED INTO A\n"
	.string "WATERWAY,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A SHARK VIRUS\n"
	.string "WILL ATTACK IT."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IF ATTACKED BY\n"
	.string "A SHARK VIRUS,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A FISHPRGM WILL\n"
	.string "BE CARRIED OFF TO\n"
	.string "SOMEWHERE ELSE."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SO BE CAREFUL OF\n"
	.string "THE SHARK VIRUSES!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Gotcha!\n"
	.string "Leave that\n"
	.string "up to me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Let's start\n"
	.string "looking for some\n"
	.string "FishPrgms!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8797A20_unk1
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "...I GUESS IF WE\n"
	.string "RETURN THE FISHPRGM\n"
	.string "TO THE TANK..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BUT HOW DO WE\n"
	.string "SEND THEM BACK...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I SEEM TO HAVE\n"
	.string "FORGOTTEN\n"
	.string "\"WHAT FISH I AM!?\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THERE IS ONE MORE\n"
	.string "THING I HAVE TO\n"
	.string "TELL YOU..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SHARK VIRUSES\n"
	.string "WILL ATTACK\n"
	.string "FISHPRGMS."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IF ATTACKED BY\n"
	.string "A SHARK VIRUS,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A FISHPRGM WILL\n"
	.string "BE CARRIED OFF TO\n"
	.string "SOMEWHERE ELSE."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SO BE CAREFUL OF\n"
	.string "THE SHARK VIRUSES!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8797A20_unk2
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	.string "OH!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THANKS TO YOU,\n"
	.string "THINGS ARE BACK TO\n"
	.string "NORMAL!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BUT OTHER PLACES ARE\n"
	.string "STILL IN A PANIC,SO\n"
	.string "PLEASE BE CAREFUL!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	