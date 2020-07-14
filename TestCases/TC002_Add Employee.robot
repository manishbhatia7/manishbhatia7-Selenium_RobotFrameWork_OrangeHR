*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/002Resource_AddEmployee.robot

Library  DataDriver  ../TestData/Add_Employee_data.xlsx  sheet_name=Sheet1

Test Template    Add an Employee

*** Test Cases ***
Click on Add Employee using  ${firstname}  ${middlename}  ${lastname}  ${empid}  ${license_no}  ${expiry_date_month}     ${expiry_date_year}    ${gender}  ${status}  ${nationality}

*** Keywords ***
Add an Employee
    [Arguments]  ${firstname}       ${middlename}     ${lastname}       ${emp_id}       ${license_no}       ${expiry_date_month}    ${expiry_date_year}    ${gender}       ${status}       ${nationality}
    Wait and Click PIM tab
    Wait for Add Employee link
    Click on Add Employee link
    Enter First Name    ${firstname}
    Enter Middle Name   ${middlename}
    Enter Last Name     ${lastname}
    Wait for Employee id to appear
    Clear Text
    Enter Employee id   ${emp_id}
    Submit details
    Wait for Edit Button to be visible
    Click on Edit Button
    Wait for License No to appear
    Enter License No    ${license_no}
    Click License Expiry Date Icon
    Select License Expiry Month  ${expiry_date_month}
    Select License Expiry Year   ${expiry_date_year}
    Select Date
    Select Gender       ${gender}
    Select Marital Status       ${status}
    Select Nationality  ${nationality}
    Submit final details
    Page Should Contain  Successfully Saved
