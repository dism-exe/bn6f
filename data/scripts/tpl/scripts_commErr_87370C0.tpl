@archive scripts_commErr_87370C0
@size 138

script 0 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 1,
			target = 2,
			target = continue
		]
}
script 1 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't use the
	Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 2 mmbn6 {
	flagSet
		flag = 5940
	"""
	I'll end the battle.
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 3 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 1
}
script 4 mmbn6 {
	mugshotShow
		mugshot = HeatMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 5,
			target = 6,
			target = continue
		]
}
script 5 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't fire up
	the Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 6 mmbn6 {
	flagSet
		flag = 5940
	"""
	I'll finish this
	fiery battle!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn6 {
	mugshotShow
		mugshot = HeatMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 5
}
script 8 mmbn6 {
	mugshotShow
		mugshot = ElecMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 9,
			target = 10,
			target = continue
		]
}
script 9 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't turn on
	the Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn6 {
	flagSet
		flag = 5940
	"""
	I'll flip the switch
	on this battle!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn6 {
	mugshotShow
		mugshot = ElecMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 9
}
script 12 mmbn6 {
	mugshotShow
		mugshot = SlashMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 13,
			target = 14,
			target = continue
		]
}
script 13 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't cut on
	the Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn6 {
	flagSet
		flag = 5940
	"""
	I'll cut this battle
	off!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn6 {
	mugshotShow
		mugshot = SlashMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 13
}
script 16 mmbn6 {
	mugshotShow
		mugshot = EraseMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 17,
			target = 18,
			target = continue
		]
}
script 17 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't use the
	Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn6 {
	flagSet
		flag = 5940
	"""
	I'll put an end to
	this battle!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn6 {
	mugshotShow
		mugshot = EraseMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 17
}
script 20 mmbn6 {
	mugshotShow
		mugshot = ChargeMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 21,
			target = 22,
			target = continue
		]
}
script 21 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't use the
	Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn6 {
	flagSet
		flag = 5940
	"""
	I'll finish the buzz
	on this battle!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn6 {
	mugshotShow
		mugshot = ChargeMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 21
}
script 24 mmbn6 {
	mugshotShow
		mugshot = SpoutMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 25,
			target = 26,
			target = continue
		]
}
script 25 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't use the
	Chip Gate here,drip!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn6 {
	flagSet
		flag = 5940
	"""
	I'll finish this
	battle,drip!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn6 {
	mugshotShow
		mugshot = SpoutMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 25
}
script 28 mmbn6 {
	mugshotShow
		mugshot = TomahawkMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 29,
			target = 30,
			target = continue
		]
}
script 29 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't use the
	Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn6 {
	flagSet
		flag = 5940
	"""
	Let's finish this
	battle!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn6 {
	mugshotShow
		mugshot = TomahawkMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 29
}
script 32 mmbn6 {
	mugshotShow
		mugshot = TenguMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 33,
			target = 34,
			target = continue
		]
}
script 33 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't use the
	Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn6 {
	flagSet
		flag = 5940
	"""
	いったん バトルを終了する
	セーブを わすれるでないぞ
	"""
	keyWait
		any = false
	end
	"""
	I'll put an end to
	this battle!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn6 {
	mugshotShow
		mugshot = TenguMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 33
}
script 36 mmbn6 {
	mugshotShow
		mugshot = GroundMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 37,
			target = 38,
			target = continue
		]
}
script 37 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't use the
	Chip Gate here,hmph!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 38 mmbn6 {
	flagSet
		flag = 5940
	"""
	I'll end this battle
	once and for all!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 39 mmbn6 {
	mugshotShow
		mugshot = GroundMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 37
}
script 40 mmbn6 {
	mugshotShow
		mugshot = DustMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 41,
			target = 42,
			target = continue
		]
}
script 41 mmbn6 {
	flagSet
		flag = 5939
	"""
	こんどのバトルは ゲートが
	つか[B]ね[B]ぜ 気をつけな
	バトルオペレーションセットイン!
	"""
	keyWait
		any = false
	end
	"""
	You can't use the
	Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 42 mmbn6 {
	flagSet
		flag = 5940
	"""
	I'll finish this
	battle off!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 43 mmbn6 {
	mugshotShow
		mugshot = DustMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 41
}
script 44 mmbn6 {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!\n"
	option
		brackets = 0
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	" Try again\n"
	option
		brackets = 0
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	" End the battle"
	select
		default = 0
		BSeparate = false
		disableB = false
		clear = true
		[
			target = 45,
			target = 46,
			target = continue
		]
}
script 45 mmbn6 {
	flagSet
		flag = 5939
	"""
	You can't use the
	the Chip Gate here!
	Battle routine,set!
	"""
	keyWait
		any = false
	end
}
script 46 mmbn6 {
	flagSet
		flag = 5940
	"""
	This is my battle,
	and it ends now!!
	Make sure to save!
	"""
	keyWait
		any = false
	end
}
script 47 mmbn6 {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	flagClear
		flag = 5939
	flagClear
		flag = 5940
	"Communication error!"
	keyWait
		any = false
	jump
		target = 45
}
script 92 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Communication error!
	Battle cancelled.
	"""
	keyWait
		any = false
	end
	"4"
}
script 93 mmbn6 {
	mugshotShow
		mugshot = HeatMan
	msgOpen
	"""
	Communication error!
	Battle cancelled!
	"""
	keyWait
		any = false
	end
	"4"
}
script 94 mmbn6 {
	mugshotShow
		mugshot = ElecMan
	msgOpen
	"""
	Communication error!
	Battle cancelled.
	"""
	keyWait
		any = false
	end
	"4"
}
script 95 mmbn6 {
	mugshotShow
		mugshot = SlashMan
	msgOpen
	"""
	Communication error!
	Battle cancelled!
	"""
	keyWait
		any = false
	end
	"4"
}
script 96 mmbn6 {
	mugshotShow
		mugshot = EraseMan
	msgOpen
	"""
	Communication error!
	Battle cancelled!
	"""
	keyWait
		any = false
	end
	"4"
}
script 97 mmbn6 {
	mugshotShow
		mugshot = ChargeMan
	msgOpen
	"""
	Communication error!
	Battle cancelled!
	"""
	keyWait
		any = false
	end
	"4"
}
script 98 mmbn6 {
	mugshotShow
		mugshot = SpoutMan
	msgOpen
	"""
	Communication error!
	Battle cancelled!
	"""
	keyWait
		any = false
	end
	"4"
}
script 99 mmbn6 {
	mugshotShow
		mugshot = TomahawkMan
	msgOpen
	"""
	Communication error!
	Battle cancelled.
	"""
	keyWait
		any = false
	end
	"4"
}
script 100 mmbn6 {
	mugshotShow
		mugshot = TenguMan
	msgOpen
	"""
	Communication error!
	Battle cancelled!
	"""
	keyWait
		any = false
	end
	"4"
}
script 101 mmbn6 {
	mugshotShow
		mugshot = GroundMan
	msgOpen
	"""
	Communication error!
	Battle cancelled!
	"""
	keyWait
		any = false
	end
	"4"
}
script 102 mmbn6 {
	mugshotShow
		mugshot = DustMan
	msgOpen
	"""
	Communication error!
	Battle cancelled!
	"""
	keyWait
		any = false
	end
	"4"
}
script 103 mmbn6 {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	"""
	Communication error!
	Battle cancelled!
	"""
	keyWait
		any = false
	end
	"4"
}
script 115 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 116 mmbn6 {
	mugshotShow
		mugshot = HeatMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 117 mmbn6 {
	mugshotShow
		mugshot = ElecMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 118 mmbn6 {
	mugshotShow
		mugshot = SlashMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 119 mmbn6 {
	mugshotShow
		mugshot = EraseMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 120 mmbn6 {
	mugshotShow
		mugshot = ChargeMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 121 mmbn6 {
	mugshotShow
		mugshot = SpoutMan
	msgOpen
	"""
	The Chip Gate
	didn't work,drip!
	"""
	keyWait
		any = false
	end
	"4"
}
script 122 mmbn6 {
	mugshotShow
		mugshot = TomahawkMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 123 mmbn6 {
	mugshotShow
		mugshot = TenguMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 124 mmbn6 {
	mugshotShow
		mugshot = GroundMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 125 mmbn6 {
	mugshotShow
		mugshot = DustMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
script 126 mmbn6 {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	"""
	The Chip Gate
	didn't work!
	"""
	keyWait
		any = false
	end
	"4"
}
