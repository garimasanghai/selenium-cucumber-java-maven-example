Feature: 	Login
       		As a user I should able to login into my app
 
 Scenario: 	I login with valid credential
    Given 	I navigate to "https://accounts.google.com/ServiceLogin/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
      And 	I enter "crispycherry4u" into input field having class "identifierId"
      And 	I click on element having class "VfPpkd-RLmnJb"
      And 	I enter "rs18051965" into input field having class "whsOnd zHQkBf"
     When 	I click on element having class "VfPpkd-RLmnJb"
     Then 	I should see page title having partial text as "Successfully Logged in"

 Scenario: 	Close browser
     Then 	I close browser 
 		
 		