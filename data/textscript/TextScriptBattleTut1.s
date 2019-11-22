TextScriptBattleTut1::
	text_archive_start

	def_text_script TextScriptBattleTut1_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,\n"
	.string "let's try some\n"
	.string "virus busting!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Operate away!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script TextScriptBattleTut1_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Leave it to me.\n"
	.string "Let's go,MegaMan!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Umm... To battle\n"
	.string "viruses..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...first I've gotta\n"
	.string "send Chip Data to\n"
	.string "MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can select\n"
	.string "BattleChips in\n"
	.string "this Custom Window."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Here are the chips\n"
	.string "I can select. Hmm...\n"
	.string "Any good ones?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The chips in the\n"
	.string "folder I've equipped\n"
	.string "are shown here."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I see the currently\n"
	.string "highlighted Chip's\n"
	.string "Data here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "This is its Attack."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk5
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I'm ready now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Now this is crucial.\n"
	.string "Here is the virus's\n"
	.string "HP or hit points."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "HP shows how much\n"
	.string "damage it can take.\n"
	.string "Gotta remember that!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script TextScriptBattleTut1_unk7
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Got it,Lan? You\n"
	.string "can only send data\n"
	.string "for 1 chip per turn,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "unless it is\n"
	.string "data from the\n"
	.string "same type of chip."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We have 2 Cannons,so\n"
	.string "let's go with them!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk8
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "That's a no-brainer!\n"
	.string "I got it down!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The A Button selects\n"
	.string "the chip to send."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The R Button shows\n"
	.string "the chip's info."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And the L Button\n"
	.string "is for escaping."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But this is no time\n"
	.string "to run away!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'd better send Chip\n"
	.string "Data to MegaMan now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk9
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "There are 2 Cannons,\n"
	.string "so I can select 1\n"
	.string "more!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can't pass up a\n"
	.string "chance like this!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk10
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,you don't have\n"
	.string "to cancel that last\n"
	.string "move,do you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk11
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,\n"
	.string "send 1 more Cannon!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We can delete the\n"
	.string "viruses in a flash!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk12
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan! You haven't\n"
	.string "selected any chips!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can fight with my\n"
	.string "MegaBuster alone,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but some Chip Data\n"
	.string "would be a big help!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Got any good chips?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk13
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,you have to bust\n"
	.string "the viruses. This is\n"
	.string "no time to run!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk14
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Now that I've\n"
	.string "selected Chip Data,\n"
	.string "I just select OK!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Here we go,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk15
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "The chips you've\n"
	.string "selected are fine!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hurry up and send\n"
	.string "the data!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk16
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "MegaMan,I sent the\n"
	.string "Chip Data! Time to\n"
	.string "start virus busting!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk17
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,\n"
	.string "operate away!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can move up,down,\n"
	.string "left and right on\n"
	.string "the battlefield."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Fire the MegaBuster\n"
	.string "with the B Button.\n"
	.string "It's weak but fast."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hold it down longer\n"
	.string "for a ChargeShot."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Remember that,OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk18
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Here are my HP!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll be deleted if\n"
	.string "they reach 0!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk19
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "The Chip Data you\n"
	.string "just sent is shown\n"
	.string "above my head."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Use them with the\n"
	.string "A Button!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But be careful!\n"
	.string "Each one can be\n"
	.string "used only once!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If a virus remains\n"
	.string "even after you used\n"
	.string "all your chips..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script TextScriptBattleTut1_unk20
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I know,I know! The\n"
	.string "CustGauge,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk21
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "The CustGauge\n"
	.string "gradually rises\n"
	.string "over time."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Once it's full,\n"
	.string "I can access the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Custom Screen again\n"
	.string "with the L Button\n"
	.string "or the R Button."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I got the battle\n"
	.string "basics down pat!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But enough already.\n"
	.string "Let's bust a virus!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk22
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Come on,Lan! Let's\n"
	.string "select a Cannon!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Cancel with the B\n"
	.string "Button and reselect!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptBattleTut1_unk23
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Come on,Lan! Let's\n"
	.string "select a Cannon!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Cancel with the B\n"
	.string "Button and reselect!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@  "

	.balign 4, 0
