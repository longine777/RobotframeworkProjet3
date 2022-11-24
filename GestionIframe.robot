*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test gerer alert
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    gc
    Maximize Browser Window
    Sleep    2
    Select Frame    name:packageListFrame
    Click link    org.onenda.selenium
    Unselect Frame
    Sleep    2   
    Select Frame    name:packageFrame
    Click link    WebDriver
    Unselect Frame
    Sleep    3
    Select Frame    name:classFrame 
    Click Link    Help 
    Unselect Frame
     
    Sleep    2
    
    Close Browser