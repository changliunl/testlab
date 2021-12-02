*** Settings ***
Documentation
...    Use www.ah.nl
...    Create a test to search for ingredients
...    Use special requirements such as gluten free
...    Verify that the found ingredients do satisfy the requirements
...    Then put these ingredients into the shopping cart
...    Purpose: Make use of learned SeleniumLibrary keywords and different element locating technique

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test