quark *;

void naked_return(List<String> log) {
    if (1 == 1) {
        return;
    }
    log.append("side effect executed after return. Oh no!");
}

void test_naked_return() {
    List<String> log = [];
    naked_return(log);
    assertEqual(0, log.size());
}
