*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/003Resource_AddUser.robot
Library  DataDriver  ../TestData/User_details.xlsx


Test Template  Add User


*** Test Cases ***
AddUserUsingExcel   ${firstname}  ${username}  ${password}  ${confirmed_password}

*** Keywords ***
Add User
    [Arguments]  ${firstname}  ${username}  ${password}  ${confirmed_password}
    Set Sel Speed
    Click on Admin link
    Click on Users link
    Click on Add Button
    Enter text in Employeename textbox  ${firstname}
    Enter Username  ${username}
    Enter Password  ${password}
    Enter Confirmed Password  ${confirmed_password}
    Click on Save
    Page Should Contain  Successfully Saved

