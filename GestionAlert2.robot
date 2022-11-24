*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test gerer alert
    Open Browser    http://omayo.blogspot.com/    gc
    Maximize Browser Window
    Sleep    2
    Click Button    xpath=//input[@id="alert1"]
    Sleep    2
    #Alert Should Be Present    Hello
    ${message_Alert}    Handle Alert    
    Log To Console    ${message_Alert}
    Should Be Equal    ${message_Alert}    Hello
    ${url_site}    Get Location
    Log To Console    ${url_site}
    Should Be Equal    ${url_site}    http://omayo.blogspot.com/
    Close Browser