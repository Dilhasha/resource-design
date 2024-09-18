package resource.reader;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;

public class App {

    public static void main(String[] args) {
    }

    public static String readResource(String fileName) throws IOException {
        return getStringFromInputStream(App.class.getClassLoader().getResourceAsStream(fileName));
    }

    public static String getStringFromInputStream(InputStream is) throws IOException {
        try (BufferedReader br = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8))) {
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line);
                sb.append("\n");
            }
            return sb.toString();
        }
    }

}
