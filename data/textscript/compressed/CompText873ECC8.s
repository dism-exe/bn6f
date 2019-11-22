	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText873ECC8::
	.word 0x5A700

	text_archive_start

	def_text_script CompText873ECC8_unk0
	ts_end

	def_text_script CompText873ECC8_unk1
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Won't be\n"
	.string "pushed!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk2
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Custom\n"
	.string "Screen\n"
	.string "+1 chip"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk3
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Custom\n"
	.string "Screen\n"
	.string "+2 chips"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk4
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "MegaChip\n"
	.string "+1"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk5
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "MegaChip\n"
	.string "+2"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk6
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "GigaChip\n"
	.string "+1"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk7
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Start\n"
	.string "with\n"
	.string "Barrier"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk8
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "[B]+Left=\n"
	.string "Strong\n"
	.string "shield!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk9
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "[B]+Left=\n"
	.string "Reflect\n"
	.string "attacks!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk10
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "[B]+Left=\n"
	.string "Throw a\n"
	.string "star!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk11
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "No effct\n"
	.string "from\n"
	.string "pnl type"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk12
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Move\n"
	.string "ovr hole"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk13
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Keep 1HP\n"
	.string "even on\n"
	.string "hard hit"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk14
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "CustmScr\n"
	.string "Shuffle\n"
	.string "chp once"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk15
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "CustmScr\n"
	.string "Slected\n"
	.string "Chip=10"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk16
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "No weak\n"
	.string "enemies"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk17
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Attracts\n"
	.string "Fire\n"
	.string "Viruses!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk18
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Attracts\n"
	.string "Aqua\n"
	.string "Viruses!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk19
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Attracts\n"
	.string "Elec\n"
	.string "Viruses!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk20
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Attracts\n"
	.string "Wood\n"
	.string "Viruses!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk21
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Get more\n"
	.string "chips\n"
	.string "frm enmy"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk22
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Gn mstry\n"
	.string "data =\n"
	.string "Zennys"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk23
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Install\n"
	.string "and try\n"
	.string "L Button"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk24
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Press [L]:\n"
	.string "Recite\n"
	.string "Poem"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk25
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "[B]+Move:\n"
	.string "slide\n"
	.string "no stop"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk26
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "HP recv\n"
	.string "after\n"
	.string "battle"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk27
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Atk/Spd\n"
	.string "/Charge\n"
	.string "+3 each!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk28
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Armr,Sht\n"
	.string "Flot,Air\n"
	.string "4-pc set"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk29
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "A 2-pack\n"
	.string "Custom1&\n"
	.string "MegFldr1"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk30
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "A 2-pack\n"
	.string "Custom2&\n"
	.string "MegFldr2"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk31
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Prevents\n"
	.string "bugs"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk32
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "VS only!\n"
	.string "Tracks\n"
	.string "enemies"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk33
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "VS only!\n"
	.string "Snatches\n"
	.string "MegaChps"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk34
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "VS only!\n"
	.string "Heals\n"
	.string "low HP"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk35
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "MegaBstr\n"
	.string "Attck +1"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk36
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "MegaBstr\n"
	.string "Speed +1"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk37
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "MegaBstr\n"
	.string "Charge\n"
	.string "+1"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk38
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "MegaBstr\n"
	.string "AttckMAX"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk39
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "MegaBstr\n"
	.string "SpeedMAX"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk40
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "MegaBstr\n"
	.string "Charge\n"
	.string "MAX!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk41
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Max HP\n"
	.string "+50!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk42
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Max HP\n"
	.string "+100!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk43
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Max HP\n"
	.string "+200!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk44
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Max HP\n"
	.string "+300!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk45
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Max HP\n"
	.string "+400!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk46
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Max HP\n"
	.string "+500!"
	ts_wait_hold [
		unused: 0x0,
	]
	ts_end

	def_text_script CompText873ECC8_unk47
	.string "RUN?@"

	