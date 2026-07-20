param(
    [string]$Lang = "zh-hant"
)

# GBFR Auto Build Script
$root = "$PSScriptRoot\.."
$ahk2exe = "C:\Users\ywl\scoop\apps\autohotkey\current\Compiler\Ahk2Exe.exe"
$base = "C:\Users\ywl\scoop\apps\autohotkey\current\v2\AutoHotkey64.exe"
$in = "$root\main.ahk"
$icon = "$root\assets_$Lang\icon.ico"
$out = "$root\GBFRAuto_$Lang.exe"

# Copy lang assets to ./assets for compile
Copy-Item "$root\assets_$Lang\*" "$root\assets\" -Force

# Copy lang file to lang/current.ahk for #Include
$langContent = Get-Content "$root\lang\$Lang.ahk" -Raw
Set-Content "$root\lang\current.ahk" $langContent

Write-Host "Building $out (lang=$Lang) ..."
& $ahk2exe /in $in /out $out /icon $icon /base $base
Write-Host "Done."
