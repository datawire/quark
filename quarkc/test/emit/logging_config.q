quark 0.6.100;
void main(List<String> args) {
    logging.makeConfig().setAppender(logging.stdout()).setLevel("DEBUG").configure();
    Logger l = new Logger("hello");
    l.trace("Should not see trace log");
    l.debug("Debug log");
    l.info("Info log");
    l.error("Error log");
}
