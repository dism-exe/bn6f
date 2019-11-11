	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B7CBC::
	.word 0x13E00

	text_archive_start

	def_text_script CompText87B7CBC_unk0
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Hey,Laaan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B7CBC_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey,it's Dad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B7CBC_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's up,Dad?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Were you at my\n"
	.string "school?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87B7CBC_unk3
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Ah,I had to do\n"
	.string "something there..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87B7CBC_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Oh yeah!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I went to a trial\n"
	.string "and testified today,\n"
	.string "Dad!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B7CBC_unk5
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Oh...?\n"
	.string "That's a really big\n"
	.string "responsibilty!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Why don't you tell\n"
	.string "me all about it once\n"
	.string "we get home?"
	ts_key_wait 0x0
	ts_end

	