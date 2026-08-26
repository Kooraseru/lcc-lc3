<div align="center">
  <h1>LCC-LC3 C Compiler</h1>
  <table><tr><td><a href="#setup">Set Up</a></td><td><a href="#source">Source</a></td><td><a href="#install">Install</a></td><td><a href="#contributors">Contributors</a></td><td><a href="#license">License</a></td></tr></table>
  <table><tr><td><a href="ja-JP/README.md">日本語</a></td></tr></table>
</div>

LCC-LC3 is an LC-3 target for the LCC C compiler. Build it from source on a Unix shell. Windows users should use WSL.

<a id="setup"></a>
## 1. Set Up Unix

### Windows

Install Ubuntu through Windows Subsystem for Linux from PowerShell:

```powershell
wsl --install -d Ubuntu
```

Open Ubuntu after installation, then run the remaining commands inside the Ubuntu terminal, not PowerShell.

### macOS

Install Apple's command-line tools:

```sh
xcode-select --install
```

### Linux

Install a C compiler, Make, and download tools for your distribution.

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
## 2. Get The Source

Keeping source checkouts under your home directory is recommended. Clone with Git into `~/src`:

```sh
mkdir -p ~/src
cd ~/src
git clone https://github.com/Kooraseru/lcc-lc3.git
cd lcc-lc3
```

To use another location, replace `~/src` with your preferred directory:

```sh
mkdir -p /path/to/source
git clone https://github.com/Kooraseru/lcc-lc3.git /path/to/source/lcc-lc3
cd /path/to/source/lcc-lc3
```

Or download the current `main` source archive with curl into `~/src`:

```sh
mkdir -p ~/src
cd ~/src
curl -L https://github.com/Kooraseru/lcc-lc3/archive/refs/heads/main.tar.gz -o lcc-lc3.tar.gz
tar -xzf lcc-lc3.tar.gz
cd lcc-lc3-main
```

For a custom curl location, download and extract there instead:

```sh
mkdir -p /path/to/source
cd /path/to/source
curl -L https://github.com/Kooraseru/lcc-lc3/archive/refs/heads/main.tar.gz -o lcc-lc3.tar.gz
tar -xzf lcc-lc3.tar.gz
cd lcc-lc3-main
```

There is no `curl | sh` installer or prebuilt release package. The curl command downloads the same source that Git clones.

<a id="install"></a>
## 3. Configure, Build, And Install

LCC-LC3 uses `configure` and `make`; it is not a CMake project.

```sh
cd code
sh ./configure
make
make install
```

`make install` places the compiler tools in `~/.lc3`. Add that directory to your shell path for the current session:

```sh
export PATH="$HOME/.lc3:$PATH"
```

To assemble the LC-3 code produced by the compiler, install a compatible `lc3as` executable at `~/.lc3/lc3as` from the [LC-3 Tools project](https://github.com/haplesshero13/lc3tools).

<a id="contributors"></a>
## Contributors

Contributions are welcome. Read the contribution guide before opening an issue or pull request. [Contribution guide](../CONTRIBUTING.md).

## Credits

LCC was created by Christopher W. Fraser and David R. Hanson. The LC-3 target was developed by Ajay Ladsaria and Sanjay J. Patel, with later work by Sean Smith, Stephen Canon, and Avery Yen. This fork is maintained by Kooraseru.

<a id="license"></a>
## License

See the licensing index for the original LCC terms and attribution. [LICENSE](../LICENSE).
