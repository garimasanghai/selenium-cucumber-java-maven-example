Feature: Login
        As a user I should able to login into my app

  
  Scenario Outline: I login with valid credential
    Given I navigate to "<url>"
    And I wait for 6 sec
    Then I enter "<firstname>" into input field having id "firstName"
    And I enter "<lastname>" into input field having id "lastName"
    And I enter "<username>" into input field having id "username"
    And I wait for 2 sec
    And I enter "<password>" into input field having name "Passwd"
    And I enter "<confirmpassword>" into input field having name "ConfirmPasswd"
    Then I forcefully click on element having class "VfPpkd-RLmnJb"
		And I wait for 2 sec
    
    Examples:
    |url|firstname|lastname|username|password|confirmpassword|
    |https://accounts.google.com/signup/v2/webcreateaccount?continue=https%3A%2F%2Fwww.google.com%2Fsearch%3Fq%3Dgmail%2Bapply%2Bfilter%2Bto%2Bexisting%2Bmail%26oq%3Dgmail%2Bapply%26aqs%3Dchrome.0.0j69i57j0l8.3397j0j7%26sourceid%3Dchrome%26ie%3DUTF-8&hl=en&gmb=exp&biz=false&flowName=GlifWebSignIn&flowEntry=SignUp|Shiv|Kumar|shivkumar44333432|2020|2020|
    