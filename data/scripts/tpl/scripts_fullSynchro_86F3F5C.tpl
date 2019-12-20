@archive TextScriptBattleTutFullSynchro
@size 13

script 0 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,do you remember
	Counter and Full
	Synchro?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 1
}
script 1 mmbn6 {
	mugshotShow
		mugshot = Lan
	"Huh? What's that?"
	keyWait
		any = false
	clearMsg
	jump
		target = 2
}
script 2 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	"""
	Well... Take a look
	at the "Emotion
	Window" here.
	"""
	keyWait
		any = false
	end
}
script 3 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It shows my
	emotional state.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you operate me
	well so our souls
	connect,I'll go
	"""
	keyWait
		any = false
	clearMsg
	"""
	Full Synchro,a
	state where you and
	I act as one.
	"""
	keyWait
		any = false
	clearMsg
	"""
	This improves my
	focus.
	"""
	keyWait
		any = false
	end
}
script 4 mmbn6 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	How do I operate
	you well?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 5
}
script 5 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	"""
	You have to
	Counter!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 6
}
script 6 mmbn6 {
	mugshotShow
		mugshot = Lan
	"""
	Counter? Uhhh...
	What was that again?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 7 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	"""
	Counter means
	using a chip attack
	"""
	keyWait
		any = false
	clearMsg
	"""
	right when the enemy
	is about to attack.
	They'll be caught
	"""
	keyWait
		any = false
	clearMsg
	"""
	off guard and won't
	be able to move
	for a bit.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 8
}
script 8 mmbn6 {
	mugshotShow
		mugshot = Lan
	"""
	I get it.
	It surprises them!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 9
}
script 9 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	"""
	During Full Synchro,
	the next chip's
	Attack power is x2,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and the enemy will
	flash to show when
	you should Counter.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Thus,you can use
	x2 Atk chips again
	if you score
	"""
	keyWait
		any = false
	clearMsg
	"multiple Counters."
	keyWait
		any = false
	clearMsg
	"""
	OK... This is a good
	opportunity to get
	some practice.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Just this once,
	we'll start in
	Full Synchro.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Use a chip attack
	when the enemy
	flashes!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"Well done,Lan."
	keyWait
		any = false
	clearMsg
	"""
	You don't need to
	Counter every time,
	but if you can
	"""
	keyWait
		any = false
	clearMsg
	"""
	master it,I think
	you'll find it very
	effective.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Still,it won't work
	with chips that stop
	time like AreaGrab.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Remember to use the
	right chip at the
	right time.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 11
}
script 11 mmbn6 {
	mugshotShow
		mugshot = Lan
	"""
	Roger! I'm gonna
	master Counter
	and Full Synchro!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn6 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,you have to bust
	the viruses. This is
	no time to run!
	"""
	keyWait
		any = false
	end
	" "
}
