
interface Inter {
  void face();
}

void main(List<String> args) {
    Inter.face(); // obvious xfail
}
