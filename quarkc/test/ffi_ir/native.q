int pow(int a, int b);

int pow(int a, int b) for java {
    return (int) Math.pow(a, b);
}
int pow(int a, int b) for javascript {
    return Math.pow(a, b);
}
int pow(int a, int b) for python {
    return a**b
}
int pow(int a, int b) for ruby {
    return a**b
}
int pow(int a, int b) for go
import "math"
{
    return int(math.Pow(float64(a), float64(b)))
}

void testprintany() {
    print(unsafe("yay, it works!!!"));
    assertEqual(1, 1);
}

void testpow() {
    assertEqual(8, pow(2, 3));
    print(unsafe("the result is: " + unsafe(pow(2, 3)).asString()));
}

primitive imaginary
for java {int}
for go {int}
for python {int}
for ruby {Integer}
for javascript {}
{

    imaginary(int n);

    bool __eq__(imaginary o);

    bool __ne__(imaginary o);

    imaginary __add__(imaginary o);

}

imaginary imaginary___init__(int n);

imaginary imaginary___init__(int n) for go {
    return n;
}
imaginary imaginary___init__(int n) for ruby {
    return n
}
imaginary imaginary___init__(int n) for python {
    return n
}
imaginary imaginary___init__(int n) for java {
    return n;
}
imaginary imaginary___init__(int n) for javascript {
    return n
}

void testimaginary() {
    imaginary x = new imaginary(3);
    assertEqual(1 + 2, x);
}


void testlist() {
    List<int> li = [];
    List<String> ls = [];
    assertEqual(0, li.size());
    assertEqual(0, ls.size());
    li.append(3);
    ls.append("pi");
    assertEqual(1, li.size());
    assertEqual(1, ls.size());
    assertEqual(3, li[0]);
    assertEqual("pi", ls[0]);
    print(unsafe("--"));
    print(unsafe(ls[0]));
    print(unsafe("--"));
    print(unsafe(li[0]));
}

class Foo {}

void testlistfoo() {
    List<Foo> foos = [new Foo()];
    assertEqual(1, foos.size());
}


void testint_null() {
    int nuffin; // quark vars should initialize to nil value
    assertEqual(nuffin, 0);
}

void testint__eq__() {
    assertEqual(true, 0 == 0);
    assertEqual(false, 0 == 1);
    assertEqual(false, 1 == 0);
    assertEqual(true, 1 == 1);
}

void testint__ne__() {
    assertEqual(false, 0 != 0);
    assertEqual(true, 0 != 1);
    assertEqual(true, 1 != 0);
    assertEqual(false, 1 != 1);
}

void testint__add__() {
    assertEqual(0, 0 + 0);
    assertEqual(1, 0 + 1);
    assertEqual(1, 1 + 0);
    assertEqual(2, 1 + 1);
    assertEqual(42, 23 + 19);
}

void testint__sub__() {
    assertEqual(0, 0 - 0);
    assertEqual(-1, 0 - 1);
    assertEqual(1, 1 - 0);
    assertEqual(0, 1 - 1);
    assertEqual(42, 64 - 22);
}

void testint__neg__() {
    int zero = 0;
    assertEqual(0, -zero);
    int one = 1;
    assertEqual(-1, -one);
    int neg = -1;
    assertEqual(1, -neg);
}

void testint__ge__() {
    assertEqual(true, 0 >= 0);
    assertEqual(true, 1 >= 0);
    assertEqual(false, 0 >= 1);
}

void testint__le__() {
    assertEqual(true, 0 <= 0);
    assertEqual(false, 1 <= 0);
    assertEqual(true, 0 <= 1);
}

void testint__gt__() {
    assertEqual(false, 0 > 0);
    assertEqual(true, 1 > 0);
    assertEqual(false, 0 > 1);
}

void testint__lt__() {
    assertEqual(false, 0 < 0);
    assertEqual(false, 1 < 0);
    assertEqual(true, 0 < 1);
}
