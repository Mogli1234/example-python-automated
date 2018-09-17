*** Settings ***
Resource  base_page.robot
Library   Selenium2Library

*** Variables ***
#*****Variables of Chapter Element****
${CHAPTER_TITLE}  xpath=//div[@class='string-input']/input[@name='title']
${CHAPTER_SUB_TITLE}  name=sub_title
${CHAPTER_ABREVIATION_URL}  name=header
${CHAPTER_TABLE_OF_CONTENTS}  xpath=//input[@type='file' and @name='toc_image']
${CHAPTER_BACKGROUND_IMAGE}  xpath=//input[@type='file' and @name='header_image']
${CHAPTER_OVERLAY_IMAGE}  xpath=//input[@type='file' and @name='header_image_overlay']
${CHAPTER_SUBMIT_BUTTOM}  xpath=//section[@class='form-buttons']/button[@class='button button-primary' and contains(text(), 'Submit')]

*** Keywords ***

#*****Method to create *****
Complete info on chapter Element


#*****Set Methods and click methods*****
Set Info to Chapter Title
    [Arguments]  ${title_text}
    Type On Input Field  ${CHAPTER_TITLE}  ${title_text}

Set Info to Chapter Sub Title
    [Arguments]  ${sub_title}
    Type On Input Field  ${CHAPTER_SUB_TITLE}  ${sub_title}

Set Abreviation of the URL
    [Arguments]  ${abreviation_url}
    Type On Input Field  ${CHAPTER_ABREVIATION_URL}  ${abreviation_url}

Set Path to table of Contents
    [Arguments]  ${path_of_image}
    Type On Input Field  ${CHAPTER_TABLE_OF_CONTENTS}  ${path_of_image}

Set Path to the Background Image
    [Arguments]  ${path_of_image}
    Type On Input Field  ${CHAPTER_BACKGROUND_IMAGE}  ${path_of_image}

Set Path to Overlay Image
    [Arguments]  ${path_of_image}
    Type On Input Field  ${CHAPTER_OVERLAY_IMAGE}  ${path_of_image}

Click the Submit button
    click on element  ${CHAPTER_SUBMIT_BUTTOM}