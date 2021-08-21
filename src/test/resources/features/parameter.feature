Feature: Opening multiple pages
 
  Scenario Outline: this will run multiple times based on examples below
    Given I navigate to "<url>"
 
    Examples:
    |url|
    |http://google.com/|
    |http://facebook.com/|
    |https://www.netflix.com/sg/login?nextpage=https%3A%2F%2Fwww.netflix.com%2FYourAccount|