void test() {
    x = ${this is directly emitted};
    y = ${this is directly emitted with $substitution};
    z = ${this is directly emitted{} with {$substitution}};
    a = ${ this is a test{ of $asdf $fdsa  {} } };
}
