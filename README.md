# GBFRAuto

Granblue Fantasy: Relink 自動接關腳本，基於 AutoHotkey v2。

## 來源

- 原始專案：[TWT233/GBFRAuto](https://github.com/TWT233/GBFRAuto)
- 繁體中文圖片資源：[tommy060398/GBFRAuto](https://github.com/tommy060398/GBFRAuto)
- 2.0 版本像素偏移調整：[NGA 論壇](https://bbs.nga.cn/read.php?tid=39388763&page=18#pid875587611)

## 本 Fork 新增

### 多語系支援

一個語系編譯成一個獨立 exe，GUI 與辨識圖片均對應語系。

| 語系 | 檔案 |
|------|------|
| 繁體中文 | `GBFRAuto_zh-hant.exe` |
| 簡體中文 | `GBFRAuto_zh-hans.exe` |
| 日本語 | `GBFRAuto_jp.exe` |

### 新增語系

1. 建立 `lang/{lang}.ahk`（複製 `lang/zh-hant.ahk` 修改文字）
2. 建立 `assets_{lang}/`（放入對應語言的辨識圖片 + `icon.ico`）
3. 執行 `.\scripts\build.ps1 -Lang {lang}`

### 編譯

需要 AutoHotkey v2.0.26+ 及 Ahk2Exe compiler。

```powershell
.\scripts\build.ps1 -Lang zh-hant
```

## 備註

- 原版對應 1.3 舊有功能（如自動買賣等）未經詳細測試，可能無法使用
- 提交本 fork 的主要目的是自動接關，以應付海量的 MSP 需求
