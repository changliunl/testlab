*** Settings ***
Documentation    Learn how to create a simple test suite with the structure
Force tags    Integration tests    Project ABC
Default tags    Regression tests

*** Test Cases ***
Create a test case to log something
    [Documentation]    This is a test case which logs a msg
    [Tags]    test_requirement_1
    Log to console    Hello world!

Create a test case to log something else
    [Documentation]    This is a test case which concatenate 2 strings
    ${result}    Catenate    Hello    World
    Log to console    ${result}

