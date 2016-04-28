package dokmee.dokmeecloud;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.PendingException;
import cucumber.api.java.After;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class testingloginsteps {
	
	private static final int LOAD = 30;
	WebDriver driver = null;
	@After
	public void afterScenario() {
	  driver.quit();
	}

	//@Before
@Given("^User at login page$")
//@SuppressWarnings("deprecation")
public void user_at_login_page() throws Throwable {
    driver = new FirefoxDriver();
    driver.get("http:www.dokmeecloud.com");
    WebDriverWait wait = new WebDriverWait(driver,LOAD); 
    By id = By.id("btnLogin");
	wait.until(ExpectedConditions.elementToBeClickable(id));
    assertNotNull(driver.findElement(id));
    assertEquals("Sign In",driver.findElement(id).getText());
    
  
}
@Then ("^'(.*)' message will display at '(.*)'$")
public void check_message(String message,String xpath){
	WebElement findElement = driver.findElement(By.xpath(xpath));
	String text = findElement.getText();
	assertEquals(message,text);
	
}
/*
@When("^I click on (.*) (.*)$")
public void i_click_on_Log_In_button(String buttonname, String method)  {
	//assertTrue(false);
	//i added the following for wait to findelement: 
	  WebDriverWait wait = new WebDriverWait(driver,LOAD); 
	  By by=null;
	  if("button".equals(method)) {  
	  by = By.id(buttonname); }
	  if("xpath".equals(method)) { 
		  by = By.xpath(buttonname); }
		wait.until(ExpectedConditions.elementToBeClickable(by));
		// to check the time when user click on submit button or any button
		long start = System.currentTimeMillis();
	 driver.findElement(by).click();
	 //the time end after user click on submit 
	 long end = System.currentTimeMillis();
	  System.out.println("the time for click is ="+(end-start));
	assertTrue(end - start < 5000);
	FileWriter fstream;
	BufferedWriter out= null;
	try {
		fstream = new FileWriter("time_for_clicking.txt", true);
		 out = new BufferedWriter(fstream);

	    out.write("the time for click is ="+(end-start));
	    
		} 
	catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   
    //Close the output stream
    try {
    	if(out != null)
		out.close();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
*/

@When("^I click on (.*) cssSelector$")
public void click_on_cssSelectoer(String css) throws Throwable {
	 WebDriverWait wait = new WebDriverWait(driver,LOAD); 
	  By selector = By.cssSelector(css);
			wait.until(ExpectedConditions.elementToBeClickable(selector));
	 driver.findElement(By.cssSelector(css)).click();
}

@Then("^Please enter your username message will display$")
public void please_enter_your_username_message_will_display() throws Throwable {
    
}

@When("^I enter (.*) in the (.*)$")
public void i_enter_in_the_Email_txt_box(String emailaddress,String boxname) throws Throwable {
	  WebDriverWait wait = new WebDriverWait(driver,LOAD); 
	  By id = By.id(boxname);
		wait.until(ExpectedConditions.elementToBeClickable(id));
	 driver.findElement(By.id(boxname)).sendKeys(emailaddress);
}

@When("^I enter SuckOS(\\d+) in Password_txt_box$")
public void i_enter_SuckOS_in_Password_txt_box(int arg1) throws Throwable {
	driver.findElement(By.id("password")).sendKeys("SuckOS"+arg1);
}


@Then("^File cabinet page display$")
public void file_cabinet_page_display() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}


}
