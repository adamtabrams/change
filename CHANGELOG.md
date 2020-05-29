# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.5.2] - 2020-05-29
### Fixed
- Version sorting needed to be reversed.
- Escape more character for use in sed and curl.

## [0.5.1] - 2020-05-29
### Fixed
- For commands that require it, check if it's in a git repo.
- Corrected return code for checking done at startup.
- Recognize token BREAKING-CHANGE in the footer.

### Changed
- Improve usage message added Tips section to README.

## [0.5.0] - 2020-05-29
### Added
- Use GitHub personal access token for auth.
- Can now tag and push most version in changelog.

### Fixed
- Major and minor version bump weren't resetting minor and patch.

### Changed
- Changed `release` command to `post`.
- Changed `-t` command to `tag`.

## [0.4.1] - 2020-05-28
### Fixed
- Error handling for unknown arguments.

## [0.4.0] - 2020-05-28
### Added
- Feature for posting latest version as a GitHub release.

### Changed
- Add changelog for the project (shocker right).

## [0.3.0] - 2020-05-28
### Added
- Format and group commit messages.

### Fixed
- Sort commits to proper versions.

### Changed
- Add About and Usage sections to README.

## [0.2.0] - 2020-05-28
### Added
- Completely refactored the tool.
- Created feature for generating the initial changelog.

## [0.1.0] - 2020-05-27
### Added
- Created a proof of concept for a changelog updater.

[Unreleased]: https://github.com/adamtabrams/change/compare/0.5.2...HEAD
[0.5.2]: https://github.com/adamtabrams/change/compare/0.5.1...0.5.2
[0.5.1]: https://github.com/adamtabrams/change/compare/0.5.0...0.5.1
[0.5.0]: https://github.com/adamtabrams/change/compare/0.4.1...0.5.0
[0.4.1]: https://github.com/adamtabrams/change/compare/0.4.0...0.4.1
[0.4.0]: https://github.com/adamtabrams/change/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/adamtabrams/change/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/adamtabrams/change/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/adamtabrams/change/releases/tag/0.1.0
