*** Settings ***
Resource  base_page.robot
Library   Selenium2Library

*** Variables ***
#*****Variables of Chapter Element****
${CHAPTER_TITLE_DATA}              xpath=//div[@class='string-input']/input[@name='title']
${CHAPTER_SUB_TITLE_DATA}          xpath=//div[@class='string-input']/input[@name='sub_title']
${CHAPTER_ABREVIATION_URL_DATA}    name=header
${CHAPTER_TABLE_OF_CONTENTS_DATA}  xpath=//input[@type='file' and @name='toc_image']
${CHAPTER_BACKGROUND_IMAGE_DATA}   xpath=//input[@type='file' and @name='header_image']
${CHAPTER_OVERLAY_IMAGE_DATA}      xpath=//input[@type='file' and @name='header_image_overlay']
${CHAPTER_SUBMIT_BUTTOM_DATA}      xpath=//section[@class='form-buttons']/button[@class='button button-primary' and contains(text(), 'Submit')]

*** Keywords ***

#*****Method to create *****
Complete info on chapter Element
    [Arguments]  ${title_text}  ${sub_title}  ${url_abreviation}  ${path_table_contents}  ${path_backgrounds_image}  ${path_of_overlay}
    Set Info to Chapter Title   ${title_text}
    Set Info to Chapter Sub Title  ${sub_title}
    Set Abreviation of the URL  ${url_abreviation}
    Set Path to table of Contents  ${path_table_contents}
    Set Path to the Background Image  ${path_backgrounds_image}
    Set Path to Overlay Image  ${path_of_overlay}
    sleep  5s
    Click the Submit button


#*****Set Methods and click methods*****
Set Info to Chapter Title
    [Arguments]  ${title_text}
    Type On Input Field  ${CHAPTER_TITLE_DATA}  ${title_text}

Set Info to Chapter Sub Title
    [Arguments]  ${sub_title}
    Type On Input Field  ${CHAPTER_SUB_TITLE_DATA}  ${sub_title}

Set Abreviation of the URL
    [Arguments]  ${abreviation_url}
    Type On Input Field  ${CHAPTER_ABREVIATION_URL_DATA}  ${abreviation_url}

Set Path to table of Contents
    [Arguments]  ${path_of_image}
    Type On Input Image  ${CHAPTER_TABLE_OF_CONTENTS_DATA}  ${path_of_image}

Set Path to the Background Image
    [Arguments]  ${path_of_image}
    Type On Input Image  ${CHAPTER_BACKGROUND_IMAGE_DATA}  ${path_of_image}

Set Path to Overlay Image
    [Arguments]  ${path_of_image}
    Type On Input Image  ${CHAPTER_OVERLAY_IMAGE_DATA}  ${path_of_image}

Click the Submit button
    click on element  ${CHAPTER_SUBMIT_BUTTOM_DATA}