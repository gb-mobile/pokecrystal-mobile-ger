	object_const_def
	const VERMILIONMART_CLERK
	const VERMILIONMART_SUPER_NERD
	const VERMILIONMART_BEAUTY

VermilionMart_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VERMILION
	closetext
	end

VermilionMartSuperNerdScript:
	jumptextfaceplayer VermilionMartSuperNerdText

VermilionMartBeautyScript:
	jumptextfaceplayer VermilionMartBeautyText

VermilionMartSuperNerdText:
	text "TEAM ROCKET ist"
	line "nicht mehr in"
	cont "KANTO."

	para "Das allein ist"
	line "schon ein Grund"
	cont "zum Feiern."
	done

VermilionMartBeautyText:
	text "Ich habe vor, in"
	line "SAFFRONIA CITY"
	cont "einkaufen zu"
	cont "gehen."
	done

VermilionMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 5
	warp_event  3,  7, VERMILION_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMartClerkScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionMartSuperNerdScript, -1
	object_event  8,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionMartBeautyScript, -1
