	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8774530::
	.word 0x119900

	text_archive_start

	def_text_script CompText8774530_unk0
	ts_check_flag 0x12, 0x5, 0x6, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's come to the\n"
	.string "Aquarium again\n"
	.string "tomorrow!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk1
	ts_check_flag 0x10, 0x5, 0x6, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! Where ya goin!?\n"
	.string "Let's go to the\n"
	.string "Aquarium!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk2
	ts_check_flag 0x1A, 0x5, 0x4, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! Where ya going!?\n"
	.string "Let's hurry up and\n"
	.string "follow Mick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk3
	ts_msg_open
	.string "The Aquarium is\n"
	.string "closed today."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk4
	ts_check_flag 0x1D, 0x17, 0xFF, 0x7
	ts_check_flag 0x29, 0x17, 0x5, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,where do you\n"
	.string "think you're going!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "This isn't the time\n"
	.string "to ride the LevBus!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	.string "There's Mick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's not a good\n"
	.string "idea to ride the\n"
	.string "LevBus now..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk8

	def_text_script CompText8774530_unk9

	def_text_script CompText8774530_unk10
	ts_check_flag 0x20, 0xC, 0xFF, 0xC
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Read the mail?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Read the mail?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Where's MegaMan!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk13

	def_text_script CompText8774530_unk14

	def_text_script CompText8774530_unk15

	def_text_script CompText8774530_unk16

	def_text_script CompText8774530_unk17

	def_text_script CompText8774530_unk18

	def_text_script CompText8774530_unk19

	def_text_script CompText8774530_unk20

	def_text_script CompText8774530_unk21

	def_text_script CompText8774530_unk22

	def_text_script CompText8774530_unk23

	def_text_script CompText8774530_unk24

	def_text_script CompText8774530_unk25

	def_text_script CompText8774530_unk26

	def_text_script CompText8774530_unk27

	def_text_script CompText8774530_unk28

	def_text_script CompText8774530_unk29

	def_text_script CompText8774530_unk30

	def_text_script CompText8774530_unk31

	def_text_script CompText8774530_unk32

	def_text_script CompText8774530_unk33

	def_text_script CompText8774530_unk34

	def_text_script CompText8774530_unk35

	def_text_script CompText8774530_unk36

	def_text_script CompText8774530_unk37

	def_text_script CompText8774530_unk38

	def_text_script CompText8774530_unk39

	def_text_script CompText8774530_unk40
	ts_check_flag 0x49, 0x11, 0x2A, 0xFF
	ts_flag_set 0x49, 0x11
	ts_mugshot_show 0x18
	ts_msg_open
	.string "Hey kid,would you\n"
	.string "mind listening to\n"
	.string "my request?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A virus has gotten\n"
	.string "into my Fish Stick\n"
	.string "fryer,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and now I can't\n"
	.string "make my tasty\n"
	.string "Fish Sticks anymore!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't sell a thing\n"
	.string "this way,so I want"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you to delete the\n"
	.string "virus in my fryer!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When my Navi went\n"
	.string "to check out the\n"
	.string "situation,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "he spotted lots of\n"
	.string "viruses that look\n"
	.string "like Kettles."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please! Get rid\n"
	.string "of all these\n"
	.string "viruses!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ahhh...\n"
	.string "One more thing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It seems that these\n"
	.string "viruses are only\n"
	.string "vulnerable to Fire."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you boil them\n"
	.string "with Fire attacks,\n"
	.string "it may delete them!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please help me out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk41
	ts_mugshot_show 0x18
	ts_msg_open
	.string "Checking up on the\n"
	.string "request?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A virus has gotten\n"
	.string "into my Fish Stick\n"
	.string "fryer,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Delete the Kettle\n"
	.string "viruses in the\n"
	.string "fryer!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please help me out!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ahhh...\n"
	.string "One more thing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It seems that these\n"
	.string "viruses are only\n"
	.string "vulnerable to Fire."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you boil them\n"
	.string "with Fire attacks,\n"
	.string "it may delete them!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk42
	ts_check_flag 0x50, 0x11, 0x2B, 0xFF
	ts_check_flag 0x4D, 0x11, 0xFF, 0x29
	ts_check_flag 0x4E, 0x11, 0xFF, 0x29
	ts_check_flag 0x4F, 0x11, 0xFF, 0x29
	ts_flag_set 0x50, 0x11
	ts_mugshot_show 0x18
	ts_msg_open
	.string "You took care of\n"
	.string "the viruses!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What a lifesaver!\n"
	.string "Now I can start\n"
	.string "selling again!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x70, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x70, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x18
	.string "Well,off to make\n"
	.string "some money!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText8774530_unk43
	ts_mugshot_show 0x18
	ts_msg_open
	.string "Well,time to fry\n"
	.string "'em up and sell 'em!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk44

	def_text_script CompText8774530_unk45
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ah-hah! Hidden all\n"
	.string "the way out here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Penguin Capture!"
	ts_key_wait 0x0
	ts_flag_set 0xAE, 0x11
	ts_check_flag 0xAF, 0x11, 0xFF, 0x2E
	ts_check_flag 0xAE, 0x11, 0xFF, 0x2E
	ts_check_flag 0xAD, 0x11, 0xFF, 0x2E
	ts_check_flag 0xAC, 0x11, 0xFF, 0x2E
	ts_check_flag 0xAB, 0x11, 0xFF, 0x2E
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "We've got all\n"
	.string "the penguins now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright! Let's get\n"
	.string "back to the\n"
	.string "requestor!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk46
	ts_end

	def_text_script CompText8774530_unk47

	def_text_script CompText8774530_unk48

	def_text_script CompText8774530_unk49

	def_text_script CompText8774530_unk50
	ts_check_shop_stock 0xC, 0xFF, 0x34
	ts_mugshot_show 0x10
	ts_msg_open
	.string "I'm going to offload\n"
	.string "my SubChips soon..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Want to look?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0x33, 0xFF
	ts_start_shop 0xC

	def_text_script CompText8774530_unk51
	ts_clear_msg
	.string "They say,\"Giving is\n"
	.string "its own reward\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Too bad you don't\n"
	.string "want anything..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk52
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Ahhh... Now that I\n"
	.string "think about it...\n"
	.string "I don't have that."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk53

	def_text_script CompText8774530_unk54

	def_text_script CompText8774530_unk55

	def_text_script CompText8774530_unk56

	def_text_script CompText8774530_unk57

	def_text_script CompText8774530_unk58

	def_text_script CompText8774530_unk59

	def_text_script CompText8774530_unk60
	ts_check_flag 0xB6, 0x11, 0x40, 0xFF
	ts_check_flag 0xB7, 0x11, 0x3F, 0xFF
	ts_check_flag 0xB4, 0x11, 0x3E, 0xFF
	ts_check_flag 0xB0, 0x11, 0x3D, 0xFF
	ts_flag_set 0xB0, 0x11
	ts_mugshot_show 0xF
	ts_msg_open
	.string "I'm the one who\n"
	.string "made the request."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...You're just a\n"
	.string "kid... Sure you\n"
	.string "can handle this?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "It's OK! You can\n"
	.string "depend on me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "...Well then..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm a detective.\n"
	.string "I want you to\n"
	.string "be my partner..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can call me\n"
	.string "Flatfoot!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm investigating\n"
	.string "an incident now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Some ScrtData was\n"
	.string "stolen from a\n"
	.string "corporation."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now we are looking\n"
	.string "for the culprit..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "My intuition tells\n"
	.string "me that the man has\n"
	.string "a suspicious look."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The man is the one\n"
	.string "standing in front\n"
	.string "of that fountain."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've been following\n"
	.string "him and waiting to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "see if he does\n"
	.string "something\n"
	.string "suspicious."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright... Go over\n"
	.string "there and talk to\n"
	.string "him now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since you're a kid,\n"
	.string "you should be able"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to get him to open\n"
	.string "up and show his\n"
	.string "true nature..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk61
	ts_mugshot_show 0xF
	ts_msg_open
	.string "The man is the one\n"
	.string "standing in front\n"
	.string "of that fountain."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since you're a kid,\n"
	.string "you should be able"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to get him to open\n"
	.string "up and show his\n"
	.string "true nature..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk62
	ts_flag_set 0xB5, 0x11
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Ahhh... He won't\n"
	.string "show us his hand!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's going to be\n"
	.string "a war with this\n"
	.string "one."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...You mind getting\n"
	.string "me a coffee?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Until he shows us\n"
	.string "the goods,we'll\n"
	.string "just have to wait."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There should be\n"
	.string "some coffee in the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "vending machine by\n"
	.string "the station."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk63
	ts_mugshot_show 0xF
	ts_msg_open
	.string "...You mind getting\n"
	.string "me a coffee?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Until he shows us\n"
	.string "the goods,we'll\n"
	.string "just have to wait."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There should be\n"
	.string "some coffee in the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "vending machine by\n"
	.string "the station."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk64
	ts_flag_set 0xB7, 0x11
	ts_flag_set 0xB8, 0x11
	ts_mugshot_show 0xF
	ts_msg_open
	.string "DOH!! I took my eyes\n"
	.string "off of him for a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "minute,and he took\n"
	.string "the chance to run..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I... I blew it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Where is that guy\n"
	.string "headed to?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Where could he be\n"
	.string "running too..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk65
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Where is that guy\n"
	.string "headed to?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Where could he be\n"
	.string "running too..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk66
	ts_check_flag 0xB4, 0x11, 0x46, 0xFF
	ts_check_flag 0xB3, 0x11, 0x45, 0xFF
	ts_check_flag 0xB2, 0x11, 0x44, 0xFF
	ts_check_flag 0xB0, 0x11, 0x43, 0xFF
	ts_mugshot_show 0xD
	ts_msg_open
	.string "What's with you?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk67
	ts_flag_set 0xB2, 0x11
	ts_mugshot_show 0xD
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk68
	ts_flag_set 0xB3, 0x11
	ts_mugshot_show 0xD
	ts_msg_open
	.string "......Hmmph!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk69
	ts_flag_set 0xB4, 0x11
	ts_mugshot_show 0xD
	ts_msg_open
	.string "...Quit bugging\n"
	.string "me! Go away!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk70
	ts_mugshot_show 0xD
	ts_msg_open
	.string "...Quit bugging\n"
	.string "me! Go away!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk71

	def_text_script CompText8774530_unk72

	def_text_script CompText8774530_unk73

	def_text_script CompText8774530_unk74

	def_text_script CompText8774530_unk75
	ts_check_chapter 0x40, 0x46, 0x50, 0xFF
	ts_check_chapter 0x30, 0x33, 0x4F, 0xFF
	ts_check_chapter 0x20, 0x25, 0x4E, 0xFF
	ts_check_chapter 0x14, 0x15, 0x4D, 0xFF
	ts_check_chapter 0x13, 0x13, 0x4C, 0xFF
	ts_mugshot_show 0x1B
	ts_msg_open
	.string "How about a cute\n"
	.string "stuffed animal?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk76
	ts_mugshot_show 0x1B
	ts_msg_open
	.string "We've got lots\n"
	.string "of cute stuffed\n"
	.string "animals!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about buying\n"
	.string "a present?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk77
	ts_mugshot_show 0x1B
	ts_msg_open
	.string "What in the world\n"
	.string "is going on here!?!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk78
	ts_mugshot_show 0x1B
	ts_msg_open
	.string "Our stuffed animals\n"
	.string "are made to be\n"
	.string "great!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They have a touch\n"
	.string "and feel different\n"
	.string "from any other!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk79
	ts_mugshot_show 0x1B
	ts_msg_open
	.string "Our recommended\n"
	.string "item this month..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A cute penguin\n"
	.string "stuffed animal!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is the perfect\n"
	.string "present for cute\n"
	.string "kids everywhere!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk80
	ts_mugshot_show 0x1B
	ts_msg_open
	.string "If you decorate\n"
	.string "with the stuffed\n"
	.string "animals here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They'll brighten\n"
	.string "any forlorn room!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about one for\n"
	.string "your home interior?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774530_unk81

	def_text_script CompText8774530_unk82

	def_text_script CompText8774530_unk83

	def_text_script CompText8774530_unk84

	def_text_script CompText8774530_unk85

	def_text_script CompText8774530_unk86

	def_text_script CompText8774530_unk87

	def_text_script CompText8774530_unk88

	def_text_script CompText8774530_unk89

	def_text_script CompText8774530_unk90

	def_text_script CompText8774530_unk91

	def_text_script CompText8774530_unk92

	def_text_script CompText8774530_unk93

	def_text_script CompText8774530_unk94

	def_text_script CompText8774530_unk95

	def_text_script CompText8774530_unk96

	def_text_script CompText8774530_unk97

	def_text_script CompText8774530_unk98

	def_text_script CompText8774530_unk99

	