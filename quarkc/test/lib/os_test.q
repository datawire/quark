import quark.test;

void main(List<String> args) {
    test.run(args);
}

class OsTest {
    void test_env() {
        String home = quark.os.Env.get("HOME");
        String home2 = quark.os.Env.getHome();
        String user = quark.os.Env.get("USER");
        String user2 = quark.os.Env.getUser();
        String nope = quark.os.Env.get("probably_not_set");

        checkEqual(home, home2);
        checkEqual(user, user2);
        check(home.endsWith(user), "Expected $HOME to end with $USER (" + home + ", " + user + ")");
        check(nope == null, "Expected $probably_not_set to return null");
    }
}
