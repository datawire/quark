

void main() {
    Logger l = concurrent.Context.current().runtime().logger("logme");

    l.error("logme error");
}
