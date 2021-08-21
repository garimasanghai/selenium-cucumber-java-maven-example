Feature: Login
         As a uder i should be able to log into my app
         
Scenario Outline: I login with valid credentials 
Given I navigate to homepage of SmartBear
And I wait for 2 sec
And I will scroll down to element having name "<scroll1>"
And I wait for 2 sec
Then I select "Female" option by value from radio button group having name "gender"
And I wait for 2 sec
#Then I will select option from radio button having name
When I click on element having xpath "//*[@id='buttoncheck']" 
#Then element having id "buttoncheck" should have partial text as "Male is checked"
#And element having class "radiobutton" should have text as "Radio button 'Male' is checked"
#When I scroll to element having xpath "//*[@id="easycont"]/div/div[2]/div[2]/div[1]"
#And option "Female" by value from radio button group having name "gender" should be selected
#Then I select "Female" option by text from radio button group having name "gender"
#Then I select "15 - 50" option by text from radio button group having name "ageGroup"
#And I click on element having xpath "//*[@id="easycont"]/div/div[2]/div[2]/div[2]/button"
#And element having class "groupradiobutton" should have text as "Sex : Female"


Examples:
|scroll1|
|optradio|


Scenario: Close browser
	Then i close browser