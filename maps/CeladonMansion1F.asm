	object_const_def
	const CELADONMANSION1F_GRANNY
	const CELADONMANSION1F_GROWLITHE1
	const CELADONMANSION1F_CLEFAIRY
	const CELADONMANSION1F_GROWLITHE2

CeladonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionManager:
	jumptextfaceplayer CeladonMansionManagerText

CeladonMansion1FMeowth:
	opentext
	writetext CeladonMansion1FMeowthText
	cry MEOWTH
	waitbutton
	closetext
	end

CeladonMansion1FClefairy:
	opentext
	writetext CeladonMansion1FClefairyText
	cry CLEFAIRY
	waitbutton
	closetext
	end

CeladonMansion1FNidoranF:
	opentext
	writetext CeladonMansion1FNidoranFText
	cry NIDORAN_F
	waitbutton
	closetext
	end

CeladonMansionManagersSuiteSign:
	jumptext CeladonMansionManagersSuiteSignText

CeladonMansion1FBookshelf:
	jumpstd PictureBookshelfScript

CeladonMansionManagerText:
	text "Meine süßen #-"
	line "MON sind meine"

	para "Begleiter. Mit"
	line "ihnen fühle ich"
	cont "mich nie allein."

	para "MAUZI bringt sogar"
	line "Geld nach Hause."
	done

CeladonMansion1FMeowthText:
	text "MAUZI: Mauz!"
	done

CeladonMansion1FClefairyText:
	text "PIEPI: Piep piep"
	line "piep!"
	done

CeladonMansion1FNidoranFText:
	text "NIDORAN: Nido"
	line "nido!"
	done

CeladonMansionManagersSuiteSignText:
	text "PRISMANIA-VILLA"
	line "SUITE des MANAGERs"
	done

CeladonMansion1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  9, CELADON_CITY, 2
	warp_event  7,  9, CELADON_CITY, 2
	warp_event  3,  0, CELADON_CITY, 3
	warp_event  0,  0, CELADON_MANSION_2F, 1
	warp_event  7,  0, CELADON_MANSION_2F, 4

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_UP, CeladonMansionManagersSuiteSign
	bg_event  0,  3, BGEVENT_READ, CeladonMansion1FBookshelf
	bg_event  2,  3, BGEVENT_READ, CeladonMansion1FBookshelf

	def_object_events
	object_event  1,  5, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansionManager, -1
	object_event  2,  6, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion1FMeowth, -1
	object_event  3,  4, SPRITE_CLEFAIRY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion1FClefairy, -1
	object_event  4,  4, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonMansion1FNidoranF, -1