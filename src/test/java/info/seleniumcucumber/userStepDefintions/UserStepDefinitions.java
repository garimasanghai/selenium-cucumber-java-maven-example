package info.seleniumcucumber.userStepDefintions;
import java.util.function.Function;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import env.DriverUtil;
import info.seleniumcucumber.methods.BaseTest;


public class UserStepDefinitions implements BaseTest {
	
	public WebDriver webDriver = DriverUtil.getDefaultDriver();
	
	@Given("^I should get logged-in dupli$")
	public void i_should_get_logged_in_dupli() {
		String idName = "flash";
		By selection = By.id(idName);
		WebDriverWait webDriverWait = new WebDriverWait(webDriver, 30);
		Function func = ExpectedConditions.visibilityOfElementLocated(selection);
		//Step1: this will make the execution wait until the flash is shown on the browser
		webDriverWait.until(func);
		//Step2: flash element is identified for use
		WebElement webElement = webDriver.findElement(selection);
		//Step3: get the value of the text inside this element on the screen
		String msg = webElement.getText();
		String secondLineTrimmed = null;
		if(!msg.isEmpty()) {
			System.out.println(msg);
			//this will get the 3 lines into an array
			String[] msgArray = msg.split("\n");
			//this will take the second line as array index starts with 0
			String secondLine = msgArray[1];
			//will trim the leading and trailing spaces 
			secondLineTrimmed = secondLine.trim();
		}
		//Step4: check if this is matching with what is expected
		Assert.assertEquals("You logged into a secure area!", secondLineTrimmed);
	}
	
	@Given("^I should get logged-in having id \"([^\"]*)\"$")
	public void i_should_get_logged_in_having_id (String flash) {
		By by = By.id(flash);
		WebDriverWait webDriverWait = new WebDriverWait(webDriver, 30);
		//Step1: this will make the execution wait until the flash is shown on the browser
		webDriverWait.until(ExpectedConditions.visibilityOfElementLocated(by));
		//Step2: flash element is identified for use
		WebElement webElement = webDriver.findElement(by);
		//Step3: get the value of the text inside this element on the screen
		String msg = webElement.getText();
		String secondLineTrimmed = null;
		if(!msg.isEmpty()) {
			System.out.println(msg);  
			//this will get the 3 lines into an array
			String[] msgArray = msg.split("\n");
			//this will take the second line as array index starts with 0
			String secondLine = msgArray[1];
			//will trim the leading and trailing spaces 
			secondLineTrimmed = secondLine.trim();
		}
		//Step4: check if this is matching with what is expected
		Assert.assertEquals("You logged into a secure area!", secondLineTrimmed);
	}
	@Given("^I am on homepage of \"([^\"]*)\"$")
	public void iamonhomepage_of (String url) {
		webDriver.get(url);
	}	 

	@Given("^I enter username \"([^\"]*)\" having id \"([^\"]*)\"$")
	public void i_enter_username_having_id (String username, String idusername) {
	By by = By.id(idusername);
	WebElement webElement = webDriver.findElement(by);
	webElement.sendKeys(username);
	}
	
	@When("^I enter password \"([^\"]*)\" having id \"([^\"]*)\"$")
	public void i_enter_password_having_id (String password, String idpassword) {
	By by = By.id(idpassword);
	WebElement webElement = webDriver.findElement(by);
	webElement.sendKeys(password);
	}
	
	@Given("^I click on login button having class \"([^\"]*)\"$")
	public void i_click_on_login_button_having_class(String classlogin) {
	WebElement webElement= webDriver.findElement(By.className(classlogin));
	webElement.click();

	}
}