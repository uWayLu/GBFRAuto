#Requires AutoHotkey v2.0

#Include utils.ahk
#Include matcher/matcher.ahk
#Include lang/current.ahk
#Include gui/panel.ahk

; const

GAME_NAME := "Granblue Fantasy: Relink"

CONDS := {
    ; main match cond
    CHECK: Cond().Imgs(, "./assets/CHECK.png"),
    BACK: Cond().Imgs(, "./assets/BACK.png", "./assets/BACK2.png"),
    MISSION: Cond().Imgs(, "./assets/MISSION.png"),
    AUTOKILL: Cond().Pixels(,
        WhitePixel2K(446, 1325),
        WhitePixel2K(318, 1189),
        WhitePixel2K(446, 1061),
    ),
    CHAIN: Cond().Pixels(40,
        CHAINPixel(1274, 110),
        CHAINPixel(1156, 866),
        CHAINPixel(1599, 892),
    ),
    ; misc
    LotteryLV3: Cond().Pixels(10,
        Pixel(Color(113, 98, 78), 600, 380, 1440),
        Pixel(Color(113, 98, 78), 600, 525, 1440),
    ),
    SieroTop: Cond().Imgs(, "./assets/SieroTop.png"),
}

; dynamic global vars

M := Matcher(GAME_NAME)
P := Panel(GAME_NAME)

DATA := {
    times: {
        check: 0,
        back: 0,
        mission: 0,
        autokill: 0,
    }
}
