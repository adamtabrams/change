# About

The goal of `change` is to take the grunt work out of formatting changelogs. It combines the ideas from
[Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
to help you generate and update a changelog template.
This tool cannot not fully write a [good changelog](https://keepachangelog.com/en/1.0.0/#bad-practices) for you.
But it can do some of the work!


# Usage

#### First generate a changelog with `change init`
* You need to have a least one commit tagged with valid SemVer (like 0.1.0 or v0.0.1).

* `change` probably won't work well with a changelog that's formatted differently.
So it's better to let `change` generate one. You can transfer existing messages after.

#### Now populate the rest of it with `change`
* `change` can add multiple versions to your changelog, but those version tags need to already exist.
Otherwise everything since the last version tag is assumed to be for the next version.
* `change` will figure out what your next version should be from based on your commits and will add that to the changelog as well.

#### Fill in the details
* You should validate what was generated and add detail everywhere it's needed.

#### Tag the latest commit with `change tag`
* This looks at the latest version recorded in the changelog.
Then it tags the latest commit with that version and pushes the tag to origin.

#### Save a token with `change auth`
* This saves a personal access token for posting releases.
* Here are [instructions](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line#creating-a-token) for making one.

#### Post a release to GitHub with `change post`
* This posts the section of the latest version in the changelog as a GitHub release.


## Workflow

This is the general workflow I use with this tool:
* make changes to your project
* record those changes in commits
    * smaller, more focused commits will help when generating the changelog
* run `change`
* improve the new section of the changelog
* ammend the revised changelog to the last commit with `git commit --amend`
* run `change tag`
* push to origin
* run `change post`


# Tips

With the help of curl, you can run this tool without installing it:
* `curl -s "https://raw.githubusercontent.com/adamtabrams/change/master/change" | sh -s --` [args]
