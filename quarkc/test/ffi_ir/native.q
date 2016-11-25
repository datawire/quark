void printany(Any o);
int pow(int a, int b);

void printany(Any o) for java {
    System.out.println($o);
}
void printany(Any o) for python
import "sys"
{
    sys.stdout.write("%s\n" % o)
}
void printany(Any o) for ruby {
    puts(o)
}
void printany(Any o) for go
import "fmt"
{
    fmt.Println(o)
}
void printany(Any o) for javascript {
    console.log(o)
}

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
    printany(unsafe("yay, it works!!!"));
    assertEqual(1, 1);
}

void testpow() {
    assertEqual(8, pow(2, 3));
    printany(unsafe("the result is: " + unsafe(pow(2, 3)).asString()));
}
