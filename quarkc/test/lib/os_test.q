import quark.test;

void main(List<String> args) {
    test.run(args);
}

class OsTest {
    void test_fs() {
        String home = quark.os.FS.userHomeDir();
        check(home != null, "Expected home directory not to be null");
        check(home != "", "Expected home directory not to be empty");

        quark.os.FileContents devnull = quark.os.FS.fileContents("/dev/null");
        check(devnull.isFinished(), "Expected /dev/null file read to finish synchronously");
        check(devnull.getError() == null, "Expected to read /dev/null successfully");
        check(devnull.value.size() == 0, "Expected empty /dev/null file");

        quark.os.FileContents passwd = quark.os.FS.fileContents("/etc/passwd");
        check(passwd.isFinished(), "Expected /etc/passwd file read to finish synchronously");
        check(passwd.getError() == null, "Expected to read /etc/passwd successfully");
        check(passwd.value.size() > 0, "Expected non-empty /etc/passwd file");

        quark.os.FileContents bogus = quark.os.FS.fileContents("/does/not/exist");
        check(bogus.isFinished(), "Expected bogus file read to finish synchronously");
        check(bogus.getError() != null, "Expected bogus file read to fail");
        check(bogus.getError().size() > 0, "Expected non-empty bogus file read error message");
    }

    void test_env() {
        String home = quark.os.FS.userHomeDir();
        String user = quark.os.Env.get("USER");
        String user2 = quark.os.Env.getUser();
        String nope = quark.os.Env.get("probably_not_set");

        checkEqual(user, user2);
        check(home.endsWith(user), "Expected $HOME to end with $USER (" + home + ", " + user + ")");
        check(nope == null, "Expected $probably_not_set to return null");
    }
}
