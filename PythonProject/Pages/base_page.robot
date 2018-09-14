*** Settings ***
Library  Selenium2Library

*** Variables ***
${APP_URL}  https://paloma-qa.brit.co/posts/editor/
${BROWSER}  Chrome
${TIME_OUT}  15s

*** Keywords ***
Go to Platform
    Open Browser  ${APP_URL}  ${BROWSER}
    Set Selenium Speed   0.9

#************Method to click on element******************
Click On Element
    [Arguments]  ${element}
    Wait Until Element is Enabled   ${element}      timeout=${TIME_OUT}
    Click Element   ${element}

#******************************Method to setData to input field******************
Type On Input Field
    [Arguments]  ${input_field}  ${value_text}
    Wait Until Element is Enabled  ${input_field}
    timeout =${TIME_OUT}
    Clear Element Text ${input_field}
    Input Text  ${input_field}  ${text}


