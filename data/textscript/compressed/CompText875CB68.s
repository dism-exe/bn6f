	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875CB68::
	.word 0x3C500

	text_archive_start

	def_text_script CompText875CB68_unk0
	ts_msg_open
	.string "The two Expo\n"
	.string "mascots,CopyBoy\n"
	.string "and CopyGirl..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Not much thought\n"
	.string "went into the\n"
	.string "design,it seems..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CB68_unk1
	ts_msg_open
	.string "The Seaside Pavilion\n"
	.string "summary... It looks\n"
	.string "like their theme is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"The Harmony of Man\n"
	.string " and Water\"..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CB68_unk2
	ts_msg_open
	.string "The Green Pavilion\n"
	.string "summary... It looks\n"
	.string "like their theme is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"The Benefits of\n"
	.string " Nature to Man,and"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " the Effects of\n"
	.string " Environmental\n"
	.string " Destruction\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CB68_unk3
	ts_msg_open
	.string "The Central Pavilion\n"
	.string "summary... It looks\n"
	.string "like their theme is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Next-Gen Net\n"
	.string " Society:Man and\n"
	.string " CopyBots,Together\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CB68_unk4
	ts_msg_open
	.string "The Sky Pavilion\n"
	.string "summary... It looks\n"
	.string "like their theme is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Improving Man's\n"
	.string " Life Through\n"
	.string " Weather Control\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CB68_unk5
	ts_msg_open
	.string "The Sky Pavilion's\n"
	.string "mascots,SunnyMan and\n"
	.string "RainyMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Their design is kind\n"
	.string "of boring too..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CB68_unk6
	ts_msg_open
	.string "Once the Expo opens,\n"
	.string "you can eat foods\n"
	.string "from all over the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "world under these\n"
	.string "tents."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But no one is here\n"
	.string "right now."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875CB68_unk7
	ts_msg_open
	.string "There is a short\n"
	.string "movie about various\n"
	.string "sights at the Expo"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "playing on the\n"
	.string "monitor."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"You may jack in\" is\n"
	.string "written on the edge\n"
	.string "of the monitor."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	