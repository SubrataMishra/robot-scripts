*** Settings ***
Documentation    Suite description
Library  Selenium2Library

*** Keywords ***
Open-Browser
  Open Browser  about:blank  ${Browser}  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir="C:/Chrome"
  #Open Browser  about:blank  chrome  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir="C:/Chrome"
  #chrome  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir="C:/Chrome"
  Maximize Browser Window
Close-Browser
  Close Browser
#Verify Page Loaded
Load-SigninPage
  Go To  ${Url}
  SLEEP  2s
  Page Should Contain Element  xpath=//*[@id="app"]/div/div/div[1]/button[1]
  Element Text Should Be  xpath=//*[@id="app"]/div/div/div[1]/button[1]  Login
Click-SignUp
  Click Button  Sign Up
  SLEEP  2s
Input-UserName
  Input Text  xpath=//*[@id="app"]/div/div/div[3]/form/div[1]/div/input  ${UserName}
  SLEEP  2s
Input-UserEmail
  Input Text  xpath=//*[@id="app"]/div/div/div[3]/form/div[2]/div/input  ${UserEmail}
  SLEEP  2s
Input-FirstName
  Input Text  xpath=//*[@id="app"]/div/div/div[3]/form/div[3]/div/input  ${FirstName}
  SLEEP  2s
Input-LastName
  Input Text  xpath=//*[@id="app"]/div/div/div[3]/form/div[4]/div/input  ${LastName}
  SLEEP  2s
Input-Password
  Input Text  xpath=//*[@id="app"]/div/div/div[3]/form/div[5]/div/input  ${Password}
  SLEEP  2s

Click-Signin
  SLEEP  10s
  Wait Until Element Is Enabled  xpath=//*[@id="app"]/div/div/div[3]/form/button  5s  not-enabled
  Click Element  xpath=//*[@id="app"]/div/div/div[3]/form/button
  SLEEP  10s
Click-login
  wait until element is enabled  xpath=//*[@id="app"]/div/div/div[1]/button[1]
  click button  Login
  input text  xpath=//*[@id="app"]/div/div/form/div[1]/div/input   ${UserName}
  input text  xpath=//*[@id="app"]/div/div/form/div[2]/div/input   ${Password}
  SLEEP  2s
  click button  xpath=//*[@id="app"]/div/div/form/button
  SLEEP  10s
  Page Should Contain Element  xpath=//*[@id="app"]/div/div[2]/div[1]/div[1]/div/button  Add user(s)
