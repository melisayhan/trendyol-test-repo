*** Settings ***
Library  Selenium2Library
Resource  ../data-driven-test/Data/inputData.robot



*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser    ${BROWSER}

End Web Test
    Close All Browsers
