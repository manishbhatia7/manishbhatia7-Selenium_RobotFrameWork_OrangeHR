*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/GlobalLocators.py

*** Keywords ***
Set Sel Speed
    Set Selenium Speed  0.5
Wait for Username textbox to appear
    Wait Until Element Is Visible  ${txt_User_Search}
Enter text in Username textbox
    [Arguments]  ${username}
    input text  ${txt_User_Search}  ${username}
Click on search button
    click element  ${user_btn_Search}
Select the checkbox
    Select Checkbox  ${lbl_CheckBox}
Hover the Mouse over delete button
    Mouse Over  ${User_btn_Delete}
Click on Delete button
    click element  ${User_btn_Delete}
Handle the modal window
    click element  ${modal_Delete}


