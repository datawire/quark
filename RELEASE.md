# Releasing Quark

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


## Branching for a release

The goal is to have a stable set of features that are the target for what will be released, making the release easier to test and document. Create the branch when the right set of features is ready.

1. Release branches should be named *major*.*minor*.x (with a literal "x" as the third component), e.g., `0.1.x`. This convention avoids a name conflict with tag names.
2. Edit the branch's copy of README.md. The master branch version has a warning at the top pointing to the latest release branch; the release branch's version should not have this warning.
3. Make sure all the appropriate version numbers are up-to-date. Refer to the section below.
4. At this point, version-specific development, including documentation for the upcoming release, should occur on this release branch. Other work should proceed on the master branch.


## Releasing

1. Create a release tag named *major*.*minor*.*revision*, e.g., `0.1.0`.
2. Build, test, and push a release artifact, i.e. push to PyPI, npmjs.org, Maven, etc.
   the maven deployment is supposed to go according to [Performing a Release Deployment](http://central.sonatype.org/pages/apache-maven.html#performing-a-release-deployment)
   From root of git checkout:
     mvn versions:set -DnewVersion=1.2.3
     mvn clean deploy -P release
     mvn nexus-staging:release
   From runtime/js-core: npm publish .
   From runtime/js-node: npm publish .
   From runtime/python-core: python setup.py bdist_wheel && twine upload dist/...
   From runtime/twisted: python setup.py bdist_wheel && twine upload dist/...
   From root of git checkout: python setup.py bdist_wheel && twine upload dist/...

3. Update the website
4. Announce the release

The goal of the tag is to record exactly what source was used to build the release artifact.


## Post-release

1. Merge the release branch changes into the master branch (if this hasn't already been done).
2. Development can proceed on the master branch until it's appropriate to cut another release branch.


## Version numbers

- Quark's version number is in
  - `quark/_metadata.py` for `quark --version`
  - `docs/conf.py` for the documentation
- Quark's documentation has its own version (based on the code's version) in `docs/FIXME/where/is/it?`
- The Java backend core runtime version is in every file that has "quark-core" in it (or really: `<artifactId>quark-core</artifactID>`)
  - `pom.xml`
  - `runtime/core/pom.xml` for Maven's quark-core package
  - `quark/java.py` in a variable runtime_version above the pom template
  - `runtime/netty/pom.xml` for the Netty integration to require the quark-core package
- The Java Netty Integration version is in `runtime/netty/pom.xml`
- The Python backend core runtime version is at the top of `runtime/python-core/quark_runtime.py`
- The Python Twisted Integration version is in `runtime/twisted/quark_twisted_runtime.py`
- The JS backend core runtime is in `runtime/js-core/package.json`
- The JS Node Integration is in `runtime/js-node/package.json`

More version stuff to follow...
