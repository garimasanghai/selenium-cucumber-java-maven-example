Feature: Login
        As a user I should able to login into my app

  Scenario: I login with valid credential
    Given I navigate to "http://the-internet.herokuapp.com/login"
    And I enter "tomsmith" into input field having id "username"
    And I enter "SuperSecretPassword!" into input field having id "password"
    When I click on element having class "radius"
    Then element having id "flash" should have partial text as "You logged into a secure area!"

  Scenario: Close browser
    Then I close browser
