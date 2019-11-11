
CompText86CEE84::
	.incbin "data/textscript/compressed/CompText86CEE84.s.lz"
CompText86CF1A8::
	.incbin "data/textscript/compressed/CompText86CF1A8.s.lz"
	.balign 4, 0x00
// 086cf4ac
TextScriptFolderNames::
	text_archive_start

	// script-relative pointers exist here but are defined via macros

	def_text_script FolderNamesText_LanFldr
		.string "LanFldr$"
	def_text_script FolderNamesText_ExpoFldr
		.string "ExpoFldr$"
	def_text_script FolderNamesText_GiftFldr
		.string "GiftFldr$"
	def_text_script FolderNamesText_ExptFldr
		.string "ExptFldr$"
	def_text_script FolderNamesText_AprtcFld
		.string "AprtcFld$"
	def_text_script FolderNamesText_SoulFldr
		.string "SoulFldr$"
	def_text_script FolderNamesText_TwoDashes
		.string "--$"
	def_text_script FolderNamesText_RandFldr
		.string "RandFldr$"
	def_text_script FolderNamesText_Unk8
	def_text_script FolderNamesText_Unk9
	def_text_script FolderNamesText_Pack
		.string "Pack$"

comp_86CF508::
	.incbin "data/scripts/comp_86CF508.lz"
CompTextScriptNetworkPlyTmSave86CF618::
	.incbin "data/textscript/compressed/CompTextScriptNetworkPlyTmSave86CF618.s.lz"
// TODO NOTE (TextScript):: what is this? it's not compressed, and not valid text script.
TextScriptNetworkSave86CF730::
	.incbin "data/textscript/compressed/TextScriptNetworkSave86CF730.s.lz"
/*For debugging purposes, connect comment at any range!*/
