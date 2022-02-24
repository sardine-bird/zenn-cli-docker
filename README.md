# zenn-cli-docker
zenn-cliをdocker上で使うためのリポジトリ
## 初期設定
1. [GitHubリポジトリでZennのコンテンツを管理する](https://zenn.dev/zenn/articles/connect-to-github)に従って、GitHubリポジトリとZennを連携する。
1. このリポジトリをcloneして、Zennと連携させるリポジトリの名前(<zenn-repo>)に変更する
```
$ git clone git@github.com:sardine-bird/zenn-cli-docker.git
$ mv zenn-cli-docker <zenn-repo>
$ cd <zenn-repo>
```
1.  <zenn-repo>をGitHubと連携させる
```
$ git init
$ git add .
$ git commit -m 'first commit'
$ git branch -M main
$ git remote add origin git@github.com:<user>/<zenn-repo>.git
```
1. zenn-cliの初期設定 参考：[Zenn CLIをインストールする](https://zenn.dev/zenn/articles/install-zenn-cli)
```
$ docker-compose run web npx zenn init
```
1. GitHubにpushする
```
$ git push -u origin main
```

## 使い方
[Zenn CLIで記事・本を管理する方法](https://zenn.dev/zenn/articles/zenn-cli-guide)を参考にすること。

## previewページの見方
1. `$ docker-compose up`
1. http://localhost:8000 にアクセス
