// xfail as all backends have different logging systems

void main() {
    Logger l = concurrent.Context.current().runtime().logger("logme");

    l.error("logme error");

    Logger sweet = new Logger("logthat");
    sweet.error("nice");
}
