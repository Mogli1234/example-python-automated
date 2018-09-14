*** Settings ***
Resource  base_page.robot

*** Variables ***
${Username}  id =  identifierId
${Password}  xpath = //input[@name='password']
${LoginButton}  id = identifierNext
${PasswordButton}  xpath = //div[@id='passwordNext' and @role='button']

*** Keywords ***
Login Method
    [Arguments]  ${email}  ${password}
    Set Email To Field  ${email}
    Click on the loginbutton
    Set Password To Field  ${password}
    Click on the passwordbutton



#******Set methods and clicker button***************
Set Email To Field
    [Arguments]  ${email}
    Type On Input Field  ${Username}  ${email}

Set Password To Field
    [Arguments]  ${password}
    Type On Input Field  ${Password}  ${password}

Click on the LoginButton
    Click On Element  ${LoginButton}

Click on the PasswordButton
    click on element  ${PasswordButton}