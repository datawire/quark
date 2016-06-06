quark *;
include io/datawire/quark/runtime/Os.java;

namespace quark {
    namespace os {
        class OSError extends Error {}

        class FileContents extends concurrent.Future {
            String value;
        }

        macro void _get_file_contents(String path, FileContents result)
            $java{io.datawire.quark.runtime.Os.getFileContents(($path), ($result))}
            $py{_get_file_contents(($path), ($result))}
            $js{_qrt.getFileContents(($path), ($result))}
            $rb{::DatawireQuarkCore.getFileContents(($path), ($result))}
            ;

        macro String _user_homedir()
            $java{System.getProperty("user.home")}
            $py{os.path.expanduser("~")}
            $js{_qrt.userHomeDir()}
            $rb{Dir.home()}
            ;

        @doc("Read the entire contents of a file into a String. Assume UTF-8 encoding.")
        @doc("Returns a FileContents Future instance.")
        @doc("if result.getError() is null then result.value has the file contents.")
        FileContents readFileAsString(String path) {
            FileContents result = new FileContents();
            _get_file_contents(path, result);
            return result;
        }

        @doc("Return the path to the current user's home directory")
        String getUserHomeDir() {
            return _user_homedir();
        }

        macro String _env_get(String varname)
            $java{System.getenv($varname)}
            $py{os.environ.get($varname)}
            $js{_qrt.env_get($varname)}
            $rb{ENV[$varname]}
            ;

        @doc("Class for interacting with the process environment")
        class Environment {
            @doc("Singleton for interacting with the process environment")
            static Environment ENV = new Environment();

            @doc("Retrieve the Environment singleton")
            static Environment getEnvironment() {
                return ENV;
            }

            @doc("Fetch the value of an environment variable.")
            @doc("Returns null if the variable is not set.")
            String __get__(String key) {
                return _env_get(key);
            }

            @doc("Fetch the value of an environment variable.")
            @doc("Returns the specified default if the variable is not set.")
            String get(String key, String default_value) {
                String value = _env_get(key);
                if (value == null) {
                    return default_value;
                }
                return value;
            }

            @doc("Fetch the value of $USER")
            static String getUser() {
                return _env_get("USER");
            }
        }
    }
}
