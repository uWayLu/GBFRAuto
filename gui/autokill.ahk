#Requires AutoHotkey v2.0

class PanelAutoKill {

    all := 0
    aaa := 0
    seya := 0
    guard := 0
    aim := 0
    forward := 0
    skills := 0
    r := 0
    g := 0
    chain := 0

    Attach(g, x, y) {
        g.Add("GroupBox", "Section w120 h220 x" x " y" y, "自動戰鬥相關")

        g.Add("CheckBox", "xs9 ys20", "總開關")
            .OnEvent("Click", (cb, *) => (this.all := cb.Value))

        g.Add("CheckBox", , "連發普攻")
            .OnEvent("Click", (cb, *) => (this.aaa := cb.Value))

        g.Add("CheckBox", , "連發重攻")
            .OnEvent("Click", (cb, *) => (this.seya := cb.Value))

        g.Add("CheckBox", , "按住格擋")
            .OnEvent("Click", (cb, *) => (this.guard := cb.Value))

        g.Add("CheckBox", , "按住索敵")
            .OnEvent("Click", (cb, *) => (this.aim := cb.Value))

        g.Add("CheckBox", , "按住前進")
            .OnEvent("Click", (cb, *) => (this.forward := cb.Value))

        g.Add("CheckBox", , "自動使用技能")
            .OnEvent("Click", (cb, *) => (this.skills := cb.Value))

        g.Add("CheckBox", , "自動連鎖")
            .OnEvent("Click", (cb, *) => (this.r := cb.Value))

        g.Add("CheckBox", , "自動開奧")
            .OnEvent("Click", (cb, *) => (this.g := cb.Value))

        g.Add("CheckBox", , "自動接奧")
            .OnEvent("Click", (cb, *) => (this.chain := cb.Value))
    }
}
