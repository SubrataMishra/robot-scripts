*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
  Page Should Contain Element  xpath=//input[@id='ap_email']
  Element Text Should Be  xpath=//*[@id="a-page"]/div[1]/div[3]/div/div[1]/form/div/div/div/h1              Sign in


