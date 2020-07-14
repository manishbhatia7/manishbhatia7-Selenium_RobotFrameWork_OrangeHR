*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/004Resource_DeleteUsers.robot
Library  DataDriver  ../TestData/User_Details.xlsx
Test Template  Delete User

*** Test Cases ***
DeleteUserusingExcel  ${username}

*** Keywords ***
Delete User
    [Arguments]  ${username}
    Set Sel Speed
    Wait for Username textbox to appear
    Enter text in Username textbox  ${username}
    Click on search button
    Select the checkbox
    Hover the Mouse over delete button
    Click on Delete button
    Handle the modal window
    Page Should Contain  Successfully Deleted



