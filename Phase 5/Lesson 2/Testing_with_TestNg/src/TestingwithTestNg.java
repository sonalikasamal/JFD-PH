import org.testng.annotations.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class TestingwithTestNg {
	@Test
	public void register() {
	      WebDriver wd=new ChromeDriver();
	      wd.manage().window().maximize();
	      wd.get("https://www.amazon.in/");
	      wd.findElement(By.id("nav-link-accountList")).click();
	      wd.findElement(By.id("createAccountSubmit")).click();
	      wd.findElement(By.id("ap_customer_name")).sendKeys("ABCDEF");
	      wd.findElement(By.id("ap_email")).sendKeys("ABCDEF@gmail.com");
	      wd.findElement(By.id("ap_password")).sendKeys("12345678");
	      wd.findElement(By.id("ap_password_check")).sendKeys("12345678");

	     
	  }
	@Test
	public void login() {
	      WebDriver wd=new ChromeDriver();
	      wd.manage().window().maximize();
	      wd.get("https://www.amazon.in/");
	      wd.findElement(By.id("nav-link-accountList")).click();
	      wd.findElement(By.id("ap_email")).sendKeys("ABCDEF@gmail.com");
		  wd.findElement(By.id("continue")).click();
	      wd.findElement(By.id("ap_password")).sendKeys("12345678");


	  }
	  @Test
	public void addToCart() throws InterruptedException {
		  	WebDriver wd=new ChromeDriver();
	      	wd.get("https://www.amazon.in/");
		    System.out.println(wd.getTitle());
		    System.out.println(wd.getCurrentUrl());
		    wd.findElement(By.id("twotabsearchtextbox")).sendKeys("Samsung mobiles");
		    Thread.sleep(5000);
		    wd.findElement(By.id("nav-search-submit-button")).submit();
		    wd.findElement(By.linkText("Samsung Galaxy M52 5G (Blazing Black, 6GB RAM, 128GB Storage) Latest Snapdragon 778G 5G | sAMOLED 120Hz Display")).click();
	  }

}