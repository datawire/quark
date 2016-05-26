# Testing Quark

Quark has many layers; testing the different layers uses different machinery. However, all of Quarks tests can be launched using pytest.

## Easy testing

If you want to easily run tests in a git checkout of Quark without setting up dependencies locally, you can do so easily if you have Docker 1.11 or later installed:

        scrips/with-docker.py py.test

Or if you want to run just some of the tests (see the rest of the document for details):

        scripts/with-docker.py py.test -k "lib"

This will use your local checkout, so you can test changes (committed or uncommited) that you've made locally in the current checkout.

## Testing the compiler

Quark allows the user to express APIs and behaviors. These two aspects of the output of the Quark compiler are tested separately. (FIXME: Talk about ffi and emit tests)

There are tests for how the compiler behaves when presented with incorrect input files. (FIXME: Talk about test_compile and its .astc and .err files)

There are tests for some of the internal implementation details of the compiler as well. (FIXME: Mention apidoc, dispatch, environment, and parse tests)


## Testing the standard library

The Quark standard library is declared in `quarkc/lib/quark.q` and its dependencies. It is defined partly in those files and partly in the target language integration code, also contained in `quarkc/lib`. The standard library's functionality is tested using the Quark test harness.

The standard library includes the Quark test harness in the `quark.test` namespace. It is based loosely on JUnit or PyUnit (known as the `unittest` module in the Python standard library). The Quark test harness uses a namespace to define a test suite. Each test case is represented by a class, which contains a set of test methods as well as an optional set-up method and an optional tidy-up method. Each test method can use `check` functions from the `quark.test` namespace to perform the desired testing and capture the results.

The test harness uses the default namespace (i.e., the package name) for the test suite. Each test case must be a class whose name ends with `Test`. Test methods are no-argument methods in the test case class whose names start with `test`. The optional set-up and tidy-up methods must be no-argument methods named `setup` and `teardown` respectively. Test methods can call the following `check` functions:

    // test that the value is true; output the message on failure
    check(bool value, String message)

    // test that the actual value is equal to the expected value
    checkEqual(Object expected, Object actual)

    // test that the actual value is equal to one of the expected values
    checkOneOf(List<Object> expected, Object actual)

As an example, Consider `quarkc/test/lib/map_test.q`, which is a test suite that defines a single test case `MapTest` in the default namespace `map_test`. This test case has a set-up method `setup` that creates a `Map<String, int>` and a tidy-up method `teardown` that discards the reference to that map. The test case also includes several test methods. The method `test_constructor` demonstrates using `checkEqual`. The method `test_contains` demonstrates using `check` with simple failure messages. The method `test_urlencode` demonstrates using `checkOneOf`.

After collecting the test methods in the test case classes in the specified test suite namespace, the harness filters the set of methods by matching against the specified filter patterns. Each of the remaining collected test methods is run once, each invocation preceded and followed by calls to `setup` and `teardown` respectively if present. The harness collects the pass/fail status of every `check` performed. Finally it reports and summarizes the results.

Python code in `quarkc/test/test_lib.py` collects all the library tests in `quarkc/test/lib` and executes them in all target languages. At present, all the available tests are executed as a single pytest test. If that test fails, pytest displays the output from the Quark test runner. That in turn shows the individual passing and failing tests.

    $ py.test -v quarkc -k lib
    [...]

It is also possible to run the tests individually by including a small `main` snippet in your test code. The tests in `quarkc/test/lib` contain this snippet.

    void main(List<String> args) {
        test.run(args);
    }

This `main` function calls the test harness on the current package with the filters specified at the command line. Run the tests by installing and running the test file. As with all invocations of `quark run`, you must specify a single target language per invocation.

    $ quark install quarkc/test/lib/map_test.q
    [...]

    $ quark run --java quarkc/test/lib/map_test.q
    Running: map_test
    =============================== starting tests ===============================
    map_test.MapTest.test_constructor [1 checks, 0 failures]
    map_test.MapTest.test_contains [3 checks, 0 failures]
    map_test.MapTest.test_keys [3 checks, 0 failures]
    map_test.MapTest.test_size [1 checks, 0 failures]
    map_test.MapTest.test_get [3 checks, 0 failures]
    map_test.MapTest.test_update [15 checks, 0 failures]
    map_test.MapTest.test_urlencode [1 checks, 0 failures]
    =============================== stopping tests ===============================
    Total: 7, Filtered: 0, Passed: 7, Failed: 0

    $ quark run --python quarkc/test/lib/map_test.q keys get urlencode
    Running: map_test keys get urlencode
    =============================== starting tests ===============================
    map_test.MapTest.test_keys [3 checks, 0 failures]
    map_test.MapTest.test_get [3 checks, 0 failures]
    map_test.MapTest.test_urlencode [1 checks, 0 failures]
    =============================== stopping tests ===============================
    Total: 7, Filtered: 4, Passed: 3, Failed: 0

    (etc)

Users can use this same test harness to write tests in Quark for arbitrary Quark code. Invocation of these test on each relevant target language is up to the user.


## Testing the integrations

(FIXME: Explain what's going on, what the goals are, and how to add to this stuff. Or decide that this is going away. Or whatever else)

    py.test -v runtime


## Testing the examples

(FIXME: Explain what's going on, what the goals are, and how to add to this stuff. Maybe point to other documentation explaining how to write an example)

    py.test -v examples
