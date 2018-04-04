*** Settings ***
Documentation   Keywords for Account
Library         Selenium2Library
Library         DateTime
Library         Collections
 

*** Variables ***

${CreateAccount}        Create an Account
${FirstNameField}       id=firstname
${LastNameField}        id=lastname
${EmailField}           id=email_address
${PasswordField}        id=password
${ConfirmPassfield}     id=confirmation
${Submit}               Submit
${RegisterText}         Thank you for registering with Titolo.
${FirtsName}            Alex
${LastName}             One
${Email}                demeniuk@gmail.com
${Password}             Test1234!
${SignIn}               Sign in
${SignInEmail}          id=email
${SignInPass}           id=pass
${LoginMsg}             Login or Create an Account
${LoginButton}          id=send2
${AccountDashboard}     Account Dashboard
${TitoloLogo}           https://en.titolo.ch/skin/frontend/waterlee-boilerplate/newtitolo/images/logo.gif
${LogOut}               https://en.titolo.ch/customer/account/logout
${LogOutMsg}            You are now logged out
${ForgotPassMsg}        Forgot Your Password?
${ForgotPassLoc}        css=.f-left
${ForgotConfMsgLoc}     id=inchoo_global_messages_close



*** Keywords ***
Create New Account
    [Documentation]     ...
    Click Button                ${CreateAccount}
    Wait Until Page Contains    ${CreateAccount}
    input text                  ${FirstNameField}    ${FirtsName}
    input text                  ${LastNameField}     ${LastName}
    input text                  ${EmailField}        ${Email}
    input password              ${PasswordField}     ${Password}
    input password              ${ConfirmPassfield}  ${Password}
    click button                ${Submit}
    wait until page contains    ${RegisterText}


Log In
    [Arguments]   ${Email}    ${Password}
    Click Link              ${SignIn}
    Page should contain     ${LoginMsg}
    input text              ${SignInEmail}   ${Email}
    input password          ${SignInPass}    ${Password}
    click button            ${LoginButton}
    Page should contain     ${AccountDashboard}
    Click image             ${TitoloLogo}
    



Log Out
    Go to                   ${LogOut}
    Page should contain     ${LogOutMsg}




Forgot Password
    Click Link                      ${SignIn}
    Click element                   ${ForgotPassLoc}
    Page should contain             ${ForgotPassMsg}
    Input Text                      ${EmailField}    demeniuk@ukr.net
    Click button                    ${Submit}
    Page should contain element     ${ForgotConfMsgLoc}
    Click image                     ${TitoloLogo}
           



