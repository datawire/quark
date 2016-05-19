namespace quark {
    namespace os {
        macro String _env_get(String varname)
            $java{System.getenv($varname)}
            $py{os.environ.get($varname)}
            $js{_qrt.env_get($varname)}
            $rb{ENV[$varname]}
            ;

        @doc("Class for interacting with the process environment")
        class Env {
            @doc("Fetch the value of an environment variable.")
            @doc("Returns null if the variable is not set.")
            static String get(String varname) {
                return _env_get(varname);
            }

            @doc("Fetch the value of $USER")
            static String getUser() {
                return get("USER");
            }

            @doc("Fetch the value of $HOME")
            static String getHome() {
                return get("HOME");
            }
        }
    }
}
