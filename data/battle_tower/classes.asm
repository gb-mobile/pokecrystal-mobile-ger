BattleTowerTrainers:
; The trainer class is not used in Crystal 1.0 due to a bug.
; Instead, the sixth character in the trainer's name is used.
; See BattleTowerText in engine/events/battle_tower/trainer_text.asm.
	table_width (NAME_LENGTH - 1) + 1, BattleTowerTrainers
	; name, class
	db "BACH@@@@@@", FISHER
	db "HEMM@@@@@@", POKEMANIAC
	db "DOLAN@@@@@", GUITARIST
	db "NOBEL@@@@@", SCIENTIST
	db "PEPPEL@@@@", POKEFANM
	db "WEICKERT@@", LASS
	db "BADER@@@@@", YOUNGSTER
	db "WEBER@@@@@", HIKER
	db "OBERLE@@@@", TEACHER
	db "ENDRES@@@@", POKEFANM
	db "HILD@@@@@@", KIMONO_GIRL
	db "WIND@@@@@@", BOARDER
	db "FREUND@@@@", PICNICKER
	db "HAMMER@@@@", BIKER
	db "KUHN@@@@@@", JUGGLER
	db "JÄGER@@@@@", POKEFANF
	db "BERG@@@@@@", FIREBREATHER
	db "FUß@@@@@@@", SWIMMERF
	db "GROß@@@@@@", SWIMMERM
	db "MAIER@@@@@", SKIER
	db "BECKER@@@@", CAMPER
	assert_table_length BATTLETOWER_NUM_UNIQUE_MON
; The following can only be sampled in Crystal 1.1.
	db "THOMSEN@@@", GENTLEMAN
	db "KRACK@@@@@", BEAUTY
	db "REMMERT@@@", SUPER_NERD
	db "BESER@@@@@", BLACKBELT_T
	db "BAUER@@@@@", COOLTRAINERF
	db "HOFMANN@@@", OFFICER
	db "DROLL@@@@@", PSYCHIC_T
	db "WINTER@@@@", POKEFANM
	db "SOMMER@@@@", SCIENTIST
	db "MÜTZEL@@@@", BEAUTY
	db "RIEDEL@@@@", CAMPER
	db "BROSE@@@@@", BIRD_KEEPER
	db "MANN@@@@@@", PICNICKER
	db "FRISCH@@@@", POKEMANIAC
	db "AUER@@@@@@", SCIENTIST
	db "SCHÄFERS@@", SAGE
	db "FEY@@@@@@@", SCHOOLBOY
	db "ISSING@@@@", FISHER
	db "JÄHN@@@@@@", KIMONO_GIRL
	db "BECK@@@@@@", PSYCHIC_T
	db "FISCHER@@@", CAMPER
	db "KRICKSER@@", LASS
	db "PROST@@@@@", GENTLEMAN
	db "BRÖSEL@@@@", POKEFANF
	db "GEIS@@@@@@", POKEMANIAC
	db "MICHEL@@@@", YOUNGSTER
	db "SCHMITT@@@", TEACHER
	db "KLEIN@@@@@", SAILOR
	db "REUß@@@@@@", BLACKBELT_T
	db "REICHERT@@", SUPER_NERD
	db "LIETZ@@@@@", COOLTRAINERF
	db "BLEI@@@@@@", SWIMMERM
	db "KÖNIG@@@@@", BIRD_KEEPER
	db "SPORN@@@@@", BOARDER
	db "ZAHN@@@@@@", LASS
	db "FASEL@@@@@", OFFICER
	db "DIETZ@@@@@", SKIER
	db "HINZ@@@@@@", SCHOOLBOY
	db "GRÜN@@@@@@", SWIMMERF
	db "BURGER@@@@", YOUNGSTER
	db "MEY@@@@@@@", GUITARIST
	db "ZEH@@@@@@@", BUG_CATCHER
	db "KUNZ@@@@@@", BUG_CATCHER
	db "STUMPF@@@@", POKEMANIAC
	db "FRIED@@@@@", SCIENTIST
	db "SCHNEIDER@", SUPER_NERD
	db "BAAR@@@@@@", SWIMMERF
	db "KIEFER@@@@", BIKER
	db "WINZ@@@@@@", FIREBREATHER
	assert_table_length BATTLETOWER_NUM_UNIQUE_TRAINERS
