*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${login_name}   admin
${login_password}   12345
*** Test Cases ***
Hospital login test
    [Documentation]  Login page
    [Tags]  admin
    open browser  http://127.0.0.1:5000/   chrome
    maximize browser window
    sleep  2s
    input text  name:username   ${login_name}
    sleep  1s
    input password  name:password   ${login_password}
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Registration tested
    [Documentation]  Registration
    [Tags]  admin
    input text  name:name   Joshna
    sleep  1s
    input text  name:mobnumber  7795415798
    sleep  1s
    input text  name:age    21
    sleep  1s
    input text  name:address    kaggadasapura
    sleep  1s
    input text  name:dob    30/05/2001
    sleep  1s
    input text  name:place  banglore
    sleep  1s
    input text  name:pincode    560093
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s

Search Patient test
    [Documentation]  Searching Patient
    [Tags]  admin
    click link  xpath=/html/body/nav/div/ul/li[2]/a
    sleep  3s
    input text  name:mobnumber  7795415798
    sleep  2s
    click button  xpath=//html/body/div/div/div/form/table[1]/tbody/tr[2]/td[2]/button
    sleep  5s

Viewall Patient test
    [Documentation]  Viewall the Patients
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[4]/a
    sleep  5s

Update Patient test
    [Documentation]  Updating the Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[2]/a
    sleep   1s
    input text  name:mobnumber  7795415798
    sleep  1s
    click button  xpath=//html/body/div/div/div/form[1]/table/tbody/tr[2]/td[2]/button
    sleep   1s
    input text  name:name   joshnareddy
    sleep   1s
    click button  xpath=//html/body/div/div/div/form[2]/table/tbody/tr[8]/td[2]/button
    sleep  3s

Delete Patient test
    [Documentation]  Delete Patient
    [Tags]  admin
    click link  xpath=/html/body/nav/div/div/ul/li[4]/a
    sleep  2s
    input text  name:mobnumber  7795415798
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    click link  xpath=/html/body/nav/div/div/ul/li[5]/a
    sleep  5s
    close browser

*** Keywords ***