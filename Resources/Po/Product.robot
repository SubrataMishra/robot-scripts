*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
  Wait Until Page Contains  Back to search results

Add to Cart
  sleep  3s
  Click Button  Add to Cart
  sleep  3s