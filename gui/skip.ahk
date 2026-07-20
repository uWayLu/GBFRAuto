#Requires AutoHotkey v2.0

class PanelSkip {

    mission := 1
    back := 1
    check := 1

    Attach(g, x, y) {
        g.Add("GroupBox", "Section w120 h85 x" x " y" y, Lang["grpSkip"])

        g.Add("CheckBox", "Checked xs9 ys20", Lang["chkMission"])
            .OnEvent("Click", (cb, *) => (this.mission := cb.Value))

        g.Add("CheckBox", "Checked", Lang["chkBack"])
            .OnEvent("Click", (cb, *) => (this.back := cb.Value))

        g.Add("CheckBox", "Checked", Lang["chkCheck"])
            .OnEvent("Click", (cb, *) => (this.check := cb.Value))
    }
}
