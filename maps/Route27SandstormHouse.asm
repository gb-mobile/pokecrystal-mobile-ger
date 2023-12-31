	object_const_def
	const ROUTE27SANDSTORMHOUSE_GRANNY

Route27SandstormHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SandstormHouseWoman:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM37_SANDSTORM
	iftrue .AlreadyGotItem
	special GetFirstPokemonHappiness
	writetext SandstormHouseWomanText1
	promptbutton
	ifgreater 150 - 1, .Loyal
	sjump .Disloyal

.Loyal:
	writetext SandstormHouseWomanLoyalText
	promptbutton
	verbosegiveitem TM_SANDSTORM
	iffalse .Done
	setevent EVENT_GOT_TM37_SANDSTORM
.AlreadyGotItem:
	writetext SandstormHouseSandstormDescription
	waitbutton
.Done:
	closetext
	end

.Disloyal:
	writetext SandstormHouseWomanDisloyalText
	waitbutton
	closetext
	end

SandstormHouseBookshelf:
	jumpstd MagazineBookshelfScript

SandstormHouseWomanText1:
	text "Wohin möchtest du"
	line "mit den #MON?"

	para "Zur #MON LIGA?"

	para "Sind deine #MON"
	line "loyal genug, um"
	cont "zu gewinnen?"

	para "Ich werde das"
	line "überprüfen…"
	done

SandstormHouseWomanLoyalText:
	text "Ah! Deine #MON"
	line "vertrauen dir"
	cont "blind."

	para "Es ist schön, ei-"
	line "nen guten Trainer"
	cont "zu treffen."

	para "Hier, ein Geschenk"
	line "für deine Reise."
	done

SandstormHouseSandstormDescription:
	text "TM37 enthält"
	line "SANDSTURM."

	para "Diese Attacke fügt"
	line "beiden Kämpfern"
	cont "Schaden zu."

	para "Nur erfahrene"
	line "Trainer sollten"
	cont "sie einsetzen."

	para "Setze sie ein,"
	line "wenn du dich"
	cont "traust! Viel"
	cont "Glück!"
	done

SandstormHouseWomanDisloyalText:
	text "Falls es dir nicht"
	line "mehr Vertrauen"

	para "schenkt, wird es"
	line "schwer für dich."

	para "Vertrauen ist der"
	line "Bund zwischen"
	cont "#MON und den"
	cont "Trainern."
	done

Route27SandstormHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_27, 1
	warp_event  3,  7, ROUTE_27, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, SandstormHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, SandstormHouseBookshelf

	def_object_events
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SandstormHouseWoman, -1
