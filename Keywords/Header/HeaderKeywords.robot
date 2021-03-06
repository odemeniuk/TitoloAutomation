*** Settings ***
Documentation    Keywords for Header
Library          Selenium2Library


*** Variables ***

${ShippingMsg}      FREE SHIPPING in Switzerland
${SearchField}      id=search
${SearchInput}      jordan
${SearchSubmit}     css=.icon-search
${SearchResult}     Search results for

*** Keywords ***

Change Currency To USD
    #[Arguments]
    @{currency}    Create List     €    CHF    $
    : FOR    ${curren}    IN    @{currency}
    \    Log    ${curren}  WARN
    \    Run Keyword If    '${curren}' == 'CHF' or '€'    Click Link  $





Verify Shipping Message
    Page should contain    ${ShippingMsg}



Search For
    [Arguments]  ${SearchInput}
    Input text  ${SearchField}  ${SearchInput}
    Click element  ${SearchSubmit}
    Page should contain    ${SearchResult}


Clear Search
