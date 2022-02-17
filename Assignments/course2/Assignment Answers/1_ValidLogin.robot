*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}                   https://opensource-demo.orangehrmlive.com/
${BROWSER}                  gc
${VALID_USERNAME}           Admin
${VALID_PASSWORD}           admin123

*** Test Cases ***
Valid login
    Open Browser To Login Page
    Input Username  ${VALID_USERNAME}
    Input Password  //input[@id='txtPassword']  ${VALID_PASSWORD}
    Submit Credentials

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${SERVER}   ${BROWSER}
    Maximize Browser Window

Input Username
    [Arguments] ${USERNAME}
    Input Text  //input[@id='txtUsername']  ${USERNAME}

Submit Credentials
    Click Element   //input[@id='btnLogin']