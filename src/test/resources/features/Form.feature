Feature: Login
         As a user I should be able to login into my app

Scenario: I login with valid credentials
   Given I navigate to "https://www.seleniumeasy.com/test/input-form-demo.html"
   Then I enter "garima" into input field having name "first_name"
   And I enter "garg" into input field having name "last_name"
   And I enter "garima.sanghai@gmail.com" into input field having name "email"
   And I enter "0012345678" into input field having name "phone"
   And I enter "21 The Santorini" into input field having name "address"
   And I enter "abcde" into input field having name "city"
   Then I scroll to element having name "state"
   And I select "Arizona" option by text from dropdown having name "state"
   And I enter "98765" into input field having name "zip"
   And I enter ".com" into input field having name "website"
   #Then I select "hihihi" option by value from radio button group having name "hosting"
   Then I enter "gbjyghjgubjjhbj" into input field having name "comment"
   Then I select radio button having class "btn-default"
   And I wait for 5 sec
   
Scenario: Close browser
 	 Then I close browser  