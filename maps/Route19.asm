	object_const_def
	const ROUTE19_SWIMMER_GIRL
	const ROUTE19_SWIMMER_GUY1
	const ROUTE19_SWIMMER_GUY2
	const ROUTE19_SWIMMER_GUY3
	const ROUTE19_FISHER1
	const ROUTE19_FISHER2

Route19_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route19ClearRocksCallback

Route19ClearRocksCallback:
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .Done
	changeblock  6,  6, $7a ; rock
	changeblock  8,  6, $7a ; rock
	changeblock 10,  6, $7a ; rock
	changeblock 12,  8, $7a ; rock
	changeblock  4,  8, $7a ; rock
	changeblock 10, 10, $7a ; rock
.Done:
	endcallback

TrainerSwimmerfDawn:
	trainer SWIMMERF, DAWN, EVENT_BEAT_SWIMMERF_DAWN, SwimmerfDawnSeenText, SwimmerfDawnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfDawnAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermHarold:
	trainer SWIMMERM, HAROLD, EVENT_BEAT_SWIMMERM_HAROLD, SwimmermHaroldSeenText, SwimmermHaroldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermHaroldAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermJerome:
	trainer SWIMMERM, JEROME, EVENT_BEAT_SWIMMERM_JEROME, SwimmermJeromeSeenText, SwimmermJeromeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermJeromeAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermTucker:
	trainer SWIMMERM, TUCKER, EVENT_BEAT_SWIMMERM_TUCKER, SwimmermTuckerSeenText, SwimmermTuckerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermTuckerAfterBattleText
	waitbutton
	closetext
	end

Route19Fisher1Script:
	faceplayer
	opentext
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .RocksCleared
	writetext Route19Fisher1Text
	waitbutton
	closetext
	end

.RocksCleared:
	writetext Route19Fisher1Text_RocksCleared
	waitbutton
	closetext
	end

Route19Fisher2Script:
	faceplayer
	opentext
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .RocksCleared
	writetext Route19Fisher2Text
	waitbutton
	closetext
	end

.RocksCleared:
	writetext Route19Fisher2Text_RocksCleared
	waitbutton
	closetext
	end

Route19Sign:
	jumptext Route19SignText

CarefulSwimmingSign:
	jumptext CarefulSwimmingSignText

SwimmermHaroldSeenText:
	text "Warst du schon"
	line "einmal nachts im"
	cont "Meer?"
	done

SwimmermHaroldBeatenText:
	text "Gulp…"
	done

SwimmermHaroldAfterBattleText:
	text "Nachts wird das"
	line "Meer schwarz. Es"

	para "scheint, als"
	line "wollte es dich"
	cont "verschlingen."
	done

SwimmermTuckerSeenText:
	text "Uff, uff…"
	line "Nur… noch… ein"

	para "kleines Stück… bis"
	line "…FUCHSANIA CITY…"
	done

SwimmermTuckerBeatenText:
	text "Ich ertrinke!"
	done

SwimmermTuckerAfterBattleText:
	text "Ich… bat meine"
	line "Freundin nach"
	cont "FUCHSANIA CITY…"
	cont "zu schwimmen…"
	done

SwimmerfDawnSeenText:
	text "Schwächlinge"
	line "widern mich an!"
	done

SwimmerfDawnBeatenText:
	text "Ich schlage dich"
	line "beim Schwimmen…"
	done

SwimmerfDawnAfterBattleText:
	text "Es ist nur eine"
	line "kurze Distanz"

	para "zwischen FUCHSANIA"
	line "CITY und den"
	cont "SEESCHAUMINSELN…"

	para "Uah, mein Freund"
	line "ist so groß und"

	para "dennoch ein"
	line "Schwächling!"
	done

SwimmermJeromeSeenText:
	text "Schwimmen? Ich bin"
	line "ein miserabler"
	cont "Schwimmer."

	para "Ich plansche"
	line "lieber in dieser"
	cont "Riesenpfütze."
	done

SwimmermJeromeBeatenText:
	text "Ich dachte, ich"
	line "könnte gewinnen."
	done

SwimmermJeromeAfterBattleText:
	text "Schwimmen mag"
	line "nicht meine Stärke"
	cont "sein, dennoch"
	cont "liebe ich das"
	cont "Meer."
	done

Route19Fisher1Text:
	text "Tut mir Leid."
	line "Die Straße ist"
	cont "aufgrund von Bau-"
	cont "arbeiten gesperrt."

	para "Wenn du zu der"
	line "ZINNOBERINSEL"

	para "möchtest, gehst"
	line "du von ALABASTIA"
	cont "gen Süden."
	done

Route19Fisher1Text_RocksCleared:
	text "Ich bin total"
	line "verschwitzt. Es"
	cont "ist Zeit zum"
	cont "Schwimmen."
	done

Route19Fisher2Text:
	text "Es würde zu lange"
	line "dauern, diesen"
	cont "Felsen zu bewegen…"
	done

Route19Fisher2Text_RocksCleared:
	text "Die Bauarbeiten"
	line "sind beendet."

	para "Jetzt kann ich"
	line "wieder angeln."
	done

Route19SignText:
	text "ROUTE 19"

	para "FUCHSANIA CITY -"
	line "SEESCHAUMINSELN"
	done

CarefulSwimmingSignText:
	text "Sei auf der Hut,"
	line "wenn du zu den"
	cont "SEESCHAUMINSELN"
	cont "schwimmst."

	para "ORDNUNGSAMT VON"
	line "FUCHSANIA CITY"
	done

Route19_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, ROUTE_19_FUCHSIA_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 11, 13, BGEVENT_READ, Route19Sign
	bg_event 11,  1, BGEVENT_READ, CarefulSwimmingSign

	def_object_events
	object_event  9, 23, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerSwimmerfDawn, -1
	object_event 13, 28, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermHarold, -1
	object_event 11, 17, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermJerome, -1
	object_event  8, 23, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerSwimmermTucker, -1
	object_event  9,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, Route19Fisher1Script, -1
	object_event 11,  5, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, Route19Fisher2Script, -1
