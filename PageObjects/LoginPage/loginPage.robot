*** Settings ***
Documentation                login eyword related
Library                      AppiumLibrary
Variables                    login-page-locators.yaml
*** Keywords ***
Input Username On Login Page
    [Arguments]                            ${username}
    Wait Until Element Is Visible          ${username_login_input}
    Input Text                             ${username_login_input}        ${username}

Input Password On Login Page
    [Arguments]                            ${password}
    Input Text                             ${password_login_input}        ${password}

Click Sign In Button On Login Screen
    Click Element                          ${login_button}

Login User
    Wait Until Element Is Visible    ${username_login_input}
    Input Text    ${username_login_input}        support@ngendigital.com
    Input Password    ${password_login_input}    abc123

Invalid Notification
    Wait Until Page Contains               Invalid username/password



