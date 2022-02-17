*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}            https://opensource-demo.orangehrmlive.com/
${BROWSER}           gc
${VALID_USERNAME}    Admin
${VALID_PASSWORD}    admin123

*** Test Cases ***
Valid login
    Open Browser To Login Page
    Input Username                ${VALID_USERNAME}
    Input Password                //input[@id='txtPassword']    ${VALID_PASSWORD}
    Submit Credentials

User Log Out
    Click on Logout
    Wait Until Element Is Visible    //div[@id='logInPanelHeading']

*** Keywords ***
Open Browser To Login Page
    Open Browser               ${SERVER}    ${BROWSER}
    Maximize Browser Window

Input Username
    [Arguments]    ${USERNAME}
    Input Text     //input[@id='txtUsername']    ${USERNAME}

Submit Credentials
    Click Element    //input[@id='btnLogin']

Click on Logout
    Click Element    //a[@id='welcome']
    Click Element    //a[contains(text(),'Logout')]
