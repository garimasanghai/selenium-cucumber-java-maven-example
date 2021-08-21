Feature: Login 
         As a user I should be able to login into my app
 
Scenario: I login with valid credentials
   Given I navigate to "https://selenium-cucumber.github.io/"
   Then I select "M" option by value from radio button group having name "radio_gender"
   And I wait for 5 sec
   Then I enter username into field having id
   And I enter password into field having id
   When I click on login having class
   And element with xpath should have text
   And I wait for 5 sec


Scenario: Close browser
 	 Then I close browser  