TextScriptBattleTutFullSynchro::
	text_archive_start

	text_script FullSynchroTutorialText_DoYouRemember
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,do you remember\n"
	.string "Counter and Full\n"
	.string "Synchro?"
	ts_key_wait 0
	ts_clear_msg
	ts_jump FullSynchroTutorialText_HuhWhatsThat_id

	text_script FullSynchroTutorialText_HuhWhatsThat
	ts_mugshot_show 0
	.string "Huh? What's that?"
	ts_key_wait 0
	ts_clear_msg
	ts_jump FullSynchroTutorialText_LookAtEmotionWindow_id

	text_script FullSynchroTutorialText_LookAtEmotionWindow
	ts_mugshot_show 0x37
	.string "Well... Take a look\n"
	.string "at the \"Emotion\n"
	.string "Window\" here."
	ts_key_wait 0
	ts_end

	text_script FullSynchroTutorialText_FullSynchroExplanation
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It shows my\n"
	.string "emotional state."
	ts_key_wait 0
	ts_clear_msg
	.string "If you operate me\n"
	.string "well so our souls\n"
	.string "connect,I'll go"
	ts_key_wait 0
	ts_clear_msg
	.string "Full Synchro,a\n"
	.string "state where you and\n"
	.string "I act as one."
	ts_key_wait 0
	ts_clear_msg
	.string "This improves my\n"
	.string "focus."
	ts_key_wait 0
	ts_end

	text_script FullSynchroTutorialText_HowDoIOperateYouWell
	ts_mugshot_show 0
	ts_msg_open
	.string "How do I operate\n"
	.string "you well?"
	ts_key_wait 0
	ts_clear_msg
	ts_jump FullSynchroTutorialText_YouHaveToCounter_id

	text_script FullSynchroTutorialText_YouHaveToCounter
	ts_mugshot_show 0x37
	.string "You have to\n"
	.string "Counter!"
	ts_key_wait 0
	ts_clear_msg
	ts_jump FullSynchroTutorialText_CounterUhhhWhat_id

	text_script FullSynchroTutorialText_CounterUhhhWhat
	ts_mugshot_show 0
	.string "Counter? Uhhh...\n"
	.string "What was that again?"
	ts_key_wait 0
	ts_clear_msg
	ts_jump FullSynchroTutorialText_CounterMeans_id

	text_script FullSynchroTutorialText_CounterMeans
	ts_mugshot_show 0x37
	.string "Counter means\n"
	.string "using a chip attack"
	ts_key_wait 0
	ts_clear_msg
	.string "right when the enemy\n"
	.string "is about to attack.\n"
	.string "They'll be caught"
	ts_key_wait 0
	ts_clear_msg
	.string "off guard and won't\n"
	.string "be able to move\n"
	.string "for a bit."
	ts_key_wait 0
	ts_clear_msg
	ts_jump FullSynchroTutorialText_IGetItSurprises_id

	text_script FullSynchroTutorialText_IGetItSurprises
	ts_mugshot_show 0
	.string "I get it.\n"
	.string "It surprises them!"
	ts_key_wait 0
	ts_clear_msg
	ts_jump FullSynchroTutorialText_DuringFullSynchro_id

	text_script FullSynchroTutorialText_DuringFullSynchro
	ts_mugshot_show 0x37
	.string "During Full Synchro,\n"
	.string "the next chip's\n"
	.string "Attack power is x2,"
	ts_key_wait 0
	ts_clear_msg
	.string "and the enemy will\n"
	.string "flash to show when\n"
	.string "you should Counter."
	ts_key_wait 0
	ts_clear_msg
	.string "Thus,you can use\n"
	.string "x2 Atk chips again\n"
	.string "if you score"
	ts_key_wait 0
	ts_clear_msg
	.string "multiple Counters."
	ts_key_wait 0
	ts_clear_msg
	.string "OK... This is a good\n"
	.string "opportunity to get\n"
	.string "some practice."
	ts_key_wait 0
	ts_clear_msg
	.string "Just this once,\n"
	.string "we'll start in\n"
	.string "Full Synchro."
	ts_key_wait 0
	ts_clear_msg
	.string "Use a chip attack\n"
	.string "when the enemy\n"
	.string "flashes!"
	ts_key_wait 0
	ts_end

	text_script FullSynchroTutorialText_WellDoneLan
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Well done,Lan."
	ts_key_wait 0
	ts_clear_msg
	.string "You don't need to\n"
	.string "Counter every time,\n"
	.string "but if you can"
	ts_key_wait 0
	ts_clear_msg
	.string "master it,I think\n"
	.string "you'll find it very\n"
	.string "effective."
	ts_key_wait 0
	ts_clear_msg
	.string "Still,it won't work\n"
	.string "with chips that stop\n"
	.string "time like AreaGrab."
	ts_key_wait 0
	ts_clear_msg
	.string "Remember to use the\n"
	.string "right chip at the\n"
	.string "right time."
	ts_key_wait 0
	ts_clear_msg
	ts_jump FullSynchroTutorialText_RogerGonnaMasterCounterFullSynchro_id

	text_script FullSynchroTutorialText_RogerGonnaMasterCounterFullSynchro
	ts_mugshot_show 0
	.string "Roger! I'm gonna\n"
	.string "master Counter\n"
	.string "and Full Synchro!"
	ts_key_wait 0
	ts_end

	text_script FullSynchroTutorialText_BustVirusesNoTimeToRun
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you have to bust\n"
	.string "the viruses. This is\n"
	.string "no time to run!"
	ts_key_wait 0
	ts_end

	.balign 4, 0
