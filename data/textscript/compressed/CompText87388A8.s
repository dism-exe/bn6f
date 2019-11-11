	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87388A8::
	.word 0x6D100

	text_archive_start

	def_text_script CompText87388A8_unk0
	ts_check_navi_all 0xA, 0x1E, 0x28, 0x32, 0x3C, 0x46, 0x50, 0x5A, 0x64, 0x6E, 0x78, 0xA

	def_text_script CompText87388A8_unk1

	def_text_script CompText87388A8_unk2

	def_text_script CompText87388A8_unk3
	ts_check_navi_all 0xD, 0x21, 0x2B, 0x35, 0x3F, 0x49, 0x53, 0x5D, 0x67, 0x71, 0x7B, 0xD

	def_text_script CompText87388A8_unk4

	def_text_script CompText87388A8_unk5

	def_text_script CompText87388A8_unk6

	def_text_script CompText87388A8_unk7

	def_text_script CompText87388A8_unk8

	def_text_script CompText87388A8_unk9

	def_text_script CompText87388A8_unk10
	ts_jump 11

	def_text_script CompText87388A8_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0xC, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk12
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk13
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk14

	def_text_script CompText87388A8_unk15

	def_text_script CompText87388A8_unk16

	def_text_script CompText87388A8_unk17

	def_text_script CompText87388A8_unk18

	def_text_script CompText87388A8_unk19

	def_text_script CompText87388A8_unk20

	def_text_script CompText87388A8_unk21

	def_text_script CompText87388A8_unk22

	def_text_script CompText87388A8_unk23

	def_text_script CompText87388A8_unk24

	def_text_script CompText87388A8_unk25

	def_text_script CompText87388A8_unk26

	def_text_script CompText87388A8_unk27

	def_text_script CompText87388A8_unk28

	def_text_script CompText87388A8_unk29

	def_text_script CompText87388A8_unk30
	ts_jump 31

	def_text_script CompText87388A8_unk31
	ts_mugshot_show 0x0
	ts_msg_open
	.string "HeatMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x20, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk32
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk33
	ts_mugshot_show 0x47
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk34

	def_text_script CompText87388A8_unk35

	def_text_script CompText87388A8_unk36

	def_text_script CompText87388A8_unk37

	def_text_script CompText87388A8_unk38

	def_text_script CompText87388A8_unk39

	def_text_script CompText87388A8_unk40
	ts_jump 41

	def_text_script CompText87388A8_unk41
	ts_mugshot_show 0x0
	ts_msg_open
	.string "ElecMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x2A, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk42
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk43
	ts_mugshot_show 0x49
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk44

	def_text_script CompText87388A8_unk45

	def_text_script CompText87388A8_unk46

	def_text_script CompText87388A8_unk47

	def_text_script CompText87388A8_unk48

	def_text_script CompText87388A8_unk49

	def_text_script CompText87388A8_unk50
	ts_jump 51

	def_text_script CompText87388A8_unk51
	ts_mugshot_show 0x0
	ts_msg_open
	.string "SlashMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x34, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk52
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk53
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk54

	def_text_script CompText87388A8_unk55

	def_text_script CompText87388A8_unk56

	def_text_script CompText87388A8_unk57

	def_text_script CompText87388A8_unk58

	def_text_script CompText87388A8_unk59

	def_text_script CompText87388A8_unk60
	ts_jump 61

	def_text_script CompText87388A8_unk61
	ts_mugshot_show 0x0
	ts_msg_open
	.string "EraseMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x3E, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk62
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk63
	ts_mugshot_show 0x50
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk64

	def_text_script CompText87388A8_unk65

	def_text_script CompText87388A8_unk66

	def_text_script CompText87388A8_unk67

	def_text_script CompText87388A8_unk68

	def_text_script CompText87388A8_unk69

	def_text_script CompText87388A8_unk70
	ts_jump 71

	def_text_script CompText87388A8_unk71
	ts_mugshot_show 0x0
	ts_msg_open
	.string "ChargeMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x48, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk72
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk73
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk74

	def_text_script CompText87388A8_unk75

	def_text_script CompText87388A8_unk76

	def_text_script CompText87388A8_unk77

	def_text_script CompText87388A8_unk78

	def_text_script CompText87388A8_unk79

	def_text_script CompText87388A8_unk80
	ts_jump 81

	def_text_script CompText87388A8_unk81
	ts_mugshot_show 0x0
	ts_msg_open
	.string "SpoutMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x52, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk82
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk83
	ts_mugshot_show 0x48
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk84
	ts_mugshot_show 0x48
	ts_msg_open
	.string "Drip! Drip!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't jack out\n"
	.string "while I'm swimming,\n"
	.string "drip!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk85

	def_text_script CompText87388A8_unk86

	def_text_script CompText87388A8_unk87

	def_text_script CompText87388A8_unk88

	def_text_script CompText87388A8_unk89

	def_text_script CompText87388A8_unk90
	ts_jump 91

	def_text_script CompText87388A8_unk91
	ts_mugshot_show 0x0
	ts_msg_open
	.string "TomahawkMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x5C, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk92
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk93
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk94

	def_text_script CompText87388A8_unk95

	def_text_script CompText87388A8_unk96

	def_text_script CompText87388A8_unk97

	def_text_script CompText87388A8_unk98

	def_text_script CompText87388A8_unk99

	def_text_script CompText87388A8_unk100
	ts_jump 101

	def_text_script CompText87388A8_unk101
	ts_mugshot_show 0x0
	ts_msg_open
	.string "TenguMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x66, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk102
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk103
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "I cannot jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk104

	def_text_script CompText87388A8_unk105

	def_text_script CompText87388A8_unk106

	def_text_script CompText87388A8_unk107

	def_text_script CompText87388A8_unk108

	def_text_script CompText87388A8_unk109

	def_text_script CompText87388A8_unk110
	ts_jump 111

	def_text_script CompText87388A8_unk111
	ts_mugshot_show 0x0
	ts_msg_open
	.string "GroundMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x70, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk112
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk113
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk114

	def_text_script CompText87388A8_unk115

	def_text_script CompText87388A8_unk116

	def_text_script CompText87388A8_unk117

	def_text_script CompText87388A8_unk118

	def_text_script CompText87388A8_unk119

	def_text_script CompText87388A8_unk120
	ts_jump 121

	def_text_script CompText87388A8_unk121
	ts_mugshot_show 0x0
	ts_msg_open
	.string "DustMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x7A, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk122
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk123
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk124

	def_text_script CompText87388A8_unk125

	def_text_script CompText87388A8_unk126

	def_text_script CompText87388A8_unk127

	def_text_script CompText87388A8_unk128

	def_text_script CompText87388A8_unk129

	def_text_script CompText87388A8_unk130
	ts_jump 131

	def_text_script CompText87388A8_unk131
	ts_mugshot_show 0x0
	ts_msg_open
	.string "DiveMan,\n"
	.string "jack out?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x81, 0x84, 0xFF, 0xFF
	ts_end

	def_text_script CompText87388A8_unk132
	ts_mugshot_show 0x0
	.string "OK! Roger that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87388A8_unk133
	ts_mugshot_show 0x52
	ts_msg_open
	.string "I can't jack out!"
	ts_key_wait 0x0
	ts_flag_set 0x1E, 0x17
	ts_end

	def_text_script CompText87388A8_unk134

	def_text_script CompText87388A8_unk135

	def_text_script CompText87388A8_unk136

	def_text_script CompText87388A8_unk137

	def_text_script CompText87388A8_unk138

	def_text_script CompText87388A8_unk139

	def_text_script CompText87388A8_unk140
	ts_jump 131

	def_text_script CompText87388A8_unk141
	ts_jump 11

	def_text_script CompText87388A8_unk142
	ts_jump 12

	def_text_script CompText87388A8_unk143
	ts_jump 13

	def_text_script CompText87388A8_unk144

	def_text_script CompText87388A8_unk145

	def_text_script CompText87388A8_unk146

	def_text_script CompText87388A8_unk147

	def_text_script CompText87388A8_unk148

	def_text_script CompText87388A8_unk149

	