** Settings ***
Documentation    Learn how to create a simple test suite with the structure
Force tags    Always display me!    testsuite1
Default tags    I'm a default tag

*** Test Cases ***
Create a test case to log something
    [Documentation]    This is a test case which logs a msg
    [Tags]    test_logging
    Log to console    Hello world!

Create a test case to log something else
    [Documentation]    This is a test case which concatenate 2 strings
    ${result}    Catenate    Hello    World
    Log to console    ${result}

