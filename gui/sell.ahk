#Requires AutoHotkey v2.0


class PanelSell {

    rounds := 0

    Attach(g, x, y) {
        g.Add("GroupBox", "Section w120 h70 x" x " y" y, "自動賣因子/祝福")
        g.Add("Text", "xs9 ys25", "輪數：")
        g.Add("Edit", "w60 xs50 ys20")
        g.Add("UpDown", "Range0-10", 0)
            .OnEvent("Change", (ud, *) => (this.rounds := ud.Value))
        g.Add("Text", "xs9 ys50", "輪數=0為無限賣")
    }
}
