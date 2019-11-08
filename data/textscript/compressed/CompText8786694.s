	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8786694::
	.word 0x75F00

	text_archive_start

	def_text_script CompText8786694_unk0
	ts_check_chapter 0x43, 0x46, 0xA, 0xFF
	ts_check_chapter 0x42, 0x42, 0x5, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO\n"
	.string "CENTRALAREA2!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... HOW MANY TIMES\n"
	.string "HAVE I SAID THOSE\n"
	.string "WORDS......?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF EVERY DAY IS THE\n"
	.string "SAME,LIFE GETS\n"
	.string "BORING,DOESN'T IT?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk1
	ts_check_chapter 0x43, 0x46, 0xB, 0xFF
	ts_check_chapter 0x42, 0x42, 0x6, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Looks like something\n"
	.string "is going on in Sky\n"
	.string "Area today."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I might go take a\n"
	.string "peek at what's going\n"
	.string "on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk2

	def_text_script CompText8786694_unk3

	def_text_script CompText8786694_unk4

	def_text_script CompText8786694_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "GLAD YOU CAME! THIS\n"
	.string "IS CENTRALAREA2! GO\n"
	.string "ON,TAKE YOUR TIME!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HOW WAS THAT?\n"
	.string "IT HAD MORE OF ME IN\n"
	.string "IT,DON'T YOU THINK!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WE MR.PROGS HAVE TO\n"
	.string "HAVE OUR OWN\n"
	.string "IDENTITY TOO!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk6
	ts_mugshot_show 0x41
	ts_msg_open
	.string "So,when I went to\n"
	.string "take a look at Sky\n"
	.string "Area,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it turned out that\n"
	.string "the event was\n"
	.string "already over..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk7

	def_text_script CompText8786694_unk8

	def_text_script CompText8786694_unk9

	def_text_script CompText8786694_unk10
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO\n"
	.string "CENTRALAREA2!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I AM A NEW AND\n"
	.string "DIFFERENT MR.PROG..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE PREVIOUS MR.PROG\n"
	.string "HAD DEVELOPED A\n"
	.string "PERSONALITY,AND THUS"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WAS DISMISSED."
	ts_key_wait 0x0
	ts_clear_msg
	.string "WE MR.PROGS DON'T\n"
	.string "NEED PERSONALITIES."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk11
	ts_mugshot_show 0x41
	ts_msg_open
	.string "The source of this\n"
	.string "strange weather is\n"
	.string "probably in Sky"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Town. That's what\n"
	.string "they said on the\n"
	.string "news anyway."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk12

	def_text_script CompText8786694_unk13

	def_text_script CompText8786694_unk14

	def_text_script CompText8786694_unk15

	def_text_script CompText8786694_unk16

	def_text_script CompText8786694_unk17

	def_text_script CompText8786694_unk18

	def_text_script CompText8786694_unk19

	def_text_script CompText8786694_unk20

	def_text_script CompText8786694_unk21

	def_text_script CompText8786694_unk22

	def_text_script CompText8786694_unk23

	def_text_script CompText8786694_unk24

	def_text_script CompText8786694_unk25

	def_text_script CompText8786694_unk26

	def_text_script CompText8786694_unk27

	def_text_script CompText8786694_unk28

	def_text_script CompText8786694_unk29

	def_text_script CompText8786694_unk30

	def_text_script CompText8786694_unk31

	def_text_script CompText8786694_unk32

	def_text_script CompText8786694_unk33

	def_text_script CompText8786694_unk34

	def_text_script CompText8786694_unk35

	def_text_script CompText8786694_unk36

	def_text_script CompText8786694_unk37

	def_text_script CompText8786694_unk38

	def_text_script CompText8786694_unk39

	def_text_script CompText8786694_unk40
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Jump!! Jump!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I reeeeeally want to\n"
	.string "get to that upper\n"
	.string "pathway!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Jump!! Jump!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk41
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I've been\n"
	.string "getting better at\n"
	.string "NetBattling lately."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There just aren't\n"
	.string "enough viruses in\n"
	.string "CentralArea anymore."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmm,should I go to\n"
	.string "a different area?\n"
	.string "Got any suggestions?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk42

	def_text_script CompText8786694_unk43

	def_text_script CompText8786694_unk44

	def_text_script CompText8786694_unk45
	ts_check_flag 0x20, 0xC, 0x3C, 0xFF
	ts_check_flag 0x1E, 0xC, 0x37, 0xFF
	ts_check_flag 0x1A, 0xC, 0x32, 0xFF
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Huh... I feel like\n"
	.string "I've seen you some-\n"
	.string "where before..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Were you in a\n"
	.string "commercial?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk46
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I've been\n"
	.string "getting better at\n"
	.string "NetBattling lately."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I kinda want to go\n"
	.string "to the Undernet and\n"
	.string "give it a try..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... No,wait,what am\n"
	.string "I talking about!? I\n"
	.string "wouldn't get out"
	ts_key_wait 0x0
	ts_clear_msg
	.string "with my life!\n"
	.string "No,no,NO!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk47

	def_text_script CompText8786694_unk48

	def_text_script CompText8786694_unk49

	def_text_script CompText8786694_unk50
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Ah,I want to be a\n"
	.string "famous Navi that can"
	ts_key_wait 0x0
	ts_clear_msg
	.string "be in a commercial\n"
	.string "like the Expo one..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk51

	def_text_script CompText8786694_unk52

	def_text_script CompText8786694_unk53

	def_text_script CompText8786694_unk54

	def_text_script CompText8786694_unk55
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Seems like there's\n"
	.string "an incident in\n"
	.string "Seaside Town now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's probably a good\n"
	.string "idea to stay away\n"
	.string "for a bit."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786694_unk56

	def_text_script CompText8786694_unk57

	def_text_script CompText8786694_unk58

	def_text_script CompText8786694_unk59

	def_text_script CompText8786694_unk60
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Don't you sense the\n"
	.string "weight of these\n"
	.string "incidents on the Net"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and the real world?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's gotten a bit\n"
	.string "darker and more\n"
	.string "depressing..."
	ts_key_wait 0x0
	ts_end

	