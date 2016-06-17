# Releasing Quark #

The release workflow has the following steps, which are scripted.  All
commands below take additional options, see `./release --help` for
details.  Publishing artefacts to pypi requires write permission to
pypi.

## Create a new virtualenv and activate it ##

Run:

    virtualenv /tmp/newrelease
    source /tmp/newrelease/bin/activate

## Prepping up the  workspace ##

Make sure your checkout is up-to-date:

    git checkout develop
    git pull

Make sure development dependencies are installed:

    pip install -r requirements.txt

Create a stable copy of the release script in your current shell session:

    eval $(./release freeze)

which will define `quark_release` function in your shell.

<blockquote>
*Explanation:*

Since the release script is part of the repository, and release process
involves switching branches, the release script may change when
branches are switched. The best approach is to clone the repo, and use
the clone to provide the script.  The above approach is implemented by
the `./release freeze` command, which does the equivalent of

<pre>
    TMP=$(mktemp -d)
    git clone . $TMP
    echo "function quark_release() { $TMP/release \"\$@\" }"
</pre>

Please note that this section is the only place in the document where
`./release` script is invoked directly, all places below invoke the
`quark_release` function defined by the `./release freeze`.

Taking shortcuts is OK if you know what you're doing :)
</blockquote>

## Sync Status of CI ##

Successfully tested commits to develop are tagged with a `dev-`_1.2.3_
tags. The tagging is not part of the CI process, but is currently done
manually as part of the release process.

To query the CI system for new builds of the develop branch and tag the successful ones

    $ quark_release poll-dev-status --tag-dev-builds

## Publish Development Artefacts ##

Development artefacts are produced on a reserved temporary branch
`release-in-progress-dev` so that `develop` does not need to move.

*Do not* `git push` *the result, do not* `git merge` *the result to any branch.*

    $  quark_release prepare-release --dev
    $  quark_release push-docs
    $  quark_release push-pkgs
    $  quark_release cleanup


## Prepare Released State ##

Creation of production release is done on a reserved temporary branch
`release-in-progress` so that neither `develop` nor `master` need to
move.

    $ quark_release prepare-release --prod

It is possible to also do a partial release of the
develop branch in case the tip of develop is not stable, see help.

NOTE: the release version can be adjusted upwards by manually
supplying the version. The version MUST NOT be smaller than the
computed version. *This feature was not tested if it combines well with
partial releases*.

This command performs only local repo changes, so it is safe to run
without `--dry`. In case of errors run `quark_release cleanup` after
getting help with debugging what happened.


## Publish the Released State to GitHub ##

    $ quark_release push-release

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

    $ quark_release cleanup

The release procedure can be retried at this point.

### Push Suceeds ###

when push suceeds the `release-in-progress` branch is deleted automatically

## Publish the Release Artefacts ##

Publishing release artefacts requires write permission to PyPI (the
datawire-quark package) and DockerHub (the datawire organization).

Make sure you are logged in to DockerHub; if not you will need to:

    $ sudo docker login

Currently publishing of the release artefacts is not automated beyond
the following:

    $ git checkout master
    $ git pull
    $ quark_release build-docker-images
    $ quark_release push-docs
    $ quark_release push-pkgs
    $ quark_release push-docker-images

# Required software #

Tools required are `docker`, `pip`, `twine`, and a not totally ancient `git`

    $ pip install sphinx-better-theme wheel twine

# Ideas and Improvements #

- Move release area to a separate workspace and keep the release
   script in the dev checkout. Kill `freeze`. Simplify `cleanup`

- Drop the quarkdev and deploy (and test) the dev package from
  testpypi. This will eliminate the mildly evil backmerge we need to
  do now from master to develop to prevent merge conflict on next
  release.

- Allow releasing of any tested feature branch (not just develop)

- Explain what a 'release' is made of, like:
  a release is a merge of develop to master + a version change
  commit + signed tag + back-merge-to-develop-with-version-name-reset +
  an atomic push of the result

- add a link to the workflow, or better move the workflow to repo, too

- generate nice github releases

- generate nicer version number by learning to work with pre-release
versions

- decide how to handle CHANGELOG.md, incorporate it into the above

- mention to move trello cards
