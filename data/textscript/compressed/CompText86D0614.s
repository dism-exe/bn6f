	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86D0614::
	.word 0x587200

	text_archive_start

	def_text_script CompText86D0614_unk0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x5
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I set up your\n"
	.string "computer for\n"
	.string "Net access,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so please check that\n"
	.string "it works when you\n"
	.string "get home,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I also set up a mail\n"
	.string "program on your\n"
	.string "homepage."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cyber City's network\n"
	.string "has strong security\n"
	.string "so it is hard to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "access from outside\n"
	.string "the system. To get\n"
	.string "mail from outside,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you have to check\n"
	.string "the mail program."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To see mail from\n"
	.string "ACDC Town,I've setup\n"
	.string "this mail program's"
	ts_key_wait 0x0
	ts_clear_msg
	.string "mailbox to send and\n"
	.string "receive."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It may seem like you\n"
	.string "don't have mail,but\n"
	.string "give it a look."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk1
	ts_msg_open_email
	.string "\"Net Advisory\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lately,there has\n"
	.string "been a breakdown of\n"
	.string "order on the Net."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We would like to\n"
	.string "report that some\n"
	.string "Navis have been"
	ts_key_wait 0x0
	ts_clear_msg
	.string "attacked. Due to\n"
	.string "this,we advise\n"
	.string "exercising caution."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk2
	ts_msg_open_email
	.string "Thank you for\n"
	.string "using the NaviCust\n"
	.string "Support Center."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We are pleased to\n"
	.string "announce the long\n"
	.string "awaited upgrade"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to the NaviCust\n"
	.string "system."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We feel that you'll\n"
	.string "love the changes\n"
	.string "we've made."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Once you have loaded\n"
	.string "this NaviCustomizer\n"
	.string "into your PET,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you will be able to\n"
	.string "load various things\n"
	.string "onto MegaMan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "By using skillfully\n"
	.string "created programs,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you can customize\n"
	.string "your Navi."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We even provide some\n"
	.string "of these programs as\n"
	.string "a service to our"
	ts_key_wait 0x0
	ts_clear_msg
	.string "valued customers."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Finally,as a thank\n"
	.string "you to our loyal\n"
	.string "customers,we would"
	ts_key_wait 0x0
	ts_clear_msg
	.string "like to give each\n"
	.string "of them a wonderful\n"
	.string "gift. We look"
	ts_key_wait 0x0
	ts_clear_msg
	.string "forward to you using\n"
	.string "this great gift!"
	ts_key_wait 0x0
	ts_check_flag 0xF3, 0x0, 0x6E, 0xFF
	ts_clear_msg
	ts_item_give_navi_cust_program 0x34, 0x1, 0x1
	ts_item_give_navi_cust_program 0x8C, 0x1, 0x3
	ts_item_give_navi_cust_program 0x90, 0x1, 0x1
	ts_start_give_folder 0x22
	.string "Lan got a Navi-\n"
	.string "Customizer and:"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_navi_cust_program5 0xD, 0x0
	.string "\"!!\n"
	.string "\""
	ts_print_navi_cust_program5 0x23, 0x0
	.string "\"!!\n"
	.string "\""
	ts_print_navi_cust_program5 0x24, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and\n"
	.string "\""
	ts_print_folder_name 0x22, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_flag_set 0xF3, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk3
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x5
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "It looks like you\n"
	.string "were able to fight\n"
	.string "off the Cybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string "While you two were\n"
	.string "sleeping, I studied\n"
	.string "MegaMan's body a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "little. The Cybeast\n"
	.string "is somehow living\n"
	.string "in there."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've installed a\n"
	.string "function in Lan's\n"
	.string "PET and in MegaMan"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that will allow you\n"
	.string "to control the\n"
	.string "Cybeast. Whether"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you can master that\n"
	.string "power depends on\n"
	.string "you!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk4
	ts_jump 90

	def_text_script CompText86D0614_unk5
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0xF
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Hello.This is the\n"
	.string "Director of the\n"
	.string "Seaside Aquarium."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you very much\n"
	.string "for the other day."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I didn't get the\n"
	.string "chance to thank you\n"
	.string "properly..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So to say thanks,I\n"
	.string "wanted to send you\n"
	.string "something special!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I call it the\n"
	.string "\"TagChip system\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is what it sounds\n"
	.string "like... It lets you\n"
	.string "tag up 2 chips!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "For instance,you\n"
	.string "can tag Sword with\n"
	.string "AreaGrab.Then,when"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sword appears on the\n"
	.string "Custom Screen during\n"
	.string "battle,so will"
	ts_key_wait 0x0
	ts_clear_msg
	.string "AreaGrab!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This lets you make\n"
	.string "combos even easier!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me tell you how\n"
	.string "to setup a TagChip."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go to the Folder\n"
	.string "edit screen and\n"
	.string "press SELECT."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This will take you\n"
	.string "to the TagChip\n"
	.string "selection screen."
	ts_key_wait 0x0
	ts_clear_msg
	.string "On that screen you\n"
	.string "can select the 2\n"
	.string "chips to tag up..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,the chips\n"
	.string "that you can tag"
	ts_key_wait 0x0
	ts_clear_msg
	.string "must add up to less\n"
	.string "than 60MB. Remember\n"
	.string "this limit!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should\n"
	.string "definitely master\n"
	.string "this system!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Oh yeah..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Plata is anxious\n"
	.string "to see his two\n"
	.string "friends."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't forget to stop\n"
	.string "by the Aquarium!!"
	ts_key_wait 0x0
	ts_check_item07 0xB, 0x1, 0x6E, 0x6E, 0xFF
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0xB, 0x1
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0xB, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk6
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0xF
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Hello. It has been\n"
	.string "a while since I've\n"
	.string "contacted you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Unfortunately,we\n"
	.string "need you to appear\n"
	.string "at the trial of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Captain Blackbeard\n"
	.string "for the incident a\n"
	.string "little while back"
	ts_key_wait 0x0
	ts_clear_msg
	.string "at the Aquarium.\n"
	.string "Since you were the\n"
	.string "one who thwarted"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cpt.Blackbeard,you\n"
	.string "will be asked to\n"
	.string "take an oath and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "testify.\n"
	.string "The trial starts\n"
	.string "this afternoon,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and is at the\n"
	.string "Green Town\n"
	.string "Courthouse."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I appreciate your\n"
	.string "cooperation on such\n"
	.string "short notice."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk7
	ts_msg_open_email
	.string "Round 2 of the Expo\n"
	.string "Pavilion Operator\n"
	.string "Navi Selection Test"
	ts_key_wait 0x0
	ts_clear_msg
	.string "will take place in\n"
	.string "Sky Town."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Round 2 Selection\n"
	.string "Test participants"
	ts_key_wait 0x0
	ts_clear_msg
	.string "should gather there\n"
	.string "prior to the test."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk8
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x12
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I have something\n"
	.string "important to talk\n"
	.string "to you about..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please come to\n"
	.string "Sky Town right away!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk9
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x11
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "In SeasideArea3 on\n"
	.string "the Net,\""
	ts_print_item 0xA, 0x0
	.string "\",\n"
	.string "a kind of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "cyberwater that\n"
	.string "rejuvenates a Navi,\n"
	.string "gushes forth..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you use it,maybe\n"
	.string "you can weaken the\n"
	.string "Cybeast..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk10
	ts_msg_open_email
	.string "This is the Net\n"
	.string "Police.There has\n"
	.string "been an incident"
	ts_key_wait 0x0
	ts_clear_msg
	.string "on the Net."
	ts_key_wait 0x0
	ts_clear_msg
	.string "As the situation is\n"
	.string "dangerous,we advise\n"
	.string "you not to jack in."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Those who are now\n"
	.string "jacked in should\n"
	.string "jack out now."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk11
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x14
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "My Navi is fine.\n"
	.string "Is yours OK?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk12
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I sense a great\n"
	.string "disturbance in the\n"
	.string "Net..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,are you OK?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk13

	def_text_script CompText86D0614_unk14
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1E
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Let me tell ya\n"
	.string "'bout the HeatCross!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If ya got HeatCross\n"
	.string "activated,Fire chips\n"
	.string "that don't dim the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "screen get Attack+50\n"
	.string "and the MegaBuster\n"
	.string "gets Attack+1."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But Aqua attacks do\n"
	.string "2x damage if they\n"
	.string "hit ya!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Get goin' and use\n"
	.string "the awesome power\n"
	.string "of HeatCross!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk15
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x22
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Now I'm going to\n"
	.string "instruct you on the\n"
	.string "uses of SlashCross."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Activating\n"
	.string "SlashCross will give\n"
	.string "all Sword attack"
	ts_key_wait 0x0
	ts_clear_msg
	.string "chips that don't\n"
	.string "dim the screen\n"
	.string "Attack+50! Powering"
	ts_key_wait 0x0
	ts_clear_msg
	.string "up a Sword chip will\n"
	.string "also make the chip\n"
	.string "stronger."
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,Breaker\n"
	.string "attacks will do 2x"
	ts_key_wait 0x0
	ts_clear_msg
	.string "damage to you! Now\n"
	.string "be a good student\n"
	.string "and go practice!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk16
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x20
	ts_mugshot_palette 0x3
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Allow me to explain\n"
	.string "the varied abilities\n"
	.string "of ElecCross."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Activating ElecCross\n"
	.string "gives Elec attack"
	ts_key_wait 0x0
	ts_clear_msg
	.string "chips that don't\n"
	.string "dim the screen\n"
	.string "Attack+50."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Powering up an\n"
	.string "Elementless\n"
	.string "chip will also make"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it paralyze foes.\n"
	.string "However,Wood attacks\n"
	.string "will do 2x damage to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you... Now you\n"
	.string "simply must try\n"
	.string "ElecCross yourself!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk17
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x27
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I'm going to explain\n"
	.string "the usage of\n"
	.string "EraseCross..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Activating\n"
	.string "EraseCross benefits\n"
	.string "all Cursor chips"
	ts_key_wait 0x0
	ts_clear_msg
	.string "with Attack+30!\n"
	.string "Also,if your\n"
	.string "opponent's HP has"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the number 4 in it,\n"
	.string "and you attack with\n"
	.string "an Elementless chip"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that does not dim\n"
	.string "the screen,good\n"
	.string "things will happen."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If your opponent is\n"
	.string "a virus,it will be\n"
	.string "deleted instantly."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If your opponent is\n"
	.string "a Navi,a bug will be"
	ts_key_wait 0x0
	ts_clear_msg
	.string "inserted that will\n"
	.string "reduce his or her\n"
	.string "HP."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is a downside,\n"
	.string "however. Wind\n"
	.string "attacks will do"
	ts_key_wait 0x0
	ts_clear_msg
	.string "twice as much\n"
	.string "damage to you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "EraseCross... King\n"
	.string "of destruction...\n"
	.string "Use it wisely."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk18
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x26
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Let me explain how\n"
	.string "to drive this\n"
	.string "ChargeCross!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "While ChargeCross is\n"
	.string "activated,\n"
	.string "you can choose one"
	ts_key_wait 0x0
	ts_clear_msg
	.string "more chip on the\n"
	.string "Custom Screen...\n"
	.string "Every single turn!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And if you power up\n"
	.string "a Fire chip,its"
	ts_key_wait 0x0
	ts_clear_msg
	.string "attack strength will\n"
	.string "reach new heights!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But there are some\n"
	.string "drawbacks..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Aqua attacks will\n"
	.string "cause 2x damage!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ChargeCross! Explode\n"
	.string "with strength! Use\n"
	.string "it to its fullest!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk19
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1F
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I'm going to explain\n"
	.string "SpoutCross..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When SpoutCross is\n"
	.string "activated,Aqua chip\n"
	.string "attacks that do not"
	ts_key_wait 0x0
	ts_clear_msg
	.string "dim the screen do 2x\n"
	.string "damage when powered\n"
	.string "up!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Another bonus is\n"
	.string "using Aqua chips"
	ts_key_wait 0x0
	ts_clear_msg
	.string "will restore small\n"
	.string "amounts of health."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The drawback is\n"
	.string "that Elec attacks"
	ts_key_wait 0x0
	ts_clear_msg
	.string "will inflict 2x\n"
	.string "damage against you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Strength and grace.\n"
	.string "That's SpoutCross.\n"
	.string "Enjoy using it."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk20
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x23
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Now I will reveal\n"
	.string "the secrets of the\n"
	.string "TenguCross."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When using the\n"
	.string "TenguCross,all Wind\n"
	.string "chips that do not"
	ts_key_wait 0x0
	ts_clear_msg
	.string "dim the screen will\n"
	.string "receive Attack+10!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Also,when you have\n"
	.string "AirShoes ON,pressing"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the B Button and\n"
	.string "Left on the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "+Control Pad will\n"
	.string "kick up a\n"
	.string "tremendous breeze,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and bring your\n"
	.string "opponent towards\n"
	.string "you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There are also\n"
	.string "disadvantages,\n"
	.string "grasshopper."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sword attacks\n"
	.string "will damage as you\n"
	.string "twice as badly."
	ts_key_wait 0x0
	ts_clear_msg
	.string "TenguCross.\n"
	.string "Master of Wind.\n"
	.string "Deadly. Beautiful."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk21
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x21
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I'm going to explain\n"
	.string "the usage of\n"
	.string "TomahawkCross."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When TomahawkCross\n"
	.string "is activated,\n"
	.string "Wood chips that do"
	ts_key_wait 0x0
	ts_clear_msg
	.string "not dim the screen\n"
	.string "do 2x damage when\n"
	.string "they are powered up!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Also,you will never\n"
	.string "fall victim to\n"
	.string "abnormal statuses,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "like becoming\n"
	.string "paralyzed or\n"
	.string "confused!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,there are\n"
	.string "flaws. Fire attacks\n"
	.string "will do twice as"
	ts_key_wait 0x0
	ts_clear_msg
	.string "much damage to you\n"
	.string "than they did\n"
	.string "before."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Power from the land.\n"
	.string "Try TomahawkCross\n"
	.string "for yourself!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk22
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x24
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Let's drill into the\n"
	.string "basics of using\n"
	.string "GroundCross!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When GroundCross is\n"
	.string "activated,Breaker\n"
	.string "chips that don't dim"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the screen will get\n"
	.string "a bonus Attack+10."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you power up a\n"
	.string "Breaker chip,it will\n"
	.string "cause a shower of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "rocks over an enemy,\n"
	.string "causing them damage\n"
	.string "along the way!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You will also turn\n"
	.string "the SuprArmr\n"
	.string "program ON!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is a weakness\n"
	.string "with GroundCross."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cursor attacks\n"
	.string "will cause you 2x\n"
	.string "damage."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Drill to the center\n"
	.string "of power with\n"
	.string "GroundCross!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk23
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x25
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "It is pressing that\n"
	.string "I explain DustCross\n"
	.string "to you now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When DustCross is\n"
	.string "activated,you can"
	ts_key_wait 0x0
	ts_clear_msg
	.string "throw away chips on\n"
	.string "the Custom Screen\n"
	.string "you no longer need."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can also press\n"
	.string "the B Button and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Left on the\n"
	.string "+Control Pad to suck"
	ts_key_wait 0x0
	ts_clear_msg
	.string "things in,and then\n"
	.string "send them flying\n"
	.string "back out!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The weakness of\n"
	.string "DustCross is that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cursor attacks\n"
	.string "will cause you 2x\n"
	.string "damage."
	ts_key_wait 0x0
	ts_clear_msg
	.string "DustCross.\n"
	.string "Environmentally\n"
	.string "sound power.Use it."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk24
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Virus Deletion"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Cyber Academy\n"
	.string "Class 6-2"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk25
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Find Keepsake"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Cyber Academy\n"
	.string "School Gate"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk26
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Errand Request"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Cyber Academy\n"
	.string "Teachers' Room"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk27
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "For Victory!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:\n"
	.string "CentralArea1"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk28
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Someone Help!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:\n"
	.string "Robot Control Comp1"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk29
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Get The Chip!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:SeasideArea3\n"
	.string "Chip Shop"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk30
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Stock Up!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Aquarium\n"
	.string "Sunfish Tank"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk31
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "StandIn Recruit"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:\n"
	.string "Aquarium Homepage"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk32
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Daughter Worry"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Plaza In\n"
	.string "Green Town"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk33
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Stop Him!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Green Town\n"
	.string "Courtroom"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk34
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Loan Collection"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:\n"
	.string "Green Town HP"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk35
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Lumber Merchant"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Large Tree\n"
	.string "In Green Area2"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk36
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "TimeCpsl"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Green Town\n"
	.string "Plaza"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk37
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Got A Problem"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:On The\n"
	.string "Auditorium Stage"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk38
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Songwriter"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Sky Area1\n"
	.string "NetCafe"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk39
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Buy Which Stock?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Sky Area1"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk40
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Can't Open The Safe"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Auditorium\n"
	.string "Popcorn Shop Comp"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk41
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Do Something!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Seaside Town\n"
	.string "Fish Stick Shop"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk42
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Want to Meet Dghter"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:\n"
	.string "Sky HP"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk43
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Not Enough Members"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:\n"
	.string "Class 6-2 Comp"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk44
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Track The Criminal"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Seaside Water\n"
	.string "Vending Machine"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk45
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Where's My Navi?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Cyber Academy\n"
	.string "Class1-1"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk46
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "One More Time"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Central Town\n"
	.string "Residential Area"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk47
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "SupportChip Please"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Sky Town Orb"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk48
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Negotiate!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Sky Town\n"
	.string "Force Room Entrance"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk49
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "JuvenileDiv"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Cyber Academy\n"
	.string "Foyer MonitorComp"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk50
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Get The Bad Guy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Central Town\n"
	.string "Outskirts"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk51
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Find The Virus!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Central Town\n"
	.string "LevBus Station"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk52
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Penguins Ran Away"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Aquarium\n"
	.string "Piranha Tank"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk53
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Update Help"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Aquarium\n"
	.string "Turtle Tank"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk54
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Diet Goods Money"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Cyber Academy\n"
	.string "1st Floor Hallway"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk55
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Self Research"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:\n"
	.string "Class 1-1 Comp"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk56
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Official Request!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sky Town Operator's\n"
	.string "Room ObservationComp"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk57
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "An Experiment!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:Around The\n"
	.string "Aquarium Shark Tank"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk58
	ts_msg_open_email
	.string "This mail confirms\n"
	.string "request acceptance.\n"
	.string "Details below."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUEST NAME:\n"
	.string "Road to a\n"
	.string "SoulBattler."
	ts_key_wait 0x0
	ts_clear_msg
	.string "REQUESTOR MEETING\n"
	.string "PLACE:\n"
	.string "Green HP"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk59
	ts_check_game_version 0xFF, 0x57
	ts_msg_open_email
	.string "You defeated a great\n"
	.string "evil..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be watching\n"
	.string "you..."
	ts_key_wait 0x0
	ts_check_flag 0xE8, 0x1, 0x6E, 0xFF
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0x2E, 0x1, 0x7, 0x1
	ts_sound_play00 0x73, 0x0
	.string "Lan got:\n"
	.string "\""
	ts_print_chip2 0x2E, 0x0
	.string " "
	ts_print_code 0x7, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_flag_set 0xE8, 0x1
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk60
	ts_msg_open_email
	.string "Mail has been\n"
	.string "received in the\n"
	.string "mailbox on Lan's HP."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To confirm mails,\n"
	.string "call the Mr.Prog\n"
	.string "on the homepage."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is the only\n"
	.string "mail notification\n"
	.string "you will receive,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so please check the\n"
	.string "mailbox often from\n"
	.string "this point forward."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk61
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x6
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Lan...call me as\n"
	.string "soon as you can..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Dad... Dad...\n"
	.string "He was arrested by\n"
	.string "the police!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have no idea what\n"
	.string "is going on!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk62
	ts_jump 91

	def_text_script CompText86D0614_unk63
	ts_jump 92

	def_text_script CompText86D0614_unk64
	ts_jump 93

	def_text_script CompText86D0614_unk65
	ts_jump 94

	def_text_script CompText86D0614_unk66
	ts_jump 95

	def_text_script CompText86D0614_unk67
	ts_jump 96

	def_text_script CompText86D0614_unk68
	ts_jump 97

	def_text_script CompText86D0614_unk69
	ts_jump 98

	def_text_script CompText86D0614_unk70
	ts_jump 99

	def_text_script CompText86D0614_unk71
	ts_jump 100

	def_text_script CompText86D0614_unk72
	ts_jump 101

	def_text_script CompText86D0614_unk73
	ts_jump 102

	def_text_script CompText86D0614_unk74
	ts_jump 103

	def_text_script CompText86D0614_unk75
	ts_jump 104

	def_text_script CompText86D0614_unk76
	ts_check_game_version 0xFF, 0x58
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x5
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I've gathered up all\n"
	.string "the info I could on"
	ts_key_wait 0x0
	ts_clear_msg
	.string "transforming into a\n"
	.string "Cybeast aka\n"
	.string "BeastOut!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "To BeastOut,go to\n"
	.string "the Custom Screen,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "then press the \n"
	.string "CybeastButton."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When you transform\n"
	.string "while using a Cross,\n"
	.string "you become a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "CrossCybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can use the\n"
	.string "Cross powers as well\n"
	.string "as Cybeast powers."
	ts_key_wait 0x0
	ts_clear_msg
	.string "As a Cybeast,\n"
	.string "Elementless chips"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that don't dim\n"
	.string "the screen get\n"
	.string "Attack+30."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Moreover,when using\n"
	.string "chips that don't dim\n"
	.string "the screen,a beast's"
	ts_key_wait 0x0
	ts_clear_msg
	.string "instincts will move\n"
	.string "you swiftly into\n"
	.string "attack position!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you tap the B\n"
	.string "Button,you can fire\n"
	.string "the GregarBuster"
	ts_key_wait 0x0
	ts_clear_msg
	.string "repeatedly. Also,\n"
	.string "charging Elementless\n"
	.string "chips will summon"
	ts_key_wait 0x0
	ts_clear_msg
	.string "special moves that\n"
	.string "can only be done by\n"
	.string "a Cybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It will also change\n"
	.string "your special moves\n"
	.string "as a CrossCybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,as each turn\n"
	.string "passes,an\n"
	.string "EmotionCounter next"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to the EmotionWindow\n"
	.string "will decrease."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If it hits 0,MegaMan\n"
	.string "will transform back,\n"
	.string "exhausted."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you try to\n"
	.string "transform while\n"
	.string "exhausted,MegaMan"
	ts_key_wait 0x0
	ts_clear_msg
	.string "will become wild,\n"
	.string "reaching the limit\n"
	.string "on his Navi body."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is called\n"
	.string "BeastOver."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battling without\n"
	.string "transforming will\n"
	.string "recover the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "EmotionCounter.\n"
	.string "BeastOut is a\n"
	.string "trump card,but be"
	ts_key_wait 0x0
	ts_clear_msg
	.string "careful not to\n"
	.string "show your hand too\n"
	.string "often."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk77
	ts_msg_open_email
	.string "This is the\n"
	.string "NetPolice."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since the laws of\n"
	.string "Cyber City and other\n"
	.string "towns differ,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "in place of Official\n"
	.string "NetBattlers,the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NetPolice will take\n"
	.string "charge of the safety\n"
	.string "of all citizens."
	ts_key_wait 0x0
	ts_clear_msg
	.string "In this mail,we want\n"
	.string "to introduce novice\n"
	.string "NetBattlers to the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "fundamentals needed\n"
	.string "by all NetBattlers."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please keep these in\n"
	.string "mind,as we work to\n"
	.string "prevent crime."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We would like to go\n"
	.string "over the following\n"
	.string "two points."
	ts_key_wait 0x0
	ts_clear_msg
	ts_text_speed 0x0
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " Folder Editing\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " Regular System\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Finish Reading"
	ts_select 0x7, 0x40, 0xFF, 0x6F, 0x6E, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	.string "\"Editing the Chip\n"
	.string " Folder\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "While travelling the\n"
	.string "Cyberworld,you can\n"
	.string "get BattleChips."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yet,acquiring Battle\n"
	.string "Chips will not allow\n"
	.string "you to use them in a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NetBattle. When you\n"
	.string "get a chip you wish\n"
	.string "to use,be sure to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "put it into the\n"
	.string "ChipFolder."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When you want to\n"
	.string "edit the ChipFolder,\n"
	.string "open the PET Screen"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and open the Edit\n"
	.string "Screen by selecting\n"
	.string "a ChipFolder."
	ts_key_wait 0x0
	ts_clear_msg
	.string "While editing a\n"
	.string "Folder,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "pressing START will\n"
	.string "bring up a sort\n"
	.string "menu."
	ts_key_wait 0x0
	ts_clear_msg
	.string "In the sort menu,\n"
	.string "you can sort your\n"
	.string "Folder or Pack"
	ts_key_wait 0x0
	ts_clear_msg
	.string "with various options\n"
	.string "such as alphabetical\n"
	.string "sort or ID sort."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Editing your Chip\n"
	.string "Folder is very\n"
	.string "useful,so we"
	ts_key_wait 0x0
	ts_clear_msg
	.string "recommend you do it\n"
	.string "early and often."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can get Battle\n"
	.string "Chips by deleting\n"
	.string "viruses,collecting"
	ts_key_wait 0x0
	ts_clear_msg
	.string "mystery data in the\n"
	.string "Cyberworld,buying\n"
	.string "chips at shops on"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Net,or trading\n"
	.string "BugFrags or items at\n"
	.string "special shops."
	ts_key_wait 0x0
	ts_clear_msg
	.string "By collecting a wide\n"
	.string "variety of chips,you"
	ts_key_wait 0x0
	ts_clear_msg
	.string "can make a world\n"
	.string "class Folder."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk78
	ts_msg_open_email
	.string "Ms.Pat Fahran has\n"
	.string "opened a NetBattler"
	ts_key_wait 0x0
	ts_clear_msg
	.string "School in\n"
	.string "Green Town."
	ts_key_wait 0x0
	ts_clear_msg
	.string "How would you like\n"
	.string "to learn from a\n"
	.string "Yum-my NetBattler?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk79
	ts_msg_open_email
	.string "At Sky Town's Admin\n"
	.string "Building,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ms.Ann Zap has\n"
	.string "opened a shocking\n"
	.string "Operator's School!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wouldn't you love\n"
	.string "to learn how to use\n"
	.string "Elec chips?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk80
	ts_msg_open_email
	.string "In ResearchLab2 of\n"
	.string "the Cyber Academy\n"
	.string "Teachers' Room,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Dark Scyth has\n"
	.string "opened a NetBattler\n"
	.string "School."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wouldn't you love to\n"
	.string "learn some splendid\n"
	.string "battle techniques?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk81
	ts_msg_open_email
	.string "At Seaside Town\n"
	.string "Aquarium,near the\n"
	.string "vending machines,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Al Ferry has\n"
	.string "opened a Charged Up\n"
	.string "Operator's School."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wouldn't you love to\n"
	.string "learn how to operate\n"
	.string "this powerful Navi?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk82
	ts_msg_open_email
	.string "Master Feng-Tian has\n"
	.string "opened a NetBattler"
	ts_key_wait 0x0
	ts_clear_msg
	.string "School in\n"
	.string "Green Town."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wouldn't you love to\n"
	.string "learn the secrets of\n"
	.string "a Master?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk83
	ts_msg_open_email
	.string "At the Heliport on\n"
	.string "the Admin Building\n"
	.string "in Sky Town,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Dingo has started\n"
	.string "a Chopper Operator's\n"
	.string "School."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Take this chance to\n"
	.string "learn this splendid\n"
	.string "NetBattling style!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk84
	ts_msg_open_email
	.string "In ResearchLab2 of\n"
	.string "the Cyber Academy\n"
	.string "Teachers' Room,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Moliarty has\n"
	.string "opened a Drill\n"
	.string "School."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wouldn't you love to\n"
	.string "learn from this\n"
	.string "powerful operator?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk85
	ts_msg_open_email
	.string "At Seaside Town\n"
	.string "Aquarium,near the\n"
	.string "vending machines,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Press has opened\n"
	.string "a Recycling Operator\n"
	.string "School."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wouldn't you love to\n"
	.string "learn recycling and\n"
	.string "NetBattling..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "AT THE SAME TIME!?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk86
	ts_msg_open_email
	.string "Dear Mr.Lan Hikari,\n"
	.string "We of the Expo\n"
	.string "Executive Committee"
	ts_key_wait 0x0
	ts_clear_msg
	.string "would like to\n"
	.string "invite you to our\n"
	.string "Preview Gala."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have been\n"
	.string "selected from\n"
	.string "among the citizens"
	ts_key_wait 0x0
	ts_clear_msg
	.string "of Cyber City to\n"
	.string "attend this once in\n"
	.string "a lifetime event!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This event will be\n"
	.string "held in one week."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You may bring\n"
	.string "any interested\n"
	.string "friends with you to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Expo Site to\n"
	.string "experience this\n"
	.string "exciting event!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk87
	ts_msg_open_email
	.string "You defeated a great\n"
	.string "evil..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be watching\n"
	.string "you..."
	ts_key_wait 0x0
	ts_check_flag 0xE8, 0x1, 0x6E, 0xFF
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0x33, 0x1, 0xD, 0x1
	ts_sound_play00 0x73, 0x0
	.string "Lan got:\n"
	.string "\""
	ts_print_chip2 0x33, 0x0
	.string " "
	ts_print_code 0xD, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_flag_set 0xE8, 0x1
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk88
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x5
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I've gathered up all\n"
	.string "the info I could on"
	ts_key_wait 0x0
	ts_clear_msg
	.string "transforming into a\n"
	.string "Cybeast aka\n"
	.string "BeastOut!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "To BeastOut,go to\n"
	.string "the Custom Screen,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "then press the \n"
	.string "CybeastButton."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When you transform\n"
	.string "while using a Cross,\n"
	.string "you become a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "CrossCybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can use the\n"
	.string "Cross powers as well\n"
	.string "as Cybeast powers."
	ts_key_wait 0x0
	ts_clear_msg
	.string "As a Cybeast,\n"
	.string "Elementless chips"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that don't dim\n"
	.string "the screen get\n"
	.string "Attack+30."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Moreover,when using\n"
	.string "chips that don't dim\n"
	.string "the screen,a beast's"
	ts_key_wait 0x0
	ts_clear_msg
	.string "instincts will move\n"
	.string "you swiftly into\n"
	.string "attack position!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "To unleash the\n"
	.string "FalzarBuster,\n"
	.string "tap the B Button."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Also,charging\n"
	.string "Elementless chips\n"
	.string "will summon special"
	ts_key_wait 0x0
	ts_clear_msg
	.string "moves that can\n"
	.string "only be done by\n"
	.string "a Cybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It will also change\n"
	.string "your special moves\n"
	.string "as a CrossCybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,as each turn\n"
	.string "passes,an\n"
	.string "EmotionCounter next"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to the EmotionWindow\n"
	.string "will decrease."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If it hits 0,MegaMan\n"
	.string "will transform back,\n"
	.string "exhausted."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you try to\n"
	.string "transform while\n"
	.string "exhausted,MegaMan"
	ts_key_wait 0x0
	ts_clear_msg
	.string "will become wild,\n"
	.string "reaching the limit\n"
	.string "on his Navi body."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battling without\n"
	.string "transforming will\n"
	.string "recover the "
	ts_key_wait 0x0
	ts_clear_msg
	.string "EmotionCounter.\n"
	.string "BeastOut is a\n"
	.string "trump card,but be"
	ts_key_wait 0x0
	ts_clear_msg
	.string "careful not to\n"
	.string "show your hand too\n"
	.string "often."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk89

	def_text_script CompText86D0614_unk90
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Lan,how are you?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Everyone here is\n"
	.string "great!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Dex is a little\n"
	.string "lonely though..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh yeah,I forgot to\n"
	.string "give something to\n"
	.string "you when you moved"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so I'll just send it\n"
	.string "to you instead..."
	ts_key_wait 0x0
	ts_check_flag 0xFB, 0x0, 0x6E, 0xFF
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0xDD, 0x0, 0x11, 0x1
	ts_sound_play00 0x73, 0x0
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 0xDD, 0x0
	.string " "
	ts_print_code 0x11, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_flag_set 0xFB, 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk91
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x13
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Hello,Lan. How have\n"
	.string "you been lately?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've been doing\n"
	.string "your homework,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And not being late\n"
	.string "either,I hope..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about your\n"
	.string "friends...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure you haven't\n"
	.string "had any trouble\n"
	.string "making new friends!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Everyone here in\n"
	.string "ACDC Town is doing\n"
	.string "great!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should come\n"
	.string "visit as soon as\n"
	.string "you can!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm looking forward\n"
	.string "to seeing you again!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk92
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x2
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Yo Lan!\n"
	.string "Been a long time!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ever since you moved\n"
	.string "me and GutsMan have\n"
	.string "been training hard!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I doubt you can\n"
	.string "beat me now!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk93
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "We were talking\n"
	.string "about you at school,\n"
	.string "and Ms.Mari decided"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that we should all\n"
	.string "send you some email!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh yeah..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Have you been using\n"
	.string "that ChipData I sent\n"
	.string "you?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm glad you are\n"
	.string "getting used to\n"
	.string "things..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk94
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "So,how is Cyber City\n"
	.string "as a place to live?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I bet you're still\n"
	.string "Mr.Popular,even in\n"
	.string "Cyber City."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm not sad you're\n"
	.string "gone at all,but if"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you start feeling\n"
	.string "lonely you should\n"
	.string "come and visit."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk95
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x2
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "HEY!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I heard that there\n"
	.string "are lots of events\n"
	.string "for the Expo being"
	ts_key_wait 0x0
	ts_clear_msg
	.string "held all around\n"
	.string "Cyber City..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Man! I wish I lived\n"
	.string "in a cool place like\n"
	.string "that!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope they have a\n"
	.string "cool event here in\n"
	.string "ACDC Town!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk96
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I heard it through\n"
	.string "the grapevine,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "something terrible\n"
	.string "happened on the\n"
	.string "Net in Cyber City!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Make sure you don't\n"
	.string "go on the Net!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I bet that even\n"
	.string "though I'm warning\n"
	.string "you,you'll still go"
	ts_key_wait 0x0
	ts_clear_msg
	.string "poking around where\n"
	.string "you shouldn't..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk97
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x2
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "I hear the Net\n"
	.string "in Cyber City is\n"
	.string "having some errors!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It was even on the\n"
	.string "news here in ACDC."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I know MegaMan is\n"
	.string "OK! He's MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I know you two are\n"
	.string "strong,so I guess\n"
	.string "I have no reason to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "worry too much!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk98
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Lan,I saw on the\n"
	.string "news that something\n"
	.string "big happened on the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Net in Cyber City!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Use this instead of\n"
	.string "your good luck\n"
	.string "charm..."
	ts_key_wait 0x0
	ts_check_flag 0xE9, 0x1, 0x6E, 0xFF
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0xDE, 0x0, 0x11, 0x1
	ts_sound_play00 0x73, 0x0
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 0xDE, 0x0
	.string " "
	ts_print_code 0x11, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_flag_set 0xE9, 0x1
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk99
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Looks like things\n"
	.string "are happening all\n"
	.string "over Cyber City..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Information has been\n"
	.string "flowing in around\n"
	.string "here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've got a feeling\n"
	.string "that you're wrapped\n"
	.string "up in all of this."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mayl is really\n"
	.string "worried about you,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so don't do anything\n"
	.string "stupid,OK?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk100
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x2
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "The weather over\n"
	.string "there sounds real\n"
	.string "strange,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but in ACDC Town,\n"
	.string "it's nothing but\n"
	.string "blue skies!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today,I'm going\n"
	.string "fishing in the big\n"
	.string "river here in town!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk101
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Lan. I want to say\n"
	.string "that I'm sorry for\n"
	.string "what happened when"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you came to visit..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope you and\n"
	.string "MegaMan are\n"
	.string "both safe..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk102
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Lan,I wanted to say\n"
	.string "sorry for what\n"
	.string "happened to MegaMan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He did it for us..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk103
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x2
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "Lan,I wanna\n"
	.string "apologize..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If me and GutsMan\n"
	.string "were stronger this\n"
	.string "wouldn't have"
	ts_key_wait 0x0
	ts_clear_msg
	.string "happened...\n"
	.string "I'm really sorry."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk104
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x13
	ts_mugshot_palette 0x1
	ts_mugshot_animation 0x0
	ts_msg_open_email
	.string "It looks like the\n"
	.string "Expo will open on\n"
	.string "time!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When it opens,I will\n"
	.string "definitely go there!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll also make a\n"
	.string "a special trip to\n"
	.string "visit your house!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk105

	def_text_script CompText86D0614_unk106

	def_text_script CompText86D0614_unk107

	def_text_script CompText86D0614_unk108

	def_text_script CompText86D0614_unk109

	def_text_script CompText86D0614_unk110
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk111
	ts_text_speed 0x2
	ts_clear_msg
	.string "The RegularSystem\n"
	.string "allows you to\n"
	.string "select a chip you"
	ts_key_wait 0x0
	ts_clear_msg
	.string "like,and make one of\n"
	.string "them a RegularChip."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Chips that have been\n"
	.string "marked RegularChips\n"
	.string "will always be"
	ts_key_wait 0x0
	ts_clear_msg
	.string "available at the\n"
	.string "start of a battle."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To select a chip as\n"
	.string "a RegularChip,go to\n"
	.string "the Folder Edit"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Screen and press\n"
	.string "SELECT.Then pick the\n"
	.string "chip you want to set"
	ts_key_wait 0x0
	ts_clear_msg
	.string "as a RegularChip.\n"
	.string "If the chip is\n"
	.string "larger than the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "capacity of your\n"
	.string "PET,it cannot be a\n"
	.string "RegularChip."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The capacity of a\n"
	.string "chip that can become\n"
	.string "a RegularChip is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "written to the right\n"
	.string "of the Folder name\n"
	.string "on the Edit Screen."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Select a chip that\n"
	.string "is smaller than the\n"
	.string "capacity listed."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can increase the\n"
	.string "capacity with the\n"
	.string "RegUP item."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you master the\n"
	.string "RegularSystem,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it will open up a\n"
	.string "wide range of\n"
	.string "strategies."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D0614_unk112

	def_text_script CompText86D0614_unk113

	