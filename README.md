# LCC-LC3 C Compiler

This is the canonical authored source repository for LCC-LC3. Its branch is
`source`; the generated public repository is published to `main`.

- `code/` owns the compiler, bundled libraries, manual pages, and tests.
- `i18n/` owns the locale registry and translation catalogs.
- `releases/` owns the authored release records and generated changelog.
- `repo/` owns the generated public repository projection.
- `.github/actions/` owns GitHub-specific validation operations.

The user-facing README is rendered from `repo/templates/README.md` and
`i18n/repository.toml`. Run the **Build generated example** VS Code task to
inspect the result in `.generated/`. It emits English documentation at
`.generated/docs/README.md`, Japanese documentation at
`.generated/docs/ja-JP/README.md`. The generated repository has no top-level
README; `docs/README.md` is its English documentation entry point.

The **Validate source** task uses Lua 5.4. Install it locally with
`sudo apt install lua5.4` on Ubuntu or Debian, `sudo pacman -S lua` on Arch,
or `brew install lua` on macOS.

On a Windows-hosted VS Code workspace, use **Build generated example** or
**Validate source**; they explicitly run in Ubuntu. Use the corresponding
**(Remote WSL)** tasks only when the folder itself is opened through VS Code's
Remote WSL extension.
