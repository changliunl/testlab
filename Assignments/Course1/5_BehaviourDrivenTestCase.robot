*** Settings ***
Documentation    Learn to create test cases with different styles
Library    SeleniumLibrary
Force tags    BDD style test case
Test setup    run keywords
...    open browser    http://www.google.com    Chrome    AND
...    click element    css:button[id=L2AGLb]
Test teardown    close browser

*** Test Cases ***
Create a test case with BDD style
    Given I am on google homepage
    When I search for    robot framework
    Then I should see a list of search results
    And Clicking on top result should take me to robot framework official website

*** Keywords ***
I am on google homepage
    No operation

I search for
    [Arguments]    ${search_item}
    input text    css:input[title=Zoeken]    ${search_item}
    Press keys    css:input[title=Zoeken]    RETURN

I should see a list of search results
    ${result}    get element count    css:div[id=search] a[href]
    should be true    ${result}>10

Clicking on top result should take me to robot framework official website
    click element    css:a[href="https://robotframework.org/"]
    element should be visible    css:button[name="go-to-Getting started"]
