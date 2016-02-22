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

## Prerequisites for every release:

- Installation instructions and examples work on a clean OS (latest Fedora, Ubuntu, and Mac)
- All tests pass (xfails are okay)
- Documentation is in sync with code (correct but not necessarily complete)

## Branching

The goal is to have a stable set of features that are the target for what will be released, making the release easier to test and document. Create the branch when the right set of features is ready.

1. Release branches should be named *major*.*minor*.x (with a literal "x" as the third component), e.g., `0.1.x`. This convention avoids a name conflict with tag names.
2. Edit the branch's copy of README.md. The master branch version has a warning at the top pointing to the latest release branch; the release branch's version should not have this warning.
3. Make sure all the appropriate version numbers are up-to-date. Refer to the section below.
4. At this point, version-specific development, including documentation for the upcoming release, should occur on this release branch. Other work should proceed on the master branch.


## Releasing

0. A release should only be performed after sufficient pre-release
   testing has been performed. The process described here does not
   involve testing, it merely provides a repeatable way to transform a
   snapshot of the git repo into a set of published artifacts.

1. Review the current release metadata and determine the appropriate
   version for the next release:

   ```
   ./release version
   ```

2. Set the appropriate version number(s) for the release. This will
   automatically create a commit in your checkout with the appropriate
   version related changes:

   ```
   ./release version 1.2.3
   ```

3. To make a signed and annotated tag for the release:

   ```
   git tag -sm "Release 1.2.3" 1.2.3
   ```

3. Push the release:

   ```
   ./release push-pkgs
   ./release push-docs
   ```

4. Update the website

5. Announce the release

The goal of the tag is to record exactly what source was used to build the released artifacts.

## Post-release

1. Merge the release branch changes into the master branch (if this hasn't already been done).
2. Update master branch version numbers. (More info needed here.)
3. Development can proceed on the master branch until it's appropriate to cut another release branch.
