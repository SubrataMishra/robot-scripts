*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Product Added
  Wait Until Page Contains  Add to Cart

Proceed to Checkout
  Click Link  id=hlb-ptc-btn-native