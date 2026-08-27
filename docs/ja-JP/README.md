<div align="center">
  <h1>LCC-LC3 C コンパイラ</h1>
  <table><tr><td><a href="#setup">セットアップ</a></td><td><a href="#download">ダウンロード</a></td><td><a href="#install">インストール</a></td><td><a href="#license">ライセンス</a></td></tr></table>
  <table><tr><td><a href="../../README.md">English</a></td></tr></table>
</div>

LCC-LC3 は LCC C コンパイラ用の LC-3 ターゲットです。Unix シェルでソースからビルドします。Windows では WSL を使用してください。

<a id="setup"></a>
## 1. ビルドツールをインストールする

### Windows

PowerShell から Windows Subsystem for Linux を使って Ubuntu をインストールします。

```powershell
wsl --install -d Ubuntu
```

インストール後に Ubuntu を開き、残りのコマンドは PowerShell ではなく Ubuntu のターミナルで実行してください。

### Linux

使用するディストリビューション向けに GCC、Make、Flex をインストールします。

#### Ubuntu or Debian (including WSL Ubuntu)

```sh
sudo apt update
sudo apt install --yes build-essential flex
```

#### Fedora

```sh
sudo dnf install --assumeyes gcc make flex
```

#### Arch Linux

```sh
sudo pacman -S --needed base-devel flex
```

### macOS

Apple のコマンドラインツールをインストールしてから、Homebrew で Flex をインストールします。

```sh
xcode-select --install
brew install flex
export PATH="$(brew --prefix flex)/bin:$PATH"
```

<a id="download"></a>
## 2. リリースをダウンロードする

ソースを保存するディレクトリで次のコマンドを実行します。最新のリリースをダウンロードして展開します。

```sh
curl --fail --location --output lcc-lc3.tar.gz \
  https://github.com/Kooraseru/lcc-lc3/releases/latest/download/lcc-lc3.tar.gz
tar -xzf lcc-lc3.tar.gz
cd lcc-lc3-*/src
```

<a id="install"></a>
## 3. ビルドしてインストールする

前の手順で作成した `src/` ディレクトリで次のコマンドを実行します。ユーザーごとの推奨インストール先は `~/.local/bin` です。

```sh
sh ./configure --installdir "$HOME/.local/bin"
make
make install
```

システムの PATH に `~/.local/bin` が含まれていない場合は、インストール先をシェルの PATH に追加してから、インストールを確認します。

```sh
export PATH="$HOME/.local/bin:$PATH"
```

`make install` は同梱のアセンブラを `~/.local/bin/lc3as` にインストールします。次のコマンドは `lc3as` エラーなしでコンパイラオプションを表示するはずです。

```sh
lcc -help
```

APT や pacman などの配布パッケージはまだ提供していません。

## 謝辞

LCC は Christopher W. Fraser と David R. Hanson によって作成されました。LC-3 ターゲットは Ajay Ladsaria と Sanjay J. Patel が開発し、その後 Sean Smith、Stephen Canon、Avery Yen が作業を行いました。このフォークは Kooraseru が保守しています。

<a id="license"></a>
## ライセンス

原文の LCC 条項と帰属情報については、ライセンスの概要を参照してください。 [LICENSE](../../LICENSE).
