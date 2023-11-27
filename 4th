import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class DisplayFileWithLineNumbers {
    public static void main(String[] args) {
        String filename = "your_file.txt"; // Replace with your file name

        try (BufferedReader reader = new BufferedReader(new FileReader(filename))) {
            String line;
            int lineNumber = 1;

            while ((line = reader.readLine()) != null) {
                System.out.println(lineNumber + ": " + line);
                lineNumber++;
            }
        } catch (IOException e) {
            System.err.println("Error reading the file: " + e.getMessage());
        }
    }
}
