	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8773730::
	.word 0x10BC00

	text_archive_start

	def_text_script CompText8773730_unk0
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Ah! A fish jumped\n"
	.string "out of the water!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "Come on. If you want\n"
	.string "fish,you can see all\n"
	.string "the fish you want"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "inside the Aquarium."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "What are you talking\n"
	.string "about!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A real fish has a\n"
	.string "charm that a fish in\n"
	.string "a tank doesn't have!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk1
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Why is it men like\n"
	.string "wild plants and\n"
	.string "animals so much...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A fish is a fish,so\n"
	.string "why does it matter\n"
	.string "where you see it?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "Well,that's..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can't fish for\n"
	.string "the fish at the\n"
	.string "Aquarium,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "That's true..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*sigh* I guess it's\n"
	.string "beyond me..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk2
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "A stuffed animal!\n"
	.string "A stuffed animal!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Aaaaah! Aaaaah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk3
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "My granddaughter's\n"
	.string "taken a liking to\n"
	.string "the Aquarium."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ho,ho,ho!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk4
	ts_mugshot_show mugshot=0x1A
	ts_msg_open
	.string "Originally,we came\n"
	.string "here to make our\n"
	.string "grandchild happy,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "now,even grandpa and\n"
	.string "I are caught up in\n"
	.string "the Aquarium."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure we'll be\n"
	.string "back other weekends\n"
	.string "too."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk5

	def_text_script CompText8773730_unk6

	def_text_script CompText8773730_unk7

	def_text_script CompText8773730_unk8

	def_text_script CompText8773730_unk9

	def_text_script CompText8773730_unk10
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Look! There's some\n"
	.string "clownfish over there\n"
	.string "in the waves!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "Huh!?\n"
	.string "Where!? Where!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk11
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Where are the\n"
	.string "clownfish?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "Look!\n"
	.string "They're over there!\n"
	.string "Over there!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "I can't see them!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Are you sure you're\n"
	.string "not seeing things?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk12
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Mermaid!\n"
	.string "Mermaid!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Aaaaah!\n"
	.string "Aaaaah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk13
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "Phew...\n"
	.string "Boy,I sure am tired!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Care to take a\n"
	.string "break...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk14
	ts_mugshot_show mugshot=0x1A
	ts_msg_open
	.string "Owwww...\n"
	.string "My hip is hurting."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "All this standing\n"
	.string "and walking is\n"
	.string "catching up to me..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk15

	def_text_script CompText8773730_unk16

	def_text_script CompText8773730_unk17

	def_text_script CompText8773730_unk18

	def_text_script CompText8773730_unk19

	def_text_script CompText8773730_unk20
	ts_mugshot_show mugshot=0x1B
	ts_msg_open
	.string "Due to the weird\n"
	.string "weather,my customers\n"
	.string "all went home."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And just when I\n"
	.string "thought I'd gotten\n"
	.string "them back,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's not fair!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk21

	def_text_script CompText8773730_unk22

	def_text_script CompText8773730_unk23

	def_text_script CompText8773730_unk24

	def_text_script CompText8773730_unk25

	def_text_script CompText8773730_unk26

	def_text_script CompText8773730_unk27

	def_text_script CompText8773730_unk28

	def_text_script CompText8773730_unk29

	def_text_script CompText8773730_unk30

	def_text_script CompText8773730_unk31

	def_text_script CompText8773730_unk32

	def_text_script CompText8773730_unk33

	def_text_script CompText8773730_unk34

	def_text_script CompText8773730_unk35

	def_text_script CompText8773730_unk36

	def_text_script CompText8773730_unk37

	def_text_script CompText8773730_unk38

	def_text_script CompText8773730_unk39

	def_text_script CompText8773730_unk40
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "This time,it was Sky\n"
	.string "Town that was\n"
	.string "terrorized."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Society is getting\n"
	.string "more dangerous,\n"
	.string "that's for sure."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk41
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "Water is half price\n"
	.string "today,so..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "grandma had me come\n"
	.string "out here to buy her\n"
	.string "some."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk42
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Um... I think I'm\n"
	.string "gonna buy 3 bottles\n"
	.string "all at once."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can't go wrong\n"
	.string "with buying in bulk!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk43
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "... You're pretty\n"
	.string "cute..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "Don't be silly!\n"
	.string "People are\n"
	.string "staring at us!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "Yup,you really are\n"
	.string "cute!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... You cute,little\n"
	.string "dolphin you! You're\n"
	.string "such a cute design!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "W-Wait a second!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk44

	def_text_script CompText8773730_unk45

	def_text_script CompText8773730_unk46

	def_text_script CompText8773730_unk47

	def_text_script CompText8773730_unk48

	def_text_script CompText8773730_unk49

	def_text_script CompText8773730_unk50
	ts_check_flag [
		flag: 0xCC6,
		jumpIfTrue: 0x35,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCC5,
		jumpIfTrue: 0x34,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCC4,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x1B
	ts_msg_open
	.string "Weeeelcome!\n"
	.string "How about taking\n"
	.string "home one of our"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "adorable stuffed\n"
	.string "animals?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Huh?\n"
	.string "The Undernet door?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... S-Sorry,but I\n"
	.string "don't know what you\n"
	.string "are talking about."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_flag_set flag=0xCC4
	ts_end

	def_text_script CompText8773730_unk51
	ts_mugshot_show mugshot=0x1B
	ts_msg_open
	.string "... I really don't\n"
	.string "know anything about\n"
	.string "the Undernet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sorry,but I can't\n"
	.string "help you..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_flag_set flag=0xCC5
	ts_end

	def_text_script CompText8773730_unk52
	ts_mugshot_show mugshot=0x1B
	ts_msg_open
	.string "... Do you want to\n"
	.string "know that badly?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,I'll tell\n"
	.string "you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's right..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The one that knows\n"
	.string "the Undernet door\n"
	.string "password..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... is this bad\n"
	.string "girl right here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "You mean... You!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1B
	.string "... I was a bit of\n"
	.string "a rebel back then."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I rebelled against,\n"
	.string "well,everything!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyway,I was a total\n"
	.string "mess,doing anything\n"
	.string "I felt like."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I'm different\n"
	.string "now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I really know the\n"
	.string "joy of living now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "thanks to working\n"
	.string "at this store."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The customers'\n"
	.string "smiles fill me with\n"
	.string "a sense of purpose."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... That's why I\n"
	.string "decided to leave\n"
	.string "the past behind."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I-I'm sorry. I\n"
	.string "didn't mean to bring\n"
	.string "back bad memories..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1B
	.string "No,no,it's OK.\n"
	.string "Really."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm much better now,\n"
	.string "so not to worry..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... So you want to\n"
	.string "know the password\n"
	.string "to the door,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,I'll tell\n"
	.string "you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Moneyhats\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's the password."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "T-Thanks...\n"
	.string "Ahahaha..."
	ts_key_wait any=0x0
	ts_flag_set flag=0xCC6
	ts_flag_set flag=0xCC7
	ts_end

	def_text_script CompText8773730_unk53
	ts_mugshot_show mugshot=0x1B
	ts_msg_open
	.string "\"Moneyhats\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's the password."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk54

	def_text_script CompText8773730_unk55
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "That Mayor Cain.\n"
	.string "He's a good-looking\n"
	.string "man."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if he would\n"
	.string "ever buy any Fish\n"
	.string "Sticks from me..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk56
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "That Navi in the\n"
	.string "Expo commercial's\n"
	.string "great!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He looks so cool and\n"
	.string "strong! I was so\n"
	.string "impressed!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk57
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Hey,have you seen\n"
	.string "the Expo commercial?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "Yeah,I've seen it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "The Navi in that\n"
	.string "commercial seemed so\n"
	.string "strong and reliable."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Unlike SOMEONE I\n"
	.string "know..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "H-Hey! What's that\n"
	.string "supposed to mean!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk58
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Aaah!! Noooo!!\n"
	.string "A Navi is going\n"
	.string "nuts!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk59

	def_text_script CompText8773730_unk60
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Wow,your life really\n"
	.string "does flash before\n"
	.string "your eyes..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A-Are you OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "... Yes. Just a few\n"
	.string "scratches is all."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I was so\n"
	.string "scared..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk61
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "That wild Navi just\n"
	.string "now was jacked in to\n"
	.string "a CopyBot,right...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Didn't he look just\n"
	.string "like the Navi in the\n"
	.string "Expo commercial...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk62
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "What in the world\n"
	.string "was up with that\n"
	.string "wild Navi just now?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too bad we\n"
	.string "couldn't catch it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk63
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "The security around\n"
	.string "here must be really\n"
	.string "bad"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "if something like\n"
	.string "that could happen."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With something like\n"
	.string "this,will the Expo\n"
	.string "be alright?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk64
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "... I'm sorry. If I\n"
	.string "could've only gained\n"
	.string "complete control..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk65
	ts_msg_open
	.string "The CopyBot MegaMan\n"
	.string "jacked in to. The\n"
	.string "battery is dead."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773730_unk66

	def_text_script CompText8773730_unk67

	def_text_script CompText8773730_unk68

	def_text_script CompText8773730_unk69

	def_text_script CompText8773730_unk70

	def_text_script CompText8773730_unk71

	def_text_script CompText8773730_unk72

	def_text_script CompText8773730_unk73

	def_text_script CompText8773730_unk74

	def_text_script CompText8773730_unk75

	def_text_script CompText8773730_unk76

	def_text_script CompText8773730_unk77

	def_text_script CompText8773730_unk78

	def_text_script CompText8773730_unk79

	def_text_script CompText8773730_unk80

	def_text_script CompText8773730_unk81

	def_text_script CompText8773730_unk82

	def_text_script CompText8773730_unk83

	def_text_script CompText8773730_unk84

	def_text_script CompText8773730_unk85

	def_text_script CompText8773730_unk86

	def_text_script CompText8773730_unk87

	def_text_script CompText8773730_unk88

	def_text_script CompText8773730_unk89

	def_text_script CompText8773730_unk90

	def_text_script CompText8773730_unk91

	def_text_script CompText8773730_unk92

	def_text_script CompText8773730_unk93

	def_text_script CompText8773730_unk94

	def_text_script CompText8773730_unk95

	def_text_script CompText8773730_unk96

	def_text_script CompText8773730_unk97

	def_text_script CompText8773730_unk98

	def_text_script CompText8773730_unk99

	