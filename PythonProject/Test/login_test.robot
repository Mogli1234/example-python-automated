*** Settings ***

#Library  Selenium2Library
Library  ../libraries/login_lib.py
Resource  ../Pages/login_page.robot
Resource  ../Pages/base_page.robot

Test Setup  Go to Platform
Suite Teardown  Close All Browsers

*** Test Cases ***
Login Correctly
    ${EMAIL}  Get Email
    ${PASS}  Get Password
    Login Method  ${EMAIL}  ${PASS}