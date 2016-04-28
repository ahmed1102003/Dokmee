Feature: CCRX

Scenario: open CCRX then add valid username and password then click on Login

 Given User at login page
 When I enter Admin in the username
 And  I enter Admin in the password
 And I click on  button
 And I click on  button  
 And I click on //*[@id="FileExplorer"]/div/div[1]/i xpath
 Then Home page will display
 
 
 html.ng-scope body.metro.ng-scope div div#main div.ng-scope table.ng-scope tbody tr td form.ng-pristine.ng-valid table tbody tr td#FileExplorer div.tile.quadro div.tile-content.icon
 /html/body/div/div[2]/div/table/tbody/tr[2]/td/form/table/tbody/tr[1]/td[1]/div/div[1]
 
 
 And I click on //*[@id="FileExplorer"]/div/div[1]/i xpath