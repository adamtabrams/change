# About

The goal of `change` is to take the grunt work out of formatting changelogs. It combines the ideas from
[Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
to help you generate and update a changelog template.
This tool cannot not fully write a [good changelog](https://keepachangelog.com/en/1.0.0/#bad-practices) for you.
But it can do some of the work!


# Usage

#### First generate a changelog with `change init`
* You need to have a least one commit tagged with valid SemVer (like 0.1.0 or v0.0.1)

* `change` probably won't work well with a changelog that's formatted differently.
So it's probably better to let `change` generate one and then you can transfer whatevery you want.

#### Now populate the rest of it with `change`
* `change` can add multiple versions to your changelog, but those version tags need to already exist.
Otherwise everything since the last version tag is assumed to be for the next version.
* `change` will figure out what your next version should be from based on your commits and will add that to the changelog.
* By default `change` won't tag the lastest commit with the version it calculated, but it will if you use the `-t` flag.

#### Finally, make it better
* You should now validate what was generated and add detail everywhere it's needed.
