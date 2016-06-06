quark *;
namespace quark {

    @doc("A URL class.")
    class URL {

        static URL parse(String url) {
            URL result = new URL();
            if (url == null) {
                return null;
            }

            List<String> parts;
            String remaining;

            int idx = url.find("://");
            if (idx >= 0) {
                result.scheme = url.substring(0, idx);
                remaining = url.substring(idx + 3, url.size());
            } else {
                remaining = url;
            }

            int firstSlash = remaining.find("/");
            if (firstSlash == 0) {
                result.path = remaining;
                return result;
            }

            if (firstSlash < 0) {
                firstSlash = remaining.size();
            } else {
                result.path = remaining.substring(firstSlash, remaining.size());
            }

            idx = remaining.find(":");

            if (idx > firstSlash) {
                result.host = remaining.substring(0, firstSlash);
            } else {
                if (idx >= 0) {
                    result.host = remaining.substring(0, idx);
                    result.port = remaining.substring(idx + 1, firstSlash);
                } else {
                    result.host = remaining.substring(0, firstSlash);
                }
            }

            return result;
        }

        String scheme = null;
        String host = null;
        String port = null;
        String path = null;

        String toString() {
            String result = "";
            if (scheme != null) {
                result = scheme + "://";
            }
            if (host != null) {
                result = result + host;
            }
            if (port != null) {
                result = result + ":" + port;
            }
            if (path != null) {
                result = result + path;
            }
            return result;
        }

    }

}
