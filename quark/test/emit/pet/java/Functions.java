public class Functions {
    public static void main() {
        pets.Pet evil = (pets.Pet) (new pets.Cat());
        pets.Pet good = (pets.Pet) (new pets.Dog());
        (evil).greet();
        (good).greet();
    }
    public static void main(String[] args) {
        main();
    }
}