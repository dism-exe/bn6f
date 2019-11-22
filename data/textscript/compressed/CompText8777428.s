	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8777428::
	.word 0x30A00

	text_archive_start

	def_text_script CompText8777428_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x10,
	]
	ts_msg_open
	.string "It's already been\n"
	.string "decided that I am\n"
	.string "to officially become"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "an Aquarium staff\n"
	.string "member."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But the best part is\n"
	.string "that I can look at\n"
	.string "sharks all day!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8777428_unk1
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: 0x2,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "It's the director's\n"
	.string "job to look around\n"
	.string "inside the Aquarium."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A group of 3\n"
	.string "suspicious persons?\n"
	.string "Haven't seen them."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8777428_unk2
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "It's the director's\n"
	.string "job to look around\n"
	.string "inside the Aquarium."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There are no\n"
	.string "problems around\n"
	.string "here!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8777428_unk3

	def_text_script CompText8777428_unk4

	def_text_script CompText8777428_unk5
	ts_mugshot_show [
		mugshot: 0x10,
	]
	ts_msg_open
	.string "The shark in front\n"
	.string "is Barbara and the\n"
	.string "rear one's Isabella."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I named them myself,\n"
	.string "hahahaha!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8777428_unk6
	ts_mugshot_show [
		mugshot: 0x8,
	]
	ts_msg_open
	.string "I guess I look\n"
	.string "tasty from a gator's\n"
	.string "point of view..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8777428_unk7
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "A weird person's\n"
	.string "there,so you can't\n"
	.string "buy a drink..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8777428_unk8

	def_text_script CompText8777428_unk9

	def_text_script CompText8777428_unk10
	ts_mugshot_show [
		mugshot: 0x10,
	]
	ts_msg_open
	.string "Morning Barbara...\n"
	.string "Morning Isabella...\n"
	.string "Beautiful as always."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8777428_unk11

	def_text_script CompText8777428_unk12

	def_text_script CompText8777428_unk13

	def_text_script CompText8777428_unk14

	def_text_script CompText8777428_unk15
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Hmmm...\n"
	.string "Seems quiet here..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8777428_unk16

	def_text_script CompText8777428_unk17

	def_text_script CompText8777428_unk18

	def_text_script CompText8777428_unk19

	def_text_script CompText8777428_unk20

	def_text_script CompText8777428_unk21

	def_text_script CompText8777428_unk22

	def_text_script CompText8777428_unk23

	def_text_script CompText8777428_unk24

	def_text_script CompText8777428_unk25

	def_text_script CompText8777428_unk26

	def_text_script CompText8777428_unk27

	def_text_script CompText8777428_unk28

	def_text_script CompText8777428_unk29

	