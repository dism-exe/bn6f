TextScriptBattleTutFullSynchro::
	text_archive_start

	def_text_script TextScriptBattleTutFullSynchro_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,do you remember\n"
	.string "Counter and Full\n"
	.string "Synchro?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScriptBattleTutFullSynchro_unk1_id

	def_text_script TextScriptBattleTutFullSynchro_unk1
	ts_mugshot_show mugshot=0x0
	.string "Huh? What's that?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScriptBattleTutFullSynchro_unk2_id

	def_text_script TextScriptBattleTutFullSynchro_unk2
	ts_mugshot_show mugshot=0x37
	.string "Well... Take a look\n"
	.string "at the \"Emotion\n"
	.string "Window\" here."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleTutFullSynchro_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It shows my\n"
	.string "emotional state."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you operate me\n"
	.string "well so our souls\n"
	.string "connect,I'll go"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Full Synchro,a\n"
	.string "state where you and\n"
	.string "I act as one."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This improves my\n"
	.string "focus."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleTutFullSynchro_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "How do I operate\n"
	.string "you well?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScriptBattleTutFullSynchro_unk5_id

	def_text_script TextScriptBattleTutFullSynchro_unk5
	ts_mugshot_show mugshot=0x37
	.string "You have to\n"
	.string "Counter!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScriptBattleTutFullSynchro_unk6_id

	def_text_script TextScriptBattleTutFullSynchro_unk6
	ts_mugshot_show mugshot=0x0
	.string "Counter? Uhhh...\n"
	.string "What was that again?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScriptBattleTutFullSynchro_unk7_id

	def_text_script TextScriptBattleTutFullSynchro_unk7
	ts_mugshot_show mugshot=0x37
	.string "Counter means\n"
	.string "using a chip attack"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "right when the enemy\n"
	.string "is about to attack.\n"
	.string "They'll be caught"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "off guard and won't\n"
	.string "be able to move\n"
	.string "for a bit."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScriptBattleTutFullSynchro_unk8_id

	def_text_script TextScriptBattleTutFullSynchro_unk8
	ts_mugshot_show mugshot=0x0
	.string "I get it.\n"
	.string "It surprises them!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScriptBattleTutFullSynchro_unk9_id

	def_text_script TextScriptBattleTutFullSynchro_unk9
	ts_mugshot_show mugshot=0x37
	.string "During Full Synchro,\n"
	.string "the next chip's\n"
	.string "Attack power is x2,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and the enemy will\n"
	.string "flash to show when\n"
	.string "you should Counter."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thus,you can use\n"
	.string "x2 Atk chips again\n"
	.string "if you score"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "multiple Counters."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK... This is a good\n"
	.string "opportunity to get\n"
	.string "some practice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just this once,\n"
	.string "we'll start in\n"
	.string "Full Synchro."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Use a chip attack\n"
	.string "when the enemy\n"
	.string "flashes!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleTutFullSynchro_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Well done,Lan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You don't need to\n"
	.string "Counter every time,\n"
	.string "but if you can"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "master it,I think\n"
	.string "you'll find it very\n"
	.string "effective."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Still,it won't work\n"
	.string "with chips that stop\n"
	.string "time like AreaGrab."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Remember to use the\n"
	.string "right chip at the\n"
	.string "right time."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScriptBattleTutFullSynchro_unk11_id

	def_text_script TextScriptBattleTutFullSynchro_unk11
	ts_mugshot_show mugshot=0x0
	.string "Roger! I'm gonna\n"
	.string "master Counter\n"
	.string "and Full Synchro!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleTutFullSynchro_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,you have to bust\n"
	.string "the viruses. This is\n"
	.string "no time to run!"
	ts_key_wait any=0x0
	.string "@ "

	.balign 4, 0
