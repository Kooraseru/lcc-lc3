<div align="center">
  <h1>LCC-LC3 C Compiler</h1>
  <table><tr><td><a href="#setup">Set Up</a></td><td><a href="#download">Download</a></td><td><a href="#install">Install</a></td><td><a href="#license">License</a></td></tr></table>
  <table><tr><td><a href="docs/ja-JP/README.md">日本語</a></td></tr></table>
</div>

LCC-LC3 is an LC-3 target for the LCC C compiler. Build it from source on a Unix shell. Windows users should use WSL.

<a id="setup"></a>
## 1. Install build tools

### Windows

Install Ubuntu through Windows Subsystem for Linux from PowerShell:

```powershell
wsl --install -d Ubuntu
```

Open Ubuntu after installation, then run the remaining commands inside the Ubuntu terminal, not PowerShell.

### Linux

Install GCC, Make, and Flex for your distribution:

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

Install Apple's command-line tools, then install Flex with Homebrew:

```sh
xcode-select --install
brew install flex
export PATH="$(brew --prefix flex)/bin:$PATH"
```

<a id="download"></a>
## 2. Download a release

Run the following commands in the directory where you want to keep the source. They download and extract the newest release:

```sh
curl --fail --location --output lcc-lc3.tar.gz \
  https://github.com/Kooraseru/lcc-lc3/releases/latest/download/lcc-lc3.tar.gz
tar -xzf lcc-lc3.tar.gz
cd lcc-lc3-*/src
```

<a id="install"></a>
## 3. Build and install

Run these commands from the `src/` directory created in the previous step. `~/.local/bin` is the recommended per-user installation directory.

```sh
sh ./configure --installdir "$HOME/.local/bin"
make
make install
```

Add the installation directory to your shell path if your system does not already include `~/.local/bin`, then verify the installation:

```sh
export PATH="$HOME/.local/bin:$PATH"
```

`make install` installs the bundled assembler at `~/.local/bin/lc3as`. The following command should print paths for both installed tools:

```sh
command -v lcc lc3as
```

Distribution packages (for example, APT and pacman) are not available yet.

## Credits

LCC was created by Christopher W. Fraser and David R. Hanson. The LC-3 target was developed by Ajay Ladsaria and Sanjay J. Patel, with later work by Sean Smith, Stephen Canon, and Avery Yen. This fork is maintained by Kooraseru.

<a id="license"></a>
## License

See the licensing index for the original LCC terms and attribution. [LICENSE](LICENSE).
