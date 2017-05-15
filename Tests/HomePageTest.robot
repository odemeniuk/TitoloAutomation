*** Settings ***
Documentation    Testing Sneakershop Website

Suite Setup      Website Setup
#Suite Teardown   Website TearDown






*** Test Cases ***
Verify user can search
    Search For  Jordan








#Verify user can navigate to New Arrivals Pape
#    [Tags]    test
#    Go to New Arrivals Page     ${newarrivalslink}


#Verify use can change currency to USD
#    Change Currency To USD



*** Settings ***


Resource  /Users/Air1/ENV/TitoloAutomation/Keywords/HomePage/HomePageKeywords.txt
Resource  /Users/Air1/ENV/TitoloAutomation/Keywords/Header/HeaderKeywords.txt