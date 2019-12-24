	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C0764::
	.word 0x98C00

	text_archive_start

	def_text_script CompText87C0764_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You're not getting\n"
	.string "away!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87C0764_unk1
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Tsk,I thought you\n"
	.string "were just a kid. I\n"
	.string "underestimated you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87C0764_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Now turn yourself\n"
	.string "in to the police!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87C0764_unk3
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Sorry,but..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk4
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "no way am I going\n"
	.string "to the Punishment\n"
	.string "Room!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87C0764_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Waaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "M-My eyes!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87C0764_unk6
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Phwahahaha,\n"
	.string "see you later,\n"
	.string "you little pest!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_control_lock
	ts_sound_play00 track=0x114
	ts_sound_play00 track=0x11C
	.string "Urk! H-Hey!\n"
	.string "Let me go!!"
	ts_wait frames=0x28
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk7
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Let go!\n"
	.string "Darn this stupid...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87C0764_unk8
	ts_mugshot_hide
	ts_msg_open
	.string "I will not let go!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I will not let you\n"
	.string "take the Force\n"
	.string "Program!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87C0764_unk9
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Curses...\n"
	.string "This stinks..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Awesome job,\n"
	.string "Mr.Weather!!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87C0764_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Oh,that's right,I\n"
	.string "have to find Iris!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk12
	ts_mugshot_hide
	ts_msg_open
	.string "Screen Divide!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_store_timer [
		timer: 0x0,
		value: 0xA,
	]
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0xB,
	]
	ts_sound_play_bgm track=0x63
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xC3
	.string "*booooom!!*"
	ts_wait frames=0x5D
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "W-What's that!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mr.Weather!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87C0764_unk14
	ts_mugshot_hide
	ts_msg_open
	.string "Lan Hikari..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Somehow,it seems\n"
	.string "we are fated to\n"
	.string "fight one another..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87C0764_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "T-That voice...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "C-Colonel!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x1C
	.string "The CopyBot\n"
	.string "MegaMan used\n"
	.string "earlier...you...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87C0764_unk17
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "Vic... Take the\n"
	.string "Force Program and\n"
	.string "return to base..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87C0764_unk18
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "... Darn it!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87C0764_unk20
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "Don't look away when\n"
	.string "your opponent is in\n"
	.string "front of you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Colonel!\n"
	.string "Stop this!\n"
	.string "Please wake up!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87C0764_unk22
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "You're the one that\n"
	.string "needs to wake up,\n"
	.string "Lan Hikari..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The one you see now,\n"
	.string "is the real me..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We,the WWW,will\n"
	.string "delete anyone that\n"
	.string "stands in our way!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk23
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "This time,\n"
	.string "I won't miss..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=24

	def_text_script CompText87C0764_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "N-Noooo!!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87C0764_unk25
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Huh? I don't\n"
	.string "feel any pain..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk26
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I-Iris..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87C0764_unk27
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87C0764_unk28
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "W-Why...are you...\n"
	.string "here...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=29

	def_text_script CompText87C0764_unk29
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=30

	def_text_script CompText87C0764_unk30
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "... Argh!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk31
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "Your life has been\n"
	.string "spared for now,\n"
	.string "Lan Hikari..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But the next time we\n"
	.string "meet,you won't be so\n"
	.string "lucky."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk32
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Looks like I owe\n"
	.string "you another one,\n"
	.string "Iris."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Heh,I can't tell\n"
	.string "who's trying to\n"
	.string "save who anymore!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=33

	def_text_script CompText87C0764_unk33
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "... I'm glad you're\n"
	.string "not hurt,Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=34

	def_text_script CompText87C0764_unk34
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Iris...\n"
	.string "Just who are you...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk35
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Waaaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=36

	def_text_script CompText87C0764_unk36
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! Sky Town's\n"
	.string "falling!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=37

	def_text_script CompText87C0764_unk37
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "With the main energy\n"
	.string "source created by\n"
	.string "the Force Program,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and Sky Town's main\n"
	.string "computer,Mr.Weather,\n"
	.string "gone..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk38
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We're gonna end up\n"
	.string "as fish food at the\n"
	.string "bottom of the ocean!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=39

	def_text_script CompText87C0764_unk39
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk40
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x1B2
	.string "*click,clack,click*"
	ts_wait frames=0x71
	.string "\n"
	ts_sound_play00 track=0x1B2
	.string "*tap,tap,click...*"
	ts_wait frames=0x71
	ts_clear_msg
	ts_sound_play00 track=0x151
	.string "... *beep!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SKY TOWN BACKUP\n"
	.string "ELECTRICITY SYSTEM\n"
	.string "ONLINE."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk41
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-Wow...\n"
	.string "You fixed it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Iris... What..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=42

	def_text_script CompText87C0764_unk42
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=43

	def_text_script CompText87C0764_unk43
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xD3
	.string "*click!!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk44
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sounds like the\n"
	.string "elevator's working\n"
	.string "again!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Ah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C0764_unk45
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "She disappeared\n"
	.string "again...\n"
	.string "*sigh*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Iris...\n"
	.string "Who are you...?"
	ts_key_wait any=0x0
	ts_end

	