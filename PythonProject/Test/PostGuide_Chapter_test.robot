*** Settings ***
Resource   ../Pages/base_page.robot
Resource   ../Pages/login_page.robot
Resource   ../Pages/editor_page.robot
Resource   ../Pages/post_data_element_page.robot
Resource   ../Pages/Chapter_element_page.robot
Library    Selenium2Library
Library     ../libraries/login_lib.py
Library     ../libraries/chapter_lib.py
Library     ../libraries/postdata_lib.py

Test Setup  Go to Platform

*** Variables ***
#****Login Variables*******
${EMAIL}
${PASSWORD}

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

#*****Test Case to Create a new Info Guide post Type with a chapter element*******
*** Test Cases ***
Log in and Create Guide Article
    #***Set Email and Password
    ${EMAIL}  Get email
    ${PASSWORD}  Get Password
    Login Method  ${EMAIL}  ${PASSWORD}
    Create Guide Element
    Set All Post Data Elements
    Add Info to Post Data element  ${TITLE_GLOBAL}  ${DESCRIPTION_GLOBAL}  ${PATHIMAGE_GLOBAL}  ${TAG_GLOBAL}
    Set All Data to Chapter Element
    Complete info on chapter Element  ${CHAPTER_TITLE_GLOBAL}  ${CHAPTER_SUB_TITLE_GLOBAL}  ${CHAPTER_ABREVIATION_URL}  ${CHAPTER_TABLE_PATH_GLOBAL}  ${CHAPTER_BRACKGROUND_GLOBAL}  ${CHAPTER_OVERLAY_GLOBAL}


*** Keywords ***
#****Set Methods for Post Data element******
Set All Post Data Elements
    ${PostDataTitle}  Set Title PostData
    set suite variable  ${TITLE_GLOBAL}  ${PostDataTitle}
    ${PostDataDescription}  Set Description PostData
    set suite variable  ${DESCRIPTION_GLOBAL}  ${PostDataDescription}
    ${PostDataImagePath}  Set Path Upload Image
    set suite variable  ${PATHIMAGE_GLOBAL}  ${PostDataImagePath}
    ${PostDataTag}  Set Tag
    set suite variable  ${TAG_GLOBAL}  ${PostDataTag}

#*****Method to set all the elements for chapter******
Set All Data to Chapter Element
    ${ChapterTitle}  Set Title
    set suite variable  ${CHAPTER_TITLE_GLOBAL}  ${ChapterTitle}
    ${ChapterSubTitle}  Set SubTitle

    set suite variable  ${CHAPTER_SUB_TITLE_GLOBAL}  ${ChapterSubTitle}
    ${ChapterAbreviationUrl}  Set Abreviation Url
    set suite variable  ${CHAPTER_ABREVIATION_URL}  ${ChapterAbreviationUrl}
    ${ChapterTablePath}  Set Path Table Contents
    set suite variable  ${CHAPTER_TABLE_PATH_GLOBAL}  ${ChapterTablePath}
    ${ChapterBackgroundPath}  Set Path Background
    set suite variable  ${CHAPTER_BRACKGROUND_GLOBAL}  ${ChapterBackgroundPath}
    ${ChapterOverlayPath}  Set Path Overlay
    set suite variable  ${CHAPTER_OVERLAY_GLOBAL}  ${ChapterOverlayPath}

#*******Method set Email and password******
Set Email and Password
    ${EMAIL}  Get email
    ${PASSWORD}  Get Password

