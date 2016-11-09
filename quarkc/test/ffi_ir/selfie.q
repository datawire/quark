// XXX: had to rename file from self.q for ruby

class C {
    String field;

    String getSelf() {
        return field;
    }

    void setSelf(String field) {
        self.field = field;
    }

    String getField() {
        return field;
    }

    void setField(String s) {
        field = s;
    }
}

void selfie() {
    C c = new C();
    c.setSelf("asdf");
    assertEqual("asdf", c.getSelf());
    assertEqual("asdf", c.getField());
    c.setField("fdsa");
    assertEqual("fdsa", c.getSelf());
    assertEqual("fdsa", c.getField());
}
