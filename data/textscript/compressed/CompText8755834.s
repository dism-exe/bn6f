	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8755834::
	.word 0x15E00

	text_archive_start

	def_text_script CompText8755834_unk0
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText8755834_unk1_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I've got the chills\n"
	.string "from this area...\n"
	.string "Be careful..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8755834_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I've got a bad\n"
	.string "feeling something's\n"
	.string "gonna happen..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Be very careful..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8755834_unk2

	def_text_script CompText8755834_unk3

	def_text_script CompText8755834_unk4

	def_text_script CompText8755834_unk5

	def_text_script CompText8755834_unk6

	def_text_script CompText8755834_unk7

	def_text_script CompText8755834_unk8

	def_text_script CompText8755834_unk9

	def_text_script CompText8755834_unk10

	def_text_script CompText8755834_unk11

	def_text_script CompText8755834_unk12

	def_text_script CompText8755834_unk13

	def_text_script CompText8755834_unk14

	def_text_script CompText8755834_unk15

	def_text_script CompText8755834_unk16

	def_text_script CompText8755834_unk17

	def_text_script CompText8755834_unk18

	def_text_script CompText8755834_unk19

	def_text_script CompText8755834_unk20

	def_text_script CompText8755834_unk21

	def_text_script CompText8755834_unk22

	def_text_script CompText8755834_unk23

	def_text_script CompText8755834_unk24

	def_text_script CompText8755834_unk25

	def_text_script CompText8755834_unk26

	def_text_script CompText8755834_unk27

	def_text_script CompText8755834_unk28

	def_text_script CompText8755834_unk29

	def_text_script CompText8755834_unk30

	def_text_script CompText8755834_unk31

	def_text_script CompText8755834_unk32

	def_text_script CompText8755834_unk33

	def_text_script CompText8755834_unk34

	def_text_script CompText8755834_unk35

	def_text_script CompText8755834_unk36

	def_text_script CompText8755834_unk37

	def_text_script CompText8755834_unk38

	def_text_script CompText8755834_unk39

	def_text_script CompText8755834_unk40

	def_text_script CompText8755834_unk41

	def_text_script CompText8755834_unk42

	def_text_script CompText8755834_unk43

	def_text_script CompText8755834_unk44

	def_text_script CompText8755834_unk45

	def_text_script CompText8755834_unk46

	def_text_script CompText8755834_unk47

	def_text_script CompText8755834_unk48

	def_text_script CompText8755834_unk49

	def_text_script CompText8755834_unk50

	def_text_script CompText8755834_unk51

	def_text_script CompText8755834_unk52

	def_text_script CompText8755834_unk53

	def_text_script CompText8755834_unk54

	def_text_script CompText8755834_unk55

	def_text_script CompText8755834_unk56

	def_text_script CompText8755834_unk57

	def_text_script CompText8755834_unk58

	def_text_script CompText8755834_unk59

	def_text_script CompText8755834_unk60

	def_text_script CompText8755834_unk61

	def_text_script CompText8755834_unk62

	def_text_script CompText8755834_unk63

	def_text_script CompText8755834_unk64

	def_text_script CompText8755834_unk65

	def_text_script CompText8755834_unk66

	def_text_script CompText8755834_unk67

	def_text_script CompText8755834_unk68

	def_text_script CompText8755834_unk69

	def_text_script CompText8755834_unk70

	def_text_script CompText8755834_unk71

	def_text_script CompText8755834_unk72

	def_text_script CompText8755834_unk73

	def_text_script CompText8755834_unk74

	def_text_script CompText8755834_unk75

	def_text_script CompText8755834_unk76

	def_text_script CompText8755834_unk77

	def_text_script CompText8755834_unk78

	def_text_script CompText8755834_unk79

	def_text_script CompText8755834_unk80

	def_text_script CompText8755834_unk81

	def_text_script CompText8755834_unk82

	def_text_script CompText8755834_unk83

	def_text_script CompText8755834_unk84

	def_text_script CompText8755834_unk85

	def_text_script CompText8755834_unk86

	def_text_script CompText8755834_unk87

	def_text_script CompText8755834_unk88

	def_text_script CompText8755834_unk89

	def_text_script CompText8755834_unk90

	def_text_script CompText8755834_unk91

	def_text_script CompText8755834_unk92

	def_text_script CompText8755834_unk93

	def_text_script CompText8755834_unk94

	def_text_script CompText8755834_unk95

	def_text_script CompText8755834_unk96

	def_text_script CompText8755834_unk97

	def_text_script CompText8755834_unk98

	def_text_script CompText8755834_unk99

	def_text_script CompText8755834_unk100

	