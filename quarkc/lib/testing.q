quark *;
import quark.reflect;
import quark.concurrent;

namespace quark {
namespace test {

class TestInitializer extends TLSInitializer<Test> {
    Test getValue() { return null; }
}

String red(String str) {
    return "\x1b[31;1m" + str + "\x1b[0m";
}

String green(String str) {
    return "\x1b[32;1m" + str + "\x1b[0m";
}

String bold(String str) {
    return "\x1b[1m" + str + "\x1b[0m";
}

String heading(String str) {
    String padding = "=";
    int target_width = 78;

    String res = padding + " " + str + " ";
    int count = (target_width - res.size()) / padding.size();
    String block = padding * (count / 2);
    String extra = "";
    if (count % 2 == 1) {
        extra = padding;
    }

    return bold((block + res + block + extra).strip());
}

class Test {

    static TLS<Test> ctx = new TLS<Test>(new TestInitializer());

    static Test current() {
        return ctx.getValue();
    }

    String name;
    int checks = 0;
    List<String> successes = [];
    List<String> failures = [];

    Test(String name) {
        self.name = name;
    }

    bool match(List<String> filters) {
        if (filters == null || filters.size() == 0) {
            return true;
        }

        int idx = 0;
        while (idx < filters.size()) {
            String filter = filters[idx];
            if (name.find(filter) >= 0) {
                return true;
            }
            idx = idx + 1;
        }

        return false;
    }

    void start() {
        ctx.setValue(self);
    }

    void stop() {
        String result = name + " [" + checks.toString() + " checks, " + failures.size().toString() + " failures]";
        if (failures.size() > 0) {
            print(red(result));
        } else {
            print(bold(result));
        }
        int idx = 0;
        while (idx < successes.size()) {
            print(green("  PASS: " + successes[idx]));
            idx = idx + 1;
        }
        idx = 0;
        while (idx < failures.size()) {
            print(red("  FAIL: " + failures[idx]));
            idx = idx + 1;
        }
        ctx.setValue(null);
    }

    bool check(bool value, String message) {
        checks = checks + 1;
        if (value) {
            successes.add(message);
        } else {
            failures.add(message);
        }
        return value;
    }

    void fail(String message) {
        check(false, message);
    }

    void run() {}

}

class SafeMethodCaller extends UnaryCallable {
    static bool useSafeCalls = true;

    Method method;
    Object test;

    SafeMethodCaller(Method method, Object test) {
        self.method = method;
        self.test = test;
    }

    Object call(Object ignore) {
        method.invoke(test, []);
        return true;
    }

    static bool callMethod(Method method, Object test) {
        if (useSafeCalls) {
            SafeMethodCaller callable = new SafeMethodCaller(method, test);
            return ?Context.runtime().callSafely(callable, false);
        }
        method.invoke(test, []);
        return true;
    }
}

class MethodTest extends Test {

    Class klass;
    Method method;

    MethodTest(Class klass, Method method) {
        super(klass.getName() + "." + method.getName());
        self.klass = klass;
        self.method = method;
    }

    void run() {
        Method setup = klass.getMethod("setup");
        Method teardown = klass.getMethod("teardown");

        Object test = klass.construct([]);
        if (setup != null) {
            if (!SafeMethodCaller.callMethod(setup, test)) {
                fail("setup invocation crashed");
            }
        }
        if (!SafeMethodCaller.callMethod(method, test)) {
            fail("test invocation crashed");
        }
        if (teardown != null) {
            if (!SafeMethodCaller.callMethod(teardown, test)) {
                fail("teardown invocation crashed");
            }
        }
    }

}

bool check(bool value, String message) {
    return Test.current().check(value, message);
}

bool checkEqual(Object expected, Object actual) {
    return Test.current().check(expected == actual, "expected " + expected.toString() + " got " + actual.toString());
}

void fail(String message) {
    Test.current().check(false, message);
}

bool checkOneOf(List<Object> expected, Object actual) {
    String message = "Expected one of [";
    int idx = 0;
    bool success = false;
    while (idx < expected.size()) {
        if (idx != 0) {
            message = message + ", ";
        }
        message = message + expected[idx].toString();
        if (expected[idx] == actual) {
            success = true;
        }
        idx = idx + 1;
    }
    message = message + "] got " + actual.toString();
    return check(success, message);
}

class Harness {

    String pkg;
    List<Test> tests = [];
    int filtered = 0;

    Harness(String pkg) {
        self.pkg = pkg;
    }

    void collect(List<String> filters) {
        List<String> names = Class.classes.keys();
        names.sort();
        int idx = 0;
        String pfx = pkg + ".";
        while (idx < names.size()) {
            String name = names[idx];
            if (name.startsWith(pfx) && name.endsWith("Test")) {
                Class klass = Class.get(name);
                List<Method> methods = klass.getMethods();
                int jdx = 0;
                while (jdx < methods.size()) {
                    Method meth = methods[jdx];
                    String mname = meth.getName();
                    if (mname.startsWith("test") && meth.getParameters().size() == 0) {
                        Test test = new MethodTest(klass, meth);
                        if (test.match(filters)) {
                            tests.add(test);
                        } else {
                            filtered = filtered + 1;
                        }
                    }
                    jdx = jdx + 1;
                }
            }
            idx = idx + 1;
        }
    }

    void list() {
        int idx = 0;
        while (idx < tests.size()) {
            Test test = tests[idx];
            print(test.name);
            idx = idx + 1;
        }
    }

    @doc("Run the tests, return number of failures.")
    int run() {
        print(heading("starting tests"));

        int idx = 0;
        int failures = 0;
        while (idx < tests.size()) {
            Test test = tests[idx];
            test.start();
            test.run();
            test.stop();
            if (test.failures.size() > 0) {
                failures = failures + 1;
            }
            idx = idx + 1;
        }
        int passed = tests.size() - failures;

        print(heading("stopping tests"));
        String result = "Total: " + (tests.size() + filtered).toString() +
            ", Filtered: " + filtered.toString() +
            ", Passed: " + passed.toString() +
            ", Failed: " + failures.toString();

        if (failures > 0) {
            print(red(result));
        } else {
            print(green(result));
        }
        return failures;
    }

    void json_report() {
        print("=============================== json report ===============================");

        int idx = 0;
        JSONObject report = new JSONObject();
        while (idx < tests.size()) {
            JSONObject item = new JSONObject();
            Test test = tests[idx];
            int f = 0;
            JSONObject failures = new JSONObject();
            while (f < test.failures.size()) {
                failures.setListItem(f, test.failures[f]);
                f = f + 1;
            }
            item["name"] = test.name;
            item["checks"] = test.checks;
            item["failures"] = failures;
            report.setListItem(idx, item);
            idx = idx + 1;
        }
        print(report.toString());
    }
}

int testPackages(List<String> packages, List<String> filters, bool emitJson) {
    Harness h = new Harness("");
    int total_failures = 0;
    int idx = 0;
    while (idx < packages.size()) {
        h.pkg = packages[idx];
        h.collect(filters);
        idx = idx + 1;
    }

    total_failures = h.run();

    if (emitJson) {
        h.json_report();
    }

    return total_failures;
}

void run(List<String> args) {
    logging.makeConfig().setLevel("INFO").configure();
    String pkg = args[0];
    List<String> filters = [];
    bool qlist = false;
    bool json = false;
    int idx = 1;
    while (idx < args.size()) {
        String arg = args[idx];
        if (arg == "-l") {
            qlist = true;
        } else {
            if (arg == "--json") {
                json = true;
            } else {
                if (arg == "--unsafe") {
                    SafeMethodCaller.useSafeCalls = false;
                } else {
                    filters.add(arg);
                }
            }
        }
        idx = idx + 1;
    }
    if (qlist) {
        Harness h = new Harness(pkg);
        h.collect(filters);
        h.list();
    } else {
        print(bold("Running: " + " ".join(args)));
        int failures = testPackages([pkg], filters, json);
        if (failures > 0) {
            Context.runtime().fail("Test run failed.");
        }
    }
}

macro bool isJavascript() $java{false} $py{False} $rb{false} $js{true};

}}
