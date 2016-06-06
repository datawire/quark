# How to contribute

Thank you for your interest in contributing to Quark.

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.


## Issues

Quark uses the [Github issue tracker](https://github.com/datawire/quark/issues).

(We should consider constructing an issue template.)


## Getting started as a developer

Branches and continuous delivery

- `master` is released stuff, only touched via [the release process](RELEASE.md)
- `develop` is the source of future releases
- everything else is developed on feature branches

### Setting up your development environment

You'll need Python 2.7, Java 7, Node 4, and Ruby 2.3. Take a look at `scripts/develop.sh` then run that to prepare your environment. This is one-time setup.


## Making Changes

Feature branch reminder

New features and bug fixes need tests.

New features need documentation.

Also, please update [the change log](CHANGELOG.md).

### Code style

Python with 4-space indentation. We do not follow PEP-8, though some of us try.

Java, JS, Ruby, shell scripts: ...

Please don't add unnecessary TAB characters to the repository. Use spaces unless TABs are required.

#### Naming convention for the Quark Standard Library

If you're adding to the Quark standard library in `quarkc/lib/quark.q` and dependencies, please keep the following naming convention in mind.

- Quark uses camel case, not underscores (`camelCaseWords` not `underscore_separated_words`). Namespaces are lowercase; classes are capitalized; functions, methods, and fields are lowercase; constants are uppercase (all-caps).
- All fields are public, but if it makes sense to use properties, getters and setters must be spelled out explicitly. For an integer field named `tolerance`, the appropriate methods would be `int getTolerance()` and `void setTolerance(int value)`. This helps avoid interference with property-related features that may be added in the future.
- If a class represents a conceptual thing, its name should be a noun. Methods that represent actions or operations on instances of that class should then be verbs. For example, a class named `Airplane` may have methods named `flyTo(...)` and  `getWingspan()`.


### Before you commit

Tests must pass. Run `py.test` in $REPO. More details are available in the [Quark testing documentation](TESTING.md).

### Commit messages

Format your commit message as an imperative subject line that summarizes the commit. If there is more to say, leave a blank line after the subject line, then include additional text as needed.

Quark follows [semantic versioning](http://semver.org/). Evaluate the extent of the impact your commit will have on users of Quark. Include an impact marker: `[MAJOR]`, `[MINOR]`, or `[FIX]`, in the subject line (first line) of your commit message. The release process uses the impact markers to compute the version number of the release.

- `[MAJOR]`: your commit makes an incompatible or breaking change
- `[MINOR]`: commits that add features or functionality in a backwards-compatible way
- `[FIX]`: all other changes, which must also be backwards-compatible
- Unmarked commits are considered as having a `[FIX]` level of impact

Quark uses Travis CI for automated testing. FYI, Travis skips commits that have `[ci skip]` anywhere in the commit message. The release process uses this to avoid re-testing already-tested code during release.

Please read this post: [How to Write a Git Commit Message](http://chris.beams.io/posts/git-commit/). The seven rules mentioned are good to keep in mind.

### Pull requests

Small and focused


## Resources

The Quark development team hangs out in the [Datawire public Slack community](https://datawire-quark.herokuapp.com). Github and Travis messages go the #devel channel.

