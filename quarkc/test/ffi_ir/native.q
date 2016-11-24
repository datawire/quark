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

void test() {
    print(unsafe("yay, it works!!!"));
    assertEqual(1, 1);
}
