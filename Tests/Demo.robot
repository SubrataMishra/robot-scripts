*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Test Setup  open browser  ${url}  ff
Test Teardown  Close All Browsers

# pybot -d Results/Demo  Tests/Demo.robot

*** Variables ***

${URL}  http://localhost:7272

*** Keywords ***

Input Credentials And Login
  Maximize Browser Window
  sleep  2s
  Page Should Contain Textfield  id=username_field
  Input Text  xpath=//*[@id="username_field"]  demo
  Input Text  xpath=//*[@id="password_field"]  mode
  sleep  2s
  Click Button  xpath=//*[@id="login_button"]
  sleep  2s
Logout And Verify
  click link   xpath=//*[@id="container"]/p/a
  Page Should Contain Textfield  id=username_field


*** Test Cases ***
Valid Login Should Succeed

  Input Credentials And Login
  Logout And Verify

