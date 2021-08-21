package info.seleniumcucumber.userStepDefintions;

import java.util.function.Function;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.java.en.Given;
import env.DriverUtil;
import info.seleniumcucumber.methods.BaseTest;

public class Gguru implements BaseTest{
public WebDriver webDriver = DriverUtil.getDefaultDriver();


@Given("^I navigate to homepage of guru$")
	public void I_navigate_to_homepage_of_guru () throws Throwable{
	webDriver.get("http://demo.guru99.com/test/login.html");
}

@Given("^I enter username into field having id$")
	public void I_enter_username_into_field_having_id () throws Throwable{
	 By by = By.id ("email");
	 WebElement webElement = webDriver.findElement(by);
	 webElement.sendKeys ("abcd@gmail.com");
}

@Given("^I enter password into field having id$")
	public void I_enter_password_into_field_having_id () throws Throwable{
	 By by = By.id("passwd");
	 WebElement webElement = webDriver.findElement (by);
	 webElement.sendKeys ("abcdefghikjl");
}

@Given("^I click on login having class$")
	public void I_click_on_login_having_class () throws Throwable{
	 By by = By.id("SubmitLogin");
	 WebElement webElement = webDriver.findElement(by);
	 webElement.click();
	 }

@Given("^element with xpath should have text$")
	public void element_with_xpath_should_have_text () throws Throwable{
	By by = By.xpath ("/html/body/div[2]/div/div/h3");
	WebDriverWait webDriverWait = new WebDriverWait(webDriver, 10);
	Function func = ExpectedConditions.visibilityOfElementLocated(by);
	webDriverWait.until(func);
	WebElement webElement = webDriver.findElement(by);
	String msg = webElement.getText();
	String secondLineTrimmed= null;
	if(!msg.isEmpty()) {
		System.out.println("@@@@"+msg+"@@@@@");
		secondLineTrimmed= msg.trim();
		Assert.assertEquals("Successfully Logged in...", secondLineTrimmed);
		}
	}

}






















