	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B0A9C::
	.word 0xA8300

	text_archive_start

	def_text_script CompText87B0A9C_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... How are we\n"
	.string "supposed to beat\n"
	.string "a Cybeast...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We can't just let\n"
	.string "him run free\n"
	.string "forever..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87B0A9C_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... Shhh,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87B0A9C_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's up?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87B0A9C_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I can hear\n"
	.string "something..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_fade_out 0x1F, 0x3
	ts_msg_close
	ts_wait 0x5A, 0x0
	ts_jump 4

	def_text_script CompText87B0A9C_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "... Ah,but that\n"
	.string "method... -ny way we\n"
	.string "...do!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B0A9C_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's Dad!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B0A9C_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "He's talking with\n"
	.string "another scientist..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "........."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87B0A9C_unk7
	ts_mugshot_show 0x5
	ts_msg_open
	.string "If the research data\n"
	.string "stored by the Cyber\n"
	.string "City scientists is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "correct,there were\n"
	.string "two Cybeasts hidden\n"
	.string "in that Net area."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now,if we were to\n"
	.string "re-seal them,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "we would need a\n"
	.string "container of\n"
	.string "massive capacity"
	ts_key_wait 0x0
	ts_clear_msg
	.string "equal to that of\n"
	.string "that Net area."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... What did you\n"
	.string "say!? The Cybeast...\n"
	.string "in a Navi's body!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's impossible!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If a Navi sealed a\n"
	.string "Cybeast within\n"
	.string "itself,and then"
	ts_key_wait 0x0
	ts_clear_msg
	.string "forcibly installed\n"
	.string "it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "that Navi would\n"
	.string "explode from being\n"
	.string "over capacity!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Well,if it were\n"
	.string "possible,that Navi\n"
	.string "would have to have"
	ts_key_wait 0x0
	ts_clear_msg
	.string "an extremely large\n"
	.string "memory bank."
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string " Wait,extremely\n"
	.string "large memory... No,\n"
	.string "it's not possible!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... In any case,we\n"
	.string "must quickly create\n"
	.string "our own base camp!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yes,I will check in\n"
	.string "later. Yes,good bye."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "... Honey,what\n"
	.string "happened on the Net?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x5
	.string "Hmm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It seems that the\n"
	.string "person responsible,\n"
	.string "built \"that program\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "into the software of\n"
	.string "the Navi that was\n"
	.string "seen at the site."
	ts_key_wait 0x0
	ts_clear_msg
	.string "........."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The program I\n"
	.string "created 12 years ago\n"
	.string "so that I could"
	ts_key_wait 0x0
	ts_clear_msg
	.string "install Hub's DNA\n"
	.string "data into MegaMan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "the memory expansion\n"
	.string "program,\"ExaMem\"..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "Didn't you give that\n"
	.string "program to the mayor\n"
	.string "the other day...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x5
	.string "No,the version I\n"
	.string "gave to him had a\n"
	.string "tough protection"
	ts_key_wait 0x0
	ts_clear_msg
	.string "program written in,\n"
	.string "so that even if it\n"
	.string "fell into the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "wrong hands,they\n"
	.string "couldn't do anything\n"
	.string "with it. Also,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I changed it so\n"
	.string "that it would only\n"
	.string "run on a Net server."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No Navi would be\n"
	.string "able to install it.\n"
	.string "But let's say that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "a Navi with a very\n"
	.string "large memory bank\n"
	.string "does somehow exist,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and it was able to\n"
	.string "successfully install\n"
	.string "a Cybeast,before"
	ts_key_wait 0x0
	ts_clear_msg
	.string "long,that Navi's\n"
	.string "body and mind would\n"
	.string "become corrupted..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "and be deleted. The\n"
	.string "Navi behind today's\n"
	.string "incident may also..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Anyway,we don't\n"
	.string "currently have any\n"
	.string "good strategies..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_msg_close
	ts_wait 0x5A, 0x0
	ts_jump 8

	def_text_script CompText87B0A9C_unk8
	ts_sound_fade_in_bgm 0xC, 0x3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Dad's trying to do\n"
	.string "something,too..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... There must be\n"
	.string "some way..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87B0A9C_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... Lan,let's go\n"
	.string "on the Net."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Even if we don't\n"
	.string "have a good strategy\n"
	.string "right now,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "we've gotta try to\n"
	.string "confine the Cybeast"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and limit the damage\n"
	.string "as much as possible!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B0A9C_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "But even if we went\n"
	.string "to face the Cybeast,\n"
	.string "without a strate--"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87B0A9C_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Now's not the time\n"
	.string "to think like that!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please,jack me in,\n"
	.string "and let's head for\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87B0A9C_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... OK,I understand."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're in a race\n"
	.string "against time!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But promise me you\n"
	.string "won't take on more\n"
	.string "than you can handle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If it looks bad,get\n"
	.string "out as fast as you\n"
	.string "can!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Yeah,I will!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,jack me in!\n"
	.string "Hurry!"
	ts_key_wait 0x0
	ts_end

	