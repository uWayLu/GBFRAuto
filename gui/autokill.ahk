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
        g.Add("GroupBox", "Section w120 h220 x" x " y" y, Lang["grpAutoKill"])

        g.Add("CheckBox", "xs9 ys20", Lang["chkAll"])
            .OnEvent("Click", (cb, *) => (this.all := cb.Value))

        g.Add("CheckBox", , Lang["chkAaa"])
            .OnEvent("Click", (cb, *) => (this.aaa := cb.Value))

        g.Add("CheckBox", , Lang["chkSeya"])
            .OnEvent("Click", (cb, *) => (this.seya := cb.Value))

        g.Add("CheckBox", , Lang["chkGuard"])
            .OnEvent("Click", (cb, *) => (this.guard := cb.Value))

        g.Add("CheckBox", , Lang["chkAim"])
            .OnEvent("Click", (cb, *) => (this.aim := cb.Value))

        g.Add("CheckBox", , Lang["chkForward"])
            .OnEvent("Click", (cb, *) => (this.forward := cb.Value))

        g.Add("CheckBox", , Lang["chkSkills"])
            .OnEvent("Click", (cb, *) => (this.skills := cb.Value))

        g.Add("CheckBox", , Lang["chkChain"])
            .OnEvent("Click", (cb, *) => (this.r := cb.Value))

        g.Add("CheckBox", , Lang["chkR"])
            .OnEvent("Click", (cb, *) => (this.g := cb.Value))

        g.Add("CheckBox", , Lang["chkG"])
            .OnEvent("Click", (cb, *) => (this.chain := cb.Value))
    }
}
