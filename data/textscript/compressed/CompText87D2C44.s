	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D2C44::
	.word 0x119300

	text_archive_start

	def_text_script CompText87D2C44_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Great job!\n"
	.string "Jack out,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87D2C44_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Roger!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk2
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "What's taking so\n"
	.string "long!? Hurry it up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87D2C44_unk3
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Ah,come on,I'm not\n"
	.string "Baryl... I can't\n"
	.string "move..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87D2C44_unk4
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "Quit your whining!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87D2C44_unk5
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hold it right there!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "You can't escape!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87D2C44_unk7
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "Hmph!\n"
	.string "What do you mean,\n"
	.string "\"You can't escape\"?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You think you can\n"
	.string "beat 3 adults,\n"
	.string "you little snot?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hey,you two!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk8
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "It doesn't matter\n"
	.string "how strong you are\n"
	.string "at NetBattling,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "you're still just an\n"
	.string "elementary school\n"
	.string "kid in real life!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87D2C44_unk9
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "It's against my\n"
	.string "policy to use brute\n"
	.string "force,but"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "you deleted\n"
	.string "JudgeMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk10
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Darn it...\n"
	.string "They're right..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If this was a\n"
	.string "NetBattle,then I\n"
	.string "could win..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87D2C44_unk11
	ts_mugshot_hide
	ts_msg_open
	.string "INTRUDERS!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_end

	def_text_script CompText87D2C44_unk12
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	ts_sound_play_bgm [
		track: 0xC,
	]
	.string "LAN HIKARI AND THE\n"
	.string "TRAITORS HAVE BEEN\n"
	.string "SPOTTED!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87D2C44_unk13
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "DELETE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk14
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "DELETE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk15
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Argh,why now!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87D2C44_unk16
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "\"Traitors\"?\n"
	.string "You think they mean\n"
	.string "us?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 17,
	]

	def_text_script CompText87D2C44_unk17
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "It appears that\n"
	.string "way..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 18,
	]

	def_text_script CompText87D2C44_unk18
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "We could take on\n"
	.string "1 or 2 of them,but"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "without our Navis...\n"
	.string "This is bad..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Grr! And we were so\n"
	.string "close to the\n"
	.string "Cybeast!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk19
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "LAN HIKARI AND YOU\n"
	.string "TRAITORS,THIS IS\n"
	.string "THE END FOR YOU!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "GET READY!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script CompText87D2C44_unk20
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "DELETE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk21
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	ts_control_lock
	.string "DELEEEEEETE!"
	ts_wait [
		frames: 0x28,
	]
	ts_clear_msg
	ts_jump [
		target: 22,
	]

	def_text_script CompText87D2C44_unk22
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	ts_sound_play_bgm [
		track: 0x63,
	]
	.string "Lan!!"
	ts_wait [
		frames: 0x28,
	]
	ts_end

	def_text_script CompText87D2C44_unk23
	ts_mugshot_show [
		mugshot: 0x39,
	]
	ts_msg_open
	.string "Guts Punch!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 24,
	]

	def_text_script CompText87D2C44_unk24
	ts_mugshot_show [
		mugshot: 0x38,
	]
	ts_msg_open
	.string "Roll Arrow!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 25,
	]

	def_text_script CompText87D2C44_unk25
	ts_mugshot_show [
		mugshot: 0x3A,
	]
	ts_msg_open
	.string "Glide Flash!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk26
	ts_mugshot_show [
		mugshot: 0x39,
	]
	ts_msg_open
	.string "We're here!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x38,
	]
	.string "Sorry to keep you\n"
	.string "waiting!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3A,
	]
	.string "Phew,that was a\n"
	.string "close one!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "GutsMan,Roll...\n"
	.string "Glide..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... That means...!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 27,
	]

	def_text_script CompText87D2C44_unk27
	ts_mugshot_hide
	ts_msg_open
	.string "Hey,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk28
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "How's that? Did we\n"
	.string "do a good job with\n"
	.string "the CopyBots!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 29,
	]

	def_text_script CompText87D2C44_unk29
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Dex,Mayl,Yai!\n"
	.string "Thank goodness\n"
	.string "you're safe!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Iris...\n"
	.string "Hey,where are Mick\n"
	.string "and Tab!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 30,
	]

	def_text_script CompText87D2C44_unk30
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Iris... was..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Dr.Wily took her\n"
	.string "somewhere..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sorry we couldn't\n"
	.string "protect her..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Mick and Tab are\n"
	.string "kicking some evil\n"
	.string "Navi butt,I'm sure!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk31
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "H-Help!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 32,
	]

	def_text_script CompText87D2C44_unk32
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "I-I can't fight!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 33,
	]

	def_text_script CompText87D2C44_unk33
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "DELEEEEEEEETE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D2C44_unk34
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Or not."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Looks like they're\n"
	.string "surrounded!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk35
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "S-Someone!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 36,
	]

	def_text_script CompText87D2C44_unk36
	ts_mugshot_show [
		mugshot: 0x33,
	]
	ts_msg_open
	.string "I-I-It's no good!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk37
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "Is this the end!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 38,
	]

	def_text_script CompText87D2C44_unk38
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Eeeek!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 39,
	]

	def_text_script CompText87D2C44_unk39
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "DELETE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 40,
	]

	def_text_script CompText87D2C44_unk40
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Tab!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_end

	def_text_script CompText87D2C44_unk41
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "ProtoMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_sound_play_bgm [
		track: 0xE,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "W-We're saved...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x57,
	]
	.string "Phew..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk42
	ts_mugshot_show [
		mugshot: 0x4,
	]
	ts_msg_open
	.string "Sorry I'm late..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 43,
	]

	def_text_script CompText87D2C44_unk43
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Chaud!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk44
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Think you can\n"
	.string "escape now!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 45,
	]

	def_text_script CompText87D2C44_unk45
	ts_mugshot_show [
		mugshot: 0x4,
	]
	ts_msg_open
	.string "Ex-WWW members,you\n"
	.string "are to give\n"
	.string "yourselves up now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 46,
	]

	def_text_script CompText87D2C44_unk46
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "... Ooooh!!\n"
	.string "Thank you for\n"
	.string "rescuing me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk47
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Yuika,what do you\n"
	.string "think you're doing!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk48
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "Actually,I was being\n"
	.string "forced to be bad by\n"
	.string "these two evil men!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 49,
	]

	def_text_script CompText87D2C44_unk49
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "W-What!?\n"
	.string "You're turning your\n"
	.string "back on us!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 50,
	]

	def_text_script CompText87D2C44_unk50
	ts_mugshot_show [
		mugshot: 0x4,
	]
	ts_msg_open
	.string "I don't think so,\n"
	.string "lady!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 51,
	]

	def_text_script CompText87D2C44_unk51
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "What? You don't\n"
	.string "believe little ol'\n"
	.string "me...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Well,fine then!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk52
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "Come on,Vic!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 53,
	]

	def_text_script CompText87D2C44_unk53
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Ah,what's with you\n"
	.string "guys!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk54
	ts_mugshot_show [
		mugshot: 0x4,
	]
	ts_msg_open
	.string "They got away..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk55
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Chaud..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk56
	ts_mugshot_show [
		mugshot: 0x4,
	]
	ts_msg_open
	.string "The Cybeast is just\n"
	.string "behind this door..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm ready to go\n"
	.string "at any time."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x2,
	]
	.string "I'm going!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x14,
	]
	.string "Count me in!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x33,
	]
	.string "M-Me,too...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1,
	]
	.string "I'm coming along!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3,
	]
	.string "I'm want to help,\n"
	.string "too!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 57,
	]

	def_text_script CompText87D2C44_unk57
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_sound_play_bgm [
		track: 0xD,
	]
	.string "... No,only MegaMan\n"
	.string "and I are going."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 58,
	]

	def_text_script CompText87D2C44_unk58
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "What!? You want us\n"
	.string "to sit here and just\n"
	.string "twiddle our thumbs!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 59,
	]

	def_text_script CompText87D2C44_unk59
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Look,there's a\n"
	.string "Cybeast inside of\n"
	.string "MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If those two\n"
	.string "Cybeasts get close\n"
	.string "to each other,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "who knows what might\n"
	.string "happen..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I want all of\n"
	.string "you to do something\n"
	.string "for us."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 60,
	]

	def_text_script CompText87D2C44_unk60
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "You want us to do\n"
	.string "something?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 61,
	]

	def_text_script CompText87D2C44_unk61
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Yes. I want you to\n"
	.string "take people far away\n"
	.string "from Central Town,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "as far as you can!\n"
	.string "Please!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 62,
	]

	def_text_script CompText87D2C44_unk62
	ts_mugshot_show [
		mugshot: 0x4,
	]
	ts_msg_open
	.string "... I understand."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're right. If the\n"
	.string "2 Cybeasts started\n"
	.string "fighting,we would be"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "helpless. We have no\n"
	.string "choice but to let\n"
	.string "you two handle this."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Lan,please,come\n"
	.string "back in one piece."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 63,
	]

	def_text_script CompText87D2C44_unk63
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_mugshot_animation [
		animation: 0x1,
	]
	.string "... *nod*"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk64
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "You can't lose,OK!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk65
	ts_mugshot_show [
		mugshot: 0x33,
	]
	ts_msg_open
	.string "I believe in you,\n"
	.string "Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk66
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Remember,Lan. I'm\n"
	.string "the only one that's\n"
	.string "allowed to beat you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So you can't let\n"
	.string "some stupid Cybeast\n"
	.string "beat you first!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk67
	ts_mugshot_show [
		mugshot: 0x3,
	]
	ts_msg_open
	.string "I think you'll be\n"
	.string "fine! It's you,\n"
	.string "after all!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Good luck!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk68
	ts_mugshot_show [
		mugshot: 0x1,
	]
	ts_msg_open
	.string "Lan... I'll be\n"
	.string "waiting for you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 69,
	]

	def_text_script CompText87D2C44_unk69
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... I'll be back,\n"
	.string "Mayl. You can\n"
	.string "count on it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk70
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Now,how do I open\n"
	.string "this door..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 71,
	]

	def_text_script CompText87D2C44_unk71
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "This door can only\n"
	.string "be opened by Dr.Wily\n"
	.string "and Baryl..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 72,
	]

	def_text_script CompText87D2C44_unk72
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Then we've gotta\n"
	.string "find Baryl..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 73,
	]

	def_text_script CompText87D2C44_unk73
	ts_mugshot_hide
	ts_msg_open
	.string "That won't be\n"
	.string "necessary."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk74
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Baryl..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 75,
	]

	def_text_script CompText87D2C44_unk75
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "Lan Hikari..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 76,
	]

	def_text_script CompText87D2C44_unk76
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "You won't stop me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I WILL stop Dr.Wily!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 77,
	]

	def_text_script CompText87D2C44_unk77
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "... Out of my way."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 78,
	]

	def_text_script CompText87D2C44_unk78
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "No!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 79,
	]

	def_text_script CompText87D2C44_unk79
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "Dr.Wily "
	ts_wait [
		frames: 0x1E,
	]
	.string "is mine..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "... Huh!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	.string "This is my \"will\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 80,
	]

	def_text_script CompText87D2C44_unk80
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Baryl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_play_bgm [
		track: 0xE,
	]
	ts_end

	def_text_script CompText87D2C44_unk81
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "Come with me if you\n"
	.string "want,but this door\n"
	.string "is a one way road."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D2C44_unk82
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "A one way road...\n"
	.string "You mean I can't\n"
	.string "turn back..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... That's fine\n"
	.string "by me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This is the last\n"
	.string "battle,MegaMan...\n"
	.string "Let's go."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 83,
	]

	def_text_script CompText87D2C44_unk83
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Alright,Lan.\n"
	.string "Let's go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	