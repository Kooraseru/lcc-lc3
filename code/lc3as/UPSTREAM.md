# Upstream provenance

The assembler sources in this directory were imported from
[`haplesshero13/lc3tools`](https://github.com/haplesshero13/lc3tools), commit
`31455c63b1e81ece0716a7a639ff244b55bcd4bc` (2026-08-27).

Only the files required to build `lc3as` are vendored here. The local upstream
checkout used for refreshes is `.imports/lc3tools`, which is intentionally
ignored and is not part of a release. `Makefile.def` is this project's build
adapter; the imported assembler sources remain otherwise unchanged.

The imported software is distributed under the GNU General Public License,
version 2. Its upstream `COPYING`, `README.md`, and `NO_WARRANTY` files are
retained verbatim in this directory.
