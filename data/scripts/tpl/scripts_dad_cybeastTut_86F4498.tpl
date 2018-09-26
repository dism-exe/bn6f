@archive scripts_dad_cybeastTut_86F4498
@size 40

script 0 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	MegaMan has a
	Cybeast's power
	inside of him...
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let me explain how
	you can harness
	that power.
	"""
	keyWait
		any = false
	end
}
script 1 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"The CybeastButton!"
	keyWait
		any = false
	clearMsg
	jump
		target = 2
}
script 2 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"The CybeastButton...?"
	keyWait
		any = false
	clearMsg
	jump
		target = 3
}
script 3 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	It's a button to
	release the
	CybeastPower locked
	"""
	keyWait
		any = false
	clearMsg
	"inside of MegaMan."
	keyWait
		any = false
	clearMsg
	"""
	Releasing 100% of
	the power would
	be dangerous...
	"""
	keyWait
		any = false
	clearMsg
	"""
	There is a limit
	to the power you
	can control...
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'd say it's set
	at about 50% or
	so...
	"""
	keyWait
		any = false
	clearMsg
	"""
	Pressing this button
	will cause MegaMan
	to "BeastOut".
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 4
}
script 4 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Lan,
	give it a shot!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Meg...MegaMan is
	a Cybeast now!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 6
}
script 6 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Lan,try talking
	to MegaMan.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 7 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	O...OK...
	MegaMan,are you
	alright?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 8
}
script 8 mmbn6 {
	mugshotShow
		mugshot = MegaManFalzarBeast
	msgOpen
	"""
	Yes... I'm OK.
	I'm able to focus
	but...
	"""
	keyWait
		any = false
	clearMsg
	"""
	I feel an amazing,
	raging power rising
	inside...
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 9
}
script 9 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Good,it seems like
	you are able to
	control it.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Controlling a
	Cybeast's power will
	"""
	keyWait
		any = false
	clearMsg
	"""
	completely exhaust
	your emotions.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You can only be a
	Cybeast until this
	"""
	keyWait
		any = false
	clearMsg
	"""
	EmotionCounter
	reaches 0.
	"""
	keyWait
		any = false
	end
}
script 10 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	When MegaMan is a
	Cybeast,its power
	should give all
	"""
	keyWait
		any = false
	clearMsg
	"""
	Elementless attack
	chips that do not
	dim the screen
	"""
	keyWait
		any = false
	clearMsg
	"Attack+30."
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Really!?
	No way...!!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 11
}
script 11 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Also,when using a
	chip,MegaMan will
	have a Cybeast's
	"""
	keyWait
		any = false
	clearMsg
	"""
	speed,letting him
	automatically rush
	to where the attack
	"""
	keyWait
		any = false
	clearMsg
	"""
	will hit! But only
	for chips that do
	not dim the screen.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 12
}
script 12 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	By tapping the B
	Button,you can
	use a rapid fire
	"""
	keyWait
		any = false
	clearMsg
	"FalzarBuster..."
	keyWait
		any = false
	clearMsg
	"""
	And if you power up
	a Elementless chip
	as a Cybeast,it will
	"""
	keyWait
		any = false
	clearMsg
	"""
	set off an awesome
	special move!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 13
}
script 13 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	It really feels
	wild! I wonder if
	I can really handle
	"""
	keyWait
		any = false
	clearMsg
	"all this power..."
	keyWait
		any = false
	clearMsg
	jump
		target = 14
}
script 14 mmbn6 {
	mugshotShow
		mugshot = MegaManFalzarBeast
	msgOpen
	"""
	Lan,it's alright!
	I believe in you!
	Let's give it a try!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 15
}
script 15 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	MegaMan is right.
	Lan,try operating
	him!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Cool! I busted those
	viruses in the blink
	of an eye...
	"""
	keyWait
		any = false
	clearMsg
	"""
	... MegaMan!
	Are you OK?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 17
}
script 17 mmbn6 {
	mugshotShow
		mugshot = MegaManFalzarBeast
	"""
	Yeah...
	I'm OK,Lan!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 18
}
script 18 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Whew!
	Thank goodness!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 19
}
script 19 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Incredible power...
	But you seem to
	handle it well...
	"""
	keyWait
		any = false
	clearMsg
	"""
	Each turn you spend
	as a Cybeast will
	"""
	keyWait
		any = false
	clearMsg
	"""
	decrease your
	EmotionCounter
	by 1.
	"""
	keyWait
		any = false
	clearMsg
	"""
	When that counter
	hits 0,MegaMan will
	return to normal...
	"""
	keyWait
		any = false
	clearMsg
	"Except a bit tired."
	keyWait
		any = false
	clearMsg
	"""
	Lan,when MegaMan is
	tired,don't press
	the CybeastButton.
	"""
	keyWait
		any = false
	clearMsg
	"Understand?"
	keyWait
		any = false
	clearMsg
	jump
		target = 20
}
script 20 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Got..Gotcha...
	But what happens
	if I press it...?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 21
}
script 21 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	When he's tired,he
	can't control the
	CybeastPower...
	"""
	keyWait
		any = false
	clearMsg
	"""
	If that happens...
	The CybeastPower
	will reach 100%
	"""
	keyWait
		any = false
	clearMsg
	"""
	and completely
	take over!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan would become
	completely wild...
	He'll "BeastOver"!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 22
}
script 22 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"Wild..."
	keyWait
		any = false
	clearMsg
	jump
		target = 23
}
script 23 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	After MegaMan is
	no longer wild,
	he will probably
	"""
	keyWait
		any = false
	clearMsg
	"""
	be very tired...
	Be careful not to
	"""
	keyWait
		any = false
	clearMsg
	"""
	transform at the
	wrong time.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 24
}
script 24 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Yeah...
	The CybeastButton
	and BeastOut...
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's an awesome
	power,but it can
	be dangerous to
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan. I'll use
	it as a trump card
	during battle.
	"""
	keyWait
		any = false
	end
}
script 25 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"*huff...huff...*"
	keyWait
		any = false
	clearMsg
	jump
		target = 26
}
script 26 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! You've
	transformed back!
	Are you OK!?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 27
}
script 27 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	That power seems
	to place a great
	burden on his body.
	"""
	keyWait
		any = false
	clearMsg
	"""
	When EmotionCounter
	reaches zero,MegaMan
	will transform back.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Then he'll feel
	tired like this
	for a while.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Lan,when MegaMan is
	tired,don't press
	the CybeastButton.
	"""
	keyWait
		any = false
	clearMsg
	"Understand?"
	keyWait
		any = false
	clearMsg
	jump
		target = 28
}
script 28 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Got..Gotcha...
	But what happens
	if I press it...?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 29
}
script 29 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	When he's tired,he
	can't control the
	CybeastPower...
	"""
	keyWait
		any = false
	clearMsg
	"""
	If that happens...
	The CybeastPower
	will reach 100%
	"""
	keyWait
		any = false
	clearMsg
	"""
	and completely
	take over!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan would become
	completely wild...
	He'll "BeastOver"!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 30
}
script 30 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"Wild..."
	keyWait
		any = false
	clearMsg
	jump
		target = 31
}
script 31 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	After MegaMan is
	no longer wild,
	he will probably
	"""
	keyWait
		any = false
	clearMsg
	"""
	be very tired...
	Be careful not to
	"""
	keyWait
		any = false
	clearMsg
	"""
	transform at the
	wrong time.
	"""
	keyWait
		any = false
	clearMsg
}
script 32 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Yeah!
	I think I've got
	the hang of it!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 33
}
script 33 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Transforming into a
	Cybeast gives him
	incredible power,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but it's also very
	tiring for MegaMan.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You have to be
	careful when you
	use this power.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 34
}
script 34 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"OK! Thanks,Dad!"
	keyWait
		any = false
	end
}
script 35 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Lan,don't run away.
	You should keep
	going!
	"""
	keyWait
		any = false
	end
}
script 36 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Press the
	CybeastButton,Lan.
	"""
	keyWait
		any = false
	end
}
script 37 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Press the
	CybeastButton,Lan.
	"""
	keyWait
		any = false
	end
}
script 38 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Lan! Look at
	MegaMan! You can't
	transform now!
	"""
	keyWait
		any = false
	end
}
script 39 mmbn6 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Lan,don't cancel.
	You should keep
	going!
	"""
	keyWait
		any = false
	end
}
