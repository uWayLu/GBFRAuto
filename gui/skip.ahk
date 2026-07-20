#Requires AutoHotkey v2.0

class PanelSkip {

    mission := 1
    back := 1
    check := 1

    Attach(g, x, y) {
        g.Add("GroupBox", "Section w120 h85 x" x " y" y, "跳過結算相關")

        g.Add("CheckBox", "Checked xs9 ys20", "跳過任務結算")
            .OnEvent("Click", (cb, *) => (this.mission := cb.Value))

        g.Add("CheckBox", "Checked", "跳過獎勵確認")
            .OnEvent("Click", (cb, *) => (this.back := cb.Value))

        g.Add("CheckBox", "Checked", "自動繼續挑戰")
            .OnEvent("Click", (cb, *) => (this.check := cb.Value))
    }
}