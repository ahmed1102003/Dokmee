Feature: Dokmee

Scenario: Click on login button

 Given User at login page
 When I click on btnLogin button
 Then 'Please enter your username.' message will display at '//*[@id="ngdialog1"]/div[2]/p'
 
 
Scenario: Add username and password then click on login button

 Given User at login page
 When I enter jsam0217@yahoo.com in the username
 And  I enter 1234567 in the password
 And I click on btnLogin button
 Then File cabinet page display

Scenario: Add username and password then click on login button

 Given User at login page
 When I enter psalinas@officegemini.com in the username
 And  I enter SuckOS91 in the password
 And I click on btnLogin button
 Then File cabinet page display
 
 Scenario: Click on create account button

 Given User at login page
 When I click on btnSignUp button
 And  I enter 1234567@yyy.com in the SU_email
 And  I enter in the SU_confirmEmail
 And  I enter in the SU_firstName
 And  I enter in the SU_lastName
 And  I click on SU_btnCreateAccount button
 Then File Cabinet page display
 
 
 Scenario: Click on create account button with all valid fields 

 Given User at login page
 When I click on btnSignUp button
 And  I enter 123456@yahoo.com in the SU_email
 And  I enter 123456@yahoo.com in the SU_confirmEmail
 And  I enter Jon in the SU_lastName
 And  I enter zzz in the SU_firstName
 And  I enter bashra02 in the SU_fileCabinetName
 And  I click on SU_btnCreateAccount button
 Then File Cabinet page display 
 
 
 Scenario: Click on create account button with all valid fields except the config email is not the same as email

 Given User at login page
 When I click on btnSignUp button
 And  I enter 12345@yahoo.com in the SU_email
 And  I enter 123 in the SU_confirmEmail
 Then error message "does not match with"
 
 
 Scenario: Click on create account button with all valid fields except last name is empty

 Given User at login page
 When I click on btnSignUp button
 And  I enter 12345@yahoo.com in the SU_email
 And  I enter 12345@yahoo.com in the SU_confirmEmail
 And  I enter asdf in the SU_firstName
 And  I enter in the SU_lastName
 Then Error message "Please enter your first name." display 
 
 Scenario: Click on create account button with all valid fields except first name is empty

 Given User at login page
 When I click on btnSignUp button
 And  I enter 12345@yahoo.com in the SU_email
 And  I enter 12345@yahoo.com in the SU_confirmEmail
 And  I enter in the SU_firstName
 And  I enter asdf2 in the SU_lastName
 Then Error message "Please enter your last name." display 
 
 
 
 Scenario: Click on create account button with all valid fields excpet File Cabinet empty

 Given User at login page
 When I click on btnSignUp button
 And  I enter 12345@yahoo.com in the SU_email
 And  I enter 12345@yahoo.com in the SU_confirmEmail
 And  I enter asdfqwer in the SU_lastName
 And  I enter tretre in the SU_firstName
 And  I enter in the SU_fileCabinetName
 And  I click on SU_btnCreateAccount button
 Then File Cabinet page display
 
 
 Scenario: Click on create account button then click on cancel button 
 
 Given User at login page
 When I click on btnSignUp button
 And I click on SU_btnCancel button 
 Then Login page should display 
 
 
 
 Scenario: Click on create account button with all valid fields excpet the email does not match

 Given User at login page
 When I click on btnSignUp button
 And  I enter 12345@yahoo.com in the SU_email
 And  I enter 12345@yahoo. in the SU_confirmEmail
 Then Error message "does not match"