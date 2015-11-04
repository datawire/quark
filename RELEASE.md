# Releasing Quark

## Branching for a release

1. Release branches should be named *major*.*minor*.x (with a literal "x" as the third component), e.g., `0.1.x`. This convention avoids a name conflict with tag names.
2. Edit the branch's copy of README.md. The master branch version has a warning at the top pointing to the latest release branch; the release branch's version should not have this warning.
3. Make sure all the appropriate version numbers are up-to-date. Refer to the section below.
4. At this point, version-specific development, including documentation for the upcoming release, should occur on this release branch. Other work should proceed on the master branch.


## Before releasing...

Make sure the goals of the release are met. As an example, consider the goals for release 0.1.0.

> For a prospective user trying out Quark, we should make sure that
>
> - they are pointed to the most interesting example we have (slack.q)
> - prerequisites and install instructions are fully debugged
> - the example itself works
> - we have removed any non-working and/or distracting/cluttered examples
> - the documentation we do provide is fully in sync with the code
>
> The overall idea is to make sure the process of a) understanding class of problems quark solves, b) trying out the examples we provide, and c) adapting our examples to fit their own specific problems is as streamlined as possible for prospective users.

Prerequisites for every release:

- Installation instructions and examples work on a clean OS (latest Fedora, Ubuntu, and Mac)
- All tests pass (xfails are okay)
- Documentation is in sync with code (correct but not necessarily complete)


## Releasing

1. Create a release tag named *major*.*minor*.*revision*, e.g., `0.1.0`.
2. **(future)** Build, test, and push a release artifact, i.e. push to PyPI, npmjs.org, Maven, etc.
3. **(future)** Update the website
4. Announce the release


## Post-release

1. Merge the release branch changes into the master branch (if this hasn't already been done).
2. Development can proceed on the master branch until it's appropriate to cut another release branch.


## Version numbers

- Quark's version number is in
  - `quark/_metadata.py` for `quark --version`
  - `docs/conf.py` for the documentation
- Quark's documentation has its own version (based on the code's version) in `docs/FIXME/where/is/it?`
- The Java backend core runtime version is in every file that has "quark-core" in it (or really: `<artifactId>quark-core</artifactID>`)
  - `runtime/core/pom.xml` for Maven's quark-core package
  - `quark/java.py` near the bottom of the pom_xml template for generated code to require the quark-core package
  - `runtime/netty/pom.xml` for the Netty integration to require the quark-core package
- The Java Netty Integration version is in `runtime/netty/pom.xml`

More version stuff to follow...
