macro void print(Any o) $java{
    System.out.println($o);
}
$python{
    import sys
    sys.stdout.write("%s\n" % o)
}
$ruby{
    puts(o)
}
$go{
    fmt.Println(o)
}
$javascript{
    console.log(o)
};

macro int exp(int a, int b) $java{
    return (int) Math.pow(a, b);
}
$javascript{
    return Math.pow(a, b);
}
$python{
    return a**b
}
$ruby{
    return a**b
}
$go{
    return Exp(a, b)
};

void testprint() {
    print(unsafe("yay, it works!!!"));
    assertEqual(1, 1);
}

void testexp() {
    assertEqual(8, exp(2, 3));
    print(unsafe("the exponent is: " + unsafe(exp(2, 3)).asString()));
}
