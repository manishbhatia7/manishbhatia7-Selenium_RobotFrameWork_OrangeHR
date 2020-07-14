*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/005Resource_DeleteEmployee.robot
Library  DataDriver  ../TestData/Add_Employee_Data.xlsx
Suite Teardown  Close Browsers
Test Template  Delete Employee
*** Test Cases ***
DeleteUserUsingExcel  ${emp_id}
*** Keywords ***
Delete Employee
    [Arguments]  ${emp_id}
    Set Sel Speed
    Wait and Click PIM tab
    Wait for EmployeeList link
    Enter text in Emp id  ${emp_id}
    Click on search button
    select the checkbox
    Hover the Mouse over delete button
    Click on Delete button
    Handle the modal window
    Page Should Contain  Successfully Deleted
    Close Browsers