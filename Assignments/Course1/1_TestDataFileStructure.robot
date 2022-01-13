*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections

Resource    Resources/invoice-details-page.robot
Resource    Resources/navigation.robot
Resource    Resources/system.robot
Resource    Resources/data.robot

Suite Setup  Run Keywords   Initialize Test Data    Configure Selenium   Navigate To Homepage
Suite Teardown  Exit Selenium

*** Variables ***
${Browser}        Chrome
${SiteUrl}        http://34.225.240.91
${Delay}          5s

*** Test Cases ***
Create An Invoice
    ${invoice}=     Get Dummy Invoice   demo
    Navigate To Add Invoice
    Fill Out Invoice Details    ${invoice}
    Submit Invoice Form
    ${invoice_id}=   Get Invoice Id     ${invoice}
    Page Should Contain     ${invoice_id}
    Open Invoice    ${invoice_id}
