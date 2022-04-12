*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${weburl}
*** Test Cases ***
Login Screen Test

   [Documentation]  this is a hello
   [Tags]  users
   log  Hello

Registration Screen Test
  [Documentation]  this is registration
  [Tags]  users
  log  world

Admin Login Test
  [Documentation]  this is for admins
  [Tags]  admin
  log  admin

Google Test
  [Documentation]  google test
  [Tags]  internet
  Open Browser  https://www.google.com/  chrome
  Maximize Browser Window

  Submit Form
  Close Browser



*** Keywords ***
Input Search Data
    Input


