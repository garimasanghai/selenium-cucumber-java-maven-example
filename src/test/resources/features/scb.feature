Feature: Login
        As a user I should able to login into my app

  @scb
  Scenario Outline: I login with valid credential
    Given I navigate to "<url>"
    And I wait for 5 sec
    When I enter "<fullname>" into input field having id "full_name-text_comp"
    And I enter "<Email>" into input field having id "email-text_comp"
    And I enter "<mobilenumber>" into input field having id "mobile_num-text_comp"
    #And I wait for 2 sec
    #clicking on the screen to enable the validation of mobile number to complete to enable next button
    And I click on element having id "info-component_ok-to-contact_wrapper"
    And I click on element having id "ember2028"
    #xpath also can be used -> Then I click on element having xpath "//*[@id='ember2028']/div/button[2]"
    #And I select "<Nationality>" option by text from dropdown having xpath "//*[@id='ember2133']/input"
    #And I enter "<Nationality>" into input field having id "ember2133"
    And I enter "<HKIDno>" into input field having id "hk_id_num-text_comp"
    And I forcefully click on element having id "date-component_dob-date_comp_wrapper"
    And I enter "<birthdate>" into input field having id "ember2121"
    And I enter "<month>" into input field having id "ember2122"
    And I enter "<year>" into input field having id "ember2123"
    And I forcefully click on element having id "visual-radio-component_male"
    And I enter "<streetname>" into input field having id "street_name-text_comp"
   	And I enter "<district>" into input field having xpath "//*[@id='ember2192']/input"
   	And I enter "<country>" into input field having id "ember2203"
    And I click on element having id "ember2028"
   
    Examples:
    |url|fullname|Email|mobilenumber|Nationality|HKIDno|birthdate|month|year|streetname|district|country|
    |https://www.sc.com/hk/save/integrated-deposits-account/apply/?gt=CASH_REBATE&pt=IDA|Shiv Kumar|shivkumar@gmail.com|98982020|HONG KONG SAR|A123456(3)|20|10|1988|street 1|CENTRAL|HONG KONG|
    