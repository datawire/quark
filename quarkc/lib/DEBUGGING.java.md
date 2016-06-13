# Editing and debugging quark java runtime #

Quark runtime consists of generated java files from quark.q and of 'native' java
files in quarkc/lib/io/... Both sets of files are interdependant and
are compiled into one jar

The recipe below uses the helloRPC example. Substitute for your project.

Changes to the `quark.q` and it's included `.q` files should be performed directly
on the affected `.q` files. The generated java files should not be
edited with the IDE -- there is no way to get those changes back into
quark. The native java files _can_ be edited directly in the quark repo, but you
loose all the features a java IDE provides because 'native' java files
depend on generated java files which are not checked into the repo.

The approach is to create an intermediate place to contain both, the
generated code and the native files -- this is exactly the output of a
`quark compile`.  The session below assumes working from the quark
checkout directory, adjust paths to suit.


         quark compile examples/helloRPC/hello.q --output compile/hello
         cd compile
         git init
         git add .
         git commit -m initial
         cd ..

To make round-trip of changes more controlled, create an additional
editable place that tracks the compile place. This is where we run the
IDE and generate changes that should flow back to the quark repo.

         git clone compile edit
         cd edit
         cat << EOF >> .git/info/exclude
        *.class
        .classpath
        .project
        .settings/
        EOF
         open /Applications/eclipse/Eclipse.app
         # import 2 maven projects from the edit/hello/java
         # import maven project from examples/helloRPC

Exporting back changes to 'native' java files. Make sure no files
under `quark.*` java package were changed and that all changes are
limited to `io.datawire.quark.*`

         git add -u hello/java/quark/src/main/java/io
         git commit -m 'fixups'
         git diff


If native changes were made, re-do them as changes to the .q files in
your favourite editor and then throw them away in the edit area:

         git reset --hard


Transport changes to native java files back to quark repo:

         git diff --relative=hello/java/quark/src/main/java/io --src-prefix=a/quarkc/lib/io/ --dst-prefix=b/quarkc/lib/io/ HEAD^ HEAD | (cd .. && git apply )
         cd ..


Now, with quark files changed and native changes flown back, we can
make another roundtrip:

         quark compile examples/helloRPC/hello.q --output compile/hello
         cd compile
         git status
         git add -u
         git commit -m 'first roundtrip'
         cd ../edit
         git pull
         # refresh project(s) in the IDE

The pull should always merge cleanly as the `diff | apply` produces
identical change on both ends.

Once the session is over you can commit changed files to the quark repo
