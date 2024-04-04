# OpenWrt CMCC RAX3000M 

### 特色:

+ 與OpenWrt官方最新源碼同步.
+ 原生極致純淨，固件默認只包含基礎上網功能，可自行配置第三方軟件庫。
+ 默認Argon主題，簡結美觀。
+ Github Actions全自動編譯，自動上傳Release

後台入口 10.0.0.1 。
默認空密碼。

第一次使用請採用全新安裝，避免出現升級失敗以及其他一些可能的Bug.

雲編譯需要 [在此](https://github.com/settings/tokens) 創建個 token ，然後在 Settings->Secrets 中添加個名字為 REPO_TOKEN 的 Secret ，填入 token 值，否者無法觸發編譯

本固件不含其他插件，請自行在 系統->軟件 中安裝。
