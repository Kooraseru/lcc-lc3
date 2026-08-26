<div align="center">
  <h1>{{ l10n:repository.title }}</h1>
  <table><tr><td><a href="#install">{{ l10n:repository.navigation.install }}</a></td><td><a href="#source">{{ l10n:repository.navigation.source }}</a></td><td><a href="#contributors">{{ l10n:repository.navigation.contributors }}</a></td><td><a href="#license">{{ l10n:repository.navigation.license }}</a></td></tr></table>
  {{ locales:repository }}
</div>

{{ l10n:repository.summary }}

<a id="source"></a>
## {{ l10n:repository.source }}

{{ l10n:repository.source_intro }}

```sh
git clone --branch source --single-branch https://github.com/Kooraseru/lcc-lc3.git
cd lcc-lc3/code
```

{{ l10n:repository.source_custom }}

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

{{ l10n:repository.release_note }}

<a id="contributors"></a>
## {{ l10n:repository.contributors }}

{{ l10n:repository.contributors_text }} [{{ l10n:repository.contributing_link }}]({{ link:contributing }}).

## {{ l10n:repository.credits }}

{{ l10n:repository.credits_text }}

<a id="license"></a>
## {{ l10n:repository.license_heading }}

{{ l10n:repository.license }} [{{ l10n:repository.license_link }}]({{ link:license }}).
