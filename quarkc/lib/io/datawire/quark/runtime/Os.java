package io.datawire.quark.runtime;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.charset.StandardCharsets;
import java.io.IOException;

import quark.os.FileContents;

public class Os {
    public static void getFileContents(String path, FileContents result) {
        try {
            byte[] encoded = Files.readAllBytes(Paths.get(path));
            String content = new String(encoded, StandardCharsets.UTF_8);
            result.value = content;
            result.finish(null);
        } catch (IOException exc) {
            result.finish(exc.getMessage());
        }
    }
}
