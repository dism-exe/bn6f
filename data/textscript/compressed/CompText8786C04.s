	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8786C04::
	.word 0x36700

	text_archive_start

	def_text_script CompText8786C04_unk0
	ts_check_chapter 0x62, 0x62, 0xA, 0xFF
	ts_check_chapter 0x61, 0x61, 0x5, 0xFF
	ts_check_flag 0x5A, 0xE, 0x1, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE UNDERBBS!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I DON'T KNOW A\n"
	.string "THING ABOUT SUCH\n"
	.string "AWFUL PLACES!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786C04_unk1
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE UNDERNET IS A\n"
	.string "TRULY SCARY PLACE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "JUST THINKING ABOUT\n"
	.string "IT MAKES ME SHIVER!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786C04_unk2

	def_text_script CompText8786C04_unk3

	def_text_script CompText8786C04_unk4

	def_text_script CompText8786C04_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "CURRENTLY,THERE\n"
	.string "IS AN EXAMINATION\n"
	.string "OF THE UNDERGROUND"
	ts_key_wait 0x0
	ts_clear_msg
	.string "OCCURRING IN CENTRAL\n"
	.string "AREA3."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MAKE SURE YOU DON'T\n"
	.string "GET IN THE WAY!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786C04_unk6
	ts_check_chapter 0x62, 0x62, 0xB, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Shouldn't you\n"
	.string "avoid going to\n"
	.string "CentralArea3?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you get too close\n"
	.string "you might fall into\n"
	.string "the Underground!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786C04_unk7

	def_text_script CompText8786C04_unk8

	def_text_script CompText8786C04_unk9

	def_text_script CompText8786C04_unk10
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HMMMM...\n"
	.string "JUST AS LONG AS\n"
	.string "NOTHING STRANGE"
	ts_key_wait 0x0
	ts_clear_msg
	.string "COMES OUT OF THE\n"
	.string "UNDERGROUND AND INTO\n"
	.string "THIS AREA..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786C04_unk11
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I checked out the\n"
	.string "Underground,but\n"
	.string "only for a second..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It was really scary!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786C04_unk12

	def_text_script CompText8786C04_unk13

	def_text_script CompText8786C04_unk14

	def_text_script CompText8786C04_unk15
	ts_mugshot_show 0x41
	ts_msg_open
	.string "A blu...blue Navi?\n"
	.string "I...dunno...know..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8786C04_unk16
	ts_mugshot_show 0x43
	ts_msg_open
	.string "The one I'm looking\n"
	.string "at is about to get\n"
	.string "DELETED!! Yahhhhh!!"
	ts_key_wait 0x0
	ts_flag_set 0xAD, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	