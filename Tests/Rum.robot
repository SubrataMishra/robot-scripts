*** Settings ***
Documentation    Rum UI Test Automation Suit
Library  Selenium2Library
Resource  ../Resources/RUM-KEYS/Utility.robot
Suite Setup    Utility.Open-Browser
Suite Teardown  Utility.Close-Browser
# pybot -d Results/Rum  Tests/Rum.robot

*** Variables ***
${Browser}    chrome
${Url}        http://localhost:8080/login
${UserName}   viji123
${UserEmail}  Abc@gmail.com
${FirstName}   viji123
${LastName}   viji123
${Password}   testing

*** Test Cases ***
 Signin as a New user should let Signin and craete a new user with valid input data
  [Tags]  Smoke
  Utility.Load-SigninPage
  Utility.Click-SignUp
  Utility.Input-UserName
  Utility.Input-UserEmail
  Utility.Input-FirstName
  Utility.Input-LastName
  Utility.Input-Password
  Utility.Click-Signin
Login to the application as a existing user with valid data
  [Tags]  Smoke
  Utility.Load-SigninPage
  Utility.Click-login