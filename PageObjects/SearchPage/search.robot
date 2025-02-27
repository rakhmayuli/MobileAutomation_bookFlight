*** Settings ***
Resource                ../base/base.robot
Variables                search-page-locators.yaml

*** Keywords ***

Verify Search Page Appears
    Wait Until Element Is Visible    ${flight_number_text}
    Wait Until Element Is Visible    ${input_flightNumber_button}
    Wait Until Element Is Visible    ${search_flightNumber_button}

click Search Button On Search Page
    Wait Until Element Is Visible       ${search_flightNumber_button}
    Click Element                       ${search_flightNumber_button}

Valid Search Flight Number
    Wait Until Element Is Visible           ${id_text}

Invalid Notifications Flight Number
    Wait Until Page Contains                Please enter valid Flight Number

Input Valid Flight Number 
    Wait Until Element Is Visible           ${input_flightNumber_button}
    Clear Text                              ${input_flightNumber_button}
    Input Text                              ${input_flightNumber_button}    DA935

Input Invalid Flight Number 
    Wait Until Element Is Visible           ${input_flightNumber_button}
    Clear Text                              ${input_flightNumber_button}
    Input Text                              ${input_flightNumber_button}    DA00092