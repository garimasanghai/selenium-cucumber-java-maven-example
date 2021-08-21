Feature: Login
        As a user I should able to login into my app

	@happy
  Scenario Outline: I login with valid credential
    Given I navigate to "<url>"
    And I enter "<username>" into input field having id "id_userLoginId"
    And I wait for 1 sec
    And I enter "<password>" into input field having id "id_password"
    And I click on element having class "login-button"
    And element having class "account-section-heading" should have partial text as "MEMBERSHIP & BILLING"
    # The below steps do not work well. We will do it later
    And I click on element having class "account-secondary-navigation"
    Then I hover over element having class "account-secondary-navigation"
    
    Examples:
    |url|username|password|
    |https://www.netflix.com/sg/login?nextpage=https%3A%2F%2Fwww.netflix.com%2FYourAccount|baghelshivkumar@gmail.com|file2020|
    
  @happy
  Scenario: close the browser
    Then I close browser
    
    