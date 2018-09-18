*** Settings ***
Resource  base_page.robot
Library  Selenium2Library

*** Variables ***
${ACCORDION_PUBLISH}  xpath=//div[@class='accordion' and contains(text(),'Preview + Publish')]
${PUBLISH_BUTTON}  xpath=//div[contains(@class,'accordion-panel preview-publish')]//div[@class='button button-secondary' and contains(text(),'Publish')]

*** Keywords ***
Publish new Article
    Click on the Accordion Element
    Click on the Publish button
    Handle Alert




#****Methods to click the accordion and the publish button******
Click on the Accordion Element
    click on element  ${ACCORDION_PUBLISH}

Click on the Publish button
    click on element  ${PUBLISH_BUTTON}