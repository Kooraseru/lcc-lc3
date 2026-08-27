<div align="center">
  <h1>{{ l10n:repository.title }}</h1>
  <table><tr><td><a href="#setup">{{ l10n:repository.navigation.setup }}</a></td><td><a href="#download">{{ l10n:repository.navigation.source }}</a></td><td><a href="#install">{{ l10n:repository.navigation.install }}</a></td><td><a href="#license">{{ l10n:repository.navigation.license }}</a></td></tr></table>
  {{ locales:repository }}
</div>

{{ l10n:repository.summary }}

<a id="setup"></a>
## {{ l10n:repository.setup }}

### {{ l10n:repository.windows }}

{{ l10n:repository.windows_intro }}

```powershell
wsl --install -d Ubuntu
```

{{ l10n:repository.windows_note }}

### {{ l10n:repository.linux }}

{{ l10n:repository.linux_intro }}

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

### {{ l10n:repository.macos }}

{{ l10n:repository.macos_intro }}

```sh
xcode-select --install
brew install flex
export PATH="$(brew --prefix flex)/bin:$PATH"
```

<a id="download"></a>
## {{ l10n:repository.source }}

{{ l10n:repository.source_intro }}

```sh
curl --fail --location --output lcc-lc3.tar.gz \
  https://github.com/Kooraseru/lcc-lc3/releases/latest/download/lcc-lc3.tar.gz
tar -xzf lcc-lc3.tar.gz
cd lcc-lc3-*/src
```

<a id="install"></a>
## {{ l10n:repository.install }}

{{ l10n:repository.install_intro }}

```sh
sh ./configure --installdir "$HOME/.local/bin"
make
make install
```

{{ l10n:repository.path_note }}

```sh
export PATH="$HOME/.local/bin:$PATH"
```

{{ l10n:repository.assembler }}

```sh
lcc -help
```

{{ l10n:repository.release_note }}

## {{ l10n:repository.credits }}

{{ l10n:repository.credits_text }}

<a id="license"></a>
## {{ l10n:repository.license_heading }}

{{ l10n:repository.license }} [{{ l10n:repository.license_link }}]({{ link:license }}).
