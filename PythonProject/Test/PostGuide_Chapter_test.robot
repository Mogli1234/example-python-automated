*** Settings ***
Resource   ../Pages/base_page.robot
Resource   ../Pages/login_psge.robot
Resource   ../Pages/editor_page.robot
Resource   ../Pages/post_data_element_page.robot
Resource   ../Pages/Chapter_element_page.robot
Library    Selenium2Library
Library     ../libraries/login_lib.py
Library     ../libraries/chapter_lib.py
Library     ../libraries/posdata_lib.py

Test Setup  Go to Platform
Suite Teardown  Close all Browsers
*** Variables ***

#*******PostData element*****
${PostDataTitle}
${PostDataDescription}
${PostDataImagePath}
${PostDataTag}

#********Chapter Elements******
${ChapterTitle}
${ChapterSubTitle}
${ChapterAbreviationUrl}
${ChapterBackgroundPath}
${ChapterTablePath}
${ChapterOverlayPath}

*** Keywords ***
#****Set Methods for Post Data element******
Set All Post Data Elements
    ${PostDataTitle}  Set Title PosData
    ${PostDataDescription}  Set Description PostData
    ${PostDataImagePath}  Set Path Upload Image
    ${PostDataTag}  Set Tag

#*****Method to set all the elements for chapter******
Set All Data to Chapter Element
    ${ChapterTitle}  Set Title
    ${ChapterSubTitle}  Set SubTitle
    ${ChapterAbreviationUrl}  Set Abreviation Url
    ${ChapterTablePath}  Set Path Table Contents
    ${ChapterBackgroundPath}  Set Path Background
    ${ChapterOverlayPath}  Set Path Overlay

#*******Method set Email and password******
Set Email and Password
    ${EMAIL}  Get email
    ${PASSWORD}  Get Password

#*****Test Case to Create a new Info Guide post Type with a chapter element*******
*** Test Cases ***
Log in and Create Guide Article
    Set Email and Password
    Login Method  ${EMAIL}  ${PASSWORD}
    Create Guide Element
    Set All Post Data Elements
    Add Info to Post Data element  ${PostDataTitle}  ${PostDataDescription}  ${PostDataImagePath}  ${PostDataTag}
    Set All Data to Chapter Element
    Complete info on chapter Element  ${ChapterTitle}  ${ChapterSubTitle}  ${ChapterAbreviationUrl}  ${ChapterTablePath}  ${ChapterBackgroundPath}  ${chapteroverlaypath}



