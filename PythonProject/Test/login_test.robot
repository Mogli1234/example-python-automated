*** Settings ***
#Library  Selenium2Library
Library  ../libraries/login_lib.py
Resource  ../Pages/login_page.robot
Resource  ../Pages/base_page.robot

Test Setup  Go to Platform

*** Variables ***
${EMAIL}
${PASSWORD}

*** Test Cases ***
Login with Google Correctly
    Set Email and Password
    Login Method  ${GLOBAL_EMAIL}  ${GLOBAL_PASSWORD}

*** Keywords ***
#*******Method set Email and password******
Set Email and Password
    ${EMAIL}  Get email
    set suite variable  ${GLOBAL_EMAIL}  ${EMAIL}
    ${PASSWORD}  Get Password
    set suite variable  ${GLOBAL_PASSWORD}  ${PASSWORD}