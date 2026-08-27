<div align="center">
  <h1>LCC-LC3 C コンパイラ</h1>
  <table><tr><td><a href="#install">インストール</a></td><td><a href="#develop">開発</a></td><td><a href="#contributors">貢献者</a></td><td><a href="#license">ライセンス</a></td></tr></table>
  <table><tr><td><a href="../../README.md">English</a></td></tr></table>
</div>

LCC-LC3 は LCC C コンパイラ用の LC-3 ターゲットです。Unix シェルでソースからビルドします。Windows では WSL を使用してください。

<a id="install"></a>
## インストール

リリースアーカイブが利用できる場合は、[Releases ページ](https://github.com/Kooraseru/lcc-lc3/releases)からダウンロードして展開し、その `src/` ディレクトリで次のコマンドを実行します。GCC、Make、Flex が必要です。Windows では WSL 内で実行してください。ユーザーごとの推奨インストール先は `~/.local/bin` です。

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

リリースアーカイブには、セットアップ README と同梱アセンブラを含むビルド可能なソースツリーが `src/` として含まれます。APT や pacman などの配布パッケージはまだ提供していません。

<a id="develop"></a>
## 開発または貢献する

開発、バグ修正、プルリクエストには、正規の `source` ブランチをクローンします。

```sh
git clone --branch source --single-branch https://github.com/Kooraseru/lcc-lc3.git
cd lcc-lc3/code
```

`main` は `source` から生成されます。`main` をフォーク、ブランチ作成元、またはプルリクエストの対象にしないでください。

<a id="contributors"></a>
## 貢献者

貢献を歓迎します。Issue やプルリクエストを作成する前に、貢献ガイドを確認してください。 [貢献ガイド](../../CONTRIBUTING.md).

## 謝辞

LCC は Christopher W. Fraser と David R. Hanson によって作成されました。LC-3 ターゲットは Ajay Ladsaria と Sanjay J. Patel が開発し、その後 Sean Smith、Stephen Canon、Avery Yen が作業を行いました。このフォークは Kooraseru が保守しています。

<a id="license"></a>
## ライセンス

原文の LCC 条項と帰属情報については、ライセンスの概要を参照してください。 [LICENSE](../../LICENSE).
