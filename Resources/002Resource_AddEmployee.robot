*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/GlobalLocators.py

*** Keywords ***
Set Sel Speed
    Set Selenium Speed  0.5
Wait and Click PIM tab
    Wait Until Element Is Visible  ${tab_PIM}
    click element   ${tab_PIM}
Wait for Add Employee link
    Wait Until Element Is Visible   ${link_Add_Employee}
Click on Add Employee link
    Click element  ${link_Add_Employee}
Enter First Name
    [Arguments]     ${firstname}
    input text      ${txt_First_Name}  ${firstname}
Enter Middle Name
    [Arguments]     ${middlename}
    input text      ${txt_Middle_Name}  ${middlename}
Enter Last Name
    [Arguments]     ${lastname}
    input text      ${txt_Last_Name}    ${lastname}
Wait for Employee id to appear
    Wait Until Element Is Visible   ${txt_Employee_id}
Clear Text
    Clear Element Text  ${txt_Employee_id}
Enter Employee id
    [Arguments]     ${emp_id}
    input text      ${txt_Employee_id}  ${emp_id}
Submit details
    click element  ${btn_submit}
Wait for Edit Button to be visible
    Mouse Over      ${btn_Edit}
Click on Edit Button
    click element   ${btn_Edit}
Wait for License No to appear
    Wait Until Element Is Visible      ${txt_License_No}
Enter License No
    [Arguments]     ${license_no}
    input text      ${txt_License_No}   ${license_no}
Click License Expiry Date Icon
    click element   ${img_License_Expiry_Date}
Select License Expiry Month
     [Arguments]    ${expiry_date_month}
     select from list by label  ${dd_License_Expiry_Month}   ${expiry_date_month}

Select License Expiry Year
     [Arguments]    ${expiry_date_year}
     select from list by label  ${dd_License_Expiry_Year}   ${expiry_date_year}

Select Date
    click element   ${txt_Day}

Select Gender
    [Arguments]     ${gender}
    select radio button  ${lbl_Gender}  ${gender}
Select Marital Status
    [Arguments]     ${status}
    select from list by label       ${dd_Marital_Status}  ${status}
Select Nationality
    [Arguments]     ${nationality}
    select from list by label       ${dd_Nationality}      ${nationality}

Submit final details
    click element   ${btn_Edit}


