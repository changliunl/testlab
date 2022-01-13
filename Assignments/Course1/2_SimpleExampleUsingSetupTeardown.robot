*** Settings ***
Documentation    Learn how to create a simple test suite with the structure
Suite setup    log to console    This is suite setup
Suite teardown    log to console    This is suite teardown
Test setup    log to console    This is test setup
Test teardown    log to console    This is test teardown
Force tags    testsuite2

*** Test Cases ***
Create a test case with setup step
    [Setup]    Log to console    Set up test case A
    No operation

Create a test case with teardown step
    [Teardown]    Log to console    The result is ${result}
    ${result}    Evaluate    1+1

