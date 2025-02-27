*** Settings ***
Resource            ../PageObjects/base/base.robot
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Test Setup            Open Flight Android Application 
Test Teardown         Close Flight Application


*** Test Cases ***
User should be able to login with valid data
    
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username On Login Page    username=support@ngendigital.com
    Input Password On Login Page    password=abc123
    Click Sign In Button On Login Screen
    Verify Successfullly Login
    

User should be able to login with not valid data
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username On Login Page    username=support.com
    Input Password On Login Page    password=abc123
    Click Sign In Button On Login Screen
    Verify Successfullly Login