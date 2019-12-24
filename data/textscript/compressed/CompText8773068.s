	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8773068::
	.word 0xA3C00

	text_archive_start

	def_text_script CompText8773068_unk0
	ts_msg_open
	ts_mugshot_show mugshot=0x14
	.string "Yo! Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...as lost as I am?\n"
	.string "What's \"I'm always\n"
	.string "looking at"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "crayfish\" supposed\n"
	.string "to mean!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have no idea!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hmm... Now that\n"
	.string "I think about it,\n"
	.string "it might just be me,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but I feel like I\n"
	.string "see crayfish\n"
	.string "everyday!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Everyday...\n"
	.string "Now where do I see\n"
	.string "them everyday...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmm... I think it's\n"
	.string "someplace really\n"
	.string "familiar..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk1

	def_text_script CompText8773068_unk2

	def_text_script CompText8773068_unk3

	def_text_script CompText8773068_unk4

	def_text_script CompText8773068_unk5
	ts_check_flag [
		flag: 0x60C,
		jumpIfTrue: CompText8773068_unk8_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "There's supposed to\n"
	.string "be an awesome event\n"
	.string "in CentralArea3"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "tomorrow...\n"
	.string "I'm gonna go check\n"
	.string "it out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk6
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "I'm on a diet,\n"
	.string "but I couldn't\n"
	.string "resist that smell..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk7
	ts_check_chapter [
		lower: 0x25,
		upper: 0x25,
		jumpIfInRange: CompText8773068_unk21_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x24,
		upper: 0x24,
		jumpIfInRange: CompText8773068_unk16_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Well...\n"
	.string "After that incident,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we've lost customers\n"
	.string "and it's been hard\n"
	.string "to continue."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If there was some\n"
	.string "way to get them\n"
	.string "back..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk8
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Alright! Let's go\n"
	.string "to CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk9

	def_text_script CompText8773068_unk10
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "OHHH NOOO...\n"
	.string "My Navi...!\n"
	.string "Not my Navi!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk11
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "That guy's a\n"
	.string "member of the\n"
	.string "NetPolice..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess something\n"
	.string "must have happened?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk12
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Huh? That happened\n"
	.string "in CentralArea?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x15
	.string "That's what I\n"
	.string "heard..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xF
	.string "I wonder if people\n"
	.string "who didn't go on the\n"
	.string "Net will come here?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x15
	.string "This is kind of\n"
	.string "hard to say,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "since we don't know\n"
	.string "what the criminals\n"
	.string "were after,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "places where\n"
	.string "people gather might\n"
	.string "become targets,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "shouldn't you close\n"
	.string "the Aquarium for a\n"
	.string "few days?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xF
	.string "Hmmm..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk13
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "To maintain public\n"
	.string "safety,you must\n"
	.string "close the Aquarium"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "for a few days...\n"
	.string "Please understand..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xF
	.string "Hmmmm..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk14

	def_text_script CompText8773068_unk15
	ts_check_chapter [
		lower: 0x25,
		upper: 0x25,
		jumpIfInRange: CompText8773068_unk20_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "If the Aquarium is\n"
	.string "closed,business is\n"
	.string "going to tank..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess it's better\n"
	.string "than being the\n"
	.string "Aquarium Director..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk16
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Hmmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Public safety is a\n"
	.string "concern,but closing"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the Aquarium is a\n"
	.string "serious problem,too."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk17
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "My Navi's patrolling\n"
	.string "the Net,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but the criminals\n"
	.string "won't show\n"
	.string "themselves..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk18

	def_text_script CompText8773068_unk19

	def_text_script CompText8773068_unk20
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "Ahhh...\n"
	.string "This is boring..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk21
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "What happened?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The NetPolice are\n"
	.string "running around like\n"
	.string "crazy..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk22
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "WHAT!? MY NAVI...!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "C'mon!! Work!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk23

	def_text_script CompText8773068_unk24

	def_text_script CompText8773068_unk25

	def_text_script CompText8773068_unk26

	def_text_script CompText8773068_unk27

	def_text_script CompText8773068_unk28

	def_text_script CompText8773068_unk29

	def_text_script CompText8773068_unk30

	def_text_script CompText8773068_unk31

	def_text_script CompText8773068_unk32

	def_text_script CompText8773068_unk33

	def_text_script CompText8773068_unk34

	def_text_script CompText8773068_unk35

	def_text_script CompText8773068_unk36

	def_text_script CompText8773068_unk37

	def_text_script CompText8773068_unk38

	def_text_script CompText8773068_unk39

	def_text_script CompText8773068_unk40
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "I'm really thirsty.\n"
	.string "Maybe I should get\n"
	.string "a drink..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Wow! What's\n"
	.string "this? Bottled water\n"
	.string "from Seaside Town:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"King Of Water SP\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're selling this\n"
	.string "now... I guess I'll\n"
	.string "give it a try!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk41
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Walking along the\n"
	.string "waterfront is nice!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It is incredibly\n"
	.string "calming..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk42
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "What a beautiful\n"
	.string "mermaid..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "Wait a minute!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't ignore your\n"
	.string "real girlfriend for\n"
	.string "some fake mermaid!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk43

	def_text_script CompText8773068_unk44

	def_text_script CompText8773068_unk45

	def_text_script CompText8773068_unk46

	def_text_script CompText8773068_unk47

	def_text_script CompText8773068_unk48

	def_text_script CompText8773068_unk49

	def_text_script CompText8773068_unk50
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Even the feel of\n"
	.string "the whale is well\n"
	.string "done!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whoever made this\n"
	.string "whale is a master..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "Don't ignore your\n"
	.string "real girlfriend for\n"
	.string "some fake whale!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk51
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "Mermaids..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I used to be as\n"
	.string "cute as a mermaid\n"
	.string "when I was younger."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk52
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "All of a sudden\n"
	.string "I feel like\n"
	.string "swimming!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can't wait!\n"
	.string "I'm gonna jump in\n"
	.string "right now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8773068_unk53

	def_text_script CompText8773068_unk54

	def_text_script CompText8773068_unk55

	def_text_script CompText8773068_unk56

	def_text_script CompText8773068_unk57

	def_text_script CompText8773068_unk58

	def_text_script CompText8773068_unk59

	def_text_script CompText8773068_unk60

	def_text_script CompText8773068_unk61

	def_text_script CompText8773068_unk62

	def_text_script CompText8773068_unk63

	def_text_script CompText8773068_unk64

	def_text_script CompText8773068_unk65

	def_text_script CompText8773068_unk66

	def_text_script CompText8773068_unk67

	def_text_script CompText8773068_unk68

	def_text_script CompText8773068_unk69

	def_text_script CompText8773068_unk70

	def_text_script CompText8773068_unk71

	def_text_script CompText8773068_unk72

	def_text_script CompText8773068_unk73

	def_text_script CompText8773068_unk74

	def_text_script CompText8773068_unk75

	def_text_script CompText8773068_unk76

	def_text_script CompText8773068_unk77

	def_text_script CompText8773068_unk78

	def_text_script CompText8773068_unk79

	def_text_script CompText8773068_unk80

	def_text_script CompText8773068_unk81

	def_text_script CompText8773068_unk82

	def_text_script CompText8773068_unk83

	def_text_script CompText8773068_unk84

	def_text_script CompText8773068_unk85

	def_text_script CompText8773068_unk86

	def_text_script CompText8773068_unk87

	def_text_script CompText8773068_unk88

	def_text_script CompText8773068_unk89

	def_text_script CompText8773068_unk90

	def_text_script CompText8773068_unk91

	def_text_script CompText8773068_unk92

	def_text_script CompText8773068_unk93

	def_text_script CompText8773068_unk94

	def_text_script CompText8773068_unk95

	def_text_script CompText8773068_unk96

	def_text_script CompText8773068_unk97

	def_text_script CompText8773068_unk98

	def_text_script CompText8773068_unk99

	