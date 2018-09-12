*** Settings ***
Resource  ../data-driven-test/Data/inputData.robot
Resource  ../Downloads/data-driven-test/Resources/common.robot
Resource  ./Downloads/data-driven-test/Resources/trendyolTest.robot
Library  ../Downloads/data-driven-test/Resources/imageCheck.py

Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test

*** Variables ***

*** Test Cases ***
Verify images
    imageCheck.checkImageWithResponseTime

Unregistered user should see correct error message at login
    trendyolTest.Navigate to Sign In Page
    trendyolTest.Attempt Login  ${UNREGISTERED_USER}
    trendyolTest.Verify Login Page Error Message  ${UNREGISTERED_USER.ExpectedErrorMessage}

Login with invalid password should show correct error message
    trendyolTest.Navigate to Sign In Page
    trendyolTest.Attempt Login  ${INVALID_PASSWORD_USER}
    trendyolTest.Verify Login Page Error Message  ${INVALID_PASSWORD_USER.ExpectedErrorMessage}

Login with blank email and password should show correct error message
    trendyolTest.Navigate to Sign In Page
    trendyolTest.Attempt Login  ${BLANK_CREDENTIALS_USER}
    trendyolTest.Verify Login Page Error Message  ${BLANK_CREDENTIALS_USER.ExpectedErrorMessage}

Login with valid email and password should be login
    trendyolTest.Navigate to Sign In Page
    trendyolTest.Attempt Login  ${VALID_PASSWORD_USER}
    trendyolTest.Verify Logged In
