*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/GlobalLocators.py

*** Variables ***
${LOGIN URL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${BROWSER_NAME}      chrome


*** Keywords ***
Open my browser
    open browser  ${LOGIN URL}  ${BROWSER_NAME}
    maximize browser window

Open Login Page
    Go to  ${LOGIN URL}
Input Username
    [Arguments]     ${username}
    input text      ${txt_UserName}  ${username}
Input pwd
    [Arguments]     ${password}
    input text      ${txt_Password}  ${password}

click login button
    click element   ${btn_login}

Dashboard page should be visible
    page should contain  Dashboard



