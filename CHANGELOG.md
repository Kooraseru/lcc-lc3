# Changelog

# 2026.08.1-regular

## Summary

Initial maintained LCC-LC3 release.

## Notable Changes

- Moved the compiler source tree into `code/`.
- Added localized generated documentation and a source-to-publication layout.
- Added release records and a published changelog.
- Made native host builds the default while retaining optional `-m32` builds.

## Compatibility

The source is intended for Unix shells, including WSL on Windows. Legacy
32-bit host builds remain available through `ARCH_CFLAGS=-m32`.

## Verification

- Lua localization, release-record, and generated-repository validation pass.

## Known Limitations

- Assembling `lc3os.asm` currently reports range errors. This is tracked
  separately from the repository modernization work.

# 2012.05.1-regular

## Summary

Archival record for the 2012-05-04 LCC-LC3 update.

## Notable Changes

- Updated configuration and installation behavior for modern macOS systems.

## Contributors

- Sean Smith
- Stephen Canon
- Avery Yen

# 2004.03.2-regular

## Summary

Archival record for the 2004-03-23 LCC-LC3 update.

## Notable Changes

- Customized the compile process around the LC-3 tools.

## Contributors

- Sanjay J. Patel

# 2004.03.1-regular

## Summary

Archival record for the 2004-03-08 LCC-LC3 update.

## Notable Changes

- Cleaned up configuration and installation behavior.

## Contributors

- Sanjay J. Patel
