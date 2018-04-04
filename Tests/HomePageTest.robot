*** Settings ***
Documentation    Testing Sneakershop Website

Suite Setup      Website Setup
Suite Teardown   Website TearDown


*** Test Cases ***

Verify user can search
    Search For  Adidas
\    Log    Get Current Date  WARN


Verify use can change currency to USD
    Change Currency To USD
    



Verify user can navigate to New Arrivals Pape
    [Tags]    test
    Go to New Arrivals Page
    
    
    
    

*** Settings ***
Resource                  ../Keywords/AccountPage/AccountKeywords.robot
Resource                  ../Keywords/Header/HeaderKeywords.robot
Resource                  ../Keywords/HomePage/HomePageKeywords.robot
