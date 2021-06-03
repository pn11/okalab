# Okalab Website

<https://pn11.github.io/okalab>

## ディレクトリ構成

```
_config.yml # Jekyll の設定。編集したら Jekyll を立ち上げ直す必要がある
_site # Jekyll が生成した静的なページがここに入る
_data # データを入れておく
_includes # ヘッダーやフッターなど共通部分を編集する
_layouts # ページのレイアウトを決める
_posts # 新しいお知らせはここに追加する
_sass # ページのデザインを決める
```

ページ内容を記述する Markdown はこの `README.md` と同じディレクトリに置く (Jekyll には場所を指定するオプションがあるが GitHub Pages では使えない)。

## 開発用情報

### Theme

[minima](https://github.com/jekyll/minima) テーマを編集する。テーマを編集するには、元のファイルを `_includes`, `_layouts` にコピーして編集すれば上書きされる ([Overriding theme defaults](https://jekyllrb.com/docs/themes/#overriding-theme-defaults))。

### Build

Ruby が入っていれば大体これで動く。  
`--future` をつけないと未来の日付のポストはビルドされない。

```sh
gem install bundler jekyll
bundle install
bundle exec jekyll serve  --future --draft
```

#### Dockerでやる場合

##### Intel/AMD 64

Mac (Homebrew) の Ruby が 3.0 になって動かなくなったので Docker 作った。

```bash
bash _serve-docker-amd64.sh
```

##### ARMv8

使っている Chromebook (Lenovo Ideapad Duet) で Ruby の環境を作るのが難しかったので Docker でやった。

```bash
bash _serve-docker-armv8.sh
```
