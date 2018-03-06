*** Settings ***
Resource  ../Resources/Po/LandingPage.robot
Resource  C:/development/robot-scripts/Resources/Po/TopNav.robot
Resource  C:/development/robot-scripts/Resources/Po/SearchResults.robot
Resource  C:/development/robot-scripts/Resources/Po/Product.robot
Resource  C:/development/robot-scripts/Resources/Po/Cart.robot
Resource  C:/development/robot-scripts/Resources/Po/SignIn.robot

*** Keywords ***
Search for Products
  LandingPage.Load
  LandingPage.Verify Page Loaded
  TopNav.Search for Products
  SearchResults.Verify Search Completed

Select Product from Search Results
  SearchResults.Click Product link
  Product.Verify Page Loaded

Add Product to Cart
  Product.Add to Cart
  Cart.Verify Product Added

Begin Checkout
  Cart.Proceed to Checkout
  SignIn.Verify Page Loaded