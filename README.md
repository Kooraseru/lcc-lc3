<div align="center">
  <h1>LCC-LC3 C Compiler</h1>
  <table><tr><td><a href="#install">Install</a></td><td><a href="#develop">Develop</a></td><td><a href="#contributors">Contributors</a></td><td><a href="#license">License</a></td></tr></table>
  <table><tr><td><a href="docs/ja-JP/README.md">日本語</a></td></tr></table>
</div>

LCC-LC3 is an LC-3 target for the LCC C compiler. Build it from source on a Unix shell. Windows users should use WSL.

<a id="install"></a>
## Install

When a release archive is available, download and extract it from the [Releases page](https://github.com/Kooraseru/lcc-lc3/releases), then run these commands from its `src/` directory. GCC, Make, and Flex are required; Windows users should run them in WSL. `~/.local/bin` is the recommended per-user installation directory.

```sh
sh ./configure --installdir "$HOME/.local/bin"
make
make install
```

Add the installation directory to your shell path if your system does not already include `~/.local/bin`:

```sh
export PATH="$HOME/.local/bin:$PATH"
```

`make install` also installs the bundled `lc3as` assembler at `~/.local/bin/lc3as`.

Release archives contain the buildable source tree as `src/`, including the setup README and bundled assembler. Distribution packages (for example, APT and pacman) are not available yet.

<a id="develop"></a>
## Develop or contribute

Clone the canonical `source` branch for development, bug fixes, and pull requests:

```sh
git clone --branch source --single-branch https://github.com/Kooraseru/lcc-lc3.git
cd lcc-lc3/code
```

Do not fork, branch from, or open pull requests against `main`; it is generated from `source`.

<a id="contributors"></a>
## Contributors

Contributions are welcome. Read the contribution guide before opening an issue or pull request. [Contribution guide](CONTRIBUTING.md).

## Credits

LCC was created by Christopher W. Fraser and David R. Hanson. The LC-3 target was developed by Ajay Ladsaria and Sanjay J. Patel, with later work by Sean Smith, Stephen Canon, and Avery Yen. This fork is maintained by Kooraseru.

<a id="license"></a>
## License

See the licensing index for the original LCC terms and attribution. [LICENSE](LICENSE).
