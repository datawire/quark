package petstore 1.2.3;
import builtin.concurrent;

namespace petstore {

    class Pet extends Future {
        int id;
        Category category;
        String name;
        List<Tag> tags;
        List<String> photoUrls;
        String status;
    }

    class Category extends Future {
        int id;
        String name;
    }

    class Tag  extends Future {
        int id;
        String name;
    }

    class Response extends Future {
        int code;
        String type;
        String message;
    }

    // XXX: we should add something like this to builtin stuff
    class FList<T> extends Future {
        List<T> list;
    }

    // XXX: we need to add an API for file upload
    class File {}

    interface Pets extends Service {

        static float timeout = 10.0;
        static int failureLimit = 3;
        static float retestDelay = 30.0;

        void create(Pet pet) {
            self.rpc("create", [pet]);
        }

        Pet get(int petId) {
            return ?self.rpc("get", [petId]);
        }

        void update(int petId, String name, String status) {
            self.rpc("update", [petId, name, status]);
        }

        void delete(int petId) {
            self.rpc("delete", [petId]);
        }

        void uploadImage(int petId, String additionalMetadata, File file) {
            //self.rpc("uploadImage", [petId, additionalMetadata], file=file);
            self.rpc("uploadImage", [petId, additionalMetadata]);
        }

        FList<Pet> findByStatus(List<String> query) {
            return ?self.rpc("findByStatus", [query]);
        }

        FList<Pet> findByTags(List<String> tags) {
            return ?self.rpc("findByTags", [tags]);
        }

    }

    class PetClient extends Client, Pets {}

    class PetServer extends Server<Pets> {}

}
