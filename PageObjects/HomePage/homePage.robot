*** Settings ***
Documentation                Home Page keyword related
Variables                    home-page-locators.yaml
Library    AppiumLibrary

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible            ${app_icon_image}

Click Sign In Button On Home Screen 
    Wait Until Element Is Visible    ${signIn_button_homePage}
    Click Element                    ${signIn_button_homePage}

Click Book Button On Home Screen 
    Wait Until Element Is Visible           ${book_button_homePage}
    Click Element                           ${book_button_homePage}

click Search Button On Home Screen
    Wait Until Element Is Visible               ${search_button_homePage}
    Click Element                               ${search_button_homePage}

click Check In Button On Home Screen
    Wait Until Element Is Visible               ${checkIn_button_homePage}
    Click Element                               ${checkIn_button_homePage}

Verify Successfullly Login
    Wait Until Element Is Visible               ${user_ngendigital_homepage}