Feature: Login
        As a user I should able to login into my app
 
 Scenario Outline: I login with valid credential
 		Given I am on homepage of "<url>"
    And I enter username "<username>" having id "<idusername>"
    And I enter password "<password>" having id "<idpassword>"
    When I click on login button having class "<classlogin>"
    Then I should get logged-in having id "<loggedin>"
    
 Examples:
 |url|username|idusername|password|idpassword|classlogin|loggedin|
 |http://the-internet.herokuapp.com/login|tomsmith|username|SuperSecretPassword!|password|radius|flash|
 
 Scenario: Close browser
 		Then I close browser 
 		
 