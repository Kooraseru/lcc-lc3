<div align="center">
  <h1>LCC-LC3 C コンパイラ</h1>
  <table><tr><td><a href="#setup">セットアップ</a></td><td><a href="#source">ソース</a></td><td><a href="#install">インストール</a></td><td><a href="#contributors">貢献者</a></td><td><a href="#license">ライセンス</a></td></tr></table>
  <table><tr><td><a href="../README.md">English</a></td></tr></table>
</div>

LCC-LC3 は LCC C コンパイラ用の LC-3 ターゲットです。Unix シェルでソースからビルドします。Windows では WSL を使用してください。

<a id="setup"></a>
## 1. Unix をセットアップする

### Windows

PowerShell から Windows Subsystem for Linux を使って Ubuntu をインストールします。

```powershell
wsl --install -d Ubuntu
```

インストール後に Ubuntu を開き、残りのコマンドは PowerShell ではなく Ubuntu のターミナルで実行してください。

### macOS

Apple のコマンドラインツールをインストールします。

```sh
xcode-select --install
```

### Linux

使用するディストリビューション向けに C コンパイラ、Make、ダウンロードツールをインストールします。

#### Ubuntu or Debian

```sh
sudo apt update
sudo apt install build-essential curl git
```

#### Fedora

```sh
sudo dnf install gcc make curl git
```

#### Arch Linux

```sh
sudo pacman -S --needed base-devel curl git
```

<a id="source"></a>
## 2. ソースを取得する

ソースのチェックアウトはホームディレクトリ内に置くことを推奨します。Git で `~/src` にクローンします。

```sh
mkdir -p ~/src
cd ~/src
git clone https://github.com/Kooraseru/lcc-lc3.git
cd lcc-lc3
```

別の場所を使用する場合は、`~/src` を任意のディレクトリに置き換えてください。

```sh
mkdir -p /path/to/source
git clone https://github.com/Kooraseru/lcc-lc3.git /path/to/source/lcc-lc3
cd /path/to/source/lcc-lc3
```

または、curl で現在の `main` ソースアーカイブを `~/src` にダウンロードします。

```sh
mkdir -p ~/src
cd ~/src
curl -L https://github.com/Kooraseru/lcc-lc3/archive/refs/heads/main.tar.gz -o lcc-lc3.tar.gz
tar -xzf lcc-lc3.tar.gz
cd lcc-lc3-main
```

curl の保存先を指定する場合は、そこでダウンロードして展開してください。

```sh
mkdir -p /path/to/source
cd /path/to/source
curl -L https://github.com/Kooraseru/lcc-lc3/archive/refs/heads/main.tar.gz -o lcc-lc3.tar.gz
tar -xzf lcc-lc3.tar.gz
cd lcc-lc3-main
```

`curl | sh` インストーラやビルド済みリリースパッケージはありません。curl コマンドは Git がクローンするものと同じソースをダウンロードします。

<a id="install"></a>
## 3. 設定、ビルド、インストール

LCC-LC3 は `configure` と `make` を使用します。CMake プロジェクトではありません。

```sh
cd code
sh ./configure
make
make install
```

`make install` はコンパイラツールを `~/.lc3` に配置します。現在のシェルセッションの PATH にこのディレクトリを追加します。

```sh
export PATH="$HOME/.lc3:$PATH"
```

コンパイラが生成する LC-3 コードをアセンブルするには、[LC-3 Tools project](https://github.com/haplesshero13/lc3tools) から互換性のある `lc3as` 実行ファイルを `~/.lc3/lc3as` にインストールしてください。

<a id="contributors"></a>
## 貢献者

貢献を歓迎します。Issue やプルリクエストを作成する前に、貢献ガイドを確認してください。 [貢献ガイド](../../CONTRIBUTING.md).

## 謝辞

LCC は Christopher W. Fraser と David R. Hanson によって作成されました。LC-3 ターゲットは Ajay Ladsaria と Sanjay J. Patel が開発し、その後 Sean Smith、Stephen Canon、Avery Yen が作業を行いました。このフォークは Kooraseru が保守しています。

<a id="license"></a>
## ライセンス

原文の LCC 条項と帰属情報については、ライセンスの概要を参照してください。 [LICENSE](../../LICENSE).
