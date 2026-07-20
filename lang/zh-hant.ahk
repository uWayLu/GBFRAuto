#Requires AutoHotkey v2.0

; 繁體中文語系
Lang := Map(
    ; window.ahk
    "grpWindow", "遊戲視窗設置",
    "lblGameName", "窗口名：",
    "lblWindowSize", "遊戲窗口大小：",

    ; skip.ahk
    "grpSkip", "跳過結算相關",
    "chkMission", "跳過任務結算",
    "chkBack", "跳過獎勵確認",
    "chkCheck", "自動繼續挑戰",

    ; autokill.ahk
    "grpAutoKill", "自動戰鬥相關",
    "chkAll", "總開關",
    "chkAaa", "連發普攻",
    "chkSeya", "連發重攻",
    "chkGuard", "按住格擋",
    "chkAim", "按住索敵",
    "chkForward", "按住前進",
    "chkSkills", "自動使用技能",
    "chkChain", "自動連鎖",
    "chkR", "自動開奧",
    "chkG", "自動接奧",

    ; sell.ahk
    "grpSell", "自動賣因子/祝福",
    "lblRounds", "輪數：",
    "lblRoundsHint", "輪數=0為無限賣",

    ; hotkey.ahk
    "grpHotkey", "鍵位編輯",
    "lblReset", "重置腳本",
    "lblExit", "強退腳本",
    "lblSellSigils", "賣因子",
    "lblSellCharms", "賣祝福",

    ; panel.ahk
    "barInit", "繼續挑戰 0 | 獎勵確認 0 | 任務結算 0",
    "barContinue", "繼續挑戰",
    "barBack", "獎勵確認",
    "barMission", "任務結算",
)
