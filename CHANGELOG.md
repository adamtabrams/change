# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.13.1] - 2021-02-03
### Fixed
- Restore behavior for parsing non-conventional commit subjects.

## [0.13.0] - 2021-02-03
### Added
- Handle "BREAKING CHANGE" token/type in commits.
- Also parses the commit body for conventional commits.

### Fixed
- Switch heading for major version commits from "Deprecated" to "BREAKING CHANGE".

### Changed
- Refactor code to improve naming, layout, readability, and to split up functions.
- Add issue templates for more organization and better support.

## [0.12.0] - 2021-01-29
### Added
- Add `--version` flag for bug reports and troubleshooting.

### Fixed
- Create temporary backup file when using `sed` replace.

### Changed
- Add a license to the project.
- Create script for updating version.

## [0.11.1] - 2021-01-28
### Fixed
- Make `sed` commands work with GNU and BSD versions.

### Changed
- Add CI workflows linting and running tests in Linux and macOS.
- Add new CI badges to README.
- Add sample auth files for post tests.
- Append change directory to PATH when running tests.

## [0.11.0] - 2021-01-27
### Added
- Suffixes are now shown in changelog versions.
- Automated version tags won't use suffixes.

### Fixed
- Use separate commit for `change all` instead of appending to previous commit.

### Changed
- Move function.
- Add "&" to symbols test.
- Improve repo layout.

## [0.10.0] - 2021-01-21
### Added
- Add `--dry-run` flag to `change post` to see the release without making it.
- Add `-p` flag to `change tag` for optionally pushing new tag.

### Fixed
- Improve behavior for `change all`.
- Improve commit parsing and git repo detection.

### Changed
- Update `--help` and README with new flags.
- Update test script and improve readability.
- Add new tests and improve structure.
- Add tests for different version formats.
- Add tests for tag, post, and other arguments.
- Add more tests.

## [0.9.0] - 2021-01-19
### Added
- Added a testing suite for more reliable behavior!

### Changed
- Fix version prefix handling (example v0.1.0)
- Improved some of the error messages for `change init`.
- Give tips for adding the script to PATH in the README.

## [0.8.0] - 2021-01-11
### Added
- Added an option to provide a token for the auth command as another argument.

## [0.7.1] - 2021-01-07
### Fixed
- Use `--decode` argument with `base64` to get proper behavior with BSD and GNU versions.

### Changed
- Clarified `change all` command.

## [0.7.0] - 2020-10-28
### Added
- Revert file when `change all` command is cancelled (see #1).

### Changed
- Removed duplicates in changelog added during testing.

## [0.6.1] - 2020-06-06
### Fixed
- Error handling within functions. Replaced exit with return.
- Removed editor prompt when amending with all command.

### Changed
- Update workflow section in README.

## [0.6.0] - 2020-06-06
### Added
- Created a change all command for improved workflow.
- Explained the change all in the README.

### Fixed
- Corrected typo in regex for sorting commits.

## [0.5.2] - 2020-05-29
### Fixed
- Version sorting needed to be reversed.
- Escape more character for use in `sed` and `curl`.

## [0.5.1] - 2020-05-29
### Fixed
- Correct startup checking exit code.
- Check if in git repo.
- Allow tokenized breaking change in footer.

### Changed
- Improve usage and README.

## [0.5.0] - 2020-05-29
### Added
- Use token auth.

### Fixed
- Minor bump resets patch.

## [0.4.1] - 2020-05-29
### Fixed
- Removed incorrect `curl` options.
- Improve `curl` options and error handling.
- Improve `curl` options and error handling.

## [0.4.0] - 2020-05-28
### Added
- Release is for latest version.
- Post sections as GitHub releases.

### Changed
- Add changelog.

## [0.3.0] - 2020-05-28
### Added
- Format and group commit messages.

### Fixed
- Sort commits to proper versions.

### Changed
- Add About and Usage sections to README.

## [0.2.0] - 2020-05-28
### Added
- Complete refactor.

## [0.1.0] - 2020-05-27
### Added
- Created a proof of concept for a changelog updater.

[Unreleased]: https://github.com/adamtabrams/change/compare/0.13.1...HEAD
[0.13.1]: https://github.com/adamtabrams/change/compare/0.13.0...0.13.1
[0.13.0]: https://github.com/adamtabrams/change/compare/0.12.0...0.13.0
[0.12.0]: https://github.com/adamtabrams/change/compare/0.11.1...0.12.0
[0.11.1]: https://github.com/adamtabrams/change/compare/0.11.0...0.11.1
[0.11.0]: https://github.com/adamtabrams/change/compare/0.10.0...0.11.0
[0.10.0]: https://github.com/adamtabrams/change/compare/0.9.0...0.10.0
[0.9.0]: https://github.com/adamtabrams/change/compare/0.8.0...0.9.0
[0.8.0]: https://github.com/adamtabrams/change/compare/0.7.1...0.8.0
[0.7.1]: https://github.com/adamtabrams/change/compare/0.7.0...0.7.1
[0.7.0]: https://github.com/adamtabrams/change/compare/0.6.1...0.7.0
[0.6.1]: https://github.com/adamtabrams/change/compare/0.6.0...0.6.1
[0.6.0]: https://github.com/adamtabrams/change/compare/0.5.2...0.6.0
[0.5.2]: https://github.com/adamtabrams/change/compare/0.5.1...0.5.2
[0.5.1]: https://github.com/adamtabrams/change/compare/0.5.0...0.5.1
[0.5.0]: https://github.com/adamtabrams/change/compare/0.4.1...0.5.0
[0.4.1]: https://github.com/adamtabrams/change/compare/0.4.0...0.4.1
[0.4.0]: https://github.com/adamtabrams/change/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/adamtabrams/change/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/adamtabrams/change/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/adamtabrams/change/releases/tag/0.1.0
