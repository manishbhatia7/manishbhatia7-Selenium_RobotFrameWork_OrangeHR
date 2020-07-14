*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/001Resource_login.robot
Library  DataDriver  ../TestData/Orange_LoginData.xlsx  sheet_name=Sheet1

Suite Setup     Open my browser

Test Template   Valid login

*** Test Cases ***
LoginTestWithExcel using   ${username}      ${password}


*** Keywords ***
Valid login
        [Arguments]  ${username}        ${password}
        Input Username  ${username}
        Input pwd       ${password}
        click login button
        Dashboard page should be visible
        sleep  3