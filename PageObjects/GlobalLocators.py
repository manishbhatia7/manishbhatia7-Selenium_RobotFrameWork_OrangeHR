#Login Module
txt_UserName="name:txtUsername"
txt_Password="name:txtPassword"
btn_login="name:Submit"

#Admin Module
tab_PIM="xpath://b[contains(text(),'PIM')]"
link_Add_Employee="xpath://a[@id='menu_pim_addEmployee']"

#Admin->Add Employee
txt_First_Name="name:firstName"
txt_Middle_Name="name:middleName"
txt_Last_Name="name:lastName"
txt_Employee_id="name:employeeId"
btn_submit="xpath://input[@id='btnSave']"

#Admin->Edit Employee Records
btn_Edit="xpath://input[@type='button' and @id='btnSave']"
txt_License_No="name:personal[txtLicenNo]"
img_License_Expiry_Date="xpath://ol[2]//li[4]//img[1]"
dd_License_Expiry_Month="xpath://select[@class='ui-datepicker-month']"
dd_License_Expiry_Year="xpath://select[@class='ui-datepicker-year']"
txt_Day="xpath://a[contains(text(),'14')]"
lbl_Gender="personal[optGender]"
dd_Marital_Status="name:personal[cmbMarital]"
dd_Nationality="name:personal[cmbNation]"

#Admin->Add Employee->Add User
link_Admin="xpath://a[@id='menu_admin_viewAdminModule']"
link_User_Management="xpath://a[@id='menu_admin_UserManagement']"
link_Users="xpath://a[@id='menu_admin_viewSystemUsers']"
btn_Add="name:btnAdd"
txt_Employee_Name="id:systemUser_employeeName_empName"
txt_Employee_User_Name="id:systemUser_userName"
txt_new_Password="name:systemUser[password]"
txt_Confirmed_Password="id:systemUser_confirmPassword"
btn_Save="name:btnSave"

#Admin->Search and Delete User and Employee Information
link_Search_Employee="xpath://a[@id='menu_pim_viewEmployeeList']"
txt_User_Search="name:searchSystemUser[userName]"
lbl_CheckBox="chkSelectRow[]"
user_btn_Search="id:searchBtn"
User_btn_Delete="name:btnDelete"
modal_Delete="xpath://input[@id='dialogDeleteBtn']"
txt_Emp_Id_Search="name:empsearch[id]"





