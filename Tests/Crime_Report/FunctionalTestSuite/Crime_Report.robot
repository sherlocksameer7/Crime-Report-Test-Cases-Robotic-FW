*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000

*** Test Cases ***
1:Guest User Test
    [Documentation]  This Test is Used for a Guest
    [Tags]  user
    Open Browser    ${web_url}   chrome
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[5]/td[2]/a
    sleep  1s
    1st Test Description
    sleep  1s
    1st Test Remarks
    sleep  1s
    click Button  xpath=//html/body/div[3]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    close Browser

2:User Register Test
    [Documentation]  This test is to register user
    [Tags]  user
    Open Browser    ${web_url}   chrome
    sleep  1s
    click Element   xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[6]/td[2]/a
    sleep  1s
    2nd Test Name
    2nd Test Address
    2nd Test email
    2nd Test phone
    2nd Test pass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s
    close Browser

3:Registered User Login Test
    [Documentation]  This test is to login user
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    2nd Test email
    2nd Test pass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    close Browser

4:User Report Crime Test
    [Documentation]  This test is to report crime
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    2nd Test email
    2nd Test pass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[1]/a
    1st Test Description
    1st Test Remarks
    sleep  1s
    click Button  xpath=//html/body/div[3]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    close Browser

5:User Modify Test
    [Documentation]  This test is for modification
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    5th Test email
    5th Test pass
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[2]/a
    5th Test newName
    click Button  xpath=//html/body/div[3]/div/div/form[1]/table/tbody/tr[2]/td[2]/button
    5th Test Newaddress
    5th Test Newemail
    5th Test newphone
    5th Test newpass
    close Browser

6:User Logout
    [Documentation]  This test is to logout
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    2nd Test email
    2nd Test pass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[3]/a
    sleep  1s
    close Browser

7:Admin Login Test
    [Documentation]  This test is for admin login
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    7th Test admname
    7th Test Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Close Browser

8:Admin View Report Test
    [Documentation]  This test is to view report
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    7th Test admname
    7th Test Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[1]/a
    close Browser

9:Admin Search Report Test
    [Documentation]  This test is to search report
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    7th Test admname
    7th Test Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[2]/a
    sleep  1s
    9th Test Date
    sleep  1s
    click Button  xpath=//html/body/div[4]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    close Browser

10:Admin Logout
    [Documentation]  This test to logout admin
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    7th Test admname
    7th Test Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[3]/a
    sleep  1s
    close Browser

*** Keywords ***
1st Test Description
    Input Text  name:description   Psycho

1st Test Remarks
    Input Text  name:remark  Abi

2nd Test Name
    Input Text  name:name  Sameer

2nd Test Address
    Input Text  name:address    114

2nd Test email
    Input Text  name:email   arijitsameers@gmail.com

2nd Test phone
    Input Text  name:phone  8220062948

2nd Test pass
    Input Text  name:pass  98765

5th Test email
     Input Text  name:email  arijitsameers@gmail.com

5th Test pass
    Input Text  name:pass  98765

5th Test newName
    Input Text  name:name  Sameer

5th Test Newaddress
    Input Text  name:address  Hosur

5th Test Newemail
    Input Text  name:email  sherlocksameer17@gmail.com

5th Test newphone
    Input Text  name:phone  8220062948

5th Test newpass
    Input Text  name:pass  98765

7th Test admname
    Input Text  name:name  admin

7th Test Admpass
    Input Text  name:pass  12345

9th Test Date
    Input Text  name:date  09-04-2022
