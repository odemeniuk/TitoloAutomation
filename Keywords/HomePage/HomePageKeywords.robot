*** Settings ***
Documentation    Keywords for Homepage Navigation
Library     Selenium2Library
Resource                  ../AccountPage/AccountKeywords.robot



*** Variables ***

${WebSite}      https://en.titolo.ch/
${NewArrivals}  https://en.titolo.ch/new-arrivals
${Brands}       https://en.titolo.ch/brands
${Sneakers}     https://en.titolo.ch/sneakers
${Apparel}      https://en.titolo.ch/apparel
${Accessories}  https://en.titolo.ch/accessories
${Gifts}        https://en.titolo.ch/gifts
${CommingSoon}  https://en.titolo.ch/coming-soon-5
${Sale}         https://en.titolo.ch/sale
${1stOG}        https://en.titolo.ch/1st-og
@{Categories}   ${NewArrivals}   ${Brands}   ${Sneakers}     ${Apparel}       ${Accessories}
...     ${Gifts}  ${CommingSoon}    ${Sale}     ${1stOG}







*** Keywords ***



#Navigation


Navigate To The Website
    [Arguments]     ${WebSite}
    Open Browser  ${WebSite}  gc
    log    Your browser is Chrome   WARN
    Maximize Browser Window



Go to New Arrivals Page
    [Arguments]
    Click Link  @{Categories}[0]
    Page Should Contain Link   ${NewArrivals}



#SetUp and TearDown

Website Setup
    Navigate To The Website  ${WebSite}
    Log In    ${Email}    ${Password}


Website TearDown
    Log Out
    Close all browsers








