*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}            https://opensource-demo.orangehrmlive.com/
${BROWSER}           gc
${VALID_USERNAME}    Admin
${VALID_PASSWORD}    admin123
${HIRING_MANAGER}    Admin A

*** Test Cases ***
Valid login
    Open Browser               ${SERVER}                     ${BROWSER}
    Maximize Browser Window
    Input Text                 //input[@id='txtUsername']    ${VALID_USERNAME}
    Input Password             //input[@id='txtPassword']    ${VALID_PASSWORD}
    Click Element              //input[@id='btnLogin']

Add Vacancy
    Go to Vacancies page
    Click Button            //input[@id='btnAdd']
    Input Values            Automation Tester             Automation Tester needed
    Submit Vacancy
    Table Should Contain    //table[@id='resultTable']    Automation Tester needed

*** Keywords ***
Go to Vacancies page
    Click Element                //b[contains(text(),'Recruitment')]
    Click Element                //a[@id='menu_recruitment_viewJobVacancy']
    Element Should Be Visible    //h1[contains(text(),'Vacancies')]

Input Values
    [Arguments]                      ${job_title}                                  ${vacancy_name}
    Wait Until Element Is Visible    //h1[contains(text(),'Add Job Vacancy')]
    Select From List By Label        //select[@id='addJobVacancy_jobTitle']        ${job_title}
    Input Text                       //input[@id='addJobVacancy_name']             ${vacancy_name}
    Input Text                       //input[@id='addJobVacancy_hiringManager']    ${HIRING_MANAGER}

Submit Vacancy
    Click Button    //input[@id='btnSave']
    Click Button    //input[@id='btnBack']

