# Releasing Quark #

The release workflow has the following steps, which are scripted.  All
commands below take additional options, see `./release --help` for
details.  Publishing artefacts to pypi requires write permission to
pypi.

## Sync Status of CI ##

    ./release poll-dev-status --tag-dev-builds

## Publish Development Artefacts ##

    TODO
    TODO
    TODO

## Prepare Released State ##

Creation of release is done on a reserved temporary branch
`release-in-progress` so that neither `develop` nor `master` need to
move.

    ./release prepare-release --prod

It is possible to also do a partial release of the
develop branch in case the tip of develop is not stable, see help.

NOTE: the release version can be adjusted upwards by manually
supplying the version. The version MUST NOT be smaller than the
computed version. *This feature was not tested if it combines well with
partial releases*.

This command performs only local repo changes, so it is safe to run
without `--dry`. In case of errors run `./release cleanup` after
getting help with debugging what happened.


## Publish the Released State to GitHub ##

    ./release push-release --prod

`push-release` uses atomic push (like a compare-and-set operation) to
guarantee the following invariants:
- merges to master SHOULD be a fast-forward (therefore we try to not
merge master but just advance it)
- develop MUST be a descendant of master (therefore we fail if there
was a push to develop in the meantime)
- last-released-version in metadata MUST correspond to the last
release tag on develop

### Push Fails ###

if push fails it will not succeed later. Abort the release, throwing
away local release state

    ./release cleanup

The release procedure can be retried at this point.

### Push Suceeds

when push suceeds the `release-in-progress` branch is deleted automatically

## Publish of the Release Artefacts

Publishing release artefacts requires write permission to pypi.

Currently publishing of the release artefacts is not automated beyond
the following:

    git checkout master
    git pull
    ./release push-docs
    ./release push-pkgs
