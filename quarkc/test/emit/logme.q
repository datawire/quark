// xfail:java   default layout is too verbose
// xfail:py     logging is not initialized

void main(List<String> args) {
    Logger l = concurrent.Context.current().runtime().logger("logme");

    l.error("logme error");

    Logger sweet = new Logger("logthat");
    sweet.error("nice");
}
