<div align="center">
  <h1>LCC-LC3 C コンパイラ</h1>
  <table><tr><td><a href="#install">インストール</a></td><td><a href="#source">ソース</a></td><td><a href="#contributors">貢献者</a></td><td><a href="#license">ライセンス</a></td></tr></table>
  <table><tr><td><a href="../../README.md">English</a></td></tr></table>
</div>

LCC-LC3 は LCC C コンパイラ用の LC-3 ターゲットです。Unix シェルでソースからビルドします。Windows では WSL を使用してください。

<a id="source"></a>
## LCC-LC3 を入手する

リリースアーカイブが利用できる場合は、[Releases ページ](https://github.com/Kooraseru/lcc-lc3/releases)からダウンロードして展開し、`src/README.md` に従ってください。開発、貢献、または最新ソースの取得には、正規の `source` ブランチをクローンします。

```sh
git clone --branch source --single-branch https://github.com/Kooraseru/lcc-lc3.git
cd lcc-lc3/code
```

`main` は `source` から生成されます。`main` をフォーク、ブランチ作成元、またはプルリクエストの対象にしないでください。

<a id="install"></a>
## ビルドしてインストールする

リリースアーカイブの `src/` ディレクトリ、または開発チェックアウトの `code/` ディレクトリで次のコマンドを実行します。GCC、Make、Flex が必要です。実行可能ツールのユーザーごとの推奨配置先は `~/.local/bin` です。

```sh
sh ./configure --installdir "$HOME/.local/bin"
make
make install
```

システムの PATH に `~/.local/bin` が含まれていない場合は、インストール先をシェルの PATH に追加します。

```sh
export PATH="$HOME/.local/bin:$PATH"
```

`make install` は、同梱の `lc3as` アセンブラも `~/.local/bin/lc3as` にインストールします。

リリースアーカイブには、ビルド可能なツリーを `src/` とセットアップ README として含めます。APT や pacman などの配布パッケージはまだ提供していません。

<a id="contributors"></a>
## 貢献者

貢献を歓迎します。Issue やプルリクエストを作成する前に、貢献ガイドを確認してください。 [貢献ガイド](../../CONTRIBUTING.md).

## 謝辞

LCC は Christopher W. Fraser と David R. Hanson によって作成されました。LC-3 ターゲットは Ajay Ladsaria と Sanjay J. Patel が開発し、その後 Sean Smith、Stephen Canon、Avery Yen が作業を行いました。このフォークは Kooraseru が保守しています。

<a id="license"></a>
## ライセンス

原文の LCC 条項と帰属情報については、ライセンスの概要を参照してください。 [LICENSE](../../LICENSE).
