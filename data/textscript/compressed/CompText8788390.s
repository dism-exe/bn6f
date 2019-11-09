	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8788390::
	.word 0x11A300

	text_archive_start

	def_text_script CompText8788390_unk0
	ts_check_chapter 0x43, 0x46, 0xA, 0xFF
	ts_check_chapter 0x42, 0x42, 0x5, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO\n"
	.string "CENTRALAREA3!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "BY THE WAY,PLEASE\n"
	.string "LISTEN TO WHAT I\n"
	.string "HAVE TO SAY!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'VE BEEN STUDYING\n"
	.string "SPANISH,AND I'VE\n"
	.string "LEARNED A NEW WORD!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "SO PLEASE LISTEN,\n"
	.string "JUST A LITTLE...\n"
	.string "HERE I GO..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string " NOVA."
	ts_key_wait 0x0
	ts_clear_msg
	.string "HOW WAS THAT!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HUH? YOU CAN'T TELL\n"
	.string "IF THAT WAS ENGLISH\n"
	.string "OR SPANISH!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "AWWWW,NOOOOO...!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk1
	ts_check_chapter 0x43, 0x46, 0xB, 0xFF
	ts_check_chapter 0x42, 0x42, 0x6, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "This area is the\n"
	.string "heart of Cyber\n"
	.string "City's Net..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And there is nothing\n"
	.string "more important than\n"
	.string "patrolling here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk2
	ts_check_chapter 0x43, 0x46, 0xC, 0xFF
	ts_check_chapter 0x42, 0x42, 0x7, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "FEET LINED UP,READY!\n"
	.string "LEFT,RIGHT,ALL OK!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk3

	def_text_script CompText8788390_unk4

	def_text_script CompText8788390_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "OUR BASE SYSTEM\n"
	.string "LANGUAGE IS"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NOT AS PLEASANT\n"
	.string "SOUNDING AS NAVI\n"
	.string "LANGUAGE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I WISH I COULD SOUND\n"
	.string "MORE LIKE THEM..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk6
	ts_mugshot_show 0x42
	ts_msg_open
	.string "What!?\n"
	.string "The Undernet!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "S-Sorry,but t-that's\n"
	.string "out of m-my\n"
	.string "jurisdiction..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk7
	ts_mugshot_show 0x42
	ts_msg_open
	.string "NOTHING'S WRONG!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NOTHING'S WRONG!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk8

	def_text_script CompText8788390_unk9

	def_text_script CompText8788390_unk10
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "PETER PIPER PICKED\n"
	.string "A PECK OF PICKLED\n"
	.string "PEPPERS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF PETER PIPER\n"
	.string "PICKED A PECK OF\n"
	.string "PEPPERS PICKLED..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... AAH!!\n"
	.string "I MESSED UP!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk11
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Is your operator\n"
	.string "inside his house?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If he is outside,\n"
	.string "tell him to go in a\n"
	.string "building right now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You got that!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk12
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Something abnormal\n"
	.string "in the real world!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Everything A-OK\n"
	.string "on the Net!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk13

	def_text_script CompText8788390_unk14

	def_text_script CompText8788390_unk15

	def_text_script CompText8788390_unk16

	def_text_script CompText8788390_unk17

	def_text_script CompText8788390_unk18

	def_text_script CompText8788390_unk19

	def_text_script CompText8788390_unk20
	ts_check_flag 0xCE, 0xC, 0x15, 0xFF
	ts_flag_set 0xCE, 0xC
	ts_mugshot_show 0x42
	ts_msg_open
	.string "... The Navi that\n"
	.string "went insane in\n"
	.string "Seaside Town"
	ts_key_wait 0x0
	ts_clear_msg
	.string "was here,tearing\n"
	.string "things apart,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and then jumped down\n"
	.string "into that big pit."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The area at the\n"
	.string "bottom of this pit\n"
	.string "is called the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Underground. It is\n"
	.string "a large area like a\n"
	.string "monster's lair."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is where the\n"
	.string "Cybeasts were to be\n"
	.string "sealed for all time."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Inside the pit?\n"
	.string "Why would he go\n"
	.string "there...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It doesn't matter.\n"
	.string "I've gotta go in\n"
	.string "there..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "... Don't tell me\n"
	.string "you are seriously\n"
	.string "thinking of...!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No! You mustn't!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This pit has a\n"
	.string "special cyberbarrier\n"
	.string "on it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you try to force\n"
	.string "your way in,you'll\n"
	.string "be burnt to a crisp!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That Navi that went\n"
	.string "in there was very\n"
	.string "strong..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "but I think even he\n"
	.string "suffered some pretty\n"
	.string "heavy damage."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No matter how you\n"
	.string "look at it,it's too\n"
	.string "dangerous for a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "normal Navi! But if\n"
	.string "you really have to\n"
	.string "get in,you have to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ask Mayor Cain. He's\n"
	.string "the one who made and\n"
	.string "controls the seal."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "The Mayor,huh...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He's also Cyber\n"
	.string "Academy's Principal."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So maybe if I go to\n"
	.string "school,I can find\n"
	.string "him..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "*sigh...*\n"
	.string "I really don't want\n"
	.string "to go..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Principal scares\n"
	.string "me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk21
	ts_mugshot_show 0x42
	ts_msg_open
	.string "If you really have\n"
	.string "to get in,you have\n"
	.string "to ask Mayor Cain."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He's the one who\n"
	.string "made and controls\n"
	.string "the seal."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk22
	ts_mugshot_show 0x42
	ts_msg_open
	.string "The barrier around\n"
	.string "the pit has been\n"
	.string "lifted."
	ts_key_wait 0x0
	ts_clear_msg
	.string "An investigation\n"
	.string "team was sent out,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but they were wiped\n"
	.string "out in the blink of\n"
	.string "an eye by..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "a strange virus that\n"
	.string "looks like a Kettle\n"
	.string "virus."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They can be deleted\n"
	.string "by making them boil\n"
	.string "up..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "According to\n"
	.string "reports,you can\n"
	.string "raise their"
	ts_key_wait 0x0
	ts_clear_msg
	.string "temperature even by\n"
	.string "using non-Fire based\n"
	.string "attacks,however..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "if you miss,their\n"
	.string "temperature drops\n"
	.string "immediately."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is also a\n"
	.string "shadow-like virus"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that can only be\n"
	.string "hit with swords."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The investigation\n"
	.string "team was pretty much\n"
	.string "done in by these"
	ts_key_wait 0x0
	ts_clear_msg
	.string "new viruses."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk23
	ts_mugshot_show 0x42
	ts_msg_open
	.string "*huff,huff...*"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you going...\n"
	.string "into that pit...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You...must be...\n"
	.string "careful... Virus...\n"
	.string "Aura... got us..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Fight...\n"
	.string "Get rid of...aura...\n"
	.string "hit head..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Got that...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk24

	def_text_script CompText8788390_unk25
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I HEARD THAT THE\n"
	.string "FORCE PROGRAM IN SKY\n"
	.string "TOWN WAS STOLEN!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I WONDER WHO IT WAS\n"
	.string "THAT STOLE IT?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk26
	ts_mugshot_show 0x40
	ts_msg_open
	.string "I am researching the\n"
	.string "history of the Net."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This pit has much to\n"
	.string "tell us about the\n"
	.string "history of the Net,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so it is like a big\n"
	.string "key to the Net's\n"
	.string "history."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's what I think."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk27
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I'm helping my\n"
	.string "professor."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm helping with\n"
	.string "his essay."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have so much to\n"
	.string "learn from you,\n"
	.string "professor!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk28

	def_text_script CompText8788390_unk29

	def_text_script CompText8788390_unk30

	def_text_script CompText8788390_unk31

	def_text_script CompText8788390_unk32

	def_text_script CompText8788390_unk33

	def_text_script CompText8788390_unk34

	def_text_script CompText8788390_unk35

	def_text_script CompText8788390_unk36

	def_text_script CompText8788390_unk37

	def_text_script CompText8788390_unk38

	def_text_script CompText8788390_unk39

	def_text_script CompText8788390_unk40

	def_text_script CompText8788390_unk41

	def_text_script CompText8788390_unk42

	def_text_script CompText8788390_unk43

	def_text_script CompText8788390_unk44

	def_text_script CompText8788390_unk45
	ts_check_flag 0x30, 0xC, 0x41, 0xFF
	ts_check_flag 0x20, 0xC, 0x3C, 0xFF
	ts_check_flag 0x1E, 0xC, 0x37, 0xFF
	ts_check_flag 0x1A, 0xC, 0x32, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "YOU'RE THE OPERATOR\n"
	.string "NAVI,MEGAMAN,AREN'T\n"
	.string "YOU?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WOW,MEETING SUCH A\n"
	.string "FAMOUS PERSON IS SO\n"
	.string "OVERWHELMING!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk46
	ts_check_flag 0x30, 0xC, 0x42, 0xFF
	ts_mugshot_show 0x40
	ts_msg_open
	.string "I am researching the\n"
	.string "history of the Net."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've decided to\n"
	.string "find a spot in\n"
	.string "the Underground and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "move forward with\n"
	.string "my research."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm not sure how I'm\n"
	.string "going to go about it\n"
	.string "yet,but I want to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "see what I can find\n"
	.string "out."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk47
	ts_check_flag 0x30, 0xC, 0x42, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Professor,professor!\n"
	.string "I'm sure the two of\n"
	.string "us will"
	ts_key_wait 0x0
	ts_clear_msg
	.string "find the truth\n"
	.string "behind the\n"
	.string "Underground!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk48

	def_text_script CompText8788390_unk49

	def_text_script CompText8788390_unk50
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE OPENING OF THE\n"
	.string "EXPO IS SOOO CLOSE!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M SO EXCITED!\n"
	.string "COME ON,JOIN IN THE\n"
	.string "EXCITEMENT!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk51

	def_text_script CompText8788390_unk52

	def_text_script CompText8788390_unk53

	def_text_script CompText8788390_unk54

	def_text_script CompText8788390_unk55
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HMM...? LOOKS LIKE\n"
	.string "THE REAL WORLD IS\n"
	.string "ALL ABUZZ..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk56

	def_text_script CompText8788390_unk57

	def_text_script CompText8788390_unk58

	def_text_script CompText8788390_unk59

	def_text_script CompText8788390_unk60
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WHAT!? SOMETHING BAD\n"
	.string "IS HAPPENING AGAIN!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WHAT IS WITH ALL THE\n"
	.string "BAD THINGS LATELY,\n"
	.string "ANYWAY!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk61

	def_text_script CompText8788390_unk62

	def_text_script CompText8788390_unk63

	def_text_script CompText8788390_unk64

	def_text_script CompText8788390_unk65
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "H-HEY! LISTEN FOR\n"
	.string "JUST A SECOND,\n"
	.string "PLEASE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A NAVI JUMPED INTO\n"
	.string "THAT BIG PIT!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT'S TRUE,I SAY!\n"
	.string "I SAW IT WITH MY OWN\n"
	.string "TWO EYES!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk66
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Professor...\n"
	.string "D-Did you just see\n"
	.string "that!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Y-Yeah... I saw..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A Navi just jumped\n"
	.string "straight into the\n"
	.string "pit.."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I still can't\n"
	.string "believe what I saw\n"
	.string "with my own eyes..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788390_unk67

	def_text_script CompText8788390_unk68

	def_text_script CompText8788390_unk69

	