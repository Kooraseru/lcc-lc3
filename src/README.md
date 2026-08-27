# LCC-LC3 source

This directory is the buildable LCC-LC3 source tree. Release archives expose
it as `src/`. It includes the `lc3as` assembler required to assemble LCC-LC3
output.

Build on a Unix shell (or WSL on Windows) with GCC, Make, and Flex installed:

```sh
sh ./configure --installdir "$HOME/.local/bin"
make
make install
```

If `~/.local/bin` is not already on your `PATH`, add it for the current shell:

```sh
export PATH="$HOME/.local/bin:$PATH"
```

`make install` installs the bundled `lc3as` executable alongside the compiler.
Its upstream source and GNU GPL version 2 license are preserved in `lc3as/`.
