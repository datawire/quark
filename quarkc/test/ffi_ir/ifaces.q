interface Config {
    String get(String key);
}

class DefaultConfig extends Config {
    String get(String key) {
        if (key == "TEST") {
            return "blah";
        }
        return "bleh";
    }
}


void doit() {
    Config conf = new DefaultConfig();
    assertEqual("blah", conf.get("TEST"));
}
