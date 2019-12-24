	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877C534::
	.word 0x33400

	text_archive_start

	def_text_script CompText877C534_unk0
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Hey,Lan!\n"
	.string "Thanks for the other\n"
	.string "day!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The JudgeTree is\n"
	.string "back to normal!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But right now,it's a\n"
	.string "little inconvenient,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "since it's been shut\n"
	.string "down so it can be\n"
	.string "checked for errors."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C534_unk1

	def_text_script CompText877C534_unk2

	def_text_script CompText877C534_unk3

	def_text_script CompText877C534_unk4

	def_text_script CompText877C534_unk5
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "... What!?... That\n"
	.string "happened in the\n"
	.string "Undernet...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But you know,even\n"
	.string "with all its power,\n"
	.string "the JudgeTree"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "can't do anything\n"
	.string "about what happened\n"
	.string "in the Undernet."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sorry we can't\n"
	.string "be of help..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C534_unk6

	def_text_script CompText877C534_unk7

	def_text_script CompText877C534_unk8

	def_text_script CompText877C534_unk9

	def_text_script CompText877C534_unk10
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "What is with the\n"
	.string "strange weather\n"
	.string "outside?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What are the people\n"
	.string "up in Sky Town\n"
	.string "doing!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C534_unk11

	def_text_script CompText877C534_unk12

	def_text_script CompText877C534_unk13

	def_text_script CompText877C534_unk14

	def_text_script CompText877C534_unk15

	def_text_script CompText877C534_unk16

	def_text_script CompText877C534_unk17

	def_text_script CompText877C534_unk18

	def_text_script CompText877C534_unk19

	def_text_script CompText877C534_unk20

	def_text_script CompText877C534_unk21

	def_text_script CompText877C534_unk22

	def_text_script CompText877C534_unk23

	def_text_script CompText877C534_unk24

	def_text_script CompText877C534_unk25

	def_text_script CompText877C534_unk26

	def_text_script CompText877C534_unk27

	def_text_script CompText877C534_unk28

	def_text_script CompText877C534_unk29

	def_text_script CompText877C534_unk30

	def_text_script CompText877C534_unk31

	def_text_script CompText877C534_unk32

	def_text_script CompText877C534_unk33

	def_text_script CompText877C534_unk34

	def_text_script CompText877C534_unk35

	def_text_script CompText877C534_unk36

	def_text_script CompText877C534_unk37

	def_text_script CompText877C534_unk38

	def_text_script CompText877C534_unk39

	def_text_script CompText877C534_unk40
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Starting today,I'll\n"
	.string "be taking charge of\n"
	.string "my own lawsuit."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I won't lose!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C534_unk41

	def_text_script CompText877C534_unk42

	def_text_script CompText877C534_unk43

	def_text_script CompText877C534_unk44

	def_text_script CompText877C534_unk45
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "... *sigh*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Actually,the court\n"
	.string "date for my suit was\n"
	.string "yesterday..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I lost because I\n"
	.string "didn't show up..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... How sad..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C534_unk46

	def_text_script CompText877C534_unk47

	def_text_script CompText877C534_unk48

	def_text_script CompText877C534_unk49

	def_text_script CompText877C534_unk50

	def_text_script CompText877C534_unk51

	def_text_script CompText877C534_unk52

	def_text_script CompText877C534_unk53

	def_text_script CompText877C534_unk54

	def_text_script CompText877C534_unk55

	def_text_script CompText877C534_unk56

	def_text_script CompText877C534_unk57

	def_text_script CompText877C534_unk58

	def_text_script CompText877C534_unk59

	