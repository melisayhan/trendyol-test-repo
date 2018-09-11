*** Settings ***
Library  Selenium2Library
Resource  ../data-driven-test/Data/inputData.robot


*** Variables ***
${SIGN_IN_EMAIL} =          id=fEmailx
${SIGN_IN_PASSWORD} =       xpath=//*[@id="LoginModel_Password"]
${LOGIN_SUBMIT_BUTTON} =    xpath=//*[@id="loginSubmitButton"]

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${LOGIN_URL}
    go to  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}
    Run keyword unless  '${Credentials.Email}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials.Email}
    Run keyword unless  '${Credentials.Password}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials.Password}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage}

Clear Input Fields
    Clear Element Text  ${SIGN_IN_EMAIL}
    Clear Element Text  ${SIGN_IN_PASSWORD}