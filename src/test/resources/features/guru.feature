Feature: Login 
         As a user I should be able to login into my app
 
Scenario: I login with valid credentials
   Given I navigate to homepage of guru
   Then I enter username into field having id
   And I enter password into field having id
   When I click on login having class
   And element with xpath should have text
   And I wait for 5 sec


Scenario: Close browser
 	 Then I close browser  