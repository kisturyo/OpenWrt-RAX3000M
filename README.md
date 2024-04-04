# OpenWrt CMCC RAX3000M 

### 特色:

+ 與OpenWrt官方最新源碼同步。
+ 採用kiddin9的構建補丁，生成通用性更強的bin韌體。
+ 原生極致純淨，固件默認只包含基礎上網功能，可自行配置第三方軟件庫。
+ 默認Argon主題，簡結美觀。
+ Github Actions全自動編譯，自動上傳Release。

後台入口 10.0.0.1 。
默認空密碼。

雲編譯需要 [在此](https://github.com/settings/tokens) 創建個 token ，然後在 Settings->Secrets 中添加個名字為 REPO_TOKEN 的 Secret ，填入 token 值，否者無法觸發編譯

本固件不含其他插件，請自行配置軟件源在 系統->軟件 中安裝。
