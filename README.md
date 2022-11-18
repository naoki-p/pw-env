## [docker][playwright][Ubuntu 22.04.1 jammy]
## docker playwright環境にchromeとedgeを入れてみた

* ベースはこちら
- https://zenn.dev/dozo/articles/1404999919d5cc

* apt-keyを使っていたのを手直し
- trusted.gpg.d も使わない
- https://blog.n-z.jp/blog/2022-07-04-apt-key-signed-by.html

* dockerオプションはこちらを参考
- https://playwright.dev/docs/docker
