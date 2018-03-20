*** Settings ***
Resource  ../Resources/Po/LandingPage.robot
Resource  ../Resources/Po/TopNav.robot
Resource  ../Resources/Po/SearchResults.robot
Resource  ../Resources/Po/Product.robot
Resource  ../Resources/Po/Cart.robot
Resource  ../Resources/Po/SignIn.robot

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