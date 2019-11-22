	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B9D10::
	.word 0x82300

	text_archive_start

	def_text_script CompText87B9D10_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "Prosecutor Ito..."
	ts_text_speed [
		delay: 0x2,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B9D10_unk1
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "... Ah,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Did you find some-\n"
	.string "thing to support\n"
	.string "your Dad's alibi?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you didn't,it\n"
	.string "may turn pretty bad\n"
	.string "for him soon."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87B9D10_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I've found some..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's a recording\n"
	.string "of the real\n"
	.string "culprit..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87B9D10_unk3
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87B9D10_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... What's wrong,\n"
	.string "Mr.Prosecutor?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B9D10_unk5
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... I see.\n"
	.string "I've been unmasked."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_jump [
		target: 6,
	]

	def_text_script CompText87B9D10_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "So,you really did..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87B9D10_unk7
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "... Yes."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The story about\n"
	.string "your Dad hacking was\n"
	.string "a lie... But you"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "didn't fall for it,\n"
	.string "not even the trap in\n"
	.string "the security camera."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And come to think\n"
	.string "of it,why did the\n"
	.string "Punishment Robots"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "suddenly stop that\n"
	.string "time?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've underestimated\n"
	.string "you..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Or was it that my\n"
	.string "traps were too\n"
	.string "easy...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87B9D10_unk8
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "So all this time,\n"
	.string "it was you..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Prosecutor Ito,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "why did you frame\n"
	.string "my Dad!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87B9D10_unk9
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "Because I have my\n"
	.string "orders......"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B9D10_unk10
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "People in high\n"
	.string "places make easy\n"
	.string "targets."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The same with your\n"
	.string "Navi... Your Navi's\n"
	.string "skills,your Dad and"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "his brains -- you\n"
	.string "stand to lose a lot\n"
	.string "when you have a lot."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And you're going to\n"
	.string "lose it all to \"us\",\n"
	.string "the \"organization\"."
	ts_sound_play_bgm [
		track: 0x2,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87B9D10_unk11
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "The \"organization\"!?\n"
	.string "You can't...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87B9D10_unk12
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "Yes,the organization\n"
	.string "that has caused you\n"
	.string "so much trouble."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87B9D10_unk13
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "N-No..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Then why did you\n"
	.string "sentence Captain\n"
	.string "Blackbeard...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87B9D10_unk14
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "Ah,that was because\n"
	.string "he failed in\n"
	.string "his mission."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Failure is not\n"
	.string "tolerated in our\n"
	.string "organization."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Anyone who fails,is\n"
	.string "removed. That is\n"
	.string "our rule."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87B9D10_unk15
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Then,you really..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87B9D10_unk16
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "... Yes,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "my role in the\n"
	.string "organization is to"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"remove nuisances\n"
	.string " to us in a lawful\n"
	.string " way\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's why I can not\n"
	.string "take back your Dad's\n"
	.string "sentence!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... I think our chat\n"
	.string "is over."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Do it,JudgeTree!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If we do this,we\n"
	.string "won't have to hide\n"
	.string "anymore!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Pronounce that every\n"
	.string "person in Cyber City\n"
	.string "is guilty,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and then convict this\n"
	.string "troublesome boy as"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "a felon!"
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B9D10_unk17
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x7,
	]
	ts_wait [
		frames: 0xA,
	]
	ts_sound_play00 [
		track: 0x1A0,
	]
	.string "*crack! "
	ts_wait [
		frames: 0x20,
	]
	ts_sound_play00 [
		track: 0x1A0,
	]
	.string "crack!*"
	ts_wait [
		frames: 0x20,
	]
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x8,
	]
	ts_clear_msg
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_jump [
		target: 18,
	]

	def_text_script CompText87B9D10_unk18
	ts_mugshot_hide
	ts_msg_open
	.string "I WILL NOW PASS\n"
	.string "JUDGMENT."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait [
		frames: 0x14,
	]
	.string "."
	ts_wait [
		frames: 0x14,
	]
	.string "."
	ts_wait [
		frames: 0x14,
	]
	.string " I PRONOUNCE\n"
	.string "EVERYONE,\n"
	.string "GUILTY!"
	ts_sound_play_bgm [
		track: 0xC,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87B9D10_unk19
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,it's too\n"
	.string "dangerous! You'll\n"
	.string "get zapped!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "For now,I think..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "we'd better get\n"
	.string "outta here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script CompText87B9D10_unk20
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Yipes! You're right!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	