*** Settings ***
Resource  base_page.robot

*** Variables ***
${GUIDE_ELEMENT}  xpath=//div[@class='post-format-type' and @data-post-module='2']

*** Keywords ***
Create Guide Element
    Click on Guide Option

    #*****Method to click on the guide post type
Click on Guide Option
    click on element  ${GUIDE_ELEMENT}