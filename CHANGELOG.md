# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

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
- Update workflow section in readme.

## [0.6.0] - 2020-06-06
### Added
- Created a change all command for improved workflow.
- Explained the change all in the readme.

### Fixed
- Corrected typo in regex for sorting commits.

## [0.5.2] - 2020-05-29
### Fixed
- Version sorting needed to be reversed.
- Escape more character for use in sed and curl.

## [0.5.1] - 2020-05-29
### Fixed
- Correct startup checking exit code.
- Check if in git repo.
- Allow tokenized breaking change in footer.

### Changed
- Improve usage and readme.

## [0.5.0] - 2020-05-29
### Added
- Use token auth.

### Fixed
- Minor bump resets patch.

## [0.4.1] - 2020-05-29
### Fixed
- Removed incorrect curl options.
- Improve curl options and error handling.
- Improve curl options and error handling.

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

[Unreleased]: https://github.com/adamtabrams/change/compare/0.7.0...HEAD
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
