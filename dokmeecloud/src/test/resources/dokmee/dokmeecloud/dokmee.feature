Feature: Dokmee

Scenario: Add username and password then click on login button

 Given User at login page
 When I enter djsam0217@yahoo.com in the username
 And  I enter 1234567 in the password
 And I click on btnLogin button
 And I click on btnOK button 
 And I click on #FileExplorer > div > div.tile-content.icon cssSelector
 Then Home page will display
 
 
 

 
 

 
 
 

