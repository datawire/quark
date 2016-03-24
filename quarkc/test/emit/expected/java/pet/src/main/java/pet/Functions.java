package pet;

public class Functions {

    static pet_md.Root root = new pet_md.Root();


    public static void main() {
        pets.Pet evil = new pets.Cat();
        pets.Pet good = new pets.Dog();
        (evil).greet();
        (good).greet();
    }
}
