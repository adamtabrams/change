```
  ______________________________
 / __// // / _ | / |/ / ___/ __/
/ /__/ _  / __ |/    / (_ / _/
\___/_//_/_/ |_/_/|_/\___/___/
```


![lint](https://github.com/adamtabrams/change/workflows/lint/badge.svg)
![Linux](https://github.com/adamtabrams/change/workflows/linux/badge.svg)
![macOS](https://github.com/adamtabrams/change/workflows/macOS/badge.svg)


# About

The goal of `change` is to take the grunt work out of creating and updating changelogs.
It combines the ideas from [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
to help you generate and update a changelog template.
This tool can't do **all** the work of writing a
[great changelog](https://keepachangelog.com/en/1.0.0/#bad-practices) for you.
But `change` can do a lot of it!


# Generate a changelog
![generate-changelog](./change-init-demo.gif)


# Update, tag, and release a new version
![change-all](./change-all-demo.gif)


# Usage

#### First generate a changelog with `change init`
* You need to have a least one commit tagged with valid SemVer (like 0.1.0 or even v0.0.1).

* `change` probably won't work well with a changelog that's formatted differently.
So it's better to let `change` generate one. You can transfer existing messages afterward.

#### Now populate the rest of it with `change`
* `change` can add multiple versions to your changelog, but those version tags should already exist.
Otherwise, it will assume everything since the previous version tag is part of the newest version.
* `change` figures out what your next version should be based on your commits and will add it to the changelog.
* Optionally, adding `--bump PATH` can pass the newest version as an argument to a script.
You can customize that script to update version info anywhere in your repo.

#### Fill in the details
* You should validate what was generated and add details where ever more are needed.

#### Tag the latest commit with `change tag`
* This looks at the latest version recorded in the changelog and tags the latest commit with that version.
* Optionally, you can add `-p` to automatically push the new version.

#### Save a token with `change auth`
* This is only needed if you want to use `change post`.
* A personal access token is saved for use when posting a release.
* Here are [instructions](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line#creating-a-token) for creating a Github token.
* Optionally, you can use `--token TOKEN` to provide the token non-interactively.

#### Post a release to GitHub with `change post`
* This will post the section from the latest version in the changelog as a GitHub release.
* Optionally, you can provide `--dry-run` to see the URL, version, and message body without
actually creating the release: `change post --dry-run`

#### Combine multiple commands with `change all`
* First it runs the `change` command.
* Then it opens your changelog with $EDITOR (or vi if that isn't set).
* As long as you modify the changelog in some way, it commits and pushes.
* Lastly, it runs `change tag -p` and `change post`.
* I use this command most often.
* Optionally, you can use the `--bump` flag.


## Workflow

This is the general workflow I use with this tool:
* make changes to the project
* record those changes in commits
    * smaller, more focused commits will help when generating the changelog
* run `change all`
* improve the new section of the changelog
* save and close the file


# Tips

With the help of curl, you can even run this tool without installing it:
* `curl -s "https://raw.githubusercontent.com/adamtabrams/change/master/change" | sh -s -- [args]`
* If you're using `change` like this for CICD, you may want to pick a specific version (instead of master).

If you use `change` often, add it to your path. Here are some options for how:
* Create a symlink somewhere already in your path that point to `change` (my favorite):
    * `ln -s /path/to/change/script ~/.local/bin/change`
* Add the script's directory to your path:
    * `export PATH="/path/to/change/repo:${PATH};"`
    * You would probably put this in a file like: .bashrc, .profile, .zprofile, etc
* Copy the script to your current path:
    * `cp /path/to/change/script ~/.local/bin/`
    * Drawback: the `change` executable will remain at its version when this command was used.
