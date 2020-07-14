*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/GlobalLocators.py

*** Keywords ***
Set Sel Speed
    Set Selenium Speed  0.5
Wait and Click PIM tab
    Wait Until Element Is Visible  ${tab_PIM}
    click element   ${tab_PIM}
Wait for EmployeeList link
    Wait Until Element Is Visible   ${link_Search_Employee}
Enter text in Emp id
    [Arguments]  ${emp_id}
    input text   ${txt_Emp_Id_Search}  ${emp_id}
Click on search button
    click element  ${user_btn_Search}
select the checkbox
    Select Checkbox  ${lbl_CheckBox}
Hover the Mouse over delete button
    Mouse Over  ${User_btn_Delete}
Click on Delete button
    click element  ${User_btn_Delete}
Handle the modal window
    click element  ${modal_Delete}
Close Browsers
    close all browsers
