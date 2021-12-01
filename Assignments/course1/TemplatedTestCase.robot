*** Settings ***
Documentation    Below test case is using a template to make itself data driven
Force tags    testsuite3

*** Test Cases ***
Create a test case using a template
    [Template]    Is sum over 5
    3    4
    2    2
    ${EMPTY}    5

*** Keywords ***
Is sum over 5
    [Arguments]    ${number1}    ${number2}
    ${result}    Evaluate    ${number1}+${number2}
    ${result}    Evaluate    ${result}>5
    Log to console    ${result}