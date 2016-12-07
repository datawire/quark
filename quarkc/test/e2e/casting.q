interface HasFace {
    String getFace();
}

class Bob extends HasFace {
    String getFace() {
        return "Bob's face";
    }

    bool __eq__(Bob other) {
        return true;
    }
}

void test() {
    HasFace hf = new Bob();
    assertEqual("Bob's face", hf.getFace());

    Bob aBob = ?hf;
    assertEqual("Bob's face", aBob.getFace());

    hf = ?aBob;
    assertEqual("Bob's face", hf.getFace());
}
