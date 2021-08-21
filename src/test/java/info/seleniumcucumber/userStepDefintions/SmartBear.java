package info.seleniumcucumber.userStepDefintions;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import cucumber.api.java.en.Given;
import env.DriverUtil;
import info.seleniumcucumber.methods.BaseTest;

public class SmartBear implements BaseTest {
	public WebDriver webDriver = DriverUtil.getDefaultDriver ();

	@Given ("^I navigate to homepage of SmartBear$")
	public void I_navigate_to_homepage_of_SmartBear () throws Throwable {
		webDriver.get("https://www.seleniumeasy.com/test/basic-radiobutton-demo.html");
	}
	
	
	@Given ("^I will scroll down to element having name \"([^\"]*)\"$")
	public void I_will_scroll_down_to_element_having_name  ( String scroll1) throws Throwable {
		JavascriptExecutor jse = (JavascriptExecutor)webDriver;
		jse.executeScript("window.scrollBy(0,250)");
	}	


	@Given ("^I will select option from radio button having name$")
	public void I_will_select_option_from_radio_button_having_name () throws Throwable {
		 By by = By.name ("optradio");
		 WebElement webElement = webDriver.findElement(by);
		 webElement.sendKeys ("Male");
	}
}