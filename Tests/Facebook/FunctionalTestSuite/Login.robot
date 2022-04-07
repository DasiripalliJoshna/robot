*** Settings ***
Library  SeleniumLibrary

*** Variables ***

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



*** Keywords ***


