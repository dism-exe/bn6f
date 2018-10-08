@archive scripts_86C580C
@size 65

script 0 mmbn6 {
	msgOpen
	"""
	It's a Chip Trader.
	Insert 3 BtlChips?
	
	"""
	positionOptionHorizontal
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 5,
			target = continue
		]
	startChipTrader
		amount = 3
		jumpIfNotEnoughChips = 1
	keyWait
		any = false
	end
}
script 1 mmbn6 {
	checkFlag
		flag = 5917
		jumpIfTrue = continue
		jumpIfFalse = 20
	checkNaviAll
		jumpIfMegaMan = continue
		jumpIfHeatMan = 20
		jumpIfElecMan = 20
		jumpIfSlashMan = 20
		jumpIfEraseMan = 20
		jumpIfChargeMan = 20
		jumpIfSpoutMan = 20
		jumpIfTomahawkMan = 20
		jumpIfTenguMan = 20
		jumpIfGroundMan = 20
		jumpIfDustMan = 20
		jumpIfProtoMan = continue
	msgOpen
	mugshotShow
		mugshot = MegaMan
	"""
	Lan,you have less
	than 3 chips in your
	Pack.
	"""
	keyWait
		any = false
	end
}
script 2 mmbn6 {
	checkFlag
		flag = 5917
		jumpIfTrue = continue
		jumpIfFalse = 30
	checkNaviAll
		jumpIfMegaMan = continue
		jumpIfHeatMan = 30
		jumpIfElecMan = 30
		jumpIfSlashMan = 30
		jumpIfEraseMan = 30
		jumpIfChargeMan = 30
		jumpIfSpoutMan = 30
		jumpIfTomahawkMan = 30
		jumpIfTenguMan = 30
		jumpIfGroundMan = 30
		jumpIfDustMan = 30
		jumpIfProtoMan = continue
	msgOpen
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan
	"Add these 3?\n"
	positionOptionFromCenter
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = continue,
			target = continue
		]
	end
}
script 3 mmbn6 {
	msgOpen
	"OK!\n"
	soundDisableTextSFX
	soundPlay
		track = 213
	"Click-k-k-k...THUNK!"
	soundEnableTextSFX
	keyWait
		any = false
	clearMsg
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 245
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	Lan got:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	flagClear
		flag = 245
	wait
		frames = 6
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 5,
			target = continue
		]
	startChipTrader
		amount = 3
		jumpIfNotEnoughChips = 4
	keyWait
		any = false
	end
}
script 4 mmbn6 {
	checkFlag
		flag = 5917
		jumpIfTrue = continue
		jumpIfFalse = 21
	checkNaviAll
		jumpIfMegaMan = continue
		jumpIfHeatMan = 21
		jumpIfElecMan = 21
		jumpIfSlashMan = 21
		jumpIfEraseMan = 21
		jumpIfChargeMan = 21
		jumpIfSpoutMan = 21
		jumpIfTomahawkMan = 21
		jumpIfTenguMan = 21
		jumpIfGroundMan = 21
		jumpIfDustMan = 21
		jumpIfProtoMan = continue
	clearMsg
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Too bad,Lan. You
	have less than 3
	chips in your Pack!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn6s {
	end
}
script 6 mmbn6 {
	msgOpen
	"""
	Chip Trader Special!
	Insert 10 BtlChips?
	
	"""
	positionOptionHorizontal
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 11,
			target = continue
		]
	startChipTrader
		amount = 10
		jumpIfNotEnoughChips = 7
	keyWait
		any = false
	end
}
script 7 mmbn6 {
	checkFlag
		flag = 5917
		jumpIfTrue = continue
		jumpIfFalse = 22
	checkNaviAll
		jumpIfMegaMan = continue
		jumpIfHeatMan = 22
		jumpIfElecMan = 22
		jumpIfSlashMan = 22
		jumpIfEraseMan = 22
		jumpIfChargeMan = 22
		jumpIfSpoutMan = 22
		jumpIfTomahawkMan = 22
		jumpIfTenguMan = 22
		jumpIfGroundMan = 22
		jumpIfDustMan = 22
		jumpIfProtoMan = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,you have less
	than 10 chips
	in your Pack.
	"""
	keyWait
		any = false
	end
}
script 8 mmbn6 {
	checkFlag
		flag = 5917
		jumpIfTrue = continue
		jumpIfFalse = 31
	checkNaviAll
		jumpIfMegaMan = continue
		jumpIfHeatMan = 31
		jumpIfElecMan = 31
		jumpIfSlashMan = 31
		jumpIfEraseMan = 31
		jumpIfChargeMan = 31
		jumpIfSpoutMan = 31
		jumpIfTomahawkMan = 31
		jumpIfTenguMan = 31
		jumpIfGroundMan = 31
		jumpIfDustMan = 31
		jumpIfProtoMan = continue
	msgOpen
	textSpeed
		delay = 0
	mugshotShow
		mugshot = MegaMan
	"Add these 10?\n"
	positionOptionFromCenter
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = continue,
			target = continue
		]
	msgCloseQuick
	end
}
script 9 mmbn6 {
	msgOpen
	"OK!\n"
	soundDisableTextSFX
	soundPlay
		track = 213
	"Click-k-k-k...THUNK!"
	soundEnableTextSFX
	keyWait
		any = false
	clearMsg
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 245
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	Lan got:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	flagClear
		flag = 245
	wait
		frames = 6
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	"Try again?\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 11,
			target = continue
		]
	startChipTrader
		amount = 10
		jumpIfNotEnoughChips = 10
	keyWait
		any = false
	end
}
script 10 mmbn6 {
	checkFlag
		flag = 5917
		jumpIfTrue = continue
		jumpIfFalse = 23
	checkNaviAll
		jumpIfMegaMan = continue
		jumpIfHeatMan = 23
		jumpIfElecMan = 23
		jumpIfSlashMan = 23
		jumpIfEraseMan = 23
		jumpIfChargeMan = 23
		jumpIfSpoutMan = 23
		jumpIfTomahawkMan = 23
		jumpIfTenguMan = 23
		jumpIfGroundMan = 23
		jumpIfDustMan = 23
		jumpIfProtoMan = continue
	clearMsg
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Too bad,Lan. You
	have less than 10
	chips in your Pack!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn6s {
	end
}
script 12 mmbn6 {
	msgOpen
	"A BugFrag Trader."
	keyWait
		any = false
	clearMsg
	"Insert 10 BugFrags?\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 17,
			target = continue
		]
	startBugFragTrader
		jumpIfNotEnoughBugFrags = 13
	waitHold
}
script 13 mmbn6 {
	checkFlag
		flag = 5917
		jumpIfTrue = continue
		jumpIfFalse = 24
	checkNaviAll
		jumpIfMegaMan = continue
		jumpIfHeatMan = 24
		jumpIfElecMan = 24
		jumpIfSlashMan = 24
		jumpIfEraseMan = 24
		jumpIfChargeMan = 24
		jumpIfSpoutMan = 24
		jumpIfTomahawkMan = 24
		jumpIfTenguMan = 24
		jumpIfGroundMan = 24
		jumpIfDustMan = 24
		jumpIfProtoMan = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,you don't have
	10 BugFrags!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn6 {
	msgOpenQuick
	printCurrentNavi
	"""
	 handed over
	the BugFrags!
	"""
	keyWait
		any = false
	clearMsg
	flagSet
		flag = 246
	wait
		frames = 60
	"""
	With a powerful howl
	the ChipData is
	revealed!
	"""
	keyWait
		any = false
	clearMsg
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 245
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	printCurrentNavi
	"""
	 got:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	flagClear
		flag = 245
	wait
		frames = 6
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	"Try again?\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 17,
			target = continue
		]
	startBugFragTrader
		jumpIfNotEnoughBugFrags = 16
	waitHold
}
script 16 mmbn6 {
	checkFlag
		flag = 5917
		jumpIfTrue = continue
		jumpIfFalse = 25
	checkNaviAll
		jumpIfMegaMan = continue
		jumpIfHeatMan = 25
		jumpIfElecMan = 25
		jumpIfSlashMan = 25
		jumpIfEraseMan = 25
		jumpIfChargeMan = 25
		jumpIfSpoutMan = 25
		jumpIfTomahawkMan = 25
		jumpIfTenguMan = 25
		jumpIfGroundMan = 25
		jumpIfDustMan = 25
		jumpIfProtoMan = continue
	clearMsg
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Too bad,Lan. We
	don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	msgClose
	waitHold
}
script 17 mmbn6 {
	msgClose
	waitHold
}
script 20 mmbn6 {
	msgOpen
	"""
	You don't have 3
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 21 mmbn6 {
	clearMsg
	msgOpen
	"""
	You don't have 3
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 22 mmbn6 {
	msgOpen
	"""
	You don't have 10
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 23 mmbn6 {
	clearMsg
	msgOpen
	"""
	You don't have 10
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 24 mmbn6 {
	msgOpen
	"""
	We don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn6 {
	clearMsg
	msgOpen
	"""
	We don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn6 {
	msgOpen
	"""
	You don't have 3
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 27 mmbn6 {
	msgOpen
	"""
	You don't have 3
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 28 mmbn6 {
	msgOpen
	"""
	We don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn6 {
	clearMsg
	msgOpen
	"""
	We don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	waitHold
}
script 30 mmbn6 {
	msgOpen
	textSpeed
		delay = 0
	"Add these 3?\n"
	positionOptionFromCenter
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = continue,
			target = continue
		]
	msgCloseQuick
	end
}
script 31 mmbn6 {
	msgOpen
	textSpeed
		delay = 0
	"Add these 10?\n"
	positionOptionFromCenter
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = continue,
			target = continue
		]
	msgCloseQuick
	end
}
script 32 mmbn6 {
	msgOpen
	textSpeed
		delay = 0
	"Add these 3?\n"
	positionOptionFromCenter
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = continue,
			target = continue
		]
	msgCloseQuick
	end
}
script 33 mmbn6 {
	msgOpen
	textSpeed
		delay = 0
	"Add these 3?\n"
	positionOptionFromCenter
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = continue,
			target = continue
		]
	msgCloseQuick
	end
}
script 34 mmbn6 {
	clearMsg
	msgOpen
	"""
	Too bad,Lan. You
	don't have 3
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 35 mmbn6 {
	clearMsg
	msgOpen
	"""
	Too bad,Lan. You
	don't have 3
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 36 mmbn6 {
	msgOpen
	textSpeed
		delay = 0
	"Add these 10?\n"
	positionOptionFromCenter
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = continue,
			target = continue
		]
	msgCloseQuick
	end
}
script 37 mmbn6 {
	msgOpen
	textSpeed
		delay = 0
	"Add these 10?\n"
	positionOptionFromCenter
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = continue,
			target = continue
		]
	msgCloseQuick
	end
}
script 38 mmbn6 {
	clearMsg
	msgOpen
	"""
	Too bad,Lan. You
	don't have 10
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 39 mmbn6 {
	clearMsg
	msgOpen
	"""
	Too bad,Lan. You
	don't have 10
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 40 mmbn6 {
	msgOpen
	"""
	We don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn6 {
	msgOpen
	"""
	We don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	end
}
script 42 mmbn6 {
	clearMsg
	msgOpen
	"""
	We don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	waitHold
}
script 43 mmbn6 {
	clearMsg
	msgOpen
	"""
	We don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	waitHold
}
script 44 mmbn6 {
	msgOpen
	"""
	You don't have 10
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 45 mmbn6 {
	msgOpen
	"""
	You don't have 10
	chips in your Pack.
	"""
	keyWait
		any = false
	end
}
script 50 mmbn6 {
	mugshotShow
		mugshot = Otenko
	msgOpen
	"I am Otenko."
	keyWait
		any = false
	clearMsg
	"""
	I have traveled the
	depths of space.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I have arrived to
	exchange your
	Crossover Points!
	"""
	keyWait
		any = false
	clearMsg
	"Add your points?\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
}
script 51 mmbn6 {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Otenko
	msgOpenQuick
	"Add your points?\n"
	space
		count = 8
	option
		brackets = 1
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	menuOptionCrossoverTrader
		char = 0
	"1"
	spacePx
		count = 1
	menuOptionCrossoverTrader
		char = 1
	"""
	0
	(U/D:Change points)
	"""
	flagSet
		flag = 5925
	menuSelectCrossoverTrader
	waitHold
}
script 52 mmbn6 {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Otenko
	msgOpenQuick
	"""
	Very well.
	Come again!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The Sun will rise
	tomorrow!
	"""
	keyWait
		any = false
	waitHold
}
script 53 mmbn6 {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Otenko
	msgOpenQuick
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" points?\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 54 mmbn6 {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Otenko
	msgOpenQuick
	"""
	You don't have
	enough points!
	"""
	keyWait
		any = false
	end
}
script 55 mmbn6 {
	msgOpenQuick
	flagSet
		flag = 246
	controlLock
	wait
		frames = 60
	controlUnlock
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 245
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	printCurrentNavi
	"""
	 got:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	flagClear
		flag = 245
	wait
		frames = 6
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	mugshotShow
		mugshot = Otenko
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 56 mmbn6 {
	msgOpenQuick
	controlLock
	wait
		frames = 60
	controlUnlock
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	printCurrentNavi
	"""
	 got:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	mugshotShow
		mugshot = Otenko
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 57 mmbn6 {
	msgOpenQuick
	controlLock
	wait
		frames = 60
	controlUnlock
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	printCurrentNavi
	" got:\n"
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	" BugFrags!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	mugshotShow
		mugshot = Otenko
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 58 mmbn6 {
	msgOpenQuick
	flagSet
		flag = 246
	controlLock
	wait
		frames = 60
	controlUnlock
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 245
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	ProtoMan got:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	flagClear
		flag = 245
	wait
		frames = 6
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	mugshotShow
		mugshot = Otenko
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 59 mmbn6 {
	msgOpenQuick
	controlLock
	wait
		frames = 60
	controlUnlock
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	"""
	ProtoMan got a
	SubChip:
	"
	"""
	printItem
		buffer = 1
		item = 0
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	mugshotShow
		mugshot = Otenko
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 60 mmbn6 {
	msgOpenQuick
	controlLock
	wait
		frames = 60
	controlUnlock
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	"ProtoMan got:\n"
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	" BugFrags!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	mugshotShow
		mugshot = Otenko
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 61 mmbn6 {
	msgOpenQuick
	flagSet
		flag = 246
	controlLock
	wait
		frames = 60
	controlUnlock
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 245
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	Colonel got:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	flagClear
		flag = 245
	wait
		frames = 6
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	mugshotShow
		mugshot = Otenko
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 62 mmbn6 {
	msgOpenQuick
	controlLock
	wait
		frames = 60
	controlUnlock
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	"""
	Colonel got a
	SubChip:
	"
	"""
	printItem
		buffer = 1
		item = 0
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	mugshotShow
		mugshot = Otenko
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 63 mmbn6 {
	msgOpenQuick
	controlLock
	wait
		frames = 60
	controlUnlock
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	"Colonel got:\n"
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	" BugFrags!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	mugshotShow
		mugshot = Otenko
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = 0
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = false
		[
			target = continue,
			target = 52,
			target = continue
		]
	waitHold
}
script 64 mmbn6s {
	" "
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
	"  "
}
