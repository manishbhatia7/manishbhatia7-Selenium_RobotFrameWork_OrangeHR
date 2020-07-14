*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/GlobalLocators.py

*** Keywords ***
Set Sel Speed
    Set Selenium Speed  0.5
Click on Admin link
    Wait Until Element Is Visible  ${link_Admin}
    click link  ${link_Admin}
Click on Users link
    Mouse Over  ${link_User_Management}
    click link  ${link_Users}
Click on Add Button
    Mouse Over  ${btn_Add}
    click element  ${btn_Add}
Enter text in Employeename textbox
    [Arguments]  ${firstname}
    input text  ${txt_Employee_Name}  ${firstname}
    Press keys  ${txt_Employee_Name}   \ENTER
Enter Username
    [Arguments]  ${username}
    input text  ${txt_Employee_User_Name}  ${username}
Enter Password
    [Arguments]  ${password}
    input text  ${txt_new_Password}  ${password}
Enter Confirmed Password
    [Arguments]  ${confirmed_password}
    input text  ${txt_Confirmed_Password}  ${confirmed_password}
Click on Save
    click element  ${btn_Save}
Close Browsers
    Close All Browsers



