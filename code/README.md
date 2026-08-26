# LCC-LC3 source

This directory is the buildable LCC-LC3 source tree. Release archives expose
it as `src/`.

Build on a Unix shell (or WSL on Windows):

```sh
sh ./configure --installdir "$HOME/.local/bin"
make
make install
```

If `~/.local/bin` is not already on your `PATH`, add it for the current shell:

```sh
export PATH="$HOME/.local/bin:$PATH"
```

To assemble compiler output, install a compatible `lc3as` executable at
`~/.local/bin/lc3as` from the [LC-3 Tools project](https://github.com/haplesshero13/lc3tools).
