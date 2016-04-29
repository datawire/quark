void check(bool condition) {
    if (condition) { print("."); } else { print("F"); }
}

void main(List<String> args) {
    check(0b0111.bitwise_not() == -0b1000);
    check(0b1111_0000.bitwise_or(0b1010_1010) == 0b1111_1010);
    check(0b1111_0000.bitwise_xor(0b1010_1010) == 0b0101_1010);
    check(0b1111_0000.bitwise_and(0b1010_1010) == 0b1010_0000);

    byte b = 0b0111;
    check(b.bitwise_not() == -0b1000);
}
