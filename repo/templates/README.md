<div align="center">
  <h1>{{ l10n:repository.title }}</h1>
  <table><tr><td><a href="#setup">{{ l10n:repository.navigation.setup }}</a></td><td><a href="#source">{{ l10n:repository.navigation.source }}</a></td><td><a href="#install">{{ l10n:repository.navigation.install }}</a></td><td><a href="#contributors">{{ l10n:repository.navigation.contributors }}</a></td><td><a href="#license">{{ l10n:repository.navigation.license }}</a></td></tr></table>
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

### {{ l10n:repository.macos }}

{{ l10n:repository.macos_intro }}

```sh
xcode-select --install
```

### {{ l10n:repository.linux }}

{{ l10n:repository.linux_intro }}

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
## {{ l10n:repository.source }}

{{ l10n:repository.source_intro }}

```sh
mkdir -p ~/src
cd ~/src
git clone https://github.com/Kooraseru/lcc-lc3.git
cd lcc-lc3
```

{{ l10n:repository.source_custom }}

```sh
mkdir -p /path/to/source
git clone https://github.com/Kooraseru/lcc-lc3.git /path/to/source/lcc-lc3
cd /path/to/source/lcc-lc3
```

{{ l10n:repository.curl_intro }}

```sh
mkdir -p ~/src
cd ~/src
curl -L https://github.com/Kooraseru/lcc-lc3/archive/refs/heads/main.tar.gz -o lcc-lc3.tar.gz
tar -xzf lcc-lc3.tar.gz
cd lcc-lc3-main
```

{{ l10n:repository.curl_custom }}

```sh
mkdir -p /path/to/source
cd /path/to/source
curl -L https://github.com/Kooraseru/lcc-lc3/archive/refs/heads/main.tar.gz -o lcc-lc3.tar.gz
tar -xzf lcc-lc3.tar.gz
cd lcc-lc3-main
```

{{ l10n:repository.curl_note }}

<a id="install"></a>
## {{ l10n:repository.install }}

{{ l10n:repository.install_intro }}

```sh
cd code
sh ./configure
make
make install
```

{{ l10n:repository.path_note }}

```sh
export PATH="$HOME/.lc3:$PATH"
```

{{ l10n:repository.assembler }}

<a id="contributors"></a>
## {{ l10n:repository.contributors }}

{{ l10n:repository.contributors_text }} [{{ l10n:repository.contributing_link }}]({{ link:contributing }}).

## {{ l10n:repository.credits }}

{{ l10n:repository.credits_text }}

<a id="license"></a>
## {{ l10n:repository.license_heading }}

{{ l10n:repository.license }} [{{ l10n:repository.license_link }}]({{ link:license }}).
