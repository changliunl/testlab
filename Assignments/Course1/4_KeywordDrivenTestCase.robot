*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Test setup    run keywords
...    open browser    http://www.google.com    Chrome    AND
...    click element    css:button[id=L2AGLb]
Test teardown    close browser

*** Test Cases ***
Create a test case with keyword driven style
    input text    css:input[title=Zoeken]    robot framework
    Press keys    css:input[title=Zoeken]    RETURN
    click element    css:a[href="https://robotframework.org/"]
    element should be visible    css:button[name="go-to-Getting started"]


*** Keywords ***
Provided precondition
    Setup system under test