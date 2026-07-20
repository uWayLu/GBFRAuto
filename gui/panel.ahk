#Requires AutoHotkey v2.0

#Include window.ahk
#Include skip.ahk
#Include autokill.ahk
#Include sell.ahk
#Include hotkey.ahk

class Panel {

    root := GUI(, "GBFRAuto")

    window := PanelWindow()
    skip := PanelSkip()
    autokill := PanelAutoKill()
    sell := PanelSell()
    hotkey := PanelHotkey()

    bar := unset

    __New(game_name) {
        this.root.SetFont("s10")
        this.window.Attach(this.root, 10, 9, game_name)
        this.skip.Attach(this.root, 140, 90)
        this.sell.Attach(this.root, 140, 180)
        this.hotkey.Attach(this.root, 10, 90)
        this.autokill.Attach(this.root, 270, 9)

        this.bar := this.root.Add("StatusBar", , "繼續挑戰 0 | 獎勵確認 0 | 任務結算 0")
    }

    Show() {
        this.root.Show()
    }

    OnClose(on_close) {
        this.root.OnEvent("Close", on_close)
    }

    OnGameNameChange(cb) {
        this.window.OnChange(cb)
    }

    UpdateWindowInfo(w, h) {
        this.window.UpdateWindowInfo(w, h)
    }

    UpdateReport(check := 0, back := 0, mission := 0) {
        this.UpdateBar("繼續挑戰 " check " | 獎勵確認 " back " | 任務結算 " mission)
    }

    UpdateBar(info) {
        this.bar.SetText(info)
    }
}