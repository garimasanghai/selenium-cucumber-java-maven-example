Feature: Login
        As a user I should able to login into my app

  
  Scenario Outline: I login with valid credential
    Given I navigate to "<url>"
    And I click on element having class "sc-hdr__login-btn"
    And I click on element having class "sc-minimgnv__link" 
    And I wait for 1 sec
    Then I enter "<username>" into input field having name "j_username"
    And I enter "<password>" into input field having id "j_password"
     And I wait for 2 sec
    And I click on element having name "Login"
    And I wait for 2 sec
    
    Examples:
    |url|username|password|
    |https://www.sc.com/hk/|baghelshivkumar|file2020|
    
 
  Scenario: close the browser
    Then I close browser
    
    