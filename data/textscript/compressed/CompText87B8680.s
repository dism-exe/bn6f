	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B8680::
	.word 0x9D000

	text_archive_start

	def_text_script CompText87B8680_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What was with that?\n"
	.string "Where'd that virus\n"
	.string "come from...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87B8680_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Nothing was strange\n"
	.string "at first...\n"
	.string "but when I started"
	ts_key_wait 0x0
	ts_clear_msg
	.string "looking for the\n"
	.string "recorded data from\n"
	.string "4 o'clock yesterday,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that virus popped\n"
	.string "out and started\n"
	.string "to attack me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87B8680_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What does\n"
	.string "that mean...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87B8680_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... It was probably\n"
	.string "a trap."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But anyway,about\n"
	.string "that evidence..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8680_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The data from around\n"
	.string "4 o'clock yesterday\n"
	.string "is gone..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B8680_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Gone!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What's that supposed\n"
	.string "to mean!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Who in the\n"
	.string "world!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87B8680_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... It was probably\n"
	.string "the real culprit."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The real criminal is\n"
	.string "probably trying to\n"
	.string "frame Dad!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... That's gotta\n"
	.string "be it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If there was data of\n"
	.string "Dad in this class-\n"
	.string "room at the time of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the crime,then he\n"
	.string "couldn't be the real\n"
	.string "culprit."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's why the\n"
	.string "data is missing!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And that virus was\n"
	.string "to get rid of anyone\n"
	.string "who realized this!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87B8680_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... I think you're\n"
	.string "right!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you think the guy\n"
	.string "in court yesterday\n"
	.string "is the real culprit?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87B8680_unk8
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Well,we shouldn't\n"
	.string "jump to conclusions,\n"
	.string "but the one piece of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "evidence that can\n"
	.string "back up Dad's alibi\n"
	.string "is gone..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87B8680_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... We're back\n"
	.string "to square one,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and we're almost\n"
	.string "out of time!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8680_unk10
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... Huh?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8680_unk11
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "IS SOMETHING THE\n"
	.string "MATTER?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I AM THE PROGRAM OF\n"
	.string "THIS SECURITY\n"
	.string "CAMERA."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87B8680_unk12
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The data from around\n"
	.string "4 o'clock yesterday\n"
	.string "has vanished."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87B8680_unk13
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WHAT!?\n"
	.string "ARE YOU SERIOUS!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87B8680_unk14
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We think whoever\n"
	.string "stole the data is\n"
	.string "the real culprit."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You wouldn't know\n"
	.string "anything about this,\n"
	.string "would you?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87B8680_unk15
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "... MAYBE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "AT AROUND 10 P.M.\n"
	.string "LAST NIGHT..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE WAS A STRANGE\n"
	.string "NAVI THAT WAS\n"
	.string "POKING AROUND..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MAYBE THAT NAVI..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87B8680_unk16
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What did that Navi\n"
	.string "look like!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87B8680_unk17
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "... UM,WELL,HE WAS\n"
	.string "PRETTY TALL..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I DON'T REMEMBER\n"
	.string "ANYTHING ELSE..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87B8680_unk18
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Pretty tall..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That doesn't tell us\n"
	.string "very much."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87B8680_unk19
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan!\n"
	.string "If that Navi was\n"
	.string "here,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "then maybe that\n"
	.string "Navi's operator"
	ts_key_wait 0x0
	ts_clear_msg
	.string "was caught on film\n"
	.string "by this camera."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87B8680_unk20
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... No good,Lan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Everything after 4\n"
	.string "P.M. yesterday has\n"
	.string "been erased."
	ts_key_wait 0x0
	ts_clear_msg
	.string "According to\n"
	.string "Mr.Prog,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the culprit came to\n"
	.string "jack into the camera\n"
	.string "at night."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And then erased all\n"
	.string "traces that they\n"
	.string "were ever here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This person is one\n"
	.string "sneaky rascal..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87B8680_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... I see."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87B8680_unk22
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "... UM,EXCUSE ME..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I DON'T KNOW WHY YOU\n"
	.string "NEED DATA FROM\n"
	.string "YESTERDAY,BUT..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "WOULD YOU LIKE DATA\n"
	.string "FROM THE DAY BEFORE\n"
	.string "YESTERDAY?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87B8680_unk23
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I'm sorry,but we\n"
	.string "don't need data from\n"
	.string "the day before."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We really need to\n"
	.string "see data from\n"
	.string "yesterday."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24

	def_text_script CompText87B8680_unk24
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "OH,I SEE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT IS OLD DATA,BUT\n"
	.string "THERE WAS SOMETHING\n"
	.string "UNUSUAL IN IT."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 25

	def_text_script CompText87B8680_unk25
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Something\n"
	.string "unusual...?"
	ts_key_wait 0x0
	ts_end

	