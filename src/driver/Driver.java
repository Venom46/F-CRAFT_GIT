package driver;
import com.github.lalyos.jfiglet.FigletFont;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import java.io.IOException;
public class Driver {
    public static void main(String[] args) throws IOException {
        String asciiArt = FigletFont.convertOneLine("LB  FRAMEWORK");
        String asciiArt1 = FigletFont.convertOneLine("------ AUTHOR LAVANYA---");
        System.out.println(asciiArt1);
        System.out.println(asciiArt);
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();
        driver.manage().window().maximize();
        System.out.println("Chrome is opened & maximized");
        driver.get("https://www.google.com");
        driver.close();
        driver.quit();
    }
}