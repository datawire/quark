quark *;
import quark.test;

void main(List<String> args) {
    test.run(args);
}

class OsTest {
    void test_fs() {
        String home = quark.os.getUserHomeDir();
        check(home != null, "Expected home directory not to be null");
        check(home != "", "Expected home directory not to be empty");

        quark.os.FileContents devnull = quark.os.readFileAsString("/dev/null");
        check(devnull.isFinished(), "Expected /dev/null file read to finish synchronously");
        check(devnull.getError() == null, "Expected to read /dev/null successfully");
        check(devnull.value.size() == 0, "Expected empty /dev/null file");

        quark.os.FileContents passwd = quark.os.readFileAsString("/etc/passwd");
        check(passwd.isFinished(), "Expected /etc/passwd file read to finish synchronously");
        check(passwd.getError() == null, "Expected to read /etc/passwd successfully");
        check(passwd.value.size() > 0, "Expected non-empty /etc/passwd file");

        quark.os.FileContents bogus = quark.os.readFileAsString("/does/not/exist");
        check(bogus.isFinished(), "Expected bogus file read to finish synchronously");
        check(bogus.getError() != null, "Expected bogus file read to fail");
        check(bogus.getError().getMessage().size() > 0, "Expected non-empty bogus file read error message");
    }

    void test_env_getenv() {
        String home = quark.os.getUserHomeDir();

        quark.os.Environment env = quark.os.Environment.getEnvironment();

        String user = env["USER"];
        String user2 = env.getUser();

        String nope = env["probably_not_set"];
        String defVal = env.get("probably_not_set_too", "default");

        checkEqual(user, user2);
        check(home.endsWith(user), "Expected $HOME to end with $USER (" + home + ", " + user + ")");
        check(nope == null, "Expected $probably_not_set to return null");
        check(defVal == "default", "Expected default value for $probably_not_set_too");
    }

    void test_env_direct() {
        String home = quark.os.getUserHomeDir();

        String user = quark.os.Environment.ENV["USER"];
        String user2 = quark.os.Environment.ENV.getUser();

        String nope = quark.os.Environment.ENV["probably_not_set"];
        String defVal = quark.os.Environment.ENV.get("probably_not_set_too", "default");

        checkEqual(user, user2);
        check(home.endsWith(user), "Expected $HOME to end with $USER (" + home + ", " + user + ")");
        check(nope == null, "Expected $probably_not_set to return null");
        check(defVal == "default", "Expected default value for $probably_not_set_too");
    }
}
